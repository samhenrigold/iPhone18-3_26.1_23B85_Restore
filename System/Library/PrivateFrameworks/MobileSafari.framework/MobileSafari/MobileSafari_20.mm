id sub_18BA83EF8(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_content];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_captureView;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DD838]) init];
  v5 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_blurrableContainerView;
  type metadata accessor for BlurrableView();
  *&v1[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_contentView] = 0;
  v1[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_isVisible] = 0;
  v6 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_materialView;
  v7 = [objc_opt_self() effectWithStyle_];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  *&v1[v6] = v8;
  v9 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_shadowView;
  *&v1[v9] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v10 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_systemSnapshotBackgroundView;
  *&v1[v10] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v15.receiver = v1;
  v15.super_class = _s3HUDCMa();
  v11 = objc_msgSendSuper2(&v15, sel_initWithCoder_, a1);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    sub_18B7C87B8();
  }

  return v12;
}

void sub_18BA840A0(id a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_contentView);
  if (v3)
  {
    if (a1)
    {
      v4 = v1;
      sub_18B7B0AC0(0, &qword_1EA9D46F0, 0x1E69DD250);
      v10 = v3;
      v2 = v2;
      v5 = sub_18BC215C8();

      if (v5)
      {
LABEL_14:

        return;
      }

      v1 = v4;
    }

    else
    {
      v10 = v3;
    }

    [v2 removeFromSuperview];
    v6 = v10;
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    if ([objc_opt_self() isSolariumEnabled])
    {
      v7 = *(v1 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_blurrableContainerView);
    }

    else
    {
      v7 = [*(v1 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_materialView) contentView];
    }

    v8 = v7;
    [v7 addSubview_];
    v9 = objc_opt_self();
    sub_18B7DE2FC(15, v6, *MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24));
    sub_18B7B0AC0(0, &qword_1EA9D4700, 0x1E696ACD8);
    v10 = sub_18BC20D88();

    [v9 activateConstraints_];

    goto LABEL_14;
  }

  if (a1)
  {

    [a1 removeFromSuperview];
  }
}

id sub_18BA842C4()
{
  v1 = v0;
  v2 = sub_18BC1FFC8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_18BC1FFF8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_isVisible;
  v8 = 1.0;
  if ((v1[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_isVisible] & 1) == 0)
  {
    v9 = [objc_opt_self() isSolariumEnabled];
    v8 = 0.0;
    if (v9)
    {
      v8 = 1.0;
    }
  }

  [v1 setAlpha_];
  if (v1[v7] == 1 && [objc_opt_self() isSolariumEnabled])
  {
    sub_18BC1FFB8();
    sub_18BC20008();
    *(&v19 + 1) = v3;
    v20 = MEMORY[0x1E69DC388];
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v18);
    (*(v4 + 32))(boxed_opaque_existential_0Tm, v6, v3);
  }

  else
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
  }

  sub_18BC21518();
  v11 = *&v1[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_blurrableContainerView];
  v12 = 1.0;
  if ((v1[v7] & 1) == 0)
  {
    v13 = [objc_opt_self() isSolariumEnabled];
    v12 = 1.0;
    if (v13)
    {
      v12 = 0.0;
    }
  }

  [v11 setAlpha_];
  v14 = sub_18B7DE654();
  v15 = v14;
  v16 = 6.0;
  if (v1[v7])
  {
    v16 = 0.0;
  }

  [v14 setValue_];

  return [v1 setUserInteractionEnabled_];
}

id sub_18BA84520()
{
  v2.receiver = v0;
  v2.super_class = _s3HUDCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_18BA84620()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v1 = swift_allocObject();
  *(v1 + 16) = 0x4010000000000000;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_18BA848B4;
  *(v2 + 24) = v1;
  v5[4] = sub_18BA848BC;
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18BA72F20;
  v5[3] = &block_descriptor_25;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  v4 = [v0 imageWithActions_];
  _Block_release(v3);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    [v4 resizableImageWithCapInsets:0 resizingMode:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  }
}

void sub_18BA847DC(CGFloat a1)
{
  v2 = objc_opt_self();
  v3 = [v2 lightGrayColor];
  [v3 setFill];

  v10.size.width = a1 + a1;
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.height = a1 + a1;
  UIRectFill(v10);
  v4 = [v2 darkGrayColor];
  [v4 setFill];

  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = a1;
  v11.size.height = a1;
  UIRectFill(v11);
  v5 = a1;
  v6 = a1;
  v7 = a1;
  v8 = a1;

  UIRectFill(*&v5);
}

void *SFBorderView.borderColor.getter()
{
  v1 = OBJC_IVAR___SFBorderView_borderColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SFBorderView.borderColor.setter(void *a1)
{
  v3 = OBJC_IVAR___SFBorderView_borderColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_18BA84A40();
}

void sub_18BA84A40()
{
  v6 = [v0 layer];
  v1 = [v0 borderColor];
  if (!v1 || (v2 = v1, v3 = [v0 traitCollection], v4 = objc_msgSend(v2, sel_resolvedColorWithTraitCollection_, v3), v2, v3, !v4))
  {
    v4 = [objc_opt_self() clearColor];
  }

  v5 = [v4 CGColor];

  [v6 setBorderColor_];
}

void __swiftcall SFBorderView.init(frame:)(SFBorderView *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

id SFBorderView.init(frame:)()
{
  *(v0 + OBJC_IVAR___SFBorderView_borderColor) = 0;
  v4.super_class = SFBorderView;
  v1 = objc_msgSendSuper2(&v4, sel_initWithFrame_);
  sub_18BA84C2C(v1, v2);

  return v1;
}

double sub_18BA84C2C(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_18B7B0AC0(0, &qword_1EA9D7978, 0x1E69DD1B8);
  sub_18BC21378();
  sub_18BC21568();
  swift_unknownObjectRelease();

  return result;
}

id SFBorderView.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___SFBorderView_borderColor) = 0;
  v8.super_class = SFBorderView;
  v3 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    sub_18BA84C2C(v5, v6);
  }

  return v4;
}

double sub_18BA84EC0()
{
  v1 = *(*(v0 + 32) + 16);
  if (v1)
  {
    v2 = v1 - 1;
    if (v1 > *(*(v0 + 320) + 16))
    {
      sub_18BA85248(v1 - 1);
    }

    sub_18BA85844(v2);
    v6.origin.x = UIEdgeInsetsInsetRect(*(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 160), *(v0 + 168));
    Width = CGRectGetWidth(v6);
    sub_18BA85844(v2);
    _SFRoundFloatToPixels((Width - v4) * 0.5);
  }

  return 0.0;
}

uint64_t sub_18BA84F74(uint64_t result)
{
  v2 = v1;
  if (*(v1 + 48) != *result || *(v1 + 56) != *(result + 8) || *(v1 + 64) != *(result + 16) || *(v1 + 72) != *(result + 24) || *(v1 + 80) != *(result + 32) || *(v1 + 88) != *(result + 40) || *(v1 + 96) != (*(result + 48) & 1) || *(v1 + 104) != *(result + 56) || *(v1 + 112) != *(result + 64) || *(v1 + 120) != *(result + 72) || *(v1 + 128) != *(result + 80) || *(v1 + 136) != *(result + 88) || *(v1 + 144) != *(result + 96) || *(v1 + 152) != *(result + 104))
  {
    memcpy(v4, v1, sizeof(v4));
    v5 = v4[40];
    v3 = sub_18BA85B0C();
    result = sub_18B988BAC(&v5, &qword_1EA9D6A68, &unk_18BC464E8);
    *(v2 + 320) = v3;
  }

  return result;
}

uint64_t sub_18BA850C8(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 160) != *a1 || *(v1 + 168) != *(a1 + 8) || *(v1 + 176) != *(a1 + 16) || *(v1 + 184) != *(a1 + 24) || (v19 = *(v1 + 192), v4 = *(v1 + 224), v3 = *(v1 + 232), v6 = *(v1 + 240), v5 = *(v1 + 248), v8 = *(v1 + 256), v7 = *(v1 + 264), v15 = *(v1 + 280), v16 = *(v1 + 272), v9 = *(v1 + 288), v10 = *(v1 + 296), v11 = *(v1 + 304), !CGRectEqualToRect(v19, *(a1 + 32))) || v4 != *(a1 + 64) || v3 != *(a1 + 72) || v6 != *(a1 + 80) || v5 != *(a1 + 88) || v8 != *(a1 + 96) || v7 != *(a1 + 104) || (v20.origin.y = v15, v20.origin.x = v16, v20.size.width = v9, v20.size.height = v10, result = CGRectEqualToRect(v20, *(a1 + 112)), !result) || v11 != (*(a1 + 144) & 1))
  {
    memcpy(__dst, v2, sizeof(__dst));
    v18 = __dst[40];
    v14 = sub_18BA85B0C();
    result = sub_18B988BAC(&v18, &qword_1EA9D6A68, &unk_18BC464E8);
    v2[40] = v14;
  }

  return result;
}

void sub_18BA85248(uint64_t a1)
{
  v2 = v1;
  v4 = _s4ItemVMa_0(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 32);
  v9 = *(v8 + 16);
  if (v9)
  {
    v69.origin.x = UIEdgeInsetsInsetRect(*(v1 + 192), *(v1 + 200), *(v1 + 208), *(v1 + 216), *(v1 + 160), *(v1 + 168));
    Width = CGRectGetWidth(v69);
    sub_18BA85844(0);
    v12 = _SFRoundFloatToPixels((Width - v11) * 0.5);
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    sub_18BC21CF8();
    __break(1u);
    return;
  }

  v12 = 0.0;
  if (a1 < 0)
  {
    goto LABEL_36;
  }

LABEL_3:
  if (a1)
  {
    v13 = 0;
    v14 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v58 = *MEMORY[0x1E69DB648];
    v57 = xmmword_18BC3E410;
    v63 = a1;
    v59 = v4;
    v62 = v5;
    v64 = v7;
    v61 = v9;
    v60 = v14;
    while (1)
    {
      if (v9 == v13)
      {
        goto LABEL_37;
      }

      sub_18B80DF38(v14 + *(v5 + 72) * v13, v7);
      if (v7[*(v4 + 32)] == 1)
      {
        v70.origin.x = UIEdgeInsetsInsetRect(*(v2 + 192), *(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 160), *(v2 + 168));
        v15 = CGRectGetWidth(v70);
        sub_18B813CBC(v7);
        v16 = *(v2 + 104);
        v17 = *(v2 + 144);
        v18 = v15 - (v16 + v16) - (*(v2 + 152) + *(v2 + 152));
        v19 = fmin(v17, 0.0);
        if (v17 >= v18)
        {
          v17 = v15 - (v16 + v16) - (*(v2 + 152) + *(v2 + 152));
        }

        if (v18 < 0.0)
        {
          v17 = v19;
        }

        goto LABEL_9;
      }

      v20 = &v7[*(v4 + 40)];
      if (v20[1])
      {
        v21 = *v20;
        v22 = v20[1];
      }

      else
      {
        v21 = 0;
        v22 = 0xE000000000000000;
      }

      v23 = *(v2 + 312);
      v24 = v23[3];
      if (!v24)
      {
        goto LABEL_39;
      }

      swift_beginAccess();
      v25 = v23[2];
      v26 = *(v25 + 16);
      sub_18BC1E3F8();
      v27 = v24;
      sub_18BC1E3F8();
      v67 = v12;
      if (!v26)
      {
        goto LABEL_20;
      }

      sub_18BC1E3F8();
      v28 = sub_18BB8B1C4(v27, v21, v22);
      if ((v29 & 1) == 0)
      {
        break;
      }

      v30 = v28;

      v66 = *(*(v25 + 56) + 8 * v30);

LABEL_21:

      v72.origin.x = UIEdgeInsetsInsetRect(*(v2 + 192), *(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 160), *(v2 + 168));
      x = v72.origin.x;
      y = v72.origin.y;
      v47 = v72.size.width;
      height = v72.size.height;
      v49 = CGRectGetWidth(v72);
      v16 = *(v2 + 104);
      v50 = *(v2 + 144);
      v51 = *(v2 + 152) + *(v2 + 152);
      v52 = v49 - (v16 + v16) - v51;
      v53 = fmin(v50, 0.0);
      if (v50 >= v52)
      {
        v50 = v52;
      }

      if (v52 >= 0.0)
      {
        v54 = v50;
      }

      else
      {
        v54 = v53;
      }

      v73.origin.x = x;
      v73.origin.y = y;
      v73.size.width = v47;
      v73.size.height = height;
      v55 = CGRectGetWidth(v73);
      v7 = v64;
      sub_18B813CBC(v64);
      v56 = 0.0;
      if (v55 - (v16 + v16) - v51 >= 0.0)
      {
        v56 = v55 - (v16 + v16) - v51;
      }

      if (v54 > v56)
      {
        goto LABEL_38;
      }

      v17 = v66;
      if (v66 <= v54)
      {
        v17 = v54;
      }

      if (v56 < v17)
      {
        v17 = v56;
      }

      a1 = v63;
      v5 = v62;
      v9 = v61;
      v12 = v67;
      v14 = v60;
LABEL_9:
      ++v13;
      v12 = v12 + v17 + v16;
      if (a1 == v13)
      {
        return;
      }
    }

LABEL_20:
    v31 = [v27 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6100, &unk_18BC49C40);
    inited = swift_initStackObject();
    v65 = v21;
    v33 = inited;
    *(inited + 16) = v57;
    v34 = v58;
    *(inited + 32) = v58;
    v35 = inited + 32;
    *(inited + 40) = v31;
    v36 = v34;
    v37 = v31;
    sub_18BA64BEC(v33);
    swift_setDeallocating();
    sub_18B988BAC(v35, &qword_1EA9D6108, &unk_18BC45100);
    v38 = sub_18BC20B98();

    type metadata accessor for Key(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6110, &qword_18BC49C50);
    sub_18BA1EC64();
    v39 = sub_18BC20998();

    v40 = CTLineCreateWithString();

    v4 = v59;
    BoundsWithOptions = CTLineGetBoundsWithOptions(v40, 0);
    v41 = CGRectGetWidth(BoundsWithOptions);
    v42 = _SFCeilingFloatToPixels(v41);

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = v23[2];
    v23[2] = 0x8000000000000000;
    v66 = v42;
    v44.n128_f64[0] = v42;
    sub_18BAA71D8(v27, v65, v22, isUniquelyReferenced_nonNull_native, v44);
    v23[2] = v68;
    swift_endAccess();
    goto LABEL_21;
  }
}

uint64_t sub_18BA85844(unint64_t a1)
{
  v2 = v1;
  v4 = _s4ItemVMa_0(0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v8 = *(v2 + 32);
  if (*(v8 + 16) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_18B80DF38(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a1, v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v7[*(v4 + 32)] == 1)
  {
    v27.origin.x = UIEdgeInsetsInsetRect(*(v2 + 192), *(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 160), *(v2 + 168));
    CGRectGetWidth(v27);
    return sub_18B813CBC(v7);
  }

  v10 = &v7[*(v4 + 40)];
  if (v10[1])
  {
    v11 = *v10;
    v12 = v10[1];
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = *(*(v2 + 312) + 24);
  if (!v13)
  {
    goto LABEL_22;
  }

  sub_18BC1E3F8();
  v14 = v13;
  v26[1] = sub_18BA1E86C(v14, v11, v12);

  v28.origin.x = UIEdgeInsetsInsetRect(*(v2 + 192), *(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 160), *(v2 + 168));
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;
  v19 = CGRectGetWidth(v28);
  v20 = *(v2 + 104) + *(v2 + 104);
  v21 = *(v2 + 152) + *(v2 + 152);
  v22 = v19 - v20 - v21;
  if (v22 < 0.0)
  {
    v22 = 0.0;
  }

  if (*(v2 + 144) >= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = *(v2 + 144);
  }

  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v24 = CGRectGetWidth(v29);
  result = sub_18B813CBC(v7);
  if (v24 - v20 - v21 < 0.0)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = v24 - v20 - v21;
  }

  if (v23 > v25)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

uint64_t sub_18BA85B0C()
{
  v1 = *(*(v0 + 32) + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_18B9B66C0(0, v1, 0);
    v3 = 0;
    v2 = v9;
    do
    {
      sub_18BA85248(v3);
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        v7 = v4;
        sub_18B9B66C0((v5 > 1), v6 + 1, 1);
        v4 = v7;
      }

      ++v3;
      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v4;
    }

    while (v1 != v3);
  }

  return v2;
}

void sub_18BA85BF0()
{
  v1 = *(*(v0 + 32) + 16);
  if (v1)
  {
    v2 = v1 - 1;
    if (v1 > *(*(v0 + 320) + 16))
    {
      sub_18BA85248(v1 - 1);
    }

    sub_18BA85844(v2);
    v5.origin.x = UIEdgeInsetsInsetRect(*(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 160), *(v0 + 168));
    Width = CGRectGetWidth(v5);
    sub_18BA85844(v2);
    _SFRoundFloatToPixels((Width - v4) * 0.5);
  }
}

void sub_18BA85C9C()
{
  v1 = *(*(v0 + 32) + 16);
  if (v1)
  {
    if ((*(*(v0 + 8) + 40) & 0xFE) == 2)
    {
      v2 = v1 - 1;
    }

    else
    {
      v3 = *(v0 + 168);
      v4 = *(v0 + 192);
      v5 = v3 + v4;
      v7.origin.x = UIEdgeInsetsInsetRect(v4, *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 160), v3);
      Width = CGRectGetWidth(v7);
      v2 = sub_18BA86244(v5 + Width * 0.5);
    }

    sub_18BA85844(v2);
  }
}

void sub_18BA85D20(int64_t a1, int64_t a2)
{
  v3 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v6 = a1;
    sub_18BA87218(v2, v19);
    v19[0] = v4;
    sub_18B9B66C0(0, v3 & ~(v3 >> 63), 0);
    if (a2 < v6 || v3 < 0)
    {
      goto LABEL_25;
    }

    v4 = v19[0];
    while (1)
    {
      sub_18BA85844(v6);
      v19[0] = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        v10 = v7;
        sub_18B9B66C0((v8 > 1), v9 + 1, 1);
        v7 = v10;
        v4 = v19[0];
      }

      *(v4 + 16) = v9 + 1;
      *(v4 + 8 * v9 + 32) = v7;
      if (a2 == v6)
      {
        break;
      }

      if (a2 == ++v6)
      {
        sub_18BA87250(v2);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_11:
  v11 = *(v4 + 16);
  if (v11)
  {
    if (v11 <= 3)
    {
      v12 = 0;
      v13 = 0.0;
LABEL_18:
      v16 = v11 - v12;
      v17 = (v4 + 8 * v12 + 32);
      do
      {
        v18 = *v17++;
        v13 = v13 + v18;
        --v16;
      }

      while (v16);
      goto LABEL_20;
    }

    v12 = v11 & 0x7FFFFFFFFFFFFFFCLL;
    v14 = (v4 + 48);
    v13 = 0.0;
    v15 = v11 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v13 = v13 + *(v14 - 2) + *(v14 - 1) + *v14 + v14[1];
      v14 += 4;
      v15 -= 4;
    }

    while (v15);
    if (v11 != v12)
    {
      goto LABEL_18;
    }
  }

LABEL_20:

  if (__OFSUB__(v3, 1))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }
}

uint64_t sub_18BA85EE4(double a1)
{
  v2 = *(*(v1 + 32) + 16);
  if (v2 >= 2)
  {
    v3 = v2 - 1;
    v4 = round((v2 - 1) * a1);
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
        if (v3 >= v4)
        {
          v3 = v4;
        }

        if (v4 <= 0)
        {
          v5 = 0;
        }

        else
        {
          v5 = v3;
        }

        if ((*(v1 + 96) & 1) == 0)
        {
          goto LABEL_13;
        }

        v6 = __OFSUB__(v2, v5);
        v7 = v2 - v5;
        if (!v6)
        {
          v5 = v7 - 1;
          if (!__OFSUB__(v7, 1))
          {
LABEL_13:
            sub_18BA8600C(v5);
            return sub_18BA85844(v5);
          }

LABEL_19:
          __break(1u);
          return result;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_17;
  }

  return result;
}

void sub_18BA8600C(int64_t a1)
{
  if (*(*(v1 + 320) + 16) <= a1)
  {
    v2 = a1;
    sub_18BA85248(a1);
    a1 = v2;
  }

  else if (a1 < 0)
  {
    __break(1u);
    return;
  }

  sub_18BA85844(a1);
  if (*(v1 + 96))
  {
    v3.origin.x = sub_18BA84EC0();
    CGRectGetMaxX(v3);
  }

  v4.origin.x = UIEdgeInsetsInsetRect(*(v1 + 192), *(v1 + 200), *(v1 + 208), *(v1 + 216), *(v1 + 160), *(v1 + 168));
  CGRectGetWidth(v4);
}

void sub_18BA860B4(double a1)
{
  v2 = *(*(v1 + 32) + 16);
  if (v2 >= 2)
  {
    v3 = *(v1 + 168);
    v4 = v3 + a1;
    v8.origin.x = UIEdgeInsetsInsetRect(*(v1 + 192), *(v1 + 200), *(v1 + 208), *(v1 + 216), *(v1 + 160), v3);
    Width = CGRectGetWidth(v8);
    v6 = sub_18BA86244(v4 + Width * 0.5);
    if (*(v1 + 96))
    {
      if (__OFSUB__(v2, v6))
      {
        __break(1u);
      }

      else if (!__OFSUB__(v2 - v6, 1))
      {
        goto LABEL_5;
      }

      __break(1u);
      return;
    }

LABEL_5:
    v7 = v6;
    sub_18BA8600C(v6);
    sub_18BA85844(v7);
  }
}

void sub_18BA8618C(uint64_t a1, int64_t a2)
{
  if (*(*(v2 + 320) + 16) <= a1)
  {
    v3 = a1;
    v4 = a2;
    sub_18BA85248(a1);
    a1 = v3;
    a2 = v4;
  }

  else if (a1 < 0)
  {
    __break(1u);
    return;
  }

  sub_18BA85D20(a1, a2);
  if (*(v2 + 96))
  {
    v5.origin.x = sub_18BA84EC0();
    CGRectGetMaxX(v5);
  }

  v6.origin.x = UIEdgeInsetsInsetRect(*(v2 + 192), *(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 160), *(v2 + 168));
  CGRectGetWidth(v6);
}

uint64_t sub_18BA86244(CGFloat a1)
{
  v2 = v1;
  v4 = _s4ItemVMa_0(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v6) = *(v1 + 96);
  v8 = *(v1 + 104);
  v9 = *(v1 + 152);
  v67 = *(v1 + 144);
  if (v6)
  {
    v74.origin.x = sub_18BA84EC0();
    a1 = CGRectGetMaxX(v74) - a1;
  }

  v10 = *(v1 + 320);
  if (*(v10 + 16))
  {
    v11 = *(v10 + 32);
  }

  else if (*(*(v1 + 32) + 16))
  {
    v75.origin.x = UIEdgeInsetsInsetRect(*(v1 + 192), *(v1 + 200), *(v1 + 208), *(v1 + 216), *(v1 + 160), *(v1 + 168));
    Width = CGRectGetWidth(v75);
    sub_18BA85844(0);
    v11 = _SFRoundFloatToPixels((Width - v13) * 0.5);
  }

  else
  {
    v11 = 0.0;
  }

  v14 = *(v1 + 32);
  v15 = *(v14 + 16);
  if (!v15)
  {
    return v15 - 1;
  }

  v16 = 0;
  v17 = v11 + v8 * -0.5;
  v18 = v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v60 = *MEMORY[0x1E69DB648];
  v71 = v8 + v8;
  v70 = v9 + v9;
  v19 = fmin(v67, 0.0);
  v20 = *(v5 + 72);
  v59 = xmmword_18BC3E410;
  v64 = a1;
  v65 = v7;
  v63 = v8;
  v62 = v15;
  v61 = v20;
  while (1)
  {
    sub_18B80DF38(v18, v7);
    if (v7[*(v4 + 32)] != 1)
    {
      break;
    }

    v76.origin.x = UIEdgeInsetsInsetRect(*(v2 + 192), *(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 160), *(v2 + 168));
    v21 = CGRectGetWidth(v76);
    sub_18B813CBC(v7);
    v22 = v21 - v71 - v70;
    v23 = v19;
    if (v22 >= 0.0)
    {
      v23 = v67;
      if (v67 >= v22)
      {
        v23 = v21 - v71 - v70;
      }
    }

LABEL_35:
    v17 = v17 + v8 + v23;
    if (a1 < v17)
    {
      return v16;
    }

    ++v16;
    v18 += v20;
    if (v15 == v16)
    {
      return v15 - 1;
    }
  }

  v24 = &v7[*(v4 + 40)];
  v25 = v24[1];
  if (v25)
  {
    v72 = *v24;
    v26 = v25;
  }

  else
  {
    v72 = 0;
    v26 = 0xE000000000000000;
  }

  v27 = *(v2 + 312);
  v28 = v27[3];
  if (!v28)
  {
    goto LABEL_40;
  }

  swift_beginAccess();
  v29 = v27[2];
  v30 = *(v29 + 16);
  sub_18BC1E3F8();
  v31 = v28;
  sub_18BC1E3F8();
  v69 = v17;
  if (v30)
  {
    sub_18BC1E3F8();
    v32 = sub_18BB8B1C4(v31, v72, v26);
    if (v33)
    {
      v34 = v32;

      v68 = *(*(v29 + 56) + 8 * v34);

      goto LABEL_24;
    }
  }

  v35 = [v31 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6100, &unk_18BC49C40);
  inited = swift_initStackObject();
  *(inited + 16) = v59;
  v66 = v31;
  v37 = v60;
  *(inited + 32) = v60;
  *(inited + 40) = v35;
  v38 = v37;
  v68 = COERCE_DOUBLE(v35);
  sub_18BA64BEC(inited);
  swift_setDeallocating();
  sub_18B988BAC(inited + 32, &qword_1EA9D6108, &unk_18BC45100);
  v39 = sub_18BC20B98();

  type metadata accessor for Key(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6110, &qword_18BC49C50);
  sub_18BA1EC64();
  v40 = sub_18BC20998();

  v41 = CTLineCreateWithString();

  v31 = v66;
  BoundsWithOptions = CTLineGetBoundsWithOptions(v41, 0);
  v42 = CGRectGetWidth(BoundsWithOptions);
  v43 = _SFCeilingFloatToPixels(v42);

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73 = v27[2];
  v27[2] = 0x8000000000000000;
  v68 = v43;
  v45.n128_f64[0] = v43;
  sub_18BAA71D8(v31, v72, v26, isUniquelyReferenced_nonNull_native, v45);
  v27[2] = v73;
  swift_endAccess();
LABEL_24:

  v78.origin.x = UIEdgeInsetsInsetRect(*(v2 + 192), *(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 160), *(v2 + 168));
  x = v78.origin.x;
  y = v78.origin.y;
  v48 = v78.size.width;
  height = v78.size.height;
  v50 = CGRectGetWidth(v78);
  v51 = v71;
  v52 = v70;
  v53 = v50 - v71 - v70;
  v54 = v67;
  if (v67 >= v53)
  {
    v54 = v53;
  }

  v55 = v19;
  if (v53 >= 0.0)
  {
    v19 = v54;
  }

  v79.origin.x = x;
  v79.origin.y = y;
  v79.size.width = v48;
  v79.size.height = height;
  v56 = CGRectGetWidth(v79);
  v7 = v65;
  sub_18B813CBC(v65);
  v23 = v56 - v51 - v52;
  if (v23 < 0.0)
  {
    v23 = 0.0;
  }

  if (v19 <= v23)
  {
    v57 = v68;
    if (v68 <= v19)
    {
      v57 = v19;
    }

    a1 = v64;
    v8 = v63;
    v15 = v62;
    v19 = v55;
    v17 = v69;
    v20 = v61;
    if (v23 >= v57)
    {
      v23 = v57;
    }

    goto LABEL_35;
  }

  __break(1u);
LABEL_40:
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

BOOL sub_18BA868C8(uint64_t a1)
{
  if ((*(*(v1 + 8) + 40) & 0xFE) == 2)
  {
    v3 = *(*(v1 + 32) + 16) - 1;
  }

  else
  {
    v4 = *(v1 + 168);
    v5 = *(v1 + 192);
    v6 = v4 + v5;
    v9.origin.x = UIEdgeInsetsInsetRect(v5, *(v1 + 200), *(v1 + 208), *(v1 + 216), *(v1 + 160), v4);
    Width = CGRectGetWidth(v9);
    v3 = sub_18BA86244(v6 + Width * 0.5);
  }

  return v3 == a1;
}

uint64_t sub_18BA86948()
{
  v1 = *(v0 + 24);
  if (*(v0 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  sub_18BC1E3F8();
  return v2 | v1;
}

__n128 sub_18BA8699C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  *(a1 + 64) = *(v1 + 112);
  *(a1 + 80) = v2;
  *(a1 + 96) = *(v1 + 144);
  v3 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v3;
  result = *(v1 + 96);
  *(a1 + 32) = *(v1 + 80);
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_18BA869C0(_OWORD *a1)
{
  v2 = v1[8];
  v9[4] = v1[7];
  v9[5] = v2;
  v9[6] = v1[9];
  v3 = v1[4];
  v9[0] = v1[3];
  v9[1] = v3;
  v4 = v1[6];
  v9[2] = v1[5];
  v9[3] = v4;
  v5 = a1[1];
  v1[3] = *a1;
  v1[4] = v5;
  v6 = a1[5];
  v1[7] = a1[4];
  v1[8] = v6;
  v7 = a1[3];
  v1[5] = a1[2];
  v1[6] = v7;
  v1[9] = a1[6];
  return sub_18BA84F74(v9);
}

__n128 sub_18BA86A24@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 272);
  *(a1 + 96) = *(v1 + 256);
  *(a1 + 112) = v2;
  *(a1 + 128) = *(v1 + 288);
  *(a1 + 144) = *(v1 + 304);
  v3 = *(v1 + 208);
  *(a1 + 32) = *(v1 + 192);
  *(a1 + 48) = v3;
  v4 = *(v1 + 240);
  *(a1 + 64) = *(v1 + 224);
  *(a1 + 80) = v4;
  result = *(v1 + 160);
  v6 = *(v1 + 176);
  *a1 = result;
  *(a1 + 16) = v6;
  return result;
}

uint64_t sub_18BA86A58(uint64_t a1)
{
  v2 = *(v1 + 272);
  v11[6] = *(v1 + 256);
  v11[7] = v2;
  v11[8] = *(v1 + 288);
  v12 = *(v1 + 304);
  v3 = *(v1 + 208);
  v11[2] = *(v1 + 192);
  v11[3] = v3;
  v4 = *(v1 + 240);
  v11[4] = *(v1 + 224);
  v11[5] = v4;
  v5 = *(v1 + 176);
  v11[0] = *(v1 + 160);
  v11[1] = v5;
  v6 = *(a1 + 112);
  *(v1 + 256) = *(a1 + 96);
  *(v1 + 272) = v6;
  *(v1 + 288) = *(a1 + 128);
  *(v1 + 304) = *(a1 + 144);
  v7 = *(a1 + 48);
  *(v1 + 192) = *(a1 + 32);
  *(v1 + 208) = v7;
  v8 = *(a1 + 80);
  *(v1 + 224) = *(a1 + 64);
  *(v1 + 240) = v8;
  v9 = *(a1 + 16);
  *(v1 + 160) = *a1;
  *(v1 + 176) = v9;
  return sub_18BA850C8(v11);
}

void *sub_18BA86BC4(int64_t a1)
{
  result = memcpy(__dst, v1, sizeof(__dst));
  if (*(__dst[40] + 16) <= a1)
  {
    sub_18BA85248(a1);
    return sub_18BA85844(a1);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    return sub_18BA85844(a1);
  }

  __break(1u);
  return result;
}

unint64_t sub_18BA86C70@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>)
{
  memcpy(__dst, v2, sizeof(__dst));
  v5 = __dst[4];
  if (!*(__dst[4] + 16))
  {
    v13 = _s4ItemVMa_0(0);
    v9 = *(*(v13 - 8) + 56);
    v12 = v13;
    v10 = a1;
    v11 = 1;
    goto LABEL_6;
  }

  result = sub_18BA86244(a2);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  if (result >= *(v5 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = _s4ItemVMa_0(0);
  v14 = *(v8 - 8);
  sub_18B80DF38(v5 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v7, a1);
  v9 = *(v14 + 56);
  v10 = a1;
  v11 = 0;
  v12 = v8;
LABEL_6:

  return v9(v10, v11, 1, v12);
}

void sub_18BA86E5C(double a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = __dst[21] + a1;
  v7.origin.x = UIEdgeInsetsInsetRect(__dst[24], __dst[25], __dst[26], __dst[27], __dst[20], __dst[21]);
  Width = CGRectGetWidth(v7);
  v5 = sub_18BA86244(v3 + Width * 0.5);
  sub_18BA8600C(v5);
}

double sub_18BA86FCC()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_18BA85844(*(__dst[4] + 16) - 2);
  return v1 * *(__dst[1] + 48);
}

double sub_18BA87088()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = *(__dst[4] + 16);
  if (v1)
  {
    v2 = v1 - 2;
    v8.origin.x = UIEdgeInsetsInsetRect(*&__dst[24], *&__dst[25], *&__dst[26], *&__dst[27], *&__dst[20], *&__dst[21]);
    Width = CGRectGetWidth(v8);
    sub_18BA85844(v2);
    v5 = _SFRoundFloatToPixels((Width - v4) * 0.5);
  }

  else
  {
    v5 = 0.0;
  }

  return v5 - *&__dst[13];
}

uint64_t sub_18BA8712C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 328))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18BA87174(uint64_t result, int a2, int a3)
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18BA87280(uint64_t a1)
{
  v3 = _s4ItemVMa(0);
  v42 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v33 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v33 - v8;
  v9 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v33 = v1;
    v47 = MEMORY[0x1E69E7CC0];
    sub_18BC21B98();
    v11 = a1 + 56;
    result = sub_18BC21918();
    v12 = result;
    v13 = 0;
    v14 = *(a1 + 36);
    v34 = a1 + 64;
    v35 = v14;
    v37 = v9;
    v38 = a1;
    v36 = a1 + 56;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v11 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_21;
      }

      if (v14 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v43 = v13;
      v44 = 1 << v12;
      v17 = v39;
      sub_18B8162EC(*(a1 + 48) + *(v42 + 72) * v12, v39, _s4ItemVMa);
      v18 = v40;
      sub_18B8162EC(v17, v40, _s4ItemVMa);
      v19 = objc_allocWithZone(SFTabSwitcherItem);
      v20 = v41;
      sub_18B8162EC(v18, v41, _s4ItemVMa);
      v21 = type metadata accessor for SFTabSwitcherItemInternal(0);
      v22 = objc_allocWithZone(v21);
      sub_18B8162EC(v20, v22 + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped, _s4ItemVMa);
      v46.receiver = v22;
      v46.super_class = v21;
      v23 = objc_msgSendSuper2(&v46, sel_init);
      v24 = v20;
      a1 = v38;
      sub_18B8165D8(v24, _s4ItemVMa);
      *&v19[OBJC_IVAR___SFTabSwitcherItem__internal] = v23;
      v45.receiver = v19;
      v45.super_class = SFTabSwitcherItem;
      objc_msgSendSuper2(&v45, sel_init);
      sub_18B8165D8(v18, _s4ItemVMa);
      sub_18B8165D8(v17, _s4ItemVMa);
      sub_18BC21B68();
      sub_18BC21BA8();
      sub_18BC21BB8();
      result = sub_18BC21B78();
      v15 = 1 << *(a1 + 32);
      if (v12 >= v15)
      {
        goto LABEL_23;
      }

      v11 = v36;
      v25 = v37;
      v26 = *(v36 + 8 * v16);
      if ((v26 & v44) == 0)
      {
        goto LABEL_24;
      }

      LODWORD(v14) = v35;
      if (v35 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v27 = v26 & (-2 << (v12 & 0x3F));
      if (v27)
      {
        v15 = __clz(__rbit64(v27)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v16 << 6;
        v29 = v16 + 1;
        v30 = (v34 + 8 * v16);
        while (v29 < (v15 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_18B7B4FF8(v12, v35, 0);
            v15 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_18B7B4FF8(v12, v35, 0);
      }

LABEL_4:
      v13 = v43 + 1;
      v12 = v15;
      if (v43 + 1 == v25)
      {
        return v47;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

id sub_18BA8770C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    v9 = a4;
    swift_once();
    a4 = v9;
  }

  v5 = *a4;
  v6 = objc_allocWithZone(SFAnimationSettings);
  *&v6[OBJC_IVAR___SFAnimationSettings_wrapped] = v5;
  v10.receiver = v6;
  v10.super_class = SFAnimationSettings;
  sub_18BC1E1A8();
  v7 = objc_msgSendSuper2(&v10, sel_init);

  return v7;
}

uint64_t sub_18BA87CA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_18BC1E1A8();
  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t sub_18BA87DBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_18BC1E1A8();
  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

id sub_18BA87F04(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_18BC1E1A8();
  v4 = a2;
  v3();

  sub_18B7B0AC0(0, &qword_1EA9D7CE0, 0x1E69DC990);
  v5 = sub_18BC20D88();

  return v5;
}

uint64_t sub_18BA87F9C(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a2, a1);
  sub_18B7B0AC0(0, &qword_1EA9D7CE0, 0x1E69DC990);
  v3 = sub_18BC20D98();

  return v3;
}

id sub_18BA880C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_18BC1E1A8();
  swift_unknownObjectRetain();
  v6 = a3;
  v7 = v5(a2, v6);

  swift_unknownObjectRelease();

  return v7;
}

uint64_t sub_18BA882B8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  sub_18BC1E1A8();
  v6 = a2;
  swift_unknownObjectRetain();
  v7 = v5(v6, a3);

  swift_unknownObjectRelease();
  return v7;
}

void sub_18BA88404(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  type metadata accessor for SFTabSwitcherItem(a1);
  sub_18BA93A40(&qword_1EA9D7CD8, v5, type metadata accessor for SFTabSwitcherItem, MEMORY[0x1E69E81B8]);
  v6 = sub_18BC20FD8();
  sub_18BC1E1A8();
  v7 = a3;
  v4(v6, a3);
}

void sub_18BA88504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SFTabSwitcherItem(a1);
  sub_18BA93A40(&qword_1EA9D7CD8, v5, type metadata accessor for SFTabSwitcherItem, MEMORY[0x1E69E81B8]);
  v6 = sub_18BC20FC8();
  (*(a3 + 16))(a3, v6, a2);
}

double sub_18BA885CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  type metadata accessor for SFTabSwitcherItem(a1);
  v3 = sub_18BC20D98();
  sub_18BC1E1A8();
  v2(v3);

  return result;
}

void sub_18BA8863C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SFTabSwitcherItem(a1);
  v3 = sub_18BC20D88();
  (*(a2 + 16))(a2, v3);
}

id sub_18BA886B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = (a1 + *a3);
  v5 = v4[1];
  v8[4] = *v4;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_18BA885CC;
  v8[3] = a4;
  v6 = _Block_copy(v8);
  sub_18BC1E1A8();

  return v6;
}

void sub_18BA8881C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  type metadata accessor for SFTabSwitcherSection(a1);
  v5 = sub_18BC20D98();
  sub_18BC1E1A8();
  v6 = a3;
  v4(v5, v6);
}

void sub_18BA888B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SFTabSwitcherSection(a1);
  v5 = sub_18BC20D88();
  (*(a3 + 16))(a3, v5, a2);
}

double sub_18BA889E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  type metadata accessor for SFTabSwitcherItem(a1);
  v5 = sub_18BC20D98();
  sub_18BC1E1A8();
  v4(v5, a3);

  return result;
}

void sub_18BA88A6C(uint64_t a1, char a2, uint64_t a3)
{
  type metadata accessor for SFTabSwitcherItem(a1);
  v5 = sub_18BC20D88();
  (*(a3 + 16))(a3, v5, a2 & 1);
}

void sub_18BA88C68(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  sub_18BC20BD8();
  sub_18BC1E1A8();
  v5 = a2;
  v4();
}

id sub_18BA88DB0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  sub_18B7B0AC0(0, &qword_1EA9D39D0, 0x1E69DCC78);
  sub_18BC20D98();
  sub_18BC1E1A8();
  v5 = a2;
  v4();

  v6 = sub_18BC20D88();

  return v6;
}

uint64_t sub_18BA88E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18B7B0AC0(0, &qword_1EA9D39D0, 0x1E69DCC78);
  v5 = sub_18BC20D88();
  v6 = (*(a3 + 16))(a3, a1, v5);

  v7 = sub_18BC20D98();
  return v7;
}

id sub_18BA89084(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_18BC1E1A8();
  v4 = a2;
  v5 = v3();

  return v5;
}

double sub_18BA89100(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_18BC1E1A8();
  v3(a2);

  return result;
}

void sub_18BA89234(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_18BC1E1A8();
  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t sub_18BA892B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v5 = a2;
    sub_18B7B1AD4(&v5, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  sub_18BC1E1A8();
  swift_unknownObjectRetain();
  v3(v7);

  return sub_18B988BAC(v7, &qword_1EA9D5220, &qword_18BC3FCB0);
}

double sub_18BA89354(uint64_t a1, uint64_t a2)
{
  sub_18B7CA054(a1, v11, &qword_1EA9D5220, &qword_18BC3FCB0);
  v3 = v12;
  if (v12)
  {
    v4 = __swift_project_boxed_opaque_existential_1Tm(v11, v12);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_18BC21FB8();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v9 = 0;
  }

  (*(a2 + 16))(a2, v9);
  swift_unknownObjectRelease();
  return result;
}

id sub_18BA894B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = (a1 + *a3);
  v5 = v4[1];
  v8[4] = *v4;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_18BA89100;
  v8[3] = a4;
  v6 = _Block_copy(v8);
  sub_18BC1E1A8();

  return v6;
}

uint64_t sub_18BA89874()
{
  v1 = _s4PageVMa(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = *(v0 + OBJC_IVAR___SFTabSwitcherContent__internal) + OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherContentInternal_wrapped;
  swift_beginAccess();
  v12 = *(v11 + 8);
  v13 = *(v12 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_18BC21B98();
    v15 = v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v21 = *(v2 + 72);
    do
    {
      sub_18B8162EC(v15, v10, _s4PageVMa);
      sub_18B8162EC(v10, v7, _s4PageVMa);
      v16 = objc_allocWithZone(SFTabSwitcherPage);
      sub_18B8162EC(v7, v4, _s4PageVMa);
      v17 = type metadata accessor for SFTabSwitcherPageInternal(0);
      v18 = objc_allocWithZone(v17);
      sub_18B8162EC(v4, v18 + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped, _s4PageVMa);
      v23.receiver = v18;
      v23.super_class = v17;
      v19 = objc_msgSendSuper2(&v23, sel_init);
      sub_18B8165D8(v4, _s4PageVMa);
      *&v16[OBJC_IVAR___SFTabSwitcherPage__internal] = v19;
      v22.receiver = v16;
      v22.super_class = SFTabSwitcherPage;
      objc_msgSendSuper2(&v22, sel_init);
      sub_18B8165D8(v7, _s4PageVMa);
      sub_18B8165D8(v10, _s4PageVMa);
      sub_18BC21B68();
      sub_18BC21BA8();
      sub_18BC21BB8();
      sub_18BC21B78();
      v15 += v21;
      --v13;
    }

    while (v13);
    return v24;
  }

  return result;
}

id sub_18BA89B44()
{
  v1 = (*(v0 + OBJC_IVAR___SFTabSwitcherContent__internal) + OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherContentInternal_wrapped);
  swift_beginAccess();
  v2 = v1[5];
  if (!v2)
  {
    return 0;
  }

  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[2];
  v6 = objc_allocWithZone(SFTabSwitcherProfile);
  v7 = &v6[OBJC_IVAR___SFTabSwitcherProfile_wrapped];
  *v7 = v5;
  *(v7 + 1) = v4;
  *(v7 + 2) = v3;
  *(v7 + 3) = v2;
  v11.receiver = v6;
  v11.super_class = SFTabSwitcherProfile;
  v8 = v5;
  v9 = v4;
  sub_18BC1E3F8();
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_18BA89C4C()
{
  v1 = _s4ItemVMa(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0, &unk_18BC49EB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v14 = *(v0 + OBJC_IVAR___SFTabSwitcherContent__internal) + OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherContentInternal_wrapped;
  swift_beginAccess();
  v15 = _s7ContentVMa(0);
  sub_18B7CA054(v14 + *(v15 + 40), v13, &qword_1EA9D7CD0, &unk_18BC49EB0);
  v16 = (*(v2 + 48))(v13, 1, v1);
  result = 0;
  if (v16 != 1)
  {
    sub_18B81F9A8(v13, v10, _s4ItemVMa);
    sub_18B8162EC(v10, v7, _s4ItemVMa);
    v18 = objc_allocWithZone(SFTabSwitcherItem);
    sub_18B8162EC(v7, v4, _s4ItemVMa);
    v19 = type metadata accessor for SFTabSwitcherItemInternal(0);
    v20 = objc_allocWithZone(v19);
    sub_18B8162EC(v4, v20 + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped, _s4ItemVMa);
    v25.receiver = v20;
    v25.super_class = v19;
    v21 = objc_msgSendSuper2(&v25, sel_init);
    sub_18B8165D8(v4, _s4ItemVMa);
    *&v18[OBJC_IVAR___SFTabSwitcherItem__internal] = v21;
    v24.receiver = v18;
    v24.super_class = SFTabSwitcherItem;
    v22 = objc_msgSendSuper2(&v24, sel_init);
    sub_18B8165D8(v7, _s4ItemVMa);
    sub_18B8165D8(v10, _s4ItemVMa);
    return v22;
  }

  return result;
}

id sub_18BA89FE8()
{
  v1 = _s4PageVMa(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  sub_18B8162EC(*(v0 + OBJC_IVAR___SFTabSwitcherDropDestination_storage) + OBJC_IVAR____TtC12MobileSafari36SFTabSwitcherDropDestinationInternal_wrapped, &v13 - v5, _s4PageVMa);
  v7 = objc_allocWithZone(SFTabSwitcherPage);
  sub_18B8162EC(v6, v3, _s4PageVMa);
  v8 = type metadata accessor for SFTabSwitcherPageInternal(0);
  v9 = objc_allocWithZone(v8);
  sub_18B8162EC(v3, v9 + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped, _s4PageVMa);
  v14.receiver = v9;
  v14.super_class = v8;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  sub_18B8165D8(v3, _s4PageVMa);
  *&v7[OBJC_IVAR___SFTabSwitcherPage__internal] = v10;
  v13.receiver = v7;
  v13.super_class = SFTabSwitcherPage;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  sub_18B8165D8(v6, _s4PageVMa);
  return v11;
}

id sub_18BA8A1BC()
{
  v1 = _s7SectionVMa_0(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = *(v0 + OBJC_IVAR___SFTabSwitcherDropDestination_storage);
  v8 = OBJC_IVAR____TtC12MobileSafari36SFTabSwitcherDropDestinationInternal_wrapped;
  v9 = _s15DropDestinationVMa_0(0);
  sub_18B8162EC(v7 + v8 + *(v9 + 20), v6, _s7SectionVMa_0);
  v10 = objc_allocWithZone(SFTabSwitcherSection);
  sub_18B8162EC(v6, v3, _s7SectionVMa_0);
  v11 = type metadata accessor for SFTabSwitcherSectionInternal(0);
  v12 = objc_allocWithZone(v11);
  sub_18B8162EC(v3, v12 + OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherSectionInternal_wrapped, _s7SectionVMa_0);
  v17.receiver = v12;
  v17.super_class = v11;
  v13 = objc_msgSendSuper2(&v17, sel_init);
  sub_18B8165D8(v3, _s7SectionVMa_0);
  *&v10[OBJC_IVAR___SFTabSwitcherSection__internal] = v13;
  v16.receiver = v10;
  v16.super_class = SFTabSwitcherSection;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  sub_18B8165D8(v6, _s7SectionVMa_0);
  return v14;
}

id sub_18BA8A3A0()
{
  v1 = _s4ItemVMa(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0, &unk_18BC49EB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  v14 = *(v0 + OBJC_IVAR___SFTabSwitcherDropDestination_storage);
  v15 = OBJC_IVAR____TtC12MobileSafari36SFTabSwitcherDropDestinationInternal_wrapped;
  v16 = _s15DropDestinationVMa_0(0);
  sub_18B7CA054(v14 + v15 + *(v16 + 24), v13, &qword_1EA9D7CD0, &unk_18BC49EB0);
  v17 = (*(v2 + 48))(v13, 1, v1);
  result = 0;
  if (v17 != 1)
  {
    sub_18B81F9A8(v13, v10, _s4ItemVMa);
    sub_18B8162EC(v10, v7, _s4ItemVMa);
    v19 = objc_allocWithZone(SFTabSwitcherItem);
    sub_18B8162EC(v7, v4, _s4ItemVMa);
    v20 = type metadata accessor for SFTabSwitcherItemInternal(0);
    v21 = objc_allocWithZone(v20);
    sub_18B8162EC(v4, v21 + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped, _s4ItemVMa);
    v25.receiver = v21;
    v25.super_class = v20;
    v22 = objc_msgSendSuper2(&v25, sel_init);
    sub_18B8165D8(v4, _s4ItemVMa);
    *&v19[OBJC_IVAR___SFTabSwitcherItem__internal] = v22;
    v24.receiver = v19;
    v24.super_class = SFTabSwitcherItem;
    v23 = objc_msgSendSuper2(&v24, sel_init);
    sub_18B8165D8(v7, _s4ItemVMa);
    sub_18B8165D8(v10, _s4ItemVMa);
    return v23;
  }

  return result;
}

id sub_18BA8A710()
{
  v1 = _s15DropDestinationVMa_0(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  sub_18B8162EC(*(v0 + OBJC_IVAR___SFTabSwitcherDropIntent__internal) + OBJC_IVAR____TtC12MobileSafari31SFTabSwitcherDropIntentInternal_wrapped, &v13 - v5, _s15DropDestinationVMa_0);
  v7 = objc_allocWithZone(SFTabSwitcherDropDestination);
  sub_18B8162EC(v6, v3, _s15DropDestinationVMa_0);
  v8 = type metadata accessor for SFTabSwitcherDropDestinationInternal(0);
  v9 = objc_allocWithZone(v8);
  sub_18B8162EC(v3, v9 + OBJC_IVAR____TtC12MobileSafari36SFTabSwitcherDropDestinationInternal_wrapped, _s15DropDestinationVMa_0);
  v14.receiver = v9;
  v14.super_class = v8;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  sub_18B8165D8(v3, _s15DropDestinationVMa_0);
  *&v7[OBJC_IVAR___SFTabSwitcherDropDestination_storage] = v10;
  v13.receiver = v7;
  v13.super_class = SFTabSwitcherDropDestination;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  sub_18B8165D8(v6, _s15DropDestinationVMa_0);
  return v11;
}

uint64_t SFTabSwitcherItem.hash.getter()
{
  v1 = _s4ItemVMa(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR___SFTabSwitcherItem__internal);
  v5 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v4 + v5, v3, _s4ItemVMa);
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18BA93A40(&qword_1EA9D3970, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_18BC20A78();
  v6 = sub_18BC221A8();
  sub_18B8165D8(v3, _s4ItemVMa);
  return v6;
}

void sub_18BA8AE40(uint64_t a1)
{
  v3 = _s4ItemVMa(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR___SFTabSwitcherItem__internal;
  v8 = *(v1 + OBJC_IVAR___SFTabSwitcherItem__internal);
  v9 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v8 + v9, v6, _s4ItemVMa);
  v10 = *(v4 + 36);
  v11 = sub_18BC1EC08();
  (*(*(v11 - 8) + 40))(&v6[v10], a1, v11);
  v12 = *(v1 + v7);
  v13 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
  swift_beginAccess();
  v14 = v12;
  sub_18B81FC54(v6, v12 + v13, _s4ItemVMa);
  swift_endAccess();
}

uint64_t SFTabSwitcherItem.isEqual(_:)(uint64_t a1)
{
  v3 = _s4ItemVMa(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - v7;
  v9 = sub_18B7CA054(a1, v18, &qword_1EA9D5220, &qword_18BC3FCB0);
  if (!v19)
  {
    sub_18B988BAC(v18, &qword_1EA9D5220, &qword_18BC3FCB0);
    goto LABEL_5;
  }

  type metadata accessor for SFTabSwitcherItem(v9);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    updated = 0;
    return updated & 1;
  }

  v10 = v17[1];
  v11 = *(v1 + OBJC_IVAR___SFTabSwitcherItem__internal);
  v12 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v11 + v12, v8, _s4ItemVMa);
  v13 = *&v10[OBJC_IVAR___SFTabSwitcherItem__internal];
  v14 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v13 + v14, v5, _s4ItemVMa);
  updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();

  sub_18B8165D8(v5, _s4ItemVMa);
  sub_18B8165D8(v8, _s4ItemVMa);
  return updated & 1;
}

uint64_t sub_18BA8B370(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_18BC20BD8();
  v5 = v4;
  sub_18BC1E1A8();
  LOBYTE(v3) = v2(v3, v5);

  return v3 & 1;
}

id sub_18BA8B6C0(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v6 = a1;
  a3();

  a4();
  v7 = sub_18BC20D88();

  return v7;
}

uint64_t sub_18BA8B738()
{
  v1 = _s4ItemVMa(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = _s4PageVMa(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + OBJC_IVAR___SFTabSwitcherPage__internal);
  v15 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v14 + v15, v13, _s4PageVMa);
  sub_18BBD9DE0();
  v17 = v16;
  sub_18B8165D8(v13, _s4PageVMa);
  v18 = *(v17 + 16);
  if (v18)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_18BC21B98();
    v19 = v17 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v20 = *(v2 + 72);
    v26 = v17;
    v27 = v20;
    do
    {
      sub_18B8162EC(v19, v10, _s4ItemVMa);
      sub_18B8162EC(v10, v7, _s4ItemVMa);
      v21 = objc_allocWithZone(SFTabSwitcherItem);
      sub_18B8162EC(v7, v4, _s4ItemVMa);
      v22 = type metadata accessor for SFTabSwitcherItemInternal(0);
      v23 = objc_allocWithZone(v22);
      sub_18B8162EC(v4, v23 + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped, _s4ItemVMa);
      v29.receiver = v23;
      v29.super_class = v22;
      v24 = objc_msgSendSuper2(&v29, sel_init, v26);
      sub_18B8165D8(v4, _s4ItemVMa);
      *&v21[OBJC_IVAR___SFTabSwitcherItem__internal] = v24;
      v28.receiver = v21;
      v28.super_class = SFTabSwitcherItem;
      objc_msgSendSuper2(&v28, sel_init);
      sub_18B8165D8(v7, _s4ItemVMa);
      sub_18B8165D8(v10, _s4ItemVMa);
      sub_18BC21B68();
      sub_18BC21BA8();
      sub_18BC21BB8();
      sub_18BC21B78();
      v19 += v27;
      --v18;
    }

    while (v18);

    return v30;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_18BA8BAC8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = *(a1 + *a3) + *a4;
  swift_beginAccess();
  return *(v4 + 1);
}

uint64_t sub_18BA8BB28(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = *(a1 + *a3) + *a4;
  swift_beginAccess();
  return *(v4 + 2);
}

uint64_t SFTabSwitcherPage.hash.getter()
{
  v1 = _s4PageVMa(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR___SFTabSwitcherPage__internal);
  v5 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v4 + v5, v3, _s4PageVMa);
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18BA93A40(&qword_1EA9D3970, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_18BC20A78();
  v6 = sub_18BC221A8();
  sub_18B8165D8(v3, _s4PageVMa);
  return v6;
}

void sub_18BA8BFBC(uint64_t a1)
{
  v3 = _s4PageVMa(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR___SFTabSwitcherPage__internal;
  v8 = *(v1 + OBJC_IVAR___SFTabSwitcherPage__internal);
  v9 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v8 + v9, v6, _s4PageVMa);
  v10 = *(v4 + 40);
  v11 = sub_18BC1EC08();
  (*(*(v11 - 8) + 40))(&v6[v10], a1, v11);
  v12 = *(v1 + v7);
  v13 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  v14 = v12;
  sub_18B81FC54(v6, v12 + v13, _s4PageVMa);
  swift_endAccess();
}

uint64_t SFTabSwitcherPage.isEqual(_:)(uint64_t a1)
{
  v3 = _s4PageVMa(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - v7;
  v9 = sub_18B7CA054(a1, v18, &qword_1EA9D5220, &qword_18BC3FCB0);
  if (!v19)
  {
    sub_18B988BAC(v18, &qword_1EA9D5220, &qword_18BC3FCB0);
    goto LABEL_5;
  }

  type metadata accessor for SFTabSwitcherPage(v9);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    updated = 0;
    return updated & 1;
  }

  v10 = v17[1];
  v11 = *(v1 + OBJC_IVAR___SFTabSwitcherPage__internal);
  v12 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v11 + v12, v8, _s4PageVMa);
  v13 = *&v10[OBJC_IVAR___SFTabSwitcherPage__internal];
  v14 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v13 + v14, v5, _s4PageVMa);
  updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();

  sub_18B8165D8(v5, _s4PageVMa);
  sub_18B8165D8(v8, _s4PageVMa);
  return updated & 1;
}

uint64_t sub_18BA8C380(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *, __n128))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_18BC218B8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = (a4)(v10);

  sub_18B988BAC(v10, &qword_1EA9D5220, &qword_18BC3FCB0);
  return v8 & 1;
}

uint64_t sub_18BA8C440(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void, __n128))
{
  v6 = *(a1 + *a3) + *a4;
  swift_beginAccess();
  return *(v6 + *((a5)(0) + 44));
}

uint64_t SFTabSwitcherPage.isLocked.getter()
{
  v1 = *(v0 + OBJC_IVAR___SFTabSwitcherPage__internal) + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  return *(v1 + *(_s4PageVMa(0) + 44));
}

void SFTabSwitcherPage.isLocked.setter(char a1)
{
  v3 = _s4PageVMa(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + OBJC_IVAR___SFTabSwitcherPage__internal);
  v8 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v7 + v8, v6, _s4PageVMa);
  v6[*(v4 + 52)] = a1;
  swift_beginAccess();
  v9 = v7;
  sub_18B81FC54(v6, v7 + v8, _s4PageVMa);
  swift_endAccess();
}

id sub_18BA8C7E4()
{
  v1 = *(v0 + OBJC_IVAR___SFTabSwitcherPage__internal) + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  v2 = _s4PageVMa(0);
  result = 0;
  v4 = (v1 + *(v2 + 56));
  v5 = *v4;
  if (*v4 != 2)
  {
    v6 = v4[1];
    v7 = objc_allocWithZone(SFTabSwitcherPageOverlay);
    v8 = &v7[OBJC_IVAR___SFTabSwitcherPageOverlay_wrapped];
    *v8 = v5;
    v8[1] = v6;
    v9 = sub_18B829694(v5, v6);
    v10.receiver = v7;
    v10.super_class = SFTabSwitcherPageOverlay;
    return objc_msgSendSuper2(&v10, sel_init, v9);
  }

  return result;
}

id sub_18BA8C99C()
{
  v1 = *(v0 + OBJC_IVAR___SFTabSwitcherPage__internal) + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  v2 = v1 + *(_s4PageVMa(0) + 64);
  v3 = *(v2 + 24);
  if (!v3)
  {
    return 0;
  }

  v5 = *(v2 + 8);
  v4 = *(v2 + 16);
  v6 = *v2;
  v7 = objc_allocWithZone(SFTabSwitcherProfile);
  v8 = &v7[OBJC_IVAR___SFTabSwitcherProfile_wrapped];
  *v8 = v6;
  *(v8 + 1) = v5;
  *(v8 + 2) = v4;
  *(v8 + 3) = v3;
  v12.receiver = v7;
  v12.super_class = SFTabSwitcherProfile;
  v9 = v6;
  v10 = v5;
  sub_18BC1E3F8();
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_18BA8CA9C()
{
  v1 = _s7SectionVMa_0(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = *(v0 + OBJC_IVAR___SFTabSwitcherPage__internal) + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  v12 = *(v11 + *(_s4PageVMa(0) + 68));
  v13 = *(v12 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_18BC21B98();
    v15 = v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v21 = *(v2 + 72);
    do
    {
      sub_18B8162EC(v15, v10, _s7SectionVMa_0);
      sub_18B8162EC(v10, v7, _s7SectionVMa_0);
      v16 = objc_allocWithZone(SFTabSwitcherSection);
      sub_18B8162EC(v7, v4, _s7SectionVMa_0);
      v17 = type metadata accessor for SFTabSwitcherSectionInternal(0);
      v18 = objc_allocWithZone(v17);
      sub_18B8162EC(v4, v18 + OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherSectionInternal_wrapped, _s7SectionVMa_0);
      v23.receiver = v18;
      v23.super_class = v17;
      v19 = objc_msgSendSuper2(&v23, sel_init);
      sub_18B8165D8(v4, _s7SectionVMa_0);
      *&v16[OBJC_IVAR___SFTabSwitcherSection__internal] = v19;
      v22.receiver = v16;
      v22.super_class = SFTabSwitcherSection;
      objc_msgSendSuper2(&v22, sel_init);
      sub_18B8165D8(v7, _s7SectionVMa_0);
      sub_18B8165D8(v10, _s7SectionVMa_0);
      sub_18BC21B68();
      sub_18BC21BA8();
      sub_18BC21BB8();
      sub_18BC21B78();
      v15 += v21;
      --v13;
    }

    while (v13);
    return v24;
  }

  return result;
}

void sub_18BA8CE7C(char *a1)
{
  v3 = _s4PageVMa(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&a1[OBJC_IVAR___SFTabSwitcherShareConfiguration_wrapped];
  v8 = *&a1[OBJC_IVAR___SFTabSwitcherShareConfiguration_wrapped + 8];
  v9 = *&a1[OBJC_IVAR___SFTabSwitcherShareConfiguration_wrapped + 16];
  v10 = *&a1[OBJC_IVAR___SFTabSwitcherShareConfiguration_wrapped + 24];
  v11 = *&a1[OBJC_IVAR___SFTabSwitcherShareConfiguration_wrapped + 40];
  v22 = *&a1[OBJC_IVAR___SFTabSwitcherShareConfiguration_wrapped + 32];
  v23 = v9;
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  v12 = v7;
  v13 = v8;

  v14 = OBJC_IVAR___SFTabSwitcherPage__internal;
  v15 = *(v1 + OBJC_IVAR___SFTabSwitcherPage__internal);
  v16 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v15 + v16, v6, _s4PageVMa);
  v17 = &v6[*(v4 + 80)];

  *v17 = v7;
  *(v17 + 1) = v8;
  v18 = v22;
  *(v17 + 2) = v23;
  *(v17 + 3) = v10;
  *(v17 + 4) = v18;
  *(v17 + 5) = v11;
  v19 = *(v1 + v14);
  v20 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  v21 = v19;
  sub_18B81FC54(v6, v19 + v20, _s4PageVMa);
  swift_endAccess();
}

id sub_18BA8D320(void *a1)
{
  v2 = sub_18BC1EC08();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1DE28();
  v6 = sub_18BC1EBC8();
  (*(v3 + 8))(v5, v2);
  v7 = [a1 initWithIdentifier_];

  return v7;
}

uint64_t SFTabSwitcherSection.hash.getter()
{
  v1 = _s7SectionVMa_0(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR___SFTabSwitcherSection__internal);
  v5 = OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherSectionInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v4 + v5, v3, _s7SectionVMa_0);
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18BA93A40(&qword_1EA9D3970, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_18BC20A78();
  sub_18BC22178();
  v6 = sub_18BC221A8();
  sub_18B8165D8(v3, _s7SectionVMa_0);
  return v6;
}

void sub_18BA8D6F4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_18BC1EC08();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1EBE8();
  v9 = a1;
  a4(v8);
}

void sub_18BA8D790(uint64_t a1)
{
  v3 = _s7SectionVMa_0(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR___SFTabSwitcherSection__internal;
  v8 = *(v1 + OBJC_IVAR___SFTabSwitcherSection__internal);
  v9 = OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherSectionInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v8 + v9, v6, _s7SectionVMa_0);
  v10 = *(v4 + 28);
  v11 = sub_18BC1EC08();
  (*(*(v11 - 8) + 40))(&v6[v10], a1, v11);
  v12 = *(v1 + v7);
  v13 = OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherSectionInternal_wrapped;
  swift_beginAccess();
  v14 = v12;
  sub_18B81FC54(v6, v12 + v13, _s7SectionVMa_0);
  swift_endAccess();
}

uint64_t SFTabSwitcherSection.isEqual(_:)(uint64_t a1)
{
  v3 = _s7SectionVMa_0(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - v7;
  v9 = sub_18B7CA054(a1, v21, &qword_1EA9D5220, &qword_18BC3FCB0);
  if (!v22)
  {
    sub_18B988BAC(v21, &qword_1EA9D5220, &qword_18BC3FCB0);
    goto LABEL_7;
  }

  type metadata accessor for SFTabSwitcherSection(v9);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v18 = 0;
    return v18 & 1;
  }

  v10 = v20[1];
  v11 = *(v1 + OBJC_IVAR___SFTabSwitcherSection__internal);
  v12 = OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherSectionInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v11 + v12, v8, _s7SectionVMa_0);
  v13 = *&v10[OBJC_IVAR___SFTabSwitcherSection__internal];
  v14 = OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherSectionInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v13 + v14, v5, _s7SectionVMa_0);
  updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();

  if ((updated & 1) == 0)
  {
    sub_18B8165D8(v5, _s7SectionVMa_0);
    sub_18B8165D8(v8, _s7SectionVMa_0);
    goto LABEL_7;
  }

  v16 = v8[*(v3 + 24)];
  sub_18B8165D8(v8, _s7SectionVMa_0);
  v17 = v5[*(v3 + 24)];
  sub_18B8165D8(v5, _s7SectionVMa_0);
  v18 = v16 ^ v17 ^ 1;
  return v18 & 1;
}

uint64_t sub_18BA8DBC8()
{
  v1 = _s4ItemVMa(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = *(v0 + OBJC_IVAR___SFTabSwitcherSection__internal) + OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherSectionInternal_wrapped;
  swift_beginAccess();
  v12 = *(v11 + *(_s7SectionVMa_0(0) + 28));
  v13 = *(v12 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_18BC21B98();
    v15 = v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v21 = *(v2 + 72);
    do
    {
      sub_18B8162EC(v15, v10, _s4ItemVMa);
      sub_18B8162EC(v10, v7, _s4ItemVMa);
      v16 = objc_allocWithZone(SFTabSwitcherItem);
      sub_18B8162EC(v7, v4, _s4ItemVMa);
      v17 = type metadata accessor for SFTabSwitcherItemInternal(0);
      v18 = objc_allocWithZone(v17);
      sub_18B8162EC(v4, v18 + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped, _s4ItemVMa);
      v23.receiver = v18;
      v23.super_class = v17;
      v19 = objc_msgSendSuper2(&v23, sel_init);
      sub_18B8165D8(v4, _s4ItemVMa);
      *&v16[OBJC_IVAR___SFTabSwitcherItem__internal] = v19;
      v22.receiver = v16;
      v22.super_class = SFTabSwitcherItem;
      objc_msgSendSuper2(&v22, sel_init);
      sub_18B8165D8(v7, _s4ItemVMa);
      sub_18B8165D8(v10, _s4ItemVMa);
      sub_18BC21B68();
      sub_18BC21BA8();
      sub_18BC21BB8();
      sub_18BC21B78();
      v15 += v21;
      --v13;
    }

    while (v13);
    return v24;
  }

  return result;
}

void sub_18BA8DF10(uint64_t a1, uint64_t a2)
{
  v5 = _s7SectionVMa_0(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR___SFTabSwitcherSection__internal;
  v10 = *(v2 + OBJC_IVAR___SFTabSwitcherSection__internal);
  v11 = OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherSectionInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v10 + v11, v8, _s7SectionVMa_0);
  v12 = &v8[*(v6 + 40)];

  *v12 = a1;
  v12[1] = a2;
  v13 = *(v2 + v9);
  v14 = OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherSectionInternal_wrapped;
  swift_beginAccess();
  v15 = v13;
  sub_18B81FC54(v8, v13 + v14, _s7SectionVMa_0);
  swift_endAccess();
}

uint64_t sub_18BA8E218()
{
  v7[4] = [v0 collaborationButtonForLargeTitle];
  v1 = 0;
  v7[5] = [v0 collaborationButtonForNavigationBar];
  v2 = MEMORY[0x1E69E7CC0];
  v6 = MEMORY[0x1E69E7CC0];
  while (v1 != 2)
  {
    v3 = v7[v1++ + 4];
    if (v3)
    {
      v4 = v3;
      MEMORY[0x18CFFC270]();
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18BC20DD8();
      }

      sub_18BC20E18();
      v2 = v6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CF0, &unk_18BC49EC0);
  swift_arrayDestroy();
  return v2;
}

id SFTabSwitcherTransaction.init()()
{
  *(v0 + OBJC_IVAR___SFTabSwitcherTransaction_animationSettings) = 0;
  *(v0 + OBJC_IVAR___SFTabSwitcherTransaction_insertedItemToDismissTo) = 0;
  *(v0 + OBJC_IVAR___SFTabSwitcherTransaction_prefersDetachedTransition) = 0;
  *(v0 + OBJC_IVAR___SFTabSwitcherTransaction_targetScrollPosition) = 0;
  v2.super_class = SFTabSwitcherTransaction;
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_18BA8E92C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = _s4ItemVMa(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v29[-v11];
  v13 = [a2 borrowedCapsuleViewProvider];
  sub_18B8162EC(a1, v12, _s4ItemVMa);
  v14 = objc_allocWithZone(SFTabSwitcherItem);
  sub_18B8162EC(v12, v8, _s4ItemVMa);
  v15 = type metadata accessor for SFTabSwitcherItemInternal(0);
  v16 = objc_allocWithZone(v15);
  sub_18B8162EC(v8, v16 + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped, _s4ItemVMa);
  v35.receiver = v16;
  v35.super_class = v15;
  v17 = objc_msgSendSuper2(&v35, sel_init);
  sub_18B8165D8(v8, _s4ItemVMa);
  *&v14[OBJC_IVAR___SFTabSwitcherItem__internal] = v17;
  v34.receiver = v14;
  v34.super_class = SFTabSwitcherItem;
  v18 = objc_msgSendSuper2(&v34, sel_init);
  sub_18B8165D8(v12, _s4ItemVMa);
  v19 = v13[2](v13, v18);
  _Block_release(v13);

  if (v19)
  {
    v30 = *&v19[OBJC_IVAR___SFBorrowedCapsuleViewRegistration_wrapped];
    v21 = *&v19[OBJC_IVAR___SFBorrowedCapsuleViewRegistration_wrapped + 32];
    v20 = *&v19[OBJC_IVAR___SFBorrowedCapsuleViewRegistration_wrapped + 48];
    v22 = *&v19[OBJC_IVAR___SFBorrowedCapsuleViewRegistration_wrapped + 16];
    *&v33[9] = *&v19[OBJC_IVAR___SFBorrowedCapsuleViewRegistration_wrapped + 57];
    v32 = v21;
    *v33 = v20;
    v31 = v22;
    sub_18BA93A88(&v30, v29);

    v23 = v30;
    v24 = v31;
    v25 = v32;
    v26 = *v33;
    v27 = *&v33[16];
    v28 = v33[24];
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
  }

  *a3 = v23;
  *(a3 + 16) = v24;
  *(a3 + 32) = v25;
  *(a3 + 48) = v26;
  *(a3 + 64) = v27;
  *(a3 + 72) = v28;
}

uint64_t sub_18BA8EB7C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = _s4ItemVMa(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v23 - v11;
  v13 = [a2 borrowedContentViewProvider];
  sub_18B8162EC(a1, v12, _s4ItemVMa);
  v14 = objc_allocWithZone(SFTabSwitcherItem);
  sub_18B8162EC(v12, v8, _s4ItemVMa);
  v15 = type metadata accessor for SFTabSwitcherItemInternal(0);
  v16 = objc_allocWithZone(v15);
  sub_18B8162EC(v8, v16 + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped, _s4ItemVMa);
  v24.receiver = v16;
  v24.super_class = v15;
  v17 = objc_msgSendSuper2(&v24, sel_init);
  sub_18B8165D8(v8, _s4ItemVMa);
  *&v14[OBJC_IVAR___SFTabSwitcherItem__internal] = v17;
  v23.receiver = v14;
  v23.super_class = SFTabSwitcherItem;
  v18 = objc_msgSendSuper2(&v23, sel_init);
  sub_18B8165D8(v12, _s4ItemVMa);
  v19 = v13[2](v13, v18);
  _Block_release(v13);

  if (v19)
  {
    sub_18B8162EC(a1, a3, _s4ItemVMa);
    v20 = type metadata accessor for TabSwitcher.BorrowedContentViewRegistration(0);
    *(a3 + *(v20 + 20)) = v19;
    return (*(*(v20 - 8) + 56))(a3, 0, 1, v20);
  }

  else
  {
    v22 = type metadata accessor for TabSwitcher.BorrowedContentViewRegistration(0);
    return (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
  }
}

uint64_t sub_18BA8EDF0(uint64_t a1, void *a2)
{
  v4 = _s4ItemVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v20 - v9;
  v11 = [a2 dragItemProvider];
  sub_18B8162EC(a1, v10, _s4ItemVMa);
  v12 = objc_allocWithZone(SFTabSwitcherItem);
  sub_18B8162EC(v10, v6, _s4ItemVMa);
  v13 = type metadata accessor for SFTabSwitcherItemInternal(0);
  v14 = objc_allocWithZone(v13);
  sub_18B8162EC(v6, v14 + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped, _s4ItemVMa);
  v21.receiver = v14;
  v21.super_class = v13;
  v15 = objc_msgSendSuper2(&v21, sel_init);
  sub_18B8165D8(v6, _s4ItemVMa);
  *&v12[OBJC_IVAR___SFTabSwitcherItem__internal] = v15;
  v20.receiver = v12;
  v20.super_class = SFTabSwitcherItem;
  v16 = objc_msgSendSuper2(&v20, sel_init);
  sub_18B8165D8(v10, _s4ItemVMa);
  v17 = v11[2](v11, v16);
  sub_18B7B0AC0(0, &qword_1EA9D7CE0, 0x1E69DC990);
  v18 = sub_18BC20D98();

  _Block_release(v11);
  return v18;
}

void sub_18BA8EFE8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a1;
  v21 = a4;
  v6 = _s15DropDestinationVMa_0(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v20 - v11;
  v13 = [a3 dropDestinationProvider];
  sub_18B8162EC(a2, v12, _s15DropDestinationVMa_0);
  v14 = objc_allocWithZone(SFTabSwitcherDropDestination);
  sub_18B8162EC(v12, v8, _s15DropDestinationVMa_0);
  v15 = type metadata accessor for SFTabSwitcherDropDestinationInternal(0);
  v16 = objc_allocWithZone(v15);
  sub_18B8162EC(v8, v16 + OBJC_IVAR____TtC12MobileSafari36SFTabSwitcherDropDestinationInternal_wrapped, _s15DropDestinationVMa_0);
  v23.receiver = v16;
  v23.super_class = v15;
  v17 = objc_msgSendSuper2(&v23, sel_init);
  sub_18B8165D8(v8, _s15DropDestinationVMa_0);
  *&v14[OBJC_IVAR___SFTabSwitcherDropDestination_storage] = v17;
  v22.receiver = v14;
  v22.super_class = SFTabSwitcherDropDestination;
  v18 = objc_msgSendSuper2(&v22, sel_init);
  sub_18B8165D8(v12, _s15DropDestinationVMa_0);
  v19 = v13[2](v13, v20, v18);
  _Block_release(v13);

  sub_18B8162EC(*&v19[OBJC_IVAR___SFTabSwitcherDropDestination_storage] + OBJC_IVAR____TtC12MobileSafari36SFTabSwitcherDropDestinationInternal_wrapped, v21, _s15DropDestinationVMa_0);
}

void sub_18BA8F1E4(uint64_t a1, void *a2)
{
  v4 = _s10DropIntentVMa_0(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v17 - v9;
  v11 = [a2 dropHandler];
  sub_18B8162EC(a1, v10, _s10DropIntentVMa_0);
  v12 = objc_allocWithZone(SFTabSwitcherDropIntent);
  sub_18B8162EC(v10, v6, _s10DropIntentVMa_0);
  v13 = type metadata accessor for SFTabSwitcherDropIntentInternal(0);
  v14 = objc_allocWithZone(v13);
  sub_18B8162EC(v6, v14 + OBJC_IVAR____TtC12MobileSafari31SFTabSwitcherDropIntentInternal_wrapped, _s10DropIntentVMa_0);
  v18.receiver = v14;
  v18.super_class = v13;
  v15 = objc_msgSendSuper2(&v18, sel_init);
  sub_18B8165D8(v6, _s10DropIntentVMa_0);
  *&v12[OBJC_IVAR___SFTabSwitcherDropIntent__internal] = v15;
  v17.receiver = v12;
  v17.super_class = SFTabSwitcherDropIntent;
  v16 = objc_msgSendSuper2(&v17, sel_init);
  sub_18B8165D8(v10, _s10DropIntentVMa_0);
  v11[2](v11, v16);
  _Block_release(v11);
}

uint64_t sub_18BA8F3A0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = _s4PageVMa(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v21 - v11;
  v13 = [a3 dropOperationProvider];
  sub_18B8162EC(a1, v12, _s4PageVMa);
  v14 = objc_allocWithZone(SFTabSwitcherPage);
  sub_18B8162EC(v12, v8, _s4PageVMa);
  v15 = type metadata accessor for SFTabSwitcherPageInternal(0);
  v16 = objc_allocWithZone(v15);
  sub_18B8162EC(v8, v16 + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped, _s4PageVMa);
  v22.receiver = v16;
  v22.super_class = v15;
  v17 = objc_msgSendSuper2(&v22, sel_init);
  sub_18B8165D8(v8, _s4PageVMa);
  *&v14[OBJC_IVAR___SFTabSwitcherPage__internal] = v17;
  v21.receiver = v14;
  v21.super_class = SFTabSwitcherPage;
  v18 = objc_msgSendSuper2(&v21, sel_init);
  sub_18B8165D8(v12, _s4PageVMa);
  v19 = v13[2](v13, v18, a2);
  _Block_release(v13);

  return v19;
}

void sub_18BA8F574(uint64_t a1, uint64_t a2, id a3)
{
  v5 = [a3 itemCloseHandler];
  v6 = sub_18BA87280(a1);
  sub_18BBA3A90(v6);

  type metadata accessor for SFTabSwitcherItem(v7);
  sub_18BA93A40(&qword_1EA9D7CD8, v8, type metadata accessor for SFTabSwitcherItem, MEMORY[0x1E69E81B8]);
  v9 = sub_18BC20FC8();

  v5[2](v5, v9, a2);

  _Block_release(v5);
}

void sub_18BA8F66C(uint64_t a1, void *a2, SEL *a3)
{
  v6 = _s4ItemVMa(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = &v26 - v15;
  v17 = [a2 *a3];
  v18 = v17;
  v19 = *(a1 + 16);
  if (v19)
  {
    v27 = v17;
    v31 = MEMORY[0x1E69E7CC0];
    sub_18BC21B98();
    v20 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v28 = *(v7 + 72);
    do
    {
      sub_18B8162EC(v20, v16, _s4ItemVMa);
      sub_18B8162EC(v16, v12, _s4ItemVMa);
      v21 = objc_allocWithZone(SFTabSwitcherItem);
      sub_18B8162EC(v12, v9, _s4ItemVMa);
      v22 = type metadata accessor for SFTabSwitcherItemInternal(0);
      v23 = objc_allocWithZone(v22);
      sub_18B8162EC(v9, v23 + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped, _s4ItemVMa);
      v30.receiver = v23;
      v30.super_class = v22;
      v24 = objc_msgSendSuper2(&v30, sel_init);
      sub_18B8165D8(v9, _s4ItemVMa);
      *&v21[OBJC_IVAR___SFTabSwitcherItem__internal] = v24;
      v29.receiver = v21;
      v29.super_class = SFTabSwitcherItem;
      objc_msgSendSuper2(&v29, sel_init);
      sub_18B8165D8(v12, _s4ItemVMa);
      sub_18B8165D8(v16, _s4ItemVMa);
      sub_18BC21B68();
      sub_18BC21BA8();
      sub_18BC21BB8();
      v17 = sub_18BC21B78();
      v20 += v28;
      --v19;
    }

    while (v19);
    v18 = v27;
  }

  type metadata accessor for SFTabSwitcherItem(v17);
  v25 = sub_18BC20D88();

  (v18)[2](v18, v25);

  _Block_release(v18);
}

void sub_18BA8F930(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = a2;
  v5 = _s7SectionVMa_0(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v15 = _s4PageVMa(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v39 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v20 = &v37 - v19;
  v21 = [a3 itemMoveHandler];
  v22 = v21;
  v23 = *(a1 + 16);
  if (v23)
  {
    v37 = v20;
    v38 = v21;
    v46 = MEMORY[0x1E69E7CC0];
    sub_18BC21B98();
    v24 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v41 = *(v6 + 72);
    do
    {
      sub_18B8162EC(v24, v14, _s7SectionVMa_0);
      sub_18B8162EC(v14, v11, _s7SectionVMa_0);
      v25 = objc_allocWithZone(SFTabSwitcherSection);
      sub_18B8162EC(v11, v8, _s7SectionVMa_0);
      v26 = type metadata accessor for SFTabSwitcherSectionInternal(0);
      v27 = objc_allocWithZone(v26);
      sub_18B8162EC(v8, v27 + OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherSectionInternal_wrapped, _s7SectionVMa_0);
      v45.receiver = v27;
      v45.super_class = v26;
      v28 = objc_msgSendSuper2(&v45, sel_init);
      sub_18B8165D8(v8, _s7SectionVMa_0);
      *&v25[OBJC_IVAR___SFTabSwitcherSection__internal] = v28;
      v44.receiver = v25;
      v44.super_class = SFTabSwitcherSection;
      objc_msgSendSuper2(&v44, sel_init);
      sub_18B8165D8(v11, _s7SectionVMa_0);
      sub_18B8165D8(v14, _s7SectionVMa_0);
      sub_18BC21B68();
      sub_18BC21BA8();
      sub_18BC21BB8();
      sub_18BC21B78();
      v24 += v41;
      --v23;
    }

    while (v23);
    v20 = v37;
    v22 = v38;
  }

  sub_18B8162EC(v40, v20, _s4PageVMa);
  v29 = objc_allocWithZone(SFTabSwitcherPage);
  v30 = v39;
  sub_18B8162EC(v20, v39, _s4PageVMa);
  v31 = type metadata accessor for SFTabSwitcherPageInternal(0);
  v32 = objc_allocWithZone(v31);
  sub_18B8162EC(v30, v32 + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped, _s4PageVMa);
  v43.receiver = v32;
  v43.super_class = v31;
  v33 = objc_msgSendSuper2(&v43, sel_init);
  sub_18B8165D8(v30, _s4PageVMa);
  *&v29[OBJC_IVAR___SFTabSwitcherPage__internal] = v33;
  v42.receiver = v29;
  v42.super_class = SFTabSwitcherPage;
  v34 = objc_msgSendSuper2(&v42, sel_init);
  v35 = sub_18B8165D8(v20, _s4PageVMa);
  type metadata accessor for SFTabSwitcherSection(v35);
  v36 = sub_18BC20D88();

  (v22)[2](v22, v36, v34);

  _Block_release(v22);
}

void sub_18BA8FD44(uint64_t a1, int a2, void *a3)
{
  v6 = _s4ItemVMa(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = &v26 - v15;
  v17 = [a3 itemPinHandler];
  v18 = v17;
  v19 = *(a1 + 16);
  if (v19)
  {
    v26 = v17;
    v27 = a2;
    v31 = MEMORY[0x1E69E7CC0];
    sub_18BC21B98();
    v20 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v28 = *(v7 + 72);
    do
    {
      sub_18B8162EC(v20, v16, _s4ItemVMa);
      sub_18B8162EC(v16, v12, _s4ItemVMa);
      v21 = objc_allocWithZone(SFTabSwitcherItem);
      sub_18B8162EC(v12, v9, _s4ItemVMa);
      v22 = type metadata accessor for SFTabSwitcherItemInternal(0);
      v23 = objc_allocWithZone(v22);
      sub_18B8162EC(v9, v23 + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped, _s4ItemVMa);
      v30.receiver = v23;
      v30.super_class = v22;
      v24 = objc_msgSendSuper2(&v30, sel_init);
      sub_18B8165D8(v9, _s4ItemVMa);
      *&v21[OBJC_IVAR___SFTabSwitcherItem__internal] = v24;
      v29.receiver = v21;
      v29.super_class = SFTabSwitcherItem;
      objc_msgSendSuper2(&v29, sel_init);
      sub_18B8165D8(v12, _s4ItemVMa);
      sub_18B8165D8(v16, _s4ItemVMa);
      sub_18BC21B68();
      sub_18BC21BA8();
      sub_18BC21BB8();
      v17 = sub_18BC21B78();
      v20 += v28;
      --v19;
    }

    while (v19);
    LOBYTE(a2) = v27;
    v18 = v26;
  }

  type metadata accessor for SFTabSwitcherItem(v17);
  v25 = sub_18BC20D88();

  (v18)[2](v18, v25, a2 & 1);

  _Block_release(v18);
}

void sub_18BA90018(uint64_t a1, void *a2)
{
  v4 = _s4ItemVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v17 - v9;
  v11 = [a2 itemSelectionHandler];
  sub_18B8162EC(a1, v10, _s4ItemVMa);
  v12 = objc_allocWithZone(SFTabSwitcherItem);
  sub_18B8162EC(v10, v6, _s4ItemVMa);
  v13 = type metadata accessor for SFTabSwitcherItemInternal(0);
  v14 = objc_allocWithZone(v13);
  sub_18B8162EC(v6, v14 + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped, _s4ItemVMa);
  v18.receiver = v14;
  v18.super_class = v13;
  v15 = objc_msgSendSuper2(&v18, sel_init);
  sub_18B8165D8(v6, _s4ItemVMa);
  *&v12[OBJC_IVAR___SFTabSwitcherItem__internal] = v15;
  v17.receiver = v12;
  v17.super_class = SFTabSwitcherItem;
  v16 = objc_msgSendSuper2(&v17, sel_init);
  sub_18B8165D8(v10, _s4ItemVMa);
  v11[2](v11, v16);
  _Block_release(v11);
}

void sub_18BA901D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = _s4PageVMa(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v20 - v11;
  v13 = [a4 pageRetitleHandler];
  sub_18B8162EC(a1, v12, _s4PageVMa);
  v14 = objc_allocWithZone(SFTabSwitcherPage);
  sub_18B8162EC(v12, v8, _s4PageVMa);
  v15 = type metadata accessor for SFTabSwitcherPageInternal(0);
  v16 = objc_allocWithZone(v15);
  sub_18B8162EC(v8, v16 + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped, _s4PageVMa);
  v21.receiver = v16;
  v21.super_class = v15;
  v17 = objc_msgSendSuper2(&v21, sel_init);
  sub_18B8165D8(v8, _s4PageVMa);
  *&v14[OBJC_IVAR___SFTabSwitcherPage__internal] = v17;
  v20.receiver = v14;
  v20.super_class = SFTabSwitcherPage;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  sub_18B8165D8(v12, _s4PageVMa);
  v19 = sub_18BC20B98();
  v13[2](v13, v18, v19);

  _Block_release(v13);
}

uint64_t sub_18BA903B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = _s4PageVMa(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v22 - v10;
  v12 = [a3 pageTitleMenuProvider];
  sub_18B8162EC(a1, v11, _s4PageVMa);
  v13 = objc_allocWithZone(SFTabSwitcherPage);
  sub_18B8162EC(v11, v7, _s4PageVMa);
  v14 = type metadata accessor for SFTabSwitcherPageInternal(0);
  v15 = objc_allocWithZone(v14);
  sub_18B8162EC(v7, v15 + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped, _s4PageVMa);
  v23.receiver = v15;
  v23.super_class = v14;
  v16 = objc_msgSendSuper2(&v23, sel_init);
  sub_18B8165D8(v7, _s4PageVMa);
  *&v13[OBJC_IVAR___SFTabSwitcherPage__internal] = v16;
  v22.receiver = v13;
  v22.super_class = SFTabSwitcherPage;
  v17 = objc_msgSendSuper2(&v22, sel_init);
  sub_18B8165D8(v11, _s4PageVMa);
  sub_18B7B0AC0(0, &qword_1EA9D39D0, 0x1E69DCC78);
  v18 = sub_18BC20D88();
  v19 = v12[2](v12, v17, v18);

  v20 = sub_18BC20D98();
  _Block_release(v12);

  return v20;
}

id sub_18BA905D8(void *a1)
{
  v1 = [a1 profileMenuProvider];
  v2 = v1[2]();
  _Block_release(v1);
  return v2;
}

id sub_18BA90630(uint64_t a1, void *a2)
{
  v4 = _s4PageVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v19 - v9;
  v11 = [a2 recentlyClosedMenuProvider];
  sub_18B8162EC(a1, v10, _s4PageVMa);
  v12 = objc_allocWithZone(SFTabSwitcherPage);
  sub_18B8162EC(v10, v6, _s4PageVMa);
  v13 = type metadata accessor for SFTabSwitcherPageInternal(0);
  v14 = objc_allocWithZone(v13);
  sub_18B8162EC(v6, v14 + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped, _s4PageVMa);
  v20.receiver = v14;
  v20.super_class = v13;
  v15 = objc_msgSendSuper2(&v20, sel_init);
  sub_18B8165D8(v6, _s4PageVMa);
  *&v12[OBJC_IVAR___SFTabSwitcherPage__internal] = v15;
  v19.receiver = v12;
  v19.super_class = SFTabSwitcherPage;
  v16 = objc_msgSendSuper2(&v19, sel_init);
  sub_18B8165D8(v10, _s4PageVMa);
  v17 = v11[2](v11, v16);
  _Block_release(v11);

  return v17;
}

void sub_18BA907FC(uint64_t a1, void *a2)
{
  v4 = _s4ItemVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v18 - v9;
  v11 = [a2 relinquishBorrowedContentView];
  v12 = *(a1 + *(type metadata accessor for TabSwitcher.BorrowedContentViewRegistration(0) + 20));
  sub_18B8162EC(a1, v10, _s4ItemVMa);
  v13 = objc_allocWithZone(SFTabSwitcherItem);
  sub_18B8162EC(v10, v6, _s4ItemVMa);
  v14 = type metadata accessor for SFTabSwitcherItemInternal(0);
  v15 = objc_allocWithZone(v14);
  sub_18B8162EC(v6, v15 + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped, _s4ItemVMa);
  v19.receiver = v15;
  v19.super_class = v14;
  v16 = objc_msgSendSuper2(&v19, sel_init);
  sub_18B8165D8(v6, _s4ItemVMa);
  *&v13[OBJC_IVAR___SFTabSwitcherItem__internal] = v16;
  v18.receiver = v13;
  v18.super_class = SFTabSwitcherItem;
  v17 = objc_msgSendSuper2(&v18, sel_init);
  sub_18B8165D8(v10, _s4ItemVMa);
  v11[2](v11, v12, v17);
  _Block_release(v11);
}

void sub_18BA90A18()
{
  v0 = sub_18B7C5C10();
  v1 = *&v0[OBJC_IVAR___SFTabOverviewDisplayItem_searchController];
  v9 = v0;
  if (v1)
  {
    v2 = v1;
    [v2 setActive_];
    v3 = [v2 searchBar];
    [v3 becomeFirstResponder];

LABEL_3:
    v4 = v9;
    goto LABEL_6;
  }

  sub_18B7C9974();
  v6 = v5;
  v7 = sub_18B7CEA3C();

  if (!v7)
  {
    goto LABEL_3;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_18B9DEDEC(sub_18B9EAD1C, v8);

  v4 = v7;
LABEL_6:
}

void sub_18BA90CA0(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = a1;
  v4 = sub_18B7C5C10();
  a3();
}

void sub_18BA90D2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5380, &unk_18BC46510);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_18B7C5C10();
  v4 = v3;
  v5 = *&v3[OBJC_IVAR___SFTabOverviewDisplayItem_capsuleToolbar];
  if (v5)
  {
    v6 = v5;

    v7 = *&v6[OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_capsuleView];
  }

  else
  {
    v8 = *&v3[OBJC_IVAR___SFTabOverviewDisplayItem_capsuleView];
    v7 = v8;

    if (!v8)
    {
      return;
    }
  }

  v9 = _s4ItemVMa_0(0);
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  sub_18BA441D4(v2);
}

void sub_18BA90EB8(void *a1, uint64_t a2, char *a3, void (*a4)(char *))
{
  v7 = _s4ItemVMa(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&a3[OBJC_IVAR___SFTabSwitcherItem__internal];
  v11 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v10 + v11, v9, _s4ItemVMa);
  v12 = a3;
  v13 = a1;
  a4(v9);

  sub_18B8165D8(v9, _s4ItemVMa);
}

uint64_t sub_18BA912E4(uint64_t a1)
{
  v3 = _s4ItemVMa_4(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0, &unk_18BC49EB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36[-v10];
  v12 = _s4ItemVMa(0);
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v1 + OBJC_IVAR___SFTabSwitcher_wrapped);
  v17 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B8162EC(v16 + v17, v8, _s7ContentVMa);
  v37 = a1;
  sub_18BB17290(sub_18B99B24C, v36, v11);
  sub_18B8165D8(v8, _s7ContentVMa);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_18B988BAC(v11, &qword_1EA9D7CD0, &unk_18BC49EB0);
  }

  sub_18B81F9A8(v11, v15, _s4ItemVMa);
  v19 = sub_18B7C07CC();
  v20 = *&v19[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

  v21 = [v20 window];
  if (v21)
  {

    v22 = sub_18B7C07CC();
    v23 = *&v22[OBJC_IVAR____TtC12MobileSafari27QuickTabSwitcherDisplayItem_quickTabSwitcher];

    LOBYTE(v22) = *v15;
    v24 = v12[7];
    v25 = v3[5];
    v26 = sub_18BC1EC08();
    (*(*(v26 - 8) + 16))(&v5[v25], &v15[v24], v26);
    v27 = v15[v12[8]];
    v28 = v15[v12[11]];
    v29 = *&v15[v12[12]];
    v30 = v12[15];
    v31 = *&v15[v12[14]];
    v32 = &v15[v30];
    v34 = *&v15[v30];
    v33 = *(v32 + 1);
    *v5 = v22;
    v5[v3[6]] = v27;
    v5[v3[7]] = v28;
    *&v5[v3[8]] = v29;
    *&v5[v3[9]] = v31;
    v35 = &v5[v3[10]];
    *v35 = v34;
    v35[1] = v33;
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18BBF4B38(v5);

    sub_18B8165D8(v5, _s4ItemVMa_4);
  }

  return sub_18B8165D8(v15, _s4ItemVMa);
}

id sub_18BA91844()
{
  v1 = sub_18BC1EE48();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = *(v0 + OBJC_IVAR___SFTabSwitcher_wrapped);
  sub_18B7B0AC0(0, &qword_1EA9D52D0, 0x1E69DC628);
  sub_18BC1EE38();
  sub_18BC1EE38();
  sub_18BC1EE18();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  v10 = sub_18BC20B98();
  v11 = [objc_opt_self() systemImageNamed_];

  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 16) = v8;
  *(v12 + 24) = v13;
  v14 = v8;
  v15 = sub_18BC215E8();
  v16 = sub_18BC20B98();
  [v15 setAccessibilityIdentifier_];

  return v15;
}

double sub_18BA91B30(uint64_t a1)
{
  v2 = _s4PageVMa_0(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s4PageVMa(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18B7C5C10();
  sub_18B7C9974();
  v10 = v9;

  v11 = *(a1 + OBJC_IVAR___SFTabSwitcherPage__internal);
  v12 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v11 + v12, v7, _s4PageVMa);
  sub_18B827328(v4);
  sub_18B8165D8(v7, _s4PageVMa);
  if (qword_1EA9D21E8 != -1)
  {
    swift_once();
  }

  v13 = qword_1EA9F7A78;
  v14 = type metadata accessor for RetargetableTransitionCoordinator();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E7CC0];
  *(v15 + 24) = MEMORY[0x1E69E7CC0];
  *(v15 + 32) = v16;
  *(v15 + 40) = 1;
  *(v15 + 16) = v13;
  v19[3] = v14;
  v19[4] = &off_1EFF27FD8;
  v19[0] = v15;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BA5484C(v4, v19, 1);
  sub_18B988BAC(v19, &unk_1EA9D5060, &unk_18BC41870);
  v17 = *(v15 + 16);
  swift_retain_n();
  sub_18B7D8090(v17);
  sub_18B7EAA64(sub_18B9D4FF4, v15, sub_18B9D4FFC, v15, v17);

  sub_18B7EBAE8(v17);

  sub_18B8165D8(v4, _s4PageVMa_0);
  *(v15 + 40) = 0;

  return result;
}

void sub_18BA91E48(void *a1, uint64_t a2, void (*a3)(void))
{
  v7 = a1;
  v4 = sub_18B7C5C10();
  sub_18B7C9974();
  v6 = v5;

  a3();
}

void sub_18BA91EC4()
{
  v0 = sub_18B7C5C10();
  sub_18B7C9974();
  v2 = v1;

  v3 = sub_18B7CEA3C();
  if (v3)
  {
    v15 = 0;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v4 = sub_18B82E2EC(MEMORY[0x1E69E7CC0]);
    *(&v7 + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v6) = 0;
    sub_18B7B1AD4(&v6, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v4;
    sub_18BAA7848(v10, 0xD000000000000014, 0x800000018BC62740, isUniquelyReferenced_nonNull_native);
    v11 = v9;
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    sub_18B861588(&v11, &v6);

    sub_18B988BAC(&v6, &unk_1EA9D5060, &unk_18BC41870);
    sub_18B8303BC(&v11);
  }
}

uint64_t sub_18BA92120()
{
  v1 = v0;
  v2 = _s4ItemVMa(0);
  v48 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v50 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v45 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C0, &qword_18BC432D8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v19 = _s7ContentV8IteratorVMa(0);
  v20 = (v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v1 + OBJC_IVAR___SFTabSwitcher_wrapped);
  v27 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  v28 = v26 + v27;
  v29 = v48;
  sub_18B8162EC(v28, v25, _s7ContentVMa);
  sub_18B8162EC(v25, v22, _s7ContentVMa);
  *&v22[v20[7]] = 0;
  *&v22[v20[8]] = 0;
  *&v22[v20[9]] = 0;
  v30 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_18BB16160(v15);
    sub_18B7CF39C(v15, v18, &qword_1EA9D53C0, &qword_18BC432D8);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C8, &qword_18BC432E0);
    if ((*(*(v31 - 8) + 48))(v18, 1, v31) == 1)
    {
      break;
    }

    sub_18B81F9A8(&v18[*(v31 + 64)], v12, _s4ItemVMa);
    if (sub_18B9BA41C(v12, *(v25 + 6)))
    {
      sub_18B8162EC(v12, v49, _s4ItemVMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_18B9B5838(0, v30[2] + 1, 1, v30);
      }

      v33 = v30[2];
      v32 = v30[3];
      if (v33 >= v32 >> 1)
      {
        v30 = sub_18B9B5838((v32 > 1), v33 + 1, 1, v30);
      }

      sub_18B8165D8(v12, _s4ItemVMa);
      v30[2] = v33 + 1;
      sub_18B81F9A8(v49, v30 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v33, _s4ItemVMa);
    }

    else
    {
      sub_18B8165D8(v12, _s4ItemVMa);
    }

    sub_18B8165D8(&v18[*(v31 + 48)], _s7SectionVMa_0);
    sub_18B8165D8(v18, _s4PageVMa);
  }

  sub_18B8165D8(v22, _s7ContentV8IteratorVMa);
  sub_18B8165D8(v25, _s7ContentVMa);
  v34 = v30[2];
  if (v34)
  {
    v53 = MEMORY[0x1E69E7CC0];
    sub_18BC21B98();
    v35 = *(v29 + 80);
    v45 = v30;
    v36 = v30 + ((v35 + 32) & ~v35);
    v49 = *(v29 + 72);
    v37 = v50;
    v39 = v46;
    v38 = v47;
    do
    {
      sub_18B8162EC(v36, v39, _s4ItemVMa);
      sub_18B8162EC(v39, v38, _s4ItemVMa);
      v40 = objc_allocWithZone(SFTabSwitcherItem);
      sub_18B8162EC(v38, v37, _s4ItemVMa);
      v41 = type metadata accessor for SFTabSwitcherItemInternal(0);
      v42 = objc_allocWithZone(v41);
      sub_18B8162EC(v50, v42 + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped, _s4ItemVMa);
      v52.receiver = v42;
      v52.super_class = v41;
      v37 = v50;
      v43 = objc_msgSendSuper2(&v52, sel_init, v45);
      sub_18B8165D8(v37, _s4ItemVMa);
      *&v40[OBJC_IVAR___SFTabSwitcherItem__internal] = v43;
      v51.receiver = v40;
      v51.super_class = SFTabSwitcherItem;
      objc_msgSendSuper2(&v51, sel_init);
      sub_18B8165D8(v38, _s4ItemVMa);
      sub_18B8165D8(v39, _s4ItemVMa);
      sub_18BC21B68();
      sub_18BC21BA8();
      sub_18BC21BB8();
      sub_18BC21B78();
      v36 += v49;
      --v34;
    }

    while (v34);

    return v53;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

id sub_18BA928E0()
{
  v0 = _s4PageVMa(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0, &unk_18BC49EA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  sub_18BB068E4(&v22 - v14);
  sub_18B7CA054(v15, v12, &qword_1EA9D52E0, &unk_18BC49EA0);
  if ((*(v1 + 48))(v12, 1, v0) == 1)
  {
    sub_18B988BAC(v15, &qword_1EA9D52E0, &unk_18BC49EA0);
    return 0;
  }

  else
  {
    sub_18B81F9A8(v12, v9, _s4PageVMa);
    sub_18B8162EC(v9, v6, _s4PageVMa);
    v17 = objc_allocWithZone(SFTabSwitcherPage);
    sub_18B8162EC(v6, v3, _s4PageVMa);
    v18 = type metadata accessor for SFTabSwitcherPageInternal(0);
    v19 = objc_allocWithZone(v18);
    sub_18B8162EC(v3, v19 + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped, _s4PageVMa);
    v23.receiver = v19;
    v23.super_class = v18;
    v20 = objc_msgSendSuper2(&v23, sel_init);
    sub_18B8165D8(v3, _s4PageVMa);
    *&v17[OBJC_IVAR___SFTabSwitcherPage__internal] = v20;
    v22.receiver = v17;
    v22.super_class = SFTabSwitcherPage;
    v21 = objc_msgSendSuper2(&v22, sel_init);
    sub_18B8165D8(v6, _s4PageVMa);
    sub_18B8165D8(v9, _s4PageVMa);
    sub_18B988BAC(v15, &qword_1EA9D52E0, &unk_18BC49EA0);
    return v21;
  }
}

void __swiftcall SFTabSwitcher.init(nibName:bundle:)(SFTabSwitcher *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_18BC20B98();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

unint64_t sub_18BA92CCC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18BA93818(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_18BA92D00(uint64_t a1)
{
  v2 = *v1;
  if (*v1 <= 1)
  {
    if (!v2)
    {
      return 0x6573657250746F6ELL;
    }

    if (v2 == 1)
    {
      return 0x69746E6573657270;
    }

    goto LABEL_11;
  }

  if (v2 == 2)
  {
    return 0x65746E6573657270;
  }

  if (v2 != 3)
  {
LABEL_11:
    result = sub_18BC22048();
    __break(1u);
    return result;
  }

  return 0x697373696D736964;
}

id sub_18BA92E90(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_18BA932AC()
{
  result = qword_1EA9D7CC0;
  if (!qword_1EA9D7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7CC0);
  }

  return result;
}

id sub_18BA93300@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    *a2 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_18BA93314(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a4 + OBJC_IVAR___SFAnimationSettings_wrapped);
  sub_18BC1E1A8();
  if (a2)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;
    v11 = sub_18BA93C94;
  }

  else
  {
    v11 = CGRectMake;
    v10 = 0;
  }

  if (a1)
  {
    v12 = v9 | 0x4000000000000000;
  }

  else
  {
    v12 = v9;
  }

  _Block_copy(a5);
  sub_18BC1E1A8();
  sub_18B824D48(a2, a3);
  sub_18BBCFF70(v12, v11, v10, a5);
  sub_18B7EBAE8(v12);

  _Block_release(a5);
}

__n128 sub_18BA9341C@<Q0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + OBJC_IVAR___SFAnimationSettings_wrapped);
  if (a1 == 1 && (v3[5].n128_u8[8] & 1) == 0)
  {
    v4 = v3 + 4;
    v6 = v3 + 5;
    v5 = (v3 + 72);
  }

  else
  {
    v4 = (v3 + 40);
    v5 = v3 + 3;
    v6 = (v3 + 56);
  }

  v7 = v5->n128_u64[0];
  v8 = v6->n128_u64[0];
  v9 = v3[7].n128_u64[0];
  *a2 = v4->n128_u64[0];
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  result = v3[6];
  *(a2 + 40) = result;
  *(a2 + 56) = v9;
  *(a2 + 64) = 0;
  *(a2 + 72) = v8;
  return result;
}

id sub_18BA93488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0, &unk_18BC49EB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  v10 = _s7SectionVMa_0(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s4PageVMa(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s15DropDestinationVMa_0(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + OBJC_IVAR___SFTabSwitcherPage__internal);
  v20 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v19 + v20, v15, _s4PageVMa);
  v21 = *(a2 + OBJC_IVAR___SFTabSwitcherSection__internal);
  v22 = OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherSectionInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v21 + v22, v12, _s7SectionVMa_0);
  if (a3)
  {
    v23 = *(a3 + OBJC_IVAR___SFTabSwitcherItem__internal);
    v24 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
    swift_beginAccess();
    sub_18B8162EC(v23 + v24, v9, _s4ItemVMa);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = _s4ItemVMa(0);
  (*(*(v26 - 8) + 56))(v9, v25, 1, v26);
  sub_18B81F9A8(v15, v18, _s4PageVMa);
  sub_18B81F9A8(v12, &v18[*(v16 + 20)], _s7SectionVMa_0);
  sub_18B7CF39C(v9, &v18[*(v16 + 24)], &qword_1EA9D7CD0, &unk_18BC49EB0);
  v27 = type metadata accessor for SFTabSwitcherDropDestinationInternal(0);
  v28 = objc_allocWithZone(v27);
  sub_18B8162EC(v18, v28 + OBJC_IVAR____TtC12MobileSafari36SFTabSwitcherDropDestinationInternal_wrapped, _s15DropDestinationVMa_0);
  v33.receiver = v28;
  v33.super_class = v27;
  v29 = objc_msgSendSuper2(&v33, sel_init);
  sub_18B8165D8(v18, _s15DropDestinationVMa_0);
  *&v3[OBJC_IVAR___SFTabSwitcherDropDestination_storage] = v29;
  v32.receiver = v3;
  v32.super_class = SFTabSwitcherDropDestination;
  return objc_msgSendSuper2(&v32, sel_init);
}

unint64_t sub_18BA93818(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_18BA93848(uint64_t a1)
{
  v3 = [*(v1 + 16) canHandleDropSession];
  v4 = v3[2](v3, a1);
  _Block_release(v3);
  return v4;
}

uint64_t sub_18BA93A40(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18BA93AE4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_18BC20B98();
  v5 = (*(v3 + 16))(v3, v4);

  return v5;
}

id sub_18BA93B44()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

void sub_18BA93B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v6 = sub_18BC20B98();
  (*(v5 + 16))(v5, a1, v6);
}

id sub_18BA93C38()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t SFTipsCoordinator.webSearchTipAvailable.getter()
{
  v1 = OBJC_IVAR____SFTipsCoordinator_webSearchTipAvailable;
  swift_beginAccess();
  return *(v0 + v1);
}

void SFTipsCoordinator.webSearchTipAvailable.setter(char a1)
{
  v3 = OBJC_IVAR____SFTipsCoordinator_webSearchTipAvailable;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double SFTipsCoordinator.observer.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*SFTipsCoordinator.observer.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____SFTipsCoordinator_observer;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18B9A99E8;
}

id SFTipsCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFTipsCoordinator.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double sub_18BA94244(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    sub_18BC1E3F8();
    v5 = v3 + 40;
    do
    {
      v6 = *(v5 - 8);
      v7 = sub_18BC1E1A8();
      v6(v7);

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

double sub_18BA942D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 32);
  v6 = *(v5 + 16);
  if (v6)
  {
    sub_18BC1E3F8();
    v7 = v5 + 40;
    do
    {
      v8 = *(v7 - 8);
      v9 = sub_18BC1E1A8();
      v8(v9);

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_18BA9436C()
{
  sub_18B7EBAE8(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t static UIContentUnavailableConfiguration.readingList()()
{
  v0 = sub_18BC1EE48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1FC98();
  sub_18BC1FC78();
  sub_18BC1EE38();
  sub_18BC1EE28();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_18BC1FC88();
  sub_18BC1EE38();
  sub_18BC1EE28();
  v4(v3, v0);
  return sub_18BC1FBE8();
}

uint64_t static SFBookmarksCollectionViewController.ID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 4);
  }

  if (!*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(a1 + 4) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_18BA94598(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 4);
  }

  if (!*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(a1 + 4) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

id SFBookmarksCollectionViewController.__allocating_init(id:delegate:snapshotProvider:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_18BAA16E0(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  return v12;
}

id SFBookmarksCollectionViewController.init(id:delegate:snapshotProvider:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_18BAA16E0(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  return v5;
}

id SFBookmarksCollectionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_18BA946EC(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_id;
  swift_beginAccess();
  v4 = *(v3 + 4);
  *a1 = *v3;
  *(a1 + 4) = v4;
}

unint64_t sub_18BA94744()
{
  v1 = (v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_id);
  swift_beginAccess();
  v2 = *v1;
  v4 = *(v1 + 4);
  if (v4)
  {
    v2 = 0;
  }

  return v2 | (v4 << 32);
}

id sub_18BA947C4(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCF10]) initWithSearchResultsController_];
  [v2 setHidesNavigationBarDuringPresentation_];
  [v2 setObscuresBackgroundDuringPresentation_];
  v4 = [v2 searchBar];
  [v4 setDelegate_];
  [v4 setSearchBarStyle_];
  v5 = [v4 searchTextField];
  [v5 setAutocapitalizationType_];
  [v5 setAutocorrectionType_];
  [v5 setSpellCheckingType_];

  return v2;
}

char *sub_18BA948E0()
{
  v1 = v0;
  v2 = sub_18BC1EDD8();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 isViewLoaded])
  {
    result = *&v0[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_collectionView];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v8 = [result indexPathsForSelectedItems];
    if (v8)
    {
      v9 = v8;
      v10 = sub_18BC20D98();

      v11 = *(v10 + 16);
      if (v11)
      {
LABEL_5:
        v13 = *(v3 + 16);
        v12 = v3 + 16;
        v14 = *(v12 + 64);
        v22[1] = v10;
        v15 = v10 + ((v14 + 32) & ~v14);
        v23 = *(v12 + 56);
        v24 = v13;
        v16 = (v12 - 8);
        v17 = MEMORY[0x1E69E7CC0];
        v18 = v11 - 1;
        v22[2] = v1;
        while (1)
        {
          v24(v6, v15, v2);
          v19 = sub_18BA95F78();
          sub_18BC1FD18();

          (*v16)(v6, v2);
          memcpy(v28, v27, 0x128uLL);
          if (sub_18B81CA10(v28) == 1)
          {
            memcpy(v26, v27, sizeof(v26));
            sub_18B988BAC(v26, &qword_1EA9D7E00, &qword_18BC49FE8);
            if (!v18)
            {
              goto LABEL_15;
            }
          }

          else
          {
            memcpy(v26, v27, sizeof(v26));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_18B9B6150(0, *(v17 + 2) + 1, 1, v17);
            }

            v21 = *(v17 + 2);
            v20 = *(v17 + 3);
            if (v21 >= v20 >> 1)
            {
              v17 = sub_18B9B6150((v20 > 1), v21 + 1, 1, v17);
            }

            memcpy(v25, v26, sizeof(v25));
            *(v17 + 2) = v21 + 1;
            memcpy(&v17[296 * v21 + 32], v25, 0x128uLL);
            if (!v18)
            {
LABEL_15:

              return v17;
            }
          }

          --v18;
          v15 += v23;
        }
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      v11 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v11)
      {
        goto LABEL_5;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_18BA94BB8()
{
  v1 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_showsNavigationTitle;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_18BA94BFC(char a1)
{
  v3 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_showsNavigationTitle;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_18BA94CAC()
{
  v1 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_supportsSearch;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_18BA94CF0(char a1)
{
  v3 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_supportsSearch;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_18BA94DA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_18BA951F0();
  v4 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController__currentUIState;
  swift_beginAccess();
  return sub_18B7CA054(v3 + v4, a2, &qword_1EA9D7D40, &qword_18BC49FA0);
}

uint64_t sub_18BA94E10(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7D40, &qword_18BC49FA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_18B7CA054(a1, &v10 - v5, &qword_1EA9D7D40, &qword_18BC49FA0);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController__currentUIState;
  swift_beginAccess();
  sub_18B7FD070(v6, v7 + v8, &qword_1EA9D7D40, &qword_18BC49FA0);
  return swift_endAccess();
}

uint64_t sub_18BA94EF0@<X0>(uint64_t a1@<X8>)
{
  sub_18BA951F0();
  v3 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController__currentUIState;
  swift_beginAccess();
  return sub_18B7CA054(v1 + v3, a1, &qword_1EA9D7D40, &qword_18BC49FA0);
}

uint64_t sub_18BA94F5C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController__currentUIState;
  swift_beginAccess();
  sub_18B7FD070(a1, v1 + v3, &qword_1EA9D7D40, &qword_18BC49FA0);
  return swift_endAccess();
}

void (*sub_18BA94FCC(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7D40, &qword_18BC49FA0) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[11] = v7;
  sub_18BA951F0();
  v9 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController__currentUIState;
  v5[12] = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController__currentUIState;
  swift_beginAccess();
  sub_18B7CA054(v1 + v9, v8, &qword_1EA9D7D40, &qword_18BC49FA0);
  return sub_18BA950E8;
}

void sub_18BA950E8(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 11);
  v4 = *(*a1 + 12);
  v6 = *(*a1 + 9);
  v5 = *(*a1 + 10);
  if (a2)
  {
    sub_18B7CA054(*(*a1 + 11), v5, &qword_1EA9D7D40, &qword_18BC49FA0);
    swift_beginAccess();
    sub_18B7FD070(v5, v6 + v4, &qword_1EA9D7D40, &qword_18BC49FA0);
    swift_endAccess();
    sub_18B988BAC(v3, &qword_1EA9D7D40, &qword_18BC49FA0);
  }

  else
  {
    swift_beginAccess();
    sub_18B7FD070(v3, v6 + v4, &qword_1EA9D7D40, &qword_18BC49FA0);
    swift_endAccess();
  }

  free(v3);
  free(v5);

  free(v2);
}

void sub_18BA951F0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7D40, &qword_18BC49FA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v42 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v42 - v6;
  v8 = sub_18BC1EDD8();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v1 isViewLoaded])
  {
    goto LABEL_17;
  }

  v13 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_collectionView;
  v14 = *&v1[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_collectionView];
  if (!v14)
  {
    goto LABEL_21;
  }

  v15 = [v14 indexPathsForVisibleItems];
  v16 = sub_18BC20D98();

  sub_18BAD8740(v16, v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_18B988BAC(v7, &unk_1EA9D5BD0, &qword_18BC42210);
LABEL_17:
    v40 = type metadata accessor for SFBookmarksUIState(0);
    (*(*(v40 - 8) + 56))(v4, 1, 1, v40);
    goto LABEL_18;
  }

  v43 = *(v9 + 32);
  v44 = v9 + 32;
  v43(v12, v7, v8);
  v17 = *&v1[v13];
  if (!v17)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = sub_18BC1EDC8();
  if (v19 < 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = v19;
  v21 = 0;
  do
  {
    if (v20 == v21)
    {

LABEL_16:
      (*(v9 + 8))(v12, v8);
      goto LABEL_17;
    }

    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    v22 = [v18 numberOfItemsInSection_];
  }

  while (v22 < 1);

  v23 = *&v1[v13];
  if (!v23)
  {
    goto LABEL_22;
  }

  v24 = v23;
  v25 = sub_18BC1ED68();
  v26 = [v24 layoutAttributesForItemAtIndexPath_];

  if (!v26)
  {
    goto LABEL_16;
  }

  [v26 frame];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v35 = *&v1[v13];
  if (!v35)
  {
    goto LABEL_23;
  }

  [v35 contentOffset];
  v37 = v36;
  v45.origin.x = v28;
  v45.origin.y = v30;
  v45.size.width = v32;
  v45.size.height = v34;
  v38 = v37 - CGRectGetMinY(v45);
  v43(v4, v12, v8);
  v39 = type metadata accessor for SFBookmarksUIState(0);
  *&v4[*(v39 + 20)] = v38;
  (*(*(v39 - 8) + 56))(v4, 0, 1, v39);
LABEL_18:
  v41 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController__currentUIState;
  swift_beginAccess();
  sub_18B7FD070(v4, &v1[v41], &qword_1EA9D7D40, &qword_18BC49FA0);
  swift_endAccess();
}

uint64_t sub_18BA958EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18BC1FCD8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

double sub_18BA95958(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_explanationConfigurationProvider);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
  sub_18BC1E1A8();

  return result;
}

double sub_18BA95D38@<D0>(void *a1@<X0>, void *a2@<X3>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v7 = (*a1 + *a2);
  swift_beginAccess();
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  *a5 = a4;
  a5[1] = v10;
  sub_18BC1E1A8();
  return result;
}

double sub_18BA95DBC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v11 = *a1;
  v10 = a1[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  v13 = (*a2 + *a6);
  swift_beginAccess();
  *v13 = a7;
  v13[1] = v12;
  sub_18BC1E1A8();

  return result;
}

uint64_t sub_18BA95E5C(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_18BC1E1A8();
  return v3;
}

double sub_18BA95EBC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;

  return result;
}

id sub_18BA95F98(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

char *sub_18BA95FFC(uint64_t a1)
{
  v106 = a1;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8000, &qword_18BC4A140);
  v104 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v93 = &v72 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v1;
  MEMORY[0x1EEE9AC00](v2);
  v107 = &v72 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8008, &qword_18BC4A148);
  v115 = *(v4 - 8);
  v116 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v92 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v105 = &v72 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8010, &qword_18BC4A150);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v85 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v118 = &v72 - v10;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8018, &qword_18BC4A158);
  v86 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v83 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v72 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8020, &qword_18BC4A160);
  v113 = *(v15 - 8);
  v114 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v91 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v72 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8028, &qword_18BC4A168);
  v111 = *(v20 - 8);
  v112 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v90 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v72 - v23;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8030, &qword_18BC4A170);
  v99 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v89 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v72 - v27;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8038, &qword_18BC4A178);
  v97 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v30 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v72 - v32;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D8040, &qword_18BC4A180);
  v95 = *(v108 - 8);
  v34 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v108);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v72 - v36;
  _s16BookmarkTileCellCMa();
  v94 = v37;
  sub_18BC21298();
  _s14CompactRowCellCMa(0);
  v96 = v33;
  sub_18BC21298();
  _s13DetailRowCellCMa();
  v98 = v28;
  sub_18BC21298();
  sub_18B7B0AC0(0, &qword_1EA9D3580, 0x1E69DC868);
  v100 = v24;
  sub_18BC21298();
  _s15HistoryItemCellCMa();
  v101 = v19;
  sub_18BC21298();
  sub_18BC20BD8();
  swift_allocObject();
  v38 = v106;
  swift_unknownObjectUnownedInit();
  _s16SelectableHeaderCMa();
  v102 = v14;
  sub_18BC212A8();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  _s17HistoryInfoHeaderCMa();
  sub_18BC212A8();
  _s20SegmentedControlCellCMa();
  v39 = v105;
  sub_18BC21298();
  _s22ContentUnavailableCellCMa();
  v40 = v107;
  result = sub_18BC21298();
  v42 = *(v38 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_collectionView);
  if (v42)
  {
    swift_unknownObjectUnownedInit();
    v75 = v42;
    swift_unknownObjectUnownedDestroy();
    v43 = v95;
    (*(v95 + 16))(&v72 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v94, v108);
    v44 = v97;
    (*(v97 + 16))(v30, v96, v109);
    v74 = v30;
    v45 = v99;
    (*(v99 + 16))(v89, v98, v110);
    v73 = &v72 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = v111;
    (*(v111 + 16))(v90, v100, v112);
    v47 = v113;
    (*(v113 + 16))(v91, v101, v114);
    v48 = v115;
    (*(v115 + 16))(v92, v39, v116);
    v49 = v104;
    (*(v104 + 16))(v93, v40, v117);
    v50 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v51 = (v34 + *(v44 + 80) + v50) & ~*(v44 + 80);
    v52 = (v76 + *(v45 + 80) + v51) & ~*(v45 + 80);
    v77 = (v77 + *(v46 + 80) + v52) & ~*(v46 + 80);
    v53 = (v78 + *(v47 + 80) + v77) & ~*(v47 + 80);
    v54 = (v79 + *(v48 + 80) + v53) & ~*(v48 + 80);
    v80 = (v80 + *(v49 + 80) + v54) & ~*(v49 + 80);
    v55 = swift_allocObject();
    (*(v43 + 32))(v55 + v50, v73, v108);
    (*(v44 + 32))(v55 + v51, v74, v109);
    (*(v45 + 32))(v55 + v52, v89, v110);
    (*(v111 + 32))(v55 + v77, v90, v112);
    (*(v113 + 32))(v55 + v53, v91, v114);
    (*(v115 + 32))(v55 + v54, v92, v116);
    (*(v49 + 32))(v55 + v80, v93, v117);
    v56 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8050, &qword_18BC4A188));
    v93 = sub_18BC1FCE8();
    v57 = sub_18BC1FDB8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8058, &qword_18BC4A190);
    sub_18BC1FDA8();
    v57(v119, 0);
    v58 = sub_18BC1FDB8();
    sub_18BC1FD98();
    v58(v119, 0);
    swift_unknownObjectUnownedInit();
    v59 = v86;
    v60 = v83;
    v61 = v103;
    (*(v86 + 16))(v83, v102, v103);
    v62 = v87;
    v63 = v85;
    v64 = v88;
    (*(v87 + 16))(v85, v118, v88);
    v65 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v66 = (v82 + *(v62 + 80) + v65) & ~*(v62 + 80);
    v67 = swift_allocObject();
    (*(v59 + 32))(v67 + v65, v60, v61);
    (*(v62 + 32))(v67 + v66, v63, v64);
    v68 = v93;
    sub_18BC1FD08();
    swift_unknownObjectUnownedDestroy();
    v69 = swift_unknownObjectWeakInit();
    MEMORY[0x18CFFF000](v69);
    v70 = sub_18BC1FD78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8060, &qword_18BC4A198);
    sub_18BC1FD58();
    v70(v119, 0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v71 = sub_18BC1FD78();
    sub_18BC1FD48();
    v71(v119, 0);
    (*(v104 + 8))(v107, v117);
    (*(v115 + 8))(v105, v116);
    (*(v62 + 8))(v118, v64);
    (*(v59 + 8))(v102, v103);
    (*(v113 + 8))(v101, v114);
    (*(v111 + 8))(v100, v112);
    (*(v99 + 8))(v98, v110);
    (*(v97 + 8))(v96, v109);
    (*(v95 + 8))(v94, v108);
    return v68;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18BA9706C(int a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (__dst[48] <= 2u)
  {
    if (__dst[48])
    {
      memcpy(__srca, __src, sizeof(__srca));
      if (__dst[48] == 1)
      {
        CGRectMake();
        memcpy(v13, __srca, sizeof(v13));
        sub_18BAA2054(__dst, v15);
        _s14CompactRowCellCMa(0);
      }

      else
      {
        CGRectMake();
        memcpy(v13, __srca, sizeof(v13));
        sub_18BAA2054(__dst, v15);
        _s13DetailRowCellCMa();
      }
    }

    else
    {
      memcpy(__srca, __src, sizeof(__srca));
      CGRectMake();
      memcpy(v13, __srca, sizeof(v13));
      sub_18BAA2054(__dst, v15);
      _s16BookmarkTileCellCMa();
    }
  }

  else if (__dst[48] > 4u)
  {
    memcpy(__srca, __src, sizeof(__srca));
    if (__dst[48] == 5)
    {
      CGRectMake();
      memcpy(v13, __srca, sizeof(v13));
      sub_18BAA2054(__dst, v15);
      _s20SegmentedControlCellCMa();
    }

    else
    {
      CGRectMake();
      memcpy(v13, __srca, sizeof(v13));
      sub_18BAA2054(__dst, v15);
      _s22ContentUnavailableCellCMa();
    }
  }

  else
  {
    memcpy(__srca, __src, sizeof(__srca));
    if (__dst[48] == 3)
    {
      CGRectMake();
      memcpy(v13, __srca, sizeof(v13));
      sub_18BAA2054(__dst, v15);
      sub_18B7B0AC0(0, &qword_1EA9D3580, 0x1E69DC868);
    }

    else
    {
      CGRectMake();
      memcpy(v13, __srca, sizeof(v13));
      sub_18BAA2054(__dst, v15);
      _s15HistoryItemCellCMa();
    }
  }

  v11 = sub_18BC212B8();
  memcpy(v15, v13, sizeof(v15));
  sub_18B988BAC(v15, &qword_1EA9D7E00, &qword_18BC49FE8);
  return v11;
}

uint64_t sub_18BA9736C(uint64_t result, char a2)
{
  v2 = *(result + 280);
  if (v2)
  {
    return v2(a2 & 1);
  }

  return result;
}

uint64_t sub_18BA973A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_18BC20BD8() == a2 && v8 == a3)
  {

    goto LABEL_11;
  }

  v10 = sub_18BC21FD8();

  if (v10)
  {
LABEL_11:
    _s16SelectableHeaderCMa();
    return sub_18BC212C8();
  }

  if (a2 == 0xD00000000000001ALL && 0x800000018BC69C00 == a3 || (sub_18BC21FD8() & 1) != 0)
  {
    _s17HistoryInfoHeaderCMa();
    return sub_18BC212C8();
  }

  return 0;
}

id sub_18BA974B0(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (!v1)
  {
    return 0;
  }

  result = [*(a1 + 72) isDeletable];
  if (result)
  {
    result = [v1 isEditable];
    if (result)
    {
      if (![v1 specialID])
      {
        return ([v1 isReadingListItem] ^ 1);
      }

      return 0;
    }
  }

  return result;
}

void sub_18BA9752C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D7D70, &qword_18BC49FA8);
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8068, &qword_18BC4A1A0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8070, &qword_18BC4A1A8);
  MEMORY[0x18CFFB080]();
  v9 = sub_18BC21DD8();
  v10 = *(v5 + 8);
  v10(v7, v4);
  MEMORY[0x18CFFB080](v8);
  v11 = sub_18BC21DA8();
  v10(v7, v4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(v9 + 16) == 1 && *(v11 + 16) == 1)
    {
      v38 = Strong;

      if (*(v9 + 16))
      {
        memcpy(v46, (v9 + 32), 0x13AuLL);
        sub_18B7CA054(v46, v45, &unk_1EA9D8078, &unk_18BC4A1B0);

        memcpy(v47, v46, 0x13AuLL);
        if (sub_18BAA49BC(v47) != 1)
        {
          CGRectMake();
          sub_18B988BAC(v46, &unk_1EA9D8078, &unk_18BC4A1B0);

          return;
        }

        CGRectMake();
        v14 = v13;
        memcpy(v48, (v13 + 8), 0x128uLL);
        v15 = v39;
        sub_18BC1FBA8();
        memcpy(v42, v48, sizeof(v42));
        v16 = v41;
        sub_18BC1FB08();
        v17 = *(v40 + 8);
        v17(v15, v16);
        memcpy(v44, v43, sizeof(v44));
        memcpy(v45, v43, sizeof(v45));
        if (sub_18BAA2FD0(v45) == 1)
        {

LABEL_20:
          sub_18B988BAC(v46, &unk_1EA9D8078, &unk_18BC4A1B0);
          return;
        }

        sub_18BC1FBA8();
        memcpy(v43, v45, sizeof(v43));
        v18 = sub_18BC1FAC8();
        v17(v15, v16);
        sub_18BC1FB98();
        memcpy(v43, v45, sizeof(v43));
        v19 = sub_18BC1FAC8();
        v17(v15, v16);
        v20 = sub_18BA42164(v48, v19);
        v22 = v21;

        if (v22)
        {
          v23 = *(v18 + 16);

          v20 = v23 - 1;
        }

        else
        {
        }

        v24 = *(v14 + 80);
        v25 = v38;
        if (!v24)
        {
          v36 = v38;
          sub_18B988BAC(v44, &qword_1EA9D7E18, &qword_18BC4A000);

          goto LABEL_20;
        }

        v26 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_suppressingReloads;
        v27 = *&v38[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_suppressingReloads];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (!v28)
        {
          *&v38[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_suppressingReloads] = v29;
          v30 = &v25[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_reorderBookmark];
          swift_beginAccess();
          v31 = *v30;
          v32 = v24;
          sub_18BC1E1A8();
          v31(v32, v20);

          sub_18B988BAC(v44, &qword_1EA9D7E18, &qword_18BC4A000);

          sub_18B988BAC(v46, &unk_1EA9D8078, &unk_18BC4A1B0);
          v33 = v38;
          v34 = *&v38[v26];
          v28 = __OFSUB__(v34, 1);
          v35 = v34 - 1;
          if (!v28)
          {
            *&v38[v26] = v35;

            return;
          }

          goto LABEL_23;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }
  }
}

uint64_t (*sub_18BA97A68(uint64_t (*result)(void)))(void)
{
  v2 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_suppressingReloads;
  v3 = *(v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_suppressingReloads);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_suppressingReloads) = v5;
    result = result();
    v6 = *(v1 + v2);
    v4 = __OFSUB__(v6, 1);
    v7 = v6 - 1;
    if (!v4)
    {
      *(v1 + v2) = v7;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18BA97B5C(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4)
{
  v32 = a1;
  v5 = sub_18BC1FA08();
  v6 = *(v5 - 8);
  v33 = v5;
  v34 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0, &unk_18BC3F030);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D8088, &qword_18BC4A1C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v28 - v12;
  v31 = sub_18BC1F518();
  v14 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_18BC1F418();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a4 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64F0, &qword_18BC45390);
  sub_18BC1F598();
  *(swift_allocObject() + 16) = xmmword_18BC3E410;
  (*(v18 + 104))(v20, *MEMORY[0x1E69DBF28], v17);
  v21 = sub_18BC1F4F8();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = sub_18BC1F448();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  sub_18BC1E3F8();
  sub_18BC1F508();
  sub_18BC1F498();
  (*(v14 + 8))(v16, v31);
  (*(v18 + 8))(v20, v17);
  sub_18BC21458();
  v23 = v29;
  sub_18BC1F978();
  sub_18BC1F9B8();
  v24 = v33;
  v35[3] = v33;
  v35[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v35);
  v26 = v34;
  (*(v34 + 16))(boxed_opaque_existential_0Tm, v23, v24);
  MEMORY[0x18CFFC900](v35);
  return (*(v26 + 8))(v23, v24);
}

uint64_t sub_18BA98008(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = sub_18BA95F78();

  sub_18BC1EDC8();
  sub_18BC1FD38();

  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v20, __src, sizeof(v20));
  result = sub_18BAA2FD0(v20);
  if (result != 1)
  {
    v9 = v20[5];
    v10 = v20[6];
    sub_18BC1E3F8();
    sub_18BAA9238(v9, v10);
    v11 = v20[3];
    v12 = v20[4];
    sub_18BC1E3F8();
    sub_18BAA9224(v11, v12);
    v13 = v20[49];
    v14 = v20[50];
    v15 = &a1[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16SelectableHeader_tapHandler];
    v16 = *&a1[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16SelectableHeader_tapHandler];
    v17 = *&a1[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController16SelectableHeader_tapHandler + 8];
    *v15 = v20[49];
    *(v15 + 1) = v14;
    sub_18B824D48(v13, v14);
    sub_18B824D48(v13, v14);
    sub_18B7B171C(v16, v17);
    [a1 setNeedsUpdateConfiguration];
    sub_18B7B171C(v13, v14);
    return sub_18B988BAC(__dst, &qword_1EA9D7E18, &qword_18BC4A000);
  }

  return result;
}

uint64_t sub_18BA9815C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = sub_18BA95F78();

  sub_18BC1EDC8();
  sub_18BC1FD38();

  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v14, __src, sizeof(v14));
  result = sub_18BAA2FD0(v14);
  if (result != 1)
  {
    v8 = v14[46];
    v9 = v14[46];
    sub_18BBE0588(v8);
    v10 = v14[47];
    v11 = v14[48];
    sub_18BC1E3F8();
    sub_18BBE0674(v10, v11);
    return sub_18B988BAC(__dst, &qword_1EA9D7E18, &qword_18BC4A000);
  }

  return result;
}

void sub_18BA9827C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 168);
  v4 = *(a1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController22ContentUnavailableCell_contentUnavailableView);
  v3();
}

id sub_18BA982D8()
{
  v1 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController____lazy_storage___collectionLayout;
  v2 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController____lazy_storage___collectionLayout);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController____lazy_storage___collectionLayout);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v5 = objc_allocWithZone(_s6LayoutCMa());
    v11[4] = sub_18BAA4ADC;
    v11[5] = v4;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_18B9B53C0;
    v11[3] = &block_descriptor_209;
    v6 = _Block_copy(v11);
    sub_18BC1E1A8();
    v7 = [v5 initWithSectionProvider_];
    _Block_release(v6);

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_18BA98418(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_18BC1EDD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  Strong = swift_unknownObjectUnownedLoadStrong();
  v10 = sub_18BA95F78();

  sub_18BC1FD38();
  memcpy(v25, v24, sizeof(v25));
  memcpy(v26, v24, sizeof(v26));
  v11 = sub_18BAA2FD0(v26);
  result = 0;
  if (v11 != 1)
  {
    if (LOBYTE(v26[2]))
    {
      if (LOBYTE(v26[2]) == 1)
      {
        v13 = swift_unknownObjectUnownedLoadStrong();
        v14 = sub_18BA992F8(a2, LOBYTE(v26[45]));
      }

      else
      {
        v16 = swift_unknownObjectUnownedLoadStrong();
        v17 = sub_18BA95F78();

        MEMORY[0x18CFFA290](0, a1);
        sub_18BC1FD18();

        (*(v6 + 8))(v8, v5);
        memcpy(v23, v22, sizeof(v23));
        memcpy(v24, v22, 0x128uLL);
        if (sub_18B81CA10(v24) == 1)
        {
          v18 = 0;
        }

        else
        {
          sub_18B988BAC(v23, &qword_1EA9D7E00, &qword_18BC49FE8);
          if (v24[48] == 5)
          {

            v18 = 1;
          }

          else
          {
            v18 = sub_18BC21FD8();
          }
        }

        v19 = sub_18B81CA10(&v26[8]) == 0;
        v13 = swift_unknownObjectUnownedLoadStrong();
        v14 = sub_18BA98B88(a2, v18 & 1, v19, v26[6] != 0);
      }
    }

    else
    {
      v13 = swift_unknownObjectUnownedLoadStrong();
      v14 = sub_18BA987D4(a2, v15);
    }

    v20 = v14;
    sub_18B988BAC(v25, &qword_1EA9D7E18, &qword_18BC4A000);

    return v20;
  }

  return result;
}

void *sub_18BA987D4(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = sub_18BC1FEA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18BC1FF18();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v3 traitCollection];
  v14 = [v13 listEnvironment];

  v15 = MEMORY[0x1E69DC258];
  if (v14 != 5)
  {
    v15 = MEMORY[0x1E69DC238];
  }

  (*(v5 + 104))(v7, *v15, v4);
  sub_18BC1FEC8();
  sub_18BC1FEE8();
  v16 = [objc_opt_self() clearColor];
  sub_18BC1FEF8();
  sub_18B7B0AC0(0, &unk_1EA9D7FE0, 0x1E6995580);
  v17 = sub_18BC21498();
  v18 = objc_opt_self();
  v19 = [v18 estimatedDimension_];
  v20 = [v18 fractionalWidthDimension_];
  v21 = [objc_opt_self() sizeWithWidthDimension:v20 heightDimension:v19];

  v22 = v21;
  v23 = sub_18BC20B98();
  v24 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v22 elementKind:v23 alignment:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_18BC3E3E0;
  *(v25 + 32) = v24;
  sub_18B7B0AC0(0, &qword_1EA9D5BF0, 0x1E6995548);
  v26 = v24;
  v27 = sub_18BC20D88();

  [v17 setBoundarySupplementaryItems_];

  [v17 setContentInsets_];
  (*(v9 + 8))(v12, v8);
  return v17;
}

void *sub_18BA98B88(uint64_t a1, int a2, int a3, int a4)
{
  v5 = v4;
  v31 = a2;
  v32 = a4;
  v30 = a3;
  v34 = a1;
  v33 = sub_18BC1FEB8();
  v6 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29[-v10];
  v12 = sub_18BC1FEA8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_18BC1FF18();
  v35 = *(v16 - 8);
  v36 = v16;
  *&v17 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v19 = &v29[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = [v5 traitCollection];
  v21 = [v20 listEnvironment];

  v22 = MEMORY[0x1E69DC258];
  if (v21 != 5)
  {
    v22 = MEMORY[0x1E69DC238];
  }

  (*(v13 + 104))(v15, *v22, v12);
  sub_18BC1FEC8();
  sub_18BC1FEE8();
  v23 = [objc_opt_self() clearColor];
  sub_18BC1FEF8();
  if (v32)
  {
    v24 = MEMORY[0x1E69DC288];
    if ((v30 & 1) == 0)
    {
      v24 = MEMORY[0x1E69DC280];
    }

    (*(v6 + 104))(v11, *v24, v33);
  }

  else
  {
    (*(v6 + 104))(v8, *MEMORY[0x1E69DC290], v33);
  }

  sub_18BC1FED8();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_18BC1FE88();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_18BC1FE98();
  sub_18B7B0AC0(0, &unk_1EA9D7FE0, 0x1E6995580);
  v25 = sub_18BC21498();
  v26 = [v5 traitCollection];
  [v26 listEnvironment];

  [v25 contentInsets];
  [v25 setContentInsets_];
  v27 = [v5 traitCollection];
  [v27 listEnvironment];

  [v25 contentInsets];
  [v25 setContentInsets_];
  (*(v35 + 8))(v19, v36);
  return v25;
}

id sub_18BA99018(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = sub_18BA95F78();

  sub_18BC1FD18();
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  if (sub_18B81CA10(v12) != 1)
  {
    v4 = v12[23];
    if (v12[23])
    {
      v5 = v12[24];
      v6 = swift_unknownObjectUnownedLoadStrong();
      sub_18BC1E1A8();
      v4(v6);

      sub_18B7B0AC0(0, &unk_1EA9D3AD0, 0x1E69DC8E8);
      v7 = sub_18BC20D88();

      v8 = [objc_opt_self() configurationWithActions_];

      sub_18B7B171C(v4, v5);
      sub_18B988BAC(__dst, &qword_1EA9D7E00, &qword_18BC49FE8);
      return v8;
    }

    sub_18B988BAC(__dst, &qword_1EA9D7E00, &qword_18BC49FE8);
  }

  return 0;
}

id sub_18BA99188(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = sub_18BA95F78();

  sub_18BC1FD18();
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  if (sub_18B81CA10(v12) != 1)
  {
    v4 = v12[25];
    if (v12[25])
    {
      v5 = v12[26];
      v6 = swift_unknownObjectUnownedLoadStrong();
      sub_18BC1E1A8();
      v4(v6);

      sub_18B7B0AC0(0, &unk_1EA9D3AD0, 0x1E69DC8E8);
      v7 = sub_18BC20D88();

      v8 = [objc_opt_self() configurationWithActions_];

      sub_18B7B171C(v4, v5);
      sub_18B988BAC(__dst, &qword_1EA9D7E00, &qword_18BC49FE8);
      return v8;
    }

    sub_18B988BAC(__dst, &qword_1EA9D7E00, &qword_18BC49FE8);
  }

  return 0;
}

id sub_18BA992F8(void *a1, int a2)
{
  v3 = v2;
  v58 = a2;
  v5 = sub_18BC1FEB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18BC1FEA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18BC1FF18();
  v56 = *(v13 - 8);
  v57 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, *MEMORY[0x1E69DC238], v9, v14);
  sub_18BC1FEC8();
  (*(v6 + 104))(v8, *MEMORY[0x1E69DC280], v5);
  sub_18BC1FED8();
  sub_18B7B0AC0(0, &unk_1EA9D7FE0, 0x1E6995580);
  v55 = sub_18BC21498();
  [v55 contentInsets];
  v18 = v17;
  v20 = v19;
  v21 = [v3 traitCollection];
  v22 = [v21 listEnvironment];

  v23 = 16.0;
  if (v22 == 5)
  {
    v24 = 24.0;
  }

  else
  {
    v24 = 16.0;
  }

  v25 = [v3 traitCollection];
  v26 = [v25 listEnvironment];

  if (v26 == 5)
  {
    v23 = 24.0;
  }

  [objc_msgSend(a1 container)];
  v28 = v27;
  swift_unknownObjectRelease();
  v29 = v28 - (v24 + v23);
  sub_18BA9999C(v29, 10.0);
  v31 = v30;
  v32 = objc_opt_self();
  v33 = [v32 estimatedDimension_];
  if (v31 <= 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v31;
  }

  v35 = [v32 absoluteDimension_];
  v36 = objc_opt_self();
  v37 = [v36 sizeWithWidthDimension:v35 heightDimension:v33];
  v54 = v37;

  v38 = [objc_opt_self() itemWithLayoutSize_];
  v53 = v38;
  v39 = [v32 absoluteDimension_];
  v40 = [v36 sizeWithWidthDimension:v39 heightDimension:v33];

  v41 = [objc_opt_self() horizontalGroupWithLayoutSize:v40 repeatingSubitem:v38 count:v34];
  v42 = [objc_opt_self() fixedSpacing_];
  [v41 setInterItemSpacing_];

  v43 = [objc_opt_self() sectionWithGroup_];
  v44 = [v32 estimatedDimension_];
  v45 = [v32 fractionalWidthDimension_];
  v46 = [v36 sizeWithWidthDimension:v45 heightDimension:v44];

  v47 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v46 elementKind:*MEMORY[0x1E69DDC08] alignment:1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_18BC3E3E0;
  *(v48 + 32) = v47;
  sub_18B7B0AC0(0, &qword_1EA9D5BF0, 0x1E6995548);
  v49 = v47;
  v50 = sub_18BC20D88();

  [v43 setBoundarySupplementaryItems_];

  [v43 setContentInsets_];
  [v43 setInterGroupSpacing_];
  if (v58)
  {
    v51 = 4;
  }

  else
  {
    v51 = 0;
  }

  [v43 setOrthogonalScrollingBehavior_];

  (*(v56 + 8))(v16, v57);
  return v43;
}

void sub_18BA9999C(double a1, double a2)
{
  v5 = [v2 traitCollection];
  v6 = [v5 listEnvironment];

  if (v6 == 5)
  {
    v7 = 113.0;
  }

  else
  {
    v7 = 150.0;
  }

  v8 = [v2 traitCollection];
  v9 = [v8 preferredContentSizeCategory];

  LOBYTE(v8) = sub_18BC21438();
  if (v8)
  {
    v10 = [objc_opt_self() defaultMetrics];
    v11 = [v2 traitCollection];
    [v10 scaledValueForValue:v11 compatibleWithTraitCollection:v7];
    v7 = v12;
  }

  v13 = floor((a1 + a2) / (v7 + a2));
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
  }
}

void sub_18BA99B28()
{
  v1 = sub_18BC1EDD8();
  v57 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v51 - v5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D7D70, &qword_18BC49FA8);
  v6 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7D40, &qword_18BC49FA0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v51 - v12;
  v14 = type metadata accessor for SFBookmarksUIState(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_needsContentOffsetUpdate) == 1)
  {
    v55 = v1;
    v18 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController__currentUIState;
    swift_beginAccess();
    sub_18B7CA054(v0 + v18, v13, &qword_1EA9D7D40, &qword_18BC49FA0);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_18B988BAC(v13, &qword_1EA9D7D40, &qword_18BC49FA0);
      return;
    }

    sub_18BAA49C4(v13, v17);
    v54 = v0;
    v19 = sub_18BA95F78();
    sub_18BC1FDF8();

    v20 = v59;
    v21 = sub_18BC1FAE8();
    v24 = *(v6 + 8);
    v23 = v6 + 8;
    v22 = v24;
    v24(v10, v20);
    if (!v21)
    {
      goto LABEL_20;
    }

    v52 = v22;
    v53 = v23;
    v25 = v57;
    v26 = v55;
    (*(v57 + 16))(v58, v17, v55);
    v27 = sub_18BC1EDC8();
    v51 = sub_18BC1EDB8();
    v28 = *(v54 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController____lazy_storage___collectionDataSource);
    v29 = v56;
    sub_18BC1FDF8();

    MEMORY[0x18CFFA290](0, 0);
    sub_18BAA4A28();
    LOBYTE(v28) = sub_18BC20AE8();
    v30 = *(v25 + 8);
    v30(v3, v26);
    if ((v28 & 1) != 0 || v27 < 0 || v27 >= sub_18BC1FAE8() || v51 < 0)
    {
      goto LABEL_19;
    }

    v31 = sub_18BC1FB18();
    v32 = sub_18BC1EDC8();
    if ((v32 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v32 < *(v31 + 16))
    {
      memcpy(v61, (v31 + 408 * v32 + 32), sizeof(v61));
      sub_18BAA21B4(v61, v60);

      memcpy(v60, v61, sizeof(v60));
      v33 = sub_18BC1FA68();
      memcpy(v62, v60, sizeof(v62));
      sub_18BAA2210(v62);
      if (v51 < v33)
      {
        v34 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_collectionView;
        v35 = v54;
        v36 = *(v54 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_collectionView);
        if (v36)
        {
          [v36 setNeedsLayout];
          v37 = *(v35 + v34);
          if (v37)
          {
            [v37 layoutIfNeeded];
            v38 = *(v35 + v34);
            if (v38)
            {
              v39 = v38;
              v40 = sub_18BC1ED68();
              [v39 scrollToItemAtIndexPath:v40 atScrollPosition:1 animated:0];

              v41 = v54;
              v42 = *(v54 + v34);
              if (v42)
              {
                [v42 contentOffset];
                v45 = *(v41 + v34);
                if (v45)
                {
                  v46 = v43;
                  v47 = v44;
                  v48 = *&v17[*(v14 + 20)];
                  [v45 adjustedContentInset];
                  v50 = *(v41 + v34);
                  if (v50)
                  {
                    [v50 setContentOffset:0 animated:{v46, v47 + v48 + v49}];
                    goto LABEL_19;
                  }

LABEL_29:
                  __break(1u);
                  return;
                }

LABEL_28:
                __break(1u);
                goto LABEL_29;
              }

LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_19:
      v52(v29, v59);
      v30(v58, v26);
LABEL_20:
      sub_18BAA4A80(v17);
      return;
    }

    __break(1u);
    goto LABEL_24;
  }
}

double sub_18BA9A104(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SFBookmarksCollectionViewController(0);
  objc_msgSendSuper2(&v8, sel_didMoveToParentViewController_, a1);
  if (!a1)
  {
    v4 = sub_18BA947A4();
    v5 = [v4 searchBar];

    [v5 setText_];
    v6 = &v1[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_searchTextDidChangeHandler];
    swift_beginAccess();
    v7 = *v6;
    sub_18BC1E1A8();
    v7(0, 0, v1);
  }

  return result;
}

void sub_18BA9A24C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7D40, &qword_18BC49FA0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v43 - v2;
  v4 = type metadata accessor for SFBookmarksCollectionViewController(0);
  v44.receiver = v0;
  v44.super_class = v4;
  objc_msgSendSuper2(&v44, sel_viewDidLoad);
  v5 = [v0 navigationItem];
  [v5 setPreferredSearchBarPlacement_];

  v6 = [v0 navigationItem];
  v7 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_supportsSearch;
  swift_beginAccess();
  v8 = 0;
  if (v0[v7] == 1)
  {
    v8 = sub_18BA947A4();
  }

  [v6 setSearchController_];

  v9 = [v0 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = sub_18BA982D8();
  v20 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v19 collectionViewLayout:{v12, v14, v16, v18}];

  v21 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_collectionView;
  v22 = *&v0[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_collectionView];
  *&v0[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_collectionView] = v20;
  v23 = v20;

  if (!v23)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v23 setAllowsMultipleSelectionDuringEditing_];

  v24 = *&v0[v21];
  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v24 setAutoresizingMask_];
  v25 = *&v0[v21];
  if (!v25)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v25 setDelegate_];
  v26 = *&v0[v21];
  if (!v26)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v26 setDragDelegate_];
  v27 = *&v0[v21];
  if (!v27)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v27 setDropDelegate_];
  v28 = *&v0[v21];
  if (!v28)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v28 setAllowsFocus_];
  v29 = *&v0[v21];
  if (!v29)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v30 = v29;
  [v30 _pocketInsets];
  [v30 _setPocketInsets_];

  v32 = [v0 view];
  if (!v32)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!*&v0[v21])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v33 = v32;
  [v32 addSubview_];

  v34 = *&v0[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_explanationView];
  [v34 setUserInteractionEnabled_];
  v35 = [v0 view];
  if (!v35)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v36 = v35;
  [v35 _sf_addEdgeMatchedSubview_];

  v37 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController__currentUIState;
  swift_beginAccess();
  sub_18B7CA054(&v0[v37], v3, &qword_1EA9D7D40, &qword_18BC49FA0);
  v38 = type metadata accessor for SFBookmarksUIState(0);
  LOBYTE(v37) = (*(*(v38 - 8) + 48))(v3, 1, v38) != 1;
  sub_18B988BAC(v3, &qword_1EA9D7D40, &qword_18BC49FA0);
  v0[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_needsContentOffsetUpdate] = v37;
  v39 = &v0[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_id];
  swift_beginAccess();
  if (v39[4] != 1 || *v39)
  {
    v40 = *&v0[v21];
    if (v40)
    {
LABEL_17:
      v41 = v40;
      v42 = sub_18BC20B98();
      [v41 setAccessibilityIdentifier_];

      sub_18BA9B0F0(1);
      return;
    }

    goto LABEL_31;
  }

  v40 = *&v0[v21];
  if (v40)
  {
    goto LABEL_17;
  }

LABEL_32:
  __break(1u);
}

void sub_18BA9A8E0(char a1, char a2)
{
  v5 = [v2 isEditing];
  v10.receiver = v2;
  v10.super_class = type metadata accessor for SFBookmarksCollectionViewController(0);
  objc_msgSendSuper2(&v10, sel_setEditing_animated_, a1 & 1, a2 & 1);
  if (v5 != (a1 & 1))
  {
    v6 = *&v2[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_collectionView];
    if (v6)
    {
      [v6 setEditing_];
      v7 = [v2 navigationController];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 interactivePopGestureRecognizer];

        if (v9)
        {
          [v9 setEnabled_];
        }
      }

      sub_18BA9AA44();
      sub_18BA9ACB8();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_18BA9AA44()
{
  v1 = v0;
  v2 = sub_18BA948E0();
  v3 = [v0 navigationItem];
  [v3 setHidesBackButton_];

  v4 = [v1 navigationItem];
  v5 = &v1[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_leftBarButtonItemProvider];
  swift_beginAccess();
  v6 = *v5;
  sub_18BC1E1A8();
  v6([v1 isEditing], v2);

  sub_18B7B0AC0(0, &unk_1EA9D35A0, 0x1E69DC708);
  v7 = sub_18BC20D88();

  [v4 setLeftBarButtonItems_];

  v8 = [v1 navigationItem];
  v9 = &v1[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_rightBarButtonItemProvider];
  swift_beginAccess();
  v10 = *v9;
  sub_18BC1E1A8();
  v10([v1 isEditing], v2);

  v11 = sub_18BC20D88();

  [v8 setRightBarButtonItems_];
}

void sub_18BA9AC2C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_collectionView);
  if (v3)
  {
    v4 = v3;
    v5 = sub_18BC20B98();
    [v4 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

void sub_18BA9ACB8()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_toolbarItemsProvider];
  swift_beginAccess();
  v3 = *v2;
  sub_18BC1E1A8();
  v4 = [v1 isEditing];
  v5 = sub_18BA948E0();
  v6 = v3(v4, v5);

  if (v6 >> 62)
  {
    if (sub_18BC219A8())
    {
      goto LABEL_3;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v7 = [v1 navigationController];
    if (v7)
    {
      v8 = v7;
      [v7 setToolbarHidden:0 animated:1];
    }

    sub_18B7B0AC0(0, &unk_1EA9D35A0, 0x1E69DC708);
    v9 = sub_18BC20D88();

    [v1 setToolbarItems:v9 animated:1];
    goto LABEL_9;
  }

  v10 = [v1 navigationController];
  if (!v10)
  {
    return;
  }

  v9 = v10;
  [v10 setToolbarHidden:1 animated:1];
LABEL_9:
}

id sub_18BA9AE50(const void *a1, char a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D7D70, &qword_18BC49FA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19[-v10];
  memcpy(v20, a1, sizeof(v20));
  result = [v2 isViewLoaded];
  if (result && *&v2[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_collectionView])
  {
    v13 = sub_18BA95F78();
    memcpy(v19, a1, sizeof(v19));
    sub_18BC1FE08();

    v14 = sub_18BC1EDD8();
    LODWORD(v13) = (*(*(v14 - 8) + 48))(v11, 1, v14);
    result = sub_18B988BAC(v11, &unk_1EA9D5BD0, &qword_18BC42210);
    if (v13 != 1)
    {
      v15 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController____lazy_storage___collectionDataSource;
      v16 = *&v3[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController____lazy_storage___collectionDataSource];
      sub_18BC1FDF8();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4D10, &qword_18BC42A10);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_18BC3E410;
      memcpy((v17 + 32), v20, 0x128uLL);
      sub_18BAA2054(v20, v19);
      sub_18BC1FAF8();

      v18 = *&v3[v15];
      sub_18BC1FDC8();

      return (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

void *sub_18BA9B0F0(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v174 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7D90, &qword_18BC49FB0);
  *&v169 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v181 = &v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v182 = &v157 - v8;
  *&v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7D98, &qword_18BC49FB8);
  MEMORY[0x1EEE9AC00](v179);
  v10 = &v157 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7DA0, &qword_18BC49FC0);
  v176 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v165 = &v157 - v15;
  v16 = sub_18BC1E668();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D7D70, &qword_18BC49FA8);
  v163 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v177 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = MEMORY[0x1EEE9AC00](v21).n128_u64[0];
  v178 = &v157 - v23;
  result = [v1 isViewLoaded];
  if (!result || !*&v1[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_collectionView] || *&v1[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_suppressingReloads])
  {
    return result;
  }

  v164 = v11;
  if (v3)
  {
    v25 = sub_18BA982D8();
    v25[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout_scrollLockActive] = 1;
    v26 = [v25 collectionView];
    v27 = v26;
    if (v26)
    {
      [v26 contentOffset];
      v173 = v28;
      v175 = v29;

      *&v30 = v173;
      *(&v30 + 1) = v175;
    }

    else
    {
      v30 = 0uLL;
    }

    v31 = &v25[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout_savedContentOffset];
    *v31 = v30;
    v31[16] = v27 == 0;
  }

  v32 = sub_18BAA20B0();
  v33 = sub_18BAA2104();
  v171 = v32;
  v172 = v33;
  sub_18BC1FB28();
  v34 = *&v1[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_snapshotProvider + 8];
  *&v173 = *&v1[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_snapshotProvider];
  v170 = v34;
  *&v175 = v1;
  v35 = sub_18BA947A4();
  v36 = [v35 searchBar];

  v37 = [v36 text];
  if (v37)
  {
    v38 = sub_18BC20BD8();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0xE000000000000000;
  }

  *&v196[0] = v38;
  *(&v196[0] + 1) = v40;
  v41 = [objc_opt_self() safari_whitespaceAndNewlineCharacterSet];
  sub_18BC1E658();

  sub_18B7B0B50();
  v42 = sub_18BC21888();
  v44 = v43;
  (*(v17 + 8))(v19, v16);

  (v173)(v42, v44, v178);

  v45 = sub_18BA95F78();
  sub_18BC1FDF8();

  *&v173 = sub_18BC1FB18();
  *&v196[0] = v173;
  v193[0] = sub_18BC1FB18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7DC8, &qword_18BC49FC8);
  sub_18B7B0B08(&qword_1EA9D7DD0, &qword_1EA9D7DC8, &qword_18BC49FC8, MEMORY[0x1E69E6310]);
  sub_18BAA2158();
  sub_18BC20AA8();

  v47 = v164;
  v46 = v165;
  sub_18BC21DF8();
  v48 = v176;
  v158 = *(v176 + 8);
  v159 = v176 + 8;
  v158(v13, v47);
  (*(v48 + 16))(v10, v46, v47);
  v49 = *(v179 + 36);
  sub_18B7B0B08(&qword_1EA9D7DE0, &qword_1EA9D7DA0, &qword_18BC49FC0, MEMORY[0x1E69E6F00]);
  sub_18BC21128();
  sub_18BC21158();
  v50 = *&v10[v49];
  v168 = v5;
  if (v50 == *&v196[0])
  {
LABEL_13:
    sub_18B988BAC(v10, &qword_1EA9D7D98, &qword_18BC49FB8);
    *&v179 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController____lazy_storage___collectionDataSource;
    v51 = *(v175 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController____lazy_storage___collectionDataSource);
    sub_18BC1FDC8();

    sub_18BC21128();
    sub_18BC21158();
    v52 = *&v196[0];
    v53 = v193[0];
    v171 = *(v173 + 16);
    if (!v171)
    {

      v64 = v52 == v53;
      v55 = v175;
      v121 = v180;
      if (v64)
      {
        goto LABEL_74;
      }

LABEL_59:
      sub_18BA99B28();
      v122 = sub_18BA982D8();
      v122[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout_scrollLockActive] = 0;
      v123 = &v122[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout_savedContentOffset];
      *v123 = 0;
      *(v123 + 1) = 0;
      v123[16] = 1;

      v124 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_showsNavigationTitle;
      swift_beginAccess();
      v125 = v178;
      if (v55[v124] == 1)
      {
        v126 = &v55[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_titleProvider];
        swift_beginAccess();
        v127 = *v126;
        v128 = sub_18BC1E1A8();
        v127(v128);
        v130 = v129;

        if (v130)
        {
          v131 = sub_18BC20B98();
        }

        else
        {
          v131 = 0;
        }

        v55 = v175;
      }

      else
      {
        v131 = 0;
      }

      [v55 setTitle_];

      sub_18BA9CB30();
      sub_18BA9AA44();
      sub_18BA9ACB8();
      sub_18BA9CDF0();
LABEL_85:
      v158(v165, v47);
      v156 = *(v163 + 8);
      v156(v177, v121);
      return (v156)(v125, v121);
    }

    v166 = *&v196[0] != v193[0];
    v54 = 0;
    v170 = v173 + 32;
    v160 = &v194[6] + 8;
    v161 = &v191;
    v167 = (v169 + 8);
    v162 = (&v196[6] + 8);
    v55 = v175;
    v56 = v180;
    v169 = xmmword_18BC3E410;
    while (1)
    {
      memcpy(v201, (v170 + 408 * v54), 0x198uLL);
      v57 = *&v55[v179];
      memcpy(v196, v201, 0x198uLL);
      v58 = v57;
      sub_18BAA21B4(v201, v193);
      sub_18BC1FDE8();

      v59 = sub_18BC1FE38();
      memcpy(v196, v201, 0x198uLL);
      v60 = sub_18BC1FAC8();
      sub_18BC1FE78();
      memcpy(v199, &v201[64], 0x128uLL);
      if (sub_18B81CA10(v199) == 1)
      {
        v61 = *(v59 + 16);
        if (v61 != *(v60 + 16))
        {
          goto LABEL_26;
        }

        if (!v61 || v59 == v60)
        {
LABEL_29:
          sub_18BAA2210(v201);

          v72 = *v167;
          (*v167)(v181, v5);
          result = (v72)(v182, v5);
          v55 = v175;
        }

        else
        {
          v62 = (v60 + 128);
          v63 = (v59 + 128);
          while (1)
          {
            v64 = *(v63 - 1) == *(v62 - 1) && *v63 == *v62;
            if (!v64 && (sub_18BC21FD8() & 1) == 0)
            {
              break;
            }

            v62 += 37;
            v63 += 37;
            if (!--v61)
            {
              goto LABEL_29;
            }
          }

LABEL_26:

          sub_18BAA2264(v193);
          memcpy(v196, v193, 0x128uLL);
          v65 = v181;
          sub_18BC1FE48();

          v55 = v175;
          v66 = *(v175 + v179);
          memcpy(v196, v201, 0x198uLL);
          v67 = v66;
          sub_18BC1FDD8();

          v68 = *v167;
          (*v167)(v65, v5);
          v68(v182, v5);
          result = sub_18BAA2210(v201);
          v166 = 1;
        }

        v73 = v173;
        goto LABEL_53;
      }

      v69 = v199[33];
      if (v199[33])
      {
        v70 = v199[34];
        sub_18B7CA054(&v201[64], v196, &qword_1EA9D7E00, &qword_18BC49FE8);
        v71 = sub_18B824D48(v69, v70);
        LODWORD(v176) = v69(v71);
        sub_18B7B171C(v69, v70);
      }

      else
      {
        memcpy(v196, &v201[64], 0x128uLL);
        sub_18BAA2054(v196, v193);
        LODWORD(v176) = 0;
      }

      if (*(v59 + 16))
      {
        memcpy(v193, (v59 + 32), 0x128uLL);
        memmove(v196, (v59 + 32), 0x128uLL);
        CGRectMake();
        sub_18BAA2054(v193, v198);
        memcpy(v200, v196, 0x128uLL);
      }

      else
      {
        sub_18BAA2264(v200);
      }

      memcpy(v197, v199, sizeof(v197));
      CGRectMake();
      memcpy(v196, v200, 0x128uLL);
      memcpy(&v196[18] + 8, v197, 0x128uLL);
      memcpy(v198, v200, 0x128uLL);
      if (sub_18B81CA10(v198) == 1)
      {
        break;
      }

      memcpy(v195, v196, sizeof(v195));
      v74 = v195[11];
      v75 = v195[12];
      memcpy(v193, &v196[18] + 8, 0x128uLL);
      if (sub_18B81CA10(v193) == 1)
      {
        v194[2] = v196[2];
        v194[3] = v196[3];
        v194[4] = v196[4];
        v194[0] = v196[0];
        v194[1] = v196[1];
        *&v194[5] = *&v196[5];
        *(&v194[5] + 1) = v74;
        *&v194[6] = v75;
        v76 = v162;
        v77 = *v162;
        v78 = v162[1];
        v79 = v162[3];
        v80 = v160;
        *(v160 + 2) = v162[2];
        v80[3] = v79;
        *v80 = v77;
        v80[1] = v78;
        v81 = v76[4];
        v82 = v76[5];
        v83 = v76[7];
        v80[6] = v76[6];
        v80[7] = v83;
        v80[4] = v81;
        v80[5] = v82;
        v84 = v76[8];
        v85 = v76[9];
        v86 = v76[11];
        v80[10] = v76[10];
        v80[11] = v86;
        v80[8] = v84;
        v80[9] = v85;
        sub_18B7CA054(&v201[64], v192, &qword_1EA9D7E00, &qword_18BC49FE8);
        sub_18B7CA054(&v201[64], v192, &qword_1EA9D7E00, &qword_18BC49FE8);
        sub_18B7CA054(v195, v192, &qword_1EA9D7E00, &qword_18BC49FE8);
        sub_18BAA2294(v194);
        goto LABEL_41;
      }

      memcpy(v194, &v196[18] + 8, 0x128uLL);
      if (__PAIR128__(v75, v74) == *(&v194[5] + 8))
      {
        sub_18B7CA054(&v201[64], v192, &qword_1EA9D7E00, &qword_18BC49FE8);
        sub_18B7CA054(&v201[64], v192, &qword_1EA9D7E00, &qword_18BC49FE8);
        sub_18B7CA054(v195, v192, &qword_1EA9D7E00, &qword_18BC49FE8);
        sub_18B988BAC(v194, &qword_1EA9D7E00, &qword_18BC49FE8);
        v185 = v196[2];
        v186 = v196[3];
        v187 = v196[4];
        v183 = v196[0];
        v184 = v196[1];
        v188 = *&v196[5];
        v189 = v74;
        v190 = v75;
        v87 = v161;
        v88 = v162;
        v89 = *v162;
        v90 = v162[1];
        v91 = v162[3];
        *(v161 + 2) = v162[2];
        *(v87 + 3) = v91;
        *v87 = v89;
        *(v87 + 1) = v90;
        v92 = v88[4];
        v93 = v88[5];
        v94 = v88[7];
        *(v87 + 6) = v88[6];
        *(v87 + 7) = v94;
        *(v87 + 4) = v92;
        *(v87 + 5) = v93;
        v95 = v88[8];
        v96 = v88[9];
        v97 = v88[11];
        *(v87 + 10) = v88[10];
        *(v87 + 11) = v97;
        *(v87 + 8) = v95;
        *(v87 + 9) = v96;
        sub_18BAA2294(&v183);
        memcpy(v192, v196, sizeof(v192));
        sub_18B988BAC(v192, &qword_1EA9D7E00, &qword_18BC49FE8);
LABEL_46:
        memcpy(v196, v199, 0x128uLL);
        if ((v176 ^ sub_18BC1FE28()))
        {
          goto LABEL_42;
        }

        goto LABEL_47;
      }

      v98 = sub_18BC21FD8();
      sub_18B7CA054(&v201[64], v192, &qword_1EA9D7E00, &qword_18BC49FE8);
      sub_18B7CA054(&v201[64], v192, &qword_1EA9D7E00, &qword_18BC49FE8);
      sub_18B7CA054(v195, v192, &qword_1EA9D7E00, &qword_18BC49FE8);
      sub_18B988BAC(v194, &qword_1EA9D7E00, &qword_18BC49FE8);
      v185 = v196[2];
      v186 = v196[3];
      v187 = v196[4];
      v183 = v196[0];
      v184 = v196[1];
      v188 = *&v196[5];
      v189 = v74;
      v190 = v75;
      v99 = v161;
      v100 = v162;
      v101 = *v162;
      v102 = v162[1];
      v103 = v162[3];
      *(v161 + 2) = v162[2];
      *(v99 + 3) = v103;
      *v99 = v101;
      *(v99 + 1) = v102;
      v104 = v100[4];
      v105 = v100[5];
      v106 = v100[7];
      *(v99 + 6) = v100[6];
      *(v99 + 7) = v106;
      *(v99 + 4) = v104;
      *(v99 + 5) = v105;
      v107 = v100[8];
      v108 = v100[9];
      v109 = v100[11];
      *(v99 + 10) = v100[10];
      *(v99 + 11) = v109;
      *(v99 + 8) = v107;
      *(v99 + 9) = v108;
      sub_18BAA2294(&v183);
      memcpy(v192, v196, sizeof(v192));
      sub_18B988BAC(v192, &qword_1EA9D7E00, &qword_18BC49FE8);
      if (v98)
      {
        goto LABEL_46;
      }

      if (v176)
      {
LABEL_42:

        goto LABEL_49;
      }

LABEL_47:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4D10, &qword_18BC42A10);
      v110 = swift_allocObject();
      *(v110 + 16) = v169;
      memcpy((v110 + 32), v199, 0x128uLL);
      v193[0] = v110;
      sub_18B7CA054(&v201[64], v196, &qword_1EA9D7E00, &qword_18BC49FE8);
      v111 = sub_18BC1E3F8();
      sub_18BA0218C(v111);
      v112 = sub_18B98E558(v59, v193[0]);

      if (v112)
      {
        sub_18B988BAC(&v201[64], &qword_1EA9D7E00, &qword_18BC49FE8);
        sub_18BAA2210(v201);

        sub_18B988BAC(&v201[64], &qword_1EA9D7E00, &qword_18BC49FE8);
        v5 = v168;
        v113 = *v167;
        (*v167)(v181, v168);
        result = (v113)(v182, v5);
        v55 = v175;
        v73 = v173;
        v56 = v180;
        goto LABEL_53;
      }

LABEL_49:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4D10, &qword_18BC42A10);
      v114 = swift_allocObject();
      *(v114 + 16) = v169;
      memcpy((v114 + 32), v199, 0x128uLL);
      sub_18BAA2264(v194);
      memcpy(v196, v194, 0x128uLL);
      memcpy(v195, &v201[64], sizeof(v195));
      sub_18BAA2054(v195, v193);
      v5 = v168;
      v115 = v181;
      sub_18BC1FE48();

      memcpy(v196, v197, 0x128uLL);
      sub_18BC1FE48();

      memcpy(v193, v196, 0x128uLL);
      sub_18B988BAC(v193, &qword_1EA9D7E00, &qword_18BC49FE8);
      if (v176)
      {
        v116 = swift_allocObject();
        *(v116 + 16) = v169;
        memcpy((v116 + 32), v199, 0x128uLL);
        memcpy(v196, &v201[64], 0x128uLL);
        sub_18BAA2054(v196, v192);
        sub_18BC1FE58();
      }

      else
      {
        v117 = swift_allocObject();
        *(v117 + 16) = v169;
        memcpy((v117 + 32), v199, 0x128uLL);
        memcpy(v196, &v201[64], 0x128uLL);
        sub_18BAA2054(v196, v192);
        sub_18BC1FE68();
      }

      v56 = v180;
      v73 = v173;
      v55 = v175;
      v118 = *(v175 + v179);
      memcpy(v196, v201, 0x198uLL);
      v119 = v118;
      sub_18BC1FDD8();

      sub_18B988BAC(&v201[64], &qword_1EA9D7E00, &qword_18BC49FE8);
      v120 = *v167;
      (*v167)(v115, v5);
      v120(v182, v5);
      result = sub_18BAA2210(v201);
      v166 = 1;
LABEL_53:
      if (++v54 == v171)
      {
        v121 = v56;

        v47 = v164;
        if (v166)
        {
          goto LABEL_59;
        }

LABEL_74:
        sub_18BA9ACB8();
        sub_18BA9AA44();
        v147 = sub_18BA982D8();
        v147[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout_scrollLockActive] = 0;
        v148 = &v147[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController6Layout_savedContentOffset];
        *v148 = 0;
        *(v148 + 1) = 0;
        v148[16] = 1;

        v149 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_showsNavigationTitle;
        swift_beginAccess();
        v125 = v178;
        if (v55[v149] == 1)
        {
          v150 = &v55[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_titleProvider];
          swift_beginAccess();
          v151 = *v150;
          v152 = sub_18BC1E1A8();
          v151(v152);
          v154 = v153;

          if (v154)
          {
            v155 = sub_18BC20B98();
          }

          else
          {
            v155 = 0;
          }

          v55 = v175;
        }

        else
        {
          v155 = 0;
        }

        [v55 setTitle_];

        goto LABEL_85;
      }

      if (v54 >= *(v73 + 16))
      {
        __break(1u);
        goto LABEL_87;
      }
    }

    memcpy(v193, &v196[18] + 8, 0x128uLL);
    if (sub_18B81CA10(v193) != 1)
    {
      memcpy(v195, &v201[64], sizeof(v195));
      sub_18B7CA054(&v201[64], v194, &qword_1EA9D7E00, &qword_18BC49FE8);
      sub_18BAA2054(v195, v194);
LABEL_41:
      memcpy(v193, v196, sizeof(v193));
      sub_18B988BAC(v193, &qword_1EA9D7E08, &unk_18BC49FF0);
      if (v176)
      {
        goto LABEL_42;
      }

      goto LABEL_47;
    }

    memcpy(v194, v196, 0x128uLL);
    memcpy(v195, &v201[64], sizeof(v195));
    sub_18B7CA054(&v201[64], v192, &qword_1EA9D7E00, &qword_18BC49FE8);
    sub_18BAA2054(v195, v192);
    sub_18B988BAC(v194, &qword_1EA9D7E00, &qword_18BC49FE8);
    goto LABEL_46;
  }

  v132 = &unk_1EA9D7DE8;
  v179 = xmmword_18BC3E410;
  while (1)
  {
    v137 = sub_18BC211C8();
    memcpy(v193, v138, 0x1AAuLL);
    sub_18B7CA054(v193, v201, v132, &qword_18BC49FD0);
    v137(v199, 0);
    sub_18BC21168();
    memcpy(v196, v193, 0x1AAuLL);
    if (sub_18BAA21AC(v196) != 1)
    {
      break;
    }

    CGRectMake();
    v134 = v133;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7DF0, &qword_18BC49FD8);
    v135 = swift_allocObject();
    *(v135 + 16) = v179;
    memcpy((v135 + 32), (v134 + 8), 0x198uLL);
    memcpy(v201, v193, 0x1AAuLL);
    CGRectMake();
    sub_18B7CA054(v136, v199, &qword_1EA9D7DF8, &qword_18BC49FE0);
    sub_18BC1FA98();

    sub_18B988BAC(v193, v132, &qword_18BC49FD0);
LABEL_64:
    sub_18BC21158();
    if (*&v10[v49] == *&v196[0])
    {
      goto LABEL_13;
    }
  }

  v139 = v132;
  CGRectMake();
  v142 = v140 + 1;
  v141 = *v140;
  if (v141 == sub_18BC1FAE8())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7DF0, &qword_18BC49FD8);
    v143 = swift_allocObject();
    *(v143 + 16) = v179;
    memcpy((v143 + 32), v142, 0x198uLL);
    memcpy(v201, v193, 0x1AAuLL);
    CGRectMake();
    sub_18B7CA054(v144, v199, &qword_1EA9D7DF8, &qword_18BC49FE0);
    sub_18BC1FA88();
    v132 = v139;
    sub_18B988BAC(v193, v139, &qword_18BC49FD0);

LABEL_71:
    v47 = v164;
    v5 = v168;
    goto LABEL_64;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7DF0, &qword_18BC49FD8);
  v145 = swift_allocObject();
  *(v145 + 16) = v179;
  memcpy((v145 + 32), v142, 0x198uLL);
  memcpy(v201, v193, 0x1AAuLL);
  CGRectMake();
  sub_18B7CA054(v146, v199, &qword_1EA9D7DF8, &qword_18BC49FE0);
  result = sub_18BC1FB18();
  if ((v141 & 0x8000000000000000) == 0)
  {
    if (v141 >= result[2])
    {
      goto LABEL_88;
    }

    memcpy(v200, &result[51 * v141 + 4], sizeof(v200));
    sub_18BAA21B4(v200, v199);

    memcpy(v198, v200, sizeof(v198));
    sub_18BC1FAB8();

    v132 = v139;
    sub_18B988BAC(v193, v139, &qword_18BC49FD0);
    memcpy(v199, v198, 0x198uLL);
    sub_18BAA2210(v199);
    goto LABEL_71;
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

void sub_18BA9CA48(char a1, char a2)
{
  v5 = [v2 view];
  v10 = v5;
  if ((a2 & 1) == 0)
  {
    if (v5)
    {
      v7 = objc_opt_self();
      v8 = &selRef_systemGroupedBackgroundColor;
      if ((a1 & 1) == 0)
      {
        v8 = &selRef_clearColor;
      }

      v9 = [v7 *v8];
      [v10 setBackgroundColor_];

      v6 = v9;
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    return;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  [v5 safari:a1 & 1 setGlassBackgroundEnabled:?];
  v6 = v10;
LABEL_8:
}

void sub_18BA9CB30()
{
  v1 = sub_18BC1EE48();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = sub_18BA947A4();
  v9 = [v8 searchBar];

  v10 = (v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_titleProvider);
  swift_beginAccess();
  v11 = *v10;
  v12 = sub_18BC1E1A8();
  v13 = v11(v12);
  v15 = v14;

  sub_18BC1EE38();
  if (v15)
  {
    sub_18BC1EE28();
    (*(v2 + 8))(v7, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5510, &unk_18BC4AB60);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_18BC3E410;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_18B9EEA2C();
    *(v16 + 32) = v13;
    *(v16 + 40) = v15;
    sub_18BC20BA8();
  }

  else
  {
    sub_18BC1EE38();
    sub_18BC1EE18();
    v17 = *(v2 + 8);
    v17(v4, v1);
    v17(v7, v1);
  }

  v18 = sub_18BC20B98();

  [v9 setPlaceholder_];
}

uint64_t sub_18BA9CDF0()
{
  v1 = v0;
  v2 = sub_18BC1FCD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7FF8, &unk_18BC4A130);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v16 = *(v3 + 56);
  v16(&v30 - v14, 1, 1, v2, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D7D70, &qword_18BC49FA8);
  if (!sub_18BC1FA78())
  {
    v30 = v5;
    v31 = v0;
    v17 = sub_18BA947A4();
    v18 = [v17 searchBar];

    v19 = [v18 text];
    if (v19)
    {
      v20 = sub_18BC20BD8();
      v22 = v21;

      v19 = (v20 & 0xFFFFFFFFFFFFLL);
    }

    else
    {
      v22 = 0xE000000000000000;
    }

    v23 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = v19;
    }

    v5 = v30;
    if (v23)
    {
      sub_18BC1FCC8();
      sub_18B988BAC(v15, &qword_1EA9D7FF8, &unk_18BC4A130);
      (v16)(v11, 0, 1, v2);
      v1 = v31;
    }

    else
    {
      v1 = v31;
      v24 = (v31 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_explanationConfigurationProvider);
      swift_beginAccess();
      v25 = *v24;
      v26 = sub_18BC1E1A8();
      v25(v26);

      sub_18B988BAC(v15, &qword_1EA9D7FF8, &unk_18BC4A130);
    }

    sub_18BAA4504(v11, v15);
  }

  sub_18B7CA054(v15, v8, &qword_1EA9D7FF8, &unk_18BC4A130);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_18B988BAC(v8, &qword_1EA9D7FF8, &unk_18BC4A130);
    [*(v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_explanationView) setHidden_];
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v27 = *(v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_explanationView);
    v32[3] = v2;
    v32[4] = MEMORY[0x1E69DC1D0];
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v32);
    (*(v3 + 16))(boxed_opaque_existential_0Tm, v5, v2);
    sub_18BC21478();
    [v27 setHidden_];
    (*(v3 + 8))(v5, v2);
  }

  return sub_18B988BAC(v15, &qword_1EA9D7FF8, &unk_18BC4A130);
}

id sub_18BA9D1E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_18BA95F78();
  sub_18BC1FD18();

  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v24, __src, sizeof(v24));
  if (sub_18B81CA10(v24) == 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = (v3 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_canDragItem);
  swift_beginAccess();
  v8 = *v7;
  memcpy(__src, v24, sizeof(__src));
  sub_18BC1E1A8();
  LOBYTE(v8) = v8(__src);

  if ((v8 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (v24[9])
  {
    v9 = v24[9];
    if ([v9 isFolder] && (a2 & 1) == 0)
    {
      v6 = MEMORY[0x1E69E7CC0];
LABEL_17:

      goto LABEL_18;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18BC3E3E0;
    result = [objc_opt_self() safari:v9 itemWithBookmark:?];
    v15 = *(v3 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_collectionView);
    if (v15)
    {
      v16 = result;
      v17 = v15;
      v18 = sub_18BC1ED68();
      v19 = [v17 cellForItemAtIndexPath_];

      if (v19)
      {
        v20 = [v19 contentView];
      }

      else
      {
        v20 = 0;
      }

      v21 = [v16 safari:v20 itemWithCustomBackgroundForPreviewView:?];

      *(v6 + 32) = v21;
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_21;
  }

  v10 = v24[10];
  if (!v24[10])
  {
LABEL_11:
    v6 = MEMORY[0x1E69E7CC0];
LABEL_18:
    sub_18B988BAC(__dst, &qword_1EA9D7E00, &qword_18BC49FE8);
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18BC3E3E0;
  v9 = v10;
  result = [v9 url];
  if (result)
  {
    v12 = result;
    v13 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) initWithObject_];

    v14 = [objc_allocWithZone(MEMORY[0x1E69DC990]) initWithItemProvider_];
    *(v6 + 32) = v14;
    goto LABEL_17;
  }

LABEL_21:
  __break(1u);
  return result;
}

double sub_18BA9D64C()
{
  memcpy(__dst, (v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem), sizeof(__dst));
  v1 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 64);
  v2 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 32);
  v56 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 48);
  v57 = v1;
  v3 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 64);
  v58 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 80);
  v59 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 96);
  v4 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem);
  v5 = v4;
  v6 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 32);
  v54 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 16);
  v55 = v6;
  v7 = __dst[13];
  v8 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 264);
  v52 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 280);
  v53 = v4;
  v9 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 264);
  v50 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 248);
  v51 = v9;
  v10 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 232);
  v48 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 216);
  v49 = v10;
  v11 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 200);
  v46 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 184);
  v47 = v11;
  v12 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 168);
  v13 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 136);
  v42 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 120);
  v43 = v13;
  v44 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 152);
  v45 = v12;
  v14 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 80);
  v61[4] = v3;
  v61[5] = v14;
  v15 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 96);
  v61[0] = v5;
  v61[1] = v54;
  v61[2] = v2;
  v61[3] = v56;
  v16 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 280);
  v17 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 232);
  v18 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 248);
  v74 = v8;
  v75 = v16;
  v19 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 120);
  v20 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 136);
  v67 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 152);
  v66 = v20;
  v65 = v19;
  v21 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 168);
  v22 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 184);
  v23 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 200);
  v71 = *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem + 216);
  v70 = v23;
  v69 = v22;
  v68 = v21;
  v73 = v18;
  v72 = v17;
  v62 = v15;
  v63 = __dst[13];
  v64 = __dst[14];
  v27[4] = v57;
  v27[5] = v58;
  v27[0] = v53;
  v27[1] = v54;
  v27[2] = v55;
  v27[3] = v56;
  v28 = v59;
  v29 = __dst[13];
  v30 = __dst[14];
  v40 = v51;
  v41 = v52;
  v33 = v44;
  v32 = v13;
  v31 = v42;
  v37 = v48;
  v36 = v47;
  v35 = v46;
  v34 = v45;
  v39 = v50;
  v38 = v49;
  if (sub_18B81CA10(v61) == 1)
  {
    sub_18B7CA054(__dst, v26, &qword_1EA9D7E00, &qword_18BC49FE8);
    sub_18B988BAC(v27, &qword_1EA9D7E00, &qword_18BC49FE8);
  }

  else
  {
    sub_18B7CA054(__dst, v26, &qword_1EA9D7E00, &qword_18BC49FE8);
    sub_18BC1E1A8();
    v25 = sub_18B988BAC(v27, &qword_1EA9D7E00, &qword_18BC49FE8);
    v7(v25);
  }

  return result;
}

void *sub_18BA9D8F8(void *a1)
{
  v53 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v43 - v3;
  v5 = sub_18BC1EDD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D7D70, &qword_18BC49FA8);
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v13 = &v43 - v12;
  result = [v1 isViewLoaded];
  if (!result)
  {
    return result;
  }

  v44 = v4;
  v45 = v8;
  v51 = v10;
  v47 = v6;
  v48 = v5;
  v46 = v1;
  v15 = sub_18BA95F78();
  sub_18BC1FDF8();

  v49 = v9;
  v50 = v13;
  result = sub_18BC1FAD8();
  v16 = result;
  v52 = result[2];
  if (!v52)
  {
LABEL_15:

    return (*(v51 + 8))(v50, v49);
  }

  v17 = 0;
  v18 = 4;
  v19 = &selRef_performSearchUsingQuery_;
  while (1)
  {
    if (v17 >= v16[2])
    {
      __break(1u);
      goto LABEL_23;
    }

    memcpy(v55, &v16[v18], 0x128uLL);
    v20 = v55[9];
    if (v55[9])
    {
      sub_18BAA2054(v55, v54);
      v21 = [v20 v19[493]];
      v20 = sub_18BC20BD8();
      v23 = v22;
    }

    else
    {
      sub_18BAA2054(v55, v54);
      v23 = 0;
    }

    v24 = v19;
    v25 = [v53 v19[493]];
    v26 = sub_18BC20BD8();
    v28 = v27;

    if (!v23)
    {

      goto LABEL_5;
    }

    if (v20 == v26 && v23 == v28)
    {
      break;
    }

    v29 = sub_18BC21FD8();

    if (v29)
    {
      goto LABEL_17;
    }

LABEL_5:
    result = sub_18BAA2294(v55);
    ++v17;
    v18 += 37;
    v19 = v24;
    if (v52 == v17)
    {
      goto LABEL_15;
    }
  }

LABEL_17:

  v30 = v46;
  v31 = *&v46[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController____lazy_storage___collectionDataSource];
  memcpy(v54, v55, sizeof(v54));
  v32 = v31;
  v33 = v44;
  sub_18BC1FE08();

  v35 = v47;
  v34 = v48;
  v36 = (*(v47 + 48))(v33, 1, v48);
  v38 = v50;
  v37 = v51;
  v39 = v45;
  if (v36 == 1)
  {
    (*(v51 + 8))(v50, v49);
    sub_18BAA2294(v55);
    return sub_18B988BAC(v33, &unk_1EA9D5BD0, &qword_18BC42210);
  }

  result = (*(v35 + 32))(v45, v33, v34);
  v40 = *&v30[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_collectionView];
  if (v40)
  {
    v41 = v40;
    v42 = sub_18BC1ED68();
    [v41 selectItemAtIndexPath:v42 animated:1 scrollPosition:2];
    sub_18BAA2294(v55);

    (*(v35 + 8))(v39, v34);
    return (*(v37 + 8))(v38, v49);
  }

LABEL_23:
  __break(1u);
  return result;
}

id SFBookmarksCollectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_18BC20B98();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SFBookmarksCollectionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFBookmarksCollectionViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SFBookmarksCollectionViewController.collectionView(_:shouldSelectItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_18BA95F78();
  sub_18BC1FD18();

  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v16, __src, sizeof(v16));
  if (sub_18B81CA10(v16) == 1)
  {
    goto LABEL_12;
  }

  v6 = sub_18BC1ED68();
  v7 = [a1 cellForItemAtIndexPath_];

  if (!v7)
  {
LABEL_11:
    sub_18B988BAC(__dst, &qword_1EA9D7E00, &qword_18BC49FE8);
LABEL_12:
    v12 = 0;
    return v12 & 1;
  }

  if (([v3 isEditing] & 1) == 0)
  {
    if (v16[9])
    {
      v12 = [v16[9] isReadingListItem];
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  ObjectType = swift_getObjectType();
  v9 = swift_conformsToProtocol2();
  if (!v9)
  {
    sub_18B988BAC(__dst, &qword_1EA9D7E00, &qword_18BC49FE8);
    swift_getObjectType();
    v12 = swift_conformsToProtocol2() != 0;

    return v12 & 1;
  }

  v10 = *(v9 + 128);
  v11 = v9;
  v7 = v7;
  v12 = v10(ObjectType, v11);

LABEL_8:
  sub_18B988BAC(__dst, &qword_1EA9D7E00, &qword_18BC49FE8);
  return v12 & 1;
}

void SFBookmarksCollectionViewController.collectionView(_:didSelectItemAt:)(uint64_t a1, uint64_t a2)
{
  if ([v2 isEditing])
  {

    sub_18BA9AA44();
  }

  else
  {
    v3 = sub_18BA95F78();
    sub_18BC1FD18();

    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v6, __src, sizeof(v6));
    if (sub_18B81CA10(v6) != 1)
    {
      (v6[13])();
      sub_18B988BAC(__dst, &qword_1EA9D7E00, &qword_18BC49FE8);
    }
  }
}

void SFBookmarksCollectionViewController.collectionView(_:didDeselectItemAt:)()
{
  if ([v0 isEditing])
  {

    sub_18BA9AA44();
  }
}

uint64_t SFBookmarksCollectionViewController.collectionView(_:performPrimaryActionForItemAt:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_18BA95F78();
  sub_18BC1FD18();

  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v6, __src, sizeof(v6));
  result = sub_18B81CA10(v6);
  if (result != 1)
  {
    (v6[13])();
    return sub_18B988BAC(__dst, &qword_1EA9D7E00, &qword_18BC49FE8);
  }

  return result;
}

uint64_t SFBookmarksCollectionViewController.collectionView(_:shouldBeginMultipleSelectionInteractionAt:)(void *a1)
{
  v2 = sub_18BC1ED68();
  v3 = [a1 cellForItemAtIndexPath_];

  if (v3)
  {
    ObjectType = swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (v5)
    {
      v6 = *(v5 + 128);
      v7 = v5;
      v8 = v3;
      v9 = v6(ObjectType, v7);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void (*SFBookmarksCollectionViewController.collectionView(_:targetIndexPathForMoveOfItemFromOriginalIndexPath:atCurrentIndexPath:toProposedIndexPath:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>))(_BYTE *, void)
{
  v4 = v3;
  v21 = a1;
  v24 = a3;
  v6 = sub_18BC1EDD8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v7;
  v23 = v11;
  v20 = *(v7 + 16);
  v20(v10, a2, v8);
  v12 = sub_18BA95F78();
  sub_18BC1FD18();

  v13 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController____lazy_storage___collectionDataSource;
  memcpy(v28, v29, sizeof(v28));
  if (sub_18B81CA10(v28) == 1)
  {
LABEL_10:
    memcpy(v27, v29, sizeof(v27));
    if (sub_18B81CA10(v27) == 1)
    {
      memcpy(v26, v29, sizeof(v26));
      sub_18B988BAC(v26, &qword_1EA9D7E00, &qword_18BC49FE8);
      v18 = v23;
      (*(v22 + 8))(v10, v23);
      return (v20)(v24, v21, v18);
    }

    else
    {
      memcpy(v26, v29, sizeof(v26));
      sub_18B988BAC(v26, &qword_1EA9D7E00, &qword_18BC49FE8);
      return (*(v22 + 32))(v24, v10, v23);
    }
  }

  else
  {
    while (1)
    {
      memcpy(v27, v29, sizeof(v27));
      result = sub_18B81CA10(v27);
      if (result == 1)
      {
        break;
      }

      v15 = v27[9];
      if (v27[9] && [v27[9] isDeletable] && objc_msgSend(v15, sel_isEditable) && !objc_msgSend(v15, sel_specialID) && (objc_msgSend(v15, sel_isReadingListItem) & 1) == 0)
      {
        goto LABEL_10;
      }

      result = sub_18BC1EDA8();
      if (__OFADD__(*v16, 1))
      {
        __break(1u);
        break;
      }

      ++*v16;
      result(v26, 0);
      v17 = *(v4 + v13);
      sub_18BC1FD18();

      memcpy(v26, v29, sizeof(v26));
      sub_18B988BAC(v26, &qword_1EA9D7E00, &qword_18BC49FE8);
      memcpy(v29, v25, sizeof(v29));
      memcpy(v28, v29, sizeof(v28));
      if (sub_18B81CA10(v28) == 1)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

UIContextMenuConfiguration_optional __swiftcall SFBookmarksCollectionViewController.collectionView(_:contextMenuConfigurationForItemsAt:point:)(UICollectionView *_, Swift::OpaquePointer contextMenuConfigurationForItemsAt, CGPoint point)
{
  v3 = sub_18BAA2708(contextMenuConfigurationForItemsAt._rawValue);
  result.value.super.isa = v3;
  result.is_nil = v4;
  return result;
}

id sub_18BA9F290(uint64_t a1, char a2)
{
  v2 = *(a1 + 216);
  if (!v2)
  {
    return 0;
  }

  v4 = v2();
  if (!v4)
  {
    return v4;
  }

  type metadata accessor for SFBookmarksCollectionViewController(0);
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    return v4;
  }

  v6 = v5;
  v7 = v4;
  result = [v6 view];
  v9 = result;
  if (a2)
  {
    if (result)
    {
      [result safari:1 setGlassBackgroundEnabled:?];
LABEL_10:

      return v4;
    }

    __break(1u);
  }

  else if (result)
  {
    v10 = [objc_opt_self() systemGroupedBackgroundColor];
    [v9 setBackgroundColor_];

    v9 = v10;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_18BA9F424(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SFBookmarksCollectionViewController(0);
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    ObjectType = swift_getObjectType();
    (*(a5 + 8))(a1, ObjectType, a5);
    return;
  }

  v10 = v9;
  v17 = a1;
  v11 = [v10 view];
  v12 = v11;
  if ((a2 & 1) == 0)
  {
    if (v11)
    {
      v14 = [objc_opt_self() clearColor];
      [v12 setBackgroundColor_];

      v12 = v14;
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
    return;
  }

  if (!v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  [v11 safari:0 setGlassBackgroundEnabled:?];
LABEL_8:

  v15 = [a3 navigationController];
  if (v15)
  {
    v16 = v15;
    [v15 pushViewController:v10 animated:1];
  }
}

uint64_t SFBookmarksCollectionViewController.collectionView(_:contextMenuConfiguration:dismissalPreviewForItemAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_18BA95F78();
  sub_18BC1FD18();

  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v7, __src, sizeof(v7));
  if (sub_18B81CA10(v7) != 1)
  {
    if (v7[31])
    {
      (v7[31])();
    }

    sub_18B988BAC(__dst, &qword_1EA9D7E00, &qword_18BC49FE8);
  }

  return 0;
}

Swift::Void __swiftcall SFBookmarksCollectionViewController.scrollViewDidEndDragging(_:willDecelerate:)(UIScrollView *_, Swift::Bool willDecelerate)
{
  if (!willDecelerate)
  {
    v3 = [v2 navigationController];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 navigationBar];

      [v5 sizeToFit];
    }
  }
}

Swift::Void __swiftcall SFBookmarksCollectionViewController.scrollViewDidEndDecelerating(_:)(UIScrollView *a1)
{
  v2 = [v1 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 navigationBar];

    [v4 sizeToFit];
  }
}

uint64_t SFBookmarksCollectionViewController.collectionView(_:canHandle:)(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_canHandleDropSession);
  swift_beginAccess();
  v5 = *v4;
  sub_18BC1E1A8();
  LOBYTE(a2) = v5(a2);

  return a2 & 1;
}

void sub_18BAA004C(void *a1)
{
  v2 = v1;
  v4 = sub_18BC1EDD8();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_collectionView;
  if (!*(v2 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_collectionView))
  {
    goto LABEL_17;
  }

  [a1 locationInView_];
  v12 = *(v2 + v9);
  if (!v12)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = v10;
  v14 = v11;
  [v12 bounds];
  v30.x = v13;
  v30.y = v14;
  if (!CGRectContainsPoint(v31, v30))
  {
    return;
  }

  v15 = sub_18BA95F78();
  v16 = *(v2 + v9);
  if (!v16)
  {
    goto LABEL_19;
  }

  v17 = v15;
  v18 = v16;
  v19 = sub_18BC1FD28();

  if (!v19)
  {
    return;
  }

  v20 = *(v2 + v9);
  if (!v20)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v21 = __OFSUB__(v19, 1);
  v22 = v19 - 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23 = *(v2 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController____lazy_storage___collectionDataSource);
  v24 = v20;
  v25 = sub_18BC1FCF8();

  if (!v25)
  {
    return;
  }

  if (__OFSUB__(v25, 1))
  {
    goto LABEL_16;
  }

  MEMORY[0x18CFFA290](v25 - 1, v22);
  v26 = sub_18BA982D8();
  v27 = sub_18BC1ED68();
  v28 = [v26 layoutAttributesForItemAtIndexPath_];

  if (v28)
  {
    [v28 frame];
    CGRectGetMaxY(v32);
  }

  (*(v5 + 8))(v8, v4);
}

id SFBookmarksCollectionViewController.collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_18BC1EDD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v108 = &v101[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v105 = &v101[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v106 = &v101[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v107 = &v101[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v101[-v16];
  *&v19 = MEMORY[0x1EEE9AC00](v18).n128_u64[0];
  v21 = &v101[-v20];
  v110 = a2;
  [a2 locationInView_];
  v23 = v22;
  v25 = v24;
  sub_18B7CA054(a3, v21, &unk_1EA9D5BD0, &qword_18BC42210);
  v26 = swift_allocObject();
  *(v26 + 2) = v21;
  *(v26 + 3) = a1;
  v26[4] = v23;
  v26[5] = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_18BAA2FC4;
  *(v27 + 24) = v26;
  v114[4] = sub_18B7D1E9C;
  v114[5] = v27;
  v114[0] = MEMORY[0x1E69E9820];
  v114[1] = 1107296256;
  v114[2] = sub_18B7E3BF4;
  v114[3] = &block_descriptor_27;
  v28 = _Block_copy(v114);
  v29 = v114[5];
  v30 = a1;
  sub_18BC1E1A8();

  [v30 performUsingPresentationValues_];
  _Block_release(v28);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    __break(1u);
    goto LABEL_26;
  }

  v104 = v30;
  v109 = v21;
  sub_18B7CA054(v21, v17, &unk_1EA9D5BD0, &qword_18BC42210);
  v29 = *(v7 + 6);
  v30 = v6;
  v21 = v7;
  if (v29(v17, 1, v6) != 1)
  {
    v31 = *(v7 + 4);
    v7 = v108;
    v31(v108, v17, v6);
    v32 = sub_18BA95F78();
    sub_18BC1EDC8();
    sub_18BC1FD38();

    memcpy(v113, v112, sizeof(v113));
    memcpy(v114, v112, sizeof(v114));
    if (sub_18BAA2FD0(v114) == 1)
    {
      (*(v21 + 1))(v7, v6);
      goto LABEL_28;
    }

    v33 = [v110 items];
    sub_18B7B0AC0(0, &qword_1EA9D7CE0, 0x1E69DC990);
    v17 = sub_18BC20D98();

    if (!(v17 >> 62))
    {
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_26:
    if (sub_18BC219A8())
    {
LABEL_8:
      if ((v17 & 0xC000000000000001) != 0)
      {
        v34 = v30;
        v35 = MEMORY[0x18CFFD010](0, v17);
      }

      else
      {
        if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_76;
        }

        v34 = v30;
        v35 = *(v17 + 32);
      }

      v36 = v35;

      v37 = [v36 _sf_localBookmark];
      if (!v37)
      {
        if (LOBYTE(v114[7]) - 1 >= 2)
        {
          v39 = [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation_];

LABEL_24:
          sub_18B988BAC(v113, &qword_1EA9D7E18, &qword_18BC4A000);
          (*(v21 + 1))(v7, v34);
          v40 = v109;
LABEL_64:
          sub_18B988BAC(v40, &unk_1EA9D5BD0, &qword_18BC42210);

          return v39;
        }

LABEL_20:
        sub_18B988BAC(v113, &qword_1EA9D7E18, &qword_18BC4A000);
        v30 = v34;
        (*(v21 + 1))(v7, v34);
        goto LABEL_28;
      }

      v38 = v37;
      if (LOBYTE(v114[7]) > 1u)
      {
        if (LOBYTE(v114[7]) != 2)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (!LOBYTE(v114[7]))
        {
          if (([v37 isFolder] & 1) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_19;
        }

        if ([v37 isFolder])
        {
LABEL_23:
          v39 = [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation_];

          goto LABEL_24;
        }
      }

LABEL_19:

      goto LABEL_20;
    }

LABEL_27:
    (*(v21 + 1))(v7, v30);
    sub_18B988BAC(v113, &qword_1EA9D7E18, &qword_18BC4A000);

    goto LABEL_28;
  }

  sub_18B988BAC(v17, &unk_1EA9D5BD0, &qword_18BC42210);
LABEL_28:
  v41 = v111;
  v42 = &v111[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_dropOperationForSession];
  swift_beginAccess();
  v43 = *v42;
  sub_18BC1E1A8();
  v44 = v43(v110);

  v45 = &v41[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_canReorderBookmarks];
  swift_beginAccess();
  v46 = *v45;
  v47 = sub_18BC1E1A8();
  v48 = v46(v47);

  if (!v44 && (v48 & 1) != 0)
  {
    v39 = [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation_];
    v40 = v109;
    goto LABEL_64;
  }

  v102 = v48;
  v108 = v26;
  v103 = v44;
  v49 = v21;
  v50 = v109;
  v51 = v107;
  sub_18B7CA054(v109, v107, &unk_1EA9D5BD0, &qword_18BC42210);
  v52 = v30;
  v53 = v29(v51, 1, v30);
  sub_18B988BAC(v51, &unk_1EA9D5BD0, &qword_18BC42210);
  if (v53 == 1)
  {
    sub_18BAA004C(v110);
    if (v54)
    {
      v55 = v103;
    }

    else
    {
      v55 = 0;
    }

    v39 = [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation:v55 intent:1];
    v40 = v50;
    goto LABEL_64;
  }

  v56 = sub_18BA95F78();
  v57 = v106;
  sub_18B7CA054(v50, v106, &unk_1EA9D5BD0, &qword_18BC42210);
  v30 = v29;
  result = (v29)(v57, 1, v52);
  if (result == 1)
  {
    goto LABEL_79;
  }

  sub_18BC1FD18();

  v59 = *(v49 + 1);
  v107 = v52;
  (v59)(v57, v52);
  memcpy(v112, v114, 0x128uLL);
  memcpy(v113, v114, 0x128uLL);
  if (sub_18B81CA10(v113) == 1)
  {
LABEL_48:
    v39 = [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation_];
LABEL_63:
    v40 = v50;
    goto LABEL_64;
  }

  if (!v113[9])
  {
    sub_18B988BAC(v112, &qword_1EA9D7E00, &qword_18BC49FE8);
    goto LABEL_48;
  }

  v106 = v59;
  v29 = v113[9];
  v60 = [v110 items];
  sub_18B7B0AC0(0, &qword_1EA9D7CE0, 0x1E69DC990);
  v17 = sub_18BC20D98();

  if (!(v17 >> 62))
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_41;
  }

LABEL_76:
  result = sub_18BC219A8();
LABEL_41:
  v61 = v30;
  v62 = v103;
  v63 = v29;
  if (!result)
  {

    v117 = 0u;
    v118 = 0u;
LABEL_60:
    sub_18B988BAC(&v117, &qword_1EA9D5220, &qword_18BC3FCB0);
    v50 = v109;
    goto LABEL_61;
  }

  v64 = v61;
  if ((v17 & 0xC000000000000001) == 0)
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v65 = *(v17 + 32);
      goto LABEL_45;
    }

    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v65 = MEMORY[0x18CFFD010](0, v17);
LABEL_45:
  v66 = v65;

  v67 = [v66 localObject];

  if (v67)
  {
    sub_18BC218B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v115 = 0u;
    v116 = 0u;
  }

  v117 = v115;
  v118 = v116;
  if (!*(&v116 + 1))
  {
    goto LABEL_60;
  }

  sub_18B7B0AC0(0, &qword_1EA9D7E10, 0x1E69E20F0);
  v68 = swift_dynamicCast();
  v50 = v109;
  if ((v68 & 1) == 0)
  {
LABEL_61:
    v39 = [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation:v62 intent:1];

LABEL_62:
    sub_18B988BAC(v112, &qword_1EA9D7E00, &qword_18BC49FE8);
    goto LABEL_63;
  }

  v69 = v62 != 0;
  v70 = v115;
  v71 = v105;
  if (((v69 | v102) & 1) == 0)
  {
    if (([v63 isFolder] & 1) == 0)
    {
      v97 = [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation_];
      goto LABEL_70;
    }

    if ([v70 isFolder])
    {
      v103 = 0;
    }

    else
    {
      v98 = &v111[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_dropOperationForSessionIgnoringCanReorder];
      swift_beginAccess();
      v111 = v70;
      v99 = *v98;
      sub_18BC1E1A8();
      v100 = v99(v110);
      v70 = v111;
      v103 = v100;
    }
  }

  if (([v63 isFolder] & 1) == 0)
  {
    v96 = objc_allocWithZone(MEMORY[0x1E69DC838]);
    v97 = [v96 initWithDropOperation:v103 intent:1];
LABEL_70:
    v39 = v97;

    goto LABEL_62;
  }

  v111 = v70;
  sub_18B7CA054(v50, v71, &unk_1EA9D5BD0, &qword_18BC42210);
  v72 = v71;
  v73 = v71;
  v74 = v107;
  result = v64(v72, 1, v107);
  if (result != 1)
  {
    v75 = sub_18BC1ED68();
    (v106)(v73, v74);
    v76 = v104;
    v77 = [v104 cellForItemAtIndexPath_];

    if (v77)
    {
      v78 = v77;
      [v78 bounds];
      [v78 convertRect:v76 toCoordinateSpace:?];
      v110 = v79;
      v107 = v80;
      v82 = v81;
      v84 = v83;
      [v78 bounds];
      v86 = v85;
      v88 = v87;
      v90 = v89;
      v92 = v91;

      v120.origin.x = v86;
      v120.origin.y = v88;
      v120.size.width = v90;
      v120.size.height = v92;
      v93 = CGRectGetWidth(v120) * 0.2;
      *&v121.origin.x = v110;
      *&v121.origin.y = v107;
      v121.size.width = v82;
      v121.size.height = v84;
      v122 = CGRectInset(v121, v93, 0.0);
      v119.x = v23;
      v119.y = v25;
      v94 = CGRectContainsPoint(v122, v119);

      if (v94)
      {
        v95 = 2;
      }

      else
      {
        v95 = 1;
      }
    }

    else
    {
      v95 = 1;
    }

    v39 = [objc_allocWithZone(MEMORY[0x1E69DC838]) initWithDropOperation:v103 intent:v95];

    goto LABEL_62;
  }

LABEL_80:
  __break(1u);
  return result;
}

uint64_t sub_18BAA1064(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = [a2 indexPathForItemAtPoint_];
  if (v11)
  {
    v12 = v11;
    sub_18BC1ED88();

    v13 = sub_18BC1EDD8();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  }

  else
  {
    v14 = sub_18BC1EDD8();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  }

  return sub_18B7FD070(v10, a1, &unk_1EA9D5BD0, &qword_18BC42210);
}

Swift::Bool __swiftcall SFBookmarksCollectionViewController.searchBarShouldBeginEditing(_:)(UISearchBar *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_collectionView);
  if (v2)
  {
    v3 = v2;
    if ([v3 isDragging])
    {

      LOBYTE(a1) = 0;
    }

    else
    {
      v4 = [v3 isDecelerating];

      LOBYTE(a1) = v4 ^ 1;
    }
  }

  else
  {
    __break(1u);
  }

  return a1;
}

Swift::Void __swiftcall SFBookmarksCollectionViewController.searchBar(_:textDidChange:)(UISearchBar *_, Swift::String textDidChange)
{
  object = textDidChange._object;
  countAndFlagsBits = textDidChange._countAndFlagsBits;
  v5 = (v2 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_searchTextDidChangeHandler);
  swift_beginAccess();
  v6 = *v5;
  sub_18BC1E1A8();
  v6(countAndFlagsBits, object);
}

Swift::Void __swiftcall SFBookmarksCollectionViewController.searchBarCancelButtonClicked(_:)(UISearchBar *a1)
{
  v2 = sub_18BA947A4();
  v3 = [v2 searchBar];

  [v3 setText_];
  v4 = (v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_searchTextDidChangeHandler);
  swift_beginAccess();
  v5 = *v4;
  sub_18BC1E1A8();
  v5(0, 0);
}

id sub_18BAA16E0(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = sub_18BC1FCD8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = *a1;
  v11 = *(a1 + 4);
  *&v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_collectionView] = 0;
  v12 = &v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_delegate];
  *&v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_explanationView;
  sub_18B7B0AC0(0, &qword_1EA9D80A8, 0x1E69DC8D0);
  sub_18BC1FC98();
  *&v6[v13] = sub_18BC21488();
  v14 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem;
  sub_18BAA2264(v37);
  memcpy(&v6[v14], v37, 0x128uLL);
  v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_needsContentOffsetUpdate] = 0;
  *&v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController____lazy_storage___searchController] = 0;
  v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_showsNavigationTitle] = 1;
  v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_supportsSearch] = 0;
  v15 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController__currentUIState;
  v16 = type metadata accessor for SFBookmarksUIState(0);
  (*(*(v16 - 8) + 56))(&v6[v15], 1, 1, v16);
  v17 = &v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_checkContentExistence];
  *v17 = sub_18B7E9C50;
  v17[1] = 0;
  v18 = &v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_canDragItem];
  *v18 = sub_18B7E9C50;
  v18[1] = 0;
  v19 = &v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_canHandleDropSession];
  *v19 = sub_18B7E9C50;
  v19[1] = 0;
  v20 = &v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_canReorderBookmarks];
  *v20 = sub_18B814EE4;
  v20[1] = 0;
  v21 = &v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_dropOperationForSession];
  *v21 = sub_18B8390A8;
  v21[1] = 0;
  v22 = &v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_dropOperationForSessionIgnoringCanReorder];
  *v22 = sub_18B8390A8;
  v22[1] = 0;
  v23 = &v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_explanationConfigurationProvider];
  *v23 = sub_18BA958EC;
  v23[1] = 0;
  v24 = &v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_leftBarButtonItemProvider];
  *v24 = sub_18B9A926C;
  v24[1] = 0;
  v25 = &v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_performDrop];
  *v25 = CGRectMake;
  v25[1] = 0;
  v26 = &v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_rightBarButtonItemProvider];
  *v26 = sub_18B9A926C;
  v26[1] = 0;
  v27 = &v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_reorderBookmark];
  *v27 = CGRectMake;
  v27[1] = 0;
  v28 = &v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_searchTextDidChangeHandler];
  *v28 = sub_18BA95C1C;
  v28[1] = 0;
  v29 = &v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_titleProvider];
  *v29 = sub_18B7F2DF8;
  v29[1] = 0;
  v30 = &v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_toolbarItemsProvider];
  *v30 = sub_18B9A926C;
  v30[1] = 0;
  *&v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController____lazy_storage___collectionDataSource] = 0;
  *&v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_suppressingReloads] = 0;
  *&v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController____lazy_storage___collectionLayout] = 0;
  v31 = &v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_id];
  *v31 = v10;
  v31[4] = v11;
  *(v12 + 1) = a3;
  swift_unknownObjectWeakAssign();
  v32 = &v6[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_snapshotProvider];
  *v32 = a4;
  v32[1] = a5;
  v36.receiver = v6;
  v36.super_class = type metadata accessor for SFBookmarksCollectionViewController(0);
  return objc_msgSendSuper2(&v36, sel_initWithNibName_bundle_, 0, 0);
}

void _s12MobileSafari35SFBookmarksCollectionViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = sub_18BC1FCD8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_explanationView;
  sub_18B7B0AC0(0, &qword_1EA9D80A8, 0x1E69DC8D0);
  sub_18BC1FC98();
  *(v0 + v3) = sub_18BC21488();
  v4 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem;
  sub_18BAA2264(v21);
  memcpy((v1 + v4), v21, 0x128uLL);
  *(v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_needsContentOffsetUpdate) = 0;
  *(v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController____lazy_storage___searchController) = 0;
  *(v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_showsNavigationTitle) = 1;
  *(v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_supportsSearch) = 0;
  v5 = OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController__currentUIState;
  v6 = type metadata accessor for SFBookmarksUIState(0);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = (v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_checkContentExistence);
  *v7 = sub_18B7E9C50;
  v7[1] = 0;
  v8 = (v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_canDragItem);
  *v8 = sub_18B7E9C50;
  v8[1] = 0;
  v9 = (v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_canHandleDropSession);
  *v9 = sub_18B7E9C50;
  v9[1] = 0;
  v10 = (v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_canReorderBookmarks);
  *v10 = sub_18B814EE4;
  v10[1] = 0;
  v11 = (v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_dropOperationForSession);
  *v11 = sub_18B8390A8;
  v11[1] = 0;
  v12 = (v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_dropOperationForSessionIgnoringCanReorder);
  *v12 = sub_18B8390A8;
  v12[1] = 0;
  v13 = (v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_explanationConfigurationProvider);
  *v13 = sub_18BA958EC;
  v13[1] = 0;
  v14 = (v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_leftBarButtonItemProvider);
  *v14 = sub_18B9A926C;
  v14[1] = 0;
  v15 = (v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_performDrop);
  *v15 = CGRectMake;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_rightBarButtonItemProvider);
  *v16 = sub_18B9A926C;
  v16[1] = 0;
  v17 = (v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_reorderBookmark);
  *v17 = CGRectMake;
  v17[1] = 0;
  v18 = (v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_searchTextDidChangeHandler);
  *v18 = sub_18BA95C1C;
  v18[1] = 0;
  v19 = (v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_titleProvider);
  *v19 = sub_18B7F2DF8;
  v19[1] = 0;
  v20 = (v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_toolbarItemsProvider);
  *v20 = sub_18B9A926C;
  v20[1] = 0;
  *(v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController____lazy_storage___collectionDataSource) = 0;
  *(v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_suppressingReloads) = 0;
  *(v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController____lazy_storage___collectionLayout) = 0;
  sub_18BC21CF8();
  __break(1u);
}

uint64_t type metadata accessor for SFBookmarksCollectionViewController(uint64_t a1)
{
  result = qword_1EA9D7E48;
  if (!qword_1EA9D7E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_18BAA1EAC(void *a1)
{
  v1 = [a1 gestureRecognizers];
  if (v1)
  {
    v3 = v1;
    sub_18B7B0AC0(0, &qword_1EA9D4850, 0x1E69DCA60);
    v4 = sub_18BC20D98();

    if (v4 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18BC219A8())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x18CFFD010](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if ([v7 delegate])
        {
          objc_opt_self();
          v10 = swift_dynamicCastObjCClass();
          if (!v10)
          {

            swift_unknownObjectRelease();
            goto LABEL_7;
          }

          [v10 setSingleTouchPanGestureHysteresis_];
          swift_unknownObjectRelease();
        }

LABEL_7:
        ++v6;
        if (v9 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_20:
  }

  return result;
}

unint64_t sub_18BAA20B0()
{
  result = qword_1EA9D7DA8;
  if (!qword_1EA9D7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7DA8);
  }

  return result;
}

unint64_t sub_18BAA2104()
{
  result = qword_1EA9D7DB0;
  if (!qword_1EA9D7DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7DB0);
  }

  return result;
}

unint64_t sub_18BAA2158()
{
  result = qword_1EA9D7DD8;
  if (!qword_1EA9D7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D7DD8);
  }

  return result;
}

double sub_18BAA2264(uint64_t a1)
{
  *(a1 + 288) = 0;
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_18BAA22E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18BC3E3F0;
  v1 = sub_18BC20B98();
  v2 = objc_opt_self();
  v3 = [v2 keyCommandWithInput:v1 modifierFlags:0 action:sel_spaceBarPressed];

  *(v0 + 32) = v3;
  *(v0 + 40) = [v2 keyCommandWithInput:*MEMORY[0x1E69DDF30] modifierFlags:0x100000 action:sel_upArrowPressed];
  *(v0 + 48) = [v2 keyCommandWithInput:*MEMORY[0x1E69DDE90] modifierFlags:0x100000 action:sel_downArrowPressed];
  return v0;
}

void *sub_18BAA23FC(void *a1)
{
  v3 = sub_18BC1EDD8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v21[-v9];
  v11 = [a1 nextFocusedView];
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
LABEL_6:

LABEL_7:
    sub_18BAA2264(v21);
    memcpy(v22, (v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem), sizeof(v22));
    v20 = (v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem);
    goto LABEL_8;
  }

  v14 = v13;
  result = *(v1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_collectionView);
  if (result)
  {
    v16 = [result indexPathForCell_];
    if (v16)
    {
      v17 = v16;
      sub_18BC1ED88();

      (*(v4 + 32))(v10, v6, v3);
      v18 = v1;
      v19 = sub_18BA95F78();
      sub_18BC1FD18();

      (*(v4 + 8))(v10, v3);
      memcpy(v22, (v18 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem), sizeof(v22));
      v20 = (v18 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_focusedItem);
LABEL_8:
      memcpy(v20, v21, 0x128uLL);
      return sub_18B988BAC(v22, &qword_1EA9D7E00, &qword_18BC49FE8);
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_18BAA2620(uint64_t a1)
{
  if ([v1 isEditing])
  {
    return 0;
  }

  v2 = sub_18BA95F78();
  sub_18BC1FD18();

  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v7, __src, sizeof(v7));
  if (sub_18B81CA10(v7) == 1)
  {
    return 0;
  }

  if (v7[9])
  {
    v4 = [v7[9] isReadingListItem];
    sub_18B988BAC(__dst, &qword_1EA9D7E00, &qword_18BC49FE8);
    return v4 ^ 1;
  }

  else
  {
    sub_18B988BAC(__dst, &qword_1EA9D7E00, &qword_18BC49FE8);
    return 1;
  }
}

id sub_18BAA2708(uint64_t a1)
{
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_18BA95F78();
  sub_18BC1EDD8();
  sub_18BC1FD18();

  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v17, __src, sizeof(v17));
  if (sub_18B81CA10(v17) == 1)
  {
    return 0;
  }

  memcpy(v18, v17, sizeof(v18));
  v5 = [v2 traitCollection];
  v6 = [v5 listEnvironment];

  v7 = swift_allocObject();
  memcpy((v7 + 16), v18, 0x128uLL);
  *(v7 + 312) = v6 == 5;
  v8 = swift_allocObject();
  memcpy((v8 + 16), v18, 0x128uLL);
  *(v8 + 312) = v2;
  v9 = objc_opt_self();
  v14[4] = sub_18BAA44BC;
  v14[5] = v7;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_18B9CBA44;
  v14[3] = &block_descriptor_191;
  v10 = _Block_copy(v14);
  sub_18B7CA054(__dst, __src, &qword_1EA9D7E00, &qword_18BC49FE8);
  v11 = v2;
  sub_18BC1E1A8();

  __src[4] = sub_18BAA44C8;
  __src[5] = v8;
  __src[0] = MEMORY[0x1E69E9820];
  __src[1] = 1107296256;
  __src[2] = sub_18B9CBA94;
  __src[3] = &block_descriptor_194;
  v12 = _Block_copy(__src);
  sub_18BC1E1A8();

  v13 = [v9 configurationWithIdentifier:0 previewProvider:v10 actionProvider:v12];

  _Block_release(v12);
  _Block_release(v10);
  return v13;
}

double sub_18BAA29EC(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(v3 + 1);
    v8 = [a1 previewViewController];
    if (v8)
    {
      v9 = v8;
      v10 = [v1 traitCollection];
      v11 = [v10 listEnvironment];

      [a1 setPreferredCommitStyle_];
      v12 = swift_allocObject();
      *(v12 + 16) = v9;
      *(v12 + 24) = v11 == 5;
      *(v12 + 32) = v1;
      *(v12 + 40) = v6;
      *(v12 + 48) = v7;
      v16[4] = sub_18BAA44A8;
      v16[5] = v12;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 1107296256;
      v16[2] = sub_18B7B0DB0;
      v16[3] = &block_descriptor_182;
      v13 = _Block_copy(v16);
      v14 = v9;
      v15 = v1;
      swift_unknownObjectRetain();

      [a1 addAnimations_];
      _Block_release(v13);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_18BAA2BB8(uint64_t a1)
{
  v1 = sub_18BA95F78();
  sub_18BC1FD18();

  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v7, __src, sizeof(v7));
  if (sub_18B81CA10(v7) != 1)
  {
    if (v7[9])
    {
      v2 = v7[9];
      v3 = [v2 isFolder];
      sub_18B988BAC(__dst, &qword_1EA9D7E00, &qword_18BC49FE8);

      return v3;
    }

    sub_18B988BAC(__dst, &qword_1EA9D7E00, &qword_18BC49FE8);
  }

  return 0;
}

void sub_18BAA2C90(void *a1)
{
  v2 = v1;
  v4 = sub_18BC1EDD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0, &qword_18BC42210);
  *&v9 = MEMORY[0x1EEE9AC00](v8 - 8).n128_u64[0];
  v11 = &v25[-v10];
  v12 = [a1 destinationIndexPath];
  if (v12)
  {
    v13 = v12;
    sub_18BC1ED88();

    (*(v5 + 56))(v11, 0, 1, v4);
    sub_18B988BAC(v11, &unk_1EA9D5BD0, &qword_18BC42210);
    v14 = sub_18BA95F78();
    v15 = [a1 destinationIndexPath];
    if (v15)
    {
      v16 = v15;
      sub_18BC1ED88();

      sub_18BC1FD18();
      (*(v5 + 8))(v7, v4);
      memcpy(v26, v28, sizeof(v26));
      memcpy(v27, v28, sizeof(v27));
      if (sub_18B81CA10(v27) != 1)
      {
        v17 = v27[9];
        if (v27[9])
        {
          v18 = (v2 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_performDrop);
          swift_beginAccess();
          v19 = *v18;
          v20 = v17;
          sub_18BC1E1A8();
          v19(a1, v17);
        }

        sub_18B988BAC(v26, &qword_1EA9D7E00, &qword_18BC49FE8);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v5 + 56))(v11, 1, 1, v4);
    sub_18B988BAC(v11, &unk_1EA9D5BD0, &qword_18BC42210);
    sub_18BAA004C([a1 session]);
    v22 = v21;
    swift_unknownObjectRelease();
    if (v22)
    {
      v23 = (v2 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_performDrop);
      swift_beginAccess();
      v24 = *v23;
      sub_18BC1E1A8();
      v24(a1, 0);
    }
  }
}

uint64_t sub_18BAA2FD0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void keypath_get_9Tm(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void keypath_set_10Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

void sub_18BAA30A0(uint64_t a1)
{
  sub_18BAA401C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_18BAA401C(uint64_t a1)
{
  if (!qword_1EA9D7E58)
  {
    type metadata accessor for SFBookmarksUIState(255);
    v1 = sub_18BC21848();
    if (!v2)
    {
      atomic_store(v1, &qword_1EA9D7E58);
    }
  }
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SFBookmarksCollectionViewController.ID(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SFBookmarksCollectionViewController.ID(uint64_t result, int a2, int a3)
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

uint64_t sub_18BAA40E8(uint64_t a1)
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

uint64_t sub_18BAA4104(uint64_t result, int a2)
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

uint64_t sub_18BAA414C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_18BAA417C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v7[0] = a1;
  v7[1] = a2;
  v6 = a3;
  return v4(v7, &v6);
}

uint64_t sub_18BAA41F4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t sub_18BAA4260(char a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v7 = a1;
  v6 = a2;
  v3(&v5, &v7, &v6);
  return v5;
}

uint64_t sub_18BAA42A8@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_18BAA42E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_18BAA4318(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_18BAA4390@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18BAA43C4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_18BAA4404@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_18BAA4474@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18BAA44C8()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    return v1(*(v0 + 312));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18BAA4504(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7FF8, &unk_18BC4A130);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BAA4584(int a1, uint64_t a2, void *a3)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D8040, &qword_18BC4A180) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8038, &qword_18BC4A178) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8030, &qword_18BC4A170) - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v12 + 64);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8028, &qword_18BC4A168) - 8);
  v16 = (v13 + v14 + *(v15 + 80)) & ~*(v15 + 80);
  v17 = *(v15 + 64);
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8020, &qword_18BC4A160) - 8);
  v19 = (v16 + v17 + *(v18 + 80)) & ~*(v18 + 80);
  v20 = *(v18 + 64);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8008, &qword_18BC4A148) - 8);
  v22 = (v19 + v20 + *(v21 + 80)) & ~*(v21 + 80);
  v23 = *(v21 + 64);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8000, &qword_18BC4A140) - 8);
  return sub_18BA9706C(a1, a2, a3, v3 + v7, v3 + v10, v3 + v13, v3 + v16, v3 + v19, v3 + v22, v3 + ((v22 + v23 + *(v24 + 80)) & ~*(v24 + 80)));
}

uint64_t sub_18BAA48A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8018, &qword_18BC4A158) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8010, &qword_18BC4A150) - 8);
  v13 = v4 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_18BA973A4(a1, a2, a3, a4, v4 + v10, v13);
}

uint64_t sub_18BAA49C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFBookmarksUIState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18BAA4A28()
{
  result = qword_1EA9D8098;
  if (!qword_1EA9D8098)
  {
    sub_18BC1EDD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8098);
  }

  return result;
}