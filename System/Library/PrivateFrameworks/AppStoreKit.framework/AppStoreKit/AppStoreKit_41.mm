uint64_t type metadata accessor for EngagementToggleAction(uint64_t a1)
{
  result = qword_1EE1EC760;
  if (!qword_1EE1EC760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EngagementToggleAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return v0;
}

uint64_t EngagementToggleAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return swift_deallocClassInstance();
}

uint64_t RedownloadConfiguration.init(metrics:alignment:theme:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 4);
  v8 = *a3;
  v9 = a3[1];
  v11 = *(a3 + 1);
  v10 = *(a3 + 2);
  sub_1E16C8F24(a1, a4);
  v12 = type metadata accessor for RedownloadConfiguration(0);
  v13 = a4 + v12[5];
  *v13 = *a2;
  *(v13 + 4) = v7;
  *(a4 + v12[6]) = v8 == 5;
  if ((v9 - 7) < 2)
  {
    goto LABEL_2;
  }

  if (v9 == 2)
  {
    if (v8 != 3)
    {
      if (v8 != 4)
      {
        sub_1E139D53C(v11, v10);
        if (v8 == 6)
        {
          goto LABEL_3;
        }

LABEL_34:
        result = sub_1E16FC920(a1, type metadata accessor for OfferButtonMetrics);
        v14 = 0;
        goto LABEL_17;
      }

LABEL_2:
      sub_1E139D53C(v11, v10);
LABEL_3:
      if (qword_1EE1DDC78 != -1)
      {
        swift_once();
      }

      v14 = qword_1EE1DDC80;
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v8 != 3)
  {
    if (v9 > 12)
    {
      if (v9 == 13)
      {
        goto LABEL_12;
      }

      if (v9 == 14)
      {
        goto LABEL_2;
      }

      if (v9 == 15 && v8 != 4)
      {
        if (qword_1EE1DDC78 != -1)
        {
          swift_once();
        }

        v15 = qword_1EE1DDC80;
        goto LABEL_15;
      }
    }

    else if (v9)
    {
      if (v9 == 6)
      {
        v18[3] = &type metadata for Feature;
        v18[4] = sub_1E1309EB0();
        LOBYTE(v18[0]) = 17;
        v17 = sub_1E1AF056C();
        __swift_destroy_boxed_opaque_existential_1(v18);
        if (v17)
        {
          if (qword_1EE1E3260 != -1)
          {
            swift_once();
          }

          v15 = qword_1EE1E3268;
          goto LABEL_15;
        }
      }
    }

    else if (v8 == 6)
    {
      goto LABEL_12;
    }

    sub_1E139D53C(v11, v10);
    goto LABEL_34;
  }

LABEL_12:
  if (qword_1EE1DDC90 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE1DDC98;
LABEL_15:
  v14 = v15;
  sub_1E139D53C(v11, v10);
LABEL_16:
  result = sub_1E16FC920(a1, type metadata accessor for OfferButtonMetrics);
LABEL_17:
  *(a4 + v12[7]) = v14;
  return result;
}

uint64_t type metadata accessor for RedownloadConfiguration(uint64_t a1)
{
  result = qword_1EE1D9930;
  if (!qword_1EE1D9930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL RedownloadConfiguration.isEqual(to:with:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FC8, &unk_1E1B2B620);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23[-v6 - 8];
  v8 = type metadata accessor for RedownloadConfiguration(0);
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1E1300B24(a1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B68, &qword_1E1B285A0);
  v12 = swift_dynamicCast();
  v13 = *(v9 + 56);
  if ((v12 & 1) == 0)
  {
    v13(v7, 1, 1, v8);
    sub_1E16FC854(v7);
    return 0;
  }

  v13(v7, 0, 1, v8);
  sub_1E16FC8BC(v7, v11);
  if (!sub_1E16CAD94(*(v2 + v8[5]) | (*(v2 + v8[5] + 2) << 16), *&v11[v8[5]] | (*&v11[v8[5] + 2] << 16)) || *(v2 + v8[6]) != v11[v8[6]])
  {
    goto LABEL_4;
  }

  v15 = v8[7];
  v16 = *(v2 + v15);
  v17 = *&v11[v15];
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_13;
    }

LABEL_4:
    sub_1E16FC920(v11, type metadata accessor for RedownloadConfiguration);
    return 0;
  }

  if (!v17)
  {
    goto LABEL_4;
  }

  sub_1E1355E88();
  v18 = v17;
  v19 = v16;
  v20 = sub_1E1AF6D0C();

  if ((v20 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_13:
  v21 = OfferButtonMetrics.isEqual(to:with:)(v11, a2);
  sub_1E16FC920(v11, type metadata accessor for RedownloadConfiguration);
  return (v21 & 1) != 0;
}

void *RedownloadConfiguration.apply<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v35 - v7;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  (*(a3 + 80))(a2, a3, v11);
  swift_getAssociatedConformanceWitness();
  sub_1E1AF118C();
  (*(v10 + 8))(v13, v9);
  v14 = a2;
  v15 = (*(a3 + 72))(a2, a3);
  [v15 setHidden_];

  v16 = (*(a3 + 64))(a2, a3);
  [v16 setHidden_];

  v37 = *(a3 + 96);
  v17 = a1;
  v37(v14, a3);
  v36 = type metadata accessor for OfferButtonMetrics(0);
  v18 = v41;
  v19 = v41 + *(v36 + 32);
  v20 = *v19;
  v38 = *(v19 + 8);
  v39 = v20;
  v21 = v20();
  v22 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v21, v22, AssociatedConformanceWitness);
  v24 = v6 + 8;
  v25 = *(v6 + 8);
  v35 = v24;
  v25(v8, v22);
  v37(v14, a3);
  v26 = *(v18 + *(v36 + 48));
  v27 = *(AssociatedConformanceWitness + 88);
  v28 = v26;
  v27(v26, v22, AssociatedConformanceWitness);
  v25(v8, v22);
  v42[3] = &type metadata for Feature;
  v42[4] = sub_1E1309EB0();
  LOBYTE(v42[0]) = 17;
  LOBYTE(v26) = sub_1E1AF056C();
  v29 = __swift_destroy_boxed_opaque_existential_1(v42);
  if (v26)
  {
    v29 = (*(a3 + 168))(0, v14, a3);
  }

  v30 = (v39)(v29);
  (*(a3 + 208))(v30, v14, a3);
  v31._object = 0x80000001E1B71ED0;
  v31._countAndFlagsBits = 0xD000000000000028;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v33 = localizedString(_:comment:)(v31, v32);
  (*(a3 + 232))(v33._countAndFlagsBits, v33._object, v14, a3);
  return _s11AppStoreKit23RedownloadConfigurationV7reapply8colorsToyx_tAA23ConfigurableOfferButtonRzlF_0(v17, v14, a3);
}

void *_s11AppStoreKit23RedownloadConfigurationV7reapply8colorsToyx_tAA23ConfigurableOfferButtonRzlF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v16 = type metadata accessor for RedownloadConfiguration(0);
  if (*(v3 + *(v16 + 24)) == 1)
  {
    (*(a3 + 96))(a2, a3);
    if (qword_1ECEB11C0 != -1)
    {
      swift_once();
    }

    v17 = qword_1ECEB95D8;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 56))(v17, AssociatedTypeWitness, AssociatedConformanceWitness);
    return (*(v7 + 8))(v15, AssociatedTypeWitness);
  }

  v19 = v16;
  v20 = (*(a3 + 104))(a2, a3);
  v21 = *(a3 + 96);
  if (v20)
  {
    v21(a2, a3);
    v22 = *(v3 + *(v19 + 28));
    v23 = v22;
    if (v22 || (result = (*(a3 + 112))(a2, a3), (v23 = result) != 0))
    {
      v25 = v22;
      v26 = sub_1E1AF6C7C();

      v27 = swift_getAssociatedConformanceWitness();
      (*(v27 + 56))(v26, AssociatedTypeWitness, v27);

      v15 = v12;
      return (*(v7 + 8))(v15, AssociatedTypeWitness);
    }

    __break(1u);
  }

  else
  {
    v21(a2, a3);
    v28 = *(v3 + *(v19 + 28));
    v29 = v28;
    if (v28 || (result = (*(a3 + 112))(a2, a3), (v29 = result) != 0))
    {
      v30 = swift_getAssociatedConformanceWitness();
      v31 = *(v30 + 56);
      v32 = v28;
      v31(v29, AssociatedTypeWitness, v30);

      v15 = v9;
      return (*(v7 + 8))(v15, AssociatedTypeWitness);
    }
  }

  __break(1u);
  return result;
}

int8x8_t static RedownloadConfiguration.alignment(whenUsing:in:)@<D0>(id a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>, uint8x8_t a4@<D0>)
{
  a4.i32[0] = *a2;
  v11 = vmovl_u8(a4).u64[0];
  LOBYTE(v5) = *(a2 + 4);
  v6 = *(a2 + 5);
  v7 = [a1 traitCollection];
  v8 = sub_1E1AF697C();

  if (v8)
  {
    v9 = vmovn_s32(vshlq_u32(vdupq_n_s32(0x10200u), vnegq_s32(vshll_n_u16(v11, 3uLL))));
    v5 = 0x10200u >> (8 * v5);
    if (v6)
    {
      if (v6 == 1)
      {
        LOBYTE(v6) = 2;
      }

      else
      {
        LOBYTE(v6) = 1;
      }
    }
  }

  else
  {
    v9 = v11;
  }

  result = vuzp1_s8(v9, v9);
  *a3 = result.i32[0];
  *(a3 + 4) = v5;
  *(a3 + 5) = v6;
  return result;
}

void RedownloadConfiguration.size(in:)(void *a1)
{
  v2 = v1;
  type metadata accessor for RedownloadConfiguration(0);
  v4 = [a1 traitCollection];
  sub_1E16CAD98();

  v5 = type metadata accessor for OfferButtonMetrics(0);
  if (v7 == 1)
  {
    v6 = (*(v2 + *(v5 + 32)))();
    [v6 size];
  }
}

uint64_t sub_1E16FC854(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FC8, &unk_1E1B2B620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E16FC8BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedownloadConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E16FC920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1E16FC980(void *a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v8 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v63 - v22;
  v68 = *(a3 + 96);
  v69 = a3 + 96;
  v68(a2, a3, v21);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v26 = *(v17 + 8);
  v67 = v17 + 8;
  v26(v23, AssociatedTypeWitness);
  if (v25)
  {
    [v25 size];
  }

  v27 = (v8 + *(type metadata accessor for RedownloadConfiguration(0) + 20));
  v28 = *(v27 + 2);
  v71 = *v27;
  v72 = v28;
  v30 = [a1 traitCollection];
  sub_1E16CAD98();

  v31 = v71;
  v70[3] = &type metadata for Feature;
  v70[4] = sub_1E1309EB0();
  LOBYTE(v70[0]) = 17;
  LOBYTE(v30) = sub_1E1AF056C();
  __swift_destroy_boxed_opaque_existential_1(v70);
  if (v30)
  {
    v32 = *(v8 + *(type metadata accessor for OfferButtonMetrics(0) + 52) + 8);
    v64 = a7;
    v65 = a5;
    v63 = a6;
    if (v31)
    {
      if (v31 == 1)
      {
        v33 = v26;
        v73.origin.x = a4;
        v73.origin.y = a5;
        v73.size.width = a6;
        v73.size.height = a7;
        v34 = CGRectGetMidY(v73) + v32 * -0.5;
        v35 = 0.0;
      }

      else
      {
        v33 = v26;
        v79.origin.x = a4;
        v79.origin.y = a5;
        v79.size.width = a6;
        v79.size.height = a7;
        v35 = CGRectGetMaxX(v79) - v32;
        v80.origin.x = a4;
        v80.origin.y = a5;
        v80.size.width = a6;
        v80.size.height = a7;
        v34 = CGRectGetMidY(v80) + v32 * -0.5;
      }
    }

    else
    {
      v33 = v26;
      v75.origin.x = a4;
      v75.origin.y = a5;
      v75.size.width = a6;
      v75.size.height = a7;
      MidX = CGRectGetMidX(v75);
      v76.origin.y = a5;
      v35 = MidX - v32 * 0.5;
      v76.origin.x = a4;
      v76.size.width = a6;
      v76.size.height = a7;
      v34 = CGRectGetMidY(v76) - v32 * 0.5;
    }

    v48 = floor(v35);
    v49 = floor(v34);
    v50 = (*(a3 + 192))(a2, a3);
    [v50 setFrame_];

    (v68)(a2, a3);
    v81.origin.x = v48;
    v81.origin.y = v49;
    v81.size.width = v32;
    v81.size.height = v32;
    CGRectGetWidth(v81);
    v82.origin.x = v48;
    v82.origin.y = v49;
    v82.size.width = v32;
    v82.size.height = v32;
    CGRectGetHeight(v82);
    swift_getAssociatedConformanceWitness();
    sub_1E1AF116C();
    v33(v19, AssociatedTypeWitness);
    v51 = *(a3 + 72);
    v52 = v51(a2, a3);
    v53 = [a1 traitCollection];
    [v53 layoutDirection];

    [v52 setFrame_];
    v46 = (*(a3 + 64))(a2, a3);
    v47 = v51(a2, a3);
  }

  else
  {
    v66 = v8;
    if (v31)
    {
      if (v31 != 1)
      {
        v74.origin.x = a4;
        v74.origin.y = a5;
        v74.size.width = a6;
        v74.size.height = a7;
        CGRectGetMaxX(v74);
      }
    }

    else
    {
      v77.origin.x = a4;
      v77.origin.y = a5;
      v77.size.width = a6;
      v77.size.height = a7;
      CGRectGetMidX(v77);
    }

    v78.origin.x = a4;
    v78.origin.y = a5;
    v78.size.width = a6;
    v78.size.height = a7;
    CGRectGetMidY(v78);
    (v68)(a2, a3);
    v64 = COERCE_DOUBLE(swift_getAssociatedConformanceWitness());
    sub_1E1AF116C();
    v26(v19, AssociatedTypeWitness);
    v65 = *(a3 + 72);
    v37 = (*&v65)(a2, a3);
    (v68)(a2, a3);
    sub_1E1AF115C();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v26(v19, AssociatedTypeWitness);
    [v37 setFrame_];

    v46 = (*(a3 + 64))(a2, a3);
    v47 = (*&v65)(a2, a3);
  }

  [v47 frame];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;

  [v46 setFrame_];
  return _s11AppStoreKit23RedownloadConfigurationV7reapply8colorsToyx_tAA23ConfigurableOfferButtonRzlF_0(a1, a2, a3);
}

void sub_1E16FD0F8(uint64_t a1)
{
  type metadata accessor for OfferButtonMetrics(319);
  if (v1 <= 0x3F)
  {
    sub_1E16FD19C(319);
    if (v2 <= 0x3F)
    {
      sub_1E16FD1F8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E16FD19C(uint64_t a1)
{
  if (!qword_1EE1D97B8)
  {
    v2 = sub_1E148BF48();
    v4 = type metadata accessor for AccessibilityConditional(a1, &type metadata for OfferButtonPresenterViewAlignment, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EE1D97B8);
    }
  }
}

void sub_1E16FD1F8(uint64_t a1)
{
  if (!qword_1EE1D22C8)
  {
    sub_1E1355E88();
    v1 = sub_1E1AF6D9C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE1D22C8);
    }
  }
}

uint64_t BootstrapView.init(bootstrap:contentBuilder:working:failed:isBootstrapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  v34 = a7;
  v35 = a8;
  v33 = a6;
  v32 = a11;
  v31[0] = a12;
  v31[1] = a13;
  v21 = sub_1E1AF0C5C();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = a12;
  v36[1] = a13;
  v37 = a14;
  v38 = a15;
  v24 = type metadata accessor for BootstrapView(0, v36);
  sub_1E1AF0C4C();
  sub_1E16FD3F4(v23);
  swift_unknownObjectWeakInit();
  result = sub_1E16FD4EC(a1, a9);
  v26 = (a9 + v24[17]);
  *v26 = a2;
  v26[1] = a3;
  v27 = (a9 + v24[18]);
  *v27 = a4;
  v27[1] = a5;
  v28 = (a9 + v24[19]);
  v29 = v34;
  *v28 = v33;
  v28[1] = v29;
  v30 = a9 + v24[20];
  *v30 = v35;
  *(v30 + 8) = a10;
  *(v30 + 16) = v32;
  return result;
}

uint64_t sub_1E16FD3F4(uint64_t a1)
{
  v3 = sub_1E1AF0C5C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v5);
  sub_1E1AF2BEC();
  return (*(v4 + 8))(a1, v3);
}

uint64_t sub_1E16FD4EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Bootstrap(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t BootstrapView.init<>(bootstrap:contentBuilder:isBootstrapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26 = a4;
  v17 = type metadata accessor for Bootstrap(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E16FD690(a1, v19);
  v20 = sub_1E16FD734();
  v21 = sub_1E16FD788();
  *&v24 = &type metadata for DefaultBootstrapErrorView;
  *(&v24 + 1) = a8;
  *&v23 = a7;
  *(&v23 + 1) = &type metadata for DefaultBootstrapLoadingView;
  BootstrapView.init(bootstrap:contentBuilder:working:failed:isBootstrapping:)(v19, a2, a3, nullsub_5, 0, sub_1E16FD6F4, 0, v26, a9, a5, a6, v23, v24, v20, v21);
  return sub_1E16FD7DC(a1);
}

uint64_t sub_1E16FD690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Bootstrap(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E16FD6F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  v4 = a1;
}

unint64_t sub_1E16FD734()
{
  result = qword_1ECEB7FD0;
  if (!qword_1ECEB7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7FD0);
  }

  return result;
}

unint64_t sub_1E16FD788()
{
  result = qword_1ECEB7FD8;
  if (!qword_1ECEB7FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7FD8);
  }

  return result;
}

uint64_t sub_1E16FD7DC(uint64_t a1)
{
  v2 = type metadata accessor for Bootstrap(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DefaultBootstrapErrorView.init(error:retry:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t BootstrapView.init<A>(bootstrap:tabsInfoProvider:customDependencies:appContentView:isBootstrapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v29 = a7;
  v30 = a8;
  v27 = a9;
  v28 = a10;
  v18 = type metadata accessor for Bootstrap(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E16FD690(a1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = a11;
  *(v21 + 24) = a12;
  v22 = *(a2 + 16);
  *(v21 + 32) = *a2;
  *(v21 + 48) = v22;
  *(v21 + 64) = *(a2 + 32);
  *(v21 + 80) = *(a2 + 48);
  *(v21 + 88) = a3;
  *(v21 + 96) = a4;
  *(v21 + 104) = a5;
  *(v21 + 112) = a6;
  v24 = type metadata accessor for AppView(0, a11, a12, v23);
  WitnessTable = swift_getWitnessTable();
  BootstrapView.init<>(bootstrap:contentBuilder:isBootstrapping:)(v20, sub_1E16FDB90, v21, v29, v30, v28, v24, WitnessTable, v27);
  return sub_1E16FD7DC(a1);
}

uint64_t sub_1E16FD9AC@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X6>, uint64_t a4@<X7>, __int128 *a5@<X8>, uint64_t a6@<X2>, uint64_t a7@<X3>, uint64_t a8@<X4>, uint64_t a9@<X5>)
{
  v12 = a1[1];
  v13 = a1[2];
  *&v29 = *a1;
  *(&v29 + 1) = v12;
  *&v30 = v13;
  v14 = a2[1];
  v36 = *a2;
  v37 = v14;
  v38 = a2[2];
  *&v39 = *(a2 + 6);
  AppView.init(bootstrapResult:tabsInfoProvider:customDependencies:content:)(&v29, &v36, a6, a7, a8, a9, &v43);
  v16 = type metadata accessor for AppView(0, a3, a4, v15);
  swift_getWitnessTable();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v18(&v29, &v43, v16);
  v40 = v47;
  v41 = v48;
  v42 = v49;
  v36 = v43;
  v37 = v44;
  v38 = v45;
  v39 = v46;

  sub_1E170113C(a2, &v22);
  v19 = *(v17 + 8);

  v19(&v36, v16);
  v26 = v33;
  v27 = v34;
  v28 = v35;
  v22 = v29;
  v23 = v30;
  v24 = v31;
  v25 = v32;
  v18(a5, &v22, v16);
  v47 = v26;
  v48 = v27;
  v49 = v28;
  v43 = v22;
  v44 = v23;
  v45 = v24;
  v46 = v25;
  return (v19)(&v43, v16);
}

uint64_t BootstrapView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v86 = a2;
  v85 = sub_1E1AF649C();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *(a1 - 8);
  v5 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v64 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v64 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FE0, &qword_1E1B2B680);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v70 = &v64 - v13;
  sub_1E1AF21EC();
  v96 = *(a1 + 16);
  v14 = v96;
  v15 = sub_1E1AF229C();
  v89 = *(a1 + 40);
  v16 = v89;
  v82 = sub_1E1700064(&qword_1ECEB74A0, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
  v107 = v16;
  v108 = v82;
  v81 = MEMORY[0x1E697E858];
  v73 = v15;
  WitnessTable = swift_getWitnessTable();
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v101 = &type metadata for BootstrapResult;
  v102 = v15;
  v104 = WitnessTable;
  v105 = v17;
  v19 = v17;
  v106 = v18;
  v20 = v18;
  v21.i64[0] = v14;
  v92 = v21;
  v98 = *(a1 + 24);
  v103 = v98;
  v75 = sub_1E1AF0D9C();
  v80 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v71 = &v64 - v22;
  v79 = sub_1E1AF229C();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v74 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v76 = &v64 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FE8, &qword_1E1B2B690);
  v26 = v2;
  sub_1E1AF2C1C();
  v27 = v97;
  v28 = *(v97 + 16);
  v93 = v97 + 16;
  v94 = v28;
  v28(v11, v2, a1);
  v95 = *(v27 + 80);
  v29 = v27;
  v30 = (v95 + 64) & ~v95;
  v31 = swift_allocObject();
  v69 = v31;
  *&v32 = vdupq_laneq_s64(v98, 1).u64[0];
  v33 = v89;
  *(&v32 + 1) = v89;
  *(v31 + 16) = vzip1q_s64(v92, v98);
  *(v31 + 32) = v32;
  v67 = v19;
  *(v31 + 48) = v19;
  *(v31 + 56) = v20;
  v87 = v20;
  v34 = *(v29 + 32);
  v97 = v29 + 32;
  v92.i64[0] = v34;
  v91 = a1;
  v34(v31 + v30, v11, a1);
  v35 = v11;
  v68 = v11;
  v88 = v26;
  v94(v11, v26, a1);
  v66 = v5;
  v36 = swift_allocObject();
  v37 = v96;
  *(v36 + 16) = v96;
  *(v36 + 24) = v98;
  *(v36 + 40) = v33;
  *(v36 + 48) = v19;
  *(v36 + 56) = v20;
  v38 = v91;
  (v92.i64[0])(v36 + v30, v35, v91);
  v39 = v94;
  v94(v90, v26, v38);
  v65 = v30;
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  *(v40 + 24) = v98;
  v41 = v67;
  *(v40 + 40) = v33;
  *(v40 + 48) = v41;
  *(v40 + 56) = v87;
  v42 = v91;
  v43 = v92.i64[0];
  (v92.i64[0])(v40 + v30, v90, v91);
  v44 = v77;
  v39(v77, v88, v42);
  v45 = v65;
  v46 = swift_allocObject();
  *(v46 + 16) = v96;
  *(v46 + 24) = v98;
  *(v46 + 40) = v33;
  *(v46 + 48) = v41;
  v47 = v87;
  *(v46 + 56) = v87;
  v48 = v44;
  v49 = v91;
  v43(v46 + v45, v48, v91);
  v50 = v47;
  v51 = v71;
  sub_1E1AF0DAC();
  v52 = v68;
  v94(v68, v88, v49);
  v53 = swift_allocObject();
  *(v53 + 16) = v96;
  *(v53 + 24) = v98;
  *(v53 + 40) = v89;
  *(v53 + 48) = v41;
  *(v53 + 56) = v50;
  (v92.i64[0])(v53 + v45, v52, v49);
  v54 = v75;
  v55 = swift_getWitnessTable();
  v56 = v83;
  sub_1E1AF645C();
  v57 = v74;
  sub_1E1AF2A3C();

  (*(v84 + 8))(v56, v85);
  (*(v80 + 8))(v51, v54);
  v99 = v55;
  v100 = v82;
  v58 = v79;
  swift_getWitnessTable();
  v59 = v78;
  v60 = *(v78 + 16);
  v61 = v76;
  v60(v76, v57, v58);
  v62 = *(v59 + 8);
  v62(v57, v58);
  v60(v86, v61, v58);
  return (v62)(v61, v58);
}

uint64_t sub_1E16FE538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[8] = a1;
  v8[9] = a2;
  sub_1E1AF644C();
  v8[16] = sub_1E1AF643C();
  v10 = sub_1E1AF63CC();
  v8[17] = v10;
  v8[18] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E16FE5DC, v10, v9);
}

uint64_t sub_1E16FE5DC()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  v2 = *(v0 + 112);
  *(v0 + 32) = v1;
  *(v0 + 48) = v2;
  type metadata accessor for BootstrapView(0, v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 152) = Strong;
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_1E16FE6AC;
  v5 = *(v0 + 64);

  return Bootstrap.run(rootViewController:)(v5, Strong);
}

uint64_t sub_1E16FE6AC()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_1E16FE82C;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_1E16FE7C8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E16FE7C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E16FE82C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E16FE89C(uint64_t a1)
{
  v3 = v2;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v3[2] = v5;
  v3[3] = v6;
  v3[4] = v7;
  v3[5] = v8;
  v3[6] = v9;
  v3[7] = v10;
  v11 = *(type metadata accessor for BootstrapView(0, (v3 + 2)) - 8);
  v12 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  v3[8] = v13;
  *v13 = v3;
  v13[1] = sub_1E1378044;

  return sub_1E16FE538(a1, v1 + v12, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1E16FE9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - v10;
  v22[0] = v12;
  v22[1] = v13;
  v22[2] = v14;
  v22[3] = v15;
  v22[4] = v16;
  v22[5] = v17;
  v18 = type metadata accessor for BootstrapView(0, v22);
  (*(a1 + *(v18 + 72)))();
  v19 = *(v6 + 16);
  v19(v11, v8, a2);
  v20 = *(v6 + 8);
  v20(v8, a2);
  v19(a3, v11, a2);
  return (v20)(v11, a2);
}

uint64_t sub_1E16FEB34@<X0>(char *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v11[0] = v1[2];
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v8 = *(type metadata accessor for BootstrapView(0, v11) - 8);
  v9 = v1 + ((*(v8 + 80) + 64) & ~*(v8 + 80));

  return sub_1E16FE9CC(v9, v3, a1);
}

uint64_t sub_1E16FEBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v45 = a6;
  v46 = a8;
  v47 = a2;
  v48 = a3;
  v49 = a1;
  v50 = a9;
  v43 = a11;
  v44 = a5;
  v42 = a10;
  v51[0] = a5;
  v51[1] = a6;
  v51[2] = a7;
  v51[3] = a8;
  v51[4] = a10;
  v51[5] = a11;
  v13 = type metadata accessor for BootstrapView(0, v51);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v40 - v16;
  v18 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v40 - v24;
  v27 = (a4 + *(v26 + 76));
  v28 = *v27;
  v40[1] = v27[1];
  v41 = v28;
  (*(v14 + 16))(v17, a4, v13, v23);
  v29 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v30 = (v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v45;
  *(v31 + 2) = v44;
  *(v31 + 3) = v32;
  v33 = v46;
  *(v31 + 4) = a7;
  *(v31 + 5) = v33;
  v34 = v43;
  *(v31 + 6) = v42;
  *(v31 + 7) = v34;
  (*(v14 + 32))(&v31[v29], v17, v13);
  v35 = &v31[v30];
  v36 = v48;
  *v35 = v47;
  v35[1] = v36;

  v41(v49, sub_1E170105C, v31);

  v37 = *(v18 + 16);
  v37(v25, v21, a7);
  v38 = *(v18 + 8);
  v38(v21, a7);
  v37(v50, v25, a7);
  return (v38)(v25, a7);
}

uint64_t sub_1E16FEEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v13 = v4[6];
  v12 = v4[7];
  v17[0] = v4[2];
  v8 = v17[0];
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  v17[4] = v13;
  v17[5] = v12;
  v14 = *(type metadata accessor for BootstrapView(0, v17) - 8);
  return sub_1E16FEBF8(a1, a2, a3, v4 + ((*(v14 + 80) + 64) & ~*(v14 + 80)), v8, v9, v10, v11, a4, v13, v12);
}

uint64_t sub_1E16FEF80(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = sub_1E1AF0C5C();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a8;
  v18[5] = a9;
  type metadata accessor for BootstrapView(0, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FE8, &qword_1E1B2B690);
  sub_1E1AF2BFC();
  sub_1E1AF0C3C();
  v16 = sub_1E1AF2C0C();
  return a2(v16);
}

uint64_t sub_1E16FF090@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v52 = a7;
  v53 = a8;
  v49 = a6;
  v50 = a5;
  v51 = a4;
  v48 = a2;
  v46 = a1;
  v58 = a9;
  v15 = sub_1E1AF649C();
  v56 = *(v15 - 8);
  v57 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v61 = a3;
  *(&v61 + 1) = a4;
  v62 = a5;
  v63 = a6;
  v64 = a7;
  v65 = a8;
  v17 = type metadata accessor for BootstrapView(0, &v61);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v45 - v19;
  v54 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF21EC();
  v24 = sub_1E1AF229C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v45 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v47 = &v45 - v28;
  v29 = *(v46 + 2);
  v30 = v48;
  v31 = *(v48 + *(v17 + 68));
  v61 = *v46;
  v62 = v29;
  v31(&v61);
  (*(v18 + 16))(v20, v30, v17);
  v32 = (*(v18 + 80) + 64) & ~*(v18 + 80);
  v33 = swift_allocObject();
  v34 = v50;
  v35 = v51;
  *(v33 + 2) = a3;
  *(v33 + 3) = v35;
  v36 = v49;
  *(v33 + 4) = v34;
  *(v33 + 5) = v36;
  v37 = v53;
  *(v33 + 6) = v52;
  *(v33 + 7) = v37;
  (*(v18 + 32))(&v33[v32], v20, v17);
  v38 = v55;
  sub_1E1AF645C();
  v39 = v45;
  sub_1E1AF2A3C();

  (*(v56 + 8))(v38, v57);
  (*(v54 + 8))(v23, a3);
  v40 = sub_1E1700064(&qword_1ECEB74A0, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
  v59 = v36;
  v60 = v40;
  swift_getWitnessTable();
  v41 = *(v25 + 16);
  v42 = v47;
  v41(v47, v39, v24);
  v43 = *(v25 + 8);
  v43(v39, v24);
  v41(v58, v42, v24);
  return (v43)(v42, v24);
}

uint64_t sub_1E16FF518@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v14[0] = v2[2];
  v5 = v14[0];
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v10;
  v11 = *(type metadata accessor for BootstrapView(0, v14) - 8);
  v12 = v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80));

  return sub_1E16FF090(a1, v12, v5, v6, v7, v8, v9, v10, a2);
}

uint64_t sub_1E16FF5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  sub_1E1AF644C();
  v7[15] = sub_1E1AF643C();
  v9 = sub_1E1AF63CC();

  return MEMORY[0x1EEE6DFA0](sub_1E16FF690, v9, v8);
}

uint64_t sub_1E16FF690()
{
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);
  v4 = *(v0 + 104);

  *(v0 + 16) = v6;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  v1 = type metadata accessor for BootstrapView(0, v0 + 16);
  sub_1E16FDBA4(0, v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E16FF730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v7[2] = a2;
  v7[14] = a1;
  v7[3] = a3;
  v7[4] = a4;
  v7[5] = a5;
  v7[6] = a6;
  v7[7] = a7;
  v8 = type metadata accessor for BootstrapView(0, (v7 + 2));
  v7[21] = v8;
  v9 = *(v8 - 8);
  v7[22] = v9;
  v7[23] = *(v9 + 64);
  v7[24] = swift_task_alloc();
  sub_1E1AF644C();
  v7[25] = sub_1E1AF643C();
  v11 = sub_1E1AF63CC();

  return MEMORY[0x1EEE6DFA0](sub_1E16FF850, v11, v10);
}

uint64_t sub_1E16FF850()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 168);
  v4 = *(v0 + 112);
  v12 = *(v0 + 136);
  v13 = *(v0 + 120);
  v11 = *(v0 + 152);

  sub_1E16FDBA4(1, v3);
  v5 = [objc_opt_self() sharedCoordinator];
  (*(v2 + 16))(v1, v4, v3);
  v6 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 1) = v13;
  *(v7 + 2) = v12;
  *(v7 + 3) = v11;
  (*(v2 + 32))(&v7[v6], v1, v3);
  *(v0 + 96) = sub_1E1700BA4;
  *(v0 + 104) = v7;
  *(v0 + 64) = MEMORY[0x1E69E9820];
  *(v0 + 72) = 1107296256;
  *(v0 + 80) = sub_1E1302D64;
  *(v0 + 88) = &block_descriptor_55;
  v8 = _Block_copy((v0 + 64));

  [v5 registerAppBootstrapHandler_];
  _Block_release(v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1E16FFA28()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[7] = v7;
  v8 = *(type metadata accessor for BootstrapView(0, (v1 + 2)) - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  v1[8] = v10;
  *v10 = v1;
  v10[1] = sub_1E170119C;

  return sub_1E16FF730(v0 + v9, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1E16FFB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1E1AF0C5C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  if (qword_1ECEB0FD8 != -1)
  {
    swift_once();
  }

  v12 = sub_1E1AF591C();
  __swift_project_value_buffer(v12, qword_1ECEF46E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v13 = type metadata accessor for BootstrapView(0, v17);
  sub_1E16FDBA4(1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FE8, &qword_1E1B2B690);
  sub_1E1AF2BFC();
  sub_1E1AF0C3C();
  return sub_1E1AF2C0C();
}

uint64_t BootstrapView.with(rootViewController:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, v3, a2);

  return swift_unknownObjectWeakAssign();
}

uint64_t DefaultBootstrapLoadingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v10[0] = sub_1E1AF25EC();
  v1 = *(v10[0] - 8);
  MEMORY[0x1EEE9AC00](v10[0]);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FF0, &qword_1E1B2B6B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FF8, &qword_1E1B2B6B8);
  sub_1E1302CD4(&qword_1ECEB8000, &qword_1ECEB7FF8, &qword_1E1B2B6B8, MEMORY[0x1E69E3A78]);
  sub_1E1AF22AC();
  sub_1E1AF25DC();
  sub_1E1302CD4(&qword_1ECEB8008, &qword_1ECEB7FF0, &qword_1E1B2B6B0, MEMORY[0x1E697C1A8]);
  sub_1E1700064(&qword_1ECEB8010, MEMORY[0x1E697C938], MEMORY[0x1E697C930]);
  v8 = v10[0];
  sub_1E1AF296C();
  (*(v1 + 8))(v3, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E1700064(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E17000AC@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v10[0] = sub_1E1AF25EC();
  v1 = *(v10[0] - 8);
  MEMORY[0x1EEE9AC00](v10[0]);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FF0, &qword_1E1B2B6B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FF8, &qword_1E1B2B6B8);
  sub_1E1302CD4(&qword_1ECEB8000, &qword_1ECEB7FF8, &qword_1E1B2B6B8, MEMORY[0x1E69E3A78]);
  sub_1E1AF22AC();
  sub_1E1AF25DC();
  sub_1E1302CD4(&qword_1ECEB8008, &qword_1ECEB7FF0, &qword_1E1B2B6B0, MEMORY[0x1E697C1A8]);
  sub_1E1700064(&qword_1ECEB8010, MEMORY[0x1E697C938], MEMORY[0x1E697C930]);
  v8 = v10[0];
  sub_1E1AF296C();
  (*(v1 + 8))(v3, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t DefaultBootstrapErrorView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v2 = sub_1E1AF25EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8018, &qword_1E1B2B6C0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - v8;
  v10 = *(v1 + 2);
  v13 = *v1;
  v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8020, &qword_1E1B2B6C8);
  sub_1E1302CD4(&qword_1ECEB8028, &qword_1ECEB8020, &qword_1E1B2B6C8, MEMORY[0x1E69E3A88]);
  sub_1E1AF22AC();
  sub_1E1AF25DC();
  sub_1E1302CD4(qword_1ECEB8030, &qword_1ECEB8018, &qword_1E1B2B6C0, MEMORY[0x1E697C1A8]);
  sub_1E1700064(&qword_1ECEB8010, MEMORY[0x1E697C938], MEMORY[0x1E697C930]);
  sub_1E1AF296C();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1E1700624@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v2 = sub_1E1AF25EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8018, &qword_1E1B2B6C0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - v8;
  v10 = *(v1 + 2);
  v13 = *v1;
  v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8020, &qword_1E1B2B6C8);
  sub_1E1302CD4(&qword_1ECEB8028, &qword_1ECEB8020, &qword_1E1B2B6C8, MEMORY[0x1E69E3A88]);
  sub_1E1AF22AC();
  sub_1E1AF25DC();
  sub_1E1302CD4(qword_1ECEB8030, &qword_1ECEB8018, &qword_1E1B2B6C0, MEMORY[0x1E697C1A8]);
  sub_1E1700064(&qword_1ECEB8010, MEMORY[0x1E697C938], MEMORY[0x1E697C930]);
  sub_1E1AF296C();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_1E17008AC(uint64_t a1)
{
  type metadata accessor for Bootstrap(319);
  if (v1 <= 0x3F)
  {
    sub_1E1300784();
    if (v2 <= 0x3F)
    {
      sub_1E170099C();
      if (v3 <= 0x3F)
      {
        sub_1E17009EC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E170099C()
{
  if (!qword_1ECEB80B8)
  {
    v0 = sub_1E1AF2C9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECEB80B8);
    }
  }
}

void sub_1E17009EC(uint64_t a1)
{
  if (!qword_1ECEB80C0)
  {
    sub_1E1AF0C5C();
    v1 = sub_1E1AF2C2C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECEB80C0);
    }
  }
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE010navigationC5StyleyQrqd__AA010NavigationcE0Rd__lFQOyAA0F5StackVyAA0F4PathV011_JetEngine_aB007LoadingC0VyAA4TextVGG_AA0gfcE0VQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_1E1AF25EC();
  sub_1E1302CD4(a4, a2, a3, MEMORY[0x1E697C1A8]);
  sub_1E1700064(&qword_1ECEB8010, MEMORY[0x1E697C938], MEMORY[0x1E697C930]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E1700B44()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v1;

  return MEMORY[0x1EEE5F740](v1, v2, v3);
}

uint64_t sub_1E1700BA4()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v10[0] = v0[2];
  v1 = v10[0];
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v5;
  v10[5] = v6;
  v7 = *(type metadata accessor for BootstrapView(0, v10) - 8);
  v8 = v0 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_1E16FFB44(v8, v1, v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_2Tm_2()
{
  v1 = v0[2];
  v16[0] = v0[1];
  v16[1] = v1;
  v16[2] = v0[3];
  v2 = type metadata accessor for BootstrapView(0, v16);
  v3 = v0 + ((*(*(v2 - 8) + 80) + 64) & ~*(*(v2 - 8) + 80));

  v4 = &v3[*(type metadata accessor for Bootstrap(0) + 20)];
  v5 = type metadata accessor for ASKBootstrapV2(0);
  v6 = v5[5];
  v7 = sub_1E1AF537C();
  (*(*(v7 - 8) + 8))(&v4[v6], v7);
  __swift_destroy_boxed_opaque_existential_1(&v4[v5[7]]);
  v8 = &v4[v5[8]];
  if (*(v8 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  if (*&v4[v5[9]])
  {
  }

  v9 = v5[13];
  v10 = sub_1E1AEFCCC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(&v4[v9], 1, v10))
  {
    (*(v11 + 8))(&v4[v9], v10);
  }

  v12 = &v4[v5[14]];
  if (*(v12 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  v13 = &v3[*(v2 + 84)];
  v14 = sub_1E1AF0C5C();
  (*(*(v14 - 8) + 8))(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7FE8, &qword_1E1B2B690);

  MEMORY[0x1E6901750](&v3[*(v2 + 88)]);
  return swift_deallocObject();
}

uint64_t sub_1E1700F40()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[7] = v7;
  v8 = *(type metadata accessor for BootstrapView(0, (v1 + 2)) - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  v1[8] = v10;
  *v10 = v1;
  v10[1] = sub_1E1378044;

  return sub_1E16FF5EC(v0 + v9, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1E170105C()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v11[0] = v0[2];
  v1 = v11[0];
  v11[1] = v2;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v5;
  v11[5] = v6;
  v7 = *(type metadata accessor for BootstrapView(0, v11) - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1E16FEF80(v0 + v8, *v9, *(v9 + 1), v1, v2, v3, v4, v5, v6);
}

__n128 AppView.init(bootstrapResult:tabsInfoProvider:customDependencies:content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = *a1;
  v7 = *(a2 + 16);
  *(a7 + 24) = *a2;
  v8 = *(a2 + 48);
  *(a7 + 16) = *(a1 + 16);
  *(a7 + 40) = v7;
  result = *(a2 + 32);
  *(a7 + 56) = result;
  *(a7 + 72) = v8;
  *(a7 + 80) = a3;
  *(a7 + 88) = a4;
  *(a7 + 96) = a5;
  *(a7 + 104) = a6;
  return result;
}

uint64_t AppView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v40 = sub_1E1AF0C2C();
  v4 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = type metadata accessor for AppView.LoadedView(255, v6, v7, v8);
  v10 = sub_1E1AF0BFC();
  v11 = sub_1E1AF0BDC();
  v42 = v9;
  WitnessTable = swift_getWitnessTable();
  v41 = WitnessTable;
  v13 = sub_1E170361C(&qword_1ECEB80D0, MEMORY[0x1E69E3A58], MEMORY[0x1E69E3A50]);
  v14 = sub_1E170361C(qword_1ECEB80D8, MEMORY[0x1E69E3A48], MEMORY[0x1E69E3A40]);
  *&v45 = v9;
  *(&v45 + 1) = v10;
  *&v46 = v11;
  *(&v46 + 1) = WitnessTable;
  *&v47 = v13;
  *(&v47 + 1) = v14;
  v15 = sub_1E1AF0C1C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  v22 = v2[5];
  v49 = v2[4];
  v50 = v22;
  v51 = v2[6];
  v23 = v2[1];
  v45 = *v2;
  v46 = v23;
  v24 = v2[3];
  v47 = v2[2];
  v48 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9480, &qword_1E1B2B8A0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1E1B02CC0;
  *(v25 + 32) = sub_1E1AF539C();
  v26 = v39;
  *v39 = v25;
  (*(v4 + 104))(v26, *MEMORY[0x1E69E3A68], v40);
  v27 = swift_allocObject();
  *(v27 + 16) = v6;
  *(v27 + 24) = v7;
  v28 = v50;
  *(v27 + 96) = v49;
  *(v27 + 112) = v28;
  *(v27 + 128) = v51;
  v29 = v46;
  *(v27 + 32) = v45;
  *(v27 + 48) = v29;
  v30 = v48;
  *(v27 + 64) = v47;
  *(v27 + 80) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = v6;
  *(v31 + 24) = v7;
  v32 = v50;
  *(v31 + 96) = v49;
  *(v31 + 112) = v32;
  *(v31 + 128) = v51;
  v33 = v46;
  *(v31 + 32) = v45;
  *(v31 + 48) = v33;
  v34 = v48;
  *(v31 + 64) = v47;
  *(v31 + 80) = v34;
  v35 = *(*(a1 - 8) + 16);
  v35(v44, &v45, a1);
  v35(v44, &v45, a1);
  sub_1E1AF20CC();
  sub_1E1701CBC(v26, sub_1E1701834, v27, sub_1E1701B2C, v31, v18);
  swift_getWitnessTable();
  sub_1E1701198();
  v36 = *(v16 + 8);
  v36(v18, v15);
  sub_1E1701198();
  return (v36)(v21, v15);
}

uint64_t sub_1E170165C(uint64_t (**a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF361C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for FlowAuthorityProvider(0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = *(a1 + 5);
  *(v10 + 96) = *(a1 + 4);
  *(v10 + 112) = v11;
  *(v10 + 128) = *(a1 + 6);
  v12 = *(a1 + 1);
  *(v10 + 32) = *a1;
  *(v10 + 48) = v12;
  v13 = *(a1 + 3);
  *(v10 + 64) = *(a1 + 2);
  *(v10 + 80) = v13;
  v15 = type metadata accessor for AppView(0, a2, a3, v14);
  (*(*(v15 - 8) + 16))(v19, a1, v15);
  v16 = sub_1E1AF35EC();
  a1[10](v16);
  sub_1E1AF41CC();
  v17 = sub_1E1AF41EC();

  (*(v7 + 8))(v9, v6);
  return v17;
}

uint64_t sub_1E1701840@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11[0] = *(a1 + 24);
  v3 = *(a1 + 56);
  v11[1] = *(a1 + 40);
  v11[2] = v3;
  v12 = *(a1 + 72);
  v4 = *(a1 + 40);
  v9[0] = *(a1 + 24);
  v9[1] = v4;
  v9[2] = *(a1 + 56);
  v10 = *(a1 + 72);
  sub_1E1AF421C();
  sub_1E170113C(v11, v8);
  v5 = sub_1E1AF41FC();
  type metadata accessor for FlowAuthorityProvider(0);
  swift_allocObject();
  v6 = sub_1E1AB56A8(v9, v5);

  *a2 = v6;
  return result;
}

uint64_t sub_1E1701900@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a1;
  v21 = a4;
  v23 = a5;
  v8 = type metadata accessor for AppView.LoadedView(0, a3, a4, a4);
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  sub_1E1701B38(a2, a1, &v24);
  v14 = *(a2 + 13);
  v19 = *(a2 + 12);
  v15 = *(a2 + 1);
  type metadata accessor for FlowAuthorityProvider(0);

  sub_1E1AF416C();
  sub_1E1701BA8(&v24, v19, v14, v15, a3, v21, v10);

  swift_getWitnessTable();
  sub_1E1701198();
  v16 = *(v22 + 8);
  v16(v10, v8);
  sub_1E1701198();
  return (v16)(v13, v8);
}

uint64_t sub_1E1701B38@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 2);
  v5 = v9;
  *a3 = v8;
  *(a3 + 16) = v5;
  sub_1E17039D0(&v8, v7);

  *a3 = a2;
  return result;
}

uint64_t sub_1E1701BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v9;
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  *(a8 + 40) = a4;
  v10 = type metadata accessor for AppView.LoadedView(0, a6, a7, a4);
  sub_1E170361C(&qword_1ECEB8228, type metadata accessor for FlowAuthorityProvider, &protocol conformance descriptor for FlowAuthorityProvider);
  sub_1E1AF2CDC();
  v11 = *(v10 + 48);
  *(a8 + v11) = swift_getKeyPath(aP_5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8220, &qword_1E1B2BA38);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E1701CBC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a9@<X8>)
{
  v15[1] = a6;
  v15[2] = a5;
  v15[4] = a3;
  v15[5] = a4;
  v15[3] = a9;
  v10 = sub_1E1AF0C2C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  (*(v11 + 16))(v13, a1, v10);
  sub_1E1AF20CC();
  sub_1E1AF0BFC();
  sub_1E1AF0BDC();
  sub_1E170361C(&qword_1ECEB80D0, MEMORY[0x1E69E3A58], MEMORY[0x1E69E3A50]);
  sub_1E170361C(qword_1ECEB80D8, MEMORY[0x1E69E3A48], MEMORY[0x1E69E3A40]);
  sub_1E1AF0C0C();
  return (*(v11 + 8))(a1, v10);
}

uint64_t sub_1E1701F0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8160, &qword_1E1B2B9A8);
  sub_1E1AF2CCC();
  swift_getKeyPath(byte_1E1B2BA40);
  sub_1E170361C(&qword_1ECEB8228, type metadata accessor for FlowAuthorityProvider, &protocol conformance descriptor for FlowAuthorityProvider);
  sub_1E1AF04EC();

  swift_beginAccess();
  sub_1E134E724(v2[0] + 16, v2);

  v0 = sub_1E1702014();
  sub_1E134B88C(v2);
  return v0;
}

uint64_t sub_1E1702014()
{
  sub_1E134E724(v0, v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  NavigationTab.init(rawValue:)(v11);
  if (LOBYTE(v12[0]) <= 4u)
  {
    v1 = 0xE500000000000000;
    v2 = 0x7265666E69;
    v3 = 0xE500000000000000;
    v4 = 0x7961646F74;
    v5 = 0xE400000000000000;
    v6 = 1936748641;
    if (LOBYTE(v12[0]) != 3)
    {
      v6 = 0x73656D6167;
      v5 = 0xE500000000000000;
    }

    if (LOBYTE(v12[0]) != 2)
    {
      v4 = v6;
      v3 = v5;
    }

    if (LOBYTE(v12[0]))
    {
      v2 = 0x64657463656C6573;
      v1 = 0xE800000000000000;
    }

    if (LOBYTE(v12[0]) <= 1u)
    {
      v7 = v2;
    }

    else
    {
      v7 = v4;
    }

    if (LOBYTE(v12[0]) <= 1u)
    {
      v8 = v1;
    }

    else
    {
      v8 = v3;
    }

    goto LABEL_24;
  }

  if (LOBYTE(v12[0]) <= 6u)
  {
    v7 = 0x686372616573;
    if (LOBYTE(v12[0]) == 5)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v7 = 0x73657461647075;
      v8 = 0xE700000000000000;
    }

    goto LABEL_24;
  }

  if (LOBYTE(v12[0]) == 7)
  {
    v8 = 0xE600000000000000;
    v7 = 0x656461637261;
    goto LABEL_24;
  }

  if (LOBYTE(v12[0]) != 8)
  {
    return 0;
  }

  v8 = 0xE700000000000000;
  v7 = 0x676E6964616F6CLL;
LABEL_24:
  v12[0] = v7;
  v12[1] = v8;
  sub_1E13B8AA4();
  v10 = sub_1E1AF6DDC();

  return v10;
}

uint64_t sub_1E17021C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v3 = sub_1E1AF6A6C();
  v94 = v3;
  v104 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v103 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = *(a1 - 8);
  v108 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = *(a1 + 16);
  v79 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF229C();
  v99 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v10 = *(a1 + 24);
  v110 = &v73 - v11;
  v111 = v10;
  v120 = v10;
  v121 = MEMORY[0x1E69805D0];
  WitnessTable = swift_getWitnessTable();
  v13 = MEMORY[0x1E69E69B8];
  v114 = v9;
  v115 = MEMORY[0x1E69E69B8];
  v80 = v9;
  v14 = MEMORY[0x1E69E69C8];
  v116 = WitnessTable;
  v117 = MEMORY[0x1E69E69C8];
  v81 = WitnessTable;
  v15 = MEMORY[0x1E6981440];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = OpaqueTypeMetadata2;
  v102 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v109 = &v73 - v17;
  v18 = sub_1E170361C(&qword_1ECEB8208, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  v95 = v18;
  v114 = v9;
  v115 = v13;
  v116 = WitnessTable;
  v117 = v14;
  v96 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v114 = v3;
  v115 = OpaqueTypeMetadata2;
  v116 = v18;
  v117 = OpaqueTypeConformance2;
  v19 = sub_1E1AF22FC();
  v100 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v84 = &v73 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8210, &qword_1E1B2BA30);
  v85 = v19;
  v21 = sub_1E1AF229C();
  v91 = v21;
  v101 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v87 = &v73 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECEB5D40, &unk_1E1B02B90);
  v90 = v23;
  v24 = swift_getWitnessTable();
  v83 = v24;
  v25 = sub_1E1703534();
  v118 = v24;
  v119 = v25;
  v26 = swift_getWitnessTable();
  v89 = v26;
  v88 = sub_1E16610B0();
  v114 = v21;
  v115 = v23;
  v116 = v26;
  v117 = v88;
  v97 = swift_getOpaqueTypeMetadata2();
  v98 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v82 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v86 = &v73 - v29;
  v30 = v112;
  v31 = v112[3];
  v32 = v112[1];
  v33 = v112[2];
  v114 = *v112;
  v115 = v32;
  v116 = v33;

  v34 = v77;
  v31(&v114);

  v35 = v113;
  v36 = *(v113 + 16);
  v76 = v113 + 16;
  v106 = v36;
  v37 = v78;
  v36(v78, v30, a1);
  v75 = *(v35 + 80);
  v38 = (v75 + 32) & ~v75;
  v39 = swift_allocObject();
  v40 = v107;
  v41 = v111;
  *(v39 + 16) = v107;
  *(v39 + 24) = v41;
  v74 = *(v35 + 32);
  v113 = v35 + 32;
  v42 = v37;
  v74(v39 + v38, v37, a1);
  sub_1E1AF2A5C();

  (*(v79 + 8))(v34, v40);
  v43 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8160, &qword_1E1B2B9A8);
  v44 = v112;
  sub_1E1AF2CCC();
  v45 = v114;
  swift_getKeyPath(byte_1E1B2BA40);
  v114 = v45;
  sub_1E170361C(&qword_1ECEB8228, type metadata accessor for FlowAuthorityProvider, &protocol conformance descriptor for FlowAuthorityProvider);
  sub_1E1AF04EC();

  swift_beginAccess();
  sub_1E134E724(v45 + 16, &v114);

  v73 = v43;
  v106(v42, v44, v43);
  v46 = swift_allocObject();
  v47 = v111;
  *(v46 + 16) = v40;
  *(v46 + 24) = v47;
  v48 = v74;
  v74(v46 + v38, v42, v43);
  v49 = v110;
  v50 = v80;
  sub_1E1AF2A6C();

  sub_1E134B88C(&v114);
  (*(v99 + 8))(v49, v50);
  v51 = [objc_opt_self() defaultCenter];
  v52 = v103;
  sub_1E1AF6A7C();

  v53 = v73;
  v106(v42, v112, v73);
  v54 = swift_allocObject();
  v55 = v111;
  *(v54 + 16) = v107;
  *(v54 + 24) = v55;
  v48(v54 + v38, v42, v53);
  v56 = v84;
  v57 = v92;
  v58 = v94;
  v59 = v109;
  sub_1E1AF2A9C();

  (*(v104 + 8))(v52, v58);
  (*(v102 + 8))(v59, v57);
  swift_getKeyPath(aP_6);
  v114 = sub_1E1701F0C();
  v115 = v60;
  v61 = v87;
  v62 = v85;
  sub_1E1AF29AC();

  (*(v100 + 8))(v56, v62);
  v114 = sub_1E1701F0C();
  v115 = v63;
  v64 = v82;
  v65 = v91;
  v66 = v90;
  v67 = v89;
  v68 = v88;
  sub_1E1AF2A6C();

  (*(v101 + 8))(v61, v65);
  v114 = v65;
  v115 = v66;
  v116 = v67;
  v117 = v68;
  swift_getOpaqueTypeConformance2();
  v69 = v86;
  v70 = v97;
  sub_1E1701198();
  v71 = *(v98 + 8);
  v71(v64, v70);
  sub_1E1701198();
  return (v71)(v69, v70);
}

void sub_1E1702E14(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppView.LoadedView(0, a2, a3, a4);
  type metadata accessor for CommerceDialogHandler(0);

  sub_1E1AF413C();

  if (v4)
  {
    CommerceDialogHandler.isActive.setter(1);
  }
}

void sub_1E1702E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = [objc_opt_self() standardUserDefaults];
  type metadata accessor for AppView.LoadedView(0, a4, a5, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8160, &qword_1E1B2B9A8);
  sub_1E1AF2CCC();
  swift_getKeyPath(byte_1E1B2BA40);
  sub_1E170361C(&qword_1ECEB8228, type metadata accessor for FlowAuthorityProvider, &protocol conformance descriptor for FlowAuthorityProvider);
  sub_1E1AF04EC();

  swift_beginAccess();
  sub_1E134E724(*&v10[0] + 16, v9);

  if (swift_dynamicCast())
  {
    sub_1E1AF6F6C();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v11 = 0;
  }

  sub_1E1720488(v10);
}

uint64_t sub_1E1703018(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E1AF3F6C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 40);
  sub_1E163CA70();
  sub_1E1AF3F5C();
  v8 = OBJC_IVAR____TtC11AppStoreKit19JSFreshnessWatchdog_lastForegroundTime;
  swift_beginAccess();
  (*(v4 + 40))(v7 + v8, v6, v3);
  return swift_endAccess();
}

double sub_1E170311C(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = *a2;
    if (qword_1EE1F3430 != -1)
    {
      a1 = swift_once();
    }

    v4 = off_1EE1F3438;
    v8[0] = v3;
    v8[1] = v2;
    MEMORY[0x1EEE9AC00](a1);
    v7[2] = v8;
    v5 = sub_1E14F2168(sub_1E14A937C, v7, &unk_1F5C2D960);
    swift_arrayDestroy();
    if ((v5 & 1) == 0)
    {
      v4[2] = v3;
      v4[3] = v2;
    }
  }

  return result;
}

uint64_t sub_1E170322C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1E170328C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1E17032D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E1703348(uint64_t a1)
{
  sub_1E1300784();
  if (v1 <= 0x3F)
  {
    type metadata accessor for JSFreshnessWatchdog(319);
    if (v3 <= 0x3F)
    {
      sub_1E1703434(319, v2);
      if (v4 <= 0x3F)
      {
        sub_1E170348C(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E1703434(uint64_t a1, double a2)
{
  if (!qword_1ECEB81F0)
  {
    type metadata accessor for FlowAuthorityProvider(255);
    v2 = sub_1E1AF2CEC();
    if (!v3)
    {
      atomic_store(v2, &qword_1ECEB81F0);
    }
  }
}

void sub_1E170348C(uint64_t a1)
{
  if (!qword_1ECEB81F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8200, qword_1E1B2B9C8);
    v1 = sub_1E1AF20BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECEB81F8);
    }
  }
}

unint64_t sub_1E1703534()
{
  result = qword_1ECEB8218;
  if (!qword_1ECEB8218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8210, &qword_1E1B2BA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8218);
  }

  return result;
}

void sub_1E1703598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for AppView.LoadedView(0, v5, v6, a4) - 8);
  v9 = (v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));

  sub_1E1702E14(v9, v5, v6, v7);
}

uint64_t sub_1E170361C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E1703664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for AppView.LoadedView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  sub_1E1702E88(a1, a2, v10, v7, v8);
}

uint64_t objectdestroy_12Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for AppView.LoadedView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = v4 + ((*(*v5 + 80) + 32) & ~*(*v5 + 80));

  v7 = v5[13];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8160, &qword_1E1B2B9A8);
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v5[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8220, &qword_1E1B2BA38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1E1AF0CCC();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v6 + v9, 1, v10))
    {
      (*(v11 + 8))(v6 + v9, v10);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E17038E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for AppView.LoadedView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_1E1703018(a1, v7);
}

uint64_t sub_1E1703970(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;

  return MEMORY[0x1EEE5F6A8](a1, a2, a3);
}

uint64_t BootstrapResult.objectGraph.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t BootstrapResult.metricsPipelineTransformer.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t BootstrapResult.init(objectGraph:freshnessWatchdog:metricsPipelineTransformer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t Bootstrap.run(rootViewController:)(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_1E1AEFE6C();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  sub_1E1AF644C();
  v3[19] = sub_1E1AF643C();
  v6 = sub_1E1AF63CC();
  v3[20] = v6;
  v3[21] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E1703BFC, v6, v5);
}

uint64_t sub_1E1703BFC()
{
  if (qword_1ECEB0FD8 != -1)
  {
    swift_once();
  }

  v1 = sub_1E1AF591C();
  *(v0 + 176) = v1;
  *(v0 + 184) = __swift_project_value_buffer(v1, qword_1ECEF46E8);
  *(v0 + 192) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  v2 = *(sub_1E1AF38EC() - 8);
  *(v0 + 200) = *(v2 + 72);
  *(v0 + 232) = *(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  *v3 = v0;
  v3[1] = sub_1E1703DC8;
  v4 = *(v0 + 112);

  return sub_1E1704738(v4);
}

uint64_t sub_1E1703DC8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_1E1703F84;
  }

  else
  {
    v4[28] = a1;
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_1E1703EF0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E1703EF0()
{
  v1 = v0[28];
  v2 = v0[13];

  sub_1E1704B08(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E1703F84()
{

  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v1 = v0[6];
  v2 = v0[7];
  v0[5] = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_0, v1, v2);
  sub_1E1AF38BC();
  sub_1E1308058((v0 + 2), &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF54AC();

  if (qword_1EE1F9658 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE1F9660;
  [qword_1EE1F9660 lock];
  if (qword_1EE1F9670 != -1)
  {
    swift_once();
  }

  v5 = off_1EE1E1910;
  if (off_1EE1E1910)
  {
    v7 = v0[17];
    v6 = v0[18];
    v8 = v0[16];

    sub_1E1AEFE5C();
    sub_1E1AEFE1C();
    v10 = v9;
    (*(v7 + 8))(v6, v8);
    swift_beginAccess();
    v5[20] = v10;
    *(v5 + 168) = 0;
  }

  [v4 unlock];
  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E17041F8()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEF46E8);
  __swift_project_value_buffer(v4, qword_1ECEF46E8);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

double Bootstrap.init(bagProfile:bagOfflinePolicy:appStateControllerFactory:targetType:objectGraphName:tokenServiceClient:processTreatmentNamespace:prerequisites:jetpackURL:languageSource:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v63 = a7;
  v64 = a8;
  v66 = a5;
  v67 = a6;
  v69 = a3;
  v57 = a15;
  v68 = a14;
  v61 = a12;
  v62 = a13;
  v58 = a11;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v52 - v20;
  v22 = sub_1E1AF537C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a2[1];
  v56 = *a2;
  v55 = v26;
  v54 = *(a2 + 16);
  v53 = *a4;
  v27 = type metadata accessor for Bootstrap(0);
  v28 = *(v27 + 24);
  type metadata accessor for RenderPipelineDiagnostics.Recorder();
  swift_allocObject();
  *(a9 + v28) = RenderPipelineDiagnostics.Recorder.init()();
  v29 = *(v23 + 16);
  v59 = a1;
  v29(v25, a1, v22);
  sub_1E1300B24(v69, v72);
  v60 = v21;
  v30 = v21;
  v31 = v57;
  sub_1E134FD1C(v68, v30, &unk_1ECEB4B60, &unk_1E1B02620);
  sub_1E134FD1C(v31, v70, &qword_1ECEB8230, &unk_1E1B2BB30);
  v32 = *(v27 + 20);
  v65 = a9;
  v33 = a9 + v32;
  v34 = type metadata accessor for ASKBootstrapV2(0);
  v35 = &v33[v34[8]];
  *(v35 + 4) = 0;
  *v35 = 0u;
  *(v35 + 1) = 0u;
  v36 = &v33[v34[9]];
  *v36 = 0;
  v36[1] = 0;
  v29(&v33[v34[5]], v25, v22);
  v37 = v58;
  v38 = &v33[v34[6]];
  v39 = v55;
  *v38 = v56;
  *(v38 + 1) = v39;
  v38[16] = v54;
  *v33 = v53;
  sub_1E1300B24(v72, &v33[v34[7]]);
  v40 = [objc_opt_self() currentProcess];
  if (v37)
  {
    v41 = sub_1E1AF5DBC();
    [v40 setTreatmentNamespace_];
  }

  sub_1E1308058(v31, &qword_1ECEB8230, &unk_1E1B2BB30);
  sub_1E1308058(v68, &unk_1ECEB4B60, &unk_1E1B02620);
  __swift_destroy_boxed_opaque_existential_1(v69);
  v42 = *(v23 + 8);
  v42(v59, v22);
  __swift_destroy_boxed_opaque_existential_1(v72);
  v42(v25, v22);
  *&v33[v34[10]] = v40;
  v43 = &v33[v34[11]];
  v44 = v62;
  *v43 = v61;
  v43[1] = v44;
  v45 = &v33[v34[12]];
  v46 = v64;
  *v45 = v63;
  v45[1] = v46;
  sub_1E137F600(v60, &v33[v34[13]], &unk_1ECEB4B60, &unk_1E1B02620);
  v47 = &v33[v34[14]];
  result = *v70;
  v49 = v70[1];
  *v47 = v70[0];
  *(v47 + 1) = v49;
  *(v47 + 4) = v71;
  v50 = v65;
  v51 = v67;
  *v65 = v66;
  v50[1] = v51;
  return result;
}

uint64_t sub_1E1704738(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E1704758, 0, 0);
}

uint64_t sub_1E1704758()
{
  type metadata accessor for Bootstrap(0);
  *(v0 + 80) = ASKBootstrapV2.start()();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9460, &qword_1E1B2BB58);
  v2 = sub_1E1302CD4(&qword_1ECEB8250, &unk_1ECEB9460, &qword_1E1B2BB58, MEMORY[0x1E69AB658]);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_1E170486C;

  return MEMORY[0x1EEE176B8](v0 + 56, v1, v2);
}

uint64_t sub_1E170486C()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    *(v2 + 104) = *(v2 + 56);

    return MEMORY[0x1EEE6DFA0](sub_1E17049D0, 0, 0);
  }
}

uint64_t sub_1E17049D0()
{
  v2 = v0[12];
  v1 = v0[13];

  sub_1E1AF419C();
  v3 = sub_1E1706714(v1);
  sub_1E17051B0(v0 + 2);
  if (v2)
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[8];
    v7 = sub_1E1706834(v0[13], (v0 + 2), v3, v6);
    sub_1E17074FC(v6, v7);

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v8 = v0[1];

    return v8(v7);
  }
}

uint64_t sub_1E1704B08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v45 = a2;
  v3 = sub_1E1AF539C();
  v38 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF430C();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF4F3C();
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E1AF436C();
  v41 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1E1707738(a1);
  if (qword_1ECEB0FD8 != -1)
  {
    swift_once();
  }

  v12 = sub_1E1AF591C();
  __swift_project_value_buffer(v12, qword_1ECEF46E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  v13 = swift_allocObject();
  v35 = xmmword_1E1B02CC0;
  *(v13 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  type metadata accessor for DiagnosticsReporter(0);
  sub_1E1AF416C();
  v14 = type metadata accessor for Bootstrap(0);
  DiagnosticsReporter.flushRecorder(_:)(*(v37 + *(v14 + 24)));

  sub_1E1707B04(a1);
  type metadata accessor for ASKBagContract(0);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v36 = v11;
  v37 = v47;
  sub_1E1AF55EC();
  static PendingAppLaunch.didFinishLaunch(postEventUsing:topic:)(v11, 0xD000000000000011, 0x80000001E1B5AD20);
  v15 = v42;
  sub_1E1AF416C();
  sub_1E1AF4DFC();
  sub_1E1AF416C();
  v34 = v48;
  v16 = v39;
  sub_1E1AF416C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8248, &qword_1E1B2BB50);
  v17 = swift_allocObject();
  *(v17 + 16) = v35;
  sub_1E1AF416C();
  v18 = swift_allocObject();
  (*(v38 + 32))(v18 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag, v5, v3);
  *(v18 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_isOfflineBag) = 0;
  v19 = v18 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bagOfflinePolicy;
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 1;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1E1707E64;
  *(v20 + 24) = v18;
  *(v17 + 32) = sub_1E1543638;
  *(v17 + 40) = v20;
  type metadata accessor for MetricsPipelineTransformer(0);
  v21 = swift_allocObject();
  v22 = v16;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_transforms) = MEMORY[0x1E69E7CC0];
  *(v21 + OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_isResolvedPipeline) = 0;
  v23 = v21 + OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_originalState;
  v24 = v43;
  v25 = *(v43 + 16);
  v38 = a1;
  v26 = v15;
  v25(v21 + OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_originalState, v15, v8);
  v27 = type metadata accessor for MetricsPipelineTransformer.State(0);
  v28 = v44;
  (*(v44 + 16))(v23 + v27[6], v22, v6);
  *(v23 + v27[5]) = v34;
  *(v23 + v27[7]) = MEMORY[0x1E69E7CC0];
  *(v23 + v27[8]) = v17;

  (*(v28 + 8))(v22, v6);
  (*(v24 + 8))(v26, v8);
  (*(v41 + 8))(v36, v46);
  v29 = OBJC_IVAR____TtC11AppStoreKit26MetricsPipelineTransformer_transforms;
  swift_beginAccess();
  *(v21 + v29) = MEMORY[0x1E69E7CC0];

  v30 = v45;
  v31 = v40;
  *v45 = v38;
  v30[1] = v31;
  v30[2] = v21;
}

uint64_t sub_1E17051B0@<X0>(uint64_t *a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8270, &qword_1E1B2BB70);
  v47 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v38 - v4;
  v6 = sub_1E1AF4D9C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v51 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = v38 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v38 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v38 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v52 = v38 - v18;
  v19 = type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();
  v48 = v19;
  sub_1E1AF55EC();
  v56 = v55[0];
  type metadata accessor for DeepLinkWithReferrerIntent(0);
  sub_1E1707F80(&qword_1ECEB8278, type metadata accessor for DeepLinkWithReferrerIntent, &protocol conformance descriptor for DeepLinkWithReferrerIntent);
  sub_1E1AF51CC();
  if (v2)
  {
  }

  sub_1E1AF4D8C();
  sub_1E1302CD4(&qword_1ECEB8280, &qword_1ECEB8270, &qword_1E1B2BB70, MEMORY[0x1E69AB490]);
  v45 = 0;
  sub_1E1AF4D4C();
  v21 = v13;
  v40 = v13;
  v22 = *(v7 + 8);
  v22(v21, v6);
  v23 = v7 + 8;
  (*(v47 + 8))(v5, v3);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8288, &qword_1E1B2BB78);
  v43 = *(v7 + 72);
  v42 = *(v7 + 80);
  v24 = (v42 + 32) & ~v42;
  v25 = swift_allocObject();
  v26 = *(v7 + 16);
  v46 = v26;
  v26((v25 + v24), v16, v6);
  v47 = v7 + 16;
  v39 = v16;
  sub_1E1AF4D8C();
  v27 = v40;
  v26(v40, v25 + v24, v6);
  swift_setDeallocating();
  v22((v25 + v24), v6);
  swift_deallocClassInstance();
  sub_1E1AF4D7C();
  v28 = v27;
  v22(v27, v6);
  v22(v39, v6);
  v38[1] = v23;
  v29 = v51;
  sub_1E1AF4D8C();
  sub_1E1707F2C();
  v30 = v50;
  sub_1E1AF4D4C();
  v22(v29, v6);
  v31 = swift_allocObject();
  v32 = v46;
  v46((v31 + v24), v30, v6);
  sub_1E1AF4D8C();
  v32(v29, v31 + v24, v6);
  swift_setDeallocating();
  v22((v31 + v24), v6);
  swift_deallocClassInstance();
  sub_1E1AF4D7C();
  v41 = v22;
  v22(v29, v6);
  v22(v30, v6);
  v54[3] = v48;
  v54[4] = sub_1E1707F80(&qword_1ECEB8298, type metadata accessor for JSIntentDispatcher, &protocol conformance descriptor for JSIntentDispatcher);
  v54[0] = v56;
  v55[3] = v6;
  v55[4] = MEMORY[0x1E69AB358];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v55);
  v34 = v46;
  v46(boxed_opaque_existential_0, v28, v6);
  sub_1E134FD1C(v54, v53, &qword_1ECEB82A0, &qword_1E1B2BB80);

  sub_1E1AF4D5C();
  v35 = v41;
  v41(v28, v6);
  sub_1E1308058(v54, &qword_1ECEB82A0, &qword_1E1B2BB80);
  v36 = v49;
  v49[3] = v6;
  v36[4] = MEMORY[0x1E69AB358];
  __swift_allocate_boxed_opaque_existential_0(v36);
  v37 = v52;
  v34();
  sub_1E134FD1C(v55, v54, &qword_1ECEB82A0, &qword_1E1B2BB80);
  sub_1E1AF4D5C();

  v35(v37, v6);
  return sub_1E1308058(v55, &qword_1ECEB82A0, &qword_1E1B2BB80);
}

uint64_t sub_1E1705880()
{
  v1 = v0;
  v2 = sub_1E1AF3EAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF3E9C();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB82A8, &unk_1E1B2BB90);
    v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1E1B02CC0;
    (*(v3 + 32))(v1 + v6, v5, v2);
  }

  return v1;
}

uint64_t sub_1E1705A04(uint64_t a1, uint64_t a2)
{
  v2[35] = a1;
  v2[36] = a2;
  v3 = sub_1E1AEFEAC();
  v2[37] = v3;
  v2[38] = *(v3 - 8);
  v2[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  v2[40] = swift_task_alloc();
  v4 = sub_1E1AF3E1C();
  v2[41] = v4;
  v2[42] = *(v4 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  v2[45] = swift_task_alloc();
  v5 = sub_1E1AF43AC();
  v2[46] = v5;
  v2[47] = *(v5 - 8);
  v2[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E1705BF8, 0, 0);
}

uint64_t sub_1E1705BF8()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 368);
  sub_1E1AF3FBC();
  v4 = sub_1E1AF43BC();
  v6 = v5;
  result = (*(v2 + 8))(v1, v3);
  if (v6)
  {
    *(v0 + 248) = v4;
    v8 = *(v0 + 352);
    v9 = *(v0 + 360);
    v10 = *(v0 + 336);
    v11 = *(v0 + 328);
    v39 = *(v0 + 344);
    v40 = *(v0 + 320);
    *(v0 + 256) = v6;
    sub_1E1AF6F6C();
    v12 = sub_1E1AEFCCC();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    *(v0 + 232) = 0u;
    *(v0 + 216) = 0u;
    sub_1E1AF3DFC();
    v13 = sub_1E1AF4D1C();
    v15 = v14;
    v16 = type metadata accessor for FlowAction(0);
    v17 = swift_allocObject();
    *(v17 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
    v18 = v17 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData;
    *v18 = 0u;
    *(v18 + 16) = 0u;
    *(v18 + 32) = 0;
    v19 = (v17 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_appStateController);
    *v19 = 0;
    v19[1] = 0;
    *(v17 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_page) = 8;
    sub_1E134FD1C(v9, v17 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageUrl, &unk_1ECEB4B60, &unk_1E1B02620);
    v20 = (v17 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl);
    *v20 = 0;
    v20[1] = 0;
    v21 = v17 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData;
    *v21 = xmmword_1E1B04490;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *(v21 + 16) = 0;
    *(v21 + 40) = 0;
    *(v17 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentationContext) = 0;
    *(v17 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_animationBehavior) = 0;
    *(v17 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_origin) = 0;
    v22 = (v17 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentation);
    *v22 = v13;
    v22[1] = v15;
    sub_1E134FD1C(v0 + 56, v0 + 96, &unk_1ECEB5670, qword_1E1B03EC0);
    (*(v10 + 16))(v39, v8, v11);
    v23 = sub_1E1AF46DC();
    (*(*(v23 - 8) + 56))(v40, 1, 1, v23);
    v24 = (v17 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
    *v24 = 0u;
    v24[1] = 0u;
    sub_1E134FD1C(v0 + 96, v0 + 136, &unk_1ECEB5670, qword_1E1B03EC0);
    if (*(v0 + 160))
    {
      v41 = *(v0 + 136);
      v42 = *(v0 + 152);
      v43 = *(v0 + 168);
    }

    else
    {
      v26 = *(v0 + 304);
      v25 = *(v0 + 312);
      v27 = *(v0 + 296);
      sub_1E1AEFE9C();
      v28 = sub_1E1AEFE7C();
      v30 = v29;
      (*(v26 + 8))(v25, v27);
      *(v0 + 264) = v28;
      *(v0 + 272) = v30;
      sub_1E1AF6F6C();
      sub_1E1308058(v0 + 136, &unk_1ECEB5670, qword_1E1B03EC0);
    }

    v31 = *(v0 + 352);
    v32 = *(v0 + 360);
    v33 = *(v0 + 336);
    v34 = *(v0 + 344);
    v35 = *(v0 + 320);
    v36 = *(v0 + 328);
    sub_1E1308058(v0 + 96, &unk_1ECEB5670, qword_1E1B03EC0);
    v37 = v17 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
    *v37 = v41;
    *(v37 + 16) = v42;
    *(v37 + 32) = v43;
    sub_1E137F600(v35, v17 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0u;
    (*(v33 + 32))(v17 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v34, v36);

    FlowAction.setPageData(_:)(v0 + 216);

    (*(v33 + 8))(v31, v36);
    sub_1E1308058(v0 + 216, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1308058(v32, &unk_1ECEB4B60, &unk_1E1B02620);
    sub_1E1308058(v0 + 56, &unk_1ECEB5670, qword_1E1B03EC0);
    *(v0 + 40) = v16;
    *(v0 + 48) = sub_1E1707F80(&qword_1ECEB3EB0, type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
    *(v0 + 16) = v17;
    sub_1E1300B24(v0 + 16, v0 + 176);
    sub_1E1AF55AC();
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for Bootstrap(uint64_t a1)
{
  result = qword_1ECEB8238;
  if (!qword_1ECEB8238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E17061D8(uint64_t a1)
{
  result = type metadata accessor for ASKBootstrapV2(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RenderPipelineDiagnostics.Recorder();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_1E170626C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v35 = a3;
  v37 = a1;
  v38 = a2;
  ObjectType = swift_getObjectType();
  v36 = sub_1E1AF428C();
  v7 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF58EC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF591C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[3] = sub_1E13006E4(0, &unk_1ECEB82B0, 0x1E698B560);
  v42[4] = &protocol witness table for ASDSubscriptionEntitlements;
  v42[0] = v35;
  v41[3] = sub_1E13006E4(0, &qword_1EE1E3480, 0x1E6959A48);
  v41[4] = &protocol witness table for ACAccountStore;
  v41[0] = a4;
  *&a5[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_paymentQueue] = 0;
  *&a5[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_dialogHandler] = 0;
  v18 = OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_observers;
  *&a5[v18] = sub_1E15A12D8(MEMORY[0x1E69E7CC0]);
  v19 = OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_stateLock;
  *&a5[v19] = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *&a5[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_paymentCallbacks] = MEMORY[0x1E69E7CC8];
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v10, qword_1EE2160F8);
  (*(v11 + 16))(v13, v20, v10);
  sub_1E1AF590C();
  v21 = v36;
  (*(v7 + 104))(v9, *MEMORY[0x1E69AB100], v36);
  v22 = sub_1E1AF547C();
  (*(v7 + 8))(v9, v21);
  (*(v15 + 8))(v17, v14);
  v23 = &a5[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_logger];
  v24 = sub_1E1AF410C();
  v25 = MEMORY[0x1E69AB0B0];
  *(v23 + 3) = v24;
  *(v23 + 4) = v25;
  *v23 = v22;
  v26 = &a5[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_arcadeSubscriptionFamilyId];
  v27 = v38;
  *v26 = v37;
  *(v26 + 1) = v27;
  sub_1E1300B24(v42, &a5[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionEntitlements]);
  v28 = &a5[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState];
  *v28 = 0;
  v28[8] = -64;
  sub_1E1300B24(v41, &a5[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_activeStoreAccountProvider]);
  v40.receiver = a5;
  v40.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v40, sel_init);
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 defaultCenter];
  [v32 addObserver:v31 selector:sel_entitlementsDidChange name:*MEMORY[0x1E698B470] object:0];

  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return v31;
}

id sub_1E1706714(uint64_t a1)
{
  type metadata accessor for ASKBagContract(0);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v1 = ASKBagContract.arcadeProductFamilyId.getter();
  v3 = v2;
  v4 = [objc_opt_self() sharedInstance];
  sub_1E13006E4(0, &qword_1EE1E3480, 0x1E6959A48);
  sub_1E1AF55EC();
  v5 = objc_allocWithZone(type metadata accessor for ArcadeSubscriptionManager());
  v6 = sub_1E170626C(v1, v3, v4, v8, v5);
  LOBYTE(v8) = 1;
  ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(&v8);

  return v6;
}

uint64_t sub_1E1706834(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v91 = a4;
  v97 = a3;
  v87 = a2;
  v101 = a1;
  v93 = sub_1E1AF361C();
  v100 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v92 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1E1AF3EFC();
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF430C();
  v84 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v79 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v83 = &v79 - v12;
  v13 = type metadata accessor for ArcadeSubscriptionFieldsProvider(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF4F3C();
  v98 = *(v16 - 8);
  v99 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v79 - v19;
  v21 = sub_1E1AF436C();
  v80 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v102 = &v79 - v25;
  v26 = sub_1E1AF539C();
  v90 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v86 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v79 - v29;
  sub_1E1AF421C();
  v94 = v30;
  v31 = v20;
  v95 = v26;
  sub_1E1AF55EC();
  v96 = v21;
  sub_1E1AF55EC();
  sub_1E1AF42AC();
  sub_1E1AF435C();
  v32 = *(v13 + 20);
  v33 = *MEMORY[0x1E69AB4D8];
  v34 = sub_1E1AF524C();
  (*(*(v34 - 8) + 104))(&v15[v32], v33, v34);
  v35 = v97;
  *v15 = v97;
  v106[3] = v13;
  v106[4] = sub_1E1707F80(&qword_1ECEB8258, type metadata accessor for ArcadeSubscriptionFieldsProvider, &protocol conformance descriptor for ArcadeSubscriptionFieldsProvider);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v106);
  sub_1E1707E6C(v15, boxed_opaque_existential_0);
  v37 = qword_1EE1E3888;
  v79 = v35;
  if (v37 != -1)
  {
    swift_once();
  }

  v38 = sub_1E1AF51EC();
  __swift_project_value_buffer(v38, qword_1EE1E3890);
  sub_1E1AF4EFC();
  __swift_destroy_boxed_opaque_existential_1(v106);
  v39 = v82;
  sub_1E1AF416C();
  sub_1E1AF42DC();
  v40 = v84;
  v97 = v31;
  v41 = *(v84 + 8);
  v41(v39, v6);
  v42 = v83;
  sub_1E1AF42CC();
  v41(v10, v6);
  (*(v40 + 16))(v10, v42, v6);
  sub_1E1AF432C();
  v41(v42, v6);
  sub_1E1707ED0(v15);
  __swift_destroy_boxed_opaque_existential_1(&v107);
  v43 = v80;
  v44 = *(v80 + 8);
  v45 = v96;
  v84 = v80 + 8;
  v83 = v44;
  (v44)(v23, v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94C0, &qword_1E1B1AB30);
  v46 = *(v100 + 72);
  v47 = (*(v100 + 80) + 32) & ~*(v100 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1E1B07790;
  v82 = v47;
  v81 = v48;
  type metadata accessor for ArcadeSubscriptionManager();
  v107 = v79;
  v49 = v79;
  sub_1E1AF35FC();
  type metadata accessor for ArtworkLoader();
  type metadata accessor for ArtworkLoaderURLSession();
  sub_1E1AF416C();
  v50 = v107;
  v51 = v23;
  v52 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  v53 = sub_1E1AF5DBC();
  [v52 setName_];

  swift_allocObject();
  v54 = sub_1E1AB21A8(v52, 0, 0, v50);

  v107 = v54;
  sub_1E1AF35FC();
  type metadata accessor for UpdateStore();
  if (qword_1EE1F9770 != -1)
  {
    swift_once();
  }

  v107 = qword_1EE1F9778;
  v55 = qword_1EE1F9778;
  sub_1E1AF35FC();
  v56 = type metadata accessor for URLProtocolDelegate();
  v57 = objc_allocWithZone(v56);
  v58 = OBJC_IVAR____TtC11AppStoreKit19URLProtocolDelegate_dialogStyle;
  *&v57[OBJC_IVAR____TtC11AppStoreKit19URLProtocolDelegate_dialogStyle] = 1;
  swift_beginAccess();
  v59 = *&v57[v58];
  *&v57[v58] = 1;
  sub_1E1547120(v59);
  v105.receiver = v57;
  v105.super_class = v56;
  v107 = objc_msgSendSuper2(&v105, sel_init);
  sub_1E1AF35FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8260, &qword_1E1B2BB60);
  sub_1E1300B24(v87, &v107);
  sub_1E1AF35FC();
  (*(v43 + 16))(v51, v102, v45);
  sub_1E1AF35FC();
  (*(v98 + 16))(v85, v97, v99);
  sub_1E1AF35FC();
  type metadata accessor for DiagnosticsReporter(0);
  sub_1E1707F80(&qword_1EE1E3B00, MEMORY[0x1E69AB038], &protocol conformance descriptor for MetricsLogger.Configuration);
  v60 = v89;
  sub_1E1AF414C();
  swift_allocObject();
  v107 = sub_1E19E4DD8(v60, 0, 0, 0, 0);
  sub_1E1AF35FC();
  v61 = v90;
  v62 = *(v90 + 16);
  v63 = v86;
  v64 = v95;
  v62(v86, v94, v95);
  v65 = type metadata accessor for CommerceDialogHandler(0);
  v66 = objc_allocWithZone(v65);
  swift_unknownObjectWeakInit();
  v67 = swift_unknownObjectWeakInit();
  v68 = OBJC_IVAR____TtC11AppStoreKit21CommerceDialogHandler_bag;
  (v62)(&v66[OBJC_IVAR____TtC11AppStoreKit21CommerceDialogHandler_bag], v63, v64, v67);
  (*(v61 + 56))(&v66[v68], 0, 1, v64);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v104.receiver = v66;
  v104.super_class = v65;
  v69 = objc_msgSendSuper2(&v104, sel_init);
  v70 = *(v61 + 8);
  v70(v63, v64);
  v103 = v69;
  v71 = v69;
  v72 = v92;
  sub_1E1AF35FC();
  v73 = v81;
  v75 = v81[2];
  v74 = v81[3];
  if (v75 >= v74 >> 1)
  {
    v73 = sub_1E172EF24((v74 > 1), v75 + 1, 1, v81);
  }

  v76 = v100;
  v73[2] = v75 + 1;
  (*(v76 + 32))(&v82[v73 + v75 * v46], v72, v93);
  v103 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8268, &qword_1E1B2BB68);
  sub_1E1302CD4(&qword_1EE1E34F0, &qword_1ECEB8268, &qword_1E1B2BB68, MEMORY[0x1E69E6328]);
  v77 = sub_1E1AF41DC();

  (*(v98 + 8))(v97, v99);
  (v83)(v102, v96);
  v70(v94, v95);
  return v77;
}

double sub_1E17074FC(void *a1, uint64_t a2)
{
  if (a1)
  {
    sub_1E13006E4(0, &qword_1EE1E3488, 0x1E698CBA8);
    sub_1E1AF421C();
    v3 = a1;
    sub_1E1AF55EC();
    type metadata accessor for URLProtocolDelegate();
    sub_1E1AF55EC();
    v4 = OBJC_IVAR____TtC11AppStoreKit19URLProtocolDelegate_dialogStyle;
    swift_beginAccess();
    v5 = *&v9[v4];
    *&v9[v4] = a1;
    v6 = v3;
    sub_1E1547120(v5);
    [v9 setDelegate_];
  }

  else
  {
    if (qword_1ECEB0FD8 != -1)
    {
      swift_once();
    }

    v8 = sub_1E1AF591C();
    __swift_project_value_buffer(v8, qword_1ECEF46E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();
  }

  return result;
}

uint64_t sub_1E1707738(uint64_t a1)
{
  v1 = sub_1E1AF3F6C();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v31 = &v27[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_1E1AF539C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27[-v11];
  sub_1E1AF421C();
  sub_1E1AF55EC();
  type metadata accessor for ASKBagContract(0);
  sub_1E1AF55EC();
  v13 = v36[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94A0, qword_1E1B21B30);
  sub_1E1AF55EC();
  v14 = *(v4 + 16);
  v14(v9, v12, v3);
  v15 = *(v13 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_isOfflineBag);
  v16 = *(v13 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bagOfflinePolicy);
  v29 = *(v13 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bagOfflinePolicy + 8);
  v30 = v16;
  v28 = *(v13 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bagOfflinePolicy + 16);
  sub_1E1300B24(v36, v35);
  sub_1E13006E4(0, &qword_1EE1E3470, 0x1E698CAC8);
  sub_1E1AF413C();
  v17 = v34[5];
  v14(v6, v9, v3);
  type metadata accessor for JSFreshnessWatchdog.BagContract(0);
  v18 = swift_allocObject();
  (*(v4 + 32))(v18 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bag, v6, v3);
  *(v18 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_isOfflineBag) = v15;
  v19 = v18 + OBJC_IVAR____TtCC11AppStoreKit19JSFreshnessWatchdog11BagContract_bagOfflinePolicy;
  v20 = v29;
  *v19 = v30;
  *(v19 + 8) = v20;
  *(v19 + 16) = v28;
  sub_1E1300B24(v35, v34);
  type metadata accessor for JSFreshnessWatchdog(0);
  v21 = swift_allocObject();
  v22 = sub_1E163E2E4(v18, v34, v17, v21);
  __swift_destroy_boxed_opaque_existential_1(v35);
  v23 = *(v4 + 8);
  v23(v9, v3);
  v24 = v31;
  sub_1E1AF3F5C();

  __swift_destroy_boxed_opaque_existential_1(v36);
  v23(v12, v3);
  v25 = OBJC_IVAR____TtC11AppStoreKit19JSFreshnessWatchdog_lastForegroundTime;
  swift_beginAccess();
  (*(v32 + 40))(v22 + v25, v24, v33);
  swift_endAccess();
  return v22;
}

void sub_1E1707B04(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5AF0, &qword_1E1B192E8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5F70, "p7\b");
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - v9;
  type metadata accessor for ASKBagContract(0);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  if (qword_1EE1E9EB0 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE1E9EC0;
  if (qword_1EE1E2F28 != -1)
  {
    swift_once();
  }

  sub_1E1AF536C();
  sub_1E1AF531C();
  (*(v8 + 8))(v10, v7);
  v12 = v20[1];
  v13 = v20[2];
  v14 = (v11 + OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_defaultAutoPlayVideoSetting);
  swift_beginAccess();
  *v14 = v12;
  v14[1] = v13;

  sub_1E19CC304();
  v15 = objc_opt_self();
  v16 = [v15 standardUserDefaults];
  sub_1E1AEFE5C();
  v17 = sub_1E1AEFE6C();
  (*(*(v17 - 8) + 56))(v6, 0, 1, v17);
  sub_1E17205BC(v6);

  v18 = [v15 standardUserDefaults];
  sub_1E1AF012C();
  v19 = sub_1E1AF013C();
  (*(*(v19 - 8) + 56))(v3, 0, 1, v19);
  sub_1E172080C(v3);
}

uint64_t sub_1E1707E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArcadeSubscriptionFieldsProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1707ED0(uint64_t a1)
{
  v2 = type metadata accessor for ArcadeSubscriptionFieldsProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E1707F2C()
{
  result = qword_1ECEB8290;
  if (!qword_1ECEB8290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8290);
  }

  return result;
}

uint64_t sub_1E1707F80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E1708238(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_1E1AEFCCC();
  v29 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v2 activityType];
  if (v11)
  {
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB67A0, &unk_1E1B29640);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B02CC0;
    v14 = *MEMORY[0x1E69CDA78];
    *(inited + 32) = *MEMORY[0x1E69CDA78];
    v15 = *&v2[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_shareSheetData];
    sub_1E1307FE8(v15 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_shortUrl, v6);
    if ((*(v29 + 48))(v6, 1, v7) == 1)
    {
      v16 = v14;

      sub_1E13ECBA0(v6);
    }

    else
    {
      v28 = *(v29 + 32);
      v21 = v28(v10, v6, v7);
      v30 = v12;
      MEMORY[0x1EEE9AC00](v21);
      *(&v27 - 2) = &v30;
      v22 = v14;
      v23 = sub_1E14F22C0(sub_1E1709844, (&v27 - 4), inited);

      if ((v23 & 1) == 0)
      {
        a1[3] = v7;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
        v28(boxed_opaque_existential_0, v10, v7);
        goto LABEL_11;
      }

      (*(v29 + 8))(v10, v7);
    }

    v24 = OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_url;
    a1[3] = v7;
    v25 = __swift_allocate_boxed_opaque_existential_0(a1);
    (*(v29 + 16))(v25, v15 + v24, v7);
LABEL_11:

    return;
  }

  v17 = *&v2[OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_shareSheetData];
  v18 = OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_url;
  a1[3] = v7;
  v19 = __swift_allocate_boxed_opaque_existential_0(a1);
  v20 = *(v29 + 16);

  v20(v19, v17 + v18, v7);
}

id sub_1E17085D8(uint64_t a1, double a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for URLActivityItemProvider();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1E1708754(void *a1, uint64_t *a2)
{
  v2 = sub_1E1AF5DFC();
  v4 = v3;
  if (v2 == sub_1E1AF5DFC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1E1AF74AC();
  }

  return v7 & 1;
}

id sub_1E17087E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v102 - v3;
  v5 = sub_1E1AEFCCC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x1E696ECA0]) init];
  v10 = *(v1 + OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_shareSheetData);
  sub_1E1307FE8(v10 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_shortUrl, v4);
  v11 = *(v6 + 48);
  if (v11(v4, 1, v5) == 1)
  {
    (*(v6 + 16))(v8, v10 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_url, v5);
    if (v11(v4, 1, v5) != 1)
    {
      sub_1E13ECBA0(v4);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
  }

  v12 = sub_1E1AEFBEC();
  (*(v6 + 8))(v8, v5);
  [v9 setURL_];

  v13 = *(v10 + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_metadata);
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    v21 = v13 & 0x3FFFFFFFFFFFFFFFLL;
    if (v14 == 2)
    {
      v22 = *(v21 + 48);
      if (v22)
      {
        v23 = *(v22 + 48);
        if (v23)
        {
          swift_retain_n();

          v24 = v23;
          v25 = sub_1E1A6D5A4(v24);
          if (v25)
          {
            v26 = v25;
            v27 = [objc_allocWithZone(MEMORY[0x1E696EC68]) initWithPlatformImage_];

LABEL_64:
            v76 = *(v1 + OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_artworkLoader);
            aBlock = 0uLL;

            v77 = Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(&aBlock, 0, 100.0, 100.0);
            v78 = objc_allocWithZone(type metadata accessor for ArtworkItemProvider());
            v79 = ArtworkItemProvider.init(artworkLoader:config:)(v76, v77);
            v80 = MEMORY[0x1E696EC68];
LABEL_68:
            v84 = [objc_allocWithZone(v80) initWithItemProvider:v79 properties:0 placeholderImage:v27];
            [v9 setImage_];

            goto LABEL_69;
          }
        }

        else
        {
          swift_retain_n();
        }

        v27 = 0;
        goto LABEL_64;
      }

LABEL_22:
      swift_retain_n();
LABEL_69:

      v85 = sub_1E1AF5DBC();

      [v9 setTitle_];

      v86 = [objc_allocWithZone(MEMORY[0x1E696EC08]) init];
      if (*(v21 + 40))
      {

        v87 = sub_1E1AF5DBC();
      }

      else
      {
        v87 = 0;
      }

      [v86 setSubtitle_];

      [v9 setSpecialization_];

      return v9;
    }

    v32 = *(v21 + 48);
    if (!v32)
    {
      goto LABEL_22;
    }

    v33 = *(v32 + 48);
    if (v33)
    {
      swift_retain_n();

      v34 = v33;
      v35 = sub_1E1A6D5A4(v34);
      if (v35)
      {
        v36 = v35;
        v27 = [objc_allocWithZone(MEMORY[0x1E696EC68]) initWithPlatformImage_];

LABEL_67:
        v81 = *(v1 + OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_artworkLoader);
        aBlock = xmmword_1E1B2BBA0;

        v82 = Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(&aBlock, 0, 100.0, 100.0);

        v83 = objc_allocWithZone(type metadata accessor for ArtworkItemProvider());
        v79 = ArtworkItemProvider.init(artworkLoader:config:)(v81, v82);
        v80 = MEMORY[0x1E696EC68];
        goto LABEL_68;
      }
    }

    else
    {
      swift_retain_n();
    }

    v27 = 0;
    goto LABEL_67;
  }

  if (!v14)
  {
    v15 = *(v13 + 64);
    if (!v15)
    {
      swift_retain_n();
LABEL_58:

      v73 = sub_1E1AF5DBC();

      [v9 setTitle_];

      v74 = [objc_allocWithZone(MEMORY[0x1E696EC08]) init];
      if (*(v13 + 56))
      {

        v75 = sub_1E1AF5DBC();
      }

      else
      {
        v75 = 0;
      }

      [v74 setSubtitle_];

      [v9 setSpecialization_];

      return v9;
    }

    v16 = *(v15 + 48);
    if (v16)
    {
      swift_retain_n();

      v17 = v16;
      v18 = sub_1E1A6D5A4(v17);
      if (v18)
      {
        v19 = v18;
        v20 = [objc_allocWithZone(MEMORY[0x1E696EC68]) initWithPlatformImage_];

LABEL_57:
        v68 = *(v1 + OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_artworkLoader);
        aBlock = xmmword_1E1B2BBA0;

        v69 = Artwork.config(using:cropCodeOverride:prefersLayeredImage:)(&aBlock, 0, 100.0, 100.0);

        v70 = objc_allocWithZone(type metadata accessor for ArtworkItemProvider());
        v71 = ArtworkItemProvider.init(artworkLoader:config:)(v68, v69);
        v72 = [objc_allocWithZone(MEMORY[0x1E696EC68]) initWithItemProvider:v71 properties:0 placeholderImage:v20];
        [v9 setImage_];

        goto LABEL_58;
      }
    }

    else
    {
      swift_retain_n();
    }

    v20 = 0;
    goto LABEL_57;
  }

  v28 = v13 & 0x3FFFFFFFFFFFFFFFLL;
  v29 = objc_allocWithZone(MEMORY[0x1E696ED50]);
  swift_retain_n();
  v30 = [v29 init];
  if (*((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
  {

    v31 = sub_1E1AF5DBC();
  }

  else
  {
    v31 = 0;
  }

  [v30 setStoreFrontIdentifier_];

  v37 = sub_1E1AF5DBC();

  [v30 setStoreIdentifier_];

  v38 = sub_1E1AF5DBC();

  [v30 setName_];

  if (*((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x48))
  {

    v39 = sub_1E1AF5DBC();
  }

  else
  {
    v39 = 0;
  }

  [v30 setSubtitle_];

  if (*((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x58))
  {

    v40 = sub_1E1AF5DBC();
  }

  else
  {
    v40 = 0;
  }

  [v30 setGenre_];

  v41 = *(*((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x60) + 48);
  v107 = v30;
  v108 = v13 & 0x3FFFFFFFFFFFFFFFLL;
  if (v41)
  {
    v42 = v41;
    v43 = sub_1E1A6D5A4(v42);
    if (v43)
    {
      v44 = v43;
      v45 = [objc_allocWithZone(MEMORY[0x1E696EC78]) init];
      [v45 setType_];
      v46 = [objc_allocWithZone(MEMORY[0x1E696EC68]) initWithPlatformImage:v44 properties:v45];

      v42 = v45;
      v28 = v108;
    }

    else
    {
      v46 = 0;
    }

    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  v48 = *(v1 + OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_artworkLoader);

  v49 = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, 100.0, 100.0);

  v111 = type metadata accessor for ArtworkItemProvider();
  v50 = objc_allocWithZone(v111);
  v51 = ArtworkItemProvider.init(artworkLoader:config:)(v48, v49);
  v52 = [objc_allocWithZone(MEMORY[0x1E696EC78]) init];
  [v52 setType_];
  v53 = [objc_allocWithZone(MEMORY[0x1E696EC68]) initWithItemProvider:v51 properties:v52 placeholderImage:v47];
  [v107 setIcon_];

  v54 = *(v28 + 104);
  if (!v54)
  {
    goto LABEL_74;
  }

  if (v54 >> 62)
  {
    if (sub_1E1AF71CC())
    {
      goto LABEL_43;
    }

LABEL_74:
    v88 = 0;
    goto LABEL_84;
  }

  if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_74;
  }

LABEL_43:
  if ((v54 & 0xC000000000000001) != 0)
  {
    v89 = *(MEMORY[0x1E68FFD80](0, v54) + 16);

    swift_unknownObjectRelease();
    v55 = v89;
    if (v89 < 0)
    {
      goto LABEL_80;
    }

    v56 = v89;
    if ((v89 & 0x4000000000000000) != 0)
    {
      goto LABEL_81;
    }
  }

  else
  {
    v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v55)
    {
      __break(1u);
      goto LABEL_79;
    }

    if (v56 < 0 || (v56 & 0x4000000000000000) != 0)
    {
      goto LABEL_81;
    }
  }

  v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v57)
  {
    while (1)
    {
      v58 = v56;
      v103 = v52;
      v104 = v51;
      v105 = v47;
      v106 = v9;
      v118 = MEMORY[0x1E69E7CC0];
      sub_1E1AF70EC();
      if ((v57 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_79:
      __break(1u);
LABEL_80:
      v56 = v55;
LABEL_81:
      v90 = v56;
      v57 = sub_1E1AF71CC();
      v56 = v90;
      if (!v57)
      {
        goto LABEL_82;
      }
    }

    v59 = 0;
    v60 = *MEMORY[0x1E6963860];
    v109 = v58 & 0xC000000000000001;
    v110 = v60;
    do
    {
      if (v109)
      {
        MEMORY[0x1E68FFD80](v59);
      }

      else
      {
      }

      ++v59;
      v61 = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, 300.0, 300.0);
      v62 = v111;
      v63 = objc_allocWithZone(v111);
      *&v63[OBJC_IVAR____TtC11AppStoreKit19ArtworkItemProvider_artworkLoader] = v48;
      *&v63[OBJC_IVAR____TtC11AppStoreKit19ArtworkItemProvider_artworkLoaderConfig] = v61;
      v117.receiver = v63;
      v117.super_class = v62;

      v64 = objc_msgSendSuper2(&v117, sel_init);
      v115 = sub_1E13571A0;
      v116 = 0;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v113 = sub_1E1A26138;
      v114 = &block_descriptor_56;
      v65 = _Block_copy(&aBlock);
      v66 = v64;
      v67 = v110;
      [v66 registerDataRepresentationForTypeIdentifier:v67 visibility:3 loadHandler:v65];
      _Block_release(v65);

      [objc_allocWithZone(MEMORY[0x1E696EC68]) initWithItemProvider:v66 properties:0 placeholderImage:0];

      sub_1E1AF70BC();
      sub_1E1AF70FC();
      sub_1E1AF710C();
      sub_1E1AF70CC();
    }

    while (v57 != v59);

    v47 = v105;
    v9 = v106;
    v52 = v103;
    v51 = v104;
  }

  else
  {
LABEL_82:
  }

  sub_1E17097F8();
  v88 = sub_1E1AF620C();

  v28 = v108;
LABEL_84:
  v91 = v107;
  [v107 setScreenshots_];

  [v91 setIsMessagesOnlyApp_];
  if (*(v28 + 128))
  {

    v92 = Artwork.config(_:mode:prefersLayeredImage:)(UIViewContentModeScaleAspectFit, 0, 100.0, 100.0);
    v93 = objc_allocWithZone(v111);
    v94 = ArtworkItemProvider.init(artworkLoader:config:)(v48, v92);
    v95 = [objc_allocWithZone(MEMORY[0x1E696EC68]) initWithItemProvider:v94 properties:0 placeholderImage:0];
    [v91 setMessagesAppIcon_];
  }

  v96 = *(v108 + 112);
  if (!v96)
  {
    goto LABEL_93;
  }

  if (v96 >> 62)
  {
    result = sub_1E1AF71CC();
    if (!result)
    {
      goto LABEL_93;
    }
  }

  else
  {
    result = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_93:
      v101 = v91;
      [v9 setSpecialization_];

      return v9;
    }
  }

  if ((v96 & 0xC000000000000001) != 0)
  {

    MEMORY[0x1E68FFD80](0, v96);

    goto LABEL_92;
  }

  if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_92:
    v98 = objc_allocWithZone(MEMORY[0x1E696ED10]);
    v99 = sub_1E1AEFBEC();
    v100 = [v98 initWithStreamingURL:v99 hasAudio:0];

    [v91 setPreviewVideo_];

    goto LABEL_93;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E1709778()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC11AppStoreKit23URLActivityItemProvider_shareSheetData) + OBJC_IVAR____TtC11AppStoreKit14ShareSheetData_metadata);
  v2 = v1 >> 62;
  v3 = 32;
  v4 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  if (v1 >> 62)
  {
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
    v3 = 48;
  }

  if (v2 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v1 = v4;
    v5 = 16;
  }

  return *(v1 + v5);
}

unint64_t sub_1E17097F8()
{
  result = qword_1ECEB83B0;
  if (!qword_1ECEB83B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECEB83B0);
  }

  return result;
}

uint64_t DirectionalTextAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

unint64_t sub_1E17098F0()
{
  result = qword_1ECEB83B8;
  if (!qword_1ECEB83B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB83B8);
  }

  return result;
}

uint64_t type metadata accessor for StoreViewControllerLifecycleEvent(uint64_t a1)
{
  result = qword_1EE1F8A68;
  if (!qword_1EE1F8A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E17099C8(uint64_t a1)
{
  v1 = sub_1E1AF4FBC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t ScreenshotsLockup.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v25[0] = a1;
  v27 = sub_1E1AF39DC();
  v4 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v28 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - v7;
  v9 = sub_1E1AF380C();
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v26 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v12 = OBJC_IVAR____TtC11AppStoreKit17ScreenshotsLockup_screenshots;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit17ScreenshotsLockup_screenshots) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB83C0, &qword_1E1B2BE00);
  sub_1E1AF381C();
  v29 = v4;
  v13 = *(v4 + 16);
  v14 = a2;
  v15 = a2;
  v16 = v27;
  v13(v8, v15, v27);
  sub_1E1709D64();
  sub_1E1AF464C();
  v17 = v32;
  v18 = v25[1];
  swift_beginAccess();
  *(v18 + v12) = v17;
  v19 = v16;
  v20 = v25[0];

  v21 = v26;
  (*(v30 + 16))(v26, v20, v31);
  v22 = v28;
  v13(v28, v14, v19);
  v23 = Lockup.init(deserializing:using:)(v21, v22);
  (*(v29 + 8))(v14, v19);
  (*(v30 + 8))(v20, v31);
  return v23;
}

unint64_t sub_1E1709D64()
{
  result = qword_1EE1E3520;
  if (!qword_1EE1E3520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB83C0, &qword_1E1B2BE00);
    sub_1E1709DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E3520);
  }

  return result;
}

unint64_t sub_1E1709DE8()
{
  result = qword_1EE1F66F8;
  if (!qword_1EE1F66F8)
  {
    type metadata accessor for Screenshots();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F66F8);
  }

  return result;
}

uint64_t ScreenshotsLockup.__allocating_init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:screenshots:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v78 = a8;
  v77 = a7;
  v76 = a6;
  v75 = a5;
  v71 = a4;
  v69 = a3;
  v68 = a2;
  v86 = a25;
  v87 = a26;
  v85 = a24;
  v83 = a27;
  v84 = a23;
  v82 = a22;
  v80 = a21;
  v65 = a20;
  v64 = a19;
  v81 = a18;
  v74 = a17;
  v73 = a16;
  v72 = a15;
  v70 = a14;
  v79 = a13;
  v67 = a12;
  v66 = a11;
  v63 = a10;
  v62 = a9;
  v30 = sub_1E1AEFEAC();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = &v59 - v35;
  v37 = swift_allocObject();
  v38 = a1[1];
  v61 = *a1;
  v60 = v38;
  v39 = OBJC_IVAR____TtC11AppStoreKit17ScreenshotsLockup_screenshots;
  *(v37 + OBJC_IVAR____TtC11AppStoreKit17ScreenshotsLockup_screenshots) = 0;
  swift_beginAccess();
  *(v37 + v39) = a29;
  v94 = 0;
  memset(v93, 0, sizeof(v93));
  sub_1E134FD1C(a28, v36, &unk_1ECEB1770, &unk_1E1AFED20);
  *(v37 + 424) = 4;
  sub_1E134FD1C(v93, &v90, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v91 + 1))
  {
    v40 = v91;
    *(v37 + 448) = v90;
    *(v37 + 464) = v40;
    *(v37 + 480) = v92;
  }

  else
  {
    sub_1E1AEFE9C();
    v41 = sub_1E1AEFE7C();
    v43 = v42;
    (*(v31 + 8))(v33, v30);
    v88 = v41;
    v89 = v43;
    sub_1E1AF6F6C();
    sub_1E1308058(&v90, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E134FD1C(v36, v37 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  v44 = v60;
  *(v37 + 16) = v61;
  *(v37 + 24) = v44;
  v45 = v69;
  *(v37 + 32) = v68;
  *(v37 + 40) = v45;
  *(v37 + 48) = v71;
  *(v37 + 56) = 0;
  v46 = v65;
  *(v37 + 64) = v64;
  *(v37 + 72) = v46;
  v47 = v76;
  *(v37 + 80) = v75;
  *(v37 + 88) = v47;
  v48 = v78;
  *(v37 + 96) = v77;
  *(v37 + 104) = v48;
  v49 = v63;
  *(v37 + 112) = v62;
  *(v37 + 120) = v49;
  *(v37 + 128) = 0;
  *(v37 + 136) = 2;
  v50 = v67;
  *(v37 + 144) = v66;
  *(v37 + 152) = v50;
  v51 = v72;
  *(v37 + 192) = v70;
  *(v37 + 200) = v51;
  v52 = v74;
  *(v37 + 208) = v73;
  *(v37 + 216) = v52;
  *(v37 + 376) = 0u;
  *(v37 + 392) = 0u;
  *(v37 + 408) = 0x8000;
  *(v37 + 360) = v83;
  *(v37 + 416) = 0;
  *(v37 + 432) = MEMORY[0x1E69E7CD0];
  v53 = v82;
  *(v37 + 160) = v80;
  *(v37 + 168) = v53;
  v54 = v79;
  *(v37 + 176) = v84;
  *(v37 + 184) = v54;
  v56 = v85;
  v55 = v86;
  *(v37 + 224) = v81;
  *(v37 + 232) = v56;
  *(v37 + 240) = v55;
  *(v37 + 248) = 0;
  v57 = v87;
  *(v37 + 256) = 0;
  *(v37 + 264) = v57;
  *(v37 + 272) = 0u;
  *(v37 + 288) = 0u;
  *(v37 + 304) = 0u;
  *(v37 + 320) = 0u;
  *(v37 + 336) = 0;
  sub_1E1308058(a28, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v36, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v93, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v37 + 344) = MEMORY[0x1E69E7CC0];
  *(v37 + 352) = 0;
  *(v37 + 440) = 0;
  *(v37 + 368) = 0;
  return v37;
}

uint64_t ScreenshotsLockup.init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:screenshots:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v30 = v29;
  v78 = a8;
  v77 = a7;
  v76 = a6;
  v75 = a5;
  v71 = a4;
  v69 = a3;
  v68 = a2;
  v83 = a27;
  v87 = a26;
  v86 = a25;
  v85 = a24;
  v84 = a23;
  v82 = a22;
  v80 = a21;
  v65 = a20;
  v64 = a19;
  v81 = a18;
  v74 = a17;
  v73 = a16;
  v72 = a15;
  v70 = a14;
  v79 = a13;
  v67 = a12;
  v66 = a11;
  v63 = a10;
  v62 = a9;
  v32 = sub_1E1AEFEAC();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v59 - v37;
  v39 = a1[1];
  v61 = *a1;
  v60 = v39;
  v40 = OBJC_IVAR____TtC11AppStoreKit17ScreenshotsLockup_screenshots;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit17ScreenshotsLockup_screenshots) = 0;
  swift_beginAccess();
  *(v30 + v40) = a29;
  v97 = 0;
  memset(v96, 0, sizeof(v96));
  sub_1E134FD1C(a28, v38, &unk_1ECEB1770, &unk_1E1AFED20);
  *(v30 + 424) = 4;
  sub_1E134FD1C(v96, &v90, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v91 + 1))
  {
    v93 = v90;
    v94 = v91;
    v95 = v92;
  }

  else
  {
    sub_1E1AEFE9C();
    v41 = sub_1E1AEFE7C();
    v43 = v42;
    (*(v33 + 8))(v35, v32);
    v88 = v41;
    v89 = v43;
    sub_1E1AF6F6C();
    sub_1E1308058(&v90, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  v44 = v94;
  *(v30 + 448) = v93;
  *(v30 + 464) = v44;
  *(v30 + 480) = v95;
  sub_1E134FD1C(v38, v30 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  v45 = v60;
  *(v30 + 16) = v61;
  *(v30 + 24) = v45;
  v46 = v69;
  *(v30 + 32) = v68;
  *(v30 + 40) = v46;
  *(v30 + 48) = v71;
  *(v30 + 56) = 0;
  v47 = v65;
  *(v30 + 64) = v64;
  *(v30 + 72) = v47;
  v48 = v76;
  *(v30 + 80) = v75;
  *(v30 + 88) = v48;
  v49 = v78;
  *(v30 + 96) = v77;
  *(v30 + 104) = v49;
  v50 = v63;
  *(v30 + 112) = v62;
  *(v30 + 120) = v50;
  *(v30 + 128) = 0;
  *(v30 + 136) = 2;
  v51 = v67;
  *(v30 + 144) = v66;
  *(v30 + 152) = v51;
  v52 = v72;
  *(v30 + 192) = v70;
  *(v30 + 200) = v52;
  v53 = v74;
  *(v30 + 208) = v73;
  *(v30 + 216) = v53;
  *(v30 + 376) = 0u;
  *(v30 + 392) = 0u;
  *(v30 + 408) = 0x8000;
  *(v30 + 360) = v83;
  *(v30 + 416) = 0;
  *(v30 + 432) = MEMORY[0x1E69E7CD0];
  v54 = v82;
  *(v30 + 160) = v80;
  *(v30 + 168) = v54;
  v55 = v79;
  *(v30 + 176) = v84;
  *(v30 + 184) = v55;
  v56 = v85;
  *(v30 + 224) = v81;
  *(v30 + 232) = v56;
  *(v30 + 240) = v86;
  *(v30 + 248) = 0;
  v57 = v87;
  *(v30 + 256) = 0;
  *(v30 + 264) = v57;
  *(v30 + 272) = 0u;
  *(v30 + 288) = 0u;
  *(v30 + 304) = 0u;
  *(v30 + 320) = 0u;
  *(v30 + 336) = 0;
  sub_1E1308058(a28, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v38, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v96, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v30 + 344) = MEMORY[0x1E69E7CC0];
  *(v30 + 352) = 0;
  *(v30 + 440) = 0;
  *(v30 + 368) = 0;
  return v30;
}

double sub_1E170A868(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit17ScreenshotsLockup_screenshots;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_1E170A8D0()
{
  swift_beginAccess();

  return result;
}

double sub_1E170A918(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit17ScreenshotsLockup_screenshots;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t ScreenshotsLockup.deinit()
{
  v0 = Lockup.deinit();

  return v0;
}

uint64_t ScreenshotsLockup.__deallocating_deinit()
{
  Lockup.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScreenshotsLockup(uint64_t a1)
{
  result = qword_1ECEB83C8;
  if (!qword_1ECEB83C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TodayPage.__allocating_init(shelfBasedPageContents:title:titleDetail:shortTitleDetail:longTitle:tabTitle:nextPage:onboardingCardIds:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v83 = a6;
  v84 = a7;
  v86 = a8;
  v87 = a17;
  v90 = a16;
  v88 = a18;
  v89 = a15;
  v85 = a14;
  v81 = a5;
  v82 = a12;
  v79 = a4;
  v80 = a11;
  v77 = a3;
  v78 = a10;
  v76 = a9;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v75 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v74 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v74 - v26;
  v28 = sub_1E1AF3C3C();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = swift_allocObject();
  v33 = OBJC_IVAR____TtC11AppStoreKit9TodayPage_allCardMediaKinds;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_allCardMediaKinds) = MEMORY[0x1E69E7CD0];
  *(v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfOrdering) = a1;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfMapping) = a2;
  v34 = (v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_title);
  v35 = v79;
  *v34 = v77;
  v34[1] = v35;
  v36 = (v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_titleDetail);
  v38 = v83;
  v37 = v84;
  *v36 = v81;
  v36[1] = v38;
  v39 = (v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shortTitleDetail);
  *v39 = v37;
  v39[1] = v86;
  v40 = (v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_longTitle);
  v41 = v78;
  *v40 = v76;
  v40[1] = v41;
  v42 = (v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_tabTitle);
  v43 = v82;
  *v42 = v80;
  v42[1] = v43;
  v86 = a13;
  sub_1E134FD1C(a13, v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  *(v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_onboardingCardIds) = v85;

  sub_1E170BB9C(v44);
  v46 = v45;
  v47 = v28;
  v48 = v27;

  swift_beginAccess();
  *(v32 + v33) = v46;
  v49 = (v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_widgetKind);
  *v49 = 0;
  v49[1] = 0;
  *(v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_dateRelevance) = MEMORY[0x1E69E7CC0];
  v50 = (v32 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_feedPreviewUrl);
  *v50 = 0;
  v50[1] = 0;
  v84 = v29;
  v51 = *(v29 + 16);
  v51(v31, v90, v47);
  v52 = v88;
  sub_1E134FD1C(v88, v27, &qword_1ECEB3B28, &unk_1E1B11460);
  *(v32 + 16) = v89;
  v85 = v47;
  v51((v32 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v31, v47);
  *(v32 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v87;
  sub_1E134FD1C(v27, v24, &qword_1ECEB3B28, &unk_1E1B11460);
  v53 = sub_1E1AF39DC();
  v54 = *(v53 - 8);
  v55 = v24;
  v56 = v24;
  v57 = *(v54 + 48);
  if (v57(v56, 1, v53) == 1)
  {
    sub_1E1308058(v52, &qword_1ECEB3B28, &unk_1E1B11460);
    v58 = v85;
    v59 = *(v84 + 8);
    v59(v90, v85);
    sub_1E1308058(v86, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1308058(v48, &qword_1ECEB3B28, &unk_1E1B11460);
    v59(v31, v58);
    v60 = v55;
  }

  else
  {
    v83 = v55;
    v81 = v31;
    v61 = qword_1EE1E3BC8;

    if (v61 != -1)
    {
      swift_once();
    }

    v82 = v48;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
    __swift_project_value_buffer(v62, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
    sub_1E1AF39EC();
    v63 = v91;
    if (v91)
    {
    }

    v64 = *(v54 + 8);
    v64(v83, v53);
    v65 = v75;
    if (!v63)
    {

      sub_1E1308058(v88, &qword_1ECEB3B28, &unk_1E1B11460);
      v69 = v85;
      v70 = *(v84 + 8);
      v70(v90, v85);
      sub_1E1308058(v86, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v82, &qword_1ECEB3B28, &unk_1E1B11460);
      v70(v81, v69);
      return v32;
    }

    v66 = v82;
    sub_1E134FD1C(v82, v75, &qword_1ECEB3B28, &unk_1E1B11460);
    if (v57(v65, 1, v53) != 1)
    {
      sub_1E15F0974();

      sub_1E1308058(v88, &qword_1ECEB3B28, &unk_1E1B11460);
      v71 = v85;
      v72 = *(v84 + 8);
      v72(v90, v85);
      sub_1E1308058(v86, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v66, &qword_1ECEB3B28, &unk_1E1B11460);
      v72(v81, v71);
      v64(v65, v53);
      return v32;
    }

    sub_1E1308058(v88, &qword_1ECEB3B28, &unk_1E1B11460);
    v67 = v85;
    v68 = *(v84 + 8);
    v68(v90, v85);
    sub_1E1308058(v86, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1308058(v66, &qword_1ECEB3B28, &unk_1E1B11460);
    v68(v81, v67);
    v60 = v65;
  }

  sub_1E1308058(v60, &qword_1ECEB3B28, &unk_1E1B11460);
  return v32;
}

uint64_t TodayPage.init(shelfBasedPageContents:title:titleDetail:shortTitleDetail:longTitle:tabTitle:nextPage:onboardingCardIds:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18;
  v82 = a6;
  v83 = a7;
  v85 = a8;
  v86 = a17;
  v89 = a16;
  v87 = a18;
  v88 = a15;
  v84 = a14;
  v80 = a5;
  v81 = a12;
  v78 = a4;
  v79 = a11;
  v76 = a9;
  v77 = a10;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v75 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v75 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v75 - v29;
  v31 = sub_1E1AF3C3C();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = OBJC_IVAR____TtC11AppStoreKit9TodayPage_allCardMediaKinds;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_allCardMediaKinds) = MEMORY[0x1E69E7CD0];
  *(v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfOrdering) = a1;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfMapping) = a2;
  v35 = (v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_title);
  v36 = v78;
  *v35 = a3;
  v35[1] = v36;
  v37 = (v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_titleDetail);
  v39 = v82;
  v38 = v83;
  *v37 = v80;
  v37[1] = v39;
  v40 = (v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shortTitleDetail);
  *v40 = v38;
  v40[1] = v85;
  v41 = (v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_longTitle);
  v42 = v77;
  *v41 = v76;
  v41[1] = v42;
  v44 = v43;
  v45 = (v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_tabTitle);
  v46 = v81;
  *v45 = v79;
  v45[1] = v46;
  v85 = a13;
  sub_1E134FD1C(a13, v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  *(v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_onboardingCardIds) = v84;

  sub_1E170BB9C(v47);
  v49 = v48;
  v50 = v31;
  v51 = v30;

  swift_beginAccess();
  *(v19 + v34) = v49;

  v52 = (v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_widgetKind);
  *v52 = 0;
  v52[1] = 0;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_dateRelevance) = MEMORY[0x1E69E7CC0];
  v53 = (v19 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_feedPreviewUrl);
  *v53 = 0;
  v53[1] = 0;
  v83 = v44;
  v54 = *(v44 + 16);
  v54(v33, v89, v50);
  v55 = v87;
  sub_1E134FD1C(v87, v51, &qword_1ECEB3B28, &unk_1E1B11460);
  *(v19 + 16) = v88;
  v84 = v33;
  v82 = v50;
  v54((v19 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v33, v50);
  *(v19 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v86;
  sub_1E134FD1C(v51, v27, &qword_1ECEB3B28, &unk_1E1B11460);
  v56 = sub_1E1AF39DC();
  v57 = *(v56 - 8);
  v58 = *(v57 + 48);
  if (v58(v27, 1, v56) == 1)
  {
    sub_1E1308058(v55, &qword_1ECEB3B28, &unk_1E1B11460);
    v59 = v82;
    v60 = *(v83 + 8);
    v60(v89, v82);
    sub_1E1308058(v85, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1308058(v51, &qword_1ECEB3B28, &unk_1E1B11460);
    v60(v84, v59);
    v61 = v27;
  }

  else
  {
    v81 = v27;
    v62 = qword_1EE1E3BC8;

    if (v62 != -1)
    {
      swift_once();
    }

    v80 = v51;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
    __swift_project_value_buffer(v63, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
    sub_1E1AF39EC();
    v64 = v90;
    if (v90)
    {
    }

    v65 = *(v57 + 8);
    v65(v81, v56);
    v66 = v75;
    if (!v64)
    {

      sub_1E1308058(v87, &qword_1ECEB3B28, &unk_1E1B11460);
      v70 = v82;
      v71 = *(v83 + 8);
      v71(v89, v82);
      sub_1E1308058(v85, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v80, &qword_1ECEB3B28, &unk_1E1B11460);
      v71(v84, v70);
      return v19;
    }

    v67 = v80;
    sub_1E134FD1C(v80, v75, &qword_1ECEB3B28, &unk_1E1B11460);
    if (v58(v66, 1, v56) != 1)
    {
      sub_1E15F0974();

      sub_1E1308058(v87, &qword_1ECEB3B28, &unk_1E1B11460);
      v72 = v82;
      v73 = *(v83 + 8);
      v73(v89, v82);
      sub_1E1308058(v85, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1308058(v67, &qword_1ECEB3B28, &unk_1E1B11460);
      v73(v84, v72);
      v65(v66, v56);
      return v19;
    }

    sub_1E1308058(v87, &qword_1ECEB3B28, &unk_1E1B11460);
    v68 = v82;
    v69 = *(v83 + 8);
    v69(v89, v82);
    sub_1E1308058(v85, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1308058(v67, &qword_1ECEB3B28, &unk_1E1B11460);
    v69(v84, v68);
    v61 = v66;
  }

  sub_1E1308058(v61, &qword_1ECEB3B28, &unk_1E1B11460);
  return v19;
}

void sub_1E170BB9C(uint64_t a1)
{
  v26 = MEMORY[0x1E69E7CD0];
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v15 = v5;
  v16 = v1;
  v7 = 0;
  if (v4)
  {
    while (1)
    {
LABEL_6:
      v8 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v9 = *(*(a1 + 56) + ((v6 << 9) | (8 * v8)));
      LOBYTE(v23) = *(v9 + 16);
      if (Shelf.ContentType.rawValue.getter() == 0x7261437961646F74 && v10 == 0xE900000000000064)
      {

LABEL_10:
        v12 = *(v9 + 24);
        v13 = *(v12 + 16);
        swift_bridgeObjectRetain_n();
        v14 = 0;
        while (1)
        {
          if (v14 == v13)
          {
            v25 = 0;
            v14 = v13;
            v23 = 0u;
            v24 = 0u;
          }

          else
          {
            if ((v14 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

            if (v14 >= *(v12 + 16))
            {
              goto LABEL_28;
            }

            sub_1E1300B24(v12 + 32 + 40 * v14++, &v23);
          }

          v21[0] = v23;
          v21[1] = v24;
          v22 = v25;
          if (!*(&v24 + 1))
          {
            break;
          }

          sub_1E1361B28(v21, v20);
          sub_1E1300B24(v20, v18);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
          type metadata accessor for TodayCard(0);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v19 = 0;
          }

          __swift_destroy_boxed_opaque_existential_1(v20);
          if (v19)
          {
            sub_1E1894874(&v23, *(*(v19 + 64) + 16));
          }
        }

        swift_bridgeObjectRelease_n();

        v5 = v15;
        v1 = v16;
        v7 = v6;
        if (!v4)
        {
          break;
        }
      }

      else
      {
        v11 = sub_1E1AF74AC();

        if (v11)
        {
          goto LABEL_10;
        }

        v7 = v6;
        if (!v4)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v6 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v6 >= v5)
    {

      return;
    }

    v4 = *(v1 + 8 * v6);
    ++v7;
    if (v4)
    {
      goto LABEL_6;
    }
  }

LABEL_29:
  __break(1u);
}

char *TodayPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v150 = a2;
  v155 = a1;
  v145 = *v2;
  v3 = sub_1E1AF39DC();
  v151 = *(v3 - 8);
  v152 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v140 = v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v141 = (v124 - v6);
  MEMORY[0x1EEE9AC00](v7);
  v148 = v124 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v136 = v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v134 = v124 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v124 - v14;
  v16 = sub_1E1AF380C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v137 = v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v135 = v124 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v133 = v124 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v132 = v124 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v124 - v26;
  v28 = sub_1E1AF5A6C();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v130 = v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v129 = v124 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v131 = v124 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = v124 - v36;
  v38 = OBJC_IVAR____TtC11AppStoreKit9TodayPage_allCardMediaKinds;
  v142 = v2;
  *&v2[OBJC_IVAR____TtC11AppStoreKit9TodayPage_allCardMediaKinds] = MEMORY[0x1E69E7CD0];
  sub_1E1AF381C();
  sub_1E1AF374C();
  v39 = v28;
  v138 = v17;
  v41 = *(v17 + 8);
  v40 = v17 + 8;
  v42 = v27;
  v43 = v41;
  v44 = v16;
  v41(v42, v16);
  v143 = v29[6];
  v144 = v29 + 6;
  if (v143(v15, 1, v39) == 1)
  {
    sub_1E1308058(v15, &qword_1ECEB1F90, &qword_1E1B00D30);
    v45 = sub_1E1AF5A7C();
    sub_1E170CDB0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v46 = 0x7365766C656873;
    v47 = v145;
    v46[1] = 0xE700000000000000;
    v46[2] = v47;
    (*(*(v45 - 8) + 104))(v46, *MEMORY[0x1E69AB690], v45);
    swift_willThrow();
    (*(v151 + 8))(v150, v152);
    v43(v155, v16);

    type metadata accessor for TodayPage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v48 = v142;
    v127 = v38;
    v145 = v43;
    v146 = v40;
    v139 = v44;
    v49 = v29[4];
    v126 = v29 + 4;
    v125 = v49;
    v49(v37, v15, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
    v50 = swift_allocObject();
    *(v50 + 16) = MEMORY[0x1E69E7CC0];
    *&v153 = v50;
    if (qword_1EE1E3BC8 != -1)
    {
      swift_once();
    }

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
    __swift_project_value_buffer(v51, qword_1EE1E3BD0);
    v52 = v148;
    sub_1E1AF395C();

    v53 = v29[2];
    v128 = v37;
    v53(v131, v37, v39);
    v54 = *(v151 + 16);
    v147 = v39;
    v124[1] = v151 + 16;
    v124[0] = v54;
    v54(v141, v52, v152);
    type metadata accessor for Shelf(0);
    sub_1E170CDB0(&qword_1EE1E5488, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
    v55 = sub_1E1AF631C();
    v56 = sub_1E175EC2C(v55);
    v58 = v57;

    v59 = v48;
    *&v48[OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfOrdering] = v56;
    *&v48[OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfMapping] = v58;
    v60 = v132;
    sub_1E1AF381C();
    v61 = sub_1E1AF37CC();
    v63 = v62;
    v64 = v139;
    v141 = v29;
    v65 = v145;
    v145(v60, v139);
    v66 = &v59[OBJC_IVAR____TtC11AppStoreKit9TodayPage_title];
    *v66 = v61;
    v66[1] = v63;
    sub_1E1AF381C();
    v67 = sub_1E1AF37CC();
    v69 = v68;
    v65(v60, v64);
    v70 = &v59[OBJC_IVAR____TtC11AppStoreKit9TodayPage_titleDetail];
    *v70 = v67;
    v70[1] = v69;
    sub_1E1AF381C();
    v71 = sub_1E1AF37CC();
    v73 = v72;
    v65(v60, v64);
    v74 = &v59[OBJC_IVAR____TtC11AppStoreKit9TodayPage_shortTitleDetail];
    *v74 = v71;
    v74[1] = v73;
    sub_1E1AF381C();
    v75 = sub_1E1AF37CC();
    v77 = v76;
    v65(v60, v64);
    v78 = &v59[OBJC_IVAR____TtC11AppStoreKit9TodayPage_longTitle];
    *v78 = v75;
    v78[1] = v77;
    sub_1E1AF381C();
    v79 = sub_1E1AF37CC();
    v81 = v80;
    v65(v60, v64);
    v82 = &v59[OBJC_IVAR____TtC11AppStoreKit9TodayPage_tabTitle];
    *v82 = v79;
    v82[1] = v81;
    sub_1E1AF381C();
    sub_1E1AF37EC();
    v65(v60, v64);
    v83 = &v59[OBJC_IVAR____TtC11AppStoreKit9TodayPage_nextPage];
    v84 = v154;
    *v83 = v153;
    *(v83 + 1) = v84;
    v85 = v133;
    sub_1E1AF381C();
    v86 = v134;
    sub_1E1AF374C();
    v65(v85, v64);
    v87 = v147;
    v88 = v143(v86, 1, v147);
    v89 = v141;
    if (v88 == 1)
    {
      sub_1E1308058(v86, &qword_1ECEB1F90, &qword_1E1B00D30);
      v90 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v91 = v129;
      v125(v129, v86, v87);
      v92 = v149;
      v90 = sub_1E1AF59FC();
      v149 = v92;
      v89[1](v91, v87);
    }

    v93 = v127;
    *&v59[OBJC_IVAR____TtC11AppStoreKit9TodayPage_onboardingCardIds] = v90;
    swift_beginAccess();

    sub_1E170BB9C(v94);
    v96 = v95;

    swift_beginAccess();
    *&v93[v59] = v96;

    sub_1E1AF381C();
    v97 = sub_1E1AF37CC();
    v99 = v98;
    v100 = v145;
    v145(v60, v64);
    v101 = &v59[OBJC_IVAR____TtC11AppStoreKit9TodayPage_widgetKind];
    *v101 = v97;
    v101[1] = v99;
    v102 = v135;
    sub_1E1AF381C();
    v103 = v136;
    sub_1E1AF374C();
    v100(v102, v64);
    v104 = v147;
    if (v143(v103, 1, v147) == 1)
    {
      sub_1E1308058(v103, &qword_1ECEB1F90, &qword_1E1B00D30);
      v105 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v106 = v130;
      v125(v130, v103, v104);
      sub_1E170D184();
      v107 = v149;
      v105 = sub_1E1AF59FC();
      v149 = v107;
      v141[1](v106, v104);
    }

    v108 = v151;
    *&v59[OBJC_IVAR____TtC11AppStoreKit9TodayPage_dateRelevance] = v105;
    v109 = v155;
    sub_1E1AF381C();
    v110 = sub_1E1AF37CC();
    v112 = v111;
    v113 = v139;
    v114 = v145;
    v145(v60, v139);
    v115 = &v59[OBJC_IVAR____TtC11AppStoreKit9TodayPage_feedPreviewUrl];
    *v115 = v110;
    v115[1] = v112;
    v116 = v137;
    (*(v138 + 16))(v137, v109, v113);
    v117 = v140;
    v118 = v150;
    v119 = v152;
    (v124[0])(v140, v150, v152);
    v120 = v149;
    v121 = BasePage.init(deserializing:using:)(v116, v117);
    if (v120)
    {
      v38 = *(v108 + 8);
      (v38)(v118, v119);
      v114(v109, v113);
      (v38)(v148, v119);
    }

    else
    {
      v38 = v121;
      v122 = *(v108 + 8);
      v122(v118, v119);
      v114(v109, v113);
      v122(v148, v119);
    }

    v141[1](v128, v147);
  }

  return v38;
}

uint64_t type metadata accessor for TodayPage(uint64_t a1)
{
  result = qword_1EE1D2CA8;
  if (!qword_1EE1D2CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E170CDB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E170CDF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v27 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = sub_1E1AEFE6C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  sub_1E1AF381C();
  sub_1E1AF371C();
  v18 = *(v9 + 8);
  v28 = v8;
  v18(v13, v8);
  v31 = v15;
  v19 = *(v15 + 48);
  if (v19(v7, 1, v14) == 1)
  {
    result = sub_1E1308058(v7, &unk_1ECEBB780, &unk_1E1B029A0);
    v21 = 0;
  }

  else
  {
    (*(v31 + 32))(v17, v7, v14);
    v22 = v27;
    sub_1E1AF381C();
    v23 = v30;
    sub_1E1AF371C();
    v18(v22, v28);
    v24 = sub_1E1AEFDBC();
    if (v19(v23, 1, v14) == 1)
    {
      v25 = 0;
      v26 = v31;
    }

    else
    {
      v25 = sub_1E1AEFDBC();
      v26 = v31;
      (*(v31 + 8))(v23, v14);
    }

    v21 = [objc_allocWithZone(MEMORY[0x1E696E810]) initWithStartDate:v24 endDate:v25];

    result = (*(v26 + 8))(v17, v14);
  }

  *v32 = v21;
  return result;
}

unint64_t sub_1E170D184()
{
  result = qword_1ECEB83D8;
  if (!qword_1ECEB83D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECEB83D8);
  }

  return result;
}

uint64_t TodayPage.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_title);

  return v1;
}

uint64_t TodayPage.titleDetail.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_titleDetail);

  return v1;
}

uint64_t TodayPage.shortTitleDetail.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shortTitleDetail);

  return v1;
}

uint64_t TodayPage.longTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_longTitle);

  return v1;
}

uint64_t TodayPage.tabTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_tabTitle);

  return v1;
}

double sub_1E170D368(uint64_t (*a1)(uint64_t))
{
  v3 = OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfMapping;
  swift_beginAccess();

  sub_1E14E6CA4(v4, a1);
  v6 = v5;

  *(v1 + v3) = v6;

  return result;
}

uint64_t sub_1E170D3F4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v92 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v105 = &v92 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v106 = &v92 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v112 = &v92 - v12;
  v108 = sub_1E1AF3C3C();
  v113 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v114 = &v92 - v15;
  v16 = OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfOrdering;
  swift_beginAccess();
  v17 = *(a1 + v16);
  v18 = MEMORY[0x1E69E7CC0];
  v116[0] = MEMORY[0x1E69E7CC0];
  v19 = *(v17 + 16);
  v20 = OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfMapping;

  swift_beginAccess();
  if (!v19)
  {
    goto LABEL_14;
  }

  v21 = 0;
  v22 = v17 + 32;
  v109 = v19 - 1;
  v111 = v4;
  v110 = v17 + 32;
  do
  {
    v23 = v22 + 40 * v21;
    v24 = v21;
    while (1)
    {
      if (v24 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      sub_1E134E724(v23, v117);
      if (*(*(a1 + v20) + 16))
      {
        break;
      }

LABEL_4:
      ++v24;
      sub_1E134B88C(v117);
      v23 += 40;
      if (v19 == v24)
      {
        v4 = v111;
        goto LABEL_14;
      }
    }

    sub_1E135FCF4(v117);
    if ((v25 & 1) == 0)
    {

      goto LABEL_4;
    }

    v26 = sub_1E134B88C(v117);
    MEMORY[0x1E68FEF20](v26);
    if (*((v116[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v21 = v24 + 1;
    sub_1E1AF62AC();
    v18 = v116[0];
    v4 = v111;
    v22 = v110;
  }

  while (v109 != v24);
LABEL_14:

  v27 = sub_1E175EC2C(v18);
  v29 = v28;

  v95 = sub_1E175EF08(v27, v29, 1, v4, &protocol witness table for TodayPage);
  v31 = v30;

  v32 = *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_title);
  v33 = *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_title + 8);
  v34 = *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_titleDetail);
  v35 = *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_titleDetail + 8);
  v36 = *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shortTitleDetail + 8);
  v98 = *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shortTitleDetail);
  v111 = v36;
  v37 = *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_longTitle + 8);
  v97 = *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_longTitle);
  v110 = v37;
  v38 = *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_tabTitle + 8);
  v96 = *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_tabTitle);
  v109 = v38;
  sub_1E134FD1C(a1 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_nextPage, v117, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v39 = *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_onboardingCardIds);
  v40 = *(v2 + 16);
  v102 = v32;
  v101 = v33;
  v100 = v34;
  v99 = v35;
  if (v40)
  {
    v41 = *(a1 + 16);

    v103 = sub_1E16F6684(v41);
  }

  else
  {
    v103 = *(a1 + 16);
  }

  v43 = v113;
  v42 = v114;
  v44 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v45 = *(v43 + 16);
  v46 = v42;
  v47 = v108;
  v45(v46, v2 + v44, v108);
  v94 = *(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent);
  v48 = sub_1E1AF39DC();
  v104 = *(v48 - 8);
  v49 = v112;
  (*(v104 + 56))(v112, 1, 1, v48);
  type metadata accessor for TodayPage(0);
  v2 = swift_allocObject();
  v50 = OBJC_IVAR____TtC11AppStoreKit9TodayPage_allCardMediaKinds;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_allCardMediaKinds) = MEMORY[0x1E69E7CD0];
  *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfOrdering) = v95;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shelfMapping) = v31;
  v51 = (v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_title);
  v52 = v101;
  *v51 = v102;
  v51[1] = v52;
  v53 = (v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_titleDetail);
  v54 = v99;
  *v53 = v100;
  v53[1] = v54;
  v55 = (v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_shortTitleDetail);
  v56 = v111;
  *v55 = v98;
  v55[1] = v56;
  v57 = (v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_longTitle);
  v58 = v110;
  *v57 = v97;
  v57[1] = v58;
  v59 = (v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_tabTitle);
  v60 = v109;
  *v59 = v96;
  v59[1] = v60;
  sub_1E134FD1C(v117, v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_onboardingCardIds) = v39;

  sub_1E170BB9C(v61);
  v63 = v62;

  swift_beginAccess();
  *(v2 + v50) = v63;
  v64 = v114;
  v65 = (v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_widgetKind);
  *v65 = 0;
  v65[1] = 0;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_dateRelevance) = MEMORY[0x1E69E7CC0];
  v66 = (v2 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_feedPreviewUrl);
  *v66 = 0;
  v66[1] = 0;
  v67 = v107;
  v45(v107, v64, v47);
  v68 = v49;
  v69 = v106;
  sub_1E134FD1C(v68, v106, &qword_1ECEB3B28, &unk_1E1B11460);
  *(v2 + 16) = v103;
  v45((v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v67, v47);
  *(v2 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v94;
  v70 = v105;
  sub_1E134FD1C(v69, v105, &qword_1ECEB3B28, &unk_1E1B11460);
  v71 = *(v104 + 48);
  v93 = v48;
  if (v71(v70, 1, v48) == 1)
  {

    sub_1E1308058(v69, &qword_1ECEB3B28, &unk_1E1B11460);
    v72 = *(v113 + 8);
    v72(v67, v47);
    sub_1E1308058(v112, &qword_1ECEB3B28, &unk_1E1B11460);
    v72(v64, v47);
    sub_1E1308058(v117, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v73 = v70;
    v74 = &qword_1ECEB3B28;
    v75 = &unk_1E1B11460;
    goto LABEL_26;
  }

  v111 = v71;
  v76 = qword_1EE1E3BC8;

  if (v76 != -1)
  {
LABEL_30:
    swift_once();
  }

  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
  __swift_project_value_buffer(v77, qword_1EE1E3BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
  sub_1E1AF39EC();
  v78 = v115;
  v79 = v92;
  v80 = v112;
  v81 = v106;
  v82 = v104;
  if (v115)
  {
  }

  v83 = *(v82 + 8);
  v84 = v93;
  v83(v105, v93);
  if (v78)
  {
    sub_1E134FD1C(v81, v79, &qword_1ECEB3B28, &unk_1E1B11460);
    if (v111(v79, 1, v84) == 1)
    {

      sub_1E1308058(v81, &qword_1ECEB3B28, &unk_1E1B11460);
      v85 = *(v113 + 8);
      v86 = v108;
      v85(v107, v108);
      sub_1E1308058(v80, &qword_1ECEB3B28, &unk_1E1B11460);
      v85(v114, v86);
      sub_1E1308058(v117, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      v73 = v79;
      v74 = &qword_1ECEB3B28;
      v75 = &unk_1E1B11460;
      goto LABEL_26;
    }

    sub_1E15F0974();

    sub_1E1308058(v81, &qword_1ECEB3B28, &unk_1E1B11460);
    v90 = *(v113 + 8);
    v91 = v108;
    v90(v107, v108);
    sub_1E1308058(v80, &qword_1ECEB3B28, &unk_1E1B11460);
    v90(v114, v91);
    sub_1E1308058(v117, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v83(v79, v93);
  }

  else
  {

    sub_1E1308058(v81, &qword_1ECEB3B28, &unk_1E1B11460);
    v87 = *(v113 + 8);
    v88 = v108;
    v87(v107, v108);
    sub_1E1308058(v80, &qword_1ECEB3B28, &unk_1E1B11460);
    v87(v114, v88);
    v74 = &qword_1ECEB2DF0;
    v75 = &unk_1E1B02CE0;
    v73 = v117;
LABEL_26:
    sub_1E1308058(v73, v74, v75);
  }

  return v2;
}

uint64_t TodayPage.widgetKind.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_widgetKind);

  return v1;
}

uint64_t TodayPage.feedPreviewUrl.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_feedPreviewUrl);

  return v1;
}

double sub_1E170E0C8()
{

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return result;
}

uint64_t TodayPage.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit9TodayPage_nextPage, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return v0;
}

uint64_t TodayPage.__deallocating_deinit()
{
  TodayPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E170E40C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E170D3F4(*a1);
  *a2 = result;
  return result;
}

void *sub_1E170E630(void **a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v8 = sub_1E1AF576C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v62[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62[-v13];
  v15 = sub_1E1AEFE6C();
  v66 = *(v15 - 8);
  v67 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v62[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = *a3;
  v4[5] = MEMORY[0x1E69E7CC0];
  v64 = (v4 + 5);
  if (qword_1EE1F9658 != -1)
  {
    swift_once();
  }

  v72 = qword_1EE1F9660;
  [qword_1EE1F9660 lock];
  if (qword_1EE1F9670 != -1)
  {
    swift_once();
  }

  v17 = off_1EE1E1910;
  if (off_1EE1E1910)
  {

    v18 = v65;
    sub_1E1AEFE5C();
    sub_1E1AEFE1C();
    v20 = v19;
    (*(v66 + 8))(v18, v67);
    swift_beginAccess();
    v17[16] = v20;
    *(v17 + 136) = 0;
  }

  v69 = v4;
  [v72 unlock];
  v21 = sub_1E1AF575C();
  v23 = ASKPerformanceProfileGetForCurrentDevice(v21, v22);
  v71 = a2;
  v24 = v14;
  if (v23)
  {
    v25 = v14;
    v26 = a1;
    v27 = v9;
    v28 = v8;
    v29 = ASKDeviceTypeGetCurrent();
    v30 = sub_1E1AF5DFC();
    v32 = v31;
    if (v30 == sub_1E1AF5DFC() && v32 == v33)
    {

      v8 = v28;
      v9 = v27;
      a1 = v26;
      v24 = v25;
    }

    else
    {
      v34 = sub_1E1AF74AC();

      v8 = v28;
      v9 = v27;
      a1 = v26;
      v24 = v25;
      if ((v34 & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  sub_1E1AF574C();
LABEL_13:
  sub_1E1AF57AC();
  v35 = *a1;
  v36 = *(v9 + 16);
  v70 = v24;
  v36(v11, v24, v8);

  v37 = v35;
  sub_1E1535508();
  v38 = v68;
  v39 = sub_1E1AF578C();
  if (v38)
  {
    sub_1E14382EC(v38);
    sub_1E1AF44CC();
    v40 = sub_1E1AF44BC();
    sub_1E14EFB84(v40, MEMORY[0x1E69AB170], 7368801, 0xE300000000000000);
    v41 = v69;

    swift_willThrow();

    sub_1E1712344(a1);
    (*(v9 + 8))(v70, v8);

    type metadata accessor for JSService();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v69;
    v69[2] = v39;
    if (qword_1EE1ED910 != -1)
    {
      swift_once();
    }

    [qword_1EE216A18 setValue_];
    v42 = v41[2];
    type metadata accessor for JSGarbageCollector(0);
    v43 = swift_allocObject();
    *(v43 + 24) = v42;
    v44 = objc_allocWithZone(MEMORY[0x1E69AB830]);

    *(v43 + 32) = [v44 init];
    sub_1E1AF3F2C();
    *(v43 + 16) = v63;
    v41[3] = v43;
    type metadata accessor for NetworkActivity();
    sub_1E1AF413C();
    v41[4] = *&v73[0];
    v45 = swift_allocObject();
    swift_weakInit();

    sub_1E154A7E8(sub_1E1712398, v45, v73);

    v46 = v64;
    swift_beginAccess();
    v47 = v41[5];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41[5] = v47;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v47 = sub_1E172E854(0, *(v47 + 2) + 1, 1, v47);
      *v46 = v47;
    }

    v50 = *(v47 + 2);
    v49 = *(v47 + 3);
    if (v50 >= v49 >> 1)
    {
      v47 = sub_1E172E854((v49 > 1), v50 + 1, 1, v47);
    }

    *(v47 + 2) = v50 + 1;
    sub_1E1301CF0(v73, &v47[32 * v50 + 32]);
    v41[5] = v47;
    swift_endAccess();
    v51 = swift_allocObject();
    swift_weakInit();

    sub_1E154A7C0(sub_1E17123B8, v51, v73);

    swift_beginAccess();
    v52 = v41[5];
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v41[5] = v52;
    if ((v53 & 1) == 0)
    {
      v52 = sub_1E172E854(0, *(v52 + 2) + 1, 1, v52);
      *v46 = v52;
    }

    v55 = *(v52 + 2);
    v54 = *(v52 + 3);
    if (v55 >= v54 >> 1)
    {
      v52 = sub_1E172E854((v54 > 1), v55 + 1, 1, v52);
    }

    *(v52 + 2) = v55 + 1;
    sub_1E1301CF0(v73, &v52[32 * v55 + 32]);
    v41[5] = v52;
    swift_endAccess();
    swift_allocObject();
    swift_weakInit();

    sub_1E1AF571C();

    v56 = *(v41[3] + 16) == 1;

    sub_1E1661520(v56);

    [v72 lock];
    v57 = off_1EE1E1910;
    if (off_1EE1E1910)
    {

      v58 = v65;
      sub_1E1AEFE5C();
      sub_1E1AEFE1C();
      v60 = v59;
      (*(v66 + 8))(v58, v67);
      swift_beginAccess();
      v57[18] = v60;
      *(v57 + 152) = 0;
    }

    [v72 unlock];

    sub_1E1712344(a1);
    (*(v9 + 8))(v70, v8);
  }

  return v41;
}

uint64_t sub_1E170EF8C(uint64_t a1, unsigned __int8 a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1E1AF577C();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v4 = sub_1E1661320(a2);
    sub_1E1661520(v4);
  }

  return result;
}

void sub_1E170F078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E1AF56FC();
  sub_1E17123E0(&qword_1EE1D2810, MEMORY[0x1E69AB618], MEMORY[0x1E69AB620]);
  v5 = swift_allocError();
  (*(*(v4 - 8) + 16))(v6, a2, v4);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v8 = Strong;
  if (Strong)
  {
    Strong = type metadata accessor for JSService();
  }

  else
  {
    v9[1] = 0;
    v9[2] = 0;
  }

  v9[0] = v8;
  v9[3] = Strong;
  sub_1E14EE420(v5, v9);
  sub_1E1308058(v9, &qword_1ECEB2DF0, &unk_1E1B02CE0);
}

uint64_t sub_1E170F19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[63] = a7;
  v8[64] = v7;
  v8[61] = a5;
  v8[62] = a6;
  v8[59] = a3;
  v8[60] = a4;
  v8[57] = a1;
  v8[58] = a2;
  v8[65] = type metadata accessor for JSRequestIntentFetchError(0);
  v8[66] = swift_task_alloc();
  sub_1E1AF389C();
  v8[67] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[68] = AssociatedTypeWitness;
  v8[69] = *(AssociatedTypeWitness - 8);
  v8[70] = swift_task_alloc();
  v11 = sub_1E1AF409C();
  v8[71] = v11;
  v8[72] = *(v11 - 8);
  v8[73] = swift_task_alloc();
  v12 = sub_1E1AF426C();
  v8[74] = v12;
  v8[75] = *(v12 - 8);
  v8[76] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0, &qword_1E1B03330);
  v8[77] = v13;
  v8[78] = *(v13 - 8);
  v8[79] = swift_task_alloc();
  v14 = sub_1E1AF3D0C();
  v8[80] = v14;
  v8[81] = *(v14 - 8);
  v8[82] = swift_task_alloc();
  v15 = sub_1E1AF4C2C();
  v8[83] = v15;
  v8[84] = *(v15 - 8);
  v8[85] = swift_task_alloc();
  v8[86] = *(a6 - 8);
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  v16 = sub_1E1AF0F7C();
  v8[89] = v16;
  v8[90] = *(v16 - 8);
  v8[91] = swift_task_alloc();
  v8[92] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E170F588, 0, 0);
}

uint64_t sub_1E170F588()
{
  v72 = v0;
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 704);
  v2 = *(v0 + 688);
  v3 = *(v0 + 496);
  v4 = *(v0 + 464);
  v5 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v5, qword_1EE1F7BE8);
  sub_1E1AF0F8C();
  sub_1E1AF0F4C();
  v69 = *(v2 + 16);
  v69(v1, v4, v3);
  v6 = sub_1E1AF0F8C();
  v7 = sub_1E1AF6A1C();
  if (sub_1E1AF6D6C())
  {
    v8 = *(v0 + 704);
    v9 = *(v0 + 688);
    v10 = *(v0 + 496);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v70 = v12;
    *v11 = 136315138;
    v13 = sub_1E1AF390C();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_1E1972EA0(v13, v15, &v70);

    *(v11 + 4) = v16;
    v17 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v6, v7, v17, "JSService.JSIntentDispatch", "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E6901640](v12, -1, -1);
    MEMORY[0x1E6901640](v11, -1, -1);
  }

  else
  {
    v18 = *(v0 + 704);
    v19 = *(v0 + 688);
    v20 = *(v0 + 496);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 544);
  (*(*(v0 + 720) + 16))(*(v0 + 728), *(v0 + 736), *(v0 + 712));
  sub_1E1AF0FEC();
  swift_allocObject();
  *(v0 + 744) = sub_1E1AF0FDC();
  v22 = swift_allocObject();
  *(v0 + 752) = v22;
  *(v22 + 16) = 0;
  *(v22 + 24) = 0xE000000000000000;
  sub_1E1AF38FC();
  *(v0 + 424) = v21;
  swift_getExtendedExistentialTypeMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB83F8, &qword_1E1B2BFE0);
  if (swift_dynamicCast())
  {
    sub_1E1337DC8((v0 + 64), (v0 + 16));
    sub_1E1AF4C1C();
    v23 = swift_dynamicCastClass();

    if (!v23)
    {
      sub_1E1AF422C();
    }

    type metadata accessor for ASKBagContract(0);
    sub_1E1AF421C();
    sub_1E1AF55EC();
    *(v0 + 760) = *(v0 + 432);
    if (qword_1EE1E3130 != -1)
    {
      swift_once();
    }

    v43 = *(v0 + 680);
    v44 = *(v0 + 672);
    v45 = *(v0 + 656);
    v46 = *(v0 + 648);
    v47 = *(v0 + 640);
    v48 = *(v0 + 632);
    v49 = *(v0 + 624);
    v64 = *(v0 + 616);
    v67 = *(v0 + 496);
    v68 = *(v0 + 696);
    v65 = *(v0 + 664);
    v66 = *(v0 + 464);
    (*(v46 + 104))(v45, *MEMORY[0x1E69AAFD0], v47);
    sub_1E1AF52AC();
    (*(v46 + 8))(v45, v47);
    sub_1E1AF532C();
    (*(v49 + 8))(v48, v64);
    *v43 = *(v0 + 440);
    v50 = *(v44 + 104);
    v50(v43, *MEMORY[0x1E69AB2E8], v65);
    v51 = sub_1E1AF4BDC();

    v52 = *(v44 + 8);
    v52(v43, v65);
    v69(v68, v66, v67);
    if (swift_dynamicCast())
    {
      v53 = *(v0 + 680);
      v54 = *(v0 + 664);

      v50(v53, *MEMORY[0x1E69AB2E0], v54);
      v55 = sub_1E1AF4BCC();

      v52(v53, v54);
      v51 = v55;
    }

    *(v0 + 768) = v51;
    v56 = *(v0 + 512);
    sub_1E1383E78(v0 + 16, v0 + 112);
    sub_1E1AF427C();
    v57 = *(v56 + 32);
    *(v0 + 776) = v57;
    if (v57)
    {
      NetworkActivity.begin()();
    }

    *(v0 + 784) = *(*(v0 + 512) + 16);
    v58 = swift_task_alloc();
    *(v0 + 792) = v58;
    *v58 = v0;
    v58[1] = sub_1E1710104;
    v59 = *(v0 + 608);
    v60 = *(v0 + 592);
    v61 = *(v0 + 584);
    v62 = *(v0 + 488);
    v63 = MEMORY[0x1E69AB0F8];

    return MEMORY[0x1EEE17978](v61, v59, v62, v60, v63);
  }

  else
  {
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 64) = 0u;
    sub_1E1308058(v0 + 64, &unk_1ECEB8400, &qword_1E1B2BFE8);
    if (qword_1EE1E35B0 != -1)
    {
      swift_once();
    }

    v24 = sub_1E1AF591C();
    __swift_project_value_buffer(v24, qword_1EE216158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v25 = sub_1E1AF390C();
    *(v0 + 304) = MEMORY[0x1E69E6158];
    *(v0 + 280) = v25;
    *(v0 + 288) = v26;
    sub_1E1AF385C();
    sub_1E1308058(v0 + 280, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    v70 = 0;
    v71 = 0xE000000000000000;
    sub_1E1AF6FEC();
    MEMORY[0x1E68FECA0](0xD000000000000011, 0x80000001E1B72330);
    v27 = sub_1E1AF390C();
    MEMORY[0x1E68FECA0](v27);

    MEMORY[0x1E68FECA0](0xD000000000000022, 0x80000001E1B72300);
    v29 = v70;
    v28 = v71;
    *(v22 + 16) = v70;
    *(v22 + 24) = v28;
    v30 = sub_1E1AF0F8C();
    v31 = sub_1E1AF6A2C();
    if (sub_1E1AF6D6C())
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v70 = v33;
      *v32 = 136315138;

      v34 = sub_1E1972EA0(v29, v28, &v70);

      *(v32 + 4) = v34;
      v35 = sub_1E1AF0F5C();
      _os_signpost_emit_with_name_impl(&dword_1E12FC000, v30, v31, v35, "Error", "%s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1E6901640](v33, -1, -1);
      MEMORY[0x1E6901640](v32, -1, -1);
    }

    v36 = sub_1E1AF4C3C();
    sub_1E17123E0(&qword_1ECEB70B8, MEMORY[0x1E69AB300], MEMORY[0x1E69AB308]);
    swift_allocError();
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x1E69AB2F0], v36);
    swift_willThrow();
    v38 = *(v0 + 736);
    v39 = *(v0 + 720);
    v40 = *(v0 + 712);
    sub_1E1710CFC("JSService.JSIntentDispatch", 26, 2, *(v0 + 744), *(v0 + 752));

    (*(v39 + 8))(v38, v40);

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_1E1710104()
{
  *(*v1 + 800) = v0;

  if (v0)
  {
    v2 = sub_1E1710938;
  }

  else
  {
    v2 = sub_1E1710218;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

id sub_1E1710218()
{
  v1 = sub_1E1AF408C();
  if (*(v1 + 16))
  {
    v2 = *(v0 + 512);
    v3 = v1;
    *(v0 + 368) = type metadata accessor for JSService();
    *(v0 + 344) = v2;

    sub_1E14EE6E8(v3, v0 + 344);

    sub_1E1308058(v0 + 344, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  else
  {
  }

  v4 = *(v0 + 800);
  sub_1E1711094(*(v0 + 584), *(v0 + 472), *(v0 + 480), *(v0 + 544), *(v0 + 560));
  if (!v4)
  {
    v22 = *(v0 + 776);
    if (v22)
    {
      v23 = *(v22 + 16);
      result = [v23 lock];
      v24 = *(v22 + 80);
      v10 = __OFSUB__(v24, 1);
      v25 = v24 - 1;
      if (v10)
      {
        goto LABEL_27;
      }

      *(v22 + 80) = v25;
      if (!v25)
      {
        swift_beginAccess();
        sub_1E1300B24(v22 + 40, v0 + 240);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 240), *(v0 + 264));
        v26 = swift_allocObject();
        v26[2] = v22;
        v26[3] = sub_1E1A8BF44;
        v26[4] = 0;

        sub_1E1AF3FAC();

        __swift_destroy_boxed_opaque_existential_1((v0 + 240));
      }

      [v23 unlock];
    }

    v27 = *(v0 + 608);
    v28 = *(v0 + 600);
    v29 = *(v0 + 592);
    v30 = *(v0 + 584);
    v31 = *(v0 + 576);
    v32 = *(v0 + 568);
    v43 = *(v0 + 560);
    v33 = *(v0 + 552);
    v34 = *(v0 + 544);
    v35 = *(v0 + 456);

    (*(v31 + 8))(v30, v32);
    (*(v28 + 8))(v27, v29);
    (*(v33 + 32))(v35, v43, v34);
    sub_1E1AF413C();
    if (*(v0 + 809))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    }

    else
    {
      sub_1E1AF573C();

      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    }

    v40 = *(v0 + 736);
    v41 = *(v0 + 720);
    v42 = *(v0 + 712);
    sub_1E1710CFC("JSService.JSIntentDispatch", 26, 2, *(v0 + 744), *(v0 + 752));

    (*(v41 + 8))(v40, v42);

    v39 = *(v0 + 8);
    goto LABEL_23;
  }

  v5 = v4;
  (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));
  v6 = *(v0 + 776);
  if (v6)
  {
    v7 = *(v6 + 16);
    result = [v7 lock];
    v9 = *(v6 + 80);
    v10 = __OFSUB__(v9, 1);
    v11 = v9 - 1;
    if (!v10)
    {
      *(v6 + 80) = v11;
      if (!v11)
      {
        swift_beginAccess();
        sub_1E1300B24(v6 + 40, v0 + 200);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 200), *(v0 + 224));
        v12 = swift_allocObject();
        v12[2] = v6;
        v12[3] = sub_1E1A8BF44;
        v12[4] = 0;

        sub_1E1AF3FAC();

        __swift_destroy_boxed_opaque_existential_1((v0 + 200));
      }

      [v7 unlock];
      goto LABEL_10;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

LABEL_10:
  v13 = *(v0 + 608);
  v14 = *(v0 + 600);
  v15 = *(v0 + 592);
  v16 = *(v0 + 528);
  v17 = *(v0 + 520);
  v18 = *(v0 + 512);
  (*(v14 + 16))(v16, v13, v15);
  *(v16 + *(v17 + 20)) = v5;
  sub_1E17123E0(&qword_1EE1D8AE0, type metadata accessor for JSRequestIntentFetchError, &unk_1E1B26980);
  v19 = swift_allocError();
  sub_1E1712428(v16, v20);
  *(v0 + 336) = type metadata accessor for JSService();
  *(v0 + 312) = v18;

  v21 = v5;
  sub_1E14EE420(v19, v0 + 312);
  sub_1E1308058(v0 + 312, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  swift_willThrow();

  sub_1E171248C(v16);
  (*(v14 + 8))(v13, v15);
  sub_1E1AF413C();
  if (*(v0 + 808))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    sub_1E1AF573C();

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v36 = *(v0 + 736);
  v37 = *(v0 + 720);
  v38 = *(v0 + 712);
  sub_1E1710CFC("JSService.JSIntentDispatch", 26, 2, *(v0 + 744), *(v0 + 752));

  (*(v37 + 8))(v36, v38);

  v39 = *(v0 + 8);
LABEL_23:

  return v39();
}

id sub_1E1710938()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 776);
  if (v2)
  {
    v3 = *(v2 + 16);
    result = [v3 lock];
    v5 = *(v2 + 80);
    v6 = __OFSUB__(v5, 1);
    v7 = v5 - 1;
    if (v6)
    {
      __break(1u);
      return result;
    }

    *(v2 + 80) = v7;
    if (!v7)
    {
      swift_beginAccess();
      sub_1E1300B24(v2 + 40, v0 + 200);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 200), *(v0 + 224));
      v8 = swift_allocObject();
      v8[2] = v2;
      v8[3] = sub_1E1A8BF44;
      v8[4] = 0;

      sub_1E1AF3FAC();

      __swift_destroy_boxed_opaque_existential_1((v0 + 200));
    }

    [v3 unlock];
  }

  v9 = *(v0 + 608);
  v10 = *(v0 + 600);
  v11 = *(v0 + 592);
  v12 = *(v0 + 528);
  v13 = *(v0 + 520);
  v14 = *(v0 + 512);
  (*(v10 + 16))(v12, v9, v11);
  *(v12 + *(v13 + 20)) = v1;
  sub_1E17123E0(&qword_1EE1D8AE0, type metadata accessor for JSRequestIntentFetchError, &unk_1E1B26980);
  v15 = swift_allocError();
  sub_1E1712428(v12, v16);
  *(v0 + 336) = type metadata accessor for JSService();
  *(v0 + 312) = v14;

  v17 = v1;
  sub_1E14EE420(v15, v0 + 312);
  sub_1E1308058(v0 + 312, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  swift_willThrow();

  sub_1E171248C(v12);
  (*(v10 + 8))(v9, v11);
  sub_1E1AF413C();
  if (*(v0 + 808))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    sub_1E1AF573C();

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v18 = *(v0 + 736);
  v19 = *(v0 + 720);
  v20 = *(v0 + 712);
  sub_1E1710CFC("JSService.JSIntentDispatch", 26, 2, *(v0 + 744), *(v0 + 752));

  (*(v19 + 8))(v18, v20);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1E1710CFC(const char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v29 = a1;
  v7 = sub_1E1AF0FBC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_1E1AF0F7C();
  v11 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v14 = sub_1E1AF0FAC();
  __swift_project_value_buffer(v14, qword_1EE1F7BE8);

  v15 = sub_1E1AF0F8C();
  sub_1E1AF0FCC();
  v27 = sub_1E1AF6A0C();
  result = sub_1E1AF6D6C();
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((a3 & 1) == 0)
  {

    if (!v29)
    {
      __break(1u);
LABEL_7:

      return (*(v11 + 8))(v13, v28);
    }

LABEL_12:

    sub_1E1AF0FFC();

    if ((*(v8 + 88))(v10, v7) == *MEMORY[0x1E69E93E8])
    {
      v17 = 0;
      v18 = 0;
      v19 = "[Error] Interval already ended";
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      v19 = "%s";
      v18 = 2;
      v17 = 1;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31 = v21;
    *v20 = v18;
    *(v20 + 1) = v17;
    *(v20 + 2) = 2080;
    swift_beginAccess();
    v22 = *(a5 + 16);
    v23 = *(a5 + 24);

    v24 = sub_1E1972EA0(v22, v23, &v31);

    *(v20 + 4) = v24;
    v25 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v15, v27, v25, v29, v19, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1E6901640](v21, -1, -1);
    MEMORY[0x1E6901640](v20, -1, -1);

    return (*(v11 + 8))(v13, v28);
  }

  if (v29 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v29 & 0xFFFFF800) != 0xD800)
  {
    if (v29 >> 16 <= 0x10)
    {

      v29 = &v30;
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1E1711094@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v109 = a2;
  v108 = a3;
  v114 = a1;
  v99 = a5;
  v6 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v96 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1E1AF0FBC();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v106 = *(v9 - 8);
  v107 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v105 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = a4;
  v98 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v118 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AEF4EC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v86 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB83E0, &qword_1E1B2BF90);
  v104 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v103 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v102 = &v86 - v22;
  v23 = sub_1E1AEFE6C();
  v116 = *(v23 - 8);
  v117 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v92 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v91 = &v86 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v101 = &v86 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v115 = &v86 - v30;
  v31 = sub_1E1AF0F7C();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v97 = &v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v86 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v86 - v38;
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v112 = v18;
  v113 = v13;
  v121 = v14;
  v40 = sub_1E1AF0FAC();
  v41 = __swift_project_value_buffer(v40, qword_1EE1F7BE8);
  sub_1E1AF0F6C();
  v89 = v41;
  v42 = sub_1E1AF0F8C();
  v43 = sub_1E1AF6A1C();
  if (sub_1E1AF6D6C())
  {
    v44 = v32;
    v45 = v31;
    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v42, v43, v47, "JSService.parseModel", "", v46, 2u);
    v48 = v46;
    v31 = v45;
    v32 = v44;
    MEMORY[0x1E6901640](v48, -1, -1);
  }

  v95 = v31;

  (*(v32 + 16))(v36, v39, v31);
  sub_1E1AF0FEC();
  swift_allocObject();
  v111 = sub_1E1AF0FDC();
  v49 = *(v32 + 8);
  v94 = v32 + 8;
  v90 = v49;
  v49(v39, v31);
  v50 = v102;
  sub_1E1AF406C();
  v51 = v112;
  sub_1E1AF3E5C();
  v52 = *(v104 + 8);
  v52(v50, v19);
  v53 = v115;
  sub_1E1AEF4DC();
  v54 = v121 + 8;
  v55 = *(v121 + 8);
  (v55)(v51, v113);
  v56 = v103;
  sub_1E1AF406C();
  v57 = v105;
  sub_1E1AF3E6C();
  v52(v56, v19);
  v58 = v118;
  v59 = v110;
  v109(v57);
  if (v59)
  {

    (*(v106 + 8))(v57, v107);
    return (*(v116 + 8))(v53, v117);
  }

  else
  {
    v109 = v55;
    v110 = 0;
    v121 = v54;
    (*(v106 + 8))(v57, v107);
    v61 = v101;
    sub_1E1AEFE5C();
    sub_1E17123E0(&qword_1EE1FADC0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v62 = v117;
    v63 = v53;
    if (sub_1E1AF5D7C())
    {
      if (qword_1EE1D2768 != -1)
      {
        swift_once();
      }

      v121 = sub_1E1AF591C();
      v114 = __swift_project_value_buffer(v121, qword_1EE216140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      v113 = *(*(sub_1E1AF38EC() - 8) + 72);
      *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
      sub_1E1AF382C();
      sub_1E1AF388C();
      sub_1E1AF387C();
      sub_1E1AEFE1C();
      v64 = MEMORY[0x1E69E63B0];
      v120 = MEMORY[0x1E69E63B0];
      v119 = v65;
      sub_1E1AF385C();
      sub_1E1308058(&v119, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF387C();
      v61 = v101;
      sub_1E1AEFE1C();
      v120 = v64;
      v119 = v66;
      sub_1E1AF385C();
      sub_1E1308058(&v119, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF387C();
      sub_1E1AF38AC();
      sub_1E1AF54AC();

      v67 = v100;
      v68 = v98;
      v62 = v117;
      v69 = v118;
    }

    else
    {
      v70 = *(v116 + 16);
      v70(v91, v53, v62);
      v70(v92, v61, v62);
      v71 = v112;
      sub_1E1AEF4CC();
      v72 = v93;
      sub_1E1AF407C();
      v67 = v100;
      v120 = v100;
      v73 = __swift_allocate_boxed_opaque_existential_0(&v119);
      v68 = v98;
      (*(v98 + 16))(v73, v58, v67);
      sub_1E1712090(v71, v72, &v119);
      v74 = v113;
      v75 = v109;
      (v109)(v72, v113);
      (v75)(v71, v74);
      __swift_destroy_boxed_opaque_existential_1(&v119);
      v76 = sub_1E1AF0F8C();
      v77 = v97;
      sub_1E1AF0FCC();
      v78 = sub_1E1AF6A0C();
      if (sub_1E1AF6D6C())
      {

        v79 = v86;
        sub_1E1AF0FFC();

        v80 = v87;
        v81 = v88;
        if ((*(v87 + 88))(v79, v88) == *MEMORY[0x1E69E93E8])
        {
          v82 = "[Error] Interval already ended";
        }

        else
        {
          (*(v80 + 8))(v79, v81);
          v82 = "";
        }

        v77 = v97;
        v83 = swift_slowAlloc();
        *v83 = 0;
        v84 = sub_1E1AF0F5C();
        _os_signpost_emit_with_name_impl(&dword_1E12FC000, v76, v78, v84, "JSService.parseModel", v82, v83, 2u);
        MEMORY[0x1E6901640](v83, -1, -1);
        v62 = v117;
        v61 = v101;
      }

      v90(v77, v95);
      v63 = v115;
      v69 = v118;
    }

    v85 = *(v116 + 8);
    v85(v61, v62);
    v85(v63, v62);
    return (*(v68 + 32))(v99, v69, v67);
  }
}

uint64_t sub_1E1711D88()
{

  return swift_deallocClassInstance();
}

uint64_t IntentDispatchOptions.withGarbageCollection()()
{
  v0 = sub_1E1AF361C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF360C();
  v4 = sub_1E1AF41CC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1E1711EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 8) + **(a9 + 8));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_1E130B5DC;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1E1712090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E1AEFE6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E137A5C4(a3, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB83E8, &unk_1E1B2BF98);
  if (swift_dynamicCast())
  {
    sub_1E1337DC8(v23, &v25);
    v8 = v26;
    v9 = v27;
    __swift_project_boxed_opaque_existential_1Tm(&v25, v26);
    v10 = (*(v9 + 8))(v8, v9);
    if (v10)
    {
      v11 = v10;
      sub_1E1AEF4DC();
      sub_1E1AEFE1C();
      v13 = v12;
      v14 = *(v5 + 8);
      v14(v7, v4);
      swift_beginAccess();
      *(v11 + 184) = v13;
      *(v11 + 192) = 0;
      sub_1E1AEF4BC();
      sub_1E1AEFE1C();
      v16 = v15;
      v14(v7, v4);
      swift_beginAccess();
      *(v11 + 200) = v16;
      *(v11 + 208) = 0;
      sub_1E1AEF4DC();
      sub_1E1AEFE1C();
      v18 = v17;
      v14(v7, v4);
      swift_beginAccess();
      *(v11 + 232) = v18;
      *(v11 + 240) = 0;
      sub_1E1AEF4BC();
      sub_1E1AEFE1C();
      v20 = v19;
      v14(v7, v4);
      swift_beginAccess();
      *(v11 + 248) = v20;
      *(v11 + 256) = 0;
    }

    return __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  else
  {
    memset(v23, 0, sizeof(v23));
    return sub_1E1308058(v23, &qword_1ECEB2588, &unk_1E1B05C10);
  }
}

uint64_t sub_1E17123E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E1712428(uint64_t a1, uint64_t a2)
{
  Error = type metadata accessor for JSRequestIntentFetchError(0);
  (*(*(Error - 8) + 16))(a2, a1, Error);
  return a2;
}

uint64_t sub_1E171248C(uint64_t a1)
{
  Error = type metadata accessor for JSRequestIntentFetchError(0);
  (*(*(Error - 8) + 8))(a1, Error);
  return a1;
}

void FamilyCircleLookupTask.init()(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
  v3 = [objc_allocWithZone(type metadata accessor for ArcadeAIDAAccountManagerDelegate()) init];
  v4 = objc_allocWithZone(MEMORY[0x1E698C250]);
  v5 = v3;
  v6 = [v4 initWithAccountStore_];
  [v6 setDelegate_];

  v7 = [v6 accountStore];
  v8 = [v7 aa_primaryAppleAccount];

  *a1 = v8;
  a1[1] = v6;
  a1[2] = v5;
}

uint64_t FamilyCircleLookupTask.perform()()
{
  if (*v0)
  {
    v1 = *v0;
    v2 = [v1 ams_DSID];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8410, qword_1E1B2BFF0);
    if (v2)
    {
      v3 = sub_1E1AF588C();
      v4 = [objc_allocWithZone(MEMORY[0x1E699C070]) init];
      [v4 setPromptUserToResolveAuthenticatonFailure_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170, &qword_1E1B06D90);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1E1B06D70;
      *(v5 + 32) = v2;
      sub_1E13006E4(0, &qword_1EE1E31F0, 0x1E696AD98);
      v6 = v2;
      v7 = sub_1E1AF620C();

      [v4 setExpectedDSIDs_];

      [v4 setQualityOfService_];
      v8 = swift_allocObject();
      v8[2] = v1;
      v8[3] = v6;
      v8[4] = v3;
      v15[4] = sub_1E1712A38;
      v15[5] = v8;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 1107296256;
      v15[2] = sub_1E14CC840;
      v15[3] = &block_descriptor_57;
      v9 = _Block_copy(v15);
      v10 = v1;
      v11 = v6;

      [v4 startRequestWithCompletionHandler_];
      _Block_release(v9);
    }

    else
    {
      sub_1E17128A8();
      swift_allocError();
      *v14 = 0;
      v3 = sub_1E1AF581C();
    }

    return v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8410, qword_1E1B2BFF0);
    sub_1E17128A8();
    swift_allocError();
    *v12 = 1;
    return sub_1E1AF581C();
  }
}

unint64_t sub_1E17128A8()
{
  result = qword_1ECEB8418;
  if (!qword_1ECEB8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8418);
  }

  return result;
}

void sub_1E17128FC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = a2;
  sub_1E13006E4(0, &unk_1EE1D2540, 0x1E699C050);
  sub_1E1AF55CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB84B8, &unk_1E1B2C1D8);
  sub_1E1AF55BC();
  if (v9)
  {
    v7 = v8;
    sub_1E1AF584C();
    sub_1E1655EC0(v8);
    sub_1E1713158(v8, 1);
    sub_1E1713158(v8, 1);
  }

  else
  {
    sub_1E1AF586C();
    sub_1E1655EC0(v8);
  }
}

id sub_1E1712A44@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = [*a1 members];
  sub_1E13006E4(0, &unk_1EE1D2530, 0x1E699C060);
  v7 = sub_1E1AF621C();

  if (v7 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E1AF71CC())
  {
    v17 = a2;
    v18 = a4;
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E68FFD80](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      a4 = v10;
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v12 = [v10 dsid];
      if (v12)
      {
        a2 = v12;
        sub_1E13006E4(0, &qword_1EE1E31F0, 0x1E696AD98);
        v13 = a3;
        v14 = sub_1E1AF6D0C();

        if (v14)
        {

          v15 = [a4 isOrganizer];

          result = (*&v15 | 0xFFFFFF80);
LABEL_14:
          a4 = v18;
          goto LABEL_19;
        }
      }

      ++v9;
      if (v11 == i)
      {

        result = [v17 aa_isFamilyEligible];
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  result = [a2 aa_isFamilyEligible];
LABEL_19:
  *a4 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FamilyCircleLookupResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 129;
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

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for FamilyCircleLookupResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_1E1712EE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeAIDAAccountManagerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E1712F30()
{
  result = qword_1ECEB8488;
  if (!qword_1ECEB8488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8488);
  }

  return result;
}

unint64_t sub_1E1712F84(void *a1)
{
  v1 = [a1 accountStore];
  v2 = [v1 aa_primaryAppleAccount];

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB84A0, &qword_1E1B2C1C8);
    inited = swift_initStackObject();
    v4 = MEMORY[0x1E698C218];
    *(inited + 16) = xmmword_1E1B02CC0;
    v5 = *v4;
    *(inited + 32) = v5;
    *(inited + 40) = v2;
    v6 = v5;
    v7 = sub_1E15A20B4(inited);
    swift_setDeallocating();
    sub_1E17130D4(inited + 32);
    return v7;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];

    return sub_1E15A20B4(v9);
  }
}

unint64_t sub_1E171307C()
{
  result = qword_1ECEB2178;
  if (!qword_1ECEB2178)
  {
    type metadata accessor for AIDAServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2178);
  }

  return result;
}

uint64_t sub_1E17130D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB84A8, &qword_1E1B2C1D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E1713158(id a1, char a2)
{
  if (a2)
  {
  }
}

void CrossfireReferralFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_1EE1E3928 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B90, &unk_1E1B21B00);
  __swift_project_value_buffer(v2, qword_1EE1E3930);
  sub_1E1AF4ABC();
  if (qword_1EE1F3430 != -1)
  {
    swift_once();
  }

  sub_1E16CF750(a1, (v3 == 2) | v3 & 1);
}

void sub_1E171324C(uint64_t a1)
{
  if (qword_1EE1E3928 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B90, &unk_1E1B21B00);
  __swift_project_value_buffer(v2, qword_1EE1E3930);
  sub_1E1AF4ABC();
  if (qword_1EE1F3430 != -1)
  {
    swift_once();
  }

  sub_1E16CF750(a1, (v3 == 2) | v3 & 1);
}

uint64_t MetricsActivityFieldsProvider.category.setter(uint64_t a1)
{
  v3 = sub_1E1AF524C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MetricsActivityFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v28 = a1;
  if (qword_1EE1F3430 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v2 = sub_1E16CF4BC();
    if (qword_1EE1E39B8 != -1)
    {
      swift_once();
    }

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78, &unk_1E1B297F0);
    __swift_project_value_buffer(v3, qword_1EE1E39C0);
    v4 = MEMORY[0x1E69E6158];
    sub_1E1AF4ABC();
    if (*(&v26 + 1))
    {
      *(&v27[0] + 1) = v4;
      sub_1E1301CF0(&v26, &v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v22[0] = v2;
      sub_1E159827C(&v23, 0x746E6F4365676170, 0xEB00000000747865, isUniquelyReferenced_nonNull_native);
      v2 = *&v22[0];
    }

    v6 = 0;
    v21 = v2;
    v7 = v2 + 64;
    v8 = 1 << *(v2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v2 + 64);
    v11 = (v8 + 63) >> 6;
    if (v10)
    {
      break;
    }

LABEL_10:
    if (v11 <= v6 + 1)
    {
      v13 = v6 + 1;
    }

    else
    {
      v13 = v11;
    }

    v14 = v13 - 1;
    while (1)
    {
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        v10 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_18;
      }

      v10 = *(v7 + 8 * v12);
      ++v6;
      if (v10)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  while (1)
  {
    v12 = v6;
LABEL_17:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v21 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    sub_1E137A5C4(*(v21 + 56) + 32 * v16, v22);
    *&v23 = v19;
    *(&v23 + 1) = v18;
    sub_1E1301CF0(v22, &v24);

    v14 = v12;
LABEL_18:
    v26 = v23;
    v27[0] = v24;
    v27[1] = v25;
    if (!*(&v23 + 1))
    {
      break;
    }

    sub_1E1301CF0(v27, &v23);
    __swift_mutable_project_boxed_opaque_existential_1(v28, *(v28 + 24));
    sub_1E1AF4A1C();
    __swift_destroy_boxed_opaque_existential_1(&v23);

    if (v1)
    {
      break;
    }

    v6 = v14;
    if (!v10)
    {
      goto LABEL_10;
    }
  }
}

uint64_t _s11AppStoreKit29MetricsActivityFieldsProviderVACycfC_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69AB4D8];
  v3 = sub_1E1AF524C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void CrossfireReferralCandidateFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_1EE1F3430 != -1)
  {
    swift_once();
  }

  v2 = off_1EE1F3438;
  swift_beginAccess();
  if (v2[19] != 2 && (*(v2 + 233) & 1) != 0)
  {
    sub_1E16CF750(a1, 1);
  }
}

AppStoreKit::AccountLinksIntent __swiftcall AccountLinksIntent.init()()
{
  *v0 = 0xD000000000000012;
  v0[1] = 0x80000001E1B2C330;
  return result;
}

uint64_t AccountLinksIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

JSValue __swiftcall AccountLinksIntent.makeValue(in:)(JSContext in)
{
  result.super.isa = [objc_opt_self() valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E1713958()
{
  result = qword_1ECEB84C0;
  if (!qword_1ECEB84C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB84C0);
  }

  return result;
}

unint64_t sub_1E17139B4()
{
  result = qword_1ECEB84C8;
  if (!qword_1ECEB84C8)
  {
    type metadata accessor for AccountLinks(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB84C8);
  }

  return result;
}

id sub_1E1713A0C(uint64_t a1)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t SponsoredSearchRequestData.iAdId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SponsoredSearchRequestData.sponsoredSearchRequestData.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SponsoredSearchRequestData.routingInfo.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SponsoredSearchRequestData.canaryId.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void __swiftcall SponsoredSearchRequestData.init(iAdId:sponsoredSearchRequestData:routingInfo:canaryId:)(AppStoreKit::SponsoredSearchRequestData *__return_ptr retstr, Swift::String_optional iAdId, Swift::String sponsoredSearchRequestData, Swift::String routingInfo, Swift::String_optional canaryId)
{
  retstr->iAdId = iAdId;
  retstr->sponsoredSearchRequestData = sponsoredSearchRequestData;
  retstr->routingInfo = routingInfo;
  retstr->canaryId = canaryId;
}

unint64_t SponsoredSearchRequestData.searchRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];

  v12 = sub_1E13017E4(MEMORY[0x1E69E7CC0]);
  sub_1E1386A38(v1, v2, 0x6449644169, 0xE500000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1E1598D2C(v3, v4, 0x626F6C4261746164, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E1598D2C(v5, v6, 0x6974756F52644169, 0xEE006F666E49676ELL, v10);
  sub_1E1386A38(v7, v8, 0x7972616E6163, 0xE600000000000000);
  return v12;
}

void *sub_1E1713C98(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1E1545A54(a1[2], 0);
  v4 = sub_1E1546A64(&v6, v3 + 4, v2, a1);
  sub_1E1337ECC(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1E1713D28()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v4, v0);
  qword_1EE1F87E8 = sub_1E1AF591C();
  unk_1EE1F87F0 = MEMORY[0x1E69AB668];
  __swift_allocate_boxed_opaque_existential_0(qword_1EE1F87D0);
  return sub_1E1AF590C();
}

void *AppStoreEngagementManager.__allocating_init(objectGraph:subscriptionManager:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  type metadata accessor for AppStoreEngagementRegistry();
  v4[4] = 0;
  v4[5] = 0;
  swift_allocObject();
  v4[2] = sub_1E14A90FC();
  v4[3] = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = v4;

  v6 = a2;

  AppStoreEngagementManager.refreshBadgeIdentifiers(completion:)(sub_1E17140EC, v5);

  return v4;
}

void *AppStoreEngagementManager.init(objectGraph:subscriptionManager:)(uint64_t a1, void *a2)
{
  type metadata accessor for AppStoreEngagementRegistry();
  v2[4] = 0;
  v2[5] = 0;
  swift_allocObject();
  v2[2] = sub_1E14A90FC();
  v2[3] = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = v2;

  v6 = a2;

  AppStoreEngagementManager.refreshBadgeIdentifiers(completion:)(sub_1E1716D48, v5);

  return v2;
}

uint64_t sub_1E171400C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = *(a1 + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_stateLock);

  [v5 lock];
  sub_1E15F6384(a2, sub_1E1716D14, v4, a1);
  [v5 unlock];
}

void sub_1E17140F4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v15 = *a1;
  v16 = v3;
  v12 = v4;
  v13 = v5;
  if ((static ArcadeState.== infix(_:_:)(&v15, &v12) & 1) == 0)
  {
    if (v5 <= 0x3F)
    {
      if (v4 == 1)
      {
        if (v3 <= 0x3F && v2 == 1)
        {
LABEL_9:
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            v14 = 4;
            v7 = swift_allocObject();
            swift_beginAccess();
            swift_weakLoadStrong();
            swift_weakInit();

            v8 = sub_1E1716D5C;
            v9 = &v14;
LABEL_21:
            AppStoreEngagementManager.recordEngagement(event:resultHandler:)(v9, v8, v7);

            sub_1E1361A60(v2, v3);
            sub_1E1361A60(v4, v5);

            return;
          }

          goto LABEL_23;
        }

        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          LOBYTE(v15) = 3;
          v6 = swift_allocObject();
          swift_beginAccess();
          swift_weakLoadStrong();
          swift_weakInit();

          AppStoreEngagementManager.recordEngagement(event:resultHandler:)(&v15, sub_1E1716D5C, v6);
        }
      }

      sub_1E1361A40(v2, v3);
      goto LABEL_9;
    }

    if ((v5 & 0xC0) == 0x80)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          v11 = 2;
          v7 = swift_allocObject();
          swift_beginAccess();
          swift_weakLoadStrong();
          swift_weakInit();
          sub_1E1361A40(v2, v3);
          sub_1E1361A40(v4, v5);

          v10 = sub_1E1716D1C;
LABEL_20:
          v8 = v10;
          v9 = &v11;
          goto LABEL_21;
        }
      }

      else
      {
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          v11 = 5;
          v7 = swift_allocObject();
          swift_beginAccess();
          swift_weakLoadStrong();
          swift_weakInit();
          sub_1E1361A40(v2, v3);
          sub_1E1361A40(v4, v5);

          v10 = sub_1E1716D5C;
          goto LABEL_20;
        }
      }

      sub_1E1361A40(v2, v3);
      sub_1E1361A40(v4, v5);
LABEL_23:
      sub_1E1361A60(v2, v3);
      sub_1E1361A60(v4, v5);
      return;
    }

    sub_1E1361A40(v2, v3);
    sub_1E1361A40(v4, v5);
    sub_1E1361A60(v2, v3);

    sub_1E1361A60(v4, v5);
  }
}

uint64_t AppStoreEngagementManager.recordEngagement(event:resultHandler:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *a1;
  type metadata accessor for JSIntentDispatcher();
  v8 = v3[3];
  sub_1E1AF421C();
  sub_1E1AF55EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
  sub_1E1AF690C();
  v9 = v15[0];
  v15[0] = 0xD000000000000015;
  v15[1] = 0x80000001E1B723E0;
  v16 = v7;
  v17 = v9;
  v18 = sub_1E14A939C();
  sub_1E136A540(v15, v8, "AppStoreKit/AppStoreEngagementManager.swift", 43, 2);
  sub_1E17169FC(v15);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v6;
  v11 = sub_1E1361A80();

  v12 = sub_1E1AF68EC();
  v14[3] = v11;
  v14[4] = MEMORY[0x1E69AB720];
  v14[0] = v12;
  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_1E17146F8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v3 = result;
      swift_beginAccess();
      v4 = *(v3 + 32);
      if (v4)
      {
        v5 = *(v3 + 40);

        sub_1E1300E34(v4, v5);

        v4(v2);
        sub_1E1300EA8(v4, v5);
      }
    }
  }

  return result;
}

void AppStoreEngagementManager.refreshBadgeIdentifiers(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = [objc_opt_self() defaultService];
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = v6;
  v11[4] = sub_1E1716A5C;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E1715B2C;
  v11[3] = &block_descriptor_58;
  v10 = _Block_copy(v11);
  sub_1E1300E34(a1, a2);

  [v7 allHardwareOfferMetricsWithReplyHandler_];
  _Block_release(v10);
}

uint64_t sub_1E1714940@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E14D3A8C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E1300E34(v4, v5);
}

uint64_t sub_1E17149D4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E14D3A84;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_1E1300E34(v3, v4);
  return sub_1E1300EA8(v8, v9);
}

uint64_t AppStoreEngagementManager.rootActionHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_1E1300E34(v1, *(v0 + 40));
  return v1;
}

uint64_t AppStoreEngagementManager.rootActionHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_1E1300EA8(v5, v6);
}

uint64_t AppStoreEngagementManager.properties.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
  sub_1E1AF690C();
  return v1;
}

void *AppStoreEngagementManager.previouslyDisabledProperties.getter()
{
  v0 = sub_1E14A939C();
  v1 = v0;
  v2 = *(v0 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1E1545A54(*(v0 + 16), 0);
  v4 = sub_1E1546A64(&v6, v3 + 4, v2, v1);
  sub_1E1337ECC(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1E1714C8C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v63[1] = a5;
  v75 = sub_1E1AF320C();
  v9 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1E1AF324C();
  v11 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  if (a2)
  {
    v78 = a3;
    v79 = v11;
    v11 = v9;
    v13 = a2;
    if (qword_1EE1F87C8 != -1)
    {
LABEL_57:
      swift_once();
    }

    v77 = unk_1EE1F87F0;
    v76 = __swift_project_boxed_opaque_existential_1Tm(qword_1EE1F87D0, qword_1EE1F87E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    swift_getErrorValue();
    v15 = v80;
    v14 = v81;
    *(&v90 + 1) = v81;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v89);
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_0, v15, v14);
    sub_1E1AF38BC();
    sub_1E13E44F8(&v89);
    sub_1E1AF54AC();

    a1 = v68;
    v9 = v11;
    v11 = v79;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  v79 = result;
  if (!result)
  {
    goto LABEL_52;
  }

  if (!a1)
  {

LABEL_52:
    if (a4)
    {
      return a4(result);
    }

    return result;
  }

  v63[0] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
  sub_1E1AF690C();
  v18 = 0;
  v20 = (v89 + 64);
  v19 = *(v89 + 64);
  v66 = v89;
  v21 = 1 << *(v89 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  a2 = v22 & v19;
  a4 = ((v21 + 63) >> 6);
  v77 = &v87;
  v63[2] = "led badge identifier,";
  v70 = (v11 + 8);
  v71 = (v9 + 8);
  v69 = xmmword_1E1B02CD0;
  v64 = a4;
  v65 = (v89 + 64);
  while (1)
  {
    if (!a2)
    {
      if (a4 <= v18 + 1)
      {
        v25 = (v18 + 1);
      }

      else
      {
        v25 = a4;
      }

      v26 = v25 - 1;
      while (1)
      {
        v24 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v24 >= a4)
        {
          a2 = 0;
          v87 = 0u;
          v88 = 0u;
          v18 = v26;
          aBlock = 0u;
          goto LABEL_22;
        }

        a2 = *&v20[8 * v24];
        ++v18;
        if (a2)
        {
          v18 = v24;
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v24 = v18;
LABEL_21:
    v27 = __clz(__rbit64(a2));
    a2 &= a2 - 1;
    v28 = v27 | (v24 << 6);
    v29 = (*(v66 + 6) + 16 * v28);
    v31 = *v29;
    v30 = v29[1];
    sub_1E137A5C4(*(v66 + 7) + 32 * v28, v85);
    *&aBlock = v31;
    *(&aBlock + 1) = v30;
    sub_1E1301CF0(v85, v77);

LABEL_22:
    v89 = aBlock;
    v90 = v87;
    v91 = v88;
    v32 = *(&aBlock + 1);
    if (!*(&aBlock + 1))
    {
      break;
    }

    v33 = v89;
    if (*(a1 + 16) && (v34 = sub_1E13018F8(v89, *(&v89 + 1)), (v35 & 1) != 0))
    {
      v23 = v34;

      sub_1E137A5C4(*(a1 + 56) + 32 * v23, &aBlock);
      sub_1E13E44F8(&aBlock);
    }

    else
    {
      v78 = v33;
      aBlock = 0u;
      v87 = 0u;
      sub_1E13E44F8(&aBlock);
      if (qword_1EE1F87C8 != -1)
      {
        swift_once();
      }

      v76 = unk_1EE1F87F0;
      __swift_project_boxed_opaque_existential_1Tm(qword_1EE1F87D0, qword_1EE1F87E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = v69;
      sub_1E1AF382C();
      *(&v87 + 1) = MEMORY[0x1E69E6158];
      *&aBlock = v78;
      *(&aBlock + 1) = v32;
      v36 = v78;

      sub_1E1AF38BC();
      sub_1E13E44F8(&aBlock);
      sub_1E1AF548C();

      v37 = *(v79 + 16);
      v76 = *(v37 + 16);
      v38 = swift_allocObject();
      v38[2] = v37;
      v38[3] = v36;
      v38[4] = v32;
      *&v88 = sub_1E14A9370;
      *(&v88 + 1) = v38;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v87 = sub_1E1302D64;
      *(&v87 + 1) = &block_descriptor_49_0;
      v67 = _Block_copy(&aBlock);
      swift_retain_n();

      v39 = v72;
      sub_1E1AF322C();
      *&v85[0] = MEMORY[0x1E69E7CC0];
      sub_1E139D5D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
      sub_1E13FE650();
      v41 = v74;
      v40 = v75;
      sub_1E1AF6EEC();
      v11 = v67;
      MEMORY[0x1E68FF640](0, v39, v41, v67);
      _Block_release(v11);
      (*v71)(v41, v40);
      (*v70)(v39, v73);

      sub_1E17158E0(v78, v32, 0);

      a1 = v68;
      a4 = v64;
      v20 = v65;
    }

    __swift_destroy_boxed_opaque_existential_1(&v90);
  }

  a4 = 0;
  a2 = a1 + 64;
  v42 = 1 << *(a1 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(a1 + 64);
  v11 = ((v42 + 63) >> 6);
  v76 = &v87;
  v65 = "fferIDs failed, reason:";
  v66 = v11;
  v67 = a2;
  if (!v44)
  {
LABEL_33:
    if (v11 <= (a4 + 1))
    {
      v46 = a4 + 1;
    }

    else
    {
      v46 = v11;
    }

    v47 = v46 - 1;
    while (1)
    {
      v45 = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        break;
      }

      if (v45 >= v11)
      {
        v44 = 0;
        v87 = 0u;
        v88 = 0u;
        a4 = v47;
        aBlock = 0u;
        goto LABEL_42;
      }

      v44 = *(a2 + 8 * v45);
      a4 = (a4 + 1);
      if (v44)
      {
        a4 = v45;
        goto LABEL_41;
      }
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  while (1)
  {
    v45 = a4;
LABEL_41:
    v48 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v49 = v48 | (v45 << 6);
    v50 = (*(v68 + 48) + 16 * v49);
    v52 = *v50;
    v51 = v50[1];
    sub_1E137A5C4(*(v68 + 56) + 32 * v49, v85);
    *&aBlock = v52;
    *(&aBlock + 1) = v51;
    sub_1E1301CF0(v85, v76);

LABEL_42:
    v89 = aBlock;
    v90 = v87;
    v91 = v88;
    v53 = *(&aBlock + 1);
    if (!*(&aBlock + 1))
    {
      break;
    }

    v78 = v89;
    sub_1E1301CF0(&v90, v85);
    if (qword_1EE1F87C8 != -1)
    {
      swift_once();
    }

    v77 = unk_1EE1F87F0;
    __swift_project_boxed_opaque_existential_1Tm(qword_1EE1F87D0, qword_1EE1F87E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = v69;
    sub_1E1AF382C();
    *(&v87 + 1) = MEMORY[0x1E69E6158];
    v54 = v78;
    *&aBlock = v78;
    *(&aBlock + 1) = v53;

    sub_1E1AF38BC();
    sub_1E13E44F8(&aBlock);
    sub_1E1AF548C();

    sub_1E137A5C4(v85, v84);
    v55 = *(v79 + 16);
    v77 = *(v55 + 16);
    sub_1E13BFF54(v84, v83);
    v56 = swift_allocObject();
    v57 = v83[1];
    *(v56 + 40) = v83[0];
    *(v56 + 16) = v55;
    *(v56 + 24) = v54;
    *(v56 + 32) = v53;
    *(v56 + 56) = v57;
    *&v88 = sub_1E14A9360;
    *(&v88 + 1) = v56;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v87 = sub_1E1302D64;
    *(&v87 + 1) = &block_descriptor_43_1;
    v58 = _Block_copy(&aBlock);

    v59 = v72;
    sub_1E1AF322C();
    v82 = MEMORY[0x1E69E7CC0];
    sub_1E139D5D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
    sub_1E13FE650();
    v61 = v74;
    v60 = v75;
    sub_1E1AF6EEC();
    MEMORY[0x1E68FF640](0, v59, v61, v58);
    _Block_release(v58);
    (*v71)(v61, v60);
    (*v70)(v59, v73);

    sub_1E17158E0(v78, v53, 1);

    sub_1E13E44F8(v84);
    __swift_destroy_boxed_opaque_existential_1(v85);
    v11 = v66;
    a2 = v67;
    if (!v44)
    {
      goto LABEL_33;
    }
  }

  if (v63[0])
  {
    (v63[0])(v62);
  }
}

uint64_t sub_1E17158E0(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  type metadata accessor for JSIntentDispatcher();
  v8 = v3[3];
  sub_1E1AF421C();
  sub_1E1AF55EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
  sub_1E1AF690C();
  v9 = v17[0];
  v17[0] = 0xD000000000000012;
  v17[1] = 0x80000001E1B724C0;
  v17[2] = a1;
  v17[3] = a2;
  v18 = a3;
  v19 = v9;
  v20 = sub_1E14A939C();

  sub_1E136A704(v17, v8, "AppStoreKit/AppStoreEngagementManager.swift", 43, 2);
  sub_1E1716CA8(v17);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v10;
  v11[5] = v7;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v7;
  v13 = sub_1E1361A80();
  swift_bridgeObjectRetain_n();
  v14 = sub_1E1AF68EC();
  v16[3] = v13;
  v16[4] = MEMORY[0x1E69AB720];
  v16[0] = v14;
  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

double sub_1E1715B2C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1E1AF5C7C();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);

  return result;
}

uint64_t sub_1E1715BD8(uint64_t a1, void (*a2)(uint64_t))
{
  if (*(*a1 + 16))
  {

    a2(v3);
  }

  else
  {
    if (qword_1EE1F87C8 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1Tm(qword_1EE1F87D0, qword_1EE1F87E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    return (a2)(0);
  }
}

Swift::Void __swiftcall AppStoreEngagementManager.setIdentifier(_:isEnabled:)(Swift::String _, Swift::Bool isEnabled)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  sub_1E1716A68(_._countAndFlagsBits, _._object, isEnabled);
  memset(v5, 0, sizeof(v5));
  if (isEnabled)
  {
    sub_1E14A8844(countAndFlagsBits, object, v5);
  }

  else
  {
    sub_1E14A8C00(countAndFlagsBits, object, 1);
  }

  sub_1E17158E0(countAndFlagsBits, object, isEnabled);
  sub_1E13E44F8(v5);
}

void sub_1E1715E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*a1 + 16);
  if (v4)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      swift_beginAccess();
      v7 = *(v6 + 32);
      if (v7)
      {
        v8 = *(v6 + 40);

        sub_1E1300E34(v7, v8);

        v7(v4);
        sub_1E1300EA8(v7, v8);
      }
    }
  }

  else
  {
    if (qword_1EE1F87C8 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1Tm(qword_1EE1F87D0, qword_1EE1F87E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    v11[3] = MEMORY[0x1E69E6158];
    v11[0] = a2;
    v11[1] = a3;

    sub_1E1AF38BC();
    sub_1E13E44F8(v11);
    sub_1E1AF548C();
  }
}

double sub_1E1716038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE1F87C8 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE1F87D0, qword_1EE1F87E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B05090;
  sub_1E1AF382C();
  v9 = MEMORY[0x1E69E6158];
  v8[0] = a2;
  v8[1] = a3;

  sub_1E1AF38BC();
  sub_1E13E44F8(v8);
  sub_1E1AF382C();
  swift_getErrorValue();
  v9 = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v8);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38BC();
  sub_1E13E44F8(v8);
  sub_1E1AF54AC();

  return result;
}

void *AppStoreEngagementManager.deinit()
{

  sub_1E1300EA8(*(v0 + 32), *(v0 + 40));
  return v0;
}

uint64_t AppStoreEngagementManager.__deallocating_deinit()
{

  sub_1E1300EA8(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

double sub_1E1716334(uint64_t a1)
{
  if (qword_1EE1F87C8 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE1F87D0, qword_1EE1F87E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v4[3] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38BC();
  sub_1E13E44F8(v4);
  sub_1E1AF54AC();

  return result;
}

void sub_1E17164EC(char a1, void *a2)
{
  if (qword_1EE1F87C8 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE1F87D0, qword_1EE1F87E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v8 = MEMORY[0x1E69E6370];
  LOBYTE(v7[0]) = a1 & 1;
  sub_1E1AF38BC();
  sub_1E13E44F8(v7);
  sub_1E1AF548C();

  if (a2)
  {
    __swift_project_boxed_opaque_existential_1Tm(qword_1EE1F87D0, qword_1EE1F87E8);
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    v2 = a2;
    sub_1E1AF382C();
    swift_getErrorValue();
    v8 = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_0);
    sub_1E1AF38BC();
    sub_1E13E44F8(v7);
    sub_1E1AF54AC();
  }
}

void sub_1E1716774(char a1, void *a2)
{
  if (qword_1EE1F87C8 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1Tm(qword_1EE1F87D0, qword_1EE1F87E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v8 = MEMORY[0x1E69E6370];
  LOBYTE(v7[0]) = a1 & 1;
  sub_1E1AF38BC();
  sub_1E13E44F8(v7);
  sub_1E1AF548C();

  if (a2)
  {
    __swift_project_boxed_opaque_existential_1Tm(qword_1EE1F87D0, qword_1EE1F87E8);
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    v2 = a2;
    sub_1E1AF382C();
    swift_getErrorValue();
    v8 = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_0);
    sub_1E1AF38BC();
    sub_1E13E44F8(v7);
    sub_1E1AF54AC();
  }
}

void sub_1E1716A68(uint64_t a1, uint64_t a2, char a3)
{
  v6 = [objc_opt_self() defaultService];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB56A0, &unk_1E1B04830);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E1B02CC0;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_1E1AF620C();

  if (a3)
  {
    v15 = sub_1E17164EC;
    v16 = 0;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_1E16D4010;
    v14 = &block_descriptor_36_0;
    v9 = _Block_copy(&v11);

    v10 = &selRef_addHardwareOfferIDs_replyHandler_;
  }

  else
  {
    v15 = sub_1E1716774;
    v16 = 0;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_1E16D4010;
    v14 = &block_descriptor_33_1;
    v9 = _Block_copy(&v11);

    v10 = &selRef_removeHardwareOfferIDs_replyHandler_;
  }

  [v6 *v10];

  _Block_release(v9);
}

uint64_t GuidedSearchQuery.init(searchTerm:selectedTokens:optimizationTerm:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t GuidedSearchQuery.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = a3;
  v44 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = 0xEA00000000006D72;
  sub_1E1AF381C();
  v39 = sub_1E1AF37CC();
  v18 = v17;
  v19 = *(v8 + 8);
  v19(v15, v7);
  if (v18)
  {
    v42 = v18;
    v43 = a1;
    v16 = 0xEE00736E656B6F54;
    sub_1E1AF381C();
    sub_1E1AF374C();
    v19(v12, v7);
    v20 = sub_1E1AF5A6C();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v6, 1, v20) == 1)
    {

      sub_1E14352B8(v6);
LABEL_9:
      v22 = v43;
      v23 = 0x64657463656C6573;
      goto LABEL_10;
    }

    v24 = sub_1E1AF5A0C();
    (*(v21 + 8))(v6, v20);
    if (!v24)
    {

      goto LABEL_9;
    }

    v38 = v24;
    v23 = 0xD000000000000010;
    v16 = 0x80000001E1B72780;
    v25 = v41;
    v22 = v43;
    sub_1E1AF381C();
    v26 = sub_1E1AF37CC();
    v28 = v27;
    v19(v25, v7);
    if (v28)
    {
      v29 = sub_1E13C4BB8(v38);

      v30 = sub_1E1AF39DC();
      (*(*(v30 - 8) + 8))(v44, v30);
      result = (v19)(v22, v7);
      v32 = v40;
      v33 = v42;
      *v40 = v39;
      v32[1] = v33;
      v32[2] = v29;
      v32[3] = v26;
      v32[4] = v28;
      return result;
    }
  }

  else
  {
    v22 = a1;
    v23 = 0x6554686372616573;
  }

LABEL_10:
  v34 = sub_1E1AF5A7C();
  sub_1E1380704();
  swift_allocError();
  *v35 = v23;
  v35[1] = v16;
  v35[2] = &type metadata for GuidedSearchQuery;
  (*(*(v34 - 8) + 104))(v35, *MEMORY[0x1E69AB690], v34);
  swift_willThrow();
  v36 = sub_1E1AF39DC();
  (*(*(v36 - 8) + 8))(v44, v36);
  return (v19)(v22, v7);
}

uint64_t GuidedSearchQuery.searchTerm.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GuidedSearchQuery.optimizationTerm.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void static ViewControllerContainment.remove(_:)(void *a1)
{
  if (a1)
  {
    v3 = a1;
    [v3 willMoveToParentViewController_];
    v1 = [v3 view];
    if (v1)
    {
      v2 = v1;
      [v1 removeFromSuperview];

      [v3 removeFromParentViewController];
    }

    else
    {
      __break(1u);
    }
  }
}

void static ViewControllerContainment.add(_:to:frame:)(void *a1, void *a2, uint64_t a3)
{
  if (!a1)
  {
    return;
  }

  v15 = a1;
  if ([a2 isViewLoaded])
  {
    [a2 addChildViewController_];
    if ((*(a3 + 32) & 1) == 0)
    {
      v5 = *a3;
      v6 = *(a3 + 8);
      v7 = *(a3 + 16);
      v8 = *(a3 + 24);
      v9 = [v15 view];
      if (!v9)
      {
        goto LABEL_15;
      }

      v10 = v9;
      [v9 setFrame_];
    }

    v11 = [a2 view];
    if (v11)
    {
      v12 = v11;
      v13 = [v15 view];
      if (v13)
      {
        v14 = v13;
        [v12 addSubview_];

        [v15 didMoveToParentViewController_];
        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

LABEL_9:
}

uint64_t FramedVideo.__allocating_init(id:video:isFullWidth:hasRoundedCorners:ordinal:caption:impressionMetrics:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a6;
  v28 = a7;
  v26 = a5;
  v13 = sub_1E1AEFEAC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC11AppStoreKit11FramedVideo_video) = a2;
  if (a2)
  {
  }

  else
  {
    v18 = 0;
  }

  *(v17 + OBJC_IVAR____TtC11AppStoreKit11FramedVideo_artwork) = v18;
  sub_1E134FD1C(a1, v34, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E134FD1C(a8, v17 + OBJC_IVAR____TtC11AppStoreKit11FramedMedia_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E134FD1C(v34, &v31, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v32 + 1))
  {
    v19 = v32;
    *(v17 + 48) = v31;
    *(v17 + 64) = v19;
    *(v17 + 80) = v33;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v22 = v21;
    (*(v14 + 8))(v16, v13);
    v29 = v20;
    v30 = v22;
    sub_1E1AF6F6C();
    sub_1E1308058(&v31, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a8, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v34, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v17 + 17) = a3 & 1;
  *(v17 + 16) = a4 & 1;
  v23 = v27;
  *(v17 + 24) = v26;
  *(v17 + 32) = v23;
  *(v17 + 40) = v28;
  return v17;
}

uint64_t FramedVideo.init(id:video:isFullWidth:hasRoundedCorners:ordinal:caption:impressionMetrics:)(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v31 = a6;
  v32 = a7;
  v30 = a5;
  v29 = a4;
  v14 = sub_1E1AEFEAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v28[-v19];
  *(v9 + OBJC_IVAR____TtC11AppStoreKit11FramedVideo_video) = a2;
  if (a2)
  {
  }

  else
  {
    v21 = 0;
  }

  *(v9 + OBJC_IVAR____TtC11AppStoreKit11FramedVideo_artwork) = v21;
  sub_1E134FD1C(a1, v41, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E134FD1C(a8, v20, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E134FD1C(v41, &v35, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v24 = v23;
    (*(v15 + 8))(v17, v14);
    v33 = v22;
    v34 = v24;
    sub_1E1AF6F6C();
    sub_1E1308058(&v35, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a8, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v41, &unk_1ECEB5670, qword_1E1B03EC0);
  v25 = v39;
  *(v9 + 48) = v38;
  *(v9 + 64) = v25;
  *(v9 + 80) = v40;
  sub_1E134B7C8(v20, v9 + OBJC_IVAR____TtC11AppStoreKit11FramedMedia_impressionMetrics);
  *(v9 + 17) = a3 & 1;
  *(v9 + 16) = v29 & 1;
  v26 = v31;
  *(v9 + 24) = v30;
  *(v9 + 32) = v26;
  *(v9 + 40) = v32;
  return v9;
}

uint64_t FramedVideo.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v27 = sub_1E1AF380C();
  v10 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  type metadata accessor for Video(0);
  v33 = a1;
  sub_1E1AF381C();
  v30 = v5;
  v31 = v4;
  v14 = *(v5 + 16);
  v32 = a2;
  v26 = v14;
  v14(v9, a2, v4);
  sub_1E1717D54();
  sub_1E1AF464C();
  v15 = v28;
  v16 = v34;
  *(v28 + OBJC_IVAR____TtC11AppStoreKit11FramedVideo_video) = v34;
  if (v16)
  {
  }

  else
  {
    v17 = 0;
  }

  *(v15 + OBJC_IVAR____TtC11AppStoreKit11FramedVideo_artwork) = v17;
  v18 = v33;
  v19 = v27;
  (*(v10 + 16))(v12, v33, v27);
  v20 = v29;
  v21 = v31;
  v22 = v32;
  v26(v29, v32, v31);
  v23 = FramedMedia.init(deserializing:using:)(v12, v20);
  (*(v30 + 8))(v22, v21);
  (*(v10 + 8))(v18, v19);
  return v23;
}

unint64_t sub_1E1717D54()
{
  result = qword_1EE1E52D0;
  if (!qword_1EE1E52D0)
  {
    type metadata accessor for Video(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E52D0);
  }

  return result;
}

uint64_t sub_1E1717DFC()
{
}

uint64_t FramedVideo.deinit()
{

  sub_1E134B88C(v0 + 48);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit11FramedMedia_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  return v0;
}

uint64_t FramedVideo.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 48);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit11FramedMedia_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FramedVideo(uint64_t a1)
{
  result = qword_1EE1F7590;
  if (!qword_1EE1F7590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AccessibilityParagraph.__allocating_init(id:text:actions:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1E1AEFEAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v11 = swift_allocObject();
  v12 = v11 + OBJC_IVAR____TtC11AppStoreKit22AccessibilityParagraph_segue;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0;
  sub_1E134FD1C(a1, &v19, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v20 + 1))
  {
    v22 = v19;
    v23 = v20;
    v24 = v21;
  }

  else
  {
    sub_1E1AEFE9C();
    v13 = sub_1E1AEFE7C();
    v15 = v14;
    (*(v8 + 8))(v10, v7);
    v18[1] = v13;
    v18[2] = v15;
    sub_1E1AF6F6C();
    sub_1E1308058(&v19, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  v16 = v23;
  *(v11 + 16) = v22;
  *(v11 + 32) = v16;
  *(v11 + 48) = v24;
  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v11 + 56) = a2;
  sub_1E134B7C8(a4, v11 + OBJC_IVAR____TtC11AppStoreKit22AccessibilityParagraph_impressionMetrics);
  return v11;
}

uint64_t AccessibilityParagraph.init(id:text:actions:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_1E1AEFEAC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = v5 + OBJC_IVAR____TtC11AppStoreKit22AccessibilityParagraph_segue;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0;
  sub_1E134FD1C(a1, &v20, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v21 + 1))
  {
    v23 = v20;
    v24 = v21;
    v25 = v22;
  }

  else
  {
    sub_1E1AEFE9C();
    v14 = sub_1E1AEFE7C();
    v16 = v15;
    (*(v10 + 8))(v12, v9);
    v19[1] = v14;
    v19[2] = v16;
    sub_1E1AF6F6C();
    sub_1E1308058(&v20, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  v17 = v24;
  *(v5 + 16) = v23;
  *(v5 + 32) = v17;
  *(v5 + 48) = v25;
  *(v5 + 56) = a2;
  sub_1E134B7C8(a4, v5 + OBJC_IVAR____TtC11AppStoreKit22AccessibilityParagraph_impressionMetrics);
  return v5;
}

uint64_t AccessibilityParagraph.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v68 = sub_1E1AEFEAC();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v79 = &v64 - v6;
  v70 = sub_1E1AF5A6C();
  v72 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v65 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1E1AF39DC();
  v8 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v83 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v64 - v11;
  v81 = sub_1E1AF380C();
  v90 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v71 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v64 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v80 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v64 - v20;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v77 = v8;
  v22 = *(v8 + 16);
  v73 = v12;
  v23 = v12;
  v24 = v74;
  v22(v23, a2, v74);
  v78 = v21;
  sub_1E1AF464C();
  v25 = v83;
  v76 = a2;
  v26 = a2;
  v27 = v24;
  v22(v83, v26, v24);
  type metadata accessor for LinkableText();
  v28 = 0xE400000000000000;
  v82 = a1;
  sub_1E1AF381C();
  v22(v73, v25, v27);
  sub_1E171907C(&qword_1EE1F5FA0, type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  sub_1E1AF464C();
  if (v89[0])
  {
    v73 = v89[0];
    v29 = v69;
    sub_1E1AF381C();
    v30 = v79;
    sub_1E1AF374C();
    v31 = *(v90 + 8);
    v32 = v81;
    v90 += 8;
    v31(v29, v81);
    v33 = v70;
    if ((*(v72 + 48))(v30, 1, v70) == 1)
    {
      v34 = v32;
      sub_1E1308058(v79, &qword_1ECEB1F90, &qword_1E1B00D30);
    }

    else
    {
      v38 = v72;
      v39 = v65;
      (*(v72 + 32))(v65, v79, v33);
      v40 = type metadata accessor for Action(0);
      MEMORY[0x1EEE9AC00](v40);
      v41 = v83;
      *(&v64 - 2) = v42;
      *(&v64 - 1) = v41;
      sub_1E1AF59FC();

      v34 = v81;
      (*(v38 + 8))(v39, v33);
    }

    v43 = v71;
    sub_1E1AF381C();
    v44 = sub_1E1AF37CC();
    if (v45)
    {
      *&v86 = v44;
      *(&v86 + 1) = v45;
      sub_1E1AF6F6C();
      v46 = v43;
      v47 = v34;
    }

    else
    {
      v48 = v66;
      sub_1E1AEFE9C();
      v49 = sub_1E1AEFE7C();
      v51 = v50;
      (*(v67 + 8))(v48, v68);
      *&v86 = v49;
      *(&v86 + 1) = v51;
      sub_1E1AF6F6C();
      v46 = v43;
      v47 = v81;
    }

    v31(v46, v47);
    v53 = v77;
    v52 = v78;
    sub_1E134FD1C(v78, v80, &unk_1ECEB1770, &unk_1E1AFED20);
    v28 = swift_allocObject();
    v54 = v28 + OBJC_IVAR____TtC11AppStoreKit22AccessibilityParagraph_segue;
    *v54 = 0u;
    *(v54 + 16) = 0u;
    *(v54 + 32) = 0;
    sub_1E134FD1C(v89, &v86, &unk_1ECEB5670, qword_1E1B03EC0);
    v55 = v83;
    if (*(&v87 + 1))
    {
      v56 = v87;
      *(v28 + 16) = v86;
      *(v28 + 32) = v56;
      *(v28 + 48) = v88;
    }

    else
    {
      v57 = v66;
      sub_1E1AEFE9C();
      v58 = sub_1E1AEFE7C();
      v60 = v59;
      v61 = v57;
      v52 = v78;
      (*(v67 + 8))(v61, v68);
      v84 = v58;
      v85 = v60;
      v55 = v83;
      sub_1E1AF6F6C();
      sub_1E1308058(&v86, &unk_1ECEB5670, qword_1E1B03EC0);
    }

    v62 = *(v53 + 8);
    v62(v76, v27);
    v31(v82, v81);
    sub_1E1308058(v89, &unk_1ECEB5670, qword_1E1B03EC0);
    sub_1E1308058(v52, &unk_1ECEB1770, &unk_1E1AFED20);
    *(v28 + 56) = v73;
    sub_1E134B7C8(v80, v28 + OBJC_IVAR____TtC11AppStoreKit22AccessibilityParagraph_impressionMetrics);
    v62(v55, v27);
  }

  else
  {
    v35 = sub_1E1AF5A7C();
    sub_1E171907C(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v36 = 1954047348;
    v36[1] = 0xE400000000000000;
    v36[2] = v75;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x1E69AB690], v35);
    swift_willThrow();
    v37 = *(v77 + 8);
    v37(v76, v27);
    (*(v90 + 8))(v82, v81);
    sub_1E1308058(v78, &unk_1ECEB1770, &unk_1E1AFED20);
    v37(v83, v27);
  }

  return v28;
}