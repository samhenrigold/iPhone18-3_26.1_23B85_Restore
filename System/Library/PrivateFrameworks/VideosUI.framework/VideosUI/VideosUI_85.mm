uint64_t sub_1E3D19D94(uint64_t a1, double a2)
{
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E3A24FDC(a1) & 1) != 0 || *sub_1E3D8FB48() <= a2)
  {
    return 2;
  }

  return 1;
}

uint64_t sub_1E3D19DF8()
{
  if (sub_1E39DFFC8())
  {
    return 0;
  }

  return sub_1E3D10EC8();
}

CGFloat sub_1E3D19E30()
{
  [v0 vuiBounds];
  Height = CGRectGetHeight(v18);
  OUTLINED_FUNCTION_26_3();
  if (((*((*MEMORY[0x1E69E7D40] & v2) + 0x550))() & 1) == 0)
  {
    [v0 vuiBounds];
    [v0 sizeThatFits_];
    Height = v5;
  }

  if (v0[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_showAttributionViewBelowBanner] == 1)
  {
    Height = Height - *&v0[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_attributionViewHeight];
    if (TVAppFeature.isEnabled.getter(10, v3, v4))
    {
      v6 = Height + -20.0;
      sub_1E3D113BC();
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_64();
      v8 = (*(v7 + 112))();

      Height = v6 - v8;
    }
  }

  if (sub_1E3D10EC8())
  {
    return Height;
  }

  OUTLINED_FUNCTION_12_5();
  v10 = (*(v9 + 848))();
  if (!v10)
  {
    return 0.0;
  }

  v11 = v10;
  [v10 frame];
  OUTLINED_FUNCTION_3();

  v12 = OUTLINED_FUNCTION_6();

  return CGRectGetMinY(*&v12);
}

double sub_1E3D19FF8()
{
  v0 = sub_1E3D10EC8();
  result = 0.0;
  if (v0)
  {
    return 10.0;
  }

  return result;
}

double sub_1E3D1A020()
{
  v0 = sub_1E3D10EC8();
  result = 50.0;
  if ((v0 & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1E3D1A04C(double a1, double a2)
{
  v3 = v2;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E324FBDC();
  v13 = OUTLINED_FUNCTION_121();
  v14(v13);
  v15 = sub_1E41FFC94();
  v16 = sub_1E4206814();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = a1;
    _os_log_impl(&dword_1E323F000, v15, v16, "CanonicalBannerViewCell:: navigationBarTintColor: showcasePercentage=%f", v17, 0xCu);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v8 + 8))(v12, v6);
  [v3 bounds];
  v19 = v18;
  if (v3[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_showAttributionViewBelowBanner] == 1)
  {
    v19 = v18 - *&v3[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_attributionViewHeight];
  }

  OUTLINED_FUNCTION_12_5();
  v21 = (*(v20 + 1352))() - a2;
  if (v21 < 0.0)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  v23 = 1.0 - a1;
  v24 = (1.0 - a1) * v19;
  if (sub_1E39DFFC8() & 1) != 0 && (TVAppFeature.isEnabled.getter(10, v25, v26))
  {
    v27 = [objc_opt_self() sharedInstance];
    v28 = [v27 mediaShowcaseConfig];

    v29 = sub_1E3D10B1C();
    [v28 parallaxRatio];
    *(v29 + OBJC_IVAR____TtC8VideosUI15ProductUberView_offset + 8) = v24 * v30;
    sub_1E3D0D350();
  }

  else
  {
    OUTLINED_FUNCTION_12_5();
    v29 = (*(v31 + 1064))();
    [v29 setImageOffset_];
  }

  if (sub_1E39DFFC8() & 1) != 0 || (TVAppFeature.isEnabled.getter(10, v32, v33))
  {
    v72 = 0.0;
    v73 = 0;
    v71 = v23;
    sub_1E3D8FB88();
    OUTLINED_FUNCTION_71();
    v69 = v34;
    v70 = 0;
    sub_1E3793CAC(v35, v36, v37);
    v38 = MEMORY[0x1E69E7DE0];
    v39 = clamp<A>(_:_:_:)(&v72, &v71, &v69, MEMORY[0x1E69E7DE0]);
    v40 = v74;
    v69 = 0;
    v74 = *v29;
    v71 = v40;
    sub_1E3929B88(v39, v41, v42);
    sub_1E3C77434(&v69, &v74, &v71, v38, v38);
    v43 = v72;
  }

  else
  {
    v66 = v19 - a2;
    if (v22 > v24 || v24 > v66)
    {
      if (v66 > v24)
      {
        v43 = 0.0;
      }

      else
      {
        v43 = 1.0;
      }
    }

    else
    {
      v43 = (v24 - v22) / (v66 - v22);
    }
  }

  if ((sub_1E39DFFC8() & 1) == 0)
  {
    [*&v3[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_transitionBackgroundView] setAlpha_];
  }

  v44 = [v3 contentView];
  v45 = [v44 subviews];

  sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
  v46 = sub_1E42062B4();

  result = sub_1E32AE9B0(v46);
  if (!result)
  {
    goto LABEL_35;
  }

  v48 = result;
  if (result >= 1)
  {
    v49 = 0;
    v68 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_transitionBackgroundView;
    do
    {
      if ((v46 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x1E6911E60](v49, v46);
      }

      else
      {
        v50 = *(v46 + 8 * v49 + 32);
      }

      v51 = v50;
      v52 = *&v3[v68];
      if (v52)
      {
        v53 = v50 == v52;
      }

      else
      {
        v53 = 0;
      }

      if (!v53)
      {
        OUTLINED_FUNCTION_12_5();
        v55 = *(v54 + 1064);
        v56 = v51;
        v57 = v55();

        if (!v57 || (v57, v56 != v57))
        {
          if ((sub_1E39DFFC8() & 1) == 0)
          {
            OUTLINED_FUNCTION_12_5();
            v59 = *(v58 + 1528);
            v60 = v56;
            v61 = v59();

            if (!v61 || (v61, v60 != v61))
            {
              v62 = v60;
              v63 = sub_1E3D10B90();

              if (v62 != v63)
              {
                [v62 setAlpha_];
              }
            }
          }
        }
      }

      ++v49;
    }

    while (v48 != v49);
LABEL_35:

    v64 = [objc_opt_self() whiteColor];
    v65 = [v64 vui:*sub_1E3E60700() blendWithColor:v43 percentage:?];

    return v65;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3D1A660(uint64_t a1)
{
  if (sub_1E3D10EC8())
  {
    return 0;
  }

  return sub_1E3A24FDC(a1);
}

void sub_1E3D1A6AC(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, id a12, uint64_t aBlock, uint64_t a14, void (*a15)(uint64_t a1, void *a2, void *a3, uint64_t a4), void *a16, void (*a17)(uint64_t a1, uint64_t a2), uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_131_10();
  a33 = v35;
  a34 = v36;
  v37 = v34;
  v94 = v38;
  v40 = v39;
  v41 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_9();
  v43 = (*(v42 + 1328))();
  if (!v43)
  {
    goto LABEL_25;
  }

  v44 = v43;
  OUTLINED_FUNCTION_18_1();
  (*(v45 + 664))();
  type metadata accessor for MediaShowcaseHostingView();
  OUTLINED_FUNCTION_36_3();
  v47 = (*((*v41 & v46) + 0x260))();
  sub_1E40037C8(v47);

  OUTLINED_FUNCTION_36_3();
  if ((*((*v41 & v48) + 0x278))())
  {
    v49 = [v34 traitCollection];
    sub_1E3D10EC8();
    v50 = OUTLINED_FUNCTION_17_4();
    v51(v49, v50);
  }

  type metadata accessor for LayoutGrid();
  v52 = sub_1E3A2579C(v40);
  if (TVAppFeature.isEnabled.getter(10, v53, v54))
  {
    v55 = 2;
  }

  else
  {
    v56 = (*(*v44 + 1032))(v52);
    if (v57)
    {
      v55 = 2;
    }

    else
    {
      v55 = v56;
    }
  }

  OUTLINED_FUNCTION_18_1();
  v59 = (*(v58 + 1064))();
  if (v59)
  {
    v60 = v59;
    v61 = [v59 imageView];
    if (v61)
    {
      v62 = v61;
      objc_opt_self();
      v63 = swift_dynamicCastObjCClass();
      if (v63)
      {
        v93 = v63;
        v64 = *(*v44 + 392);

        v66 = v44;
        v67 = v64(v65);

        v68 = 0.0;
        if (v67)
        {
          type metadata accessor for ImageLayout();
          if (swift_dynamicCastClass())
          {
            OUTLINED_FUNCTION_30();
            v70 = *(v69 + 1696);

            *&v72 = COERCE_DOUBLE(v70(v71));
            v74 = v73;
            v66 = v75;

            if ((v66 & 1) == 0)
            {
              v68 = *&v72;
              v76 = v74;
LABEL_20:
              v92 = sub_1E3C3E520(v44, v68, v76);
              v37[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_isBackgroundTransitioning] = 1;
              v37[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_isImageLoadedForBackgroundTransitioning] = 0;
              OUTLINED_FUNCTION_4_0();
              v77 = swift_allocObject();
              OUTLINED_FUNCTION_8_110(v77);
              OUTLINED_FUNCTION_2_4();
              v78 = swift_allocObject();
              *(v78 + 16) = v66;
              *(v78 + 24) = v60;
              a17 = sub_1E3D1B9DC;
              a18 = v78;
              aBlock = MEMORY[0x1E69E9820];
              a14 = 1107296256;
              a15 = sub_1E38B2C5C;
              a16 = &block_descriptor_22_0;
              v79 = _Block_copy(&aBlock);
              v80 = v60;

              [v93 setImageProxy:v92 clearingExisting:0 completion:v79];
              _Block_release(v79);
              [v80 configureBlurWithInterfaceStyle_];
              [v80 setMasksBlur_];
              OUTLINED_FUNCTION_4_0();
              v81 = swift_allocObject();
              OUTLINED_FUNCTION_8_110(v81);
              v82 = swift_allocObject();
              *(v82 + 16) = v79;
              *(v82 + 24) = v44;
              *(v82 + 32) = v52;
              a17 = sub_1E3D1BA5C;
              a18 = v82;
              aBlock = MEMORY[0x1E69E9820];
              OUTLINED_FUNCTION_44_42();
              a15 = v83;
              a16 = &block_descriptor_29_1;
              v84 = _Block_copy(&aBlock);
              v85 = a18;

              OUTLINED_FUNCTION_4_0();
              v86 = swift_allocObject();
              OUTLINED_FUNCTION_8_110(v86);
              OUTLINED_FUNCTION_2_4();
              v87 = swift_allocObject();
              *(v87 + 16) = v85;
              *(v87 + 24) = v80;
              a17 = sub_1E3D1BB34;
              a18 = v87;
              aBlock = MEMORY[0x1E69E9820];
              OUTLINED_FUNCTION_44_42();
              a15 = v88;
              a16 = &block_descriptor_36_2;
              v89 = _Block_copy(&aBlock);
              v90 = v80;

              [v94 animateAlongsideTransition:v84 completion:v89];
              _Block_release(v89);
              _Block_release(v84);

              goto LABEL_21;
            }
          }

          else
          {
          }
        }

        v76 = 0.0;
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

LABEL_21:
  if (sub_1E3D10EC8())
  {
    v91 = v55;
  }

  else
  {
    v91 = 0;
  }

  [v37 vui:v91 setOverrideUserInterfaceStyle:?];

LABEL_25:
  OUTLINED_FUNCTION_130_11();
}

void sub_1E3D1AE5C()
{
  v2 = v0;
  v3 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_9();
  (*(v4 + 1432))();
  if (v5)
  {
    v6 = v5;
    sub_1E3285D14();
    OUTLINED_FUNCTION_3_134();
    v8 = *(v7 + 272);
    v10 = v9;
    v11 = OUTLINED_FUNCTION_122();
    v25 = v8(v11, v6);

    if (v25)
    {
      OUTLINED_FUNCTION_3_134();
      v13 = *(v12 + 264);
      v15 = v14;
      v16 = v25;
      v17 = v13();

      OUTLINED_FUNCTION_36_3();
      (*((*v3 & v18) + 0x600))(v17);
    }

    else
    {
      OUTLINED_FUNCTION_18_1();
      v20 = (*(v19 + 1528))();
      if (!v20)
      {
        return;
      }

      OUTLINED_FUNCTION_18_1();
      (*(v21 + 1536))(0);
    }

    v22 = [v2 vuiCollectionViewCellInteractor];
    if (v22)
    {
      if ([v22 respondsToSelector_])
      {
        v23 = OUTLINED_FUNCTION_43_0();
        [v23 v24];
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_1E3D1B180(uint64_t a1, double a2)
{
  v2 = sub_1E41FDF24();
  v3 = MEMORY[0x1E69E7CA0];
  if (!v2)
  {
    v79 = 0u;
    v78 = 0u;
    goto LABEL_6;
  }

  v4 = v2;
  v5 = sub_1E3C0EBCC();
  v7 = *v5;
  v6 = *(v5 + 1);
  *&v78 = v7;
  *(&v78 + 1) = v6;

  sub_1E4207414();
  sub_1E375D7E8(v4, &v78, v77);

  v8 = sub_1E375D84C(v77);
  if (!*(&v79 + 1))
  {
LABEL_6:
    sub_1E325F748(&v78, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_7;
  }

  if (OUTLINED_FUNCTION_122_8(v8, v9, v10, MEMORY[0x1E69E6370], v11, v12, v13, v14, v67, v68, v69, v71, v72, v73, v74, v75, v76))
  {
    v15 = v77[0];
    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:
  v16 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_12_5();
  v17 += 76;
  v18 = *v17;
  if (!(*v17)())
  {
    return;
  }

  OUTLINED_FUNCTION_12_5();
  if ((*(v19 + 632))())
  {
    if (v18() && (OUTLINED_FUNCTION_26_0(), v21 = (*(v20 + 552))(), , v21))
    {
      v77[3] = &unk_1F5D7BE68;
      v77[4] = &off_1F5D7BC48;
      LOBYTE(v77[0]) = 6;
      sub_1E3F9F164(v77, v21, v3 + 8);

      __swift_destroy_boxed_opaque_existential_1(v77);
      if (*(&v79 + 1))
      {
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
        if ((OUTLINED_FUNCTION_122_8(v22, v23, v24, v22, v25, v26, v27, v28, v67, v68, v69, v71, v72, v73, v74, v75, v76) & 1) == 0)
        {
LABEL_32:

          goto LABEL_33;
        }

        v29 = MEMORY[0x1E69E6370];
        sub_1E3744600(v77[0]);
        v30 = objc_allocWithZone(VUIContentMetadata);
        v31 = OUTLINED_FUNCTION_20_2();
        v32 = sub_1E37AD294(v31);
        if (!v32)
        {
          v32 = [objc_allocWithZone(VUIContentMetadata) init];
        }

        v33 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4297BE0;
        *(inited + 32) = sub_1E4205F14();
        *(inited + 40) = v35;
        *(inited + 72) = v29;
        *(inited + 48) = v15;
        v70 = sub_1E4205CB4();
        OUTLINED_FUNCTION_36_3();
        v37 = *((*v16 & v36) + 0x410);
        v38 = v37();
        if (v38)
        {
          v39 = v38;
          v40 = [v38 tagsViewLayout];

          if (v40)
          {
            v41 = v37();
            if (v41)
            {
              v42 = v41;
              v43 = [v41 tagsViewLayout];

              if (!v43)
              {
                goto LABEL_36;
              }

              v44 = [v43 isGroupActivityTagEnabled];

              if (v44)
              {
                type metadata accessor for CanonicalBannerFactory();
                v45 = v37();

                v46 = OUTLINED_FUNCTION_94_14();
                v51 = sub_1E412B208(v46, v47, v48, v49, v50, v70);

                OUTLINED_FUNCTION_36_3();
                (*((*v16 & v52) + 0x418))(v51);
              }
            }
          }
        }

        OUTLINED_FUNCTION_12_5();
        v53 += 127;
        v54 = *v53;
        v55 = (*v53)();
        if (!v55)
        {

          return;
        }

        v56 = v55;
        v57 = [v55 tagsViewLayout];

        if (v57)
        {

          v58 = [v57 isGroupActivityTagEnabled];

          if (v58)
          {
            type metadata accessor for CanonicalBannerFactory();
            v59 = v54();
            sub_1E3744600(v70);

            v60 = OUTLINED_FUNCTION_94_14();
            v65 = sub_1E412B098(v60, v61, v62, v63, v64);

            OUTLINED_FUNCTION_36_3();
            (*((*v16 & v66) + 0x400))(v65);
          }

          else
          {
          }

          goto LABEL_32;
        }

        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }
    }

    else
    {

      v79 = 0u;
      v78 = 0u;
    }

    sub_1E325F748(&v78, &unk_1ECF296E0, &unk_1E4298030);
    return;
  }

LABEL_33:
}

uint64_t sub_1E3D1B784(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E41FDEE4();
  v13 = a1;
  a4(v12);

  return (*(v8 + 8))(v12, v6);
}

uint64_t sub_1E3D1B874(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v2);

  return sub_1E4206E54();
}

uint64_t sub_1E3D1B8BC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1E3270FC8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

void sub_1E3D1B93C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong vuiCollectionViewCellInteractor];
    if (v5)
    {
      if ([v5 respondsToSelector_])
      {
        v6 = OUTLINED_FUNCTION_43_0();
        [v6 v7];
      }

      swift_unknownObjectRelease();
    }

    [v4 invalidateIntrinsicContentSize];
  }
}

void sub_1E3D1B9DC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  OUTLINED_FUNCTION_15_0(*(v2 + 16) + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_isBackgroundTransitioning) & 1) == 0)
    {
      [v3 setMasksBlur_];
    }

    v5[OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_isImageLoadedForBackgroundTransitioning] = 1;
  }
}

void sub_1E3D1BA5C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  OUTLINED_FUNCTION_15_0(*(v2 + 16) + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_8();
    v8 = (*(v6 + 1048))(v3, v7 & 1);
    if (v8)
    {
      v9 = v8;
      v10 = [v5 backgroundView];
      if (v10)
      {
        v11 = v10;
        v12 = v9;
        [v11 setBackgroundColor_];
      }
    }
  }
}

void sub_1E3D1BB34(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  OUTLINED_FUNCTION_15_0(*(v2 + 16) + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    *(Strong + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_isBackgroundTransitioning) = 0;
    if (*(Strong + OBJC_IVAR____TtC8VideosUI23CanonicalBannerViewCell_isImageLoadedForBackgroundTransitioning) == 1)
    {
      [v3 setMasksBlur_];
    }
  }
}

void sub_1E3D1BBD8(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = 1;
    if (!sub_1E374E8E4(a1, 1))
    {
      v6 = sub_1E374E8E4(a1, 2);
    }

    OUTLINED_FUNCTION_21();
    (*(v7 + 1216))(v6);
  }
}

__n128 sub_1E3D1BC84@<Q0>(uint64_t a1@<X1>, __n128 *a2@<X8>)
{
  OUTLINED_FUNCTION_15_0(&v2[1], a1);
  result = v2[1];
  *a2 = result;
  return result;
}

uint64_t sub_1E3D1BCF4(void *a1)
{
  v1 = [a1 mediaInfos];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);
  v3 = sub_1E42062B4();

  return v3;
}

double OUTLINED_FUNCTION_68_22()
{
  v0[59] = v1;
  result = 0.0;
  v0[24] = v0[74];
  v0[25] = 0;
  v0[26] = 0;
  v0[23] = 0;
  return result;
}

double OUTLINED_FUNCTION_82_14()
{
  result = 0.0;
  *(v0 - 472) = 0;
  *(v0 - 480) = 0;
  return result;
}

double OUTLINED_FUNCTION_95_15(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{

  VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
  return result;
}

id OUTLINED_FUNCTION_96_15(id a1, SEL a2)
{
  v4 = *(v2 + 600);

  return [a1 a2];
}

double OUTLINED_FUNCTION_119_7()
{
  result = 0.0;
  *(v0 + 376) = 0;
  return result;
}

__n128 OUTLINED_FUNCTION_120_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  result.n128_u64[0] = a11;
  result.n128_u64[1] = a13;
  return result;
}

uint64_t OUTLINED_FUNCTION_122_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_125_8()
{
  v3 = *(v1 + 3520);

  return [v0 v3];
}

uint64_t sub_1E3D1BFB0()
{
  OUTLINED_FUNCTION_134();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 328) = v0;

  if (!v0)
  {
    *(v4 + 401) = v3 & 1;
  }

  OUTLINED_FUNCTION_76_18();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1E3D1C960()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_64_22();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3D1CA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_53_6();
  v19 = *(v16 + 272);
  v18 = *(v16 + 280);

  v20 = OUTLINED_FUNCTION_16_0();
  v19(v20);
  v21 = OUTLINED_FUNCTION_70_22();
  OUTLINED_FUNCTION_85_0(v21);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_5_10();
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_27_59(v22);

  sub_1E325F748(v18, &unk_1ECF2C400, &qword_1E429ABE0);
  v23 = sub_1E4206B94();
  v24 = VUISignpostLogObject(v23);
  OUTLINED_FUNCTION_38_38();
  OUTLINED_FUNCTION_10_111();
  sub_1E41FFBA4();

  v25 = OUTLINED_FUNCTION_16_0();
  v17(v25);
  OUTLINED_FUNCTION_14_120();
  OUTLINED_FUNCTION_69_22();

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_29_30();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_1E3D1CC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_53_6();
  *(v16 + 96) = *(v16 + 328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
  sub_1E3280A90(0, &qword_1ECF30180, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v17 = *(v16 + 104);
    (*(v16 + 296))(*(v16 + 144), *(v16 + 288), *(v16 + 128));
    v18 = v17;
    v19 = sub_1E41FFC94();
    v20 = sub_1E4206814();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_6_21();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_1E323F000, v19, v20, "JSNetworkProxy: prefetchSelectedTab: isFullTVAppEnabled failed with error:%@", v21, 0xCu);
      sub_1E325F748(v22, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
      v23 = v19;
      v19 = v18;
    }

    v24 = *(v16 + 312);
    v25 = *(v16 + 272);
    v39 = *(v16 + 280);
    v26 = *(v16 + 144);
    v27 = *(v16 + 128);

    v24(v26, v27);
    v28 = sub_1E4206B94();
    v29 = VUISignpostLogObject(v28);
    sub_1E41FFBE4();
    OUTLINED_FUNCTION_10_111();
    sub_1E41FFBA4();

    v30 = OUTLINED_FUNCTION_27_0();
    v25(v30);
    OUTLINED_FUNCTION_14_120();
    OUTLINED_FUNCTION_69_22();

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_29_30();

    v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, v39, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_29_30();
  }
}

uint64_t sub_1E3D1CEAC()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v3 = sub_1E41FFCB4();
  v1[5] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_127();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = sub_1E41FFBF4();
  v1[10] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v1[11] = v6;
  v1[12] = OUTLINED_FUNCTION_86_0();
  v7 = OUTLINED_FUNCTION_16_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3D1CFDC(uint64_t a1)
{
  v94 = v1;
  v3 = v1[11];
  v2 = v1[12];
  v86 = v1[9];
  v4 = v1[6];
  v92 = v1[10];
  v5 = v1[2];
  v6 = sub_1E4206BA4();
  v7 = VUISignpostLogObject(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E4297BE0;
  v9 = [v5 endpoint];
  v10 = sub_1E4205F14();
  v12 = v11;

  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1E3283528(v13, v14, v15);
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  sub_1E41FFBE4();
  v83 = v8;
  LOBYTE(v82) = 2;
  sub_1E41FFB94();

  v16 = *(v3 + 8);
  v16(v2, v92);
  v17 = sub_1E324FBDC();
  v18 = *(v4 + 16);
  v89 = v17;
  v18(v86);
  v19 = v5;
  v20 = sub_1E41FFC94();
  LOBYTE(v12) = sub_1E4206814();

  v21 = os_log_type_enabled(v20, v12);
  v22 = v1[9];
  v24 = v1[5];
  v23 = v1[6];
  if (v21)
  {
    v85 = v1[5];
    v25 = v1[2];
    v87 = v18;
    v26 = OUTLINED_FUNCTION_6_21();
    v27 = OUTLINED_FUNCTION_100();
    v93 = v27;
    *v26 = 136315138;
    v28 = [v25 endpoint];
    v84 = v22;
    v29 = v16;
    v30 = sub_1E4205F14();
    v32 = v31;

    v33 = v30;
    v16 = v29;
    v34 = sub_1E3270FC8(v33, v32, &v93);

    *(v26 + 4) = v34;
    OUTLINED_FUNCTION_36_4();
    _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_7_7();
    v18 = v87;
    OUTLINED_FUNCTION_6_0();

    v40 = *(v23 + 8);
    v40(v84, v85);
  }

  else
  {

    v40 = *(v23 + 8);
    v40(v22, v24);
  }

  v41 = v1[3];
  v42 = *(v41 + 112);
  if (!v42)
  {
LABEL_10:
    v55 = v1[2];
    (v18)(v1[7], v89, v1[5]);
    v56 = v55;
    v57 = sub_1E41FFC94();
    v58 = sub_1E4206814();

    v59 = os_log_type_enabled(v57, v58);
    v60 = v1[7];
    v61 = v1[5];
    if (v59)
    {
      v91 = v40;
      v62 = v1[2];
      v90 = v1[5];
      v63 = OUTLINED_FUNCTION_6_21();
      v64 = OUTLINED_FUNCTION_100();
      v93 = v64;
      *v63 = 136315138;
      v65 = [v62 endpoint];
      v66 = sub_1E4205F14();
      v88 = v60;
      v67 = v16;
      v69 = v68;

      v70 = sub_1E3270FC8(v66, v69, &v93);
      v16 = v67;

      *(v63 + 4) = v70;
      OUTLINED_FUNCTION_35_8();
      _os_log_impl(v71, v72, v73, v74, v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v91(v88, v90);
    }

    else
    {

      v40(v60, v61);
    }

    [objc_allocWithZone(MEMORY[0x1E69E1610]) initWithRequestProperties_];
    goto LABEL_14;
  }

  v43 = v1[2];
  v44 = v42;
  v45 = [v44 requestProperties];
  LOBYTE(v43) = sub_1E3D1D5AC(v45, v43);

  if ((v43 & 1) == 0)
  {

    goto LABEL_10;
  }

  v46 = v1[8];
  v47 = v1[5];
  v48 = *(v41 + 112);
  *(v41 + 112) = 0;

  (v18)(v46, v89, v47);
  v49 = sub_1E41FFC94();
  v50 = sub_1E4206814();
  if (OUTLINED_FUNCTION_16_53(v50))
  {
    v51 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_34_10(v51);
    _os_log_impl(&dword_1E323F000, v49, v47, "JSNetworkProxy: makeNetworkRequestOperation: it's prefetching, reuse current one", v41, 2u);
    OUTLINED_FUNCTION_65_0();
  }

  v52 = v1[8];
  v53 = v1[5];
  v54 = v1[2];

  v40(v52, v53);
  sub_1E3280A90(0, &qword_1EE23AED0, 0x1E69E1618);
  sub_1E3D1D7F4(v54, v44);
LABEL_14:
  v76 = sub_1E4206B94();
  v77 = VUISignpostLogObject(v76);
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  v78 = OUTLINED_FUNCTION_27_0();
  (v16)(v78);

  v79 = OUTLINED_FUNCTION_88_1();

  return v80(v79);
}

uint64_t sub_1E3D1D5AC(void *a1, void *a2)
{
  v4 = [a1 endpoint];
  v5 = sub_1E4205F14();
  v7 = v6;

  v8 = [a2 endpoint];
  v9 = sub_1E4205F14();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
  }

  else
  {
    v13 = sub_1E42079A4();

    v14 = 0;
    if ((v13 & 1) == 0)
    {
      return v14 & 1;
    }
  }

  v15 = [a1 queryParameters];
  v16 = sub_1E4205C64();

  v17 = [a2 queryParameters];
  v18 = sub_1E4205C64();

  if (v16 && v18)
  {
    sub_1E3280A90(0, &qword_1EE23B398, 0x1E695DF20);

    v20 = sub_1E37766C4(v19);
    v21 = sub_1E4205C44();
    v14 = [v20 isEqualToDictionary_];
  }

  else
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34558, &qword_1E42C0318);
    sub_1E3D20638();
    if (sub_1E4149048(v22))
    {
      v14 = sub_1E4149048(v22);
    }

    else
    {
      v14 = 0;
    }
  }

  return v14 & 1;
}

id sub_1E3D1D7F4(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequestProperties:a1 underlyingOperation:a2];

  return v4;
}

uint64_t sub_1E3D1D850()
{
  OUTLINED_FUNCTION_24();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v1[6] = *v0;
  v4 = sub_1E41FFCB4();
  v1[7] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v1[8] = v5;
  v1[9] = OUTLINED_FUNCTION_86_0();
  v6 = OUTLINED_FUNCTION_16_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1E3D1D920()
{
  OUTLINED_FUNCTION_134();
  v1 = v0[5];
  v2 = *(v1 + 120);
  v0[10] = v2;
  if (v2)
  {
    v3 = *(v1 + 128);
    v0[11] = v3;
    if (v3)
    {
      v4 = v0[4];

      v5 = v3;
      if (sub_1E3D1D5AC(v5, v4))
      {
        v6 = v0[9];
        sub_1E324FBDC();
        OUTLINED_FUNCTION_55_37();
        v7(v6);
        v8 = sub_1E41FFC94();
        v9 = sub_1E4206814();
        if (OUTLINED_FUNCTION_161(v9))
        {
          v10 = OUTLINED_FUNCTION_125_0();
          OUTLINED_FUNCTION_34_10(v10);
          OUTLINED_FUNCTION_38_44(&dword_1E323F000, v11, v12, "JSNetworkProxy: makeNetworkRequest: reusing current task");
          OUTLINED_FUNCTION_65_0();
        }

        v13 = OUTLINED_FUNCTION_58_29();
        v14(v13);
        *(v1 + 120) = 0;

        v15 = *(v1 + 128);
        *(v1 + 128) = 0;

        v16 = swift_task_alloc();
        v0[12] = v16;
        sub_1E3280A90(0, &qword_1ECF37A48, 0x1E698CB98);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
        *v16 = v0;
        v16[1] = sub_1E3D1DB60;
        OUTLINED_FUNCTION_60_23();

        return MEMORY[0x1EEE6DA10]();
      }
    }
  }

  sub_1E41FEE44();
  v0[14] = sub_1E41FEE24();
  v18 = swift_task_alloc();
  v0[15] = v18;
  *v18 = v0;
  v18[1] = sub_1E3D1DCF0;
  OUTLINED_FUNCTION_78_16(v0[3]);
  OUTLINED_FUNCTION_60_23();

  return MEMORY[0x1EEE43620](v19);
}

uint64_t sub_1E3D1DB60()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v0;

  OUTLINED_FUNCTION_76_18();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E3D1DC80()
{
  OUTLINED_FUNCTION_24();

  v1 = OUTLINED_FUNCTION_88_1();

  return v2(v1);
}

uint64_t sub_1E3D1DCF0()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_31();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v5 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_76_18();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(v3);
  }
}

uint64_t sub_1E3D1DE38()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3D1DE9C()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E3D1DF94(uint64_t a1, void *a2, const void *a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v7 = sub_1E41FDDF4();
  v4[4] = v7;
  v4[5] = *(v7 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = _Block_copy(a3);
  sub_1E41FDDA4();
  v8 = a2;

  v9 = swift_task_alloc();
  v4[8] = v9;
  *v9 = v4;
  v9[1] = sub_1E3D1E0D8;

  return sub_1E3D1D850();
}

uint64_t sub_1E3D1E0D8()
{
  OUTLINED_FUNCTION_80_14();
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v5 = *v2;
  *v4 = *v2;

  v6 = v3[7];
  v7 = v3[2];
  (*(v3[5] + 8))(v3[6], v3[4]);

  if (v1)
  {
    v8 = sub_1E41FE264();

    v9 = OUTLINED_FUNCTION_44_1();
    v10(v9, 0, v8);

    _Block_release(v6);
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_64_22();
    v11();
    _Block_release(v6);
  }

  v12 = *(v5 + 8);

  return v12();
}

uint64_t sub_1E3D1E2C4()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1E3D1E2FC()
{
  sub_1E3D1E2C4();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E3D1E328()
{
  OUTLINED_FUNCTION_24();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v5 = sub_1E41FFCB4();
  v1[8] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_86_0();
  v7 = sub_1E41FDDF4();
  v1[11] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v1[12] = v8;
  v1[13] = OUTLINED_FUNCTION_127();
  v1[14] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_16_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3D1E428()
{
  OUTLINED_FUNCTION_27_2();
  v1 = [*(v0 + 32) endpoint];
  v2 = sub_1E4205F14();
  v4 = v3;

  *(v0 + 120) = v4;
  sub_1E41FEFD4();
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_1E3D1E508;
  v6 = *(v0 + 112);

  return MEMORY[0x1EEE436E8](v6, v2, v4);
}

uint64_t sub_1E3D1E508()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_76_18();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1E3D1E628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_53_6();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = *(v24 + 136);
  type metadata accessor for VUIUTSNetworkManagerProxy();
  v28 = OUTLINED_FUNCTION_76_0();
  v29(v28);
  if (v27)
  {
    (*(*(v24 + 96) + 8))(*(v24 + 112), *(v24 + 88));
    *(v24 + 16) = v27;
    v30 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
    sub_1E3280A90(0, &qword_1ECF30180, 0x1E696ABC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      OUTLINED_FUNCTION_29_30();
      return;
    }

    v32 = *(v24 + 72);
    v31 = *(v24 + 80);
    v33 = *(v24 + 64);

    v34 = *(v24 + 24);
    v35 = sub_1E324FBDC();
    (*(v32 + 16))(v31, v35, v33);

    v36 = v34;
    v37 = sub_1E41FFC94();
    LOBYTE(v32) = sub_1E4206814();

    v38 = os_log_type_enabled(v37, v32);
    v40 = *(v24 + 72);
    v39 = *(v24 + 80);
    v41 = *(v24 + 64);
    if (v38)
    {
      v43 = *(v24 + 40);
      v42 = *(v24 + 48);
      a11 = *(v24 + 64);
      v44 = swift_slowAlloc();
      a12 = swift_slowAlloc();
      *v44 = 136315394;
      *(v44 + 4) = sub_1E3270FC8(v43, v42, &a12);
      *(v44 + 12) = 2080;
      v45 = [v36 localizedDescription];
      v46 = sub_1E4205F14();
      a10 = v39;
      v48 = v47;

      v49 = sub_1E3270FC8(v46, v48, &a12);

      *(v44 + 14) = v49;
      OUTLINED_FUNCTION_36_4();
      _os_log_impl(v50, v51, v52, v53, v54, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_6_0();

      (*(v40 + 8))(a10, a11);
    }

    else
    {

      (*(v40 + 8))(v39, v41);
    }
  }

  else
  {
    v55 = *(v24 + 112);
    v56 = *(v24 + 88);
    v57 = *(v24 + 56);
    v58 = *(v24 + 32);
    v59 = *(*(v24 + 96) + 8);
    v59(v55, v56);

    v60 = OUTLINED_FUNCTION_27_0();
    v61(v60);
    v62 = sub_1E3D1F19C(v55);
    v59(v55, v56);
    *(v57 + 120) = v62;

    v63 = *(v57 + 128);
    *(v57 + 128) = v58;

    v64 = v58;
  }

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_29_30();

  v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1E3D1E9A4()
{
  v32 = v0;
  v1 = *(v0 + 136);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
  sub_1E3280A90(0, &qword_1ECF30180, 0x1E696ABC0);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    v6 = *(v0 + 64);

    v7 = *(v0 + 24);
    v8 = sub_1E324FBDC();
    (*(v5 + 16))(v4, v8, v6);

    v9 = v7;
    v10 = sub_1E41FFC94();
    LOBYTE(v5) = sub_1E4206814();

    v11 = os_log_type_enabled(v10, v5);
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    v14 = *(v0 + 64);
    if (v11)
    {
      v16 = *(v0 + 40);
      v15 = *(v0 + 48);
      v30 = *(v0 + 64);
      v17 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v17 = 136315394;
      *(v17 + 4) = sub_1E3270FC8(v16, v15, &v31);
      *(v17 + 12) = 2080;
      v18 = [v9 localizedDescription];
      v19 = sub_1E4205F14();
      v29 = v12;
      v21 = v20;

      v22 = sub_1E3270FC8(v19, v21, &v31);

      *(v17 + 14) = v22;
      OUTLINED_FUNCTION_36_4();
      _os_log_impl(v23, v24, v25, v26, v27, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_6_0();

      (*(v13 + 8))(v29, v30);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    OUTLINED_FUNCTION_54();

    return v28();
  }

  return result;
}

uint64_t sub_1E3D1EC5C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3D1ED5C()
{
  **(v0 + 40) = *(v0 + 56) == 0;
  OUTLINED_FUNCTION_54();
  return v1();
}

uint64_t sub_1E3D1ED90()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_64_22();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1E3D1EEB8()
{
  OUTLINED_FUNCTION_134();
  v3 = TVAppFeature.isEnabled.getter(12, v1, v2);
  v4 = v0[2];
  if (v3)
  {
    if (*(v4 + 120))
    {
      v5 = v0[8];

      sub_1E324FBDC();
      OUTLINED_FUNCTION_55_37();
      v6(v5);
      v7 = sub_1E41FFC94();
      v8 = sub_1E4206814();
      if (OUTLINED_FUNCTION_161(v8))
      {
        v9 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_34_10(v9);
        OUTLINED_FUNCTION_38_44(&dword_1E323F000, v10, v11, "JSNetworkProxy: clearPrefetchingOperation");
        OUTLINED_FUNCTION_65_0();
      }

      v12 = OUTLINED_FUNCTION_58_29();
      v13(v12);
      sub_1E3280A90(0, &qword_1ECF37A48, 0x1E698CB98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
      sub_1E42064D4();

      *(v4 + 120) = 0;

      goto LABEL_15;
    }

    v26 = v0[7];
    sub_1E324FBDC();
    OUTLINED_FUNCTION_55_37();
    v27(v26);
    v28 = sub_1E41FFC94();
    v29 = sub_1E4206814();
    v30 = OUTLINED_FUNCTION_72_1(v29);
  }

  else
  {
    v14 = *(v4 + 112);
    if (v14)
    {
      v15 = v0[6];
      v16 = v14;
      sub_1E324FBDC();
      OUTLINED_FUNCTION_55_37();
      v17(v15);
      v18 = sub_1E41FFC94();
      v19 = sub_1E4206814();
      if (OUTLINED_FUNCTION_161(v19))
      {
        v20 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_34_10(v20);
        OUTLINED_FUNCTION_38_44(&dword_1E323F000, v21, v22, "JSNetworkProxy: clearPrefetchingOperation");
        OUTLINED_FUNCTION_65_0();
      }

      v23 = OUTLINED_FUNCTION_58_29();
      v24(v23);
      [v16 cancel];

      v25 = *(v4 + 112);
      *(v4 + 112) = 0;

LABEL_15:

      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_60_23();

      __asm { BRAA            X1, X16 }
    }

    v31 = v0[5];
    sub_1E324FBDC();
    OUTLINED_FUNCTION_55_37();
    v32(v31);
    v28 = sub_1E41FFC94();
    v33 = sub_1E4206814();
    v30 = OUTLINED_FUNCTION_72_1(v33);
  }

  if (v30)
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_35_8();
    _os_log_impl(v34, v35, v36, v37, v38, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v39 = OUTLINED_FUNCTION_27_0();
  v40(v39);
  goto LABEL_15;
}

uint64_t sub_1E3D1F19C(uint64_t a1)
{
  v2 = sub_1E41FDDF4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  v12 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  (*(v4 + 16))(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v4 + 32))(v14 + v13, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  return sub_1E3D1F780(0, 0, v11, &unk_1E42CC650, v14);
}

void sub_1E3D1F334(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1E324FBDC();
    (*(v4 + 16))(v7, v10, v2);
    v11 = v9;
    v12 = sub_1E41FFC94();
    v13 = sub_1E4206814();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_6_21();
      *v14 = 134217984;
      *(v14 + 4) = [v11 responseStatusCode];

      _os_log_impl(&dword_1E323F000, v12, v13, "JSNetworkProxy: prefetchSelectedTab: request completed, status: %ld", v14, 0xCu);
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      v12 = v11;
    }

    (*(v4 + 8))(v7, v2);
    v15 = sub_1E4206B94();
    v16 = VUISignpostLogObject(v15);
    sub_1E41FFBA4();
  }
}

uint64_t sub_1E3D1F51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3D1F530()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FEE44();
  v0[4] = sub_1E41FEE24();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1E3D1F5D8;
  v2 = OUTLINED_FUNCTION_78_16(v0[3]);

  return MEMORY[0x1EEE43620](v2);
}

uint64_t sub_1E3D1F5D8()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_31();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (v0)
  {
    v9 = sub_1E3D1F724;
  }

  else
  {

    *(v5 + 56) = v3;
    v9 = sub_1E3D1F6F4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E3D1F6F4()
{
  **(v0 + 16) = *(v0 + 56);
  OUTLINED_FUNCTION_54();
  return v1();
}

uint64_t sub_1E3D1F724()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3D1F780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1E325A828(a3, v21 - v9);
  v11 = sub_1E4206474();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1E325F748(v10, &unk_1ECF2C400, &qword_1E429ABE0);
  }

  else
  {
    sub_1E4206464();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1E42063B4();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21[0] = a3;
      v17 = sub_1E4205FB4() + 32;
      sub_1E3280A90(0, &qword_1ECF37A48, 0x1E698CB98);

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_1E325F748(v21[0], &unk_1ECF2C400, &qword_1E429ABE0);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E325F748(a3, &unk_1ECF2C400, &qword_1E429ABE0);
  sub_1E3280A90(0, &qword_1ECF37A48, 0x1E698CB98);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1E3D1FA40()
{
  OUTLINED_FUNCTION_24();
  if (qword_1EE2A5930 != -1)
  {
    OUTLINED_FUNCTION_3_165(&qword_1EE2A5930);
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1E3D1FAF4;
  OUTLINED_FUNCTION_78_16(*(v0 + 16));

  return sub_1E3D1CEAC();
}

uint64_t sub_1E3D1FAF4()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_88_1();

  return v4(v3);
}

uint64_t sub_1E3D1FC58(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  v4 = a1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1E3D1FD08;

  return static VUIJSNetworkProxy.makeNetworkRequestOperation(_:)(v4);
}

uint64_t sub_1E3D1FD08()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v1;
  OUTLINED_FUNCTION_39();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_7();
  *v7 = v6;

  (v4)[2](v4, v2);
  _Block_release(v4);

  OUTLINED_FUNCTION_54();

  return v8();
}

uint64_t static VUIJSNetworkProxy.makeNetworkRequest(_:requestProperties:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3D1FE54()
{
  OUTLINED_FUNCTION_24();
  if (qword_1EE2A5930 != -1)
  {
    OUTLINED_FUNCTION_3_165(&qword_1EE2A5930);
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1E3D1FF08;
  OUTLINED_FUNCTION_78_16(*(v0 + 16));

  return sub_1E3D1D850();
}

uint64_t sub_1E3D1FF08()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1E3D2007C(uint64_t a1, void *a2, const void *a3)
{
  v3[2] = a2;
  v6 = sub_1E41FDDF4();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a3);
  sub_1E41FDDA4();
  v8 = a2;
  v9 = swift_task_alloc();
  v3[7] = v9;
  *v9 = v3;
  v9[1] = sub_1E3D201AC;

  return static VUIJSNetworkProxy.makeNetworkRequest(_:requestProperties:)(v7, v8);
}

void sub_1E3D201AC()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_80_14();
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  *v4 = *v2;

  v5 = v3[6];
  v6 = v3[2];
  (*(v3[4] + 8))(v3[5], v3[3]);

  if (v1)
  {
    v7 = sub_1E41FE264();

    v8 = OUTLINED_FUNCTION_44_1();
    v9(v8, 0, v7);

    _Block_release(v5);
  }

  else
  {
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_64_22();
    v10();
    _Block_release(v5);
  }

  OUTLINED_FUNCTION_60_23();

  __asm { BRAA            X1, X16 }
}

id VUIJSNetworkProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VUIJSNetworkProxy.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VUIJSNetworkProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3D20458()
{
  OUTLINED_FUNCTION_134();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_130(v1);

  return v4(v3);
}

uint64_t sub_1E3D204F4()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E327C238;
  v3 = OUTLINED_FUNCTION_27_0();

  return v4(v3);
}

uint64_t sub_1E3D2059C()
{
  OUTLINED_FUNCTION_134();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_130(v1);

  return v4(v3);
}

unint64_t sub_1E3D20638()
{
  result = qword_1ECF37A50;
  if (!qword_1ECF37A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2C8C0, &unk_1E42A1250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37A50);
  }

  return result;
}

uint64_t sub_1E3D2069C()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v1;
  v3 = sub_1E41FDDF4();
  OUTLINED_FUNCTION_17_2(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_14_3(v6);
  *v7 = v10;
  v7[1] = sub_1E3286A7C;

  return sub_1E3D1F51C(v2, v8, v9, v0 + v5);
}

void sub_1E3D20768()
{
  v1 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_17_2(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  sub_1E3D1F334(v3, v4);
}

unint64_t OUTLINED_FUNCTION_32_60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_1E3270FC8(v13, v12, va);
}

uint64_t OUTLINED_FUNCTION_69_22()
{
}

uint64_t OUTLINED_FUNCTION_70_22()
{

  return sub_1E4206474();
}

void OUTLINED_FUNCTION_86_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_88_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_91_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_94_15()
{
}

double sub_1E3D20934(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_imageLayout;
  OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1E3D209CC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_variant;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3D20A00(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_variant;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

void *sub_1E3D20A90(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_indicatorImageView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3D20ACC(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_indicatorImageView;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;
  [v4 removeFromSuperview];
  v6 = OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_indicatorImageView;
  swift_beginAccess();
  if (*&v1[v6])
  {
    [v1 addSubview_];
  }
}

void (*sub_1E3D20B7C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_indicatorImageView;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E3D20C04;
}

void sub_1E3D20C04(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_1E3D20ACC(v3);
  }

  else
  {
    sub_1E3D20ACC(*(*a1 + 24));
  }

  free(v2);
}

void sub_1E3D20C70()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_imageLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_variant) = 2;
  *(v0 + OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_indicatorImageView) = 0;
  OUTLINED_FUNCTION_7_159();
  __break(1u);
}

id sub_1E3D20CF0()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_imageLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_variant) = 2;
  *(v0 + OBJC_IVAR____TtC8VideosUI34LeagueStandingsLegendIndicatorView_indicatorImageView) = 0;
  v9 = type metadata accessor for LeagueStandingsLegendIndicatorView();
  v1 = OUTLINED_FUNCTION_2_0();
  v4 = objc_msgSendSuper2(v2, v3, v1, v0, v9);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor_];

  return v6;
}

void *sub_1E3D20E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ImageViewModel();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = objc_allocWithZone(type metadata accessor for LeagueStandingsLegendIndicatorView());

  v7 = OUTLINED_FUNCTION_5_8();
  v9 = [v6 v8];
  (*((*MEMORY[0x1E69E7D40] & *v9) + 0xB0))(v5, a3);

  return v9;
}

void sub_1E3D20F30(char a1)
{
  OUTLINED_FUNCTION_5_16();
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))())
  {
    OUTLINED_FUNCTION_9_13();
    v6 = (*(v5 + 152))();
    if (v6)
    {
      v7 = v6;
      OUTLINED_FUNCTION_9_13();
      v9 = (*(v8 + 128))();
      if (v9 == 2 || (v9 & 1) != 0)
      {
        v16 = OUTLINED_FUNCTION_6_12();
        [v17 v18];
      }

      else
      {
        OUTLINED_FUNCTION_111();
        v11 = *(v10 + 200);

        *&v13 = COERCE_DOUBLE(v11(v12));
        if (v14)
        {
          OUTLINED_FUNCTION_111();
          (*(v15 + 176))(v23);
          v2 = 0.0;
          if ((v24 & 1) == 0)
          {
            v2 = sub_1E3952BE0(v23[0], v23[1], v23[2], v23[3]) + 0.0;
          }
        }

        else
        {
          v2 = *&v13;
        }

        OUTLINED_FUNCTION_111();
        (*(v19 + 304))();
        v21 = v20;

        if (v21)
        {
          OUTLINED_FUNCTION_111();
          (*(v22 + 176))(v25);
          if ((v26 & 1) == 0)
          {
            sub_1E3952BD8(v25[0], v25[1], v25[2]);
          }
        }
      }

      sub_1E3D21B38();
      OUTLINED_FUNCTION_18_3();
      if ((a1 & 1) == 0)
      {
        [v7 setFrame_];
      }
    }
  }

  OUTLINED_FUNCTION_17_4();
}

double sub_1E3D21244(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    type metadata accessor for ImageLayout();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      OUTLINED_FUNCTION_6_143();
      v8 = *(v7 + 112);

      v8(v6);
      goto LABEL_7;
    }
  }

  if (!(*(*a1 + 392))())
  {
    return result;
  }

  type metadata accessor for ImageLayout();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    OUTLINED_FUNCTION_6_143();
    v13 = *(v12 + 112);

    v13(v11);

LABEL_7:
    OUTLINED_FUNCTION_0_219();
    v15 = (*(v14 + 152))();
    [v15 removeFromSuperview];

    v16 = (*(*a1 + 1016))(7);
    if (v17)
    {
      if (v16 == 0xD000000000000019 && v17 == 0x80000001E427E6B0)
      {
      }

      else
      {
        v20 = OUTLINED_FUNCTION_18_86(v16, v17, v18, 0x80000001E427E6B0);

        if ((v20 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      OUTLINED_FUNCTION_0_219();
      v27 = (*(v26 + 104))();
      v28 = type metadata accessor for PillView();
      v29 = objc_allocWithZone(v28);

      *&v29[OBJC_IVAR____TtC8VideosUIP33_F4D579EB76AEB5046CBDB31694A96EE38PillView_viewModel] = 0;
      v30 = OBJC_IVAR____TtC8VideosUIP33_F4D579EB76AEB5046CBDB31694A96EE38PillView_imageLayout;
      *&v29[OBJC_IVAR____TtC8VideosUIP33_F4D579EB76AEB5046CBDB31694A96EE38PillView_imageLayout] = 0;
      v31 = v27;
      if (!v27)
      {
        v31 = (*(*a1 + 392))();
      }

      *&v29[v30] = v31;

      v32 = OUTLINED_FUNCTION_5_8();
      v35 = objc_msgSendSuper2(v33, v34, v32, v29, v28);
      v36 = objc_opt_self();
      v37 = v35;
      v38 = [v36 clearColor];
      [v37 setBackgroundColor_];

      OUTLINED_FUNCTION_0_219();
      (*(v39 + 160))(v37);
      OUTLINED_FUNCTION_0_219();
      (*(v40 + 136))(0);
      goto LABEL_18;
    }

LABEL_13:
    OUTLINED_FUNCTION_0_219();
    v22 = (*(v21 + 104))();
    memset(v41, 0, sizeof(v41));
    v42 = 0;
    v43 = 1;
    v44 = 0;
    v23 = sub_1E3DF9F2C(a1, 0, v41, v22);

    OUTLINED_FUNCTION_0_219();
    (*(v24 + 160))(v23);
    OUTLINED_FUNCTION_0_219();
    (*(v25 + 136))(1);
LABEL_18:
    [v3 vui_layoutIfNeeded];
    return result;
  }

  return result;
}

void sub_1E3D21668()
{
  type metadata accessor for ImageLayout();
  v0 = sub_1E3BD61D8();
  v1 = objc_opt_self();

  v2 = [v1 systemGreenColor];
  OUTLINED_FUNCTION_36();
  (*(v3 + 680))();
  OUTLINED_FUNCTION_36();
  (*(v4 + 1712))(1);
  OUTLINED_FUNCTION_36();
  (*(v5 + 2024))(2, 0);
  OUTLINED_FUNCTION_36();
  (*(v6 + 2144))(0x401C000000000000, 0);
  v12[0] = sub_1E3952C40();
  v12[1] = v7;
  v12[2] = v8;
  v12[3] = v9;
  v13 = 0;
  OUTLINED_FUNCTION_8();
  (*(v10 + 184))(v12);
  OUTLINED_FUNCTION_8();
  (*(v11 + 208))(0x4022000000000000, 0);

  qword_1ECF715C8 = v0;
}

uint64_t *sub_1E3D21824()
{
  if (qword_1ECF60290 != -1)
  {
    swift_once();
  }

  return &qword_1ECF715C8;
}

void sub_1E3D21874()
{
  type metadata accessor for ImageLayout();
  v0 = sub_1E3BD61D8();
  v1 = objc_opt_self();

  v2 = [v1 systemRedColor];
  OUTLINED_FUNCTION_36();
  (*(v3 + 680))();
  OUTLINED_FUNCTION_36();
  (*(v4 + 312))(0x4008000000000000, 0);
  OUTLINED_FUNCTION_8();
  (*(v5 + 208))(0x401C000000000000, 0);
  v16[0] = sub_1E3952C40();
  v16[1] = v6;
  v16[2] = v7;
  v16[3] = v8;
  v17 = 0;
  OUTLINED_FUNCTION_8();
  v10 = (*(v9 + 184))(v16);
  v10.n128_u64[0] = 1.5;
  v14[0] = j__OUTLINED_FUNCTION_7_78(v10);
  v14[1] = v11;
  v14[2] = v12;
  v14[3] = v13;
  v15 = 0;
  (*(*v0 + 560))(v14);

  qword_1ECF715D0 = v0;
}

uint64_t *sub_1E3D21A0C()
{
  if (qword_1ECF60298 != -1)
  {
    swift_once();
  }

  return &qword_1ECF715D0;
}

uint64_t sub_1E3D21A5C(uint64_t a1)
{
  type metadata accessor for ImageViewModel();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = *(*v1 + 1016);

    v3 = v2(7);
    if (v4)
    {
      if (v3 == 0xD000000000000019 && v4 == 0x80000001E427E6B0)
      {
        v7 = 1;
      }

      else
      {
        v7 = OUTLINED_FUNCTION_18_86(v3, v4, v5, 0x80000001E427E6B0);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1E3D21B38()
{
  OUTLINED_FUNCTION_5_16();
  v3 = [v0 vuiTraitCollection];
  v4 = [v3 isAXEnabled];

  if (v4)
  {
    v5 = objc_opt_self();
    v6 = [v0 vuiTraitCollection];
    [v5 scaleContentSizeValue:v6 forTraitCollection:v2];

    v7 = [v0 vuiTraitCollection];
    [v5 scaleContentSizeValue:v7 forTraitCollection:v1];
  }

  OUTLINED_FUNCTION_6_12();
}

void sub_1E3D21CAC()
{
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_F4D579EB76AEB5046CBDB31694A96EE38PillView_viewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUIP33_F4D579EB76AEB5046CBDB31694A96EE38PillView_imageLayout) = 0;
  OUTLINED_FUNCTION_7_159();
  __break(1u);
}

unint64_t sub_1E3D21D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF37A70;
  if (!qword_1ECF37A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37A70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LeagueStandingsLegendIndicatorVariant(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1E3D21E50()
{
  v1 = v0;
  OUTLINED_FUNCTION_0_8();
  type metadata accessor for PillView();
  v2 = OUTLINED_FUNCTION_2_0();
  objc_msgSendSuper2(v3, v4, v2);
  v5 = *&v0[OBJC_IVAR____TtC8VideosUIP33_F4D579EB76AEB5046CBDB31694A96EE38PillView_imageLayout];
  if (v5)
  {
    OUTLINED_FUNCTION_8();
    v7 = *(v6 + 200);

    v9 = COERCE_DOUBLE(v7(v8));
    v11 = 0.0;
    if (v10)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v9;
    }

    v13 = COERCE_DOUBLE((*(*v5 + 304))());
    if (v14)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v13;
    }

    (*(*v5 + 552))(v32);
    if ((v33 & 1) == 0)
    {
      v11 = sub_1E3952BE8(v32[0], v32[1], v32[2], v32[3]);
    }

    v16 = objc_opt_self();
    v17 = [v1 vuiTraitCollection];
    [v16 scaleContentSizeValue:v17 forTraitCollection:v12];
    v19 = v18;

    v20 = [v1 vuiTraitCollection];
    [v16 scaleContentSizeValue:v20 forTraitCollection:v15];
    v22 = v21;

    v23 = [v1 vuiTraitCollection];
    [v16 scaleContentSizeValue:v23 forTraitCollection:v11];
    v25 = v24;

    OUTLINED_FUNCTION_36();
    v27 = (*(v26 + 672))();
    if (!v27)
    {
      v27 = [objc_opt_self() clearColor];
    }

    v28 = v27;
    [v1 bounds];
    v29 = (CGRectGetWidth(v34) - v19) * 0.5;
    [v1 bounds];
    v30 = (CGRectGetHeight(v35) - v22) * 0.5;
    v31 = [objc_opt_self() bezierPathWithRoundedRect:v29 cornerRadius:{v30, v19, v22, v25}];
    [v28 setFill];
    [v31 fill];
  }
}

id sub_1E3D22208(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1E3D2228C()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3D222D8(char a1)
{
  if (!a1)
  {
    return 0x7265746544746F6ELL;
  }

  if (a1 == 1)
  {
    return 0x6465776F6C6C61;
  }

  return 0x6465696E6564;
}

uint64_t sub_1E3D22344(unsigned __int8 a1, char a2)
{
  v2 = 0xED000064656E696DLL;
  v3 = 0x7265746544746F6ELL;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6465776F6C6C61;
    }

    else
    {
      v5 = 0x6465696E6564;
    }

    if (v4 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0x7265746544746F6ELL;
    v6 = 0xED000064656E696DLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6465776F6C6C61;
    }

    else
    {
      v3 = 0x6465696E6564;
    }

    if (a2 == 1)
    {
      v2 = 0xE700000000000000;
    }

    else
    {
      v2 = 0xE600000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3D2245C(uint64_t a1, unsigned __int8 a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3D224F8(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E3D225A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3D2228C();
  *a1 = result;
  return result;
}

uint64_t sub_1E3D225D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3D222D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3D225FC()
{
  v0 = sub_1E41FF214();
  v1 = *(v0 - 1);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v15 - v5;
  if (TVAppFeature.isEnabled.getter(12, v7, v8))
  {
    sub_1E41FEDE4();
    sub_1E41FEDD4();
    sub_1E41FED94();

    (*(v1 + 16))(v3, v6, v0);
    v9 = (*(v1 + 88))(v3, v0);
    if (v9 == *MEMORY[0x1E69D5900])
    {
      v10 = 0x6465696E6564;
      (*(v1 + 8))(v6, v0);
      return v10;
    }

    v10 = v9;
    v12 = *MEMORY[0x1E69D5908];
    v13 = *(v1 + 8);
    v13(v6, v0);
    if (v10 != v12)
    {
      OUTLINED_FUNCTION_0_220();
      v13(v3, v0);
      return v10;
    }

    goto LABEL_9;
  }

  v11 = [objc_opt_self() defaultLocationManager];
  if (v11)
  {
    v10 = v11;
    v0 = [v11 authorizationStatus];

    if (v0 == -1)
    {
      OUTLINED_FUNCTION_0_220();
      return v10;
    }

    if (!v0)
    {
      return 0x6465696E6564;
    }

    if (v0 == 1)
    {
LABEL_9:
      OUTLINED_FUNCTION_1_198();
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  type metadata accessor for WLKLocationAuthorizationStatus();
  v15[1] = v0;
  result = sub_1E4207A24();
  __break(1u);
  return result;
}

void type metadata accessor for WLKLocationAuthorizationStatus()
{
  if (!qword_1ECF37A80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECF37A80);
    }
  }
}

unint64_t sub_1E3D22994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF37A78;
  if (!qword_1ECF37A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37A78);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationAuthorizationStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3D22AE8()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    type metadata accessor for CanonicalSectionHeaderLayout();
    v1 = sub_1E3DEF69C(*(v0 + 98));
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E3D22B54()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    type metadata accessor for CanonicalSectionItemLayout();
    v1 = sub_1E417FB58(*(v0 + 98));
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1E3D22BC0()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    type metadata accessor for CanonicalSectionFooterLayout();
    v1 = sub_1E3CC174C(*(v0 + 98));
    *(v0 + 120) = v1;
  }

  return v1;
}

uint64_t sub_1E3D22C2C(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return sub_1E3D22C68(v1);
}

uint64_t sub_1E3D22C68(char a1)
{
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 98) = a1;
  v2 = sub_1E3C2F9A0();
  if ([objc_opt_self() isSUIEnabled])
  {
    sub_1E3952C94();
    sub_1E3C2CC78();
  }

  v3 = sub_1E3D22AE8();
  sub_1E3C37CBC(v3, 110);

  v4 = sub_1E3D22B54();
  sub_1E3C37CBC(v4, 111);

  v5 = sub_1E3D22BC0();
  sub_1E3C37CBC(v5, 112);

  return v2;
}

unint64_t sub_1E3D22D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF37A88;
  if (!qword_1ECF37A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37A88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CanonicalSectionLayout.CanonicalSectionType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

id NSAttributedString.baseWritingDirection(forCharacterAt:)()
{
  if (OUTLINED_FUNCTION_5_151() <= v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1E4297BD0;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    v11 = sub_1E3283528(v8, v9, v10);
    v12 = MEMORY[0x1E69E6530];
    v13 = MEMORY[0x1E69E65A8];
    *(v8 + 32) = 0xD000000000000025;
    *(v8 + 40) = 0x80000001E427E910;
    *(v8 + 96) = v12;
    *(v8 + 104) = v13;
    *(v8 + 64) = v11;
    *(v8 + 72) = v0;
    v14 = [v1 (v2 + 1784)];
    *(v8 + 136) = v12;
    *(v8 + 144) = v13;
    *(v8 + 112) = v14;
    sub_1E4205F44();
    v15 = *MEMORY[0x1E695DA20];
    v16 = objc_allocWithZone(MEMORY[0x1E695DF30]);
    v6 = OUTLINED_FUNCTION_6_144(v15);
    [v6 raise];
    v7 = 0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_43_0();
    v5 = [v3 v4];
    if (!v5)
    {
      return 0;
    }

    v6 = v5;
    v7 = [v5 baseWritingDirection];
  }

  return v7;
}

uint64_t NSAttributedString.baseWritingDirectionForCharacterAtIndex(_:unknownStyle:)(uint64_t a1, _BYTE *a2)
{
  result = NSAttributedString.baseWritingDirection(forCharacterAt:)();
  if (a2)
  {
    *a2 = v4 & 1;
  }

  if (v4)
  {
    return -1;
  }

  return result;
}

uint64_t sub_1E3D23070(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_3_167();
  v5 = NSAttributedString.baseWritingDirectionForCharacterAtIndex(_:unknownStyle:)(v3, v4);

  return v5;
}

Swift::String __swiftcall NSAttributedString.convertedWritingDirectionToBidiControlCharacters()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  NSMutableAttributedString.convertWritingDirectionToBidiControlCharacters()();
  v2 = [v1 string];
  v3 = sub_1E4205F14();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

Swift::Void __swiftcall NSMutableAttributedString.convertWritingDirectionToBidiControlCharacters()()
{
  if (_MergedGlobals_231 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE28C468;
  v2 = v0;

  [v2 performSelector_];
}

id sub_1E3D231AC()
{
  sub_1E3280A90(0, &qword_1EE23B1B0, 0x1E696AAB0);
  result = sub_1E3763FC8(0, 0xE000000000000000);
  static NSAttributedString.empty = result;
  return result;
}

uint64_t *NSAttributedString.empty.unsafeMutableAddressor()
{
  if (qword_1ECF60620 != -1)
  {
    OUTLINED_FUNCTION_0_221(&qword_1ECF60620);
  }

  return &static NSAttributedString.empty;
}

id static NSAttributedString.empty.getter()
{
  if (qword_1ECF60620 != -1)
  {
    OUTLINED_FUNCTION_0_221(&qword_1ECF60620);
  }

  v1 = static NSAttributedString.empty;

  return v1;
}

id sub_1E3D23284()
{
  v0 = static NSAttributedString.empty.getter();

  return v0;
}

uint64_t sub_1E3D232AC(void *a1)
{
  v1 = a1;
  NSAttributedString.fullRange.getter();

  return 0;
}

uint64_t NSAttributedString.paragraphStyle(at:effectiveRange:)(uint64_t a1, uint64_t a2)
{
  if ([v2 attribute:*MEMORY[0x1E69DB688] atIndex:a1 effectiveRange:a2])
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_1E3280A90(0, &qword_1EE23B298, 0x1E69DB7D0);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1E329505C(v7);
    return 0;
  }
}

id sub_1E3D233E8(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_3_167();
  v5 = NSAttributedString.paragraphStyle(at:effectiveRange:)(v3, v4);

  return v5;
}

void NSAttributedString.strongBaseWritingDirectionOfParagraph(atOrBefore:)()
{
  if (OUTLINED_FUNCTION_5_151() <= v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1E4297BD0;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    v11 = sub_1E3283528(v8, v9, v10);
    v12 = MEMORY[0x1E69E6530];
    v13 = MEMORY[0x1E69E65A8];
    *(v8 + 32) = 0xD000000000000032;
    *(v8 + 40) = 0x80000001E427E940;
    *(v8 + 96) = v12;
    *(v8 + 104) = v13;
    *(v8 + 64) = v11;
    *(v8 + 72) = v0;
    v14 = [v1 (v2 + 1784)];
    *(v8 + 136) = v12;
    *(v8 + 144) = v13;
    *(v8 + 112) = v14;
    sub_1E4205F44();
    v15 = *MEMORY[0x1E695DA20];
    v16 = objc_allocWithZone(MEMORY[0x1E695DF30]);
    v17 = OUTLINED_FUNCTION_6_144(v15);
    [v17 raise];
  }

  else
  {
    v19 = 0;
    v20 = 1;
    v3 = *MEMORY[0x1E69DB688];
    v4 = swift_allocObject();
    *(v4 + 16) = &v19;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1E3D23EE4;
    *(v5 + 24) = v4;
    v18[4] = sub_1E3D23FBC;
    v18[5] = v5;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_1E3D236D0;
    v18[3] = &block_descriptor_99;
    v6 = _Block_copy(v18);

    [v1 enumerateAttribute:v3 inRange:0 options:v0 usingBlock:{2, v6}];
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
    }
  }
}

uint64_t sub_1E3D236D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_1E329504C(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_1E329505C(v13);
}

uint64_t sub_1E3D2378C(void *a1)
{
  v1 = a1;
  NSAttributedString.strongBaseWritingDirectionOfParagraphAtOrBeforeIndex(_:)();
  v3 = v2;

  return v3;
}

id NSAttributedString.paragraphStyle(for:wanting:defaultStyle:)(uint64_t a1, uint64_t a2, id a3, id a4)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v19[1] = 0;
  v9 = [v4 paragraphStyleAtIndex:a1 effectiveRange:v19];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1E4207034();
    if ((v13 & 1) == 0 && (v11 == a1 ? (v14 = v12 == a2) : (v14 = 0), v14 && ([v10 baseWritingDirection] == a3 || a3 == -1 && objc_msgSend(v10, sel_baseWritingDirection) != -1)))
    {

      return 0;
    }

    else
    {
      v16 = OUTLINED_FUNCTION_43_0();
      a4 = [v16 v17];
    }
  }

  else
  {
    v15 = a4;
  }

  return a4;
}

void sub_1E3D238F4()
{
  v0 = sub_1E4205ED4();
  v1 = NSSelectorFromString(v0);

  qword_1EE28C468 = v1;
}

Swift::Void __swiftcall NSMutableAttributedString.convertLineSeparatorsIntoLineFeeds(at:paragraphRanges:)(Swift::OpaquePointer at, Swift::OpaquePointer paragraphRanges)
{
  v3 = v2;
  v5 = 0;
  v21 = at._rawValue + 32;
  v22 = *(at._rawValue + 2);
  v6 = paragraphRanges._rawValue & 0xC000000000000001;
  v7 = paragraphRanges._rawValue & 0xFFFFFFFFFFFFFF8;
  while (v5 != v22)
  {
    v8 = v5 + 1;
    v9 = *&v21[8 * v5];
    v10 = sub_1E4205ED4();
    [v3 replaceCharactersInRange:v9 withString:{1, v10}];

    v11 = sub_1E32AE9B0(paragraphRanges._rawValue);
    for (i = 0; ; ++i)
    {
      if (v11 == i)
      {
        goto LABEL_21;
      }

      if (v6)
      {
        v13 = MEMORY[0x1E6911E60](i, paragraphRanges._rawValue);
      }

      else
      {
        if (i >= *(v7 + 16))
        {
          goto LABEL_25;
        }

        v13 = *(paragraphRanges._rawValue + i + 4);
      }

      v14 = v13;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      [v13 directionalRangeValue];
      if (v9 >= v24)
      {
        if (__OFSUB__(v9, v24))
        {
          goto LABEL_26;
        }

        if (v9 - v24 < v25)
        {
          break;
        }
      }
    }

    [v14 directionalRangeValue];
    v15 = [v3 paragraphStyleAtIndex:v24 effectiveRange:0];
    if (!v15)
    {

      goto LABEL_21;
    }

    v16 = v15;
    [v15 paragraphSpacing];
    if (v17 == 0.0)
    {

      goto LABEL_20;
    }

    [v16 mutableCopy];
    sub_1E4207264();
    swift_unknownObjectRelease();
    sub_1E3280A90(0, &qword_1EE23B040, 0x1E69DB7C8);
    if (swift_dynamicCast())
    {
      [v23 setParagraphSpacing_];
      v18 = v23;
      [v20 addAttribute:v19 value:v18 range:{v24, v25}];

      v3 = v20;
LABEL_20:

LABEL_21:
      v5 = v8;
      continue;
    }

    v5 = v8;
    v3 = v20;
  }
}

Swift::Void __swiftcall NSMutableString.convertLineSeparatorsIntoLineFeeds(at:)(Swift::OpaquePointer at)
{
  v1 = *(at._rawValue + 2);
  if (v1)
  {
    v2 = at._rawValue + 32;
    do
    {
      v2 += 8;
      v3 = sub_1E4205ED4();
      v4 = OUTLINED_FUNCTION_43_0();
      [v4 v5];

      --v1;
    }

    while (v1);
  }
}

void *NSParagraphStyle.withBaseWritingDirection(_:)()
{
  [v0 mutableCopy];
  sub_1E4207264();
  swift_unknownObjectRelease();
  v1 = sub_1E3280A90(0, &qword_1EE23B040, 0x1E69DB7C8);
  OUTLINED_FUNCTION_4_173(v1, v2, v3, v1, v4);
  v5 = OUTLINED_FUNCTION_43_0();
  [v5 v6];
  [v12 copy];
  sub_1E4207264();

  swift_unknownObjectRelease();
  v7 = sub_1E3280A90(0, &qword_1EE23B298, 0x1E69DB7D0);
  OUTLINED_FUNCTION_4_173(v7, v8, v9, v7, v10);
  return v12;
}

id sub_1E3D23D18(void *a1)
{
  v1 = a1;
  v2 = NSParagraphStyle.withBaseWritingDirection(_:)();

  return v2;
}

NSTextAlignment __swiftcall UIUserInterfaceLayoutDirection.textAlignment(whenLeftToRight:rightToLeft:)(NSTextAlignment whenLeftToRight, NSTextAlignment rightToLeft)
{
  if (v2 == 1)
  {
    return rightToLeft;
  }

  return whenLeftToRight;
}

id sub_1E3D23E1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_1E4205ED4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_1E4205C44();

LABEL_6:
  v9 = [v4 initWithName:a1 reason:v7 userInfo:v8];

  return v9;
}

void sub_1E3D23EE4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(v4 + 16);
  sub_1E3294F34(a1, v8);
  if (v9)
  {
    sub_1E3280A90(0, &qword_1EE23B298, 0x1E69DB7D0);
    if (swift_dynamicCast())
    {
      if ([v7 baseWritingDirection] == 1 || !objc_msgSend(v7, sel_baseWritingDirection))
      {
        *v6 = [v7 baseWritingDirection];
        *(v6 + 8) = 0;
        *a4 = 1;
      }
    }
  }

  else
  {
    sub_1E329505C(v8);
  }
}

uint64_t sub_1E3D23FE4(char a1)
{
  v1 = sub_1E3D241D0(a1);
  v3 = v2;
  if (v1 == 0xD000000000000013 && 0x80000001E427EB10 == v2)
  {
    goto LABEL_16;
  }

  v5 = v1;
  v6 = sub_1E42079A4();

  if (v6)
  {
    return 1;
  }

  if (v5 == 0x6B636F4C7473696CLL && v3 == 0xEA00000000007075)
  {
LABEL_16:

    return 1;
  }

  v8 = sub_1E42079A4();

  if ((v8 & 1) == 0)
  {
    if (v5 != 0xD000000000000015 || 0x80000001E427EB30 != v3)
    {
      v10 = sub_1E42079A4();

      return v10 & 1;
    }

    goto LABEL_16;
  }

  return 1;
}

uint64_t sub_1E3D240F8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_1E3D241D0(a1);
  v5 = v4;
  if (v3 == sub_1E3D241D0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

unint64_t sub_1E3D2417C()
{
  v0 = sub_1E4207A04();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3D241D0(char a1)
{
  result = 0x6465727574616566;
  switch(a1)
  {
    case 1:
      result = 0x65467374726F7073;
      break;
    case 2:
      result = 0x78457374726F7073;
      break;
    case 3:
      result = 0x647261646E617473;
      break;
    case 4:
      result = 0x74537374726F7073;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x6169726F74696465;
      break;
    case 7:
      result = 0x6169726F74696465;
      break;
    case 8:
      result = 0x7478654E7075;
      break;
    case 9:
      v3 = 0x726579616C70;
      goto LABEL_9;
    case 10:
      result = 0x6B636F4C7473696CLL;
      break;
    case 11:
      result = 0x70756B636F6CLL;
      break;
    case 12:
      v3 = 0x7374726F7073;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7055000000000000;
      break;
    case 13:
      result = 0x7473694879616C70;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0xD000000000000015;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0x756B636F4C62696CLL;
      break;
    case 19:
      result = 0x4C65646F73697065;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3D24444(char a1)
{
  sub_1E4207B44();
  sub_1E3D241D0(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D244B0(uint64_t a1, char a2)
{
  sub_1E3D241D0(a2);
  sub_1E4206014();
}

uint64_t sub_1E3D2450C(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3D241D0(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E3D2456C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3D2417C();
  *a1 = result;
  return result;
}

uint64_t sub_1E3D2459C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3D241D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3D245D0()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    type metadata accessor for ButtonLayout();
    v1 = sub_1E3BBB724();
    *(v0 + 160) = v1;
  }

  return v1;
}

uint64_t sub_1E3D24638()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    type metadata accessor for DownloadStateIndicatorLayout();
    v1 = sub_1E3C6D918();
    *(v0 + 176) = v1;
  }

  return v1;
}

id sub_1E3D246A0()
{
  v1 = *(v0 + 184);
  if (v1)
  {
    v2 = *(v0 + 184);
  }

  else
  {
    v3 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
    v4 = *(v0 + 184);
    *(v0 + 184) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1E3D24710(uint64_t a1)
{
  v2 = *(v1 + 184);
  *(v1 + 184) = a1;
}

uint64_t sub_1E3D24748(char a1)
{
  result = swift_beginAccess();
  *(v1 + 192) = a1;
  return result;
}

void sub_1E3D247D8()
{
  v2 = v0;
  OUTLINED_FUNCTION_8();
  (*(v3 + 1944))();
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 1808))(3);

  OUTLINED_FUNCTION_9_2();
  v6 = *(v5 + 1992);
  v6();
  sub_1E3952C78();
  v4211 = v7;
  v4212 = v8;
  v4213 = v9;
  v4214 = v10;
  LOBYTE(v4215) = 0;
  OUTLINED_FUNCTION_8();
  (*(v11 + 160))(&v4211);

  v13 = (v6)(v12);
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v14 = *(*v13 + 680);
  v15 = v1;
  v14(v1);

  v17 = (v6)(v16);
  sub_1E3E60364();
  OUTLINED_FUNCTION_7_16();
  v18 = (*v17 + 872);
  v19 = *v18;
  v20 = v1;
  v19(v1);

  OUTLINED_FUNCTION_9_2();
  (*(v21 + 2016))();
  sub_1E3952C78();
  v4206 = v22;
  v4207 = v23;
  v4208 = v24;
  v4209 = v25;
  LOBYTE(v4210) = 0;
  OUTLINED_FUNCTION_8();
  (*(v26 + 160))(&v4206);

  OUTLINED_FUNCTION_9_2();
  switch((*(v27 + 2088))())
  {
    case 1u:
      OUTLINED_FUNCTION_111();
      v2203 += 240;
      v2204 = *v2203;
      (*v2203)();
      sub_1E3D308B8();

      (v2204)(v2205);
      OUTLINED_FUNCTION_98_13();
      OUTLINED_FUNCTION_66_24(v2206, v2207);
      *&v4256 = v2208;
      *(&v4256 + 1) = v2209;
      v4257 = 0;
      (*(*v2 + 560))(&v4255);

      OUTLINED_FUNCTION_9_2();
      v2211 = *(v2210 + 1800);
      v2211();
      OUTLINED_FUNCTION_2_1();
      (*(v2212 + 1936))(2);

      (v2211)(v2213);
      OUTLINED_FUNCTION_2_1();
      v2214 = OUTLINED_FUNCTION_15_8();
      v2215(v2214);

      (v2211)(v2216);
      OUTLINED_FUNCTION_2_1();
      v2217 = OUTLINED_FUNCTION_10_7();
      v2218(v2217);

      (v2211)(v2219);
      OUTLINED_FUNCTION_2_1();
      v2220 = OUTLINED_FUNCTION_10_7();
      v2221(v2220);

      v2223 = (v2211)(v2222);
      v4049 = sub_1E3E5FDEC();
      OUTLINED_FUNCTION_81_12();
      v2224 = *(*v2223 + 680);
      v2225 = v2204;
      v2224(v2204);

      (v2211)(v2226);
      OUTLINED_FUNCTION_85_15();
      LOBYTE(v4252) = 27;
      LOBYTE(v4249[0]) = 27;
      LOBYTE(v4242[0]) = 22;
      LOBYTE(v4239[0]) = 22;
      LOBYTE(v4236[0]) = v2227;
      OUTLINED_FUNCTION_1_199(v2228, v2229, v2230, v2231, v2232, v2233, v2234, v2235, v2941, v3068, v3193, v3320, v3446, v3572, v3696, v3824, v4049, v4080, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, v2227);
      OUTLINED_FUNCTION_77_18();
      sub_1E3C2FCB8(v2236, v2237, v2238, v2239, v2240, v2241, &qword_1F5D549D8, v2242);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2251 = OUTLINED_FUNCTION_21_78(v2243, v2244, v2245, v2246, v2247, v2248, v2249, v2250, v3039, v3164, v3290, v3417, v3542, v3667, v3793, v3919, v4050, v4177, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v2252(v2251);

      (v2211)(v2253);
      OUTLINED_FUNCTION_75_19();
      LOBYTE(v4252) = 11;
      LOBYTE(v4249[0]) = 11;
      LOBYTE(v4242[0]) = 10;
      LOBYTE(v4239[0]) = 10;
      LOBYTE(v4236[0]) = 11;
      OUTLINED_FUNCTION_1_199(v2254, v2255, v2256, v2257, v2258, v2259, v2260, v2261, v3040, v3165, v3291, v3418, v3543, v3668, v3794, v3920, v4051, v4178, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      OUTLINED_FUNCTION_77_18();
      sub_1E3C2FCB8(v2262, v2263, v2264, v2265, v2266, v2267, &qword_1F5D54AF8, v2268);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2277 = OUTLINED_FUNCTION_45_48(v2269, v2270, v2271, v2272, v2273, v2274, v2275, v2276, v3041, v3166, v3292, v3419, v3544, v3669, v3795, v3921, v4052, v4179, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v2278(v2277, 54);

      (v2211)(v2279);
      OUTLINED_FUNCTION_84_0();
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v2280, v2281, v2282, v2283);
      sub_1E3952C88();
      OUTLINED_FUNCTION_6_145(v2284, v2285, v2286, v2287);
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_55(v2288, v2289, v2290, v2291);
      sub_1E3952C88();
      OUTLINED_FUNCTION_16_93(v2292, v2293, v2294, v2295);
      sub_1E3952C88();
      OUTLINED_FUNCTION_4_167(v2296, v2297, v2298, v2299);
      type metadata accessor for UIEdgeInsets();
      v2301 = v2300;
      OUTLINED_FUNCTION_1_199(v2300, v2302, v2303, v2304, v2305, v2306, v2307, v2308, v3042, v3167, v3293, v3420, v3545, v3670, v3796, v3922, v4053, v4180, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      OUTLINED_FUNCTION_77_18();
      sub_1E3C2FCB8(v2309, v2310, v2311, v2312, v2313, v2314, v2301, v2315);
      OUTLINED_FUNCTION_48_35(v2316, v2317, v2318, v2319, v2320, v2321, v2322, v2323, v3043, v3168, v3294, v3421, v3546, v3671, v3797, v3923, v4054, v4181, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2332 = OUTLINED_FUNCTION_24_74(v2324, v2325, v2326, v2327, v2328, v2329, v2330, v2331, v3044, v3169, v3295, v3422, v3547, v3672, v3798, v3924, v4055, v4182, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v2333(v2332);

      OUTLINED_FUNCTION_9_2();
      v2335 = *(v2334 + 1824);
      v2335();
      OUTLINED_FUNCTION_2_1();
      v2336 = OUTLINED_FUNCTION_15_8();
      v2337(v2336);

      (v2335)(v2338);
      OUTLINED_FUNCTION_2_1();
      v2339 = OUTLINED_FUNCTION_10_7();
      v2340(v2339);

      (v2335)(v2341);
      OUTLINED_FUNCTION_2_1();
      v2342 = OUTLINED_FUNCTION_10_7();
      v2343(v2342);

      v2345 = (v2335)(v2344);
      v2346 = *sub_1E3E5FD88();
      v2347 = *(*v2345 + 680);
      v2348 = v2346;
      v2347(v2346);

      (v2335)(v2349);
      OUTLINED_FUNCTION_91_13();
      LOBYTE(v4252) = 27;
      LOBYTE(v4249[0]) = 27;
      LOBYTE(v4242[0]) = 11;
      LOBYTE(v4239[0]) = 11;
      LOBYTE(v4236[0]) = v2350;
      OUTLINED_FUNCTION_1_199(v2351, v2352, v2353, v2354, v2355, v2356, v2357, v2358, v3045, v3170, v3296, v3423, v3548, v3673, v3799, v3925, v4056, v4183, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      OUTLINED_FUNCTION_77_18();
      sub_1E3C2FCB8(v2359, v2360, v2361, v2362, v2363, v2364, &qword_1F5D549D8, v2365);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2374 = OUTLINED_FUNCTION_30_60(v2366, v2367, v2368, v2369, v2370, v2371, v2372, v2373, v3046, v3171, v3297, v3424, v3549, v3674, v3800, v3926, v4057, v4184, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v2375(v2374);

      (v2335)(v2376);
      OUTLINED_FUNCTION_75_19();
      LOBYTE(v4252) = 11;
      sub_1E3C2FC98();
      LOBYTE(v4242[0]) = v4249[0];
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_29_67();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_57_26();
      v2377 = sub_1E3C3DE00();
      LOBYTE(v4221[0]) = v4230[0];
      v2385 = OUTLINED_FUNCTION_0_222(v2377, v2378, v2379, v2380, v2381, v2382, v2383, v2384, v3047, v3172, v3298, v3425, v3550, v3675, v3801, v3927, v4058, v4185, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      sub_1E3C2FCB8(v2385, v2386, v2387, v2388, v2389, v2390, &qword_1F5D54AF8, v2391);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2400 = OUTLINED_FUNCTION_45_48(v2392, v2393, v2394, v2395, v2396, v2397, v2398, v2399, v3048, v3173, v3299, v3426, v3551, v3676, v3802, v3928, v4059, v4186, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v2401(v2400, 54);

      (v2335)(v2402);
      OUTLINED_FUNCTION_133_6();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v2403, v2404, v2405, v2406);
      sub_1E3952C88();
      OUTLINED_FUNCTION_6_145(v2407, v2408, v2409, v2410);
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_55(v2411, v2412, v2413, v2414);
      sub_1E3952C88();
      OUTLINED_FUNCTION_16_93(v2415, v2416, v2417, v2418);
      sub_1E3952C88();
      OUTLINED_FUNCTION_4_167(v2419, v2420, v2421, v2422);
      OUTLINED_FUNCTION_1_199(v2423, v2424, v2425, v2426, v2427, v2428, v2429, v2430, v3049, v3174, v3300, v3427, v3552, v3677, v3803, v3929, v4060, v4187, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      OUTLINED_FUNCTION_77_18();
      sub_1E3C2FCB8(v2431, v2432, v2433, v2434, v2435, v2436, v2301, v2437);
      OUTLINED_FUNCTION_48_35(v2438, v2439, v2440, v2441, v2442, v2443, v2444, v2445, v3050, v3175, v3301, v3428, v3553, v3678, v3804, v3930, v4061, v4188, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2454 = OUTLINED_FUNCTION_24_74(v2446, v2447, v2448, v2449, v2450, v2451, v2452, v2453, v3051, v3176, v3302, v3429, v3554, v3679, v3805, v3931, v4062, v4189, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v2455(v2454);

      OUTLINED_FUNCTION_9_2();
      v2457 = *(v2456 + 1848);
      v2457();
      OUTLINED_FUNCTION_2_1();
      v2458 = OUTLINED_FUNCTION_15_8();
      v2459(v2458);

      (v2457)(v2460);
      OUTLINED_FUNCTION_2_1();
      v2461 = OUTLINED_FUNCTION_10_7();
      v2462(v2461);

      (v2457)(v2463);
      OUTLINED_FUNCTION_2_1();
      v2464 = OUTLINED_FUNCTION_10_7();
      v2465(v2464);

      (v2457)(v2466);
      OUTLINED_FUNCTION_2_1();
      (*(v2467 + 1696))(14);

      (v2457)(v2468);
      OUTLINED_FUNCTION_2_1();
      (*(v2469 + 1792))(4);

      (v2457)(v2470);
      OUTLINED_FUNCTION_15_11();
      v2471 = *v4063;
      v2473 = *(*v2472 + 680);
      v2474 = *v4063;
      v2473(v2471);

      (v2457)(v2475);
      OUTLINED_FUNCTION_84_0();
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v2476, v2477, v2478, v2479);
      sub_1E3952C88();
      OUTLINED_FUNCTION_6_145(v2480, v2481, v2482, v2483);
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_55(v2484, v2485, v2486, v2487);
      sub_1E3952C88();
      OUTLINED_FUNCTION_16_93(v2488, v2489, v2490, v2491);
      sub_1E3952C88();
      OUTLINED_FUNCTION_4_167(v2492, v2493, v2494, v2495);
      OUTLINED_FUNCTION_1_199(v2496, v2497, v2498, v2499, v2500, v2501, v2502, v2503, v3052, v3177, v3303, v3430, v3555, v3680, v3806, v3932, v4063, v4190, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      OUTLINED_FUNCTION_77_18();
      sub_1E3C2FCB8(v2504, v2505, v2506, v2507, v2508, v2509, v2301, v2510);
      OUTLINED_FUNCTION_48_35(v2511, v2512, v2513, v2514, v2515, v2516, v2517, v2518, v3053, v3178, v3304, v3431, v3556, v3681, v3807, v3933, v4064, v4191, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1215 = OUTLINED_FUNCTION_24_74(v2519, v2520, v2521, v2522, v2523, v2524, v2525, v2526, v3054, v3179, v3305, v3432, v3557, v3682, v3808, v3934, v4065, v4192, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      goto LABEL_35;
    case 2u:
      OUTLINED_FUNCTION_111();
      v981 += 240;
      v982 = *v981;
      v983 = (*v981)();
      sub_1E3D308B8();

      (v982)(v984);
      OUTLINED_FUNCTION_98_13();
      OUTLINED_FUNCTION_66_24(v985, v986);
      *&v4256 = v987;
      *(&v4256 + 1) = v988;
      v4257 = 0;
      (*(*v2 + 560))(&v4255);

      OUTLINED_FUNCTION_9_2();
      v990 = (v989 + 1800);
      v991 = *(v989 + 1800);
      v991();
      OUTLINED_FUNCTION_2_1();
      (*(v992 + 1936))(2);

      (v991)(v993);
      OUTLINED_FUNCTION_2_1();
      (*(v994 + 1864))(1);

      (v991)(v995);
      OUTLINED_FUNCTION_2_1();
      v996 = OUTLINED_FUNCTION_15_8();
      v997(v996);

      (v991)(v998);
      OUTLINED_FUNCTION_2_1();
      v999 = OUTLINED_FUNCTION_10_7();
      v1000(v999);

      (v991)(v1001);
      OUTLINED_FUNCTION_2_1();
      v1002 = OUTLINED_FUNCTION_10_7();
      v1003(v1002);

      v1005 = (v991)(v1004);
      v3985 = sub_1E3E5FDEC();
      OUTLINED_FUNCTION_7_16();
      v1006 = *(*v1005 + 680);
      v1007 = v983;
      v1006(v983);

      (v991)(v1008);
      OUTLINED_FUNCTION_92_10();
      LOBYTE(v4252) = 17;
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_51_35(v4249[0]);
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_22_70();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_57_26();
      v1009 = sub_1E3C3DE00();
      LOBYTE(v4221[0]) = v4230[0];
      v1017 = OUTLINED_FUNCTION_3_168(v1009, v1010, v1011, v1012, v1013, v1014, v1015, v1016, v2941, v3068, v3193, v3320, v3446, v3572, v3696, v3824, v3985, v4080, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      OUTLINED_FUNCTION_111_8(v1017, v1018, v1019, v1020, v1021, v2976, v3103, v3227, v3354, v3480, v3606, v3732, v3858, v3986, v4114, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1030 = OUTLINED_FUNCTION_21_78(v1022, v1023, v1024, v1025, v1026, v1027, v1028, v1029, v2977, v3104, v3228, v3355, v3481, v3607, v3733, v3859, v3987, v4115, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v1031(v1030);

      (v991)(v1032);
      OUTLINED_FUNCTION_2_1();
      (*(v1033 + 1792))(10);

      (v991)(v1034);
      OUTLINED_FUNCTION_125_9();
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v1035, v1036, v1037, v1038);
      type metadata accessor for UIEdgeInsets();
      v746 = v1039;
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_25_72();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_55_5();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_14_7();
      v1040 = OUTLINED_FUNCTION_86_10();
      LOBYTE(v4224) = v4233;
      v1048 = OUTLINED_FUNCTION_0_222(v1040, v1041, v1042, v1043, v1044, v1045, v1046, v1047, v2978, v3105, v3229, v3356, v3482, v3608, v3734, v3860, v3988, v4116, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4230[0], v4230[1], v4231, v4232, v4224, v4225, __dst[0]);
      sub_1E3C2FCB8(v1048, v1049, v1050, v1051, v1052, v1053, v746, v1054);
      OUTLINED_FUNCTION_48_35(v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v2979, v3106, v3230, v3357, v3483, v3609, v3735, v3861, v3989, v4117, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1071 = OUTLINED_FUNCTION_13_119(v1063, v1064, v1065, v1066, v1067, v1068, v1069, v1070, v2980, v3107, v3231, v3358, v3484, v3610, v3736, v3862, v3990, v4118, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v1072(v1071);

      OUTLINED_FUNCTION_9_2();
      v1074 = *(v1073 + 1824);
      v1074();
      OUTLINED_FUNCTION_2_1();
      v1075 = OUTLINED_FUNCTION_15_8();
      v1076(v1075);

      (v1074)(v1077);
      OUTLINED_FUNCTION_2_1();
      v1078 = OUTLINED_FUNCTION_10_7();
      v1079(v1078);

      (v1074)(v1080);
      OUTLINED_FUNCTION_2_1();
      v1081 = OUTLINED_FUNCTION_10_7();
      v1082(v1081);

      v1084 = (v1074)(v1083);
      sub_1E3E5FD88();
      OUTLINED_FUNCTION_106_15();
      v1085 = *(*v1084 + 680);
      v1086 = v990;
      v1085(v990);

      (v1074)(v1087);
      OUTLINED_FUNCTION_91_13();
      LOBYTE(v4252) = 17;
      LOBYTE(v4249[0]) = 17;
      OUTLINED_FUNCTION_51_35(3);
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_22_70();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_2_167();
      sub_1E3C2FCB8(v1088, v1089, v1090, v1091, v1092, v1093, &qword_1F5D549D8, v1094);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1103 = OUTLINED_FUNCTION_21_78(v1095, v1096, v1097, v1098, v1099, v1100, v1101, v1102, v2981, v3108, v3232, v3359, v3485, v3611, v3737, v3863, v3991, v4119, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v1104(v1103);

      (v1074)(v1105);
      OUTLINED_FUNCTION_2_1();
      (*(v1106 + 1792))(4);

      (v1074)(v1107);
      OUTLINED_FUNCTION_108_11();
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v1108, v1109, v1110, v1111);
      sub_1E3952C88();
      OUTLINED_FUNCTION_6_145(v1112, v1113, v1114, v1115);
      OUTLINED_FUNCTION_103_10();
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_16_107();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_15_110();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_31_53();
      v1124 = OUTLINED_FUNCTION_8_125(v1116, v1117, v1118, v1119, v1120, v1121, v1122, v1123, v2982, v3109, v3233, v3360, v3486, v3612, v3738, v3864, v3992, v4120, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      sub_1E3C2FCB8(v1124, v1125, v1126, v1127, &v4252, v4249, v746, v1128);
      OUTLINED_FUNCTION_48_35(v1129, v1130, v1131, v1132, v1133, v1134, v1135, v1136, v2983, v3110, v3234, v3361, v3487, v3613, v3739, v3865, v3993, v4121, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1145 = OUTLINED_FUNCTION_13_119(v1137, v1138, v1139, v1140, v1141, v1142, v1143, v1144, v2984, v3111, v3235, v3362, v3488, v3614, v3740, v3866, v3994, v4122, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v1146(v1145);

      OUTLINED_FUNCTION_9_2();
      v1148 = *(v1147 + 1848);
      v1148();
      OUTLINED_FUNCTION_2_1();
      v1149 = OUTLINED_FUNCTION_15_8();
      v1150(v1149);

      (v1148)(v1151);
      OUTLINED_FUNCTION_2_1();
      v1152 = OUTLINED_FUNCTION_10_7();
      v1153(v1152);

      (v1148)(v1154);
      OUTLINED_FUNCTION_2_1();
      v1155 = OUTLINED_FUNCTION_10_7();
      v1156(v1155);

      (v1148)(v1157);
      OUTLINED_FUNCTION_15_11();
      v1158 = *v3995;
      v1160 = *(*v1159 + 680);
      v1161 = *v3995;
      v1160(v1158);

      (v1148)(v1162);
      OUTLINED_FUNCTION_85_15();
      OUTLINED_FUNCTION_71_26();
      OUTLINED_FUNCTION_51_35(14);
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_22_70();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_2_167();
      sub_1E3C2FCB8(v1163, v1164, v1165, v1166, v1167, v1168, &qword_1F5D549D8, v1169);
      OUTLINED_FUNCTION_36_48();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1178 = OUTLINED_FUNCTION_21_78(v1170, v1171, v1172, v1173, v1174, v1175, v1176, v1177, v2985, v3112, v3236, v3363, v3489, v3615, v3741, v3867, v3995, v4123, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v1179(v1178);

      (v1148)(v1180);
      OUTLINED_FUNCTION_2_1();
      (*(v1181 + 1792))(4);

      (v1148)(v1182);
      OUTLINED_FUNCTION_108_11();
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v1183, v1184, v1185, v1186);
      sub_1E3952C88();
      OUTLINED_FUNCTION_6_145(v1187, v1188, v1189, v1190);
      OUTLINED_FUNCTION_103_10();
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_16_107();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_15_110();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_31_53();
      v914 = OUTLINED_FUNCTION_8_125(v1191, v1192, v1193, v1194, v1195, v1196, v1197, v1198, v2986, v3113, v3237, v3364, v3490, v3616, v3742, v3868, v3996, v4124, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v919 = &v4252;
      v920 = v4249;
      goto LABEL_27;
    case 3u:
    case 0x14u:
      sub_1E3D2E8D4();
      goto LABEL_69;
    case 4u:
      OUTLINED_FUNCTION_111();
      v1430 += 240;
      v1431 = *v1430;
      (*v1430)();
      sub_1E3D308B8();

      (v1431)(v1432);
      OUTLINED_FUNCTION_115_7();
      OUTLINED_FUNCTION_66_24(v1433, v1434);
      *&v4256 = v1435;
      *(&v4256 + 1) = v1436;
      v4257 = 0;
      (*(*v2 + 560))(&v4255);

      OUTLINED_FUNCTION_9_2();
      v1438 = (v1437 + 1824);
      v1439 = *(v1437 + 1824);
      v1439();
      OUTLINED_FUNCTION_2_1();
      v1440 = OUTLINED_FUNCTION_15_8();
      v1441(v1440);

      (v1439)(v1442);
      OUTLINED_FUNCTION_2_1();
      v1443 = OUTLINED_FUNCTION_15_8();
      v1444(v1443);

      (v1439)(v1445);
      OUTLINED_FUNCTION_2_1();
      v1446 = OUTLINED_FUNCTION_10_7();
      v1447(v1446);

      (v1439)(v1448);
      OUTLINED_FUNCTION_75_19();
      LOBYTE(v4252) = 11;
      OUTLINED_FUNCTION_110_10();
      LOBYTE(v4242[0]) = v4249[0];
      OUTLINED_FUNCTION_62_27();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_29_67();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_57_26();
      v1449 = OUTLINED_FUNCTION_86_10();
      LOBYTE(v4221[0]) = v4230[0];
      v1457 = OUTLINED_FUNCTION_0_222(v1449, v1450, v1451, v1452, v1453, v1454, v1455, v1456, v2941, v3068, v3193, v3320, v3446, v3572, v3696, v3824, v3948, v4080, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      sub_1E3C2FCB8(v1457, v1458, v1459, v1460, v1461, v1462, &qword_1F5D54AF8, v1463);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1472 = OUTLINED_FUNCTION_45_48(v1464, v1465, v1466, v1467, v1468, v1469, v1470, v1471, v2998, v3125, v3249, v3376, v3502, v3628, v3754, v3880, v4008, v4136, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v1473(v1472, 54);

      (v1439)(v1474);
      OUTLINED_FUNCTION_85_15();
      __dst[0] = v1475;
      LOBYTE(v4252) = 14;
      LOBYTE(v4249[0]) = 3;
      LOBYTE(v4242[0]) = 14;
      OUTLINED_FUNCTION_65_22();
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_22_70();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_12_110();
      OUTLINED_FUNCTION_97_13(v1476, v1477);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1486 = OUTLINED_FUNCTION_21_78(v1478, v1479, v1480, v1481, v1482, v1483, v1484, v1485, v2999, v3126, v3250, v3377, v3503, v3629, v3755, v3881, v4009, v4137, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v1487(v1486);

      (v1439)(v1488);
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v1489, v1490, v1491, v1492);
      sub_1E3952C88();
      OUTLINED_FUNCTION_6_145(v1493, v1494, v1495, v1496);
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_55(v1497, v1498, v1499, v1500);
      sub_1E3952C88();
      OUTLINED_FUNCTION_16_93(v1501, v1502, v1503, v1504);
      sub_1E3952C88();
      OUTLINED_FUNCTION_4_167(v1505, v1506, v1507, v1508);
      type metadata accessor for UIEdgeInsets();
      v1510 = v1509;
      OUTLINED_FUNCTION_1_199(v1509, v1511, v1512, v1513, v1514, v1515, v1516, v1517, v3000, v3127, v3251, v3378, v3504, v3630, v3756, v3882, v4010, v4138, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      OUTLINED_FUNCTION_77_18();
      sub_1E3C2FCB8(v1518, v1519, v1520, v1521, v1522, v1523, v1510, v1524);
      OUTLINED_FUNCTION_48_35(v1525, v1526, v1527, v1528, v1529, v1530, v1531, v1532, v3001, v3128, v3252, v3379, v3505, v3631, v3757, v3883, v4011, v4139, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1541 = OUTLINED_FUNCTION_24_74(v1533, v1534, v1535, v1536, v1537, v1538, v1539, v1540, v3002, v3129, v3253, v3380, v3506, v3632, v3758, v3884, v4012, v4140, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v1542(v1541);

      v1544 = (v1439)(v1543);
      sub_1E3E5FD88();
      OUTLINED_FUNCTION_106_15();
      v1545 = *(*v1544 + 680);
      v1546 = v1438;
      v1545(v1438);

      OUTLINED_FUNCTION_9_2();
      v1548 = *(v1547 + 1848);
      v1548();
      OUTLINED_FUNCTION_2_1();
      v1549 = OUTLINED_FUNCTION_133();
      v1550(v1549);

      (v1548)(v1551);
      OUTLINED_FUNCTION_2_1();
      v1552 = OUTLINED_FUNCTION_133();
      v1553(v1552);

      (v1548)(v1554);
      OUTLINED_FUNCTION_2_1();
      v1555 = OUTLINED_FUNCTION_10_7();
      v1556(v1555);

      (v1548)(v1557);
      OUTLINED_FUNCTION_75_19();
      LOBYTE(v4252) = 11;
      OUTLINED_FUNCTION_110_10();
      LOBYTE(v4242[0]) = v4249[0];
      OUTLINED_FUNCTION_62_27();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_29_67();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_57_26();
      v1558 = OUTLINED_FUNCTION_86_10();
      LOBYTE(v4221[0]) = v4230[0];
      v1566 = OUTLINED_FUNCTION_0_222(v1558, v1559, v1560, v1561, v1562, v1563, v1564, v1565, v3003, v3130, v3254, v3381, v3507, v3633, v3759, v3885, v4013, v4141, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      sub_1E3C2FCB8(v1566, v1567, v1568, v1569, v1570, v1571, &qword_1F5D54AF8, v1572);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1581 = OUTLINED_FUNCTION_45_48(v1573, v1574, v1575, v1576, v1577, v1578, v1579, v1580, v3004, v3131, v3255, v3382, v3508, v3634, v3760, v3886, v4014, v4142, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v1582(v1581, 54);

      (v1548)(v1583);
      __dst[0] = 21;
      LOBYTE(v4252) = 22;
      LOBYTE(v4249[0]) = 14;
      OUTLINED_FUNCTION_51_35(17);
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_22_70();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_12_110();
      OUTLINED_FUNCTION_97_13(v1584, v1585);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1594 = OUTLINED_FUNCTION_21_78(v1586, v1587, v1588, v1589, v1590, v1591, v1592, v1593, v3005, v3132, v3256, v3383, v3509, v3635, v3761, v3887, v4015, v4143, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v1595(v1594);

      (v1548)(v1596);
      OUTLINED_FUNCTION_84_0();
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v1597, v1598, v1599, v1600);
      sub_1E3952C88();
      OUTLINED_FUNCTION_6_145(v1601, v1602, v1603, v1604);
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_55(v1605, v1606, v1607, v1608);
      sub_1E3952C88();
      v4239[0] = v1609;
      v4239[1] = v1610;
      v4240[0] = v1611;
      v4240[1] = v1612;
      LOBYTE(v4241) = 0;
      v1613 = *(MEMORY[0x1E69DDCE0] + 16);
      *v4236 = *MEMORY[0x1E69DDCE0];
      v4237 = v1613;
      LOBYTE(v4238) = 0;
      OUTLINED_FUNCTION_1_199(v1614, v1615, v1616, v1617, v1618, v1619, v1620, v1621, v3006, v3133, v3257, v3384, v3510, v3636, v3762, v3888, v4016, v4144, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      OUTLINED_FUNCTION_77_18();
      sub_1E3C2FCB8(v1622, v1623, v1624, v1625, v1626, v1627, v1510, v1628);
      OUTLINED_FUNCTION_48_35(v1629, v1630, v1631, v1632, v1633, v1634, v1635, v1636, v3007, v3134, v3258, v3385, v3511, v3637, v3763, v3889, v4017, v4145, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1645 = OUTLINED_FUNCTION_24_74(v1637, v1638, v1639, v1640, v1641, v1642, v1643, v1644, v3008, v3135, v3259, v3386, v3512, v3638, v3764, v3890, v4018, v4146, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v1646(v1645);

      v1648 = (v1548)(v1647);
      sub_1E3E5FDEC();
      OUTLINED_FUNCTION_7_16();
      v1649 = *(*v1648 + 680);
      v1650 = &qword_1F5D54AF8;
      v1649(&qword_1F5D54AF8);
      goto LABEL_36;
    case 5u:
      OUTLINED_FUNCTION_111();
      v693 += 240;
      v694 = *v693;
      v695 = (*v693)();
      sub_1E3D308B8();

      (v694)(v696);
      OUTLINED_FUNCTION_98_13();
      OUTLINED_FUNCTION_66_24(v697, v698);
      *&v4256 = v699;
      *(&v4256 + 1) = v700;
      v4257 = 0;
      (*(*v2 + 560))(&v4255);

      OUTLINED_FUNCTION_9_2();
      v702 = (v701 + 1800);
      v703 = *(v701 + 1800);
      v703();
      OUTLINED_FUNCTION_2_1();
      (*(v704 + 1936))(2);

      (v703)(v705);
      OUTLINED_FUNCTION_2_1();
      (*(v706 + 1864))(1);

      (v703)(v707);
      OUTLINED_FUNCTION_2_1();
      v708 = OUTLINED_FUNCTION_15_8();
      v709(v708);

      (v703)(v710);
      OUTLINED_FUNCTION_2_1();
      v711 = OUTLINED_FUNCTION_10_7();
      v712(v711);

      (v703)(v713);
      OUTLINED_FUNCTION_2_1();
      v714 = OUTLINED_FUNCTION_10_7();
      v715(v714);

      v717 = (v703)(v716);
      v3971 = sub_1E3E5FDEC();
      OUTLINED_FUNCTION_7_16();
      v718 = *(*v717 + 680);
      v719 = v695;
      v718(v695);

      (v703)(v720);
      OUTLINED_FUNCTION_92_10();
      LOBYTE(v4252) = 21;
      LOBYTE(v4249[0]) = 21;
      LOBYTE(v4242[0]) = 17;
      OUTLINED_FUNCTION_65_22();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_22_70();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_2_167();
      sub_1E3C2FCB8(v721, v722, v723, v724, v725, v726, &qword_1F5D549D8, v727);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v736 = OUTLINED_FUNCTION_21_78(v728, v729, v730, v731, v732, v733, v734, v735, v2941, v3068, v3193, v3320, v3446, v3572, v3696, v3824, v3971, v4080, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v737(v736);

      (v703)(v738);
      OUTLINED_FUNCTION_2_1();
      (*(v739 + 1792))(10);

      (v703)(v740);
      OUTLINED_FUNCTION_125_9();
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v741, v742, v743, v744);
      type metadata accessor for UIEdgeInsets();
      v746 = v745;
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_25_72();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_55_5();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_14_7();
      v747 = OUTLINED_FUNCTION_86_10();
      LOBYTE(v4224) = v4233;
      v755 = OUTLINED_FUNCTION_0_222(v747, v748, v749, v750, v751, v752, v753, v754, v2963, v3090, v3214, v3341, v3467, v3593, v3719, v3845, v3972, v4101, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4230[0], v4230[1], v4231, v4232, v4224, v4225, __dst[0]);
      sub_1E3C2FCB8(v755, v756, v757, v758, v759, v760, v746, v761);
      OUTLINED_FUNCTION_48_35(v762, v763, v764, v765, v766, v767, v768, v769, v2964, v3091, v3215, v3342, v3468, v3594, v3720, v3846, v3973, v4102, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v778 = OUTLINED_FUNCTION_13_119(v770, v771, v772, v773, v774, v775, v776, v777, v2965, v3092, v3216, v3343, v3469, v3595, v3721, v3847, v3974, v4103, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v779(v778);

      OUTLINED_FUNCTION_9_2();
      v781 = *(v780 + 1824);
      v781();
      OUTLINED_FUNCTION_2_1();
      v782 = OUTLINED_FUNCTION_15_8();
      v783(v782);

      (v781)(v784);
      OUTLINED_FUNCTION_2_1();
      v785 = OUTLINED_FUNCTION_10_7();
      v786(v785);

      (v781)(v787);
      OUTLINED_FUNCTION_2_1();
      v788 = OUTLINED_FUNCTION_10_7();
      v789(v788);

      v791 = (v781)(v790);
      sub_1E3E5FD88();
      OUTLINED_FUNCTION_106_15();
      v792 = *(*v791 + 680);
      v793 = v702;
      v792(v702);

      (v781)(v794);
      OUTLINED_FUNCTION_91_13();
      LOBYTE(v4252) = 17;
      LOBYTE(v4249[0]) = 17;
      OUTLINED_FUNCTION_51_35(3);
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_22_70();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_2_167();
      sub_1E3C2FCB8(v795, v796, v797, v798, v799, v800, &qword_1F5D549D8, v801);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v810 = OUTLINED_FUNCTION_21_78(v802, v803, v804, v805, v806, v807, v808, v809, v2966, v3093, v3217, v3344, v3470, v3596, v3722, v3848, v3975, v4104, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v811(v810);

      (v781)(v812);
      OUTLINED_FUNCTION_2_1();
      (*(v813 + 1792))(4);

      (v781)(v814);
      OUTLINED_FUNCTION_108_11();
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v815, v816, v817, v818);
      sub_1E3952C88();
      OUTLINED_FUNCTION_6_145(v819, v820, v821, v822);
      OUTLINED_FUNCTION_103_10();
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_16_107();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_15_110();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_31_53();
      v831 = OUTLINED_FUNCTION_8_125(v823, v824, v825, v826, v827, v828, v829, v830, v2967, v3094, v3218, v3345, v3471, v3597, v3723, v3849, v3976, v4105, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      sub_1E3C2FCB8(v831, v832, v833, v834, &v4252, v4249, v746, v835);
      OUTLINED_FUNCTION_48_35(v836, v837, v838, v839, v840, v841, v842, v843, v2968, v3095, v3219, v3346, v3472, v3598, v3724, v3850, v3977, v4106, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v852 = OUTLINED_FUNCTION_13_119(v844, v845, v846, v847, v848, v849, v850, v851, v2969, v3096, v3220, v3347, v3473, v3599, v3725, v3851, v3978, v4107, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v853(v852);

      OUTLINED_FUNCTION_9_2();
      v855 = *(v854 + 1848);
      v855();
      OUTLINED_FUNCTION_2_1();
      v856 = OUTLINED_FUNCTION_15_8();
      v857(v856);

      (v855)(v858);
      OUTLINED_FUNCTION_2_1();
      v859 = OUTLINED_FUNCTION_10_7();
      v860(v859);

      (v855)(v861);
      OUTLINED_FUNCTION_2_1();
      v862 = OUTLINED_FUNCTION_10_7();
      v863(v862);

      (v855)(v864);
      OUTLINED_FUNCTION_15_11();
      v865 = *v3979;
      v867 = *(*v866 + 680);
      v868 = *v3979;
      v867(v865);

      (v855)(v869);
      OUTLINED_FUNCTION_85_15();
      OUTLINED_FUNCTION_71_26();
      OUTLINED_FUNCTION_51_35(14);
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_22_70();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_2_167();
      sub_1E3C2FCB8(v870, v871, v872, v873, v874, v875, &qword_1F5D549D8, v876);
      OUTLINED_FUNCTION_36_48();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v885 = OUTLINED_FUNCTION_21_78(v877, v878, v879, v880, v881, v882, v883, v884, v2970, v3097, v3221, v3348, v3474, v3600, v3726, v3852, v3979, v4108, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v886(v885);

      (v855)(v887);
      OUTLINED_FUNCTION_2_1();
      (*(v888 + 1792))(4);

      (v855)(v889);
      OUTLINED_FUNCTION_132_9();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v890, v891, v892, v893);
      sub_1E3952C88();
      OUTLINED_FUNCTION_6_145(v894, v895, v896, v897);
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_55(v898, v899, v900, v901);
      sub_1E3952C88();
      OUTLINED_FUNCTION_16_93(v902, v903, v904, v905);
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_20_77();
      v914 = OUTLINED_FUNCTION_4_174(v906, v907, v908, v909, v910, v911, v912, v913, v2971, v3098, v3222, v3349, v3475, v3601, v3727, v3853, v3980, v4109, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v918 = v4235;
      v919 = v4242;
      v920 = v4239;
LABEL_27:
      sub_1E3C2FCB8(v914, v915, v916, v918, v919, v920, v746, v917);
      OUTLINED_FUNCTION_48_35(v1199, v1200, v1201, v1202, v1203, v1204, v1205, v1206, v2972, v3099, v3223, v3350, v3476, v3602, v3728, v3854, v3981, v4110, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1215 = OUTLINED_FUNCTION_13_119(v1207, v1208, v1209, v1210, v1211, v1212, v1213, v1214, v2987, v3114, v3238, v3365, v3491, v3617, v3743, v3869, v3997, v4125, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
LABEL_35:
      v1216(v1215);
LABEL_36:

      goto LABEL_37;
    case 6u:
    case 0x13u:
      sub_1E3D2F414();
      goto LABEL_69;
    case 7u:
      OUTLINED_FUNCTION_111();
      v921 += 240;
      v922 = *v921;
      (*v921)();
      sub_1E3D308B8();

      (v922)(v923);
      OUTLINED_FUNCTION_98_13();
      OUTLINED_FUNCTION_66_24(v924, v925);
      *&v4256 = v926;
      *(&v4256 + 1) = v927;
      v4257 = 0;
      (*(*v2 + 560))(&v4255);

      OUTLINED_FUNCTION_9_2();
      v929 = *(v928 + 1824);
      v929();
      OUTLINED_FUNCTION_2_1();
      v930 = OUTLINED_FUNCTION_15_8();
      v931(v930);

      (v929)(v932);
      OUTLINED_FUNCTION_41_47();
      v933 = MEMORY[0x1E69E6810];
      OUTLINED_FUNCTION_110_10();
      OUTLINED_FUNCTION_19_93();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_18_87();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_17_102();
      v934 = sub_1E3C3DE00();
      LOBYTE(v4221[1]) = v4230[1];
      v942 = OUTLINED_FUNCTION_0_222(v934, v935, v936, v937, v938, v939, v940, v941, v2941, v3068, v3193, v3320, v3446, v3572, v3696, v3824, v3948, v4080, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4230[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      sub_1E3C2FCB8(v942, v943, v944, v945, v946, v947, v933, v948);
      v957 = OUTLINED_FUNCTION_49_43(v949, v950, v951, v952, v953, v954, v955, v956, v2973, v3100, v3224, v3351, v3477, v3603, v3729, v3855, v3982, v4111, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      memcpy(v957, v958, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v967 = OUTLINED_FUNCTION_37_53(v959, v960, v961, v962, v963, v964, v965, v966, v2974, v3101, v3225, v3352, v3478, v3604, v3730, v3856, v3983, v4112, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v968(v967);

      (v929)(v969);
      OUTLINED_FUNCTION_2_1();
      v970 = OUTLINED_FUNCTION_10_7();
      v971(v970);

      (v929)(v972);
      OUTLINED_FUNCTION_2_1();
      (*(v973 + 1696))(15);

      (v929)(v974);
      OUTLINED_FUNCTION_2_1();
      (*(v975 + 1984))(5);

      v977 = (v929)(v976);
      sub_1E3E5FD88();
      OUTLINED_FUNCTION_7_16();
      v978 = *(*v977 + 680);
      v979 = v933;
      v978(v933);

      v980 = objc_opt_self();
      [v980 isSUIEnabled];
      OUTLINED_FUNCTION_116_9();
      v929();
      sub_1E3952C88();
      *&v4252 = v2660;
      *(&v4252 + 1) = v2661;
      *&v4253 = v2662;
      *(&v4253 + 1) = v2663;
      v4254 = 0;
      OUTLINED_FUNCTION_8();
      (*(v2664 + 160))();

      OUTLINED_FUNCTION_9_2();
      v2666 = *(v2665 + 1848);
      v2666();
      OUTLINED_FUNCTION_2_1();
      v2667 = OUTLINED_FUNCTION_15_8();
      v2668(v2667);

      (v2666)(v2669);
      *__dst = 1;
      OUTLINED_FUNCTION_90_15();
      v2670 = MEMORY[0x1E69E6810];
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_59_27();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_52_32();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_58_30();
      v2671 = sub_1E3C3DE00();
      LOBYTE(v4216[1]) = v4221[1];
      OUTLINED_FUNCTION_8_125(v2671, v2672, v2673, v2674, v2675, v2676, v2677, v2678, v2975, v3102, v3226, v3353, v3479, v3605, v3731, v3857, v3984, v4113, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4221[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      OUTLINED_FUNCTION_107_9();
      sub_1E3C2FCB8(v2679, v2680, v2681, v2682, v2683, v2684, v2670, v2685);
      v2694 = OUTLINED_FUNCTION_49_43(v2686, v2687, v2688, v2689, v2690, v2691, v2692, v2693, v3057, v3182, v3309, v3435, v3561, v3685, v3812, v3937, v4069, v4195, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      memcpy(v2694, v2695, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2704 = OUTLINED_FUNCTION_39_47(v2696, v2697, v2698, v2699, v2700, v2701, v2702, v2703, v3058, v3183, v3310, v3436, v3562, v3686, v3813, v3938, v4070, v4196, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v2705(v2704);

      (v2666)(v2706);
      OUTLINED_FUNCTION_2_1();
      v2707 = OUTLINED_FUNCTION_10_7();
      v2708(v2707);

      (v2666)(v2709);
      OUTLINED_FUNCTION_2_1();
      (*(v2710 + 1696))(19);

      (v2666)(v2711);
      OUTLINED_FUNCTION_2_1();
      (*(v2712 + 1984))(5);

      v2714 = (v2666)(v2713);
      sub_1E3E5FDEC();
      OUTLINED_FUNCTION_81_12();
      v2715 = *(*v2714 + 680);
      v2716 = v2670;
      v2715(v2670);

      if ([v980 isSUIEnabled])
      {
        goto LABEL_69;
      }

      v2666();
      OUTLINED_FUNCTION_132_9();
      OUTLINED_FUNCTION_32_61(v2717, v2718, v2719, v2720);
      (*(v2721 + 160))(v4245);
      goto LABEL_68;
    case 8u:
    case 9u:
    case 0xCu:
      v28 = [objc_opt_self() clearColor];
      OUTLINED_FUNCTION_9_2();
      (*(v29 + 752))();
      OUTLINED_FUNCTION_9_2();
      v31 = *(v30 + 1920);
      v31();
      sub_1E3D308B8();

      (v31)(v32);
      OUTLINED_FUNCTION_2_1();
      (*(v33 + 360))(0, 1);

      (v31)(v34);
      OUTLINED_FUNCTION_98_13();
      OUTLINED_FUNCTION_66_24(v35, v36);
      *&v4256 = v37;
      *(&v4256 + 1) = v38;
      v4257 = 0;
      (*(*v2 + 560))(&v4255);

      OUTLINED_FUNCTION_9_2();
      v40 = *(v39 + 1824);
      v40();
      OUTLINED_FUNCTION_2_1();
      v41 = OUTLINED_FUNCTION_15_8();
      v42(v41);

      (v40)(v43);
      OUTLINED_FUNCTION_2_1();
      (*(v44 + 2080))(5, 0);

      (v40)(v45);
      OUTLINED_FUNCTION_2_1();
      v46 = OUTLINED_FUNCTION_10_7();
      v47(v46);

      v49 = (v40)(v48);
      OUTLINED_FUNCTION_9_2();
      v3949 = v50 + 2088;
      v3697 = *(v50 + 2088);
      v3697();
      OUTLINED_FUNCTION_80_15();
      if (v55)
      {
        goto LABEL_4;
      }

      v53 = sub_1E3D241D0(v51);
      v55 = v53 == 0x7055726579616C70 && v54 == 0xEC0000007478654ELL;
      if (v55)
      {
      }

      else
      {
        v56 = OUTLINED_FUNCTION_128_8(v53);

        if ((v56 & 1) == 0)
        {
LABEL_4:
          v52 = 17;
          goto LABEL_40;
        }
      }

      v52 = 19;
LABEL_40:
      (*(*v49 + 1696))(v52);

      (v40)(v2529);
      OUTLINED_FUNCTION_2_1();
      (*(v2530 + 2008))(1);

      v2532 = (v40)(v2531);
      sub_1E3E5FD88();
      OUTLINED_FUNCTION_121_10();
      v2533 = *(*v2532 + 680);
      v2534 = v49;
      v2533(v49);

      v2535 = objc_opt_self();
      if ([v2535 isSUIEnabled])
      {
        v40();
        OUTLINED_FUNCTION_133_6();
        goto LABEL_73;
      }

      v3697();
      OUTLINED_FUNCTION_80_15();
      if (v55)
      {
        goto LABEL_44;
      }

      v2541 = sub_1E3D241D0(v2540);
      if (v2541 == 0x7055726579616C70 && v2542 == 0xEC0000007478654ELL)
      {
      }

      else
      {
        v2544 = OUTLINED_FUNCTION_128_8(v2541);

        if ((v2544 & 1) == 0)
        {
LABEL_44:
          v40();
          OUTLINED_FUNCTION_125_9();
          goto LABEL_72;
        }
      }

      (v40)(v2545);
      OUTLINED_FUNCTION_108_11();
LABEL_72:
      sub_1E3952C58();
LABEL_73:
      OUTLINED_FUNCTION_28_58(v2536, v2537, v2538, v2539);
      OUTLINED_FUNCTION_8();
      (*(v2865 + 160))(&v4252);

      OUTLINED_FUNCTION_111();
      v2866 += 231;
      v2867 = *v2866;
      (*v2866)();
      OUTLINED_FUNCTION_2_1();
      v2868 = OUTLINED_FUNCTION_15_8();
      v2869(v2868);

      (v2867)(v2870);
      *__dst = 1;
      OUTLINED_FUNCTION_90_15();
      v2871 = MEMORY[0x1E69E6810];
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_59_27();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_52_32();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_58_30();
      v2872 = sub_1E3C3DE00();
      LOBYTE(v4216[1]) = v4221[1];
      OUTLINED_FUNCTION_8_125(v2872, v2873, v2874, v2875, v2876, v2877, v2878, v2879, v2941, v3068, v3193, v3320, v3446, v3572, v3697, v3824, v3949, v4080, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4221[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      OUTLINED_FUNCTION_107_9();
      sub_1E3C2FCB8(v2880, v2881, v2882, v2883, v2884, v2885, v2871, v2886);
      v2895 = OUTLINED_FUNCTION_49_43(v2887, v2888, v2889, v2890, v2891, v2892, v2893, v2894, v3066, v3191, v3318, v3444, v3570, v3694, v3821, v3946, v4078, v4204, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      memcpy(v2895, v2896, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2905 = OUTLINED_FUNCTION_39_47(v2897, v2898, v2899, v2900, v2901, v2902, v2903, v2904, v3067, v3192, v3319, v3445, v3571, v3695, v3822, v3947, v4079, v4205, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v2906(v2905);

      (v2867)(v2907);
      OUTLINED_FUNCTION_2_1();
      (*(v2908 + 2008))(1);

      (v2867)(v2909);
      OUTLINED_FUNCTION_2_1();
      (*(v2910 + 1696))(21);

      (v2867)(v2911);
      OUTLINED_FUNCTION_2_1();
      v2912 = OUTLINED_FUNCTION_10_7();
      v2913(v2912);

      v2915 = (v2867)(v2914);
      sub_1E3E5FDEC();
      OUTLINED_FUNCTION_106_15();
      v2916 = *(*v2915 + 680);
      v2917 = v2871;
      v2916(v2871);

      v2918 = [v2535 isSUIEnabled];
      v2867();
      if (v2918)
      {
        v2919 = *(MEMORY[0x1E69DDCE0] + 16);
        *v4245 = *MEMORY[0x1E69DDCE0];
        *v4246 = v2919;
      }

      else
      {
        sub_1E3952C58();
        *v4245 = v2920;
        *&v4245[8] = v2921;
        v4246[0] = v2922;
        v4246[1] = v2923;
      }

      LOBYTE(v4247) = 0;
      OUTLINED_FUNCTION_8();
      (*(v2924 + 160))();

      OUTLINED_FUNCTION_9_2();
      (*(v2925 + 1968))();
      memset(__dst, 0, sizeof(__dst));
      v4227[0] = 0;
      v4227[1] = 0x401C000000000000;
      LOBYTE(v4228) = 0;
      OUTLINED_FUNCTION_26_0();
      (*(v2926 + 160))(__dst);

      v3823(v2927);
      OUTLINED_FUNCTION_80_15();
      if (v55)
      {
        goto LABEL_85;
      }

      v2929 = sub_1E3D241D0(v2928);
      if (v2929 == 0x7055726579616C70 && v2930 == 0xEC0000007478654ELL)
      {
      }

      else
      {
        v2932 = OUTLINED_FUNCTION_129_9(v2929);

        if ((v2932 & 1) == 0)
        {
          goto LABEL_85;
        }
      }

      (v40)(v2928);
      OUTLINED_FUNCTION_30();
      (*(v2933 + 1720))(6);

      (v2867)(v2934);
      OUTLINED_FUNCTION_2_1();
      (*(v2935 + 1720))(6);

LABEL_85:
      v3823(v2928);
      OUTLINED_FUNCTION_80_15();
      if (v55)
      {
        goto LABEL_69;
      }

      v2937 = sub_1E3D241D0(v2936);
      if (v2937 == 0x70557374726F7073 && v2938 == 0xEC0000007478654ELL)
      {

        goto LABEL_37;
      }

      v2940 = OUTLINED_FUNCTION_129_9(v2937);

      if (v2940)
      {
LABEL_37:
        v2527 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
        v2528 = v2[23];
        v2[23] = v2527;
      }

LABEL_69:
      OUTLINED_FUNCTION_111();
      (*(v2840 + 1896))();
      OUTLINED_FUNCTION_30();
      (*(v2841 + 2368))(1);

      OUTLINED_FUNCTION_9_2();
      v2843 = (*(v2842 + 1824))();
      sub_1E3C37CBC(v2843, 23);

      OUTLINED_FUNCTION_9_2();
      v2845 = (*(v2844 + 1848))();
      sub_1E3C37CBC(v2845, 15);

      OUTLINED_FUNCTION_9_2();
      v2847 = (*(v2846 + 1872))();
      sub_1E3C37CBC(v2847, 16);

      OUTLINED_FUNCTION_9_2();
      v2849 = *(v2848 + 1800);
      v2850 = v2849();
      sub_1E3C37CBC(v2850, 4);

      v2852 = (v2849)(v2851);
      sub_1E3C37CBC(v2852, 17);

      OUTLINED_FUNCTION_9_2();
      v2854 = (*(v2853 + 1896))();
      sub_1E3C37CBC(v2854, 10);

      OUTLINED_FUNCTION_9_2();
      v2856 = (*(v2855 + 1920))();
      sub_1E3C37CBC(v2856, 39);

      OUTLINED_FUNCTION_9_2();
      v2858 = (*(v2857 + 1944))();
      sub_1E3C37CBC(v2858, 32);

      OUTLINED_FUNCTION_9_2();
      v2860 = (*(v2859 + 1968))();
      sub_1E3C37CBC(v2860, 59);

      OUTLINED_FUNCTION_9_2();
      v2862 = (*(v2861 + 1992))();
      sub_1E3C37CBC(v2862, 67);

      OUTLINED_FUNCTION_9_2();
      v2864 = (*(v2863 + 2016))();
      sub_1E3C37CBC(v2864, 233);

      return;
    case 0xAu:
      OUTLINED_FUNCTION_9_2();
      v440 = (v439 + 1824);
      v441 = *(v439 + 1824);
      (v441)();
      OUTLINED_FUNCTION_2_1();
      (*(v442 + 1696))(17);

      v441(v443);
      OUTLINED_FUNCTION_2_1();
      v444 = OUTLINED_FUNCTION_76_19();
      v445(v444);

      v441(v446);
      OUTLINED_FUNCTION_2_1();
      v447 = OUTLINED_FUNCTION_15_8();
      v448(v447);

      v441(v449);
      OUTLINED_FUNCTION_2_1();
      v450 = OUTLINED_FUNCTION_8_5();
      v451(v450);

      v453 = (v441)(v452);
      v454 = sub_1E3E5FD88();
      OUTLINED_FUNCTION_81_12();
      v455 = *(*v453 + 680);
      v456 = v18;
      v455(v18);

      v441(v457);
      sub_1E3952C88();
      OUTLINED_FUNCTION_32_61(v458, v459, v460, v461);
      (*(v462 + 160))(v4245);

      OUTLINED_FUNCTION_9_2();
      v464 = *(v463 + 1848);
      v464();
      OUTLINED_FUNCTION_2_1();
      v465 = OUTLINED_FUNCTION_8_5();
      v466(v465);

      (v464)(v467);
      OUTLINED_FUNCTION_2_1();
      v468 = OUTLINED_FUNCTION_76_19();
      v469(v468);

      v471 = (v464)(v470);
      v472 = sub_1E3E5FDEC();
      OUTLINED_FUNCTION_121_10();
      v473 = *(*v471 + 680);
      v474 = v440;
      v473(v440);

      (v464)(v475);
      OUTLINED_FUNCTION_2_1();
      (*(v476 + 1696))(21);

      v477 = objc_opt_self();
      LOBYTE(v441) = [v477 isSUIEnabled];
      v464();
      if (v441)
      {
        v478 = *(MEMORY[0x1E69DDCE0] + 16);
        *__dst = *MEMORY[0x1E69DDCE0];
        *v4227 = v478;
      }

      else
      {
        sub_1E3952C88();
        *__dst = v2546;
        *&__dst[8] = v2547;
        v4227[0] = v2548;
        v4227[1] = v2549;
      }

      LOBYTE(v4228) = 0;
      OUTLINED_FUNCTION_8();
      (*(v2550 + 160))();

      OUTLINED_FUNCTION_9_2();
      v2552 = *(v2551 + 1872);
      v2552();
      OUTLINED_FUNCTION_2_1();
      v2553 = OUTLINED_FUNCTION_8_5();
      v2554(v2553);

      (v2552)(v2555);
      OUTLINED_FUNCTION_2_1();
      v2556 = OUTLINED_FUNCTION_76_19();
      v2557(v2556);

      (v2552)(v2558);
      OUTLINED_FUNCTION_15_11();
      v2559 = *v472;
      v2561 = *(*v2560 + 680);
      v2562 = v2559;
      v2561(v2559);

      (v2552)(v2563);
      OUTLINED_FUNCTION_2_1();
      (*(v2564 + 1696))(21);

      [v477 isSUIEnabled];
      OUTLINED_FUNCTION_116_9();
      v2552();
      if (v2559)
      {
        v2565 = *(MEMORY[0x1E69DDCE0] + 16);
        v4255 = *MEMORY[0x1E69DDCE0];
        v4256 = v2565;
      }

      else
      {
        sub_1E3952C88();
        *&v4255 = v2566;
        *(&v4255 + 1) = v2567;
        *&v4256 = v2568;
        *(&v4256 + 1) = v2569;
      }

      v4257 = 0;
      OUTLINED_FUNCTION_8();
      (*(v2570 + 160))();

      OUTLINED_FUNCTION_9_2();
      v2572 = *(v2571 + 1920);
      v2573 = v2572();
      v2574 = sub_1E418A524();
      v2575 = OUTLINED_FUNCTION_105_0(v2574);
      (*(*v2573 + 440))(v2575, 0);

      (v2572)(v2576);
      OUTLINED_FUNCTION_2_1();
      (*(v2577 + 1808))(3);

      (v2572)(v2578);
      OUTLINED_FUNCTION_2_1();
      (*(v2579 + 2000))(0);

      v2581.n128_f64[0] = (v2572)(v2580);
      v2582 = OUTLINED_FUNCTION_130_12(v2581);
      OUTLINED_FUNCTION_122_9(v2582, v2583);
      *&v4253 = v2584;
      *(&v4253 + 1) = v2585;
      v4254 = 0;
      (*(*v2 + 1856))(&v4252);

      (v2572)(v2586);
      sub_1E3755B54();
      v2587 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.08];
      v2588 = OUTLINED_FUNCTION_114_8([objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.1]);

      OUTLINED_FUNCTION_3_11();
      (*(v2589 + 1832))(v2588);

      (v2572)(v2590);
      OUTLINED_FUNCTION_30();
      v2591 = OUTLINED_FUNCTION_10_7();
      v2592(v2591);

      OUTLINED_FUNCTION_9_2();
      (*(v2593 + 1992))();
      OUTLINED_FUNCTION_15_11();
      v2594 = *v454;
      v2596 = *(*v2595 + 680);
      v2597 = v2594;
      v2596(v2594);

      v2599 = (v2572)(v2598);
      sub_1E39537A8();
      v4249[0] = v2600;
      v4249[1] = v2601;
      *&v4250 = v2602;
      *(&v4250 + 1) = v2603;
      v4251 = 0;
      (*(*v2599 + 560))(v4249);

      v2605 = (v2572)(v2604);
      v2606 = [objc_opt_self() defaultMetrics];
      [v2606 scaledValueForValue_];
      v2608 = v2607;

      (*(*v2605 + 360))(v2608, 0);

      (v2572)(v2609);
      v2610 = sub_1E3952CA4();
      OUTLINED_FUNCTION_28_55(v2610, v2611, v2612, v2613);
      OUTLINED_FUNCTION_8();
      (*(v2614 + 160))(v4242);

      *v4239 = xmmword_1E4298710;
      *v4240 = xmmword_1E4298710;
      LOBYTE(v4241) = 0;
      OUTLINED_FUNCTION_111();
      (*(v2615 + 184))(v4239);
      OUTLINED_FUNCTION_9_2();
      (*(v2616 + 2016))();
      v2617 = sub_1E3952C64();
      OUTLINED_FUNCTION_4_167(v2617, v2618, v2619, v2620);
      OUTLINED_FUNCTION_8();
      (*(v2621 + 160))(v4236);
      goto LABEL_68;
    case 0xBu:
      OUTLINED_FUNCTION_111();
      v479 += 240;
      v480 = *v479;
      (*v479)();
      sub_1E3D308B8();

      (v480)(v481);
      OUTLINED_FUNCTION_115_7();
      OUTLINED_FUNCTION_66_24(v482, v483);
      *&v4256 = v484;
      *(&v4256 + 1) = v485;
      v4257 = 0;
      (*(*v2 + 560))(&v4255);

      OUTLINED_FUNCTION_9_2();
      v487 = (v486 + 1824);
      v488 = *(v486 + 1824);
      v488();
      OUTLINED_FUNCTION_2_1();
      v489 = OUTLINED_FUNCTION_15_8();
      v490(v489);

      (v488)(v491);
      OUTLINED_FUNCTION_41_47();
      v492 = MEMORY[0x1E69E6810];
      OUTLINED_FUNCTION_110_10();
      OUTLINED_FUNCTION_19_93();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_18_87();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_17_102();
      v493 = sub_1E3C3DE00();
      LOBYTE(v4221[1]) = v4230[1];
      v501 = OUTLINED_FUNCTION_0_222(v493, v494, v495, v496, v497, v498, v499, v500, v2941, v3068, v3193, v3320, v3446, v3572, v3696, v3824, v3948, v4080, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4230[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      sub_1E3C2FCB8(v501, v502, v503, v504, v505, v506, v492, v507);
      v516 = OUTLINED_FUNCTION_49_43(v508, v509, v510, v511, v512, v513, v514, v515, v2957, v3084, v3209, v3336, v3462, v3588, v3714, v3840, v3966, v4096, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      memcpy(v516, v517, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v526 = OUTLINED_FUNCTION_37_53(v518, v519, v520, v521, v522, v523, v524, v525, v2958, v3085, v3210, v3337, v3463, v3589, v3715, v3841, v3967, v4097, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v527(v526);

      (v488)(v528);
      OUTLINED_FUNCTION_2_1();
      v529 = OUTLINED_FUNCTION_10_7();
      v530(v529);

      (v488)(v531);
      OUTLINED_FUNCTION_2_1();
      (*(v532 + 1696))(19);

      v534 = (v488)(v533);
      sub_1E3E5F58C();
      OUTLINED_FUNCTION_7_16();
      v535 = *(*v534 + 680);
      v536 = v492;
      v535(v492);

      sub_1E3952C88();
      v538 = v537;
      v540 = v539;
      v542 = v541;
      v544 = v543;
      v545 = objc_opt_self();
      v546 = [v545 isSUIEnabled];
      v547 = v538;
      v548 = v540;
      v549 = v542;
      v550 = v544;
      if ((v546 & 1) == 0)
      {
        sub_1E3952C88();
      }

      v3211 = v550;
      v3464 = v549;
      v3716 = v548;
      v3968 = v547;
      v551 = v538;
      v552 = v540;
      v553 = v542;
      v554 = v544;
      if (([v545 isSUIEnabled] & 1) == 0)
      {
        sub_1E3952C88();
        OUTLINED_FUNCTION_3();
      }

      v488();
      *__dst = v3968;
      *&__dst[8] = v3716;
      v4227[0] = v3464;
      v4227[1] = v3211;
      LOBYTE(v4228) = 0;
      *&v4252 = v538;
      *(&v4252 + 1) = v540;
      *&v4253 = v542;
      *(&v4253 + 1) = v544;
      v4254 = 0;
      v4249[0] = v538;
      v4249[1] = v540;
      *&v4250 = v542;
      *(&v4250 + 1) = v544;
      v4251 = 0;
      v4242[0] = v538;
      v4242[1] = v540;
      v4243[0] = v542;
      v4243[1] = v544;
      LOBYTE(v4244) = 0;
      type metadata accessor for UIEdgeInsets();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_55_5();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_14_7();
      v563 = OUTLINED_FUNCTION_4_174(v555, v556, v557, v558, v559, v560, v561, v562, v2959, v3086, v3211, v3338, v3464, v3590, v3716, v3842, v3968, v4098, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      OUTLINED_FUNCTION_127_8(v563, v564, v565, v566);
      OUTLINED_FUNCTION_48_35(v567, v568, v569, v570, v571, v572, v573, v574, v2960, v3087, v3212, v3339, v3465, v3591, v3717, v3843, v3969, v4099, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v583 = OUTLINED_FUNCTION_13_119(v575, v576, v577, v578, v579, v580, v581, v582, v2961, v3088, v3213, v3340, v3466, v3592, v3718, v3844, v3970, v4100, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v584(v583);

      OUTLINED_FUNCTION_9_2();
      v586 = *(v585 + 1848);
      v586();
      OUTLINED_FUNCTION_2_1();
      v587 = OUTLINED_FUNCTION_133();
      v588(v587);

      (v586)(v589);
      OUTLINED_FUNCTION_2_1();
      v590 = OUTLINED_FUNCTION_133();
      v591(v590);

      (v586)(v592);
      OUTLINED_FUNCTION_2_1();
      v593 = OUTLINED_FUNCTION_10_7();
      v594(v593);

      (v586)(v595);
      OUTLINED_FUNCTION_2_1();
      (*(v596 + 1696))(21);

      v598 = (v586)(v597);
      sub_1E3E5FDEC();
      OUTLINED_FUNCTION_121_10();
      v599 = *(*v598 + 680);
      v600 = v487;
      v599(v487);

      if ([v545 isSUIEnabled])
      {
        v551 = *MEMORY[0x1E69DDCE0];
        v552 = *(MEMORY[0x1E69DDCE0] + 8);
        v553 = *(MEMORY[0x1E69DDCE0] + 16);
        v554 = *(MEMORY[0x1E69DDCE0] + 24);
      }

      else
      {
        sub_1E3952C88();
        OUTLINED_FUNCTION_3();
      }

      if ([v545 isSUIEnabled])
      {
        v2622 = *(MEMORY[0x1E69DDCE0] + 8);
        v2623 = *(MEMORY[0x1E69DDCE0] + 24);
        *v3809 = *(MEMORY[0x1E69DDCE0] + 16);
        *v4066 = *MEMORY[0x1E69DDCE0];
      }

      else
      {
        sub_1E3952C88();
        v2622 = v2624;
        *v3809 = v2626;
        *v4066 = v2625;
        v2623 = v2627;
      }

      *v3306 = *(MEMORY[0x1E69DDCE0] + 16);
      *v3558 = *MEMORY[0x1E69DDCE0];
      v586();
      *__dst = v551;
      *&__dst[8] = v552;
      v4227[0] = v553;
      v4227[1] = v554;
      LOBYTE(v4228) = 0;
      *&v4252 = *v4066;
      *(&v4252 + 1) = v2622;
      *&v4253 = v3809[0];
      *(&v4253 + 1) = v2623;
      v4254 = 0;
      v4249[0] = *v4066;
      v4249[1] = v2622;
      *&v4250 = v3809[0];
      *(&v4250 + 1) = v2623;
      v4251 = 0;
      *v4242 = *v3558;
      *v4243 = *v3306;
      LOBYTE(v4244) = 0;
      OUTLINED_FUNCTION_62_27();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_55_5();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_14_7();
      v2636 = OUTLINED_FUNCTION_4_174(v2628, v2629, v2630, v2631, v2632, v2633, v2634, v2635, v2962, v3089, v3306[0], v3306[1], v3558[0], v3558[1], v3809[0], v3809[1], *v4066, *&v4066[8], v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      OUTLINED_FUNCTION_127_8(v2636, v2637, v2638, v2639);
      OUTLINED_FUNCTION_48_35(v2640, v2641, v2642, v2643, v2644, v2645, v2646, v2647, v3055, v3180, v3307, v3433, v3559, v3683, v3810, v3935, v4067, v4193, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2656 = OUTLINED_FUNCTION_13_119(v2648, v2649, v2650, v2651, v2652, v2653, v2654, v2655, v3056, v3181, v3308, v3434, v3560, v3684, v3811, v3936, v4068, v4194, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v2657(v2656);

      OUTLINED_FUNCTION_9_2();
      (*(v2658 + 1968))();
      OUTLINED_FUNCTION_2_1();
      (*(v2659 + 1792))(6);
      goto LABEL_68;
    case 0xDu:
      OUTLINED_FUNCTION_111();
      v1283 += 240;
      v1284 = *v1283;
      (*v1283)();
      sub_1E3D308B8();

      (v1284)(v1285);
      OUTLINED_FUNCTION_115_7();
      OUTLINED_FUNCTION_66_24(v1286, v1287);
      *&v4256 = v1288;
      *(&v4256 + 1) = v1289;
      v4257 = 0;
      (*(*v2 + 560))(&v4255);

      OUTLINED_FUNCTION_9_2();
      v1291 = v1290 + 1824;
      v1292 = *(v1290 + 1824);
      v1292();
      OUTLINED_FUNCTION_2_1();
      v1293 = OUTLINED_FUNCTION_8_5();
      v1294(v1293);

      (v1292)(v1295);
      OUTLINED_FUNCTION_2_1();
      v1296 = OUTLINED_FUNCTION_8_5();
      v1297(v1296);

      (v1292)(v1298);
      OUTLINED_FUNCTION_2_1();
      v1299 = OUTLINED_FUNCTION_10_7();
      v1300(v1299);

      (v1292)(v1301);
      OUTLINED_FUNCTION_2_1();
      (*(v1302 + 2008))(1);

      (v1292)(v1303);
      __dst[0] = 17;
      LOBYTE(v4252) = 19;
      LOBYTE(v4249[0]) = 19;
      LOBYTE(v4242[0]) = 3;
      OUTLINED_FUNCTION_65_22();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_22_70();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_2_167();
      sub_1E3C2FCB8(v1304, v1305, v1306, v1307, v1308, v1309, &qword_1F5D549D8, v1310);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1319 = OUTLINED_FUNCTION_21_78(v1311, v1312, v1313, v1314, v1315, v1316, v1317, v1318, v2941, v3068, v3193, v3320, v3446, v3572, v3696, v3824, v1291, v4080, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v1320(v1319);

      (v1292)(v1321);
      *__dst = *sub_1E3E5F58C();
      v1322 = *__dst;
      v1323 = *sub_1E3E5FD88();
      *&v4252 = v1323;
      sub_1E3755B54();
      v1324 = v1323;
      sub_1E3C2FC98();
      v4242[0] = v4249[0];
      OUTLINED_FUNCTION_65_22();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_89_11();
      sub_1E3C3DE00();
      v4234 = v4235[0];
      v1325 = sub_1E3C3DE00();
      v1333 = OUTLINED_FUNCTION_3_168(v1325, v1326, v1327, v1328, v1329, v1330, v1331, v1332, v2991, v3118, v3242, v3369, v3495, v3621, v3747, v3873, v4001, v4129, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4230[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      OUTLINED_FUNCTION_111_8(v1333, v1334, v1335, v1336, v1337, v2992, v3119, v3243, v3370, v3496, v3622, v3748, v3874, v4002, v4130, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220);
      v1338 = *v4245;
      v1339 = *&v4245[8];
      v1340 = v4246[0];
      v1341 = v4246[1];
      v1342 = v4247;
      v1343 = v4248;
      *__dst = *v4245;
      *&__dst[8] = *&v4245[8];
      v4227[0] = v4246[0];
      v4227[1] = v4246[1];
      v4228 = v4247;
      v4229 = v4248;
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1352 = OUTLINED_FUNCTION_45_48(v1344, v1345, v1346, v1347, v1348, v1349, v1350, v1351, v2993, v3120, v3244, v3371, v3497, v3623, v3749, v3875, v4003, v4131, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v1353(v1352, 21);

      OUTLINED_FUNCTION_9_2();
      v1355 = *(v1354 + 1848);
      v1355();
      OUTLINED_FUNCTION_2_1();
      v1356 = OUTLINED_FUNCTION_15_8();
      v1357(v1356);

      (v1355)(v1358);
      *__dst = 1;
      __dst[8] = 0;
      *&v4252 = 2;
      BYTE8(v4252) = 0;
      v1359 = MEMORY[0x1E69E6810];
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_19_93();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_18_87();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_17_102();
      v1360 = sub_1E3C3DE00();
      LOBYTE(v4221[1]) = v4230[1];
      v1368 = OUTLINED_FUNCTION_0_222(v1360, v1361, v1362, v1363, v1364, v1365, v1366, v1367, v2994, v3121, v3245, v3372, v3498, v3624, v3750, v3876, v4004, v4132, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4230[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      sub_1E3C2FCB8(v1368, v1369, v1370, v1371, v1372, v1373, v1359, v1374);
      v1383 = OUTLINED_FUNCTION_49_43(v1375, v1376, v1377, v1378, v1379, v1380, v1381, v1382, v2995, v3122, v3246, v3373, v3499, v3625, v3751, v3877, v4005, v4133, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      memcpy(v1383, v1384, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1393 = OUTLINED_FUNCTION_39_47(v1385, v1386, v1387, v1388, v1389, v1390, v1391, v1392, v2996, v3123, v3247, v3374, v3500, v3626, v3752, v3878, v4006, v4134, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v1394(v1393);

      (v1355)(v1395);
      OUTLINED_FUNCTION_2_1();
      v1396 = OUTLINED_FUNCTION_10_7();
      v1397(v1396);

      (v1355)(v1398);
      OUTLINED_FUNCTION_2_1();
      (*(v1399 + 2008))(1);

      v1401 = (v1355)(v1400);
      sub_1E3E5FDEC();
      OUTLINED_FUNCTION_81_12();
      v1402 = *(*v1401 + 680);
      v1403 = v1359;
      v1402(v1359);

      (v1355)(v1404);
      OUTLINED_FUNCTION_71_26();
      LOBYTE(v4242[0]) = 17;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_29_67();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_2_167();
      sub_1E3C2FCB8(v1405, v1406, v1407, v1408, v1409, v1410, &qword_1F5D549D8, v1411);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1420 = OUTLINED_FUNCTION_30_60(v1412, v1413, v1414, v1415, v1416, v1417, v1418, v1419, v2997, v3124, v3248, v3375, v3501, v3627, v3753, v3879, v4007, v4135, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v1421(v1420);

      (v1292)(v1422);
      OUTLINED_FUNCTION_132_9();
      OUTLINED_FUNCTION_32_61(v1423, v1424, v1425, v1426);
      (*(v1427 + 160))(v4245);

      (v1355)(v1428);
      OUTLINED_FUNCTION_131_11();
      OUTLINED_FUNCTION_23_69();
      OUTLINED_FUNCTION_8();
      (*(v1429 + 160))(__dst);
      goto LABEL_68;
    case 0xEu:
      v314 = *(MEMORY[0x1E69DDCE0] + 16);
      v4255 = *MEMORY[0x1E69DDCE0];
      v4256 = v314;
      v4257 = 0;
      OUTLINED_FUNCTION_111();
      (*(v315 + 160))(&v4255);
      OUTLINED_FUNCTION_9_2();
      v317 = *(v316 + 1920);
      v318 = v317();
      sub_1E3D308B8();

      (v317)(v319);
      OUTLINED_FUNCTION_115_7();
      OUTLINED_FUNCTION_122_9(v320, v321);
      *&v4253 = v322;
      *(&v4253 + 1) = v323;
      v4254 = 0;
      (*(*v2 + 560))(&v4252);

      OUTLINED_FUNCTION_9_2();
      v325 = (v324 + 1824);
      v326 = *(v324 + 1824);
      v326();
      OUTLINED_FUNCTION_2_1();
      v327 = OUTLINED_FUNCTION_8_5();
      v328(v327);

      (v326)(v329);
      OUTLINED_FUNCTION_2_1();
      v330 = OUTLINED_FUNCTION_8_5();
      v331(v330);

      (v326)(v332);
      OUTLINED_FUNCTION_2_1();
      v333 = OUTLINED_FUNCTION_8_5();
      v334(v333);

      (v326)(v335);
      OUTLINED_FUNCTION_2_1();
      (*(v336 + 1696))(17);

      (v326)(v337);
      OUTLINED_FUNCTION_2_1();
      (*(v338 + 2008))(1);

      v340 = (v326)(v339);
      sub_1E3E5FD88();
      OUTLINED_FUNCTION_7_16();
      v341 = *(*v340 + 680);
      v342 = v318;
      v341(v318);

      (v326)(v343);
      OUTLINED_FUNCTION_2_1();
      (*(v344 + 1720))(7);

      (v326)(v345);
      OUTLINED_FUNCTION_125_9();
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_6_145(v346, v347, v348, v349);
      type metadata accessor for UIEdgeInsets();
      v351 = v350;
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_16_107();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_15_110();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_31_53();
      v352 = sub_1E3C3DE00();
      LOBYTE(v4219) = v4224;
      OUTLINED_FUNCTION_8_125(v352, v353, v354, v355, v356, v357, v358, v359, v2941, v3068, v3193, v3320, v3446, v3572, v3696, v3824, v3948, v4080, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4221[0], v4221[1], v4222, v4223, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      OUTLINED_FUNCTION_107_9();
      sub_1E3C2FCB8(v360, v361, v362, v363, v364, v365, v351, v366);
      OUTLINED_FUNCTION_48_35(v367, v368, v369, v370, v371, v372, v373, v374, v2952, v3079, v3204, v3331, v3457, v3583, v3709, v3835, v3961, v4091, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v383 = OUTLINED_FUNCTION_13_119(v375, v376, v377, v378, v379, v380, v381, v382, v2953, v3080, v3205, v3332, v3458, v3584, v3710, v3836, v3962, v4092, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v384(v383);

      OUTLINED_FUNCTION_9_2();
      v386 = *(v385 + 1848);
      v386();
      OUTLINED_FUNCTION_2_1();
      v387 = OUTLINED_FUNCTION_15_8();
      v388(v387);

      (v386)(v389);
      OUTLINED_FUNCTION_2_1();
      v390 = OUTLINED_FUNCTION_8_5();
      v391(v390);

      (v386)(v392);
      OUTLINED_FUNCTION_2_1();
      v393 = OUTLINED_FUNCTION_8_5();
      v394(v393);

      (v386)(v395);
      OUTLINED_FUNCTION_2_1();
      (*(v396 + 1696))(19);

      v398 = (v386)(v397);
      sub_1E3E5FDEC();
      OUTLINED_FUNCTION_81_12();
      v399 = *(*v398 + 680);
      v400 = v325;
      v399(v325);

      (v386)(v401);
      OUTLINED_FUNCTION_2_1();
      (*(v402 + 1720))(7);

      (v386)(v403);
      OUTLINED_FUNCTION_132_9();
      OUTLINED_FUNCTION_23_69();
      *v4249 = v4255;
      v4250 = v4256;
      v4251 = v4257;
      OUTLINED_FUNCTION_103_10();
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_16_107();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_15_110();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_31_53();
      v404 = sub_1E3C3DE00();
      LOBYTE(v4219) = v4224;
      OUTLINED_FUNCTION_8_125(v404, v405, v406, v407, v408, v409, v410, v411, v2954, v3081, v3206, v3333, v3459, v3585, v3711, v3837, v3963, v4093, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4221[0], v4221[1], v4222, v4223, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      OUTLINED_FUNCTION_107_9();
      sub_1E3C2FCB8(v412, v413, v414, v415, v416, v417, v351, v418);
      OUTLINED_FUNCTION_48_35(v419, v420, v421, v422, v423, v424, v425, v426, v2955, v3082, v3207, v3334, v3460, v3586, v3712, v3838, v3964, v4094, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v435 = OUTLINED_FUNCTION_13_119(v427, v428, v429, v430, v431, v432, v433, v434, v2956, v3083, v3208, v3335, v3461, v3587, v3713, v3839, v3965, v4095, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v436(v435);

      (v386)(v437);
      OUTLINED_FUNCTION_2_1();
      (*(v438 + 2008))(1);
      goto LABEL_68;
    case 0xFu:
      OUTLINED_FUNCTION_111();
      v601 += 228;
      v602 = *v601;
      v603 = v601;
      (*v601)();
      OUTLINED_FUNCTION_2_1();
      (*(v604 + 1696))(22);

      (v602)(v605);
      OUTLINED_FUNCTION_2_1();
      v606 = OUTLINED_FUNCTION_15_8();
      v607(v606);

      (v602)(v608);
      OUTLINED_FUNCTION_2_1();
      v609 = OUTLINED_FUNCTION_76_19();
      v610(v609);

      (v602)(v611);
      OUTLINED_FUNCTION_84_0();
      sub_1E3952C94();
      OUTLINED_FUNCTION_32_61(v612, v613, v614, v615);
      (*(v616 + 160))(v4245);

      (v602)(v617);
      OUTLINED_FUNCTION_2_1();
      (*(v618 + 1936))(2);

      v620 = (v602)(v619);
      v621 = sub_1E3E5FDEC();
      OUTLINED_FUNCTION_81_12();
      v622 = *(*v620 + 680);
      v623 = v603;
      v622(v603);

      OUTLINED_FUNCTION_9_2();
      v625 = *(v624 + 1848);
      v625();
      OUTLINED_FUNCTION_2_1();
      v626 = OUTLINED_FUNCTION_15_8();
      v627(v626);

      (v625)(v628);
      OUTLINED_FUNCTION_2_1();
      (*(v629 + 1696))(18);

      v631 = (v625)(v630);
      sub_1E3E5FD88();
      OUTLINED_FUNCTION_81_12();
      v632 = *(*v631 + 680);
      v633 = v603;
      v632(v603);

      (v625)(v634);
      OUTLINED_FUNCTION_2_1();
      v635 = OUTLINED_FUNCTION_76_19();
      v636(v635);

      (v625)(v637);
      sub_1E3952C94();
      OUTLINED_FUNCTION_23_69();
      OUTLINED_FUNCTION_8();
      (*(v638 + 160))(__dst);

      OUTLINED_FUNCTION_9_2();
      v640 = *(v639 + 1800);
      v640();
      OUTLINED_FUNCTION_2_1();
      v641 = OUTLINED_FUNCTION_133();
      v642(v641);

      (v640)(v643);
      OUTLINED_FUNCTION_2_1();
      (*(v644 + 1696))(21);

      (v640)(v645);
      OUTLINED_FUNCTION_15_11();
      v646 = *v621;
      v648 = *(*v647 + 680);
      v649 = v646;
      v648(v646);

      (v640)(v650);
      OUTLINED_FUNCTION_2_1();
      v651 = OUTLINED_FUNCTION_76_19();
      v652(v651);

      OUTLINED_FUNCTION_9_2();
      v654 = *(v653 + 1920);
      v655 = v654();
      v656 = sub_1E418A524();
      v657 = OUTLINED_FUNCTION_105_0(v656);
      (*(*v655 + 440))(v657, 0);

      (v654)(v658);
      OUTLINED_FUNCTION_2_1();
      (*(v659 + 1808))(3);

      (v654)(v660);
      OUTLINED_FUNCTION_2_1();
      (*(v661 + 2000))(0);

      v663.n128_f64[0] = (v654)(v662);
      v664 = OUTLINED_FUNCTION_130_12(v663);
      OUTLINED_FUNCTION_66_24(v664, v665);
      *&v4256 = v666;
      *(&v4256 + 1) = v667;
      v4257 = 0;
      (*(*v2 + 1856))(&v4255);

      (v654)(v668);
      sub_1E3755B54();
      v669 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.08];
      v670 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.1];
      v671 = sub_1E3E5F2F8(v669, v670);

      OUTLINED_FUNCTION_13();
      (*(v672 + 1832))(v671);

      (v654)(v673);
      OUTLINED_FUNCTION_115_7();
      OUTLINED_FUNCTION_122_9(v674, v675);
      *&v4253 = v676;
      *(&v4253 + 1) = v677;
      v4254 = 0;
      (*(*v2 + 560))(&v4252);

      (v654)(v678);
      OUTLINED_FUNCTION_30();
      v679 = OUTLINED_FUNCTION_10_7();
      v680(v679);

      v682 = (v654)(v681);
      v683 = [objc_opt_self() defaultMetrics];
      [v683 scaledValueForValue_];
      v685 = v684;

      (*(*v682 + 360))(v685, 0);

      (v654)(v686);
      v687 = sub_1E3952CA4();
      OUTLINED_FUNCTION_6_145(v687, v688, v689, v690);
      OUTLINED_FUNCTION_8();
      (*(v691 + 160))(v4249);

      *v4242 = xmmword_1E42B9700;
      *v4243 = xmmword_1E42B9700;
      LOBYTE(v4244) = 0;
      OUTLINED_FUNCTION_111();
      (*(v692 + 184))(v4242);
      goto LABEL_69;
    case 0x10u:
      OUTLINED_FUNCTION_111();
      v57 += 240;
      v58 = *v57;
      v59 = (*v57)();
      sub_1E3D308B8();

      OUTLINED_FUNCTION_9_2();
      v61 = *(v60 + 1800);
      v61();
      OUTLINED_FUNCTION_2_1();
      (*(v62 + 1936))(2);

      (v61)(v63);
      OUTLINED_FUNCTION_2_1();
      (*(v64 + 1864))(1);

      (v61)(v65);
      OUTLINED_FUNCTION_2_1();
      v66 = OUTLINED_FUNCTION_15_8();
      v67(v66);

      (v61)(v68);
      OUTLINED_FUNCTION_2_1();
      v69 = OUTLINED_FUNCTION_10_7();
      v70(v69);

      (v61)(v71);
      OUTLINED_FUNCTION_2_1();
      v72 = OUTLINED_FUNCTION_10_7();
      v73(v72);

      v75 = (v61)(v74);
      v3698 = sub_1E3E5FDEC();
      OUTLINED_FUNCTION_7_16();
      v76 = *(*v75 + 680);
      v77 = v59;
      v76(v59);

      (v61)(v78);
      OUTLINED_FUNCTION_92_10();
      LOBYTE(v4255) = 17;
      sub_1E3C2FC98();
      LOBYTE(v4249[0]) = v4252;
      OUTLINED_FUNCTION_103_10();
      sub_1E3C3DE00();
      LOBYTE(v4239[0]) = v4242[0];
      sub_1E3C3DE00();
      LOBYTE(v4235[0]) = v4236[0];
      v79 = sub_1E3C3DE00();
      LOBYTE(v4230[0]) = v4234;
      v87 = OUTLINED_FUNCTION_100_7(v79, v80, v81, v82, v83, v84, v85, v86, v2941, v3068, v3193, v3320, v3446, v3572, v3698, v3824, v3948, v4080, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      sub_1E3C2FCB8(v87, v88, v89, v90, &v4255, v4230, &qword_1F5D549D8, v91);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v100 = OUTLINED_FUNCTION_30_60(v92, v93, v94, v95, v96, v97, v98, v99, v2942, v3069, v3194, v3321, v3447, v3573, v3699, v3825, v3950, v4081, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v101(v100);

      (v61)(v102);
      OUTLINED_FUNCTION_2_1();
      (*(v103 + 1792))(10);

      (v61)(v104);
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_73_17(v105, v106, v107, v108);
      type metadata accessor for UIEdgeInsets();
      v110 = v109;
      sub_1E3C2FC98();
      *v4249 = v4252;
      v4250 = v4253;
      v4251 = v4254;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_16_107();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_15_110();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_31_53();
      v119 = OUTLINED_FUNCTION_100_7(v111, v112, v113, v114, v115, v116, v117, v118, v2943, v3070, v3195, v3322, v3448, v3574, v3700, v3826, v3951, v4082, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      sub_1E3C2FCB8(v119, v120, v121, v122, v4230, &v4255, v110, v123);
      OUTLINED_FUNCTION_48_35(v124, v125, v126, v127, v128, v129, v130, v131, v2944, v3071, v3196, v3323, v3449, v3575, v3701, v3827, v3952, v4083, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v140 = OUTLINED_FUNCTION_24_74(v132, v133, v134, v135, v136, v137, v138, v139, v2945, v3072, v3197, v3324, v3450, v3576, v3702, v3828, v3953, v4084, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v141(v140);

      OUTLINED_FUNCTION_9_2();
      v143 = *(v142 + 1824);
      v143();
      OUTLINED_FUNCTION_2_1();
      v144 = OUTLINED_FUNCTION_15_8();
      v145(v144);

      (v143)(v146);
      OUTLINED_FUNCTION_2_1();
      v147 = OUTLINED_FUNCTION_10_7();
      v148(v147);

      (v143)(v149);
      OUTLINED_FUNCTION_2_1();
      v150 = OUTLINED_FUNCTION_10_7();
      v151(v150);

      v153 = (v143)(v152);
      v3954 = sub_1E3E5FD88();
      OUTLINED_FUNCTION_106_15();
      v154 = *(*v153 + 680);
      v155 = v61;
      v154(v61);

      (v143)(v156);
      OUTLINED_FUNCTION_2_1();
      (*(v157 + 1792))(4);

      (v143)(v158);
      OUTLINED_FUNCTION_131_11();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_73_17(v159, v160, v161, v162);
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v163, v164, v165, v166);
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_25_72();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_55_5();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_14_7();
      v175 = OUTLINED_FUNCTION_3_168(v167, v168, v169, v170, v171, v172, v173, v174, v2946, v3073, v3198, v3325, v3451, v3577, v3703, v3829, v3954, v4085, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      sub_1E3C2FCB8(v175, v176, v177, v178, &v4255, &v4252, v110, v179);
      OUTLINED_FUNCTION_48_35(v180, v181, v182, v183, v184, v185, v186, v187, v2947, v3074, v3199, v3326, v3452, v3578, v3704, v3830, v3955, v4086, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v196 = OUTLINED_FUNCTION_24_74(v188, v189, v190, v191, v192, v193, v194, v195, v2948, v3075, v3200, v3327, v3453, v3579, v3705, v3831, v3956, v4087, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v197(v196);

      (v143)(v198);
      OUTLINED_FUNCTION_2_1();
      (*(v199 + 1696))(17);

      (v143)(v200);
      OUTLINED_FUNCTION_2_1();
      v201 = OUTLINED_FUNCTION_76_19();
      v202(v201);

      (v143)(v203);
      OUTLINED_FUNCTION_2_1();
      v204 = OUTLINED_FUNCTION_8_5();
      v205(v204);

      OUTLINED_FUNCTION_9_2();
      v207 = *(v206 + 1848);
      v207();
      OUTLINED_FUNCTION_2_1();
      v208 = OUTLINED_FUNCTION_15_8();
      v209(v208);

      (v207)(v210);
      OUTLINED_FUNCTION_2_1();
      v211 = OUTLINED_FUNCTION_10_7();
      v212(v211);

      (v207)(v213);
      OUTLINED_FUNCTION_2_1();
      v214 = OUTLINED_FUNCTION_10_7();
      v215(v214);

      (v207)(v216);
      OUTLINED_FUNCTION_15_11();
      v217 = *v3706;
      v219 = *(*v218 + 680);
      v220 = *v3706;
      v219(v217);

      (v207)(v221);
      OUTLINED_FUNCTION_2_1();
      (*(v222 + 1792))(4);

      (v207)(v223);
      OUTLINED_FUNCTION_131_11();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_73_17(v224, v225, v226, v227);
      sub_1E3952C88();
      OUTLINED_FUNCTION_28_58(v228, v229, v230, v231);
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_25_72();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_55_5();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_14_7();
      v240 = OUTLINED_FUNCTION_3_168(v232, v233, v234, v235, v236, v237, v238, v239, v2949, v3076, v3201, v3328, v3454, v3580, v3706, v3832, v3957, v4088, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      sub_1E3C2FCB8(v240, v241, v242, v243, &v4255, &v4252, v110, v244);
      OUTLINED_FUNCTION_48_35(v245, v246, v247, v248, v249, v250, v251, v252, v2950, v3077, v3202, v3329, v3455, v3581, v3707, v3833, v3958, v4089, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v261 = OUTLINED_FUNCTION_24_74(v253, v254, v255, v256, v257, v258, v259, v260, v2951, v3078, v3203, v3330, v3456, v3582, v3708, v3834, v3959, v4090, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v262(v261);

      (v207)(v263);
      OUTLINED_FUNCTION_2_1();
      v264 = OUTLINED_FUNCTION_8_5();
      v265(v264);

      (v207)(v266);
      OUTLINED_FUNCTION_2_1();
      v267 = OUTLINED_FUNCTION_76_19();
      v268(v267);

      (v207)(v269);
      OUTLINED_FUNCTION_2_1();
      (*(v270 + 1696))(21);

      v272 = (v58)(v271);
      v273 = sub_1E418A524();
      v274 = OUTLINED_FUNCTION_105_0(v273);
      (*(*v272 + 440))(v274, 0);

      (v58)(v275);
      OUTLINED_FUNCTION_2_1();
      (*(v276 + 1808))(3);

      (v58)(v277);
      OUTLINED_FUNCTION_2_1();
      (*(v278 + 2000))(0);

      v280.n128_f64[0] = (v58)(v279);
      *v4245 = OUTLINED_FUNCTION_130_12(v280);
      *&v4245[8] = v281;
      v4246[0] = v282;
      v4246[1] = v283;
      LOBYTE(v4247) = 0;
      (*(*v2 + 1856))(v4245);

      (v58)(v284);
      sub_1E3755B54();
      v285 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.08];
      v286 = OUTLINED_FUNCTION_114_8([objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.1]);

      OUTLINED_FUNCTION_3_11();
      (*(v287 + 1832))(v286);

      (v58)(v288);
      OUTLINED_FUNCTION_30();
      v289 = OUTLINED_FUNCTION_10_7();
      v290(v289);

      OUTLINED_FUNCTION_9_2();
      (*(v291 + 1992))();
      OUTLINED_FUNCTION_15_11();
      v292 = *v3960;
      v294 = *(*v293 + 680);
      v295 = *v3960;
      v294(v292);

      v297 = (v58)(v296);
      sub_1E39537A8();
      *__dst = v298;
      *&__dst[8] = v299;
      v4227[0] = v300;
      v4227[1] = v301;
      LOBYTE(v4228) = 0;
      (*(*v297 + 560))(__dst);

      v303 = (v58)(v302);
      v304 = [objc_opt_self() defaultMetrics];
      [v304 scaledValueForValue_];
      v306 = v305;

      (*(*v303 + 360))(v306, 0);

      (v58)(v307);
      v308 = sub_1E3952CA4();
      OUTLINED_FUNCTION_73_17(v308, v309, v310, v311);
      OUTLINED_FUNCTION_8();
      (*(v312 + 160))(&v4255);

      v4252 = xmmword_1E4298710;
      v4253 = xmmword_1E4298710;
      v4254 = 0;
      OUTLINED_FUNCTION_111();
      (*(v313 + 184))(&v4252);
      goto LABEL_37;
    case 0x11u:
      OUTLINED_FUNCTION_111();
      v1217 += 240;
      v1218 = *v1217;
      (*v1217)();
      sub_1E3D308B8();

      (v1218)(v1219);
      OUTLINED_FUNCTION_98_13();
      OUTLINED_FUNCTION_66_24(v1220, v1221);
      *&v4256 = v1222;
      *(&v4256 + 1) = v1223;
      v4257 = 0;
      (*(*v2 + 560))(&v4255);

      OUTLINED_FUNCTION_9_2();
      v1225 = *(v1224 + 1824);
      v1225();
      OUTLINED_FUNCTION_2_1();
      v1226 = OUTLINED_FUNCTION_15_8();
      v1227(v1226);

      (v1225)(v1228);
      OUTLINED_FUNCTION_41_47();
      v1229 = MEMORY[0x1E69E6810];
      OUTLINED_FUNCTION_110_10();
      OUTLINED_FUNCTION_19_93();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_18_87();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_17_102();
      v1230 = sub_1E3C3DE00();
      LOBYTE(v4221[1]) = v4230[1];
      v1238 = OUTLINED_FUNCTION_0_222(v1230, v1231, v1232, v1233, v1234, v1235, v1236, v1237, v2941, v3068, v3193, v3320, v3446, v3572, v3696, v3824, v3948, v4080, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4230[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      sub_1E3C2FCB8(v1238, v1239, v1240, v1241, v1242, v1243, v1229, v1244);
      v1253 = OUTLINED_FUNCTION_49_43(v1245, v1246, v1247, v1248, v1249, v1250, v1251, v1252, v2988, v3115, v3239, v3366, v3492, v3618, v3744, v3870, v3998, v4126, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      memcpy(v1253, v1254, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1263 = OUTLINED_FUNCTION_37_53(v1255, v1256, v1257, v1258, v1259, v1260, v1261, v1262, v2989, v3116, v3240, v3367, v3493, v3619, v3745, v3871, v3999, v4127, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v1264(v1263);

      (v1225)(v1265);
      OUTLINED_FUNCTION_2_1();
      v1266 = OUTLINED_FUNCTION_10_7();
      v1267(v1266);

      (v1225)(v1268);
      OUTLINED_FUNCTION_2_1();
      (*(v1269 + 1696))(19);

      (v1225)(v1270);
      OUTLINED_FUNCTION_2_1();
      (*(v1271 + 1984))(5);

      v1273 = (v1225)(v1272);
      sub_1E3E5FD88();
      OUTLINED_FUNCTION_7_16();
      v1274 = (*v1273 + 680);
      v1275 = *v1274;
      v1276 = v1229;
      v1275(v1229);

      v1277 = objc_opt_self();
      [v1277 isSUIEnabled];
      OUTLINED_FUNCTION_116_9();
      v1225();
      sub_1E3952C88();
      if (v1274)
      {
        OUTLINED_FUNCTION_28_58(v1278, v1279, v1280, v1281);
        OUTLINED_FUNCTION_8();
        (*(v1282 + 160))(&v4252);
      }

      else
      {
        OUTLINED_FUNCTION_23_69();
        sub_1E3952C88();
        OUTLINED_FUNCTION_28_58(v2722, v2723, v2724, v2725);
        type metadata accessor for UIEdgeInsets();
        sub_1E3C2FC98();
        OUTLINED_FUNCTION_25_72();
        sub_1E3C3DE00();
        OUTLINED_FUNCTION_55_5();
        sub_1E3C3DE00();
        OUTLINED_FUNCTION_14_7();
        v2726 = sub_1E3C3DE00();
        LOBYTE(v4224) = v4233;
        v2734 = OUTLINED_FUNCTION_3_168(v2726, v2727, v2728, v2729, v2730, v2731, v2732, v2733, v2990, v3117, v3241, v3368, v3494, v3620, v3746, v3872, v4000, v4128, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4230[0], v4230[1], v4231, v4232, v4224, v4225, __dst[0]);
        OUTLINED_FUNCTION_111_8(v2734, v2735, v2736, v2737, v2738, v3059, v3184, v3311, v3437, v3563, v3687, v3814, v3939, v4071, v4197, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220);
        OUTLINED_FUNCTION_48_35(v2739, v2740, v2741, v2742, v2743, v2744, v2745, v2746, v3060, v3185, v3312, v3438, v3564, v3688, v3815, v3940, v4072, v4198, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, *__dst);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        v2755 = OUTLINED_FUNCTION_24_74(v2747, v2748, v2749, v2750, v2751, v2752, v2753, v2754, v3061, v3186, v3313, v3439, v3565, v3689, v3816, v3941, v4073, v4199, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
        v2756(v2755);
      }

      OUTLINED_FUNCTION_111();
      v2757 += 231;
      v2758 = *v2757;
      (*v2757)();
      OUTLINED_FUNCTION_30();
      v2759 = OUTLINED_FUNCTION_15_8();
      v2760(v2759);

      (v2758)(v2761);
      *__dst = 1;
      OUTLINED_FUNCTION_90_15();
      v2762 = MEMORY[0x1E69E6810];
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_59_27();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_52_32();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_58_30();
      v2763 = sub_1E3C3DE00();
      LOBYTE(v4216[1]) = v4221[1];
      OUTLINED_FUNCTION_8_125(v2763, v2764, v2765, v2766, v2767, v2768, v2769, v2770, v2990, v3117, v3241, v3368, v3494, v3620, v3746, v3872, v4000, v4128, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4221[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      OUTLINED_FUNCTION_107_9();
      sub_1E3C2FCB8(v2771, v2772, v2773, v2774, v2775, v2776, v2762, v2777);
      v2786 = OUTLINED_FUNCTION_49_43(v2778, v2779, v2780, v2781, v2782, v2783, v2784, v2785, v3062, v3187, v3314, v3440, v3566, v3690, v3817, v3942, v4074, v4200, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      memcpy(v2786, v2787, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2796 = OUTLINED_FUNCTION_39_47(v2788, v2789, v2790, v2791, v2792, v2793, v2794, v2795, v3063, v3188, v3315, v3441, v3567, v3691, v3818, v3943, v4075, v4201, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v2797(v2796);

      (v2758)(v2798);
      OUTLINED_FUNCTION_2_1();
      v2799 = OUTLINED_FUNCTION_10_7();
      v2800(v2799);

      (v2758)(v2801);
      OUTLINED_FUNCTION_2_1();
      (*(v2802 + 1696))(21);

      (v2758)(v2803);
      OUTLINED_FUNCTION_2_1();
      (*(v2804 + 1984))(5);

      v2806 = (v2758)(v2805);
      sub_1E3E5FDEC();
      OUTLINED_FUNCTION_81_12();
      v2807 = *(*v2806 + 680);
      v2808 = v2762;
      v2807(v2762);

      if ([v1277 isSUIEnabled])
      {
        goto LABEL_69;
      }

      v2758();
      OUTLINED_FUNCTION_131_11();
      OUTLINED_FUNCTION_23_69();
      sub_1E3952C88();
      OUTLINED_FUNCTION_6_145(v2809, v2810, v2811, v2812);
      type metadata accessor for UIEdgeInsets();
      v2187 = v2813;
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_16_107();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_15_110();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_31_53();
      v2814 = sub_1E3C3DE00();
      LOBYTE(v4219) = v4224;
      v2196 = OUTLINED_FUNCTION_8_125(v2814, v2815, v2816, v2817, v2818, v2819, v2820, v2821, v3064, v3189, v3316, v3442, v3568, v3692, v3819, v3944, v4076, v4202, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4221[0], v4221[1], v4222, v4223, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v2200 = v4249;
      v2201 = v4216;
LABEL_67:
      sub_1E3C2FCB8(v2196, v2197, v2198, v2199, v2200, v2201, v2187, v2202);
      OUTLINED_FUNCTION_48_35(v2822, v2823, v2824, v2825, v2826, v2827, v2828, v2829, v3038, v3163, v3289, v3416, v3541, v3666, v3792, v3918, v4048, v4176, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2838 = OUTLINED_FUNCTION_13_119(v2830, v2831, v2832, v2833, v2834, v2835, v2836, v2837, v3065, v3190, v3317, v3443, v3569, v3693, v3820, v3945, v4077, v4203, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v2839(v2838);
LABEL_68:

      goto LABEL_69;
    case 0x12u:
      OUTLINED_FUNCTION_111();
      v1651 += 228;
      v1652 = *v1651;
      (*v1651)();
      OUTLINED_FUNCTION_2_1();
      (*(v1653 + 1984))(4);

      (v1652)(v1654);
      OUTLINED_FUNCTION_2_1();
      (*(v1655 + 2008))(1);

      (v1652)(v1656);
      OUTLINED_FUNCTION_2_1();
      v1657 = OUTLINED_FUNCTION_15_8();
      v1658(v1657);

      (v1652)(v1659);
      OUTLINED_FUNCTION_2_1();
      v1660 = OUTLINED_FUNCTION_8_5();
      v1661(v1660);

      (v1652)(v1662);
      OUTLINED_FUNCTION_2_1();
      v1663 = OUTLINED_FUNCTION_10_7();
      v1664(v1663);

      (v1652)(v1665);
      OUTLINED_FUNCTION_2_1();
      (*(v1666 + 1696))(19);

      v1668 = (v1652)(v1667);
      sub_1E3E5FD88();
      OUTLINED_FUNCTION_7_16();
      v1669 = *(*v1668 + 680);
      v1670 = v1;
      v1669(v1);

      (v1652)(v1671);
      OUTLINED_FUNCTION_2_1();
      (*(v1672 + 336))(0x4034000000000000, 0);

      (v1652)(v1673);
      *v4245 = 0x4018000000000000;
      *&v4245[8] = 0;
      v4246[1] = 0;
      v4246[0] = 0;
      LOBYTE(v4247) = 0;
      OUTLINED_FUNCTION_26_0();
      (*(v1674 + 160))(v4245);

      OUTLINED_FUNCTION_9_2();
      v1676 = *(v1675 + 1848);
      v1676();
      OUTLINED_FUNCTION_2_1();
      v1677 = OUTLINED_FUNCTION_15_8();
      v1678(v1677);

      (v1676)(v1679);
      OUTLINED_FUNCTION_2_1();
      v1680 = OUTLINED_FUNCTION_15_8();
      v1681(v1680);

      (v1676)(v1682);
      OUTLINED_FUNCTION_2_1();
      v1683 = OUTLINED_FUNCTION_10_7();
      v1684(v1683);

      (v1676)(v1685);
      OUTLINED_FUNCTION_2_1();
      (*(v1686 + 2128))(0x3FE3333333333333, 0);

      (v1676)(v1687);
      OUTLINED_FUNCTION_2_1();
      (*(v1688 + 1696))(21);

      v1690 = (v1676)(v1689);
      v1691 = sub_1E3E5FDEC();
      OUTLINED_FUNCTION_81_12();
      v1692 = *(*v1690 + 680);
      v1693 = v1652;
      v1692(v1652);

      (v1676)(v1694);
      memset(__dst, 0, sizeof(__dst));
      *v4227 = xmmword_1E4296C50;
      LOBYTE(v4228) = 0;
      OUTLINED_FUNCTION_26_0();
      (*(v1695 + 160))(__dst);

      (v1676)(v1696);
      OUTLINED_FUNCTION_2_1();
      (*(v1697 + 336))(0x4034000000000000, 0);

      OUTLINED_FUNCTION_9_2();
      v1699 = *(v1698 + 1920);
      v1700 = v1699();
      sub_1E3D308B8();

      (v1699)(v1701);
      OUTLINED_FUNCTION_2_1();
      (*(v1702 + 1808))(1);

      v1704 = (v1699)(v1703);
      sub_1E3E60A14();
      OUTLINED_FUNCTION_81_12();
      v1705 = *(*v1704 + 872);
      v1706 = v1700;
      v1705(v1700);

      v1708 = (v1699)(v1707);
      v1709 = sub_1E418A524();
      v1710 = OUTLINED_FUNCTION_105_0(v1709);
      (*(*v1708 + 440))(v1710, 0);

      (v1699)(v1711);
      OUTLINED_FUNCTION_115_7();
      OUTLINED_FUNCTION_66_24(v1712, v1713);
      *&v4256 = v1714;
      *(&v4256 + 1) = v1715;
      v4257 = 0;
      (*(*v2 + 560))(&v4255);

      v1717.n128_f64[0] = (v1699)(v1716);
      v1718 = OUTLINED_FUNCTION_130_12(v1717);
      OUTLINED_FUNCTION_122_9(v1718, v1719);
      *&v4253 = v1720;
      *(&v4253 + 1) = v1721;
      v4254 = 0;
      (*(*v2 + 1856))(&v4252);

      (v1699)(v1722);
      sub_1E3755B54();
      v1723 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.08];
      v1724 = OUTLINED_FUNCTION_114_8([objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.1]);

      OUTLINED_FUNCTION_3_11();
      (*(v1725 + 1832))(v1724);

      OUTLINED_FUNCTION_9_2();
      v1727 = *(v1726 + 2016);
      v1727();
      v1728 = *(MEMORY[0x1E69DDCE0] + 16);
      *v4249 = *MEMORY[0x1E69DDCE0];
      v4250 = v1728;
      v4251 = 0;
      OUTLINED_FUNCTION_26_0();
      (*(v1729 + 160))(v4249);

      (v1727)(v1730);
      OUTLINED_FUNCTION_2_1();
      v1732 = (*(v1731 + 1728))();

      (*(*v1732 + 232))(0x402C000000000000, 0);

      OUTLINED_FUNCTION_9_2();
      v1734 = *(v1733 + 1992);
      v1734();
      v1735 = sub_1E391D8AC();
      OUTLINED_FUNCTION_8();
      (*(v1736 + 208))();

      (v1734)(v1737);
      OUTLINED_FUNCTION_15_11();
      (*(*v2 + 312))(v1735[1], 0);

      (v1734)(v1738);
      OUTLINED_FUNCTION_30();
      (*(v1739 + 160))(v4249);

      (v1734)(v1740);
      OUTLINED_FUNCTION_15_11();
      v1741 = *v1691;
      v1743 = *(*v1742 + 680);
      v1744 = v1741;
      v1743(v1741);

      v1746 = (v1734)(v1745);
      sub_1E3E60364();
      OUTLINED_FUNCTION_7_16();
      v1747 = *(*v1746 + 872);
      v1748 = v1741;
      v1747(v1741);
      goto LABEL_68;
    default:
      OUTLINED_FUNCTION_111();
      (*(v1749 + 608))(0);
      v1750 = *(MEMORY[0x1E69DDCE0] + 16);
      v4255 = *MEMORY[0x1E69DDCE0];
      v4256 = v1750;
      v4257 = 0;
      (*(*v2 + 560))(&v4255);
      v1751 = [objc_opt_self() clearColor];
      OUTLINED_FUNCTION_9_2();
      (*(v1752 + 752))();
      OUTLINED_FUNCTION_9_2();
      v1754 = *(v1753 + 1920);
      v1754();
      sub_1E3D308B8();

      (v1754)(v1755);
      OUTLINED_FUNCTION_2_1();
      (*(v1756 + 512))(18);

      OUTLINED_FUNCTION_9_2();
      v1758 = *(v1757 + 1800);
      v1758();
      OUTLINED_FUNCTION_2_1();
      (*(v1759 + 1936))(2);

      (v1758)(v1760);
      OUTLINED_FUNCTION_2_1();
      v1761 = OUTLINED_FUNCTION_15_8();
      v1762(v1761);

      (v1758)(v1763);
      OUTLINED_FUNCTION_41_47();
      v1764 = MEMORY[0x1E69E6810];
      OUTLINED_FUNCTION_110_10();
      OUTLINED_FUNCTION_19_93();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_18_87();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_17_102();
      v1765 = sub_1E3C3DE00();
      LOBYTE(v4221[1]) = v4230[1];
      v1773 = OUTLINED_FUNCTION_0_222(v1765, v1766, v1767, v1768, v1769, v1770, v1771, v1772, v2941, v3068, v3193, v3320, v3446, v3572, v3696, v3824, v3948, v4080, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4230[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      sub_1E3C2FCB8(v1773, v1774, v1775, v1776, v1777, v1778, v1764, v1779);
      v1788 = OUTLINED_FUNCTION_49_43(v1780, v1781, v1782, v1783, v1784, v1785, v1786, v1787, v3009, v3136, v3260, v3387, v3513, v3639, v3765, v3891, v4019, v4147, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      memcpy(v1788, v1789, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1798 = OUTLINED_FUNCTION_37_53(v1790, v1791, v1792, v1793, v1794, v1795, v1796, v1797, v3010, v3137, v3261, v3388, v3514, v3640, v3766, v3892, v4020, v4148, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v1799(v1798);

      (v1758)(v1800);
      OUTLINED_FUNCTION_2_1();
      v1801 = OUTLINED_FUNCTION_10_7();
      v1802(v1801);

      (v1758)(v1803);
      OUTLINED_FUNCTION_70_23();
      LOBYTE(v4242[0]) = 21;
      OUTLINED_FUNCTION_62_27();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_29_67();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_57_26();
      OUTLINED_FUNCTION_1_199(v1804, v1805, v1806, v1807, v1808, v1809, v1810, v1811, v3011, v3138, v3262, v3389, v3515, v3641, v3767, v3893, v4021, v4149, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      OUTLINED_FUNCTION_82_15();
      sub_1E3C2FCB8(v1812, v1813, v1814, v1815, v1816, v1817, &qword_1F5D549D8, v1818);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1827 = OUTLINED_FUNCTION_30_60(v1819, v1820, v1821, v1822, v1823, v1824, v1825, v1826, v3012, v3139, v3263, v3390, v3516, v3642, v3768, v3894, v4022, v4150, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v1828(v1827);

      (v1758)(v1829);
      __dst[0] = 10;
      LOBYTE(v4252) = 11;
      LOBYTE(v4249[0]) = 11;
      LOBYTE(v4242[0]) = 6;
      OUTLINED_FUNCTION_62_27();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_29_67();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_57_26();
      OUTLINED_FUNCTION_1_199(v1830, v1831, v1832, v1833, v1834, v1835, v1836, v1837, v3013, v3140, v3264, v3391, v3517, v3643, v3769, v3895, v4023, v4151, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      OUTLINED_FUNCTION_82_15();
      sub_1E3C2FCB8(v1838, v1839, v1840, v1841, v1842, v1843, &qword_1F5D54AF8, v1844);
      OUTLINED_FUNCTION_7_160();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1853 = OUTLINED_FUNCTION_45_48(v1845, v1846, v1847, v1848, v1849, v1850, v1851, v1852, v3014, v3141, v3265, v3392, v3518, v3644, v3770, v3896, v4024, v4152, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v1854(v1853, 54);

      (v1758)(v1855);
      OUTLINED_FUNCTION_108_11();
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      OUTLINED_FUNCTION_44_43();
      *v4242 = xmmword_1E42CC970;
      *v4243 = xmmword_1E42CC980;
      LOBYTE(v4244) = 0;
      *v4239 = v4255;
      *v4240 = v4256;
      LOBYTE(v4241) = v4257;
      type metadata accessor for UIEdgeInsets();
      v4025 = v1856;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_20_77();
      v1865 = OUTLINED_FUNCTION_1_199(v1857, v1858, v1859, v1860, v1861, v1862, v1863, v1864, v3015, v3142, v3266, v3393, v3519, v3645, 0, 0x4041000000000000, v4025, v4153, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      OUTLINED_FUNCTION_113_10(v1865, v1866, v1867, v1868, v1869);
      OUTLINED_FUNCTION_48_35(v1870, v1871, v1872, v1873, v1874, v1875, v1876, v1877, v3016, v3143, v3267, v3394, v3520, v3646, v3771, v3897, v4026, v4154, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1886 = OUTLINED_FUNCTION_13_119(v1878, v1879, v1880, v1881, v1882, v1883, v1884, v1885, v3017, v3144, v3268, v3395, v3521, v3647, v3772, v3898, v4027, v4155, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v1887(v1886);

      (v1758)(v1888);
      v1889 = *sub_1E3E60700();
      *__dst = v1889;
      *&v4252 = 0;
      v4249[0] = 0;
      v1890 = sub_1E3755B54();
      v1891 = v1889;
      v1895 = OUTLINED_FUNCTION_112_11(v1892, v1893, v1894);
      OUTLINED_FUNCTION_11_12();
      v1896 = sub_1E4206F24();
      v1897 = [v1896 colorWithAlphaComponent_];

      v1898 = sub_1E3E5F2F8(v1895, v1897);
      v4242[0] = v1898;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_89_11();
      v1899 = sub_1E3C3DE00();
      v4234 = v4235[0];
      OUTLINED_FUNCTION_1_199(v1899, v1900, v1901, v1902, v1903, v1904, v1905, v1906, v3018, v3145, v3269, v3396, v3522, v3648, v3773, v3899, v4028, v4156, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      OUTLINED_FUNCTION_82_15();
      sub_1E3C2FCB8(v1907, v1908, v1909, v1910, v1911, v1912, v1890, v1913);
      v1914 = *v4245;
      v1915 = *&v4245[8];
      v1916 = v4246[0];
      v1917 = v4246[1];
      v1918 = v4247;
      v1919 = v4248;
      *__dst = *v4245;
      *&__dst[8] = *&v4245[8];
      v4227[0] = v4246[0];
      v4227[1] = v4246[1];
      v4228 = v4247;
      v4229 = v4248;
      v1920 = OUTLINED_FUNCTION_18();
      v1928 = OUTLINED_FUNCTION_45_48(v1920, v1921, v1922, v1923, v1924, v1925, v1926, v1927, v3019, v3146, v3270, v3397, v3523, v3649, v3774, v3900, v4029, v4157, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v1929(v1928, 21);

      OUTLINED_FUNCTION_9_2();
      v1931 = v1930 + 1824;
      v1932 = *(v1930 + 1824);
      v1932();
      v1933 = v1931;
      OUTLINED_FUNCTION_2_1();
      (*(v1934 + 1792))(4);

      (v1932)(v1935);
      OUTLINED_FUNCTION_2_1();
      v1936 = OUTLINED_FUNCTION_15_8();
      v1937(v1936);

      (v1932)(v1938);
      *__dst = 1;
      OUTLINED_FUNCTION_120_7();
      v1939 = MEMORY[0x1E69E6810];
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_19_93();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_18_87();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_17_102();
      v1940 = sub_1E3C3DE00();
      LOBYTE(v4221[1]) = v4230[1];
      v1948 = OUTLINED_FUNCTION_0_222(v1940, v1941, v1942, v1943, v1944, v1945, v1946, v1947, v3020, v3147, v3271, v3398, v3524, v3650, v3775, v3901, v4030, v4158, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4230[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      sub_1E3C2FCB8(v1948, v1949, v1950, v1951, v1952, v1953, v1939, v1954);
      v1963 = OUTLINED_FUNCTION_49_43(v1955, v1956, v1957, v1958, v1959, v1960, v1961, v1962, v3021, v3148, v3272, v3399, v3525, v3651, v3776, v3902, v4031, v4159, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      memcpy(v1963, v1964, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v1973 = OUTLINED_FUNCTION_37_53(v1965, v1966, v1967, v1968, v1969, v1970, v1971, v1972, v3022, v3149, v3273, v3400, v3526, v3652, v3777, v3903, v4032, v4160, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v1974(v1973);

      (v1932)(v1975);
      OUTLINED_FUNCTION_2_1();
      v1976 = OUTLINED_FUNCTION_10_7();
      v1977(v1976);

      (v1932)(v1978);
      OUTLINED_FUNCTION_70_23();
      LOBYTE(v4242[0]) = 11;
      LOBYTE(v4239[0]) = 15;
      v1979 = sub_1E3C3DE00();
      LOBYTE(v4235[0]) = v4236[0];
      v1987 = OUTLINED_FUNCTION_1_199(v1979, v1980, v1981, v1982, v1983, v1984, v1985, v1986, v3023, v1933, v3274, v3401, v1932, v3653, v3778, v3904, v4033, v4161, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      OUTLINED_FUNCTION_113_10(v1987, v1988, v1989, v1990, v1991);
      OUTLINED_FUNCTION_36_48();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2000 = OUTLINED_FUNCTION_30_60(v1992, v1993, v1994, v1995, v1996, v1997, v1998, v1999, v3024, v3150, v3275, v3402, v3527, v3654, v3779, v3905, v4034, v4162, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v2001(v2000);

      (v1932)(v2002);
      *__dst = *sub_1E3E5FD88();
      *&v4252 = 0;
      v4249[0] = 0;
      v2003 = *__dst;
      v2004 = sub_1E4206F24();
      OUTLINED_FUNCTION_11_12();
      v2005 = sub_1E4206F24();
      v2006 = [v2005 colorWithAlphaComponent_];

      v2007 = sub_1E3E5F2F8(v2004, v2006);
      v4242[0] = v2007;
      v3276 = sub_1E3E5FDEC();
      v4239[0] = *v3276;
      v2008 = v4239[0];
      v2009 = sub_1E3C3DE00();
      v4235[0] = v4236[0];
      v2017 = OUTLINED_FUNCTION_1_199(v2009, v2010, v2011, v2012, v2013, v2014, v2015, v2016, v3025, v3151, v3276, v3403, v3528, v3655, v3780, v3906, v4035, v4163, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      sub_1E3C2FCB8(v2017, v2018, v2019, v2020, v4235, v4239, v1890, v2021);
      v2022 = *v4245;
      v2023 = *&v4245[8];
      v2024 = v4246[0];
      v2025 = v4246[1];
      v2026 = v4247;
      v2027 = v4248;
      *__dst = *v4245;
      *&__dst[8] = *&v4245[8];
      v4227[0] = v4246[0];
      v4227[1] = v4246[1];
      v4228 = v4247;
      v4229 = v4248;
      v2028 = OUTLINED_FUNCTION_18();
      v2036 = OUTLINED_FUNCTION_45_48(v2028, v2029, v2030, v2031, v2032, v2033, v2034, v2035, v3026, v3152, v3277, v3404, v3529, v3656, v3781, v3907, v4036, v4164, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v2037(v2036, 21);

      v3530();
      sub_1E3952C88();
      OUTLINED_FUNCTION_23_69();
      OUTLINED_FUNCTION_44_43();
      *v4242 = xmmword_1E42CC990;
      *v4243 = *v3782;
      LOBYTE(v4244) = 0;
      sub_1E3952C88();
      OUTLINED_FUNCTION_16_93(v2038, v2039, v2040, v2041);
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_20_77();
      v2050 = OUTLINED_FUNCTION_1_199(v2042, v2043, v2044, v2045, v2046, v2047, v2048, v2049, v3027, v3153, v3278, v3405, 0x4046000000000000, 0x4041000000000000, v3782[0], v3782[1], v4037, v4165, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      OUTLINED_FUNCTION_113_10(v2050, v2051, v2052, v2053, v2054);
      OUTLINED_FUNCTION_48_35(v2055, v2056, v2057, v2058, v2059, v2060, v2061, v2062, v3028, v3154, v3279, v3406, v3531, v3657, v3783, v3908, v4038, v4166, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, *__dst);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2071 = OUTLINED_FUNCTION_13_119(v2063, v2064, v2065, v2066, v2067, v2068, v2069, v2070, v3029, v3155, v3280, v3407, v3532, v3658, v3784, v3909, v4039, v4167, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v2072(v2071);

      OUTLINED_FUNCTION_9_2();
      v2074 = v2073 + 1848;
      v2075 = *(v2073 + 1848);
      v2075();
      v2076 = v2074;
      OUTLINED_FUNCTION_2_1();
      (*(v2077 + 1792))(4);

      (v2075)(v2078);
      OUTLINED_FUNCTION_2_1();
      v2079 = OUTLINED_FUNCTION_15_8();
      v2080(v2079);

      (v2075)(v2081);
      *__dst = 1;
      OUTLINED_FUNCTION_120_7();
      v2082 = MEMORY[0x1E69E6810];
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_19_93();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_18_87();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_17_102();
      v2083 = sub_1E3C3DE00();
      LOBYTE(v4221[1]) = v4230[1];
      v2091 = OUTLINED_FUNCTION_0_222(v2083, v2084, v2085, v2086, v2087, v2088, v2089, v2090, v3030, v3156, v3281, v3408, v3533, v3659, v3785, v3910, v4040, v4168, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4230[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      sub_1E3C2FCB8(v2091, v2092, v2093, v2094, v2095, v2096, v2082, v2097);
      v2106 = OUTLINED_FUNCTION_49_43(v2098, v2099, v2100, v2101, v2102, v2103, v2104, v2105, v3031, v3157, v3282, v3409, v3534, v3660, v3786, v3911, v4041, v4169, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      memcpy(v2106, v2107, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2116 = OUTLINED_FUNCTION_37_53(v2108, v2109, v2110, v2111, v2112, v2113, v2114, v2115, v3032, v3158, v3283, v3410, v3535, v3661, v3787, v3912, v4042, v4170, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v2117(v2116);

      (v2075)(v2118);
      OUTLINED_FUNCTION_2_1();
      v2119 = OUTLINED_FUNCTION_10_7();
      v2120(v2119);

      (v2075)(v2121);
      OUTLINED_FUNCTION_70_23();
      LOBYTE(v4242[0]) = 11;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_29_67();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_57_26();
      OUTLINED_FUNCTION_1_199(v2122, v2123, v2124, v2125, v2126, v2127, v2128, v2129, v3033, v2076, v3284, v3411, v3536, v3662, v2075, v3913, v4043, v4171, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      OUTLINED_FUNCTION_82_15();
      sub_1E3C2FCB8(v2130, v2131, v2132, v2133, v2134, v2135, &qword_1F5D549D8, v2136);
      OUTLINED_FUNCTION_36_48();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v2145 = OUTLINED_FUNCTION_30_60(v2137, v2138, v2139, v2140, v2141, v2142, v2143, v2144, v3034, v3159, v3285, v3412, v3537, v3663, v3788, v3914, v4044, v4172, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v2146(v2145);

      (v2075)(v2147);
      *__dst = *v3286;
      *&v4252 = 0;
      v4249[0] = 0;
      v2148 = *__dst;
      v2152 = OUTLINED_FUNCTION_112_11(v2149, v2150, v2151);
      OUTLINED_FUNCTION_11_12();
      v2153 = sub_1E4206F24();
      v2154 = [v2153 colorWithAlphaComponent_];

      v2155 = sub_1E3E5F2F8(v2152, v2154);
      v4242[0] = v2155;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_89_11();
      v2156 = sub_1E3C3DE00();
      v4234 = v4235[0];
      OUTLINED_FUNCTION_1_199(v2156, v2157, v2158, v2159, v2160, v2161, v2162, v2163, v3035, v3160, v3286, v3413, v3538, v3664, v3789, v3915, v4045, v4173, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      OUTLINED_FUNCTION_82_15();
      sub_1E3C2FCB8(v2164, v2165, v2166, v2167, v2168, v2169, v1890, v2170);
      v2171 = *v4245;
      v2172 = *&v4245[8];
      v2173 = v4246[0];
      v2174 = v4246[1];
      v2175 = v4247;
      v2176 = v4248;
      *__dst = *v4245;
      *&__dst[8] = *&v4245[8];
      v4227[0] = v4246[0];
      v4227[1] = v4246[1];
      v4228 = v4247;
      v4229 = v4248;
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_3_11();
      v2185 = OUTLINED_FUNCTION_45_48(v2177, v2178, v2179, v2180, v2181, v2182, v2183, v2184, v3036, v3161, v3287, v3414, v3539, v3665, v3790, v3916, v4046, v4174, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      v2186(v2185, 21);

      v3791();
      *__dst = xmmword_1E42CC9A0;
      *v4227 = xmmword_1E42B9700;
      LOBYTE(v4228) = 0;
      OUTLINED_FUNCTION_44_43();
      *v4242 = *v3540;
      *v4243 = xmmword_1E42CC9B0;
      LOBYTE(v4244) = 0;
      v2187 = v4047;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_55_5();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_14_7();
      OUTLINED_FUNCTION_1_199(v2188, v2189, v2190, v2191, v2192, v2193, v2194, v2195, v3037, v3162, v3288, v3415, v3540[0], v3540[1], v3791, v3917, v4047, v4175, v4206, v4207, v4208, v4209, v4210, v4211, v4212, v4213, v4214, v4215, v4216[0], v4216[1], v4217, v4218, v4219, v4220, v4221[0], v4221[1], v4222, v4223, v4224, v4225, __dst[0]);
      OUTLINED_FUNCTION_82_15();
      goto LABEL_67;
  }
}

void sub_1E3D2E28C(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 208);
  *(v1 + 208) = a1;
  OUTLINED_FUNCTION_5_0(v1 + 208, v11);
  v4 = *(v1 + 208);
  if (v4 == 20)
  {
    if (v3 == 20)
    {
      return;
    }

LABEL_5:
    sub_1E3D247D8();
    return;
  }

  if (v3 == 20)
  {
    goto LABEL_5;
  }

  v5 = sub_1E3D241D0(v4);
  v7 = v6;
  if (v5 == sub_1E3D241D0(v3) && v7 == v8)
  {

    return;
  }

  v10 = sub_1E42079A4();

  if ((v10 & 1) == 0)
  {
    goto LABEL_5;
  }
}

void (*sub_1E3D2E374(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  OUTLINED_FUNCTION_5_0(v1 + 208, v3);
  *(v3 + 32) = *(v1 + 208);
  return sub_1E3D2E3E4;
}

void sub_1E3D2E3E4(uint64_t a1)
{
  v1 = *a1;
  sub_1E3D2E28C(*(*a1 + 32));

  free(v1);
}

uint64_t sub_1E3D2E424(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return sub_1E3D2E460(v1);
}

uint64_t sub_1E3D2E460(char a1)
{
  OUTLINED_FUNCTION_81_18();
  *(v1 + 208) = v3;
  swift_beginAccess();
  *(v1 + 208) = a1;
  v4 = sub_1E3C2F9A0();

  sub_1E3D247D8();

  return v4;
}

uint64_t sub_1E3D2E504()
{
  OUTLINED_FUNCTION_81_18();
  *(v0 + 208) = v1;
  return sub_1E3C2F9A0();
}

double sub_1E3D2E520(double a1, double a2)
{
  OUTLINED_FUNCTION_8();
  v4 += 240;
  v5 = *v4;
  (*v4)();
  OUTLINED_FUNCTION_8();
  (*(v6 + 256))();

  (v5)(v7);
  OUTLINED_FUNCTION_15_11();
  (*(*v2 + 360))(*&a2, 0);

  return result;
}

void sub_1E3D2E620()
{

  v1 = *(v0 + 184);
}

uint64_t sub_1E3D2E698()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3D2E718()
{
  v0 = sub_1E3D2E698();

  return MEMORY[0x1EEE6BDC0](v0, 209, 7);
}

uint64_t getEnumTagSinglePayload for CardCollectionLayoutType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CardCollectionLayoutType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

void sub_1E3D2E8D4()
{
  v0 = *(MEMORY[0x1E69DDCE0] + 16);
  v406 = *MEMORY[0x1E69DDCE0];
  v407 = v0;
  v408 = 0;
  OUTLINED_FUNCTION_8();
  (*(v1 + 560))(&v406);
  v2 = sub_1E3755B54();
  OUTLINED_FUNCTION_11_12();
  sub_1E4206F24();
  OUTLINED_FUNCTION_13();
  (*(v3 + 752))();
  OUTLINED_FUNCTION_13();
  (*(v4 + 1920))();
  sub_1E3D308B8();

  OUTLINED_FUNCTION_13();
  v6 = *(v5 + 1824);
  v6();
  OUTLINED_FUNCTION_2_1();
  v7 = OUTLINED_FUNCTION_15_8();
  v8(v7);

  (v6)(v9);
  LOBYTE(v347) = 0;
  v397 = 0;
  v398 = 0;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_96_3();
  v10 = OUTLINED_FUNCTION_95_16();
  v18 = OUTLINED_FUNCTION_94_16(v10, v11, v12, v13, v14, v15, v16, v17, v268, v287, v306, v326, 1, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, SBYTE8(v376));
  OUTLINED_FUNCTION_68_23(v18, v19, v20, v21, v22, v23, v24, v25, v269, v288, v307, v327, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, *(&v376 + 1), v377, *(&v377 + 1), v378, v379, v380, *(&v380 + 1), v381, *(&v381 + 1), v382, v383, v384, *(&v384 + 1), v385, *(&v385 + 1), v386, v387, v388, *(&v388 + 1), v389);
  v34 = OUTLINED_FUNCTION_117_10(v26, v27, v28, v29, v30, v31, v32, v33, v270, v289, v308, v328, v346);
  memcpy(v34, v35, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52_38();
  v36();

  (v6)(v37);
  OUTLINED_FUNCTION_2_1();
  v38 = OUTLINED_FUNCTION_10_7();
  v39(v38);

  (v6)(v40);
  OUTLINED_FUNCTION_2_1();
  (*(v41 + 1792))(10);

  (v6)(v42);
  OUTLINED_FUNCTION_2_1();
  (*(v43 + 1936))(2);

  (v6)(v44);
  OUTLINED_FUNCTION_85_15();
  LOBYTE(v346) = v45;
  LOBYTE(v397) = 21;
  LOBYTE(v392) = 17;
  LOBYTE(v388) = 15;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_87_12();
  v46 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_69_23(v46, v47, v48, v49, v50, v51, v52, v53, v271, v290, v309, v329, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376);
  OUTLINED_FUNCTION_93_13(v54, v55, v272, v291, v310, v330, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, *(&v376 + 1), v377, *(&v377 + 1), v378, v379, v380, *(&v380 + 1), v381, *(&v381 + 1), v382, v383, v384, *(&v384 + 1), v385, *(&v385 + 1), v386, v387, v388, *(&v388 + 1), v389, *(&v389 + 1), v390, v391, v392, v393, v394);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_33_54();
  v56();

  (v6)(v57);
  OUTLINED_FUNCTION_133_6();
  OUTLINED_FUNCTION_126_6(v58);
  OUTLINED_FUNCTION_109_7(v59, v60, v61, v62);
  v392 = v63;
  v393 = v64;
  v394 = v65;
  v395 = v66;
  v396 = 0;
  v388 = xmmword_1E42CC9C0;
  v389 = xmmword_1E429D540;
  LOBYTE(v390) = 0;
  sub_1E3952C88();
  *&v384 = v67;
  *(&v384 + 1) = v68;
  *&v385 = v69;
  *(&v385 + 1) = v70;
  LOBYTE(v386) = 0;
  type metadata accessor for UIEdgeInsets();
  v72 = v71;
  v73 = sub_1E3C3DE00();
  v376 = v380;
  v377 = v381;
  LOBYTE(v378) = v382;
  v81 = OUTLINED_FUNCTION_34_57(v73, v74, v75, v76, v77, v78, v79, v80, v273, v292, v311, v331, v399);
  sub_1E3C2FCB8(v81, v82, v83, v84, &v376, &v384, v72, v85);
  v94 = OUTLINED_FUNCTION_117_10(v86, v87, v88, v89, v90, v91, v92, v93, v274, v293, v312, v332, v346);
  memcpy(v94, v95, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_69();
  v96();

  v294 = sub_1E3E5FDEC();
  v97 = *v294;
  OUTLINED_FUNCTION_11_12();
  v98 = sub_1E4206F24();
  v99 = [v98 colorWithAlphaComponent_];

  v100 = sub_1E3E5F2F8(v97, v99);
  v6();
  v397 = 0;
  v392 = 0;
  *&v388 = v100;
  v333 = v97;
  v313 = v100;
  sub_1E3C3DE00();
  *&v380 = v384;
  v101 = sub_1E3C3DE00();
  v405[0] = v376;
  v109 = OUTLINED_FUNCTION_34_57(v101, v102, v103, v104, v105, v106, v107, v108, v275, v294, v313, v333, v97);
  sub_1E3C2FCB8(v109, v110, v111, v112, &v380, v405, v2, v113);
  v114 = v399;
  v115 = v400;
  v116 = v401;
  v117 = v402;
  v118 = v403;
  v119 = v404;
  LOBYTE(v346) = v399;
  v347 = v400;
  v348 = v401;
  v349 = v402;
  v350 = v403;
  v351 = v404;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v128 = OUTLINED_FUNCTION_118_9(v120, v121, v122, v123, v124, v125, v126, v127, v276, v295, v314, v334, v346);
  v129(v128);

  OUTLINED_FUNCTION_13();
  v131 = *(v130 + 1848);
  v131();
  OUTLINED_FUNCTION_2_1();
  v132 = OUTLINED_FUNCTION_15_8();
  v133(v132);

  (v131)(v134);
  LOBYTE(v347) = 0;
  v397 = 0;
  v398 = 0;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_96_3();
  v135 = OUTLINED_FUNCTION_95_16();
  v143 = OUTLINED_FUNCTION_94_16(v135, v136, v137, v138, v139, v140, v141, v142, v277, v296, v315, v335, 1, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, SBYTE8(v376));
  OUTLINED_FUNCTION_68_23(v143, v144, v145, v146, v147, v148, v149, v150, v278, v297, v316, v336, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, *(&v376 + 1), v377, *(&v377 + 1), v378, v379, v380, *(&v380 + 1), v381, *(&v381 + 1), v382, v383, v384, *(&v384 + 1), v385, *(&v385 + 1), v386, v387, v388, *(&v388 + 1), v389);
  v159 = OUTLINED_FUNCTION_117_10(v151, v152, v153, v154, v155, v156, v157, v158, v279, v298, v317, v337, v346);
  memcpy(v159, v160, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52_38();
  v161();

  (v131)(v162);
  OUTLINED_FUNCTION_2_1();
  v163 = OUTLINED_FUNCTION_10_7();
  v164(v163);

  (v131)(v165);
  LOBYTE(v346) = 21;
  LOBYTE(v397) = 21;
  LOBYTE(v392) = 3;
  LOBYTE(v388) = 15;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_87_12();
  v166 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_69_23(v166, v167, v168, v169, v170, v171, v172, v173, v280, v299, v318, v338, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376);
  OUTLINED_FUNCTION_93_13(v174, v175, v281, v300, v319, v339, v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, *(&v376 + 1), v377, *(&v377 + 1), v378, v379, v380, *(&v380 + 1), v381, *(&v381 + 1), v382, v383, v384, *(&v384 + 1), v385, *(&v385 + 1), v386, v387, v388, *(&v388 + 1), v389, *(&v389 + 1), v390, v391, v392, v393, v394);
  OUTLINED_FUNCTION_83_12();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_33_54();
  v176();

  (v131)(v177);
  LOBYTE(v397) = 11;
  LOBYTE(v392) = 11;
  LOBYTE(v388) = 5;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_87_12();
  v178 = sub_1E3C3DE00();
  LOBYTE(v405[0]) = v376;
  v186 = OUTLINED_FUNCTION_34_57(v178, v179, v180, v181, v182, v183, v184, v185, v282, v301, v320, v340, 4);
  sub_1E3C2FCB8(v186, v187, v188, v189, &v380, v405, &qword_1F5D54AF8, v190);
  OUTLINED_FUNCTION_83_12();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v191 + 1600))(&v346, 54, v192 & 1, &qword_1F5D54AF8);

  (v131)(v193);
  OUTLINED_FUNCTION_84_0();
  sub_1E3952C88();
  OUTLINED_FUNCTION_126_6(v194);
  OUTLINED_FUNCTION_109_7(v195, v196, v197, v198);
  v392 = v199;
  v393 = v200;
  v394 = v201;
  v395 = v202;
  v396 = 0;
  __asm { FMOV            V1.2D, #16.0 }

  v388 = xmmword_1E42CC9D0;
  v389 = _Q1;
  LOBYTE(v390) = 0;
  v384 = v406;
  v385 = v407;
  LOBYTE(v386) = v408;
  v208 = sub_1E3C3DE00();
  v376 = v380;
  v377 = v381;
  LOBYTE(v378) = v382;
  v216 = OUTLINED_FUNCTION_34_57(v208, v209, v210, v211, v212, v213, v214, v215, v283, v302, v321, v341, v346);
  sub_1E3C2FCB8(v216, v217, v218, v219, &v376, &v384, v72, v220);
  v229 = OUTLINED_FUNCTION_117_10(v221, v222, v223, v224, v225, v226, v227, v228, v284, v303, v322, v342, v346);
  memcpy(v229, v230, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_69();
  v231();

  (v131)(v232);
  v346 = *sub_1E3E5FD88();
  v397 = 0;
  v392 = 0;
  v233 = v346;
  v234 = sub_1E4206F24();
  OUTLINED_FUNCTION_11_12();
  v235 = sub_1E4206F24();
  v236 = [v235 colorWithAlphaComponent_];

  v237 = sub_1E3E5F2F8(v234, v236);
  *&v388 = v237;
  *&v384 = *v304;
  v238 = v384;
  v239 = sub_1E3C3DE00();
  *&v376 = v380;
  v247 = OUTLINED_FUNCTION_34_57(v239, v240, v241, v242, v243, v244, v245, v246, v285, v304, v323, v343, v346);
  sub_1E3C2FCB8(v247, v248, v249, v250, &v376, &v384, v2, v251);
  v252 = v399;
  v253 = v400;
  v254 = v401;
  v255 = v402;
  v256 = v403;
  v257 = v404;
  v346 = v399;
  v347 = v400;
  v348 = v401;
  v349 = v402;
  v350 = v403;
  v351 = v404;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_13();
  v266 = OUTLINED_FUNCTION_118_9(v258, v259, v260, v261, v262, v263, v264, v265, v286, v305, v324, v344, v346);
  v267(v266);
}

double sub_1E3D2F414()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v2 += 240;
  v3 = *v2;
  (*v2)();
  sub_1E3D308B8();

  (v3)(v4);
  OUTLINED_FUNCTION_98_13();
  v430[0] = v5;
  v430[1] = v6;
  v430[2] = v7;
  v430[3] = v8;
  v431 = 0;
  (*(*v0 + 560))(v430);

  OUTLINED_FUNCTION_9_2();
  v10 = *(v9 + 2040);
  v11 = v10();
  v12 = [v11 textLayout];

  [v12 setTextStyle_];
  v13 = v10();
  v14 = [v13 textLayout];

  [v14 setTextTransform_];
  v10();
  OUTLINED_FUNCTION_133_6();
  [v1 setMargin_];

  OUTLINED_FUNCTION_9_2();
  v16 = *(v15 + 1824);
  v16();
  OUTLINED_FUNCTION_2_1();
  v17 = OUTLINED_FUNCTION_15_8();
  v18(v17);

  (v16)(v19);
  LOBYTE(v391) = 0;
  v425 = 0;
  LOBYTE(v426) = 0;
  v20 = MEMORY[0x1E69E6810];
  sub_1E3C2FC98();
  v418 = v420;
  v419 = v421;
  sub_1E3C3DE00();
  *&v407 = v410;
  BYTE8(v407) = BYTE8(v410);
  sub_1E3C3DE00();
  *&v401 = v404;
  BYTE8(v401) = BYTE8(v404);
  v21 = sub_1E3C3DE00();
  *&v395 = v398;
  BYTE8(v395) = BYTE8(v398);
  v29 = OUTLINED_FUNCTION_74_17(v21, v22, v23, v24, v25, v26, v27, v28, v346, v363, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, 1);
  sub_1E3C2FCB8(v29, &v418, &v407, &v401, &v395, &v425, v20, v30);
  v39 = OUTLINED_FUNCTION_104_11(v31, v32, v33, v34, v35, v36, v37, v38, v347, v364, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390);
  memcpy(v39, v40, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v49 = OUTLINED_FUNCTION_72_2(v41, v42, v43, v44, v45, v46, v47, v48, v348, v365, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390);
  v50(v49, 63);

  (v16)(v51);
  OUTLINED_FUNCTION_2_1();
  v52 = OUTLINED_FUNCTION_10_7();
  v53(v52);

  (v16)(v54);
  LOBYTE(v425) = 17;
  LOBYTE(v420) = 19;
  sub_1E3C2FC98();
  LOBYTE(v410) = v418;
  sub_1E3C3DE00();
  LOBYTE(v404) = v407;
  v55 = sub_1E3C3DE00();
  LOBYTE(v398) = v401;
  v63 = OUTLINED_FUNCTION_74_17(v55, v56, v57, v58, v59, v60, v61, v62, v349, v366, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, 22);
  sub_1E3C2FCB8(v63, &v410, &v404, &v398, &v425, &v420, &qword_1F5D549D8, v64);
  OUTLINED_FUNCTION_54_31();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v73 = OUTLINED_FUNCTION_72_2(v65, v66, v67, v68, v69, v70, v71, v72, v350, v367, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390);
  v74(v73, 48);

  (v16)(v75);
  OUTLINED_FUNCTION_2_1();
  (*(v76 + 1792))(10);

  (v16)(v77);
  OUTLINED_FUNCTION_2_1();
  (*(v78 + 1936))(2);

  v80 = (v16)(v79);
  v368 = sub_1E3E5FDEC();
  v81 = *v368;
  v82 = *(*v80 + 680);
  v83 = *v368;
  v82(v81);

  (v16)(v84);
  OUTLINED_FUNCTION_2_1();
  (*(v85 + 2008))(1);

  v86 = objc_opt_self();
  [v86 isSUIEnabled];
  v16();
  sub_1E3952C88();
  v425 = v87;
  v426 = v88;
  v427 = v89;
  v428 = v90;
  v429 = 0;
  OUTLINED_FUNCTION_8();
  (*(v91 + 160))();

  OUTLINED_FUNCTION_9_2();
  v93 = *(v92 + 1848);
  v93();
  OUTLINED_FUNCTION_2_1();
  v94 = OUTLINED_FUNCTION_15_8();
  v95(v94);

  (v93)(v96);
  LOBYTE(v391) = 0;
  v420 = 0;
  LOBYTE(v421) = 0;
  v97 = MEMORY[0x1E69E6810];
  sub_1E3C2FC98();
  *&v410 = v418;
  BYTE8(v410) = v419;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_102();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_101_0();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_119_8();
  v106 = OUTLINED_FUNCTION_74_17(v98, v99, v100, v101, v102, v103, v104, v105, v351, v368, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, 1);
  sub_1E3C2FCB8(v106, &v410, &v404, &v398, &v384, &v420, v97, v107);
  v116 = OUTLINED_FUNCTION_104_11(v108, v109, v110, v111, v112, v113, v114, v115, v352, v369, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390);
  memcpy(v116, v117, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v126 = OUTLINED_FUNCTION_72_2(v118, v119, v120, v121, v122, v123, v124, v125, v353, v370, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390);
  v127(v126, 63);

  (v93)(v128);
  OUTLINED_FUNCTION_2_1();
  v129 = OUTLINED_FUNCTION_10_7();
  v130(v129);

  (v93)(v131);
  OUTLINED_FUNCTION_2_1();
  (*(v132 + 2008))(1);

  (v93)(v133);
  LOBYTE(v390) = 15;
  LOBYTE(v420) = 17;
  LOBYTE(v418) = 17;
  LOBYTE(v410) = 3;
  sub_1E3C3DE00();
  LOBYTE(v404) = v407;
  v134 = sub_1E3C3DE00();
  LOBYTE(v398) = v401;
  v142 = OUTLINED_FUNCTION_74_17(v134, v135, v136, v137, v138, v139, v140, v141, v354, v371, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390);
  sub_1E3C2FCB8(v142, &v420, &v418, &v404, &v410, &v398, &qword_1F5D549D8, v143);
  OUTLINED_FUNCTION_54_31();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v152 = OUTLINED_FUNCTION_72_2(v144, v145, v146, v147, v148, v149, v150, v151, v355, v372, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390);
  v153(v152, 48);

  v155 = (v93)(v154);
  sub_1E3E5FD88();
  OUTLINED_FUNCTION_121_10();
  v156 = *(*v155 + 680);
  v157 = &qword_1F5D549D8;
  v156(&qword_1F5D549D8);

  LODWORD(v97) = [v86 isSUIEnabled];
  v93();
  sub_1E3952C88();
  if (v97)
  {
    v420 = v158;
    v421 = v159;
    v422 = v160;
    v423 = v161;
    v424 = 0;
    OUTLINED_FUNCTION_8();
    (*(v162 + 160))(&v420);
  }

  else
  {
    v390 = v158;
    v391 = v159;
    v392 = v160;
    v393 = v161;
    v394 = 0;
    sub_1E3952C88();
    v420 = v163;
    v421 = v164;
    v422 = v165;
    v423 = v166;
    v424 = 0;
    sub_1E3952C88();
    OUTLINED_FUNCTION_88_14(v167, v168, v169, v170);
    type metadata accessor for UIEdgeInsets();
    v172 = v171;
    sub_1E3C3DE00();
    v407 = v410;
    v408 = v411;
    v409 = v412;
    sub_1E3C3DE00();
    v401 = v404;
    v402 = v405;
    v403 = v406;
    v173 = sub_1E3C3DE00();
    v395 = v398;
    v396 = v399;
    v397 = v400;
    v181 = OUTLINED_FUNCTION_74_17(v173, v174, v175, v176, v177, v178, v179, v180, v356, v373, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390);
    sub_1E3C2FCB8(v181, &v420, &v418, &v407, &v401, &v395, v172, v182);
    v191 = OUTLINED_FUNCTION_104_11(v183, v184, v185, v186, v187, v188, v189, v190, v357, v374, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390);
    memcpy(v191, v192, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_17_69();
    v193();
  }

  OUTLINED_FUNCTION_111();
  v194 += 225;
  v195 = *v194;
  v196 = (*v194)();
  OUTLINED_FUNCTION_111();
  v197 += 261;
  v198 = *v197;
  (*v197)();
  OUTLINED_FUNCTION_80_15();
  if (v203)
  {
    goto LABEL_6;
  }

  v201 = sub_1E3D241D0(v199);
  v203 = v201 == 0x4C65646F73697065 && v202 == 0xED000070756B636FLL;
  if (!v203)
  {
    v204 = sub_1E42079A4();

    if (v204)
    {
      goto LABEL_14;
    }

LABEL_6:
    v200 = 4;
    goto LABEL_15;
  }

LABEL_14:
  v200 = 3;
LABEL_15:
  (*(*v196 + 2056))(v200, 0);

  v206 = (v195)(v205);
  v198();
  OUTLINED_FUNCTION_80_15();
  if (v203)
  {
    goto LABEL_17;
  }

  sub_1E3D241D0(v207);
  OUTLINED_FUNCTION_79_18();
  if (v209)
  {
    v211 = v210 == 0xED000070756B636FLL;
  }

  else
  {
    v211 = 0;
  }

  if (!v211)
  {
    v212 = sub_1E42079A4();

    if (v212)
    {
      goto LABEL_25;
    }

LABEL_17:
    v208 = 4;
    goto LABEL_26;
  }

LABEL_25:
  v208 = 3;
LABEL_26:
  (*(*v206 + 2080))(v208, 0);

  (v195)(v213);
  OUTLINED_FUNCTION_2_1();
  v214 = OUTLINED_FUNCTION_10_7();
  v215(v214);

  (v195)(v216);
  OUTLINED_FUNCTION_2_1();
  (*(v217 + 2008))(1);

  (v195)(v218);
  OUTLINED_FUNCTION_85_15();
  LOBYTE(v390) = v219;
  LOBYTE(v418) = 21;
  LOBYTE(v410) = 21;
  LOBYTE(v407) = 14;
  sub_1E3C3DE00();
  LOBYTE(v401) = v404;
  v220 = sub_1E3C3DE00();
  LOBYTE(v395) = v398;
  v228 = OUTLINED_FUNCTION_74_17(v220, v221, v222, v223, v224, v225, v226, v227, v356, v373, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390);
  sub_1E3C2FCB8(v228, &v418, &v410, &v401, &v407, &v395, &qword_1F5D549D8, v229);
  OUTLINED_FUNCTION_54_31();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v238 = OUTLINED_FUNCTION_72_2(v230, v231, v232, v233, v234, v235, v236, v237, v358, v375, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390);
  v239(v238, 48);

  (v195)(v240);
  OUTLINED_FUNCTION_15_11();
  v241 = *v376;
  v243 = *(*v242 + 680);
  v244 = *v376;
  v243(v241);

  [v86 isSUIEnabled];
  OUTLINED_FUNCTION_116_9();
  v195();
  if (v241)
  {
    sub_1E3952C88();
    OUTLINED_FUNCTION_88_14(v245, v246, v247, v248);
    OUTLINED_FUNCTION_8();
    (*(v249 + 160))(&v418);
  }

  else
  {
    sub_1E3952C58();
    v390 = v250;
    v391 = v251;
    v392 = v252;
    v393 = v253;
    v394 = 0;
    sub_1E3952C88();
    OUTLINED_FUNCTION_88_14(v254, v255, v256, v257);
    sub_1E3952C88();
    *&v410 = v258;
    *(&v410 + 1) = v259;
    *&v411 = v260;
    *(&v411 + 1) = v261;
    v412 = 0;
    type metadata accessor for UIEdgeInsets();
    v263 = v262;
    sub_1E3C3DE00();
    v404 = v407;
    v405 = v408;
    v406 = v409;
    sub_1E3C3DE00();
    v398 = v401;
    v399 = v402;
    v400 = v403;
    v264 = sub_1E3C3DE00();
    LOBYTE(v388) = v397;
    v272 = OUTLINED_FUNCTION_74_17(v264, v265, v266, v267, v268, v269, v270, v271, v359, v376, v380, v381, v382, v383, v395, *(&v395 + 1), v396, *(&v396 + 1), v388, v389, v390);
    sub_1E3C2FCB8(v272, &v418, &v410, &v404, &v398, &v384, v263, v273);
    v282 = OUTLINED_FUNCTION_104_11(v274, v275, v276, v277, v278, v279, v280, v281, v360, v377, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390);
    memcpy(v282, v283, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_17_69();
    v284();
  }

  OUTLINED_FUNCTION_111();
  v285 += 237;
  v286 = *v285;
  (*v285)();
  OUTLINED_FUNCTION_30();
  v287 = OUTLINED_FUNCTION_15_8();
  v288(v287);

  (v286)(v289);
  v390 = 1;
  LOBYTE(v391) = 0;
  *&v410 = 0;
  BYTE8(v410) = 0;
  v290 = MEMORY[0x1E69E6810];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_102();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_101_0();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_119_8();
  v291 = sub_1E3C3DE00();
  LOBYTE(v381) = v383;
  v299 = OUTLINED_FUNCTION_74_17(v291, v292, v293, v294, v295, v296, v297, v298, v359, v376, v382, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390);
  sub_1E3C2FCB8(v299, &v404, &v398, &v384, &v380, &v410, v290, v300);
  v309 = OUTLINED_FUNCTION_104_11(v301, v302, v303, v304, v305, v306, v307, v308, v361, v378, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390);
  memcpy(v309, v310, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52_38();
  v311();

  (v286)(v312);
  OUTLINED_FUNCTION_2_1();
  v313 = OUTLINED_FUNCTION_10_7();
  v314(v313);

  v316 = (v198)(v315);
  v317 = 17;
  if (v316 != 20)
  {
    sub_1E3D241D0(v316);
    OUTLINED_FUNCTION_79_18();
    if (v203 && v318 == 0xED000070756B636FLL)
    {

      v317 = 21;
    }

    else
    {
      v320 = sub_1E42079A4();

      if (v320)
      {
        v317 = 21;
      }

      else
      {
        v317 = 17;
      }
    }
  }

  (v286)(v316);
  LOBYTE(v390) = 17;
  LOBYTE(v410) = v317;
  LOBYTE(v407) = v317;
  sub_1E3C3DE00();
  LOBYTE(v401) = v404;
  sub_1E3C3DE00();
  LOBYTE(v395) = v398;
  v321 = sub_1E3C3DE00();
  LOBYTE(v382) = v384;
  v329 = OUTLINED_FUNCTION_74_17(v321, v322, v323, v324, v325, v326, v327, v328, v362, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390);
  sub_1E3C2FCB8(v329, &v410, &v407, &v401, &v395, &v382, &qword_1F5D549D8, v330);
  OUTLINED_FUNCTION_54_31();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_33_54();
  v331();

  (v286)(v332);
  OUTLINED_FUNCTION_2_1();
  (*(v333 + 2008))(1);

  v335 = (v286)(v334);
  sub_1E3E60700();
  OUTLINED_FUNCTION_81_12();
  v336 = *(*v335 + 680);
  v337 = &qword_1F5D549D8;
  v336(&qword_1F5D549D8);

  [v86 isSUIEnabled];
  v286();
  sub_1E3952C88();
  v413 = v338;
  v414 = v339;
  v415 = v340;
  v416 = v341;
  v417 = 0;
  OUTLINED_FUNCTION_8();
  (*(v342 + 160))();

  OUTLINED_FUNCTION_9_2();
  (*(v343 + 1968))();
  v390 = 0;
  v391 = 0;
  v392 = 0;
  v393 = 0x401C000000000000;
  v394 = 0;
  OUTLINED_FUNCTION_26_0();
  (*(v344 + 160))(&v390);

  return result;
}

double sub_1E3D308B8()
{
  v2 = v0;
  OUTLINED_FUNCTION_8();
  v3 += 240;
  v4 = *v3;
  (*v3)();
  OUTLINED_FUNCTION_2_1();
  (*(v5 + 512))(2);

  (v4)(v6);
  OUTLINED_FUNCTION_2_1();
  (*(v7 + 1808))(3);

  v9 = (v4)(v8);
  sub_1E3E60A14();
  OUTLINED_FUNCTION_7_16();
  v10 = *(*v9 + 872);
  v11 = v1;
  v10(v1);

  v13 = (v4)(v12);
  v14 = sub_1E418A524();
  v15 = OUTLINED_FUNCTION_105_0(v14);
  (*(*v13 + 440))(v15, 0);

  (v4)(v16);
  OUTLINED_FUNCTION_98_13();
  v39[0] = v17;
  v39[1] = v18;
  v39[2] = v19;
  v39[3] = v20;
  v40 = 0;
  (*(*v2 + 560))(v39);

  v22 = (v4)(v21);
  sub_1E3E6097C();
  OUTLINED_FUNCTION_7_16();
  v23 = *(*v22 + 1832);
  v24 = v1;
  v23(v1);

  (v4)(v25);
  v26 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  [v26 setShadowOffset_];
  [v26 setShadowBlurRadius_];
  sub_1E3755B54();
  v27 = sub_1E4206F24();
  [v26 setShadowColor_];

  OUTLINED_FUNCTION_13();
  (*(v28 + 608))(v26);

  (v4)(v29);
  v30.n128_f64[0] = OUTLINED_FUNCTION_84_0();
  v37[0] = j__OUTLINED_FUNCTION_7_78(v30);
  v37[1] = v31;
  v37[2] = v32;
  v37[3] = v33;
  v38 = 0;
  (*(*v2 + 1856))(v37);

  (v4)(v34);
  OUTLINED_FUNCTION_2_1();
  (*(v35 + 2000))(0);

  return result;
}

void OUTLINED_FUNCTION_32_61(double a1, double a2, double a3, double a4)
{
  *&STACK[0x310] = a1;
  *&STACK[0x318] = a2;
  *&STACK[0x320] = a3;
  *&STACK[0x328] = a4;
  LOBYTE(STACK[0x330]) = 0;
}

void *OUTLINED_FUNCTION_48_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x310], 0xE9uLL);
}

void OUTLINED_FUNCTION_68_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = *(v66 - 152);
  *(v66 - 176) = *(v66 - 160);
  *(v66 - 168) = v68;

  sub_1E3C2FCB8(&a13, &a61, &a49, v66 - 144, v66 - 176, &a65, v65, &STACK[0x220]);
}

uint64_t OUTLINED_FUNCTION_86_10()
{

  return sub_1E3C3DE00();
}

void OUTLINED_FUNCTION_88_14(double a1, double a2, double a3, double a4)
{
  *(v4 - 248) = a1;
  *(v4 - 240) = a2;
  *(v4 - 232) = a3;
  *(v4 - 224) = a4;
  *(v4 - 216) = 0;
}

uint64_t OUTLINED_FUNCTION_94_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  *(v44 - 144) = a43;
  *(v44 - 136) = a44;

  return sub_1E3C3DE00();
}

uint64_t OUTLINED_FUNCTION_95_16()
{

  return sub_1E3C3DE00();
}

void OUTLINED_FUNCTION_109_7(double a1, double a2, double a3, double a4)
{
  *&STACK[0x200] = a2;
  *&STACK[0x208] = a3;
  *&STACK[0x210] = a4;
  LOBYTE(STACK[0x218]) = 0;

  sub_1E3952C88();
}

uint64_t OUTLINED_FUNCTION_110_10()
{

  return sub_1E3C2FC98();
}

void OUTLINED_FUNCTION_111_8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);

  sub_1E3C2FCB8(a1, a2, a3, a4, v32 - 240, va, v31, a5);
}

uint64_t OUTLINED_FUNCTION_112_11(__n128 a1, __n128 a2, __n128 a3)
{

  return sub_1E4206F24();
}

void OUTLINED_FUNCTION_113_10(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{

  sub_1E3C2FCB8(a1, a2, a3, a4, &STACK[0x250], &STACK[0x2B0], v5, a5);
}

id OUTLINED_FUNCTION_114_8(void *a1)
{

  return sub_1E3E5F2F8(v1, a1);
}

void OUTLINED_FUNCTION_127_8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  sub_1E3C2FCB8(a1, a2, a3, &STACK[0x280], &STACK[0x220], &STACK[0x2E0], v4, a4);
}

uint64_t OUTLINED_FUNCTION_128_8(uint64_t a1)
{

  return sub_1E42079A4();
}

double OUTLINED_FUNCTION_130_12(__n128 a1)
{
  a1.n128_u64[0] = 0.5;

  return j__OUTLINED_FUNCTION_7_78(a1);
}

void OUTLINED_FUNCTION_131_11()
{

  sub_1E3952C88();
}

void OUTLINED_FUNCTION_132_9()
{

  sub_1E3952C88();
}

void OUTLINED_FUNCTION_133_6()
{

  sub_1E3952C88();
}

id sub_1E3D310A4()
{
  v0 = sub_1E3D310E8();
  v1 = [v0 imageProxy];

  return v1;
}

id sub_1E3D310E8()
{
  v1 = OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___imageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DF740]) init];
    [v4 setVuiContentMode_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1E3D31190(void *a1)
{
  v2 = sub_1E3D310E8();
  [v2 setImageProxy_];
}

id sub_1E3D311E8()
{
  v1 = OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___blurView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___blurView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___blurView);
  }

  else
  {
    v4 = [objc_opt_self() effectWithStyle_];
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = [objc_opt_self() blackColor];
    v7 = [v6 colorWithAlphaComponent_];

    [v5 setBackgroundColor_];
    v8 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_1E3D31310()
{
  v1 = sub_1E3D31388();
  v2 = OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView_isDimmed;
  swift_beginAccess();
  v3 = 0.0;
  if (*(v0 + v2))
  {
    v3 = 1.0;
  }

  [v1 setAlpha_];
}

id sub_1E3D31388()
{
  v1 = OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___dimmingView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___dimmingView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___dimmingView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v5 = [objc_opt_self() blackColor];
    v6 = [v5 colorWithAlphaComponent_];

    [v4 setBackgroundColor_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setUserInteractionEnabled_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1E3D31490(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView_isDimmed;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1E3D31310();
}

char *sub_1E3D31514()
{
  OUTLINED_FUNCTION_12_1();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___imageView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___blurView] = 0;
  v1[OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView_isDimmed] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___dimmingView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView_layout] = v0;
  v8.receiver = v1;
  v8.super_class = ObjectType;

  v3 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v4 = sub_1E3D310E8();
  [v3 insertSubview:v4 atIndex:{0, v8.receiver, v8.super_class}];

  v5 = sub_1E3D311E8();
  [v3 insertSubview:v5 aboveSubview:*&v3[OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___imageView]];

  v6 = sub_1E3D31388();
  [v3 insertSubview:v6 aboveSubview:*&v3[OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___blurView]];

  [*&v3[OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___dimmingView] setAlpha_];

  return v3;
}

uint64_t sub_1E3D3165C()
{
  OUTLINED_FUNCTION_12_1();
  swift_getObjectType();

  *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___imageView) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___blurView) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView_isDimmed) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerBackgroundView____lazy_storage___dimmingView) = 0;
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1E3D31700()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = sub_1E3D310E8();
  [v0 bounds];
  [v1 setFrame_];

  v2 = sub_1E3D311E8();
  [v0 bounds];
  [v2 setFrame_];

  v3 = sub_1E3D31388();
  [v0 bounds];
  [v3 setFrame_];
}

uint64_t *sub_1E3D31904()
{
  type metadata accessor for ViewLayout();
  v0[13] = sub_1E3C2F968();
  v0[14] = sub_1E3C2F968();
  type metadata accessor for ImageLayout();
  v0[15] = sub_1E3BD61D8();
  type metadata accessor for TextLayout();
  v0[16] = sub_1E383BCC0();
  v0[17] = sub_1E383BCC0();
  v0[18] = sub_1E383BCC0();
  v0[19] = 0x4000000000000000;
  v1 = sub_1E3C2F9A0();

  *&__dst[0] = sub_1E3952C28(2.0);
  *(&__dst[0] + 1) = v2;
  *&__dst[1] = v3;
  *(&__dst[1] + 1) = v4;
  LOBYTE(__dst[2]) = 0;
  type metadata accessor for UIEdgeInsets();
  v6 = v5;
  sub_1E3C2FC98();
  *v295 = *v270;
  *v296 = *&v270[16];
  LOBYTE(v297) = v270[32];
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_4_175();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_37_0();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_1_200();
  v7 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_9_117(v7, v8, v9, v10, v11, v12, v13, v14, v205, v216, v226, v237, v248, v259, *v270, *&v270[8], *&v270[16], *&v270[24], *&v270[32], *&v270[40], *&v270[48], *&v270[56], *&v270[64], *&v270[72], *&v270[80], *&v270[88], *&v270[96], *&v270[104], *&v270[112], *&v270[120], *&v270[128], *&v270[136], *&v270[144], *&v270[152], *&v270[160], *&v270[168], *&v270[176], *&v270[184], *&v270[192], *&v270[200], *&v270[208], *&v270[216], *&v270[224], *&v270[232], v271, v272, v273, v274, v275, v276, v277);
  sub_1E3C2FCB8(__dst, v295, &v291, &v287, &v283, &v271, v6, __src);
  OUTLINED_FUNCTION_8_126(v15, v16, v17, v18, v19, v20, v21, v22, v206, v217, v227, v238, v249, v260, *v270, *&v270[8], *&v270[16], *&v270[24], *&v270[32], *&v270[40], *&v270[48], *&v270[56], *&v270[64], *&v270[72], *&v270[80], *&v270[88], *&v270[96], *&v270[104], *&v270[112], *&v270[120], *&v270[128], *&v270[136], *&v270[144], *&v270[152], *&v270[160], *&v270[168], *&v270[176], *&v270[184], *&v270[192], *&v270[200], *&v270[208], *&v270[216], *&v270[224], *&v270[232], v271, v272, v273, v274, v275, v276, v277, *(&v277 + 1), v278, v279, v280, v281, *&__dst[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v31 = OUTLINED_FUNCTION_5_57(v23, v24, v25, v26, v27, v28, v29, v30, v207, v218, v228, v239, v250, v261, *v270, *&v270[8], *&v270[16], *&v270[24], *&v270[32], *&v270[40], *&v270[48], *&v270[56], *&v270[64], *&v270[72], *&v270[80], *&v270[88], *&v270[96], *&v270[104], *&v270[112], *&v270[120], *&v270[128], *&v270[136], *&v270[144], *&v270[152], *&v270[160], *&v270[168], *&v270[176], *&v270[184], *&v270[192], *&v270[200], *&v270[208], *&v270[216], *&v270[224], *&v270[232], v271, v272, v273, v274, v275, v276, v277, *(&v277 + 1), v278, v279, v280, v281, __dst[0]);
  v32(v31, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1E42A73A0;
  result = v1[16];
  *(v33 + 32) = result;
  v35 = v1[17];
  *(v33 + 40) = v35;
  v36 = v1[18];
  *(v33 + 48) = v36;
  if ((v33 & 0xC000000000000001) == 0)
  {
    v37 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      if (v37 > 2)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_4:
  v251 = v6;
  v262 = v1;
  v208 = result;

  v229 = v35;

  v240 = v36;

  v38 = 0;
  v39 = MEMORY[0x1E69E7DE0];
  do
  {
    if ((v33 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x1E6911E60](v38, v33);
    }

    else
    {
      v40 = *(v33 + 8 * v38 + 32);
    }

    ++v38;
    (*(*v40 + 2056))(1, 0);
    OUTLINED_FUNCTION_36();
    (*(v41 + 1984))(0);
    OUTLINED_FUNCTION_36();
    (*(v42 + 2008))(1);

    v43 = *sub_1E3E5FD88();
    v44 = *(*v40 + 680);
    v45 = v43;
    v44(v43);

    LOBYTE(__dst[0]) = 3;
    v270[0] = 6;
    sub_1E3C2FC98();
    LOBYTE(v293) = v295[0];
    sub_1E3C3DE00();
    LOBYTE(v289) = v291;
    sub_1E3C3DE00();
    LOBYTE(v285) = v287;
    v46 = sub_1E3C3DE00();
    LOBYTE(v277) = v283;
    v54 = OUTLINED_FUNCTION_3_169(v46, v47, v48, v49, v50, v51, v52, v53, v208, v219, v229, v240, v251, v262, *v270, *&v270[8], *&v270[16], *&v270[24], *&v270[32], *&v270[40], *&v270[48], *&v270[56], *&v270[64], *&v270[72], *&v270[80], *&v270[88], *&v270[96], *&v270[104], *&v270[112], *&v270[120], *&v270[128], *&v270[136], *&v270[144], *&v270[152], *&v270[160], *&v270[168], *&v270[176], *&v270[184], *&v270[192], *&v270[200], *&v270[208], *&v270[216], *&v270[224], *&v270[232], v271, v272, v273, v274, v275, v276, v277, *(&v277 + 1), v278, v279, v280, v281, __dst[0]);
    sub_1E3C2FCB8(v54, v55, v56, v57, v58, v59, &qword_1F5D549D8, v60);
    LODWORD(__dst[0]) = __src[0];
    WORD2(__dst[0]) = WORD2(__src[0]);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    v62 = *(v61 + 1600);
    v71 = OUTLINED_FUNCTION_5_57(v63, v64, v65, v66, v67, v68, v69, v70, v209, v220, v230, v241, v252, v263, *v270, *&v270[8], *&v270[16], *&v270[24], *&v270[32], *&v270[40], *&v270[48], *&v270[56], *&v270[64], *&v270[72], *&v270[80], *&v270[88], *&v270[96], *&v270[104], *&v270[112], *&v270[120], *&v270[128], *&v270[136], *&v270[144], *&v270[152], *&v270[160], *&v270[168], *&v270[176], *&v270[184], *&v270[192], *&v270[200], *&v270[208], *&v270[216], *&v270[224], *&v270[232], v271, v272, v273, v274, v275, v276, v277, *(&v277 + 1), v278, v279, v280, v281, __dst[0]);
    v62(v71, 48);
    OUTLINED_FUNCTION_36();
    (*(v72 + 1792))(10);
    OUTLINED_FUNCTION_36();
    (*(v73 + 1720))(7);
    *&__dst[0] = 0;
    BYTE8(__dst[0]) = 1;
    v270[8] = 0;
    sub_1E3C2FC98();
    v293 = v295[0];
    LOBYTE(v294) = v295[1];
    sub_1E3C3DE00();
    v289 = v291;
    LOBYTE(v290) = v292;
    sub_1E3C3DE00();
    v285 = v287;
    LOBYTE(v286) = v288;
    v74 = sub_1E3C3DE00();
    BYTE8(v277) = v284;
    v82 = OUTLINED_FUNCTION_3_169(v74, v75, v76, v77, v78, v79, v80, v81, v210, v221, v231, v242, v253, v264, 0x4072C00000000000, *&v270[8], *&v270[16], *&v270[24], *&v270[32], *&v270[40], *&v270[48], *&v270[56], *&v270[64], *&v270[72], *&v270[80], *&v270[88], *&v270[96], *&v270[104], *&v270[112], *&v270[120], *&v270[128], *&v270[136], *&v270[144], *&v270[152], *&v270[160], *&v270[168], *&v270[176], *&v270[184], *&v270[192], *&v270[200], *&v270[208], *&v270[216], *&v270[224], *&v270[232], v271, v272, v273, v274, v275, v276, v283, *(&v277 + 1), v278, v279, v280, v281, __dst[0]);
    sub_1E3C2FCB8(v82, v83, v84, v85, v86, v87, v39, v88);
    memcpy(__dst, __src, 0x59uLL);
    v89 = OUTLINED_FUNCTION_18();
    v97 = OUTLINED_FUNCTION_5_57(v89, v90, v91, v92, v93, v94, v95, v96, v211, v222, v232, v243, v254, v265, *v270, *&v270[8], *&v270[16], *&v270[24], *&v270[32], *&v270[40], *&v270[48], *&v270[56], *&v270[64], *&v270[72], *&v270[80], *&v270[88], *&v270[96], *&v270[104], *&v270[112], *&v270[120], *&v270[128], *&v270[136], *&v270[144], *&v270[152], *&v270[160], *&v270[168], *&v270[176], *&v270[184], *&v270[192], *&v270[200], *&v270[208], *&v270[216], *&v270[224], *&v270[232], v271, v272, v273, v274, v275, v276, v277, *(&v277 + 1), v278, v279, v280, v281, __dst[0]);
    v62(v97, 4);
  }

  while (v38 != 3);
  swift_setDeallocating();
  sub_1E377D458();
  if (TVAppFeature.isEnabled.getter(20, v98, v99))
  {
    (*(*v208 + 1936))(2);
  }

  *v295 = xmmword_1E42CC340;
  *v296 = 0u;
  LOBYTE(v297) = 0;
  v102 = v251;
  if (TVAppFeature.isEnabled.getter(20, v100, v101))
  {
    sub_1E3952C78();
    *(&v104 + 1) = v103;
    *(&v106 + 1) = v105;
  }

  else
  {
    v104 = xmmword_1E42AE100;
    v106 = 0uLL;
  }

  __dst[0] = v104;
  __dst[1] = v106;
  LOBYTE(__dst[2]) = 0;
  sub_1E3952C78();
  *v270 = v107;
  *&v270[8] = v108;
  *&v270[16] = v109;
  *&v270[24] = v110;
  v270[32] = 0;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_4_175();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_37_0();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_1_200();
  sub_1E3C2FCB8(&v291, &v287, &v283, v295, __dst, v270, v251, __src);
  OUTLINED_FUNCTION_8_126(v111, v112, v113, v114, v115, v116, v117, v118, 0, 0x4044000000000000, v229, v240, v251, v262, *v270, *&v270[8], *&v270[16], *&v270[24], *&v270[32], *&v270[40], *&v270[48], *&v270[56], *&v270[64], *&v270[72], *&v270[80], *&v270[88], *&v270[96], *&v270[104], *&v270[112], *&v270[120], *&v270[128], *&v270[136], *&v270[144], *&v270[152], *&v270[160], *&v270[168], *&v270[176], *&v270[184], *&v270[192], *&v270[200], *&v270[208], *&v270[216], *&v270[224], *&v270[232], v271, v272, v273, v274, v275, v276, v277, *(&v277 + 1), v278, v279, v280, v281, *&__dst[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v127 = OUTLINED_FUNCTION_5_57(v119, v120, v121, v122, v123, v124, v125, v126, v212, v223, v233, v244, v255, v266, *v270, *&v270[8], *&v270[16], *&v270[24], *&v270[32], *&v270[40], *&v270[48], *&v270[56], *&v270[64], *&v270[72], *&v270[80], *&v270[88], *&v270[96], *&v270[104], *&v270[112], *&v270[120], *&v270[128], *&v270[136], *&v270[144], *&v270[152], *&v270[160], *&v270[168], *&v270[176], *&v270[184], *&v270[192], *&v270[200], *&v270[208], *&v270[216], *&v270[224], *&v270[232], v271, v272, v273, v274, v275, v276, v277, *(&v277 + 1), v278, v279, v280, v281, __dst[0]);
  v128(v127, 1);
  *v270 = *v213;
  memset(&v270[16], 0, 17);
  sub_1E3952C78();
  OUTLINED_FUNCTION_7_161(v129, v130, v131, v132);
  sub_1E3952C78();
  OUTLINED_FUNCTION_6_146(v133, v134, v135, v136);
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_37_0();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_1_200();
  v137 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_9_117(v137, v138, v139, v140, v141, v142, v143, v144, v213[0], v213[1], v234, v245, v256, v267, *v270, *&v270[8], *&v270[16], *&v270[24], *&v270[32], *&v270[40], *&v270[48], *&v270[56], *&v270[64], *&v270[72], *&v270[80], *&v270[88], *&v270[96], *&v270[104], *&v270[112], *&v270[120], *&v270[128], *&v270[136], *&v270[144], *&v270[152], *&v270[160], *&v270[168], *&v270[176], *&v270[184], *&v270[192], *&v270[200], *&v270[208], *&v270[216], *&v270[224], *&v270[232], v271, v272, v273, v274, v275, v276, v277);
  sub_1E3C2FCB8(&v287, &v283, &v271, v270, &v293, &v291, v102, __dst);
  memcpy(v270, __dst, 0xE9uLL);
  v145 = OUTLINED_FUNCTION_18();
  (*(*v246 + 1600))(v270, 1, v145 & 1, v102);
  v146 = *sub_1E3E5FDEC();
  v147 = *(*v246 + 680);
  v148 = v146;
  v147(v146);
  v149 = v268;
  OUTLINED_FUNCTION_36();
  (*(v150 + 1808))(1);
  *&v277 = 0x404E000000000000;
  BYTE8(v277) = 0;
  v153 = TVAppFeature.isEnabled.getter(20, v151, v152);
  v156 = 0x4053000000000000;
  if ((v153 & 1) == 0)
  {
    v156 = 0x404E000000000000;
  }

  v271 = v156;
  LOBYTE(v272) = 0;
  v157 = TVAppFeature.isEnabled.getter(20, v154, v155);
  v160 = 0x4049000000000000;
  if ((v157 & 1) == 0)
  {
    v160 = 0x4040000000000000;
  }

  v299 = v160;
  v300 = 0;
  v161 = TVAppFeature.isEnabled.getter(20, v158, v159);
  v162 = 0x404B000000000000;
  if (v161)
  {
    v162 = 0x404F000000000000;
  }

  __src[0] = v162;
  LOBYTE(__src[1]) = 0;
  v163 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  v295[0] = *&__dst[0];
  LOBYTE(v295[1]) = BYTE8(__dst[0]);
  sub_1E3C3DE00();
  v291 = v293;
  LOBYTE(v292) = v294;
  sub_1E3C2FCB8(&v277, v295, &v291, &v271, &v299, __src, v163, v270);
  memcpy(__src, v270, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v165 = *(v164 + 1600);
  (v165)(__src, 2, v166 & 1, v163);
  v295[0] = sub_1E3952CA4();
  v295[1] = v167;
  v296[0] = v168;
  v296[1] = v169;
  LOBYTE(v297) = 0;
  TVAppFeature.isEnabled.getter(20, v170, v171);
  v172 = sub_1E3952CA4();
  OUTLINED_FUNCTION_7_161(v172, v173, v174, v175);
  TVAppFeature.isEnabled.getter(20, v176, v177);
  v178 = sub_1E3952CA4();
  OUTLINED_FUNCTION_6_146(v178, v179, v180, v181);
  TVAppFeature.isEnabled.getter(20, v182, v183);
  *&__dst[0] = sub_1E3952CA4();
  *(&__dst[0] + 1) = v184;
  *&__dst[1] = v185;
  *(&__dst[1] + 1) = v186;
  LOBYTE(__dst[2]) = 0;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_37_0();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_1_200();
  sub_1E3C2FCB8(v295, &v287, &v283, &v293, &v291, __dst, v102, __src);
  OUTLINED_FUNCTION_8_126(v187, v188, v189, v190, v191, v192, v193, v194, v214, v224, v235, v246, v257, v268, *v270, *&v270[8], *&v270[16], *&v270[24], *&v270[32], *&v270[40], *&v270[48], *&v270[56], *&v270[64], *&v270[72], *&v270[80], *&v270[88], *&v270[96], *&v270[104], *&v270[112], *&v270[120], *&v270[128], *&v270[136], *&v270[144], *&v270[152], *&v270[160], *&v270[168], *&v270[176], *&v270[184], *&v270[192], *&v270[200], *&v270[208], *&v270[216], *&v270[224], *&v270[232], v271, v272, v273, v274, v275, v276, v277, *(&v277 + 1), v278, v279, v280, v281, *&__dst[0]);
  v195 = OUTLINED_FUNCTION_18();
  v203 = OUTLINED_FUNCTION_5_57(v195, v196, v197, v198, v199, v200, v201, v202, v215, v225, v236, v247, v258, v269, *v270, *&v270[8], *&v270[16], *&v270[24], *&v270[32], *&v270[40], *&v270[48], *&v270[56], *&v270[64], *&v270[72], *&v270[80], *&v270[88], *&v270[96], *&v270[104], *&v270[112], *&v270[120], *&v270[128], *&v270[136], *&v270[144], *&v270[152], *&v270[160], *&v270[168], *&v270[176], *&v270[184], *&v270[192], *&v270[200], *&v270[208], *&v270[216], *&v270[224], *&v270[232], v271, v272, v273, v274, v275, v276, v277, *(&v277 + 1), v278, v279, v280, v281, __dst[0]);
  v165(v203, 0);
  sub_1E3C37CBC(v149[13], 239);
  sub_1E3C37CBC(v149[14], 240);
  sub_1E3C37CBC(v149[15], 39);
  v204 = v149[16];
  sub_1E3C37CBC(v204, 23);
  sub_1E3C37CBC(v204, 25);
  sub_1E3C37CBC(v149[17], 237);

  return v149;
}

uint64_t sub_1E3D323D8()
{
  v0 = sub_1E3C5C6B8();

  return MEMORY[0x1EEE6BDC0](v0, 160, 7);
}

id LanguageAwareString.attributedString.getter()
{
  v1 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString;
  v2 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___attributedString);
  }

  else
  {
    v4 = sub_1E3D325DC(*(v0 + OBJC_IVAR___AMPLanguageAwareString_baseAttributedString), *(v0 + OBJC_IVAR___AMPLanguageAwareString_paragraphs), *(v0 + OBJC_IVAR___AMPLanguageAwareString_string), *(v0 + OBJC_IVAR___AMPLanguageAwareString_string + 8));
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1E3D32554@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

id sub_1E3D325DC(void *a1, unint64_t a2, uint64_t a3, int64_t a4)
{
  if (a1)
  {

    return a1;
  }

  else
  {
    if (sub_1E32AE9B0(a2) != 1 || !sub_1E32AE9B0(a2))
    {
      goto LABEL_13;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      goto LABEL_37;
    }

    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      for (i = *(a2 + 32); ; i = MEMORY[0x1E6911E60](0, a2))
      {
        v4 = i;
        [i directionalRangeValue];

        v10 = MEMORY[0x1E6910A60](a3, a4);
        if (!v31 && v33 == v10)
        {
          break;
        }

LABEL_13:
        sub_1E3280A90(0, &unk_1EE23AFE0, 0x1E696AD40);
        OUTLINED_FUNCTION_112();

        v19 = a4;
        a4 = v4;
        v30 = sub_1E3763FC8(a3, v19);
        a3 = sub_1E32AE9B0(a2);
        v20 = 0;
        v21 = *MEMORY[0x1E69DB688];
        while (1)
        {
          if (a3 == v20)
          {
            v18 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];

            return v18;
          }

          if ((a2 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x1E6911E60](v20, a2);
          }

          else
          {
            if (v20 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_36;
            }

            v22 = *(a2 + 8 * v20 + 32);
          }

          v23 = v22;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          a4 = a2;
          [v22 directionalRangeValue];
          if (v35 == -1)
          {
            if (qword_1EE28AF78 != -1)
            {
              OUTLINED_FUNCTION_4_176();
              swift_once();
            }

            v24 = &qword_1EE2AA880;
          }

          else if (v35 == 1)
          {
            if (qword_1EE28AF80 != -1)
            {
              OUTLINED_FUNCTION_5_152();
              swift_once();
            }

            v24 = &qword_1ECF715F0;
          }

          else
          {
            if (v35)
            {
              goto LABEL_39;
            }

            if (_MergedGlobals_25 != -1)
            {
              OUTLINED_FUNCTION_3_170();
              swift_once();
            }

            v24 = &qword_1EE2AA8C8;
          }

          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          [v30 addAttribute:v21 value:*v24 range:{v31, v33}];

          ++v20;
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        ;
      }

      v11 = sub_1E3D3648C(v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34380, qword_1E42BF480);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      v13 = *MEMORY[0x1E69DB688];
      *(inited + 32) = *MEMORY[0x1E69DB688];
      *(inited + 64) = sub_1E3280A90(0, &qword_1EE23B298, 0x1E69DB7D0);
      *(inited + 40) = v11;
      type metadata accessor for Key(0);
      OUTLINED_FUNCTION_0_183(&qword_1EE23B100);

      v14 = v13;
      v15 = v11;
      OUTLINED_FUNCTION_75();
      v16 = sub_1E4205CB4();
      v17 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v18 = sub_1E3D36664(a3, a4, v16);

      return v18;
    }

    else
    {
      __break(1u);
LABEL_39:
      sub_1E42074B4();

      OUTLINED_FUNCTION_29_68();
      v32 = v26;
      v34 = v25;
      v27 = sub_1E4207944();
      MEMORY[0x1E69109E0](v27);

      result = OUTLINED_FUNCTION_34_58("Fatal error", v28, v29, v32, v34, "VideosUI/LanguageAwareString.swift");
      __break(1u);
    }
  }

  return result;
}

uint64_t LanguageAwareString.string.getter()
{
  v1 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string);

  return v1;
}

uint64_t sub_1E3D32B70@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x130))();
  *a2 = result;
  return result;
}

id LanguageAwareString.__allocating_init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v7 = a4;
  OUTLINED_FUNCTION_33_55();
  v8 = OUTLINED_FUNCTION_124();
  return LanguageAwareString.init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(v8, v9, v5, v7, v6);
}

id sub_1E3D32CB8(uint64_t *a1, void (*a2)(void, unint64_t), uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v8 = v3;
    v9 = sub_1E32822E0(a1, a2, a3);
    a2(MEMORY[0x1E69E6158], v9);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v10 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
    v11 = OUTLINED_FUNCTION_19_94();
    v12 = *(v3 + v4);
    *(v8 + v4) = v11;
    v6 = v11;

    v5 = 0;
  }

  v13 = v5;
  return v6;
}

uint64_t sub_1E3D32E00@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x148))();
  *a2 = result;
  return result;
}

id LanguageAwareString.newlinesCollapsedToSpace.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace;
  v5 = *(v3 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace);
  if (v5)
  {
    v6 = *(v3 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___newlinesCollapsedToSpace);
  }

  else
  {
    v7 = v3;
    sub_1E32822E0(a1, a2, a3);
    sub_1E42071F4();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v8 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
    v9 = OUTLINED_FUNCTION_19_94();
    v10 = *(v3 + v4);
    *(v7 + v4) = v9;
    v6 = v9;

    v5 = 0;
  }

  v11 = v5;
  return v6;
}

uint64_t sub_1E3D33060@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x160))();
  *a2 = result;
  return result;
}

id LanguageAwareString.trimmed.getter()
{
  v1 = v0;
  v2 = sub_1E41FDEC4();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed;
  v4 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___trimmed);
  }

  else
  {

    v6 = sub_1E41FDE94();
    sub_1E32822E0(v6, v7, v8);
    v9 = sub_1E42071E4();
    v11 = v10;
    v12 = OUTLINED_FUNCTION_74();
    v13(v12);

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v14 = static LanguageAwareString.alwaysGenerateAttributedString;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v15 = static LanguageAwareString.keepStatisticsOnLanguageComponents;
    v16 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
    v17 = LanguageAwareString.init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(v9, v11, 0, v14, v15);
    v18 = *(v1 + v3);
    *(v1 + v3) = v17;
    v5 = v17;

    v4 = 0;
  }

  v19 = v4;
  return v5;
}

uint64_t sub_1E3D33348@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x178))();
  *a2 = result;
  return result;
}

id sub_1E3D33454(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  a3(a1, a2);
  sub_1E3280A90(0, &unk_1EE23AE30, 0x1E696B098);
  OUTLINED_FUNCTION_19_3();
  sub_1E42062A4();
  OUTLINED_FUNCTION_50();

  return a1;
}

uint64_t LanguageAwareString.fullRange.getter()
{
  v1 = v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange;
  if (*(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange + 16) != 1)
  {
    return *v1;
  }

  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C0))();
  result = 0;
  *v1 = 0;
  *(v1 + 1) = v2;
  v1[16] = 0;
  return result;
}

uint64_t LanguageAwareString.fullRange.setter(uint64_t result, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___fullRange;
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = 0;
  return result;
}

uint64_t sub_1E3D335F8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x190))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t LanguageAwareString.isEmpty.getter()
{
  LODWORD(v1) = *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___isEmpty);
  if (v1 == 2)
  {
    v2 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string + 8);
    if ((v2 & 0x2000000000000000) != 0)
    {
      v1 = HIBYTE(v2) & 0xF;
    }

    else
    {
      v1 = *(v0 + OBJC_IVAR___AMPLanguageAwareString_string) & 0xFFFFFFFFFFFFLL;
    }

    LOBYTE(v1) = v1 == 0;
    *(v0 + OBJC_IVAR___AMPLanguageAwareString____lazy_storage___isEmpty) = v1;
  }

  return v1 & 1;
}

uint64_t sub_1E3D33744@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E3D33860@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C0))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3D33964@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1D8))();
  *a2 = result;
  return result;
}

unint64_t sub_1E3D339F0(unint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1;
  }

  v3 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v3 = 11;
  }

  return sub_1E3D36714(0xFuLL, v3 | (v2 << 16), a1, a2);
}

uint64_t sub_1E3D33A84(void *a1, uint64_t (*a2)(void, void))
{
  v3 = (v2 + *a1);
  if (v3[8] != 1)
  {
    return *v3;
  }

  result = a2(*(v2 + OBJC_IVAR___AMPLanguageAwareString_string), *(v2 + OBJC_IVAR___AMPLanguageAwareString_string + 8));
  *v3 = result;
  v3[8] = 0;
  return result;
}

uint64_t sub_1E3D33B10@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F0))();
  *a2 = result;
  return result;
}

uint64_t static LanguageAwareString.alwaysGenerateAttributedString.getter()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return static LanguageAwareString.alwaysGenerateAttributedString;
}

uint64_t static LanguageAwareString.alwaysGenerateAttributedString.setter(uint64_t a1)
{
  v1 = a1;
  result = OUTLINED_FUNCTION_17_103(a1);
  static LanguageAwareString.alwaysGenerateAttributedString = v1;
  return result;
}

uint64_t static LanguageAwareString.keepStatisticsOnLanguageComponents.getter()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return static LanguageAwareString.keepStatisticsOnLanguageComponents;
}