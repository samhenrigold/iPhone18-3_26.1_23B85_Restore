void sub_1E394F894()
{
  OUTLINED_FUNCTION_31_1();
  v25 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CD00, &unk_1E42A2900);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  v17 = VUIPlaybackManagerPostPlayPIPWillHideNotification[0];
  v18 = objc_opt_self();
  v24 = v17;
  v19 = [v18 defaultCenter];
  sub_1E4206C14();

  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v20 = sub_1E4206A04();
  v26 = v20;
  v21 = sub_1E42069A4();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v21);
  sub_1E38DF10C();
  sub_1E3746800();
  OUTLINED_FUNCTION_26_32();
  sub_1E42007D4();
  sub_1E325F748(v3, &unk_1ECF2D2B0, &unk_1E429D3D0);

  (*(v6 + 8))(v10, v4);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  v22 = v25;
  swift_unknownObjectWeakInit();
  sub_1E328FCF4(&qword_1EE28A240, &unk_1ECF2CD00, &unk_1E42A2900);
  sub_1E4200844();

  (*(v13 + 8))(v16, v11);
  OUTLINED_FUNCTION_11_3(v22 + OBJC_IVAR____TtC8VideosUI26PostPlayTemplateController_cancellables, &v26);
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

double sub_1E394FC04(char a1)
{
  v2 = v1;
  v26.receiver = v2;
  v26.super_class = type metadata accessor for PostPlayTemplateController();
  objc_msgSendSuper2(&v26, sel_vui_viewDidAppear_, a1 & 1);
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 isPostPlayActive];

  if (v5)
  {
    sub_1E394FF24();
  }

  v6 = sub_1E39514F4();
  sub_1E394E4F0();
  v8 = v7;
  v9 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v11 = (*(v10 + 640))();
  v29[1] = v8;
  v27 = v11;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
  OUTLINED_FUNCTION_0_32();
  sub_1E328FCF4(v12, &unk_1ECF2C790, &qword_1E42996A0);
  sub_1E38D2054(&v27, v29);
  v13 = v29[0];

  if (v13)
  {
    if ((*(*v13 + 392))(v14))
    {
      type metadata accessor for PlaylistLockupLayout();
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_22_27();
        if (v16)
        {
          if (v15 <= 1 && (v6 & 1) == 0)
          {
            v17 = *&v2[OBJC_IVAR____TtC8VideosUI26PostPlayTemplateController_attentionMonitor];
            if (v17)
            {
              v18 = *((*v9 & *v17) + 0x78);
              v19 = v17;
              v20 = v2;
              v21 = v18(v2, &off_1F5D64880);
              v22 = (*((*v9 & *v19) + 0xB8))(v21);

              v20[OBJC_IVAR____TtC8VideosUI26PostPlayTemplateController_shouldDismissOncePlaybackEnds] = v22 & 1;
              goto LABEL_14;
            }
          }
        }
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_8();
  v24 = (*(v23 + 576))();
  if (v24)
  {
    (*(*v24 + 296))(v24);
  }

  return result;
}

uint64_t sub_1E394FF24()
{
  v0 = *sub_1E32A9398();
  v1 = sub_1E3C14D60();

  if ((v1 & 1) != 0 || (OUTLINED_FUNCTION_3_74(), (*(v2 + 640))()) || (OUTLINED_FUNCTION_3_74(), ((*(v5 + 912))() & 1) == 0) && (OUTLINED_FUNCTION_3_74(), ((*(v6 + 920))() & 1) == 0))
  {
    OUTLINED_FUNCTION_3_74();
    return (*(v3 + 680))(1);
  }

  else
  {
    OUTLINED_FUNCTION_3_74();
    return (*(v7 + 680))(0);
  }
}

uint64_t sub_1E39500AC(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PostPlayTemplateController();
  objc_msgSendSuper2(&v5, sel_vui_viewDidDisappear_, a1 & 1);
  OUTLINED_FUNCTION_21();
  return (*(v3 + 1328))();
}

id sub_1E3950188()
{
  v1 = v0;
  v102.receiver = v0;
  v102.super_class = type metadata accessor for PostPlayTemplateController();
  objc_msgSendSuper2(&v102, sel_vui_viewDidLayoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI26PostPlayTemplateController_playlistViewController];
  result = [v2 vuiView];
  if (!result)
  {
    __break(1u);
    goto LABEL_71;
  }

  v4 = result;
  result = OUTLINED_FUNCTION_14_57();
  if (!result)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v5 = result;
  [result bounds];
  OUTLINED_FUNCTION_3();

  v6 = OUTLINED_FUNCTION_6();
  [v7 v8];

  sub_1E394E4F0();
  v10 = v9;
  v11 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x280))();
  v104[0] = v10;
  v96 = v11;
  v97 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
  OUTLINED_FUNCTION_0_32();
  sub_1E328FCF4(v12, &unk_1ECF2C790, &qword_1E42996A0);
  sub_1E38D2054(&v96, v103);

  v13 = MEMORY[0x1E69E7CA0];
  if (v103[0] && (v14 = *(*v103[0] + 552), v15 = , v16 = v14(v15), , v16))
  {
    v99 = &unk_1F5D7BE68;
    v100 = &off_1F5D7BC48;
    LOBYTE(v96) = 1;
    sub_1E3F9F164(&v96, v16, v13 + 8);

    __swift_destroy_boxed_opaque_existential_1(&v96);
  }

  else
  {
    memset(v101, 0, sizeof(v101));
  }

  sub_1E384EE08(35);
  v18 = v17;
  v20 = v19;
  sub_1E37C5830(v101, &v96, &unk_1ECF296E0, &unk_1E4298030);
  if (v99)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (swift_dynamicCast())
    {
      v21 = v104[0];
      goto LABEL_12;
    }
  }

  else
  {
    sub_1E325F748(&v96, &unk_1ECF296E0, &unk_1E4298030);
  }

  v21 = 0;
LABEL_12:
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if (!v21)
  {
    v21 = sub_1E4205CB4();
  }

  v96 = v21;
  v22 = sub_1E3A7CD30(v18, v20, &v96, 0);

  __swift_destroy_boxed_opaque_existential_1(&v96);
  if (v22 && (v23 = *(*v22 + 392), v24 = , v25 = v23(v24), , v25))
  {
    type metadata accessor for ImageLayout();
    OUTLINED_FUNCTION_20_2();
    v26 = swift_dynamicCastClass();
    if (!v26)
    {
    }
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_opt_self() currentDevice];
  v28 = [v27 orientation];

  result = OUTLINED_FUNCTION_14_57();
  if (!result)
  {
    goto LABEL_72;
  }

  v29 = result;
  v30 = objc_opt_self();
  [v29 bounds];
  v32 = v31;
  v34 = v33;

  LOBYTE(v30) = [v30 isPortraitIgnoringFlatOrientation:v28 viewSize:{v32, v34}];
  v35 = type metadata accessor for LayoutGrid();
  v36 = sub_1E3A256EC();
  v94 = v35;
  if (v30 & 1) == 0 && ((v41 = v36, (sub_1E373F630(v36, 3, v37)) || (sub_1E373F630(v41, 4, v42) & 1) != 0 || (sub_1E373F630(v41, 5, v43)))
  {
    v38 = v26;
    v93 = 1;
    v39 = MEMORY[0x1E69874F0];
    v40 = 2;
  }

  else
  {
    v38 = v26;
    v93 = 0;
    v39 = MEMORY[0x1E69874E8];
    v40 = 1;
  }

  v44 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x320))(v40);
  (*((*v44 & *v2) + 0x338))(*v39);
  sub_1E394E4F0();
  v46 = v45;
  v47 = *&v1[OBJC_IVAR____TtC8VideosUI26PostPlayTemplateController_playlistViewController];
  v48 = (*((*v44 & *v47) + 0x280))();
  v104[0] = v46;
  v96 = v48;
  v97 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
  sub_1E38D2054(&v96, v103);

  v49 = v103[0];
  v50 = *&v1[OBJC_IVAR____TtC8VideosUI26PostPlayTemplateController_featuredContentLogo];
  if (!v50)
  {
    goto LABEL_68;
  }

  if (!v103[0])
  {
LABEL_69:

    return sub_1E325F748(v101, &unk_1ECF296E0, &unk_1E4298030);
  }

  v51 = *(*v103[0] + 392);

  v52 = v50;
  v53 = v51();

  if (!v53)
  {
    goto LABEL_34;
  }

  v54 = type metadata accessor for PlaylistLockupLayout();
  v55 = swift_dynamicCastClass();
  if (!v55)
  {

LABEL_34:

LABEL_68:

    goto LABEL_69;
  }

  v91 = v54;
  v56 = *(v55 + 120);
  OUTLINED_FUNCTION_8();
  v58 = *(v57 + 248);

  v58(v59);
  (*(*v56 + 352))();
  OUTLINED_FUNCTION_8();
  v61 = (*(v60 + 152))(v103);
  if (v38)
  {
    (*(*v38 + 432))(v61);
  }

  result = OUTLINED_FUNCTION_14_57();
  if (!result)
  {
    goto LABEL_73;
  }

  v62 = result;
  [result bounds];
  OUTLINED_FUNCTION_5_23();

  v106.origin.x = OUTLINED_FUNCTION_6_18();
  Width = CGRectGetWidth(v106);
  result = OUTLINED_FUNCTION_14_57();
  if (!result)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  OUTLINED_FUNCTION_32_30(result);
  OUTLINED_FUNCTION_29_26();
  v64 = OUTLINED_FUNCTION_28_28();
  v65 = v94;
  v66 = sub_1E3A256EC();
  v95 = v52;
  if (Width >= v64 || (v65 = v66, (sub_1E373F630(v66, 3, v67) & 1) != 0) || (sub_1E373F630(v65, 4, v68) & 1) != 0 || (sub_1E373F630(v65, 5, v69) & 1) != 0)
  {
LABEL_44:
    result = OUTLINED_FUNCTION_14_57();
    if (result)
    {
      OUTLINED_FUNCTION_32_30(result);
      OUTLINED_FUNCTION_5_23();

      v109.origin.x = OUTLINED_FUNCTION_6_18();
      CGRectGetWidth(v109);
      result = OUTLINED_FUNCTION_14_57();
      if (result)
      {
        OUTLINED_FUNCTION_32_30(result);
        OUTLINED_FUNCTION_29_26();
        OUTLINED_FUNCTION_28_28();
        result = OUTLINED_FUNCTION_14_57();
        if (result)
        {
          OUTLINED_FUNCTION_32_30(result);

          result = OUTLINED_FUNCTION_14_57();
          if (result)
          {
            v72 = result;
            [result vuiIsRTL];

            VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
            OUTLINED_FUNCTION_3();
            v73 = [v95 setFrame_];
            *&v74 = COERCE_DOUBLE((*((*MEMORY[0x1E69E7D40] & *v47) + 0x418))(v73));
            if (v75)
            {

              goto LABEL_68;
            }

            v76 = *&v74;
            v77 = *(*v49 + 392);

            v79 = v77(v78);

            if (v79)
            {
              if (swift_dynamicCastClass())
              {
                OUTLINED_FUNCTION_8();
                (*(v80 + 152))(v104);
                v81 = *&v104[2];
                v92 = v105;
                result = OUTLINED_FUNCTION_14_57();
                if (result)
                {
                  v82 = result;
                  if (v92)
                  {
                    v83 = 0.0;
                  }

                  else
                  {
                    v83 = v81;
                  }

                  [result bounds];
                  v85 = v84;

                  v86 = v85 - v76 - v83;
                  v110.origin.x = OUTLINED_FUNCTION_6();
                  MaxY = CGRectGetMaxY(v110);
                  OUTLINED_FUNCTION_8();
                  (*(v88 + 152))(&v96);
                  if (v100)
                  {
                    v89 = v86 > MaxY;
                  }

                  else
                  {
                    v89 = v86 > MaxY + v98;
                  }

                  v90 = v93;
                  if (v89)
                  {
                    v90 = 1;
                  }

                  if (v90)
                  {
                    [v95 setHidden_];
                  }

                  else
                  {
                    [v95 setHidden_];
                  }

                  goto LABEL_68;
                }

                goto LABEL_79;
              }
            }

            goto LABEL_68;
          }

LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v65 = objc_opt_self();
  [v65 isPad];
  result = OUTLINED_FUNCTION_14_57();
  if (!result)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v70 = result;
  [result bounds];
  OUTLINED_FUNCTION_5_23();

  v107.origin.x = OUTLINED_FUNCTION_6_18();
  CGRectGetWidth(v107);
  result = OUTLINED_FUNCTION_14_57();
  if (result)
  {
    v71 = result;
    [result bounds];
    OUTLINED_FUNCTION_5_23();

    v108.origin.x = OUTLINED_FUNCTION_6_18();
    CGRectGetHeight(v108);
    [v65 isPad];
    goto LABEL_44;
  }

LABEL_81:
  __break(1u);
  return result;
}

uint64_t sub_1E3950EB4()
{

  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI26PostPlayTemplateController_collectionImpressioner, &unk_1ECF296D0, &qword_1E429BAA0);

  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI26PostPlayTemplateController_playbackUpNextDelegate);
}

id sub_1E3950F60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PostPlayTemplateController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1E39510F8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_21();
  v2[4] = (*(v3 + 304))();
  return sub_1E37BCF0C;
}

void sub_1E3951198()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v28 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v31 = sub_1E39514F4();
  sub_1E324FBDC();
  v12 = *(v3 + 16);
  OUTLINED_FUNCTION_26_32();
  v12();
  v13 = v0;
  v14 = sub_1E41FFC94();
  v15 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_104(v15))
  {
    v16 = swift_slowAlloc();
    v29 = v1;
    v17 = v16;
    *v16 = 67109632;
    *(v16 + 4) = (v31 & 1) == 0;
    *(v16 + 8) = 1024;
    v18 = OBJC_IVAR____TtC8VideosUI26PostPlayTemplateController_shouldDismissOncePlaybackEnds;
    *(v16 + 10) = *(&v13->isa + OBJC_IVAR____TtC8VideosUI26PostPlayTemplateController_beginTrailerPlayback);
    *(v16 + 14) = 1024;
    *(v16 + 16) = *(&v13->isa + v18);

    _os_log_impl(&dword_1E323F000, v14, v15, "PostPlayTemplateController:: dismissIfNeeded(): isPostPlayAutoPlayDisabled: %{BOOL}d,\nbeginTrailerPlayback: %{BOOL}d, shouldDismissOncePlaybackEnds: %{BOOL}d", v17, 0x14u);
    v1 = v29;
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    v14 = v13;
  }

  v19 = *(v3 + 8);
  v19(v11, v1);
  if ((v31 & 1) != 0 || (*(&v13->isa + OBJC_IVAR____TtC8VideosUI26PostPlayTemplateController_beginTrailerPlayback) & 1) != 0 || *(&v13->isa + OBJC_IVAR____TtC8VideosUI26PostPlayTemplateController_shouldDismissOncePlaybackEnds) != 1)
  {
    OUTLINED_FUNCTION_26_32();
    v12();
    v25 = sub_1E41FFC94();
    v26 = sub_1E42067E4();
    if (OUTLINED_FUNCTION_104(v26))
    {
      v27 = OUTLINED_FUNCTION_125_0();
      *v27 = 0;
      _os_log_impl(&dword_1E323F000, v25, v26, "PostPlayTemplateController:: no automatic dismissal", v27, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v19(v6, v1);
  }

  else
  {
    v20 = v30;
    OUTLINED_FUNCTION_26_32();
    v12();
    v21 = sub_1E41FFC94();
    v22 = sub_1E42067E4();
    if (OUTLINED_FUNCTION_104(v22))
    {
      v23 = OUTLINED_FUNCTION_125_0();
      *v23 = 0;
      _os_log_impl(&dword_1E323F000, v21, v22, "PostPlayTemplateController:: automatic dismissal", v23, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v19(v20, v1);
    v24 = [objc_opt_self() sharedInstance];
    [v24 dismissPlaybackAnimated:1 leaveGroupActivitySession:1 completion:0];
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39514F4()
{
  sub_1E394E4F0();
  v1 = v0;
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 640))();
  v13[1] = v1;
  v11 = v3;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
  OUTLINED_FUNCTION_0_32();
  sub_1E328FCF4(v4, &unk_1ECF2C790, &qword_1E42996A0);
  sub_1E38D2054(&v11, v13);
  v5 = v13[0];

  if (!v5)
  {
    goto LABEL_8;
  }

  if (!(*(*v5 + 392))(v6))
  {
LABEL_7:

LABEL_8:
    v9 = 1;
    return v9 & 1;
  }

  type metadata accessor for PlaylistLockupLayout();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

    goto LABEL_7;
  }

  v8 = *(*(v7 + 128) + 120);
  type metadata accessor for MediaShowcasingButtonsPresenter(0);
  v9 = sub_1E3B234B8(v8);

  return v9 & 1;
}

void sub_1E395168C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1E394E4F0();
    v12 = v11;
    OUTLINED_FUNCTION_21();
    v14 = (*(v13 + 640))();
    v26[1] = v12;
    v24 = v14;
    v25 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
    OUTLINED_FUNCTION_0_32();
    sub_1E328FCF4(v15, &unk_1ECF2C790, &qword_1E42996A0);
    sub_1E38D2054(&v24, v26);
    v16 = v26[0];

    if (v16)
    {
      if ((*(*v16 + 392))(v17))
      {
        type metadata accessor for PlaylistLockupLayout();
        if (swift_dynamicCastClass())
        {
          OUTLINED_FUNCTION_22_27();
          if (!v19)
          {
            goto LABEL_12;
          }

          if (v18 == 1)
          {
            sub_1E39522A8(v1 & 1);
          }

          else
          {
            if (v18)
            {
LABEL_12:
              v20 = sub_1E324FBDC();
              (*(v4 + 16))(v8, v20, v2);
              v21 = sub_1E41FFC94();
              v22 = sub_1E42067E4();
              if (OUTLINED_FUNCTION_104(v22))
              {
                v23 = OUTLINED_FUNCTION_125_0();
                *v23 = 0;
                _os_log_impl(&dword_1E323F000, v21, v22, "PostPlayTemplateController:: unexpected post play type", v23, 2u);
                OUTLINED_FUNCTION_6_0();
              }

              else
              {
              }

              (*(v4 + 8))(v8, v2);
              goto LABEL_19;
            }

            sub_1E3951988();
          }
        }
      }

      else
      {
      }

LABEL_19:

      goto LABEL_20;
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3951988()
{
  OUTLINED_FUNCTION_31_1();
  v63 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v62 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = *(*v4 + 552);
  v12 = v11();
  if (v12)
  {
    v70 = &unk_1F5D7BE68;
    v71 = &off_1F5D7BC48;
    LOBYTE(v67) = 6;
    sub_1E3F9F164(&v67, v12, MEMORY[0x1E69E7CA0] + 8);

    v12 = __swift_destroy_boxed_opaque_existential_1(&v67);
  }

  else
  {
    memset(v66, 0, sizeof(v66));
  }

  v13 = (v11)(v12);
  if (!v13)
  {
    sub_1E325F748(v66, &unk_1ECF296E0, &unk_1E4298030);
    v64 = 0u;
    v65 = 0u;
LABEL_13:
    v16 = &v64;
LABEL_15:
    sub_1E325F748(v16, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_16;
  }

  v70 = &unk_1F5D7BE68;
  v71 = &off_1F5D7BC48;
  LOBYTE(v67) = 5;
  sub_1E3F9F164(&v67, v13, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(&v67);
  if (!*(&v65 + 1))
  {
    sub_1E325F748(v66, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v16 = v66;
    goto LABEL_15;
  }

  v61 = v2;
  v14 = sub_1E3744600(v67);

  sub_1E37C5830(v66, &v67, &unk_1ECF296E0, &unk_1E4298030);
  if (v70)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
    if (swift_dynamicCast())
    {
      v15 = v64;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    sub_1E325F748(&v67, &unk_1ECF296E0, &unk_1E4298030);
    v15 = 0;
  }

  v34 = objc_allocWithZone(VUIVideosPlayable);
  v35 = sub_1E37448C4(v14, v15);
  if (v35)
  {
    v36 = v35;
    v37 = v11();
    if (!v37)
    {
      v64 = 0u;
      v65 = 0u;
      sub_1E325F748(&v64, &unk_1ECF296E0, &unk_1E4298030);
      goto LABEL_48;
    }

    v70 = &unk_1F5D7BE68;
    v71 = &off_1F5D7BC48;
    LOBYTE(v67) = 18;
    sub_1E3F9F164(&v67, v37, MEMORY[0x1E69E7CA0] + 8);

    __swift_destroy_boxed_opaque_existential_1(&v67);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_48;
    }

    v38 = v67;
    v39 = v68;
    v40 = sub_1E4205F14();
    if (v40 == v38 && v41 == v39)
    {
    }

    else
    {
      v43 = OUTLINED_FUNCTION_11_58(v40);

      if ((v43 & 1) == 0)
      {
        v44 = sub_1E4205F14();
        if (v44 == v38 && v45 == v39)
        {
        }

        else
        {
          v47 = OUTLINED_FUNCTION_11_58(v44);

          if ((v47 & 1) == 0)
          {
            v48 = sub_1E4205F14();
            if (v48 != v38 || v49 != v39)
            {
              OUTLINED_FUNCTION_11_58(v48);
            }

LABEL_48:
            v17 = v63;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
            v51 = swift_allocObject();
            *(v51 + 16) = xmmword_1E4298880;
            *(v51 + 32) = v36;
            v52 = objc_allocWithZone(VUIMediaInfo);
            OUTLINED_FUNCTION_25();
            v19 = sub_1E376538C(v53, v54, v55, v56);
            sub_1E325F748(v66, &unk_1ECF296E0, &unk_1E4298030);
            v2 = v61;
            if (!v19)
            {
              goto LABEL_49;
            }

            goto LABEL_18;
          }
        }
      }
    }

    goto LABEL_48;
  }

  sub_1E325F748(v66, &unk_1ECF296E0, &unk_1E4298030);
  v2 = v61;
LABEL_16:
  v17 = v63;
  v18 = *(*(v63 + OBJC_IVAR____TtC8VideosUI26PostPlayTemplateController_playlistViewController) + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_backgroundMediaInfo);
  if (!v18)
  {
LABEL_49:
    v57 = sub_1E324FBDC();
    (*(v62 + 16))(v10, v57, v5);
    v58 = sub_1E41FFC94();
    v59 = sub_1E42067F4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = OUTLINED_FUNCTION_125_0();
      *v60 = 0;
      _os_log_impl(&dword_1E323F000, v58, v59, "PostPlayTemplateController:: failed to create media info", v60, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v62 + 8))(v10, v5);
    goto LABEL_52;
  }

  v19 = v18;
LABEL_18:
  [v19 setIntent_];
  v20 = [objc_opt_self() sharedInstance];
  v21 = [v20 appController];

  if (v21)
  {
    v22 = [v21 appContext];
  }

  else
  {
    v22 = 0;
  }

  [v19 setAppContext_];

  [v19 setPlaybackStartReason_];
  v23 = v2;
  [v19 setAutomaticPlaybackStart_];
  v24 = [objc_opt_self() defaultCenter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v67 = sub_1E4205F14();
  v68 = v26;
  sub_1E4207414();
  *(inited + 96) = MEMORY[0x1E69E6370];
  *(inited + 72) = v2 & 1;
  v27 = sub_1E4205CB4();
  sub_1E37E7460(@"VUIPostPlayDidSelectItemNotification", 0, v27, v24);

  v28 = objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v29 = swift_allocObject();
  *(v29 + 16) = v19;
  v71 = sub_1E38A6934;
  v72 = v29;
  v67 = MEMORY[0x1E69E9820];
  v68 = 1107296256;
  v69 = sub_1E329EEC4;
  v70 = &block_descriptor_29;
  v30 = _Block_copy(&v67);
  v31 = v19;

  [v28 playMediaInfo:v31 watchType:3 isRentAndWatchNow:0 completion:v30];
  _Block_release(v30);
  if (_MergedGlobals_83 == 1 && (v32 = (*((*MEMORY[0x1E69E7D40] & *v17) + 0x1A8))()) != 0)
  {
    v33 = v32;
    if ([v32 respondsToSelector_])
    {
      [v33 mediaInfoDidChangeTo:v31 canPlay:1 wasAutoPlayed:v23 & 1];
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

LABEL_52:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39522A8(char a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E324FBDC();
  (*(v6 + 16))(v10, v11, v4);
  v12 = sub_1E41FFC94();
  v13 = sub_1E42067E4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_125_0();
    *v14 = 0;
    _os_log_impl(&dword_1E323F000, v12, v13, "PostPlayTemplateController:: play trailer", v14, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v15 = (*(v6 + 8))(v10, v4);
  if (byte_1EE28AD4A == 1)
  {
    v16 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1A8))(v15);
    if (v16)
    {
      v17 = v16;
      if ([v16 respondsToSelector_])
      {
        [v17 backgroundPlaybackWillBegin];
      }

      swift_unknownObjectRelease();
    }
  }

  *(v2 + OBJC_IVAR____TtC8VideosUI26PostPlayTemplateController_beginTrailerPlayback) = 1;
  OUTLINED_FUNCTION_3_74();
  return (*(v18 + 1312))(a1 & 1);
}

void sub_1E39524B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4298AD0;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v1;
  *(inited + 48) = sub_1E4205F14();
  *(inited + 56) = v2;
  *(inited + 64) = sub_1E4205F14();
  *(inited + 72) = v3;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v4;
  *(inited + 96) = sub_1E4205F14();
  *(inited + 104) = v5;
  *(inited + 112) = sub_1E4205F14();
  *(inited + 120) = v6;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v7;
  *(inited + 144) = sub_1E4205F14();
  *(inited + 152) = v8;
  v9 = sub_1E4205CB4();
  v10 = [objc_opt_self() sharedInstance];
  sub_1E37E4D10(v9);

  v11 = sub_1E4205C44();

  [v10 recordClick_];

  v12 = [objc_opt_self() sharedInstance];
  [v12 dismissPlaybackAnimated:1 leaveGroupActivitySession:1 completion:0];
}

uint64_t sub_1E3952688()
{
  OUTLINED_FUNCTION_21();
  v3 = *(v0 + 432);
  v1 = swift_unknownObjectRetain();

  return v3(v1);
}

uint64_t sub_1E39527F0()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1ECF502B8 != -1)
  {
    OUTLINED_FUNCTION_1_97(&qword_1ECF502B8);
  }

  [v1 postNotificationName:qword_1ECF713A0 object:v0];

  return j__OUTLINED_FUNCTION_18() & 1;
}

void sub_1E39528C4()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI26PostPlayTemplateController_shouldDismissOncePlaybackEnds) = 0;
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI26PostPlayTemplateController_attentionMonitor);
  if (v1)
  {
    v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC0);
    v3 = v1;
    OUTLINED_FUNCTION_51();
    v2();
  }
}

void sub_1E3952998()
{
  v0 = [objc_opt_self() defaultCenter];
  if (qword_1ECF502B8 != -1)
  {
    OUTLINED_FUNCTION_1_97(&qword_1ECF502B8);
  }

  v1 = qword_1ECF713A0;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  [v0 postNotificationName:v1 object:Strong userInfo:0];
}

void sub_1E3952A50()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3951198();
  }
}

void sub_1E3952A9C()
{
  if (byte_1EE28AD49 == 1)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x1A8))();

      if (v2)
      {
        if ([v2 respondsToSelector_])
        {
          [v2 playbackUpNextControllerReadyToBeDisplayed];
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1E3952B6C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E394FF24();
  }
}

id OUTLINED_FUNCTION_32_30(void *a1)
{

  return [a1 (v1 + 3832)];
}

uint64_t sub_1E3952CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E3294F34(a1, v37);
  if (!v38)
  {
    sub_1E329505C(v37);
LABEL_5:
    v15 = sub_1E3294F34(a1, v37);
    if (v38)
    {
      result = OUTLINED_FUNCTION_17_42(v15, v16, v17, MEMORY[0x1E69E6158], v18, v19, v20, v21, v27, v29, v30, v32);
      if (result)
      {
        v23 = HIBYTE(v36) & 0xF;
        if ((v36 & 0x2000000000000000) == 0)
        {
          v23 = v35 & 0xFFFFFFFFFFFFLL;
        }

        if (v23)
        {
          sub_1E3953064(v35, v36);
          goto LABEL_11;
        }
      }
    }

    else
    {
      result = sub_1E329505C(v37);
    }

    v25 = 0uLL;
    v24 = 1;
    v26 = 0uLL;
    goto LABEL_15;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((OUTLINED_FUNCTION_17_42(v4, v5, v6, v4, v7, v8, v9, v10, v27, v29, v30, v32) & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_1E3952DD0();
LABEL_11:
  v33 = v13;
  v34 = v11;
  v28 = v12;
  v31 = v14;

  *&v26 = v33;
  *&v25 = v34;
  v24 = 0;
  *(&v25 + 1) = v28;
  *(&v26 + 1) = v31;
LABEL_15:
  *a2 = v25;
  *(a2 + 16) = v26;
  *(a2 + 32) = v24;
  return result;
}

double sub_1E3952DD0()
{
  v1 = *(MEMORY[0x1E69DDCE0] + 16);
  v39 = *MEMORY[0x1E69DDCE0];
  v40 = v1;
  v36 = &unk_1F5D99560;
  v37 = &off_1F5D99450;
  LOBYTE(v34) = 0;
  v2 = OUTLINED_FUNCTION_4_72();
  if (v38)
  {
    OUTLINED_FUNCTION_3_75(v2, v3, v4, MEMORY[0x1E69E7DE0]);
    OUTLINED_FUNCTION_8_51();
    v6 = v5 ^ 1;
    v7 = __swift_destroy_boxed_opaque_existential_1(&v34);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_15_52();
    v0 = 0;
    v6 = 1;
  }

  v34 = v0;
  v35 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16_44(&v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
  OUTLINED_FUNCTION_21_38(sub_1E39540D0);
  v36 = &unk_1F5D99560;
  v37 = &off_1F5D99450;
  LOBYTE(v34) = 3;
  v8 = OUTLINED_FUNCTION_4_72();
  if (v38)
  {
    OUTLINED_FUNCTION_3_75(v8, v9, v10, MEMORY[0x1E69E7DE0]);
    OUTLINED_FUNCTION_8_51();
    __swift_destroy_boxed_opaque_existential_1(&v34);
  }

  else
  {
    OUTLINED_FUNCTION_15_52();
  }

  OUTLINED_FUNCTION_13_61();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_27();
  OUTLINED_FUNCTION_16_44(v12);
  OUTLINED_FUNCTION_11_59(v13, v14);
  v36 = &unk_1F5D99560;
  v37 = &off_1F5D99450;
  LOBYTE(v34) = 2;
  v15 = OUTLINED_FUNCTION_4_72();
  if (v38)
  {
    OUTLINED_FUNCTION_3_75(v15, v16, v17, MEMORY[0x1E69E7DE0]);
    OUTLINED_FUNCTION_8_51();
    __swift_destroy_boxed_opaque_existential_1(&v34);
  }

  else
  {
    OUTLINED_FUNCTION_15_52();
  }

  OUTLINED_FUNCTION_13_61();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_27();
  OUTLINED_FUNCTION_16_44(v19);
  OUTLINED_FUNCTION_11_59(v20, v21);
  v36 = &unk_1F5D99560;
  v37 = &off_1F5D99450;
  LOBYTE(v34) = 1;
  v22 = OUTLINED_FUNCTION_4_72();
  if (v38)
  {
    v25 = OUTLINED_FUNCTION_3_75(v22, v23, v24, MEMORY[0x1E69E7DE0]);
    if (v25)
    {
      v26 = v33;
    }

    else
    {
      v26 = 0;
    }

    v27 = v25 ^ 1;
    v28 = __swift_destroy_boxed_opaque_existential_1(&v34);
  }

  else
  {
    v28 = OUTLINED_FUNCTION_15_52();
    v26 = 0;
    v27 = 1;
  }

  v34 = v26;
  v35 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1_27();
  OUTLINED_FUNCTION_16_44(v29);
  OUTLINED_FUNCTION_11_59(v30, v31);
  return *&v39;
}

void sub_1E3953064(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E41FDEC4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(MEMORY[0x1E69DDCE0] + 16);
  v61[0] = *MEMORY[0x1E69DDCE0];
  v61[1] = v8;
  v60[0] = a1;
  v60[1] = a2;
  v9 = sub_1E41FDE64();
  sub_1E32822E0(v9, v10, v11);
  v12 = sub_1E4207184();
  v14 = *(v5 + 8);
  v13 = v5 + 8;
  v14(v7, v4);
  switch(*(v12 + 16))
  {
    case 0:
      goto LABEL_18;
    case 1:
      OUTLINED_FUNCTION_20_44();

      v15 = OUTLINED_FUNCTION_18_37();
      v17 = OUTLINED_FUNCTION_0_87(v15, v16);
      MEMORY[0x1EEE9AC00](v17);
      v60[-2] = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EC10, &qword_1E42ACF08);
      v18 = OUTLINED_FUNCTION_5_74();
      sub_1E4148DE0(v18);
      return;
    case 2:
      OUTLINED_FUNCTION_20_44();
      v34 = OUTLINED_FUNCTION_18_37();
      v36 = OUTLINED_FUNCTION_0_87(v34, v35);
      MEMORY[0x1EEE9AC00](v36);
      OUTLINED_FUNCTION_2_74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EC10, &qword_1E42ACF08);
      v37 = OUTLINED_FUNCTION_5_74();
      OUTLINED_FUNCTION_21_38(v37);
      OUTLINED_FUNCTION_9_56();
      if (!v23)
      {
        goto LABEL_17;
      }

      v38 = OUTLINED_FUNCTION_10_50();
      v40 = OUTLINED_FUNCTION_0_87(v38, v39);
      MEMORY[0x1EEE9AC00](v40);
      OUTLINED_FUNCTION_1_27();
      *(v41 - 16) = v13;
      v33 = sub_1E3953F24;
      goto LABEL_15;
    case 3:
      OUTLINED_FUNCTION_20_44();
      v19 = OUTLINED_FUNCTION_18_37();
      v21 = OUTLINED_FUNCTION_0_87(v19, v20);
      MEMORY[0x1EEE9AC00](v21);
      OUTLINED_FUNCTION_2_74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EC10, &qword_1E42ACF08);
      v22 = OUTLINED_FUNCTION_5_74();
      OUTLINED_FUNCTION_21_38(v22);
      OUTLINED_FUNCTION_9_56();
      if (!v23)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v24 = OUTLINED_FUNCTION_10_50();
      v26 = OUTLINED_FUNCTION_0_87(v24, v25);
      MEMORY[0x1EEE9AC00](v26);
      OUTLINED_FUNCTION_1_27();
      *(v27 - 16) = v13;
      v28 = OUTLINED_FUNCTION_5_74();
      sub_1E4148DE0(v28);
      if (*(v12 + 16) < 3uLL)
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      v29 = OUTLINED_FUNCTION_10_50();
      v31 = OUTLINED_FUNCTION_0_87(v29, v30);
      MEMORY[0x1EEE9AC00](v31);
      OUTLINED_FUNCTION_1_27();
      *(v32 - 16) = v61;
      v33 = sub_1E3953F00;
LABEL_15:
      sub_1E4148DE0(v33);
      return;
    default:
      OUTLINED_FUNCTION_20_44();
      v42 = OUTLINED_FUNCTION_18_37();
      v44 = OUTLINED_FUNCTION_0_87(v42, v43);
      MEMORY[0x1EEE9AC00](v44);
      OUTLINED_FUNCTION_2_74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EC10, &qword_1E42ACF08);
      v45 = OUTLINED_FUNCTION_5_74();
      OUTLINED_FUNCTION_21_38(v45);
      OUTLINED_FUNCTION_9_56();
      if (!v23)
      {
        goto LABEL_20;
      }

      v46 = OUTLINED_FUNCTION_10_50();
      v48 = OUTLINED_FUNCTION_0_87(v46, v47);
      MEMORY[0x1EEE9AC00](v48);
      OUTLINED_FUNCTION_1_27();
      *(v49 - 16) = v13;
      v50 = OUTLINED_FUNCTION_5_74();
      sub_1E4148DE0(v50);
      if (*(v12 + 16) < 3uLL)
      {
        goto LABEL_21;
      }

      v51 = OUTLINED_FUNCTION_10_50();
      v53 = OUTLINED_FUNCTION_0_87(v51, v52);
      MEMORY[0x1EEE9AC00](v53);
      OUTLINED_FUNCTION_1_27();
      *(v54 - 16) = v13;
      v55 = OUTLINED_FUNCTION_5_74();
      sub_1E4148DE0(v55);
      if (*(v12 + 16) < 4uLL)
      {
        goto LABEL_22;
      }

      v56 = OUTLINED_FUNCTION_10_50();
      v58 = OUTLINED_FUNCTION_0_87(v56, v57);
      MEMORY[0x1EEE9AC00](v58);
      OUTLINED_FUNCTION_1_27();
      *(v59 - 16) = v13;
      v33 = sub_1E3953EE0;
      goto LABEL_15;
  }
}

uint64_t sub_1E3953554(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_1E3953FB8(a1, a2, &v4);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void sub_1E39535DC(uint64_t a1)
{
  sub_1E4202764();
  OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v1)
  {
    sub_1E4202774();
  }

  OUTLINED_FUNCTION_12_52();
  if (!v1)
  {
    sub_1E4202784();
    OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v1)
    {
      sub_1E4202774();
    }

    OUTLINED_FUNCTION_12_52();
    if (!v1)
    {
      sub_1E4202744();
      OUTLINED_FUNCTION_41_4();
      sub_1E4202774();
      sub_1E4202774();
      OUTLINED_FUNCTION_29();
      if (!v1)
      {
        sub_1E4202774();
      }

      OUTLINED_FUNCTION_12_52();
      if (!v1)
      {
        sub_1E4202754();
        OUTLINED_FUNCTION_41_4();
        sub_1E4202774();
        sub_1E4202774();
        OUTLINED_FUNCTION_29();
        if (!v1)
        {
          sub_1E4202774();
        }

        OUTLINED_FUNCTION_12_52();
        if (!v1)
        {
          sub_1E42074B4();
          MEMORY[0x1E69109E0](0xD000000000000016, 0x80000001E4268A20);
          sub_1E4207614();
          sub_1E42076B4();
          __break(1u);
        }
      }
    }
  }
}

unint64_t sub_1E39537BC()
{
  v0 = sub_1E4207784();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3953808(char a1)
{
  result = 0x6C6C616D737878;
  switch(a1)
  {
    case 1:
      result = 0x6C6C616D7378;
      break;
    case 2:
      result = 0x6C6C616D73;
      break;
    case 3:
      result = 0x6D756964656DLL;
      break;
    case 4:
      result = 0x656772616CLL;
      break;
    case 5:
      result = 0x656772616C78;
      break;
    case 6:
      result = 0x656772616C7878;
      break;
    case 7:
      result = 0x656772616C787878;
      break;
    case 8:
      result = 0x656E656373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E39538F4(unsigned __int8 a1, char a2)
{
  v2 = 0x6C6C616D737878;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6C6C616D737878;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x6C6C616D7378;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x6C6C616D73;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x6D756964656DLL;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v6 = 1735549292;
      goto LABEL_10;
    case 5:
      v3 = 0xE600000000000000;
      v5 = 0x656772616C78;
      break;
    case 6:
      v5 = 0x656772616C7878;
      break;
    case 7:
      v3 = 0xE800000000000000;
      v5 = 0x656772616C787878;
      break;
    case 8:
      v3 = 0xE500000000000000;
      v6 = 1852138355;
LABEL_10:
      v5 = v6 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE600000000000000;
      v2 = 0x6C6C616D7378;
      break;
    case 2:
      v7 = 0xE500000000000000;
      v2 = 0x6C6C616D73;
      break;
    case 3:
      v7 = 0xE600000000000000;
      v2 = 0x6D756964656DLL;
      break;
    case 4:
      v7 = 0xE500000000000000;
      v8 = 1735549292;
      goto LABEL_20;
    case 5:
      v7 = 0xE600000000000000;
      v2 = 0x656772616C78;
      break;
    case 6:
      v2 = 0x656772616C7878;
      break;
    case 7:
      v7 = 0xE800000000000000;
      v2 = 0x656772616C787878;
      break;
    case 8:
      v7 = 0xE500000000000000;
      v8 = 1852138355;
LABEL_20:
      v2 = v8 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E3953AF8(char a1)
{
  sub_1E4207B44();
  sub_1E3953808(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3953B64(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3953C7C(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3953808(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E3953CDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E39537BC();
  *a1 = result;
  return result;
}

uint64_t sub_1E3953D0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3953808(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1E3953D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2EC08;
  if (!qword_1ECF2EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2EC08);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BorderStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3953E6C()
{
  result = qword_1EE289E08;
  if (!qword_1EE289E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF298B0, &unk_1E42AC0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289E08);
  }

  return result;
}

double sub_1E3953ED0(double *a1)
{
  result = *a1;
  *(*(v1 + 16) + 24) = *a1;
  return result;
}

double sub_1E3953EE0(double *a1)
{
  result = *a1;
  *(*(v1 + 16) + 8) = *a1;
  return result;
}

double sub_1E3953EF0(double *a1)
{
  result = *a1;
  **(v1 + 16) = *a1;
  return result;
}

double sub_1E3953F00(double *a1)
{
  result = *a1;
  *(*(v1 + 16) + 16) = *a1;
  return result;
}

double sub_1E3953F10(double *a1)
{
  v2 = *(v1 + 16);
  result = *a1;
  *v2 = *a1;
  v2[2] = result;
  return result;
}

double sub_1E3953F24(double *a1)
{
  v2 = *(v1 + 16);
  result = *a1;
  *(v2 + 24) = *a1;
  *(v2 + 8) = result;
  return result;
}

double sub_1E3953F38(double *a1)
{
  v2 = *(v1 + 16);
  result = *a1;
  v2[2] = *a1;
  v2[3] = result;
  *v2 = result;
  v2[1] = result;
  return result;
}

_BYTE *sub_1E3953F4C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_1E3953FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_1E4207484();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtod_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

uint64_t type metadata accessor for SportsSeeAllPlayModel(uint64_t a1)
{
  result = qword_1ECF506C0;
  if (!qword_1ECF506C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3954164(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v9;
  *(a4 + 25) = *(a1 + 25);
  *(a4 + 48) = a2;
  v10 = *(type metadata accessor for SportsSeeAllPlayModel(0) + 24);
  v11 = sub_1E4205BF4();
  v12 = *(v11 - 8);
  (*(v12 + 16))(a4 + v10, a3, v11);
  v14 = *a1;
  v13 = *(a1 + 8);
  switch(*(a1 + 40))
  {
    case 1:

      v25 = sub_1E3FDF644();
      if (v25)
      {
        v26 = v25;
        if (v13)
        {
          type metadata accessor for SportsVoiceOverUtility(0);
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_3_76();
          v17 = OUTLINED_FUNCTION_165();
          v19 = v27;

          goto LABEL_8;
        }
      }

      sub_1E39543C4(a1);
      goto LABEL_12;
    case 2:
      v31 = *(v12 + 8);

      v31(a3, v11);
      OUTLINED_FUNCTION_0_88();
      *v32 = v14;
      v32[1] = v13;
      return;
    case 3:
      goto LABEL_12;
    case 4:
      v36 = SportsDisplayError.title.getter();
      v37 = v20;
      MEMORY[0x1E69109E0](8236, 0xE200000000000000);
      v21 = SportsDisplayError.subtitle.getter(v14);
      MEMORY[0x1E69109E0](v21);

      v22 = OUTLINED_FUNCTION_1_98();
      v23(v22);
      OUTLINED_FUNCTION_0_88();
      *v24 = v36;
      v24[1] = v37;
      return;
    default:
      if (v13)
      {
        type metadata accessor for SportsVoiceOverUtility(0);
        v15 = v8;
        v16 = v7;

        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_3_76();
        v17 = OUTLINED_FUNCTION_165();
        v19 = v18;
LABEL_8:
        sub_1E39543C4(a1);
        v28 = OUTLINED_FUNCTION_1_98();
        v29(v28);
        OUTLINED_FUNCTION_0_88();
        *v30 = v17;
        v30[1] = v19;
      }

      else
      {
LABEL_12:
        v33 = OUTLINED_FUNCTION_1_98();
        v34(v33);
        OUTLINED_FUNCTION_0_88();
        *v35 = 0;
        v35[1] = 0;
      }

      return;
  }
}

uint64_t sub_1E39543F8()
{
  OUTLINED_FUNCTION_4_73();
  sub_1E3954430(v3, v0, v1);
  return sub_1E4207BA4();
}

void sub_1E3954430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(*(v3 + 40))
  {
    case 1:
      type metadata accessor for SportsPlayIndex(0);
      sub_1E3954AC4(&qword_1ECF2EC20, type metadata accessor for SportsPlayIndex, &unk_1E42E40F8);

      sub_1E4205DB4();
      OUTLINED_FUNCTION_2_75();

      break;
    case 2:

      sub_1E4206014();
      OUTLINED_FUNCTION_2_75();

      sub_1E39547DC(v6, v7, v8, v9, v10, v11);
      break;
    case 3:
      sub_1E3954788(a1, a2, a3);

      sub_1E4205DB4();

      OUTLINED_FUNCTION_2_75();
      break;
    case 4:
      SportsDisplayError.subtitle.getter(*v3);
      sub_1E4206014();
      OUTLINED_FUNCTION_2_75();

      break;
    default:
      *v3;
      sub_1E4205204();
      if (v4)
      {
        sub_1E4207B64();
        sub_1E4206014();
      }

      else
      {
        sub_1E4207B64();
      }

      OUTLINED_FUNCTION_2_75();

      break;
  }
}

BOOL sub_1E395469C()
{
  OUTLINED_FUNCTION_4_73();
  sub_1E3954430(v6, v0, v1);
  v2 = sub_1E4207BA4();
  OUTLINED_FUNCTION_4_73();
  sub_1E3954430(v6, v3, v4);
  return v2 == sub_1E4207BA4();
}

uint64_t sub_1E3954708@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E39543F8();
  *a1 = result;
  return result;
}

uint64_t sub_1E395474C(uint64_t a1)
{
  sub_1E4207B44();
  sub_1E3954430(v4, v1, v2);
  return sub_1E4207BA4();
}

unint64_t sub_1E3954788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2EC18;
  if (!qword_1ECF2EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2EC18);
  }

  return result;
}

double sub_1E39547DC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:

      break;
    case 1:

      goto LABEL_6;
    case 2:
LABEL_6:

      break;
    case 3:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E39548E4(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_4_73();
  MEMORY[0x1E69124B0](a1);
  return sub_1E4207BA4();
}

uint64_t sub_1E395492C()
{
  if (*(v0 + 40) == 1)
  {
  }

  else
  {
    return 0;
  }
}

id sub_1E395495C(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 40) == 1)
  {
    return sub_1E3FDF644();
  }

  if (*(v1 + 40))
  {
    return 0;
  }

  v3 = v2;
  return v2;
}

BOOL sub_1E39549F8(uint64_t a1)
{
  v2 = *(a1 + 40);
  switch(*(v1 + 16))
  {
    case 1:
      return v2 == 1;
    case 2:
      return v2 == 2;
    case 3:
      return v2 == 4;
    case 4:
      return v2 == 3;
    case 5:
      return (v2 & 0xFE) == 2;
    default:
      return !*(a1 + 40);
  }
}

uint64_t sub_1E3954AC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E3954B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2EC30;
  if (!qword_1ECF2EC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2EC30);
  }

  return result;
}

void sub_1E3954B8C(uint64_t a1)
{
  sub_1E4205BF4();
  if (v1 <= 0x3F)
  {
    sub_1E389B768();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E3954C34(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 41))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 4)
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

uint64_t sub_1E3954C74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsSeeAllPlay.FilterType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3954DB8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1E3954E04(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8VideosUI21RootSideBarController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  OUTLINED_FUNCTION_57();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3954E6C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI21RootSideBarController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_57();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1E3900F50;
}

char *sub_1E3954EF4()
{
  v1 = OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___collectionView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___collectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___collectionView);
  }

  else
  {
    v4 = v0;
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_4_0();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = ObjectType;
    v8 = objc_allocWithZone(MEMORY[0x1E69DC808]);
    sub_1E3959D70(sub_1E395A57C, v7);
    OUTLINED_FUNCTION_106();
    _s25RootSideBarCollectionViewCMa();
    v9 = v8;
    v10 = sub_1E373BA04(v9);
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 clearColor];
    [v12 setBackgroundColor_];

    v14 = v12;
    [v14 setShowsVerticalScrollIndicator_];
    [v14 setShowsHorizontalScrollIndicator_];

    type metadata accessor for SideBarCollectionViewListCell();
    swift_getObjCClassFromMetadata();
    v15 = v14;
    v16 = OUTLINED_FUNCTION_20_45();
    OUTLINED_FUNCTION_51_16();

    type metadata accessor for ViewControllerHostingCollectionViewCell();
    swift_getObjCClassFromMetadata();
    v17 = sub_1E4205ED4();
    OUTLINED_FUNCTION_51_16();

    [v15 setDelegate_];
    OUTLINED_FUNCTION_4_0();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = &v15[OBJC_IVAR____TtCC8VideosUI21RootSideBarController25RootSideBarCollectionView_contentSizeDidChangeHandler];
    swift_beginAccess();
    v20 = *v19;
    v21 = v19[1];
    *v19 = sub_1E395A530;
    v19[1] = v18;

    sub_1E34AF594(v20, v21);

    v22 = *(v4 + v1);
    *(v4 + v1) = v15;
    v3 = v15;

    v2 = 0;
  }

  v23 = v2;
  return v3;
}

void sub_1E3955188(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___collectionView);
  *(v1 + OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___collectionView) = a1;
}

void (*sub_1E395519C(char **a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1E3954EF4();
  return sub_1E39551E4;
}

void sub_1E39551E4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___collectionView);
  *(v1 + OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___collectionView) = v2;
}

id sub_1E39551FC()
{
  v1 = OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___dataSource;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___dataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___dataSource);
  }

  else
  {
    v4 = v0;
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_21();
    (*(v6 + 168))();
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = ObjectType;
    v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ECA8, &unk_1E42AD240));
    v8 = sub_1E4200084();
    v9 = *(v0 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_1E39552FC()
{
  v1 = objc_opt_self();
  if ([v1 allowsAccountModification] && (v2 = objc_msgSend(objc_opt_self(), sel_sharedInstance), v3 = objc_msgSend(v2, sel_accountConfig), v2, LODWORD(v2) = objc_msgSend(v3, sel_showAccountSettingOnSidebar), v3, v2))
  {
    if ([v1 isLibraryOnlyCountry])
    {
      v4 = [v1 isLibraryOnlyCountryResolved];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_1E39554D4();
  v6 = [v5 isHidden];

  v7 = OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___profileView;
  if (v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(v0 + OBJC_IVAR____TtC8VideosUI21RootSideBarController_hasContentDisplayed) ^ 1;
  }

  [*(v0 + OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___profileView) setHidden_];
  v9 = sub_1E395554C();
  v10 = v9;
  if (v4)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(v0 + OBJC_IVAR____TtC8VideosUI21RootSideBarController_hasContentDisplayed) ^ 1;
  }

  [v9 setHidden_];

  sub_1E3955D10();
  if (v6 != [*(v0 + v7) isHidden])
  {

    sub_1E3955D10();
  }
}

void sub_1E39554AC(id result)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI21RootSideBarController_hasContentDisplayed);
  *(v1 + OBJC_IVAR____TtC8VideosUI21RootSideBarController_hasContentDisplayed) = result;
  if (v2 != *(v1 + OBJC_IVAR____TtC8VideosUI21RootSideBarController_hasContentDisplayed))
  {
    sub_1E39552FC();
  }
}

id sub_1E39554D4()
{
  v1 = OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___profileView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___profileView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___profileView);
  }

  else
  {
    type metadata accessor for RootSideBarProfileView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1E395554C()
{
  v1 = OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___toolbar;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___toolbar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___toolbar);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD180]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1E39555C0()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI21RootSideBarController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_4_74(&OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___collectionView);
  v2 = (v0 + v1);
  v3 = type metadata accessor for RootSideBarController();
  *v2 = 0;
  v2[1] = 0;
  v7 = v3;
  OUTLINED_FUNCTION_25();
  return objc_msgSendSuper2(v4, v5, v0, v7);
}

void sub_1E3955674()
{
  v62.receiver = v0;
  v62.super_class = type metadata accessor for RootSideBarController();
  objc_msgSendSuper2(&v62, sel_viewDidLoad);
  v1 = OUTLINED_FUNCTION_22_28();
  if (!v1)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v2 = v1;
  v3 = [objc_opt_self() secondarySystemBackgroundColor];
  v4 = OUTLINED_FUNCTION_17_1();
  [v4 v5];

  v6 = [v0 navigationController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 navigationBar];

    [v8 setPrefersLargeTitles_];
  }

  v9 = OUTLINED_FUNCTION_22_28();
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = v9;
  OUTLINED_FUNCTION_21();
  v12 = *(v11 + 168);
  v13 = v12();
  v14 = OUTLINED_FUNCTION_17_1();
  [v14 v15];

  v16 = v12();
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E42A1E20;
  v18 = v12();
  v19 = [v18 topAnchor];

  v20 = OUTLINED_FUNCTION_22_28();
  if (!v20)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v20;
  v22 = [v20 topAnchor];

  v23 = OUTLINED_FUNCTION_30_26();
  *(v17 + 32) = v23;
  v24 = v12();
  v25 = [v24 leadingAnchor];

  v26 = OUTLINED_FUNCTION_22_28();
  if (!v26)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = v26;
  v28 = [v26 leadingAnchor];

  v29 = OUTLINED_FUNCTION_30_26();
  *(v17 + 40) = v29;
  v30 = v12();
  v31 = [v30 trailingAnchor];

  v32 = OUTLINED_FUNCTION_22_28();
  if (!v32)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v33 = v32;
  v34 = [v32 trailingAnchor];

  v35 = OUTLINED_FUNCTION_30_26();
  *(v17 + 48) = v35;
  v36 = v12();
  v37 = [v36 bottomAnchor];

  v38 = OUTLINED_FUNCTION_22_28();
  if (!v38)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v39 = v38;
  v40 = objc_opt_self();
  v41 = [v39 bottomAnchor];

  v42 = [v37 constraintEqualToAnchor_];
  *(v17 + 56) = v42;
  sub_1E3280A90(0, &qword_1EE23B1A0, 0x1E696ACD8);
  v43 = sub_1E42062A4();

  [v40 activateConstraints_];

  v44 = OUTLINED_FUNCTION_22_28();
  if (!v44)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v45 = v44;
  v46 = sub_1E395554C();
  v47 = OUTLINED_FUNCTION_17_1();
  [v47 v48];

  v49 = OUTLINED_FUNCTION_22_28();
  if (!v49)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v50 = v49;
  v51 = sub_1E39554D4();
  v52 = OUTLINED_FUNCTION_17_1();
  [v52 v53];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2C0, &unk_1E429D880);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1E4297BE0;
  v55 = sub_1E42001D4();
  v56 = MEMORY[0x1E69DC2B0];
  *(v54 + 32) = v55;
  *(v54 + 40) = v56;
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A4F0, &unk_1E429D890);
  OUTLINED_FUNCTION_17_1();
  sub_1E4206944();
  swift_unknownObjectRelease();

  v57 = OUTLINED_FUNCTION_22_28();
  if (v57)
  {
    v58 = v57;
    sub_1E37FB7F0(0x532E56542E414955, 0xEE00726162656469, v57, &selRef_setVuiAccessibilityIdentifier_);

    v59 = objc_opt_self();
    v60 = [v59 defaultCenter];
    [v60 addObserver:v0 selector:sel_accountStoreDidChange_ name:*NSNotificationName.VUIAuthenticationManagerAccountStoreDidChange.unsafeMutableAddressor() object:0];

    v61 = [v59 defaultCenter];
    [v61 addObserver:v0 selector:sel_isLibraryOnlyCountryChanged_ name:@"VUIAuthenticationManagerIsLibraryOnlyCountryDidChangeNotification" object:0];

    sub_1E3955D10();
    sub_1E39552FC();
    return;
  }

LABEL_21:
  __break(1u);
}

void sub_1E3955C94()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong vuiView];

    if (v2)
    {
      [v2 vui_setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E3955D10()
{
  OUTLINED_FUNCTION_21();
  v4 = (*(v1 + 168))();
  v2 = sub_1E39554D4();
  v3 = [v2 isHidden];

  if ((v3 & 1) == 0)
  {
    [*(v0 + OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___profileView) frame];
    CGRectGetHeight(v6);
  }

  [v4 contentInset];
  [v4 setContentInset_];
}

void sub_1E3955E94(char a1, SEL *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for RootSideBarController();
  objc_msgSendSuper2(&v7, *a2, a1 & 1);
  OUTLINED_FUNCTION_21();
  v6 = (*(v5 + 168))();
  [v2 setContentScrollView:v6 forEdge:15];
}

void sub_1E3955F8C()
{
  v59.receiver = v0;
  v59.super_class = type metadata accessor for RootSideBarController();
  objc_msgSendSuper2(&v59, sel_viewDidLayoutSubviews);
  v1 = OUTLINED_FUNCTION_27_25();
  if (!v1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = v1;
  v3 = sub_1E395554C();
  v4 = OUTLINED_FUNCTION_17_1();
  [v4 v5];

  v6 = OUTLINED_FUNCTION_27_25();
  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = v6;
  v8 = sub_1E39554D4();
  v9 = OUTLINED_FUNCTION_17_1();
  [v9 v10];

  LODWORD(v7) = [v0 vuiIsRTL];
  v11 = OUTLINED_FUNCTION_27_25();
  if (v7)
  {
    if (!v11)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    [v11 safeAreaInsets];
    OUTLINED_FUNCTION_53_7();
    OUTLINED_FUNCTION_50_12(v12, v13, v14, v15);
    v17 = v16;
LABEL_8:
    v23 = OUTLINED_FUNCTION_27_25();
    if (v23)
    {
      v24 = v23;
      [v23 bounds];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;

      v60.origin.x = v26;
      v60.origin.y = v28;
      v60.size.width = v30;
      v60.size.height = v32;
      v33 = CGRectGetWidth(v60) - v17;
      v34 = OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___profileView;
      [*&v0[OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___profileView] vui:v33 sizeThatFits:0.0];
      v35 = OUTLINED_FUNCTION_27_25();
      if (v35)
      {
        v36 = v35;
        [v35 bounds];
        v38 = v37;
        v40 = v39;
        v42 = v41;
        v44 = v43;

        v61.origin.x = v38;
        v61.origin.y = v40;
        v61.size.width = v42;
        v61.size.height = v44;
        CGRectGetHeight(v61);
        v45 = *&v0[v34];
        v46 = OUTLINED_FUNCTION_27_25();
        if (v46)
        {
          v47 = v46;
          [v46 bounds];
          OUTLINED_FUNCTION_7_23();

          OUTLINED_FUNCTION_13_62(v48, v49, v50, v51);
          [v45 setFrame_];

          sub_1E3955D10();
          v52 = *&v0[OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___toolbar];
          v53 = OUTLINED_FUNCTION_27_25();
          if (v53)
          {
            v54 = v53;
            [v53 bounds];
            OUTLINED_FUNCTION_7_23();

            OUTLINED_FUNCTION_13_62(v55, v56, v57, v58);
            [v52 setFrame_];

            sub_1E395624C();
            return;
          }

          goto LABEL_18;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11)
  {
    [v11 safeAreaInsets];
    OUTLINED_FUNCTION_53_7();
    OUTLINED_FUNCTION_50_12(v18, v19, v20, v21);
    v17 = v22;
    goto LABEL_8;
  }

LABEL_20:
  __break(1u);
}

void sub_1E395624C()
{
  v1 = v0;
  OUTLINED_FUNCTION_21();
  v3 = *(v2 + 168);
  v4 = v3();
  [v4 frame];
  v6 = v5;

  v7 = v3();
  sub_1E3ACCD58();
  v9 = v8;

  v10 = v3();
  [v10 contentOffset];
  v12 = v11;

  v13 = v6 - (v9 - v12);
  v14 = sub_1E39554D4();
  [v14 frame];
  v16 = v15;

  if (v13 <= v16)
  {
    [*(v1 + OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___profileView) frame];
    v20 = v19 - v13;
    v17 = sub_1E395554C();
    v18 = v20 * 0.25;
    if (v20 * 0.25 > 1.0)
    {
      v18 = 1.0;
    }
  }

  else
  {
    v17 = sub_1E395554C();
    v18 = 0.0;
  }

  v21 = v17;
  [v17 setAlpha_];
}

void sub_1E3956404()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EC48, &qword_1E42AD190);
  OUTLINED_FUNCTION_0_10();
  v157 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v162 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EC50, &qword_1E42AD198);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v155 - v16;
  v164 = *(v2 + 16);
  if (!v164)
  {
    v103 = sub_1E324FBDC();
    (*(v5 + 16))(v9, v103, v3);
    v104 = sub_1E41FFC94();
    v105 = sub_1E42067F4();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_1E323F000, v104, v105, "RootSideBarController:: recieved empty side bar sections in update", v106, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v5 + 8))(v9, v3);
    goto LABEL_91;
  }

  v156 = v15;
  v169 = v14;
  v160 = v0;
  v18 = sub_1E39551FC();
  v170 = v17;
  sub_1E4200104();

  v19 = 0;
  v155 = v2;
  v20 = v2 + 32;
  v173 = MEMORY[0x1E69E7CC0];
  v165 = xmmword_1E4297BE0;
  v161 = v2 + 32;
  do
  {
    v172 = v20;
    sub_1E327F454(v20, v179);
    OUTLINED_FUNCTION_56_14();
    v21 = OUTLINED_FUNCTION_2_76();
    v22(v21);
    v23 = v179[3];
    OUTLINED_FUNCTION_56_14();
    OUTLINED_FUNCTION_9_57();
    v24(v23);

    v25 = v179[3];
    v26 = v179[4];
    OUTLINED_FUNCTION_56_14();
    (*(v26 + 32))(v25, v26);
    OUTLINED_FUNCTION_106();
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
    OUTLINED_FUNCTION_57();
    v166 = v27;
    v171 = sub_1E4207604();

    v28 = v179[3];
    v29 = v179[4];
    OUTLINED_FUNCTION_56_14();
    (*(v29 + 64))(v28, v29);
    v30 = v179[3];
    v31 = v179[4];
    __swift_project_boxed_opaque_existential_1(v179, v179[3]);
    (*(v31 + 80))(v30, v31);
    sub_1E3ABFC6C();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = v36 & 0x100;
    v39 = v36 & 0x10000;
    *v180 = v32;
    *&v180[8] = v34;
    LODWORD(v175) = v36 & 1;
    *&v180[16] = v36 & 0x101;
    v180[18] = BYTE2(v36) & 1;
    v40 = v170;
    v41 = sub_1E41FFFD4();
    LODWORD(v176) = HIWORD(v39);
    LODWORD(v174) = v38 >> 8;
    if (v42)
    {
      LODWORD(v167) = v38;
      LODWORD(v168) = v39;
      v189[0] = sub_1E4200044();
      v190[0] = v19;
      LOBYTE(v190[1]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EC60, &qword_1E42AD1A8);
      sub_1E395A078();
      v43 = OUTLINED_FUNCTION_49_18();
      sub_1E38D2054(v43, v44);
      v45 = *&v180[8];
      if (*&v180[8])
      {
        OUTLINED_FUNCTION_26_33();

        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EC70, &qword_1E42AD1B0);
        v47 = OUTLINED_FUNCTION_22_9(v46);
        OUTLINED_FUNCTION_5_75(v47);
        *v180 = v158;
        *&v180[8] = v45;
        *&v180[16] = v40 & 0x101;
        v180[18] = v159 & 1;

        sub_1E41FFFE4();
      }

      else
      {

        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EC70, &qword_1E42AD1B0);
        v53 = OUTLINED_FUNCTION_22_9(v52);
        OUTLINED_FUNCTION_5_75(v53);

        sub_1E41FFFB4();
      }
    }

    else
    {
      if (v19 == v41)
      {
        goto LABEL_11;
      }

      LODWORD(v167) = v38;
      LODWORD(v168) = v39;
      v48 = v170;
      v189[0] = sub_1E4200044();
      v190[0] = v19;
      LOBYTE(v190[1]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EC60, &qword_1E42AD1A8);
      sub_1E395A078();
      v49 = OUTLINED_FUNCTION_49_18();
      sub_1E38D2054(v49, v50);
      v51 = *&v180[8];
      if (*&v180[8])
      {
        OUTLINED_FUNCTION_26_33();

        OUTLINED_FUNCTION_3_77();
        v180[18] = v176;
        v190[0] = v158;
        v190[1] = v51;
        LOWORD(v190[2]) = v48 & 0x101;
        BYTE2(v190[2]) = v159 & 1;
        sub_1E41FFF94();
      }
    }

    LOWORD(v39) = v168;
    v38 = v167;
LABEL_11:
    if (v38)
    {

      OUTLINED_FUNCTION_3_77();
      v180[18] = v176;
      sub_1E327F454(v179, &v180[24]);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v57 = v173;
      }

      else
      {
        v57 = sub_1E3959E14(0, v173[2] + 1, 1, v173);
      }

      v56 = v172;
      v59 = v57[2];
      v58 = v57[3];
      if (v59 >= v58 >> 1)
      {
        v57 = sub_1E3959E14((v58 > 1), v59 + 1, 1, v57);
      }

      v57[2] = v59 + 1;
      v173 = v57;
      v60 = &v57[8 * v59];
      v61 = *v180;
      v62 = *&v180[16];
      v63 = *&v180[48];
      v60[4] = *&v180[32];
      v60[5] = v63;
      v60[2] = v61;
      v60[3] = v62;
    }

    else
    {
      OUTLINED_FUNCTION_3_77();
      v175 = v19;
      v54 = v33;
      v55 = v176;
      v180[18] = v176;
      sub_1E41FFFF4();
      sub_1E41FFF84();

      sub_1E373B10C(v171);

      *v180 = v54;
      *&v180[8] = v35;
      v19 = v175;
      v180[18] = v55;
      *&v180[16] = v37 & 1 | v39;
      sub_1E41FFF74();

      v56 = v172;
    }

    v19 = (v19 + 1);
    __swift_destroy_boxed_opaque_existential_1(v179);
    v20 = v56 + 40;
  }

  while (v164 != v19);
  v64 = sub_1E4200044();
  v65 = 0;
  v175 = *(v64 + 16);
  v176 = v64;
  v174 = v64 + 32;
  v172 = v164 + 1;
  v168 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v65 == v175)
    {

      sub_1E41FFFC4();

      v86 = sub_1E4200044();
      v87 = 0;
      v176 = *(v86 + 16);
      v88 = (v86 + 50);
      OUTLINED_FUNCTION_45_19();
      OUTLINED_FUNCTION_44_23();
      while (v176 != v87)
      {
        v91 = v87;
        if (v87 >= *(v86 + 16))
        {
          goto LABEL_94;
        }

        v92 = *(v88 - 18);
        v93 = *(v88 - 10);
        v94 = *(v88 - 2);
        v95 = *(v88 - 1);
        v96 = *v88;
        if (v92 != v90 || v93 != v89)
        {
          ++v87;
          OUTLINED_FUNCTION_10_51();
          OUTLINED_FUNCTION_43_18();
          sub_1E42079A4();
          OUTLINED_FUNCTION_44_23();
          OUTLINED_FUNCTION_45_19();
          v88 += 24;
          if ((v98 & 1) == 0)
          {
            continue;
          }
        }

        if (v91)
        {
          v190[0] = sub_1E4200044();
          v179[0] = 0;
          LOBYTE(v179[1]) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EC60, &qword_1E42AD1A8);
          sub_1E395A078();
          sub_1E38D2054(v179, v180);
          v99 = *&v180[8];
          if (*&v180[8])
          {
            LODWORD(v176) = v180[18];
            v100 = *&v180[16];
            v101 = *v180;

            *v180 = v92;
            *&v180[8] = v93;
            v180[16] = v94;
            v180[17] = v95;
            v180[18] = v96;
            v179[0] = v101;
            v179[1] = v99;
            LOWORD(v179[2]) = v100 & 0x101;
            BYTE2(v179[2]) = v176 & 1;
            v102 = v170;
            sub_1E41FFF94();

            goto LABEL_62;
          }
        }

        break;
      }

      v102 = v170;
LABEL_62:
      v107 = v162;
      v108 = OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___dataSource;
      v109 = v160;
      v110 = *&v160[OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___dataSource];
      OUTLINED_FUNCTION_25();
      sub_1E42000D4();

      v111 = v173;
      v112 = v173[2];
      if (v112)
      {
        v113 = 0;
        v175 = v173 + 4;
        v176 = v108;
        v159 = (v157 + 8);
        v161 = v112;
        while (1)
        {
          if (v113 >= v111[2])
          {
            goto LABEL_93;
          }

          v114 = v107;
          sub_1E395A0DC(&v175[8 * v113], v184);
          v115 = v184[0];
          v116 = v184[1];
          v117 = v185;
          v118 = v186;
          v119 = v187;
          sub_1E3251BE8(&v188, v181);
          if (v118 == 1)
          {
            break;
          }

          v107 = v114;
LABEL_84:
          ++v113;
          __swift_destroy_boxed_opaque_existential_1(v181);
          v111 = v173;
          if (v113 == v112)
          {

            v102 = v170;
            v109 = v160;
            goto LABEL_87;
          }
        }

        v120 = *&v160[v176];
        *v180 = v115;
        *&v180[8] = v116;
        v180[16] = v117;
        v180[17] = 1;
        LODWORD(v168) = v119;
        v180[18] = v119;
        v121 = v120;
        sub_1E42000F4();

        v122 = sub_1E4200134();
        sub_1E395748C(v122, v179);
        v174 = v116;
        v172 = v115;
        LODWORD(v171) = v117;
        if (v179[1])
        {
          memcpy(v180, v179, sizeof(v180));
          if (v180[32] == 1)
          {
            LODWORD(v164) = sub_1E4200124();
            sub_1E395A1A8(v180);
LABEL_73:
            sub_1E4200154();
            __swift_project_boxed_opaque_existential_1(v181, v182);
            v123 = OUTLINED_FUNCTION_2_76();
            v125 = v124(v123);
            v127 = v126;
            v128 = v182;
            __swift_project_boxed_opaque_existential_1(v181, v182);
            OUTLINED_FUNCTION_9_57();
            v130 = v129(v128);
            sub_1E373B090(v125, v127, v130, v131, v180);
            v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EC90, qword_1E42AD1D0);
            v132 = OUTLINED_FUNCTION_57_10(v167);
            OUTLINED_FUNCTION_32_31(v132);
            memset(v179, 0, sizeof(v179));
            sub_1E4200144();

            sub_1E325F748(v179, &qword_1ECF2EC88, &qword_1E42AD1C8);
            v133 = v182;
            v134 = v183;
            __swift_project_boxed_opaque_existential_1(v181, v182);
            (*(v134 + 32))(v133, v134);
            OUTLINED_FUNCTION_106();
            swift_getAssociatedTypeWitness();
            v135 = sub_1E4207604();

            v136 = sub_1E373B10C(v135);

            sub_1E395A14C(v180, v179);
            sub_1E4200144();
            sub_1E325F748(v179, &qword_1ECF2EC88, &qword_1E42AD1C8);
            sub_1E4207BB4();
            v137 = *(v122 + 16);
            if (v137)
            {
              v138 = v122 + 32;
              do
              {
                sub_1E395A14C(v138, v179);
                sub_1E373B0D4(v178);
                sub_1E395A1A8(v179);
                v138 += 88;
                --v137;
              }

              while (v137);
            }

            memcpy(v190, v178, sizeof(v190));
            v139 = sub_1E4207B94();
            sub_1E4207BB4();
            v140 = sub_1E4200134();
            v107 = v140;
            v141 = *(v140 + 16);
            if (v141)
            {
              v142 = v140 + 32;
              do
              {
                sub_1E395A14C(v142, v179);
                sub_1E373B0D4(v177);
                sub_1E395A1A8(v179);
                v142 += 88;
                --v141;
              }

              while (v141);
            }

            memcpy(v189, v177, sizeof(v189));
            v143 = v139 != sub_1E4207B94();
            v144 = *(v136 + 16);

            v145 = OUTLINED_FUNCTION_57_10(v167);
            OUTLINED_FUNCTION_32_31(v145);
            v112 = v161;
            if (v144 && ((v143 | v164) & 1) != 0)
            {
              OUTLINED_FUNCTION_46_17();
              sub_1E4200164();
            }

            else
            {
              OUTLINED_FUNCTION_46_17();
              sub_1E4200174();
            }

            v146 = v168;

            v147 = *&v160[v176];
            v179[0] = v172;
            v179[1] = v174;
            LOBYTE(v179[2]) = v171;
            BYTE1(v179[2]) = 1;
            BYTE2(v179[2]) = v146;
            v148 = v147;
            sub_1E42000E4();

            sub_1E395A1A8(v180);
            (*v159)(v107, v136);

            goto LABEL_84;
          }

          sub_1E395A1A8(v180);
        }

        else
        {
          sub_1E325F748(v179, &qword_1ECF2EC88, &qword_1E42AD1C8);
        }

        LODWORD(v164) = 0;
        goto LABEL_73;
      }

LABEL_87:
      v149 = [v109 navigationItem];
      sub_1E39574B8(v155, v180);
      v150 = *&v180[24];
      if (*&v180[24])
      {
        __swift_project_boxed_opaque_existential_1(v180, *&v180[24]);
        OUTLINED_FUNCTION_9_57();
        v151(v150);
        __swift_destroy_boxed_opaque_existential_1(v180);
      }

      else
      {
        sub_1E325F748(v180, &qword_1ECF2EC80, &qword_1E42AD1C0);
      }

      v152 = OUTLINED_FUNCTION_57();
      sub_1E37FB7F0(v152, v153, v149, v154);

      (*(v156 + 8))(v102, v169);
LABEL_91:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    if (v65 >= *(v176 + 16))
    {
      break;
    }

    v66 = v174 + 24 * v65;
    v67 = *v66;
    v68 = *(v66 + 8);
    LODWORD(v171) = *(v66 + 16);
    v69 = *(v66 + 17);
    v70 = *(v66 + 18);
    ++v65;

    v71 = v172;
    v72 = v161;
    do
    {
      if (!--v71)
      {
        break;
      }

      sub_1E327F454(v72, v180);
      __swift_project_boxed_opaque_existential_1(v180, *&v180[24]);
      v73 = OUTLINED_FUNCTION_2_76();
      if (v74(v73) == v67 && v75 == v68)
      {

        __swift_destroy_boxed_opaque_existential_1(v180);
        break;
      }

      v72 += 40;
      v77 = sub_1E42079A4();

      __swift_destroy_boxed_opaque_existential_1(v180);
    }

    while ((v77 & 1) == 0);
    OUTLINED_FUNCTION_10_51();
    v79 = v67 == v78 && v68 == 0xEE00656761737365;
    if (v79 || (v80 = sub_1E42079A4(), v71) || (v80 & 1) != 0)
    {
    }

    else
    {
      v81 = v168;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v179[0] = v81;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E3959F44(0, *(v81 + 16) + 1, 1);
        v81 = v179[0];
      }

      v84 = *(v81 + 16);
      v83 = *(v81 + 24);
      if (v84 >= v83 >> 1)
      {
        sub_1E3959F44((v83 > 1), v84 + 1, 1);
        v81 = v179[0];
      }

      *(v81 + 16) = v84 + 1;
      v168 = v81;
      v85 = v81 + 24 * v84;
      *(v85 + 32) = v67;
      *(v85 + 40) = v68;
      *(v85 + 48) = v171;
      *(v85 + 49) = v69;
      *(v85 + 50) = v70;
    }
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
}

double sub_1E395748C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1E395A14C(a1 + 32, a2);
  }

  else
  {
    *(a2 + 80) = 0;
    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

double sub_1E39574B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1E327F454(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_1E39574DC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v66 = v3;
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v62 = v5;
  v63 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v61 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EC50, &qword_1E42AD198);
  OUTLINED_FUNCTION_0_10();
  v65 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v64 = v0;
  v13 = sub_1E39551FC();
  sub_1E4200104();

  sub_1E3ABFC6C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EC70, &qword_1E42AD1B0);
  v21 = OUTLINED_FUNCTION_22_9(v20);
  v60 = xmmword_1E4297BE0;
  *(v21 + 16) = xmmword_1E4297BE0;
  v58 = v15;
  *(v21 + 32) = v15;
  *(v21 + 40) = v17;
  *(v21 + 48) = v19 & 1;
  *(v21 + 49) = BYTE1(v19) & 1;
  *(v21 + 50) = BYTE2(v19) & 1;

  v22 = v8;
  v23 = v66;
  sub_1E41FFFC4();

  if (v23)
  {
    v57 = v19 & 1;
    v59 = v2;
    v24 = *((*MEMORY[0x1E69E7D40] & *v23) + 0x60);
    v25 = v23;
    v26 = v24();
    if (v26)
    {
      v56 = v25;
      v27 = (*(*v26 + 928))(v26);
      v29 = v28;

      if (v29)
      {
        v53 = v29;
        v54 = v27;
        v30 = BYTE1(v19) & 1;
        v31 = sub_1E4200044();
        v32 = *(v31 + 16);
        v51 = v19 & 0x10000;
        v52 = v19 & 0x100;
        v55 = (v19 & 0x10000u) >> 16;
        if (v32)
        {
          v34 = *(v31 + 32);
          v33 = *(v31 + 40);
          v35 = *(v31 + 48);
          v49 = *(v31 + 49);
          v50 = v35;
          HIDWORD(v48) = *(v31 + 50);

          v36 = OUTLINED_FUNCTION_22_9(v20);
          OUTLINED_FUNCTION_14_58(v36);
          *(v37 + 49) = v30;
          *(v37 + 50) = v55;
          v67 = v34;
          v68 = v33;
          v23 = v66;
          LOBYTE(v69) = v50;
          HIBYTE(v69) = v49;
          v70 = BYTE4(v48);

          OUTLINED_FUNCTION_41_22();
          sub_1E41FFFE4();
        }

        else
        {

          v38 = OUTLINED_FUNCTION_22_9(v20);
          OUTLINED_FUNCTION_14_58(v38);
          *(v39 + 49) = v30;
          *(v39 + 50) = v55;

          sub_1E41FFFB4();
        }

        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EC90, qword_1E42AD1D0);
        v41 = OUTLINED_FUNCTION_57_10(v40);
        *(v41 + 16) = v60;
        v42 = v56;
        sub_1E373B0B4(v54, v53, v42, v41 + 32);
        v67 = v19 & 0x100;
        v68 = v17;
        v70 = v55;
        v69 = v19 & 1 | v52 | v51;
        OUTLINED_FUNCTION_41_22();
        sub_1E41FFF74();
      }

      else
      {
      }
    }

    else
    {
    }

    LOBYTE(v2) = v59;
  }

  else
  {
  }

  v43 = *(v64 + OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___dataSource);
  OUTLINED_FUNCTION_25();
  sub_1E42000D4();

  if (v23)
  {
    OUTLINED_FUNCTION_3_3();
    v45 = (*(v44 + 168))();
    v46 = v61;
    MEMORY[0x1E6909190](0, 0);
    v47 = sub_1E41FE7E4();
    (*(v62 + 8))(v46, v63);
    [v45 scrollToItemAtIndexPath:v47 atScrollPosition:1 animated:v2 & 1];
  }

  (*(v65 + 8))(v12, v22);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E39579C4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v98 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v97 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EC48, &qword_1E42AD190);
  OUTLINED_FUNCTION_0_10();
  v94 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v12);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EC50, &qword_1E42AD198);
  OUTLINED_FUNCTION_0_10();
  v96 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0, &qword_1E42A7870);
  MEMORY[0x1EEE9AC00](v16 - 8);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v92 - v21;
  v23 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  v29 = (v27 - v28);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v92 - v31;
  sub_1E3958314(v4, v2, v33, v34, v35, v36, v37, v38, v92, v93, v94, v4, v96, v97, v98, v99, v100, v101, v102, v103[0]);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    sub_1E325F748(v22, &qword_1ECF309A0, &qword_1E42A7870);
    v39 = sub_1E324FBDC();
    v40 = v97;
    v41 = v98;
    (*(v97 + 16))(v9, v39, v98);

    v42 = sub_1E41FFC94();
    v43 = sub_1E42067F4();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v104[0] = v45;
      *v44 = 136315138;
      v46 = OUTLINED_FUNCTION_25_35(&v105);
      *(v44 + 4) = sub_1E3270FC8(v46, v47, v48);
      _os_log_impl(&dword_1E323F000, v42, v43, "RootSideBarController::couldn't find index path for %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v40 + 8))(v9, v41);
    goto LABEL_28;
  }

  v97 = v25;
  v49 = *(v25 + 32);
  v98 = v32;
  v49(v32, v22, v23);
  OUTLINED_FUNCTION_21();
  v95 = *(v50 + 168);
  v51 = v95();
  v52 = sub_1E395A1FC(v51);
  v53 = v0;
  v54 = v23;
  if (v52)
  {
    sub_1E39208E8(v52, v19);

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v23);
    v56 = v100;
    if (EnumTagSinglePayload != 1)
    {
      v49(v29, v19, v54);
      v57 = sub_1E41FE7F4();
      v58 = *(v97 + 8);
      v58(v29, v54);
      v59 = v99;
      if (v57)
      {
        v58(v98, v54);
        goto LABEL_28;
      }

      goto LABEL_11;
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v23);
    v56 = v100;
  }

  sub_1E325F748(v19, &qword_1ECF309A0, &qword_1E42A7870);
  v59 = v99;
LABEL_11:
  v60 = sub_1E39551FC();
  sub_1E4200104();

  v61 = v101;
  v62 = sub_1E4200044();
  v63 = v98;
  v64 = sub_1E41FE854();
  v104[12] = v62;
  v103[0] = v64;
  LOBYTE(v103[1]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EC60, &qword_1E42AD1A8);
  sub_1E395A078();
  sub_1E38D2054(v103, v104);
  v65 = v104[1];
  if (v104[1])
  {
    v66 = v104[0];
    v67 = LOWORD(v104[2]) | (BYTE2(v104[2]) << 16);

    if ((v67 & 0x100) != 0)
    {
      v100 = v53;
      v99 = OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___dataSource;
      v69 = *(v53 + OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___dataSource);
      v104[0] = v66;
      v104[1] = v65;
      v70 = v67 & 1;
      LOBYTE(v104[2]) = v67 & 1;
      BYTE1(v104[2]) = 1;
      v71 = HIWORD(v67) & 1;
      BYTE2(v104[2]) = BYTE2(v67) & 1;
      v72 = v69;
      sub_1E42000F4();

      v73 = sub_1E4200134();
      sub_1E395748C(v73, v103);

      if (v103[1])
      {
        memcpy(v104, v103, 0x58uLL);
        if (LOBYTE(v104[4]) == 1)
        {
          HIDWORD(v93) = sub_1E4200124();
          v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EC90, qword_1E42AD1D0);
          v75 = OUTLINED_FUNCTION_57_10(v74);
          *(v75 + 16) = xmmword_1E4297BE0;
          sub_1E395A14C(v104, v75 + 32);
          sub_1E4200164();

          sub_1E395A1A8(v104);
          if ((v93 & 0x100000000) == 0)
          {
            v90 = *(v100 + v99);
            v104[0] = v66;
            v104[1] = v65;
            LOBYTE(v104[2]) = v70;
            BYTE1(v104[2]) = 1;
            BYTE2(v104[2]) = v71;
            v91 = v90;
            sub_1E42000E4();
          }

          OUTLINED_FUNCTION_6_60();
          v76(v59, v56);
        }

        else
        {

          sub_1E395A1A8(v104);
          OUTLINED_FUNCTION_6_60();
          v68 = v78(v59, v56);
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_60();
        v77(v59, v56);

        v68 = sub_1E325F748(v103, &qword_1ECF2EC88, &qword_1E42AD1C8);
      }

      v61 = v101;
    }

    else
    {
    }

    v63 = v98;
  }

  else
  {
  }

  v79 = v95;
  v80 = (v95)(v68);
  v81 = [v80 vuiPreciseIndexPathsForVisibleItems];

  v82 = sub_1E42062B4();
  MEMORY[0x1EEE9AC00](v83);
  *(&v92 - 2) = v63;
  LOBYTE(v81) = sub_1E3920CE8(sub_1E395A264, (&v92 - 4), v82);

  if (v81)
  {
    v85 = 0;
  }

  else
  {
    v85 = 2;
  }

  v86 = (v79)(v84);
  v87 = sub_1E41FE7E4();
  [v86 selectItemAtIndexPath:v87 animated:0 scrollPosition:v85];

  OUTLINED_FUNCTION_15_5();
  v88(v102, v61);
  OUTLINED_FUNCTION_15_5();
  v89(v63, v54);
LABEL_28:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3958314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v136 = v27;
  v134 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v138 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v31 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EC48, &qword_1E42AD190);
  OUTLINED_FUNCTION_0_10();
  v34 = v33;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EC50, &qword_1E42AD198);
  OUTLINED_FUNCTION_0_10();
  v142 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_4_6();
  v133 = (v40 - v41);
  MEMORY[0x1EEE9AC00](v42);
  v44 = v126 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v139 = v126 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v49 = v126 - v48;
  v144 = v20;
  v50 = sub_1E39551FC();
  sub_1E4200104();

  v51 = sub_1E4200044();
  v52 = *(v51 + 16);
  v53 = v51 + 32;
  v131 = OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___dataSource;
  v130 = v34 + 8;
  v126[1] = 0;
  v54 = 0;
  v141 = v37;
  v145 = v49;
  v127 = v44;
  v135 = v32;
  v140 = v51;
  v129 = v52;
  for (i = v51 + 32; ; v53 = i)
  {
    if (v54 == v52)
    {

      OUTLINED_FUNCTION_15_5();
      v125(v49, v37);
      goto LABEL_44;
    }

    if (v54 >= *(v51 + 16))
    {
      break;
    }

    v55 = v53 + 24 * v54;
    v56 = *v55;
    v57 = *(v55 + 8);
    v58 = *(v55 + 16);
    v59 = *(v55 + 18);
    v143 = v54;
    v132 = v54 + 1;
    if (*(v55 + 17) == 1)
    {
      v60 = *(v144 + v131);
      v149 = v56;
      v150 = v57;
      v151 = v58;
      v152 = 1;
      v153 = v59;

      v61 = v60;
      sub_1E42000F4();

      v62 = sub_1E4200134();
      v63 = 0;
      v37 = *(v62 + 16);
      while (1)
      {
        if (v63 == v37)
        {
          v44 = 0;
          v49 = 0;
          v63 = v37;
          OUTLINED_FUNCTION_42_25();
        }

        else
        {
          if (v63 >= *(v62 + 16))
          {
            goto LABEL_48;
          }

          v57 = v63 + 1;
          v146 = v63;
          sub_1E395A14C(v62 + 32 + 88 * v63, v147);
          v64 = OUTLINED_FUNCTION_8_52();
          ++v63;
          v68 = v148;
        }

        OUTLINED_FUNCTION_24_27(v64, v65, v66, v67, v68);
        if (!v57)
        {
          v78 = OUTLINED_FUNCTION_19_41();
          v80(v78, *(v79 - 256));

          OUTLINED_FUNCTION_18_38();
          goto LABEL_31;
        }

        sub_1E395A1A8(&v150);
        if (v44 == v26 && v57 == v24)
        {
          break;
        }

        v44 = OUTLINED_FUNCTION_29_27();

        if (v44)
        {
          goto LABEL_33;
        }
      }

LABEL_33:
      v81 = OUTLINED_FUNCTION_19_41();
      v83(v81, *(v82 - 256));
LABEL_36:

      v84 = v139;

      OUTLINED_FUNCTION_21();
      v86 = *(v85 + 168);
      v87 = v86();
      v88 = [v87 numberOfSections];

      v89 = v86();
      v90 = v143;
      v91 = [v89 numberOfItemsInSection_];

      v92 = v90 < v88 && v49 < v91;
      v93 = v138;
      v94 = v137;
      v95 = v142;
      if (v92)
      {
        v118 = v136;
        MEMORY[0x1E6909190](v49, v90);
        (*(v95 + 8))(v145, v141);
        v119 = 0;
      }

      else
      {
        v96 = sub_1E324FBDC();
        (*(v93 + 16))(v94, v96, v134);
        v97 = *(v95 + 16);
        v98 = v145;
        v99 = v141;
        v97(v84, v145, v141);
        v100 = v127;
        v97(v127, v98, v99);
        v97(v133, v98, v99);
        v101 = sub_1E41FFC94();
        v102 = sub_1E42067F4();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          v144 = swift_slowAlloc();
          v149 = v144;
          *v103 = 134219522;
          *(v103 + 4) = v143;
          *(v103 + 12) = 2048;
          *(v103 + 14) = v49;
          *(v103 + 22) = 2048;
          *(v103 + 24) = v88;
          *(v103 + 32) = 2048;
          *(v103 + 34) = v91;
          *(v103 + 42) = 2048;
          v104 = v102;
          v105 = v139;
          v106 = *(sub_1E4200044() + 16);

          v107 = *(v142 + 8);
          v107(v105, v99);
          *(v103 + 44) = v106;
          *(v103 + 52) = 2048;
          v108 = *(sub_1E4200004() + 16);

          v107(v100, v99);
          *(v103 + 54) = v108;
          *(v103 + 62) = 2080;
          v109 = v133;
          v110 = sub_1E4200044();
          MEMORY[0x1EEE9AC00](v110);
          v126[-2] = v109;
          v111 = sub_1E39594D8(sub_1E395A294, &v126[-4], v110);

          v112 = MEMORY[0x1E6910C30](v111, MEMORY[0x1E69E6530]);
          v114 = v113;

          v107(v109, v99);
          v115 = sub_1E3270FC8(v112, v114, &v149);

          *(v103 + 64) = v115;
          _os_log_impl(&dword_1E323F000, v101, v104, "RootSideBarController:: select an invalid indexPath [section: %ld, item: %ld],\nnumberOfSections = %ld, numberOfItemInSelectedSection = %ld,\nsnapshot section count = %ld, item count = %ld,\nitem in each section count %s", v103, 0x48u);
          __swift_destroy_boxed_opaque_existential_1(v144);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();

          OUTLINED_FUNCTION_15_5();
          v116(v137, v134);
          v117 = OUTLINED_FUNCTION_25_35(&a14);
          (v107)(v117);
        }

        else
        {
          v120 = *(v142 + 8);
          v120(v100, v99);
          v121 = OUTLINED_FUNCTION_25_35(&v155);
          (v120)(v121);

          (*(v93 + 8))(v94, v134);
          v122 = OUTLINED_FUNCTION_25_35(&a14);
          (v120)(v122);
          v123 = OUTLINED_FUNCTION_25_35(&v154);
          (v120)(v123);
        }

LABEL_44:
        v119 = 1;
        v118 = v136;
      }

      v124 = sub_1E41FE874();
      __swift_storeEnumTagSinglePayload(v118, v119, 1, v124);
      OUTLINED_FUNCTION_25_2();
      return;
    }

    v149 = v56;
    v150 = v57;
    v151 = v58;
    v152 = 0;
    v153 = v59;
    v70 = sub_1E41FFFF4();
    v37 = 0;
    v71 = *(v70 + 16);
    while (1)
    {
      if (v37 == v71)
      {
        v49 = 0;
        v44 = 0;
        v37 = v71;
        OUTLINED_FUNCTION_42_25();
      }

      else
      {
        if (v37 >= *(v70 + 16))
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v57 = v37 + 1;
        v146 = v37;
        sub_1E395A14C(v70 + 32 + 88 * v37, v147);
        v72 = OUTLINED_FUNCTION_8_52();
        ++v37;
        v76 = v148;
      }

      OUTLINED_FUNCTION_24_27(v72, v73, v74, v75, v76);
      if (!v57)
      {
        break;
      }

      sub_1E395A1A8(&v150);
      if (v44 == v26 && v57 == v24)
      {

        goto LABEL_36;
      }

      v44 = OUTLINED_FUNCTION_29_27();

      if (v44)
      {
        goto LABEL_36;
      }
    }

    OUTLINED_FUNCTION_18_38();
LABEL_31:
    v51 = v140;
    v52 = v129;
  }

LABEL_49:
  __break(1u);
}

void sub_1E3958CFC()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI21RootSideBarController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_4_74(&OBJC_IVAR____TtC8VideosUI21RootSideBarController____lazy_storage___collectionView);
  v2 = (v0 + v1);
  *v2 = 0;
  v2[1] = 0;
  sub_1E42076B4();
  __break(1u);
}

id sub_1E3958DFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootSideBarController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3958FE0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a2;
  v72 = a1;
  v70 = sub_1E4200194();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E4200184();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = sub_1E42001C4();
  OUTLINED_FUNCTION_0_10();
  v69 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v73 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EC50, &qword_1E42AD198);
  OUTLINED_FUNCTION_0_10();
  v68 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62 - v24;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v28 = sub_1E39551FC();
    sub_1E4200104();

    v67 = v21;
    v29 = sub_1E4200044();
    v66 = v25;
    if ((v72 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v29 + 16) > v72)
    {
      v65 = v16;
      v30 = v72;
      v31 = v29 + 24 * v72;
      v32 = *(v31 + 40);
      v63 = *(v31 + 32);
      v64 = v32;
      v33 = *(v31 + 49);

      (*(v11 + 104))(v15, *MEMORY[0x1E69DC258], v9);
      sub_1E42001A4();
      v34 = MEMORY[0x1E69DC288];
      if (!v33)
      {
        v34 = MEMORY[0x1E69DC290];
      }

      (*(v4 + 104))(v8, *v34, v70);
      sub_1E42001B4();
      sub_1E3280A90(0, &unk_1EE23AFF0, 0x1E6995580);
      v35 = sub_1E4206D74();
      [v35 contentInsets];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v44 = v27;
      v45 = [v44 vuiView];
      if (v45)
      {
        v46 = v45;
        v47 = [v45 vuiIsRTL];

        v48 = [v44 vuiView];
        if (v48)
        {
          if (v47)
          {
            v49 = v43;
          }

          else
          {
            v49 = v39;
          }

          v50 = [v48 vuiIsRTL];

          if (v50)
          {
            v51 = v39;
          }

          else
          {
            v51 = v43;
          }

          v52 = &v44[OBJC_IVAR____TtC8VideosUI21RootSideBarController_layoutContentInsets];
          *v52 = v37;
          v52[1] = v49;
          *(v52 + 2) = v41;
          v52[3] = v51;
          *(v52 + 32) = 0;
          v54 = v66;
          v53 = v67;
          v55 = *(sub_1E4200044() + 16);

          v56 = v65;
          if (v55 - 1 == v30)
          {
            [v35 contentInsets];
            [v35 setContentInsets_];
          }

          OUTLINED_FUNCTION_43_18();
          OUTLINED_FUNCTION_10_51();
          if (v63 == v58 && v64 == v57)
          {

            v61 = v69;
          }

          else
          {
            v60 = sub_1E42079A4();

            v61 = v69;
            if ((v60 & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          [v35 setContentInsets_];
          [v35 setContentInsetsReference_];
LABEL_25:

          (*(v61 + 8))(v73, v56);
          (*(v68 + 8))(v54, v53);
          return;
        }

        goto LABEL_29;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_28;
  }
}

uint64_t sub_1E39594D8(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v23 = MEMORY[0x1E69E7CC0];
  sub_1E3897C68(0, v5, 0);
  v6 = v23;
  for (i = (a3 + 50); ; i += 24)
  {
    v10 = *(i - 10);
    v11 = *(i - 2);
    v12 = *(i - 1);
    v13 = *i;
    v18[0] = *(i - 18);
    v18[1] = v10;
    v19 = v11;
    v20 = v12;
    v21 = v13;

    (a1)(&v22, v18);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v14 = v22;
    v23 = v6;
    v16 = *(v6 + 16);
    v15 = *(v6 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1E3897C68((v15 > 1), v16 + 1, 1);
      v6 = v23;
    }

    *(v6 + 16) = v16 + 1;
    *(v6 + 8 * v16 + 32) = v14;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3959620()
{
  sub_1E39551FC();
  OUTLINED_FUNCTION_28_29();

  if (!v20)
  {
    return sub_1E325F748(&v19, &qword_1ECF2EC88, &qword_1E42AD1C8);
  }

  v9 = OUTLINED_FUNCTION_31_27(v1, v2, v3, v4, v5, v6, v7, v8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  if (v32 == 1)
  {
    v10 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x90);
    v11 = v10(v9);
    if (v11)
    {
      v13 = v12;
      ObjectType = swift_getObjectType();
      (*(v13 + 24))(v30, v31, ObjectType, v13);
      v11 = swift_unknownObjectRelease();
    }

    if (v10(v11))
    {
      v16 = v15;
      v17 = swift_getObjectType();
      (*(v16 + 8))(v30, v31, v17, v16);
      swift_unknownObjectRelease();
    }
  }

  return sub_1E395A1A8(&v30);
}

id sub_1E3959840(uint64_t a1, void *a2)
{
  v4 = v2;
  sub_1E39554AC(1);
  type metadata accessor for ViewControllerHostingCollectionViewCell();
  v6 = swift_dynamicCastClass();
  v7 = MEMORY[0x1E69E7D40];
  if (v6)
  {
    v8 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x60);
    v9 = a2;
    v10 = v8();
    if (v10)
    {
      v11 = v10;
      OUTLINED_FUNCTION_21();
      (*(v12 + 152))();
      [v2 vui:v11 addChildViewController:?];
      [v11 vui:v2 didMoveToParentViewController:?];
      v13 = sub_1E3952C64();
      v14 = (v2 + OBJC_IVAR____TtC8VideosUI21RootSideBarController_layoutContentInsets);
      if ((*(v2 + OBJC_IVAR____TtC8VideosUI21RootSideBarController_layoutContentInsets + 32) & 1) == 0)
      {
        v16 = v14[2];
        v15 = v14[3];
        v18 = *v14;
        v17 = v14[1];
        result = [v2 vuiView];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v20 = result;
        [result safeAreaInsets];
        OUTLINED_FUNCTION_7_23();

        sub_1E39535C8(v18, v17, v16, v15, v3);
        v13 = 0.0;
      }

      [v11 setAdditionalSafeAreaInsets_];
    }
  }

  sub_1E39551FC();
  OUTLINED_FUNCTION_28_29();

  if (!v41)
  {
    return sub_1E325F748(&v40, &qword_1ECF2EC88, &qword_1E42AD1C8);
  }

  v29 = OUTLINED_FUNCTION_31_27(v21, v22, v23, v24, v25, v26, v27, v28, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
  if (v52 == 1)
  {
    if ((*((*v7 & *v4) + 0x90))(v29))
    {
      ObjectType = swift_getObjectType();
      v38 = OUTLINED_FUNCTION_40_23(ObjectType, v31, v32, v33, v34, v35, v36, v37, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51[0]);
      v39(v38);
      swift_unknownObjectRelease();
    }
  }

  return sub_1E395A1A8(v51);
}

uint64_t sub_1E3959AC8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewControllerHostingCollectionViewCell();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0xA0))();
  }

  sub_1E39551FC();
  OUTLINED_FUNCTION_28_29();

  if (!v25)
  {
    return sub_1E325F748(&v24, &qword_1ECF2EC88, &qword_1E42AD1C8);
  }

  OUTLINED_FUNCTION_31_27(v4, v5, v6, v7, v8, v9, v10, v11, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  if (v36 == 1)
  {
    OUTLINED_FUNCTION_3_3();
    if ((*(v12 + 144))())
    {
      ObjectType = swift_getObjectType();
      v21 = OUTLINED_FUNCTION_40_23(ObjectType, v14, v15, v16, v17, v18, v19, v20, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35[0]);
      v22(v21);
      swift_unknownObjectRelease();
    }
  }

  return sub_1E395A1A8(v35);
}

uint64_t sub_1E3959C08(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(void))
{
  v10 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  sub_1E41FE804();
  v17 = a3;
  v18 = a4;
  v19 = a1;
  a6();

  return (*(v12 + 8))(v16, v10);
}

id sub_1E3959D70(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1E37BE928;
  v6[3] = &block_descriptor_30;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithSectionProvider_];
  _Block_release(v3);

  return v4;
}

void *sub_1E3959E14(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ECA0, &qword_1E42AD238);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[8 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EC78, &qword_1E42AD1B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E3959F44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3959F64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E3959F64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EC70, &qword_1E42AD1B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1E395A078()
{
  result = qword_1ECF2EC68;
  if (!qword_1ECF2EC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2EC60, &qword_1E42AD1A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2EC68);
  }

  return result;
}

uint64_t sub_1E395A0DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EC78, &qword_1E42AD1B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E395A1FC(void *a1)
{
  v2 = [a1 indexPathsForSelectedItems];

  if (!v2)
  {
    return 0;
  }

  sub_1E41FE874();
  v3 = sub_1E42062B4();

  return v3;
}

uint64_t sub_1E395A294@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EC50, &qword_1E42AD198);
  result = sub_1E41FFFA4();
  *a2 = result;
  return result;
}

void *sub_1E395A314(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a3[10];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1E4205ED4();
    v7 = sub_1E41FE7E4();
    v8 = [a1 dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:v7];

    type metadata accessor for ViewControllerHostingCollectionViewCell();
    v9 = swift_dynamicCastClass();
    v10 = v9;
    if (v9)
    {
      v11 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x68);
      v12 = v5;
      v5 = v8;
      v11(v4);
    }

    else
    {
    }
  }

  else
  {
    v14 = OUTLINED_FUNCTION_20_45();
    v15 = sub_1E41FE7E4();
    v5 = [a1 dequeueReusableCellWithReuseIdentifier:v14 forIndexPath:v15];

    type metadata accessor for SideBarCollectionViewListCell();
    v16 = swift_dynamicCastClass();
    v10 = v16;
    if (v16)
    {
      v17 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x180);
      v18 = v5;
      v17(a3);
      v19 = sub_1E4205F14();
      v21 = *a3;
      v20 = a3[1];
      v24 = v19;
      v25 = v22;

      MEMORY[0x1E69109E0](v21, v20);

      sub_1E37FB7F0(v24, v25, v10, &selRef_setVuiAccessibilityIdentifier_);
    }
  }

  return v10;
}

void sub_1E395A530()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E395624C();
  }
}

uint64_t OUTLINED_FUNCTION_32_31(uint64_t a1)
{
  *(a1 + 16) = *(v1 + 80);

  return sub_1E395A14C(v1 + 424, a1 + 32);
}

void *OUTLINED_FUNCTION_56_14()
{

  return __swift_project_boxed_opaque_existential_1((v0 + 336), v1);
}

uint64_t OUTLINED_FUNCTION_57_10(uint64_t a1)
{

  return swift_allocObject();
}

id sub_1E395A5E4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1E4205ED4();

  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t sub_1E395A6A8(uint64_t a1, char a2, const char *a3)
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_8();
  v10 = [objc_opt_self() standardUserDefaults];
  v11 = sub_1E4205ED4();

  [v10 setBool:a2 & 1 forKey:v11];

  v12 = sub_1E3E37F30();
  (*(v8 + 16))(v4, v12, v3);
  v13 = sub_1E41FFC94();
  v14 = sub_1E42067E4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1E323F000, v13, v14, a3, v15, 2u);
    MEMORY[0x1E69143B0](v15, -1, -1);
  }

  return (*(v8 + 8))(v4, v3);
}

BOOL sub_1E395A870()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1E4205ED4();
  v2 = [v0 integerForKey_];

  return v2 < 2;
}

void sub_1E395A900()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_8();
  v5 = objc_opt_self();
  v6 = [v5 standardUserDefaults];
  v7 = [v5 standardUserDefaults];
  v8 = sub_1E4205ED4();
  v9 = [v7 integerForKey_];

  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = sub_1E4205ED4();
    [v6 setInteger:v9 + 1 forKey:v10];

    v11 = sub_1E3E37F30();
    (*(v3 + 16))(v1, v11, v0);
    v12 = sub_1E41FFC94();
    v13 = sub_1E42067E4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1E323F000, v12, v13, "SportsMoreFrequentUpdatesAlertUtility: marked as shown", v14, 2u);
      MEMORY[0x1E69143B0](v14, -1, -1);
    }

    (*(v3 + 8))(v1, v0);
  }
}

unint64_t sub_1E395AAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2ECB0;
  if (!qword_1ECF2ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2ECB0);
  }

  return result;
}

_BYTE *sub_1E395AB60(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E395AC80(uint64_t a1)
{
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  v2 = sub_1E3C2F9A0();

  v3 = sub_1E37BD068();
  v4 = *sub_1E3E5FD88();
  v5 = *(*v3 + 680);
  v6 = v4;
  v5(v4);
  OUTLINED_FUNCTION_36();
  (*(v7 + 1792))(10);
  OUTLINED_FUNCTION_36();
  (*(v8 + 464))(1);
  OUTLINED_FUNCTION_36();
  (*(v9 + 1696))(2);
  OUTLINED_FUNCTION_36();
  (*(v10 + 2056))(0, 0);

  sub_1E374EA2C();
  v11 = [objc_opt_self() systemGrayColor];
  OUTLINED_FUNCTION_36();
  (*(v12 + 680))();
  OUTLINED_FUNCTION_36();
  (*(v13 + 464))(1);
  OUTLINED_FUNCTION_36();
  (*(v14 + 1696))(2);
  OUTLINED_FUNCTION_36();
  (*(v15 + 2056))(0, 0);

  return v2;
}

double sub_1E395AF40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC8VideosUI22RentalPresenterWrapper_presenter;
  OUTLINED_FUNCTION_15_0(v3 + OBJC_IVAR____TtC8VideosUI22RentalPresenterWrapper_presenter, a2);
  if (*(v3 + v4))
  {
    type metadata accessor for RentalExpirationPresenter(0);
    OUTLINED_FUNCTION_0_89();
    sub_1E395D6CC(v6, v7, &unk_1E42B63A8);

    sub_1E4200514();
    swift_allocObject();
    swift_weakInit();
    sub_1E42005A4();
    v8 = sub_1E4200844();

    *(v3 + OBJC_IVAR____TtC8VideosUI22RentalPresenterWrapper_cancellable) = v8;
  }

  return result;
}

double sub_1E395B0A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22RentalPresenterWrapper_presenter;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_1E395AF40(v4, v5);

  return result;
}

double (*sub_1E395B118(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E395B17C;
}

double sub_1E395B17C(uint64_t a1, char a2)
{
  v3 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1E395AF40(v3, v4);
  }

  return result;
}

uint64_t sub_1E395B1E4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI22RentalPresenterWrapper_cancellable) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI22RentalPresenterWrapper_presenter) = 0;
  return sub_1E3B500B4();
}

double sub_1E395B200()
{

  return result;
}

uint64_t sub_1E395B240(uint64_t a1)
{
  v1 = sub_1E3B4FF80();

  return v1;
}

uint64_t sub_1E395B288(uint64_t a1)
{
  v1 = sub_1E395B240(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1E395B2DC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = qword_1ECF713A8;
}

uint64_t sub_1E395B330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E395B36C(a1, a2, a3);
  sub_1E4201AC4();
  return v4;
}

unint64_t sub_1E395B36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2ECB8;
  if (!qword_1ECF2ECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2ECB8);
  }

  return result;
}

uint64_t sub_1E395B3FC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = sub_1E395B330(a2, a3, a4);
  *a1 = result;
  return result;
}

void sub_1E395B454(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v116 = a2;
  v5 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v120 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v115 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_6();
  v114 = v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v14);
  v110 = &v102 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  OUTLINED_FUNCTION_2_5();
  v113 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_18_6();
  v21 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v102 - v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_6();
  v119 = v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_18_6();
  v121 = v29;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v102 - v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v34);
  v122 = &v102 - v35;
  v36 = type metadata accessor for RentalExpirationText(0);
  v37 = v36[6];
  *(a3 + v37) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v38 = v36[7];
  *(a3 + v38) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  swift_storeEnumTagMultiPayload();
  v39 = a3 + v36[11];
  *v39 = swift_getKeyPath();
  *(v39 + 8) = 0;
  v125 = &unk_1F5D5DC78;
  v126 = &off_1F5D5C9F8;
  LOBYTE(v124[0]) = 0;
  v40 = j__OUTLINED_FUNCTION_18();
  LOBYTE(v39) = OUTLINED_FUNCTION_14_59(v40);
  __swift_destroy_boxed_opaque_existential_1(v124);
  OUTLINED_FUNCTION_29_28();
  v117 = v43;
  v118 = v36;
  if (v39)
  {
    v44 = 0xED00004E495F4E4FLL;
    v45 = (a3 + v36[9]);
  }

  else
  {
    v46 = TVAppFeature.isEnabled.getter(10, v41, v42);
    v45 = (a3 + v36[9]);
    if (v46)
    {
      v44 = 0xEA00000000004E49;
      v117 = 0x5F53455249505845;
      *v45 = 0x5F53455249505845;
      v112 = 0xEA00000000004E49;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_29_28();
  }

  *v45 = v43;
  v112 = v44;
LABEL_7:
  v45[1] = v44;
  v47 = v21;
  if (TVAppFeature.isEnabled.getter(10, v41, v42))
  {
    v48 = 0;
  }

  else
  {
    v125 = &unk_1F5D5DC78;
    v126 = &off_1F5D5C9F8;
    LOBYTE(v124[0]) = 2;
    v49 = j__OUTLINED_FUNCTION_18();
    v48 = OUTLINED_FUNCTION_14_59(v49);
    __swift_destroy_boxed_opaque_existential_1(v124);
  }

  v50 = v120;
  v51 = v118[10];
  v111 = v48;
  *(a3 + v51) = v48 & 1;
  OUTLINED_FUNCTION_16_45(v122);
  LOBYTE(v123) = 0;
  v52 = *a1 + 776;
  v53 = OUTLINED_FUNCTION_10_52();
  v120 = v54;
  (v54)(v53);
  if (v125)
  {
    OUTLINED_FUNCTION_31_28();
    if (swift_dynamicCast())
    {
      v103 = v32;
      v55 = v25;
      v56 = v47;
      v57 = v109;
      sub_1E41FE564();
      v58 = v122;
      sub_1E325F6F0(v122, &unk_1ECF28E20, &unk_1E42986D0);
      OUTLINED_FUNCTION_4_56(v57);
      v59 = v57;
      v47 = v56;
      v25 = v55;
      v32 = v103;
      sub_1E3889AF0(v59, v58);
    }
  }

  else
  {
    sub_1E325F6F0(v124, &unk_1ECF296E0, &unk_1E4298030);
  }

  LOBYTE(v123) = 2;
  v60 = OUTLINED_FUNCTION_10_52();
  (v120)(v60);
  if (v125)
  {
    OUTLINED_FUNCTION_31_28();
    if (swift_dynamicCast())
    {
      v61 = (v123 - 1) < 2;
      goto LABEL_19;
    }
  }

  else
  {
    sub_1E325F6F0(v124, &unk_1ECF296E0, &unk_1E4298030);
  }

  v61 = 0;
LABEL_19:
  sub_1E37E93E8(v122, v32, &unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_4_75(v32);
  if (v80)
  {
    v62 = 0;
  }

  else
  {
    v62 = sub_1E41FE514();
    v63 = OUTLINED_FUNCTION_26_34();
    v64(v63);
  }

  v65 = [objc_opt_self() shouldShowLabelForDownloadExpirationDate_];

  if (v61 || (v65 & 1) == 0)
  {
    v66 = v122;
    sub_1E325F6F0(v122, &unk_1ECF28E20, &unk_1E42986D0);
    OUTLINED_FUNCTION_16_45(v66);
  }

  OUTLINED_FUNCTION_16_45(v121);
  LOBYTE(v123) = 1;
  v67 = OUTLINED_FUNCTION_10_52();
  (v120)(v67);
  v68 = v119;
  if (v125)
  {
    OUTLINED_FUNCTION_31_28();
    if (swift_dynamicCast())
    {
      v69 = v109;
      sub_1E41FE564();
      v70 = v121;
      sub_1E325F6F0(v121, &unk_1ECF28E20, &unk_1E42986D0);
      OUTLINED_FUNCTION_4_56(v69);
      sub_1E3889AF0(v69, v70);
    }
  }

  else
  {
    sub_1E325F6F0(v124, &unk_1ECF296E0, &unk_1E4298030);
  }

  v71 = v110;
  OUTLINED_FUNCTION_16_45(v68);
  sub_1E37E93E8(v122, v25, &unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_4_75(v25);
  v110 = v52;
  if (v80)
  {
    goto LABEL_32;
  }

  v72 = v50;
  v73 = v50[4];
  OUTLINED_FUNCTION_30_27();
  v73();
  v25 = v108;
  sub_1E37E93E8(v121, v108, &unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_4_75(v25);
  if (v80)
  {
    v72[1](v71, v5);
    v50 = v72;
    v68 = v119;
LABEL_32:
    OUTLINED_FUNCTION_45_3(v25);
    sub_1E37E93E8(v122, v47, &unk_1ECF28E20, &unk_1E42986D0);
    OUTLINED_FUNCTION_4_75(v47);
    if (v80)
    {
      OUTLINED_FUNCTION_45_3(v47);
      v74 = v106;
      sub_1E37E93E8(v121, v106, &unk_1ECF28E20, &unk_1E42986D0);
      if (__swift_getEnumTagSinglePayload(v74, 1, v5) == 1)
      {
        sub_1E325F6F0(v74, &unk_1ECF28E20, &unk_1E42986D0);
      }

      else
      {
        sub_1E325F6F0(v68, &unk_1ECF28E20, &unk_1E42986D0);
        v83 = v50[4];
        (v83)(v104, v74, v5);
        OUTLINED_FUNCTION_30_27();
        v83();
        OUTLINED_FUNCTION_4_56(v68);
      }

      v81 = 0;
    }

    else
    {
      sub_1E325F6F0(v68, &unk_1ECF28E20, &unk_1E42986D0);
      v75 = v50[4];
      (v75)(v107, v47, v5);
      OUTLINED_FUNCTION_30_27();
      v75();
      v81 = 1;
      OUTLINED_FUNCTION_4_56(v68);
    }

    goto LABEL_44;
  }

  v76 = v71;
  v77 = v105;
  OUTLINED_FUNCTION_30_27();
  v73();
  v78 = sub_1E41FE5A4();
  v79 = v119;
  sub_1E325F6F0(v119, &unk_1ECF28E20, &unk_1E42986D0);
  v80 = v78 == -1;
  v81 = v78 != -1;
  if (v80)
  {
    v82 = v76;
  }

  else
  {
    v82 = v77;
  }

  if (!v80)
  {
    v77 = v76;
  }

  v72[1](v82, v5);
  (v73)(v79, v77, v5);
  v68 = v79;
  OUTLINED_FUNCTION_4_56(v79);
  v50 = v72;
LABEL_44:
  v84 = v114;
  v85 = v115;
  v86 = v68;
  v87 = v113;
  sub_1E37E93E8(v86, v113, &unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_4_75(v87);
  if (v80)
  {
    sub_1E41FE484();
    sub_1E41FE564();
    OUTLINED_FUNCTION_4_75(v87);
    if (!v80)
    {
      sub_1E325F6F0(v87, &unk_1ECF28E20, &unk_1E42986D0);
    }
  }

  else
  {
    (v50[4])(v84, v87, v5);
  }

  v88 = v118[8];
  (v50[4])(a3 + v88, v84, v5);
  LOBYTE(v123) = 1;
  v89 = OUTLINED_FUNCTION_10_52();
  (v120)(v89);
  if (v125)
  {
    OUTLINED_FUNCTION_31_28();
    if (swift_dynamicCast())
    {
      sub_1E41FE564();
      sub_1E41FE554();
      v91 = v90;
      v92 = OUTLINED_FUNCTION_26_34();
      v93(v92);
      v94 = v91 > 0.0;
      goto LABEL_53;
    }
  }

  else
  {
    sub_1E325F6F0(v124, &unk_1ECF296E0, &unk_1E4298030);
  }

  v94 = 1;
LABEL_53:
  v125 = &unk_1F5D5DC78;
  v126 = &off_1F5D5C9F8;
  LOBYTE(v124[0]) = 3;
  v95 = j__OUTLINED_FUNCTION_18();
  v96 = OUTLINED_FUNCTION_14_59(v95);
  __swift_destroy_boxed_opaque_existential_1(v124);
  type metadata accessor for RentalExpirationPresenter(0);
  (v50[2])(v85, a3 + v88, v5);
  v97 = sub_1E3A77D94(v85, v117, v112, v111 & 1, v96 & 1, v81, v94);
  *a3 = sub_1E38074D0;
  *(a3 + 8) = v97;
  *(a3 + 16) = 0;
  v98 = v116;
  if (v116)
  {

    OUTLINED_FUNCTION_45_3(v119);
    OUTLINED_FUNCTION_45_3(v121);
    OUTLINED_FUNCTION_45_3(v122);
  }

  else
  {

    v101 = sub_1E3C27528(v99, v100);

    sub_1E325F6F0(v119, &unk_1ECF28E20, &unk_1E42986D0);
    sub_1E325F6F0(v121, &unk_1ECF28E20, &unk_1E42986D0);
    sub_1E325F6F0(v122, &unk_1ECF28E20, &unk_1E42986D0);
    if (v101)
    {
      type metadata accessor for TextLayout();
      v98 = swift_dynamicCastClass();
      if (!v98)
      {
      }
    }

    else
    {
      v98 = 0;
    }
  }

  *(a3 + 24) = v98;
}

uint64_t sub_1E395C104@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v140 = a1;
  v3 = type metadata accessor for RentalExpirationText(0);
  OUTLINED_FUNCTION_0_10();
  v142 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v146 = v6;
  OUTLINED_FUNCTION_17_3(&v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v124 = sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v123 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v9);
  v121 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v120 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v12);
  v116 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v115 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_3();
  v16 = v15;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8, &unk_1E42AA120);
  OUTLINED_FUNCTION_0_10();
  v118 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v19);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ECC0, &qword_1E42AD430);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v21);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ECC8, &qword_1E42AD438);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v23);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ECD0, &qword_1E42AD440);
  OUTLINED_FUNCTION_0_10();
  v132 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v145 = v26;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ECD8, &qword_1E42AD448);
  OUTLINED_FUNCTION_0_10();
  v135 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ECE0, &qword_1E42AD450);
  OUTLINED_FUNCTION_0_10();
  v138 = v31;
  v139 = v30;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44();
  v136 = v33;
  v34 = *v1;
  v35 = v1[1];
  v36 = *(v2 + 16);
  v37 = type metadata accessor for RentalExpirationPresenter(0);
  OUTLINED_FUNCTION_0_89();
  v40 = sub_1E395D6CC(v38, v39, &unk_1E42B63A8);
  v131 = v34;
  v130 = v35;
  v129 = v36;
  v128 = v37;
  v127 = v40;
  v41 = sub_1E4200BC4();
  v42 = (*(*v41 + 200))(v41);
  v44 = v43;
  v46 = v45;

  if (v46)
  {
    if (v2[3] && ([ copyWithZone_], sub_1E4207264(), swift_unknownObjectRelease(), , type metadata accessor for TextLayout(), v47 = swift_dynamicCast(), (v47 & 1) != 0))
    {
      v50 = v147;
      v51 = *sub_1E3E60A78();
      v52 = *(*v50 + 680);
      v53 = v51;
      v143 = v50;
      v47 = v52(v51);
    }

    else
    {
      v143 = 0;
    }
  }

  else
  {
    v143 = v2[3];
  }

  if (v44)
  {
    v54 = v42;
  }

  else
  {
    v54 = 0;
  }

  v55 = 0xE000000000000000;
  if (v44)
  {
    v55 = v44;
  }

  v149 = v54;
  v150 = v55;
  sub_1E32822E0(v47, v48, v49);
  v110 = sub_1E4202C44();
  v109 = v56;
  v111 = v57;
  v149 = v110;
  v150 = v56;
  v59 = v58 & 1;
  LOBYTE(v151) = v58 & 1;
  v152 = v57;
  v60 = v2;
  v61 = v16;
  sub_1E3746E10(v16);
  v62 = v112;
  sub_1E374709C(v112);
  v141 = v3;
  v63 = MEMORY[0x1E6981148];
  v64 = MEMORY[0x1E6981138];
  v65 = j__OUTLINED_FUNCTION_18();
  v66 = v122;
  sub_1E37B5FBC(v122);
  v67 = j__OUTLINED_FUNCTION_18();
  v68 = v114;
  sub_1E37B6028(v143, v61, v62, v65, v66, v67 & 1, v63, v64, v114);
  OUTLINED_FUNCTION_15_5();
  v69(v66, v124);
  OUTLINED_FUNCTION_15_5();
  v70(v62, v121);
  OUTLINED_FUNCTION_15_5();
  v71(v61, v116);
  sub_1E37434B8(v110, v109, v59);

  sub_1E395CFE0(v60, v126);
  v72 = v60;
  v73 = *(v142 + 80);
  v74 = swift_allocObject();
  OUTLINED_FUNCTION_23_34(v74);
  v75 = v117;
  (*(v118 + 32))(v117, v68, v119);
  v76 = (v75 + *(v113 + 36));
  *v76 = sub_1E395D0A8;
  v76[1] = v74;
  v76[2] = 0;
  v76[3] = 0;
  v77 = OUTLINED_FUNCTION_34();
  sub_1E395CFE0(v77, v78);
  v142 = v73;
  v79 = swift_allocObject();
  OUTLINED_FUNCTION_23_34(v79);
  v80 = v125;
  sub_1E32BC5C8(v75, v125);
  v81 = (v80 + *(v144 + 36));
  *v81 = 0;
  v81[1] = 0;
  v81[2] = sub_1E395D450;
  v81[3] = v79;
  v82 = v141;
  v124 = *(v141 + 32);
  v83 = OUTLINED_FUNCTION_34();
  sub_1E395CFE0(v83, v84);
  v85 = swift_allocObject();
  OUTLINED_FUNCTION_23_34(v85);
  v123 = sub_1E41FE5D4();
  v86 = sub_1E395D584();
  v87 = sub_1E395D6CC(&qword_1EE28A458, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v88 = v144;
  sub_1E4203524();

  sub_1E32BC630(v80);
  v89 = (v72 + *(v82 + 36));
  v90 = v89[1];
  v147 = *v89;
  v148 = v90;
  v91 = OUTLINED_FUNCTION_34();
  sub_1E395CFE0(v91, v92);
  v93 = OUTLINED_FUNCTION_32_32(&unk_1F5D64E08);
  OUTLINED_FUNCTION_23_34(v93);

  v149 = v88;
  v150 = v123;
  v151 = v86;
  v152 = v87;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v95 = v133;
  v96 = v134;
  v97 = v145;
  sub_1E4203524();

  OUTLINED_FUNCTION_15_5();
  v98(v97, v96);
  LOBYTE(v147) = *(v72 + *(v141 + 40));
  v99 = OUTLINED_FUNCTION_34();
  sub_1E395CFE0(v99, v100);
  v101 = OUTLINED_FUNCTION_32_32(&unk_1F5D64E30);
  OUTLINED_FUNCTION_23_34(v101);
  v149 = v96;
  v150 = MEMORY[0x1E69E6158];
  v151 = OpaqueTypeConformance2;
  v152 = MEMORY[0x1E69E6180];
  swift_getOpaqueTypeConformance2();
  v103 = v136;
  v102 = v137;
  sub_1E4203524();

  (*(v135 + 8))(v95, v102);
  sub_1E4200BC4();
  OUTLINED_FUNCTION_2_1();
  LOBYTE(v102) = (*(v104 + 400))();

  if (v102)
  {
    v105 = 1.0;
  }

  else
  {
    v105 = 0.0;
  }

  v106 = v140;
  (*(v138 + 32))(v140, v103, v139);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ECE8, &qword_1E42AD458);
  *(v106 + *(result + 36)) = v105;
  return result;
}

double sub_1E395CCC0(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - v3;
  type metadata accessor for RentalExpirationPresenter(0);
  OUTLINED_FUNCTION_0_89();
  sub_1E395D6CC(v5, v6, &unk_1E42B63A8);
  v7 = sub_1E4200BC4();
  v8 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_2();
  v9 = OUTLINED_FUNCTION_16_0();
  v10(v9);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v8);
  (*(*v7 + 160))(v4);

  return result;
}

void *sub_1E395CE14(uint64_t a1, char a2)
{
  v4 = sub_1E4201AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v8 = sub_1E4206804();
    v9 = sub_1E42026D4();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1E3270FC8(0xD000000000000026, 0x80000001E4268CE0, &v14);
      _os_log_impl(&dword_1E323F000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1E69143B0](v11, -1, -1);
      MEMORY[0x1E69143B0](v10, -1, -1);
    }

    sub_1E4201AA4();
    swift_getAtKeyPath();
    j__swift_release(a1);
    (*(v5 + 8))(v7, v4);
    return v14;
  }

  return a1;
}

uint64_t sub_1E395CFE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RentalExpirationText(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E395D044(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RentalExpirationText(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1E395D0A8()
{
  v1 = OUTLINED_FUNCTION_7_79();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = sub_1E395CE14(*(v3 + *(v1 + 52)), *(v3 + *(v1 + 52) + 8));
  if (v4)
  {
    v5 = (*(*v4 + 96))();

    if (v5)
    {
      type metadata accessor for RentalExpirationPresenter(0);
      OUTLINED_FUNCTION_0_89();
      sub_1E395D6CC(v6, v7, &unk_1E42B63A8);
      v8 = sub_1E4200BC4();
      (*(*v5 + 192))(v8);
    }
  }

  type metadata accessor for RentalExpirationPresenter(0);
  OUTLINED_FUNCTION_0_89();
  v11 = sub_1E395D6CC(v9, v10, &unk_1E42B63A8);
  OUTLINED_FUNCTION_20_46(v11);
  OUTLINED_FUNCTION_2_1();
  (*(v12 + 408))();

  return result;
}

uint64_t objectdestroyTm_16()
{
  v1 = type metadata accessor for RentalExpirationText(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  sub_1E3264CE0(*v2, v2[1]);

  v3 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4201324();
    OUTLINED_FUNCTION_2();
    (*(v6 + 8))(v2 + v5);
  }

  else
  {
  }

  v7 = v1[8];
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_2();
  (*(v8 + 8))(v2 + v7);

  j__swift_release(*(v2 + v1[11]));

  return swift_deallocObject();
}

double sub_1E395D450()
{
  OUTLINED_FUNCTION_7_79();
  OUTLINED_FUNCTION_18_39();
  type metadata accessor for RentalExpirationPresenter(0);
  OUTLINED_FUNCTION_0_89();
  v2 = sub_1E395D6CC(v0, v1, &unk_1E42B63A8);
  OUTLINED_FUNCTION_20_46(v2);
  OUTLINED_FUNCTION_2_1();
  (*(v3 + 416))();

  return result;
}

double sub_1E395D520(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_79();
  v5 = (v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  return sub_1E395CCC0(a2, v5);
}

unint64_t sub_1E395D584()
{
  result = qword_1EE289608;
  if (!qword_1EE289608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2ECC8, &qword_1E42AD438);
    sub_1E395D610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289608);
  }

  return result;
}

unint64_t sub_1E395D610()
{
  result = qword_1EE2899C0;
  if (!qword_1EE2899C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2ECC0, &qword_1E42AD430);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2899C0);
  }

  return result;
}

uint64_t sub_1E395D6CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1E395D714(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_79();
  OUTLINED_FUNCTION_18_39();
  type metadata accessor for RentalExpirationPresenter(0);
  OUTLINED_FUNCTION_0_89();
  sub_1E395D6CC(v2, v3, &unk_1E42B63A8);
  OUTLINED_FUNCTION_34();
  v4 = *(*sub_1E4200BC4() + 184);

  v5 = OUTLINED_FUNCTION_16_0();
  v4(v5);

  return result;
}

double sub_1E395D808(uint64_t a1, unsigned __int8 *a2)
{
  OUTLINED_FUNCTION_7_79();
  OUTLINED_FUNCTION_18_39();
  v3 = *a2;
  type metadata accessor for RentalExpirationPresenter(0);
  OUTLINED_FUNCTION_0_89();
  sub_1E395D6CC(v4, v5, &unk_1E42B63A8);
  sub_1E4200BC4();
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 256))(v3);

  return result;
}

void sub_1E395D9C0(uint64_t a1)
{
  sub_1E395DB4C(319);
  if (v1 <= 0x3F)
  {
    sub_1E395DBE0(319, qword_1EE287258, type metadata accessor for TextLayout, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1E395DBE0(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1E395DBE0(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1E41FE5D4();
          if (v5 <= 0x3F)
          {
            sub_1E395DC44(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1E395DB4C(uint64_t a1)
{
  if (!qword_1EE289E30)
  {
    type metadata accessor for RentalExpirationPresenter(255);
    sub_1E395D6CC(qword_1EE251C00, type metadata accessor for RentalExpirationPresenter, &unk_1E42B63A8);
    v1 = sub_1E4200BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289E30);
    }
  }
}

void sub_1E395DBE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E395DC44(uint64_t a1)
{
  if (!qword_1EE289ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2ECF0, &qword_1E42AD558);
    v1 = sub_1E4200B94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289ED0);
    }
  }
}

unint64_t sub_1E395DCA8()
{
  result = qword_1EE2898B0;
  if (!qword_1EE2898B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2ECE8, &qword_1E42AD458);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2ECD8, &qword_1E42AD448);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2ECD0, &qword_1E42AD440);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2ECC8, &qword_1E42AD438);
    sub_1E41FE5D4();
    sub_1E395D584();
    sub_1E395D6CC(&qword_1EE28A458, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2898B0);
  }

  return result;
}

double sub_1E395DE4C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  if (swift_weakLoadStrong())
  {
    type metadata accessor for RentalPresenterWrapper(0);
    sub_1E395D6CC(&qword_1ECF2ECF8, type metadata accessor for RentalPresenterWrapper, &unk_1E42BD340);
    sub_1E4200514();

    sub_1E4200594();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_32(uint64_t a1)
{

  return swift_allocObject();
}

id sub_1E395DF10(uint64_t a1, uint64_t a2)
{
  sub_1E37E96A4();
  v4 = (*(a2 + 24))(a1, a2);
  v6 = sub_1E3C776A0(v4, v5);

  return v6;
}

char *sub_1E395DFD4()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI32GradientBackgroundDecorationView_gradientLayer) = 0;
  v15 = v0;
  v16 = type metadata accessor for GradientBackgroundDecorationView();
  v1 = OUTLINED_FUNCTION_2_0();
  v4 = objc_msgSendSuper2(v2, v3, v1);
  v5 = [v4 vuiLayer];
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {

      v5 = 0;
    }
  }

  v7 = *&v4[OBJC_IVAR____TtC8VideosUI32GradientBackgroundDecorationView_gradientLayer];
  *&v4[OBJC_IVAR____TtC8VideosUI32GradientBackgroundDecorationView_gradientLayer] = v5;

  sub_1E395E1F4(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF379F0, qword_1E42CC4A0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E4297BE0;
  *(v9 + 32) = sub_1E3280A90(0, &qword_1EE23AF90, 0x1E69DF7B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A00, &unk_1E429BBA0);
  v10 = sub_1E42062A4();

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14[4] = sub_1E395E36C;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1E3790FBC;
  v14[3] = &block_descriptor_31;
  v12 = _Block_copy(v14);

  [v4 vui:v10 registerForTraitChanges:v12 withHandler:?];
  _Block_release(v12);

  return v4;
}

void sub_1E395E1F4(uint64_t a1)
{
  v12 = [*sub_1E3E6011C() CGColor];
  v2 = [*sub_1E3E5FACC() CGColor];
  v3 = OBJC_IVAR____TtC8VideosUI32GradientBackgroundDecorationView_gradientLayer;
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI32GradientBackgroundDecorationView_gradientLayer);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1E4299720;
    type metadata accessor for CGColor();
    *(v5 + 32) = v12;
    *(v5 + 88) = v6;
    *(v5 + 56) = v6;
    *(v5 + 64) = v2;
    v7 = v12;
    v8 = v2;
    sub_1E38E2BE0(v5, v4);
    v9 = *(v1 + v3);
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1E429DCC0;
      sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
      v11 = v9;
      *(v10 + 32) = sub_1E4206F44();
      *(v10 + 40) = sub_1E4206F44();
      sub_1E38E2B5C(v10, v11);
    }
  }
}

void sub_1E395E36C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E395E1F4(Strong);
  }
}

void sub_1E395E3E0()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI32GradientBackgroundDecorationView_gradientLayer) = 0;
  sub_1E42076B4();
  __break(1u);
}

id sub_1E395E478()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GradientBackgroundDecorationView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E395E500(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  if (!a1)
  {

    v38 = 0u;
    v39 = 0u;
LABEL_9:
    sub_1E325F748(&v38, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_11;
  }

  v35 = 0x644970756F7267;
  v36 = 0xE700000000000000;

  sub_1E4207414();
  sub_1E375D7E8(a1, &v38, v37);

  v6 = sub_1E375D84C(v37);
  if (!*(&v39 + 1))
  {

    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_14_60(v6, v7, v8, MEMORY[0x1E69E6158], v9, v10, v11, v12, v32))
  {
    v13 = v37[1];
    v14 = &v2[OBJC_IVAR____TtC8VideosUI22VUIActionAppStoreOffer_groupId];
    *v14 = v37[0];
    *(v14 + 1) = v13;
    *&v38 = 0xD000000000000016;
    *(&v38 + 1) = 0x80000001E4268D90;

    sub_1E4207414();
    sub_1E375D7E8(a1, &v38, v37);

    v15 = sub_1E375D84C(v37);
    if (*(&v39 + 1))
    {
      if (OUTLINED_FUNCTION_14_60(v15, v16, v17, MEMORY[0x1E69E6370], v18, v19, v20, v21, v33))
      {
        v22 = v37[0];
LABEL_15:
        v2[OBJC_IVAR____TtC8VideosUI22VUIActionAppStoreOffer_requiresAuthentication] = v22;

        v26 = sub_1E3F0D38C(v25);
        v27 = &v2[OBJC_IVAR____TtC8VideosUI22VUIActionAppStoreOffer_defaultMessage];
        *v27 = v26;
        v27[1] = v28;
        v27[2] = v29;
        v27[3] = v30;
        v31 = sub_1E3F0D4D8(a1);

        *&v3[OBJC_IVAR____TtC8VideosUI22VUIActionAppStoreOffer_messagesByResult] = v31;
        v34.receiver = v3;
        v34.super_class = type metadata accessor for VUIActionAppStoreOffer();
        v23 = objc_msgSendSuper2(&v34, sel_init);

        return v23;
      }
    }

    else
    {
      sub_1E325F748(&v38, &unk_1ECF296E0, &unk_1E4298030);
    }

    v22 = 0;
    goto LABEL_15;
  }

LABEL_11:
  type metadata accessor for VUIActionAppStoreOffer();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1E395E770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1E327D33C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 32 * v4);

  return v6;
}

uint64_t sub_1E395E824()
{
  OUTLINED_FUNCTION_24();
  v1[23] = v2;
  v1[24] = v0;
  v3 = sub_1E41FFCB4();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();
  sub_1E4206434();
  v1[28] = sub_1E4206424();
  v5 = sub_1E42063B4();
  v1[29] = v5;
  v1[30] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E395E914, v5, v4);
}

uint64_t sub_1E395E914()
{
  OUTLINED_FUNCTION_134();
  if (TVAppFeature.isEnabled.getter(29, v1, v2))
  {
    if (v0[23])
    {
      v3 = sub_1E3D088A0();
      if (v3)
      {
        v4 = v3;
LABEL_6:
        v0[31] = v4;
        v5 = [v4 navigationController];
        v6 = v5;
        if (v5)
        {
          v7 = [v5 visibleViewController];

          if (v7)
          {
            type metadata accessor for DocumentViewController(0);
            v8 = swift_dynamicCastClass();
            v6 = v8;
            if (v8)
            {
              v9 = MEMORY[0x1E69E7D40];
              v10 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x408);
              v11 = v7;
              v12 = v10(0);
              (*((*v9 & *v6) + 0x418))(v12);
            }
          }

          else
          {
            v6 = 0;
          }
        }

        v0[32] = v6;
        v15 = v0[24];
        type metadata accessor for AppStoreWrapper();
        v16 = v15 + OBJC_IVAR____TtC8VideosUI22VUIActionAppStoreOffer_groupId;
        v17 = *(v15 + OBJC_IVAR____TtC8VideosUI22VUIActionAppStoreOffer_groupId);
        v0[33] = v17;
        v18 = *(v16 + 8);
        v0[34] = v18;
        v19 = swift_task_alloc();
        v0[35] = v19;
        *v19 = v0;
        v19[1] = sub_1E395EB80;

        return static AppStoreWrapper.presentOffer(with:from:)((v0 + 18), v17, v18, v4);
      }
    }

    v4 = [objc_opt_self() topMostVisibleViewController];
    if (v4)
    {
      goto LABEL_6;
    }
  }

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_1E395EB80()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *v1;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 288) = v0;

  v5 = *(v2 + 240);
  v6 = *(v2 + 232);
  if (v0)
  {
    v7 = sub_1E395EF5C;
  }

  else
  {
    v7 = sub_1E395ECB0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E395ECB0()
{
  OUTLINED_FUNCTION_134();
  sub_1E395F5EC(v0 + 18);
  sub_1E395F884((v0 + 18));
  v1 = v0[32];
  if (v1)
  {
    v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x408);
    v3 = v1;
    v2(1);
  }

  v0[2] = v0;
  OUTLINED_FUNCTION_3_78(v0 + 177);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ED10, &unk_1E42AD5A0);
  OUTLINED_FUNCTION_2_77(v4);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_1_99();
  OUTLINED_FUNCTION_12_53(v5, sel__finalizeWithSuccess_targetResponder_documentOptions_completion_);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E395EDE8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_37_2();
  *v1 = v0;
  v3 = *(v2 + 240);
  v4 = *(v2 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1E395EEE0, v4, v3);
}

uint64_t sub_1E395EEE0()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 256);

  v2 = *(v0 + 177);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1E395EF5C()
{
  v33 = v0;
  v1 = v0[36];
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = sub_1E324FBDC();
  (*(v3 + 16))(v2, v6, v4);
  v7 = v5;
  v8 = v1;
  v9 = sub_1E41FFC94();
  v10 = sub_1E42067F4();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[36];
  if (v11)
  {
    v13 = v0[33];
    v14 = v0[34];
    v15 = v0[26];
    v30 = v0[25];
    v31 = v0[27];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v16 = 136315394;
    *(v16 + 4) = sub_1E3270FC8(v13, v14, &v32);
    *(v16 + 12) = 2112;
    v19 = v12;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v20;
    *v17 = v20;
    _os_log_impl(&dword_1E323F000, v9, v10, "VUIActionAppStoreOffer:: error presenting offer %s: %@", v16, 0x16u);
    sub_1E325F748(v17, &unk_1ECF28E30, &qword_1E429E820);
    MEMORY[0x1E69143B0](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1E69143B0](v18, -1, -1);
    MEMORY[0x1E69143B0](v16, -1, -1);

    (*(v15 + 8))(v31, v30);
  }

  else
  {
    v22 = v0[26];
    v21 = v0[27];
    v23 = v0[25];

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[32];
  if (v24)
  {
    v25 = *((*MEMORY[0x1E69E7D40] & *v24) + 0x408);
    v26 = v24;
    v25(1);
  }

  v0[2] = v0;
  OUTLINED_FUNCTION_3_78(v0 + 177);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ED10, &unk_1E42AD5A0);
  OUTLINED_FUNCTION_2_77(v27);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_1_99();
  OUTLINED_FUNCTION_12_53(v28, sel__finalizeWithSuccess_targetResponder_documentOptions_completion_);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E395F248(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return sub_1E395F28C(v3, v2);
}

uint64_t sub_1E395F334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1E4206434();
  v3[5] = sub_1E4206424();
  v5 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E395F3D0, v5, v4);
}

uint64_t sub_1E395F3D0()
{
  OUTLINED_FUNCTION_27_2();
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v1;
  v5 = v3;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1E395F490;

  return sub_1E395E824();
}

uint64_t sub_1E395F490()
{
  OUTLINED_FUNCTION_134();
  v2 = v1;
  OUTLINED_FUNCTION_39();
  v4 = v3;
  OUTLINED_FUNCTION_37_2();
  *v5 = v4;
  v7 = v6[6];
  v8 = v6[4];
  v9 = v6[2];
  v10 = *v0;
  OUTLINED_FUNCTION_7();
  *v11 = v10;

  if (v7)
  {
    v12 = *(v4 + 48);
    v12[2](v12, v2 & 1);
    _Block_release(v12);
  }

  v13 = *(v10 + 8);

  return v13();
}

void sub_1E395F5EC(uint64_t *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI22VUIActionAppStoreOffer_messagesByResult);
  if (!v2)
  {
    v8 = 0;
    v6 = 0;
    goto LABEL_5;
  }

  v3 = a1[2];
  v4 = a1[3];
  v6 = sub_1E395E770(*a1, a1[1], *(v1 + OBJC_IVAR____TtC8VideosUI22VUIActionAppStoreOffer_messagesByResult));
  if (!v5)
  {
    v8 = sub_1E395E770(v3, v4, v2);
    if (v9)
    {
      v7 = v9;
      goto LABEL_9;
    }

LABEL_5:
    v7 = *(v1 + OBJC_IVAR____TtC8VideosUI22VUIActionAppStoreOffer_defaultMessage + 8);
    sub_1E395F9C4(*(v1 + OBJC_IVAR____TtC8VideosUI22VUIActionAppStoreOffer_defaultMessage), v7, *(v1 + OBJC_IVAR____TtC8VideosUI22VUIActionAppStoreOffer_defaultMessage + 16), *(v1 + OBJC_IVAR____TtC8VideosUI22VUIActionAppStoreOffer_defaultMessage + 24));
    sub_1E395F8D8(v8, 0);
    sub_1E395F8D8(v6, 0);
    if (!v7)
    {
      return;
    }

    goto LABEL_9;
  }

  v7 = v5;
LABEL_9:
  v10 = sub_1E4205ED4();

  objc_opt_self();
  OUTLINED_FUNCTION_7_32();
  v11 = sub_1E4205ED4();

  [v7 displayConfirmationUIWithTitle:v10 andBody:v11];
}

id sub_1E395F7E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIActionAppStoreOffer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E395F8D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1E395F91C()
{
  OUTLINED_FUNCTION_27_2();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E3286A7C;
  v2 = OUTLINED_FUNCTION_7_32();

  return v3(v2);
}

double sub_1E395F9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

double sub_1E395FA08(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 300.0;
  }

  return result;
}

double sub_1E395FA20(double a1)
{
  OUTLINED_FUNCTION_0_90();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ED18, qword_1E42AD5E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_1_100(v3, v8);
  v4 = sub_1E4200F34();
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    sub_1E395FC84(v1);
    return 0.0;
  }

  else
  {
    sub_1E4200EF4();
    v5 = v6;
    (*(*(v4 - 8) + 8))(v1, v4);
  }

  return v5;
}

uint64_t sub_1E395FB64@<X0>(uint64_t a1@<X8>)
{
  sub_1E4201044();
  sub_1E3960028();
  sub_1E42066B4();
  sub_1E4206724();
  if (v10[4] == v10[0])
  {
    v2 = sub_1E4200F34();
    v3 = a1;
    v4 = 1;
  }

  else
  {
    v5 = sub_1E4206764();
    v7 = v6;
    v8 = sub_1E4200F34();
    (*(*(v8 - 8) + 16))(a1, v7, v8);
    v5(v10, 0);
    v3 = a1;
    v4 = 0;
    v2 = v8;
  }

  return __swift_storeEnumTagSinglePayload(v3, v4, 1, v2);
}

uint64_t sub_1E395FC84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ED18, qword_1E42AD5E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E395FCEC(double a1, double a2, double a3, double a4, double a5)
{
  OUTLINED_FUNCTION_0_90();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ED18, qword_1E42AD5E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_1_100(v7, v10);
  v8 = sub_1E4200F34();
  if (__swift_getEnumTagSinglePayload(v5, 1, v8) == 1)
  {
    return sub_1E395FC84(v5);
  }

  sub_1E4203F04();
  sub_1E4200F04();
  return (*(*(v8 - 8) + 8))(v5, v8);
}

unint64_t sub_1E395FE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2611C8;
  if (!qword_1EE2611C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2611C8);
  }

  return result;
}

void (*sub_1E395FFA0(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1E42009D4();
  return sub_1E37BCF0C;
}

unint64_t sub_1E3960028()
{
  result = qword_1EE289D88;
  if (!qword_1EE289D88)
  {
    sub_1E4201044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289D88);
  }

  return result;
}

uint64_t sub_1E39600A8()
{
  v1 = [v0 layer];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

void sub_1E3960104(unint64_t a1)
{
  v2 = sub_1E39600A8();
  if (v2)
  {
    v3 = v2;
    if (a1)
    {
      sub_1E38E2988(a1);

      v4 = sub_1E42062A4();
    }

    else
    {
      v4 = 0;
    }

    [v3 setColors_];
  }

  else
  {
  }
}

void sub_1E39601D4(uint64_t a1)
{
  v2 = sub_1E39600A8();
  if (v2)
  {
    v3 = v2;
    if (a1)
    {
      sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
      v4 = sub_1E42062A4();
    }

    else
    {
      v4 = 0;
    }

    [v3 setLocations_];
  }

  else
  {
  }
}

void sub_1E39602B8()
{
  v0 = sub_1E39600A8();
  OUTLINED_FUNCTION_5_76(v0);
}

id sub_1E396030C(uint64_t a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  [v4 begin];
  [v4 setDisableActions_];
  OUTLINED_FUNCTION_3_11();
  v6 = (*(v5 + 1816))();
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = v6;
    v9 = *(v6 + 16);
    if (v9)
    {
      v36 = v4;
      v37 = MEMORY[0x1E69E7CC0];
      sub_1E4207574();
      v10 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
        v10 += 8;
        --v9;
      }

      while (v9);

      v4 = v36;
      v6 = v37;
      v7 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v6 = MEMORY[0x1E69E7CC0];
    }
  }

  sub_1E39601D4(v6);
  v11 = (*(*a1 + 1792))();
  if (v11)
  {
    v12 = v11;
    v13 = sub_1E32AE9B0(v11);
    if (v13)
    {
      v14 = v13;
      v37 = v7;
      result = sub_1E4207574();
      if (v14 < 0)
      {
        __break(1u);
        return result;
      }

      v36 = v4;
      v16 = 0;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1E6911E60](v16, v12);
        }

        else
        {
          v17 = *(v12 + 8 * v16 + 32);
        }

        v18 = v17;
        ++v16;
        v19 = [v17 CGColor];

        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
      }

      while (v14 != v16);

      v4 = v36;
      v11 = v37;
    }

    else
    {

      v11 = MEMORY[0x1E69E7CC0];
    }
  }

  sub_1E3960104(v11);
  [v2 setHidden_];
  OUTLINED_FUNCTION_3_11();
  v21 = (*(v20 + 1720))();
  v24 = OUTLINED_FUNCTION_1_101(v21, v22, v23);
  MEMORY[0x1EEE9AC00](v24);
  v35[2] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ED20, &unk_1E42AD6F0);
  sub_1E4148DE0(sub_1E39607B8);
  OUTLINED_FUNCTION_3_11();
  v26 = (*(v25 + 1744))();
  v29 = OUTLINED_FUNCTION_1_101(v26, v27, v28);
  MEMORY[0x1EEE9AC00](v29);
  v35[-2] = v2;
  sub_1E4148DE0(sub_1E39607C4);
  OUTLINED_FUNCTION_3_11();
  v31 = (*(v30 + 1768))();
  if (v31 == 5)
  {
    v32 = *MEMORY[0x1E6979DA0];
  }

  else
  {
    v32 = sub_1E40C2190(v31);
  }

  v33 = v32;
  v34 = sub_1E39600A8();
  [v34 setType_];

  return [v4 commit];
}

void sub_1E39607D0()
{
  [*(v0 + 16) vuiIsRTL];
  v1 = sub_1E39600A8();
  OUTLINED_FUNCTION_5_76(v1);
}

uint64_t sub_1E3960868(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 288, a2);
  v3 = *(v2 + 288);
  if (!v3)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8();
  v5 = *(v4 + 880);

  v7 = v5(v6);
  if ((v8 & 1) != 0 || (v9 = v7) == 0 || ((v10 = sub_1E32AE9B0(v3), v10 >= 1) ? (v11 = v9 >= v10) : (v11 = 1), v11))
  {

LABEL_10:
    v12 = *(v2 + 288);

    return v12;
  }

  sub_1E37EFABC(0, v3);
  sub_1E37EFABC(v9, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    type metadata accessor for ViewModel();

    v14 = 0;
    do
    {
      v15 = v14 + 1;
      sub_1E42074F4();
      v14 = v15;
    }

    while (v9 != v15);
    if (v3 >> 62)
    {

      v16 = sub_1E4207704();
      v18 = v17;
      v20 = v19;
      v22 = v21;

      goto LABEL_19;
    }
  }

  else
  {
  }

  v20 = 0;
  v16 = v3 & 0xFFFFFFFFFFFFFF8;
  v18 = v16 + 32;
  v22 = (2 * v9) | 1;
LABEL_19:
  if ((v22 & 1) == 0)
  {
LABEL_20:
    sub_1E38FE8D0(v16, v18, v20, v22);
    v12 = v23;
LABEL_27:
    swift_unknownObjectRelease();
    return v12;
  }

  sub_1E42079E4();
  swift_unknownObjectRetain_n();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x1E69E7CC0];
  }

  v25 = *(v24 + 16);

  if (__OFSUB__(v22 >> 1, v20))
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v25 != (v22 >> 1) - v20)
  {
LABEL_29:
    swift_unknownObjectRelease_n();
    goto LABEL_20;
  }

  v12 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v12)
  {
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  return v12;
}

void *sub_1E3960A88(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1E4207384();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1E37FEA14(v4, 0);
      sub_1E3798230((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_1E3960B48(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  result = OUTLINED_FUNCTION_14_0(v2 + 248, a2);
  *(v2 + 248) = a1;
  *(v2 + 256) = v3 & 1;
  return result;
}

double sub_1E3960C0C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 264, a2);
  *(v2 + 264) = a1;

  return result;
}

double sub_1E3960C74(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 272, a2);
  *(v2 + 272) = a1;

  return result;
}

uint64_t (*sub_1E3960CEC(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  OUTLINED_FUNCTION_8();
  *a1 = (*(v3 + 872))();
  return sub_1E3960D58;
}

uint64_t sub_1E3960D58(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return ViewModel.children.setter(*a1);
  }

  ViewModel.children.setter(v2);
}

uint64_t sub_1E3960E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  OUTLINED_FUNCTION_4_76();
  *(v3 + 280) = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];

  v7 = sub_1E39BEDCC(v6, a2, a3);
  if (v7)
  {
    OUTLINED_FUNCTION_8();
    v9 = *(v8 + 1008);

    v9(v10);
  }

  return v7;
}

void *sub_1E3960F08()
{
  OUTLINED_FUNCTION_1_102();
  swift_allocObject();
  OUTLINED_FUNCTION_7_80();
  return sub_1E3960F68();
}

void *sub_1E3960F68()
{
  OUTLINED_FUNCTION_1_102();
  OUTLINED_FUNCTION_4_76();
  *(v1 + 280) = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];

  OUTLINED_FUNCTION_7_80();
  v4 = sub_1E39C0300();
  v5 = v4;
  if (v4)
  {
    OUTLINED_FUNCTION_3_0(v4 + 264, v10);
    v5[33] = v2;

    OUTLINED_FUNCTION_3_0((v5 + 34), v9);
    v5[34] = v0;

    v6 = sub_1E39610A4(v3);

    OUTLINED_FUNCTION_14_0((v5 + 36), v7);
    v5[36] = v6;
  }

  else
  {
  }

  return v5;
}

uint64_t sub_1E39610A4(unint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_8();
  v5 = (*(v4 + 624))();
  if (!v5 || (v6 = (*(*v5 + 264))(), v8 = v7, , !v8))
  {

    v8 = 0x80000001E4268F10;
    v6 = 0xD000000000000011;
  }

  v10 = MEMORY[0x1E69E7CC0];

  sub_1E3961C58(a1, v2, v6, v8, &v10);

  return v10;
}

unint64_t sub_1E39611B8()
{
  OUTLINED_FUNCTION_8();
  v1 += 84;
  v2 = *v1;
  v3 = (*v1)();
  v4 = sub_1E3DD55E0(24, v3, v0);

  OUTLINED_FUNCTION_3_0((v0 + 33), v12);
  v0[33] = v4;

  v6 = (v2)(v5);
  v7 = sub_1E3DD55E0(25, v6, v0);

  OUTLINED_FUNCTION_3_0((v0 + 34), v11);
  v0[34] = v7;

  result = ViewModel.children.getter();
  if (result)
  {
    v9 = sub_1E39610A4(result);

    OUTLINED_FUNCTION_14_0((v0 + 36), v10);
    v0[36] = v9;
  }

  return result;
}

uint64_t sub_1E39612C0(uint64_t a1)
{
  v2 = v1[3];
  v3 = *(a1 + 24);
  v4 = (v2 | v3) == 0;
  if (v2 && v3)
  {
    if (v1[2] == *(a1 + 16) && v2 == v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_1E42079A4();
    }
  }

  v6 = swift_dynamicCastClass();
  v7 = 0;
  if (v6)
  {
    if (v4)
    {
      v8 = v6;
      swift_beginAccess();
      v9 = v1[36];
      swift_beginAccess();
      v10 = *(v8 + 288);
      v7 = (v9 | v10) == 0;
      if (v9)
      {
        if (v10)
        {

          v7 = sub_1E38BBA04(v11, v10);
        }
      }
    }
  }

  return v7 & 1;
}

unint64_t sub_1E3961404(unint64_t a1)
{
  v2 = sub_1E39610A4(a1);
  OUTLINED_FUNCTION_14_0(v1 + 288, v3);
  if (*(v1 + 288) && sub_1E32AE9B0(v2))
  {

    v7 = sub_1E3960A88(v4);

    sub_1E379738C(v5);
    *(v1 + 288) = v7;
  }

  return v2;
}

uint64_t sub_1E396148C()
{
  OUTLINED_FUNCTION_8();
  if (!(*(v0 + 1032))(sub_1E37ECDC0))
  {
    return 0;
  }

  v2 = v1;

  return v2;
}

void sub_1E3961510(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_14_0(v2 + 288, a2);
  v5 = *(v2 + 288);
  if (v5)
  {
    v6 = sub_1E32AE9B0(*(v2 + 288));
    v7 = v5 & 0xFFFFFFFFFFFFFF8;
    swift_bridgeObjectRetain_n();
    v8 = 0;
    while (1)
    {
      if (v6 == v8)
      {
        swift_bridgeObjectRelease_n();
        return;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E6911E60](v8, v5);
      }

      else
      {
        if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = a1(v9);

      if (v10)
      {

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v5 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          v5 = sub_1E37EFA58(v5);
          v7 = v5 & 0xFFFFFFFFFFFFFF8;
        }

        v13 = *(v7 + 16);
        if (v13 > v8)
        {
          v14 = v13 - 1;
          v15 = v7 + 8 * v8;
          v16 = *(v15 + 32);
          memmove((v15 + 32), (v15 + 40), 8 * (v13 - v8) - 8);
          *(v7 + 16) = v14;
          *(v3 + 288) = v5;

          if (*(v16 + 24))
          {
            v17 = *(v3 + 280);

            v18 = v17;
            v19 = sub_1E4205ED4();

            [v18 removeObject_];
          }

          return;
        }

LABEL_23:
        __break(1u);
        return;
      }

      if (__OFADD__(v8++, 1))
      {
        goto LABEL_22;
      }
    }
  }
}

void sub_1E39616E0(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_1E32AE9B0(a1);
  v5 = 0;
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E6911E60](v5, a1);
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = a2(v6);

    if (v2 || (v7 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1E39617DC(unint64_t a1, unint64_t a2)
{
  v4 = sub_1E3960DB0(v7);
  if (*v5)
  {
    sub_1E3961854(a1, a2);
  }

  return (v4)(v7, 0);
}

void sub_1E3961854(unint64_t a1, unint64_t a2)
{
  if (a1 != a2)
  {
    v5 = *v2;
    v6 = *v2 & 0xC000000000000001;
    sub_1E34AF4E4(a1, v6 == 0, *v2);
    if (v6)
    {
      v7 = MEMORY[0x1E6911E60](a1, v5);
    }

    else
    {
      v7 = *(v5 + 8 * a1 + 32);
    }

    sub_1E34AF4E4(a2, v6 == 0, v5);
    if (v6)
    {
      v8 = MEMORY[0x1E6911E60](a2, v5);
    }

    else
    {
      v8 = *(v5 + 8 * a2 + 32);
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
    {
      v5 = sub_1E37EFA58(v5);
      v9 = (v5 >> 62) & 1;
    }

    else
    {
      LODWORD(v9) = 0;
    }

    v10 = v5 & 0xFFFFFFFFFFFFFF8;
    *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = v8;

    if ((v5 & 0x8000000000000000) != 0 || v9)
    {
      v5 = sub_1E37EFA58(v5);
      v10 = v5 & 0xFFFFFFFFFFFFFF8;
      if ((a2 & 0x8000000000000000) == 0)
      {
LABEL_15:
        if (*(v10 + 16) > a2)
        {
          *(v10 + 8 * a2 + 32) = v7;

          *v2 = v5;
          return;
        }

LABEL_21:
        __break(1u);
        return;
      }
    }

    else if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_21;
  }
}

void sub_1E3961998(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  OUTLINED_FUNCTION_3_0(v2 + 288, v22);
  v20 = v2;
  v4 = *(v2 + 288);
  if (!v4)
  {
    return;
  }

  v23 = *(v2 + 288);
  v21 = MEMORY[0x1E69E7CC0];
  v5 = sub_1E32AE9B0(v4);
  swift_bridgeObjectRetain_n();
  for (i = 0; v5 != i; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E6911E60](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (a1(v7))
    {
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
    }

    else
    {
    }
  }

  v8 = sub_1E32AE9B0(v21);
  for (j = 0; v8 != j; ++j)
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](j, v21);
    }

    else
    {
      if (j >= *(v21 + 16))
      {
        goto LABEL_31;
      }
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_30;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
    sub_1E4148DE0(sub_1E3963270);
  }

  sub_1E3962434(&v23, a1);
  v11 = v10;
  v12 = v23;
  v13 = sub_1E32AE9B0(v23);
  v14 = v13 - v11;
  if (v13 < v11)
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v15 = v13;
  if (sub_1E32AE9B0(v12) < v13)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v16 = __OFSUB__(0, v14);
  v17 = -v14;
  if (v16)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v18 = sub_1E32AE9B0(v12);
  v16 = __OFADD__(v18, v17);
  v19 = v18 + v17;
  if (!v16)
  {
    sub_1E3797CDC(v19, 1);
    sub_1E3882B54(v11, v15, 0);
    *(v20 + 288) = v23;

    return;
  }

LABEL_36:
  __break(1u);
}

void sub_1E3961C58(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v9 = sub_1E32AE9B0(a1);
  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {

LABEL_12:

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v11 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v14 = v11;
    sub_1E3961FCC(&v14, a2, a3, a4, a5);
    if (v13)
    {

      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_1E3961D6C(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v5 = sub_1E3960DB0(v7);
  if (*v4)
  {
    sub_1E3961DE8(v4, a1, a2);
  }

  return (v5)(v7, 0);
}

void sub_1E3961DE8(unint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_1E37EFA58(v6);
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
  v8[1] = v7;
  sub_1E3962684(v8, a2, a3);
  *a1 = v6;
}

uint64_t sub_1E3961E78(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_14_0(v2 + 288, a2);

  v6 = a1(v5);

  *(v3 + 288) = v6;
}

uint64_t sub_1E3961F14()
{
}

uint64_t sub_1E3961F54(uint64_t a1)
{
  v1 = ViewModel.deinit();

  return v1;
}

uint64_t sub_1E3961F9C(uint64_t a1)
{
  v1 = sub_1E3961F54(a1);

  return MEMORY[0x1EEE6BDC0](v1, 296, 7);
}

void sub_1E3961FCC(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v10 = sub_1E41FFCB4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v17 = *a1;
  v18 = *(*a1 + 24);
  if (v18)
  {
    v42 = a3;
    v43 = v10;
    v44 = a4;
    v19 = *(v17 + 16);
    v20 = *(a2 + 280);
    v21 = sub_1E4205ED4();
    v22 = [v20 containsObject_];

    if (v22)
    {
      v41 = v19;
      v23 = sub_1E324FBDC();
      v24 = v43;
      (*(v11 + 16))(v16, v23, v43);

      v25 = v44;

      v26 = sub_1E41FFC94();
      v27 = sub_1E42067E4();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v28 = 136315394;
        *(v28 + 4) = sub_1E3270FC8(v41, v18, &v45);
        *(v28 + 12) = 2080;
        *(v28 + 14) = sub_1E3270FC8(v42, v25, &v45);
        _os_log_impl(&dword_1E323F000, v26, v27, "CollectionGroup: Duplicate item %s in Collection %s", v28, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v11 + 8))(v16, v24);
    }

    else
    {

      MEMORY[0x1E6910BF0](v37);
      sub_1E38C5A18(*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1E4206324();
      v38 = *(a2 + 280);
      v44 = sub_1E4205ED4();
      [v38 addObject_];

      v39 = v44;
    }
  }

  else
  {
    v29 = sub_1E324FBDC();
    (*(v11 + 16))(v13, v29, v10);

    v30 = sub_1E41FFC94();
    v31 = sub_1E42067E4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = a4;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = a3;
      v36 = v34;
      v45 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_1E3270FC8(v35, v32, &v45);
      _os_log_impl(&dword_1E323F000, v30, v31, "CollectionGroup: Item without identifier in Collection %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1E39623D8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for ViewModel();
      result = sub_1E4206314();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

void sub_1E3962434(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v5 = *a1;
  sub_1E39616E0(*a1, a2);
  if (!v2)
  {
    if (v7)
    {
      sub_1E32AE9B0(v5);
    }

    else
    {
      v8 = v6;
      v18 = a1;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_47:
        __break(1u);
      }

      else
      {
        while (1)
        {
          v10 = v5 >> 62 ? sub_1E4207384() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v9 == v10)
          {
            break;
          }

          if ((v5 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x1E6911E60](v9, v5);
          }

          else
          {
            if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_39;
            }

            if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_40;
            }

            v11 = *(v5 + 8 * v9 + 32);
          }

          v12 = a2(v11);

          if ((v12 & 1) == 0)
          {
            if (v8 != v9)
            {
              if ((v5 & 0xC000000000000001) != 0)
              {
                v19 = MEMORY[0x1E6911E60](v8, v5);
                v13 = MEMORY[0x1E6911E60](v9, v5);
              }

              else
              {
                if ((v8 & 0x8000000000000000) != 0)
                {
                  goto LABEL_44;
                }

                v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v8 >= v14)
                {
                  goto LABEL_45;
                }

                if (v9 >= v14)
                {
                  goto LABEL_46;
                }

                v13 = *(v5 + 32 + 8 * v9);
                v19 = *(v5 + 32 + 8 * v8);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
              {
                v5 = sub_1E37EFA58(v5);
                v15 = (v5 >> 62) & 1;
              }

              else
              {
                LODWORD(v15) = 0;
              }

              v16 = v5 & 0xFFFFFFFFFFFFFF8;
              *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v13;

              if ((v5 & 0x8000000000000000) != 0 || v15)
              {
                v5 = sub_1E37EFA58(v5);
                v16 = v5 & 0xFFFFFFFFFFFFFF8;
                if ((v9 & 0x8000000000000000) != 0)
                {
LABEL_38:
                  __break(1u);
LABEL_39:
                  __break(1u);
LABEL_40:
                  __break(1u);
LABEL_41:
                  __break(1u);
LABEL_42:
                  __break(1u);
LABEL_43:
                  __break(1u);
LABEL_44:
                  __break(1u);
LABEL_45:
                  __break(1u);
LABEL_46:
                  __break(1u);
                  goto LABEL_47;
                }
              }

              else if ((v9 & 0x8000000000000000) != 0)
              {
                goto LABEL_38;
              }

              if (v9 >= *(v16 + 16))
              {
                goto LABEL_43;
              }

              *(v16 + 8 * v9 + 32) = v19;

              *v18 = v5;
            }

            v17 = __OFADD__(v8++, 1);
            if (v17)
            {
              goto LABEL_42;
            }
          }

          v17 = __OFADD__(v9++, 1);
          if (v17)
          {
            goto LABEL_41;
          }
        }
      }
    }
  }
}

void sub_1E3962684(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = a1[1];
  v7 = sub_1E4207914();
  if (v7 < v6)
  {
    v8 = v7;
    v9 = sub_1E39623D8(v6 / 2);
    v11[0] = v10;
    v11[1] = (v6 / 2);
    sub_1E3962884(v11, v12, a1, v8, a2);
    if (v3)
    {
      if (v6 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v6 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v6)
  {
    sub_1E3962784(0, v6, 1, a1, a2);
  }
}

void sub_1E3962784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (a3 != a2)
  {
    v7 = *a4;
    v8 = (*a4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_4:
    v18 = a3;
    v10 = *(v7 + 8 * a3);
    v16 = v9;
    v17 = v8;
    while (1)
    {
      v11 = *v8;

      v12 = a5(v10, v11);

      if (v5)
      {
        break;
      }

      if (v12)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v13 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v13;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v18 + 1;
      v8 = v17 + 1;
      v9 = v16 - 1;
      if (v18 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1E3962884(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = v5;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v103 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_97;
    }

    goto LABEL_138;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *a3;
      v12 = *(*a3 + 8 * v8);
      v13 = *(*a3 + 8 * v10);

      LODWORD(v103) = a5(v12, v13);
      if (v6)
      {
LABEL_106:

        return;
      }

      __dst = v9;

      v94 = 8 * v10;
      v14 = (v11 + 8 * v10 + 16);
      v97 = v10;
      v15 = v10 + 2;
      while (1)
      {
        v16 = v15;
        if (v8 + 1 >= v7)
        {
          break;
        }

        v17 = v7;
        v18 = *(v14 - 1);
        v19 = *v14;

        v20 = a5(v19, v18);

        v21 = v103 ^ v20;
        ++v14;
        ++v8;
        v15 = v16 + 1;
        v7 = v17;
        if (v21)
        {
          goto LABEL_10;
        }
      }

      v8 = v7;
LABEL_10:
      if (v103)
      {
        v22 = v97;
        if (v8 < v97)
        {
          goto LABEL_132;
        }

        v9 = __dst;
        if (v97 >= v8)
        {
          v10 = v97;
          goto LABEL_25;
        }

        if (v7 >= v16)
        {
          v23 = v16;
        }

        else
        {
          v23 = v7;
        }

        v24 = 8 * v23 - 8;
        v25 = v8;
        v26 = v94;
        do
        {
          if (v22 != --v25)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_136;
            }

            v28 = *(v27 + v26);
            *(v27 + v26) = *(v27 + v24);
            *(v27 + v24) = v28;
          }

          ++v22;
          v24 -= 8;
          v26 += 8;
        }

        while (v22 < v25);
      }

      else
      {
        v9 = __dst;
      }

      v10 = v97;
    }

LABEL_25:
    v29 = a3[1];
    if (v8 >= v29)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_128;
    }

    if (v8 - v10 >= a4)
    {
      goto LABEL_34;
    }

    if (__OFADD__(v10, a4))
    {
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      return;
    }

    if (v10 + a4 >= v29)
    {
      v30 = a3[1];
    }

    else
    {
      v30 = v10 + a4;
    }

    if (v30 < v10)
    {
      goto LABEL_131;
    }

    if (v8 != v30)
    {
      __dstb = v9;
      v76 = v10;
      v77 = *a3;
      v78 = (*a3 + 8 * v8 - 8);
      v98 = v76;
      v79 = v76 - v8;
      v93 = v30;
      do
      {
        v80 = *(v77 + 8 * v8);
        v95 = v79;
        v103 = v78;
        do
        {
          v81 = *v78;

          v82 = a5(v80, v81);
          if (v6)
          {
            goto LABEL_106;
          }

          v83 = v82;

          if ((v83 & 1) == 0)
          {
            break;
          }

          if (!v77)
          {
            goto LABEL_135;
          }

          v84 = *v78;
          v80 = v78[1];
          *v78 = v80;
          v78[1] = v84;
          --v78;
        }

        while (!__CFADD__(v79++, 1));
        ++v8;
        v78 = (v103 + 8);
        v79 = v95 - 1;
      }

      while (v8 != v93);
      v8 = v93;
      v9 = __dstb;
      v10 = v98;
    }

LABEL_34:
    if (v8 < v10)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1E37FFF70(0, *(v9 + 2) + 1, 1, v9);
    }

    v32 = *(v9 + 2);
    v31 = *(v9 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v9 = sub_1E37FFF70((v31 > 1), v32 + 1, 1, v9);
    }

    *(v9 + 2) = v33;
    v34 = v9 + 32;
    v35 = &v9[16 * v32 + 32];
    *v35 = v10;
    *(v35 + 1) = v8;
    __dsta = *a1;
    if (!*a1)
    {
      goto LABEL_137;
    }

    if (v32)
    {
      break;
    }

LABEL_83:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_95;
    }
  }

  while (1)
  {
    v36 = v33 - 1;
    v37 = &v34[16 * v33 - 16];
    v38 = &v9[16 * v33];
    if (v33 >= 4)
    {
      v43 = &v34[16 * v33];
      v44 = *(v43 - 8);
      v45 = *(v43 - 7);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_115;
      }

      v48 = *(v43 - 6);
      v47 = *(v43 - 5);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_116;
      }

      v50 = *(v38 + 1);
      v51 = v50 - *v38;
      if (__OFSUB__(v50, *v38))
      {
        goto LABEL_118;
      }

      v49 = __OFADD__(v41, v51);
      v52 = v41 + v51;
      if (v49)
      {
        goto LABEL_121;
      }

      if (v52 >= v46)
      {
        v66 = *v37;
        v65 = *(v37 + 1);
        v49 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v49)
        {
          goto LABEL_126;
        }

        if (v41 < v67)
        {
          v36 = v33 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_54;
    }

    if (v33 == 3)
    {
      v39 = *(v9 + 4);
      v40 = *(v9 + 5);
      v49 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      v42 = v49;
LABEL_54:
      if (v42)
      {
        goto LABEL_117;
      }

      v54 = *v38;
      v53 = *(v38 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v58 = *(v37 + 1);
      v59 = v58 - *v37;
      if (__OFSUB__(v58, *v37))
      {
        goto LABEL_123;
      }

      if (__OFADD__(v56, v59))
      {
        goto LABEL_125;
      }

      if (v56 + v59 >= v41)
      {
        if (v41 < v59)
        {
          v36 = v33 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_69;
    }

    if (v33 < 2)
    {
      goto LABEL_119;
    }

    v61 = *v38;
    v60 = *(v38 + 1);
    v49 = __OFSUB__(v60, v61);
    v56 = v60 - v61;
    v57 = v49;
LABEL_69:
    if (v57)
    {
      goto LABEL_122;
    }

    v63 = *v37;
    v62 = *(v37 + 1);
    v49 = __OFSUB__(v62, v63);
    v64 = v62 - v63;
    if (v49)
    {
      goto LABEL_124;
    }

    if (v64 < v56)
    {
      goto LABEL_83;
    }

LABEL_76:
    if (v36 - 1 >= v33)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_133;
    }

    v68 = &v34[16 * v36 - 16];
    v69 = *v68;
    v70 = v36;
    v71 = &v34[16 * v36];
    v72 = *(v71 + 1);
    sub_1E3962F58((*a3 + 8 * *v68), (*a3 + 8 * *v71), (*a3 + 8 * v72), __dsta, a5);
    if (v6)
    {
      goto LABEL_105;
    }

    if (v72 < v69)
    {
      goto LABEL_109;
    }

    v103 = 0;
    v6 = v34;
    v73 = v8;
    v74 = v9;
    v9 = *(v9 + 2);
    if (v70 > v9)
    {
      goto LABEL_110;
    }

    *v68 = v69;
    *(v68 + 1) = v72;
    if (v70 >= v9)
    {
      goto LABEL_111;
    }

    v33 = (v9 - 1);
    memmove(v71, v71 + 16, 16 * &v9[-v70 - 1]);
    *(v74 + 2) = v9 - 1;
    v75 = v9 > 2;
    v9 = v74;
    v8 = v73;
    v34 = v6;
    v6 = 0;
    if (!v75)
    {
      goto LABEL_83;
    }
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
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
  v9 = sub_1E37FFF5C(v9);
LABEL_97:
  v86 = v9 + 16;
  v87 = *(v9 + 2);
  while (v87 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_134;
    }

    v88 = v9;
    v89 = &v9[16 * v87];
    v9 = *v89;
    v90 = &v86[2 * v87];
    v91 = v90[1];
    sub_1E3962F58((*a3 + 8 * *v89), (*a3 + 8 * *v90), (*a3 + 8 * v91), v103, a5);
    if (v6)
    {
      break;
    }

    if (v91 < v9)
    {
      goto LABEL_112;
    }

    if (v87 - 2 >= *v86)
    {
      goto LABEL_113;
    }

    *v89 = v9;
    *(v89 + 1) = v91;
    v92 = *v86 - v87;
    if (*v86 < v87)
    {
      goto LABEL_114;
    }

    v87 = *v86 - 1;
    memmove(v90, v90 + 2, 16 * v92);
    *v86 = v87;
    v9 = v88;
  }

LABEL_105:
}

uint64_t sub_1E3962F58(char *a1, char *__src, char *a3, char *__dst, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = __dst;
  v7 = a3;
  v8 = __src;
  v9 = (__src - a1) / 8;
  v10 = (a3 - __src) / 8;
  if (v9 < v10)
  {
    if (__dst != a1 || &a1[8 * v9] <= __dst)
    {
      memmove(__dst, a1, 8 * v9);
    }

    v12 = (v6 + 8 * v9);
    for (i = a1; ; i += 8)
    {
      if (v6 >= v12 || v8 >= v7)
      {
        v8 = i;
        goto LABEL_40;
      }

      v15 = *v8;
      v16 = v6;
      v17 = *v6;

      v18 = a5(v15, v17);
      if (v5)
      {

        v38 = (v12 - v6) / 8;
        v39 = i < v6 || i >= v6 + 8 * v38;
        if (v39 || i != v6)
        {
          memmove(i, v6, 8 * v38);
        }

        return 1;
      }

      v19 = v18;

      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = v8;
      v21 = i == v8++;
      v6 = v16;
      if (!v21)
      {
        goto LABEL_18;
      }

LABEL_19:
      ;
    }

    v20 = v16;
    v6 = (v16 + 1);
    if (i == v16)
    {
      goto LABEL_19;
    }

LABEL_18:
    *i = *v20;
    goto LABEL_19;
  }

  if (__dst != __src || &__src[8 * v10] <= __dst)
  {
    memmove(__dst, __src, 8 * v10);
  }

  v12 = (v6 + 8 * v10);
  v23 = -v6;
  v24 = a1;
  v42 = -v6;
  v43 = v6;
LABEL_26:
  v25 = v8 - 1;
  v7 -= 8;
  v26 = v12 + v23;
  for (j = v8; ; v8 = j)
  {
    if (v12 <= v6 || v8 <= v24)
    {
LABEL_40:
      v33 = (v12 - v6) / 8;
      v34 = v8 < v6 || v8 >= v6 + 8 * v33;
      if (v34 || v8 != v6)
      {
        v35 = 8 * v33;
        v36 = v8;
        v37 = v6;
LABEL_59:
        memmove(v36, v37, v35);
        return 1;
      }

      return 1;
    }

    v46 = v26;
    v28 = *(v12 - 1);
    v29 = v25;
    v30 = *v25;

    v31 = a5(v28, v30);

    if (v5)
    {
      break;
    }

    v32 = v7 + 8;
    if (v31)
    {
      v6 = v43;
      v24 = a1;
      v8 = v29;
      v23 = v42;
      if (v32 != j)
      {
        *v7 = *v29;
        v8 = v29;
      }

      goto LABEL_26;
    }

    v25 = v29;
    if (v12 != v32)
    {
      *v7 = *(v12 - 1);
    }

    v7 -= 8;
    v24 = a1;
    v26 = v46 - 8;
    --v12;
    v6 = v43;
  }

  v37 = v43;
  v36 = j;
  v40 = j < v43 || j >= &v43[v46 / 8];
  if (v40 || j != v43)
  {
    v35 = 8 * (v46 / 8);
    goto LABEL_59;
  }

  return 1;
}

void sub_1E3963270()
{
  v2 = *(v0 + 280);
  v1 = sub_1E4205ED4();
  [v2 removeObject_];
}

uint64_t sub_1E396330C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlayerStatsViewModel(0);
  OUTLINED_FUNCTION_1_103();
  sub_1E39699C0(v4);

  v5 = sub_1E42010C4();
  if (!a2)
  {
    v6 = (*(*a1 + 392))();
    if (!v6)
    {
LABEL_5:
      type metadata accessor for PlayerStatsLayout();
      sub_1E4048408();
      goto LABEL_6;
    }

    if (*v6 != _TtC8VideosUI17PlayerStatsLayout)
    {

      goto LABEL_5;
    }
  }

LABEL_6:
  type metadata accessor for PlayerStatsLayout();
  OUTLINED_FUNCTION_0_91();
  sub_1E39699C0(v7);
  sub_1E42010C4();

  return v5;
}

uint64_t sub_1E396347C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getKeyPath();
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = a1;
  v14[7] = a2;
  v14[8] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD0, &qword_1E4297FE0);
  v15 = sub_1E37432DC();
  sub_1E3969288(v15, v16, v17);
  return sub_1E4203B34();
}

uint64_t sub_1E39635A8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ED38, &qword_1E42AD760);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_124();
  sub_1E39636E8();
  (*(*a1 + 176))(v18);
  if (v19)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v13.n128_u64[0] = v18[2];
    v14.n128_u64[0] = v18[3];
    v11.n128_u64[0] = v18[0];
    v12.n128_u64[0] = v18[1];
    j_nullsub_1(v11, v12, v13, v14);
  }

  OUTLINED_FUNCTION_3();
  v15 = sub_1E4202734();
  sub_1E3741EA0(v2, a2, &qword_1ECF2ED38, &qword_1E42AD760);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ED40, &qword_1E42AD768);
  v17 = a2 + *(result + 36);
  *v17 = v15;
  *(v17 + 8) = v3;
  *(v17 + 16) = v4;
  *(v17 + 24) = v5;
  *(v17 + 32) = v6;
  *(v17 + 40) = 0;
  return result;
}

void sub_1E39636E8()
{
  OUTLINED_FUNCTION_31_1();
  v106 = v2;
  v105 = v3;
  v104 = v4;
  v111 = v5;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EDD8, &qword_1E42ADAA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v7);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EF00, &qword_1E42ADD68);
  OUTLINED_FUNCTION_0_10();
  v98 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v10);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EDC0, &qword_1E42ADA98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EF08, &qword_1E42ADD70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v88 - v15;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EF10, &qword_1E42ADD78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v109 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ED80, &qword_1E42ADA70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_21_3();
  v103 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v102 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v24 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EF18, &qword_1E42ADD80);
  v26 = OUTLINED_FUNCTION_17_2(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v88 - v28;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EDA8, &unk_1E42ADA88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_26_2();
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EF20, &qword_1E42ADD88);
  OUTLINED_FUNCTION_0_10();
  v92 = v31;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_20_1();
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ED90, &qword_1E42ADA78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v34);
  OUTLINED_FUNCTION_36();
  (*(v35 + 848))(v112);
  if (v115 == 255)
  {
    swift_storeEnumTagMultiPayload();
    sub_1E3967A30();
    sub_1E4201F44();
  }

  else
  {
    v88[1] = v19;
    v88[2] = v13;
    v89 = v1;
    v90 = v16;
    if (v115)
    {
      v36 = v94;
      sub_1E396461C();
      v37 = v101;
      sub_1E4202484();
      v38 = sub_1E3967E14(&unk_1ECF2EDE0);
      v39 = v95;
      v40 = v96;
      sub_1E4203224();
      OUTLINED_FUNCTION_15_5();
      v41(v37, v103);
      sub_1E325F69C(v36, &qword_1ECF2EDD8);
      v116 = v40;
      v117 = v38;
      OUTLINED_FUNCTION_15_10();
      swift_getOpaqueTypeConformance2();
      v42 = v100;
      v43 = v99;
      sub_1E4202EA4();

      OUTLINED_FUNCTION_15_5();
      v45.n128_f64[0] = v44(v39, v43);
      *(v42 + *(v110 + 36)) = sub_1E417F854(v45);
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v46, v47, v48, v49);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_20_47();
      sub_1E3967B14(v50);
      OUTLINED_FUNCTION_19_42();
      OUTLINED_FUNCTION_21_1();
      sub_1E3967B14(v51);
      v52 = v89;
      sub_1E4201F44();
      sub_1E3743538(v52, v90, &qword_1ECF2ED80, &qword_1E42ADA70);
      swift_storeEnumTagMultiPayload();
      sub_1E3967A30();
      sub_1E4201F44();
      v53 = OUTLINED_FUNCTION_8_6();
      sub_1E325F69C(v53, v54);
      OUTLINED_FUNCTION_21_1();
    }

    else
    {
      v116 = v112[0];
      v117 = v112[1];
      v118 = v112[2];
      v119 = v113;
      v120 = v114;
      *v0 = sub_1E4201B84();
      *(v0 + 8) = 0;
      *(v0 + 16) = 0;
      v57 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EF28, &qword_1E42ADD90) + 44);
      *v29 = sub_1E4201D54();
      *(v29 + 1) = 0;
      v29[16] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EF30, &qword_1E42ADD98);
      sub_1E3964174();
      OUTLINED_FUNCTION_21_1();
      sub_1E3743538(v58, v59, v60, &qword_1E42ADD80);
      *v57 = 0;
      *(v57 + 8) = 0;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EF38, &unk_1E42ADDA0);
      OUTLINED_FUNCTION_18_5();
      sub_1E3743538(v62, v63, v64, v65);
      v66 = v57 + *(v61 + 64);
      *v66 = 0;
      *(v66 + 8) = 0;
      OUTLINED_FUNCTION_82();
      sub_1E325F69C(v67, v68);
      v69 = OUTLINED_FUNCTION_32_0();
      sub_1E325F69C(v69, v70);
      v71 = v101;
      sub_1E4202484();
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_77();
      v73 = sub_1E3743478(v72);
      v74 = v91;
      sub_1E4203224();
      OUTLINED_FUNCTION_15_5();
      v75(v71, v103);
      OUTLINED_FUNCTION_77();
      sub_1E325F69C(v76, v77);
      *&v122 = v74;
      *(&v122 + 1) = v73;
      OUTLINED_FUNCTION_15_10();
      swift_getOpaqueTypeConformance2();
      v78 = v97;
      sub_1E4202EA4();
      OUTLINED_FUNCTION_15_5();
      v79 = OUTLINED_FUNCTION_8_6();
      v80(v79);
      *(v78 + *(v107 + 36)) = sub_1E417FB54();
      OUTLINED_FUNCTION_18_5();
      sub_1E3743538(v81, v82, v83, v84);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_20_47();
      OUTLINED_FUNCTION_82();
      sub_1E3967B14(v85);
      OUTLINED_FUNCTION_19_42();
      sub_1E3967B14(v86);
      v87 = v89;
      sub_1E4201F44();
      sub_1E3743538(v87, v90, &qword_1ECF2ED80, &qword_1E42ADA70);
      swift_storeEnumTagMultiPayload();
      sub_1E3967A30();
      sub_1E4201F44();

      v121 = v118;
      sub_1E325F69C(&v121, &qword_1ECF29088);
      v122 = v119;
      sub_1E3782C70(&v122);
      v123 = v120;
      sub_1E325F69C(&v123, &qword_1ECF2EF40);
      sub_1E325F69C(v87, &qword_1ECF2ED80);
      OUTLINED_FUNCTION_82();
    }

    sub_1E325F69C(v55, v56);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3964174()
{
  OUTLINED_FUNCTION_31_1();
  v60 = v3;
  v61 = v2;
  v5 = v4;
  v62 = v6;
  v8 = v7;
  v66 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EF48, &qword_1E42ADDB8);
  OUTLINED_FUNCTION_0_10();
  v67 = v11;
  v68 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v65 = (v12 - v13);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_103();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EF50, &qword_1E42ADDC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_20_1();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EF58, &unk_1E42ADDC8);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  v63 = v24 - v25;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v57 - v27;
  if (*(v8 + 2))
  {

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v57 = v5;
    v58 = v20;
    OUTLINED_FUNCTION_0_21(v29);
    v5 = v57;
    v20 = v58;
    sub_1E4202EA4();

    (*(v18 + 8))(v0, v16);
    sub_1E3741EA0(v1, v28, &qword_1ECF2EF50, &qword_1E42ADDC0);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  __swift_storeEnumTagSinglePayload(v28, v30, 1, v20);
  v72 = *(v8 + 5);
  v31 = *(v72 + 16);
  v69[2] = 0;
  v69[3] = v31;
  swift_getKeyPath();
  v32 = *v8;
  v70 = *(v8 + 24);
  v71 = v32;
  v33 = swift_allocObject();
  v34 = v61;
  *(v33 + 16) = v62;
  *(v33 + 24) = v5;
  v35 = v60;
  *(v33 + 32) = v34;
  *(v33 + 40) = v35;
  v36 = v8[1];
  *(v33 + 48) = *v8;
  *(v33 + 64) = v36;
  *(v33 + 80) = v8[2];

  sub_1E383A1D0(&v71, v69);
  sub_1E383A1D0(&v70, v69);
  sub_1E3743538(&v72, v69, &qword_1ECF2EF40, &qword_1E42ADDB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD0, &qword_1E4297FE0);
  v59 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EF60, &qword_1E42ADDF8);
  sub_1E37432DC();
  sub_1E396907C();
  v37 = v64;
  sub_1E4203B34();
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v38, v39, v40, v41);
  v43 = v67;
  v42 = v68;
  v44 = *(v67 + 16);
  v45 = v65;
  v44(v65, v37, v68);
  v46 = v66;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v47, v48, v49, v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2EF70, &qword_1E42ADE00);
  v44(v46 + *(v51 + 48), v45, v42);
  v52 = *(v43 + 8);
  v52(v37, v42);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v53, v54);
  v52(v45, v42);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v55, v56);
  OUTLINED_FUNCTION_25_2();
}