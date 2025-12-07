uint64_t sub_1E3EEDD50(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupSelected;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3EEDDA4(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

void sub_1E3EEDE0C()
{
  OUTLINED_FUNCTION_58_34();
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v3 + 136))();
  OUTLINED_FUNCTION_7_5();
  v13 = (*((*v2 & v4) + 0x120))();

  if (v13)
  {
    ObjectType = swift_getObjectType();
    v6 = dynamic_cast_existential_1_conditional(v13, ObjectType, &protocol descriptor for OverlayViewProtocol);
    if (v6)
    {
      v8 = v6;
      v9 = v7;
      v10 = OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupSelectionHidden;
      OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupSelectionHidden, v14);
      v11 = *(v0 + v10);
      v12 = swift_getObjectType();
      (*(v9 + 96))(v11, v12, v9);
    }

    else
    {
    }
  }
}

uint64_t sub_1E3EEDF54(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupSelectionHidden;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3EEDFA8(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

void sub_1E3EEE010()
{
  OUTLINED_FUNCTION_58_34();
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 136);
  v4();
  OUTLINED_FUNCTION_7_5();
  v6 = (*((*v2 & v5) + 0x120))();

  if (v6)
  {
    v7 = [v6 layer];

    v8 = OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupOutlined;
    OUTLINED_FUNCTION_5_0(&v0[OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupOutlined], v38);
    v9 = 0;
    if (v0[v8] == 1)
    {
      v10 = [objc_opt_self() whiteColor];
      v9 = [v10 CGColor];
    }

    [v7 setBorderColor_];
  }

  v11 = (v4)();
  v12 = (*((*v2 & *v11) + 0x120))();

  if (v12)
  {
    v14 = [v12 layer];

    v15 = OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupOutlined;
    OUTLINED_FUNCTION_5_0(&v0[OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupOutlined], v37);
    v16 = 0.0;
    if (v0[v15])
    {
      v16 = 2.0;
    }

    [v14 setBorderWidth_];
  }

  v17 = OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardViewLayout;
  if (!*&v0[OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardViewLayout])
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_8();
  v19 = *(v18 + 552);

  v19(&v39, v20);
  v21 = v40;

  if ((v40 & 1) == 0)
  {
    goto LABEL_14;
  }

  if (*&v0[v17])
  {
    OUTLINED_FUNCTION_8();
    v23 = *(v22 + 1920);

    v25 = v23(v24);

    (*(*v25 + 552))(&v41, v26);
    v21 = v42;
  }

  else
  {
LABEL_13:
    v21 = 1;
  }

LABEL_14:
  (v4)(v13);
  OUTLINED_FUNCTION_7_5();
  v28 = (*((*v2 & v27) + 0x120))();

  if (v28)
  {
    v29 = [v28 layer];

    v30 = OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupOutlined;
    OUTLINED_FUNCTION_5_0(&v0[OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupOutlined], &v36);
    v31 = 0.0;
    if (!(v21 & 1 | ((v0[v30] & 1) == 0)))
    {
      OUTLINED_FUNCTION_5_111();
      v31 = sub_1E3952BE8(v32, v33, v34, v35);
    }

    [v29 setCornerRadius_];
  }
}

uint64_t sub_1E3EEE408(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupOutlined;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E3EEE45C(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  v7 = OUTLINED_FUNCTION_3_0(v3 + *a2, v9);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t sub_1E3EEE4AC(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

uint64_t sub_1E3EEE514(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1E3EEE558()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_syndicationId);
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_syndicationId, v4);
  v2 = *v1;

  return v2;
}

uint64_t sub_1E3EEE5A8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_syndicationId);
  OUTLINED_FUNCTION_3_0(v5, v7);
  *v5 = a1;
  v5[1] = a2;
}

id sub_1E3EEE64C()
{
  v1 = v0;
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupSelected) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupSelectionHidden) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupOutlined) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardViewLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_imageViewModel) = 0;
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_syndicationId);
  type metadata accessor for CardView();
  *v2 = 0;
  v2[1] = 0;
  OUTLINED_FUNCTION_2_0();
  *(v1 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardView) = sub_1E3890DAC();
  v8 = type metadata accessor for CardCollectionViewCell();
  v3 = OUTLINED_FUNCTION_2_0();
  v6 = objc_msgSendSuper2(v4, v5, v3, v1, v8);
  [v6 setAutoresizingMask_];
  return v6;
}

void sub_1E3EEE770()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupSelected) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupSelectionHidden) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_isLockupOutlined) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardViewLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_imageViewModel) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_syndicationId);
  *v1 = 0;
  v1[1] = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3EEE8B8()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CardCollectionViewCell();
  objc_msgSendSuper2(&v4, sel_vui_prepareForReuse);
  *&v0[OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardViewLayout] = 0;

  *&v0[OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_imageViewModel] = 0;

  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_6_41();
  (*(v2 + 136))();
  OUTLINED_FUNCTION_7_5();
  (*((*v1 & v3) + 0x1B0))();
}

void sub_1E3EEE9CC()
{
  OUTLINED_FUNCTION_21_5();
  v2 = v0;
  v4 = v3;
  v5 = v1;
  if (v6)
  {
    if (v1 == 1.79769313e308 || v1 == 0.0)
    {
      v5 = 0.0;
    }

    v8 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();

    sub_1E3C8B764(v9, v5, v4);
    goto LABEL_8;
  }

  v10 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();
  [v10 setFrame_];

  v11 = OUTLINED_FUNCTION_46_53();
  v12 = [objc_opt_self() clearColor];
  OUTLINED_FUNCTION_2_34(v12, sel_setVuiBackgroundColor_);

  if (*(v2 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardViewLayout))
  {
    OUTLINED_FUNCTION_111();
    v14 = *(v13 + 600);

    v16 = v14(v15);
    if (v16)
    {
      v17 = v16;
      OUTLINED_FUNCTION_111();
      (*(v18 + 552))(&v37);
      type metadata accessor for GraphicsUtilities();
      OUTLINED_FUNCTION_16_130();
      v24 = sub_1E418AA20(v20, v21, v22, v23, v5, v4);
      v25 = OUTLINED_FUNCTION_46_53();
      v26 = [v25 vuiLayer];

      [v26 setShadowPath_];
      v27 = OUTLINED_FUNCTION_46_53();
      v28 = [v27 vuiLayer];

      if (v28)
      {
        [v17 shadowOffset];
        [v28 setShadowOffset_];
      }

      v29 = OUTLINED_FUNCTION_46_53();
      v30 = [v29 vuiLayer];

      if (v30)
      {
        [v17 shadowBlurRadius];
        [v30 setShadowRadius_];
      }

      v36 = sub_1E40B0254();
      MEMORY[0x1EEE9AC00](v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC50, &unk_1E42DC510);
      sub_1E4148DE0(sub_1E3EF466C);

      v31 = OUTLINED_FUNCTION_46_53();
      v32 = [v31 vuiLayer];

      if (v32)
      {
        LODWORD(v33) = 1.0;
        [v32 setShadowOpacity_];
      }

      v34 = OUTLINED_FUNCTION_46_53();
      v35 = [v34 vuiLayer];

      if (v35)
      {
        [v35 setMasksToBounds_];
      }

      goto LABEL_23;
    }

    v19 = OUTLINED_FUNCTION_46_53();
    v8 = [v19 vuiLayer];

    if (!v8)
    {
LABEL_23:

      goto LABEL_24;
    }

    [v8 setShadowOpacity_];
LABEL_8:

    goto LABEL_23;
  }

LABEL_24:
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E3EEEEA8()
{
  v1 = v0;
  v41.receiver = v0;
  v41.super_class = type metadata accessor for CardCollectionViewCell();
  objc_msgSendSuper2(&v41, sel_vui_cellWillBeDisplayed);
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_16_89();
  v4 = (*(v3 + 136))();
  v5 = (*((*v2 & *v4) + 0x120))();

  if (!v5 || (v38[0] = v5, sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250), v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3BDD0, qword_1E42DC520), OUTLINED_FUNCTION_4_5(v6, v7, v8, v6, v9, v10, v11, v12, v35), v13 = swift_dynamicCast(), (v13 & 1) == 0))
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    goto LABEL_6;
  }

  if (!*(&v36 + 1))
  {
LABEL_6:
    sub_1E325F748(&v35, &unk_1ECF3BDC0, &qword_1E42B7578);
    goto LABEL_7;
  }

  v21 = OUTLINED_FUNCTION_4_5(v13, v14, v15, v16, v17, v18, v19, v20, v35);
  sub_1E3251BE8(v21, v22);
  v23 = v39;
  v24 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  (*(v24 + 24))(v23, v24);
  __swift_destroy_boxed_opaque_existential_1(v38);
LABEL_7:
  v25 = sub_1E3285D14();
  v26 = *((*v2 & *v1) + 0x120);
  v27 = *v25;
  v33 = v26(v27, v28, v29, v30, v31, v32);
  (*((*v2 & *v27) + 0x118))(v33);
}

uint64_t sub_1E3EEF11C()
{
  v30.receiver = v0;
  v30.super_class = type metadata accessor for CardCollectionViewCell();
  objc_msgSendSuper2(&v30, sel_vui_cellDidEndDisplaying);
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_6_41();
  (*(v2 + 136))();
  OUTLINED_FUNCTION_7_5();
  v4 = (*((*v1 & v3) + 0x120))();

  if (v4 && (v29[0] = v4, sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250), v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3BDD0, qword_1E42DC520), OUTLINED_FUNCTION_4_5(v5, v6, v7, v5, v8, v9, v10, v11, v26), v12 = swift_dynamicCast(), (v12 & 1) != 0))
  {
    if (*(&v27 + 1))
    {
      v20 = OUTLINED_FUNCTION_4_5(v12, v13, v14, v15, v16, v17, v18, v19, v26);
      sub_1E3251BE8(v20, v21);
      v22 = v29[4];
      __swift_project_boxed_opaque_existential_1(v29, v29[3]);
      v23 = OUTLINED_FUNCTION_50();
      v24(v23, v22);
      return __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }

  else
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
  }

  return sub_1E325F748(&v26, &unk_1ECF3BDC0, &qword_1E42B7578);
}

uint64_t sub_1E3EEF2D0()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CardCollectionViewCell();
  objc_msgSendSuper2(&v7, sel_vui_cellDidSelect);
  v1 = *sub_1E3285D14();
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x120);
  v4 = v1;
  v5 = v3();
  (*((*v2 & *v4) + 0x118))(v5);
}

id sub_1E3EEF410(unint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CardCollectionViewCell();
  result = objc_msgSendSuper2(&v4, sel_dragStateDidChange_, a1);
  if (a1 <= 2)
  {
    return (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC8))((6u >> (a1 & 7)) & 1);
  }

  return result;
}

uint64_t sub_1E3EEF4F4(uint64_t isEscapingClosureAtFileLocation, void *a2, _OWORD *a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v55 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = a4;
  if (!a4)
  {
    OUTLINED_FUNCTION_111();
    v16 = (*(v17 + 392))();
  }

  if (a2)
  {
    type metadata accessor for CardCollectionViewCell();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v56 = a3;
      if (v16)
      {
        v57 = v5;
        v19 = v18;
        type metadata accessor for CardCollectionViewCellLayout();
        v20 = swift_dynamicCastClass();
        if (!v20)
        {
          v46 = v10;

          goto LABEL_35;
        }

        v21 = v20;
        OUTLINED_FUNCTION_111();
        v23 = *(v22 + 672);

        v24 = a2;
        v23();
        v60 = &type metadata for ViewModelKeys;
        v61 = &off_1F5D7BCA8;
        LOBYTE(aBlock[0]) = 11;
        OUTLINED_FUNCTION_67_26();

        if (v64)
        {
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
          v28 = v19;
          if (OUTLINED_FUNCTION_66_32(v25, v26, v27, v25))
          {
            __swift_destroy_boxed_opaque_existential_1(aBlock);
            v60 = &unk_1F5D5E608;
            v61 = &off_1F5D5CC28;
            OUTLINED_FUNCTION_67_26();

            v32 = v21;
            if (v64)
            {
              v33 = v56;
              if ((OUTLINED_FUNCTION_66_32(v29, v30, v31, MEMORY[0x1E69E6370]) & 1) == 0)
              {
                __swift_destroy_boxed_opaque_existential_1(aBlock);
                goto LABEL_21;
              }

              LODWORD(v55) = v58;
              __swift_destroy_boxed_opaque_existential_1(aBlock);
              OUTLINED_FUNCTION_111();
              if (!(*(v34 + 392))())
              {
                goto LABEL_21;
              }

              v35 = swift_dynamicCastClass();
              if (!v35)
              {

                goto LABEL_21;
              }

              v36 = (*(*v35 + 2088))();

              if (v36 == 20)
              {
LABEL_21:
                v37 = objc_opt_self();
                v10 = swift_allocObject();
                *(v10 + 16) = v32;
                *(v10 + 24) = v57;
                *(v10 + 32) = v28;
                *(v10 + 40) = isEscapingClosureAtFileLocation;
                v38 = v33[1];
                *(v10 + 48) = *v33;
                *(v10 + 64) = v38;
                *(v10 + 75) = *(v33 + 27);
                v39 = swift_allocObject();
                *(v39 + 16) = sub_1E3EF4730;
                *(v39 + 24) = v10;
                v61 = sub_1E379E500;
                v62 = v39;
                aBlock[0] = MEMORY[0x1E69E9820];
                aBlock[1] = 1107296256;
                aBlock[2] = sub_1E3839B50;
                v60 = &block_descriptor_131;
                v40 = _Block_copy(aBlock);
                v15 = v62;
                v41 = v24;

                [v37 vui:v40 performWithoutAnimation:?];

                _Block_release(v40);
                isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

                if ((isEscapingClosureAtFileLocation & 1) == 0)
                {
                  return v28;
                }

                __break(1u);
                goto LABEL_33;
              }

              if (sub_1E3D240F8(v36, 6))
              {
                goto LABEL_15;
              }

              v43 = sub_1E3D240F8(v36, 15);
              if ((v43 & 1) == 0)
              {
                if (v58)
                {
                  LOBYTE(aBlock[0]) = v36;
                  v63[0] = 16;
                  sub_1E3AA77D0(v43, v44, v45);
                  if ((sub_1E4205E84() & 1) == 0)
                  {
                    v36 = 10;
                  }
                }

                goto LABEL_16;
              }

              if (v58)
              {
LABEL_15:
                v36 = 15;
              }

LABEL_16:
              (*(*v32 + 2096))(v36);
              goto LABEL_21;
            }

            __swift_destroy_boxed_opaque_existential_1(aBlock);
            sub_1E325F748(v63, &unk_1ECF296E0, &unk_1E4298030);
LABEL_20:
            v33 = v56;
            goto LABEL_21;
          }

          __swift_destroy_boxed_opaque_existential_1(aBlock);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(aBlock);
          sub_1E325F748(v63, &unk_1ECF296E0, &unk_1E4298030);
          v28 = v19;
        }

        v32 = v21;
        goto LABEL_20;
      }
    }
  }

LABEL_33:
  v46 = v10;

LABEL_35:
  v47 = sub_1E324FBDC();
  (*(v55 + 16))(v15, v47, v46);

  v48 = sub_1E41FFC94();
  v49 = sub_1E4206814();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    aBlock[0] = v51;
    *v50 = 136315138;
    sub_1E384EE08(*(isEscapingClosureAtFileLocation + 98));
    v54 = sub_1E3270FC8(v52, v53, aBlock);

    *(v50 + 4) = v54;
    _os_log_impl(&dword_1E323F000, v48, v49, "CardCollectionViewCell: Failed to get correct cell for [%s]", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v55 + 8))(v15, v46);
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

void sub_1E3EEFBB4()
{
  OUTLINED_FUNCTION_21_5();
  v222 = v1;
  v220 = v2;
  v4 = v3;
  OUTLINED_FUNCTION_106();
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_16_89();
  v14 = *(v13 + 136);
  v221 = v0;
  v15 = v14();
  v16 = MEMORY[0x1E69E7CC0];
  v237 = MEMORY[0x1E69E7CC0];
  v17 = (*((*v12 & *v15) + 0x138))();
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  v219 = v18;
  OUTLINED_FUNCTION_25_5();
  v212 = *(v19 + 216);
  v211 = v19 + 216;
  v20 = v212();
  if (!v20)
  {
    v20 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  v210 = v20;
  *&v221[OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardViewLayout] = v222;
  swift_retain_n();

  OUTLINED_FUNCTION_25_5();
  v21 = OUTLINED_FUNCTION_15_18();
  v22(v21);
  OUTLINED_FUNCTION_0_44();
  v238 = (*(v23 + 464))();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8, &qword_1E42A8990);
  sub_1E4148C68(sub_1E3819AD4, v24, &v236);

  v226 = v236;
  v224 = v15;
  v217 = v4;
  v213 = v5;
  v214 = v11;
  if (sub_1E32AE9B0(v236))
  {
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_30_1();
  v26 = (*(v25 + 488))();
  if (!v26)
  {
    goto LABEL_50;
  }

  v27 = v26;
  if (!*(v26 + 16))
  {
    goto LABEL_49;
  }

  v209 = v7;
  v28 = v26 + 64;
  OUTLINED_FUNCTION_4_4();
  v31 = v30 & v29;
  v33 = (v32 + 63) >> 6;

  LODWORD(v225) = 0;
  v15 = 0;
  v34 = 0;
  while (v31)
  {
LABEL_15:
    v36 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    if (**(*(v27 + 56) + ((v34 << 9) | (8 * v36))) == _TtC8VideosUI13TextViewModel)
    {
      OUTLINED_FUNCTION_35_66();
      v231 = 16;
      sub_1E3742F1C(v39, v40, v41);

      sub_1E4206254();
      sub_1E4206254();
      v42 = v238 == v232 && v239 == v233;
      if (v42)
      {

        v44 = 1;
      }

      else
      {
        v43 = sub_1E42079A4();

        v44 = v43 | v225;
      }

      LODWORD(v225) = v44;

      v15 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_60_2();
      v37 = swift_retain_n();
      MEMORY[0x1E6910BF0](v37);
      v38 = *((v236 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v236 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v38 >> 1)
      {
        OUTLINED_FUNCTION_35(v38);
        sub_1E42062F4();
      }

      sub_1E4206324();

      v226 = v236;
    }
  }

  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_133:
      __break(1u);
      return;
    }

    if (v35 >= v33)
    {
      break;
    }

    v31 = *(v28 + 8 * v35);
    ++v34;
    if (v31)
    {
      v34 = v35;
      goto LABEL_15;
    }
  }

  if (v15)
  {
    OUTLINED_FUNCTION_63_28();
    v7 = v209;
    if (!v42 & v47)
    {
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_44_55();
    if (!v42)
    {
      v50 = &unk_1F5D8C550;
      goto LABEL_40;
    }

    if ((v49 & 3) != 0)
    {
      v50 = &unk_1F5D8C578;
      goto LABEL_40;
    }

    if (v48 != 13)
    {
LABEL_36:
      v51 = &unk_1F5D8C618;
      v52 = &unk_1F5D8C5F0;
    }

    else
    {
      v51 = &unk_1F5D8C5C8;
      v52 = &unk_1F5D8C5A0;
    }

    if (v225)
    {
      v50 = v52;
    }

    else
    {
      v50 = v51;
    }

LABEL_40:
    v15 = *(v50 + 2);
    if (v15)
    {
      v53 = (v50 + 32);
      do
      {
        if (*(v27 + 16))
        {
          sub_1E3740AE8(*v53, v45, v46);
          if (v45)
          {
            v54 = swift_retain_n();
            MEMORY[0x1E6910BF0](v54);
            v55 = *((v236 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (*((v236 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v55 >> 1)
            {
              OUTLINED_FUNCTION_35(v55);
              sub_1E42062F4();
            }

            sub_1E4206324();

            v226 = v236;
          }
        }

        ++v53;
        --v15;
      }

      while (v15);
    }

    OUTLINED_FUNCTION_54_42();
  }

  else
  {
    OUTLINED_FUNCTION_54_42();
    v7 = v209;
  }

LABEL_49:

LABEL_50:
  v56 = sub_1E32AE9B0(v226);
  if (v56)
  {
    v57 = v56;
    if (v56 >= 1)
    {
      v209 = v7;
      v58 = 0;
      OUTLINED_FUNCTION_245_0();
      v225 = v59 & 0xC000000000000001;
      v60 = 0.0;
      v61 = 0;
      while (1)
      {
        OUTLINED_FUNCTION_53_8();
        if (v62)
        {
          MEMORY[0x1E6911E60](v58, v226);
        }

        else
        {
          OUTLINED_FUNCTION_245_0();
        }

        OUTLINED_FUNCTION_30_1();
        if ((*(v63 + 392))())
        {
          OUTLINED_FUNCTION_30();
          v65 = (*(v64 + 936))();

          if (v65 != 2 && (v65 & 1) != 0)
          {
            goto LABEL_68;
          }
        }

        type metadata accessor for ImageViewModel();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_68;
        }

        OUTLINED_FUNCTION_35_66();
        v231 = 39;
        sub_1E3742F1C(v66, v67, v68);
        sub_1E4206254();
        sub_1E4206254();
        if (v238 == v232 && v239 == v233)
        {
        }

        else
        {
          v70 = sub_1E42079A4();

          if ((v70 & 1) == 0)
          {
            goto LABEL_68;
          }
        }

        OUTLINED_FUNCTION_6_188();
        (*(v71 + 1920))();
        OUTLINED_FUNCTION_30();
        v60 = (*(v72 + 2288))();
        v61 = v73;

LABEL_68:

        if (v57 == ++v58)
        {
          OUTLINED_FUNCTION_21_98();
          v74 = 0;
          v208 = v209 + 16;
          v209 += 8;
          *&v75 = 136315138;
          v207 = v75;
          while (1)
          {
            OUTLINED_FUNCTION_53_8();
            if (v76)
            {
              v77 = MEMORY[0x1E6911E60](v74, v226);
            }

            else
            {
              OUTLINED_FUNCTION_245_0();
              v77 = *(v78 + 8 * v74 + 32);
            }

            OUTLINED_FUNCTION_30_1();
            if ((*(v79 + 392))())
            {
              OUTLINED_FUNCTION_30();
              v81 = (*(v80 + 936))();

              if (v81 != 2 && (v81 & 1) != 0)
              {
                break;
              }
            }

            v82 = v77[49];
            if (v82 == 39)
            {
              type metadata accessor for ImageViewModel();
              v83 = swift_dynamicCastClass();
              if (!v83)
              {
                break;
              }

              v84 = v83;
              OUTLINED_FUNCTION_61_25();
              v86 = (*v85 == 2) | ~*v85;

              sub_1E3DF9E68(&v238);
              v87 = v241[41];
              v88 = v86 & 1;
              LOBYTE(v229[0]) = 0;
              type metadata accessor for UIFactory();
              OUTLINED_FUNCTION_45();
              v90 = *(v89 + 240);
              v15 = v89 + 240;

              v90(v91);
              OUTLINED_FUNCTION_54_42();
              v93 = v92;
              v94 = v229[0];
              OUTLINED_FUNCTION_59_32(&unk_1F5D869A0);
              v235 = &off_1F5D868A0;
              v95 = swift_allocObject();
              v232 = v95;
              *(v95 + 16) = v60;
              *(v95 + 24) = v61;
              *(v95 + 32) = v94;
              OUTLINED_FUNCTION_19_126(v95, &v238);
              *(v96 + 96) = v88;
              *(v96 + 97) = v87;
              v97 = sub_1E3280A90(0, &qword_1EE23B360, 0x1E69DF740);
              v98 = sub_1E393D92C(v84, v93, &v232, 0, v97);

              sub_1E325F748(&v232, &qword_1ECF296C0, &unk_1E429BBE0);
              sub_1E3EF3A48(v98, v84);
              OUTLINED_FUNCTION_60_2();

              v223 = v98;
            }

            else
            {
              if (*v77 == _TtC8VideosUI13TextViewModel)
              {
                if (v237 >> 62)
                {
                  v99 = sub_1E4207384();
                }

                else
                {
                  v99 = *((v237 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                type metadata accessor for UIFactory();
                v229[0] = v219;
                v232 = v99;
                LOBYTE(v233) = 0;

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB50, &qword_1E42DC5C0);
                sub_1E3EF47F8();
                sub_1E38D2054(&v232, &v228);
                v100 = v228;
                sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
                v101 = OUTLINED_FUNCTION_14_150();
                v104 = sub_1E393D92C(v101, v100, v102, 0, v103);

                v105 = sub_1E325F748(&v232, &qword_1ECF296C0, &unk_1E429BBE0);
                v232 = v104;
                MEMORY[0x1EEE9AC00](v105);
                *(&v207 - 2) = &v237;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB58, &qword_1E42AF4B0);
                sub_1E4148DE0(sub_1E3EF485C);

                goto LABEL_106;
              }

              if (sub_1E3850584())
              {
                OUTLINED_FUNCTION_6_188();
                (*(v106 + 672))();
                OUTLINED_FUNCTION_59_32(&type metadata for ViewModelKeys);
                v235 = &off_1F5D7BCA8;
                LOBYTE(v232) = 11;
                OUTLINED_FUNCTION_65_32();

                if (!v230)
                {
                  goto LABEL_103;
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
                if ((swift_dynamicCast() & 1) == 0)
                {
                  goto LABEL_104;
                }

                __swift_destroy_boxed_opaque_existential_1(&v232);
                OUTLINED_FUNCTION_59_32(&unk_1F5D5E608);
                v235 = &off_1F5D5CC28;
                OUTLINED_FUNCTION_65_32();

                if (v230)
                {
                  if (swift_dynamicCast())
                  {
                    v107 = v228;
                    __swift_destroy_boxed_opaque_existential_1(&v232);
                    if (v107 == 1)
                    {
                      OUTLINED_FUNCTION_30_1();
                      v109 = (*(v108 + 488))();
                      if (v109)
                      {
                        v112 = v109;
                        if (*(v109 + 16) && (v113 = sub_1E3740AE8(234, v110, v111), (v114 & 1) != 0))
                        {
                          v115 = *(*(v112 + 56) + 8 * v113);

                          LOWORD(v228) = *(v115 + 98);
                          v227 = 234;
                          sub_1E3742F1C(v116, v117, v118);
                          sub_1E4206254();
                          sub_1E4206254();
                          if (v232 != v229[0] || v233 != v229[1])
                          {
                            sub_1E42079A4();
                          }
                        }

                        else
                        {
                        }
                      }
                    }

                    goto LABEL_105;
                  }

LABEL_104:
                  __swift_destroy_boxed_opaque_existential_1(&v232);
                }

                else
                {
LABEL_103:
                  __swift_destroy_boxed_opaque_existential_1(&v232);
                  sub_1E325F748(v229, &unk_1ECF296E0, &unk_1E4298030);
                }

LABEL_105:
                sub_1E3ACF3E8();
                v128 = v127;
                v130 = v129;
                v132 = v131;
                v133 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
                v15 = (*MEMORY[0x1E69E7D40] & *v15) + 288;
                v134 = *v15;
                v135 = v133;
                v134();
                OUTLINED_FUNCTION_54_42();
                v137 = v136;
                OUTLINED_FUNCTION_59_32(&type metadata for OverlayFactoryContext);
                v235 = &off_1F5D6F838;
                v232 = v128;
                v233 = v130;
                v234 = v132 & 0x101;
                v138 = sub_1E393D9C4(v77, v137, &v232, 0);

                sub_1E325F748(&v232, &qword_1ECF296C0, &unk_1E429BBE0);
                v218 = v138;
                goto LABEL_106;
              }

              if (v82 == 233)
              {
                type metadata accessor for DownloadStateIndicatorView();
                OUTLINED_FUNCTION_45();
                v140 = (*(v139 + 360))();
                v141 = sub_1E3D08E94(v77, 0, v140);

                v142 = v241;
              }

              else
              {
                if (v82 != 67)
                {
                  sub_1E324FBDC();
                  OUTLINED_FUNCTION_36_5();
                  v143 = v213;
                  v144(v214);
                  v145 = v217;

                  v146 = sub_1E41FFC94();
                  v147 = sub_1E42067D4();

                  if (os_log_type_enabled(v146, v147))
                  {
                    v148 = swift_slowAlloc();
                    v149 = swift_slowAlloc();
                    v232 = v149;
                    *v148 = v207;
                    v150 = (*(*v145 + 376))();
                    v152 = sub_1E3270FC8(v150, v151, &v232);

                    *(v148 + 4) = v152;
                    _os_log_impl(&dword_1E323F000, v146, v147, "CardCollectionViewCell: unexpected child viewModel of type = %s", v148, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v149);
                    OUTLINED_FUNCTION_6_0();
                    OUTLINED_FUNCTION_6_0();

                    OUTLINED_FUNCTION_36_5();
                    v154 = v214;
                    v155 = v213;
                  }

                  else
                  {

                    OUTLINED_FUNCTION_36_5();
                    v154 = v214;
                    v155 = v143;
                  }

                  v153(v154, v155);
                  goto LABEL_106;
                }

                OUTLINED_FUNCTION_45();
                v121 = *(v120 + 336);

                v123 = v121(v122);
                if (v123)
                {
                  v124 = v123;
                  v125 = type metadata accessor for ContextMenuButton();
                  v126 = OUTLINED_FUNCTION_4_84(v125);
                  if (!v126)
                  {
                  }
                }

                else
                {
                  v126 = 0;
                }

                type metadata accessor for UIFactory();
                OUTLINED_FUNCTION_106();
                type metadata accessor for ContextMenuButton();
                v156 = OUTLINED_FUNCTION_14_150();
                v141 = sub_1E393D92C(v156, v126, v157, 0, v158);
                OUTLINED_FUNCTION_60_2();

                sub_1E325F748(&v232, &qword_1ECF296C0, &unk_1E429BBE0);
                if (!v141)
                {
                  v215 = 0;
                  goto LABEL_106;
                }

                v159 = OBJC_IVAR____TtC8VideosUI17ContextMenuButton_lockupViewModel;
                OUTLINED_FUNCTION_3_0(&v141[OBJC_IVAR____TtC8VideosUI17ContextMenuButton_lockupViewModel], &v231);
                *&v141[v159] = v217;

                v142 = &v240;
              }

              *(v142 - 32) = v141;
            }

LABEL_106:
            if (v57 == ++v74)
            {
              goto LABEL_122;
            }
          }

          goto LABEL_106;
        }
      }
    }

    goto LABEL_133;
  }

  OUTLINED_FUNCTION_21_98();
LABEL_122:

  v160 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_16_89();
  v162 = *(v161 + 224);
  v163 = v210;
  v164 = OUTLINED_FUNCTION_15_18();
  v162(v164);
  OUTLINED_FUNCTION_57_34();
  v166 = *(*(v165 + 1920))();
  (*(v166 + 552))(&v232);

  v168 = 0.0;
  if ((v235 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_130();
    v168 = sub_1E3952BE8(v169, v170, v171, v172);
  }

  v173 = (v212)(v167);
  v174 = [v173 vuiLayer];

  [v174 setCornerRadius_];
  OUTLINED_FUNCTION_25_5();
  v176 = *(v175 + 248);
  v177 = v223;
  v178 = OUTLINED_FUNCTION_15_18();
  v176(v178);
  v179 = *((*v160 & *v15) + 0x140);

  v179(v180);
  OUTLINED_FUNCTION_39();
  v182 = *((*v160 & v181) + 0x128);
  v183 = v218;
  v184 = OUTLINED_FUNCTION_15_18();
  v182(v184);
  OUTLINED_FUNCTION_39();
  if (!(*((*v160 & v185) + 0x198))())
  {
    type metadata accessor for SeparatorView();
    [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  OUTLINED_FUNCTION_25_5();
  (*(v186 + 416))();
  OUTLINED_FUNCTION_39();
  v188 = *((*v160 & v187) + 0x158);
  v189 = v215;
  v190 = OUTLINED_FUNCTION_15_18();
  v188(v190);
  OUTLINED_FUNCTION_39();
  v192 = *((*v160 & v191) + 0x170);
  v193 = v216;
  v194 = v216;
  v195 = OUTLINED_FUNCTION_15_18();
  v192(v195);
  v196 = [v15 superview];
  if (v196)
  {
    v197 = v196;
  }

  else
  {
    v198 = v221;
    v199 = [v221 vuiContentView];
    [v199 addSubview_];

    v197 = [v198 vuiContentView];
    OUTLINED_FUNCTION_57_34();
    v201 = (*(v200 + 744))();
    if (!v201)
    {
      v201 = [objc_opt_self() clearColor];
    }

    v193 = v201;

    OUTLINED_FUNCTION_2_34(v202, sel_setVuiBackgroundColor_);
  }

  OUTLINED_FUNCTION_6_188();
  v204 = (*(v203 + 744))();
  v205 = v221;
  [v221 setBackgroundColor_];

  v206 = (*(*v193 + 864))();
  [v205 setHighlightedBackgroundColor_];

  OUTLINED_FUNCTION_20_0();
}

void sub_1E3EF1438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_21_5();
  a25 = v28;
  a26 = v29;
  v330 = v30;
  v32 = v31;
  v321 = v33;
  OUTLINED_FUNCTION_106();
  v312 = sub_1E41FFCB4();
  v324 = *(v312 - 8);
  MEMORY[0x1EEE9AC00](v312 - 8);
  OUTLINED_FUNCTION_5();
  v313 = v35 - v34;
  v36 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v38 = *(v37 + 136);
  v326 = v26;
  v39 = v38();
  v40 = MEMORY[0x1E69E7CC0];
  v344 = MEMORY[0x1E69E7CC0];
  v41 = (*((*v36 & *v39) + 0x138))();
  if (v41)
  {
    v42 = v41;
  }

  else
  {
    v42 = *&v40;
  }

  v322 = *&v42;
  v43 = (*((*v36 & *v39) + 0xD8))();
  if (!v43)
  {
    v43 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  v316 = v43;
  type metadata accessor for CardView();
  v44 = v330;
  OUTLINED_FUNCTION_30_1();
  (*(v45 + 1920))();
  [v326 vuiBounds];
  Width = CGRectGetWidth(v354);
  sub_1E3AA6900(Width);
  v48 = v47;
  v50 = v49;

  *&v326[OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardViewLayout] = v330;
  OUTLINED_FUNCTION_60_2();
  swift_retain_n();

  v51 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_16_89();
  (*(v52 + 200))(v44);
  v53 = v321;
  OUTLINED_FUNCTION_0_44();
  v345[0] = (*(v54 + 464))();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8, &qword_1E42A8990);
  sub_1E4148C68(sub_1E381AC40, v55, &v343);

  v56 = v343;
  v328 = v39;
  if (!sub_1E32AE9B0(v343))
  {
    OUTLINED_FUNCTION_30_1();
    v58 = (*(v57 + 488))();
    if (v58)
    {
      v59 = v58;
      if (!*(v58 + 16))
      {
        goto LABEL_41;
      }

      v53 = v58 + 64;
      OUTLINED_FUNCTION_4_4();
      v27 = v61 & v60;
      v63 = (v62 + 63) >> 6;

      LODWORD(v334) = 0;
      v39 = 0;
      while (v27)
      {
LABEL_15:
        v65 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        if (**(*(v59 + 56) + ((v39 << 9) | (8 * v65))) == _TtC8VideosUI13TextViewModel)
        {
          LODWORD(v334) = 1;
        }

        else
        {
          v66 = swift_retain_n();
          MEMORY[0x1E6910BF0](v66);
          v67 = *((v343 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v343 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v67 >> 1)
          {
            OUTLINED_FUNCTION_35(v67);
            sub_1E42062F4();
          }

          sub_1E4206324();

          v56 = v343;
        }
      }

      while (1)
      {
        v64 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_181;
        }

        if (v64 >= v63)
        {
          break;
        }

        v27 = *(v53 + 8 * v64);
        ++v39;
        if (v27)
        {
          v39 = v64;
          goto LABEL_15;
        }
      }

      if ((v334 & 1) == 0)
      {
LABEL_40:
        OUTLINED_FUNCTION_25_88();
LABEL_41:

        v51 = MEMORY[0x1E69E7D40];
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_63_28();
      if (!(!v78 & v70))
      {
        OUTLINED_FUNCTION_44_55();
        if (!v78)
        {
          v73 = &unk_1F5D8C550;
LABEL_31:
          isa = v73[2].isa;
          if (isa)
          {
            v39 = &v73[4];
            do
            {
              if (*(v59 + 16))
              {
                sub_1E3740AE8(*v39, v68, v69);
                if (v68)
                {
                  v75 = swift_retain_n();
                  MEMORY[0x1E6910BF0](v75);
                  v53 = *((v343 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  v76 = *((v343 & 0xFFFFFFFFFFFFFF8) + 0x18);
                  if (v53 >= v76 >> 1)
                  {
                    OUTLINED_FUNCTION_35(v76);
                    sub_1E42062F4();
                  }

                  sub_1E4206324();

                  v56 = v343;
                }
              }

              v39 += 2;
              isa = (isa - 1);
            }

            while (isa);
          }

          goto LABEL_40;
        }

        if ((v72 & 3) != 0)
        {
          v73 = &unk_1F5D8C578;
          goto LABEL_31;
        }

        if (v71 == 13)
        {
          v73 = &unk_1F5D8C5C8;
          goto LABEL_31;
        }
      }

      v73 = &unk_1F5D8C618;
      goto LABEL_31;
    }
  }

LABEL_42:
  v77 = *v32;
  v320 = *v32;
  v315 = v77;
  v78 = v77 == 2 || (v320 & 0x100) == 0;
  if (v78)
  {
LABEL_63:
    type metadata accessor for LibLockupViewModel(0);
    v333 = v56;
    if (swift_dynamicCastClass())
    {
      v334 = sub_1E32AE9B0(v56);
      if (v334)
      {
        v53 = 0;
        v87 = (*v330 + 1624);
        v331 = *v87;
        v329 = v87;
        v332 = v56 & 0xC000000000000001;
        v327 = (v56 & 0xFFFFFFFFFFFFFF8);
        v88 = MEMORY[0x1E69E7CC8];
        while (1)
        {
          OUTLINED_FUNCTION_53_8();
          if (v89)
          {
            v27 = MEMORY[0x1E6911E60](v53, v333);
          }

          else
          {
            OUTLINED_FUNCTION_61_25();
            if (v53 >= *(v90 + 16))
            {
              goto LABEL_182;
            }

            OUTLINED_FUNCTION_245_0();
            v27 = *(v91 + 8 * v53 + 32);
          }

          v92 = (v53 + 1);
          if (__OFADD__(v53, 1))
          {
            goto LABEL_179;
          }

          v93 = *(v27 + 98);

          v94 = v331(v93, v27);

          if (v94)
          {
            swift_isUniquelyReferenced_nonNull_native();
            v345[0] = v88;
            v99 = sub_1E3740AE8(v93, v97, v98);
            if (__OFADD__(v88[2], (v100 & 1) == 0))
            {
              goto LABEL_180;
            }

            v39 = v99;
            v101 = v100;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3BDF0, &unk_1E42C5460);
            if (sub_1E4207644())
            {
              v104 = sub_1E3740AE8(v93, v102, v103);
              v51 = MEMORY[0x1E69E7D40];
              if ((v101 & 1) != (v105 & 1))
              {
                goto LABEL_185;
              }

              v39 = v104;
            }

            else
            {
              v51 = MEMORY[0x1E69E7D40];
            }

            v88 = v345[0];
            if (v101)
            {
              *(*(v345[0] + 56) + 8 * v39) = v94;
            }

            else
            {
              *(v345[0] + 8 * (v39 >> 6) + 64) |= 1 << v39;
              *(v88[6] + 2 * v39) = v93;
              *(v88[7] + 8 * v39) = v94;

              v110 = v88[2];
              v111 = __OFADD__(v110, 1);
              v112 = v110 + 1;
              if (v111)
              {
                goto LABEL_183;
              }

              v88[2] = v112;
            }

            OUTLINED_FUNCTION_25_88();
          }

          else
          {
            sub_1E3740AE8(v93, v95, v96);
            if (v106)
            {
              swift_isUniquelyReferenced_nonNull_native();
              v345[0] = v88;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3BDF0, &unk_1E42C5460);
              v51 = MEMORY[0x1E69E7D40];
              sub_1E4207644();
              v88 = v345[0];

              v107 = type metadata accessor for ViewLayout();
              sub_1E37414E0(v107, v108, v109);
              sub_1E4207664();
            }
          }

          ++v53;
          if (v92 == v334)
          {
            goto LABEL_88;
          }
        }
      }
    }

    v88 = MEMORY[0x1E69E7CC8];
LABEL_88:
    OUTLINED_FUNCTION_32_75();
    v113 = sub_1E32AE9B0(v53);
    v325 = v88;
    if (v113)
    {
      if (v113 < 1)
      {
        goto LABEL_184;
      }

      OUTLINED_FUNCTION_11_158();
      v114 = 0;
      v115 = v315 == 2;
      v331 = (v53 & 0xC000000000000001);
      v310 = v324 + 16;
      v311 = v324 + 8;
      v315 = v48;
      v314 = v50;
      LODWORD(v320) = v115 || (v320 & 1) == 0;
      v324 = 1;
      *&v116 = 136315138;
      v309 = v116;
      v332 = v117;
      while (1)
      {
        if (v331)
        {
          v118 = MEMORY[0x1E6911E60](v114, v53);
        }

        else
        {
          v118 = *(v53 + 8 * v114 + 32);
        }

        OUTLINED_FUNCTION_111();
        if (*(v119 + 392))() && (OUTLINED_FUNCTION_30(), v123 = (*(v122 + 936))(), , v123 != 2) && (v123)
        {
        }

        else
        {
          v124 = v88[2];
          v334 = v27;
          if (v124 && (v125 = sub_1E3740AE8(*(v118 + 98), v120, v121), (v126 & 1) != 0))
          {
            v127 = *(v88[7] + 8 * v125);
          }

          else
          {
            v127 = 0;
          }

          v128 = *(v118 + 98);
          if (v128 == 32)
          {
            type metadata accessor for UIFactory();
            OUTLINED_FUNCTION_1_250();
            v136 += 33;
            v137 = *v136;
            v53 = v136;

            v139 = v39;
            v137(v138);
            OUTLINED_FUNCTION_32_75();
            v141 = v140;
            sub_1E3280A90(0, &qword_1EE23B360, 0x1E69DF740);
            v142 = OUTLINED_FUNCTION_0_279();
            OUTLINED_FUNCTION_48_46(v142, v143, v144, v145, v146);
            OUTLINED_FUNCTION_17_128();

            sub_1E325F748(&v337, &qword_1ECF296C0, &unk_1E429BBE0);
            v147 = &v353;
            goto LABEL_108;
          }

          if (v128 == 39)
          {
            v129 = type metadata accessor for ImageViewModel();
            v130 = OUTLINED_FUNCTION_4_84(v129);
            if (v130)
            {
              v131 = v130;

              sub_1E3DF9E68(v345);
              v53 = v348[41];
              LOBYTE(v349) = 0;
              v132 = *(*v131 + 392);

              v134 = v132(v133);
              if (v134)
              {
                v135 = (*(*v134 + 1560))();
              }

              else
              {
                v135 = 7;
              }

              v323 = (*(*v131 + 1032))(v135);
              v324 = v177;
              type metadata accessor for UIFactory();
              OUTLINED_FUNCTION_1_250();
              v179 = (*(v178 + 240))();
              v180 = LOBYTE(v349);
              v341 = &unk_1F5D869A0;
              v342 = &off_1F5D868A0;
              v181 = swift_allocObject();
              v337 = v181;
              *(v181 + 16) = v48;
              *(v181 + 24) = v50;
              *(v181 + 32) = v180;
              OUTLINED_FUNCTION_19_126(v181, v345);
              *(v182 + 96) = v320;
              *(v182 + 97) = v53;
              v183 = sub_1E3280A90(0, &qword_1EE23B360, 0x1E69DF740);
              v184 = sub_1E393D92C(v131, v179, &v337, v127, v183);

              OUTLINED_FUNCTION_61_25();

              sub_1E325F748(&v337, &qword_1ECF296C0, &unk_1E429BBE0);
              sub_1E3EF3A48(v184, v131);

              v327 = v184;
              v88 = v325;
              goto LABEL_122;
            }

            goto LABEL_123;
          }

          if (*v118 == _TtC8VideosUI13TextViewModel)
          {
            if (v344 >> 62)
            {
              v148 = sub_1E4207384();
            }

            else
            {
              v148 = *((v344 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            type metadata accessor for UIFactory();
            v349 = v322;
            v337 = v148;
            LOBYTE(v338) = 0;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB50, &qword_1E42DC5C0);
            sub_1E3EF47F8();
            sub_1E38D2054(&v337, &v335);
            v149 = v335;
            sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
            v150 = OUTLINED_FUNCTION_0_279();
            v155 = OUTLINED_FUNCTION_48_46(v150, v151, v152, v153, v154);

            v156 = sub_1E325F748(&v337, &qword_1ECF296C0, &unk_1E429BBE0);
            v53 = &v307;
            v337 = v155;
            MEMORY[0x1EEE9AC00](v156);
            *(&v307 - 2) = &v344;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB58, &qword_1E42AF4B0);
            sub_1E4148DE0(sub_1E3EF48D0);

LABEL_122:
            OUTLINED_FUNCTION_32_75();
            goto LABEL_123;
          }

          if (!sub_1E3850584())
          {
            switch(v128)
            {
              case 233:
                v190 = type metadata accessor for DownloadStateIndicatorView();
                OUTLINED_FUNCTION_1_250();
                v192 = (*(v191 + 360))();
                v139 = v190;
                sub_1E3D08E94(v118, 0, v192);
                OUTLINED_FUNCTION_50();

                v147 = &v346;
                break;
              case 67:
                OUTLINED_FUNCTION_1_250();
                v187 = *(v186 + 336);

                v139 = v39;
                if (v187(v188))
                {
                  OUTLINED_FUNCTION_106();
                  type metadata accessor for ContextMenuButton();
                  v189 = swift_dynamicCastClass();
                  if (!v189)
                  {
                  }
                }

                else
                {
                  v189 = 0;
                }

                type metadata accessor for UIFactory();
                OUTLINED_FUNCTION_106();
                type metadata accessor for ContextMenuButton();
                v205 = OUTLINED_FUNCTION_0_279();
                sub_1E393D92C(v205, v189, v206, v127, v207);
                OUTLINED_FUNCTION_17_128();

                sub_1E325F748(&v337, &qword_1ECF296C0, &unk_1E429BBE0);
                if (!v39)
                {
                  v318 = 0;
                  goto LABEL_123;
                }

                v208 = OBJC_IVAR____TtC8VideosUI17ContextMenuButton_lockupViewModel;
                OUTLINED_FUNCTION_3_0(v39 + OBJC_IVAR____TtC8VideosUI17ContextMenuButton_lockupViewModel, &v336);
                *(v39 + v208) = v321;

                v147 = &v347;
                break;
              case 63:
                type metadata accessor for UIFactory();
                OUTLINED_FUNCTION_1_250();
                v168 = *(v167 + 336);

                v139 = v39;
                v170 = v168(v169);
                v51 = MEMORY[0x1E69E7D40];
                v171 = v170;
                sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
                v172 = OUTLINED_FUNCTION_0_279();
                OUTLINED_FUNCTION_48_46(v172, v173, v174, v175, v176);
                OUTLINED_FUNCTION_17_128();

                sub_1E325F748(&v337, &qword_1ECF296C0, &unk_1E429BBE0);
                v147 = v348;
                break;
              default:
                sub_1E324FBDC();
                OUTLINED_FUNCTION_36_5();
                v193 = v312;
                v194(v313);
                v195 = v321;

                v196 = sub_1E41FFC94();
                v39 = sub_1E42067D4();

                if (os_log_type_enabled(v196, v39))
                {
                  v197 = swift_slowAlloc();
                  v308 = swift_slowAlloc();
                  v337 = v308;
                  *v197 = v309;
                  v198 = *(*v195 + 376);
                  v307 = v196;
                  v199 = v198();
                  v53 = sub_1E3270FC8(v199, v200, &v337);

                  *(v197 + 4) = v53;
                  OUTLINED_FUNCTION_32_75();
                  v201 = v307;
                  _os_log_impl(&dword_1E323F000, v307, v39, "CardCollectionViewCell: unexpected child viewModel of type = %s", v197, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v308);
                  OUTLINED_FUNCTION_6_0();
                  OUTLINED_FUNCTION_6_0();

                  OUTLINED_FUNCTION_36_5();
                  v203 = v313;
                  v204 = v312;
                }

                else
                {

                  OUTLINED_FUNCTION_36_5();
                  v203 = v313;
                  v204 = v193;
                }

                v202(v203, v204);
                OUTLINED_FUNCTION_25_88();
                goto LABEL_123;
            }

LABEL_108:
            *(v147 - 32) = v139;
LABEL_123:
            v27 = v334;
            goto LABEL_124;
          }

          OUTLINED_FUNCTION_51_1();
          sub_1E3ACF3E8();
          v158 = v157;
          v160 = v159;
          v162 = v161;
          v163 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
          v164 = *((*v51 & *v39) + 0x120);
          v39 = v163;
          v165 = v164();
          v51 = MEMORY[0x1E69E7D40];
          v53 = v165;
          v341 = &type metadata for OverlayFactoryContext;
          v342 = &off_1F5D6F838;
          v337 = v158;
          v338 = v160;
          v339 = v162 & 1;
          v166 = (v162 >> 8) & 1;
          v88 = v325;
          v340 = v166;
          sub_1E393D9C4(v118, v165, &v337, v127);
          OUTLINED_FUNCTION_50();

          OUTLINED_FUNCTION_25_88();
          OUTLINED_FUNCTION_32_75();

          sub_1E325F748(&v337, &qword_1ECF296C0, &unk_1E429BBE0);
          v27 = v39;
        }

LABEL_124:
        if (v332 == ++v114)
        {
          goto LABEL_140;
        }
      }
    }

    OUTLINED_FUNCTION_11_158();
    v324 = 1;
LABEL_140:

    LOBYTE(v349) = 0;
    OUTLINED_FUNCTION_6_188();
    (*(v209 + 776))(&v337, &v349, &unk_1F5D5E0F8, &off_1F5D5CAF8);
    if (v341)
    {
      v210 = swift_dynamicCast();
      v211 = v317;
      if (v210)
      {
        v213 = v349;
        v212 = v350;
        v214 = sub_1E3285D14();
        v215 = v51;
        v216 = *((*v51 & **v214) + 0x110);
        v217 = *v214;
        v218 = v216(*&v213, *&v212);

        if (v218)
        {
          OUTLINED_FUNCTION_21();
          (*(v219 + 296))(COERCE_DOUBLE(*&v213), COERCE_DOUBLE(*&v212));
          OUTLINED_FUNCTION_22_87();
          v221 = *((*v215 & v220) + 0x180);
          v222 = v39;
          v223 = v221();
          if (v223)
          {
            v222 = v223;
            [v223 frame];
            OUTLINED_FUNCTION_16_73();
          }

          v225 = *v214;
          v226 = *((*v215 & **v214) + 0x108);
          v227 = v225;
          v228 = OUTLINED_FUNCTION_50();
          v229 = v226(v228);
          v51 = MEMORY[0x1E69E7D40];
          v230 = v229;

          OUTLINED_FUNCTION_22_87();
          v232 = (*((*v51 & v231) + 0x188))(v230);
          v233 = (v221)(v232);
          if (v233)
          {
            v234 = v233;
            OUTLINED_FUNCTION_5_111();
            [v235 v236];
          }
        }

        else
        {

          v51 = v215;
        }

        v224 = v316;
        OUTLINED_FUNCTION_32_75();
      }

      else
      {
        v224 = v316;
      }
    }

    else
    {
      sub_1E325F748(&v337, &unk_1ECF296E0, &unk_1E4298030);
      v224 = v316;
      v211 = v317;
    }

    if ((v324 & 1) == 0)
    {
      if (!v27 || (v237 = [v27 vuiOverrideUserInterfaceStyle], v237 != v323))
      {
        [v27 vui:v323 setOverrideUserInterfaceStyle:?];
      }
    }

    OUTLINED_FUNCTION_1_250();
    v239 = *(v238 + 224);
    v240 = OUTLINED_FUNCTION_38_60(v224, &a12);
    v239(v240);
    OUTLINED_FUNCTION_1_250();
    v242 = *(v241 + 248);
    v243 = OUTLINED_FUNCTION_38_60(v327, &a11);
    v242(v243);
    OUTLINED_FUNCTION_22_87();
    v245 = *((*v51 & v244) + 0x110);
    v246 = OUTLINED_FUNCTION_38_60(v329, &a10);
    v245(v246);
    v247 = *((*v51 & *v39) + 0x140);

    v247(v248);
    OUTLINED_FUNCTION_22_87();
    v250 = *((*v51 & v249) + 0x128);
    v331 = v27;
    v250(v27);
    v251 = v318;
    v252 = v318;
    if (!v318)
    {
      v252 = v319;
      v253 = v319;
      v251 = v318;
    }

    v329 = v251;

    OUTLINED_FUNCTION_22_87();
    (*((*v51 & v254) + 0x158))(v252);
    OUTLINED_FUNCTION_22_87();
    v256 = *((*v51 & v255) + 0x170);
    v257 = v211;
    v256(v211);
    OUTLINED_FUNCTION_22_87();
    (*((*v51 & v258) + 0x1A0))(0);
    OUTLINED_FUNCTION_22_87();
    v260 = (*((*v51 & v259) + 0x150))();
    v337 = v260;
    MEMORY[0x1EEE9AC00](v260);
    *(&v307 - 2) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35970, &unk_1E42C5BA0);
    sub_1E4148DE0(sub_1E3EF4860);

    v261 = v326;
    OUTLINED_FUNCTION_16_89();
    v263 = *(v262 + 136);
    v264 = v263();
    [v264 setVuiContentMode_];

    v265 = v263();
    v266 = *sub_1E3E932E0();
    v267 = *sub_1E3E932EC();
    v327 = v257;
    if (v266)
    {
      if ((v267 & ~v266) == 0)
      {
        goto LABEL_164;
      }
    }

    else if (!v267)
    {
      v266 = 0;
      goto LABEL_164;
    }

    v266 |= v267;
LABEL_164:
    [v265 setVuiAutoresizingMask_];

    if (*&v261[OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardViewLayout])
    {
      OUTLINED_FUNCTION_30_1();
      v269 = *(v268 + 552);
      OUTLINED_FUNCTION_60_2();
      v270 = swift_retain_n();
      v271 = v269(&v349, v270);
      v272 = 0.0;
      if ((v353 & 1) == 0)
      {
        v272 = sub_1E3952BE8(v349, v350, v351, v352);
      }

      v273 = v326;
      v274 = (v263)(v271);
      v275 = [v274 vuiLayer];

      [v275 setCornerRadius_];
      v276 = v263();
      v277 = [v276 superview];

      if (!v277)
      {
        v277 = [v273 vuiContentView];
        v278 = v263();
        [v277 addSubview_];
      }

      v279 = [v273 vuiContentView];
      OUTLINED_FUNCTION_0_44();
      v281 = (*(v280 + 744))();

      if (!v281)
      {
        v281 = [objc_opt_self() clearColor];
      }

      [v279 setVuiBackgroundColor_];

      OUTLINED_FUNCTION_0_44();
      v283 = *(*(v282 + 1920))();
      (*(v283 + 552))(&v337);

      v285 = 0.0;
      if ((v342 & 1) == 0)
      {
        OUTLINED_FUNCTION_16_130();
        v285 = sub_1E3952BE8(v286, v287, v288, v289);
      }

      v290 = v326;
      v291 = v326;
      (v263)(v284);
      OUTLINED_FUNCTION_71();
      v39 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_64();
      v293 = (*(v292 + 216))();

      v294 = [v293 vuiLayer];
      [v294 setCornerRadius_];

      v295 = [v290 vuiContentView];
      v296 = [v295 vuiLayer];

      v261 = v290;
      [v296 setCornerRadius_];

      OUTLINED_FUNCTION_25_88();
    }

    v297 = v261;
    v263();
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_16_89();
    v299 = (*(v298 + 168))();

    if (v299)
    {
      v297 = v263();
      v300 = [objc_opt_self() randomColor];
      [v297 setVuiBackgroundColor_];
    }

    OUTLINED_FUNCTION_6_188();
    v302 = (*(v301 + 744))();
    [v261 setBackgroundColor_];

    v303 = (*(*v297 + 864))();
    OUTLINED_FUNCTION_2_34(v303, sel_setHighlightedBackgroundColor_);

    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_61_25();

    OUTLINED_FUNCTION_245_0();
    OUTLINED_FUNCTION_20_0();
    return;
  }

  v349 = v40;
  v79 = sub_1E32AE9B0(v56);
  v80 = 0;
  v81 = v56 & 0xC000000000000001;
  v39 = v56 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v79 == v80)
    {

      v56 = *&v349;
      OUTLINED_FUNCTION_25_88();
      v51 = MEMORY[0x1E69E7D40];
      goto LABEL_63;
    }

    if (v81)
    {
      v27 = v56;
      v53 = MEMORY[0x1E6911E60](v80, v56);
    }

    else
    {
      if (v80 >= *(v39 + 16))
      {
        goto LABEL_178;
      }

      v27 = v56;
      v53 = *(v56 + 8 * v80 + 32);
    }

    if (__OFADD__(v80, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_35_66();
    LOWORD(v335) = 39;
    sub_1E3742F1C(v82, v83, v84);
    sub_1E4206254();
    sub_1E4206254();
    if (v345[0] == v337 && v345[1] == v338)
    {
    }

    else
    {
      v86 = sub_1E42079A4();

      if ((v86 & 1) == 0)
      {

        goto LABEL_60;
      }
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    sub_1E4207554();
LABEL_60:
    ++v80;
    v56 = v27;
  }

  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  sub_1E4207A74();
  __break(1u);
}

id sub_1E3EF3638()
{
  OUTLINED_FUNCTION_0_8();
  v5 = type metadata accessor for FeaturedCardCollectionViewCell();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E3EF36A8(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FeaturedCardCollectionViewCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3EF3750(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_1E3EF3788@<X0>(void *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  [v6 vui:a2 sizeThatFits:1.79769313e308];
  v14 = v13;
  v16 = v15;
  v17.n128_f64[0] = sub_1E41A300C(v37);
  if (*(v6 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardViewLayout) && (OUTLINED_FUNCTION_8(), v19 = *(v18 + 2088), v20 = , v21 = v19(v20), , v21 != 20) && (v22 = sub_1E3D23FE4(v21), (v22 & 1) != 0))
  {
    sub_1E41A2FE8(v22, v14, v16);
    *&v37[6] = a3;
    *&v37[7] = a4;
    v37[8] = 0;
    *&v37[9] = a6;
  }

  else
  {
    v23 = MEMORY[0x1E69E7D40];
    v24 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x88);
    v24(v17);
    OUTLINED_FUNCTION_7_5();
    (*((*v23 & v25) + 0x1B8))(a2);

    sub_1E41A2FE8(v26, v14, v16);
    sub_1E3952C94();
    v37[2] = v27;
    v37[3] = v28;
    v37[4] = v29;
    v37[5] = v30;
    *&v37[6] = a3;
    *&v37[7] = a4;
    *&v37[8] = a5;
    *&v37[9] = a6;
    (v24)();
    OUTLINED_FUNCTION_7_5();
    v32 = (*((*v23 & v31) + 0x138))();

    if (v32)
    {
      v33 = sub_1E37CB21C(v32);

      if (v33)
      {
        [v33 bottomMarginWithBaselineMargin_];
        v35 = v34;

        v37[8] = v35;
      }
    }
  }

  memcpy(__dst, v37, sizeof(__dst));
  return memcpy(a1, __dst, 0x50uLL);
}

double sub_1E3EF3A48(void *a1, uint64_t a2)
{
  v3 = v2;
  v12 = 0;
  (*(*a2 + 776))(v13, &v12, &unk_1F5D5D408, &off_1F5D5C818);
  if (v13[3])
  {
    v6 = swift_dynamicCast();
    if (v6 && (v12 & 1) != 0)
    {
      if (a1)
      {
        [a1 setUserInteractionEnabled_];
        v6 = [a1 addTarget:v2 action:sel_imageViewHandler_ forControlEvents:64];
      }

      (*(*a2 + 320))(v6);
      if (v8)
      {

        if (a1)
        {
          type metadata accessor for Accessibility();
          sub_1E40A8408();
          if (v10)
          {
            v11 = sub_1E4205ED4();
          }

          else
          {
            v11 = 0;
          }

          OUTLINED_FUNCTION_2_34(v9, sel_setVuiAccessibilityIdentifier_);
        }
      }

      *(v3 + OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_imageViewModel) = a2;

      return result;
    }
  }

  else
  {
    sub_1E325F748(v13, &unk_1ECF296E0, &unk_1E4298030);
  }

  if (a1)
  {
    [a1 setUserInteractionEnabled_];
  }

  return result;
}

uint64_t sub_1E3EF3C1C()
{
  type metadata accessor for BaseImpressionManager();
  v1 = static BaseImpressionManager.getParentSnapshotImpressions(responder:)(v0);
  OUTLINED_FUNCTION_45();
  (*(v2 + 136))();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_64();
  v4 = (*(v3 + 216))();

  if (*&v0[OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_imageViewModel])
  {
    OUTLINED_FUNCTION_8();
    v6 = *(v5 + 800);

    v7 = v4;
    v6(2, v1, v4, 0);
  }
}

id sub_1E3EF3DA0()
{
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_6_41();
  (*(v2 + 136))();
  OUTLINED_FUNCTION_7_5();
  v4 = (*((*v1 & v3) + 0x180))();

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 contextMenuItems];

  if (v5)
  {
    sub_1E3280A90(0, &unk_1ECF3BDE0, 0x1E69DC628);
    v6 = sub_1E42062B4();

    if (v6 >> 62)
    {
      if (v6 < 0)
      {
        v5 = v6;
      }

      else
      {
        v5 = (v6 & 0xFFFFFFFFFFFFFF8);
      }

      sub_1E3280A90(0, &qword_1ECF2BA40, 0x1E69DCC78);

      sub_1E42076C4();
      OUTLINED_FUNCTION_17_128();
      swift_bridgeObjectRelease_n();
    }

    else
    {

      sub_1E42079D4();
      sub_1E3280A90(0, &qword_1ECF2BA40, 0x1E69DCC78);

      return v6;
    }
  }

  return v5;
}

uint64_t sub_1E3EF3F80()
{
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_6_41();
  (*(v2 + 136))();
  OUTLINED_FUNCTION_7_5();
  v4 = (*((*v1 & v3) + 0x150))();

  if (v4)
  {
    v5 = type metadata accessor for ContextMenuButton();
    result = OUTLINED_FUNCTION_4_84(v5);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

void *sub_1E3EF4028()
{
  v0 = sub_1E3EF3F80();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI17ContextMenuButton_contextMenuInteractor;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI17ContextMenuButton_contextMenuInteractor, v6);
  v3 = *&v1[v2];
  v4 = v3;

  return v3;
}

void sub_1E3EF4088(void *a1)
{
  v1 = sub_1E3EF3F80();
  if (v1)
  {
    v2 = v1;
    v3 = OBJC_IVAR____TtC8VideosUI17ContextMenuButton_contextMenuInteractor;
    OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI17ContextMenuButton_contextMenuInteractor, v6);
    v4 = *&v2[v3];
    *&v2[v3] = a1;
  }

  else
  {
  }
}

uint64_t sub_1E3EF4118()
{
  v0 = sub_1E3EF3F80();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI17ContextMenuButton_contextMenuInteractorDelegate, v4);
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_1E3EF4194(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E3EF3F80();
  if (v3)
  {
    v4 = v3;
    v5 = v3 + OBJC_IVAR____TtC8VideosUI17ContextMenuButton_contextMenuInteractorDelegate;
    OUTLINED_FUNCTION_3_0(v3 + OBJC_IVAR____TtC8VideosUI17ContextMenuButton_contextMenuInteractorDelegate, v7);
    *(v5 + 8) = a2;
    swift_unknownObjectWeakAssign();

    return swift_unknownObjectRelease();
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1E3EF423C(void **a1)
{
  a1[1] = v1;
  *a1 = sub_1E3EF4028();
  return OUTLINED_FUNCTION_116();
}

void sub_1E3EF4280(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1E3EF4088(v2);
  }

  else
  {
    sub_1E3EF4088(*a1);
  }
}

uint64_t sub_1E3EF42F0(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = sub_1E3EF4118();
  a1[1] = v3;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E3EF4334(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_1E3EF4194(*a1, v2);
  }

  v3 = swift_unknownObjectRetain();
  sub_1E3EF4194(v3, v2);

  return swift_unknownObjectRelease();
}

id sub_1E3EF43A4()
{
  OUTLINED_FUNCTION_58_34();
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 136))();
  OUTLINED_FUNCTION_64();
  v4 = (*(v3 + 240))();

  if (v4)
  {
    [v4 bounds];
    OUTLINED_FUNCTION_16_73();
  }

  else
  {
    [v0 bounds];
    OUTLINED_FUNCTION_16_73();
  }

  if (*&v0[OBJC_IVAR____TtC8VideosUI22CardCollectionViewCell_cardViewLayout])
  {
    OUTLINED_FUNCTION_8();
    v6 = *(v5 + 1920);

    v8 = v6(v7);

    (*(*v8 + 552))(v18, v9);
    v10 = *v18;
    v11 = *&v18[1];
    v13 = *&v18[2];
    v12 = *&v18[3];

    if ((v19 & 1) == 0)
    {
      sub_1E3952BE8(v10, v11, v13, v12);
    }
  }

  objc_opt_self();
  OUTLINED_FUNCTION_5_111();
  v16 = [v14 v15];

  return v16;
}

uint64_t sub_1E3EF45AC()
{
  OUTLINED_FUNCTION_6_41();
  (*(v1 + 136))();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_64();
  v3 = (*(v2 + 216))();

  return v3;
}

void sub_1E3EF466C(void **a1)
{
  v2 = *a1;
  v3 = [*(v1 + 16) vuiContentView];
  v5 = [v3 vuiLayer];

  if (v5)
  {
    v4 = [v2 CGColor];
    [v5 setShadowColor_];
  }
}

void sub_1E3EF4730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_8();
  v27 = (*(v26 + 2088))();
  if (v27 == 20 || (sub_1E3D23FE4(v27) & 1) == 0)
  {
    v28 = OUTLINED_FUNCTION_52_47();

    sub_1E3EF1438(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  }

  else
  {
    OUTLINED_FUNCTION_52_47();

    sub_1E3EEFBB4();
  }
}

unint64_t sub_1E3EF47F8()
{
  result = qword_1EE23B448;
  if (!qword_1EE23B448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FB50, &qword_1E42DC5C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B448);
  }

  return result;
}

double sub_1E3EF4878(id *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  MEMORY[0x1E6910BF0]();
  sub_1E38C5A18(*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1E4206324();
  return result;
}

unsigned __int16 *OUTLINED_FUNCTION_48_46(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1E393D92C(a1, v5, a3, v6, a5);
}

uint64_t sub_1E3EF491C(uint64_t a1)
{
  type metadata accessor for EpisodeCollectionViewModel();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BE00, &unk_1E42AA5E0);
    sub_1E42038E4();
    v2 = v11;
    v3 = v12;
    v11 = 0;
    v12 = 0;
    v13 = v1;
    v14 = v2;
    v15 = v3;
    v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BE08, &qword_1E42DC5C8));

    swift_unknownObjectRetain();

    v1 = sub_1E4201E44();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v6 = sub_1E4201E54();
    v8 = *v7;
    v9 = v7[1];
    *v7 = sub_1E3EF4B30;
    v7[1] = v5;
    sub_1E37FAED8(v8, v9);
    v6(&v11, 0);

    swift_unknownObjectRelease();
  }

  return v1;
}

id sub_1E3EF4AFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeasonsDownloadViewControllerCreator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3EF4B30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong vui:1 dismissViewControllerAnimated:0 completion:?];
  }
}

uint64_t sub_1E3EF4B90@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BE10, &qword_1E42DC5D0);
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v3 = &v14 - v2;
  v5 = *(v1 + 32);
  v22[0] = *(v1 + 24);
  v4 = v22[0];
  v22[1] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BE18, &qword_1E42DC5D8);
  sub_1E4203914();
  v18 = v1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BE00, &unk_1E42AA5E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BE20, &qword_1E42DC5E0);
  OUTLINED_FUNCTION_4_213(&qword_1ECF3BE28);
  OUTLINED_FUNCTION_4_213(&qword_1ECF3BE30);
  OUTLINED_FUNCTION_4_213(&qword_1ECF3BE38);
  sub_1E3EF523C();
  sub_1E3EF57AC(&qword_1ECF2D9D0, type metadata accessor for SeasonMetadata, &unk_1E42B75E8);
  sub_1E42013B4();
  v21[0] = v4;
  v21[1] = v5;
  sub_1E42038F4();
  v20 = v22[0];
  v21[0] = v5;
  v22[0] = v4;
  v6 = swift_allocObject();
  v7 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v1 + 32);
  v8 = OUTLINED_FUNCTION_32_0();
  sub_1E37FAED4(v8, v9);

  sub_1E379D7E4(v22, v19, &qword_1ECF3BE00, &unk_1E42AA5E0);
  sub_1E379D7E4(v21, v19, &qword_1ECF3BE70, qword_1E42DC5F0);
  OUTLINED_FUNCTION_16_90();
  sub_1E32752B0(v10, &qword_1ECF3BE10, &qword_1E42DC5D0, v11);
  sub_1E3EF56F8();
  v12 = v15;
  sub_1E4203534();

  return (*(v17 + 8))(v3, v12);
}

uint64_t sub_1E3EF4EDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  type metadata accessor for SeasonDownloadEpisodeListView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BEE8, qword_1E42DC6F0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = a1[2];
  v10 = *(*v9 + 1168);
  v11 = swift_retain_n();
  v12 = v10(v11);
  v13 = sub_1E32AE9B0(v12);

  if (v13 >= 2)
  {
    v15 = *a1;
    v16 = a1[1];
    sub_1E37FAED4(v15, v16);
    *v8 = sub_1E3905320(v9, v15, v16);
    v8[8] = v17 & 1;
    *(v8 + 2) = v18;
    *(v8 + 3) = v19;
    v20 = swift_storeEnumTagMultiPayload();
    sub_1E3EF537C(v20, v21, v22);
    OUTLINED_FUNCTION_0_280();
    sub_1E3EF57AC(v23, v24, &unk_1E42DA7F8);
    v25 = v40;
    sub_1E4201F44();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BE50, &qword_1E42DC5E8);
    v27 = v25;
    return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  }

  v28 = v40;
  v29 = v10(v14);
  v30 = sub_1E32AE9B0(v29);

  if (v30 == 1)
  {
    type metadata accessor for EpisodeListInteractor(0);
    sub_1E37956E0(v9, 0);

    sub_1E3EA9C58(v31, 0, 0, v5);
    sub_1E3EADD08(v5, v8);
    v32 = swift_storeEnumTagMultiPayload();
    sub_1E3EF537C(v32, v33, v34);
    OUTLINED_FUNCTION_0_280();
    sub_1E3EF57AC(v35, v36, &unk_1E42DA7F8);
    sub_1E4201F44();

    sub_1E3EF585C(v5);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BE50, &qword_1E42DC5E8);
    v27 = v28;
    return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BE50, &qword_1E42DC5E8);

  return __swift_storeEnumTagSinglePayload(v28, 1, 1, v38);
}

unint64_t sub_1E3EF523C()
{
  result = qword_1ECF3BE40;
  if (!qword_1ECF3BE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BE20, &qword_1E42DC5E0);
    sub_1E3EF52C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BE40);
  }

  return result;
}

unint64_t sub_1E3EF52C0()
{
  result = qword_1ECF3BE48;
  if (!qword_1ECF3BE48)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BE50, &qword_1E42DC5E8);
    sub_1E3EF537C(v1, v2, v3);
    sub_1E3EF57AC(&unk_1ECF3BE60, type metadata accessor for SeasonDownloadEpisodeListView, &unk_1E42DA7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BE48);
  }

  return result;
}

unint64_t sub_1E3EF537C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3BE58;
  if (!qword_1ECF3BE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BE58);
  }

  return result;
}

void sub_1E3EF53D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BE18, &qword_1E42DC5D8);
  sub_1E42038F4();
  v1 = sub_1E32AE9B0(v34);

  if (v1 == 1)
  {
    v33 = *(v0 + 40);
    sub_1E42038F4();
    if (!sub_1E32AE9B0(v34))
    {

      return;
    }

    if ((v34 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x1E6911E60](0);
    }

    else
    {
      if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v2 = *(v34 + 32);
    }

    (*(**(v0 + 32) + 1168))(v3);
    v4 = OUTLINED_FUNCTION_32_0();
    sub_1E3906618(v4, v5);
    v7 = v6;
    v9 = v8;

    if (v9)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E429A200;
      *(inited + 32) = sub_1E4205F14();
      *(inited + 40) = v11;
      v12 = sub_1E4205F14();
      v13 = MEMORY[0x1E69E6158];
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = v12;
      *(inited + 56) = v14;
      *(inited + 80) = sub_1E4205F14();
      *(inited + 88) = v15;
      v16 = v2[2];
      v17 = v2[3];
      *(inited + 120) = v13;
      *(inited + 96) = v16;
      *(inited + 104) = v17;
      *(inited + 128) = sub_1E4205F14();
      *(inited + 136) = v18;
      v19 = sub_1E4205F14();
      *(inited + 168) = v13;
      *(inited + 144) = v19;
      *(inited + 152) = v20;
      v21 = sub_1E4205F14();
      v22 = MEMORY[0x1E69E6530];
      *(inited + 176) = v21;
      *(inited + 184) = v23;
      *(inited + 216) = v22;
      *(inited + 192) = v7;
      *(inited + 224) = sub_1E4205F14();
      *(inited + 232) = v24;
      v25 = v2[5];
      v26 = v2[6];
      *(inited + 264) = v13;
      *(inited + 240) = v25;
      *(inited + 248) = v26;
      *(inited + 272) = sub_1E4205F14();
      *(inited + 280) = v27;
      v28 = sub_1E4205F14();
      *(inited + 312) = v13;
      *(inited + 288) = v28;
      *(inited + 296) = v29;

      v30 = sub_1E4205CB4();
      v31 = [objc_opt_self() sharedInstance];
      sub_1E3744600(v30);

      v32 = sub_1E4205C44();

      [v31 recordClick_];
    }
  }
}

unint64_t sub_1E3EF56F8()
{
  result = qword_1ECF3BE80;
  if (!qword_1ECF3BE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BE00, &unk_1E42AA5E0);
    sub_1E3EF57AC(&qword_1ECF2DAC0, type metadata accessor for SeasonMetadata, &unk_1E42B7628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BE80);
  }

  return result;
}

uint64_t sub_1E3EF57AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3EF585C(uint64_t a1)
{
  v2 = type metadata accessor for SeasonDownloadEpisodeListView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3EF58B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI27PlaybackMetricsQueueManager_eventQueue;
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_1E3EF6080();
  v4 = *(*(v1 + v3) + 16);
  sub_1E3EF60CC(v4);
  v5 = *(v1 + v3);
  *(v5 + 16) = v4 + 1;
  v6 = v5 + 16 * v4;
  *(v6 + 32) = a1;
  *(v6 + 40) = 1;
  *(v1 + v3) = v5;
  swift_endAccess();
  return sub_1E3EF5964();
}

uint64_t sub_1E3EF5964()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI27PlaybackMetricsQueueManager_eventQueue;
  result = swift_beginAccess();
  v4 = *(v0 + v2);
  if (*(v4 + 2))
  {
    if (v4[40] == 1)
    {
      v5 = [*(v4 + 4) recordPageHandler];
      OUTLINED_FUNCTION_2_213(v5, v6, v7, v8, v9, v10, v11, v12, v22);
      v4 = *(v1 + v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v2) = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_12;
      }

      while (*(v4 + 2))
      {
        v4[40] = 0;
        *(v1 + v2) = v4;
        result = swift_endAccess();
        if (*(v4 + 2))
        {
          goto LABEL_6;
        }

        __break(1u);
LABEL_12:
        v4 = sub_1E3EF6214(v4);
      }

      __break(1u);
    }

    else
    {
LABEL_6:
      if (v4[41] != 1)
      {
        return result;
      }

      v14 = [*(v4 + 4) recordImpressionsHandler];
      OUTLINED_FUNCTION_2_213(v14, v15, v16, v17, v18, v19, v20, v21, v22);
      v4 = *(v1 + v2);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v2) = v4;
      if (result)
      {
        goto LABEL_8;
      }
    }

    result = sub_1E3EF6214(v4);
    v4 = result;
LABEL_8:
    if (*(v4 + 2))
    {
      v4[41] = 0;
      *(v1 + v2) = v4;
      sub_1E3EF6008();
      swift_endAccess();
      swift_unknownObjectRelease();
      return sub_1E3EF5964();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1E3EF5ABC(void *a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33[-v9];
  v11 = OBJC_IVAR____TtC8VideosUI27PlaybackMetricsQueueManager_eventQueue;
  swift_beginAccess();
  v12 = *(v2 + v11);
  v13 = *(v12 + 16);
  if (!v13)
  {
    v14 = sub_1E324FBDC();
    (*(v5 + 16))(v10, v14, v4);
    swift_unknownObjectRetain();
    v15 = sub_1E41FFC94();
    v16 = sub_1E42067F4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v35 = v17;
      v36 = swift_slowAlloc();
      v37[0] = v36;
      *v17 = 136315138;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3BEF8, &qword_1E42DC708);
      v18 = sub_1E4205F84();
      v34 = v16;
      v20 = sub_1E3270FC8(v18, v19, v37);

      v21 = v35;
      *(v35 + 1) = v20;
      _os_log_impl(&dword_1E323F000, v15, v34, "PlaybackMetricsManager::recordImpressions - queue emptyImpression recorder: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v5 + 8))(v10, v4);
    [a1 recordImpressionsHandler];
    v12 = *(v2 + v11);
    v13 = *(v12 + 16);
    if (!v13)
    {
LABEL_8:
      v24 = sub_1E324FBDC();
      (*(v5 + 16))(v7, v24, v4);
      swift_unknownObjectRetain();
      v25 = sub_1E41FFC94();
      v26 = sub_1E42067F4();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v37[0] = v28;
        *v27 = 136315138;
        ObjectType = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3BEF8, &qword_1E42DC708);
        v29 = sub_1E4205F84();
        v31 = sub_1E3270FC8(v29, v30, v37);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_1E323F000, v25, v26, "PlaybackMetricsManager::recordImpressions Attempting to recordImpression\nwithout page event recorder: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v5 + 8))(v7, v4);
      return sub_1E3EF5964();
    }
  }

  v22 = 0;
  v23 = 0;
  while (*(v12 + v22 + 32) != a1)
  {
    ++v23;
    v22 += 16;
    if (v13 == v23)
    {
      goto LABEL_8;
    }
  }

  swift_beginAccess();
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v11) = v12;
  if ((result & 1) == 0)
  {
    result = sub_1E3EF6214(v12);
    v12 = result;
  }

  if (v23 < *(v12 + 16))
  {
    *(v12 + v22 + 41) = 1;
    *(v2 + v11) = v12;
    swift_endAccess();
    return sub_1E3EF5964();
  }

  __break(1u);
  return result;
}

void sub_1E3EF5EF4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_1E3EF5F6C()
{
  v1 = OBJC_IVAR____TtC8VideosUI27PlaybackMetricsQueueManager_eventQueue;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1E3EF6008()
{
  if (*(*v0 + 16))
  {
    v1 = *(*v0 + 32);
    swift_unknownObjectRetain();
    sub_1E3EF6238(0, 1);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1E3EF6080()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1E3EF610C(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_1E3EF60CC(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_1E3EF610C((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

char *sub_1E3EF610C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BF68, &qword_1E42DC770);
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

uint64_t sub_1E3EF6238(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1E3EF632C(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v10 = *(v8 + 16);
  v11 = v10 - a2;
  if (__OFSUB__(v10, a2))
  {
    goto LABEL_21;
  }

  v12 = (v9 + 16 * a2);
  if (16 * v5 != 16 * a2 || v12 + 16 * v11 <= v9 + 16 * v5)
  {
    result = memmove((v9 + 16 * v5), v12, 16 * v11);
    v10 = *(v8 + 16);
  }

  v14 = __OFADD__(v10, v7);
  v15 = v10 - v6;
  if (!v14)
  {
    *(v8 + 16) = v15;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

char *sub_1E3EF632C(int64_t a1, char a2)
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

    result = sub_1E3EF610C(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

void *sub_1E3EF6484(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_customPreviewTarget;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3EF64C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_customPreviewTarget;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_customPreviewTarget, v5);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1E3EF6564(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_textBackgroundView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3EF65A0(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_textBackgroundView;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_textBackgroundView, &v16);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  OUTLINED_FUNCTION_7_19();
  v6 = *(v5 + 200);
  v7 = a1;
  v8 = v6();
  v9 = OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_textBackgroundView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  [v8 vui:*(v1 + v9) addSubview:v4 oldView:?];

  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 1)
  {
    v12 = *(v1 + v9);
    OUTLINED_FUNCTION_7_19();
    v14 = *(v13 + 184);
    v15 = v12;
    v14(v12);
  }
}

void (*sub_1E3EF66DC())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_textBackgroundView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E3EF6758;
}

void *sub_1E3EF6770(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_textView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void (*sub_1E3EF67B8())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_textView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E3EF6834;
}

void sub_1E3EF684C(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

void *sub_1E3EF68CC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_additionalInfoView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3EF6914(void *a1, uint64_t *a2)
{
  v5 = *a2;
  OUTLINED_FUNCTION_3_0(v2 + *a2, &v18);
  v6 = *(v2 + v5);
  *(v2 + v5) = a1;
  OUTLINED_FUNCTION_7_19();
  v8 = *(v7 + 200);
  v9 = a1;
  v10 = v8();
  OUTLINED_FUNCTION_7_19();
  v12 = (*(v11 + 208))();
  if (v12)
  {
    v13 = v12;
    v14 = [objc_opt_self() currentDevice];
    v15 = [v14 userInterfaceIdiom];

    if (v15 == 1)
    {
      v16 = v10;
    }

    else
    {
      v16 = v13;
    }

    if (v15 == 1)
    {
      v10 = v13;
    }
  }

  v17 = *a2;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  [v10 vui:*(v2 + v17) addSubview:v6 oldView:?];
}

void (*sub_1E3EF6A54())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_additionalInfoView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E3EF6AD0;
}

double sub_1E3EF6AE8(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v5 = a1;
  v206.receiver = v3;
  v206.super_class = type metadata accessor for QueryDescriptionBannerViewCell();
  v8 = objc_msgSendSuper2(&v206, sel_vui_layoutSubviews_computationOnly_, v5 & 1, a2, a3);
  v9 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x80);
  v10 = (v9)(v8);
  if (v10)
  {
    OUTLINED_FUNCTION_30();
    (*(v11 + 1736))();
    OUTLINED_FUNCTION_11_5();

    OUTLINED_FUNCTION_47_0();
    (*(v12 + 152))(v207);
    v203 = *v207;
    v13 = *&v207[3];
    v14 = v208;
  }

  else
  {
    v14 = 1;
    v203 = 0.0;
    v13 = 0.0;
  }

  if ((v9)(v10))
  {
    OUTLINED_FUNCTION_30();
    (*(v23 + 1856))(v209);
    v24 = *v209;
    v25 = *&v209[1];
    v26 = *&v209[2];
    v27 = *&v209[3];

    if ((v210 & 1) == 0)
    {
      v15 = sub_1E3952BE0(v24, v25, v26, v27);
    }
  }

  v28 = 0.0;
  if ((v14 & 1) == 0)
  {
    v29 = OUTLINED_FUNCTION_19_127(v15, v16, v17, v18, v19, v20, v21, v22, v189, v191, v193, v195, *&v197, v200, v202, v203);
    sub_1E3952BE0(v29, v30, v31, v13);
  }

  HIDWORD(v202) = v14;
  if (v9())
  {
    OUTLINED_FUNCTION_30();
    (*(v32 + 1856))(v211);

    if (v212)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = *&v211[1];
    }
  }

  v201 = v13;
  if (v9())
  {
    OUTLINED_FUNCTION_30();
    (*(v33 + 1736))();
    OUTLINED_FUNCTION_11_5();

    OUTLINED_FUNCTION_47_0();
    (*(v34 + 152))(v213);

    OUTLINED_FUNCTION_32_1();
    if (v37)
    {
      v38 = v35;
    }

    else
    {
      v38 = v36;
    }
  }

  else
  {
    v38 = 0.0;
  }

  v198 = objc_opt_self();
  v39 = [v198 currentDevice];
  v40 = [v39 userInterfaceIdiom];

  if (v40 == 1)
  {
    v41 = v9();
    if (v41)
    {
      OUTLINED_FUNCTION_30();
      (*(v42 + 1880))(a2);
    }

    if ((v9)(v41))
    {
      OUTLINED_FUNCTION_30();
      (*(v43 + 1856))(v214);
      v44 = v214[0];
      v45 = v214[1];
      v46 = v214[2];
      v47 = v214[3];

      if ((v215 & 1) == 0)
      {
        sub_1E3952BE0(v44, v45, v46, v47);
      }
    }

    if (v9())
    {
      OUTLINED_FUNCTION_30();
      v49 = (*(v48 + 1736))();

      (*(*v49 + 152))(v216, v50);

      OUTLINED_FUNCTION_32_1();
      if (v37)
      {
        v53 = v51;
      }

      else
      {
        v53 = v52;
      }
    }

    else
    {
      v53 = 0.0;
    }
  }

  else
  {
    v53 = v28 + v38;
  }

  OUTLINED_FUNCTION_12_5();
  v54 += 32;
  v55 = *v54;
  v56 = (*v54)();
  v57 = 0.0;
  v58 = 0.0;
  if (v56)
  {
    v59 = v56;
    if (v9())
    {
      OUTLINED_FUNCTION_30();
      (*(v62 + 1760))();
    }

    OUTLINED_FUNCTION_23_90(v60, v61);
    v58 = v63;
  }

  v64 = v55();
  if (v64)
  {

    if (v9())
    {
      OUTLINED_FUNCTION_30();
      v66 = (*(v65 + 1760))();

      (*(*v66 + 152))(v217, v67);

      if (v218)
      {
        v57 = 0.0;
      }

      else
      {
        v57 = v217[0];
      }
    }
  }

  v205 = v55;
  v68 = v55();
  v69 = 0.0;
  if (v68)
  {

    if (v9())
    {
      OUTLINED_FUNCTION_30();
      v71 = (*(v70 + 1760))();

      (*(*v71 + 152))(v219, v72);

      if (v220)
      {
        v69 = 0.0;
      }

      else
      {
        v69 = v219[2];
      }
    }
  }

  OUTLINED_FUNCTION_12_5();
  v74 = *(v73 + 232);
  v75 = v74();
  if (v75)
  {
    v76 = v75;
    if (v9())
    {
      OUTLINED_FUNCTION_30();
      (*(v79 + 1736))();
    }

    OUTLINED_FUNCTION_23_90(v77, v78);
  }

  if (v5)
  {
    v199 = a2;
    v80 = v205();
    if (v80)
    {

      if (v9())
      {
        OUTLINED_FUNCTION_30();
        (*(v81 + 1856))(v224);

        if ((v225 & 1) == 0)
        {
          OUTLINED_FUNCTION_5_198(v82, v83, v84, v85);
        }
      }

      if (v9())
      {
        OUTLINED_FUNCTION_30();
        (*(v93 + 152))(v226);

        if ((v227 & 1) == 0)
        {
          OUTLINED_FUNCTION_5_198(v94, v86, v87, v88);
        }
      }

      if ((BYTE4(v202) & 1) == 0)
      {
        v95 = OUTLINED_FUNCTION_19_127(0.0, v86.n128_f64[0], v87.n128_f64[0], v88.n128_f64[0], v89, v90, v91, v92, v189, v191, v193, v69, a2, v201, v202, v203);
        sub_1E3952BD8(v95, v96, v97);
      }
    }

    else
    {
      if (v9())
      {
        OUTLINED_FUNCTION_30();
        (*(v103 + 1856))(v224);

        if ((v225 & 1) == 0)
        {
          OUTLINED_FUNCTION_5_198(v104, v105, v106, v107);
        }
      }

      if (v9())
      {
        OUTLINED_FUNCTION_30();
        (*(v115 + 152))(v226);

        if ((v227 & 1) == 0)
        {
          OUTLINED_FUNCTION_5_198(v116, v108, v109, v110);
        }
      }

      if ((BYTE4(v202) & 1) == 0)
      {
        v117 = OUTLINED_FUNCTION_19_127(0.0, v108.n128_f64[0], v109.n128_f64[0], v110.n128_f64[0], v111, v112, v113, v114, v189, v191, v193, v195, a2, v201, v202, v203);
        sub_1E3952BD8(v117, v118, v119);
      }
    }

    return v199;
  }

  else
  {
    v196 = v69;
    if (v9())
    {
      OUTLINED_FUNCTION_30();
      v99 = (*(v98 + 1736))();

      (*(*v99 + 152))(v221, v100);

      OUTLINED_FUNCTION_32_1();
      if (!v37)
      {
        v101 = v102;
      }
    }

    else
    {
      v101 = 0.0;
    }

    v192 = a3;
    v194 = v101;
    v120 = a2;
    if (v9())
    {
      OUTLINED_FUNCTION_30();
      v120 = (*(v121 + 1880))(a2);
    }

    OUTLINED_FUNCTION_13_154();
    Height = CGRectGetHeight(v228);
    v123 = v205();
    v190 = v53;
    if (v123)
    {

      v131 = 0.0;
      if ((BYTE4(v202) & 1) == 0)
      {
        v132 = OUTLINED_FUNCTION_19_127(0.0, v124, v125, v126, v127, v128, v129, v130, v53, v192, v194, v196, *&v198, v201, v202, v203);
        v131 = sub_1E3952BD8(v132, v133, v134);
      }

      v135 = v58 + v57 + v196 + v131;
    }

    else
    {
      v135 = 0.0;
      if (v9())
      {
        OUTLINED_FUNCTION_30();
        v144 = (*(v143 + 1736))();

        (*(*v144 + 152))(v222, v145);

        if ((v223 & 1) == 0)
        {
          v135 = v222[0] + v222[0];
        }
      }
    }

    OUTLINED_FUNCTION_12_5();
    v204 = *(v136 + 208);
    v137 = v204();
    if (v137)
    {
      v138 = v137;
      v139 = Height + v135;
      if (v9())
      {
        OUTLINED_FUNCTION_30();
        (*(v140 + 1856))(v224);

        OUTLINED_FUNCTION_32_1();
        if (v37)
        {
          v142 = v141;
        }
      }

      else
      {
        v142 = 0.0;
      }

      [v138 setFrame_];
    }

    v146 = [v198 currentDevice];
    v147 = [v146 userInterfaceIdiom];

    if (v147 == 1)
    {
      v148 = v74();
      if (v148)
      {
        v149 = v148;
        v150 = v204();
        if (v150)
        {
          v151 = v150;
          [v150 bounds];
        }

        [v4 vuiIsRTL];
        OUTLINED_FUNCTION_13_154();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        [v149 setFrame_];
      }
    }

    v152 = v204;
    v153 = v204();
    if (v153)
    {
      v154 = v153;
      [v153 frame];

      v155 = v205();
      if (v155)
      {

        if (v9())
        {
          OUTLINED_FUNCTION_30();
          v157 = (*(v156 + 1760))();

          v159 = (*(*v157 + 456))(v158);

          if (v159 != 7)
          {
            LOBYTE(v226[0]) = v159;
            sub_1E3793D00(v160, v161, v162);
            if (sub_1E4205E84())
            {
              OUTLINED_FUNCTION_13_154();
              CGRect.center.getter(v163, v164, v165, v166);
            }
          }

          v152 = v204;
        }

        v167 = [v198 currentDevice];
        v168 = [v167 userInterfaceIdiom];

        if (v168 == 1)
        {
          v169 = v205();
          if (v169)
          {
            v170 = v169;
            v171 = v152();
            if (v171)
            {
              v172 = v171;
              [v171 bounds];
            }

            [v4 vuiIsRTL];
            VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
            [v170 setFrame_];
          }
        }

        if (UIAccessibilityIsReduceTransparencyEnabled())
        {
          v173 = v205();
          if (v173)
          {
            v174 = v173;
            [v173 setAlpha_];
          }
        }
      }
    }

    v175 = v152();
    if (v175)
    {
      v176 = v175;
      if (!v9() || (OUTLINED_FUNCTION_30(), (*(v177 + 552))(v226), v178 = v226[0], v179 = v226[1], v180 = v226[2], v181 = v226[3], , (v227 & 1) != 0))
      {
        v178 = *MEMORY[0x1E69DDCE0];
        v179 = *(MEMORY[0x1E69DDCE0] + 8);
        v180 = *(MEMORY[0x1E69DDCE0] + 16);
        v181 = *(MEMORY[0x1E69DDCE0] + 24);
      }

      type metadata accessor for GraphicsUtilities();
      [v176 frame];
      v184 = sub_1E418AA20(v178, v179, v180, v181, v182, v183);
      v185 = [v176 vuiLayer];
      [v185 setShadowPath_];

      OUTLINED_FUNCTION_12_5();
      v187 = (*(v186 + 200))();
      [v187 vui:v176 sendSubviewToBack:?];
    }
  }

  return a2;
}

void *sub_1E3EF7C44()
{
  OUTLINED_FUNCTION_156();
  v2 = sub_1E41FFCB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v0)
  {
    v28 = sub_1E324FBDC();
    (*(v3 + 16))(v5, v28, v2);

    v29 = sub_1E41FFC94();
    v30 = sub_1E4206814();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock = v32;
      *v31 = 136315138;
      sub_1E384EE08(*(v1 + 98));
      v35 = sub_1E3270FC8(v33, v34, &aBlock);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1E323F000, v29, v30, "QueryDescriptionBannerViewCell: Failed to get correct cell for [%s]", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1E69143B0](v32, -1, -1);
      MEMORY[0x1E69143B0](v31, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return v0;
  }

  OUTLINED_FUNCTION_47_0();
  v7 = *(v6 + 392);
  v8 = v0;
  if (v7())
  {
    type metadata accessor for QueryDescriptionBannerLayout();
    if (!swift_dynamicCastClass())
    {
    }
  }

  v9 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_12_5();
  (*(v10 + 136))();
  OUTLINED_FUNCTION_0_282();
  v12 = *(v11 + 160);
  v13 = (v11 + 160);

  v12(v14);
  v15 = type metadata accessor for ViewModel();
  v16 = j___s8VideosUI9ViewModelCMa(v15);
  v17 = sub_1E39C1CF8(9, v16, v15);
  result = sub_1E32AE9B0(v17);
  if (!result)
  {

    goto LABEL_19;
  }

  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1E6911E60](0, v17);
    goto LABEL_9;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v17 + 32);

LABEL_9:

    if (*v19 == _TtC8VideosUI13TextViewModel)
    {
      OUTLINED_FUNCTION_0_282();
      v21 = (*(v20 + 208))();
      if (v21)
      {
      }

      else
      {
        [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
        OUTLINED_FUNCTION_0_282();
        (*(v38 + 216))();
        OUTLINED_FUNCTION_0_282();
        v40 = *(v39 + 208);
        v41 = v39 + 208;
        v42 = v40();
        if (v42)
        {
          v13 = v42;
          sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
          v43 = *sub_1E3E6011C();
          v94[1] = v41;
          v44 = v40;
          v45 = v43;
          v46 = *sub_1E3E6029C();
          v47 = sub_1E3E5F2F8(v45, v46);

          v40 = v44;
          [v13 setBackgroundColor_];
        }

        v48 = v40();
        if (v48)
        {
          v49 = v48;
          v13 = [v48 vuiLayer];

          if (v13)
          {
            OUTLINED_FUNCTION_0_282();
            v51 = 0.0;
            if ((*(v50 + 128))())
            {
              OUTLINED_FUNCTION_30();
              (*(v52 + 552))(&aBlock);
              v53 = *&aBlock;
              v54 = *&v96;
              v55 = *&v97;
              v56 = *&v98;

              if ((v99 & 1) == 0)
              {
                v51 = sub_1E3952BE8(v53, v54, v55, v56);
              }
            }

            [v13 setCornerRadius_];
          }
        }

        v57 = v40();
        if (v57)
        {
          v58 = OUTLINED_FUNCTION_24_95(v57);

          if (v58)
          {
            [v58 setShadowOffset_];
          }
        }

        v59 = v40();
        if (v59)
        {
          v60 = OUTLINED_FUNCTION_24_95(v59);

          if (v60)
          {
            [v60 setShadowRadius_];
          }
        }

        v61 = v40();
        if (v61)
        {
          v62 = OUTLINED_FUNCTION_24_95(v61);

          if (v62)
          {
            v13 = [objc_opt_self() blackColor];
            v63 = v40;
            v64 = [v13 CGColor];

            [v62 setShadowColor_];
            v40 = v63;
          }
        }

        v65 = v40();
        if (v65)
        {
          v66 = OUTLINED_FUNCTION_24_95(v65);

          if (v66)
          {
            LODWORD(v67) = 1039516303;
            [v66 setShadowOpacity_];
          }
        }

        v68 = v40();
        if (v68)
        {
          v69 = v68;
          v70 = [v68 vuiLayer];

          if (v70)
          {
            [v70 setMasksToBounds_];
          }
        }
      }

      OUTLINED_FUNCTION_0_282();
      v23 = *(v22 + 232);
      v24 = v23();
      OUTLINED_FUNCTION_0_282();
      v26 = (*(v25 + 128))();
      if (v26)
      {
        v27 = (*(*v26 + 1736))();
      }

      else
      {
        v27 = 0;
      }

      v71 = sub_1E3887F00(v19, v24, v27);

      OUTLINED_FUNCTION_0_282();
      (*(v72 + 240))(v71);
      type metadata accessor for QueryDescriptionBannerViewCell();
      OUTLINED_FUNCTION_0_282();
      v74 = (*(v73 + 152))();
      v75 = sub_1E3EF8A18(v74);

      v77 = (v23)(v76);
      if (v77)
      {
        v78 = v77;
        objc_opt_self();
        v79 = swift_dynamicCastObjCClass();
        if (!v79)
        {
        }
      }

      else
      {
        v79 = 0;
      }

      sub_1E3EF8B64(v75, v79);

      v80 = v23();
      if (v80)
      {
        v81 = v80;
        objc_opt_self();
        v82 = swift_dynamicCastObjCClass();
        if (v82)
        {
          v83 = v82;
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v85 = swift_allocObject();
          *(v85 + 16) = v84;
          *(v85 + 24) = v19;
          v99 = sub_1E3EF98C8;
          v100 = v85;
          aBlock = MEMORY[0x1E69E9820];
          v96 = 1107296256;
          v97 = sub_1E3889A38;
          v98 = &block_descriptor_23_2;
          v86 = _Block_copy(&aBlock);

          [v83 setSelectionHandler_];

          _Block_release(v86);

LABEL_53:
          v9 = MEMORY[0x1E69E7D40];
          goto LABEL_54;
        }
      }

      goto LABEL_53;
    }

LABEL_19:
    OUTLINED_FUNCTION_0_282();
    (*(v36 + 240))(0);
    OUTLINED_FUNCTION_0_282();
    (*(v37 + 216))(0);
LABEL_54:
    OUTLINED_FUNCTION_47_0();
    v88 = (*(v87 + 488))();
    if (v88 && (sub_1E373E010(90, v88, v89), OUTLINED_FUNCTION_11_5(), , v1))
    {
      type metadata accessor for AttributionTextViewUIKit();
      OUTLINED_FUNCTION_0_282();
      v91 = (*(v90 + 256))();
      v92 = sub_1E4001030(v1, v91, 0);

      (*((*v9 & *v8) + 0x108))(v92);
    }

    else
    {
      OUTLINED_FUNCTION_0_282();
      (*(v93 + 264))(0);
    }

    return v0;
  }

  __break(1u);
  return result;
}

id sub_1E3EF8774()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_viewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_customPreviewTarget) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_textBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_textView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_additionalInfoView) = 0;
  DescriptionBannerViewCell = type metadata accessor for QueryDescriptionBannerViewCell();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, DescriptionBannerViewCell);
}

id sub_1E3EF882C(void *a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_layout] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_viewModel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_customPreviewTarget] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_textBackgroundView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_textView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_additionalInfoView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for QueryDescriptionBannerViewCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3EF8904()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QueryDescriptionBannerViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3EF8A18(uint64_t result)
{
  if (result)
  {
    v1 = *(*result + 672);

    v3 = v1(v2);
    sub_1E3277E60(0xD000000000000011, 0x80000001E426A490, v3, &v5);

    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BFC0, qword_1E42DC778);
      if (swift_dynamicCast())
      {
        if (*(v4 + 16))
        {
          *&v5 = MEMORY[0x1E69E7CC0];
          sub_1E3EF9048(v4, &v5);

          return v5;
        }
      }

      else
      {
      }
    }

    else
    {

      sub_1E329505C(&v5);
    }

    return 0;
  }

  return result;
}

void sub_1E3EF8B64(uint64_t a1, void *a2)
{
  if (a2 && a1)
  {
    v36 = a2;
    v3 = [v36 descriptionText];
    if (v3)
    {
      v4 = v3;
      v38 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
      v35 = v4;
      NSAttributedString.simpleFontSize()();
      v6 = v5;
      v7 = a1 + 72;
      v8 = *(a1 + 16);
      v37 = *MEMORY[0x1E69DB648];
      if (v8)
      {
        do
        {
          v42 = *(v7 - 16);
          v43 = *(v7 - 24);
          v44 = v8;

          v9 = objc_allocWithZone(MEMORY[0x1E69DB7F0]);

          v10 = [v9 init];
          v11 = *sub_1E3E60700();
          v12 = objc_opt_self();
          v13 = [v12 configurationWithHierarchicalColor_];
          v14 = [v12 configurationWithPointSize:5 weight:v6];
          v41 = [v13 configurationByApplyingConfiguration_];

          objc_opt_self();
          OUTLINED_FUNCTION_11_5();
          v15 = sub_1E4205ED4();
          v16 = [v13 vuiSystemImageNamed:v15 withConfiguration:v41 accessibilityDescription:0];

          v40 = v10;
          [v10 setImage_];

          v39 = [objc_opt_self() attributedStringWithAttachment_];
          OUTLINED_FUNCTION_21_99();
          v34 = sub_1E32822E0(v17, v18, v19);
          v33 = MEMORY[0x1E69E6158];
          OUTLINED_FUNCTION_25();
          v20 = sub_1E42071F4();
          v22 = v21;

          v23 = [objc_opt_self() systemFontOfSize_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29390, &unk_1E429A000);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1E4297BE0;
          *(inited + 32) = v37;
          *(inited + 40) = v23;
          type metadata accessor for Key(0);
          sub_1E3280A90(0, &qword_1ECF29388, 0x1E69DB878);
          sub_1E3B9794C(&qword_1EE23B100, &unk_1E429A0E0);
          v25 = v37;
          v26 = v23;
          v27 = sub_1E4205CB4();
          OUTLINED_FUNCTION_21_99();
          MEMORY[0x1E69109E0](v20, v22);

          MEMORY[0x1E69109E0](41154, 0xA200000000000000);

          v28 = sub_1E3763D14(v27);

          v29 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v30 = sub_1E376403C(v45, v46, v28);
          [v38 appendAttributedString_];
          [v38 appendAttributedString_];
          v31._countAndFlagsBits = v20;
          v31._object = v22;
          v32._countAndFlagsBits = v43;
          v32._object = v42;
          NSMutableAttributedString.setAsLink(textToFind:linkURL:)(v31, v32);

          v8 = v44 - 1;
          v7 += 48;
        }

        while (v44 != 1);
      }

      [v36 setDescriptionText_];
      [v36 setSelectable_];
    }

    else
    {
    }
  }
}

uint64_t sub_1E3EF9048(uint64_t result, char **a2)
{
  v2 = *(result + 16);
  for (i = (result + 32); v2; --v2)
  {
    v4 = *i;
    if (*(*i + 16))
    {

      v5 = sub_1E327D33C(7107189, 0xE300000000000000);
      if ((v6 & 1) != 0 && *(v4 + 16))
      {
        v7 = (*(v4 + 56) + 16 * v5);
        v9 = *v7;
        v8 = v7[1];

        v10 = sub_1E327D33C(1954047348, 0xE400000000000000);
        if ((v11 & 1) != 0 && *(v4 + 16))
        {
          v12 = (*(v4 + 56) + 16 * v10);
          v13 = v12[1];
          v28 = *v12;

          sub_1E327D33C(0x6C6F626D7973, 0xE600000000000000);
          if (v14)
          {

            v15 = sub_1E3F52F38();
            sub_1E32822E0(v15, v16, v17);
            v18 = sub_1E42071F4();
            v25 = v19;
            v26 = v18;

            v20 = *a2;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *a2 = v20;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v20 = sub_1E3EF9558(0, *(v20 + 2) + 1, 1, v20);
              *a2 = v20;
            }

            v23 = *(v20 + 2);
            v22 = *(v20 + 3);
            if (v23 >= v22 >> 1)
            {
              v20 = sub_1E3EF9558((v22 > 1), v23 + 1, 1, v20);
              *a2 = v20;
            }

            *(v20 + 2) = v23 + 1;
            v24 = &v20[48 * v23];
            *(v24 + 4) = v28;
            *(v24 + 5) = v13;
            *(v24 + 6) = v9;
            *(v24 + 7) = v8;
            *(v24 + 8) = v26;
            *(v24 + 9) = v25;

            goto LABEL_18;
          }
        }
      }
    }

LABEL_18:
    ++i;
  }

  return result;
}

void NSAttributedString.simpleFontSize()()
{
  v8 = 0x402E000000000000;
  v1 = [v0 length];
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = v1;
    v3 = swift_allocObject();
    *(v3 + 16) = &v8;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1E3EF9670;
    *(v4 + 24) = v3;
    aBlock[4] = sub_1E3C2A654;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E3C29F74;
    aBlock[3] = &block_descriptor_132;
    v5 = _Block_copy(aBlock);

    [v0 enumerateAttributesInRange:0 options:v2 usingBlock:{0, v5}];
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {

      return;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall NSMutableAttributedString.setAsLink(textToFind:linkURL:)(Swift::String textToFind, Swift::String linkURL)
{
  v3 = [v2 mutableString];
  v4 = sub_1E4205ED4();
  v5 = [v3 rangeOfString_];
  v7 = v6;

  if (v5 != sub_1E41FDD54())
  {
    v8 = *MEMORY[0x1E69DB670];
    v9 = sub_1E4205ED4();
    [v2 addAttribute:v8 value:v9 range:{v5, v7}];
  }
}

char *sub_1E3EF9558(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BFC8, &unk_1E42DC858);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1E3EF9670(uint64_t a1)
{
  v23 = *(v1 + 16);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_10:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v9 << 6);
    v12 = *(*(a1 + 48) + 8 * v11);
    sub_1E328438C(*(a1 + 56) + 32 * v11, v25);
    *&v26 = v12;
    sub_1E329504C(v25, (&v26 + 8));
    v13 = v12;
LABEL_11:
    v29[0] = v26;
    v29[1] = v27;
    v30 = v28;
    v14 = v26;
    if (!v26)
    {

      return;
    }

    sub_1E329504C((v29 + 8), &v26);
    v15 = sub_1E4205F14();
    v17 = v16;
    if (v15 == sub_1E4205F14() && v17 == v18)
    {

LABEL_19:
      sub_1E328438C(&v26, v25);
      sub_1E3280A90(0, &qword_1ECF29388, 0x1E69DB878);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_21;
      }

      [v24 pointSize];
      v22 = v21;

      __swift_destroy_boxed_opaque_existential_1(&v26);
      *v23 = v22;
    }

    else
    {
      v20 = sub_1E42079A4();

      if (v20)
      {
        goto LABEL_19;
      }

LABEL_21:
      __swift_destroy_boxed_opaque_existential_1(&v26);
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      v6 = 0;
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      goto LABEL_11;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void *sub_1E3EF98C8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    OUTLINED_FUNCTION_25();
    return v1();
  }

  return result;
}

void *sub_1E3EF9950()
{
  v1 = OBJC_IVAR____TtC8VideosUI25BackgroundDescriptionView_contextMenuInteraction;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3EF9998(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI25BackgroundDescriptionView_contextMenuInteraction;
  OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI25BackgroundDescriptionView_contextMenuInteraction, a2);
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

void (*sub_1E3EF9AB4(void *a1))(uint64_t, char)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  OUTLINED_FUNCTION_15_138(v3, OBJC_IVAR____TtC8VideosUI25BackgroundDescriptionView_contextMenuInteractorDelegate);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 8);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1E3EFD570;
}

id sub_1E3EF9B28()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI25BackgroundDescriptionView_contextMenuInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25BackgroundDescriptionView_queryDescriptionBannerViewModel) = 0;
  v1 = OBJC_IVAR____TtC8VideosUI25BackgroundDescriptionView_contextMenuInteractor;
  type metadata accessor for ContextMenuInteractor(0);
  *(v0 + v1) = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  OUTLINED_FUNCTION_24_96(v0 + OBJC_IVAR____TtC8VideosUI25BackgroundDescriptionView_contextMenuInteractorDelegate);
  v9 = v0;
  v10 = type metadata accessor for BackgroundDescriptionView();
  v2 = OUTLINED_FUNCTION_2_0();
  v8[3] = v10;
  v8[0] = objc_msgSendSuper2(v3, v4, v2);
  objc_allocWithZone(MEMORY[0x1E69DD060]);
  v5 = v8[0];
  v6 = sub_1E3814AF0(v8, sel_handleSelected_);
  [v5 addGestureRecognizer_];

  return v5;
}

void sub_1E3EF9C7C()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI25BackgroundDescriptionView_contextMenuInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25BackgroundDescriptionView_queryDescriptionBannerViewModel) = 0;
  v1 = OBJC_IVAR____TtC8VideosUI25BackgroundDescriptionView_contextMenuInteractor;
  type metadata accessor for ContextMenuInteractor(0);
  *(v0 + v1) = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  OUTLINED_FUNCTION_24_96(v0 + OBJC_IVAR____TtC8VideosUI25BackgroundDescriptionView_contextMenuInteractorDelegate);
  OUTLINED_FUNCTION_12_145();
  __break(1u);
}

id sub_1E3EF9D2C(uint64_t a1)
{
  v3 = sub_1E41FE874();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_21();
  v8 = (*(v7 + 136))();
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  OUTLINED_FUNCTION_21();
  v11 = *(v10 + 168);
  v12 = swift_unknownObjectRetain();
  v11(v12, &off_1F5D8CB18);
  sub_1E41FE864();
  OUTLINED_FUNCTION_21();
  v14 = (*(v13 + 160))();
  v16 = sub_1E3C9C60C(v9, v6, a1, v1, &off_1F5D8CB08, v14, v15);

  swift_unknownObjectRelease();
  (*(v4 + 8))(v6, v3);
  return v16;
}

void sub_1E3EFA02C(uint64_t a1, void *a2, void *a3)
{
  sub_1E3C9EA54();
  if (a3)
  {
    OUTLINED_FUNCTION_4_0();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a2;
    v9[4] = sub_1E3EFD364;
    v9[5] = v6;
    OUTLINED_FUNCTION_3_4();
    v9[1] = 1107296256;
    v9[2] = sub_1E378AEA4;
    v9[3] = &block_descriptor_133;
    v7 = _Block_copy(v9);
    v8 = a2;

    [a3 addCompletion_];
    _Block_release(v7);
  }
}

double sub_1E3EFA2CC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_14_0(v2 + *a2, a2);
  *(v2 + v4) = a1;

  return result;
}

uint64_t sub_1E3EFA370(void *a1)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1E3EFA3C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3EFA42C(void *a1))(uint64_t, char)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  OUTLINED_FUNCTION_15_138(v3, OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_delegate);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 8);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1E3EFA4A0;
}

id sub_1E3EFA4A4()
{
  v1 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar____lazy_storage___singlePressGesture;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar____lazy_storage___singlePressGesture];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar____lazy_storage___singlePressGesture];
  }

  else
  {
    v4 = v0;
    v10[3] = type metadata accessor for QueryDescriptionBar();
    v10[0] = v0;
    objc_allocWithZone(MEMORY[0x1E69DD060]);
    v5 = v0;
    v6 = sub_1E3814AF0(v10, sel_singlePressWithGesture_);
    v7 = *&v0[v1];
    *&v4[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1E3EFA544(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar____lazy_storage___singlePressGesture);
  *(v1 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar____lazy_storage___singlePressGesture) = a1;
}

void (*sub_1E3EFA558(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1E3EFA4A4();
  return sub_1E3EFA5A0;
}

void sub_1E3EFA5A0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar____lazy_storage___singlePressGesture);
  *(v1 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar____lazy_storage___singlePressGesture) = v2;
}

uint64_t sub_1E3EFA5B8()
{
  OUTLINED_FUNCTION_21();
  result = (*(v1 + 168))();
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v0, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1E3EFA6C4()
{
  *&v0[OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_layout] = 0;
  OUTLINED_FUNCTION_24_96(&v0[OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_delegate]);
  *&v0[OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar____lazy_storage___singlePressGesture] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar__queryDescriptionBannerViewModel] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBannerText] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundView] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundContentView] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_additionalInformationView] = 0;
  v11 = v0;
  DescriptionBar = type metadata accessor for QueryDescriptionBar();
  v1 = OUTLINED_FUNCTION_5_8();
  v4 = objc_msgSendSuper2(v2, v3, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF379F0, qword_1E42CC4A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E4299720;
  *(v5 + 32) = sub_1E3280A90(0, &qword_1EE23AEE0, 0x1E69DF7B0);
  *(v5 + 40) = sub_1E3280A90(0, &qword_1EE23AF90, 0x1E69DF7B8);
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A00, &unk_1E429BBA0);
  sub_1E42062A4();
  OUTLINED_FUNCTION_38();

  OUTLINED_FUNCTION_4_0();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v10[4] = sub_1E3EFD3FC;
  v10[5] = v7;
  OUTLINED_FUNCTION_3_4();
  v10[1] = 1107296256;
  v10[2] = sub_1E3790FBC;
  v10[3] = &block_descriptor_9_5;
  v8 = _Block_copy(v10);

  [v6 vui:v0 registerForTraitChanges:v8 withHandler:?];
  _Block_release(v8);

  return v6;
}

void sub_1E3EFA8D4()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_layout) = 0;
  OUTLINED_FUNCTION_24_96(v0 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_delegate);
  *(v0 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar____lazy_storage___singlePressGesture) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar__queryDescriptionBannerViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBannerText) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundContentView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_additionalInformationView) = 0;
  OUTLINED_FUNCTION_12_145();
  __break(1u);
}

double sub_1E3EFA99C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar__queryDescriptionBannerViewModel) = a1;

  sub_1E3EFC9EC();

  return result;
}

double (*sub_1E3EFA9F8(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar__queryDescriptionBannerViewModel);
  a1[1] = v1;

  return sub_1E3EFAA4C;
}

double sub_1E3EFAA4C(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1E3EFA99C(*a1);
  }

  sub_1E3EFA99C(v2);

  return result;
}

void *sub_1E3EFAAA4()
{
  v1 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBannerText;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3EFAAEC(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBannerText;
  OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBannerText, a2);
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x140);
  v8 = a1;
  v9 = v7();
  if (v9)
  {
    v10 = v9;
    v11 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBannerText;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    [v10 vui:*(v2 + v11) addSubview:v5 oldView:?];
  }

  v12 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBannerText;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v13 = *(v2 + v12);
  if (v13)
  {
    v14 = *((*v6 & *v2) + 0xC0);
    v15 = v13;
    v16 = v14();
    [v15 addGestureRecognizer_];
  }
}

void (*sub_1E3EFAC44())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBannerText;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E3EFACC0;
}

void *sub_1E3EFACD8()
{
  v1 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3EFAD20(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundView;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundView;
  v6 = a1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  [v1 vui:*&v1[v5] addSubview:v4 oldView:?];
}

void (*sub_1E3EFADB8())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E3EFAE34;
}

void *sub_1E3EFAE4C()
{
  v1 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundContentView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3EFAE94(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundContentView;
  OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundContentView, a2);
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x128);
  v7 = a1;
  v8 = v6();
  if (v8)
  {
    v9 = v8;
    v10 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundContentView;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    [v9 vui:*(v2 + v10) addSubview:v5 oldView:?];
  }

  v11 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundContentView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v12 = *(v2 + v11);
  if (v12)
  {
    v13 = objc_allocWithZone(MEMORY[0x1E69DC8E0]);
    v14 = v12;
    v15 = [v13 initWithDelegate_];
    [v2 addInteraction_];
  }
}

void (*sub_1E3EFAFDC())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundContentView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E3EFB058;
}

void sub_1E3EFB070(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

void sub_1E3EFB0F0(uint64_t a1)
{
  v8 = *(v1 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_additionalInformationView);
  *(v1 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_additionalInformationView) = a1;
  OUTLINED_FUNCTION_21();
  v3 = *(v2 + 320);
  v5 = v4;
  v6 = v3();
  if (v6)
  {
    v7 = v6;
    [v6 vui:*(v1 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_additionalInformationView) addSubview:v8 oldView:?];
  }
}

double sub_1E3EFB1B4(double a1, double a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v7 = (*(v6 + 272))();
  if (!v7)
  {
    return 0.0;
  }

  v8 = v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    OUTLINED_FUNCTION_7_1();
    v12 = *(v11 + 144);
    v13 = v8;
    if (!v12() || (OUTLINED_FUNCTION_30(), v15 = (*(v14 + 1736))(), v16 = , v17 = (*(*v15 + 2048))(v16), v19 = v18, , (v19 & 1) != 0))
    {
      v17 = 3;
    }

    [v10 setMaximumNumberOfLines_];
  }

  OUTLINED_FUNCTION_7_1();
  if ((*(v20 + 144))())
  {
    OUTLINED_FUNCTION_30();
    (*(v21 + 1736))();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    v3 = 0;
  }

  sub_1E3C8B764(v3, a1, a2);
  v22 = v23;

  return v22;
}

id sub_1E3EFB3C4()
{
  result = [objc_opt_self() isSearchEnabled];
  if (result)
  {
    result = [objc_opt_self() isPhone];
    if (result)
    {
      v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x180);

      return v2();
    }
  }

  return result;
}

id sub_1E3EFB460()
{
  result = [objc_opt_self() isSearchEnabled];
  if (result)
  {
    v2 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_21();
    (*(v3 + 280))(0);
    (*((*v2 & *v0) + 0x130))(0);
    sub_1E3EFB0F0(0);
    v4 = *((*v2 & *v0) + 0x148);

    return v4(0);
  }

  return result;
}

double sub_1E3EFB57C(double a1, double a2)
{
  v5 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_additionalInformationView;
  if (*(v2 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_additionalInformationView))
  {
    if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x90))())
    {
      OUTLINED_FUNCTION_30();
      (*(v7 + 1760))();
      v8 = OUTLINED_FUNCTION_4_9();
      (*(*v3 + 152))(v44, v8);
    }

    if (*(v2 + v5))
    {
      OUTLINED_FUNCTION_10_145();
      if ((*(v9 + 144))())
      {
        OUTLINED_FUNCTION_30();
        (*(v10 + 1760))();
        v11 = OUTLINED_FUNCTION_4_9();
        (*(*v3 + 152))(&v45, v11);
      }

      v12 = *(v2 + v5);
      if (v12)
      {
        [v12 sizeThatFits_];
      }
    }
  }

  OUTLINED_FUNCTION_10_145();
  v14 = (*(v13 + 272))();
  v15 = 0.0;
  if (v14)
  {

    OUTLINED_FUNCTION_10_145();
    if ((*(v16 + 392))())
    {
      v43 = a1;
      OUTLINED_FUNCTION_10_145();
      v18 = *(v17 + 144);
      v19 = v18();
      v20 = 0.0;
      if (v19)
      {
        OUTLINED_FUNCTION_30();
        (*(v21 + 1736))();
        v22 = OUTLINED_FUNCTION_4_9();
        (*(*v3 + 152))(v46, v22);
        v15 = *v46;
        v23 = *&v46[1];
        v24 = *&v46[2];
        v25 = *&v46[3];
        v26 = v47;

        if (v47)
        {
          v27 = 0.0;
        }

        else
        {
          v27 = v23;
        }
      }

      else
      {
        v26 = 1;
        v27 = 0.0;
        v23 = 0.0;
        v24 = 0.0;
        v25 = 0.0;
      }

      if ((v18)(v19))
      {
        OUTLINED_FUNCTION_30();
        (*(v28 + 1856))(v48);

        if (v49)
        {
          v20 = 0.0;
        }

        else
        {
          v20 = *&v48[1];
        }
      }

      v29 = v27 + v20;
      v30 = 0.0;
      if (v26)
      {
        v31 = 0.0;
      }

      else
      {
        v31 = v25;
      }

      if (v18())
      {
        OUTLINED_FUNCTION_30();
        (*(v32 + 1856))(v50);

        if (v51)
        {
          v30 = 0.0;
        }

        else
        {
          v30 = *&v50[3];
        }
      }

      v33.n128_f64[0] = sub_1E3EFB1B4(v43 - v29 - (v31 + v30), 0.0);
      if (*(v2 + v5))
      {
        if ((v26 & 1) == 0)
        {
          v33.n128_f64[0] = sub_1E3952BD8(v15, v23, v24);
        }

        if ((v18)(v33))
        {
          OUTLINED_FUNCTION_30();
          (*(v34 + 1856))(v52);
          v35 = *v52;
          v36 = *&v52[1];
          v37 = *&v52[2];

          if ((v53 & 1) == 0)
          {
            sub_1E3952BD8(v35, v36, v37);
          }
        }
      }

      else if ((v18)(v33.n128_f64[0]))
      {
        OUTLINED_FUNCTION_30();
        (*(v38 + 1856))(v52);

        if ((v53 & 1) == 0)
        {
          v39 = OUTLINED_FUNCTION_6();
          sub_1E3952BD8(v39, v40, v41);
        }
      }

      return v43;
    }
  }

  return v15;
}

void sub_1E3EFBB44(uint64_t a1)
{
  v2 = v1;
  v95.receiver = v1;
  v95.super_class = type metadata accessor for QueryDescriptionBar();
  v3 = objc_msgSendSuper2(&v95, sel_layoutSubviews);
  v94 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x110))(v3);
  if (v94)
  {
    OUTLINED_FUNCTION_7_0();
    v5 = *(v4 + 144);
    v6 = v5();
    v7 = 0.0;
    if (v6)
    {
      OUTLINED_FUNCTION_30();
      v9 = (*(v8 + 1736))();

      (*(*v9 + 152))(v96, v10);
      v12 = *v96;
      v11 = *&v96[1];
      v13 = *&v96[3];
      v90 = *&v96[2];
      v14 = v97;

      v92 = v11;
      if (v97)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = v11;
      }
    }

    else
    {
      v14 = 1;
      v15 = 0.0;
      v12 = 0.0;
      v92 = 0.0;
      v90 = 0.0;
      v13 = 0.0;
    }

    if ((v5)(v6))
    {
      OUTLINED_FUNCTION_30();
      (*(v16 + 1856))(v98);

      if (v99)
      {
        v7 = 0.0;
      }

      else
      {
        v7 = *&v98[1];
      }
    }

    if (v14)
    {
      v13 = 0.0;
    }

    v17 = v5();
    v18 = 0.0;
    if (v17)
    {
      OUTLINED_FUNCTION_30();
      (*(v19 + 1856))(v100);

      v18 = *&v100[3];
      if (v101)
      {
        v18 = 0.0;
      }
    }

    v20 = v15 + v7;
    v21 = v13 + v18;
    v22 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_additionalInformationView;
    if (*&v1[OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_additionalInformationView])
    {
      if (v5())
      {
        OUTLINED_FUNCTION_30();
        v24 = (*(v23 + 1760))();

        (*(*v24 + 152))(v102, v25);
      }

      if (*&v1[v22])
      {
        if (v5())
        {
          OUTLINED_FUNCTION_30();
          v27 = (*(v26 + 1760))();

          (*(*v27 + 152))(&v103, v28);
        }

        v29 = *&v1[v22];
        if (v29)
        {
          v30 = v29;
          [v2 bounds];
          [v30 sizeThatFits_];
        }
      }
    }

    [v2 bounds];
    v33 = CGRectGetWidth(v110) - v20 - v21;
    v34 = sub_1E3EFB1B4(v33, 0.0);
    v91 = v35;
    if (v14)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = v12;
    }

    v37 = v92;
    if (v14)
    {
      v37 = 0.0;
    }

    v93 = v37;
    if (v5())
    {
      OUTLINED_FUNCTION_30();
      (*(v38 + 1856))(v104);
    }

    if (!*&v2[v22] && v5())
    {
      OUTLINED_FUNCTION_30();
      (*(v39 + 1856))(v105);
    }

    if (v5())
    {
      OUTLINED_FUNCTION_30();
      (*(v40 + 1856))(&v106);
    }

    if (v5())
    {
      OUTLINED_FUNCTION_30();
      (*(v41 + 1856))(v107);
    }

    if (*&v2[v22] && (v14 & 1) == 0)
    {
      sub_1E3952BD8(v12, v92, v90);
    }

    if (v5())
    {
      OUTLINED_FUNCTION_30();
      (*(v42 + 1856))(&v108);
    }

    OUTLINED_FUNCTION_7_0();
    v43 += 37;
    v44 = *v43;
    v45 = (*v43)();
    if (v45)
    {
      v46 = v45;
      v47 = OUTLINED_FUNCTION_3_213();
      [v48 v49];
    }

    OUTLINED_FUNCTION_7_0();
    v51 = (*(v50 + 320))();
    if (v51)
    {
      v52 = v51;
      v111.origin.x = OUTLINED_FUNCTION_3_213();
      CGRectGetWidth(v111);
      v112.origin.x = OUTLINED_FUNCTION_3_213();
      CGRectGetHeight(v112);
      nullsub_1();
      [v52 setFrame_];
    }

    [v94 setFrame_];
    v53 = (v44)([v94 frame]);
    if (v53)
    {
      v54 = v53;
      [v53 bounds];
    }

    [v2 vuiIsRTL];
    OUTLINED_FUNCTION_3_213();
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    [v94 setFrame_];
    [v94 frame];
    v55 = (v44)([v94 frame]);
    if (v55)
    {
      v56 = v55;
      [v55 bounds];
    }

    [v2 vuiIsRTL];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    v57 = [*&v2[v22] setFrame_];
    if (*&v2[v22])
    {
      v57 = [v2 bringSubviewToFront_];
    }

    v58 = (v44)(v57);
    if (v58)
    {
      v59 = v58;
      sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
      v60 = *sub_1E3E6011C();
      v61 = *sub_1E3E6029C();
      v62 = sub_1E3E5F2F8(v60, v61);

      [v59 setBackgroundColor_];
    }

    v63 = v44();
    if (v63)
    {
      v64 = v63;
      if (v5())
      {
        OUTLINED_FUNCTION_30();
        (*(v65 + 552))(&v109);
      }

      type metadata accessor for GraphicsUtilities();
      [v64 frame];
      v66 = OUTLINED_FUNCTION_6();
      v72 = sub_1E418AA20(v66, v67, v68, v69, v70, v71);
      v73 = v44();
      if (v73)
      {
        v74 = OUTLINED_FUNCTION_18_117(v73);

        [v74 setShadowPath_];
      }
    }

    v75 = v44();
    if (v75)
    {
      v76 = OUTLINED_FUNCTION_18_117(v75);

      [v76 setShadowOffset_];
    }

    v77 = v44();
    if (v77)
    {
      v78 = OUTLINED_FUNCTION_18_117(v77);

      [v78 setShadowRadius_];
    }

    v79 = v44();
    if (v79)
    {
      v80 = v79;
      v81 = [v79 layer];

      v82 = [objc_opt_self() blackColor];
      v83 = [v82 CGColor];

      [v81 setShadowColor_];
    }

    v84 = v44();
    if (v84)
    {
      v85 = OUTLINED_FUNCTION_18_117(v84);

      LODWORD(v86) = 1039516303;
      [v85 setShadowOpacity_];
    }

    v87 = v2;
    v88 = v44();
    if (v88)
    {
      v89 = OUTLINED_FUNCTION_18_117(v88);

      [v89 setMasksToBounds_];
    }
  }
}

BOOL sub_1E3EFC794()
{
  v0 = sub_1E3EFC7CC();
  if (v0)
  {
  }

  return v0 != 0;
}

__objc2_class **sub_1E3EFC7CC()
{
  OUTLINED_FUNCTION_21();
  v3 = *(v2 + 248);
  if (v3())
  {
    OUTLINED_FUNCTION_30();
    (*(v4 + 488))();
    OUTLINED_FUNCTION_4_9();
    if (v1)
    {
      sub_1E373E010(9, v1, v5);
      OUTLINED_FUNCTION_38();

      if (v0)
      {
        goto LABEL_7;
      }
    }
  }

  v6 = v3();
  v0 = v6;
  if (v6)
  {
    v7 = (*(*v6 + 488))(v6);

    if (!v7)
    {
      return 0;
    }

    v0 = sub_1E373E010(23, v7, v8);

    if (v0)
    {
LABEL_7:
      if (*v0 != _TtC8VideosUI13TextViewModel)
      {

        return 0;
      }
    }
  }

  return v0;
}

uint64_t sub_1E3EFC92C()
{
  OUTLINED_FUNCTION_21();
  if (!(*(v0 + 248))())
  {
    return 0;
  }

  OUTLINED_FUNCTION_30();
  v2 = (*(v1 + 488))();
  if (!v2)
  {

    return 0;
  }

  v4 = sub_1E373E010(90, v2, v3);

  if (!v4)
  {
    return 0;
  }

  return v4;
}

void sub_1E3EFC9EC()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 248);
  if (!v4())
  {
LABEL_36:
    OUTLINED_FUNCTION_3_200();
    return;
  }

  v5 = sub_1E3EFC7CC();
  if (v5)
  {
    v6 = v5;
    type metadata accessor for QueryDescriptionBannerLayout();
    OUTLINED_FUNCTION_38();

    sub_1E3A6DD04(v7);
    OUTLINED_FUNCTION_10_53();
    (*(v8 + 152))();
    OUTLINED_FUNCTION_10_53();
    v82 = *(v9 + 144);
    v10 = v82();
    v83 = v6;
    if (v10)
    {
      v11 = v10;
      v12 = type metadata accessor for BackgroundDescriptionView();
      v13 = objc_allocWithZone(v12);
      v14 = OUTLINED_FUNCTION_5_8();
      (*((*v2 & *v0) + 0x130))([v15 v16]);
      v17 = objc_allocWithZone(v12);
      v18 = OUTLINED_FUNCTION_5_8();
      v21 = (*((*v2 & *v0) + 0x148))([v19 v20]);
      v81 = *((*v2 & *v0) + 0x140);
      v22 = (v81)(v21);
      if (v22)
      {
        v23 = v22;
        v24 = v4();
        (*((*v2 & *v23) + 0x90))(v24);
      }

      OUTLINED_FUNCTION_10_53();
      v25 += 37;
      v26 = *v25;
      v27 = (*v25)();
      if (v27)
      {
        v28 = v27;
        v29 = *(*v11 + 744);

        v31 = v29(v30);

        [v28 setBackgroundColor_];
      }

      v32 = v26();
      if (v32)
      {
        v33 = v32;
        v34 = [v32 layer];

        v35 = *(*v11 + 552);

        v35(&v85, v36);

        v37 = 0.0;
        if ((v86 & 1) == 0)
        {
          v38 = OUTLINED_FUNCTION_6();
          v37 = sub_1E3952BE8(v38, v39, v40, v41);
        }

        [v34 setCornerRadius_];

        v6 = v83;
      }

      v42 = v26();
      if (v42)
      {
        v43 = v42;
        v44 = [v42 layer];

        [v44 setMasksToBounds_];
      }

      v45 = v81();
      if (v45)
      {
        v46 = v45;
        v47 = [v45 layer];

        [v47 setMasksToBounds_];
      }

      v48 = v81();
      if (v48)
      {
        v49 = v48;
        v50 = [v48 layer];

        v51 = *(*v11 + 552);

        v51(&v87, v52);

        v53 = 0.0;
        if ((v88 & 1) == 0)
        {
          v54 = OUTLINED_FUNCTION_6();
          v53 = sub_1E3952BE8(v54, v55, v56, v57);
        }

        [v50 setCornerRadius_];
      }
    }

    sub_1E3EFB0F0(0);
    v58 = sub_1E3EFC92C();
    if (v58)
    {
      v59 = v58;
      type metadata accessor for AttributionTextViewUIKit();
      v60 = *(v1 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_additionalInformationView);
      v61 = v60;
      v62 = sub_1E4001030(v59, v60, 0);

      sub_1E3EFB0F0(v62);
    }

    OUTLINED_FUNCTION_10_53();
    v63 += 34;
    v64 = *v63;
    v65 = (*v63)();
    [v65 removeFromSuperview];

    v66 = v64();
    v67 = v82();
    if (v67)
    {
      v68 = (*(*v67 + 1736))();
    }

    else
    {
      v68 = 0;
    }

    v70 = sub_1E3887F00(v6, v66, v68);

    type metadata accessor for QueryDescriptionBannerViewCell();
    v71 = v4();
    v72 = sub_1E3EF8A18(v71);

    if (v70)
    {
      objc_opt_self();
      v73 = swift_dynamicCastObjCClass();
      if (v73)
      {
        v74 = v70;
      }

      sub_1E3EF8B64(v72, v73);

      objc_opt_self();
      v75 = swift_dynamicCastObjCClass();
      if (v75)
      {
        v76 = v75;
        OUTLINED_FUNCTION_4_0();
        v77 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_1E3EFD4D0;
        aBlock[5] = v77;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1E3889A38;
        aBlock[3] = &block_descriptor_23_3;
        v78 = _Block_copy(aBlock);
        v79 = v70;

        [v76 setSelectionHandler_];
        _Block_release(v78);
      }
    }

    else
    {
      sub_1E3EF8B64(v72, 0);
    }

    OUTLINED_FUNCTION_10_53();
    (*(v80 + 280))(v70);

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_3_200();
}

id sub_1E3EFD284(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1E3EFD364()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC8VideosUI25BackgroundDescriptionView_contextMenuInteractor);
    sub_1E3C9F738();
  }
}

void sub_1E3EFD3FC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3EFC9EC();
    v2 = [v1 setNeedsLayout];
    if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))(v2))
    {
      v4 = v3;
      ObjectType = swift_getObjectType();
      (*(v4 + 16))(v1, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1E3EFD4D0()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (sub_1E3EFC7CC())
    {
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_25();
      v2();
    }
  }
}

void sub_1E3EFD580(__int16 *a1, void *a2, uint64_t a3)
{
  v6 = (*a1 + 488);
  v7 = *v6;
  if (!(*v6)())
  {
    OUTLINED_FUNCTION_30_1();
    if (!(*(v8 + 464))())
    {
      return;
    }
  }

  if (a1[49] - 154 > 0xB)
  {
    return;
  }

  if (((1 << (a1[49] + 102)) & 0xA07) != 0)
  {
    OUTLINED_FUNCTION_30_1();
    if (!(*(v15 + 392))())
    {
      return;
    }

    type metadata accessor for UnifiedOverlayLayout();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
      goto LABEL_24;
    }

    v17 = v16;
    sub_1E39C4734(a3, __src);
    if (__src[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
      if (swift_dynamicCast())
      {
        v19 = *(&__dst[0] + 1);
        v18 = *&__dst[0];
        if (BYTE1(__dst[1]))
        {
          v20 = 256;
        }

        else
        {
          v20 = 0;
        }

        v21 = v20 | LOBYTE(__dst[1]);
LABEL_28:
        type metadata accessor for UnifiedOverlayViewFactory();
        sub_1E3ACF408(a1, a2, v17, v18, v19, v21);
LABEL_103:

        return;
      }
    }

    else
    {
      sub_1E325F748(__src, &qword_1ECF296C0, &unk_1E429BBE0);
    }

    v18 = 0;
    v19 = 0;
    v21 = 512;
    goto LABEL_28;
  }

  if (((1 << (a1[49] + 102)) & 0x78) == 0)
  {
    if (((1 << (a1[49] + 102)) & 0x180) == 0)
    {
      return;
    }

    OUTLINED_FUNCTION_30_1();
    if (!(*(v22 + 392))())
    {
      return;
    }

    type metadata accessor for ChannelOfferOverlayLayout();
    if (swift_dynamicCastClass())
    {
      sub_1E3EFE634(a1, a2);

      return;
    }

LABEL_24:

    return;
  }

  OUTLINED_FUNCTION_30_1();
  if (!(*(v9 + 392))())
  {
    return;
  }

  OUTLINED_FUNCTION_118();
  v10 = type metadata accessor for OverlayLayout();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    goto LABEL_24;
  }

  v12 = v11;
  v250 = v7();
  if (!v250)
  {
    goto LABEL_24;
  }

  if (a2)
  {
    type metadata accessor for OverlayView();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = a2;
    }
  }

  else
  {
    v13 = 0;
  }

  *&__dst[0] = v13;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C020, &unk_1E42DC908);
  sub_1E4148C68(sub_1E3EFF200, v23, __src);

  v24 = __src[0];
  OUTLINED_FUNCTION_14_151();
  v241 = (*(v25 + 168))();
  LOBYTE(__dst[0]) = 0;
  (*(*a1 + 776))(__src, __dst, &unk_1F5D5E068, &off_1F5D5CAD8);
  if (__src[3])
  {
    if ((swift_dynamicCast() & 1) != 0 && sub_1E3ACAAF4() != 4)
    {
      (*(*v12 + 1768))();
    }
  }

  else
  {
    sub_1E325F748(__src, &unk_1ECF296E0, &unk_1E4298030);
  }

  sub_1E3ACC790(a1[49]);
  OUTLINED_FUNCTION_14_151();
  v27 = (*(v26 + 200))();
  (*(*v12 + 176))(&v261, v27);
  v28 = *MEMORY[0x1E69DDCE0];
  v29 = *(MEMORY[0x1E69DDCE0] + 8);
  v30 = *(MEMORY[0x1E69DDCE0] + 16);
  v31 = *(MEMORY[0x1E69DDCE0] + 24);
  v208 = a3;
  v211 = v12;
  OUTLINED_FUNCTION_14_151();
  (*(v32 + 152))();
  v33 = v250 + 64;
  v34 = 1 << *(v250 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v250 + 64);
  v37 = (v34 + 63) >> 6;
  v205 = v241 + 32;

  v227 = 0;
  v230 = 0;
  v215 = 0;
  v41 = 0;
  v224 = 0;
  v234 = 0;
  v238 = 0;
  v244 = 0;
  v247 = v37;
  v42 = 0;
LABEL_38:
  v219 = v41;
  while (1)
  {
    v43 = v42;
    if (!v36)
    {
      break;
    }

LABEL_43:
    v44 = __clz(__rbit64(v36)) | (v42 << 6);
    v45 = *(*(v250 + 48) + 2 * v44);
    v46 = *(*(v250 + 56) + 8 * v44);
    v36 &= v36 - 1;
    v260 = v45;
    v259 = 23;
    sub_1E3742F1C(v38, v39, v40);
    v47 = v46;

    OUTLINED_FUNCTION_18_95();
    v48 = OUTLINED_FUNCTION_6_189();
    v56 = OUTLINED_FUNCTION_12_146(v48, v49, v50, v51, v52, v53, v54, v55, v193, *&v196, v199, v202, v205, v208, v211, v215, v219, v224, v227, v230, v234, v238, v241, v244, v247, v250, v253[0], v253[1], v253[2], v253[3], v253[4], v253[5], v253[6], v253[7], v253[8], v253[9], v254, v255, v256, v257, *&__dst[0]);
    v59 = v59 && &v260 == v10;
    if (v59)
    {

LABEL_67:

      v234 = v46;
      v37 = v247;
    }

    else
    {
      v60 = OUTLINED_FUNCTION_18_118(v56, v57, v58);

      if (v60)
      {
        goto LABEL_67;
      }

      v260 = v45;
      OUTLINED_FUNCTION_13_155();
      OUTLINED_FUNCTION_18_95();
      v61 = OUTLINED_FUNCTION_6_189();
      v69 = OUTLINED_FUNCTION_12_146(v61, v62, v63, v64, v65, v66, v67, v68, v193, *&v196, v199, v202, v205, v208, v211, v215, v219, v224, v227, v230, v235, v238, v241, v244, v247, v250, v253[0], v253[1], v253[2], v253[3], v253[4], v253[5], v253[6], v253[7], v253[8], v253[9], v254, v255, v256, v257, *&__dst[0]);
      if (v59 && &v260 == v10)
      {

LABEL_69:
        v89 = v231;
        if (!v231)
        {
          v89 = MEMORY[0x1E69E7CC0];
        }

        v230 = v89;
        v90 = *(v89 + 16);
        if (v90 >= *(v241 + 16))
        {
          v91 = 0;
        }

        else
        {
          v91 = *(v205 + 112 * v90);
          v92 = v91;
        }

        v10 = v46;

        v93 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
        memset(__dst, 0, 40);
        v94 = v93;
        v95 = sub_1E393D9C4(v47, v91, __dst, 0);

        sub_1E325F748(__dst, &qword_1ECF296C0, &unk_1E429BBE0);
        objc_opt_self();
        v96 = swift_dynamicCastObjCClass();
        if (v96)
        {
          v97 = v96;
          v202 = v91;

          (*(*v47 + 776))(__dst, v98, &unk_1F5D5D498, &off_1F5D5C838);
          if (*(&__dst[1] + 1))
          {
            v99 = swift_dynamicCast();
            if (v99)
            {
              v100 = v253[0];
            }

            else
            {
              v100 = 0;
            }

            if (v99)
            {
              v101 = v253[1];
            }

            else
            {
              v101 = 0;
            }

            v215 = v100;
            v220 = v101;
          }

          else
          {
            sub_1E325F748(__dst, &unk_1ECF296E0, &unk_1E4298030);
            v215 = 0;
            v220 = 0;
          }

          v102 = *(*v211 + 1856);
          v10 = (*v211 + 1856);
          v199 = v95;
          v103 = *v102();
          v104 = (*(v103 + 2288))();
          v193 = v105;
          v196 = v104;

          memset(v265, 0, sizeof(v265));
          v266 = 1;
          v106 = sub_1E397F03C();
          v108 = v107;
          v110 = v109;
          v112 = v111;

          v113 = sub_1E397D420(v97, v215, v220, v265, __src, v196, *&v193, v106, v108, v110, v112);
          v114 = (*(*v47 + 392))(v113);
          v41 = v220;
          if (!v114 || ((*(*v114 + 152))(v263), v115 = v263[0], v116 = v263[1], v117 = v263[2], v118 = v263[3], , (v264 & 1) != 0))
          {
            v115 = v28;
            v116 = v29;
            v117 = v30;
            v118 = v31;
          }

          memcpy(__dst, __src, 0x50uLL);
          *&__dst[5] = v115;
          *(&__dst[5] + 1) = v116;
          *&__dst[6] = v117;
          *(&__dst[6] + 1) = v118;
          sub_1E3EFF4C8(__dst, v253);
          v119 = v230;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v119 = sub_1E3EFF3B0(0, *(v230 + 2) + 1, 1, v230);
          }

          v121 = *(v119 + 2);
          v120 = *(v119 + 3);
          v230 = v119;
          if (v121 >= v120 >> 1)
          {
            v230 = sub_1E3EFF3B0((v120 > 1), v121 + 1, 1, v119);
          }

          memcpy(v253, __src, sizeof(v253));
          v254 = v115;
          v255 = v116;
          v256 = v117;
          v257 = v118;
          sub_1E3EFF524(v253);
          *(v230 + 2) = v121 + 1;
          v38 = memcpy(&v230[112 * v121 + 32], __dst, 0x70uLL);
          v37 = v247;
          goto LABEL_38;
        }

        v37 = v247;
      }

      else
      {
        v73 = OUTLINED_FUNCTION_18_118(v69, v70, v71);

        if (v73)
        {
          goto LABEL_69;
        }

        v260 = v45;
        OUTLINED_FUNCTION_13_155();
        OUTLINED_FUNCTION_18_95();
        v74 = OUTLINED_FUNCTION_6_189();
        v82 = OUTLINED_FUNCTION_12_146(v74, v75, v76, v77, v78, v79, v80, v81, v193, *&v196, v199, v202, v205, v208, v211, v215, v219, v224, v227, v231, v234, v238, v241, v244, v247, v250, v253[0], v253[1], v253[2], v253[3], v253[4], v253[5], v253[6], v253[7], v253[8], v253[9], v254, v255, v256, v257, *&__dst[0]);
        if (v59 && &v260 == v10)
        {

LABEL_77:

          v244 = v46;
          v37 = v247;
        }

        else
        {
          v86 = OUTLINED_FUNCTION_18_118(v82, v83, v84);

          if (v86)
          {
            goto LABEL_77;
          }

          v260 = v45;
          OUTLINED_FUNCTION_13_155();
          OUTLINED_FUNCTION_18_95();
          OUTLINED_FUNCTION_6_189();
          v87 = *&__dst[0] == v253[0] && *(&__dst[0] + 1) == v253[1];
          v10 = v46;
          if (v87)
          {

LABEL_79:

            v227 = v46;
            v37 = v247;
          }

          else
          {
            v88 = sub_1E42079A4();

            if (v88)
            {
              goto LABEL_79;
            }

            v37 = v247;
            if (sub_1E385050C())
            {

              v238 = v46;
            }

            else if (sub_1E38504FC())
            {

              v224 = v46;
            }

            else
            {
            }
          }
        }
      }
    }
  }

  while (1)
  {
    v42 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v42 >= v37)
    {

      type metadata accessor for UIFactory();
      OUTLINED_FUNCTION_39();
      v122 = MEMORY[0x1E69E7D40];
      v124 = (*((*MEMORY[0x1E69E7D40] & v123) + 0x108))();
      sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
      OUTLINED_FUNCTION_5_199();
      OUTLINED_FUNCTION_20_109(v234, v125, v126, v127, v128);

      OUTLINED_FUNCTION_19_128(v129, v130, v131, v132, v133, v134, v135, v136, v193, *&v196, v199, v202, v205, v208, v211, v215, v219, v224, v227, v230, v234, v238, v241, v244, v247, v250, v253[0], v253[1], v253[2], v253[3], v253[4], v253[5], v253[6], v253[7], v253[8], v253[9], v254, v255, v256, v257);
      OUTLINED_FUNCTION_39();
      v137 = OUTLINED_FUNCTION_15_18();
      v138(v137);
      OUTLINED_FUNCTION_39();
      v140 = (*((*v122 & v139) + 0x138))();
      type metadata accessor for StyledProgressBarView();
      OUTLINED_FUNCTION_5_199();
      OUTLINED_FUNCTION_20_109(v245, v141, v142, v143, v144);

      OUTLINED_FUNCTION_19_128(v145, v146, v147, v148, v149, v150, v151, v152, v194, v197, v200, v203, v206, v209, v212, v216, v221, v225, v228, v232, v236, v239, v242, v245, v248, v251, v253[0], v253[1], v253[2], v253[3], v253[4], v253[5], v253[6], v253[7], v253[8], v253[9], v254, v255, v256, v257);
      OUTLINED_FUNCTION_39();
      v153 = OUTLINED_FUNCTION_15_18();
      v154(v153);
      OUTLINED_FUNCTION_39();
      v156 = (*((*v122 & v155) + 0x120))();
      sub_1E3280A90(0, &unk_1EE23B210, off_1E8728638);
      OUTLINED_FUNCTION_5_199();
      OUTLINED_FUNCTION_20_109(v240, v157, v158, v159, v160);

      OUTLINED_FUNCTION_19_128(v161, v162, v163, v164, v165, v166, v167, v168, v195, v198, v201, v204, v207, v210, v213, v217, v222, v226, v229, v233, v237, v240, v243, v246, v249, v252, v253[0], v253[1], v253[2], v253[3], v253[4], v253[5], v253[6], v253[7], v253[8], v253[9], v254, v255, v256, v257);
      OUTLINED_FUNCTION_39();
      v169 = OUTLINED_FUNCTION_15_18();
      v170(v169);
      OUTLINED_FUNCTION_1_251();
      v172 = *(v171 + 240);
      v173 = v172();
      if (v173)
      {
        v174 = v173;
        v175 = v214;
        v176 = v218;
        goto LABEL_101;
      }

      [objc_allocWithZone(VUIBaseView) init];
      OUTLINED_FUNCTION_1_251();
      v185 = (*(v184 + 248))();
      v186 = (v172)(v185);
      v175 = v214;
      v176 = v218;
      if (v186)
      {
        v187 = v186;
        [v186 setVuiUserInteractionEnabled_];
      }

      v188 = v172();
      if (v188)
      {
        v189 = v188;
        v190 = [objc_opt_self() clearColor];
        [v189 setVuiBackgroundColor_];
      }

      v191 = v172();
      if (v191)
      {
        v192 = v191;
        v174 = [v191 vuiLayer];

        if (v174)
        {
          [v174 setMasksToBounds_];
LABEL_101:
        }
      }

      type metadata accessor for OverlayViewGradientFactory();
      OUTLINED_FUNCTION_1_251();
      v178 = (*(v177 + 216))();
      sub_1E38E1628(v175, v178, v176, v223);

      OUTLINED_FUNCTION_1_251();
      v179 = OUTLINED_FUNCTION_15_18();
      v180(v179);
      [v24 setVuiUserInteractionEnabled_];
      OUTLINED_FUNCTION_1_251();
      v182 = *(v181 + 176);

      v183 = OUTLINED_FUNCTION_15_18();
      v182(v183);

      goto LABEL_103;
    }

    v36 = *(v33 + 8 * v42);
    ++v43;
    if (v36)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
}

id sub_1E3EFE634(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_118();
  v6 = sub_1E41FFCB4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(*v2 + 464))(v8);
  if (!v11)
  {
    v15 = sub_1E324FBDC();
    v7[2](v10, v15, v6);

    v16 = sub_1E41FFC94();
    v17 = sub_1E4206814();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v113[0] = v19;
      *v18 = 136315138;
      sub_1E384EE08(v2[49]);
      v22 = sub_1E3270FC8(v20, v21, v113);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1E323F000, v16, v17, "FeaturedLockupOverlayView: Overlay does not have any children for %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1E69143B0](v19, -1, -1);
      MEMORY[0x1E69143B0](v18, -1, -1);
    }

    (v7[1])(v10, v6);
    return 0;
  }

  v12 = v11;
  if (a2)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = a2;
    }
  }

  else
  {
    v13 = 0;
  }

  v115 = v13;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C030, &unk_1E42DC920);
  sub_1E4148C68(sub_1E3EFF240, v24, v113);

  v23 = *&v113[0];
  [*&v113[0] setUsesDefaultOverlayType_];
  v118 = 0;
  v29 = sub_1E3EFF578(v23);
  v30 = sub_1E32AE9B0(v12);
  if (!v30)
  {

    v91 = 0;
    v12 = 0;
    v3 = 0;
    v4 = 0;
    v106 = 0;
    v90 = 0.0;
    goto LABEL_95;
  }

  if (v30 < 1)
  {
    __break(1u);
    goto LABEL_116;
  }

  v31 = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v4 = 0;
  v32 = 0;
  v111 = v12 & 0xC000000000000001;
  v112 = v23;
  v33 = v29 & 0xFFFFFFFFFFFFFF8;
  v103 = v29 & 0xFFFFFFFFFFFFFF8;
  if (v29 < 0)
  {
    v33 = v29;
  }

  v100[1] = v33;
  v104 = v29;
  v101 = v29 + 32;
  v102 = v29 & 0xC000000000000001;
  v34 = 1;
  v110 = v30;
  do
  {
    if (v111)
    {
      v35 = MEMORY[0x1E6911E60](v32, v12);
    }

    else
    {
      v35 = *(v12 + 8 * v32 + 32);
    }

    OUTLINED_FUNCTION_9_157();
    v116 = 23;
    sub_1E3742F1C(v36, v37, v38);
    sub_1E4206254();
    OUTLINED_FUNCTION_4_214();
    v39 = OUTLINED_FUNCTION_3_214();
    v42 = v42 && v2 == v117;
    if (v42)
    {

LABEL_49:

      v64 = [v112 titleLabel];
      OUTLINED_FUNCTION_118();
      type metadata accessor for UIFactory();
      v65 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
      v66 = OUTLINED_FUNCTION_0_283(v65);

      v67 = sub_1E325F748(v113, &qword_1ECF296C0, &unk_1E429BBE0);
      v68 = (*(*v35 + 392))(v67);
      if (v68)
      {
        v31 = (*(*v68 + 248))(v68);
        v34 = v69;
      }

      else
      {

        v31 = 0;
        v34 = 1;
      }

      v4 = v66;
      goto LABEL_53;
    }

    v109 = v34;
    OUTLINED_FUNCTION_9_6(v39, v40, v41);
    OUTLINED_FUNCTION_21_100();

    if (v31)
    {
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_9_157();
    OUTLINED_FUNCTION_2_214(15);
    OUTLINED_FUNCTION_4_214();
    v43 = OUTLINED_FUNCTION_3_214();
    if (v42 && v2 == v117)
    {

LABEL_55:

      v71 = [v112 subtitleLabel];
      OUTLINED_FUNCTION_118();
      v72 = type metadata accessor for UIFactory();
      v73 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
      OUTLINED_FUNCTION_0_283(v73);
      OUTLINED_FUNCTION_17_129();

      sub_1E325F748(v113, &qword_1ECF296C0, &unk_1E429BBE0);
      v108 = v72;
      goto LABEL_56;
    }

    OUTLINED_FUNCTION_9_6(v43, v44, v45);
    OUTLINED_FUNCTION_21_100();

    if (v31)
    {
      goto LABEL_55;
    }

    OUTLINED_FUNCTION_9_157();
    OUTLINED_FUNCTION_2_214(11);
    OUTLINED_FUNCTION_4_214();
    v47 = OUTLINED_FUNCTION_3_214();
    if (v42 && v2 == v117)
    {

LABEL_60:

      v74 = [v112 disclaimerLabel];
      OUTLINED_FUNCTION_118();
      v75 = type metadata accessor for UIFactory();
      v76 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
      OUTLINED_FUNCTION_0_283(v76);
      OUTLINED_FUNCTION_17_129();

      sub_1E325F748(v113, &qword_1ECF296C0, &unk_1E429BBE0);
      v107 = v75;
      goto LABEL_56;
    }

    OUTLINED_FUNCTION_9_6(v47, v48, v49);
    OUTLINED_FUNCTION_21_100();

    if (v31)
    {
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_9_157();
    OUTLINED_FUNCTION_2_214(99);
    OUTLINED_FUNCTION_4_214();
    v51 = OUTLINED_FUNCTION_3_214();
    if (v42 && v2 == v117)
    {

LABEL_62:
      v77 = type metadata accessor for UIFactory();

      v78 = [v112 appleTVChannelLogoView];
      v79 = OUTLINED_FUNCTION_118();
      v80 = sub_1E3280A90(v79, &qword_1EE23AE80, 0x1E69DD250);
      OUTLINED_FUNCTION_0_283(v80);
      OUTLINED_FUNCTION_17_129();

      sub_1E325F748(v113, &qword_1ECF296C0, &unk_1E429BBE0);
      v105 = v77;
      goto LABEL_56;
    }

    OUTLINED_FUNCTION_9_6(v51, v52, v53);
    OUTLINED_FUNCTION_21_100();

    if (v31)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_9_157();
    OUTLINED_FUNCTION_2_214(59);
    OUTLINED_FUNCTION_4_214();
    v55 = OUTLINED_FUNCTION_3_214();
    if (v42 && v2 == v117)
    {
      goto LABEL_63;
    }

    OUTLINED_FUNCTION_9_6(v55, v56, v57);
    OUTLINED_FUNCTION_21_100();

    if (v31)
    {
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_9_157();
    OUTLINED_FUNCTION_2_214(60);
    OUTLINED_FUNCTION_4_214();
    v59 = OUTLINED_FUNCTION_3_214();
    if (v42 && v2 == v117)
    {
LABEL_63:

LABEL_64:
      if (v118)
      {
        v81 = v118;
      }

      else
      {
        v81 = MEMORY[0x1E69E7CC0];
      }

      v118 = v81;
      if (v104)
      {
        if (v81 >> 62)
        {
          v82 = sub_1E4207384();
        }

        else
        {
          v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v104 >> 62)
        {
          result = sub_1E4207384();
        }

        else
        {
          result = *(v103 + 16);
        }

        v34 = v109;
        if (v82 >= result)
        {

          v85 = 0;
        }

        else
        {
          if (v81 >> 62)
          {
            result = sub_1E4207384();
            v84 = result;
          }

          else
          {
            v84 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v102)
          {
            v89 = v104;

            v85 = MEMORY[0x1E6911E60](v84, v89);
          }

          else
          {
            if ((v84 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_118:
              __break(1u);
              return result;
            }

            if (v84 >= *(v103 + 16))
            {
              goto LABEL_118;
            }

            v85 = *(v101 + 8 * v84);
          }
        }
      }

      else
      {
        v85 = v106;
        v34 = v109;
      }

      type metadata accessor for UIFactory();
      v114 = 0;
      memset(v113, 0, sizeof(v113));
      v2 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);

      v106 = v85;
      v87 = sub_1E393D92C(v86, v85, v113, 0, v2);

      v88 = sub_1E325F748(v113, &qword_1ECF296C0, &unk_1E429BBE0);
      if (v87)
      {
        MEMORY[0x1E6910BF0](v88);
        v2 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v2 >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();
      }

LABEL_53:
      v70 = v110;
      goto LABEL_57;
    }

    v63 = OUTLINED_FUNCTION_9_6(v59, v60, v61);

    if (v63)
    {
      goto LABEL_64;
    }

LABEL_56:
    v70 = v110;
    v34 = v109;
LABEL_57:
    ++v32;
  }

  while (v70 != v32);

  v90 = *&v31;
  if (v34)
  {
    v90 = 0.0;
  }

  v12 = v107;
  v3 = v108;
  v91 = v105;
  v23 = v112;
LABEL_95:
  v92 = [v23 setMaxTitleWidth_];
  if (v4)
  {
    objc_opt_self();
    v92 = swift_dynamicCastObjCClass();
    v93 = v92;
    if (v92)
    {
      v92 = v4;
    }
  }

  else
  {
    v93 = 0;
  }

  OUTLINED_FUNCTION_2_34(v92, sel_setTitleLabel_);

  if (v3)
  {
    objc_opt_self();
    v94 = swift_dynamicCastObjCClass();
    v95 = v94;
    if (v94)
    {
      v94 = v3;
    }
  }

  else
  {
    v95 = 0;
  }

  OUTLINED_FUNCTION_2_34(v94, sel_setSubtitleLabel_);

  if (v12)
  {
    objc_opt_self();
    v96 = swift_dynamicCastObjCClass();
    v97 = v96;
    if (v96)
    {
      v96 = v12;
    }
  }

  else
  {
    v97 = 0;
  }

  OUTLINED_FUNCTION_2_34(v96, sel_setDisclaimerLabel_);

  v98 = [v23 setAppleTVChannelLogoView_];
  if (v118 && (v98 = sub_1E3EFF27C(v118)) != 0)
  {
    v7 = v91;
    if (!(v98 >> 62))
    {

      sub_1E42079D4();
      sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
      goto LABEL_111;
    }

LABEL_116:
    sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
    sub_1E42076C4();
LABEL_111:

    sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
    v99 = sub_1E42062A4();

    v91 = v7;
  }

  else
  {
    v99 = 0;
  }

  OUTLINED_FUNCTION_2_34(v98, sel_setButtons_);

  return v23;
}

id sub_1E3EFF200@<X0>(void *a1@<X8>)
{
  type metadata accessor for OverlayView();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

id sub_1E3EFF240@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(VUIFeaturedCellOverlayView) init];
  *a1 = result;
  return result;
}

id sub_1E3EFF27C(unint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  sub_1E32AE9B0(a1);
  sub_1E4207574();
  result = sub_1E32AE9B0(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v6;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      result = *(a1 + 8 * i + 32);
    }

    v5 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      return 0;
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    result = sub_1E4207554();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

char *sub_1E3EFF3B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C028, &qword_1E42DC918);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[112 * v8] <= v12)
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3EFF578(void *a1)
{
  v1 = [a1 buttons];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
  v3 = sub_1E42062B4();

  return v3;
}

uint64_t sub_1E3EFF5E8()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for TextLayout();
    v5 = sub_1E383BCC0();
    sub_1E41E1A64(&v5, sub_1E3EFF694, v3, &v6);

    v1 = v6;
    *(v2 + 104) = v6;
  }

  return v1;
}

uint64_t sub_1E3EFF694(uint64_t *a1)
{
  v1 = *a1;
  (*(**a1 + 2176))(0, 0);
  v2 = *(*v1 + 1608);
  OUTLINED_FUNCTION_0_284();
  v2(62);
  OUTLINED_FUNCTION_0_284();
  (v2)(12, 0);
  OUTLINED_FUNCTION_0_284();
  (v2)(48, 0);
  v3 = *sub_1E3E5FD88();
  v4 = *sub_1E3E5FDEC();
  sub_1E3755B54();
  v5 = v4;
  OUTLINED_FUNCTION_0_284();
  (v2)(21, 0);

  sub_1E3952C58();
  sub_1E3952C58();
  sub_1E3952C58();
  type metadata accessor for UIEdgeInsets();
  OUTLINED_FUNCTION_0_284();
  (v2)(0, 0);
  return (*(*v1 + 256))(0x7FF0000000000000, 0);
}

uint64_t sub_1E3EFF984()
{
  *(v0 + 104) = 0;
  v1 = sub_1E3C2F9A0();

  sub_1E3EFF9C0();

  return v1;
}

double sub_1E3EFF9C0()
{
  v1 = (*v0 + 1696);
  v2 = *v1;
  v3 = (*v1)();
  (*(*v3 + 152))(v7);

  v4 = (*(*v0 + 160))(v7);
  v5 = (v2)(v4);
  sub_1E3C37CBC(v5, 9);

  return result;
}

void *sub_1E3EFFACC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC8VideosUI26CanonicalFooterSectionView13ItemViewModel_headerView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3EFFB08(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC8VideosUI26CanonicalFooterSectionView13ItemViewModel_headerView;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtCC8VideosUI26CanonicalFooterSectionView13ItemViewModel_headerView, v5);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1E3EFFC24()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtCC8VideosUI26CanonicalFooterSectionView13ItemViewModel_headerView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI26CanonicalFooterSectionView13ItemViewModel_dataViews) = 0;
  v5 = type metadata accessor for CanonicalFooterSectionView.ItemViewModel();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E3EFFCD0(void *a1)
{
  *&v1[OBJC_IVAR____TtCC8VideosUI26CanonicalFooterSectionView13ItemViewModel_headerView] = 0;
  *&v1[OBJC_IVAR____TtCC8VideosUI26CanonicalFooterSectionView13ItemViewModel_dataViews] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CanonicalFooterSectionView.ItemViewModel();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_1E3EFFE34(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  OUTLINED_FUNCTION_3_0(v3 + *a2, v9);
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

void *sub_1E3EFFED8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_headerView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3EFFF14(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_headerView;
  OUTLINED_FUNCTION_3_0(&v1[OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_headerView], &v7);
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_headerView;
  v6 = a1;
  OUTLINED_FUNCTION_5_0(&v1[v5], v8);
  [v1 vui:*&v1[v5] addSubview:v4 oldView:?];
}

uint64_t sub_1E3EFFFA0()
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_9(v3);
  v4 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_headerView;
  OUTLINED_FUNCTION_4_13();
  v5 = *(v0 + v4);
  *(v1 + 24) = v5;
  v6 = v5;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3F00020(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_footerView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3F0005C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_footerView;
  OUTLINED_FUNCTION_3_0(v2 + OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_footerView, &v18);
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = a1;
  if (v5)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      OUTLINED_FUNCTION_11_3(v2 + OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_focusableTextViews, v21);
      v9 = v5;
      v10 = sub_1E3F02048(v8);
      swift_endAccess();
    }
  }

  v11 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x110))();
  v12 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_footerView;
  OUTLINED_FUNCTION_5_0(v2 + OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_footerView, v21);
  [v11 vui:*(v2 + v12) addSubview:v5 oldView:?];

  v13 = *(v2 + v12);
  if (v13)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      OUTLINED_FUNCTION_11_3(v2 + OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_focusableTextViews, v19);
      v16 = v13;
      sub_1E3F021C8(&v20, v15);
      v17 = v20;
      swift_endAccess();
    }
  }
}

uint64_t sub_1E3F00208()
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_9(v3);
  v4 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_footerView;
  OUTLINED_FUNCTION_4_13();
  v5 = *(v0 + v4);
  *(v1 + 24) = v5;
  v6 = v5;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3F00294(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_itemViews;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_itemViews, v88);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_itemViews;
  v6 = v1;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_itemViews, v91);
  v67 = v5;
  v7 = *(v1 + v5);
  v8 = MEMORY[0x1E69E7D40];
  v82 = v6;
  v68 = v4;
  if (!v4)
  {
LABEL_41:
    if (v7)
    {
      v84 = sub_1E32AE9B0(v7);
      v40 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_focusableTextViews;
      v79 = v7 & 0xFFFFFFFFFFFFFF8;
      v81 = v7 & 0xC000000000000001;
      v75 = v7;
      v77 = v7 + 32;

      v41 = 0;
      while (v41 != v84)
      {
        if (v81)
        {
          v42 = MEMORY[0x1E6911E60](v41, v75);
        }

        else
        {
          if (v41 >= *(v79 + 16))
          {
            goto LABEL_77;
          }

          v42 = *(v77 + 8 * v41);
        }

        v43 = v42;
        v24 = __OFADD__(v41++, 1);
        if (v24)
        {
          goto LABEL_76;
        }

        OUTLINED_FUNCTION_11_45();
        v45 = (*(v44 + 96))();
        if (v45)
        {
          v46 = v45;
          OUTLINED_FUNCTION_6_190();
          v48 = (*(v47 + 272))();
          [v48 vui:v46 addSubview:0 oldView:?];
        }

        OUTLINED_FUNCTION_11_45();
        v50 = (*(v49 + 120))();
        if (v50)
        {
          v51 = v50;
          v87 = v41;
          v52 = sub_1E32AE9B0(v50);
          for (i = 0; v52 != i; ++i)
          {
            if ((v51 & 0xC000000000000001) != 0)
            {
              v54 = MEMORY[0x1E6911E60](i, v51);
            }

            else
            {
              if (i >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_73;
              }

              v54 = *(v51 + 8 * i + 32);
            }

            v55 = v54;
            if (__OFADD__(i, 1))
            {
              goto LABEL_72;
            }

            v56 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x110))();
            [v56 vui:v55 addSubview:0 oldView:?];

            objc_opt_self();
            v57 = swift_dynamicCastObjCClass();
            if (v57)
            {
              v58 = v57;
              OUTLINED_FUNCTION_11_3(v6 + v40, v89);
              v55 = v55;
              sub_1E3F021C8(&v90, v58);
              v59 = v90;
              swift_endAccess();

              v6 = v82;
            }
          }

          v8 = MEMORY[0x1E69E7D40];
          v41 = v87;
        }
      }
    }

    goto LABEL_65;
  }

  if (v7)
  {

    v9 = sub_1E3F01E94(v4, v7);

    if (v9)
    {
LABEL_65:
      OUTLINED_FUNCTION_6_190();
      v61 = (*(v60 + 224))();
      if (v61)
      {
      }

      else
      {
        OUTLINED_FUNCTION_6_190();
        if ((*(v62 + 128))())
        {
          sub_1E3D22B54();
          v63 = OUTLINED_FUNCTION_4_9();
          v64 = (*(*v8 + 1728))(v63);

          sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
          v65 = (*(*v64 + 2408))();
          v66 = sub_1E3810954(65, 0xE100000000000000, v65, 0);
          (*((*v8 & *v6) + 0xE8))(v66);
        }
      }

      [v6 vui_setNeedsLayout];

      return;
    }
  }

  v10 = sub_1E32AE9B0(v4);
  v11 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_focusableTextViews;
  v71 = v4 & 0xC000000000000001;
  v72 = v10;
  v69 = v4 + 32;
  v70 = v4 & 0xFFFFFFFFFFFFFF8;
  v74 = 0;
  v76 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_focusableTextViews;
  while (1)
  {
    if (v74 == v72)
    {
      v7 = *(v6 + v67);
      goto LABEL_41;
    }

    if (v71)
    {
      MEMORY[0x1E6911E60](v74, v68);
    }

    else
    {
      if (v74 >= *(v70 + 16))
      {
        goto LABEL_75;
      }

      v12 = *(v69 + 8 * v74);
    }

    if (__OFADD__(v74, 1))
    {
      break;
    }

    ++v74;
    OUTLINED_FUNCTION_11_45();
    v15 = v14;
    v16 = (*(v13 + 96))();
    [v16 removeFromSuperview];

    OUTLINED_FUNCTION_11_45();
    v73 = v15;
    v18 = (*(v17 + 120))();
    if (v18)
    {
      v19 = v18;
      v20 = sub_1E32AE9B0(v18);
      v21 = 0;
      v85 = v19 & 0xFFFFFFFFFFFFFF8;
      v86 = v19 & 0xC000000000000001;
      v83 = v19 + 32;
      v78 = v19;
      v80 = v20;
      while (1)
      {
        if (v21 == v20)
        {

          v8 = MEMORY[0x1E69E7D40];
          goto LABEL_38;
        }

        if (v86)
        {
          v22 = MEMORY[0x1E6911E60](v21, v19);
        }

        else
        {
          if (v21 >= *(v85 + 16))
          {
            goto LABEL_71;
          }

          v22 = *(v83 + 8 * v21);
        }

        v23 = v22;
        v24 = __OFADD__(v21++, 1);
        if (v24)
        {
          break;
        }

        objc_opt_self();
        v25 = swift_dynamicCastObjCClass();
        if (v25)
        {
          v26 = v25;
          OUTLINED_FUNCTION_11_3(v6 + v11, v89);
          v27 = *(v6 + v11);
          if ((v27 & 0xC000000000000001) != 0)
          {
            if (v27 < 0)
            {
              v28 = *(v6 + v11);
            }

            else
            {
              v28 = v27 & 0xFFFFFFFFFFFFFF8;
            }

            v29 = v23;

            if (sub_1E42073D4())
            {
              sub_1E3F02CB0(v28, v26);
              v20 = v80;
              v31 = v30;
            }

            else
            {

              v31 = 0;
            }
          }

          else
          {
            sub_1E3280A90(0, &qword_1EE23B1F8, off_1E8728188);
            v32 = v23;
            v33 = sub_1E4206F54();
            v34 = ~(-1 << *(v27 + 32));
            while (1)
            {
              v35 = v33 & v34;
              if (((*(v27 + 56 + (((v33 & v34) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v33 & v34)) & 1) == 0)
              {
                v31 = 0;
                v6 = v82;
                v11 = v76;
                v19 = v78;
                goto LABEL_33;
              }

              v36 = *(*(v27 + 48) + 8 * v35);
              v37 = sub_1E4206F64();

              if (v37)
              {
                break;
              }

              v33 = v35 + 1;
            }

            v6 = v82;
            v11 = v76;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v39 = *(v82 + v76);
            v90 = v39;
            v19 = v78;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1E3F02950();
              v39 = v90;
            }

            v31 = *(*(v39 + 48) + 8 * v35);
            sub_1E3BE5134(v35);
            *(v82 + v76) = v90;
LABEL_33:
            v20 = v80;
          }

          swift_endAccess();
        }

        [v23 removeFromSuperview];
      }

      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      break;
    }

LABEL_38:
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
}

uint64_t sub_1E3F00A84()
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_9(v3);
  v4 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_itemViews;
  OUTLINED_FUNCTION_4_13();
  *(v1 + 24) = *(v0 + v4);

  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3F00AEC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    sub_1E3F00294(v4);
  }

  else
  {
    sub_1E3F00294(v3);
  }

  free(v2);
}

void *sub_1E3F00B50(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_prototypeItemHeaderLabel;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3F00B8C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_prototypeItemHeaderLabel;
  OUTLINED_FUNCTION_3_0(&v2[OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_prototypeItemHeaderLabel], &v9);
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  v6 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_prototypeItemHeaderLabel;
  v7 = a1;
  OUTLINED_FUNCTION_5_0(&v2[v6], v10);
  [v2 vui:*&v2[v6] addSubview:v5 oldView:?];
  v8 = *&v2[v6];
  if (v8)
  {
    [v8 setHidden_];
  }
}

uint64_t sub_1E3F00C34()
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_9(v3);
  v4 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_prototypeItemHeaderLabel;
  OUTLINED_FUNCTION_4_13();
  v5 = *(v0 + v4);
  *(v1 + 24) = v5;
  v6 = v5;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3F00CB4(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

id sub_1E3F00D3C()
{
  *&v0[OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_sectionLayout] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_headerView] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_footerView] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_itemViews] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_prototypeItemHeaderLabel] = 0;
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v1 = sub_1E3F02E0C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  *&v0[OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_focusableTextViews] = v1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CanonicalFooterSectionView();
  return objc_msgSendSuper2(&v3, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

void sub_1E3F00E14()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_sectionLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_headerView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_footerView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_itemViews) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_prototypeItemHeaderLabel) = 0;
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v1 = sub_1E3F02E0C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_focusableTextViews) = v1;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3F00EFC()
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);

  return v3(v1);
}

void sub_1E3F00F60(char a1, CGFloat a2)
{
  v4 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x80))();
  if (!v4)
  {
    return;
  }

  v5 = v156;
  (*(*v4 + 176))(v156);
  v6 = MEMORY[0x1E69DDCE0];
  if (v157)
  {
    v7 = *(MEMORY[0x1E69DDCE0] + 8);
    v8 = *(MEMORY[0x1E69DDCE0] + 16);
    v5 = MEMORY[0x1E69DDCE0];
  }

  else
  {
    v7 = *&v156[1];
    v8 = *&v156[2];
  }

  MaxY = *v5;
  v142 = [v143 vuiIsRTL];
  v10 = sub_1E3952BD8(MaxY, v7, v8);
  OUTLINED_FUNCTION_1_13();
  v12 = (*(v11 + 152))();
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    [v14 sizeThatFits_];
    if (v16 <= 0.0)
    {

      v13 = 0;
    }

    else
    {
      v17 = v15;
      v18 = v16;
      sub_1E3D22AE8();
      OUTLINED_FUNCTION_30();
      (*(v19 + 1704))();
      v20 = OUTLINED_FUNCTION_4_9();
      (*(*v5 + 152))(v158, v20);

      v21 = v158[0];
      if (v159)
      {
        v21 = 0.0;
      }

      [v14 topMarginWithBaselineMargin_];
      v23 = v10 + v22;
      if ((a1 & 1) == 0)
      {
        v24 = MaxY + v22;
        sub_1E3D22AE8();
        OUTLINED_FUNCTION_30();
        (*(v25 + 1704))();
        v26 = OUTLINED_FUNCTION_4_9();
        v27 = (*(*v5 + 504))(v26);

        v29 = 0.0;
        if (v27 == 18)
        {
          v30 = a2;
        }

        else
        {
          v31 = sub_1E3A92050(v27, 1, v28);
          v30 = a2;
          if (v31)
          {
            v29 = (a2 - v17) * 0.5;
            v30 = v17;
          }
        }

        v32 = v29;
        v33 = v24;
        v34 = v18;
        v169 = CGRectIntegral(*(&v30 - 2));
        [v14 setFrame_];
      }

      [v14 frame];
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;

      v170.origin.x = v36;
      v170.origin.y = v38;
      v170.size.width = v40;
      v170.size.height = v42;
      MaxY = CGRectGetMaxY(v170);
      v10 = v18 + v23;
    }
  }

  OUTLINED_FUNCTION_1_13();
  v44 = (*(v43 + 200))();
  if (!v44)
  {
LABEL_81:
    OUTLINED_FUNCTION_1_13();
    v121 = (*(v120 + 176))();
    if (!v121)
    {
LABEL_95:

      return;
    }

    v122 = v121;
    [v121 vui:a2 sizeThatFits:0.0];
    if (v123 <= 0.0)
    {
LABEL_94:

      goto LABEL_95;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v124 = v122;
      sub_1E3D22BC0();
      OUTLINED_FUNCTION_2_1();
      v126 = (*(v125 + 1736))();

      (*(*v126 + 152))(v168, v127);

      v128 = OUTLINED_FUNCTION_15_139();
      if (!v130)
      {
        v128 = v129;
      }

      sub_1E3C8B6B4(v13, v128);
    }

    else
    {
      objc_opt_self();
      v131 = swift_dynamicCastObjCClass();
      if (!v131)
      {
        goto LABEL_92;
      }

      v132 = v131;
      v133 = v122;
      sub_1E3D22BC0();
      OUTLINED_FUNCTION_2_1();
      v135 = (*(v134 + 1712))();

      (*(*v135 + 152))(v168, v136);

      v137 = OUTLINED_FUNCTION_15_139();
      if (!v130)
      {
        v137 = v138;
      }

      [v132 topMarginWithBaselineMargin_];
    }

LABEL_92:
    if ((a1 & 1) == 0)
    {
      [v122 setFrame_];
    }

    goto LABEL_94;
  }

  v45 = v44;
  v147 = sub_1E32AE9B0(v44);
  if (!v147)
  {
LABEL_80:

    goto LABEL_81;
  }

  v155 = sub_1E3D22B54();
  v46 = 0;
  v145 = v45 & 0xFFFFFFFFFFFFFF8;
  v146 = v45 & 0xC000000000000001;
  v139 = v45;
  v144 = v45 + 32;
  v47 = *v6;
  v48 = v6[2];
  v140 = v48;
  v141 = *v6;
  while (1)
  {
LABEL_21:
    if (v46 == v147)
    {

      goto LABEL_80;
    }

    if (v146)
    {
      v49 = MEMORY[0x1E6911E60](v46, v139);
    }

    else
    {
      if (v46 >= *(v145 + 16))
      {
        goto LABEL_99;
      }

      v49 = *(v144 + 8 * v46);
    }

    v50 = v49;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    v151 = v46 + 1;
    (*(*v155 + 1728))();
    OUTLINED_FUNCTION_30();
    (*(v51 + 152))(v160);

    v52 = 0.0;
    if (v161)
    {
      v53 = 0.0;
    }

    else
    {
      v53 = v160[0];
    }

    sub_1E3D22AE8();
    OUTLINED_FUNCTION_2_1();
    (*(v54 + 1704))();
    v55 = OUTLINED_FUNCTION_4_9();
    (*(*v45 + 152))(v162, v55);

    v56 = *&v162[2];
    if (v163)
    {
      v56 = 0.0;
    }

    if (v46)
    {
      v57 = v53;
    }

    else
    {
      v57 = v56;
    }

    OUTLINED_FUNCTION_18_119();
    v59 = *(v58 + 96);
    v60 = v59();
    v61 = 0.0;
    if (v60)
    {
      v62 = v60;
      [v60 vui:a2 sizeThatFits:0.0];
      v52 = v63;
      v61 = v64;
    }

    v65 = v59();
    if (v65 && (v66 = v65, objc_opt_self(), v45 = swift_dynamicCastObjCClass(), v66, v45) && (OUTLINED_FUNCTION_1_13(), (v68 = (*(v67 + 224))()) != 0))
    {
      v45 = v68;
      v69 = v68;
      [v69 vui:a2 sizeThatFits:0.0];
      v71 = v70;
      sub_1E3C8B6B4(v13, v57);
      v150 = v72;
      v171.origin.y = MaxY + v72;
      v171.origin.x = 0.0;
      v171.size.width = a2;
      v153 = v71;
      v171.size.height = v71;
      v172 = CGRectIntegral(v171);
      [v69 setFrame_];

      [v69 frame];
      v74 = v73;
      v76 = v75;
      v78 = v77;
      v80 = v79;

      v173.origin.x = v74;
      v173.origin.y = v76;
      v173.size.width = v78;
      v173.size.height = v80;
      MinY = CGRectGetMinY(v173);
      [v69 baselineHeight];
      v83 = v82;

      if (v142)
      {
        v84 = a2 - v52 + 0.0;
      }

      else
      {
        v84 = 0.0;
      }

      if ((a1 & 1) == 0)
      {
        v85 = v59();
        if (v85)
        {
          v86 = v85;
          v174.origin.y = MinY + v83 - v61;
          v174.origin.x = v84;
          v174.size.width = v52;
          v174.size.height = v61;
          v175 = CGRectIntegral(v174);
          [v86 setFrame_];
        }
      }

      v10 = v10 + v150 + v153;
      [v69 frame];
      MaxY = CGRectGetMaxY(v176);
      v48 = v140;
      v47 = v141;
      v87 = v45;
    }

    else
    {
      v88 = v59();
      if (v88)
      {
        v89 = v88;
        objc_opt_self();
        v90 = swift_dynamicCastObjCClass();
        if (v90)
        {
          v87 = v90;
          v45 = v89;
          sub_1E3C8B6B4(v13, v57);
          v92 = v91;
          if ((a1 & 1) == 0)
          {
            v177.origin.y = MaxY + v91;
            v177.origin.x = 0.0;
            v177.size.width = a2;
            v177.size.height = v61;
            v178 = CGRectIntegral(v177);
            [v87 setFrame_];
          }

          v10 = v61 + v10 + v92;
          [v87 frame];
          MaxY = CGRectGetMaxY(v179);
        }

        else
        {

          v87 = v13;
        }
      }

      else
      {
        v87 = v13;
      }
    }

    v154 = v87;
    OUTLINED_FUNCTION_18_119();
    v94 = (*(v93 + 120))();
    if (v94)
    {
      v95 = v94;
      v96 = sub_1E32AE9B0(v94);

      v97 = 0;
LABEL_55:
      for (i = v97; ; ++i)
      {
        if (v96 == i)
        {

          v46 = v151;
          v13 = v154;
          goto LABEL_21;
        }

        if ((v95 & 0xC000000000000001) != 0)
        {
          v99 = MEMORY[0x1E6911E60](i, v95);
        }

        else
        {
          if (i >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_97;
          }

          v99 = *(v95 + 8 * i + 32);
        }

        v45 = v99;
        v97 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        [v99 vui:a2 sizeThatFits:0.0];
        v101 = v100;
        v10 = v10 + v100;
        objc_opt_self();
        v102 = swift_dynamicCastObjCClass();
        if (v102)
        {
          v104 = v102;
          v148 = *(*v155 + 1776);
          v149 = v154;
          v45 = v45;
          v148();
          OUTLINED_FUNCTION_30();
          (*(v105 + 152))(v164);

          v106 = v164[0];
          if (v165)
          {
            v106 = 0.0;
          }

          sub_1E3C8B6B4(v154, v106);
          v108 = v107;

          v109 = MaxY + v108;
          if ((a1 & 1) == 0)
          {
            [v104 setFrame_];
          }

          v10 = v10 + v108;

          MaxY = v101 + v109;
          v154 = v104;
          goto LABEL_55;
        }

        objc_opt_self();
        v103 = swift_dynamicCastObjCClass();
        if (v103)
        {
          v110 = v103;
          v111 = *(*v155 + 1752);
          v45 = v45;
          v111();
          OUTLINED_FUNCTION_30();
          (*(v112 + 152))(v166);
          v113 = *v166;
          v114 = *&v166[2];

          if (v167)
          {
            v113 = v47;
            v114 = v48;
          }

          v115 = v45;
          [v110 topMarginWithBaselineMargin_];
          v117 = MaxY + v116;
          if ((a1 & 1) == 0)
          {
            [v110 setFrame_];
          }

          MaxY = v101 - v114 + v117;
          [v110 topMarginWithBaselineMargin_];
          v119 = v118;

          v10 = v10 + v119;
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_97:
      __break(1u);
      break;
    }

    v46 = v151;
    v13 = v87;
  }

  __break(1u);
LABEL_99:
  __break(1u);
}

id sub_1E3F01DD0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E3F01E94(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    if (a2 >> 62)
    {
      result = sub_1E4207384();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v18 = 0;
      return v18 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v18 = 1;
      return v18 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = type metadata accessor for CanonicalFooterSectionView.ItemViewModel();
    v11 = 4;
    while (1)
    {
      v12 = v11 - 4;
      v13 = v11 - 3;
      if (__OFADD__(v11 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1E6911E60](v11 - 4, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v14 = *(a1 + 8 * v11);
      }

      v15 = v14;
      if ((a2 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1E6911E60](v11 - 4, a2);
      }

      else
      {
        if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v16 = *(a2 + 8 * v11);
      }

      v17 = v16;
      v18 = sub_1E4206F64();

      if (v18)
      {
        ++v11;
        if (v13 != i)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3F02048(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_1E3280A90(0, &qword_1EE23B1F8, off_1E8728188);
    v10 = sub_1E4206F54();
    v11 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v12 = v10 & v11;
      if (((*(v4 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
      {
        break;
      }

      v13 = *(*(v4 + 48) + 8 * v12);
      v14 = sub_1E4206F64();

      if (v14)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = *v2;
        v18 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E3F02950();
          v16 = v18;
        }

        v9 = *(*(v16 + 48) + 8 * v12);
        sub_1E3BE5134(v12);
        *v2 = v18;
        return v9;
      }

      v10 = v12 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = a1;
  v7 = sub_1E42073D4();

  if ((v7 & 1) == 0)
  {

    return 0;
  }

  sub_1E3F02CB0(v5, v6);
  v9 = v8;

  return v9;
}

uint64_t sub_1E3F021C8(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1E4207394();

    if (v9)
    {

      sub_1E3280A90(0, &qword_1EE23B1F8, off_1E8728188);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
    }

    else
    {
      result = sub_1E4207384();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_1E3F023EC(v7, result + 1);
        v17 = *(v16 + 16);
        if (*(v16 + 24) <= v17)
        {
          sub_1E3F025C8(v17 + 1);
        }

        v18 = v8;
        sub_1E3B0CE7C(v18, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    sub_1E3280A90(0, &qword_1EE23B1F8, off_1E8728188);
    v11 = sub_1E4206F54();
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *v3;
        v18 = a2;
        sub_1E3F027EC(v18, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v23;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = sub_1E4206F64();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v20 = *(*(v6 + 48) + 8 * v13);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  return result;
}

uint64_t sub_1E3F023EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C078, &unk_1E42DC990);
    v2 = sub_1E4207454();
    v15 = v2;
    sub_1E4207344();
    while (1)
    {
      if (!sub_1E42073C4())
      {

        return v2;
      }

      sub_1E3280A90(0, &qword_1EE23B1F8, off_1E8728188);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_1E3F025C8(v3 + 1);
      }

      v2 = v15;
      result = sub_1E4206F54();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_1E3F025C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C078, &unk_1E42DC990);
  v4 = sub_1E4207444();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_1E373CBF0(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v26;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    v17 = sub_1E4206F54();
    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + 8 * v21) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1E3F027EC(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1E3F025C8(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_1E3F02AA0(v6 + 1);
LABEL_8:
      v8 = *v3;
      v9 = sub_1E4206F54();
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_1E3280A90(0, &qword_1EE23B1F8, off_1E8728188);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = sub_1E4206F64();

        if (v12)
        {
          goto LABEL_15;
        }

        v9 = a2 + 1;
      }
    }

    sub_1E3F02950();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    sub_1E4207A64();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

void sub_1E3F02950()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C078, &unk_1E42DC990);
  v2 = *v0;
  v3 = sub_1E4207434();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
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

void sub_1E3F02AA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C078, &unk_1E42DC990);
  v4 = sub_1E4207444();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        v16 = sub_1E4206F54();
        v17 = -1 << *(v5 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v25;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}