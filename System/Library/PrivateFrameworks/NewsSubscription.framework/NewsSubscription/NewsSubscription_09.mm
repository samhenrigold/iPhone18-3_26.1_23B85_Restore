void sub_1D78179D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t PaywallLayoutOptions.init(viewport:windowSize:screenNativeSize:safeAreaInsets:traitCollection:layoutMargins:layoutDirection:contentSizeCategory:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>, double a11@<D6>, double a12@<D7>, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17)
{
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = a7;
  *(a4 + 24) = a8;
  *(a4 + 32) = a9;
  *(a4 + 40) = a10;
  *(a4 + 48) = a11;
  *(a4 + 56) = a12;
  *(a4 + 64) = a13;
  *(a4 + 72) = a14;
  *(a4 + 80) = result;
  *(a4 + 88) = a15;
  *(a4 + 104) = a16;
  *(a4 + 112) = a17;
  *(a4 + 120) = a2;
  *(a4 + 128) = a3;
  return result;
}

id sub_1D7817A68()
{
  v0 = *MEMORY[0x1E69DDCE0];
  v1 = *(MEMORY[0x1E69DDCE0] + 8);
  v2 = *(MEMORY[0x1E69DDCE0] + 16);
  v3 = *(MEMORY[0x1E69DDCE0] + 24);
  sub_1D773F004(0, &qword_1EC9CAB38, 0x1E69DD1B8);
  v4 = sub_1D78B5E94();
  v5 = [objc_opt_self() traitCollectionWithTraitsFromCollections_];

  v6 = *MEMORY[0x1E69DDC70];
  xmmword_1EC9CAAC0 = 0u;
  xmmword_1EC9CAAD0 = 0u;
  xmmword_1EC9CAAB0 = 0u;
  *&xmmword_1EC9CAAE0 = v0;
  *(&xmmword_1EC9CAAE0 + 1) = v1;
  *&xmmword_1EC9CAAF0 = v2;
  *(&xmmword_1EC9CAAF0 + 1) = v3;
  *&xmmword_1EC9CAB00 = v5;
  *(&xmmword_1EC9CAB00 + 1) = v0;
  unk_1EC9CAB10 = v1;
  qword_1EC9CAB18 = v2;
  unk_1EC9CAB20 = v3;
  qword_1EC9CAB28 = 0;
  qword_1EC9CAB30 = v6;

  return v6;
}

uint64_t static PaywallLayoutOptions.zero.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC9C8490 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_1EC9CAB00;
  v11[6] = unk_1EC9CAB10;
  v11[7] = unk_1EC9CAB20;
  v2 = xmmword_1EC9CAAC0;
  v3 = xmmword_1EC9CAAD0;
  v11[2] = xmmword_1EC9CAAD0;
  v11[3] = xmmword_1EC9CAAE0;
  v4 = xmmword_1EC9CAAE0;
  v5 = xmmword_1EC9CAAF0;
  v11[4] = xmmword_1EC9CAAF0;
  v11[5] = xmmword_1EC9CAB00;
  v6 = xmmword_1EC9CAAB0;
  v11[0] = xmmword_1EC9CAAB0;
  v11[1] = xmmword_1EC9CAAC0;
  v7 = unk_1EC9CAB20;
  *(a1 + 96) = unk_1EC9CAB10;
  *(a1 + 112) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v1;
  v12 = qword_1EC9CAB30;
  *(a1 + 128) = qword_1EC9CAB30;
  *a1 = v6;
  *(a1 + 16) = v2;
  return sub_1D77CB0EC(v11, v10);
}

uint64_t _s16NewsSubscription20PaywallLayoutOptionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48)))))) & 1) != 0 && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72))
  {
    v4 = *(a2 + 120);
    v5 = *(a1 + 120);
    sub_1D773F004(0, &qword_1EE08FBB8, 0x1E69E58C0);
    v16 = *(a2 + 104);
    v17 = *(a2 + 88);
    v14 = *(a1 + 104);
    v15 = *(a1 + 88);
    v2 = 0;
    if ((sub_1D78B6244() & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v15, v17), vceqq_f64(v14, v16)), xmmword_1D78C4770)) & 0xF) == 0 && v5 == v4)
    {
      v9 = sub_1D78B5C74();
      v11 = v10;
      if (v9 == sub_1D78B5C74() && v11 == v12)
      {
        v2 = 1;
      }

      else
      {
        v2 = sub_1D78B6724();
      }
    }
  }

  return v2 & 1;
}

uint64_t sub_1D7817DCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7817E14(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1D7817E84()
{
  v1 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallView);
  v2 = *(v1 + OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_subscribeButton);
  v3 = sub_1D78B4844();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = *(v1 + OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_webAuthButton);
  v5 = sub_1D78B4514();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  return result;
}

void sub_1D7817FC4(uint64_t a1)
{
  v1 = type metadata accessor for SubscribeButtonDestination(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = &v6[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_viewModel];
      v10 = type metadata accessor for AlacartePaywallViewModel(0);
      sub_1D7819E74(&v9[*(v10 + 40)], v4, type metadata accessor for SubscribeButtonDestination);
      v11 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
      ObjectType = swift_getObjectType();
      v13 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v15 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v14 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v50[2] = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v50[3] = v13;
      v50[0] = v15;
      v50[1] = v14;
      v16 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v18 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v17 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v50[6] = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v50[7] = v16;
      v50[4] = v18;
      v50[5] = v17;
      v19 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v21 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v20 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v50[10] = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v50[11] = v19;
      v50[8] = v21;
      v50[9] = v20;
      v22 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v24 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v23 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v50[14] = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v50[15] = v22;
      v50[12] = v24;
      v50[13] = v23;
      v25 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v46 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v47 = v25;
      v26 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v48 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v49 = v26;
      v27 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v42 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v43 = v27;
      v28 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v44 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v45 = v28;
      v29 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v38 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v39 = v29;
      v30 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v40 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v41 = v30;
      v31 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v34 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v35 = v31;
      v32 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v36 = *(v8 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v37 = v32;
      v33 = *(v11 + 72);
      sub_1D7772AE8(v50, v51);
      v33(v4, &v34, ObjectType, v11);

      sub_1D7819EDC(v4, type metadata accessor for SubscribeButtonDestination);
      v51[12] = v46;
      v51[13] = v47;
      v51[14] = v48;
      v51[15] = v49;
      v51[8] = v42;
      v51[9] = v43;
      v51[10] = v44;
      v51[11] = v45;
      v51[4] = v38;
      v51[5] = v39;
      v51[6] = v40;
      v51[7] = v41;
      v51[0] = v34;
      v51[1] = v35;
      v51[2] = v36;
      v51[3] = v37;
      sub_1D7772B44(v51);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1D781820C(uint64_t a1)
{
  if (qword_1EE08FB90 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE09C260;
  v2 = sub_1D78B60A4();
  sub_1D78B42C4("Alacarte paywall already subscriber button onTap", 48, 2, &dword_1D7739000, v1, v2, MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;

      v7 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
      ObjectType = swift_getObjectType();
      v9 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v11 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v10 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v46[2] = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v46[3] = v9;
      v46[0] = v11;
      v46[1] = v10;
      v12 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v14 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v13 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v46[6] = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v46[7] = v12;
      v46[4] = v14;
      v46[5] = v13;
      v15 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v17 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v16 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v46[10] = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v46[11] = v15;
      v46[8] = v17;
      v46[9] = v16;
      v18 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v20 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v19 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v46[14] = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v46[15] = v18;
      v46[12] = v20;
      v46[13] = v19;
      v21 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v42 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v43 = v21;
      v22 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v44 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v45 = v22;
      v23 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v38 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v39 = v23;
      v24 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v40 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v41 = v24;
      v25 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v34 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v35 = v25;
      v26 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v36 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v37 = v26;
      v27 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v30 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v31 = v27;
      v28 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v32 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v33 = v28;
      v29 = *(v7 + 88);
      sub_1D7772AE8(v46, v47);
      v29(&v30, ObjectType, v7);
      v47[12] = v42;
      v47[13] = v43;
      v47[14] = v44;
      v47[15] = v45;
      v47[8] = v38;
      v47[9] = v39;
      v47[10] = v40;
      v47[11] = v41;
      v47[4] = v34;
      v47[5] = v35;
      v47[6] = v36;
      v47[7] = v37;
      v47[0] = v30;
      v47[1] = v31;
      v47[2] = v32;
      v47[3] = v33;
      sub_1D7772B44(v47);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1D7818420(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AlacartePaywallViewModel(0);
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  v12 = *(a2 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_subscribeButtonTextProvider + 24);
  v13 = *(a2 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_subscribeButtonTextProvider + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_subscribeButtonTextProvider), v12);
  v14 = (*(v13 + 8))(v11, v12, v13);
  v15 = a2 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_viewModel;
  v16 = (a2 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_viewModel + v7[10]);
  *v16 = v14;
  v16[1] = v17;
  v18 = (v15 + v7[11]);
  *v18 = v19;
  v18[1] = v20;

  v47 = a2;
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_layoutAttributesFactory), *(a2 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_layoutAttributesFactory + 24));
  sub_1D7819E74(v15, v10, type metadata accessor for AlacartePaywallViewModel);
  v21 = *(a3 + 112);
  v49[6] = *(a3 + 96);
  v49[7] = v21;
  v50 = *(a3 + 128);
  v22 = *(a3 + 48);
  v49[2] = *(a3 + 32);
  v49[3] = v22;
  v23 = *(a3 + 80);
  v49[4] = *(a3 + 64);
  v49[5] = v23;
  v24 = *(a3 + 16);
  v49[0] = *a3;
  v49[1] = v24;
  sub_1D77BD654(v10, v49, v51);
  v48 = type metadata accessor for AlacartePaywallViewModel;
  sub_1D7819EDC(v10, type metadata accessor for AlacartePaywallViewModel);
  sub_1D7819E74(v15, v10, type metadata accessor for AlacartePaywallViewModel);
  v25 = *(a2 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallView);
  v44 = *&v25[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_titleTextView];
  [v44 setAttributedText_];
  v46 = *&v25[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_subscribeButton];
  [v46 setAttributedTitle:v84 forState:0];
  v45 = *&v25[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_webAuthButton];
  v26 = v45;
  [v45 setAttributedTitle:v85 forState:0];
  [v26 setHidden_];
  v27 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v42 = *MEMORY[0x1E69DB670];
  v28 = sub_1D78B3214();
  v29 = [v27 mutableString];
  v43 = v10;
  v30 = sub_1D78B5C44();
  v31 = [v29 rangeOfString_];
  v33 = v32;

  [v27 addAttribute:v42 value:v28 range:{v31, v33}];
  v34 = *&v25[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_descriptionTextView];
  v35 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];
  [v34 setAttributedText_];

  v36 = v43;
  [v34 setHidden_];
  v37 = v52;
  v38 = v53;
  [v25 setFrame_];
  [*&v25[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_gradientMaskView] setFrame_];
  [*&v25[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_contentView] setFrame_];
  [v44 setFrame_];
  [v34 setFrame_];
  [v46 setFrame_];
  [v45 setFrame_];
  [*&v25[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_bottomHairline] setFrame_];

  sub_1D7819EDC(v36, v48);
  sub_1D781929C();
  *v49 = v37;
  *(v49 + 1) = v38;
  sub_1D78035B0(0);
  swift_allocObject();
  v39 = sub_1D78B4104();
  sub_1D7819D48(v51);
  return v39;
}

uint64_t sub_1D78188B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t a1), uint64_t (*a4)(uint64_t a1), uint64_t a5)
{
  v51 = a3;
  v90 = type metadata accessor for AlacartePaywallViewModel(0);
  MEMORY[0x1EEE9AC00](v90, v9);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EE08FB90 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE09C260;
  sub_1D774FE1C(0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D78BCAB0;
  v54 = 0.0;
  v55 = -2.68156159e154;
  *&v52[0] = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  sub_1D78B6504();
  v14 = v54;
  v15 = v55;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1D775ABD4();
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  v16 = sub_1D78B60A4();
  sub_1D78B42C4("Error rendering alacarte soft paywall: %{public}@", 49, 2, &dword_1D7739000, v12, v16, v13);

  v17 = a2 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_viewModel;
  v18 = v90;
  v19 = (a2 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_viewModel + *(v90 + 32));
  *v19 = v51;
  v19[1] = a4;
  v20 = v18;
  v21 = (v17 + *(v18 + 36));
  *v21 = 0;
  v21[1] = 0;

  v50 = a2;
  __swift_project_boxed_opaque_existential_1((v50 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_layoutAttributesFactory), *(v50 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_layoutAttributesFactory + 24));
  sub_1D7819E74(v17, v11, type metadata accessor for AlacartePaywallViewModel);
  v22 = *(a5 + 112);
  v52[6] = *(a5 + 96);
  v52[7] = v22;
  v53 = *(a5 + 128);
  v23 = *(a5 + 48);
  v52[2] = *(a5 + 32);
  v52[3] = v23;
  v24 = *(a5 + 80);
  v52[4] = *(a5 + 64);
  v52[5] = v24;
  v25 = *(a5 + 16);
  v52[0] = *a5;
  v52[1] = v25;
  sub_1D77BD654(v11, v52, &v54);
  v51 = type metadata accessor for AlacartePaywallViewModel;
  sub_1D7819EDC(v11, type metadata accessor for AlacartePaywallViewModel);
  sub_1D7819E74(v17, v11, type metadata accessor for AlacartePaywallViewModel);
  v26 = *(a2 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallView);
  v47 = *&v26[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_titleTextView];
  [v47 setAttributedText_];
  v49 = *&v26[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_subscribeButton];
  [v49 setAttributedTitle:v88 forState:0];
  v48 = *&v26[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_webAuthButton];
  v27 = v48;
  [v48 setAttributedTitle:v89 forState:0];
  [v27 setHidden_];
  v28 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v29 = *MEMORY[0x1E69DB670];
  v30 = sub_1D78B3214();
  v31 = v11;
  v32 = v28;
  v33 = [v28 mutableString];
  v46 = v31;
  v34 = sub_1D78B5C44();
  v35 = [v33 rangeOfString_];
  v37 = v36;

  [v32 addAttribute:v29 value:v30 range:{v35, v37}];
  v38 = *&v26[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_descriptionTextView];
  v39 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];
  [v38 setAttributedText_];

  v40 = v46;
  [v38 setHidden_];
  v41 = v56;
  v42 = v57;
  [v26 setFrame_];
  [*&v26[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_gradientMaskView] setFrame_];
  [*&v26[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_contentView] setFrame_];
  [v47 setFrame_];
  [v38 setFrame_];
  [v49 setFrame_];
  [v48 setFrame_];
  [*&v26[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_bottomHairline] setFrame_];

  sub_1D7819EDC(v40, v51);
  sub_1D781929C();
  *v52 = v41;
  *(v52 + 1) = v42;
  sub_1D78035B0(0);
  swift_allocObject();
  v43 = sub_1D78B4104();
  sub_1D7819D48(&v54);
  return v43;
}

uint64_t type metadata accessor for AlacartePaywallViewProvider(uint64_t a1)
{
  result = qword_1EE0921C0;
  if (!qword_1EE0921C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7818FB8(uint64_t a1)
{
  result = type metadata accessor for AlacartePaywallViewModel(319);
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

uint64_t sub_1D78190D0(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1D781929C()
{
  v1 = (v0 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_styler);
  v2 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_styler), *(v0 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_styler + 24));
  v3 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallView);
  v4 = *(v3 + OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_contentView);
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v5);
  v7 = *(v6 + 16);
  v8 = v4;
  v7(v28, v5, v6);
  v9 = v28[1];
  sub_1D7784CF4(v28);
  [v8 setBackgroundColor_];

  v10 = *(v3 + OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_gradientMaskView);
  sub_1D78174DC(v10);

  v11 = *(v3 + OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_titleTextView);
  sub_1D7817748(v11);

  v12 = *(v3 + OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_descriptionTextView);
  sub_1D781788C(v12);

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v13 = *(v3 + OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_subscribeButton);
  sub_1D7816848(v13);

  v14 = *(v3 + OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_webAuthButton);
  v15 = [v14 titleLabel];
  if (v15)
  {
    v16 = v15;
    [v15 setLineBreakMode_];
  }

  v17 = [v14 titleLabel];
  if (v17)
  {
    v18 = v17;
    [v17 setTextAlignment_];
  }

  v19 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v20 = *(v3 + OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_bottomHairline);
  v21 = *(*v19 + 40);
  v22 = *(*v19 + 48);
  __swift_project_boxed_opaque_existential_1((*v19 + 16), v21);
  v23 = *(v22 + 16);
  v24 = v20;
  v23(v27, v21, v22);
  v25 = v27[2];
  sub_1D7784CF4(v27);
  v26 = [v25 colorWithAlphaComponent_];

  [v24 setBackgroundColor_];
}

uint64_t sub_1D781953C(__int128 *a1)
{
  v2 = v1;
  v79[1] = swift_getObjectType();
  v4 = type metadata accessor for AlacartePaywallViewModel(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = a1[7];
  v130 = a1[6];
  v131 = v8;
  v132 = *(a1 + 16);
  v9 = a1[3];
  v126 = a1[2];
  v127 = v9;
  v10 = a1[5];
  v128 = a1[4];
  v129 = v10;
  v11 = a1[1];
  v124 = *a1;
  v125 = v11;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v78 = 0x80000001D78D9100;
  v14 = sub_1D78B3134();
  v16 = v15;

  v17 = &v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel];
  v18 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 208];
  v116 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 192];
  v117 = v18;
  v19 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 240];
  v118 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 224];
  v119 = v19;
  v20 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 144];
  v112 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 128];
  v113 = v20;
  v21 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 176];
  v114 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 160];
  v115 = v21;
  v22 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 80];
  v108 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 64];
  v109 = v22;
  v23 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 112];
  v110 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 96];
  v111 = v23;
  v24 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 16];
  v104 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel];
  v105 = v24;
  v25 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 48];
  v106 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 32];
  v107 = v25;
  v26 = PaywallModel.purchaseIDs.getter();
  v86 = v16;
  v79[0] = v14;
  if (!v26 || (v27 = *(v26 + 16), , !v27))
  {
    v28 = &v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_viewModel];
    v29 = &v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_viewModel + v4[8]];
    *v29 = v14;
    v29[1] = v16;
    v30 = &v28[v4[9]];
    *v30 = 0;
    *(v30 + 1) = 0;
  }

  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_layoutAttributesFactory], *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_layoutAttributesFactory + 24]);
  v31 = OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_viewModel;
  sub_1D7819E74(&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_viewModel], v7, type metadata accessor for AlacartePaywallViewModel);
  v94 = v130;
  v95 = v131;
  *&v96 = v132;
  v90 = v126;
  v91 = v127;
  v92 = v128;
  v93 = v129;
  v88 = v124;
  v89 = v125;
  sub_1D77BD654(v7, &v88, &v104);
  v85 = type metadata accessor for AlacartePaywallViewModel;
  sub_1D7819EDC(v7, type metadata accessor for AlacartePaywallViewModel);
  sub_1D7819E74(&v2[v31], v7, type metadata accessor for AlacartePaywallViewModel);
  v87 = v2;
  v32 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallView];
  v82 = *&v32[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_titleTextView];
  [v82 setAttributedText_];
  v84 = *&v32[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_subscribeButton];
  [v84 setAttributedTitle:v122 forState:0];
  v83 = *&v32[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_webAuthButton];
  v33 = v83;
  [v83 setAttributedTitle:v123 forState:0];
  [v33 setHidden_];
  v34 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v80 = *MEMORY[0x1E69DB670];
  v35 = sub_1D78B3214();
  v36 = [v34 mutableString];
  v37 = sub_1D78B5C44();
  v81 = v7;
  v38 = v4;
  v39 = v37;
  v40 = [v36 rangeOfString_];
  v42 = v41;

  [v34 addAttribute:v80 value:v35 range:{v40, v42}];
  v43 = *&v32[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_descriptionTextView];
  v44 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];
  [v43 setAttributedText_];

  v45 = v81;
  [v43 setHidden_];
  v46 = v105;
  [v32 setFrame_];
  [*&v32[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_gradientMaskView] setFrame_];
  [*&v32[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_contentView] setFrame_];
  [v82 setFrame_];
  [v43 setFrame_];
  [v84 setFrame_];
  [v83 setFrame_];
  [*&v32[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_bottomHairline] setFrame_];

  sub_1D7819EDC(v45, v85);
  v47 = v17[13];
  v100 = v17[12];
  v101 = v47;
  v48 = v17[15];
  v102 = v17[14];
  v103 = v48;
  v49 = v17[9];
  v96 = v17[8];
  v97 = v49;
  v50 = v17[11];
  v98 = v17[10];
  v99 = v50;
  v51 = v17[5];
  v92 = v17[4];
  v93 = v51;
  v52 = v17[7];
  v94 = v17[6];
  v95 = v52;
  v53 = v17[1];
  v88 = *v17;
  v89 = v53;
  v54 = v17[3];
  v90 = v17[2];
  v91 = v54;
  v55 = PaywallModel.purchaseIDs.getter();
  v56 = v86;
  if (!v55)
  {
    goto LABEL_8;
  }

  if (!v55[2])
  {

LABEL_8:

    sub_1D781929C();
    v88 = v46;
    sub_1D78035B0(0);
    swift_allocObject();
    v76 = sub_1D78B4104();
    goto LABEL_9;
  }

  v58 = v55[4];
  v57 = v55[5];

  MEMORY[0x1EEE9AC00](v59, v60);
  v61 = v87;
  v79[-4] = v87;
  v79[-3] = v58;
  v78 = v57;
  sub_1D773F004(0, &qword_1EE08FF20, 0x1E69B54D0);
  sub_1D78B41F4();

  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  v62 = sub_1D78B6104();
  v63 = swift_allocObject();
  v64 = v131;
  *(v63 + 112) = v130;
  *(v63 + 128) = v64;
  *(v63 + 144) = v132;
  v65 = v127;
  *(v63 + 48) = v126;
  *(v63 + 64) = v65;
  v66 = v129;
  *(v63 + 80) = v128;
  *(v63 + 96) = v66;
  v67 = v125;
  *(v63 + 16) = v124;
  *(v63 + 32) = v67;
  sub_1D77CB0EC(&v124, &v88);
  type metadata accessor for CGSize(0);
  sub_1D78B40A4();

  v68 = swift_allocObject();
  v69 = v128;
  *(v68 + 120) = v129;
  v70 = v131;
  *(v68 + 136) = v130;
  *(v68 + 152) = v70;
  v71 = v124;
  *(v68 + 56) = v125;
  v72 = v127;
  *(v68 + 72) = v126;
  *(v68 + 88) = v72;
  *(v68 + 104) = v69;
  v73 = v79[0];
  *(v68 + 16) = v61;
  *(v68 + 24) = v73;
  *(v68 + 32) = v56;
  *(v68 + 168) = v132;
  *(v68 + 40) = v71;
  sub_1D77CB0EC(&v124, &v88);
  v74 = v61;
  v75 = sub_1D78B4014();
  v76 = sub_1D78B4134();

LABEL_9:
  sub_1D7819D48(&v104);
  return v76;
}

uint64_t sub_1D7819D9C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = off_1F526C790;
  type metadata accessor for AlacartePaywallDataProvider();
  return v3(v1, v2);
}

uint64_t sub_1D7819E74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7819EDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1D7819F3C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 104))(a1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  return a2 != 0;
}

uint64_t sub_1D7819FDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 416))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 400);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D781A024(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 408) = 0;
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
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 416) = 1;
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
      *(result + 400) = (a2 - 1);
      return result;
    }

    *(result + 416) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D781A0E0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v40 = a1;
  v2 = sub_1D78B3064();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v33 - v9;
  v11 = sub_1D78B3124();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77F00D4(0);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v33 - v22;
  sub_1D78B3094();
  sub_1D781A4C4(v23, v20);
  if ((*(v12 + 48))(v20, 1, v11) == 1)
  {
    sub_1D781A528(v23);
    v24 = v20;
LABEL_13:
    sub_1D781A528(v24);
    return 0;
  }

  (*(v12 + 32))(v15, v20, v11);
  result = sub_1D78B3074();
  if (!result)
  {
    (*(v12 + 8))(v15, v11);
    v24 = v23;
    goto LABEL_13;
  }

  v26 = result;
  v35 = v23;
  v36 = v15;
  v37 = v12;
  v38 = v11;
  v34 = v10;
  v27 = *(result + 16);
  if (!v27)
  {
LABEL_11:

    (*(v37 + 8))(v36, v38);
    v24 = v35;
    goto LABEL_13;
  }

  v28 = 0;
  while (v28 < *(v26 + 16))
  {
    (*(v3 + 16))(v7, v26 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v28, v2);
    if (sub_1D78B3044() == v40 && v29 == v39)
    {

LABEL_16:

      v31 = v34;
      (*(v3 + 32))(v34, v7, v2);
      v32 = sub_1D78B3054();
      (*(v37 + 8))(v36, v38);
      sub_1D781A528(v35);
      (*(v3 + 8))(v31, v2);
      return v32;
    }

    v30 = sub_1D78B6724();

    if (v30)
    {
      goto LABEL_16;
    }

    ++v28;
    result = (*(v3 + 8))(v7, v2);
    if (v27 == v28)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D781A4C4(uint64_t a1, uint64_t a2)
{
  sub_1D77F00D4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D781A528(uint64_t a1)
{
  sub_1D77F00D4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1D781A598@<D0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (!*a1 || (v146 = *(v2 + 16)) == 0)
  {
    if (qword_1EE0904F0 != -1)
    {
      goto LABEL_141;
    }

    goto LABEL_40;
  }

  v3 = sub_1D78915CC();
  if (!*(v3 + 16))
  {

    goto LABEL_56;
  }

  v4 = *(v3 + 32);

  v5 = sub_1D789172C(v4);

  v136 = v5;
  if (!v5)
  {
LABEL_56:
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v69 = sub_1D78B4304();
    __swift_project_value_buffer(v69, qword_1EE09C270);
    v45 = sub_1D78B6094();
    v46 = sub_1D78B42E4();
    if (!os_log_type_enabled(v46, v45))
    {
      goto LABEL_61;
    }

    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = "OfferConfigMatcher: No merchandisingItemKeys in AMSMarketingItem best offer, no match found";
    goto LABEL_60;
  }

  AMSMarketingItem.additionalAMSOffersMerchandisingItemKeysDictionaries.getter();
  v139 = v6;
  v7 = 0;
  v144 = v2 + 32;
  v137 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CD0];
  v142 = v2;
  do
  {
    if (v7 >= *(v2 + 16))
    {
      goto LABEL_137;
    }

    v9 = (v144 + 88 * v7);
    v10 = v9[1];
    v155 = *v9;
    v156 = v10;
    v11 = v9[2];
    v12 = v9[3];
    v13 = v9[4];
    v160 = *(v9 + 10);
    v158 = v12;
    v159 = v13;
    v157 = v11;
    swift_getObjectType();
    sub_1D781B438(&v155, v153);
    v14 = sub_1D78B6174();
    v15 = MEMORY[0x1DA703220](*(v14 + 16), MEMORY[0x1E69E72F0], MEMORY[0x1E69E7300]);
    v16 = v15;
    v17 = *(v14 + 16);
    if (v17)
    {
      v18 = 0;
      v19 = v15 + 56;
      do
      {
        while (1)
        {
          v20 = *(v14 + 32 + 4 * v18++);
          v21 = MEMORY[0x1DA703AA0](*(v16 + 40), v20, 4);
          v22 = -1 << *(v16 + 32);
          v23 = v21 & ~v22;
          if ((*(v19 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
          {
            break;
          }

LABEL_14:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v153[0] = v16;
          sub_1D78A78AC(v20, v23, isUniquelyReferenced_nonNull_native);
          v16 = *&v153[0];
          if (v18 == v17)
          {
            goto LABEL_16;
          }

          v19 = *&v153[0] + 56;
        }

        v24 = ~v22;
        while (*(*(v16 + 48) + 4 * v23) != v20)
        {
          v23 = (v23 + 1) & v24;
          if (((*(v19 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_14;
          }
        }
      }

      while (v18 != v17);
LABEL_16:

      v2 = v142;
      v8 = MEMORY[0x1E69E7CD0];
    }

    else
    {
    }

    if (v159)
    {
      v26 = v159;
    }

    else
    {
      v26 = v8;
    }

    v27 = *(v26 + 16);

    if (v27)
    {

      v28 = sub_1D781C17C(v26, v16);

      v29 = *(v28 + 16);

      v30 = v29 != 0;
    }

    else
    {

      v30 = 1;
    }

    ++v7;
    if (*(&v159 + 1))
    {
      v31 = *(&v159 + 1);
    }

    else
    {
      v31 = v8;
    }

    v32 = *(v31 + 16);

    if (v32)
    {
      v33 = sub_1D781C17C(v31, v16);

      v34 = *(v33 + 16);

      if (v34 || !v30)
      {
LABEL_36:
        sub_1D781C340(&v155);
        continue;
      }
    }

    else
    {

      if (!v30)
      {
        goto LABEL_36;
      }
    }

    v35 = v137;
    *&v151[0] = v137;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D77D9994(0, *(v137 + 16) + 1, 1);
      v35 = *&v151[0];
    }

    v37 = *(v35 + 16);
    v36 = *(v35 + 24);
    v38 = v35;
    if (v37 >= v36 >> 1)
    {
      sub_1D77D9994((v36 > 1), v37 + 1, 1);
      v38 = *&v151[0];
    }

    *(v38 + 16) = v37 + 1;
    v137 = v38;
    v39 = v38 + 88 * v37;
    v40 = v156;
    *(v39 + 32) = v155;
    *(v39 + 48) = v40;
    v41 = v157;
    v42 = v158;
    v43 = v159;
    *(v39 + 112) = v160;
    *(v39 + 80) = v42;
    *(v39 + 96) = v43;
    *(v39 + 64) = v41;
  }

  while (v7 != v146);
  v49 = v137;
  v50 = *(v137 + 16);
  if (v50)
  {
    v51 = 0;
    v52 = MEMORY[0x1E69E7CC0];
    do
    {
      v53 = v52;
      v54 = v137 + 32 + 88 * v51;
      v55 = v51;
      while (1)
      {
        if (v55 >= *(v49 + 16))
        {
          goto LABEL_139;
        }

        v56 = *(v54 + 16);
        v155 = *v54;
        v156 = v56;
        v57 = *(v54 + 32);
        v58 = *(v54 + 48);
        v59 = *(v54 + 64);
        v160 = *(v54 + 80);
        v158 = v58;
        v159 = v59;
        v157 = v57;
        v51 = v55 + 1;
        v60 = v156;
        sub_1D781B438(&v155, v153);
        if (sub_1D781C720(v60, v136))
        {
          break;
        }

        sub_1D781C340(&v155);
        v54 += 88;
        ++v55;
        v49 = v137;
        if (v50 == v51)
        {
          v52 = v53;
          goto LABEL_63;
        }
      }

      v61 = swift_isUniquelyReferenced_nonNull_native();
      v52 = v53;
      *&v151[0] = v53;
      if ((v61 & 1) == 0)
      {
        sub_1D77D9994(0, *(v53 + 16) + 1, 1);
        v52 = *&v151[0];
      }

      v63 = *(v52 + 16);
      v62 = *(v52 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_1D77D9994((v62 > 1), v63 + 1, 1);
        v52 = *&v151[0];
      }

      *(v52 + 16) = v63 + 1;
      v64 = v52 + 88 * v63;
      v65 = v156;
      *(v64 + 32) = v155;
      *(v64 + 48) = v65;
      v66 = v157;
      v67 = v158;
      v68 = v159;
      *(v64 + 112) = v160;
      *(v64 + 80) = v67;
      *(v64 + 96) = v68;
      *(v64 + 64) = v66;
      v49 = v137;
    }

    while (v50 - 1 != v55);
  }

  else
  {
    v52 = MEMORY[0x1E69E7CC0];
  }

LABEL_63:
  v133 = v52;
  v131 = *(v52 + 16);
  if (!v131)
  {
LABEL_125:
    v130 = MEMORY[0x1E69E7CC0];
LABEL_126:
    *&v155 = v130;

    sub_1D781B494(&v155);

    if (*(v155 + 16))
    {
      v117 = *(v155 + 80);
      v157 = *(v155 + 64);
      v158 = v117;
      v159 = *(v155 + 96);
      v160 = *(v155 + 112);
      v118 = *(v155 + 48);
      v155 = *(v155 + 32);
      v156 = v118;
      sub_1D781B438(&v155, v153);

      if (qword_1EE0904F0 != -1)
      {
        swift_once();
      }

      v119 = sub_1D78B4304();
      __swift_project_value_buffer(v119, qword_1EE09C270);
      v120 = sub_1D78B60A4();
      sub_1D781B438(&v155, v153);
      v121 = sub_1D78B42E4();
      sub_1D781C340(&v155);
      if (os_log_type_enabled(v121, v120))
      {
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        *&v151[0] = v123;
        *v122 = 136315138;
        v153[2] = v157;
        v153[3] = v158;
        v153[4] = v159;
        v154 = v160;
        v153[0] = v155;
        v153[1] = v156;
        v124 = ConfigurableOfferConfig.description.getter();
        v126 = sub_1D77AD82C(v124, v125, v151);

        *(v122 + 4) = v126;
        _os_log_impl(&dword_1D7739000, v121, v120, "OfferConfigMatcher: Returning offer: %s", v122, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v123);
        MEMORY[0x1DA7043F0](v123, -1, -1);
        MEMORY[0x1DA7043F0](v122, -1, -1);
      }

      v127 = v158;
      *(a2 + 32) = v157;
      *(a2 + 48) = v127;
      *(a2 + 64) = v159;
      *(a2 + 80) = v160;
      result = *&v155;
      v128 = v156;
      *a2 = v155;
      *(a2 + 16) = v128;
      return result;
    }

    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v129 = sub_1D78B4304();
    __swift_project_value_buffer(v129, qword_1EE09C270);
    v45 = sub_1D78B60A4();
    v46 = sub_1D78B42E4();
    if (!os_log_type_enabled(v46, v45))
    {
      goto LABEL_61;
    }

    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = "OfferConfigMatcher: No matching offer found";
LABEL_60:
    _os_log_impl(&dword_1D7739000, v46, v45, v48, v47, 2u);
    MEMORY[0x1DA7043F0](v47, -1, -1);
    goto LABEL_61;
  }

  v71 = 0;
  v132 = v52 + 32;
  v72 = v139;
  v73 = v139 + 32;
  v130 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    while (1)
    {
      if (v71 >= *(v52 + 16))
      {
        goto LABEL_140;
      }

      v74 = (v132 + 88 * v71);
      v75 = v74[1];
      v155 = *v74;
      v156 = v75;
      v76 = v74[2];
      v77 = v74[3];
      v78 = v74[4];
      v160 = *(v74 + 10);
      v158 = v77;
      v159 = v78;
      v157 = v76;
      v134 = v71 + 1;
      if (!*(&v156 + 1))
      {
        sub_1D781B438(&v155, v153);
        goto LABEL_117;
      }

      v79 = *(*(&v156 + 1) + 16);
      v140 = *(&v156 + 1);
      sub_1D781B438(&v155, v153);

      v80 = v140;
      v138 = v79;
      if (v79)
      {
        break;
      }

LABEL_116:

LABEL_117:
      v107 = v130;
      v108 = swift_isUniquelyReferenced_nonNull_native();
      v152 = v130;
      if ((v108 & 1) == 0)
      {
        sub_1D77D9994(0, *(v130 + 16) + 1, 1);
        v107 = v152;
      }

      v52 = v133;
      v110 = *(v107 + 16);
      v109 = *(v107 + 24);
      v111 = v107;
      if (v110 >= v109 >> 1)
      {
        sub_1D77D9994((v109 > 1), v110 + 1, 1);
        v52 = v133;
        v111 = v152;
      }

      *(v111 + 16) = v110 + 1;
      v130 = v111;
      v112 = v111 + 88 * v110;
      v113 = v156;
      *(v112 + 32) = v155;
      *(v112 + 48) = v113;
      v114 = v157;
      v115 = v158;
      v116 = v159;
      *(v112 + 112) = v160;
      *(v112 + 80) = v115;
      *(v112 + 96) = v116;
      *(v112 + 64) = v114;
      v71 = v134;
      if (v134 == v131)
      {
        goto LABEL_126;
      }
    }

    v81 = 0;
LABEL_70:
    if (v81 >= *(v80 + 16))
    {
      goto LABEL_138;
    }

    v82 = *(v72 + 16);
    if (v82)
    {
      break;
    }

LABEL_114:

    sub_1D781C340(&v155);
    v52 = v133;
    v71 = v134;
    if (v134 == v131)
    {
      goto LABEL_126;
    }
  }

  v83 = *(v140 + 32 + 8 * v81);
  v143 = v81 + 1;

  v84 = 0;
  v147 = v83;
  v141 = v82;
  while (v84 < *(v72 + 16))
  {
    v85 = *(v83 + 16);
    if (!v85)
    {
      goto LABEL_76;
    }

    v86 = *(v73 + 8 * v84);
    if (v85 != *(v86 + 16))
    {
      goto LABEL_76;
    }

    v145 = v84;
    v87 = 1 << *(v86 + 32);
    if (v87 < 64)
    {
      v88 = ~(-1 << v87);
    }

    else
    {
      v88 = -1;
    }

    v89 = v88 & *(v86 + 64);
    v90 = (v87 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v91 = 0;
    for (i = v90; ; v90 = i)
    {
      if (!v89)
      {
        do
        {
          v106 = v91 + 1;
          if (__OFADD__(v91, 1))
          {
            __break(1u);
            goto LABEL_125;
          }

          if (v106 >= v90)
          {

            v81 = v143;
            v73 = v139 + 32;
            v72 = v139;
            v80 = v140;
            if (v143 == v138)
            {
              goto LABEL_116;
            }

            goto LABEL_70;
          }

          v89 = *(v86 + 64 + 8 * v106);
          ++v91;
        }

        while (!v89);
        v91 = v106;
        if (*(v83 + 16))
        {
          goto LABEL_88;
        }

        goto LABEL_108;
      }

      if (!*(v83 + 16))
      {
        goto LABEL_108;
      }

LABEL_88:
      v92 = (*(v86 + 48) + ((v91 << 10) | (16 * __clz(__rbit64(v89)))));
      v94 = *v92;
      v93 = v92[1];

      v95 = sub_1D777BBB4(v94, v93);
      if ((v96 & 1) == 0)
      {

LABEL_74:

        v73 = v139 + 32;
        v72 = v139;
        goto LABEL_75;
      }

      if (!*(v86 + 16))
      {

LABEL_108:

        goto LABEL_74;
      }

      v97 = *(v83 + 56) + 24 * v95;
      v98 = *v97;
      v99 = *(v97 + 8);
      v100 = *(v97 + 16);
      sub_1D781CA54(*v97, v99, *(v97 + 16));
      v101 = sub_1D777BBB4(v94, v93);
      v103 = v102;

      if ((v103 & 1) == 0)
      {

        sub_1D77C5618(v98, v99, v100);
        v83 = v147;
        goto LABEL_74;
      }

      sub_1D777BE08(*(v86 + 56) + 32 * v101, v151);
      sub_1D778D0A0(v151, v153);
      if (v100)
      {
        break;
      }

      sub_1D778D0A0(v153, v151);
      if (!swift_dynamicCast())
      {

        goto LABEL_112;
      }

      v83 = v147;
      if (v149 != v98)
      {
        goto LABEL_108;
      }

LABEL_85:
      v89 &= v89 - 1;
    }

    sub_1D777BE08(v153, v151);

    if (swift_dynamicCast())
    {
      if (v149 == v98 && v99 == v150)
      {
        sub_1D77C5618(v98, v99, 1);

        sub_1D77C5618(v98, v99, 1);
        __swift_destroy_boxed_opaque_existential_1(v153);
        v83 = v147;
      }

      else
      {
        v105 = sub_1D78B6724();
        sub_1D77C5618(v98, v99, 1);

        sub_1D77C5618(v98, v99, 1);
        __swift_destroy_boxed_opaque_existential_1(v153);
        v83 = v147;
        if ((v105 & 1) == 0)
        {
          goto LABEL_108;
        }
      }

      goto LABEL_85;
    }

    sub_1D77C5618(v98, v99, 1);
    __swift_destroy_boxed_opaque_existential_1(v153);

    sub_1D77C5618(v98, v99, 1);
LABEL_112:
    v73 = v139 + 32;
    v72 = v139;
    v83 = v147;
LABEL_75:
    v82 = v141;
    v84 = v145;
LABEL_76:
    if (++v84 == v82)
    {

      goto LABEL_114;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  swift_once();
LABEL_40:
  v44 = sub_1D78B4304();
  __swift_project_value_buffer(v44, qword_1EE09C270);
  v45 = sub_1D78B6094();
  v46 = sub_1D78B42E4();
  if (os_log_type_enabled(v46, v45))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = "OfferConfigMatcher: No offers in mapping file, no match found";
    goto LABEL_60;
  }

LABEL_61:

  *(a2 + 80) = 0;
  result = 0.0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_1D781B3DC()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1D781B494(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D781C70C(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_1D781B500(v4);
  *a1 = v2;
}

void sub_1D781B500(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D78B66D4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D78B5F14();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D781B6D8(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D781B5F8(0, v2, 1, a1);
  }
}

uint64_t sub_1D781B5F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 88 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      v9 = *(v8 + 24);
      if (v9)
      {
        v9 = *(v9 + 16);
      }

      v10 = *(v8 - 64);
      if (v10 && v9 < *(v10 + 16))
      {
LABEL_4:
        ++a3;
        v5 += 88;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v11 = v8 - 88;
      v17 = *(v8 + 32);
      v18 = *(v8 + 48);
      v19 = *(v8 + 64);
      v20 = *(v8 + 80);
      v15 = *v8;
      v16 = *(v8 + 16);
      v12 = *(v8 - 40);
      *(v8 + 32) = *(v8 - 56);
      *(v8 + 48) = v12;
      *(v8 + 64) = *(v8 - 24);
      *(v8 + 80) = *(v8 - 8);
      v13 = *(v8 - 72);
      *v8 = *(v8 - 88);
      *(v8 + 16) = v13;
      *(v11 + 32) = v17;
      *(v11 + 48) = v18;
      *(v11 + 64) = v19;
      *(v11 + 80) = v20;
      v8 -= 88;
      *v11 = v15;
      *(v11 + 16) = v16;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D781B6D8(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_102:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_140;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_104:
      v82 = v7 + 16;
      v83 = *(v7 + 2);
      if (v83 >= 2)
      {
        while (*a3)
        {
          v84 = &v7[16 * v83];
          v85 = *v84;
          v86 = &v82[2 * v83];
          v87 = v86[1];
          sub_1D781BD48((*a3 + 88 * *v84), (*a3 + 88 * *v86), (*a3 + 88 * v87), a1);
          if (v4)
          {
            goto LABEL_111;
          }

          if (v87 < v85)
          {
            goto LABEL_126;
          }

          if (v83 - 2 >= *v82)
          {
            goto LABEL_127;
          }

          *v84 = v85;
          *(v84 + 1) = v87;
          v88 = *v82 - v83;
          if (*v82 < v83)
          {
            goto LABEL_128;
          }

          v83 = *v82 - 1;
          memmove(v86, v86 + 2, 16 * v88);
          *v82 = v83;
          if (v83 <= 1)
          {
            goto LABEL_111;
          }
        }

        goto LABEL_138;
      }

LABEL_111:

      return;
    }

LABEL_134:
    v7 = sub_1D781C070(v7);
    goto LABEL_104;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v8 = v6++;
  if (v6 >= v5)
  {
    goto LABEL_31;
  }

  v9 = *a3;
  v10 = *(*a3 + 88 * v6 + 24);
  if (v10)
  {
    v11 = *(v10 + 16);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v9 + 88 * v8 + 24);
  if (v12)
  {
    v12 = *(v12 + 16);
  }

  v13 = v8 + 2;
  if (v5 > v8 + 2)
  {
    v13 = v5;
  }

  v14 = v13 - v8 - 2;
  v15 = 88 * v8;
  v16 = (v9 + 88 * v8 + 200);
  while (v14)
  {
    v18 = *v16;
    if (*v16)
    {
      v19 = *(v18 + 16);
      if (!v10)
      {
        goto LABEL_13;
      }

LABEL_19:
      v10 = *(v10 + 16);
      goto LABEL_13;
    }

    v19 = 0;
    if (v10)
    {
      goto LABEL_19;
    }

LABEL_13:
    v17 = (v11 >= v12) ^ (v19 < v10);
    --v14;
    v16 += 11;
    ++v6;
    v10 = v18;
    if ((v17 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v6 = v13;
LABEL_21:
  if (v11 >= v12)
  {
    if (v6 < v8)
    {
      goto LABEL_131;
    }

    if (v8 < v6)
    {
      v20 = 88 * v6 - 88;
      v21 = v6;
      v89 = v8;
      do
      {
        if (v8 != --v21)
        {
          v23 = *a3;
          if (!*a3)
          {
            goto LABEL_137;
          }

          v22 = v23 + v20;
          v97 = *(v23 + v15 + 32);
          v99 = *(v23 + v15 + 48);
          v101 = *(v23 + v15 + 64);
          v103 = *(v23 + v15 + 80);
          v93 = *(v23 + v15);
          v95 = *(v23 + v15 + 16);
          memmove((v23 + v15), (v23 + v20), 0x58uLL);
          *(v22 + 32) = v97;
          *(v22 + 48) = v99;
          *(v22 + 64) = v101;
          *(v22 + 80) = v103;
          *v22 = v93;
          *(v22 + 16) = v95;
        }

        ++v8;
        v20 -= 88;
        v15 += 88;
      }

      while (v8 < v21);
      v5 = a3[1];
      v8 = v89;
    }
  }

LABEL_31:
  if (v6 >= v5)
  {
    goto LABEL_51;
  }

  if (__OFSUB__(v6, v8))
  {
    goto LABEL_130;
  }

  if (v6 - v8 >= a4)
  {
    goto LABEL_51;
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_132;
  }

  if (v8 + a4 < v5)
  {
    v5 = v8 + a4;
  }

  if (v5 < v8)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (v6 == v5)
  {
    goto LABEL_51;
  }

  v24 = *a3;
  v25 = *a3 + 88 * v6;
  v26 = v8 - v6;
LABEL_41:
  v27 = v26;
  v28 = v25;
  while (1)
  {
    v29 = *(v28 + 24);
    if (v29)
    {
      v29 = *(v29 + 16);
    }

    v30 = *(v28 - 64);
    if (v30 && v29 < *(v30 + 16))
    {
LABEL_40:
      ++v6;
      v25 += 88;
      --v26;
      if (v6 == v5)
      {
        v6 = v5;
LABEL_51:
        if (v6 < v8)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1D777AFEC(0, *(v7 + 2) + 1, 1, v7);
        }

        v36 = *(v7 + 2);
        v35 = *(v7 + 3);
        v37 = v36 + 1;
        if (v36 >= v35 >> 1)
        {
          v7 = sub_1D777AFEC((v35 > 1), v36 + 1, 1, v7);
        }

        *(v7 + 2) = v37;
        v38 = &v7[16 * v36];
        *(v38 + 4) = v8;
        *(v38 + 5) = v6;
        v39 = *a1;
        if (!*a1)
        {
          goto LABEL_139;
        }

        if (!v36)
        {
LABEL_3:
          v5 = a3[1];
          if (v6 >= v5)
          {
            goto LABEL_102;
          }

          goto LABEL_4;
        }

        while (1)
        {
          v40 = v37 - 1;
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v41 = *(v7 + 4);
            v42 = *(v7 + 5);
            v51 = __OFSUB__(v42, v41);
            v43 = v42 - v41;
            v44 = v51;
LABEL_71:
            if (v44)
            {
              goto LABEL_117;
            }

            v57 = &v7[16 * v37];
            v59 = *v57;
            v58 = *(v57 + 1);
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_120;
            }

            v63 = &v7[16 * v40 + 32];
            v65 = *v63;
            v64 = *(v63 + 1);
            v51 = __OFSUB__(v64, v65);
            v66 = v64 - v65;
            if (v51)
            {
              goto LABEL_123;
            }

            if (__OFADD__(v61, v66))
            {
              goto LABEL_124;
            }

            if (v61 + v66 >= v43)
            {
              if (v43 < v66)
              {
                v40 = v37 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          v67 = &v7[16 * v37];
          v69 = *v67;
          v68 = *(v67 + 1);
          v51 = __OFSUB__(v68, v69);
          v61 = v68 - v69;
          v62 = v51;
LABEL_85:
          if (v62)
          {
            goto LABEL_119;
          }

          v70 = &v7[16 * v40];
          v72 = *(v70 + 4);
          v71 = *(v70 + 5);
          v51 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v51)
          {
            goto LABEL_122;
          }

          if (v73 < v61)
          {
            goto LABEL_3;
          }

LABEL_92:
          v78 = v40 - 1;
          if (v40 - 1 >= v37)
          {
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
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
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
LABEL_132:
            __break(1u);
            goto LABEL_133;
          }

          if (!*a3)
          {
            goto LABEL_136;
          }

          v79 = *&v7[16 * v78 + 32];
          v80 = *&v7[16 * v40 + 40];
          sub_1D781BD48((*a3 + 88 * v79), (*a3 + 88 * *&v7[16 * v40 + 32]), (*a3 + 88 * v80), v39);
          if (v4)
          {
            goto LABEL_111;
          }

          if (v80 < v79)
          {
            goto LABEL_113;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1D781C070(v7);
          }

          if (v78 >= *(v7 + 2))
          {
            goto LABEL_114;
          }

          v81 = &v7[16 * v78];
          *(v81 + 4) = v79;
          *(v81 + 5) = v80;
          sub_1D781BFE4(v40);
          v37 = *(v7 + 2);
          if (v37 <= 1)
          {
            goto LABEL_3;
          }
        }

        v45 = &v7[16 * v37 + 32];
        v46 = *(v45 - 64);
        v47 = *(v45 - 56);
        v51 = __OFSUB__(v47, v46);
        v48 = v47 - v46;
        if (v51)
        {
          goto LABEL_115;
        }

        v50 = *(v45 - 48);
        v49 = *(v45 - 40);
        v51 = __OFSUB__(v49, v50);
        v43 = v49 - v50;
        v44 = v51;
        if (v51)
        {
          goto LABEL_116;
        }

        v52 = &v7[16 * v37];
        v54 = *v52;
        v53 = *(v52 + 1);
        v51 = __OFSUB__(v53, v54);
        v55 = v53 - v54;
        if (v51)
        {
          goto LABEL_118;
        }

        v51 = __OFADD__(v43, v55);
        v56 = v43 + v55;
        if (v51)
        {
          goto LABEL_121;
        }

        if (v56 >= v48)
        {
          v74 = &v7[16 * v40 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v51 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v51)
          {
            goto LABEL_125;
          }

          if (v43 < v77)
          {
            v40 = v37 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_71;
      }

      goto LABEL_41;
    }

    if (!v24)
    {
      break;
    }

    v31 = v28 - 88;
    v98 = *(v28 + 32);
    v100 = *(v28 + 48);
    v102 = *(v28 + 64);
    v104 = *(v28 + 80);
    v94 = *v28;
    v96 = *(v28 + 16);
    v32 = *(v28 - 40);
    *(v28 + 32) = *(v28 - 56);
    *(v28 + 48) = v32;
    *(v28 + 64) = *(v28 - 24);
    *(v28 + 80) = *(v28 - 8);
    v33 = *(v28 - 72);
    *v28 = *(v28 - 88);
    *(v28 + 16) = v33;
    *(v31 + 32) = v98;
    *(v31 + 48) = v100;
    *(v31 + 64) = v102;
    *(v31 + 80) = v104;
    v28 -= 88;
    *v31 = v94;
    *(v31 + 16) = v96;
    if (__CFADD__(v27++, 1))
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
}

uint64_t sub_1D781BD48(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 88;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 88;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[88 * v9] <= a4)
    {
      memmove(a4, __dst, 88 * v9);
    }

    v12 = &v4[88 * v9];
    if (v8 < 88)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_37;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *(v6 + 3);
      if (v15)
      {
        v15 = *(v15 + 16);
      }

      v16 = *(v4 + 3);
      if (v16)
      {
        if (v15 < *(v16 + 16))
        {
          break;
        }
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 88;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 88;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 88;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x58uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[88 * v11] <= a4)
  {
    memmove(a4, __src, 88 * v11);
  }

  v12 = &v4[88 * v11];
  if (v10 >= 88 && v6 > v7)
  {
LABEL_23:
    v5 -= 88;
    do
    {
      v17 = *(v12 - 8);
      if (v17)
      {
        v17 = *(v17 + 16);
      }

      v18 = *(v6 - 8);
      if (!v18 || v17 >= *(v18 + 16))
      {
        v20 = v6 - 88;
        if (v5 + 88 != v6)
        {
          memmove(v5, v6 - 88, 0x58uLL);
        }

        if (v12 <= v4 || (v6 -= 88, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_37;
        }

        goto LABEL_23;
      }

      v19 = (v12 - 88);
      if (v5 + 88 != v12)
      {
        memmove(v5, v12 - 88, 0x58uLL);
      }

      v5 -= 88;
      v12 -= 88;
    }

    while (v19 > v4);
    v12 = v19;
  }

LABEL_37:
  v21 = (v12 - v4) / 88;
  if (v6 != v4 || v6 >= &v4[88 * v21])
  {
    memmove(v6, v4, 88 * v21);
  }

  return 1;
}

uint64_t sub_1D781BFE4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D781C070(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1D781C084(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D781CA64(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1D781C17C(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, v9);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v10 = sub_1D781C424(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_1D781C394(v12, v6, a2, a1);

    MEMORY[0x1DA7043F0](v12, -1, -1);
  }

  return v10;
}

void *sub_1D781C394(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1D781C424(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1D781C424(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v22 = 0;
    v23 = 1 << *(a3 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(a3 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = a4 + 56;
    v38 = 0;
LABEL_24:
    while (v25)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_31:
      v31 = v28 | (v22 << 6);
      v32 = *(*(a3 + 48) + 4 * v31);
      result = MEMORY[0x1DA703AA0](*(a4 + 40), v32, 4);
      v33 = -1 << *(a4 + 32);
      v34 = result & ~v33;
      if ((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        while (*(*(a4 + 48) + 4 * v34) != v32)
        {
          v34 = (v34 + 1) & v35;
          if (((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v37 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_41;
        }

        ++v38;
      }
    }

    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
LABEL_38:

        return sub_1D77EDC68(v37, a2, v38, a3);
      }

      v30 = *(a3 + 56 + 8 * v22);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v25 = (v30 - 1) & v30;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v38 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + 4 * (v12 | (v6 << 6)));
      result = MEMORY[0x1DA703AA0](*(a3 + 40), v15, 4);
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + 4 * v17) == v15)
        {
LABEL_18:
          v37[v18] |= v19;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_42;
          }

          ++v38;
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + 4 * v17) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_38;
      }

      v14 = *(a4 + 56 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1D781C720(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = a2;
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  v4 = a1;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v31 = v9;
  for (i = v4; ; v4 = i)
  {
    if (!v8)
    {
      do
      {
        v27 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          return result;
        }

        if (v27 >= v9)
        {

          return 1;
        }

        v8 = *(v5 + 8 * v27);
        ++v11;
      }

      while (!v8);
      v11 = v27;
      if (*(v4 + 16))
      {
        goto LABEL_10;
      }

      goto LABEL_32;
    }

    if (!*(v4 + 16))
    {
      goto LABEL_32;
    }

LABEL_10:
    v12 = (*(v3 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v8)))));
    v14 = *v12;
    v13 = v12[1];

    v15 = sub_1D777BBB4(v14, v13);
    if ((v16 & 1) == 0)
    {

      return 0;
    }

    if (!*(v3 + 16))
    {

LABEL_32:

      return 0;
    }

    v17 = *(v4 + 56) + 24 * v15;
    v18 = v3;
    v19 = *v17;
    v20 = *(v17 + 8);
    v21 = *(v17 + 16);
    sub_1D781CA54(*v17, v20, *(v17 + 16));
    v22 = sub_1D777BBB4(v14, v13);
    v24 = v23;

    if ((v24 & 1) == 0)
    {

      v28 = v19;
      v29 = v20;
      v30 = v21;
      goto LABEL_36;
    }

    sub_1D777BE08(*(v18 + 56) + 32 * v22, v35);
    sub_1D778D0A0(v35, v36);
    if (v21)
    {
      break;
    }

    sub_1D778D0A0(v36, v35);
    result = swift_dynamicCast();
    if (!result)
    {
      goto LABEL_32;
    }

    v3 = v18;
    if (v33 != v19)
    {
      goto LABEL_32;
    }

LABEL_7:
    v8 &= v8 - 1;
    v9 = v31;
  }

  sub_1D777BE08(v36, v35);

  if (swift_dynamicCast())
  {
    if (v33 == v19 && v20 == v34)
    {
      sub_1D77C5618(v19, v20, 1);

      sub_1D77C5618(v19, v20, 1);
      result = __swift_destroy_boxed_opaque_existential_1(v36);
      v3 = v18;
    }

    else
    {
      v26 = sub_1D78B6724();
      sub_1D77C5618(v19, v20, 1);

      sub_1D77C5618(v19, v20, 1);
      result = __swift_destroy_boxed_opaque_existential_1(v36);
      v3 = v18;
      if ((v26 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_7;
  }

  sub_1D77C5618(v19, v20, 1);
  __swift_destroy_boxed_opaque_existential_1(v36);

  v28 = v19;
  v29 = v20;
  v30 = 1;
LABEL_36:
  sub_1D77C5618(v28, v29, v30);
  return 0;
}

uint64_t sub_1D781CA54(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1D781CA64(uint64_t a1)
{
  if (!qword_1EC9CAB60)
  {
    sub_1D777C824();
    v1 = sub_1D78B66F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CAB60);
    }
  }
}

uint64_t type metadata accessor for BundlePaywallRenderModel(uint64_t a1)
{
  result = qword_1EE092C10;
  if (!qword_1EE092C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D781CB30(uint64_t a1)
{
  type metadata accessor for BundlePaywallViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1D77404D4(319, &qword_1EE08FBE0, sub_1D781CC04);
    if (v2 <= 0x3F)
    {
      sub_1D77404D4(319, &unk_1EE096460, MEMORY[0x1E6968FB0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D781CC04()
{
  result = qword_1EE08FBE8;
  if (!qword_1EE08FBE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FBE8);
  }

  return result;
}

uint64_t sub_1D781CC74()
{
  result = sub_1D78B5C44();
  qword_1EE08EA60 = result;
  return result;
}

uint64_t ManageSubscriptionsURLProvider.__allocating_init(defaultUrl:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_fetchedURL;
  v4 = sub_1D78B3294();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v2 + v3, 1, 1, v4);
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_defaultUrl, a1, v4);
  return v2;
}

uint64_t ManageSubscriptionsURLProvider.init(defaultUrl:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_fetchedURL;
  v4 = sub_1D78B3294();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v1 + v3, 1, 1, v4);
  (*(v5 + 32))(v1 + OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_defaultUrl, a1, v4);
  return v1;
}

Swift::Void __swiftcall ManageSubscriptionsURLProvider.prewarm()()
{
  sub_1D78B3A64();

  sub_1D78B3A44(v0);
}

void sub_1D781CEAC(uint64_t a1)
{
  v2 = sub_1D78B5C44();
  v3 = sub_1D78B5C44();
  v4 = [objc_opt_self() bagForProfile:v2 profileVersion:v3];

  if (qword_1EE08EA58 != -1)
  {
    swift_once();
  }

  v5 = [v4 URLForKey_];
  v6 = [v5 valuePromise];
  v8[4] = sub_1D781D964;
  v8[5] = a1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D789E5B0;
  v8[3] = &block_descriptor_23;
  v7 = _Block_copy(v8);

  [v6 addFinishBlock_];
  _Block_release(v7);
}

void sub_1D781D05C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1D7740528(0, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  v7 = MEMORY[0x1EEE9AC00](a1, v6);
  v9 = &v21 - v8;
  if (v7)
  {
    sub_1D78B3254();
    v10 = sub_1D78B3294();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
    v11 = OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_fetchedURL;
    swift_beginAccess();
    sub_1D77B44C4(v9, a3 + v11);
    swift_endAccess();
  }

  if (a2)
  {
    v12 = a2;
    if (qword_1EE08E648 != -1)
    {
      swift_once();
    }

    v13 = sub_1D78B4304();
    __swift_project_value_buffer(v13, qword_1EE09C1F0);
    v14 = a2;
    v15 = sub_1D78B42E4();
    v16 = sub_1D78B60A4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = a2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_1D7739000, v15, v16, "ManageSubscriptionsURLProvider fetch error: [%@]", v17, 0xCu);
      sub_1D781D96C(v18, &qword_1EE08FBB0, sub_1D781D9C8);
      MEMORY[0x1DA7043F0](v18, -1, -1);
      MEMORY[0x1DA7043F0](v17, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t ManageSubscriptionsURLProvider.manageSubscriptionsURL()@<X0>(uint64_t a1@<X8>)
{
  sub_1D7740528(0, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_fetchedURL;
  swift_beginAccess();
  sub_1D776F538(v1 + v7, v6);
  v8 = sub_1D78B3294();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  (*(v9 + 16))(a1, v1 + OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_defaultUrl, v8);
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1D781D96C(v6, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  }

  return result;
}

uint64_t ManageSubscriptionsURLProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_defaultUrl;
  v2 = sub_1D78B3294();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D781D96C(v0 + OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_fetchedURL, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  return v0;
}

uint64_t ManageSubscriptionsURLProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_defaultUrl;
  v2 = sub_1D78B3294();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D781D96C(v0 + OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_fetchedURL, &unk_1EE096460, MEMORY[0x1E6968FB0]);

  return swift_deallocClassInstance();
}

double sub_1D781D5C4()
{
  sub_1D78B3A64();

  sub_1D78B3A44(v0);

  return result;
}

uint64_t sub_1D781D628@<X0>(uint64_t a1@<X8>)
{
  sub_1D7740528(0, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = *v1;
  v8 = OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_fetchedURL;
  swift_beginAccess();
  sub_1D776F538(v7 + v8, v6);
  v9 = sub_1D78B3294();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v6, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v6, v9);
  }

  (*(v10 + 16))(a1, v7 + OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_defaultUrl, v9);
  result = (v11)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1D781D96C(v6, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  }

  return result;
}

uint64_t type metadata accessor for ManageSubscriptionsURLProvider(uint64_t a1)
{
  result = qword_1EE08EA48;
  if (!qword_1EE08EA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D781D850(uint64_t a1)
{
  sub_1D78B3294();
  if (v1 <= 0x3F)
  {
    sub_1D7740528(319, &unk_1EE096460, MEMORY[0x1E6968FB0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D781D96C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7740528(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D781D9C8()
{
  result = qword_1EE08FBB8;
  if (!qword_1EE08FBB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FBB8);
  }

  return result;
}

uint64_t sub_1D781DA18(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_1D781DAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 184);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = sub_1D77AE39C;
  v12[5] = v10;
  v12[6] = a5;
  v14[4] = sub_1D78212E4;
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D781E048;
  v14[3] = &block_descriptor_24;
  v13 = _Block_copy(v14);

  [v11 performEntitlementWithIgnoreCache:0 completion:v13];
  _Block_release(v13);
}

void sub_1D781DC04(unint64_t a1, uint64_t a2, id a3, void (*a4)(id), uint64_t a5, void (*a6)(_BOOL8, __n128), uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    v11 = a1;
    if (!a1)
    {
      (a6)(0, a2);
      return;
    }

    v53 = a7;
    v54 = a6;
    if (a1 >> 62)
    {
LABEL_42:
      v47 = a8;
      v48 = sub_1D78B6534();
      a8 = v47;
      v12 = v48;
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v55 = a8;
      v56[0] = MEMORY[0x1E69E7CC0];
      sub_1D77D9874(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        __break(1u);
        goto LABEL_44;
      }

      v14 = 0;
      v13 = v56[0];
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1DA703700](v14, v11);
        }

        else
        {
          v15 = *(v11 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = [v15 inAppAdamID];
        v18 = [v17 stringValue];

        v19 = sub_1D78B5C74();
        v21 = v20;

        v56[0] = v13;
        v23 = *(v13 + 16);
        v22 = *(v13 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1D77D9874((v22 > 1), v23 + 1, 1);
          v13 = v56[0];
        }

        ++v14;
        *(v13 + 16) = v23 + 1;
        v24 = v13 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
      }

      while (v12 != v14);
      a8 = v55;
    }

    v25 = [*(a8 + 32) configuration];
    if (v25)
    {
      v26 = v25;
      if ([v25 respondsToSelector_])
      {
        v27 = [v26 paidBundleConfig];
        swift_unknownObjectRelease();
        v28 = [v27 offeredBundlePurchaseIDs];

        if (v28)
        {
          v29 = sub_1D78B5EB4();

          v31 = v29;
          v32 = *(v29 + 16);
          if (v32)
          {
            v33 = 0;
            v11 = 0;
            v34 = v29 + 40;
            v55 = *(v29 + 16);
            v50 = v32 - 1;
            v35 = MEMORY[0x1E69E7CC0];
            v51 = v29 + 40;
            do
            {
              v52 = v35;
              v36 = (v34 + 16 * v33);
              v37 = v33;
              while (1)
              {
                if (v37 >= *(v31 + 16))
                {
                  __break(1u);
                  goto LABEL_42;
                }

                v38 = v31;
                v40 = *(v36 - 1);
                v39 = *v36;
                v33 = v37 + 1;
                v56[0] = v40;
                v56[1] = v39;
                MEMORY[0x1EEE9AC00](v31, v30);
                v49[2] = v56;

                if (sub_1D781DA18(sub_1D782134C, v49, v13))
                {
                  break;
                }

                v36 += 2;
                ++v37;
                v31 = v38;
                if (v55 == v33)
                {
                  v35 = v52;
                  goto LABEL_39;
                }
              }

              v35 = v52;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v57 = v35;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1D77D9874(0, *(v35 + 16) + 1, 1);
                v35 = v57;
              }

              v31 = v38;
              v43 = *(v35 + 16);
              v42 = *(v35 + 24);
              if (v43 >= v42 >> 1)
              {
                sub_1D77D9874((v42 > 1), v43 + 1, 1);
                v31 = v38;
                v35 = v57;
              }

              *(v35 + 16) = v43 + 1;
              v44 = v35 + 16 * v43;
              *(v44 + 32) = v40;
              *(v44 + 40) = v39;
              v34 = v51;
            }

            while (v50 != v37);
          }

          else
          {
            v35 = MEMORY[0x1E69E7CC0];
          }

LABEL_39:

          v46 = *(v35 + 16);

          v45 = v46 != 0;
          goto LABEL_40;
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }

      v45 = 0;
LABEL_40:
      (v54)(v45);
      return;
    }

LABEL_44:
    __break(1u);
    return;
  }

  v10 = a3;
  a4(a3);
}

double sub_1D781E048(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_1D773F004(0, &qword_1EE08FCA8, 0x1E698B558);
    v6 = sub_1D78B5EB4();
  }

  v8 = a4;
  v7(v6, a3, a4);

  return result;
}

id sub_1D781E0F4(unint64_t a1, int a2, void *a3, id *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v148 = a6;
  v147 = a5;
  v136 = sub_1D78B5254();
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136, v10);
  v133 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1D78B52A4();
  v132 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134, v12);
  v131 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_1D78B3394();
  v143 = *(v145 - 8);
  v15 = MEMORY[0x1EEE9AC00](v145, v14);
  v144 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v137 = &v130 - v18;
  sub_1D7744310(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v23 = &v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v146 = &v130 - v25;
  v155 = a4;
  v26 = [a4[3] cachedSubscription];
  if (objc_getAssociatedObject(v26, v26 + 1))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v161 = 0u;
    v162 = 0u;
  }

  aBlock = v161;
  v158 = v162;
  v27 = MEMORY[0x1E69E7CA0];
  v152 = v23;
  if (*(&v162 + 1))
  {
    sub_1D773F004(0, &qword_1EE08FBD0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v28 = v156;
      v29 = [v156 integerValue];
      if (v29 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_1D782140C(&aBlock, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D779C73C);
  }

  v28 = 0;
  v29 = 0;
LABEL_10:
  if (objc_getAssociatedObject(v26, ~v29))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v161 = 0u;
    v162 = 0u;
  }

  aBlock = v161;
  v158 = v162;
  if (*(&v162 + 1))
  {
    sub_1D773F004(0, &qword_1EE08FBD0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v30 = v156;
      v31 = [v30 integerValue];

      v32 = v31 - 146;
      goto LABEL_18;
    }
  }

  else
  {
    sub_1D782140C(&aBlock, &qword_1EE08F9C0, v27 + 8, MEMORY[0x1E69E6720], sub_1D779C73C);
  }

LABEL_17:

  v32 = -146;
LABEL_18:
  v33 = [v155[2] isPaidSubscriberFromAppStore];
  if (!a3)
  {
    v141 = 1;
    goto LABEL_27;
  }

  v34 = a1;
  v35 = a3;
  v36 = sub_1D78B31B4();
  v37 = [v36 domain];
  v38 = sub_1D78B5C74();
  v40 = v39;

  if (v38 == sub_1D78B5C74() && v40 == v41)
  {
  }

  else
  {
    v42 = sub_1D78B6724();

    if ((v42 & 1) == 0)
    {

      v44 = 1;
      goto LABEL_26;
    }
  }

  v43 = [v36 code];

  v44 = v43 != 3027;
LABEL_26:
  v141 = v44;
  a1 = v34;
LABEL_27:
  v45 = NewsCoreUserDefaults();
  v46 = [v45 BOOLForKey_];

  if (a1)
  {
    if (a1 >> 62)
    {
      v47 = sub_1D78B6534();
    }

    else
    {
      v47 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (a3)
    {
      v48 = v47 == 0;
    }

    else
    {
      v48 = 0;
    }

    v49 = v48;
    v153 = v49;
  }

  else
  {
    v153 = 0;
  }

  v154 = a3;
  v50 = v32 ^ v29;
  v51 = v46 | a2;
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v151 = v33 | v50;
  v150 = a1 == 0;
  v149 = qword_1EE09C268;
  sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v140 = v52;
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1D78C0D80;
  *&aBlock = a1;
  sub_1D7744310(0, &qword_1EE08FFC0, sub_1D78213A4, MEMORY[0x1E69E6720]);
  v55 = v54;
  v142 = a1;

  v139 = v55;
  v56 = sub_1D78B5CC4();
  v58 = v57;
  v59 = MEMORY[0x1E69E6158];
  *(v53 + 56) = MEMORY[0x1E69E6158];
  v60 = sub_1D775ABD4();
  *(v53 + 64) = v60;
  *(v53 + 32) = v56;
  *(v53 + 40) = v58;
  if (v51)
  {
    v61 = 1702195828;
  }

  else
  {
    v61 = 0x65736C6166;
  }

  if (v51)
  {
    v62 = 0xE400000000000000;
  }

  else
  {
    v62 = 0xE500000000000000;
  }

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  MEMORY[0x1DA702FF0](v61, v62);

  v63 = aBlock;
  *(v53 + 96) = v59;
  *(v53 + 104) = v60;
  *(v53 + 72) = v63;
  *&aBlock = v154;
  v64 = v154;
  sub_1D7812D44(0, &unk_1EE08F9E0, &qword_1EE08F9F0, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
  v138 = v65;
  v66 = sub_1D78B5CC4();
  *(v53 + 136) = v59;
  *(v53 + 144) = v60;
  *(v53 + 112) = v66;
  *(v53 + 120) = v67;
  v68 = v153;
  if (v153)
  {
    v69 = 1702195828;
  }

  else
  {
    v69 = 0x65736C6166;
  }

  v70 = v51;
  if (v153)
  {
    v71 = 0xE400000000000000;
  }

  else
  {
    v71 = 0xE500000000000000;
  }

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  MEMORY[0x1DA702FF0](v69, v71);

  v72 = aBlock;
  *(v53 + 176) = v59;
  *(v53 + 184) = v60;
  *(v53 + 152) = v72;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  v73 = [v155[22] isNetworkReachable];
  v74 = v73 == 0;
  if (v73)
  {
    v75 = 1702195828;
  }

  else
  {
    v75 = 0x65736C6166;
  }

  if (v74)
  {
    v76 = 0xE500000000000000;
  }

  else
  {
    v76 = 0xE400000000000000;
  }

  v77 = v149;
  MEMORY[0x1DA702FF0](v75, v76);

  v78 = aBlock;
  *(v53 + 216) = v59;
  *(v53 + 224) = v60;
  *(v53 + 192) = v78;
  v79 = sub_1D78B60A4();
  sub_1D78B42C4("Validating entitlements resulted with \n entitlements=%{public}@ \n cacheExpired=%{public}@ \n error=%{public}@ \n entitlementsIsEmpty=%{public}@ \n isNetworkReachable=%{public}", 172, 2, &dword_1D7739000, v77, v79, v53);

  v80 = v150 | v68;
  v150 = v70;
  if ((v80 | v70))
  {
    v81 = v152;
    if ((v151 & 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else
  {
    v81 = v152;
    if (v141 & 1 | ((v151 & 1) == 0))
    {
LABEL_79:
      v127 = sub_1D78B60A4();
      sub_1D78B42C4("Entitlement cache is valid. Skipping force update entitlements cache", 68, 2, &dword_1D7739000, v77, v127, MEMORY[0x1E69E7CC0]);
      v128 = [objc_opt_self() standardUserDefaults];
      v129 = sub_1D78B5C44();
      [v128 setInteger:0 forKey:v129];

      return v147();
    }
  }

  v82 = sub_1D78B6094();
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1D78BCB50;
  *&aBlock = v142;

  v84 = sub_1D78B5CC4();
  *(v83 + 56) = v59;
  *(v83 + 64) = v60;
  *(v83 + 32) = v84;
  *(v83 + 40) = v85;
  *&aBlock = v154;
  v86 = v154;
  v87 = sub_1D78B5CC4();
  *(v83 + 96) = v59;
  *(v83 + 104) = v60;
  *(v83 + 72) = v87;
  *(v83 + 80) = v88;
  v89 = v77;
  sub_1D78B42C4("Entitlements cache expired with entitlements=%{public}@ error=%{public}@", 72, 2, &dword_1D7739000, v77, v82, v83);

  v90 = objc_opt_self();
  v91 = [v90 standardUserDefaults];
  v92 = sub_1D78B5C44();
  v93 = [v91 objectForKey_];

  if (v93)
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v161 = 0u;
    v162 = 0u;
  }

  v94 = v145;
  v95 = v146;
  v96 = v143;
  aBlock = v161;
  v158 = v162;
  if (*(&v162 + 1))
  {
    v97 = swift_dynamicCast();
    (*(v96 + 56))(v95, v97 ^ 1u, 1, v94);
  }

  else
  {
    sub_1D782140C(&aBlock, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D779C73C);
    (*(v96 + 56))(v95, 1, 1, v94);
  }

  sub_1D7756DE4(v95, v81);
  v98 = (v96 + 8);
  if ((*(v96 + 48))(v81, 1, v94) == 1)
  {
    sub_1D782140C(v81, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D7744310);
    v99 = [v90 standardUserDefaults];
    v100 = v144;
    sub_1D78B3384();
    v101 = sub_1D78B3324();
    (*v98)(v100, v94);
    v102 = sub_1D78B5C44();
    [v99 setObject:v101 forKey:v102];

    v77 = v89;
LABEL_78:
    sub_1D782140C(v146, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D7744310);
    goto LABEL_79;
  }

  (*(v96 + 32))(v137, v81, v94);
  v103 = v96 + 32;
  v104 = v144;
  sub_1D78B3384();
  sub_1D78B3304();
  v106 = v105;
  v107 = *(v103 - 24);
  v107(v104, v94);
  v108 = [v90 standardUserDefaults];
  v109 = sub_1D78B5C44();
  v110 = [v108 integerForKey_];

  result = [v155[4] configuration];
  if (result)
  {
    v112 = result;
    if ([result respondsToSelector_])
    {
      v113 = [v112 entitlementsCacheRecoveryAttemptDurationInSeconds];
      swift_unknownObjectRelease();
      v107(v137, v145);
      if (v110 <= 0)
      {
        v110 = v113;
      }
    }

    else
    {
      v107(v137, v145);
      swift_unknownObjectRelease();
      if (v110 < 1)
      {
        v77 = v89;
        if (v106 <= 0.0)
        {
          goto LABEL_78;
        }

        goto LABEL_76;
      }
    }

    v77 = v89;
    if (v106 <= v110)
    {
      goto LABEL_78;
    }

LABEL_76:
    sub_1D782140C(v146, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D7744310);
    v114 = sub_1D78B60A4();
    v115 = MEMORY[0x1E69E7CC0];
    v116 = [v90 standardUserDefaults];
    v117 = v144;
    sub_1D78B3384();
    v118 = sub_1D78B3324();
    v107(v117, v145);
    v119 = sub_1D78B5C44();
    [v116 setObject:v118 forKey:v119];

    sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
    v120 = sub_1D78B6104();
    v121 = swift_allocObject();
    *(v121 + 16) = v155;
    *(v121 + 24) = v150;
    v122 = v148;
    *(v121 + 32) = v147;
    *(v121 + 40) = v122;
    *(v121 + 48) = v153;
    v159 = sub_1D782146C;
    v160 = v121;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v158 = sub_1D775FB6C;
    *(&v158 + 1) = &block_descriptor_12_1;
    v123 = _Block_copy(&aBlock);

    v124 = v131;
    sub_1D78B5274();
    *&aBlock = v115;
    sub_1D7788538();
    sub_1D7744310(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D775F4A4();
    v125 = v133;
    v126 = v136;
    sub_1D78B6324();
    MEMORY[0x1DA7033B0](0, v124, v125, v123);
    _Block_release(v123);

    (*(v135 + 8))(v125, v126);
    return (*(v132 + 8))(v124, v134);
  }

  __break(1u);
  return result;
}

void sub_1D781F2AC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = *(a1 + 184);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = a5;
  v13[4] = sub_1D7821480;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D781E048;
  v13[3] = &block_descriptor_18;
  v12 = _Block_copy(v13);

  [v10 performEntitlementWithIgnoreCache:1 completion:v12];
  _Block_release(v12);
}

uint64_t sub_1D781F3BC(uint64_t a1, int a2, void *a3, char a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, int a8)
{
  v57 = a8;
  v61 = a6;
  v62 = a7;
  v50 = a5;
  v58 = a2;
  v11 = sub_1D78B5254();
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v53 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1D78B52A4();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v14);
  v51 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = objc_opt_self();
  v16 = [v60 standardUserDefaults];
  v59 = "e entitlements cache";
  v17 = sub_1D78B5C44();
  v18 = [v16 objectForKey_];

  if (v18)
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
  }

  aBlock = v68;
  v65 = v69;
  if (*(&v69 + 1))
  {
    if (swift_dynamicCast())
    {
      v19 = v63;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1D782140C(&aBlock, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D779C73C);
  }

  v19 = 0;
LABEL_9:
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v20 = qword_1EE09C268;
  sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D78C22A0;
  *&aBlock = a1;
  sub_1D7744310(0, &qword_1EE08FFC0, sub_1D78213A4, MEMORY[0x1E69E6720]);

  v22 = sub_1D78B5CC4();
  v24 = v23;
  v25 = MEMORY[0x1E69E6158];
  *(v21 + 56) = MEMORY[0x1E69E6158];
  v26 = sub_1D775ABD4();
  *(v21 + 64) = v26;
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  if (a4)
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (a4)
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  MEMORY[0x1DA702FF0](v27, v28);

  v29 = aBlock;
  *(v21 + 96) = v25;
  *(v21 + 104) = v26;
  *(v21 + 72) = v29;
  *&aBlock = v19;
  v30 = sub_1D78B66E4();
  *(v21 + 136) = v25;
  *(v21 + 144) = v26;
  *(v21 + 112) = v30;
  *(v21 + 120) = v31;
  *&aBlock = a3;
  v32 = a3;
  sub_1D7812D44(0, &unk_1EE08F9E0, &qword_1EE08F9F0, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
  v33 = sub_1D78B5CC4();
  *(v21 + 176) = v25;
  *(v21 + 184) = v26;
  *(v21 + 152) = v33;
  *(v21 + 160) = v34;
  v35 = sub_1D78B60A4();
  sub_1D78B42C4("Recovered expired entitlements with entitlements=%{public}@ cacheExpired=%{public}@ recoveryAttemptCount=%{public}@ error=%{public}@", 132, 2, &dword_1D7739000, v20, v35, v21);

  if (a3 && v19 <= 1)
  {
    sub_1D78214A0();
    return v61();
  }

  v36 = NewsCoreUserDefaults();
  v37 = [v36 BOOLForKey_];

  v38 = [v60 standardUserDefaults];
  v39 = sub_1D78B5C44();
  [v38 setInteger:0 forKey:v39];

  if ((v37 & 1) == 0 && (v58 & 1) == 0 && a1 && (v57 & 1) == 0)
  {
    return v61();
  }

  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  v41 = sub_1D78B6104();
  v42 = swift_allocObject();
  v42[2] = v50;
  v42[3] = a3;
  v43 = v62;
  v42[4] = v61;
  v42[5] = v43;
  v66 = sub_1D7821494;
  v67 = v42;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v65 = sub_1D775FB6C;
  *(&v65 + 1) = &block_descriptor_24_0;
  v44 = _Block_copy(&aBlock);
  v45 = a3;

  v46 = v51;
  sub_1D78B5274();
  *&aBlock = MEMORY[0x1E69E7CC0];
  sub_1D7788538();
  sub_1D7744310(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D775F4A4();
  v47 = v53;
  v48 = v56;
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v46, v47, v44);
  _Block_release(v44);

  (*(v55 + 8))(v47, v48);
  return (*(v52 + 8))(v46, v54);
}

uint64_t sub_1D781FAB4(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D78B6454();
  MEMORY[0x1DA702FF0](0xD000000000000061, 0x80000001D78D9650);
  v5 = a2;
  sub_1D7812D44(0, &unk_1EE08F9E0, &qword_1EE08F9F0, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
  v6 = sub_1D78B5CC4();
  MEMORY[0x1DA702FF0](v6);

  sub_1D781FBB8(0, 0xE000000000000000);

  return a3(v7);
}

double sub_1D781FBB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE09C268;
  v7 = sub_1D78B60A4();
  sub_1D78B42C4("Showing AuthenticationAlert", 27, 2, &dword_1D7739000, v6, v7, MEMORY[0x1E69E7CC0]);
  sub_1D7821648();
  sub_1D78B5054();
  swift_allocObject();
  v8 = sub_1D78B5004();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v3;

  sub_1D78B5024();

  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v3;

  sub_1D78B5044();

  v11 = v3[15];
  v12 = v3[16];
  __swift_project_boxed_opaque_existential_1(v3 + 12, v11);
  (*(v12 + 88))(v8, v11, v12);

  return result;
}

void sub_1D781FD94(uint64_t a1, uint64_t a2, int a3)
{
  v20 = a3;
  v4 = sub_1D78B5254();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D78B52A4();
  v9 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  v13 = sub_1D78B6104();
  v25 = sub_1D7821704;
  v26 = a2;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1D775FB6C;
  v24 = &block_descriptor_48_0;
  v14 = _Block_copy(&aBlock);

  sub_1D78B5274();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1D7788538();
  sub_1D7744310(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D775F4A4();
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v12, v8, v14);
  _Block_release(v14);

  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v19);
  v15 = *(a2 + 16);
  v16 = sub_1D78B6104();
  v25 = sub_1D782170C;
  v26 = a2;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1D77814F0;
  v24 = &block_descriptor_51_0;
  v17 = _Block_copy(&aBlock);

  [v15 performEntitlementCheckWithIgnoreCache:v20 & 1 callbackQueue:v16 completion:v17];
  _Block_release(v17);
}

void sub_1D78200F4(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v3 = qword_1EE09C268;
    v4 = sub_1D78B60A4();
    sub_1D78B42C4("SubscriptionExpiryManager in showBundleExpiredAlert method", 58, 2, &dword_1D7739000, v3, v4, MEMORY[0x1E69E7CC0]);
    if (*(v2 + 240) == 1)
    {
      v5 = *(v2 + 232);
      v8[4] = sub_1D77C005C;
      v8[5] = v2;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 1107296256;
      v8[2] = sub_1D779ECCC;
      v8[3] = &block_descriptor_54;
      v6 = _Block_copy(v8);

      [v5 enqueueBlock_];
      _Block_release(v6);
    }

    else
    {
      v7 = sub_1D78B60A4();
      sub_1D78B42C4("SubscriptionExpiryManager in showBundleExpiredAlert not showing because bootstrapper not complete", 97, 2, &dword_1D7739000, v3, v7, MEMORY[0x1E69E7CC0]);

      swift_unknownObjectRelease();
    }
  }
}

double sub_1D782029C(unint64_t a1, unint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1D779DCD8(Strong);
    swift_unknownObjectRelease();
  }

  sub_1D7820318(a2);
  if (a1)
  {
    sub_1D7821714(a1);
  }

  return result;
}

char *sub_1D7820318(unint64_t a1)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a1 >> 62)
  {
    v2 = sub_1D78B6534();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1D77D9874(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v15;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA703700](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 channelID];
      v9 = sub_1D78B5C74();
      v11 = v10;

      v13 = *(v15 + 16);
      v12 = *(v15 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D77D9874((v12 > 1), v13 + 1, 1);
      }

      ++v5;
      *(v15 + 16) = v13 + 1;
      v14 = v15 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1D782046C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE09C268;
  v6 = sub_1D78B60A4();
  sub_1D78B42C4("Selected Sign-In in AuthenticationAlert", 41, 2, &dword_1D7739000, v5, v6, MEMORY[0x1E69E7CC0]);
  sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D78BCAB0;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1D775ABD4();
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;

  v8 = sub_1D78B60A4();
  sub_1D78B42C4("AuthenticationAlert was shown for reason=%@", 43, 2, &dword_1D7739000, v5, v8, v7);

  sub_1D78205BC(a2, a3);
}

void sub_1D78205BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_project_boxed_opaque_existential_1((v2 + 136), *(v2 + 160));
  v4 = sub_1D78B4874();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 rootViewController];

    if (v6)
    {
      v7 = sub_1D78B60B4();
      v8 = [objc_opt_self() sharedAccount];
      v9 = [v8 activeiTunesAccount];

      v10 = [objc_allocWithZone(MEMORY[0x1E698C7B0]) init];
      v11 = sub_1D78B5C44();
      [v10 setDebugReason_];

      v12 = [objc_allocWithZone(MEMORY[0x1E698CC58]) initWithAccount:v9 presentingViewController:v7 options:0];
      v13 = [v12 performAuthentication];
      v14 = [v13 promiseWithTimeout_];

      v16[4] = sub_1D78216F4;
      v16[5] = v3;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 1107296256;
      v16[2] = sub_1D7780F60;
      v16[3] = &block_descriptor_33;
      v15 = _Block_copy(v16);

      [v14 addFinishBlock_];
      _Block_release(v15);
    }
  }
}

id sub_1D78207F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE09C268;
  v7 = sub_1D78B60A4();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1D78B42C4("Selected Cancel in AuthenticationAlert", 40, 2, &dword_1D7739000, v6, v7, MEMORY[0x1E69E7CC0]);
  sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D78BCAB0;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1D775ABD4();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = sub_1D78B60A4();
  sub_1D78B42C4("AuthenticationAlert was shown for reason=%@", 43, 2, &dword_1D7739000, v6, v10, v9);

  v11 = sub_1D78B60A4();
  [*(a3 + 24) silentExpireBundleSubscription];
  v12 = *(a3 + 16);

  return [v12 silentExpireInAppSubscriptions];
}

void sub_1D7820998(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1D78B5254();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D78B52A4();
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v17 = objc_opt_self();
    v18 = [v17 sharedAccount];
    [v18 reloadiTunesAccount];

    v19 = [v17 sharedAccount];
    LODWORD(v18) = [v19 isUserSignedIntoiTunes];

    if (v18)
    {
      v20 = *(a3 + 24);
      v21 = swift_allocObject();
      *(v21 + 16) = a3;
      *(v21 + 24) = 0;
      v44 = sub_1D77A2CD4;
      v45 = v21;
      aBlock = MEMORY[0x1E69E9820];
      v41 = 1107296256;
      v42 = sub_1D7781488;
      v43 = &block_descriptor_45_0;
      v22 = _Block_copy(&aBlock);

      [v20 refreshBundleSubscriptionWithCachePolicy:2 hideBundleDetectionUI:0 completion:v22];
      _Block_release(v22);
    }
  }

  else if (a2)
  {
    v37 = v14;
    v38 = v7;
    v39 = v13;
    v23 = a2;
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v24 = qword_1EE09C268;
    v25 = sub_1D78B6094();
    sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D78BCAB0;
    aBlock = a2;
    v27 = a2;
    sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
    v28 = sub_1D78B5CC4();
    v30 = v29;
    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 64) = sub_1D775ABD4();
    *(v26 + 32) = v28;
    *(v26 + 40) = v30;
    sub_1D78B42C4("AppleID authentication failed in EntitlementsManager with error: %{public}@", 75, 2, &dword_1D7739000, v24, v25, v26);

    v31 = sub_1D78B31B4();
    LOBYTE(v30) = [v31 fc_isAuthenticationUserCancelled];

    if (v30)
    {
    }

    else
    {
      sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
      v32 = sub_1D78B6104();
      v33 = swift_allocObject();
      *(v33 + 16) = a3;
      *(v33 + 24) = a2;
      v44 = sub_1D78216FC;
      v45 = v33;
      aBlock = MEMORY[0x1E69E9820];
      v41 = 1107296256;
      v42 = sub_1D775FB6C;
      v43 = &block_descriptor_39;
      v34 = _Block_copy(&aBlock);
      v35 = a2;

      sub_1D78B5274();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1D7788538();
      sub_1D7744310(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1D775F4A4();
      sub_1D78B6324();
      MEMORY[0x1DA7033B0](0, v16, v10, v34);
      _Block_release(v34);

      (*(v38 + 8))(v10, v6);
      (*(v37 + 8))(v16, v39);
    }
  }
}

double sub_1D7820EF0(void *a1, void *a2)
{
  sub_1D7821FF0();
  sub_1D78B5054();
  swift_allocObject();
  v4 = sub_1D78B5004();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  v6 = a2;
  sub_1D78B5034();

  sub_1D78B5044();

  v7 = a1[15];
  v8 = a1[16];
  __swift_project_boxed_opaque_existential_1(a1 + 12, v7);
  (*(v8 + 88))(v4, v7, v8);

  return result;
}

double sub_1D7821034(uint64_t a1, void *a2)
{
  sub_1D78B6454();
  MEMORY[0x1DA702FF0](0xD00000000000006BLL, 0x80000001D78D97F0);
  v3 = a2;
  sub_1D7812D44(0, &unk_1EE08F9E0, &qword_1EE08F9F0, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
  v4 = sub_1D78B5CC4();
  MEMORY[0x1DA702FF0](v4);

  sub_1D78205BC(0, 0xE000000000000000);

  return result;
}

id sub_1D782111C(uint64_t a1)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE09C268;
  v3 = sub_1D78B60A4();
  [*(a1 + 24) silentExpireBundleSubscription];
  v4 = *(a1 + 16);

  return [v4 silentExpireInAppSubscriptions];
}

uint64_t sub_1D78211D0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1D776ABA8(v0 + 40);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1D7821230()
{
  sub_1D78211D0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7821264()
{
  sub_1D779C73C(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

uint64_t sub_1D78212F4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D78B6724() & 1;
  }
}

uint64_t sub_1D782134C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D78B6724() & 1;
  }
}

void sub_1D78213A4(uint64_t a1)
{
  if (!qword_1EE08FFC8)
  {
    sub_1D773F004(255, &qword_1EE08FCA8, 0x1E698B558);
    v1 = sub_1D78B5F34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE08FFC8);
    }
  }
}

uint64_t sub_1D782140C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D78214A0()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = sub_1D78B5C44();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    if (swift_dynamicCast())
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1D782140C(v13, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D779C73C);
  }

  v4 = 0;
LABEL_9:
  v5 = [v0 standardUserDefaults];
  v6 = __OFADD__(v4, 1);
  v7 = v4 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = v5;
    v9 = sub_1D78B5C44();
    [v8 setInteger:v7 forKey:v9];
  }
}

unint64_t sub_1D7821648()
{
  result = qword_1EC9CAB70;
  if (!qword_1EC9CAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAB70);
  }

  return result;
}

uint64_t objectdestroy_26Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1D7821714(unint64_t a1)
{
  v2 = type metadata accessor for PurchaseAdContext(0);
  v84 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v83 = v79 - v8;
  sub_1D7744310(0, &qword_1EE090148, sub_1D77F6328, MEMORY[0x1E69E6720]);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v13 = (v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = (v79 - v15);
  v17 = sub_1D77FF85C(MEMORY[0x1E69E7CC0]);
  if (a1 >> 62)
  {
    goto LABEL_53;
  }

  v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v87 = v13;
    v88 = v6;
    v90 = v16;
    if (!v18)
    {
LABEL_23:
      v89 = v17;
      v43 = *__swift_project_boxed_opaque_existential_1((v79[0] + 56), *(v79[0] + 80));

      sub_1D78B3854();

      swift_beginAccess();
      a1 = *(v43 + 24);

      sub_1D78B3864();

      v44 = 0;
      v46 = a1 + 64;
      v45 = *(a1 + 64);
      v85 = a1;
      v86 = a1 + 64;
      v47 = 1 << *(a1 + 32);
      v48 = -1;
      if (v47 < 64)
      {
        v48 = ~(-1 << v47);
      }

      v49 = v48 & v45;
      v50 = (v47 + 63) >> 6;
      while (1)
      {
        if (!v49)
        {
          if (v50 <= v44 + 1)
          {
            v56 = v44 + 1;
          }

          else
          {
            v56 = v50;
          }

          v57 = v56 - 1;
          while (1)
          {
            v55 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              break;
            }

            if (v55 >= v50)
            {
              sub_1D77F6328(0);
              v65 = v77;
              (*(*(v77 - 8) + 56))(v13, 1, 1, v77);
              v49 = 0;
              v44 = v57;
              goto LABEL_41;
            }

            v49 = *(v46 + 8 * v55);
            ++v44;
            if (v49)
            {
              v44 = v55;
              goto LABEL_40;
            }
          }

          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        v55 = v44;
LABEL_40:
        v58 = __clz(__rbit64(v49));
        v49 &= v49 - 1;
        v59 = v58 | (v55 << 6);
        v60 = (*(v85 + 48) + 16 * v59);
        v62 = *v60;
        v61 = v60[1];
        v63 = v83;
        sub_1D7821E9C(*(v85 + 56) + *(v84 + 72) * v59, v83);
        sub_1D77F6328(0);
        v65 = v64;
        v66 = *(v64 + 48);
        *v13 = v62;
        v13[1] = v61;
        sub_1D77F63C8(v63, v13 + v66);
        (*(*(v65 - 8) + 56))(v13, 0, 1, v65);

        v16 = v90;
LABEL_41:
        sub_1D7821F00(v13, v16);
        sub_1D77F6328(0);
        if ((*(*(v65 - 8) + 48))(v16, 1, v65) == 1)
        {

          __swift_project_boxed_opaque_existential_1((v79[0] + 56), *(v79[0] + 80));
          sub_1D77F5A40();
          return;
        }

        a1 = *v16;
        v67 = v16[1];
        sub_1D77F63C8(v16 + *(v65 + 48), v6);
        if (!*(v89 + 16))
        {
          goto LABEL_28;
        }

        v68 = sub_1D777BBB4(a1, v67);
        v70 = v69;

        if (v70)
        {
          break;
        }

LABEL_29:
        v17 = sub_1D7821F94(v6);
        v46 = v86;
      }

      v71 = *(*(v89 + 56) + 8 * v68);
      v72 = [v71 inAppAdamID];
      v73 = [v72 stringValue];

      v82 = sub_1D78B5C74();
      v75 = v74;

      v76 = [v71 servicesBundleAdamID];
      v81 = v75;
      if (v76)
      {
        v51 = v76;
        v80 = sub_1D78B5C74();
      }

      else
      {
        v80 = 0;
      }

      v52 = sub_1D78B4244();
      v79[2] = *(v6 + 5);
      v79[3] = v52;
      v79[1] = *(v6 + 2);
      v53 = [v71 chargeCurrencyCode];
      sub_1D78B5C74();
      a1 = v54;

      v6 = v88;
      sub_1D78B4234();

      v13 = v87;
      v16 = v90;
LABEL_28:

      goto LABEL_29;
    }

    v19 = 0;
    v89 = a1 & 0xC000000000000001;
    v85 = a1;
    v86 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_7:
    if (v89)
    {
      v24 = v17;
      v17 = MEMORY[0x1DA703700](v19, a1);
    }

    else
    {
      if (v19 >= *(v86 + 16))
      {
        goto LABEL_50;
      }

      v24 = v17;
      v17 = *(a1 + 8 * v19 + 32);
    }

    v25 = v17;
    v26 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      goto LABEL_49;
    }

    v6 = v18;
    v27 = [v17 appAdamID];
    v16 = [v27 stringValue];

    v28 = sub_1D78B5C74();
    v13 = v29;

    a1 = v25;
    v30 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = v30;
    v33 = sub_1D777BBB4(v28, v13);
    v34 = v30[2];
    v35 = (v32 & 1) == 0;
    v17 = (v34 + v35);
    if (!__OFADD__(v34, v35))
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v78 = v17;
    v18 = sub_1D78B6534();
    v17 = v78;
  }

  v16 = v32;
  if (v30[3] >= v17)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v32)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1D782FE7C();
      if (v16)
      {
LABEL_5:

        v20 = v91;
        v21 = v91[7];
        v22 = *(v21 + 8 * v33);
        *(v21 + 8 * v33) = a1;

        v17 = v20;
        goto LABEL_6;
      }
    }

LABEL_18:
    v38 = v91;
    v91[(v33 >> 6) + 8] |= 1 << v33;
    v39 = (v38[6] + 16 * v33);
    *v39 = v28;
    v39[1] = v13;
    *(v38[7] + 8 * v33) = a1;

    v40 = v38[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_52;
    }

    v17 = v38;
    v38[2] = v42;
LABEL_6:
    ++v19;
    v18 = v6;
    v23 = v26 == v6;
    v13 = v87;
    v6 = v88;
    v16 = v90;
    a1 = v85;
    if (v23)
    {
      goto LABEL_23;
    }

    goto LABEL_7;
  }

  sub_1D782D3AC(v17, isUniquelyReferenced_nonNull_native);
  v36 = sub_1D777BBB4(v28, v13);
  if ((v16 & 1) == (v37 & 1))
  {
    v33 = v36;
    if (v16)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

  sub_1D78B6784();
  __break(1u);
}

uint64_t sub_1D7821E9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseAdContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7821F00(uint64_t a1, uint64_t a2)
{
  sub_1D7744310(0, &qword_1EE090148, sub_1D77F6328, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7821F94(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseAdContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D7821FF0()
{
  result = qword_1EC9CAB78;
  if (!qword_1EC9CAB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAB78);
  }

  return result;
}

uint64_t objectdestroy_35Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_1D78220F0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v8 = PurchasingSpinner.label.getter();
  v9 = (*(v7 + 8))(v8);

  sub_1D78B6144();
  v11 = v10;
  v13 = v12;
  v14 = [v6 verticalSizeClass];
  v15 = [v6 horizontalSizeClass];
  if (v14 == 1)
  {
    if ((v15 - 1) >= 2)
    {
LABEL_9:

      result = 0.0;
      v17 = v4;
      goto LABEL_10;
    }
  }

  else if (v14 != 2 || v15 != 1)
  {
    goto LABEL_9;
  }

  v16 = [v6 verticalSizeClass];

  v17 = v4 + 50.0;
  result = -50.0;
  if (v16 == 1)
  {
    result = 0.0;
    v17 = 550.0;
  }

LABEL_10:
  v19 = fmax(v13 + 20.0, 80.0);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0x4071300000000000;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v20 = (275.0 - (v11 + 28.5)) * 0.5;
  *(a2 + 32) = v20 + 28.5;
  *(a2 + 40) = (v19 - v13) * 0.5;
  *(a2 + 48) = 0x406C500000000000;
  *(a2 + 56) = v13;
  *(a2 + 64) = v20;
  *(a2 + 72) = xmmword_1D78C4B00;
  *(a2 + 88) = 0x4034000000000000;
  *(a2 + 96) = 0;
  *(a2 + 120) = v19;
  *(a2 + 128) = result;
  *(a2 + 136) = 0;
  *(a2 + 144) = v17;
  *(a2 + 152) = 0x4069000000000000;
  return result;
}

char *DynamicViewControllerFactory.createViewController(for:placement:purchaseContext:dedupingID:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a4;
  v57 = a5;
  v54 = MEMORY[0x1E6968FB0];
  v9 = MEMORY[0x1E69E6720];
  sub_1D774057C(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v51[-v12];
  v53 = type metadata accessor for PurchaseContext;
  sub_1D774057C(0, qword_1EE096030, type metadata accessor for PurchaseContext, v9);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v51[-v16];
  v52 = *a2;
  v18 = [objc_allocWithZone(MEMORY[0x1E698CCF0]) initWithMarketingItem:a1 bag:_s16NewsSubscription8AMSUIBagC3bagSo14AMSBagProtocol_pyFZ_0()];
  swift_unknownObjectRelease();
  v19 = v18;
  [v19 setAnonymousMetrics_];
  v20 = *(v5 + OBJC_IVAR____TtC16NewsSubscription28DynamicViewControllerFactory_dynamicViewControllerDelegate);
  [v19 setDelegate_];
  v21 = v19;
  [v21 setModalPresentationStyle_];
  sub_1D7770378(a3, v17);
  v22 = type metadata accessor for PurchaseContext(0);
  v23 = *(*(v22 - 8) + 56);
  v23(v17, 0, 1, v22);
  v24 = OBJC_IVAR____TtC16NewsSubscription29DynamicViewControllerDelegate_purchaseContext;
  swift_beginAccess();
  v55 = v20;
  sub_1D7781D38(v17, v20 + v24);
  swift_endAccess();
  v26 = *(v5 + OBJC_IVAR____TtC16NewsSubscription28DynamicViewControllerFactory_metricsBuilder + 24);
  v25 = *(v5 + OBJC_IVAR____TtC16NewsSubscription28DynamicViewControllerFactory_metricsBuilder + 32);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC16NewsSubscription28DynamicViewControllerFactory_metricsBuilder), v26);
  v59[0] = v52;
  sub_1D7770378(a3, v17);
  v23(v17, 0, 1, v22);
  v27 = sub_1D78B3294();
  (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
  v28 = (*(v25 + 24))(v59, v17, v13, v26, v25);
  sub_1D7823240(v13, &unk_1EE096460, v54);
  sub_1D7823240(v17, qword_1EE096030, v53);
  sub_1D778CA2C(v28);

  v29 = sub_1D78B5BB4();

  [v21 setMetricsOverlay_];

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v30 = qword_1EE09C268;
  sub_1D774057C(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1D78BCAB0;
  v32 = [v21 metricsOverlay];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1D78B5BC4();
  }

  else
  {
    v34 = 0;
  }

  sub_1D78232B0();
  *(v31 + 56) = v35;
  *(v31 + 64) = sub_1D7823314();
  if (!v34)
  {
    v34 = sub_1D77FF518(MEMORY[0x1E69E7CC0]);
  }

  *(v31 + 32) = v34;
  v36 = sub_1D78B60A4();
  sub_1D78B42C4("Creating AMSUIMarketingItemViewController with metrics= %@", 58, 2, &dword_1D7739000, v30, v36, v31);

  v37 = [objc_opt_self() sharedAccount];
  v38 = [v37 activeiTunesAccount];

  [v21 setAccount_];
  v39 = type metadata accessor for DismissibleDynamicViewController();
  v40 = objc_allocWithZone(v39);
  *&v40[OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v41 = &v40[OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_identifier];
  v42 = v57;
  *v41 = v56;
  v41[1] = v42;
  v58.receiver = v40;
  v58.super_class = v39;

  v43 = objc_msgSendSuper2(&v58, sel_initWithRootViewController_, v21);

  v44 = &v43[OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate];
  swift_beginAccess();
  *(v44 + 1) = &off_1F5273ED8;
  swift_unknownObjectWeakAssign();
  v45 = v43;
  v46 = [v45 presentationController];
  if (v46)
  {
    v47 = v46;
    [v46 setDelegate_];
  }

  v48 = [v21 view];
  v49 = [objc_opt_self() systemPinkColor];
  [v48 setTintColor_];

  return v45;
}

{
  v6 = v5;
  v57 = a4;
  sub_1D774057C(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v55 - v13;
  v15 = *a2;
  v16 = _s16NewsSubscription8AMSUIBagC3bagSo14AMSBagProtocol_pyFZ_0();
  v17 = objc_allocWithZone(MEMORY[0x1E698CCC8]);
  v18 = sub_1D78B3214();
  v19 = [v17 initWithBag:v16 URL:v18];
  swift_unknownObjectRelease();

  v20 = *(v6 + OBJC_IVAR____TtC16NewsSubscription28DynamicViewControllerFactory_metricsBuilder + 24);
  v21 = *(v6 + OBJC_IVAR____TtC16NewsSubscription28DynamicViewControllerFactory_metricsBuilder + 32);
  __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC16NewsSubscription28DynamicViewControllerFactory_metricsBuilder), v20);
  if (v15 == 13)
  {
    v22 = (*(v21 + 16))(a1, v20, v21);
    sub_1D778CA2C(v22);

    v23 = sub_1D78B5BB4();

    [v19 setMetricsOverlay_];

    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v24 = qword_1EE09C268;
    sub_1D774057C(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D78BCAB0;
    v26 = [v19 metricsOverlay];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1D78B5BC4();
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v56 = a5;
    v59[0] = v15;
    v29 = sub_1D78B3294();
    v30 = a3;
    v31 = *(v29 - 8);
    (*(v31 + 16))(v14, a1, v29);
    (*(v31 + 56))(v14, 0, 1, v29);
    a3 = v30;
    v32 = (*(v21 + 24))(v59, v30, v14, v20, v21);
    sub_1D7823240(v14, &unk_1EE096460, MEMORY[0x1E6968FB0]);
    sub_1D778CA2C(v32);

    v33 = sub_1D78B5BB4();

    [v19 setMetricsOverlay_];

    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v24 = qword_1EE09C268;
    sub_1D774057C(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D78BCAB0;
    v34 = [v19 metricsOverlay];
    if (v34)
    {
      v35 = v34;
      v28 = sub_1D78B5BC4();
    }

    else
    {
      v28 = 0;
    }

    a5 = v56;
  }

  sub_1D78232B0();
  *(v25 + 56) = v36;
  *(v25 + 64) = sub_1D7823314();
  if (!v28)
  {
    v28 = sub_1D77FF518(MEMORY[0x1E69E7CC0]);
  }

  *(v25 + 32) = v28;
  v37 = sub_1D78B60A4();
  sub_1D78B42C4("Creating AMSUIDynamicViewController with metrics= %@", 52, 2, &dword_1D7739000, v24, v37, v25);

  v38 = sub_1D78B5C44();
  [v19 setMediaClientIdentifier_];

  [v19 setAnonymousMetrics_];
  v39 = *(v6 + OBJC_IVAR____TtC16NewsSubscription28DynamicViewControllerFactory_dynamicViewControllerDelegate);
  [v19 setDelegate_];
  v40 = v19;
  [v40 setModalPresentationStyle_];
  v41 = OBJC_IVAR____TtC16NewsSubscription29DynamicViewControllerDelegate_purchaseContext;
  swift_beginAccess();
  sub_1D782336C(a3, v39 + v41);
  swift_endAccess();
  v42 = [objc_opt_self() sharedAccount];
  v43 = [v42 activeiTunesAccount];

  [v40 setAccount_];
  v44 = type metadata accessor for DismissibleDynamicViewController();
  v45 = objc_allocWithZone(v44);
  *&v45[OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v46 = &v45[OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_identifier];
  *v46 = v57;
  v46[1] = a5;
  v58.receiver = v45;
  v58.super_class = v44;

  v47 = objc_msgSendSuper2(&v58, sel_initWithRootViewController_, v40);

  v48 = &v47[OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate];
  swift_beginAccess();
  *(v48 + 1) = &off_1F5273ED8;
  swift_unknownObjectWeakAssign();
  v49 = v47;
  v50 = [v49 presentationController];
  if (v50)
  {
    v51 = v50;
    [v50 setDelegate_];
  }

  v52 = [v40 view];
  v53 = [objc_opt_self() systemPinkColor];
  [v52 setTintColor_];

  return v49;
}

id DynamicViewControllerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DynamicViewControllerFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7823240(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D774057C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D78232B0()
{
  if (!qword_1EC9CAB90)
  {
    v0 = sub_1D78B5BF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CAB90);
    }
  }
}

unint64_t sub_1D7823314()
{
  result = qword_1EC9CAB98;
  if (!qword_1EC9CAB98)
  {
    sub_1D78232B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAB98);
  }

  return result;
}

uint64_t sub_1D782336C(uint64_t a1, uint64_t a2)
{
  sub_1D774057C(0, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of DynamicViewControllerFactoryType.createViewController(for:placement:purchaseContext:dedupingID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 8))(a1, a2, a3, a4, a5, a6);
}

{
  return (*(a7 + 16))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1D7823468()
{
  sub_1D776ABA8(v0 + 16);
  sub_1D776ABA8(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1D78234D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 49))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 48) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 48) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D782352C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1D78235CC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48) >> 6;
  if (!v3)
  {
    sub_1D78B6454();

    v4 = 0x796D2D6572616873;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    sub_1D78B6454();

    v4 = 0x2D796D2D65646968;
LABEL_5:
    v6 = v4;
    MEMORY[0x1DA702FF0](v1, v2);
    return v6;
  }

  sub_1D78B6454();
  MEMORY[0x1DA702FF0](0xD000000000000017, 0x80000001D78D9A10);
  sub_1D78B6504();
  return 0;
}

uint64_t sub_1D7823720(uint64_t a1, uint64_t a2)
{
  sub_1D78B6814();
  sub_1D78B5C14();
  return sub_1D78B6844();
}

uint64_t sub_1D7823794(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7823A4C();

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

uint64_t sub_1D78237E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D78B6814();
  sub_1D78B5C14();
  return sub_1D78B6844();
}

uint64_t sub_1D7823850(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v4 = *(a2 + 16);
  v5 = *(a2 + 48);
  v6 = sub_1D78235CC();
  v8 = v7;
  if (v6 == sub_1D78235CC() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_1D78B6724();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  if (v3 >> 6 == 1)
  {
    v12 = v3;
  }

  else
  {
    v12 = v2;
  }

  if (v3 >> 6)
  {
    v13 = v12;
  }

  else
  {
    v13 = v3;
  }

  if (v5 >> 6 == 1)
  {
    v14 = v5;
  }

  else
  {
    v14 = v4;
  }

  if (v5 >> 6)
  {
    v15 = v14;
  }

  else
  {
    v15 = v5;
  }

  v11 = v13 ^ v15 ^ 1;
  return v11 & 1;
}

unint64_t sub_1D7823944()
{
  result = qword_1EE093658;
  if (!qword_1EE093658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE093658);
  }

  return result;
}

unint64_t sub_1D782399C()
{
  result = qword_1EE093660;
  if (!qword_1EE093660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE093660);
  }

  return result;
}

unint64_t sub_1D78239F4()
{
  result = qword_1EE093680;
  if (!qword_1EE093680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE093680);
  }

  return result;
}

unint64_t sub_1D7823A4C()
{
  result = qword_1EE093678;
  if (!qword_1EE093678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE093678);
  }

  return result;
}

unint64_t sub_1D7823AA4()
{
  result = qword_1EE093670;
  if (!qword_1EE093670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE093670);
  }

  return result;
}

uint64_t sub_1D7823AF8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D78B50C4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1D7823BB0@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_1D7823C30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1D7823C78(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_1D7823CE8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = [objc_opt_self() sharedAccount];
  v6 = [v5 iTunesAccountName];

  if (v6)
  {
    v7 = sub_1D78B5C74();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [*(v2 + 16) configuration];
  if (!v10)
  {
    __break(1u);
    return;
  }

  v11 = v10;
  if (([v10 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  v12 = [v11 channelUpsellConfigsByChannelID];
  swift_unknownObjectRelease();
  sub_1D77895D8();
  v13 = sub_1D78B5BC4();

  v14 = [a1 identifier];
  v15 = sub_1D78B5C74();
  v17 = v16;

  if (!*(v13 + 16))
  {

    goto LABEL_21;
  }

  v18 = sub_1D777BBB4(v15, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {

    goto LABEL_21;
  }

  v21 = *(*(v13 + 56) + 8 * v18);

  v22 = [v21 emailSignupConfiguration];

  if (!v22)
  {
LABEL_21:
    sub_1D7824410(a1, v7, v9, v69);
LABEL_22:

    v41 = v69[3];
    *(a2 + 32) = v69[2];
    *(a2 + 48) = v41;
    v42 = v69[5];
    *(a2 + 64) = v69[4];
    *(a2 + 80) = v42;
    v43 = v69[1];
    *a2 = v69[0];
    *(a2 + 16) = v43;
LABEL_23:
    *(a2 + 96) = 0;
    return;
  }

  v23 = [v22 alertTitle];
  v66 = sub_1D78B5C74();
  v63 = v24;

  v25 = &selRef_alertEmailUnavailableMessage;
  if (v9)
  {
    v26 = sub_1D78B5C44();
    v27 = [v26 ea_isLegalEmailAddress];

    if (v27)
    {
      v25 = &selRef_alertEmailAvailableMessage;
    }
  }

  v28 = [v22 *v25];
  v60 = sub_1D78B5C74();
  v30 = v29;

  v31 = [v22 alertAcceptActionTitle];
  v62 = sub_1D78B5C74();
  v65 = v32;

  v33 = [v22 alertDeclineActionTitle];
  v61 = sub_1D78B5C74();
  v64 = v34;

  v35 = [v22 landingPageArticleID];
  v59 = sub_1D78B5C74();
  v37 = v36;

  v38 = [v22 emailSignupStyle];
  if (v38 == 2)
  {

    if (v9)
    {
      sub_1D77BE06C();
      v68 = sub_1D78B62D4();
      v51 = v50;

      *&v69[0] = v60;
      *(&v69[0] + 1) = v30;
      v52 = sub_1D78B62D4();
      v54 = v53;

      v30 = v54;
      v55 = v68;
    }

    else
    {

      v51 = v63;
      v55 = v66;
      v52 = v60;
    }

    LOBYTE(v69[0]) = 0;
    *a2 = v55;
    *(a2 + 8) = v51;
    *(a2 + 16) = v52;
    *(a2 + 24) = v30;
    *(a2 + 32) = v7;
    *(a2 + 40) = v9;
    *(a2 + 48) = v62;
    *(a2 + 56) = v65;
    *(a2 + 64) = v61;
    *(a2 + 72) = v64;
    goto LABEL_23;
  }

  if (v38 != 1)
  {
    if (v38)
    {

      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      v56 = qword_1EE09C268;
      v57 = sub_1D78B60A4();
      sub_1D78B42C4("Unexpected e-mail signup style in e-mail signup config!  Falling back to local default...", 89, 2, &dword_1D7739000, v56, v57, MEMORY[0x1E69E7CC0]);
    }

    else
    {

      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      v39 = qword_1EE09C268;
      v40 = sub_1D78B60A4();
      sub_1D78B42C4("Unknown e-mail signup style in e-mail signup config!  Falling back to local default...", 86, 2, &dword_1D7739000, v39, v40, MEMORY[0x1E69E7CC0]);
    }

    sub_1D7824410(a1, v7, v9, v69);

    goto LABEL_22;
  }

  if (v9)
  {
    sub_1D77BE06C();
    v67 = sub_1D78B62D4();
    v58 = v44;

    *&v69[0] = v60;
    *(&v69[0] + 1) = v30;
    v45 = sub_1D78B62D4();
    v47 = v46;

    v48 = v58;
    v30 = v47;
    v49 = v67;
  }

  else
  {

    v48 = v63;
    v49 = v66;
    v45 = v60;
  }

  LOBYTE(v69[0]) = 1;
  *a2 = v59;
  *(a2 + 8) = v37;
  *(a2 + 16) = v49;
  *(a2 + 24) = v48;
  *(a2 + 32) = v45;
  *(a2 + 40) = v30;
  *(a2 + 48) = v7;
  *(a2 + 56) = v9;
  *(a2 + 64) = v62;
  *(a2 + 72) = v65;
  *(a2 + 80) = v61;
  *(a2 + 88) = v64;
  *(a2 + 96) = 1;
}

uint64_t sub_1D7824410@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = [v9 bundleForClass_];
  v11 = sub_1D78B3134();
  v29 = v12;

  v32 = a2;
  v13 = sub_1D7824D14(a2, a3, a1);
  v15 = v14;
  v16 = [v9 bundleForClass_];
  v17 = sub_1D78B3134();
  v30 = v18;
  v31 = v17;

  v19 = [v9 bundleForClass_];
  v20 = sub_1D78B3134();
  v22 = v21;

  if (a3)
  {
    sub_1D77BE06C();
    v23 = sub_1D78B62D4();
    v25 = v24;

    *a4 = v23;
    a4[1] = v25;
    v13 = sub_1D78B62D4();
    v27 = v26;

    v15 = v27;
  }

  else
  {
    *a4 = v11;
    a4[1] = v29;
  }

  a4[2] = v13;
  a4[3] = v15;
  a4[4] = v32;
  a4[5] = a3;
  a4[6] = v31;
  a4[7] = v30;
  a4[8] = v20;
  a4[9] = v22;
}

void sub_1D7824708(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() sharedAccount];
  v5 = [v4 iTunesAccountName];

  if (v5)
  {
    v6 = sub_1D78B5C74();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v31 = sub_1D7824A60(v6, v8, a1);
  v32 = v9;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = [v11 bundleForClass_];
  v13 = sub_1D78B3134();
  v15 = v14;

  v16 = v6;
  v17 = [v11 bundleForClass_];
  v18 = sub_1D78B3134();
  v29 = v19;
  v30 = v18;

  v20 = [v11 bundleForClass_];
  v21 = sub_1D78B3134();
  v23 = v22;

  if (v8)
  {
    sub_1D77BE06C();
    v13 = sub_1D78B62D4();
    v25 = v24;

    v26 = sub_1D78B62D4();
    v28 = v27;

    v15 = v25;
  }

  else
  {
    v26 = v31;
    v28 = v32;
  }

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v26;
  *(a2 + 24) = v28;
  *(a2 + 32) = v16;
  *(a2 + 40) = v8;
  *(a2 + 48) = v30;
  *(a2 + 56) = v29;
  *(a2 + 64) = v21;
  *(a2 + 72) = v23;
  *(a2 + 96) = 0;
}

uint64_t sub_1D7824A60(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    goto LABEL_5;
  }

  v6 = sub_1D78B5C44();
  v7 = [v6 ea_isLegalEmailAddress];

  if (!v7)
  {

LABEL_5:
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass_];
    sub_1D78B3134();

    sub_1D774FE1C(0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D78BCAB0;
    v20 = [a3 name];
    v21 = sub_1D78B5C74();
    v23 = v22;

    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1D775ABD4();
    *(v19 + 32) = v21;
    *(v19 + 40) = v23;
    goto LABEL_6;
  }

  type metadata accessor for Localized();
  v8 = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  sub_1D774FE1C(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D78BCB50;
  v11 = [a3 name];
  v12 = sub_1D78B5C74();
  v14 = v13;

  v15 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v16 = sub_1D775ABD4();
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  *(v10 + 96) = v15;
  *(v10 + 104) = v16;
  *(v10 + 64) = v16;
  *(v10 + 72) = a1;
  *(v10 + 80) = a2;
LABEL_6:
  v24 = sub_1D78B5C94();

  return v24;
}

uint64_t sub_1D7824D14(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = objc_opt_self();

    v8 = [v7 bundleForClass_];
    sub_1D78B3134();

    sub_1D774FE1C(0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D78BCB50;
    v10 = MEMORY[0x1E69E6158];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    v11 = sub_1D775ABD4();
    *(v9 + 64) = v11;
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;
    v12 = [a3 name];
    v13 = sub_1D78B5C74();
    v15 = v14;

    *(v9 + 96) = v10;
    *(v9 + 104) = v11;
    *(v9 + 72) = v13;
    *(v9 + 80) = v15;
  }

  else
  {
    type metadata accessor for Localized();
    v16 = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass_];
    sub_1D78B3134();

    sub_1D774FE1C(0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D78BCAB0;
    v19 = [a3 name];
    v20 = sub_1D78B5C74();
    v22 = v21;

    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1D775ABD4();
    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
  }

  v23 = sub_1D78B5C94();

  return v23;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1D7824FE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 97))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 96);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D782502C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

void __swiftcall SubscriptionOffersModule.createViewController()(UIViewController *__return_ptr retstr)
{
  sub_1D78B37C4();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for SubscriptionOffersViewController();

  v2 = sub_1D78B39C4();

  if (v2)
  {
    [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D782519C(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B37D4();
  return sub_1D78B38C4();
}

uint64_t SubscriptionOffersModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t SubscriptionOffersModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

char *sub_1D78252D8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_contentView;
  *&v5[v11] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v12 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_headerImageView;
  v13 = sub_1D78B5204();
  *&v5[v12] = [objc_allocWithZone(v13) initWithFrame_];
  v14 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_badgeImageView;
  *&v5[v14] = [objc_allocWithZone(v13) initWithFrame_];
  v15 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_titleTextView;
  *&v5[v15] = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame_];
  v16 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_descriptionTextView;
  type metadata accessor for UnselectableLinkEnabledTextView();
  *&v5[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v17 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_subscribeButton;
  v18 = objc_allocWithZone(sub_1D78B4864());
  *&v5[v17] = sub_1D78B4854();
  v19 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_offersButton;
  v20 = sub_1D78B4524();
  *&v5[v19] = [objc_allocWithZone(v20) initWithFrame_];
  v21 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_webAuthButton;
  *&v5[v21] = [objc_allocWithZone(v20) initWithFrame_];
  v25.receiver = v5;
  v25.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4);
  [v22 setClipsToBounds_];
  v23 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_contentView;
  [v22 addSubview_];
  [*&v22[v23] addSubview_];
  [*&v22[v23] addSubview_];
  [*&v22[v23] addSubview_];
  [*&v22[v23] addSubview_];
  [*&v22[v23] addSubview_];
  [*&v22[v23] addSubview_];
  [*&v22[v23] addSubview_];

  return v22;
}

void sub_1D7825614()
{
  v1 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_webAuthButton);
}

void sub_1D7825784()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_contentView;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v3 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_headerImageView;
  v4 = sub_1D78B5204();
  *(v1 + v3) = [objc_allocWithZone(v4) initWithFrame_];
  v5 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_badgeImageView;
  *(v1 + v5) = [objc_allocWithZone(v4) initWithFrame_];
  v6 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_titleTextView;
  *(v1 + v6) = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame_];
  v7 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_descriptionTextView;
  type metadata accessor for UnselectableLinkEnabledTextView();
  *(v1 + v7) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v8 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_subscribeButton;
  v9 = objc_allocWithZone(sub_1D78B4864());
  *(v1 + v8) = sub_1D78B4854();
  v10 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_offersButton;
  v11 = sub_1D78B4524();
  *(v1 + v10) = [objc_allocWithZone(v11) initWithFrame_];
  v12 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_webAuthButton;
  *(v1 + v12) = [objc_allocWithZone(v11) initWithFrame_];
  sub_1D78B6524();
  __break(1u);
}

uint64_t sub_1D7825988(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7465656853736D61;
    }

    else
    {
      v4 = 0x50676E69646E616CLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEB00000000656761;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6573616863727570;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xED00007465656853;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x7465656853736D61;
  if (a2 != 2)
  {
    v8 = 0x50676E69646E616CLL;
    v7 = 0xEB00000000656761;
  }

  if (a2)
  {
    v2 = 0x6573616863727570;
    v6 = 0xED00007465656853;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D78B6724();
  }

  return v11 & 1;
}

uint64_t sub_1D7825AF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000657079546ELL;
  v3 = 0x6F697463656C6553;
  v4 = a1;
  v5 = 0x616D4579786F7270;
  v6 = 0xEA00000000006C69;
  v7 = 0x6E69616D6F64;
  if (a1 != 4)
  {
    v7 = 0x64496D616574;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = 0xE600000000000000;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6E776F6E6B6E75;
  if (a1 != 1)
  {
    v9 = 0x69616D456C616572;
    v8 = 0xE90000000000006CLL;
  }

  if (!a1)
  {
    v9 = 0x6F697463656C6553;
    v8 = 0xED0000657079546ELL;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEA00000000006C69;
      if (v10 != 0x616D4579786F7270)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE600000000000000;
      if (a2 == 4)
      {
        if (v10 != 0x6E69616D6F64)
        {
          goto LABEL_31;
        }
      }

      else if (v10 != 0x64496D616574)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE700000000000000;
        if (v10 != 0x6E776F6E6B6E75)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x69616D456C616572;
      v2 = 0xE90000000000006CLL;
    }

    if (v10 != v3)
    {
LABEL_31:
      v12 = sub_1D78B6724();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v11 != v2)
  {
    goto LABEL_31;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_1D7825CD0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6572616873;
    }

    else
    {
      v4 = 1701079400;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x616853746F4E6F64;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xEA00000000006572;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x6572616873;
  if (a2 != 2)
  {
    v8 = 1701079400;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x616853746F4E6F64;
    v6 = 0xEA00000000006572;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D78B6724();
  }

  return v11 & 1;
}

uint64_t sub_1D7825E04(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6B6E694C70656564;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x80000001D78CE370;
    v3 = 0xD000000000000016;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0xD000000000000018;
    }

    if (v2 == 3)
    {
      v4 = 0x80000001D78CE390;
    }

    else
    {
      v4 = 0x80000001D78CE3B0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6B6E694C70656564;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v5 = 0x80000001D78CE3B0;
    v6 = 0xD000000000000018;
    if (a2 == 3)
    {
      v6 = 0xD000000000000015;
      v5 = 0x80000001D78CE390;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000016;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0x80000001D78CE370;
    }

    else
    {
      v8 = v5;
    }

    if (v3 != v7)
    {
      goto LABEL_36;
    }
  }

  if (v4 != v8)
  {
LABEL_36:
    v10 = sub_1D78B6724();
    goto LABEL_37;
  }

  v10 = 1;
LABEL_37:

  return v10 & 1;
}

uint64_t sub_1D7825F7C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006472;
  v3 = 0x6F53656C646E7562;
  v4 = a1;
  if (a1 > 1u)
  {
    v5 = 0x6574726163616C61;
    if (v4 == 2)
    {
      v6 = 0xEC00000074666F53;
    }

    else
    {
      v6 = 0xEC00000064726148;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6148656C646E7562;
    }

    else
    {
      v5 = 0x6F53656C646E7562;
    }

    if (v4)
    {
      v6 = 0xEA00000000006472;
    }

    else
    {
      v6 = 0xEA00000000007466;
    }
  }

  v7 = 0xEC00000074666F53;
  if (a2 != 2)
  {
    v7 = 0xEC00000064726148;
  }

  if (a2)
  {
    v3 = 0x6148656C646E7562;
  }

  else
  {
    v2 = 0xEA00000000007466;
  }

  if (a2 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0x6574726163616C61;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v5 == v8 && v6 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D78B6724();
  }

  return v10 & 1;
}

uint64_t sub_1D78260E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE700000000000000;
    v11 = 0xE500000000000000;
    v12 = 0x6575737369;
    if (a1 != 2)
    {
      v12 = 1684366694;
      v11 = 0xE400000000000000;
    }

    v13 = 0x32656C6369747261;
    if (a1)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v13 = 0x656C6369747261;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v12;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x6C61727265666572;
    v5 = 0x656C7A7A7570;
    if (a1 != 7)
    {
      v5 = 0x657069636572;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = 0xE600000000000000;
    }

    v6 = 0xE500000000000000;
    v7 = 0x70756F7267;
    if (a1 != 4)
    {
      v7 = 25697;
      v6 = 0xE200000000000000;
    }

    if (a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    if (v2 <= 5)
    {
      v9 = v6;
    }

    else
    {
      v9 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xE500000000000000;
        if (v8 != 0x6575737369)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v14 = 0xE400000000000000;
        if (v8 != 1684366694)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v14 = 0xE800000000000000;
      if (v8 != 0x32656C6369747261)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE700000000000000;
      if (v8 != 0x656C6369747261)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v14 = 0xE500000000000000;
      if (v8 != 0x70756F7267)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE200000000000000;
      if (v8 != 25697)
      {
LABEL_52:
        v15 = sub_1D78B6724();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v14 = 0xE800000000000000;
    if (v8 != 0x6C61727265666572)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v14 = 0xE600000000000000;
    if (a2 == 7)
    {
      if (v8 != 0x656C7A7A7570)
      {
        goto LABEL_52;
      }
    }

    else if (v8 != 0x657069636572)
    {
      goto LABEL_52;
    }
  }

  if (v9 != v14)
  {
    goto LABEL_52;
  }

  v15 = 1;
LABEL_53:

  return v15 & 1;
}

uint64_t sub_1D7826354(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE400000000000000;
    v11 = 0x80000001D78CDEE0;
    v12 = 0xD000000000000014;
    if (a1 == 2)
    {
      v12 = 0xD000000000000015;
    }

    else
    {
      v11 = 0x80000001D78CDF00;
    }

    v13 = 0xD000000000000017;
    if (a1)
    {
      v10 = 0x80000001D78CDEC0;
    }

    else
    {
      v13 = 1702060386;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v12;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v3 = 0x80000001D78CDF60;
    v4 = 0xD000000000000018;
    v5 = 0x80000001D78CDF80;
    if (a1 != 7)
    {
      v5 = 0x80000001D78CDFA0;
    }

    if (a1 != 6)
    {
      v4 = 0xD000000000000016;
      v3 = v5;
    }

    v6 = 0x80000001D78CDF20;
    v7 = 0xD000000000000012;
    if (a1 == 4)
    {
      v7 = 0xD000000000000015;
    }

    else
    {
      v6 = 0x80000001D78CDF40;
    }

    if (a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    if (v2 <= 5)
    {
      v9 = v6;
    }

    else
    {
      v9 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v15 = 0x80000001D78CDF00;
        if (v8 != 0xD000000000000014)
        {
          goto LABEL_54;
        }

        goto LABEL_52;
      }

      v16 = "issueAssociatedValues";
      goto LABEL_40;
    }

    if (a2)
    {
      v15 = 0x80000001D78CDEC0;
      if (v8 != 0xD000000000000017)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      if (v8 != 1702060386)
      {
        goto LABEL_54;
      }
    }
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = 0x80000001D78CDF60;
        if (v8 != 0xD000000000000018)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (a2 == 7)
        {
          v14 = "puzzleAssociatedValues";
        }

        else
        {
          v14 = "recipeAssociatedValues";
        }

        v15 = (v14 - 32) | 0x8000000000000000;
        if (v8 != 0xD000000000000016)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_52;
    }

    if (a2 == 4)
    {
      v16 = "groupAssociatedValues";
LABEL_40:
      v15 = (v16 - 32) | 0x8000000000000000;
      if (v8 != 0xD000000000000015)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v15 = 0x80000001D78CDF40;
    if (v8 != 0xD000000000000012)
    {
LABEL_54:
      v17 = sub_1D78B6724();
      goto LABEL_55;
    }
  }

LABEL_52:
  if (v9 != v15)
  {
    goto LABEL_54;
  }

  v17 = 1;
LABEL_55:

  return v17 & 1;
}

uint64_t sub_1D78265F0()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

double sub_1D78266C8(uint64_t a1)
{
  sub_1D78B5D14();

  return result;
}

uint64_t sub_1D782678C(uint64_t a1)
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

unint64_t sub_1D7826860@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D782697C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D7826890(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007466;
  v3 = 0x6F53656C646E7562;
  v4 = 0xEC00000074666F53;
  if (*v1 != 2)
  {
    v4 = 0xEC00000064726148;
  }

  if (*v1)
  {
    v3 = 0x6148656C646E7562;
    v2 = 0xEA00000000006472;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6574726163616C61;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  *a1 = v5;
  a1[1] = v6;
}

unint64_t sub_1D7826928()
{
  result = qword_1EC9CABE8;
  if (!qword_1EC9CABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CABE8);
  }

  return result;
}

unint64_t sub_1D782697C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D78B6594();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t WebAccessAuthenticationErrors.hashValue.getter()
{
  v1 = *v0;
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](v1);
  return sub_1D78B6844();
}

unint64_t sub_1D7826A58()
{
  result = qword_1EC9CABF0;
  if (!qword_1EC9CABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CABF0);
  }

  return result;
}

void PaywallModule.createViewController(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = sub_1D7826C6C(v4);
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  v6 = type metadata accessor for FlexiblePaywallFailsafeViewProvider();
  *(swift_allocObject() + 16) = v4;
  v7 = sub_1D78B39C4();

  if (v7)
  {
    v12[3] = v6;
    v12[4] = &off_1F526D078;
    v12[0] = v7;
    __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
    type metadata accessor for PaywallViewController();
    sub_1D774584C(v12, v11);
    sub_1D774584C(a1, v10);
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    sub_1D7741E34(v11, v8 + 24);
    sub_1D7741E34(v10, v8 + 64);

    v9 = sub_1D78B39C4();

    if (v9)
    {
      __swift_destroy_boxed_opaque_existential_1(v12);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D7826CB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B37D4();
  sub_1D78B38C4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE092CE8, &protocol descriptor for PaywallViewProviderType, 1);
  sub_1D78B38D4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090F10, &protocol descriptor for PaywallLayoutOptionsProviderType, 1);
  return sub_1D78B38D4();
}

void PaywallModule.createPluggableViewController(with:paywallTrackerObserver:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + 16);
  v8 = sub_1D7826C6C(v7);
  __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
  v9 = type metadata accessor for FlexiblePaywallFailsafeViewProvider();
  *(swift_allocObject() + 16) = v7;
  v10 = sub_1D78B39C4();

  if (v10)
  {
    v16[3] = v9;
    v16[4] = &off_1F526D078;
    v16[0] = v10;
    __swift_project_boxed_opaque_existential_1((v4 + 24), *(v4 + 48));
    type metadata accessor for PaywallViewController();
    sub_1D774584C(v16, v15);
    sub_1D774584C(a1, v14);
    v11 = swift_allocObject();
    v11[2] = v8;
    sub_1D7741E34(v15, (v11 + 3));
    sub_1D7741E34(v14, (v11 + 8));
    v11[13] = a2;
    v11[14] = a3;
    swift_unknownObjectRetain();

    v12 = sub_1D78B39C4();

    if (v12)
    {
      __swift_destroy_boxed_opaque_existential_1(v16);

      sub_1D7827248();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D7826F8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B37D4();
  sub_1D78B38C4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE092CE8, &protocol descriptor for PaywallViewProviderType, 1);
  sub_1D78B38D4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090F10, &protocol descriptor for PaywallLayoutOptionsProviderType, 1);
  result = sub_1D78B38D4();
  if (a5)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, qword_1EE08EB38, &protocol descriptor for PaywallTrackerObserverType, 0);
    return sub_1D78B38D4();
  }

  return result;
}

uint64_t PaywallModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  return v0;
}

uint64_t PaywallModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocClassInstance();
}

unint64_t sub_1D7827248()
{
  result = qword_1EE08ED70;
  if (!qword_1EE08ED70)
  {
    type metadata accessor for PaywallViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08ED70);
  }

  return result;
}

uint64_t type metadata accessor for PaywallResourceConfigData(uint64_t a1)
{
  result = qword_1EE092710;
  if (!qword_1EE092710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D782737C(uint64_t a1)
{
  result = sub_1D78B57B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D78273E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_1D78B57B4();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v18 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7827928(0, &qword_1EE08FAD0, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78278D4();
  sub_1D78B6874();
  if (!v2)
  {
    v14 = v16;
    v13 = v17;
    sub_1D782798C(&qword_1EE090288, MEMORY[0x1E69B6128]);
    sub_1D78B6614();
    (*(v9 + 8))(v12, v8);
    (*(v14 + 32))(v13, v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D7827648(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D78B6724();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D78276D0(uint64_t a1)
{
  v2 = sub_1D78278D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D782770C(uint64_t a1)
{
  v2 = sub_1D78278D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7827760(void *a1)
{
  sub_1D7827928(0, &qword_1EC9CABF8, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78278D4();
  sub_1D78B6884();
  sub_1D78B57B4();
  sub_1D782798C(&qword_1EC9CAC00, MEMORY[0x1E69B6120]);
  sub_1D78B66B4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D78278D4()
{
  result = qword_1EE092760;
  if (!qword_1EE092760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE092760);
  }

  return result;
}

void sub_1D7827928(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D78278D4();
    v7 = a3(a1, &type metadata for PaywallResourceConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D782798C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D78B57B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D78279E4()
{
  result = qword_1EC9CAC08;
  if (!qword_1EC9CAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAC08);
  }

  return result;
}

unint64_t sub_1D7827A3C()
{
  result = qword_1EE092750;
  if (!qword_1EE092750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE092750);
  }

  return result;
}

unint64_t sub_1D7827A94()
{
  result = qword_1EE092758;
  if (!qword_1EE092758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE092758);
  }

  return result;
}

uint64_t sub_1D7827AE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_1D782DEF4(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
  }

  else
  {
    result = sub_1D777BC2C(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v14 = *v3;
      if (!v10)
      {
        sub_1D782EC94();
        v11 = v14;
      }

      result = sub_1D782D644(v9, v11, v12);
      *v3 = v11;
    }
  }

  return result;
}

void sub_1D7827BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1D778D0A0(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1D782E03C(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CA0];
    v8 = MEMORY[0x1E69E6720];
    sub_1D78301A8(a1, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D778CE54);
    sub_1D782AFE8(a2, a3, v10);

    sub_1D78301A8(v10, &qword_1EE08F9C0, v7 + 8, v8, sub_1D778CE54);
  }
}

void sub_1D7827CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1D782E18C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v11 = sub_1D777BBB4(a3, a4);
    v13 = v12;

    if (v13)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v18 = *v5;
      if (!v14)
      {
        sub_1D782EF90();
        v15 = v18;
      }

      sub_1D782D988(v11, v15, v16);
      *v5 = v15;
    }
  }
}

void sub_1D7827DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7749020(0, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for PurchaseContext(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    v16 = MEMORY[0x1E69E6720];
    sub_1D78301A8(a1, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720], sub_1D7749020);
    sub_1D782B1CC(a2, a3, type metadata accessor for PurchaseContext, sub_1D777044C, type metadata accessor for PurchaseContext, sub_1D782F10C, v10);

    sub_1D78301A8(v10, qword_1EE096030, type metadata accessor for PurchaseContext, v16, sub_1D7749020);
  }

  else
  {
    sub_1D777044C(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1D782E314(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }
}

void sub_1D7828040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7749020(0, qword_1EE094360, type metadata accessor for PurchaseAdContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for PurchaseAdContext(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    v16 = MEMORY[0x1E69E6720];
    sub_1D78301A8(a1, qword_1EE094360, type metadata accessor for PurchaseAdContext, MEMORY[0x1E69E6720], sub_1D7749020);
    sub_1D782B1CC(a2, a3, type metadata accessor for PurchaseAdContext, sub_1D77F63C8, type metadata accessor for PurchaseAdContext, sub_1D782F374, v10);

    sub_1D78301A8(v10, qword_1EE094360, type metadata accessor for PurchaseAdContext, v16, sub_1D7749020);
  }

  else
  {
    sub_1D77F63C8(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1D782E4A8(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }
}

void sub_1D78282C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7749020(0, &qword_1EE094430, type metadata accessor for PaywallShownEntry, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for PaywallShownEntry(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    v16 = MEMORY[0x1E69E6720];
    sub_1D78301A8(a1, &qword_1EE094430, type metadata accessor for PaywallShownEntry, MEMORY[0x1E69E6720], sub_1D7749020);
    sub_1D782B1CC(a2, a3, type metadata accessor for PaywallShownEntry, sub_1D77B6AEC, type metadata accessor for PaywallShownEntry, sub_1D782F770, v10);

    sub_1D78301A8(v10, &qword_1EE094430, type metadata accessor for PaywallShownEntry, v16, sub_1D7749020);
  }

  else
  {
    sub_1D77B6AEC(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1D782E7B8(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }
}

void sub_1D7828540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7749020(0, &qword_1EE090290, MEMORY[0x1E69B6118], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v19 - v9;
  v11 = sub_1D78B57A4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    v16 = MEMORY[0x1E69B6118];
    v17 = MEMORY[0x1E69E6720];
    sub_1D78301A8(a1, &qword_1EE090290, MEMORY[0x1E69B6118], MEMORY[0x1E69E6720], sub_1D7749020);
    sub_1D782B350(a2, a3, v10);

    sub_1D78301A8(v10, &qword_1EE090290, v16, v17, sub_1D7749020);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1D782E94C(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }
}

uint64_t sub_1D7828788@<X0>(uint64_t a1@<X8>)
{
  sub_1D78302F0(0, &qword_1EE08FF60, sub_1D77BD2D4, MEMORY[0x1E69E6530], "offset element ");
  v4 = v3;
  v50 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v45 = (&v43 - v6);
  v7 = type metadata accessor for PurchaseContext(0);
  v48 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v49 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7749020(0, &qword_1EE090170, sub_1D77BD2D4, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = (&v43 - v12);
  sub_1D77BD2D4(0);
  v15 = v14;
  v16 = *(v14 - 8);
  result = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v1;
  v21 = v1[1];
  v24 = v1[2];
  v23 = v1[3];
  v25 = v1[4];
  v51 = v4;
  v52 = v24;
  v44 = v20;
  if (!v25)
  {
    v27 = (v24 + 64) >> 6;
    if (v27 <= v23 + 1)
    {
      v28 = v23 + 1;
    }

    else
    {
      v28 = (v24 + 64) >> 6;
    }

    v29 = v28 - 1;
    while (1)
    {
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v26 >= v27)
      {
        (*(v16 + 56))(v13, 1, 1, v15);
        v36 = 0;
        goto LABEL_12;
      }

      v25 = *(v21 + 8 * v26);
      ++v23;
      if (v25)
      {
        v47 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v47 = a1;
  v26 = v23;
LABEL_11:
  v46 = (v25 - 1) & v25;
  v30 = __clz(__rbit64(v25)) | (v26 << 6);
  v31 = (*(v22 + 48) + 16 * v30);
  v32 = *v31;
  v33 = v31[1];
  v34 = v49;
  sub_1D7830140(*(v22 + 56) + *(v48 + 72) * v30, v49, type metadata accessor for PurchaseContext);
  v35 = *(v15 + 48);
  *v13 = v32;
  v13[1] = v33;
  sub_1D777044C(v34, v13 + v35);
  (*(v16 + 56))(v13, 0, 1, v15);

  v36 = v46;
  a1 = v47;
  v29 = v26;
LABEL_12:
  *v1 = v22;
  v1[1] = v21;
  v1[2] = v52;
  v1[3] = v29;
  v1[4] = v36;
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_1D78301A8(v13, &qword_1EE090170, sub_1D77BD2D4, MEMORY[0x1E69E6720], sub_1D7749020);
    return (*(v50 + 56))(a1, 1, 1, v51);
  }

  v37 = v13;
  v38 = v44;
  sub_1D7830208(v37, v44, sub_1D77BD2D4);
  v39 = v51;
  v40 = *(v51 + 48);
  v41 = v1[5];
  v42 = v45;
  *v45 = v41;
  result = sub_1D7830208(v38, v42 + v40, sub_1D77BD2D4);
  if (__OFADD__(v41, 1))
  {
    goto LABEL_19;
  }

  v1[5] = v41 + 1;
  sub_1D7830270(v42, a1, &qword_1EE08FF60, sub_1D77BD2D4);
  return (*(v50 + 56))(a1, 0, 1, v39);
}

uint64_t sub_1D7828C30@<X0>(uint64_t a1@<X8>)
{
  sub_1D78302F0(0, &qword_1EE08FF30, sub_1D77F6328, MEMORY[0x1E69E6530], "offset element ");
  v4 = v3;
  v50 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v45 = (&v43 - v6);
  v7 = type metadata accessor for PurchaseAdContext(0);
  v48 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v49 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7749020(0, &qword_1EE090148, sub_1D77F6328, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = (&v43 - v12);
  sub_1D77F6328(0);
  v15 = v14;
  v16 = *(v14 - 8);
  result = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v1;
  v21 = v1[1];
  v24 = v1[2];
  v23 = v1[3];
  v25 = v1[4];
  v51 = v4;
  v52 = v24;
  v44 = v20;
  if (!v25)
  {
    v27 = (v24 + 64) >> 6;
    if (v27 <= v23 + 1)
    {
      v28 = v23 + 1;
    }

    else
    {
      v28 = (v24 + 64) >> 6;
    }

    v29 = v28 - 1;
    while (1)
    {
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v26 >= v27)
      {
        (*(v16 + 56))(v13, 1, 1, v15);
        v36 = 0;
        goto LABEL_12;
      }

      v25 = *(v21 + 8 * v26);
      ++v23;
      if (v25)
      {
        v47 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v47 = a1;
  v26 = v23;
LABEL_11:
  v46 = (v25 - 1) & v25;
  v30 = __clz(__rbit64(v25)) | (v26 << 6);
  v31 = (*(v22 + 48) + 16 * v30);
  v32 = *v31;
  v33 = v31[1];
  v34 = v49;
  sub_1D7830140(*(v22 + 56) + *(v48 + 72) * v30, v49, type metadata accessor for PurchaseAdContext);
  v35 = *(v15 + 48);
  *v13 = v32;
  v13[1] = v33;
  sub_1D77F63C8(v34, v13 + v35);
  (*(v16 + 56))(v13, 0, 1, v15);

  v36 = v46;
  a1 = v47;
  v29 = v26;
LABEL_12:
  *v1 = v22;
  v1[1] = v21;
  v1[2] = v52;
  v1[3] = v29;
  v1[4] = v36;
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_1D78301A8(v13, &qword_1EE090148, sub_1D77F6328, MEMORY[0x1E69E6720], sub_1D7749020);
    return (*(v50 + 56))(a1, 1, 1, v51);
  }

  v37 = v13;
  v38 = v44;
  sub_1D7830208(v37, v44, sub_1D77F6328);
  v39 = v51;
  v40 = *(v51 + 48);
  v41 = v1[5];
  v42 = v45;
  *v45 = v41;
  result = sub_1D7830208(v38, v42 + v40, sub_1D77F6328);
  if (__OFADD__(v41, 1))
  {
    goto LABEL_19;
  }

  v1[5] = v41 + 1;
  sub_1D7830270(v42, a1, &qword_1EE08FF30, sub_1D77F6328);
  return (*(v50 + 56))(a1, 0, 1, v39);
}

uint64_t sub_1D78290D8@<X0>(uint64_t a1@<X8>)
{
  sub_1D783000C(0);
  v4 = v3;
  v51 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v46 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PaywallShownEntry(0);
  v49 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7749020(0, &qword_1EE090158, sub_1D783003C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = (&v44 - v12);
  sub_1D783003C(0);
  v15 = v14;
  v16 = *(v14 - 8);
  result = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v1;
  v21 = v1[1];
  v24 = v1[2];
  v23 = v1[3];
  v25 = v1[4];
  v52 = a1;
  v53 = v24;
  v45 = v20;
  if (!v25)
  {
    v27 = (v24 + 64) >> 6;
    if (v27 <= v23 + 1)
    {
      v28 = v23 + 1;
    }

    else
    {
      v28 = (v24 + 64) >> 6;
    }

    v29 = v28 - 1;
    while (1)
    {
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v26 >= v27)
      {
        (*(v16 + 56))(v13, 1, 1, v15);
        v36 = 0;
        goto LABEL_12;
      }

      v25 = *(v21 + 8 * v26);
      ++v23;
      if (v25)
      {
        v48 = v4;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v48 = v4;
  v26 = v23;
LABEL_11:
  v47 = (v25 - 1) & v25;
  v30 = __clz(__rbit64(v25)) | (v26 << 6);
  v31 = (*(v22 + 48) + 16 * v30);
  v32 = *v31;
  v33 = v31[1];
  v34 = v50;
  sub_1D7830140(*(v22 + 56) + *(v49 + 72) * v30, v50, type metadata accessor for PaywallShownEntry);
  v35 = *(v15 + 48);
  *v13 = v32;
  v13[1] = v33;
  sub_1D77B6AEC(v34, v13 + v35);
  (*(v16 + 56))(v13, 0, 1, v15);

  v36 = v47;
  v4 = v48;
  v29 = v26;
LABEL_12:
  *v1 = v22;
  v1[1] = v21;
  v1[2] = v53;
  v1[3] = v29;
  v1[4] = v36;
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_1D78301A8(v13, &qword_1EE090158, sub_1D783003C, MEMORY[0x1E69E6720], sub_1D7749020);
    return (*(v51 + 56))(v52, 1, 1, v4);
  }

  v37 = v45;
  sub_1D7830208(v13, v45, sub_1D783003C);
  v38 = *(v4 + 48);
  v39 = v1[5];
  v40 = v46;
  *v46 = v39;
  result = sub_1D7830208(v37, v40 + v38, sub_1D783003C);
  v41 = __OFADD__(v39, 1);
  v42 = v39 + 1;
  v43 = v52;
  if (v41)
  {
    goto LABEL_19;
  }

  v1[5] = v42;
  sub_1D7830208(v40, v43, sub_1D783000C);
  return (*(v51 + 56))(v43, 0, 1, v4);
}

uint64_t sub_1D7829548@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_1D78B3394();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78306DC(0, &qword_1EE08E510, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for PaywallShownEntry(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7830688();
  sub_1D78B6874();
  if (!v2)
  {
    v16 = v21;
    v17 = v22;
    sub_1D7749114(&qword_1EE095660, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1D78B6614();
    (*(v16 + 8))(v11, v8);
    (*(v17 + 32))(v15, v23, v4);
    sub_1D77B6AEC(v15, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D7829804(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D78B6724();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D782988C(uint64_t a1)
{
  v2 = sub_1D7830688();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D78298C8(uint64_t a1)
{
  v2 = sub_1D7830688();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D782991C(void *a1)
{
  sub_1D78306DC(0, &qword_1EE08E4E8, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7830688();
  sub_1D78B6884();
  sub_1D78B3394();
  sub_1D7749114(&unk_1EE08F470, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1D78B66B4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D7829AC0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D78B3F24();
  sub_1D774DCF0(0);
  swift_allocObject();
  result = sub_1D78B4394();
  *a1 = result;
  return result;
}

void sub_1D7829B50(uint64_t a1)
{
  sub_1D7749020(0, &qword_1EE0904D8, sub_1D782FFEC, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v12 - v3;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D78B3F24();
    sub_1D78B43A4();

    sub_1D782FFEC(0);
    v6 = v5;
    v7 = *(v5 - 8);
    if ((*(v7 + 48))(v4, 1, v5) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1D78B4384();
      (*(v7 + 8))(v4, v6);
      v8 = sub_1D78B4014();
      sub_1D778CE54(0, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1D78B4084();

      v9 = sub_1D78B4014();
      sub_1D78300CC(0, &qword_1EE0901B0, type metadata accessor for PaywallShownEntry, MEMORY[0x1E69E5E28]);
      type metadata accessor for PaywallShownEntriesManager();
      sub_1D78B40A4();

      v10 = sub_1D78B4014();
      sub_1D78B40B4();

      v11 = sub_1D78B4014();
      sub_1D78B40D4();
    }
  }
}

uint64_t sub_1D7829E48(uint64_t *a1)
{
  sub_1D7749020(0, &qword_1EE0904D8, sub_1D782FFEC, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v10 - v3;
  sub_1D78B3F24();
  sub_1D78B43A4();

  sub_1D782FFEC(0);
  v6 = v5;
  v7 = *(v5 - 8);
  result = (*(v7 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_1D78B4354();
    (*(v7 + 8))(v4, v6);
    return v9;
  }

  return result;
}

void sub_1D7829FB8(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PaywallShownEntry(0);
  v73 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D783000C(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v75 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v74 = &v66 - v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = (&v66 - v18);
  sub_1D7749020(0, &unk_1EE08FF38, sub_1D783000C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = (&v66 - v22);
  v24 = *a1;

  sub_1D78B3854();

  v25 = -1 << *(v24 + 32);
  v26 = *(v24 + 64);
  v27 = ~v25;
  v28 = -v25;
  v76 = v24;
  v77 = v24 + 64;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v78 = v27;
  v79 = 0;
  v80 = v29 & v26;
  v81 = 0;

  sub_1D78290D8(v23);
  v71 = *(v10 + 48);
  v72 = v10 + 48;
  if (v71(v23, 1, v9) == 1)
  {
LABEL_5:
    sub_1D779D528(v76);

    sub_1D78B3864();

    return;
  }

  sub_1D783003C(0);
  v31 = v30;
  v69 = v19;
  v70 = v9;
  v67 = v30;
  v68 = v23;
  while (1)
  {
    v34 = *(v9 + 48);
    v35 = v23 + v34;
    v36 = *(v23 + v34);
    v37 = *(v23 + v34 + 8);
    v38 = *(v31 + 48);
    v39 = (v19 + v34);
    *v19 = *v23;
    *v39 = v36;
    v39[1] = v37;
    sub_1D77B6AEC(&v35[v38], v39 + v38);
    v40 = v74;
    sub_1D7830140(v19, v74, sub_1D783000C);
    v41 = (v40 + *(v9 + 48));
    v42 = v31;
    v44 = *v41;
    v43 = v41[1];
    v45 = v19;
    v46 = v75;
    sub_1D7830140(v45, v75, sub_1D783000C);
    v47 = v46 + *(v9 + 48);

    v48 = *(v42 + 48);
    swift_beginAccess();
    v49 = a2;
    v50 = v7;
    sub_1D77B6AEC(v47 + v48, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = *(v49 + 24);
    v52 = v82;
    v53 = v49;
    *(v49 + 24) = 0x8000000000000000;
    v55 = sub_1D777BBB4(v44, v43);
    v56 = v52[2];
    v57 = (v54 & 1) == 0;
    v58 = v56 + v57;
    if (__OFADD__(v56, v57))
    {
      break;
    }

    v59 = v54;
    if (v52[3] >= v58)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v54)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_1D782F770();
        if (v59)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      sub_1D782C68C(v58, isUniquelyReferenced_nonNull_native);
      v60 = sub_1D777BBB4(v44, v43);
      if ((v59 & 1) != (v61 & 1))
      {
        goto LABEL_22;
      }

      v55 = v60;
      if (v59)
      {
LABEL_7:

        v32 = v82;
        v7 = v50;
        sub_1D7830360(v50, v82[7] + *(v73 + 72) * v55, type metadata accessor for PaywallShownEntry);
        goto LABEL_8;
      }
    }

    v32 = v82;
    v82[(v55 >> 6) + 8] |= 1 << v55;
    v62 = (v32[6] + 16 * v55);
    *v62 = v44;
    v62[1] = v43;
    v7 = v50;
    sub_1D77B6AEC(v50, v32[7] + *(v73 + 72) * v55);
    v63 = v32[2];
    v64 = __OFADD__(v63, 1);
    v65 = v63 + 1;
    if (v64)
    {
      goto LABEL_21;
    }

    v32[2] = v65;
LABEL_8:
    v31 = v67;
    v33 = *(v67 + 48);
    a2 = v53;
    *(v53 + 24) = v32;

    swift_endAccess();
    v19 = v69;
    sub_1D783006C(v69, sub_1D783000C);
    sub_1D783006C(v41 + v33, type metadata accessor for PaywallShownEntry);
    v23 = v68;
    sub_1D78290D8(v68);
    v9 = v70;
    if (v71(v23, 1, v70) == 1)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_1D78B6784();
  __break(1u);
}

double sub_1D782A528@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  sub_1D78B3854();

  swift_beginAccess();
  v7 = *(v3 + 24);
  if (*(v7 + 16) && (v8 = sub_1D777BBB4(a1, a2), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = type metadata accessor for PaywallShownEntry(0);
    v13 = *(v12 - 8);
    sub_1D7830140(v11 + *(v13 + 72) * v10, a3, type metadata accessor for PaywallShownEntry);
    (*(v13 + 56))(a3, 0, 1, v12);
  }

  else
  {
    v14 = type metadata accessor for PaywallShownEntry(0);
    (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
  }

  swift_endAccess();

  sub_1D78B3864();

  return result;
}

double sub_1D782A6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v39 = a1;
  v43 = sub_1D78B5254();
  v46 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v4);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D78B52A4();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PaywallShownEntry(0);
  v10 = *(v9 - 8);
  v40 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v37 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D78B5264();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7749020(0, &qword_1EE094430, type metadata accessor for PaywallShownEntry, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v36 - v20;

  sub_1D78B3854();

  sub_1D7830140(a3, v21, type metadata accessor for PaywallShownEntry);
  (*(v10 + 56))(v21, 0, 1, v9);
  swift_beginAccess();
  v22 = v38;

  v23 = v21;
  v24 = v39;
  sub_1D78282C0(v23, v39, v22);
  swift_endAccess();
  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  (*(v14 + 104))(v17, *MEMORY[0x1E69E7FA0], v13);
  v36 = sub_1D78B6134();
  (*(v14 + 8))(v17, v13);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = v37;
  sub_1D7830140(a3, v37, type metadata accessor for PaywallShownEntry);
  v27 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v28 = swift_allocObject();
  v28[2] = v25;
  v28[3] = v24;
  v28[4] = v22;
  sub_1D77B6AEC(v26, v28 + v27);
  aBlock[4] = sub_1D78304DC;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_13;
  v29 = _Block_copy(aBlock);

  v30 = v41;
  sub_1D78B5274();
  v47 = MEMORY[0x1E69E7CC0];
  sub_1D7749114(&qword_1EE090300, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v31 = MEMORY[0x1E69E7F60];
  sub_1D7749020(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7741690(&qword_1EE090030, &qword_1EE090040, v31);
  v33 = v42;
  v32 = v43;
  sub_1D78B6324();
  v34 = v36;
  MEMORY[0x1DA7033B0](0, v30, v33, v29);
  _Block_release(v29);

  (*(v46 + 8))(v33, v32);
  (*(v44 + 8))(v30, v45);

  sub_1D78B3864();

  return result;
}

void sub_1D782AC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7749020(0, &qword_1EE0904D8, sub_1D782FFEC, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v21 - v9;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D78B3F24();
    sub_1D78B43A4();

    sub_1D782FFEC(0);
    v12 = v11;
    v13 = *(v11 - 8);
    if ((*(v13 + 48))(v10, 1, v11) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1D7749020(0, &qword_1EE08E4C0, sub_1D7830544, MEMORY[0x1E69E6F90]);
      sub_1D7830544(0);
      v15 = v14 - 8;
      v16 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1D78BCAB0;
      v18 = (v17 + v16);
      v19 = *(v15 + 56);
      *v18 = a2;
      v18[1] = a3;
      sub_1D7830140(a4, v18 + v19, type metadata accessor for PaywallShownEntry);

      sub_1D77FF970(v17);
      swift_setDeallocating();
      sub_1D783006C(v18, sub_1D7830544);
      swift_deallocClassInstance();
      sub_1D78B4364();

      (*(v13 + 8))(v10, v12);
      v20 = sub_1D78B4014();
      sub_1D78B40D4();
    }
  }
}

double sub_1D782AFE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D777BBB4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v13 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D782EDE4();
      v10 = v13;
    }

    sub_1D778D0A0((*(v10 + 56) + 32 * v8), a3);
    sub_1D782D7D8(v8, v10, v11);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1D782B134(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1D777BBB4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v12 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D782F5DC();
    v8 = v12;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1D782DB38(v6, v8, v10);
  *v3 = v8;
  return v9;
}

uint64_t sub_1D782B1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, __n128)@<X2>, double (*a4)(int64_t, uint64_t)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_1D777BBB4(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v29 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v18 = v29;
    }

    v19 = *(v18 + 56);
    v20 = (a3)(0);
    v28 = *(v20 - 8);
    v21.n128_f64[0] = a4(v19 + *(v28 + 72) * v16, a7);
    sub_1D782DD00(v16, v18, a5, v21);
    *v12 = v18;
    v22 = *(v28 + 56);
    v23 = a7;
    v24 = 0;
    v25 = v20;
  }

  else
  {
    v26 = (a3)(0);
    v22 = *(*(v26 - 8) + 56);
    v25 = v26;
    v23 = a7;
    v24 = 1;
  }

  return v22(v23, v24, 1, v25);
}

uint64_t sub_1D782B350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D777BBB4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v21 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D782FBD8();
      v10 = v21;
    }

    v11 = *(v10 + 56);
    v12 = sub_1D78B57A4();
    v20 = *(v12 - 8);
    v13.n128_f64[0] = (*(v20 + 32))(a3, v11 + *(v20 + 72) * v8, v12);
    sub_1D782DD00(v8, v10, MEMORY[0x1E69B6118], v13);
    *v4 = v10;
    v14 = *(v20 + 56);
    v15 = a3;
    v16 = 0;
    v17 = v12;
  }

  else
  {
    v18 = sub_1D78B57A4();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a3;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void sub_1D782B4D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D78303C8(0);
  v32 = v4;
  v6 = sub_1D78B6554();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v32 & 1) == 0)
      {
        v22 = v21;
      }

      sub_1D78B6814();
      MEMORY[0x1DA703AC0](v20);
      v23 = sub_1D78B6844();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D782B754(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D7830484(0, &qword_1EE08FB10, MEMORY[0x1E69E7CA0] + 8);
  v34 = v4;
  v6 = sub_1D78B6554();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_1D778D0A0(v24, v35);
      }

      else
      {
        sub_1D777BE08(v24, v35);
      }

      sub_1D78B6814();
      sub_1D78B5D14();
      v25 = sub_1D78B6844();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_1D778D0A0(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1D782BA14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1D7830484(0, &unk_1EC9CAC10, MEMORY[0x1E69E6158]);
  v38 = v4;
  v6 = sub_1D78B6554();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      sub_1D78B6814();
      sub_1D78B5D14();
      v28 = sub_1D78B6844();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}