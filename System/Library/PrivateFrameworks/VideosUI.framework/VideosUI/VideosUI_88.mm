void sub_1E3D5F93C(__n128 a1)
{
  sub_1E41FDF14();
  if (v8)
  {
    sub_1E3280A90(0, &qword_1EE23AD50, 0x1E69DCEB0);
    if (swift_dynamicCast())
    {
      v2 = *(v1 + OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_transitionBackgroundView);
      if (v2)
      {
        v3 = v2;
        v4 = [v6 traitCollection];
        v5 = [v4 userInterfaceStyle];

        [v3 setOverrideUserInterfaceStyle_];
      }
    }
  }

  else
  {
    sub_1E325F748(v7, &unk_1ECF296E0, &unk_1E4298030);
  }
}

BOOL sub_1E3D5FB18(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView, a2);
  v4 = *(v2 + v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [v5 bgImageView];
  v7 = v6 != 0;
  if (v6)
  {
    v8 = v6;
    v9 = [v6 imageView];

    v5 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v7;
}

double sub_1E3D5FBC0()
{
  v1 = [v0 contentView];
  [v1 bounds];
  v3 = v2;

  if ((*(v0 + OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_hasLayedOutSubviews) & 1) == 0)
  {
    [v0 bounds];
    [v0 vui:CGRectGetWidth(v6) sizeThatFits:0.0];
    return v4;
  }

  return v3;
}

id sub_1E3D5FC5C(double a1, double a2)
{
  v5 = [v2 contentView];
  [v5 bounds];
  v7 = v6;

  v8 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView;
  OUTLINED_FUNCTION_15_0(&v2[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView], v9);
  v10 = *&v2[v8];
  if (v10)
  {
    [v10 topThreshold];
    v12 = v11 - a2;
    if (v12 < 0.0)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = v12;
    }

    v10 = *&v2[v8];
  }

  else if (0.0 - a2 < 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 0.0 - a2;
  }

  v14 = v7 - a2;
  v15 = (1.0 - a1) * v7;
  if (v10)
  {
    v16 = [v10 bgImageView];
    [v16 setImageOffset_];
  }

  v17 = *&v2[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_transitionBackgroundView];
  v18 = (v15 - v13) / (v14 - v13);
  if (v17)
  {
    [v17 setAlpha_];
  }

  v19 = *&v2[v8];
  if (v19)
  {
    [v19 setAlpha_];
  }

  v20 = *sub_1E3E60700();
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 whiteColor];
  v24 = [v23 vui:v22 blendWithColor:v18 percentage:?];

  return v24;
}

void sub_1E3D5FE08(void *a1, double a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView;
  OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView], v49);
  v7 = *&v3[v6];
  if (v7)
  {
    v8 = [v7 bgImageView];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 imageView];
      if (v10)
      {
        v11 = v10;
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (v12)
        {
          v13 = *&v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bgImageViewModel];
          if (v13)
          {
            v14 = v12;
            v15 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_layout;
            OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_layout], v48);
            if (*&v3[v15])
            {

              v16 = [v3 vuiTraitCollection];
              v17 = OUTLINED_FUNCTION_6_12();
              sub_1E4041CF4(v18, v17);
            }

            else
            {
            }

            type metadata accessor for LayoutGrid();
            v19 = sub_1E3A2579C(a2);
            v20 = *(*v13 + 392);

            v22 = v20(v21);

            if (v22)
            {
              type metadata accessor for ImageLayout();
              if (swift_dynamicCastClass())
              {
                OUTLINED_FUNCTION_30();
                v24 = *(v23 + 432);

                v26 = v24(v25);
                LOBYTE(v24) = v27;

                if (v24)
                {
                  v26 = 0x3FF0000000000000;
                }

                goto LABEL_18;
              }
            }

            v26 = 0x3FF0000000000000;
LABEL_18:
            type metadata accessor for ChannelBannerLayout();
            v28 = OUTLINED_FUNCTION_6_12();
            sub_1E40420F0(v19, v26, 0, v28);
            v31 = sub_1E3C3E520(v13, v29, v30);
            v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_isBackgroundTransitioning] = 1;
            v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_isImageLoadedForBackgroundTransitioning] = 0;
            v32 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v33 = swift_allocObject();
            *(v33 + 16) = v32;
            *(v33 + 24) = v9;
            v46 = sub_1E3D60458;
            v47 = v33;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            v44 = sub_1E38B2C5C;
            v45 = &block_descriptor_103;
            v34 = _Block_copy(aBlock);
            v35 = v9;

            [v14 setImageProxy:v31 clearingExisting:0 completion:v34];
            _Block_release(v34);
            [v35 setMasksBlur_];
            v46 = nullsub_1;
            v47 = 0;
            aBlock[0] = MEMORY[0x1E69E9820];
            OUTLINED_FUNCTION_2_177();
            v44 = v36;
            v45 = &block_descriptor_6_3;
            v37 = _Block_copy(aBlock);
            v38 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v39 = swift_allocObject();
            *(v39 + 16) = v38;
            *(v39 + 24) = v35;
            v46 = sub_1E3D60518;
            v47 = v39;
            aBlock[0] = MEMORY[0x1E69E9820];
            OUTLINED_FUNCTION_2_177();
            v44 = v40;
            v45 = &block_descriptor_13_2;
            v41 = _Block_copy(aBlock);
            v42 = v35;

            [a1 animateAlongsideTransition:v37 completion:v41];
            _Block_release(v41);
            _Block_release(v37);

            v11 = v31;
            goto LABEL_19;
          }
        }
      }

      else
      {
        v11 = v9;
      }

LABEL_19:
    }
  }
}

id sub_1E3D60384@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(VUIChannelBannerView) initWithFrame_];
  *a1 = result;
  return result;
}

uint64_t sub_1E3D603E8(void *a1)
{
  v1 = [a1 textLabels];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
  v3 = sub_1E42062B4();

  return v3;
}

void sub_1E3D60458(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  OUTLINED_FUNCTION_15_0(*(v2 + 16) + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_isBackgroundTransitioning) & 1) == 0)
    {
      [v3 setMasksBlur_];
    }

    v5[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_isImageLoadedForBackgroundTransitioning] = 1;
  }
}

uint64_t objectdestroy_2Tm_2()
{

  return swift_deallocObject();
}

void sub_1E3D60518(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  OUTLINED_FUNCTION_15_0(*(v2 + 16) + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    *(Strong + OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_isBackgroundTransitioning) = 0;
    if (*(Strong + OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_isImageLoadedForBackgroundTransitioning) == 1)
    {
      [v3 setMasksBlur_];
    }
  }
}

uint64_t sub_1E3D605D8(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_9_1(a1);
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1E3D60680(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_1E3D606C8(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_9_1(a1);
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1E3D60764()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage___episodeNumber);
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage___episodeNumber + 9) & 1) == 0)
  {
    return *v1;
  }

  if ([*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) valueForProperty_])
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
  if (!*(&v6 + 1))
  {
    sub_1E329505C(v7);
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
LABEL_10:
    result = 0;
    v3 = 1;
    goto LABEL_11;
  }

  v3 = 0;
  result = v4;
LABEL_11:
  *v1 = result;
  v1[8] = v3;
  v1[9] = 0;
  return result;
}

uint64_t sub_1E3D60868(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage___episodeNumber;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  *(v3 + 9) = 0;
  return result;
}

uint64_t (*sub_1E3D60888(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = sub_1E3D60764();
  *(a1 + 8) = v3 & 1;
  return sub_1E3D608D8;
}

uint64_t sub_1E3D608D8(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16) + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage___episodeNumber;
  *v2 = *result;
  *(v2 + 8) = v1;
  return result;
}

double sub_1E3D60900@<D0>(uint64_t a1@<X8>)
{
  sub_1E3D60A78(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void sub_1E3D60944(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData;
  v5 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData);
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData + 8);
  v6 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData + 16);
  v7 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData + 24);
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  v9 = *(v3 + 32);
  *(v3 + 32) = v2;
  sub_1E37C52A4(v5, v4, v6, v7, v9);
}

void (*sub_1E3D60974(void *a1))(void ***a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  sub_1E3D60A78(v3);
  return sub_1E3D609D8;
}

void sub_1E3D609D8(void ***a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[5];
  v5 = **a1;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = *(v3 + 32);
  v10 = v4 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData;
  *v10 = v5;
  *(v10 + 8) = v6;
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  *(v10 + 32) = v9;
  if (a2)
  {
    sub_1E37C5358(v5, v6, v7, v8, v9);
    OUTLINED_FUNCTION_7_38();
    sub_1E37C52B8(*v3, v3[1], v3[2], v3[3], *(v3 + 32));
  }

  else
  {
    OUTLINED_FUNCTION_7_38();
  }

  free(v3);
}

id sub_1E3D60A78@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData;
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData);
  v6 = v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData + 8;
  v5 = *v6;
  v7 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData + 16);
  v8 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData + 24);
  v9 = v4;
  v10 = *v6;
  v11 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData + 32);
  v12 = v7;
  v13 = v8;
  v14 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData + 32);
  if (v11 == 254)
  {
    v22 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData + 24);
    v23 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData + 16);
    v24 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData + 8);
    v25 = *(v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData);
    v15 = *(v1 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem);
    v9 = [v15 screenshotArtworkCatalog];
    if (!v9)
    {
      v9 = [v15 artworkCatalog];
    }

    v27[0] = v9;
    memset(&v27[1], 0, 24);
    v28 = 0;
    v16 = *v3;
    v17 = *(v3 + 8);
    v19 = *(v3 + 16);
    v18 = *(v3 + 24);
    *v3 = v9;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    v20 = *(v3 + 32);
    *(v6 + 24) = 0;
    *v6 = 0;
    sub_1E37C5550(v27, v26);
    sub_1E37C52A4(v16, v17, v19, v18, v20);
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v5 = v24;
    v4 = v25;
    v8 = v22;
    v7 = v23;
  }

  result = sub_1E37C55C0(v4, v5, v7, v8, v11);
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  return result;
}

uint64_t sub_1E3D60C04(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity_seasonNumber;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity_fractionalEpisodeNumber;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage___episodeNumber;
  *v4 = 0;
  *(v4 + 8) = 256;
  v5 = v1 + OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = -2;
  return sub_1E39D8938(a1);
}

uint64_t sub_1E3D60C84()
{
  v0 = sub_1E39D8B04();
  OUTLINED_FUNCTION_7_15(v0, OBJC_IVAR____TtC8VideosUI23LibMPEpisodeMediaEntity____lazy_storage____imageData);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1E3D60DCC(uint64_t a1)
{
  result = sub_1E3D60DF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3D60DF4()
{
  result = qword_1ECF37EC0;
  if (!qword_1ECF37EC0)
  {
    type metadata accessor for LibMPEpisodeMediaEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37EC0);
  }

  return result;
}

uint64_t type metadata accessor for LibMPEpisodeMediaEntity(uint64_t a1)
{
  result = qword_1EE298A80;
  if (!qword_1EE298A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3D60F48(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3D60FB4(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1E3900F50;
}

char *sub_1E3D61040()
{
  *&v0[OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_corrupted] = 0;
  v0[OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_isRunning] = 0;
  v1 = OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_awarenessClient;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E698D348]) init];
  v11.receiver = v0;
  v11.super_class = type metadata accessor for PostPlayTemplateAttentionMonitor();
  v2 = objc_msgSendSuper2(&v11, sel_init);
  v3 = *&v2[OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_awarenessClient];
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v4 = v2;
  v5 = v3;
  v6 = sub_1E4206A04();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1E3D611F4;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1E377674C;
  v10[3] = &block_descriptor_104;
  v8 = _Block_copy(v10);

  [v5 setEventHandlerWithQueue:v6 block:v8];
  _Block_release(v8);

  return v4;
}

void sub_1E3D611F4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1E3D6124C(a1);
  }
}

void sub_1E3D6124C(void *a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34[-1] - v12;
  if ((*(v2 + OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_corrupted) & 1) == 0)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    v15 = sub_1E324FBDC();
    v16 = *(v6 + 16);
    if (v14)
    {
      v16(v13, v15, v4);
      v17 = sub_1E41FFC94();
      v18 = sub_1E4206814();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = OUTLINED_FUNCTION_125_0();
        *v19 = 0;
        _os_log_impl(&dword_1E323F000, v17, v18, "PostPlayTemplateAttentionMonitor::digitizer button keyboard attention event detected", v19, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      v20 = (*(v6 + 8))(v13, v4);
      if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x70))(v20))
      {
        v22 = v21;
        ObjectType = swift_getObjectType();
        (*(v22 + 8))(ObjectType, v22);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v16(v10, v15, v4);
      v24 = a1;
      v25 = sub_1E41FFC94();
      v26 = sub_1E4206814();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v35 = v28;
        *v27 = 136315138;
        v34[3] = sub_1E3280A90(0, &qword_1ECF37ED8, 0x1E698D358);
        v34[0] = v24;
        v29 = v24;
        v30 = sub_1E3294FA4(v34);
        v32 = sub_1E3270FC8(v30, v31, &v35);

        *(v27 + 4) = v32;
        _os_log_impl(&dword_1E323F000, v25, v26, "PostPlayTemplateAttentionMonitor::attention event detected: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_65_0();
      }

      (*(v6 + 8))(v10, v4);
    }
  }
}

uint64_t sub_1E3D61584()
{
  v50[9] = *MEMORY[0x1E69E9840];
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v48 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_161();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = sub_1E324FBDC();
  v12 = *(v3 + 16);
  v12(v10, v11, v1);
  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_125_0();
    *v15 = 0;
    _os_log_impl(&dword_1E323F000, v13, v14, "PostPlayTemplateAttentionMonitor::start awareness", v15, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v16 = *(v3 + 8);
  v16(v10, v1);
  v17 = OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_isRunning;
  if (*(v49 + OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_isRunning) == 1)
  {
    v12(v0, v11, v1);
    v18 = sub_1E41FFC94();
    v19 = sub_1E4206814();
    if (os_log_type_enabled(v18, v19))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_5_20(&dword_1E323F000, v20, v21, "PostPlayTemplateAttentionMonitor::has been running");
      OUTLINED_FUNCTION_65_0();
    }

    v16(v0, v1);
    return 1;
  }

  else if (*(v49 + OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_corrupted))
  {
    return 0;
  }

  else
  {
    v46 = v16;
    v47 = OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_corrupted;
    v23 = [objc_allocWithZone(MEMORY[0x1E698D350]) init];
    v24 = [objc_opt_self() mainBundle];
    v25 = sub_1E3ABF2D0(v24);
    sub_1E414A7F4(v25, v26);

    v27 = sub_1E4205ED4();
    v28 = v49;

    [v23 setIdentifier_];

    [v23 setEventMask_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37ED0, &qword_1E42CE598);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    *(inited + 64) = sub_1E41FE5D4();
    __swift_allocate_boxed_opaque_existential_1((inited + 40));
    sub_1E41FE5C4();
    sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
    sub_1E3D61F1C();
    v30 = sub_1E4205CB4();
    sub_1E3D61F84(v30, v23);
    v31 = *(v28 + OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_awarenessClient);
    v22 = 1;
    [v31 setConfiguration:v23 shouldReset:1];
    v50[0] = 0;
    if ([v31 resumeWithError_])
    {
      v32 = v50[0];

      *(v28 + v17) = 1;
    }

    else
    {
      v33 = v50[0];
      v34 = sub_1E41FE274();

      swift_willThrow();
      v35 = v48;
      v12(v48, v11, v1);
      v36 = v34;
      v37 = sub_1E41FFC94();
      v38 = sub_1E42067F4();

      v39 = v37;
      if (os_log_type_enabled(v37, v38))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        v42 = v34;
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 4) = v43;
        *v41 = v43;
        _os_log_impl(&dword_1E323F000, v39, v38, "PostPlayTemplateAttentionMonitor::failed to resume awareness with %@", v40, 0xCu);
        sub_1E3A66B00(v41);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_65_0();
      }

      else
      {
      }

      v46(v35, v1);
      v22 = 0;
      *(v49 + v47) = 1;
    }
  }

  return v22;
}

id sub_1E3D61AEC()
{
  v2 = v0;
  v41[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v39 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_161();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = sub_1E324FBDC();
  v14 = *(v5 + 16);
  v40 = v3;
  v14(v12, v13, v3);
  v15 = sub_1E41FFC94();
  v16 = sub_1E4206814();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_125_0();
    *v17 = 0;
    _os_log_impl(&dword_1E323F000, v15, v16, "PostPlayTemplateAttentionMonitor::stop awareness", v17, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v18 = *(v5 + 8);
  v19 = v40;
  result = v18(v12, v40);
  v21 = OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_isRunning;
  if (*(v2 + OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_isRunning))
  {
    v22 = OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_corrupted;
    if ((*(v2 + OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_corrupted) & 1) == 0)
    {
      v23 = *(v2 + OBJC_IVAR____TtC8VideosUI32PostPlayTemplateAttentionMonitor_awarenessClient);
      v41[0] = 0;
      if ([v23 suspendWithError_])
      {
        result = v41[0];
      }

      else
      {
        v38 = v22;
        v28 = v41[0];
        v29 = sub_1E41FE274();

        swift_willThrow();
        v14(v39, v13, v40);
        v30 = v29;
        v31 = sub_1E41FFC94();
        v32 = sub_1E42067F4();

        v33 = v31;
        if (os_log_type_enabled(v31, v32))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v34 = 138412290;
          v36 = v29;
          v37 = _swift_stdlib_bridgeErrorToNSError();
          *(v34 + 4) = v37;
          *v35 = v37;
          _os_log_impl(&dword_1E323F000, v33, v32, "PostPlayTemplateAttentionMonitor::failed to suspend awareness with %@", v34, 0xCu);
          sub_1E3A66B00(v35);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();
        }

        else
        {
        }

        result = v18(v39, v40);
        *(v2 + v38) = 1;
      }

      *(v2 + v21) = 0;
    }
  }

  else
  {
    v14(v1, v13, v19);
    v24 = sub_1E41FFC94();
    v25 = sub_1E4206814();
    if (os_log_type_enabled(v24, v25))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_5_20(&dword_1E323F000, v26, v27, "PostPlayTemplateAttentionMonitor::has been stopped");
      OUTLINED_FUNCTION_65_0();
    }

    return v18(v1, v19);
  }

  return result;
}

id sub_1E3D61E9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PostPlayTemplateAttentionMonitor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E3D61F1C()
{
  result = qword_1EE23ADC8;
  if (!qword_1EE23ADC8)
  {
    sub_1E3280A90(255, &qword_1EE23ADD0, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23ADC8);
  }

  return result;
}

void sub_1E3D61F84(uint64_t a1, void *a2)
{
  sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
  sub_1E3D61F1C();
  v3 = sub_1E4205C44();

  [a2 setAttentionLostTimeoutDictionary_];
}

void sub_1E3D62028()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_70_0();
  v5 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v75 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80, &qword_1E42BD8B0);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v69 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v63 - v16;
  v18 = type metadata accessor for OrdinalLockup(0);
  v19 = *(v18 + 36);
  *(v0 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v74 = v18;
  v20 = *(v18 + 44);
  v68 = objc_opt_self();
  v21 = [v68 blackColor];
  v72 = v20;
  v70 = v21;
  *(v0 + v20) = v21;
  *v0 = v4;
  memcpy(v78, v2, sizeof(v78));
  memcpy(v77, (v2 + 89), sizeof(v77));
  memcpy(v79, v2, 0x58uLL);
  v79[88] = 1;
  memcpy(&v79[89], (v2 + 89), 0x6AuLL);
  memcpy((v0 + 16), v79, 0xC3uLL);
  v22 = *(*v4 + 392);

  sub_1E375C1CC(v2, v76);
  v23 = sub_1E375C1CC(v79, v76);
  if (v22(v23))
  {
    type metadata accessor for OrdinalLockupCellLayout();
    OUTLINED_FUNCTION_20_2();
    v24 = swift_dynamicCastClass();
    if (v24)
    {
      goto LABEL_5;
    }
  }

  type metadata accessor for OrdinalLockupCellLayout();
  v24 = sub_1E3EA6698(0);
LABEL_5:
  *(v0 + 8) = v24;
  v25 = sub_1E4200B44();
  v26 = __swift_storeEnumTagSinglePayload(v17, 1, 1, v25);
  v27 = (*v4 + 488);
  v73 = *v27;
  v28 = (v73)(v26);
  if (v28)
  {
    v71 = v27;
    v30 = sub_1E373E010(39, v28, v29);

    if (v30)
    {
      v67 = v5;
      type metadata accessor for ImageViewModel();
      if (swift_dynamicCastClass())
      {
        v63 = v25;
        v64 = v10;
        OUTLINED_FUNCTION_26_0();
        v31 += 49;
        v32 = *v31;
        v33 = v31;

        v65 = v33;
        v66 = v32;
        if ((v32)(v34))
        {
          OUTLINED_FUNCTION_26_0();
          v36 = (*(v35 + 1560))();
        }

        else
        {
          v36 = 7;
        }

        j__OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_66_3();
        v39 = (*(v37 + 1048))(v36, v38 & 1);
        v10 = v64;
        if (v39)
        {
          v40 = v39;
        }

        else
        {
          v40 = [v68 blackColor];
          v39 = 0;
        }

        v68 = v39;

        *(v0 + v72) = v40;
        if (v66())
        {
          OUTLINED_FUNCTION_26_0();
          v42 = (*(v41 + 1560))();
        }

        else
        {
          v42 = 7;
        }

        OUTLINED_FUNCTION_66_3();
        LODWORD(v72) = (*(v43 + 1040))(v42);
        v44 = v66();

        if (v44)
        {
          OUTLINED_FUNCTION_8();
          v46 = (*(v45 + 1560))();
        }

        else
        {
          v46 = 7;
        }

        OUTLINED_FUNCTION_66_3();
        v48 = (*(v47 + 1032))(v46);
        v50 = v49;

        if ((v50 & 1) == 0)
        {
          v51 = OUTLINED_FUNCTION_146();
          sub_1E325F6F0(v51, v52, &qword_1E42BD8B0);
          v53 = v63;
          v54 = MEMORY[0x1E697DBA8];
          if (v48 != 2)
          {
            v54 = MEMORY[0x1E697DBB8];
          }

          v55 = v69;
          (*(*(v63 - 8) + 104))(v69, *v54, v63);
          __swift_storeEnumTagSinglePayload(v55, 0, 1, v53);
          sub_1E3741EA0(v55, v17, &qword_1ECF33D80, &qword_1E42BD8B0);
        }
      }

      else
      {

        LODWORD(v72) = 0;
      }

      v5 = v67;
    }

    else
    {
      LODWORD(v72) = 0;
    }
  }

  else
  {
    LODWORD(v72) = 0;
  }

  sub_1E3743538(v17, v0 + *(v74 + 40), &qword_1ECF33D80, &qword_1E42BD8B0);
  type metadata accessor for ContextMenuModel(0);

  v56 = sub_1E3E6CDBC();
  v58 = *v56;
  v57 = v56[1];
  v76[0] = v58;
  v76[1] = v57;

  sub_1E4207414();
  (*(v75 + 104))(v10, *MEMORY[0x1E697E660], v5);
  *(v0 + 216) = sub_1E4188148(v4, v10);
  v59 = v73();

  if (!v59)
  {
    sub_1E37E6F2C(v2);
    sub_1E325F6F0(v17, &qword_1ECF33D80, &qword_1E42BD8B0);
    memcpy(v76, v78, 0x58uLL);
    OUTLINED_FUNCTION_65_24();
    sub_1E37E6F2C(v76);
    goto LABEL_32;
  }

  v61 = sub_1E373E010(13, v59, v60);

  sub_1E37E6F2C(v2);
  sub_1E325F6F0(v17, &qword_1ECF33D80, &qword_1E42BD8B0);
  memcpy(v76, v78, 0x58uLL);
  OUTLINED_FUNCTION_65_24();
  sub_1E37E6F2C(v76);
  if (!v61)
  {
LABEL_32:
    v62 = 0;
    goto LABEL_33;
  }

  v62 = v72 ^ 1;
LABEL_33:
  *(v0 + 224) = v62 & 1;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D627E4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v72 = type metadata accessor for OrdinalLockupCardBody(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v67 = (v4 - v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37EE0, &qword_1E42CE5D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v71 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37EE8, &qword_1E42CE5D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v73 = v8;
  v9 = OUTLINED_FUNCTION_138();
  v70 = type metadata accessor for OrdinalLockupAXCardBody(v9);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v66 = (v12 - v11);
  v13 = OUTLINED_FUNCTION_138();
  v77 = type metadata accessor for OrdinalListLockup(v13);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v69 = (v16 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37EF0, &qword_1E42CE5E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v78 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37EF8, &qword_1E42CE5E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v75 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37F00, &qword_1E42CE5F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v76 = v22;
  v23 = OUTLINED_FUNCTION_138();
  v74 = type metadata accessor for OrdinalAXListLockup(v23);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v68 = (v26 - v25);
  OUTLINED_FUNCTION_138();
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v30 = (v29 - v28);
  v31 = v0[1];
  v32 = *(*v31 + 2304);
  if (v32())
  {
    v33 = type metadata accessor for OrdinalLockup(0);
    sub_1E3746E10(v30);
    v34 = sub_1E3B0352C();
    v35 = OUTLINED_FUNCTION_119_0();
    v36(v35);
    if (v34)
    {
      v37 = *v1;
      memcpy(v79, v1 + 2, sizeof(v79));
      sub_1E3743538(v1 + *(v33 + 40), v68 + *(v74 + 28), &qword_1ECF33D80, &qword_1E42BD8B0);
      *v68 = v37;
      v68[1] = v31;
      OUTLINED_FUNCTION_78_18(v68 + 2);
      v38 = type metadata accessor for OrdinalAXListLockup;
      sub_1E3D67368(v68, v75, type metadata accessor for OrdinalAXListLockup);
      swift_storeEnumTagMultiPayload();

      OUTLINED_FUNCTION_80_16();
      OUTLINED_FUNCTION_28_63();
      sub_1E3D67140(&unk_1EE28C4A0);
      OUTLINED_FUNCTION_23_75();
      sub_1E3D67140(&unk_1EE28C4A8);
      sub_1E4201F44();
      sub_1E3743538(v76, v78, &qword_1ECF37F00, &qword_1E42CE5F0);
      swift_storeEnumTagMultiPayload();
      sub_1E3D67180();
      sub_1E3D67274();
      sub_1E4201F44();
      v39 = OUTLINED_FUNCTION_119_0();
      sub_1E325F6F0(v39, v40, &qword_1E42CE5F0);
      v41 = v68;
LABEL_9:
      v50 = v38;
      goto LABEL_10;
    }
  }

  if ((v32() & 1) == 0)
  {
    v51 = type metadata accessor for OrdinalLockup(0);
    sub_1E3746E10(v30);
    v52 = sub_1E3B0352C();
    v53 = OUTLINED_FUNCTION_119_0();
    v54(v53);
    v55 = *v1;
    OUTLINED_FUNCTION_68_25();
    if (v52)
    {
      v56 = v1[27];
      sub_1E3743538(v1 + *(v51 + 40), v66 + *(v70 + 32), &qword_1ECF33D80, &qword_1E42BD8B0);
      v57 = *(v1 + 224);
      *v66 = v55;
      v66[1] = v31;
      OUTLINED_FUNCTION_78_18(v66 + 2);
      v66[27] = v56;
      *(v66 + *(v70 + 36)) = v57;
      v38 = type metadata accessor for OrdinalLockupAXCardBody;
      sub_1E3D67368(v66, v71, type metadata accessor for OrdinalLockupAXCardBody);
      swift_storeEnumTagMultiPayload();

      OUTLINED_FUNCTION_80_16();
      OUTLINED_FUNCTION_25_75();
      sub_1E3D67140(&_MergedGlobals_234);
      OUTLINED_FUNCTION_24_78();
      sub_1E3D67140(&unk_1EE28C498);

      sub_1E4201F44();
      v58 = OUTLINED_FUNCTION_50_39();
      sub_1E3743538(v58, v59, &qword_1ECF37EE8, &qword_1E42CE5D8);
      swift_storeEnumTagMultiPayload();
      sub_1E3D67180();
      sub_1E3D67274();
      OUTLINED_FUNCTION_35_54();
      sub_1E325F6F0(v73, &qword_1ECF37EE8, &qword_1E42CE5D8);
      v41 = v66;
    }

    else
    {
      v60 = v1[27];
      sub_1E3743538(v1 + *(v51 + 40), v67 + *(v72 + 32), &qword_1ECF33D80, &qword_1E42BD8B0);
      v61 = *(v1 + 224);
      *v67 = v55;
      v67[1] = v31;
      OUTLINED_FUNCTION_78_18(v67 + 2);
      v67[27] = v60;
      *(v67 + *(v72 + 36)) = v61;
      v38 = type metadata accessor for OrdinalLockupCardBody;
      sub_1E3D67368(v67, v71, type metadata accessor for OrdinalLockupCardBody);
      swift_storeEnumTagMultiPayload();

      OUTLINED_FUNCTION_80_16();
      OUTLINED_FUNCTION_25_75();
      sub_1E3D67140(&_MergedGlobals_234);
      OUTLINED_FUNCTION_24_78();
      sub_1E3D67140(&unk_1EE28C498);

      sub_1E4201F44();
      v62 = OUTLINED_FUNCTION_50_39();
      sub_1E3743538(v62, v63, &qword_1ECF37EE8, &qword_1E42CE5D8);
      swift_storeEnumTagMultiPayload();
      sub_1E3D67180();
      sub_1E3D67274();
      OUTLINED_FUNCTION_35_54();
      v64 = OUTLINED_FUNCTION_119_0();
      sub_1E325F6F0(v64, v65, &qword_1E42CE5D8);
      v41 = v67;
    }

    goto LABEL_9;
  }

  v42 = *v1;
  OUTLINED_FUNCTION_68_25();
  v43 = v1[27];
  v44 = v1 + *(type metadata accessor for OrdinalLockup(0) + 40);
  sub_1E3743538(v44, v69 + *(v77 + 32), &qword_1ECF33D80, &qword_1E42BD8B0);
  *v69 = v42;
  v69[1] = v31;
  OUTLINED_FUNCTION_78_18(v69 + 2);
  v69[27] = v43;
  v45 = *(v77 + 36);
  *(v69 + v45) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  sub_1E3D67368(v69, v75, type metadata accessor for OrdinalListLockup);
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_80_16();
  OUTLINED_FUNCTION_28_63();
  sub_1E3D67140(&unk_1EE28C4A0);
  OUTLINED_FUNCTION_23_75();
  sub_1E3D67140(&unk_1EE28C4A8);

  sub_1E4201F44();
  OUTLINED_FUNCTION_50_39();
  OUTLINED_FUNCTION_38_2();
  sub_1E3743538(v46, v47, v48, v49);
  swift_storeEnumTagMultiPayload();
  sub_1E3D67180();
  sub_1E3D67274();
  OUTLINED_FUNCTION_35_54();
  sub_1E325F6F0(v76, &qword_1ECF37F00, &qword_1E42CE5F0);
  v41 = v69;
  v50 = type metadata accessor for OrdinalListLockup;
LABEL_10:
  sub_1E3D673C4(v41, v50);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D631A0()
{
  OUTLINED_FUNCTION_93();
  v3 = v0;
  v59 = v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37FC0, &qword_1E42CE8F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37FC8, &qword_1E42CE8F8);
  OUTLINED_FUNCTION_0_10();
  v54 = v6;
  v55 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_20_1();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37FD0, &qword_1E42CE900);
  OUTLINED_FUNCTION_0_10();
  v56 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v51 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37FD8, &qword_1E42CE908);
  OUTLINED_FUNCTION_0_10();
  v57 = v13;
  v58 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v52 = v15;
  v16 = *v0;
  memcpy(v62, v3 + 2, 0xC3uLL);
  v17 = v3[1];
  *v1 = v16;
  memcpy(v1 + 1, v3 + 2, 0xC3uLL);
  v1[26] = v17;
  v18 = *(type metadata accessor for OrdinalLockupImage(0) + 28);
  *(v1 + v18) = swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  OUTLINED_FUNCTION_44_45(v19);
  v20 = type metadata accessor for OrdinalLockupCardBody(0);
  v21 = *(v20 + 32);
  v22 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37FE0, &qword_1E42CE910) + 36));
  v23 = type metadata accessor for OrdinalLockupGradient(0);
  sub_1E3743538(v3 + v21, v22 + *(v23 + 20), &qword_1ECF33D80, &qword_1E42BD8B0);
  v24 = *(v3 + *(v20 + 36));
  *v22 = v17;
  *(v22 + *(v23 + 24)) = v24;
  swift_retain_n();

  sub_1E375C1CC(v62, v60);
  v25 = sub_1E4203DA4();
  v27 = v26;
  v28 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37FE8, &qword_1E42CE918) + 36));
  *v28 = v25;
  v28[1] = v27;
  v29 = sub_1E4203DA4();
  v31 = v30;
  v32 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37FF0, &qword_1E42CE920) + 36);
  sub_1E3D63724();
  v33 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37FF8, &qword_1E42CE928) + 36)];
  *v33 = v29;
  v33[1] = v31;
  v34 = sub_1E4203D44();
  v35 = (v1 + *(v50 + 36));
  *v35 = v16;
  v35[1] = v17;
  v35[2] = v34;
  v35[3] = v36;
  v37 = *(**(v17 + 112) + 552);

  v37(v60, v38);

  if (v61)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = *v60;
  }

  v40 = sub_1E3D67CC4();
  sub_1E391F8C0(v50, v40, v39);
  sub_1E325F6F0(v1, &qword_1ECF37FC0, &qword_1E42CE8F0);
  v41 = v3[27];
  OUTLINED_FUNCTION_10_6();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E4187EA8(v41, v54, OpaqueTypeConformance2);
  (*(v55 + 8))(v2, v54);
  OUTLINED_FUNCTION_3_8();
  v43 = swift_getOpaqueTypeConformance2();
  v44 = j__OUTLINED_FUNCTION_18();
  LOBYTE(OpaqueTypeConformance2) = j__OUTLINED_FUNCTION_18();
  v45 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v17, v44 & 1, OpaqueTypeConformance2 & 1, 0, v45 & 1, v53, v43);
  (*(v56 + 8))(v51, v53);
  v46 = (v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38008, &qword_1E42CE938) + 36));
  v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0, &qword_1E42AE9A0) + 28);
  v48 = *MEMORY[0x1E697DBA8];
  sub_1E4200B44();
  OUTLINED_FUNCTION_2();
  (*(v49 + 104))(v46 + v47, v48);
  *v46 = swift_getKeyPath();
  (*(v57 + 32))(v59, v52, v58);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3D63724()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_146();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38018, &qword_1E42CE948) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_4();
  *v8 = sub_1E4201D44();
  *(v8 + 1) = 0;
  v8[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38020, &qword_1E42CE950);
  sub_1E3D638E0();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_4_182();
  sub_1E3741EA0(v8, v0, &qword_1ECF38010, &qword_1E42CE940);
  memcpy((v0 + *(v9 + 44)), v18, 0x70uLL);
  OUTLINED_FUNCTION_36();
  v12.n128_f64[0] = (*(v11 + 2176))();
  j_nullsub_1(v12, v13, v14, v15);
  OUTLINED_FUNCTION_3();
  v16 = sub_1E4202734();
  sub_1E3741EA0(v0, v2, &qword_1ECF38018, &qword_1E42CE948);
  v17 = (v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38028, &qword_1E42CE958) + 36));
  *v17 = v16;
  OUTLINED_FUNCTION_11_4(v17);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3D638E0()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v6 = v5;
  type metadata accessor for OrdinalLockupContentLogo(0);
  OUTLINED_FUNCTION_49_45();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_45_25();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_78();
  v9 = *v4;
  OUTLINED_FUNCTION_66_26(v17);
  v10 = v4[1];
  *v1 = v9;
  OUTLINED_FUNCTION_66_26(v1 + 1);
  v1[26] = v10;
  v11 = *(v2 + 36);
  *(v11 + v1) = swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  OUTLINED_FUNCTION_44_45(v12);
  OUTLINED_FUNCTION_26_81();
  sub_1E3D67368(v1, v0, v13);
  *v6 = 0;
  *(v6 + 8) = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38030, &qword_1E42CE960);
  sub_1E3D67368(v0, v6 + *(v14 + 48), v11);
  v15 = (v6 + *(v14 + 64));
  *v15 = v9;
  v15[1] = v10;
  swift_retain_n();
  swift_retain_n();
  sub_1E375C1CC(v17, &v16);

  sub_1E3D673C4(v1, v11);

  sub_1E3D673C4(v0, v11);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D63A68@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v3 = *(*a1 + 8);
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 48);
  v7 = a1[2];
  v8 = a1[3];
  v9 = *v7;
  v10 = v7[1];
  v11 = *v8;
  v15 = *(v8 + 8);
  v12 = *a1[4];
  *a2 = **a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v13 = *(v2 + 2);
  *(a2 + 32) = *(v2 + 1);
  *(a2 + 48) = v13;
  *(a2 + 64) = v6;
  *(a2 + 72) = v9;
  *(a2 + 80) = v10;
  *(a2 + 88) = v11;
  *(a2 + 96) = v15;
  *(a2 + 104) = v12;
}

uint64_t sub_1E3D63B18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(*a1 + 8);
  *a2 = **a1;
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38060, &qword_1E42CE998);
  sub_1E3D67368(*(a1 + 8), a2 + v5[12], type metadata accessor for OrdinalLockupImage);
  v6 = *(a1 + 24);
  *(a2 + v5[16]) = **(a1 + 16);
  v7 = (a2 + v5[20]);
  v8 = v6[1];
  *v7 = *v6;
  v7[1] = v8;
  v9 = a2 + v5[24];
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *v10;
  LOBYTE(v10) = *(v10 + 8);
  *v9 = v12;
  v9[8] = v10;
  *(a2 + v5[28]) = *v11;
}

void sub_1E3D63C1C()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v42 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37F10, &qword_1E42CE818);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37F18, &qword_1E42CE820);
  OUTLINED_FUNCTION_0_10();
  v40 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37F20, &qword_1E42CE828);
  OUTLINED_FUNCTION_0_10();
  v41 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v39 = v15;
  *v6 = sub_1E4201D44();
  *(v6 + 1) = 0;
  v6[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37F28, &qword_1E42CE830);
  sub_1E3D63FD0();
  v16 = sub_1E4203DA4();
  v18 = v17;
  v19 = sub_1E42036C4();
  v20 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37F30, &unk_1E42CE838) + 36)];
  *v20 = v19;
  v20[1] = v16;
  v20[2] = v18;
  v21 = &v6[*(v3 + 36)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0, &qword_1E42AE9A0) + 28);
  v23 = *MEMORY[0x1E697DBA8];
  sub_1E4200B44();
  OUTLINED_FUNCTION_2();
  (*(v24 + 104))(v21 + v22, v23);
  *v21 = swift_getKeyPath();
  v25 = *(v1 + 8);
  OUTLINED_FUNCTION_8();
  v27 = *(v26 + 552);

  v27(&v45, v28);

  if (v46)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = v45;
  }

  v30 = sub_1E3D67AC8();
  sub_1E391F8C0(v3, v30, v29);
  sub_1E325F6F0(v6, &qword_1ECF37F10, &qword_1E42CE818);
  v31 = *(v1 + 216);
  v43 = v3;
  v44 = v30;
  OUTLINED_FUNCTION_10_6();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v39;
  sub_1E4187EA8(v31, v7, OpaqueTypeConformance2);
  (*(v40 + 8))(v11, v7);
  v43 = v7;
  v44 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_3_8();
  v34 = swift_getOpaqueTypeConformance2();
  v35 = j__OUTLINED_FUNCTION_18();
  v36 = j__OUTLINED_FUNCTION_18();
  v37 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v25, v35 & 1, v36 & 1, 0, v37 & 1, v12, v34);
  (*(v41 + 8))(v33, v12);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3D63FD0()
{
  OUTLINED_FUNCTION_9_4();
  v5 = v4;
  v42 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37F58, &qword_1E42CE888);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v41 - v13);
  v15 = *v5;
  memcpy(v53, v5 + 2, 0xC3uLL);
  v16 = v5[1];
  *v14 = v15;
  memcpy(v14 + 1, v5 + 2, 0xC3uLL);
  v14[26] = v16;
  v17 = *(type metadata accessor for OrdinalLockupImage(0) + 28);
  *(v14 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  swift_retain_n();
  swift_retain_n();
  sub_1E375C1CC(v53, v46);
  v18 = sub_1E4203DA4();
  v20 = v19;
  v21 = *(v5 + *(type metadata accessor for OrdinalLockupAXCardBody(0) + 36));
  v22 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37F60, &qword_1E42CE890) + 36);
  *v22 = v16;
  v22[8] = v21;
  *(v22 + 2) = v18;
  *(v22 + 3) = v20;

  v23 = sub_1E4203DA4();
  v25 = v24;
  v26 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37F68, &qword_1E42CE898) + 36));
  *v26 = sub_1E4203D94();
  v26[1] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37F70, &qword_1E42CE8A0);
  sub_1E3D64374();
  v28 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37F78, &qword_1E42CE8A8) + 36));
  *v28 = v23;
  v28[1] = v25;
  v29 = sub_1E4203D44();
  v30 = (v14 + *(v8 + 44));
  *v30 = v15;
  v30[1] = v16;
  v30[2] = v29;
  v30[3] = v31;

  sub_1E4203DA4();
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_4_182();
  OUTLINED_FUNCTION_36();
  v33.n128_f64[0] = (*(v32 + 2176))();
  j_nullsub_1(v33, v34, v35, v36);
  OUTLINED_FUNCTION_3();
  LOBYTE(v8) = sub_1E4202734();
  v45 = 0;
  sub_1E3743538(v14, v11, &qword_1ECF37F58, &qword_1E42CE888);
  v37 = v42;
  sub_1E3743538(v11, v42, &qword_1ECF37F58, &qword_1E42CE888);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37F80, &qword_1E42CE8B0);
  v39 = *(v38 + 48);
  v44[0] = v15;
  v44[1] = v16;
  memcpy(&v44[2], v43, 0x70uLL);
  LOBYTE(v44[16]) = v8;
  v44[17] = v0;
  v44[18] = v1;
  v44[19] = v2;
  v44[20] = v3;
  LOBYTE(v44[21]) = 0;
  memcpy((v37 + v39), v44, 0xA9uLL);
  v40 = v37 + *(v38 + 64);
  *v40 = 0;
  *(v40 + 8) = 0;
  sub_1E3743538(v44, v46, &qword_1ECF37F88, &qword_1E42CE8B8);
  sub_1E325F6F0(v14, &qword_1ECF37F58, &qword_1E42CE888);
  v46[0] = v15;
  v46[1] = v16;
  memcpy(v47, v43, 0x70uLL);
  v47[112] = v8;
  v48 = v0;
  v49 = v1;
  v50 = v2;
  v51 = v3;
  v52 = 0;
  sub_1E325F6F0(v46, &qword_1ECF37F88, &qword_1E42CE8B8);
  sub_1E325F6F0(v11, &qword_1ECF37F58, &qword_1E42CE888);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3D64374()
{
  OUTLINED_FUNCTION_9_4();
  v43 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37F90, &qword_1E42CE8C0);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v42[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37F98, &qword_1E42CE8C8) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37FA0, &qword_1E42CE8D0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42[-v12];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42[-v15];
  OUTLINED_FUNCTION_36();
  (*(v17 + 840))();
  sub_1E3A9D168();

  *v4 = sub_1E4201D44();
  *(v4 + 1) = 0;
  v4[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37FA8, &qword_1E42CE8D8);
  sub_1E3D646C8();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_4_182();
  sub_1E3741EA0(v4, v8, &qword_1ECF37F90, &qword_1E42CE8C0);
  memcpy(&v8[*(v5 + 44)], v47, 0x70uLL);
  OUTLINED_FUNCTION_36();
  v19.n128_f64[0] = (*(v18 + 2176))();
  v20.n128_u64[0] = 0;
  j_nullsub_1(v19, v21, v20, v22);
  OUTLINED_FUNCTION_3();
  v23 = sub_1E4202734();
  sub_1E3741EA0(v8, v13, &qword_1ECF37F98, &qword_1E42CE8C8);
  v24 = &v13[*(v10 + 44)];
  *v24 = v23;
  OUTLINED_FUNCTION_11_4(v24);
  sub_1E3741EA0(v13, v16, &qword_1ECF37FA0, &qword_1E42CE8D0);
  v25 = v46;
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v26, v27, v28, v29);
  v30 = v45;
  v31 = v43;
  *v43 = v44;
  v31[1] = v30;
  *(v31 + 4) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37FB0, &qword_1E42CE8E0);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v32, v33, v34, v35);

  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v36, v37, v38);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v39, v40, v41);

  OUTLINED_FUNCTION_10_3();
}

void sub_1E3D646C8()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_70_0();
  type metadata accessor for OrdinalLockupContentLogo(v6);
  OUTLINED_FUNCTION_49_45();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_45_25();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_78();
  v9 = *v5;
  OUTLINED_FUNCTION_66_26(v16);
  v10 = v5[1];
  *v2 = v9;
  OUTLINED_FUNCTION_66_26(v2 + 1);
  v2[26] = v10;
  v11 = *(v3 + 36);
  *(v11 + v2) = swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  OUTLINED_FUNCTION_44_45(v12);
  OUTLINED_FUNCTION_26_81();
  sub_1E3D67368(v2, v0, v13);
  *v1 = 0;
  *(v1 + 8) = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37FB8, &qword_1E42CE8E8);
  sub_1E3D67368(v0, v1 + *(v14 + 48), v11);

  sub_1E375C1CC(v16, &v15);

  sub_1E3D673C4(v2, v11);
  sub_1E3D673C4(v0, v11);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D64818()
{
  OUTLINED_FUNCTION_9_4();
  v24 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38068, &qword_1E42CE9A0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38070, &qword_1E42CE9A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38078, &qword_1E42CE9B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_2();
  *v2 = sub_1E4201B84();
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38080, &qword_1E42CE9B8);
  sub_1E3D64ABC(v0, v2 + *(v11 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8, &unk_1E42980C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v13 = sub_1E4202744();
  *(inited + 32) = v13;
  v14 = sub_1E4202754();
  *(inited + 33) = v14;
  v15 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v13)
  {
    v15 = sub_1E4202774();
  }

  sub_1E4202774();
  if (sub_1E4202774() != v14)
  {
    v15 = sub_1E4202774();
  }

  OUTLINED_FUNCTION_8();
  (*(v16 + 176))(&v25);
  v20.n128_u64[0] = 0;
  if ((v26 & 1) == 0)
  {
    OUTLINED_FUNCTION_67_20(v20, v17, v18, v19);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v2, v9, &qword_1ECF38068, &qword_1E42CE9A0);
  v21 = &v9[*(v6 + 36)];
  *v21 = v15;
  OUTLINED_FUNCTION_11_4(v21);
  sub_1E4203DB4();
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_4_182();
  sub_1E3741EA0(v9, v1, &qword_1ECF38070, &qword_1E42CE9A8);
  v22 = OUTLINED_FUNCTION_76_20();
  OUTLINED_FUNCTION_75_20(v22, v23, &qword_1ECF38078, &qword_1E42CE9B0);
  *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38088, &unk_1E42CE9C0) + 36)) = 0;
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E3D64ABC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v71 - v5;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v72 = v8;
  v73 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v11 = (v10 - v9);
  v12 = type metadata accessor for OrdinalLockupImage(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v78 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v71 - v17);
  v19 = *a1;
  memcpy(v101, a1 + 2, 0xC3uLL);
  v20 = a1[1];
  *v18 = v19;
  memcpy(v18 + 1, a1 + 2, 0xC3uLL);
  v18[26] = v20;
  v21 = *(v13 + 36);
  *(v18 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  v77 = v18;
  swift_storeEnumTagMultiPayload();
  v22 = *(**(v20 + 328) + 200);
  v75 = v19;
  swift_retain_n();
  swift_retain_n();

  v23 = sub_1E375C1CC(v101, v89);
  v24 = v22(v23);
  LOBYTE(v22) = v25;

  if ((v22 & 1) == 0)
  {
    v26 = *&v24;
    type metadata accessor for OrdinalListLockup(0);
    sub_1E3746E10(v11);
    v27 = v73;
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v73);
    sub_1E3AC5CD8(v11, v6, v26);
    sub_1E325F6F0(v6, &qword_1ECF2A250, " B\r");
    (*(v72 + 8))(v11, v27);
  }

  sub_1E4203DA4();
  sub_1E42015C4();
  OUTLINED_FUNCTION_8();
  v29 = *(v28 + 176);

  v29(v99, v30);
  v31 = v99[0];
  v32 = v99[1];
  v33 = v99[2];
  v34 = v99[3];

  v74 = v20;
  if (v100)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    OUTLINED_FUNCTION_13_3(v35, v36, v37, v38);
  }

  OUTLINED_FUNCTION_3();
  v39 = sub_1E4202734();
  v40 = v39;
  LODWORD(v72) = v39;
  v97 = 0;
  v73 = sub_1E4201D54();
  v80 = 0;
  v41 = *a1;
  swift_retain_n();
  v42 = sub_1E4202754();
  v43 = a1[1];
  (*(*v43 + 1936))();
  OUTLINED_FUNCTION_26_0();
  (*(v44 + 152))(v84);

  sub_1E4200A54();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  v53 = sub_1E3FFE5B8(0, 1);
  v81[0] = 0;
  LOBYTE(v81[1]) = 0;
  v83[0] = v41;
  LOBYTE(v83[1]) = v42;
  v83[2] = v46;
  v83[3] = v48;
  v83[4] = v50;
  v83[5] = v52;
  LOBYTE(v83[6]) = 0;
  v85 = v81;
  v86 = v83;
  v82[0] = v41;
  v82[1] = v43;
  v103 = 0;
  v104 = 0;
  v87[0] = v82;
  v87[1] = &v103;
  v102 = v53;
  v87[2] = &v102;
  sub_1E3D63A68(&v85, v89);

  memcpy(v81, v89, sizeof(v81));
  memcpy(v82, v89, sizeof(v82));
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v54, v55, v56, v57);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v58, v59, v60);
  memcpy(&v79[7], v81, 0x70uLL);
  v61 = v80;
  v62 = v78;
  sub_1E3D67368(v77, v78, type metadata accessor for OrdinalLockupImage);
  v63 = v76;
  sub_1E3D67368(v62, v76, type metadata accessor for OrdinalLockupImage);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38098, &qword_1E42CE9D8);
  v65 = *(v64 + 48);
  v66 = v74;
  v67 = v75;
  v83[0] = v75;
  v83[1] = v74;
  memcpy(&v83[2], v88, 0x70uLL);
  LOBYTE(v83[16]) = v40;
  *(&v83[16] + 1) = *v98;
  HIDWORD(v83[16]) = *&v98[3];
  v83[17] = v31;
  v83[18] = v32;
  v83[19] = v33;
  v83[20] = v34;
  LOBYTE(v83[21]) = 0;
  memcpy((v63 + v65), v83, 0xA9uLL);
  v68 = *(v64 + 64);
  v69 = v73;
  v84[0] = v73;
  v84[1] = 0;
  LOBYTE(v84[2]) = v61;
  memcpy(&v84[2] + 1, v79, 0x77uLL);
  memcpy((v63 + v68), v84, 0x88uLL);
  sub_1E3743538(v83, v89, &qword_1ECF380A0, &qword_1E42CE9E0);
  sub_1E3743538(v84, v89, &qword_1ECF380A8, &unk_1E42CE9E8);
  sub_1E3D673C4(v77, type metadata accessor for OrdinalLockupImage);
  v85 = v69;
  v86 = 0;
  LOBYTE(v87[0]) = v61;
  memcpy(v87 + 1, v79, 0x77uLL);
  sub_1E325F6F0(&v85, &qword_1ECF380A8, &unk_1E42CE9E8);
  v89[0] = v67;
  v89[1] = v66;
  memcpy(&v89[2], v88, 0x70uLL);
  v90 = v72;
  *v91 = *v98;
  *&v91[3] = *&v98[3];
  v92 = v31;
  v93 = v32;
  v94 = v33;
  v95 = v34;
  v96 = 0;
  sub_1E325F6F0(v89, &qword_1ECF380A0, &qword_1E42CE9E0);
  return sub_1E3D673C4(v78, type metadata accessor for OrdinalLockupImage);
}

void sub_1E3D65230()
{
  OUTLINED_FUNCTION_9_4();
  v22 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38038, &qword_1E42CE968);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_20_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38040, &qword_1E42CE970);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38048, &qword_1E42CE978);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_2();
  *v1 = sub_1E4201D54();
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38050, &unk_1E42CE980);
  sub_1E3D654D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8, &unk_1E42980C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v11 = sub_1E4202744();
  *(inited + 32) = v11;
  v12 = sub_1E4202754();
  *(inited + 33) = v12;
  v13 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v11)
  {
    v13 = sub_1E4202774();
  }

  sub_1E4202774();
  if (sub_1E4202774() != v12)
  {
    v13 = sub_1E4202774();
  }

  OUTLINED_FUNCTION_8();
  (*(v14 + 176))(&v23);
  v18.n128_u64[0] = 0;
  if ((v24 & 1) == 0)
  {
    OUTLINED_FUNCTION_67_20(v18, v15, v16, v17);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v1, v8, &qword_1ECF38038, &qword_1E42CE968);
  v19 = &v8[*(v5 + 36)];
  *v19 = v13;
  OUTLINED_FUNCTION_11_4(v19);
  sub_1E4203DB4();
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_4_182();
  sub_1E3741EA0(v8, v0, &qword_1ECF38040, &qword_1E42CE970);
  v20 = OUTLINED_FUNCTION_76_20();
  OUTLINED_FUNCTION_75_20(v20, v21, &qword_1ECF38048, &qword_1E42CE978);
  *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38058, &qword_1E42CE990) + 36)) = 0;
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3D654D8()
{
  OUTLINED_FUNCTION_93();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_70_0();
  type metadata accessor for OrdinalLockupImage(v6);
  OUTLINED_FUNCTION_49_45();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_45_25();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_78();
  v9 = *v5;
  v10 = v5[1];
  OUTLINED_FUNCTION_66_26(v26);
  *v2 = v9;
  OUTLINED_FUNCTION_66_26(v2 + 1);
  v2[26] = v10;
  v11 = *(v3 + 36);
  *(v2 + v11) = swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  OUTLINED_FUNCTION_44_45(v12);
  swift_retain_n();
  swift_retain_n();
  sub_1E375C1CC(v26, &v20);
  v13 = sub_1E3FFE5B8(0, 1);
  v19[0] = v9;
  v19[1] = v10;
  v20 = v19;
  sub_1E3D67368(v2, v0, type metadata accessor for OrdinalLockupImage);
  v17[1] = v10;
  v18 = v9;
  v21 = v0;
  v22 = &v18;
  v17[0] = v9;
  v15 = 0;
  v16 = 0;
  v23 = v17;
  v24 = &v15;
  v14 = v13;
  v25 = &v14;
  sub_1E3D63B18(&v20, v1);
  sub_1E3D673C4(v2, type metadata accessor for OrdinalLockupImage);

  sub_1E3D673C4(v0, type metadata accessor for OrdinalLockupImage);

  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3D65688@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FEC0, &unk_1E42C8F40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_36();
  v6 = (*(v5 + 488))();
  if (v6)
  {
    v8 = sub_1E373E010(39, v6, v7);

    if (v8)
    {
      type metadata accessor for ImageViewModel();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = v9;
        sub_1E3D6582C();
        v11 = OUTLINED_FUNCTION_18();
        sub_1E37E8BE8(v10, v17, 0, v11 & 1, 0, 0, v1);
        sub_1E375C31C(v17);

        *(v1 + *(v3 + 36)) = 256;
        sub_1E3741EA0(v1, a1, &qword_1ECF2FEC0, &unk_1E42C8F40);
        return OUTLINED_FUNCTION_39_5();
      }
    }
  }

  OUTLINED_FUNCTION_48_3();

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

void sub_1E3D6582C()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  OUTLINED_FUNCTION_70_0();
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v5 = *(**(v0 + 208) + 2304);
  if (v5())
  {
    if ((*(*v3 + 392))() && (OUTLINED_FUNCTION_26_0(), v7 = COERCE_DOUBLE((*(v6 + 432))()), v9 = v8, , (v9 & 1) == 0))
    {
      v16 = v7;
      v17 = sub_1E3C6DC88();
      if (v7 <= 1.0)
      {
        v10 = *v17;
      }

      else
      {
        v10 = 0;
      }

      if (v16 <= 1.0)
      {
        v11 = 0;
      }

      else
      {
        v11 = *v17;
      }
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v18 = j__OUTLINED_FUNCTION_51_1();
    v19 = j__OUTLINED_FUNCTION_18();
    v20 = j__OUTLINED_FUNCTION_18();
    v29 = v19 & 1;
    v13 = 1;
    v31 = v10;
    v30 = v11;
    sub_1E3EB9C0C(v10, v11, 0, 0, 0, 1, v18 & 1, 2, v37, 0, 1, 0, 1, 0, 2, v29, v20 & 1);
    v12 = 0;
    v32[0] = 0;
    v15 = BYTE10(v37[5]);
    v35 = v37[0];
    v36 = *&v37[1];
    v14 = OUTLINED_FUNCTION_57_27(v37);
  }

  else
  {
    memcpy(v37, (v0 + 8), 0x5BuLL);
    sub_1E375C2C0(v37, v32);
    v35 = v37[0];
    v31 = *(&v37[1] + 1);
    v36 = *&v37[1];
    v30 = *&v37[2];
    v12 = BYTE8(v37[2]);
    v13 = BYTE9(v37[2]);
    v14 = OUTLINED_FUNCTION_57_27(v37);
    v15 = BYTE10(v37[5]);
  }

  v24 = 1;
  if (((v5)(v14) & 1) == 0)
  {
    type metadata accessor for OrdinalLockupImage(0);
    OUTLINED_FUNCTION_74_18();
    v21 = sub_1E3B0352C();
    v22 = OUTLINED_FUNCTION_146();
    v23(v22);
    if (v21)
    {
      v24 = 0;
    }
  }

  type metadata accessor for OrdinalLockupImage(0);
  OUTLINED_FUNCTION_74_18();
  v25 = sub_1E3B02B0C();
  v26 = OUTLINED_FUNCTION_146();
  v27(v26);
  *v1 = v35;
  v28 = v34[0];
  *(v1 + 42) = v33;
  *(v1 + 16) = v36;
  *(v1 + 24) = v31;
  *(v1 + 32) = v30;
  *(v1 + 40) = v12;
  *(v1 + 41) = v13;
  *(v1 + 58) = v28;
  *(v1 + 72) = *(v34 + 14);
  *(v1 + 88) = v24;
  *(v1 + 89) = v25 & 1;
  *(v1 + 90) = v15;
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3D65B7C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v35 = v3;
  v4 = sub_1E4200B44();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v32 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34880, &qword_1E42C1480) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_20_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80, &qword_1E42BD8B0);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  v33 = *v2;
  v34 = type metadata accessor for OrdinalLockupGradient(0);
  v20 = *(v34 + 20);
  (*(v6 + 104))(v19, *MEMORY[0x1E697DBB8], v4);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v4);
  v21 = *(v10 + 56);
  sub_1E3743538(v2 + v20, v1, &qword_1ECF33D80, &qword_1E42BD8B0);
  sub_1E3743538(v19, v1 + v21, &qword_1ECF33D80, &qword_1E42BD8B0);
  OUTLINED_FUNCTION_23_25(v1);
  if (v22)
  {
    sub_1E325F6F0(v19, &qword_1ECF33D80, &qword_1E42BD8B0);
    OUTLINED_FUNCTION_23_25(v1 + v21);
    if (v22)
    {
      sub_1E325F6F0(v1, &qword_1ECF33D80, &qword_1E42BD8B0);
      goto LABEL_10;
    }
  }

  else
  {
    sub_1E3743538(v1, v16, &qword_1ECF33D80, &qword_1E42BD8B0);
    OUTLINED_FUNCTION_23_25(v1 + v21);
    if (!v22)
    {
      v23 = v32;
      (*(v6 + 32))(v32, v1 + v21, v4);
      sub_1E3D687E8();
      sub_1E4205E84();
      v24 = *(v6 + 8);
      v24(v23, v4);
      sub_1E325F6F0(v19, &qword_1ECF33D80, &qword_1E42BD8B0);
      v24(v16, v4);
      sub_1E325F6F0(v1, &qword_1ECF33D80, &qword_1E42BD8B0);
      goto LABEL_10;
    }

    sub_1E325F6F0(v19, &qword_1ECF33D80, &qword_1E42BD8B0);
    (*(v6 + 8))(v16, v4);
  }

  sub_1E325F6F0(v1, &qword_1ECF34880, &qword_1E42C1480);
LABEL_10:
  OUTLINED_FUNCTION_8();
  (*(v25 + 2256))();
  v26 = [objc_opt_self() blackColor];
  sub_1E3A9D168();
  v27 = v38;

  v28 = 0.0;
  if (*(v2 + *(v34 + 24)))
  {
    v28 = 1.0;
  }

  v29 = v37;
  v30 = v35;
  *v35 = v36;
  v30[1] = v29;
  *(v30 + 4) = v27;
  *(v30 + 5) = v28;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D65F68(char a1@<W1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_26_0();
  (*(v4 + 2056))();
  sub_1E3A9D168();

  v5 = 0.0;
  if (a1)
  {
    v5 = 1.0;
  }

  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v5;
}

void sub_1E3D66018()
{
  OUTLINED_FUNCTION_9_4();
  v124 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v111 = v3;
  v112 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v110 = v5;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v113 = &v109 - v11;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF380F0, &qword_1E42CED78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v121 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v116 = v15;
  v117 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v115 = v17;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29240, &unk_1E429B770);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v114 = v19 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v118 = &v109 - v22;
  OUTLINED_FUNCTION_138();
  v23 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v29 = (v28 - v27);
  v123 = v0;
  OUTLINED_FUNCTION_36();
  v31 = *(v30 + 488);
  v32 = v31();
  if (v32)
  {
    v34 = sub_1E373E010(40, v32, v33);

    if (v34)
    {
      type metadata accessor for ImageViewModel();
      v35 = swift_dynamicCastClass();
      if (v35)
      {
        v36 = v35;
        OUTLINED_FUNCTION_26_0();
        v38 = *(v37 + 392);

        v40 = v38(v39);
        v113 = v34;

        if (v40)
        {
          type metadata accessor for ImageLayout();
          OUTLINED_FUNCTION_20_2();
          v41 = swift_dynamicCastClass();
          v42 = v123;
          if (!v41)
          {
          }
        }

        else
        {
          v41 = 0;
          v42 = v123;
        }

        sub_1E3EB9BB4(&v134);
        v132 = v134;
        v133[0] = *v135;
        *(v133 + 9) = *&v135[9];
        v59 = v136;
        v130 = v137;
        v131 = v138;
        v60 = v139;
        v129 = v140;
        v128[0] = *v141;
        *(v128 + 3) = *&v141[3];
        v61 = v142;
        v127 = v143;
        v125 = v144;
        v126 = v145;
        type metadata accessor for OrdinalLockupContentLogo(0);
        sub_1E3746E10(v29);
        v62 = sub_1E3B0352C();
        (*(v25 + 8))(v29, v23);
        if (v41)
        {
          v63 = v115;
          if (v62)
          {
            if (*(v42 + 64) == 1)
            {
              v60 = 0.0;
              if (*(v42 + 144))
              {
LABEL_28:
                v79 = *(*v41 + 432);

                *&v81 = COERCE_DOUBLE(v79(v80));
                v83 = v82;

                v59 = 0;
                v84 = *&v81;
                if (v83)
                {
                  v84 = 1.0;
                }

                v129 = 0;
                v127 = 0;
                v61 = v60 / v84;
                goto LABEL_31;
              }

              v64 = 128;
            }

            else
            {
              v64 = 56;
            }

            v60 = *(v42 + v64);
            goto LABEL_28;
          }
        }

        else
        {
          v63 = v115;
        }

LABEL_31:
        v146 = v132;
        *v147 = v133[0];
        *&v147[9] = *(v133 + 9);
        v148 = v59;
        v149 = v130;
        v150 = v131;
        v151 = v60;
        v152 = v129;
        *&v153[3] = *(v128 + 3);
        *v153 = v128[0];
        v154 = v61;
        v155 = v127;
        v156 = v125;
        v157 = v126;
        v85 = OUTLINED_FUNCTION_18();
        sub_1E37E8BE8(v36, &v146, 0, v85 & 1, 0, 0, v63);
        OUTLINED_FUNCTION_8();
        v87 = *(v86 + 152);

        v87(&v132, v88);

        if (v133[1])
        {
          OUTLINED_FUNCTION_5_8();
        }

        else
        {
          OUTLINED_FUNCTION_13_3(v89, v90, v91, v92);
        }

        OUTLINED_FUNCTION_3();
        v93 = sub_1E4202734();
        v94 = v114;
        (*(v116 + 32))(v114, v63, v117);
        v95 = (v94 + *(v119 + 36));
        *v95 = v93;
        OUTLINED_FUNCTION_11_4(v95);
        OUTLINED_FUNCTION_18_5();
        sub_1E3741EA0(v96, v97, v98, v99);
        OUTLINED_FUNCTION_18_5();
        sub_1E3743538(v100, v101, v102, v103);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_82();
        sub_1E3D68938(v104);
        sub_1E38C9F4C();
        v105 = v124;
        sub_1E4201F44();
        sub_1E375C31C(&v146);

        OUTLINED_FUNCTION_82();
        sub_1E325F6F0(v106, v107, v108);
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF380F8, &unk_1E42CED80);
        v78 = v105;
LABEL_35:
        __swift_storeEnumTagSinglePayload(v78, 0, 1, v77);
        OUTLINED_FUNCTION_10_3();
        return;
      }
    }
  }

  v43 = (v31)(v32);
  if (v43)
  {
    v45 = sub_1E373E010(24, v43, v44);

    if (v45)
    {
      if (*v45 == _TtC8VideosUI13TextViewModel)
      {
        OUTLINED_FUNCTION_18();
        v46 = v110;
        sub_1E3F23370();
        OUTLINED_FUNCTION_8();
        v48 = *(v47 + 152);

        v48(&v146, v49);

        if (v147[16])
        {
          OUTLINED_FUNCTION_5_8();
        }

        else
        {
          OUTLINED_FUNCTION_13_3(v50, v51, v52, v53);
        }

        OUTLINED_FUNCTION_3();
        v65 = sub_1E4202734();
        (*(v111 + 32))(v9, v46, v112);
        v66 = (v9 + *(v122 + 36));
        *v66 = v65;
        OUTLINED_FUNCTION_11_4(v66);
        v67 = v113;
        OUTLINED_FUNCTION_38_2();
        sub_1E3741EA0(v68, v69, v70, v71);
        OUTLINED_FUNCTION_38_2();
        sub_1E3743538(v72, v73, v74, v75);
        swift_storeEnumTagMultiPayload();
        sub_1E3D68938(&qword_1EE289C40);
        sub_1E38C9F4C();
        v76 = v124;
        sub_1E4201F44();

        sub_1E325F6F0(v67, &qword_1ECF28CC0, &qword_1E4298440);
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF380F8, &unk_1E42CED80);
        v78 = v76;
        goto LABEL_35;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF380F8, &unk_1E42CED80);
  OUTLINED_FUNCTION_10_3();

  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
}

void sub_1E3D6691C()
{
  OUTLINED_FUNCTION_9_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_36();
  v12 = (*(v11 + 488))();
  if (v12)
  {
    v14 = sub_1E373E010(13, v12, v13);

    if (v14)
    {
      if (*v14 == _TtC8VideosUI13TextViewModel)
      {
        OUTLINED_FUNCTION_18();
        sub_1E3F23370();
        OUTLINED_FUNCTION_8();
        (*(v15 + 152))(v35);
        if (v36)
        {
          OUTLINED_FUNCTION_5_8();
        }

        else
        {
          v18.n128_u64[0] = v35[2];
          v19.n128_u64[0] = v35[3];
          v16.n128_u64[0] = v35[0];
          v17.n128_u64[0] = v35[1];
          j_nullsub_1(v16, v17, v18, v19);
        }

        OUTLINED_FUNCTION_3();
        v25 = sub_1E4202734();

        (*(v3 + 32))(v9, v0, v1);
        v26 = (v9 + *(v5 + 36));
        *v26 = v25;
        OUTLINED_FUNCTION_11_4(v26);
        OUTLINED_FUNCTION_146();
        OUTLINED_FUNCTION_38_2();
        sub_1E3741EA0(v27, v28, v29, v30);
        OUTLINED_FUNCTION_38_2();
        sub_1E3741EA0(v31, v32, v33, v34);
        OUTLINED_FUNCTION_39_5();
        OUTLINED_FUNCTION_10_3();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_10_3();

  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
}

uint64_t sub_1E3D66BC4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_36();
  v8 = (*(v7 + 488))();
  if (v8)
  {
    v10 = sub_1E373E010(23, v8, v9);

    if (v10)
    {
      if (*v10 == _TtC8VideosUI13TextViewModel)
      {
        OUTLINED_FUNCTION_18();
        sub_1E3F23370();

        (*(v5 + 32))(a1, v1, v3);
        return OUTLINED_FUNCTION_39_5();
      }
    }
  }

  OUTLINED_FUNCTION_48_3();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

void sub_1E3D66D70()
{
  OUTLINED_FUNCTION_31_1();
  v31 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38100, &qword_1E42CED90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8_4();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38108, &qword_1E42CED98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_36();
  v12 = (*(v11 + 488))();
  if (v12)
  {
    v14 = sub_1E373E010(17, v12, v13);

    if (v14)
    {
      if (*v14 == _TtC8VideosUI13TextViewModel)
      {
        OUTLINED_FUNCTION_66_3();
        if ((*(v15 + 2304))())
        {
          OUTLINED_FUNCTION_18();
          sub_1E3F23370();
          (*(v6 + 16))(v0, v9, v4);
          v16 = swift_storeEnumTagMultiPayload();
          v17 = OUTLINED_FUNCTION_0_21(v16);
          sub_1E3D68840(v17, v18, v19);
          sub_1E4201F44();

          (*(v6 + 8))(v9, v4);
        }

        else
        {

          nullsub_1();
          *v0 = v25;
          swift_storeEnumTagMultiPayload();

          v27 = OUTLINED_FUNCTION_0_21(v26);
          sub_1E3D68840(v27, v28, v29);
          sub_1E4201F44();
        }

        sub_1E3741EA0(v1, v31, &qword_1ECF38108, &qword_1E42CED98);
        OUTLINED_FUNCTION_39_5();
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
}

unint64_t sub_1E3D67140(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3D67180()
{
  result = qword_1EE2890A0;
  if (!qword_1EE2890A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37F00, &qword_1E42CE5F0);
    sub_1E3D67140(&unk_1EE28C4A0);
    sub_1E3D67140(&unk_1EE28C4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2890A0);
  }

  return result;
}

unint64_t sub_1E3D67274()
{
  result = qword_1EE289028;
  if (!qword_1EE289028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37EE8, &qword_1E42CE5D8);
    sub_1E3D67140(&_MergedGlobals_234);
    sub_1E3D67140(&unk_1EE28C498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289028);
  }

  return result;
}

uint64_t sub_1E3D67368(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3D673C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1E3D6745C()
{
  OUTLINED_FUNCTION_43_47();
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_79_20();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContextMenuModel(319);
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_11_124();
        sub_1E3D67578(319, v3, v4, MEMORY[0x1E697DCC0]);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_1_208();
          sub_1E3D67578(319, v6, v7, MEMORY[0x1E69E6720]);
          if (v8 <= 0x3F)
          {
            sub_1E3755B54();
            if (v9 <= 0x3F)
            {
              OUTLINED_FUNCTION_72();
              swift_cvw_initStructMetadataWithLayoutString();
              OUTLINED_FUNCTION_165();
            }
          }
        }
      }
    }
  }
}

void sub_1E3D67578(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E3D675DC()
{
  result = qword_1EE288C60;
  if (!qword_1EE288C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37F08, &qword_1E42CE658);
    sub_1E3D67180();
    sub_1E3D67274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288C60);
  }

  return result;
}

void sub_1E3D67690()
{
  OUTLINED_FUNCTION_43_47();
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_79_20();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_1_208();
      sub_1E3D67578(319, v2, v3, MEMORY[0x1E69E6720]);
      if (v4 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_165();
      }
    }
  }
}

void sub_1E3D67764()
{
  OUTLINED_FUNCTION_43_47();
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_79_20();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContextMenuModel(319);
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_1_208();
        sub_1E3D67578(319, v3, v4, MEMORY[0x1E69E6720]);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_11_124();
          sub_1E3D67578(319, v6, v7, MEMORY[0x1E697DCC0]);
          if (v8 <= 0x3F)
          {
            OUTLINED_FUNCTION_72();
            swift_cvw_initStructMetadataWithLayoutString();
            OUTLINED_FUNCTION_165();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_27Tm()
{
  OUTLINED_FUNCTION_27_48();
  if (v1)
  {
    return OUTLINED_FUNCTION_41_10();
  }

  OUTLINED_FUNCTION_28_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80, &qword_1E42BD8B0);
  v3 = OUTLINED_FUNCTION_60_4(*(v0 + 32));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_28Tm()
{
  OUTLINED_FUNCTION_55_2();
  if (v1)
  {
    OUTLINED_FUNCTION_58_3();
  }

  else
  {
    v2 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33D80, &qword_1E42BD8B0);
    v3 = OUTLINED_FUNCTION_20_7(*(v2 + 32));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

void sub_1E3D6799C()
{
  OUTLINED_FUNCTION_43_47();
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_79_20();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContextMenuModel(319);
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_1_208();
        sub_1E3D67578(319, v3, v4, MEMORY[0x1E69E6720]);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_72();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_165();
        }
      }
    }
  }
}

unint64_t sub_1E3D67AC8()
{
  result = qword_1ECF37F38;
  if (!qword_1ECF37F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37F10, &qword_1E42CE818);
    sub_1E3D67B80();
    sub_1E3D6870C(&qword_1EE2887D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37F38);
  }

  return result;
}

unint64_t sub_1E3D67B80()
{
  result = qword_1ECF37F40;
  if (!qword_1ECF37F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37F30, &unk_1E42CE838);
    sub_1E3D6870C(&unk_1ECF37F48);
    sub_1E3D6870C(&unk_1EE289218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37F40);
  }

  return result;
}

unint64_t sub_1E3D67CC4()
{
  result = qword_1EE2894F0;
  if (!qword_1EE2894F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37FC0, &qword_1E42CE8F0);
    sub_1E3D67D7C();
    sub_1E3D6870C(&unk_1EE289360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2894F0);
  }

  return result;
}

unint64_t sub_1E3D67D7C()
{
  result = qword_1EE2896D0;
  if (!qword_1EE2896D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37FF0, &qword_1E42CE920);
    sub_1E3D67E34();
    sub_1E3D6870C(&unk_1EE289308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2896D0);
  }

  return result;
}

unint64_t sub_1E3D67E34()
{
  result = qword_1EE289BC0;
  if (!qword_1EE289BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37FE0, &qword_1E42CE910);
    sub_1E3D67140(&unk_1EE2A06E8);
    sub_1E3D6870C(&unk_1EE289358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289BC0);
  }

  return result;
}

void sub_1E3D67F7C()
{
  OUTLINED_FUNCTION_43_47();
  type metadata accessor for OrdinalLockupCellLayout();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_1_208();
    sub_1E3D67578(319, v1, v2, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_72();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_165();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_9Tm()
{
  OUTLINED_FUNCTION_27_48();
  if (v1)
  {
    return OUTLINED_FUNCTION_41_10();
  }

  OUTLINED_FUNCTION_28_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v5 = OUTLINED_FUNCTION_60_4(*(v0 + 28));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void __swift_store_extra_inhabitant_index_10Tm()
{
  OUTLINED_FUNCTION_55_2();
  if (v3)
  {
    OUTLINED_FUNCTION_58_3();
  }

  else
  {
    v4 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
    v5 = OUTLINED_FUNCTION_20_7(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_1E3D68154()
{
  OUTLINED_FUNCTION_43_47();
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for OrdinalLockupCellLayout();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_11_124();
      sub_1E3D67578(319, v2, v3, MEMORY[0x1E697DCC0]);
      if (v4 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_165();
      }
    }
  }
}

unint64_t sub_1E3D68208()
{
  result = qword_1EE2899D8;
  if (!qword_1EE2899D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38008, &qword_1E42CE938);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37FD0, &qword_1E42CE900);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37FC8, &qword_1E42CE8F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37FC0, &qword_1E42CE8F0);
    sub_1E3D67CC4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E3D6870C(&qword_1EE2887D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2899D8);
  }

  return result;
}

unint64_t sub_1E3D6837C()
{
  result = qword_1ECF380B0;
  if (!qword_1ECF380B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38058, &qword_1E42CE990);
    sub_1E3D685FC(&unk_1ECF380B8);
    sub_1E3D6870C(&qword_1EE2889E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF380B0);
  }

  return result;
}

unint64_t sub_1E3D68460()
{
  result = qword_1ECF380C0;
  if (!qword_1ECF380C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38040, &qword_1E42CE970);
    sub_1E3D6870C(&unk_1ECF380C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF380C0);
  }

  return result;
}

unint64_t sub_1E3D68518()
{
  result = qword_1ECF380D0;
  if (!qword_1ECF380D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38088, &unk_1E42CE9C0);
    sub_1E3D685FC(&unk_1ECF380D8);
    sub_1E3D6870C(&qword_1EE2889E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF380D0);
  }

  return result;
}

unint64_t sub_1E3D685FC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_31_13(0, v4, v5);
    v6 = v2();
    result = OUTLINED_FUNCTION_16_7(v6, v7, v8, v9, v10, v11, v12, v13, v6);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3D68654()
{
  result = qword_1ECF380E0;
  if (!qword_1ECF380E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38070, &qword_1E42CE9A8);
    sub_1E3D6870C(&unk_1ECF380E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF380E0);
  }

  return result;
}

unint64_t sub_1E3D6870C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_31_13(0, v3, v4);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3D687E8()
{
  result = qword_1EE289EE8;
  if (!qword_1EE289EE8)
  {
    sub_1E4200B44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289EE8);
  }

  return result;
}

unint64_t sub_1E3D68840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2841A0;
  if (!qword_1EE2841A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2841A0);
  }

  return result;
}

unint64_t sub_1E3D68894()
{
  result = qword_1EE289C58;
  if (!qword_1EE289C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34968, &qword_1E42C15E0);
    sub_1E3D68938(&qword_1EE289C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C58);
  }

  return result;
}

unint64_t sub_1E3D68938(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_31_13(0, v3, v4);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    result = OUTLINED_FUNCTION_16_7(OpaqueTypeConformance2, v6, v7, v8, v9, v10, v11, v12, OpaqueTypeConformance2);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3D6899C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_31_13(0, v4, v5);
    v2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3D68A08()
{
  result = qword_1EE288F88;
  if (!qword_1EE288F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF380F8, &unk_1E42CED80);
    sub_1E3D68938(&qword_1EE289C40);
    sub_1E38C9F4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F88);
  }

  return result;
}

unint64_t sub_1E3D68AB4()
{
  result = qword_1EE2891B8;
  if (!qword_1EE2891B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38108, &qword_1E42CED98);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E3D68840(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2891B8);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_57_27@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 58);
  *(v1 + 144) = *(a1 + 42);
  *(v1 + 160) = v2;
  result = *(a1 + 72);
  *(v1 + 174) = result;
  return result;
}

void *OUTLINED_FUNCTION_68_25()
{

  return memcpy((v0 + 352), (v1 + 16), 0xC3uLL);
}

uint64_t OUTLINED_FUNCTION_74_18()
{

  return sub_1E3746E10(v0);
}

uint64_t OUTLINED_FUNCTION_79_20()
{

  return type metadata accessor for OrdinalLockupCellLayout();
}

uint64_t OUTLINED_FUNCTION_80_16()
{

  return sub_1E375C1CC(v0 + 352, v0 + 152);
}

uint64_t sub_1E3D68BEC(char a1)
{
  result = 0x7055657544;
  switch(a1)
  {
    case 1:
      result = 0x6C616E6946;
      break;
    case 2:
      result = 0x676E696E6E49;
      break;
    case 3:
      result = 0x656D6147657250;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E3D68C60()
{
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3D68CB0(unsigned __int8 a1, char a2)
{
  v2 = 0x7055657544;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7055657544;
  switch(v4)
  {
    case 1:
      v5 = 0x6C616E6946;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x676E696E6E49;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x656D6147657250;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6C616E6946;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x676E696E6E49;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x656D6147657250;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3D68DE8(uint64_t a1)
{
  v1 = a1;
  sub_1E4207B44();
  sub_1E3D68E38(v3, v1);
  return sub_1E4207BA4();
}

uint64_t sub_1E3D68E38(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3D68EE8(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3D68E38(v4, a2);
  return sub_1E4207BA4();
}

unint64_t sub_1E3D68F2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3D68C60();
  *a1 = result;
  return result;
}

uint64_t sub_1E3D68F5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3D68BEC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_1E3D68F90@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_57();
  sub_1E4200674();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

double sub_1E3D69018@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 848))(v5);
  v3 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v3;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_1E3D69090(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = *(a1 + 32);
  v5 = *(a1 + 48);
  sub_1E3D70DC4(v4, v3);
  return sub_1E3D690E4();
}

uint64_t sub_1E3D690E4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_82();
  return sub_1E4200684();
}

uint64_t sub_1E3D69164()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38120, &qword_1E42CEE18);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3D691D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38128, &qword_1E42CEE20);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v11 - v7, a1, v2, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38120, &qword_1E42CEE18);
  sub_1E4200654();
  swift_endAccess();
  v8 = OUTLINED_FUNCTION_27_0();
  return v9(v8);
}

uint64_t sub_1E3D692FC()
{
  v1 = OBJC_IVAR____TtC8VideosUI20PlayerStatsViewModel_isFinal;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E3D69340(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20PlayerStatsViewModel_isFinal;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3D69390()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 552))();
  if (!v1)
  {
    v4 = 0u;
    v5 = 0u;
    goto LABEL_6;
  }

  v3[3] = &type metadata for ViewModelKeys.Sports;
  v3[4] = &off_1F5D7BC68;
  LOBYTE(v3[0]) = 6;
  sub_1E3F9F164(v3, v1, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(v3);
  if (!*(&v5 + 1))
  {
LABEL_6:
    sub_1E325F7A8(&v4, &unk_1ECF296E0, &unk_1E4298030);
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  if (swift_dynamicCast())
  {
    return v3[0];
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1E3D69494()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v84 = v8;
  v85 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_162();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v79 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38130, &qword_1E42CEE28);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v79 - v17;
  sub_1E42056F4();
  v19 = sub_1E4205604();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v19);
  v82 = v0;
  v83 = v4;
  if (EnumTagSinglePayload)
  {
    sub_1E325F7A8(v18, &qword_1ECF38130, &qword_1E42CEE28);
    goto LABEL_3;
  }

  v81 = v11;
  sub_1E42055E4();
  v30 = v29;
  sub_1E325F7A8(v18, &qword_1ECF38130, &qword_1E42CEE28);
  if (v30)
  {
    v31 = 1;
    v80 = sub_1E3D68C60();
    v32 = 0x7055657544;
    switch(v80)
    {
      case 1:
        goto LABEL_21;
      case 2:
        v32 = OUTLINED_FUNCTION_56_28();
        goto LABEL_20;
      case 3:
        v32 = OUTLINED_FUNCTION_38_46();
        goto LABEL_20;
      case 4:
        goto LABEL_3;
      default:
LABEL_20:
        v31 = OUTLINED_FUNCTION_36_52(v32);
LABEL_21:

        v40 = OBJC_IVAR____TtC8VideosUI20PlayerStatsViewModel_isFinal;
        swift_beginAccess();
        *(v2 + v40) = v31 & 1;
        v41 = v6;

        v42 = [objc_opt_self() sharedInstance];
        if (!v42)
        {
          goto LABEL_58;
        }

        v90[0] = v42;
        v43 = MEMORY[0x1E69E7CC0];
        v90[8] = OUTLINED_FUNCTION_63_25();
        v90[9] = OUTLINED_FUNCTION_63_25();
        LOBYTE(v90[1]) = v80;
        v44 = *(*v2 + 464);
        v45 = v41;
        swift_retain_n();
        v46 = v45;
        v47 = v44();
        if (!v47)
        {

          v65 = 0;
          v64 = 0;
LABEL_41:
          v90[2] = v65;
          v90[3] = v2;
          v90[4] = v64;
          v90[5] = v46;
          v90[6] = v2;
          v90[7] = v46;
          v66 = v46;

          v67 = sub_1E3D69390();
          sub_1E3D6B218(v67);

          memcpy(v88, v90, sizeof(v88));
          memcpy(v89, v90, sizeof(v89));
          sub_1E3D70990(v88, v87);
          sub_1E3D70644(v89);
          memcpy(v87, v88, 0x50uLL);
          sub_1E3D69E14();
          v68 = v85;
          v69 = v81;
          if (LOBYTE(v88[6]) == 255)
          {
            v70 = sub_1E3E37F30();
            v71 = v84;
            (*(v84 + 16))(v69, v70, v68);
            v72 = sub_1E41FFC94();
            v73 = sub_1E42067E4();
            if (os_log_type_enabled(v72, v73))
            {
              *OUTLINED_FUNCTION_125_0() = 0;
              OUTLINED_FUNCTION_62(&dword_1E323F000, v74, v75, "PlayerStatsViewModel.updateSubscription: Stats Failure -- PlayerStatsViewData is nil");
              v71 = v84;
              OUTLINED_FUNCTION_6_0();
            }

            (*(v71 + 8))(v69, v68);
            v76 = 0x7055657544;
            switch(v80)
            {
              case 1:

                goto LABEL_51;
              case 2:
                v76 = OUTLINED_FUNCTION_56_28();
                break;
              case 3:
                v76 = OUTLINED_FUNCTION_38_46();
                break;
              default:
                break;
            }

            v77 = OUTLINED_FUNCTION_36_52(v76);

            if (v77)
            {
LABEL_51:
              memset(v90, 0, 48);
              LOBYTE(v90[6]) = -1;
              sub_1E3D690E4();
            }

            v78 = sub_1E3D70644(v87);
            if ((*v4 & 1) == 0)
            {
              v37 = v89;
              (*(*v2 + 848))(v89, v78);
              v38 = LOBYTE(v89[6]);
              goto LABEL_17;
            }

            goto LABEL_53;
          }

          sub_1E3D70674(v88[0], v88[1], v88[2], v88[3], v88[4], v88[5], v88[6] & 1);
          sub_1E3D690E4();
          sub_1E325F7A8(v88, &qword_1ECF2F0C8, &unk_1E42AE090);
          sub_1E3D70644(v87);
          if (*v4)
          {
            goto LABEL_53;
          }

          v37 = v90;
          (*(*v2 + 848))(v90);
          goto LABEL_16;
        }

        v48 = v47;
        v79 = v46;
        v87[0] = v43;
        v49 = sub_1E32AE9B0(v47);
        v50 = 0;
        v86 = v48 & 0xC000000000000001;
        break;
    }

    while (1)
    {
      if (v49 == v50)
      {

        v57 = v87[0];
        v88[0] = v87[0];
        v89[0] = 0;
        LOBYTE(v89[1]) = 0;
        v58 = OUTLINED_FUNCTION_57();
        __swift_instantiateConcreteTypeFromMangledNameV2(v58, v59);
        OUTLINED_FUNCTION_0_32();
        OUTLINED_FUNCTION_82();
        sub_1E32752B0(v60, v61, v62, v63);
        OUTLINED_FUNCTION_41_50();
        v64 = v87[0];
        v88[0] = v57;
        v89[0] = 1;
        LOBYTE(v89[1]) = 0;

        OUTLINED_FUNCTION_41_50();

        v46 = v79;

        v2 = v82;

        v65 = v87[0];
        v4 = v83;
        goto LABEL_41;
      }

      if (v86)
      {
        v52 = MEMORY[0x1E6911E60](v50, v48);
        v51 = v52;
      }

      else
      {
        if (v50 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v51 = *(v48 + 8 * v50 + 32);
      }

      if (__OFADD__(v50, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        return;
      }

      v92 = *(v51 + 98);
      v91 = 41;
      sub_1E3742F1C(v52, v53, v54);
      sub_1E4206254();
      sub_1E4206254();
      if (v89[0] == v88[0] && v89[1] == v88[1])
      {
      }

      else
      {
        v56 = OUTLINED_FUNCTION_97_0(v89[0], v89[1], v88[0]);

        if ((v56 & 1) == 0)
        {

          goto LABEL_37;
        }
      }

      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
LABEL_37:
      ++v50;
    }
  }

LABEL_3:
  v21 = sub_1E3E37F30();
  v23 = v84;
  v22 = v85;
  (*(v84 + 16))(v1, v21, v85);
  v24 = v6;
  v25 = sub_1E41FFC94();
  v26 = sub_1E42067E4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = OUTLINED_FUNCTION_100();
    v89[0] = v28;
    *v27 = 136315138;
    sub_1E42056F4();
    if (__swift_getEnumTagSinglePayload(v15, 1, v19))
    {
      sub_1E325F7A8(v15, &qword_1ECF38130, &qword_1E42CEE28);
    }

    else
    {
      sub_1E42055E4();
      OUTLINED_FUNCTION_49_4();
      sub_1E325F7A8(v15, &qword_1ECF38130, &qword_1E42CEE28);
      if (v19)
      {
        v90[3] = MEMORY[0x1E69E6158];
        v90[0] = v15;
        v90[1] = v19;
        goto LABEL_13;
      }
    }

    memset(v90, 0, 32);
LABEL_13:
    v33 = sub_1E3294FA4(v90);
    v35 = sub_1E3270FC8(v33, v34, v89);

    *(v27 + 4) = v35;
    _os_log_impl(&dword_1E323F000, v25, v26, "PlayerStatsViewModel.updateSubscription: Stats Failure -- invalid 'mode' = %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v84 + 8))(v1, v85);
    goto LABEL_14;
  }

  (*(v23 + 8))(v1, v22);
LABEL_14:
  v4 = v83;
  if (*v83)
  {
LABEL_53:
    v39 = 1;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_8();
  v37 = v90;
  (*(v36 + 848))(v90);
LABEL_16:
  v38 = LOBYTE(v90[6]);
LABEL_17:
  if (v38 == 255)
  {
    goto LABEL_53;
  }

  sub_1E325F7A8(v37, &qword_1ECF2F0C8, &unk_1E42AE090);
  v39 = 0;
LABEL_54:
  *v4 = v39;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D69E14()
{
  OUTLINED_FUNCTION_31_1();
  v152 = v3;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v150 = v5;
  v151 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_162();
  MEMORY[0x1EEE9AC00](v6);
  v149 = &v147 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38130, &qword_1E42CEE28);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_1();
  v154 = v0;
  v10 = *(v0 + 56);
  sub_1E42056F4();
  v11 = sub_1E4205604();
  if (__swift_getEnumTagSinglePayload(v2, 1, v11) || (v13 = sub_1E42055F4()) == 0)
  {

    sub_1E325F7A8(v2, &qword_1ECF38130, &qword_1E42CEE28);
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v14 = v13;
    v148 = v1;
    sub_1E325F7A8(v2, &qword_1ECF38130, &qword_1E42CEE28);
    v15 = *(v14 + 16);
    v16 = v10;
    v17 = 0;
    v18 = v14 + 40;
    v19 = MEMORY[0x1E69E7CC0];
    *&v153 = v14 + 40;
LABEL_5:
    v20 = v18 + 16 * v17;
    while (v15 != v17)
    {
      if (v17 >= *(v14 + 16))
      {
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        return;
      }

      ++v17;
      v21 = v20 + 16;

      sub_1E3D6BE74();
      v23 = v22;
      v25 = v24;

      v20 = v21;
      if (v23)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = OUTLINED_FUNCTION_27();
          v19 = sub_1E3D70258(v29, v30, v31, v19);
        }

        v27 = v19[2];
        v26 = v19[3];
        if (v27 >= v26 >> 1)
        {
          v32 = OUTLINED_FUNCTION_35(v26);
          v19 = sub_1E3D70258(v32, v27 + 1, 1, v19);
        }

        v19[2] = v27 + 1;
        v28 = &v19[2 * v27];
        v28[4] = v23;
        v28[5] = v25;
        v18 = v153;
        goto LABEL_5;
      }
    }

    v33 = v19[2];
    if (v33)
    {
      v158[0] = MEMORY[0x1E69E7CC0];
      sub_1E3D709C8(0, v33, 0);
      v34 = 0;
      v12 = v158[0];
      while (v34 < v19[2])
      {
        v153 = *&v19[2 * v34 + 4];
        v158[0] = v12;
        v36 = *(v12 + 16);
        v35 = *(v12 + 24);
        v37 = v153;
        v38 = *(&v153 + 1);
        if (v36 >= v35 >> 1)
        {
          sub_1E3D709C8((v35 > 1), v36 + 1, 1);
          v12 = v158[0];
        }

        ++v34;
        *(v12 + 16) = v36 + 1;
        *(v12 + 16 * v36 + 32) = v153;
        if (v33 == v34)
        {

          goto LABEL_22;
        }
      }

      goto LABEL_77;
    }

    v12 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v1 = v148;
  }

  v39 = v154[8];

  if ((v39 - 1) > 2)
  {
    v148 = v1;
    v61 = sub_1E3D6C1D0(3, v12);
    v42 = v62;
    v64 = v63;
    v66 = v65 >> 1;
    *&v153 = v61;
    swift_unknownObjectRetain();
    v67 = 0;
    v44 = &v42[16 * v64 + 8];
    v68 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (__OFADD__(v67, 1))
      {
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      if (v66 == v64)
      {
        break;
      }

      if (v64 >= v66)
      {
        goto LABEL_75;
      }

      v69 = *v44;
      v70 = *(v44 - 1);
      v71 = v69;
      v42 = v154;
      sub_1E3D6C264();
      memcpy(v157, v158, 0x60uLL);

      if (v158[2])
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = OUTLINED_FUNCTION_27();
          v68 = sub_1E3D70028(v74, v75, v76, v68);
        }

        v73 = *(v68 + 2);
        v72 = *(v68 + 3);
        v42 = (v73 + 1);
        if (v73 >= v72 >> 1)
        {
          v77 = OUTLINED_FUNCTION_1_12(v72);
          v68 = sub_1E3D70028(v77, v78, v79, v68);
        }

        memcpy(v156, v157, 0x60uLL);
        *(v68 + 2) = v42;
        memcpy(&v68[96 * v73 + 32], v156, 0x60uLL);
      }

      v44 += 2;
      ++v67;
      ++v64;
    }

    swift_unknownObjectRelease_n();
    if (*(v68 + 2) == 3)
    {
      if (*(v12 + 16))
      {
        v83 = *(v12 + 40);
        v84 = *(v12 + 32);
        v85 = v83;

        v86 = v154;
        v87 = *(v154 + 8);
        v42 = v84;
        v88 = v85;
        v89 = sub_1E42054D4();
        v91 = sub_1E37D26AC(v89, v90, v87);
        v44 = v92;

        if (v44)
        {
          v42 = *v86;

          v93 = sub_1E3741090(0xD00000000000002FLL, 0x80000001E4281300, v42);
          if (v94)
          {
            v95 = v93;
            v96 = v94;
            sub_1E3741090(0xD00000000000001ELL, 0x80000001E4281280, v42);
            v49 = v97;
            if (v97)
            {
              v157[0] = v95;
              v157[1] = v96;
              OUTLINED_FUNCTION_29_72();
              v156[0] = v98;
              v156[1] = v99;
              v155[0] = v100;
              v155[1] = v49;
              sub_1E32822E0(v100, v101, v102);
              *&v153 = v91;
              v103 = MEMORY[0x1E69E6158];
              OUTLINED_FUNCTION_2_178();
              sub_1E42071F4();
              OUTLINED_FUNCTION_145();

              v157[0] = v157;
              v157[1] = "Baseball.StartingPitcher";
              v156[0] = 0xD000000000000010;
              v156[1] = 0x80000001E42813B0;
              v155[0] = v153;
              v155[1] = v44;
              OUTLINED_FUNCTION_2_178();
              v104 = sub_1E42071F4();
              v106 = v105;
              OUTLINED_FUNCTION_194_0();
              swift_bridgeObjectRelease_n();

              v107 = type metadata accessor for TextViewModel();
              v157[3] = v103;
              v157[0] = v104;
              v157[1] = v106;

              OUTLINED_FUNCTION_21_7();
              v42 = v107;
              v49 = sub_1E3C27638(v108, v109, v110, v111, v112);
            }

            else
            {
              OUTLINED_FUNCTION_194_0();
              swift_bridgeObjectRelease_n();
            }

            goto LABEL_65;
          }

          OUTLINED_FUNCTION_194_0();
          swift_bridgeObjectRelease_n();
        }
      }

      else
      {
      }

      v49 = 0;
LABEL_65:
      OUTLINED_FUNCTION_42_54(39);
      OUTLINED_FUNCTION_49_4();
      v80 = OUTLINED_FUNCTION_42_54(40);
      v82 = 0;
      goto LABEL_70;
    }

    v125 = sub_1E3E37F30();
    v127 = v150;
    v126 = v151;
    v128 = v148;
    (*(v150 + 16))(v148, v125, v151);
    v129 = v154;
    sub_1E3D70990(v154, v157);

    v130 = sub_1E41FFC94();
    v131 = sub_1E42067E4();
    sub_1E3D70644(v129);
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = OUTLINED_FUNCTION_100();
      v157[0] = v133;
      *v132 = 134218242;
      v134 = *(v68 + 2);

      *(v132 + 4) = v134;

      *(v132 + 12) = 2080;
      *(v132 + 14) = sub_1E3270FC8(0x7055657544, 0xE500000000000000, v157);
      OUTLINED_FUNCTION_122_0();
      _os_log_impl(v135, v136, v137, v138, v139, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v133);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v127 + 8))(v128, v126);
  }

  else
  {
    v148 = v39;
    v40 = sub_1E3D6C1D0(2, v12);
    v42 = v41;
    v44 = v43;
    v46 = (v45 >> 1);
    *&v153 = v40;
    swift_unknownObjectRetain();
    v47 = 0;
    v48 = &v42[16 * v44 + 8];
    v49 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (__OFADD__(v47, 1))
      {
        __break(1u);
        goto LABEL_73;
      }

      if (v46 == v44)
      {
        break;
      }

      if (v44 >= v46)
      {
        goto LABEL_74;
      }

      v50 = *v48;
      v51 = *(v48 - 1);
      v52 = v50;
      v42 = v154;
      sub_1E3D6C860();
      memcpy(v156, v157, sizeof(v156));

      memcpy(v158, v157, 0x88uLL);
      if (sub_1E3D70AF0(v158) != 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = OUTLINED_FUNCTION_27();
          v49 = sub_1E3D70140(v55, v56, v57, v49);
        }

        v54 = *(v49 + 16);
        v53 = *(v49 + 24);
        v42 = (v54 + 1);
        if (v54 >= v53 >> 1)
        {
          v58 = OUTLINED_FUNCTION_1_12(v53);
          v49 = sub_1E3D70140(v58, v59, v60, v49);
        }

        memcpy(v155, v156, sizeof(v155));
        *(v49 + 16) = v42;
        memcpy((v49 + 136 * v54 + 32), v155, 0x88uLL);
      }

      v48 += 2;
      ++v47;
      v44 = (v44 + 1);
    }

    swift_unknownObjectRelease_n();
    if (*(v49 + 16) == 2)
    {
      OUTLINED_FUNCTION_42_54(42);
      OUTLINED_FUNCTION_49_4();
      v80 = 0;
      v81 = 0;
      v68 = 0;
      v82 = 1;
      goto LABEL_70;
    }

    v113 = sub_1E3E37F30();
    v115 = v149;
    v114 = v150;
    v116 = v151;
    (*(v150 + 16))(v149, v113, v151);

    v117 = v154;
    sub_1E3D70990(v154, v156);
    v118 = sub_1E41FFC94();
    v119 = sub_1E42067E4();
    sub_1E3D70644(v117);
    if (os_log_type_enabled(v118, v119))
    {
      v120 = 0x7055657544;
      v121 = swift_slowAlloc();
      v122 = OUTLINED_FUNCTION_100();
      v156[0] = v122;
      *v121 = 134218242;
      v123 = *(v49 + 16);

      *(v121 + 4) = v123;

      *(v121 + 12) = 2080;
      v124 = 0xE500000000000000;
      switch(v148)
      {
        case 1:
          v120 = 0x6C616E6946;
          break;
        case 2:
          v124 = 0xE600000000000000;
          v120 = 0x676E696E6E49;
          break;
        case 3:
          v124 = 0xE700000000000000;
          v120 = 0x656D6147657250;
          break;
        default:
          break;
      }

      v140 = sub_1E3270FC8(v120, v124, v156);

      *(v121 + 14) = v140;
      OUTLINED_FUNCTION_122_0();
      _os_log_impl(v141, v142, v143, v144, v145, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v122);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v150 + 8))(v149, v151);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v114 + 8))(v115, v116);
    }
  }

  v42 = 0;
  v44 = 0;
  v49 = 0;
  v80 = 0;
  v81 = 0;
  v68 = 0;
  v82 = -1;
LABEL_70:
  v146 = v152;
  *v152 = v42;
  v146[1] = v44;
  v146[2] = v49;
  v146[3] = v80;
  v146[4] = v81;
  v146[5] = v68;
  *(v146 + 48) = v82;
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D6A980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  swift_allocObject();
  return sub_1E3D6A9D4(v5, a2, a3);
}

uint64_t sub_1E3D6A9D4(__int16 a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38120, &qword_1E42CEE18);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_20_1();
  v12 = OBJC_IVAR____TtC8VideosUI20PlayerStatsViewModel__viewData;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0C8, &unk_1E42AE090);
  sub_1E4200634();
  (*(v10 + 32))(v3 + v12, v4, v8);
  *(v3 + OBJC_IVAR____TtC8VideosUI20PlayerStatsViewModel_isFinal) = 0;
  return sub_1E39BEDCC(a1, a2, a3);
}

void sub_1E3D6AAFC()
{
  OUTLINED_FUNCTION_48_1();
  swift_allocObject();
  OUTLINED_FUNCTION_13_11();
  sub_1E3D6AB48();
}

void sub_1E3D6AB48()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_48_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38120, &qword_1E42CEE18);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8[-v5];
  v7 = OBJC_IVAR____TtC8VideosUI20PlayerStatsViewModel__viewData;
  memset(v8, 0, 48);
  v8[48] = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0C8, &unk_1E42AE090);
  sub_1E4200634();
  (*(v3 + 32))(v0 + v7, v6, v1);
  *(v0 + OBJC_IVAR____TtC8VideosUI20PlayerStatsViewModel_isFinal) = 0;
  OUTLINED_FUNCTION_13_11();
  sub_1E39C0300();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D6AC60()
{
  v1 = OBJC_IVAR____TtC8VideosUI20PlayerStatsViewModel__viewData;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38120, &qword_1E42CEE18);
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_1E3D6ACC8()
{
  v0 = ViewModel.deinit();
  v1 = OBJC_IVAR____TtC8VideosUI20PlayerStatsViewModel__viewData;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38120, &qword_1E42CEE18);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E3D6AD6C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PlayerStatsViewModel(0);
  result = sub_1E4200514();
  *a2 = result;
  return result;
}

void sub_1E3D6ADAC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_162();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v54 = &type metadata for ViewModelKeys.Sports;
  v55 = &off_1F5D7BC68;
  LOBYTE(v53[0]) = 7;
  v13 = OUTLINED_FUNCTION_28_64();
  if (!v57)
  {
    __swift_destroy_boxed_opaque_existential_1(v53);
    sub_1E325F7A8(v56, &unk_1ECF296E0, &unk_1E4298030);
LABEL_8:
    sub_1E3E37F30();
    OUTLINED_FUNCTION_2_26();
    v25(v12);
    v26 = sub_1E41FFC94();
    v27 = sub_1E42067E4();
    if (os_log_type_enabled(v26, v27))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_62(&dword_1E323F000, v28, v29, "PlayerStatsViewDataFactory.init: Stats Failure -- competitor id is nil");
      OUTLINED_FUNCTION_6_0();
    }

    (*(v5 + 8))(v12, v3);
    goto LABEL_24;
  }

  if ((OUTLINED_FUNCTION_27_64(v13, v14, v15, MEMORY[0x1E69E6158]) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v53);
    goto LABEL_8;
  }

  v49 = v51;
  v50 = v52;
  __swift_destroy_boxed_opaque_existential_1(v53);
  v54 = &type metadata for ViewModelKeys.Sports;
  v55 = &off_1F5D7BC68;
  LOBYTE(v53[0]) = 13;
  v16 = OUTLINED_FUNCTION_28_64();
  if (!v57)
  {
    v48 = v2;
    __swift_destroy_boxed_opaque_existential_1(v53);
    sub_1E325F7A8(v56, &unk_1ECF296E0, &unk_1E4298030);
LABEL_13:
    sub_1E3E37F30();
    OUTLINED_FUNCTION_2_26();
    v30(v9);
    v31 = sub_1E41FFC94();
    v32 = sub_1E42067E4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_125_0();
      *v33 = 0;
      _os_log_impl(&dword_1E323F000, v31, v32, "PlayerStatsViewDataFactory.init: Stats Failure (not critical) -- team abbreviation is nil", v33, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v5 + 8))(v9, v3);
    v19 = v48;
    v24 = v50;
    goto LABEL_16;
  }

  if ((OUTLINED_FUNCTION_27_64(v16, v17, v18, MEMORY[0x1E69E6158]) & 1) == 0)
  {
    v48 = v2;
    __swift_destroy_boxed_opaque_existential_1(v53);
    goto LABEL_13;
  }

  v19 = v2;
  v20 = v51;
  v21 = v52;
  __swift_destroy_boxed_opaque_existential_1(v53);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53[0] = *(v19 + 64);
  v23 = v20;
  v24 = v50;
  sub_1E38C5C90(v23, v21, v49, v50, isUniquelyReferenced_nonNull_native);
  *(v19 + 64) = v53[0];
LABEL_16:
  v54 = &type metadata for ViewModelKeys.Sports;
  v55 = &off_1F5D7BC68;
  LOBYTE(v53[0]) = 8;
  v34 = OUTLINED_FUNCTION_28_64();
  if (v57)
  {
    if (OUTLINED_FUNCTION_27_64(v34, v35, v36, MEMORY[0x1E69E6158]))
    {
      __swift_destroy_boxed_opaque_existential_1(v53);
      swift_isUniquelyReferenced_nonNull_native();
      v53[0] = *(v19 + 72);
      v37 = OUTLINED_FUNCTION_27_0();
      sub_1E38C5C90(v37, v38, v49, v24, v39);
      *(v19 + 72) = v53[0];

      goto LABEL_24;
    }

    __swift_destroy_boxed_opaque_existential_1(v53);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v53);
    sub_1E325F7A8(v56, &unk_1ECF296E0, &unk_1E4298030);
  }

  sub_1E3E37F30();
  OUTLINED_FUNCTION_2_26();
  v40(v0);
  v41 = sub_1E41FFC94();
  v42 = sub_1E42067E4();
  if (os_log_type_enabled(v41, v42))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_122_0();
    _os_log_impl(v43, v44, v45, v46, v47, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v5 + 8))(v0, v3);
LABEL_24:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D6B218(uint64_t result)
{
  v2 = *(result + 16);
  v3 = result + 32;
  if (v2)
  {
    while (1)
    {

      sub_1E3D6ADAC();
      if (v1)
      {
        break;
      }

      v3 += 8;
      if (!--v2)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_1E3D6B298(unint64_t a1, char **a2)
{
  v4 = 0;
  v23 = a1 & 0xC000000000000001;
  v24 = sub_1E32AE9B0(a1);
  while (v24 != v4)
  {
    if (v23)
    {
      v5 = MEMORY[0x1E6911E60](v4, a1);
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    sub_1E4205B04();
    v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v9 = [objc_opt_self() sharedInstance];
    if (!v9)
    {
      goto LABEL_25;
    }

    v10 = v9;
    v11 = v8;
    v12 = sub_1E3D70B68(v8, 0, 808463920, 0xE400000000000000, 0, 0, v10);
    v14 = v13;

    if (v14)
    {
    }

    else
    {
      v15 = [objc_opt_self() localizedStringFromNumber:v11 numberStyle:1];
      v12 = sub_1E4205F14();
      v14 = v16;
    }

    v17 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v17 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      v18 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_1E3740F88(0, *(v18 + 2) + 1, 1, v18);
        *a2 = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      if (v21 >= v20 >> 1)
      {
        v18 = sub_1E3740F88((v20 > 1), v21 + 1, 1, v18);
        *a2 = v18;
      }

      *(v18 + 2) = v21 + 1;
      v22 = &v18[16 * v21];
      *(v22 + 4) = v12;
      *(v22 + 5) = v14;
    }

    else
    {
    }

    ++v4;
  }
}

void sub_1E3D6B4E4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, BOOL *a11)
{
  v101 = a8;
  v89 = a7;
  v94 = a6;
  v97 = a5;
  v96 = a4;
  v95 = a3;
  v112 = a11;
  v98 = a9;
  v99 = a10;
  v100 = sub_1E41FE004();
  v13 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v93 = v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v92 = v86 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8, &unk_1E42B18D0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v102 = v86 - v18;
  v19 = (a1 + 32);
  v91 = (v13 + 16);
  v20 = *(a1 + 16);
  v90 = (v13 + 8);
  if (!v20)
  {
LABEL_54:

    return;
  }

  while (1)
  {
    v21 = *v19;
    v22 = *a2;
    *(&v110 + 1) = &unk_1F5D7C258;
    v111 = &off_1F5D7BCB8;
    LOBYTE(v109) = v21;

    v23 = sub_1E39BD1A0(&v109, v22);

    __swift_destroy_boxed_opaque_existential_1(&v109);
    if (!v23)
    {
      goto LABEL_47;
    }

    v103 = v19;
    v24 = sub_1E3C7CCAC(0);
    v26 = v25;
    v27 = sub_1E3C7CCAC(0);
    if (v23[2] && (v29 = sub_1E327D33C(v27, v28), (v30 & 1) != 0))
    {
      sub_1E328438C(v23[7] + 32 * v29, &v109);
    }

    else
    {
      v109 = 0u;
      v110 = 0u;
    }

    if (!*(&v110 + 1))
    {
      sub_1E325F7A8(&v109, &unk_1ECF296E0, &unk_1E4298030);
      goto LABEL_27;
    }

    v31 = swift_dynamicCast();
    v32 = v102;
    if ((v31 & 1) == 0)
    {
      goto LABEL_27;
    }

    v33 = *(&v108[0] + 1);
    if (!v101 || !v99)
    {
      goto LABEL_26;
    }

    v34 = *&v108[0];

    sub_1E41FDFF4();
    if (__swift_getEnumTagSinglePayload(v32, 1, v100))
    {
    }

    else
    {
      MEMORY[0x1E6908940](v34, v33);
    }

    v35 = v32;
    if (__swift_getEnumTagSinglePayload(v32, 1, v100))
    {
      goto LABEL_25;
    }

    v36 = v93;
    (*v91)(v93, v35, v100);
    v37 = v92;
    sub_1E41FDFC4();
    v38 = v36;
    v39 = v37;
    (*v90)(v38, v100);
    v40 = sub_1E41FE414();
    if (__swift_getEnumTagSinglePayload(v39, 1, v40) == 1)
    {
      sub_1E325F7A8(v39, &unk_1ECF363C0, &unk_1E42A9420);
      goto LABEL_24;
    }

    v88 = a2;
    v87 = sub_1E41FE314();
    v42 = v41;
    v43 = (*(*(v40 - 8) + 8))(v39, v40);
    *&v109 = v87;
    *(&v109 + 1) = v42;
    sub_1E32822E0(v43, v44, v45);
    v87 = sub_1E4207214();
    v47 = v46;

    if (!v47)
    {
      a2 = v88;
LABEL_24:
      v35 = v102;
LABEL_25:
      sub_1E325F7A8(v35, &qword_1ECF304A8, &unk_1E42B18D0);
LABEL_26:

LABEL_27:
      v58 = sub_1E327D33C(v24, v26);
      if (v59)
      {
        v60 = v58;
        swift_isUniquelyReferenced_nonNull_native();
        *&v108[0] = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
        sub_1E4207644();
        v23 = *&v108[0];

        sub_1E329504C((v23[7] + 32 * v60), &v109);
        sub_1E4207664();
      }

      else
      {
        v109 = 0u;
        v110 = 0u;
      }

      sub_1E325F7A8(&v109, &unk_1ECF296E0, &unk_1E4298030);
      goto LABEL_31;
    }

    *&v108[0] = v87;
    *(&v108[0] + 1) = v47;
    v86[1] = v47;
    v106 = 8221819;
    v107 = 0xE300000000000000;
    v104 = v89;
    v105 = v101;
    v48 = MEMORY[0x1E69E6158];
    v49 = sub_1E42071F4();
    v51 = v50;

    sub_1E325F7A8(v102, &qword_1ECF304A8, &unk_1E42B18D0);

    *(&v110 + 1) = v48;
    *&v109 = v49;
    *(&v109 + 1) = v51;
    sub_1E329504C(&v109, v108);
    swift_isUniquelyReferenced_nonNull_native();
    v106 = v23;
    v52 = sub_1E327D33C(v24, v26);
    a2 = v88;
    if (__OFADD__(v23[2], (v53 & 1) == 0))
    {
      goto LABEL_57;
    }

    v54 = v52;
    LODWORD(v87) = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
    if (sub_1E4207644())
    {
      v55 = sub_1E327D33C(v24, v26);
      v57 = v87;
      if ((v87 & 1) != (v56 & 1))
      {
        goto LABEL_59;
      }

      v54 = v55;
    }

    else
    {
      v57 = v87;
    }

    v23 = v106;
    if (v57)
    {
      v82 = (*(v106 + 56) + 32 * v54);
      __swift_destroy_boxed_opaque_existential_1(v82);
      sub_1E329504C(v108, v82);
    }

    else
    {
      *(v106 + 8 * (v54 >> 6) + 64) |= 1 << v54;
      v83 = (v23[6] + 16 * v54);
      *v83 = v24;
      v83[1] = v26;
      sub_1E329504C(v108, (v23[7] + 32 * v54));
      v84 = v23[2];
      v80 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (v80)
      {
        goto LABEL_58;
      }

      v23[2] = v85;
    }

LABEL_31:
    if (*v112)
    {
      v61 = 1;
    }

    else
    {
      v62 = sub_1E3C7CCAC(0);
      if (v23[2] && (v64 = sub_1E327D33C(v62, v63), (v65 & 1) != 0))
      {
        sub_1E328438C(v23[7] + 32 * v64, &v109);
      }

      else
      {
        v109 = 0u;
        v110 = 0u;
      }

      v61 = *(&v110 + 1) != 0;
      sub_1E325F7A8(&v109, &unk_1ECF296E0, &unk_1E4298030);
    }

    *v112 = v61;
    v66 = sub_1E3C7F828(v21);
    v68 = v67;
    *(&v110 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    *&v109 = v23;
    sub_1E329504C(&v109, v108);
    swift_isUniquelyReferenced_nonNull_native();
    v106 = *a2;
    v69 = v106;
    v70 = sub_1E327D33C(v66, v68);
    if (__OFADD__(*(v69 + 16), (v71 & 1) == 0))
    {
      break;
    }

    v72 = v70;
    v73 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
    if (sub_1E4207644())
    {
      v74 = sub_1E327D33C(v66, v68);
      if ((v73 & 1) != (v75 & 1))
      {
        goto LABEL_59;
      }

      v72 = v74;
    }

    v76 = v106;
    if (v73)
    {
      v77 = (*(v106 + 56) + 32 * v72);
      __swift_destroy_boxed_opaque_existential_1(v77);
      sub_1E329504C(v108, v77);
    }

    else
    {
      *(v106 + 8 * (v72 >> 6) + 64) |= 1 << v72;
      v78 = (v76[6] + 16 * v72);
      *v78 = v66;
      v78[1] = v68;
      sub_1E329504C(v108, (v76[7] + 32 * v72));
      v79 = v76[2];
      v80 = __OFADD__(v79, 1);
      v81 = v79 + 1;
      if (v80)
      {
        goto LABEL_56;
      }

      v76[2] = v81;
    }

    *a2 = v76;
    v19 = v103;
LABEL_47:
    ++v19;
    if (!--v20)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  sub_1E4207A74();
  __break(1u);
}

void sub_1E3D6BE74()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v40 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v37 = v4;
  v38 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v36 = v6 - v5;
  v7 = sub_1E42056A4();
  v8 = sub_1E4205024();

  v9 = sub_1E32AE9B0(v8);
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = v8 & 0xC000000000000001;
    v34 = v8 + 32;
    v35 = v8 & 0xFFFFFFFFFFFFFF8;
    v32 = v8 & 0xC000000000000001;
    v33 = v9;
    while (1)
    {
      if (v12)
      {
        v13 = OUTLINED_FUNCTION_142();
        v14 = MEMORY[0x1E6911E60](v13);
      }

      else
      {
        if (v11 >= *(v35 + 16))
        {
          goto LABEL_36;
        }

        v14 = *(v34 + 8 * v11);
      }

      v15 = v14;
      if (__OFADD__(v11++, 1))
      {
        break;
      }

      v17 = sub_1E4205964();
      v18 = sub_1E42054E4();

      if (v18)
      {
        v39 = v15;
        v19 = sub_1E32AE9B0(v18);
        for (i = 0; ; ++i)
        {
          if (v19 == i)
          {

            v12 = v32;
            v10 = v33;
            goto LABEL_25;
          }

          if ((v18 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x1E6911E60](i, v18);
          }

          else
          {
            if (i >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_34;
            }

            v21 = *(v18 + 8 * i + 32);
          }

          v22 = v21;
          if (__OFADD__(i, 1))
          {
            break;
          }

          v23 = sub_1E4205554();
          if (v24)
          {
            if (v23 == v40 && v24 == v1)
            {

LABEL_31:

              sub_1E4205964();

              goto LABEL_32;
            }

            v26 = sub_1E42079A4();

            if (v26)
            {

              goto LABEL_31;
            }
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
        break;
      }

LABEL_25:
      if (v11 == v10)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
LABEL_26:

    v27 = sub_1E3E37F30();
    (*(v37 + 16))(v36, v27, v38);

    v28 = sub_1E41FFC94();
    v29 = sub_1E42067E4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = OUTLINED_FUNCTION_100();
      v41 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_1E3270FC8(v40, v1, &v41);
      _os_log_impl(&dword_1E323F000, v28, v29, "SportingEventSubscription.getTeamMemberInfo: Stats Failure -- unable to parse TeamMember for player canonical = %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v37 + 8))(v36, v38);
LABEL_32:
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E3D6C1D0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1E380055C(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      sub_1E39E8C20(0, v5, a2);
      v7 = v6;

      return v7;
    }
  }

  __break(1u);
  return result;
}

void sub_1E3D6C264()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v95 = v3;
  v92 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_1E3D6D41C();
  v11 = v10;
  v13 = v12;
  v14 = sub_1E3D6E1C4();
  v16 = v15;
  v17 = sub_1E3D6E350();
  v19 = v18;
  v20 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v20 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    goto LABEL_17;
  }

  v21 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v21 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
LABEL_17:

    v49 = sub_1E3E37F30();
    (*(v5 + 16))(v9, v49, v92);
    v50 = v2;
    v51 = sub_1E41FFC94();
    v52 = sub_1E42067E4();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *&v97 = swift_slowAlloc();
      *v53 = 136315906;
      v54 = sub_1E4205554();
      v56 = OUTLINED_FUNCTION_32_11(v54, v55);
      OUTLINED_FUNCTION_68_26(v56);
      OUTLINED_FUNCTION_15_19();
      *(v53 + 4) = v50;
      *(v53 + 12) = 2080;
      v57 = sub_1E4205564();
      v59 = OUTLINED_FUNCTION_32_11(v57, v58);
      OUTLINED_FUNCTION_68_26(v59);
      OUTLINED_FUNCTION_15_19();
      *(v53 + 14) = v50;
      *(v53 + 22) = 2080;
      v60 = sub_1E42055C4();
      v62 = OUTLINED_FUNCTION_32_11(v60, v61);
      OUTLINED_FUNCTION_68_26(v62);
      OUTLINED_FUNCTION_15_19();
      *(v53 + 24) = v50;
      *(v53 + 32) = 2080;
      v63 = sub_1E4205594();
      v65 = OUTLINED_FUNCTION_32_11(v63, v64);
      OUTLINED_FUNCTION_68_26(v65);
      OUTLINED_FUNCTION_15_19();
      *(v53 + 34) = v50;
      _os_log_impl(&dword_1E323F000, v51, v52, "PlayerStatsViewDataFactory.makeDueUpRow: Stats Failure -- Failed to create preferred and short names: canonicalId(%s, displayName(%s), firstName(%s), lastName(%s).", v53, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v5 + 8))(v9, v92);
    goto LABEL_25;
  }

  v22 = v17;
  *(&v98 + 1) = MEMORY[0x1E69E6158];
  if (v13)
  {
    v23 = v11;
  }

  else
  {
    v23 = 0;
  }

  v24 = 0xE000000000000000;
  if (v13)
  {
    v24 = v13;
  }

  *&v97 = v23;
  *(&v97 + 1) = v24;
  type metadata accessor for TextViewModel();
  OUTLINED_FUNCTION_194_0();
  swift_retain_n();
  OUTLINED_FUNCTION_21_7();
  v30 = sub_1E3C27638(v25, v26, v27, v28, v29);
  if (!v30)
  {

LABEL_23:

LABEL_24:

LABEL_25:
    v66 = 0uLL;
    v67 = 0uLL;
    v68 = 0uLL;
    v69 = 0uLL;
    v70 = 0uLL;
    v71 = 0uLL;
    goto LABEL_26;
  }

  v31 = v30;
  v32 = MEMORY[0x1E69E6158];
  *(&v98 + 1) = MEMORY[0x1E69E6158];
  *&v97 = v14;
  *(&v97 + 1) = v16;

  OUTLINED_FUNCTION_21_7();
  v38 = sub_1E3C27638(v33, v34, v35, v36, v37);
  if (!v38)
  {

    goto LABEL_23;
  }

  v39 = v38;
  *(&v98 + 1) = v32;
  *&v97 = v22;
  *(&v97 + 1) = v19;
  OUTLINED_FUNCTION_21_7();
  v45 = sub_1E3C27638(v40, v41, v42, v43, v44);
  if (!v45)
  {

    goto LABEL_24;
  }

  v46 = v45;
  sub_1E3D6E7F0();
  v48 = v47;
  if (v47)
  {

    sub_1E3D6E560();
  }

  OUTLINED_FUNCTION_61_2();
  v93 = static SportsAccessibilityIdentifier.makeIdentifier(key:location:)();
  v88 = v72;
  OUTLINED_FUNCTION_61_2();
  v86 = static SportsAccessibilityIdentifier.makeIdentifier(key:location:)();
  v74 = v73;

  OUTLINED_FUNCTION_61_2();
  v75 = static SportsAccessibilityIdentifier.makeIdentifier(key:location:)();
  v77 = v76;
  v78 = *(v0 + 72);

  v79 = sub_1E42054D4();
  v81 = sub_1E37D26AC(v79, v80, v78);
  v82 = v39;
  v84 = v83;

  sub_1E39675A0(v86, v74, v31, v75, v77, v82, v46, v81, v96, v84);
  sub_1E3965B98(v96, v48, v93, v88, &v97);
  v94 = v97;
  v91 = v98;
  v90 = v99;
  v89 = v100;
  v87 = v101;
  v85 = v102;

  v71 = v85;
  v70 = v87;
  v69 = v89;
  v68 = v90;
  v67 = v91;
  v66 = v94;
LABEL_26:
  *v95 = v66;
  v95[1] = v67;
  v95[2] = v68;
  v95[3] = v69;
  v95[4] = v70;
  v95[5] = v71;
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D6C818(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1E4206164();
  }

  else
  {
    return 0;
  }
}

void sub_1E3D6C860()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v116 = v3;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E3D6CF48();
  v12 = v11;
  v117 = v13;
  v115 = v0;
  sub_1E3D6D41C();
  v112 = v14;
  v16 = v15;
  v17 = sub_1E3D6E1C4();
  v19 = v18;
  v20 = sub_1E3D6E350();
  v22 = HIBYTE(v19) & 0xF;
  v110 = v17;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v22 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
    goto LABEL_26;
  }

  v23 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
LABEL_26:

    v67 = sub_1E3E37F30();
    v68 = v6;
    (*(v6 + 16))(v10, v67, v4);
    v69 = v2;
    v70 = sub_1E41FFC94();
    v71 = sub_1E42067E4();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v120[0] = swift_slowAlloc();
      *v72 = 136315906;
      v73 = sub_1E4205554();
      v75 = OUTLINED_FUNCTION_32_11(v73, v74);
      OUTLINED_FUNCTION_66_27(v75);
      OUTLINED_FUNCTION_176_0();
      *(v72 + 4) = v12;
      *(v72 + 12) = 2080;
      v76 = sub_1E4205564();
      v78 = OUTLINED_FUNCTION_32_11(v76, v77);
      OUTLINED_FUNCTION_66_27(v78);
      OUTLINED_FUNCTION_176_0();
      *(v72 + 14) = v12;
      *(v72 + 22) = 2080;
      v79 = sub_1E42055C4();
      v81 = OUTLINED_FUNCTION_32_11(v79, v80);
      OUTLINED_FUNCTION_66_27(v81);
      OUTLINED_FUNCTION_176_0();
      *(v72 + 24) = v12;
      *(v72 + 32) = 2080;
      v82 = sub_1E4205594();
      v84 = OUTLINED_FUNCTION_32_11(v82, v83);
      OUTLINED_FUNCTION_66_27(v84);
      OUTLINED_FUNCTION_176_0();
      *(v72 + 34) = v12;
      _os_log_impl(&dword_1E323F000, v70, v71, "PlayerStatsViewDataFactory.makePlayersRow: Stats Failure -- Failed to create preferred and short names: canonicalId(%s, displayName(%s), firstName(%s), lastName(%s).", v72, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v68 + 8))(v10, v4);
    }

    else
    {

      (*(v68 + 8))(v10, v4);
    }

    goto LABEL_35;
  }

  v107 = v20;
  v24 = v21;
  v25 = MEMORY[0x1E69E6158];
  v120[3] = MEMORY[0x1E69E6158];
  if (v117)
  {
    v26 = v12;
  }

  else
  {
    v26 = 0;
  }

  v27 = 0xE000000000000000;
  if (v117)
  {
    v28 = v117;
  }

  else
  {
    v28 = 0xE000000000000000;
  }

  v103 = v26;
  v105 = v28;
  v120[0] = v26;
  v120[1] = v28;
  type metadata accessor for TextViewModel();
  swift_retain_n();

  OUTLINED_FUNCTION_21_7();
  v34 = sub_1E3C27638(v29, v30, v31, v32, v33);
  if (!v34)
  {

LABEL_31:

LABEL_35:
    sub_1E3D70B08(v120);
    goto LABEL_36;
  }

  v109 = v34;
  v120[3] = v25;
  v35 = v112;
  if (v16)
  {
    v27 = v16;
  }

  else
  {
    v35 = 0;
  }

  v113 = v35;
  v120[0] = v35;
  v120[1] = v27;

  OUTLINED_FUNCTION_21_7();
  v41 = sub_1E3C27638(v36, v37, v38, v39, v40);
  if (!v41)
  {
LABEL_34:

    goto LABEL_35;
  }

  v42 = v41;
  v101 = v27;
  v120[3] = v25;
  v120[0] = v110;
  v120[1] = v19;

  OUTLINED_FUNCTION_21_7();
  v48 = sub_1E3C27638(v43, v44, v45, v46, v47);
  if (!v48)
  {

    goto LABEL_34;
  }

  v49 = v48;
  v120[3] = v25;
  v120[0] = v107;
  v120[1] = v24;

  OUTLINED_FUNCTION_21_7();
  v55 = sub_1E3C27638(v50, v51, v52, v53, v54);
  if (!v55)
  {

    goto LABEL_31;
  }

  v56 = v55;
  sub_1E3D6E7F0();
  v118 = v57;
  v120[0] = 0;
  v120[1] = 0xE000000000000000;
  v58 = sub_1E4205554();
  v60 = OUTLINED_FUNCTION_32_11(v58, v59);
  if (v62)
  {
    v63 = 0xE000000000000000;
  }

  else
  {
    v63 = v61;
  }

  MEMORY[0x1E69109E0](v60, v63);

  OUTLINED_FUNCTION_30_63();
  MEMORY[0x1E69109E0](v103, v105);

  OUTLINED_FUNCTION_30_63();
  MEMORY[0x1E69109E0](v113, v101);

  OUTLINED_FUNCTION_30_63();
  MEMORY[0x1E69109E0](v110, v19);

  OUTLINED_FUNCTION_30_63();
  MEMORY[0x1E69109E0](v107, v24);

  v111 = v120[1];
  v114 = v120[0];
  if (v118 && (, v64 = sub_1E3D6E560(), , (v64 & 1) != 0))
  {
    v65 = v49;
    v66 = v42;
  }

  else
  {
    v65 = v49;
    v66 = v42;
  }

  OUTLINED_FUNCTION_57_28();
  v85 = static SportsAccessibilityIdentifier.makeIdentifier(key:location:)();
  v106 = v86;
  v108 = v85;
  OUTLINED_FUNCTION_57_28();
  v87 = static SportsAccessibilityIdentifier.makeIdentifier(key:location:)();
  v102 = v88;
  v104 = v87;

  OUTLINED_FUNCTION_57_28();
  v89 = static SportsAccessibilityIdentifier.makeIdentifier(key:location:)();
  v91 = v90;
  v92 = *(v115 + 72);

  v93 = sub_1E42054D4();
  v95 = sub_1E37D26AC(v93, v94, v92);
  v96 = v56;
  v98 = v97;

  sub_1E39675A0(v104, v102, v66, v89, v91, v65, v96, v95, v121, v98);
  OUTLINED_FUNCTION_57_28();
  v99 = static SportsAccessibilityIdentifier.makeIdentifier(key:location:)();
  sub_1E3964E6C(v121, v114, v111, v118, v108, v106, v109, v99, v119, v100);

  nullsub_1();
  memcpy(v120, v119, sizeof(v120));
LABEL_36:
  memcpy(v116, v120, 0x88uLL);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D6CF48()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38130, &qword_1E42CEE28);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v49 - v4;
  v6 = *(v0 + 64);
  v7 = sub_1E42054D4();
  v9 = v8;
  v10 = sub_1E37D26AC(v7, v8, v6);
  v12 = v11;

  switch(*(v1 + 8))
  {
    case 1:
      v13 = sub_1E4205554();
      if (!v14)
      {
        goto LABEL_41;
      }

      v15 = v13;
      v16 = v14;
      sub_1E42056F4();
      v17 = sub_1E4205604();
      if (!__swift_getEnumTagSinglePayload(v5, 1, v17))
      {
        v9 = sub_1E42055F4();
        if (v9)
        {
          sub_1E325F7A8(v5, &qword_1ECF38130, &qword_1E42CEE28);
          v44 = sub_1E3D6E66C(v15, v16, v9);
          v46 = v45;

          if (v46)
          {
            goto LABEL_41;
          }

          if (v44)
          {
            if (!v12)
            {
              v41 = *v1;
              v42 = "Baseball.Batting";
              v43 = 0xD00000000000001DLL;
              goto LABEL_44;
            }

            v26 = *v1;
            OUTLINED_FUNCTION_8_136("TV.Sports.Stats.Header.TitleAndTeamAbbreviation");
            if (!v47)
            {
              goto LABEL_41;
            }

            OUTLINED_FUNCTION_49_4();
            v28 = "Baseball.Batting";
            v29 = 0xD00000000000001DLL;
          }

          else
          {
            if (!v12)
            {
              v41 = *v1;
              v42 = "Header.TitleAndTeamAbbreviation";
              v43 = 0xD00000000000001CLL;
              goto LABEL_44;
            }

            v26 = *v1;
            OUTLINED_FUNCTION_8_136("TV.Sports.Stats.Header.TitleAndTeamAbbreviation");
            if (!v48)
            {
              goto LABEL_41;
            }

            OUTLINED_FUNCTION_49_4();
            v28 = "Header.TitleAndTeamAbbreviation";
            v29 = 0xD00000000000001CLL;
          }

          goto LABEL_34;
        }
      }

      sub_1E325F7A8(v5, &qword_1ECF38130, &qword_1E42CEE28);
      goto LABEL_42;
    case 2:
      v18 = sub_1E42055B4();
      v9 = v18;
      if (!v19)
      {
        goto LABEL_41;
      }

      v20 = v19;
      v21 = v18 == 80 && v19 == 0xE100000000000000;
      if (v21 || (OUTLINED_FUNCTION_40_51(80, 0xE100000000000000) & 1) != 0 || (v9 == 20563 ? (v22 = v20 == 0xE200000000000000) : (v22 = 0), v22 || ((v23 = OUTLINED_FUNCTION_40_51(20563, 0xE200000000000000), v9 == 20562) ? (v24 = v20 == 0xE200000000000000) : (v24 = 0), !v24 ? (v25 = 0) : (v25 = 1), (v23 & 1) != 0 || (v25 & 1) != 0)))
      {

        goto LABEL_31;
      }

      v9 = OUTLINED_FUNCTION_40_51(20562, 0xE200000000000000);

      if (v9)
      {
LABEL_31:
        if (!v12)
        {
          v41 = *v1;
          v42 = "TV.Sports.Stats.Baseball.DueUp";
          v43 = 0xD000000000000021;
          goto LABEL_44;
        }

        v26 = *v1;
        OUTLINED_FUNCTION_8_136("TV.Sports.Stats.Header.TitleAndTeamAbbreviation");
        if (!v31)
        {
          goto LABEL_41;
        }

        OUTLINED_FUNCTION_49_4();
        v28 = "TV.Sports.Stats.Baseball.DueUp";
        v29 = 0xD000000000000021;
        goto LABEL_34;
      }

      if (!v12)
      {
        v41 = *v1;
        v42 = "Final";
        v43 = 0xD000000000000020;
        goto LABEL_44;
      }

      v26 = *v1;
      OUTLINED_FUNCTION_8_136("TV.Sports.Stats.Header.TitleAndTeamAbbreviation");
      if (!v27)
      {
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_49_4();
      v28 = "Final";
      v29 = 0xD000000000000020;
LABEL_34:
      sub_1E3741090(v29, v28 | 0x8000000000000000, v26);
      if (v32)
      {
        v53 = v9;
        v54 = v1;
        OUTLINED_FUNCTION_29_72();
        v51 = v33;
        v52 = v34;
        v49 = v35;
        v50 = v36;
        sub_1E32822E0(v35, v36, v37);
        OUTLINED_FUNCTION_2_178();
        v38 = sub_1E42071F4();
        v40 = v39;

        v53 = v38;
        v54 = v40;
        v51 = 0xD000000000000010;
        v52 = 0x80000001E42813B0;
        v49 = v10;
        v50 = v12;
        OUTLINED_FUNCTION_2_178();
        sub_1E42071F4();
        OUTLINED_FUNCTION_145();
      }

      else
      {

LABEL_41:
      }

LABEL_42:
      OUTLINED_FUNCTION_57();
      OUTLINED_FUNCTION_25_2();
      return;
    case 3:
      if (!v12)
      {
        v41 = *v1;
        v42 = "Baseball.Pitching";
        v43 = 0xD000000000000028;
LABEL_44:
        sub_1E3741090(v43, v42 | 0x8000000000000000, v41);
        OUTLINED_FUNCTION_145();
        goto LABEL_42;
      }

      v26 = *v1;
      OUTLINED_FUNCTION_8_136("TV.Sports.Stats.Header.TitleAndTeamAbbreviation");
      if (!v30)
      {
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_49_4();
      v28 = "Baseball.Pitching";
      v29 = 0xD000000000000028;
      goto LABEL_34;
    default:
      goto LABEL_41;
  }
}

void sub_1E3D6D41C()
{
  OUTLINED_FUNCTION_31_1();
  v150 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38160, &qword_1E42CF060);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v131 - v5;
  v7 = sub_1E4205B74();
  OUTLINED_FUNCTION_0_10();
  v156 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v155 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_6();
  v137 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_6();
  v136 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v131 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v131 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_6();
  v148 = v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v131 - v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_6();
  v141 = v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  v30 = (&v131 - v29);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_6();
  v147 = v32;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v33);
  v154 = &v131 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38130, &qword_1E42CEE28);
  OUTLINED_FUNCTION_17_2(v35);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_20_1();
  switch(*(v0 + 8))
  {
    case 1:
    case 3:
      v139 = MEMORY[0x1E69E7CC0];
      v160 = MEMORY[0x1E69E7CC0];
      sub_1E42056F4();
      v37 = sub_1E4205604();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v37);
      v132 = v17;
      v143 = v30;
      v144 = v20;
      v135 = 0;
      v138 = v25;
      if (EnumTagSinglePayload || (v40 = sub_1E42055D4()) == 0)
      {
        sub_1E325F7A8(v1, &qword_1ECF38130, &qword_1E42CEE28);
        v39 = MEMORY[0x1E69E7CC0];
        goto LABEL_18;
      }

      v41 = v40;
      sub_1E325F7A8(v1, &qword_1ECF38130, &qword_1E42CEE28);
      v42 = 0;
      v20 = v41[2];
      v153 = (v156 + 32);
      v43 = v41 + 5;
      v39 = MEMORY[0x1E69E7CC0];
      v152 = v41 + 5;
      break;
    default:
      sub_1E42055B4();
LABEL_89:
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_25_2();
      return;
  }

LABEL_7:
  v44 = &v43[2 * v42];
  while (v20 != v42)
  {
    v45 = v41[2];
    if (v42 >= v45)
    {
      goto LABEL_91;
    }

    sub_1E4205B64();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      v46 = *v153;
      (*v153)(v154, v6, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = OUTLINED_FUNCTION_27();
        v39 = sub_1E3D70388(v51, v52, v53, v39);
      }

      v48 = *(v39 + 2);
      v47 = *(v39 + 3);
      if (v48 >= v47 >> 1)
      {
        v54 = OUTLINED_FUNCTION_35(v47);
        v39 = sub_1E3D70388(v54, v48 + 1, 1, v39);
      }

      ++v42;
      *(v39 + 2) = v48 + 1;
      OUTLINED_FUNCTION_18_92();
      v46(&v39[v49 + *(v50 + 72) * v48], v154, v7);
      v43 = v152;
      goto LABEL_7;
    }

    sub_1E325F7A8(v6, &qword_1ECF38160, &qword_1E42CF060);
    v44 += 16;
    ++v42;
  }

  v20 = v144;
LABEL_18:
  v152 = v39;
  v159 = v39;
  v55 = v156;
  v56 = *(v156 + 104);
  v57 = v147;
  v149 = *MEMORY[0x1E69D3D30];
  v151 = v156 + 104;
  v153 = v56;
  v56(v147);
  v58 = sub_1E4205574();
  v39 = *(v55 + 8);
  (v39)(v57, v7);
  if (v58)
  {
    v59 = v58;
    sub_1E4205B04();
    v6 = sub_1E3D6E6F8(v60);
    v62 = v61;
  }

  else
  {
    v6 = 0;
    v62 = 0;
  }

  v140 = *MEMORY[0x1E69D3D38];
  OUTLINED_FUNCTION_33_60();
  v63();
  v41 = sub_1E4205574();
  v64 = OUTLINED_FUNCTION_142();
  (v39)(v64);
  v154 = (v55 + 8);
  if (!v41)
  {
    if (v62)
    {
      goto LABEL_40;
    }

    v94 = v7;
LABEL_43:

LABEL_81:
    v42 = v159;
    v157 = MEMORY[0x1E69E7CC0];
    v20 = v159[2];
    v153 = (v156 + 16);
    v44 = v150;
    v116 = 0;
    while (1)
    {
      if (v20 == v116)
      {

        sub_1E3D6B298(v139, &v160);

        v157 = v160;

        v123 = OUTLINED_FUNCTION_32_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v123, v124);
        OUTLINED_FUNCTION_1_34();
        sub_1E32752B0(v125, &qword_1ECF2C420, &qword_1E429CDD0, v126);
        sub_1E4205DF4();
        swift_bridgeObjectRelease_n();
        goto LABEL_89;
      }

      v45 = *(v42 + 16);
      if (v116 >= v45)
      {
        break;
      }

      OUTLINED_FUNCTION_18_92();
      v7 = v39;
      v119 = v155;
      (*(v118 + 16))(v155, v42 + v117 + *(v118 + 72) * v116++, v94);
      v41 = v44;
      v6 = sub_1E4205574();
      v120 = v119;
      v39 = v7;
      v121 = (v7)(v120, v94);
      if (v6)
      {
        v41 = &v157;
        MEMORY[0x1E6910BF0](v121);
        v7 = *((v157 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v122 = *((v157 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (v7 >= v122 >> 1)
        {
          OUTLINED_FUNCTION_35(v122);
          sub_1E42062F4();
        }

        OUTLINED_FUNCTION_13_26();
        sub_1E4206324();
        v139 = v157;
      }
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v41 = v41;
  sub_1E4205B04();
  v66 = sub_1E3D6E6F8(v65);
  v68 = v67;

  if (!v62)
  {
    v94 = v7;
    goto LABEL_43;
  }

  if (!v68)
  {
LABEL_40:
    v94 = v7;
    goto LABEL_43;
  }

  v157 = v6;
  v158 = v62;
  MEMORY[0x1E69109E0](45, 0xE100000000000000);
  MEMORY[0x1E69109E0](v66, v68);

  v44 = v157;
  v42 = v158;
  v69 = sub_1E3740F88(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v6 = *(v69 + 2);
  v45 = *(v69 + 3);
  v41 = (v6 + 1);
  if (v6 < v45 >> 1)
  {
    goto LABEL_25;
  }

LABEL_94:
  v127 = OUTLINED_FUNCTION_1_12(v45);
  v69 = sub_1E3740F88(v127, v128, v129, v130);
LABEL_25:
  v70 = v141;
  v71 = 0;
  *(v69 + 2) = v41;
  v72 = &v69[16 * v6];
  *(v72 + 4) = v44;
  *(v72 + 5) = v42;
  v160 = v69;
  v73 = v152;
  v134 = v152[2];
  v146 = v156 + 16;
  v74 = v138;
  while (1)
  {
    v44 = v73[2];
    v45 = v134;
    if (v134 == v71)
    {
      v94 = v7;
      v95 = v73[2];
      goto LABEL_80;
    }

    if (v71 >= v44)
    {
      goto LABEL_93;
    }

    OUTLINED_FUNCTION_18_92();
    v133 = v75;
    v78 = *(v77 + 72);
    v142 = v79;
    v147 = v78;
    v145 = *(v77 + 16);
    v145(v143, (v76 + v75 + v78 * v79), v7);
    OUTLINED_FUNCTION_33_60();
    v81.n128_f64[0] = v80();
    v6 = sub_1E3D70B10(v81);
    OUTLINED_FUNCTION_13_26();
    sub_1E4206254();
    OUTLINED_FUNCTION_13_26();
    sub_1E4206254();
    v82 = v158;
    OUTLINED_FUNCTION_51_36();
    v85 = v85 && v82 == v70;
    if (v85)
    {
      break;
    }

    v42 = OUTLINED_FUNCTION_97_0(v83, v82, v84);
    v86 = OUTLINED_FUNCTION_142();
    (v39)(v86);

    if (v42)
    {
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_33_60();
    v87();
    OUTLINED_FUNCTION_13_26();
    sub_1E4206254();
    v41 = v74;
    OUTLINED_FUNCTION_13_26();
    sub_1E4206254();
    v88 = v158;
    OUTLINED_FUNCTION_51_36();
    if (v85 && v88 == v74)
    {
      v97 = OUTLINED_FUNCTION_53_3();
      (v39)(v97);
      v98 = OUTLINED_FUNCTION_142();
      (v39)(v98);

      goto LABEL_48;
    }

    v42 = OUTLINED_FUNCTION_97_0(v89, v88, v90);
    v92 = OUTLINED_FUNCTION_53_3();
    (v39)(v92);
    v93 = OUTLINED_FUNCTION_142();
    (v39)(v93);

    if (v42)
    {
      goto LABEL_48;
    }

    v71 = v142 + 1;
    v73 = v152;
    v70 = v141;
  }

  v96 = OUTLINED_FUNCTION_142();
  (v39)(v96);

LABEL_46:
  (v39)(v143, v7);
LABEL_48:
  v44 = v142 + 1;
  v99 = v152;
  v45 = v152[2];
  if (v45 - 1 == v142)
  {
    v94 = v7;
    v95 = v142;
    goto LABEL_80;
  }

  v143 = (v156 + 40);
  v41 = v148;
  v100 = v133 + v147 * v44;
  do
  {
    if (v44 >= v45)
    {
      goto LABEL_92;
    }

    v152 = v99;
    v145(v41, v99 + v100, v7);
    (v153)(v20, v149, v7);
    OUTLINED_FUNCTION_13_26();
    sub_1E4206254();
    OUTLINED_FUNCTION_13_26();
    sub_1E4206254();
    v42 = v158;
    OUTLINED_FUNCTION_51_36();
    if (v85 && v42 == v20)
    {
      (v39)(v20, v7);

LABEL_64:
      v41 = v148;
      (v39)(v148, v7);
      v20 = v144;
LABEL_65:
      v99 = v152;
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_97_0(v101, v42, v102);
    v104 = OUTLINED_FUNCTION_60_26();
    (v39)(v104);

    if (v20)
    {
      goto LABEL_64;
    }

    v105 = v132;
    (v153)(v132, v140, v7);
    v106 = v148;
    OUTLINED_FUNCTION_13_26();
    sub_1E4206254();
    OUTLINED_FUNCTION_13_26();
    sub_1E4206254();
    v42 = v158;
    OUTLINED_FUNCTION_51_36();
    if (v85 && v42 == v105)
    {
      (v39)(v105, v7);
      v112 = OUTLINED_FUNCTION_53_3();
      (v39)(v112);

      v20 = v144;
      v41 = v106;
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_97_0(v107, v42, v108);
    v110 = OUTLINED_FUNCTION_60_26();
    (v39)(v110);
    v111 = OUTLINED_FUNCTION_53_3();
    (v39)(v111);

    if (v105)
    {
      v20 = v144;
      v41 = v148;
      goto LABEL_65;
    }

    v99 = v152;
    if (v44 == v142)
    {
      v20 = v144;
    }

    else
    {
      if (v142 < 0)
      {
        goto LABEL_96;
      }

      v113 = v152[2];
      if (v142 >= v113)
      {
        goto LABEL_97;
      }

      v141 = v142 * v147;
      v114 = v145;
      v145(v136, v152 + v133 + v142 * v147, v7);
      v115 = v44 >= v113;
      v20 = v144;
      if (v115)
      {
        goto LABEL_98;
      }

      v114(v137, v99 + v100, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v99 = sub_1E3D70DB0(v99);
      }

      v42 = *v143;
      (*v143)(v99 + v133 + v141, v137, v7);
      if (v44 >= v99[2])
      {
        goto LABEL_99;
      }

      (v42)(v99 + v100, v136, v7);
      v159 = v99;
    }

    v41 = v148;
    ++v142;
LABEL_66:
    ++v44;
    v45 = v99[2];
    v100 += v147;
  }

  while (v44 != v45);
  v94 = v7;
  v95 = v142;
  if (v44 >= v142)
  {
LABEL_80:
    v41 = &v159;
    sub_1E3D70C18(v95, v44);
    goto LABEL_81;
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
}

uint64_t sub_1E3D6E1C4()
{
  sub_1E3D6F308();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40750, &unk_1E4297FF0);
  inited = swift_initStackObject();
  v9 = 0;
  *(inited + 16) = xmmword_1E4299720;
  *(inited + 32) = v1;
  *(inited + 40) = v3;
  v10 = inited + 40;
  *(inited + 48) = v5;
  *(inited + 56) = v7;
  v11 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v12 = (v10 + 16 * v9);
  while (++v9 != 3)
  {
    v13 = v12 + 2;
    v14 = *v12;
    v12 += 2;
    if (v14)
    {
      v15 = *(v13 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = OUTLINED_FUNCTION_27();
        v11 = sub_1E3740F88(v19, v20, v21, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v22 = OUTLINED_FUNCTION_35(v16);
        v11 = sub_1E3740F88(v22, v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      v18 = &v11[16 * v17];
      *(v18 + 4) = v15;
      *(v18 + 5) = v14;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  sub_1E3740994();
  v23 = OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_82();
  sub_1E32752B0(v25, v26, v27, v28);
  sub_1E4205DF4();
  OUTLINED_FUNCTION_145();

  return OUTLINED_FUNCTION_57();
}

uint64_t sub_1E3D6E350()
{
  sub_1E3D6F308();
  v4 = v3;
  if (v1 && v3 && (v5 = v2, v6 = sub_1E3D6C818(v0, v1), v8 = v7, , v8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40750, &unk_1E4297FF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4299720;
    v33 = v6;
    MEMORY[0x1E69109E0](46, 0xE100000000000000);
    v10 = 0;
    *(inited + 32) = v33;
    *(inited + 40) = v8;
    *(inited + 48) = v5;
    *(inited + 56) = v4;
    v11 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v12 = (inited + 40 + 16 * v10);
    while (++v10 != 3)
    {
      v13 = v12 + 2;
      v14 = *v12;
      v12 += 2;
      if (v14)
      {
        v15 = *(v13 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = OUTLINED_FUNCTION_27();
          v11 = sub_1E3740F88(v20, v21, v22, v11);
        }

        v16 = *(v11 + 2);
        v17 = *(v11 + 3);
        v18 = v16 + 1;
        if (v16 >= v17 >> 1)
        {
          v23 = v11;
          v24 = *(v11 + 2);
          v25 = sub_1E3740F88((v17 > 1), v16 + 1, 1, v23);
          v16 = v24;
          v11 = v25;
        }

        *(v11 + 2) = v18;
        v19 = &v11[16 * v16];
        *(v19 + 4) = v15;
        *(v19 + 5) = v14;
        goto LABEL_5;
      }
    }

    swift_setDeallocating();
    sub_1E3740994();
    v26 = OUTLINED_FUNCTION_57();
    __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
    OUTLINED_FUNCTION_1_34();
    OUTLINED_FUNCTION_82();
    sub_1E32752B0(v28, v29, v30, v31);
    sub_1E4205DF4();
    OUTLINED_FUNCTION_145();

    return OUTLINED_FUNCTION_57();
  }

  else
  {

    return sub_1E3D6E1C4();
  }
}

uint64_t sub_1E3D6E560()
{
  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 488))();
  if (!v2 || (sub_1E373E010(39, v2, v3), OUTLINED_FUNCTION_15_19(), !v0))
  {
    v11 = 0u;
    v12 = 0u;
    goto LABEL_6;
  }

  sub_1E3C7CCAC(0);
  OUTLINED_FUNCTION_8();
  v5 = (*(v4 + 672))();

  v6 = OUTLINED_FUNCTION_27_0();
  sub_1E3277E60(v6, v7, v5, v8);

  if (!*(&v12 + 1))
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v9 = 1;
LABEL_7:
  sub_1E325F7A8(&v11, &unk_1ECF296E0, &unk_1E4298030);
  return v9;
}

uint64_t sub_1E3D6E66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_1E42079A4() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

id sub_1E3D6E6F8(double a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v4 = result;
    v5 = v2;
    v6 = OUTLINED_FUNCTION_61_2();
    sub_1E3D70B68(v6, v7, 48, 0xE100000000000000, 0, 0, v4);
    OUTLINED_FUNCTION_145();

    if (v1)
    {
    }

    else
    {
      v8 = [objc_opt_self() localizedStringFromNumber:v5 numberStyle:1];
      sub_1E4205F14();
      OUTLINED_FUNCTION_145();
    }

    return OUTLINED_FUNCTION_57();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E3D6E7F0()
{
  OUTLINED_FUNCTION_31_1();
  v107 = v0;
  v108 = v1;
  v3 = v2;
  v4 = sub_1E42050B4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = MEMORY[0x1E69E6158];
  if (v3)
  {
    v12 = *(*v3 + 672);

    v14 = v12(v13);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BD0;
    *(inited + 32) = sub_1E3C7CCAC(4);
    *(inited + 40) = v16;
    (*(v6 + 104))(v10, *MEMORY[0x1E69D3A50], v4);
    v17 = sub_1E42050A4();
    v19 = v18;
    (*(v6 + 8))(v10, v4);
    *(inited + 72) = v11;
    *(inited + 48) = v17;
    *(inited + 56) = v19;
    *(inited + 80) = sub_1E3C7CCAC(2);
    *(inited + 88) = v20;
    *(inited + 120) = MEMORY[0x1E69E6370];
    *(inited + 96) = 1;
    *(inited + 128) = sub_1E3C7CCAC(0);
    *(inited + 136) = v21;
    *(inited + 168) = v11;
    *(inited + 144) = 0xD00000000000001FLL;
    *(inited + 152) = 0x80000001E42813D0;
    v22 = sub_1E4205CB4();
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_1E4297BE0;
    ViewModelKeys.rawValue.getter(13);
    *(v23 + 32) = v24;
    *(v23 + 40) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740, &unk_1E42A89A0);
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_1E4297BE0;
    *(v26 + 32) = 6778217;
    *(v26 + 40) = 0xE300000000000000;
    *(v26 + 48) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    v27 = sub_1E4205CB4();
    *(v23 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDF0, &qword_1E42AF870);
    *(v23 + 48) = v27;
    v14 = sub_1E4205CB4();
  }

  v111 = v14;
  sub_1E3D6F308();
  v29 = v28;
  v31 = v30;
  v32 = sub_1E42055A4();
  if (v33)
  {
    v34 = v32;
    v35 = v33;

    goto LABEL_14;
  }

  v36 = [objc_opt_self() sharedInstance];
  if (!v36)
  {
    goto LABEL_57;
  }

  v37 = v36;
  if (!v29)
  {
    v38 = 0;
    if (v31)
    {
      goto LABEL_9;
    }

LABEL_11:
    v39 = 0;
    goto LABEL_12;
  }

  v38 = sub_1E4205ED4();

  if (!v31)
  {
    goto LABEL_11;
  }

LABEL_9:
  v39 = sub_1E4205ED4();

LABEL_12:
  v40 = [v37 formatInitialsForFirstName:v38 lastName:v39];

  if (!v40)
  {
    goto LABEL_17;
  }

  v34 = sub_1E4205F14();
  v35 = v41;

LABEL_14:
  v115 = &type metadata for ViewModelKeys;
  v116 = &off_1F5D7BCA8;
  LOBYTE(v114) = 13;
  v42 = sub_1E39BD1A0(&v114, v14);
  __swift_destroy_boxed_opaque_existential_1(&v114);
  if (v42)
  {
    sub_1E384EE08(17);
    v44 = v43;
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
    v47 = swift_initStackObject();
    *(v47 + 16) = xmmword_1E4297BE0;
    ViewModelKeys.rawValue.getter(14);
    *(v47 + 32) = v48;
    *(v47 + 40) = v49;
    *(v47 + 48) = v34;
    *(v47 + 56) = v35;
    sub_1E4205CB4();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
    OUTLINED_FUNCTION_64_23(v50);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v112 = v42;
    sub_1E32A87C0(&v117, v44, v46, isUniquelyReferenced_nonNull_native);

    ViewModelKeys.rawValue.getter(13);
    v53 = v52;
    v55 = v54;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    OUTLINED_FUNCTION_64_23(v56);
    swift_isUniquelyReferenced_nonNull_native();
    v57 = OUTLINED_FUNCTION_52_40();
    sub_1E32A87C0(v57, v53, v55, v58);

    v14 = v112;
    v111 = v112;
  }

  else
  {
  }

LABEL_17:
  v59 = sub_1E4205584();
  if (!v59)
  {
    v79 = 0;
    v80 = v108;
LABEL_38:
    sub_1E3D6F720();

    v81 = sub_1E4205554();
    if (v82 || (v81 = sub_1E4205564(), v82))
    {
      v83 = v81;
      v84 = v82;
      ViewModelKeys.rawValue.getter(7);
      v86 = v85;
      v88 = v87;
      v115 = MEMORY[0x1E69E6158];
      *&v114 = v83;
      *(&v114 + 1) = v84;
      sub_1E329504C(&v114, &v117);
      swift_isUniquelyReferenced_nonNull_native();
      v89 = OUTLINED_FUNCTION_52_40();
      sub_1E32A87C0(v89, v86, v88, v90);

      v91 = v112;
    }

    else
    {
      v91 = v111;
    }

    type metadata accessor for ViewModel();

    v92 = sub_1E39BED80(41, v91, v80);
    if (!v92)
    {

LABEL_53:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    v115 = &type metadata for ViewModelKeys;
    v116 = &off_1F5D7BCA8;
    v93 = OUTLINED_FUNCTION_6_155(20);
    sub_1E3F9F164(v93, v91, v94);
    if (v118)
    {
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      if ((OUTLINED_FUNCTION_14_123(v95, v96, v97, v95) & 1) == 0)
      {
        goto LABEL_50;
      }

      __swift_destroy_boxed_opaque_existential_1(&v114);
      v115 = &type metadata for ViewModelKeys.Sports;
      v116 = &off_1F5D7BC68;
      v98 = OUTLINED_FUNCTION_6_155(35);
      sub_1E3F9F164(v98, v112, v99);

      if (v118)
      {
        if (OUTLINED_FUNCTION_14_123(v100, v101, v102, MEMORY[0x1E69E6158]))
        {
          __swift_destroy_boxed_opaque_existential_1(&v114);
          sub_1E3755B54();
          sub_1E39F9114(v112, v113);
          v104 = v103;

          if (v104)
          {
LABEL_52:
            v115 = sub_1E3755B54();
            *&v114 = v104;
            (*(*v92 + 784))(v115, &v114, &unk_1F5D5D2E8, &off_1F5D5C7D8);

            sub_1E325F7A8(&v114, &unk_1ECF296E0, &unk_1E4298030);

            goto LABEL_53;
          }

LABEL_51:
          v105 = [objc_opt_self() whiteColor];
          v104 = [v105 colorWithAlphaComponent_];

          goto LABEL_52;
        }

LABEL_50:
        __swift_destroy_boxed_opaque_existential_1(&v114);
        goto LABEL_51;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v114);
    sub_1E325F7A8(&v117, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_51;
  }

  v60 = v59;
  v109 = v59 & 0xC000000000000001;
  v110 = sub_1E32AE9B0(v59);

  v106 = v107;
  for (i = 0; ; ++i)
  {
    if (v110 == i)
    {

      v80 = v108;

      v79 = 0;
      goto LABEL_38;
    }

    if (v109)
    {
      v62 = MEMORY[0x1E6911E60](i, v60);
    }

    else
    {
      if (i >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v62 = *(v60 + 8 * i + 32);
    }

    v63 = v62;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v115 = &type metadata for ViewModelKeys;
    v116 = &off_1F5D7BCA8;
    v64 = OUTLINED_FUNCTION_6_155(20);
    sub_1E3F9F164(v64, v14, v65);
    if (v118)
    {
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      if ((OUTLINED_FUNCTION_14_123(v66, v67, v68, v66) & 1) == 0)
      {
        goto LABEL_30;
      }

      __swift_destroy_boxed_opaque_existential_1(&v114);
      v115 = &type metadata for ViewModelKeys.Sports;
      v116 = &off_1F5D7BC68;
      v69 = OUTLINED_FUNCTION_6_155(36);
      sub_1E3F9F164(v69, v112, v70);

      if (v118)
      {
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
        if (OUTLINED_FUNCTION_14_123(v71, v72, v73, v71))
        {
          v74 = v112;
          __swift_destroy_boxed_opaque_existential_1(&v114);
          goto LABEL_32;
        }

LABEL_30:
        __swift_destroy_boxed_opaque_existential_1(&v114);
        goto LABEL_31;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v114);
    sub_1E325F7A8(&v117, &unk_1ECF296E0, &unk_1E4298030);
LABEL_31:
    v74 = &unk_1F5D83220;
LABEL_32:

    *&v114 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320, &unk_1E429A280);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1E4297BE0;
    *(v75 + 32) = sub_1E42052D4();
    *(v75 + 40) = v76;
    *&v117 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
    OUTLINED_FUNCTION_0_32();
    sub_1E32752B0(&qword_1EE23B500, &qword_1ECF2C420, &qword_1E429CDD0, v77);
    v78 = sub_1E42066C4();

    if (v78)
    {

      v80 = v108;

      v79 = v63;
      sub_1E42052E4();

      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
}

void sub_1E3D6F308()
{
  OUTLINED_FUNCTION_31_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38138, &qword_1E42CF030);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_20_1();
  v3 = sub_1E41FE234();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_1E42055C4();
  if (v10 && (, sub_1E4205594(), v11))
  {

    sub_1E42055C4();
    sub_1E4205594();
    OUTLINED_FUNCTION_145();
  }

  else
  {
    sub_1E4205564();
    if (v12)
    {

      OUTLINED_FUNCTION_13_26();
      sub_1E41FE244();

      __swift_storeEnumTagSinglePayload(v0, 0, 1, v3);
      (*(v5 + 32))(v9, v0, v3);
      sub_1E41FE204();
      v13 = sub_1E41FE214();
      v15 = v13;
      if (v14)
      {
        v16 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40750, &unk_1E4297FF0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4299720;
        *(inited + 32) = v15;
        *(inited + 40) = v16;

        v18 = sub_1E41FE224();
        v19 = inited + 40;
        v20 = 0;
        *(inited + 48) = v18;
        *(inited + 56) = v21;
        v43 = MEMORY[0x1E69E7CC0];
LABEL_9:
        v22 = (v19 + 16 * v20);
        while (++v20 != 3)
        {
          v23 = v22 + 2;
          v24 = *v22;
          v22 += 2;
          if (v24)
          {
            v42 = v19;
            v40 = *(v23 - 3);

            v41 = v16;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v29 = OUTLINED_FUNCTION_27();
              v43 = sub_1E3740F88(v29, v30, v31, v32);
            }

            v19 = v42;
            v26 = *(v43 + 2);
            v25 = *(v43 + 3);
            v27 = v26 + 1;
            if (v26 >= v25 >> 1)
            {
              v33 = sub_1E3740F88((v25 > 1), v26 + 1, 1, v43);
              v19 = v42;
              v27 = v26 + 1;
              v43 = v33;
            }

            *(v43 + 2) = v27;
            v28 = &v43[16 * v26];
            v16 = v41;
            *(v28 + 4) = v40;
            *(v28 + 5) = v24;
            goto LABEL_9;
          }
        }

        swift_setDeallocating();
        sub_1E3740994();
        v34 = OUTLINED_FUNCTION_57();
        __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
        OUTLINED_FUNCTION_1_34();
        OUTLINED_FUNCTION_82();
        sub_1E32752B0(v36, v37, v38, v39);
        sub_1E4205DF4();
        OUTLINED_FUNCTION_145();
      }

      (*(v5 + 8))(v9, v3);
    }
  }

  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D6F720()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v58 = v10;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v57 - v15;
  v17 = *v12;
  *(&v64 + 1) = &type metadata for ViewModelKeys;
  v65 = &off_1F5D7BCA8;
  LOBYTE(v63) = 13;
  v18 = sub_1E39BD1A0(&v63, v17);
  __swift_destroy_boxed_opaque_existential_1(&v63);
  if (v18)
  {
    *(&v64 + 1) = &qword_1F5D5CE68;
    v65 = &off_1F5D5C708;
    LOWORD(v63) = 39;

    v19 = sub_1E39BD1A0(&v63, v18);

    __swift_destroy_boxed_opaque_existential_1(&v63);
    if (v19)
    {
      v57[2] = v12;
      v62 = v19;
      sub_1E42056E4();
      v20 = sub_1E41FE414();
      if (OUTLINED_FUNCTION_47_42() == 1)
      {
        sub_1E325F7A8(v16, &unk_1ECF363C0, &unk_1E42A9420);
        v21 = 0;
        v22 = 0;
      }

      else
      {
        v21 = sub_1E41FE314();
        v22 = v23;
        (*(*(v20 - 8) + 8))(v16, v20);
      }

      v61 = 0;
      v24 = sub_1E3C7F81C();

      v25 = v1;

      v57[1] = v21;
      sub_1E3D6B4E4(v24, &v62, v7, v5, v3, v25, v58, v9, v21, v22, &v61);

      v26 = sub_1E3C7CCAC(0);
      v28 = v27;
      v29 = sub_1E3C7CCAC(0);
      v30 = v62;
      sub_1E3277E60(v29, v31, v62, &v63);

      if (*(&v64 + 1))
      {
        swift_dynamicCast();
      }

      else
      {
        sub_1E325F7A8(&v63, &unk_1ECF296E0, &unk_1E4298030);
      }

      sub_1E3D6FD14();
      v33 = v32;
      v35 = v34;

      if (v35)
      {
        *(&v64 + 1) = MEMORY[0x1E69E6158];
        *&v63 = v33;
        *(&v63 + 1) = v35;
        sub_1E329504C(&v63, v60);
        v36 = v62;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v36;
        sub_1E32A87C0(v60, v26, v28, isUniquelyReferenced_nonNull_native);

        v30 = v59;
      }

      else
      {
        v38 = sub_1E327D33C(v26, v28);
        if (v39)
        {
          v40 = v38;
          v41 = v62;
          swift_isUniquelyReferenced_nonNull_native();
          *&v60[0] = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
          sub_1E4207644();
          v30 = *&v60[0];

          sub_1E329504C((*(v30 + 56) + 32 * v40), &v63);
          OUTLINED_FUNCTION_27_0();
          sub_1E4207664();
        }

        else
        {
          v63 = 0u;
          v64 = 0u;
        }

        sub_1E325F7A8(&v63, &unk_1ECF296E0, &unk_1E4298030);
      }

      if (v61)
      {
        v42 = 1;
      }

      else
      {
        v43 = sub_1E3C7CCAC(0);
        sub_1E3277E60(v43, v44, v30, &v63);

        v42 = *(&v64 + 1) != 0;
        sub_1E325F7A8(&v63, &unk_1ECF296E0, &unk_1E4298030);
      }

      sub_1E384EE08(39);
      v47 = v45;
      v48 = v46;
      if (v42)
      {
        *(&v64 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
        *&v63 = v30;
        sub_1E329504C(&v63, v60);

        v49 = swift_isUniquelyReferenced_nonNull_native();
        v59 = v18;
        sub_1E32A87C0(v60, v47, v48, v49);

        v18 = v59;
      }

      else
      {
        v50 = sub_1E327D33C(v45, v46);
        if (v51)
        {
          v52 = v50;
          swift_isUniquelyReferenced_nonNull_native();
          *&v60[0] = v18;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
          sub_1E4207644();
          v18 = *&v60[0];

          sub_1E329504C((*(v18 + 56) + 32 * v52), &v63);
          sub_1E4207664();
        }

        else
        {
          v63 = 0u;
          v64 = 0u;
        }

        sub_1E325F7A8(&v63, &unk_1ECF296E0, &unk_1E4298030);
      }

      ViewModelKeys.rawValue.getter(13);
      v54 = v53;
      v56 = v55;
      *(&v64 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      *&v63 = v18;
      sub_1E3946774(&v63, v54, v56);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D6FD14()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v35 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_1E41FE004();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8, &unk_1E42B18D0);
  OUTLINED_FUNCTION_17_2(v20);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v34 - v22;
  if (v6 && v3 && v1)
  {

    sub_1E41FDFF4();
    if (OUTLINED_FUNCTION_47_42())
    {
    }

    else
    {
      MEMORY[0x1E6908940](v8, v6);
    }

    if (!OUTLINED_FUNCTION_47_42())
    {
      (*(v11 + 16))(v15, v23, v9);
      sub_1E41FDFC4();
      (*(v11 + 8))(v15, v9);
      v24 = sub_1E41FE414();
      if (__swift_getEnumTagSinglePayload(v19, 1, v24) == 1)
      {
        sub_1E325F7A8(v19, &unk_1ECF363C0, &unk_1E42A9420);
      }

      else
      {
        v25 = sub_1E41FE314();
        v27 = v26;
        v28 = (*(*(v24 - 8) + 8))(v19, v24);
        v42 = v25;
        v43 = v27;
        sub_1E32822E0(v28, v29, v30);
        v31 = sub_1E4207214();
        v33 = v32;

        if (v33)
        {
          v40 = v31;
          v41 = v33;
          v38 = 8221819;
          v39 = 0xE300000000000000;
          v36 = v35;
          v37 = v3;
          OUTLINED_FUNCTION_2_178();
          sub_1E42071F4();
          OUTLINED_FUNCTION_145();
        }
      }
    }

    sub_1E325F7A8(v23, &qword_1ECF304A8, &unk_1E42B18D0);
  }

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_25_2();
}

char *sub_1E3D70028(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38178, &unk_1E42CF070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[96 * v8] <= v12)
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E3D70140(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38158, &unk_1E42CF050);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[136 * v8] <= v12)
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E3D70258(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38148, &qword_1E42CF040);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38150, &qword_1E42CF048);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E3D70388(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_1E3D70474(v8, v7);
  v10 = *(sub_1E4205B74() - 8);
  if (v5)
  {
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E3D70570(a4 + v12, v8, v9 + v12, v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_1E3D70474(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38170, &qword_1E42CF068);
  v4 = *(sub_1E4205B74() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3D70570(unint64_t a1, uint64_t a2, unint64_t a3, __n128 a4)
{
  if (a3 < a1 || (result = sub_1E4205B74(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1E4205B74();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

double sub_1E3D70674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1E3D706EC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 49))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 1)
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

uint64_t sub_1E3D7072C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_45_50(result, -a2);
    }
  }

  return result;
}

uint64_t sub_1E3D70794(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 48))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

uint64_t sub_1E3D707D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_45_50(result, 1);
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

      return OUTLINED_FUNCTION_5_25(result, a2);
    }

    *(result + 48) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_5_25(result, a2);
    }
  }

  return result;
}

uint64_t type metadata accessor for PlayerStatsViewModel(uint64_t a1)
{
  result = qword_1EE29D2E0;
  if (!qword_1EE29D2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3D70884(uint64_t a1)
{
  sub_1E3D7091C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3D7091C(uint64_t a1)
{
  if (!qword_1EE28A030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F0C8, &unk_1E42AE090);
    v1 = sub_1E4200694();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE28A030);
    }
  }
}

char *sub_1E3D709C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3D709E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E3D709E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38140, &qword_1E42CF038);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3D70AF0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1E3D70B10(__n128 a1)
{
  result = qword_1ECF38168;
  if (!qword_1ECF38168)
  {
    sub_1E4205B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38168);
  }

  return result;
}

uint64_t sub_1E3D70B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_1E4205ED4();
  v13 = [a7 formatLocalizedNumber:a1 style:a2 postiveFormat:v12 negativeFormat:a5 currencyCode:a6];

  if (!v13)
  {
    return 0;
  }

  v14 = sub_1E4205F14();

  return v14;
}

uint64_t sub_1E3D70C18(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1E3D70D48(result, 1);
  v8 = *v2;
  v9 = *(sub_1E4205B74() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v14 = *(v8 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  result = sub_1E3D70570(v10 + v11 * a2, v14 - a2, v12, v13);
  v15 = *(v8 + 16);
  v16 = __OFADD__(v15, v7);
  v17 = v15 - v6;
  if (!v16)
  {
    *(v8 + 16) = v17;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_1E3D70D48(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1E3D70388(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1E3D70DC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0C8, &unk_1E42AE090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3D70E34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 16))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_17_7(v2);
}

_BYTE *storeEnumTagSinglePayload for PlayerStatsMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E3D70F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF62130[0];
  if (!qword_1ECF62130[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF62130);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_68_26(uint64_t a1)
{

  return sub_1E3270FC8(a1, v1, (v2 - 192));
}

id static TVAppExtensionXPCProtocol.interface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  sub_1E37E0EA0();
  [v0 setClass:swift_getObjCClassFromMetadata() forSelector:sel_openWithUrl_ argumentIndex:0 ofReply:0];
  return v0;
}

uint64_t sub_1E3D710F4()
{
  v1 = OBJC_IVAR____TtC8VideosUI14LibraryBarItem_promptOnly;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E3D71138(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI14LibraryBarItem_promptOnly;
  result = OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI14LibraryBarItem_promptOnly, v5);
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3D711BC(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

id sub_1E3D7121C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0_229();
  v17 = objc_allocWithZone(v8);
  return sub_1E3D71290(v15, v14, v13, v12, v11, v10, v9, a8);
}

id sub_1E3D71290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = v8;
  OUTLINED_FUNCTION_0_229();
  v18 = &v16[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_pageContextData];
  *v18 = sub_1E4205F14();
  v18[1] = v19;
  v20 = OBJC_IVAR____TtC8VideosUI14LibraryBarItem_promptOnly;
  v16[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_promptOnly] = 0;
  v21 = &v16[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_iconResource];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v16[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_title];
  *v22 = v15;
  v22[1] = v14;
  v23 = &v16[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier];
  *v23 = v13;
  v23[1] = v12;
  *&v16[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_category] = v11;
  OUTLINED_FUNCTION_3_0(&v16[v20], v31);
  v16[v20] = v10;
  v24 = &v16[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_sideBarIconResource];
  *v24 = v9;
  v24[1] = a8;
  type metadata accessor for LibMenuItem(0);
  v25 = j__OUTLINED_FUNCTION_8_76();
  v27 = v26;
  v28 = OUTLINED_FUNCTION_18();
  *&v16[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_menuItem] = sub_1E3A8A680(0, v25, v27, 0, 0, v28 & 1);
  v30.receiver = v16;
  v30.super_class = type metadata accessor for LibraryBarItem();
  return objc_msgSendSuper2(&v30, sel_init);
}

void *sub_1E3D7141C(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_pageContextData];
  *v4 = sub_1E4205F14();
  v4[1] = v5;
  v6 = OBJC_IVAR____TtC8VideosUI14LibraryBarItem_promptOnly;
  v2[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_promptOnly] = 0;
  v7 = &v2[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_iconResource];
  *v7 = 0;
  v7[1] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_menuItem] = a1;
  v8 = *(*a1 + 200);

  v10 = v8(v9);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = a1[5];
  }

  v14 = &v2[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_title];
  *v14 = v12;
  v14[1] = v13;
  v15 = a1[10];
  v16 = &v2[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier];
  *v16 = a1[9];
  v16[1] = v15;
  OUTLINED_FUNCTION_3_0(&v2[v6], v22);
  v2[v6] = 0;
  v17 = a1[8];
  v18 = &v2[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_sideBarIconResource];
  *v18 = a1[7];
  v18[1] = v17;
  *&v2[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_category] = 0;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for LibraryBarItem();

  v19 = objc_msgSendSuper2(&v21, sel_init);

  return v19;
}

BOOL sub_1E3D71574(uint64_t a1)
{
  v2 = v1;
  sub_1E3294F34(a1, v18);
  if (v19)
  {
    v3 = type metadata accessor for LibraryBarItem();
    if (swift_dynamicCast())
    {
      v4 = v17;
      v16.receiver = v2;
      v16.super_class = v3;
      if (objc_msgSendSuper2(&v16, sel_isEqual_, v17))
      {
        OUTLINED_FUNCTION_1_209(OBJC_IVAR____TtC8VideosUI14LibraryBarItem_title);
        v7 = v7 && v5 == v6;
        if (v7 || (sub_1E42079A4() & 1) != 0)
        {
          OUTLINED_FUNCTION_1_209(OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier);
          v10 = v7 && v8 == v9;
          if (v10 || (sub_1E42079A4() & 1) != 0)
          {
            v11 = MEMORY[0x1E69E7D40];
            v12 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xA8))();
            if (((v12 ^ (*((*v11 & *v4) + 0xA8))()) & 1) == 0)
            {
              v14 = *(v2 + OBJC_IVAR____TtC8VideosUI14LibraryBarItem_category);
              v15 = *(v4 + OBJC_IVAR____TtC8VideosUI14LibraryBarItem_category);

              return v14 == v15;
            }
          }
        }
      }
    }
  }

  else
  {
    sub_1E329505C(v18);
  }

  return 0;
}

uint64_t sub_1E3D717D0()
{
  MEMORY[0x1E69109E0](*(v0 + OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier), *(v0 + OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier + 8));
  MEMORY[0x1E69109E0](93, 0xE100000000000000);
  return 91;
}

id sub_1E3D7186C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryBarItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata accessor for VUILibraryCategoryType()
{
  if (!qword_1EE23B070)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EE23B070);
    }
  }
}

void sub_1E3D71AB4(double a1)
{
  v1 = round(a1);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v3 = [objc_opt_self() sharedInstance];
  if (!v3)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v4 = v3;
  sub_1E3D76818(v2, 0x656C7974536F6ELL, 0xE700000000000000, 48, 0xE100000000000000, 12333, 0xE200000000000000, 0, v3);
  v6 = v5;

  if (v6)
  {
  }

  else
  {
    v7 = [objc_opt_self() localizedStringFromNumber:v2 numberStyle:0];
    sub_1E4205F14();
  }

  OUTLINED_FUNCTION_57();
}

BOOL sub_1E3D71C04(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for TeamStatsViewModel.TeamStats(0);
  return (sub_1E3D71CCC(a1 + *(v4 + 20), a2 + *(v4 + 20), MEMORY[0x1E69D3D20], &qword_1ECF38208, MEMORY[0x1E69D3D20], MEMORY[0x1E69D3D28]) & 1) != 0 && *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
}

uint64_t sub_1E3D71CCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_1E3D769CC(a4, a5, a6);
  sub_1E4206254();
  sub_1E4206254();
  if (v14 == v12 && v15 == v13)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E3D71DBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 872))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3D71E6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34550, &qword_1E42E1250);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34548, &qword_1E42C02F0);
  OUTLINED_FUNCTION_21_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_17_10();
  return v6(v5);
}

uint64_t sub_1E3D71F68(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_57();
  sub_1E4200674();

  return v3;
}

uint64_t sub_1E3D71FD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 920))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3D72080()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF381D0, &qword_1E42CF2C8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF381C8, &qword_1E42CF2C0);
  OUTLINED_FUNCTION_21_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_17_10();
  return v6(v5);
}

uint64_t sub_1E3D72168()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3D721D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 968))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E3D72258(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3D722E4(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3D7235C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_8(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_13_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_21_15(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_17_10();
  return v6(v5);
}

BOOL sub_1E3D72444()
{
  v1 = *((*(*v0 + 920))() + 16);

  return v1 < 3;
}

uint64_t sub_1E3D7249C()
{
  v1 = (*(*v0 + 552))();
  if (!v1)
  {
    v4 = 0u;
    v5 = 0u;
    goto LABEL_6;
  }

  v3[3] = &type metadata for ViewModelKeys.Sports;
  v3[4] = &off_1F5D7BC68;
  LOBYTE(v3[0]) = 6;
  sub_1E3F9F164(v3, v1, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(v3);
  if (!*(&v5 + 1))
  {
LABEL_6:
    sub_1E325F7A8(&v4, &unk_1ECF296E0, &unk_1E4298030);
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  if (swift_dynamicCast())
  {
    return v3[0];
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1E3D725F8()
{
  OUTLINED_FUNCTION_31_1();
  v55 = v1;
  v56 = v2;
  v54 = v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_0_10();
  v52 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v51 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF381C8, &qword_1E42CF2C0);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34548, &qword_1E42C02F0);
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  v20 = OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel__teamAbbreviations;
  *&v63[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6E8, &qword_1E42A0FA0);
  sub_1E4200634();
  (*(v16 + 32))(v0 + v20, v19, v14);
  v21 = OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel__statViewModels;
  v22 = MEMORY[0x1E69E7CC0];
  *&v63[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF381C0, &qword_1E42CF270);
  sub_1E4200634();
  (*(v10 + 32))(v0 + v21, v13, v8);
  v23 = OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel__isDisabled;
  LOBYTE(v63[0]) = 0;
  sub_1E4200634();
  (*(v52 + 32))(v0 + v23, v7, v53);
  v24 = (v0 + OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel_prototypes);
  v24[1] = 0;
  v24[2] = 0;
  *v24 = 0;
  v25 = v0 + OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel_state;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 64) = 0u;
  *(v25 + 80) = 0u;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0u;
  *(v25 + 96) = v22;
  v26 = v56;

  v27 = sub_1E39BEDCC(v54, v55, v26);
  v28 = v27;
  if (!v27)
  {
    goto LABEL_23;
  }

  v29 = *(*v27 + 464);

  v31 = v29(v30);
  v32 = MEMORY[0x1E69E7CC0];
  if (!v31)
  {
    goto LABEL_22;
  }

  v55 = v28;
  v58 = MEMORY[0x1E69E7CC0];
  v33 = sub_1E32AE9B0(v31);
  for (i = 0; v33 != i; ++i)
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x1E6911E60](i, v31);
      v35 = v36;
    }

    else
    {
      if (i >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v35 = *(v31 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    LOWORD(v59) = *(v35 + 98);
    v57 = 23;
    sub_1E3742F1C(v36, v37, v38);
    sub_1E4206254();
    sub_1E4206254();
    if (*&v63[0] == v60 && *(&v63[0] + 1) == *(&v60 + 1))
    {
    }

    else
    {
      v40 = sub_1E42079A4();

      if ((v40 & 1) == 0)
      {

        continue;
      }
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    sub_1E4207554();
  }

  v41 = sub_1E3824984(v58);

  v32 = MEMORY[0x1E69E7CC0];
  if (v41)
  {
    v32 = v41;
  }

  v28 = v55;
LABEL_22:
  v42 = sub_1E3D71E3C(v32);
  v43 = (*v28 + 1072);
  v44 = *v43;
  v58 = (*v43)(v42);
  *&v63[0] = 0;
  BYTE8(v63[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  sub_1E3D75BF0();
  sub_1E38D2054(v63, &v59);

  sub_1E3D72BE4();
  v45 = v28 + OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel_state;
  swift_beginAccess();
  v46 = *v45;
  v47 = *(v45 + 1);
  *v45 = v60;
  *(v45 + 1) = v61;
  *(v45 + 2) = v62;
  v48 = sub_1E3D75C54(v46, v47);
  v59 = v44(v48);
  *&v63[0] = 1;
  BYTE8(v63[0]) = 0;
  sub_1E38D2054(v63, &v57);

  sub_1E3D72BE4();
  v49 = *(v45 + 6);
  v50 = *(v45 + 7);
  *(v45 + 3) = v63[0];
  *(v45 + 4) = v63[1];
  *(v45 + 5) = v63[2];
  sub_1E3D75C54(v49, v50);
  sub_1E3D73624();

LABEL_23:

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D72BE4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  if (!v1)
  {
    goto LABEL_13;
  }

  v35 = &type metadata for ViewModelKeys.Sports;
  v36 = &off_1F5D7BC68;
  LOBYTE(v34[0]) = 7;
  v11 = OUTLINED_FUNCTION_12_114();
  if (!v38)
  {
    goto LABEL_10;
  }

  if ((OUTLINED_FUNCTION_11_125(v11, v12, v13, MEMORY[0x1E69E6158]) & 1) == 0)
  {
LABEL_12:

    __swift_destroy_boxed_opaque_existential_1(v34);
    goto LABEL_13;
  }

  v15 = v32;
  v14 = v33;
  __swift_destroy_boxed_opaque_existential_1(v34);
  v35 = &type metadata for ViewModelKeys.Sports;
  v36 = &off_1F5D7BC68;
  LOBYTE(v34[0]) = 23;
  v16 = OUTLINED_FUNCTION_12_114();
  if (!v38)
  {

    goto LABEL_10;
  }

  if ((OUTLINED_FUNCTION_11_125(v16, v17, v18, MEMORY[0x1E69E6370]) & 1) == 0)
  {

    goto LABEL_12;
  }

  v19 = v32;
  __swift_destroy_boxed_opaque_existential_1(v34);
  v35 = &type metadata for ViewModelKeys.Sports;
  v36 = &off_1F5D7BC68;
  LOBYTE(v34[0]) = 8;
  OUTLINED_FUNCTION_12_114();

  if (v38)
  {
    if (OUTLINED_FUNCTION_11_125(v20, v21, v22, MEMORY[0x1E69E6158]))
    {
      v23 = v32;
      v24 = v33;
      __swift_destroy_boxed_opaque_existential_1(v34);
      v25 = sub_1E4205CB4();
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_10:

  __swift_destroy_boxed_opaque_existential_1(v34);
  sub_1E325F7A8(&v37, &unk_1ECF296E0, &unk_1E4298030);
LABEL_13:
  v26 = sub_1E3E37F30();
  (*(v6 + 16))(v10, v26, v4);
  v27 = sub_1E41FFC94();
  v28 = sub_1E42067E4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_125_0();
    *v29 = 0;
    _os_log_impl(&dword_1E323F000, v27, v28, "TeamStatsViewModel.TeamStatsViewModel.Team: Stats Failure -- Insufficient data to create Team", v29, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v30 = OUTLINED_FUNCTION_57();
  v31(v30);
  v15 = 0;
  v14 = 0;
  v19 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
LABEL_16:
  *v3 = v15;
  v3[1] = v14;
  v3[2] = v19;
  v3[3] = v23;
  v3[4] = v24;
  v3[5] = v25;
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D72E88(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = sub_1E42056A4();
  sub_1E4205044();

  (*(v5 + 104))(v9, *MEMORY[0x1E69D3B90], v3);
  LOBYTE(v13) = sub_1E3D71CCC(v12, v9, MEMORY[0x1E69D3BB8], &unk_1EE23B670, MEMORY[0x1E69D3BB8], MEMORY[0x1E69D3BC8]);
  v14 = *(v5 + 8);
  v14(v9, v3);
  v14(v12, v3);
  sub_1E3D72258(v13 & 1);
  swift_beginAccess();
  sub_1E3D73190();
  v16 = v15;
  v17 = swift_endAccess();
  if (v16)
  {
    sub_1E3D742B8();
  }

  v19 = *((*(*v2 + 920))(v17) + 16);

  if (v19 <= 2)
  {
    sub_1E3D73BE8();
    sub_1E3D73590(3, v20);
    v22 = v21;
    v24 = v23;
    if (v23)
    {
      sub_1E42079E4();
      swift_unknownObjectRetain_n();
      v27 = swift_dynamicCastClass();
      if (!v27)
      {
        swift_unknownObjectRelease();
        v27 = MEMORY[0x1E69E7CC0];
      }

      v28 = *(v27 + 16);

      if (__OFSUB__(v24 >> 1, v22))
      {
        __break(1u);
      }

      else if (v28 == (v24 >> 1) - v22)
      {
        v29 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v29)
        {
LABEL_12:
          sub_1E3D742B8();

          return sub_1E3D72258(1);
        }

LABEL_11:
        swift_unknownObjectRelease();
        goto LABEL_12;
      }

      swift_unknownObjectRelease();
    }

    v25 = OUTLINED_FUNCTION_57();
    sub_1E3D75F60(v25, v26, v22, v24);
    goto LABEL_11;
  }

  return result;
}

void sub_1E3D73190()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v42 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v41 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38130, &qword_1E42CEE28);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = sub_1E42056A4();
  v14 = sub_1E4205024();

  v15 = sub_1E32AE9B0(v14);
  if (v15)
  {
    v16 = v15;
    v43[0] = MEMORY[0x1E69E7CC0];
    v17 = v43;
    sub_1E4207574();
    if (v16 < 0)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v40 = v4;
    v18 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1E6911E60](v18, v14);
      }

      else
      {
        v19 = *(v14 + 8 * v18 + 32);
      }

      ++v18;
      v20 = v19;
      sub_1E4205964();

      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
    }

    while (v16 != v18);

    v21 = v43[0];
    v4 = v40;
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
  }

  v14 = 0;
  sub_1E3D752C4(v21, v1);

  sub_1E42056F4();
  v22 = sub_1E4205604();
  if (__swift_getEnumTagSinglePayload(v12, 1, v22))
  {
    sub_1E325F7A8(v12, &qword_1ECF38130, &qword_1E42CEE28);
  }

  else
  {
    v23 = sub_1E42055D4();
    sub_1E325F7A8(v12, &qword_1ECF38130, &qword_1E42CEE28);
    if (v23)
    {

      v1[12] = v23;
    }
  }

  memcpy(v43, v1, sizeof(v43));
  v17 = v43;
  sub_1E3D750AC();
  v25 = sub_1E3D73590(3, v24);
  v29 = (v28 >> 1) - v27;
  if (__OFSUB__(v28 >> 1, v27))
  {
    __break(1u);
    goto LABEL_29;
  }

  v14 = v25;
  if (v29 > 2)
  {
    v1 = v26;
    v3 = v27;
    v17 = v28;
    if ((v28 & 1) == 0)
    {
LABEL_19:
      sub_1E3D75F60(v14, v1, v3, v17);
      goto LABEL_26;
    }

    sub_1E42079E4();
    swift_unknownObjectRetain_n();
    v36 = swift_dynamicCastClass();
    if (!v36)
    {
      swift_unknownObjectRelease();
      v36 = MEMORY[0x1E69E7CC0];
    }

    v37 = *(v36 + 16);

    if (v37 == v29)
    {
      v38 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v38)
      {
        goto LABEL_27;
      }

LABEL_26:
      swift_unknownObjectRelease();
      goto LABEL_27;
    }

LABEL_30:
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  v30 = sub_1E3E37F30();
  v32 = v41;
  v31 = v42;
  (*(v42 + 16))(v41, v30, v4);
  v33 = sub_1E41FFC94();
  v34 = sub_1E42067E4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_125_0();
    *v35 = 0;
    _os_log_impl(&dword_1E323F000, v33, v34, "TeamStatsViewModel.update: Stats Failure -- failed to create teamStats, flagging as unavailable.", v35, 2u);
    OUTLINED_FUNCTION_6_0();
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  (*(v31 + 8))(v32, v4);
LABEL_27:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D73590(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1E380055C(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      sub_1E3D76924(0, v5, a2);
      v7 = v6;

      return v7;
    }
  }

  __break(1u);
  return result;
}

void sub_1E3D73624()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = (*v0 + 464);
  v9 = *v8;
  v10 = (*v8)();
  if (!v10)
  {
LABEL_51:
    sub_1E3E37F30();
    v35 = OUTLINED_FUNCTION_23_76();
    v36(v35);
    v37 = sub_1E41FFC94();
    v38 = sub_1E42067E4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_125_0();
      *v39 = 0;
      _os_log_impl(&dword_1E323F000, v37, v38, "TeamStatsViewModel.parsePrototypes: Stats Failure -- failed to parse prototypes", v39, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v3 + 8))(v7, v1);
    goto LABEL_54;
  }

  v11 = v10;
  v44 = v9;
  v45 = v3;
  v46 = v1;
  v12 = sub_1E32AE9B0(v10);
  for (i = 0; ; ++i)
  {
    if (v12 == i)
    {
LABEL_15:

      goto LABEL_50;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1E6911E60](i, v11);
      v14 = v15;
    }

    else
    {
      if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v14 = *(v11 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E3742F1C(v15, v16, v17);
    sub_1E4206254();
    sub_1E4206254();
    if (v51 == v49 && v52 == v50)
    {

LABEL_17:

      if (*v14 == _TtC8VideosUI13TextViewModel)
      {
        v21 = (v44)(v20);
        if (v21)
        {
          v22 = v21;
          v23 = sub_1E32AE9B0(v21);
          for (j = 0; ; ++j)
          {
            if (v23 == j)
            {
LABEL_56:

              goto LABEL_15;
            }

            if ((v22 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x1E6911E60](j, v22);
            }

            else
            {
              if (j >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_64;
              }

              v25 = *(v22 + 8 * j + 32);
            }

            if (__OFADD__(j, 1))
            {
              goto LABEL_63;
            }

            OUTLINED_FUNCTION_20_85(15);
            OUTLINED_FUNCTION_29_73();
            if (v51 == v49 && v52 == v50)
            {
              break;
            }

            v27 = sub_1E42079A4();

            if (v27)
            {
              goto LABEL_33;
            }
          }

LABEL_33:

          if (*v25 != _TtC8VideosUI13TextViewModel || (v29 = (v44)(v28)) == 0)
          {

            goto LABEL_49;
          }

          v30 = v29;
          v31 = 0;
          v47 = v29 & 0xC000000000000001;
          v48 = sub_1E32AE9B0(v29);
          while (1)
          {
            if (v48 == v31)
            {

              goto LABEL_56;
            }

            if (v47)
            {
              v32 = MEMORY[0x1E6911E60](v31, v30);
            }

            else
            {
              if (v31 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_66;
              }

              v32 = *(v30 + 8 * v31 + 32);
            }

            if (__OFADD__(v31, 1))
            {
              goto LABEL_65;
            }

            OUTLINED_FUNCTION_20_85(17);
            OUTLINED_FUNCTION_29_73();
            if (v51 == v49 && v52 == v50)
            {
              break;
            }

            v34 = sub_1E42079A4();

            if (v34)
            {
              goto LABEL_58;
            }

            ++v31;
          }

LABEL_58:

          if (*v32 == _TtC8VideosUI13TextViewModel)
          {
            v40 = (v0 + OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel_prototypes);
            v41 = *(v0 + OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel_prototypes);
            v42 = *(v0 + OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel_prototypes + 8);
            v43 = *(v0 + OBJC_IVAR____TtC8VideosUI18TeamStatsViewModel_prototypes + 16);
            *v40 = v25;
            v40[1] = v32;
            v40[2] = v14;
            sub_1E37EC9B0(v41, v42, v43);
LABEL_54:
            OUTLINED_FUNCTION_25_2();
            return;
          }
        }
      }

LABEL_49:

LABEL_50:
      v3 = v45;
      v1 = v46;
      goto LABEL_51;
    }

    v19 = sub_1E42079A4();

    if (v19)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}