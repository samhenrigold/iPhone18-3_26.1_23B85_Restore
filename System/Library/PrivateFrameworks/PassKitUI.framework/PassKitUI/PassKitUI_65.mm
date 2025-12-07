uint64_t sub_1BD6D69BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v5 = v4;
  v7 = sub_1BE051F54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BE051FA4();
  v11 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v14 = sub_1BE052D54();
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = a1;
  aBlock[4] = v29;
  v33 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = v30;
  v16 = _Block_copy(aBlock);
  v17 = v33;
  v18 = v5;
  v19 = a1;
  v17, v20, v21, v22, v23, v24, v25, v26;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v13, v10, v16);
  _Block_release(v16);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v31);
}

char *sub_1BD6D6C4C(void *a1, id a2)
{
  result = [a2 completionSearchResults];
  if (!result)
  {
    goto LABEL_16;
  }

  v4 = result;
  sub_1BD0E5E8C(0, &qword_1EBD503C8, 0x1E696F258);
  v5 = sub_1BE052744();

  if (v5 >> 62)
  {
    v13 = sub_1BE053704();
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_14:
    v5, v6, v7, v8, v9, v10, v11, v12;
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = a1;
    return sub_1BE04D8C4();
  }

  v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_4:
  v22 = MEMORY[0x1E69E7CC0];
  result = sub_1BD532354(0, v13 & ~(v13 >> 63), 0, v8, v9, v10, v11, v12);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v15 = v22;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1BFB40900](v14, v5);
      }

      else
      {
        v16 = *(v5 + 8 * v14 + 32);
      }

      v23 = v15;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        v20 = v16;
        sub_1BD532354((v17 > 1), v18 + 1, 1, v8, v9, v10, v11, v12);
        v16 = v20;
        v15 = v23;
      }

      ++v14;
      *(v15 + 16) = v18 + 1;
      v19 = v15 + 16 * v18;
      *(v19 + 32) = v16;
      *(v19 + 40) = 1;
    }

    while (v13 != v14);
    goto LABEL_14;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void sub_1BD6D6EB0(void *a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  sub_1BE04D8C4();
  v5 = &v4[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_contactMatchHandler];
  v6 = *&v4[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_contactMatchHandler];
  if (v6)
  {
    v7 = v5[1];
    sub_1BE048964();
    v8 = [a2 pkContactWithCleanedUpCountryCode];
    if (v8)
    {
      sub_1BE052434();
      v10 = v9;
      v11 = v8;
      v12 = sub_1BE052404();
      v10, v13, v14, v15, v16, v17, v18, v19;
      [v11 setValueSource_];
    }

    v6(v8);
    sub_1BD0D4744(v6, v7, v20, v21, v22, v23, v24, v25);

    v26 = *v5;
    v27 = v5[1];
    *v5 = 0;
    v5[1] = 0;
    sub_1BD0D4744(v26, v27, v28, v29, v30, v31, v32, v33);
  }
}

void sub_1BD6D7084(_BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD6D7104(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD6D71C4(void *a1)
{
  v2 = v1;
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BE051FA4();
  v8 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v11 = sub_1BE052D54();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1BD6D7460;
  v28 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_162;
  v13 = _Block_copy(aBlock);
  v14 = v28;
  v15 = a1;
  v16 = v2;
  v14, v17, v18, v19, v20, v21, v22, v23;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v10, v7, v13);
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v26);
}

id TrailingAccessoryLabel.attributedText.getter()
{
  v1 = [*(v0 + OBJC_IVAR___PKTrailingAccessoryLabel_textView) attributedText];

  return v1;
}

void TrailingAccessoryLabel.attributedText.setter(void *a1)
{
  [*&v1[OBJC_IVAR___PKTrailingAccessoryLabel_textView] setAttributedText_];
  [v1 setNeedsLayout];
}

void (*TrailingAccessoryLabel.attributedText.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR___PKTrailingAccessoryLabel_textView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = [*(v1 + v2) attributedText];
  return sub_1BD6D7658;
}

void sub_1BD6D7658(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *&v2[*(a1 + 16)];
  if (a2)
  {
    v4 = *a1;
    [v3 setAttributedText_];
    [v2 setNeedsLayout];
  }

  else
  {
    v4 = *a1;
    [*&v2[*(a1 + 16)] setAttributedText_];
    [v2 setNeedsLayout];
  }
}

id TrailingAccessoryLabel.maximumNumberOfLines.getter()
{
  v1 = [*(v0 + OBJC_IVAR___PKTrailingAccessoryLabel_textView) textContainer];
  v2 = [v1 maximumNumberOfLines];

  return v2;
}

void TrailingAccessoryLabel.maximumNumberOfLines.setter(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR___PKTrailingAccessoryLabel_textView) textContainer];
  [v3 setMaximumNumberOfLines_];
}

void sub_1BD6D78B4(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [*(*a1 + OBJC_IVAR___PKTrailingAccessoryLabel_textView) textContainer];
  v4 = [v3 maximumNumberOfLines];

  *a2 = v4;
}

void sub_1BD6D791C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = [*(*a2 + OBJC_IVAR___PKTrailingAccessoryLabel_textView) textContainer];
  [v3 setMaximumNumberOfLines_];
}

void (*TrailingAccessoryLabel.maximumNumberOfLines.modify(void *a1))(uint64_t *a1)
{
  v3 = OBJC_IVAR___PKTrailingAccessoryLabel_textView;
  a1[1] = v1;
  a1[2] = v3;
  v4 = [*(v1 + v3) textContainer];
  v5 = [v4 maximumNumberOfLines];

  *a1 = v5;
  return sub_1BD6D7A14;
}

void sub_1BD6D7A14(uint64_t *a1)
{
  v1 = *a1;
  v2 = [*(a1[1] + a1[2]) textContainer];
  [v2 setMaximumNumberOfLines_];
}

double TrailingAccessoryLabel.contentInsets.getter()
{
  v1 = v0 + OBJC_IVAR___PKTrailingAccessoryLabel_contentInsets;
  swift_beginAccess();
  return *v1;
}

id TrailingAccessoryLabel.contentInsets.setter(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR___PKTrailingAccessoryLabel_contentInsets];
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return [v4 setNeedsLayout];
}

id sub_1BD6D7C14(_OWORD *a1, void **a2)
{
  v3 = *a2;
  v4 = *a2 + OBJC_IVAR___PKTrailingAccessoryLabel_contentInsets;
  swift_beginAccess();
  v5 = a1[1];
  *v4 = *a1;
  v4[1] = v5;
  return [v3 setNeedsLayout];
}

id (*TrailingAccessoryLabel.contentInsets.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BD1ED468;
}

id TrailingAccessoryLabel.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *TrailingAccessoryLabel.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR___PKTrailingAccessoryLabel_contentInsets];
  v11 = *MEMORY[0x1E69DDCE0];
  v12 = *(MEMORY[0x1E69DDCE0] + 8);
  v13 = *(MEMORY[0x1E69DDCE0] + 16);
  v14 = *(MEMORY[0x1E69DDCE0] + 24);
  *v10 = *MEMORY[0x1E69DDCE0];
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  v15 = OBJC_IVAR___PKTrailingAccessoryLabel_registeredAccessories;
  *&v4[v15] = sub_1BD1AE038(MEMORY[0x1E69E7CC0]);
  v16 = &v4[OBJC_IVAR___PKTrailingAccessoryLabel_maxAccessorySize];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame_];
  *&v4[OBJC_IVAR___PKTrailingAccessoryLabel_textView] = v17;
  v28.receiver = v4;
  v28.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v28, sel_initWithFrame_, a1, a2, a3, a4);
  v19 = OBJC_IVAR___PKTrailingAccessoryLabel_textView;
  v20 = *&v18[OBJC_IVAR___PKTrailingAccessoryLabel_textView];
  v21 = v18;
  [v20 setAdjustsFontForContentSizeCategory_];
  [*&v18[v19] setEditable_];
  [*&v18[v19] setSelectable_];
  [*&v18[v19] setTextAlignment_];
  [*&v18[v19] setTextContainerInset_];
  [*&v18[v19] setContentInsetAdjustmentBehavior_];
  v22 = [*&v18[v19] textContainer];
  [v22 setLineFragmentPadding_];

  [*&v18[v19] setScrollEnabled_];
  PKAccessibilityIDSet(*&v18[v19], *MEMORY[0x1E69B9D20]);
  v23 = *&v18[v19];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 clearColor];
  [v25 setBackgroundColor_];

  [v21 addSubview_];
  return v21;
}

CGSize __swiftcall TrailingAccessoryLabel.sizeThatFits(_:)(CGSize a1)
{
  width = a1.width;
  v2 = sub_1BD6D80C8(1, 0.0, 0.0, a1.width, 1.79769313e308);
  v3 = width;
  result.height = v2;
  result.width = v3;
  return result;
}

double sub_1BD6D80C8(char a1, CGFloat a2, CGFloat a3, double a4, CGFloat a5)
{
  v11 = sub_1BD6D8900(v5, a4);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  MidX = CGRectGetMidX(v27);
  v13.n128_f64[0] = v11 * -0.5;
  v14.n128_f64[0] = MidX + v11 * -0.5;
  PKFloatFloorToPixel(v14, v13);
  v16 = v15;
  v17 = OBJC_IVAR___PKTrailingAccessoryLabel_textView;
  v18 = [*(v5 + OBJC_IVAR___PKTrailingAccessoryLabel_textView) attributedText];
  if (v18)
  {
    v19 = v18;
    if ([v18 length] >= 1)
    {
      v20 = *(v5 + v17);
      [v20 sizeThatFits_];
      v22 = v21;

      goto LABEL_6;
    }
  }

  v22 = *(v5 + OBJC_IVAR___PKTrailingAccessoryLabel_maxAccessorySize + 8);
LABEL_6:
  v28.origin.x = v16;
  v28.origin.y = a3;
  v28.size.width = v11;
  v28.size.height = v22;
  MaxY = CGRectGetMaxY(v28);
  if ((a1 & 1) == 0)
  {
    [*(v5 + v17) setFrame_];
    v24 = [*(v5 + v17) textContainer];
    [v24 setSize_];
  }

  sub_1BD6D89F0(v26, a1 & 1, v16, a3, v11, v22);
  return MaxY;
}

Swift::Void __swiftcall TrailingAccessoryLabel.layoutSubviews()()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  [v0 bounds];
  sub_1BD6D80C8(0, v1, v2, v3, v4);
}

Swift::Void __swiftcall TrailingAccessoryLabel.registerAccessory(view:withSize:for:)(UIView *view, CGSize withSize, Swift::String a3)
{
  v4 = v3;
  object = a3._object;
  countAndFlagsBits = a3._countAndFlagsBits;
  height = withSize.height;
  width = withSize.width;
  v8 = OBJC_IVAR___PKTrailingAccessoryLabel_registeredAccessories;
  swift_beginAccess();
  v9 = *&v3[v8];
  if (!v9[2] || (sub_1BE048C84(), sub_1BD148F70(countAndFlagsBits, object), v11 = v10, v9, v10, v12, v13, v14, v15, v16, v17, (v11 & 1) == 0))
  {
    *&v31 = countAndFlagsBits;
    *(&v31 + 1) = object;
    v32 = width;
    v33 = height;
    v34 = view;
    v35 = 0;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    v18 = view;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *&v4[v8];
    *&v4[v8] = 0x8000000000000000;
    sub_1BD1DBC60(&v31, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);
    object, v20, v21, v22, v23, v24, v25, v26;
    *&v4[v8] = v30;
    swift_endAccess();
    v27.f64[0] = width;
    v27.f64[1] = height;
    *&v4[OBJC_IVAR___PKTrailingAccessoryLabel_maxAccessorySize] = vbslq_s8(vcgeq_f64(v27, *&v4[OBJC_IVAR___PKTrailingAccessoryLabel_maxAccessorySize]), v27, *&v4[OBJC_IVAR___PKTrailingAccessoryLabel_maxAccessorySize]);
    [v4 addSubview_];
  }
}

Swift::Void __swiftcall TrailingAccessoryLabel.registerAccessory(layer:withSize:for:)(CALayer layer, CGSize withSize, Swift::String a3)
{
  v4 = v3;
  object = a3._object;
  countAndFlagsBits = a3._countAndFlagsBits;
  height = withSize.height;
  width = withSize.width;
  v8 = OBJC_IVAR___PKTrailingAccessoryLabel_registeredAccessories;
  swift_beginAccess();
  v9 = *&v3[v8];
  if (!v9[2] || (sub_1BE048C84(), sub_1BD148F70(countAndFlagsBits, object), v11 = v10, v9, v10, v12, v13, v14, v15, v16, v17, (v11 & 1) == 0))
  {
    *&v32 = countAndFlagsBits;
    *(&v32 + 1) = object;
    v33 = width;
    v34 = height;
    isa = layer.super.isa;
    v36 = 1;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    v18 = layer.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *&v4[v8];
    *&v4[v8] = 0x8000000000000000;
    sub_1BD1DBC60(&v32, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);
    object, v20, v21, v22, v23, v24, v25, v26;
    *&v4[v8] = v31;
    swift_endAccess();
    v27.f64[0] = width;
    v27.f64[1] = height;
    *&v4[OBJC_IVAR___PKTrailingAccessoryLabel_maxAccessorySize] = vbslq_s8(vcgeq_f64(v27, *&v4[OBJC_IVAR___PKTrailingAccessoryLabel_maxAccessorySize]), v27, *&v4[OBJC_IVAR___PKTrailingAccessoryLabel_maxAccessorySize]);
    v28 = [v4 layer];
    [v28 addSublayer_];
  }
}

void sub_1BD6D8688(void *a1, double a2, double a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(id, uint64_t, void *, double, double))
{
  v12 = sub_1BE052434();
  v14 = v13;
  v15 = a5;
  v16 = a1;
  a7(v15, v12, v14, a2, a3);

  v14, v17, v18, v19, v20, v21, v22, v23;
}

Swift::Void __swiftcall TrailingAccessoryLabel.unregisterAccessories()()
{
  v1 = OBJC_IVAR___PKTrailingAccessoryLabel_registeredAccessories;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  sub_1BE048C84();
  v14 = 0;
  while (v5)
  {
    v15 = v14;
LABEL_9:
    v16 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v17 = *(v2 + 56) + 48 * (v16 | (v15 << 6));
    v18 = *(v17 + 32);
    if (*(v17 + 40))
    {
      v19 = &selRef_removeFromSuperlayer;
    }

    else
    {
      v19 = &selRef_removeFromSuperview;
    }

    [v18 *v19];
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v6)
    {
      v2, v7, v8, v9, v10, v11, v12, v13;
      v20 = *&v0[v1];
      *&v0[v1] = MEMORY[0x1E69E7CC8];
      v20, v21, v22, v23, v24, v25, v26, v27;
      v28 = &v0[OBJC_IVAR___PKTrailingAccessoryLabel_maxAccessorySize];
      *v28 = 0;
      *(v28 + 1) = 0;
      [v0 setNeedsLayout];
      return;
    }

    v5 = *(v2 + 64 + 8 * v15);
    ++v14;
    if (v5)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
}

double sub_1BD6D8900(uint64_t a1, double a2)
{
  v4 = OBJC_IVAR___PKTrailingAccessoryLabel_registeredAccessories;
  swift_beginAccess();
  v5 = *(*(a1 + v4) + 16);
  v6 = a1 + OBJC_IVAR___PKTrailingAccessoryLabel_contentInsets;
  swift_beginAccess();
  v7 = *(v6 + 8) + *(v6 + 24);
  if (v5)
  {
    v8 = [*(a1 + OBJC_IVAR___PKTrailingAccessoryLabel_textView) textAlignment];
    v9 = 1.0;
    if (v8 == 1)
    {
      v9 = 2.0;
    }

    v10 = v9 * (*(a1 + OBJC_IVAR___PKTrailingAccessoryLabel_maxAccessorySize) + 6.0);
    if (v7 <= v10)
    {
      v7 = v10;
    }
  }

  return a2 - v7;
}

void sub_1BD6D89F0(uint64_t a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if ((a2 & 1) == 0)
  {
    v7 = sub_1BD6D8B9C(v6, 0, a3, a4, a5, a6);
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = OBJC_IVAR___PKTrailingAccessoryLabel_registeredAccessories;
    swift_beginAccess();
    v15 = *&v6[v14];
    v16 = 1 << *(v15 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v15 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = *MEMORY[0x1E69BB7F8];
    swift_bridgeObjectRetain_n();
    v28 = 0;
    while (v18)
    {
      v29 = v28;
LABEL_10:
      v30 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v31 = (*(v15 + 56) + 48 * (v30 | (v29 << 6)));
      v32 = v31[1];
      v33 = v31[2];
      v34 = v31[3];
      v35 = v31[4];
      sub_1BE048C84();
      v36 = v35;
      v37.n128_u64[0] = v33;
      v38.n128_u64[0] = v34;
      v39.n128_f64[0] = v7;
      v40.n128_u64[0] = v9;
      v41.n128_u64[0] = v11;
      v42.n128_u64[0] = v13;
      PKSizeAlignedInRect(v20, v37, v38, v39, v40, v41, v42, v43);
      PKRectRoundToPixel(v44, v45, v46, v47, v48);
      [v36 setFrame_];

      v32, v49, v50, v51, v52, v53, v54, v55;
    }

    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v29 >= v19)
      {
        v15, v21, v22, v23, v24, v25, v26, v27;
        v15, v56, v57, v58, v59, v60, v61, v62;
        return;
      }

      v18 = *(v15 + 64 + 8 * v29);
      ++v28;
      if (v18)
      {
        v28 = v29;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

CGFloat sub_1BD6D8B9C(char *a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v6 = a2;
  v12 = [a1 _shouldReverseLayoutDirection];
  v13 = sub_1BD6D8D5C(a1, v6, a3, a4, a5, a6);
  if (v13)
  {
    v15 = v13;
    v16 = v14;
    [v14 typographicBounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    [v15 layoutFragmentFrame];
    v26 = v25;
    v28 = v27;
    v29 = OBJC_IVAR___PKTrailingAccessoryLabel_maxAccessorySize;
    v30 = *&a1[OBJC_IVAR___PKTrailingAccessoryLabel_maxAccessorySize];
    v48.origin.x = v18;
    v48.origin.y = v20;
    v48.size.width = v22;
    v48.size.height = v24;
    Height = CGRectGetHeight(v48);
    v32 = v18;
    v33 = v20;
    v34 = v22;
    v35 = v24;
    if (v12)
    {
      MinX = CGRectGetMinX(*&v32);
    }

    else
    {
      MinX = CGRectGetMaxX(*&v32);
    }

    v37 = v20;
    v38 = v30;
    v39 = Height;
    v49 = CGRectOffset(*&MinX, v26, v28);
    y = v49.origin.y;
    v41 = v49.size.height;
    v42 = *&a1[v29];
    v43 = 6.0;
    if (v12)
    {
      v43 = -(v42 + 6.0);
    }

    v44 = v49.origin.x + v43;
    v45 = *&a1[OBJC_IVAR___PKTrailingAccessoryLabel_textView];
    [v45 convertRect:a1 toCoordinateSpace:{v44, y, v42, v41}];
    a3 = v46;
  }

  return a3;
}

unint64_t sub_1BD6D8D5C(uint64_t a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  result = [*(a1 + OBJC_IVAR___PKTrailingAccessoryLabel_textView) textLayoutManager];
  if (!result)
  {
    return result;
  }

  v12 = result;
  v86.origin.x = a3;
  v86.origin.y = a4;
  v86.size.width = a5;
  v86.size.height = a6;
  [result ensureLayoutForBounds_];
  v85 = 0;
  v13 = [v12 documentRange];
  v14 = [v13 endLocation];

  v15 = swift_allocObject();
  v15[2] = &v85;
  v16 = swift_allocObject();
  v16[2] = sub_1BD6D91F0;
  v16[3] = v15;
  aBlock[4] = sub_1BD22277C;
  v84 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD055558;
  aBlock[3] = &block_descriptor_163;
  v17 = _Block_copy(aBlock);
  v18 = v84;
  sub_1BE048964();
  v18, v19, v20, v21, v22, v23, v24, v25;
  v26 = [v12 enumerateTextLayoutFragmentsFromLocation:v14 options:1 usingBlock:v17];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  v16, v28, v29, v30, v31, v32, v33, v34;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (!v85)
    {
      if (a2)
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v18 = v85;
    v16 = v85;
    v42 = [v16 textLineFragments];
    sub_1BD6D9224();
    isEscapingClosureAtFileLocation = sub_1BE052744();

    if (!(isEscapingClosureAtFileLocation >> 62))
    {
      v50 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v50)
      {
        goto LABEL_6;
      }

LABEL_19:
      isEscapingClosureAtFileLocation, v43, v44, v45, v46, v47, v48, v49;

      if (a2)
      {
LABEL_20:
        v75 = [v12 documentRange];
        [v12 invalidateLayoutForRange_];
        v15, v76, v77, v78, v79, v80, v81, v82;

LABEL_22:
        return 0;
      }

LABEL_21:
      v15, v35, v36, v37, v38, v39, v40, v41;
      goto LABEL_22;
    }
  }

  v50 = sub_1BE053704();
  if (!v50)
  {
    goto LABEL_19;
  }

LABEL_6:
  v51 = __OFSUB__(v50, 1);
  result = v50 - 1;
  if (v51)
  {
    __break(1u);
    goto LABEL_25;
  }

  if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
  {
LABEL_25:
    MEMORY[0x1BFB40900](result, isEscapingClosureAtFileLocation);
    goto LABEL_11;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (result >= *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v52 = *(isEscapingClosureAtFileLocation + 8 * result + 32);
LABEL_11:
  isEscapingClosureAtFileLocation, v53, v54, v55, v56, v57, v58, v59;

  if (a2)
  {
    v67 = [v12 documentRange];
    [v12 invalidateLayoutForRange_];
    v15, v68, v69, v70, v71, v72, v73, v74;
  }

  else
  {
    v15, v60, v61, v62, v63, v64, v65, v66;
  }

  return v18;
}

id TrailingAccessoryLabel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD6D91F0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  *v2 = a1;
  v4 = a1;

  return 0;
}

unint64_t sub_1BD6D9224()
{
  result = qword_1EBD503F0;
  if (!qword_1EBD503F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD503F0);
  }

  return result;
}

uint64_t sub_1BD6D9280(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;

  v8[4], v9, v10, v11, v12, v13, v14, v15;
  sub_1BD0D4534((v8 + 5));
  v8[8], v16, v17, v18, v19, v20, v21, v22;

  return swift_deallocClassInstance();
}

void sub_1BD6D92FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04BAC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BC34();
  v10 = sub_1BE04BA54();
  (*(v7 + 8))(v9, v6);
  v11 = sub_1BE04BBD4();
  v12 = *(v3 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_1BD6D981C;
  v25 = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD4F4AA0;
  aBlock[3] = &block_descriptor_164;
  v15 = _Block_copy(aBlock);
  v16 = v25;
  sub_1BE048964();
  v16, v17, v18, v19, v20, v21, v22, v23;
  [v11 setupProductForProvisioning:v12 includePurchases:(v10 & 1) == 0 withCompletionHandler:v15];
  _Block_release(v15);
}

void sub_1BD6D94EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a2)
    {
      v12 = a2;
      v13 = sub_1BE04A844();
      v14 = swift_allocObject();
      *(v14 + 16) = a5;
      *(v14 + 24) = a6;
      aBlock[4] = sub_1BD1B5F6C;
      v58 = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_12_5;
      v15 = _Block_copy(aBlock);
      v16 = v58;
      sub_1BE048964();
      v16, v17, v18, v19, v20, v21, v22, v23;
      v24 = PKAlertForDisplayableErrorWithCancelHandler(v13, 0, v15);
      _Block_release(v15);

      if (v24)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v25 = v11[6];
          ObjectType = swift_getObjectType();
          (*(v25 + 24))(v24, ObjectType, v25);

          v11, v27, v28, v29, v30, v31, v32, v33;
          swift_unknownObjectRelease();
        }

        else
        {

          v11, v50, v51, v52, v53, v54, v55, v56;
        }

        return;
      }

      a5(0);
    }

    else
    {
      v34 = MEMORY[0x1E69E7CC0];
      if (a3)
      {
        v34 = a3;
      }

      v35 = *(Strong + 32);
      *(Strong + 32) = v34;
      sub_1BE048C84();
      v35, v36, v37, v38, v39, v40, v41, v42;
      a5(1);
    }

    v11, v43, v44, v45, v46, v47, v48, v49;
  }
}

id sub_1BD6D96F8(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[2];
  v6 = type metadata accessor for PaymentSetupCredentialsFlowItem();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
  *&v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_identifier];
  *v8 = 0xD00000000000001FLL;
  v8[1] = 0x80000001BE1229B0;
  *&v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_context] = v5;
  *&v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_credentials] = v3;
  v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_allowManualEntry] = 0;
  *&v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_product] = v4;
  v10.receiver = v7;
  v10.super_class = v6;
  sub_1BE048C84();
  v9 = v4;
  sub_1BE048964();
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t type metadata accessor for PaymentOfferInstallmentCriteriaIconView(uint64_t a1)
{
  result = qword_1EBD503F8;
  if (!qword_1EBD503F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD6D98A4(uint64_t a1)
{
  sub_1BD6D9968(319);
  if (v1 <= 0x3F)
  {
    sub_1BD0E5E8C(319, &qword_1EBD39D98, 0x1E69B8C90);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        sub_1BD249694(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD6D9968(uint64_t a1)
{
  if (!qword_1EBD50408)
  {
    sub_1BD0E5E8C(255, &qword_1EBD50410, 0x1E69B8C70);
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD50408);
    }
  }
}

double sub_1BD6D99EC@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_1BE04AA64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45720, &qword_1BE0DBCF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = &v50 - v9;
  v10 = type metadata accessor for PaymentOfferInstallmentCriteriaIconView(0);
  v54 = *(v10 - 8);
  v11 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v55 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50420, &unk_1BE0F0988);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v56 = &v50 - v26;
  v27 = *a1;
  if (*a1)
  {
    PKScreenScale();
    v51 = a1;
    v29 = [v27 urlForScreenScale:sub_1BD6DA288() appearance:v28];
    if (v29)
    {
      v30 = v29;
      sub_1BE04A9F4();

      (*(v4 + 56))(v17, 0, 1, v3);
    }

    else
    {
      (*(v4 + 56))(v17, 1, 1, v3);
    }

    sub_1BD0DE204(v17, v20, &unk_1EBD3CF70, &qword_1BE0BA000);
    v32 = v3;
    v31 = v51;
  }

  else
  {
    (*(v4 + 56))(v20, 1, 1, v3, v25);
    v31 = a1;
    v32 = v3;
  }

  v33 = v55;
  sub_1BD23FAEC(v31, v55);
  v34 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v35 = swift_allocObject();
  sub_1BD6DA624(v33, v35 + v34);
  v36 = [objc_opt_self() sharedURLCache];
  sub_1BD0DE19C(v20, v14, &unk_1EBD3CF70, &qword_1BE0BA000);
  if ((*(v4 + 48))(v14, 1, v32) == 1)
  {
    sub_1BD226BBC(v14);
    v37 = 1;
    v38 = v57;
  }

  else
  {
    v39 = *(v4 + 32);
    v55 = v35;
    v40 = v36;
    v41 = v53;
    v39(v53, v14, v32);
    (*(v4 + 16))(v52, v41, v32);
    v38 = v57;
    sub_1BE04A114();
    v42 = v41;
    v36 = v40;
    v35 = v55;
    (*(v4 + 8))(v42, v32);
    v37 = 0;
  }

  v43 = sub_1BE04A134();
  (*(*(v43 - 8) + 56))(v38, v37, 1, v43);
  sub_1BD0DE204(v38, &v23[v21[10]], &qword_1EBD45720, &qword_1BE0DBCF0);
  *(v23 + 2) = sub_1BD6DA688;
  *(v23 + 3) = v35;
  *&v23[v21[12]] = 0;
  v44 = &v23[v21[13]];
  *v44 = 0;
  *(v44 + 1) = 0;
  *(v44 + 2) = 0;
  v44[24] = 1;
  *&v23[v21[11]] = v36;
  v59 = 0x8000000000000000;
  sub_1BE051694();
  sub_1BD226BBC(v20);
  *v23 = v60;
  v45 = v56;
  sub_1BD0DE204(v23, v56, &qword_1EBD50420, &unk_1BE0F0988);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v46 = v58;
  sub_1BD0DE204(v45, v58, &qword_1EBD50420, &unk_1BE0F0988);
  v47 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50428, &unk_1BE0F0998) + 36));
  v48 = v61;
  *v47 = v60;
  v47[1] = v48;
  result = *&v62;
  v47[2] = v62;
  return result;
}

double sub_1BD6DA03C@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_1BE051584();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 >> 62)
  {
    v12 = [*(a2 + 8) issuerName];
    v13 = sub_1BE052434();
    v15 = v14;

    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
    if (v16 > 36.0)
    {
      v18 = 32.0;
    }

    else
    {
      v18 = 20.0;
    }

    v19 = sub_1BE0512A4();
    v20 = sub_1BE051284();
    LOBYTE(v25) = 1;
    v28 = v13;
    v29 = v15;
    *v30 = v16;
    *&v30[8] = v17;
    *&v30[16] = v18;
    *&v30[24] = v19;
    *&v30[32] = v20;
    v31 = 1;
  }

  else
  {
    (*(v7 + 104))(v10, *MEMORY[0x1E6981630], v6, v8);
    v11 = sub_1BE0515E4();
    (*(v7 + 8))(v10, v6);
    v27 = 1;
    v24[8] = 0;
    v28 = v11;
    v29 = 0;
    *v30 = 1;
    *&v30[2] = v25;
    *&v30[18] = *v26;
    *&v30[32] = *&v26[14];
    v31 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280, &qword_1BE0C30B0);
  sub_1BD223C50();
  sub_1BD3F835C();
  sub_1BE04F9A4();
  v21 = v33;
  v22 = v34[0];
  *a3 = v32;
  a3[1] = v21;
  a3[2] = v22;
  result = *(v34 + 9);
  *(a3 + 41) = *(v34 + 9);
  return result;
}

uint64_t sub_1BD6DA288()
{
  v24 = sub_1BE04F3D4();
  v1 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v23 - v5);
  v7 = sub_1BE04E354();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PaymentOfferInstallmentCriteriaIconView(0);
  sub_1BD0DE19C(v0 + *(v11 + 28), v6, &qword_1EBD4E5B0, &qword_1BE0B86D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    v12 = *v6;
    sub_1BE052C44();
    v13 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    v12, v14, v15, v16, v17, v18, v19, v20;
    (*(v1 + 8))(v3, v24);
  }

  v21 = (*(v8 + 88))(v10, v7);
  if (v21 == *MEMORY[0x1E697DBB8])
  {
    return 1;
  }

  if (v21 == *MEMORY[0x1E697DBA8])
  {
    return 2;
  }

  (*(v8 + 8))(v10, v7);
  return 0;
}

uint64_t sub_1BD6DA55C@<X0>(uint64_t a1@<X8>)
{
  sub_1BD6D99EC(v1, a1);
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50418, &unk_1BE0F0978) + 36));
  v4 = *(sub_1BE04EDE4() + 20);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1BE04F684();
  (*(*(v6 - 8) + 104))(&v3[v4], v5, v6);
  __asm { FMOV            V0.2D, #8.0 }

  *v3 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20);
  *&v3[*(result + 36)] = 256;
  return result;
}

uint64_t sub_1BD6DA624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferInstallmentCriteriaIconView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1BD6DA688@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(type metadata accessor for PaymentOfferInstallmentCriteriaIconView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD6DA03C(a1, v6, a2);
}

unint64_t sub_1BD6DA708()
{
  result = qword_1EBD50430;
  if (!qword_1EBD50430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50418, &unk_1BE0F0978);
    sub_1BD6DA7C0();
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50, &unk_1BE0B7D20, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50430);
  }

  return result;
}

unint64_t sub_1BD6DA7C0()
{
  result = qword_1EBD50438;
  if (!qword_1EBD50438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50440, &qword_1BE0F09A8);
    sub_1BD6DA844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50438);
  }

  return result;
}

unint64_t sub_1BD6DA844()
{
  result = qword_1EBD50448;
  if (!qword_1EBD50448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50428, &unk_1BE0F0998);
    sub_1BD0DE4F4(&qword_1EBD50450, &qword_1EBD50420, &unk_1BE0F0988, &unk_1BE10F338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50448);
  }

  return result;
}

char *sub_1BD6DA8FC()
{
  if (sub_1BD6DAF04() && (v1 = *(v0 + 56)) != 0)
  {
    v2 = *(v0 + 64);
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    sub_1BD0D44B8(v1, v2);
    sub_1BE048964();
    v14 = sub_1BD1D95CC(0, 1, 1, MEMORY[0x1E69E7CC0], v4, v5, v6, v7);
    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1BD1D95CC((v15 > 1), v16 + 1, 1, v14, v10, v11, v12, v13);
    }

    sub_1BD0D4744(v1, v2, v8, v9, v10, v11, v12, v13);
    *(v14 + 2) = v16 + 1;
    v17 = &v14[24 * v16];
    *(v17 + 16) = 4;
    *(v17 + 5) = sub_1BD267328;
    *(v17 + 6) = v3;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v18 = [*(v0 + 16) savingsDetails];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 contactNumber];

    if (v20)
    {
      v21 = sub_1BE052434();
      v23 = v22;

      v23, v24, v25, v26, v27, v28, v29, v30;
      v31 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v31 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (v31)
      {
        v32 = *(v0 + 24);
        if (v32)
        {
          v33 = *(v0 + 32);
          v34 = swift_allocObject();
          *(v34 + 16) = v32;
          *(v34 + 24) = v33;
          sub_1BD0D44B8(v32, v33);
          sub_1BE048964();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_1BD1D95CC(0, *(v14 + 2) + 1, 1, v14, v37, v38, v39, v40);
          }

          v42 = *(v14 + 2);
          v41 = *(v14 + 3);
          if (v42 >= v41 >> 1)
          {
            v14 = sub_1BD1D95CC((v41 > 1), v42 + 1, 1, v14, v37, v38, v39, v40);
          }

          sub_1BD0D4744(v32, v33, v35, v36, v37, v38, v39, v40);
          *(v14 + 2) = v42 + 1;
          v43 = &v14[24 * v42];
          *(v43 + 16) = 0;
          *(v43 + 5) = sub_1BD214190;
          *(v43 + 6) = v34;
        }
      }
    }
  }

  v44 = sub_1BD6DACE8();
  if (v45)
  {
    v52 = v44;
    v53 = v45;
    v45, v45, v46, v47, v48, v49, v50, v51;
    v54 = HIBYTE(v53) & 0xF;
    if ((v53 & 0x2000000000000000) == 0)
    {
      v54 = v52 & 0xFFFFFFFFFFFFLL;
    }

    if (v54)
    {
      v55 = *(v0 + 40);
      if (v55)
      {
        v56 = *(v0 + 48);
        v57 = swift_allocObject();
        *(v57 + 16) = v55;
        *(v57 + 24) = v56;
        sub_1BD0D44B8(v55, v56);
        sub_1BE048964();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1BD1D95CC(0, *(v14 + 2) + 1, 1, v14, v60, v61, v62, v63);
        }

        v65 = *(v14 + 2);
        v64 = *(v14 + 3);
        if (v65 >= v64 >> 1)
        {
          v14 = sub_1BD1D95CC((v64 > 1), v65 + 1, 1, v14, v60, v61, v62, v63);
        }

        sub_1BD0D4744(v55, v56, v58, v59, v60, v61, v62, v63);
        *(v14 + 2) = v65 + 1;
        v66 = &v14[24 * v65];
        *(v66 + 16) = 2;
        *(v66 + 5) = sub_1BD267328;
        *(v66 + 6) = v57;
      }
    }
  }

  if (*(v14 + 2) == 1)
  {
    v67 = v14[32] == 0;
    v68 = *(v14 + 6);
    sub_1BE048964();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1BD1D95CC(0, 2, 1, v14, v72, v73, v74, v75);
    }

    v77 = *(v14 + 2);
    v76 = *(v14 + 3);
    if (v77 >= v76 >> 1)
    {
      v14 = sub_1BD1D95CC((v76 > 1), v77 + 1, 1, v14, v72, v73, v74, v75);
    }

    v68, v69, v70, v71, v72, v73, v74, v75;
    *(v14 + 2) = v77 + 1;
    v78 = &v14[24 * v77];
    v78[32] = 2 * v67;
    v78[33] = 1;
    *(v78 + 5) = PKEdgeInsetsMake;
    *(v78 + 6) = 0;
  }

  return v14;
}

id sub_1BD6DACE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  result = [*(v0 + 16) savingsDetails];
  if (result)
  {
    v9 = result;
    v10 = [result contactWebsite];

    if (v10)
    {
      sub_1BE04A9F4();

      v11 = sub_1BE04AA64();
      (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
    }

    else
    {
      v11 = sub_1BE04AA64();
      (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
    }

    sub_1BD226B4C(v3, v7);
    sub_1BE04AA64();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v7, 1, v11) == 1)
    {
      sub_1BD226BBC(v7);
      return 0;
    }

    else
    {
      v13 = sub_1BE04A9B4();
      (*(v12 + 8))(v7, v11);
      return v13;
    }
  }

  return result;
}

BOOL sub_1BD6DAF04()
{
  v1 = [*(v0 + 16) savingsDetails];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 businessChatIdentifier];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1BE052434();
  v6 = v5;

  v6, v7, v8, v9, v10, v11, v12, v13;
  v14 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v14 = v4 & 0xFFFFFFFFFFFFLL;
  }

  return v14 && ([objc_opt_self() deviceSupportsBusinessChat] & 1) != 0;
}

uint64_t sub_1BD6DAFC0()
{
  sub_1BD0D4744(*(v0 + 24), *(v0 + 32), v1, v2, v3, v4, v5, v6);
  sub_1BD0D4744(*(v0 + 40), *(v0 + 48), v7, v8, v9, v10, v11, v12);
  sub_1BD0D4744(*(v0 + 56), *(v0 + 64), v13, v14, v15, v16, v17, v18);

  return swift_deallocClassInstance();
}

char *sub_1BD6DB034@<X0>(char **a1@<X8>)
{
  result = sub_1BD6DA8FC();
  *a1 = result;
  return result;
}

unint64_t sub_1BD6DB08C()
{
  result = qword_1EBD50458;
  if (!qword_1EBD50458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50458);
  }

  return result;
}

void *sub_1BD6DB0E0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v1 = result;
      v2 = sub_1BD6DB0E0();
      v1, v3, v4, v5, v6, v7, v8, v9;
      return v2;
    }
  }

  return result;
}

uint64_t sub_1BD6DB14C()
{
  v1 = *(v0 + 112);
  if (v1 == 2)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    LOBYTE(v1) = (*(v2 + 72))(ObjectType, v2);
    *(v0 + 112) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_1BD6DB1B4()
{
  v1 = *(v0 + 113);
  if (v1 == 2)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    LOBYTE(v1) = (*(v2 + 80))(ObjectType, v2);
    *(v0 + 113) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_1BD6DB21C()
{
  if (*(v0 + 88) == 1)
  {
    *(v0 + 88) = 0;
    if (*(v0 + 32))
    {
      v1 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      (*(v1 + 64))(ObjectType, v1);
    }
  }

  swift_unknownObjectRelease();
  *(v0 + 40), v3, v4, v5, v6, v7, v8, v9;
  sub_1BD28B4B8(*(v0 + 48));
  swift_weakDestroy();
  *(v0 + 72), v10, v11, v12, v13, v14, v15, v16;
  swift_weakDestroy();
  sub_1BD0D4534(v0 + 96);
  return v0;
}

uint64_t sub_1BD6DB2BC()
{
  sub_1BD6DB21C();

  return swift_deallocClassInstance();
}

void sub_1BD6DB314(_BYTE *a1, void *a2, uint64_t *a3, char a4)
{
  v5 = v4;
  LOBYTE(v6) = a4;
  if (!a2)
  {
    goto LABEL_13;
  }

  swift_beginAccess();
  v10 = v4[9];
  if (v10 >> 62)
  {
    v11 = sub_1BE053704();
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_13:
    swift_beginAccess();
    v28 = sub_1BE048964();
    MEMORY[0x1BFB3F7A0](v28);
    if (*((v5[9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5[9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_25:
      sub_1BE052774();
    }

    sub_1BE0527C4();
    swift_endAccess();
LABEL_15:
    swift_weakAssign();
    v29 = a3;
    if (!a3)
    {
      sub_1BE048964();
      v29 = v5;
    }

    swift_weakAssign();
    sub_1BE048964();
    v29, v30, v31, v32, v33, v34, v35, v36;
    a1[57] = v6 & 1;
    return;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_4:
  v53 = v6;
  sub_1BE048964();
  sub_1BE048C84();
  v6 = 0;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1BFB40900](v6, v10);
      swift_unknownObjectRelease();
      if (v19 == a2)
      {
        break;
      }

      goto LABEL_10;
    }

    if (v6 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    if (*(v10 + 8 * v6 + 32) == a2)
    {
      break;
    }

LABEL_10:
    v20 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    ++v6;
    if (v20 == v11)
    {
      a2, v12, v13, v14, v15, v16, v17, v18;
      v10, v21, v22, v23, v24, v25, v26, v27;
      LOBYTE(v6) = v53;
      goto LABEL_13;
    }
  }

  v10, v12, v13, v14, v15, v16, v17, v18;
  v37 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_29:
    if (sub_1BE053704() >= v37)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  swift_beginAccess();
  v38 = v5[9];
  LOBYTE(v6) = v53;
  if (v38 >> 62)
  {
    goto LABEL_29;
  }

  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) < v37)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_21:
  if ((v37 & 0x8000000000000000) == 0)
  {
    sub_1BE048964();
    sub_1BD1DD044(v37, v37, a1);
    swift_endAccess();
    a2, v39, v40, v41, v42, v43, v44, v45;
    a1, v46, v47, v48, v49, v50, v51, v52;
    goto LABEL_15;
  }

LABEL_31:
  __break(1u);
}

void sub_1BD6DB5A4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_10:
    swift_beginAccess();
    sub_1BE048C84();
    sub_1BD1DE2D8(0, 0, a1);
    swift_endAccess();
    a1, v5, v6, v7, v8, v9, v10, v11;
    return;
  }

  v2 = sub_1BE053704();
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v2 >= 1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1BFB40900](i, a1);
        swift_weakAssign();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v4 = a1 + 32;
      do
      {
        v4 += 8;
        swift_weakAssign();
        --v2;
      }

      while (v2);
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_1BD6DB6B4()
{
  v1 = v0;
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BE0B7020;
  *(v3 + 32) = v1;
  *(v2 + 16) = v3;
  v4 = objc_opt_self();
  sub_1BE048964();
  v5 = [v4 hashTableWithOptions_];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43CE0, &unk_1BE0B9B10);
  inited = swift_initStackObject();
  *(inited + 16) = sub_1BD39F6CC;
  *(inited + 24) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40118, &unk_1BE0F0B80);
  v8 = swift_initStackObject();
  v8[2] = inited;
  v9 = sub_1BE048964();
  v10 = *(inited + 16);
  v10(v45, v9);
  while (1)
  {
    v19 = v45[0];
    if (!v45[0])
    {
      break;
    }

    if (*(v45[0] + 88) == 1 && (*(v45[0] + 88) = 0, *(v19 + 32)))
    {
      v20 = *(v19 + 24);
      v21 = v19;
      ObjectType = swift_getObjectType();
      (*(v20 + 64))(ObjectType, v20);
      v21, v23, v24, v25, v26, v27, v28, v29;
    }

    else
    {
      v19, v11, v12, v13, v14, v15, v16, v17;
    }

    v10(v45, v18);
  }

  v8, v11, v12, v13, v14, v15, v16, v17;
  swift_setDeallocating();
  v8[2], v30, v31, v32, v33, v34, v35, v36;
  swift_beginAccess();
  v37 = *(v1 + 72);
  *(v1 + 72) = MEMORY[0x1E69E7CC0];
  v37, v38, v39, v40, v41, v42, v43, v44;
}

uint64_t sub_1BD6DB8A0()
{
  v1 = v0;
  v2 = *(v0 + 16);
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = swift_conformsToProtocol2();
  if (!v4 || v2 == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_beginAccess();
  v7 = *(v0 + 72);
  if (v7 >> 62)
  {
    result = sub_1BE053704();
    if (result)
    {
LABEL_12:
      v9 = result - 1;
      if (__OFSUB__(result, 1))
      {
        __break(1u);
      }

      else if ((v7 & 0xC000000000000001) == 0)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v10 = *(v7 + 8 * v9 + 32);
          swift_unknownObjectRetain();
          sub_1BE048964();
LABEL_17:
          v12 = v10[2];
          v11 = v10[3];
          swift_unknownObjectRetain();
          goto LABEL_20;
        }

        __break(1u);
        return result;
      }

      swift_unknownObjectRetain();
      sub_1BE048C84();
      v10 = MEMORY[0x1BFB40900](v9, v7);
      v7, v36, v37, v38, v39, v40, v41, v42;
      goto LABEL_17;
    }
  }

  else
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_12;
    }
  }

  swift_unknownObjectRetain();
  v12 = 0;
  v11 = 0;
  v10 = 0;
LABEL_20:
  ObjectType = swift_getObjectType();
  v14 = (*(v6 + 16))(v12, v11, ObjectType, v6);
  v16 = v15;
  swift_unknownObjectRelease();
  if (!v14)
  {
    swift_unknownObjectRelease();
    v10, v29, v30, v31, v32, v33, v34, v35;
    return 0;
  }

  type metadata accessor for UIFlowNode();
  v17 = swift_allocObject();
  v18 = swift_getObjectType();
  v19 = swift_unknownObjectRetain();
  v20 = sub_1BD6DC1D0(v19, v17, v18, v16);
  swift_beginAccess();
  v21 = sub_1BE048964();
  MEMORY[0x1BFB3F7A0](v21);
  if (*((*(v1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  swift_endAccess();
  swift_weakAssign();
  swift_weakAssign();
  *(v20 + 57) = 1;
  swift_unknownObjectRelease();
  v10, v22, v23, v24, v25, v26, v27, v28;
  swift_unknownObjectRelease();
  return v20;
}

void sub_1BD6DBB64()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = *(v2 + 72);
    v33 = MEMORY[0x1E69E7CC0];
    if (v3 >> 62)
    {
      goto LABEL_24;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    sub_1BE048C84();
    if (v4)
    {
      v32 = v2;
      v2 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1BFB40900](v2, v3);
          v13 = (v2 + 1);
          if (__OFADD__(v2, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:
            v2 = v32;
            v14 = v33;
            goto LABEL_18;
          }
        }

        else
        {
          if (v2 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_24:
            v4 = sub_1BE053704();
            goto LABEL_4;
          }

          v12 = *(v3 + 8 * v2 + 32);
          sub_1BE048964();
          v13 = (v2 + 1);
          if (__OFADD__(v2, 1))
          {
            goto LABEL_15;
          }
        }

        if (v12 == v0)
        {
          v12, v5, v6, v7, v8, v9, v10, v11;
        }

        else
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        ++v2;
        if (v13 == v4)
        {
          goto LABEL_16;
        }
      }
    }

    v14 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v3, v5, v6, v7, v8, v9, v10, v11;
    v15 = *(v2 + 72);
    *(v2 + 72) = v14;
    v15, v16, v17, v18, v19, v20, v21, v22;
    swift_weakAssign();
    if (*(v0 + 88))
    {
      *(v0 + 88) = 0;
      if (*(v0 + 32))
      {
        v30 = *(v0 + 24);
        ObjectType = swift_getObjectType();
        (*(v30 + 64))(ObjectType, v30);
      }
    }

    v2, v23, v24, v25, v26, v27, v28, v29;
  }
}

void sub_1BD6DBD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3 || !a2)
  {
    if ((a3 - 0x2000000000000000) >> 62 != 3)
    {
      __break(1u);
      goto LABEL_34;
    }
  }

  else
  {
    MEMORY[0x1BFB3F610](a1);
    MEMORY[0x1BFB3F610](0xA3D3D3D3D20, 0xE600000000000000);
    MEMORY[0x1BFB3F610](0x203D3D3D3DLL, 0xE500000000000000);
    0xE500000000000000, v6, v7, v8, v9, v10, v11, v12;
  }

  v13 = sub_1BE052614();
  v15 = v14;
  v16 = sub_1BD6DB14C();
  if (v16)
  {
    v17 = 0x3A6C61646F6D202CLL;
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    v18 = 0xEC00000073655920;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  if (*(v3 + 114))
  {
    v19 = 0xD00000000000001ALL;
  }

  else
  {
    v19 = 0;
  }

  if (*(v3 + 114))
  {
    v20 = 0x80000001BE135EB0;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  if (*(v3 + 115))
  {
    v21 = 0xD000000000000014;
  }

  else
  {
    v21 = 0;
  }

  v96 = v21;
  if (*(v3 + 115))
  {
    v22 = 0x80000001BE135E90;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  sub_1BE053834();
  MEMORY[0x1BFB3F610](10, 0xE100000000000000);
  MEMORY[0x1BFB3F610](v13, v15);
  v15, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1BFB3F610](2108704, 0xE300000000000000);
  v30 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v32 = (*(v30 + 8))(ObjectType, v30);
  v34 = v33;
  MEMORY[0x1BFB3F610](v32);
  v34, v35, v36, v37, v38, v39, v40, v41;
  MEMORY[0x1BFB3F610](0x3A65746174732820, 0xE900000000000020);
  sub_1BE053974();
  MEMORY[0x1BFB3F610](v17, v18);
  v18, v42, v43, v44, v45, v46, v47, v48;
  MEMORY[0x1BFB3F610](v19, v20);
  v20, v49, v50, v51, v52, v53, v54, v55;
  MEMORY[0x1BFB3F610](v96, v22);
  v22, v56, v57, v58, v59, v60, v61, v62;
  MEMORY[0x1BFB3F610](41, 0xE100000000000000);
  MEMORY[0x1BFB3F610](0, 0xE000000000000000);
  0xE000000000000000, v63, v64, v65, v66, v67, v68, v69;
  swift_beginAccess();
  v4 = *(v3 + 72);
  if (v4 >> 62)
  {
LABEL_34:
    v70 = sub_1BE053704();
    if (!v70)
    {
      return;
    }

    goto LABEL_25;
  }

  v70 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v70)
  {
    return;
  }

LABEL_25:
  if (v70 < 1)
  {
    __break(1u);
  }

  else
  {
    sub_1BE048C84();
    v71 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v72 = MEMORY[0x1BFB40900](v71, v4);
      }

      else
      {
        v72 = *(v4 + 8 * v71 + 32);
        sub_1BE048964();
      }

      ++v71;
      sub_1BD6DBD34(0, 0, a3 + 1);
      v74 = v73;
      MEMORY[0x1BFB3F610]();
      v72, v75, v76, v77, v78, v79, v80, v81;
      v74, v82, v83, v84, v85, v86, v87, v88;
    }

    while (v70 != v71);
    v4, v89, v90, v91, v92, v93, v94, v95;
  }
}

uint64_t sub_1BD6DC0B0()
{
  v1 = *(*v0 + 24);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 8))(ObjectType, v1);
  v5 = v4;
  MEMORY[0x1BFB3F610](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1BFB3F610](62, 0xE100000000000000);
  return 0x3C65646F4ELL;
}

uint64_t sub_1BD6DC138()
{
  sub_1BD0D4534(v0 + 16);
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;
  sub_1BD28B4C8(*(v0 + 48));

  return swift_deallocClassInstance();
}

void *sub_1BD6DC1A4()
{
  v1 = *(v0 + 48);
  sub_1BD28B4A8(v1);
  return v1;
}

uint64_t sub_1BD6DC1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 32) = 0;
  *(a2 + 40) = MEMORY[0x1E69E7CC8];
  *(a2 + 48) = 2;
  *(a2 + 56) = 0;
  swift_weakInit();
  *(a2 + 72) = MEMORY[0x1E69E7CC0];
  swift_weakInit();
  *(a2 + 88) = 1;
  *(a2 + 104) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 112) = 514;
  type metadata accessor for UIFlowModifier();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    *(a2 + 16) = *(v7 + 16);
    v8 = *(v7 + 32);
    v9 = *(v7 + 33);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    a1 = *(a2 + 16);
  }

  else
  {
    *(a2 + 16) = a1;
    *(a2 + 24) = a4;
    v8 = byte_1EBDAB280;
    v9 = byte_1EBDAB281;
  }

  *(a2 + 114) = v8;
  *(a2 + 115) = v9;
  swift_getObjectType();
  v10 = swift_conformsToProtocol2();
  if (v10 && a1)
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    v13 = *(v11 + 16);
    swift_unknownObjectRetain();
    v14 = v13(ObjectType, v11);
    v15 = *(v14 + 16);
    if (v15)
    {
      type metadata accessor for UIFlowNode();
      v39 = v14;
      v16 = (v14 + 40);
      do
      {
        v17 = *v16;
        v18 = swift_allocObject();
        v19 = swift_getObjectType();
        v20 = swift_unknownObjectRetain_n();
        v21 = sub_1BD6DC1D0(v20, v18, v19, v17);
        swift_beginAccess();
        v22 = sub_1BE048964();
        MEMORY[0x1BFB3F7A0](v22);
        if (*((*(a2 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        swift_endAccess();
        swift_unknownObjectRelease();
        swift_weakAssign();
        swift_weakAssign();
        v21[57] = 0;
        v21, v23, v24, v25, v26, v27, v28, v29;
        v16 += 2;
        --v15;
      }

      while (v15);
      swift_unknownObjectRelease();
      v37 = v39;
    }

    else
    {
      swift_unknownObjectRelease();
      v37 = v14;
    }

    v37, v30, v31, v32, v33, v34, v35, v36;
  }

  return a2;
}

uint64_t sub_1BD6DC534(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v42 = a2;
  v43 = a1;
  v41 = sub_1BE04BAC4();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v40 = v2;
  v5 = sub_1BD188298(v2, KeyPath);
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v20 = v5[2];
  v21 = v5 + 4;
  v46 = 0x80000001BE1182A0;
  v47 = 0x80000001BE1182F0;
  v44 = 0x80000001BE118230;
  v45 = 0x80000001BE118280;
  while (2)
  {
    if (v20)
    {
      v22 = 0xEF65636976654420;
      v31 = "ection";
      switch(*v21)
      {
        case 1:
          v22 = v44;
          goto LABEL_3;
        case 2:
          v22 = 0xE90000000000006FLL;
          goto LABEL_3;
        case 3:
          v22 = 0xEC0000006E6F6974;
          goto LABEL_3;
        case 4:
          goto LABEL_14;
        case 5:
          v22 = v45;
          goto LABEL_3;
        case 6:
          v22 = v46;
          goto LABEL_3;
        case 7:
          v22 = 0xEC000000746C7561;
          goto LABEL_3;
        case 8:
          v22 = 0xEE00746E656D6C6CLL;
          goto LABEL_3;
        case 9:
          v22 = 0xE90000000000006ELL;
          goto LABEL_3;
        case 0xA:
          v22 = 0xED00006E6F697461;
          goto LABEL_3;
        case 0xB:
          v22 = v47;
          goto LABEL_3;
        case 0xC:
          v22 = 0xEC00000068637461;
          goto LABEL_3;
        case 0xD:
          v31 = "Auto Reload Set Up";
LABEL_14:
          v22 = (v31 | 0x8000000000000000);
          if (0x80000001BE118310 != (v31 | 0x8000000000000000))
          {
            goto LABEL_3;
          }

          v5, v13, v14, v15, v16, v17, v18, v19;
          v5 = v22;
          goto LABEL_25;
        default:
LABEL_3:
          v23 = sub_1BE053B84();
          v22, v24, v25, v26, v27, v28, v29, v30;
          ++v21;
          --v20;
          if ((v23 & 1) == 0)
          {
            continue;
          }

LABEL_25:
          v5, v13, v14, v15, v16, v17, v18, v19;
          v34 = 0x6F63206775626564;
          v35 = 0xEC0000006769666ELL;
          break;
      }

      goto LABEL_26;
    }

    break;
  }

  v5, v13, v14, v15, v16, v17, v18, v19;
  v32 = v38;
  sub_1BE04BC34();
  v33 = sub_1BE04BA54();
  (*(v39 + 8))(v32, v41);
  if (v33)
  {
    if (sub_1BD6DC958())
    {
      v34 = 0;
      v35 = 0;
LABEL_26:
      v36 = 0;
      return v43(v34, v35, 0, v36);
    }

    v34 = 0xD000000000000027;
    v35 = 0x80000001BE135F30;
  }

  else
  {
    v35 = 0x80000001BE135F10;
    v34 = 0xD000000000000013;
  }

  v36 = 1;
  return v43(v34, v35, 0, v36);
}

uint64_t sub_1BD6DC958()
{
  v1 = sub_1BE04B944();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BB94();
  v5 = sub_1BE04B8E4();
  (*(v2 + 8))(v4, v1);
  v6 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningVerificationNoticeFlowItem_provisionedPassesGroups);
  if (v6 >> 62)
  {
    goto LABEL_30;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    do
    {
      v8 = 0;
      v46 = v6;
      v47 = v6 & 0xC000000000000001;
      v43 = v6 + 32;
      v44 = v6 & 0xFFFFFFFFFFFFFF8;
      v9 = &selRef_dismissedDiscoveryItemWithIdentifier_callToAction_cardSize_;
      v45 = v7;
      while (1)
      {
        if (v47)
        {
          v10 = MEMORY[0x1BFB40900](v8);
        }

        else
        {
          if (v8 >= *(v44 + 16))
          {
            goto LABEL_29;
          }

          v10 = *&v43[8 * v8];
        }

        v11 = v10;
        v12 = __OFADD__(v8, 1);
        v13 = v8 + 1;
        if (v12)
        {
          break;
        }

        v14 = sub_1BE04BD44();
        v21 = v14;
        v48 = v13;
        v49 = v11;
        if (v14 >> 62)
        {
          v22 = sub_1BE053704();
          if (v22)
          {
LABEL_12:
            v23 = 0;
            v50 = v21 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if ((v21 & 0xC000000000000001) != 0)
              {
                v24 = MEMORY[0x1BFB40900](v23, v21);
              }

              else
              {
                if (v23 >= *(v50 + 16))
                {
                  goto LABEL_27;
                }

                v24 = *(v21 + 8 * v23 + 32);
              }

              v25 = v24;
              v26 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
                break;
              }

              if ([v24 v9[133]] - 3 < 2 || PKShowFakeVerificationChannels())
              {
                v27 = [v5 verificationRecordForPass_];
                if (v27)
                {
                  v28 = v5;
                  v29 = v9;
                  v30 = v27;
                  v31 = [v27 activeMethodGroup];

                  v9 = v29;
                  v5 = v28;

                  v25 = v31;
                  if (!v31)
                  {
                    v21, v32, v33, v34, v35, v36, v37, v38;

                    v39 = 1;
                    v5 = v49;
                    goto LABEL_32;
                  }
                }
              }

              ++v23;
              if (v26 == v22)
              {
                goto LABEL_4;
              }
            }

            __break(1u);
LABEL_27:
            __break(1u);
            break;
          }
        }

        else
        {
          v22 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v22)
          {
            goto LABEL_12;
          }
        }

LABEL_4:
        v21, v6, v15, v16, v17, v18, v19, v20;

        v6 = v46;
        v8 = v48;
        if (v48 == v45)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v40 = v6;
      v41 = sub_1BE053704();
      v6 = v40;
      v7 = v41;
    }

    while (v41);
  }

LABEL_31:
  v39 = 0;
LABEL_32:

  return v39;
}

uint64_t sub_1BD6DCC64()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningVerificationNoticeFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD6DCCA0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningVerificationNoticeFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1BD6DCCF0()
{
  v1 = *&v0[OBJC_IVAR____TtC9PassKitUI38ProvisioningVerificationNoticeFlowItem_context];
  v2 = objc_allocWithZone(type metadata accessor for ProvisioningVerificationNoticeViewController());
  sub_1BE048964();
  v3 = v0;

  return sub_1BD6DCD58(v1, v3, v2);
}

id sub_1BD6DCD58(void *a1, void *a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_1BE04BAC4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a3[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationNoticeViewController_delegate + 8] = 0;
  v11 = swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC9PassKitUI44ProvisioningVerificationNoticeViewController_provisioningContext] = a1;
  *(v11 + 8) = &off_1F3BB6820;
  swift_unknownObjectWeakAssign();
  sub_1BE048964();
  sub_1BE04BC34();
  v12 = sub_1BE04B9A4();
  (*(v8 + 8))(v10, v7);
  v23.receiver = a3;
  v23.super_class = ObjectType;
  result = objc_msgSendSuper2(&v23, sel_initWithContext_, v12);
  if (result)
  {
    v14 = result;
    [v14 setExplanationViewControllerDelegate_];
    v15 = [v14 navigationItem];
    [v15 setHidesBackButton_];

    a1, v16, v17, v18, v19, v20, v21, v22;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1BD6DCF10(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BD6DD1AC(a1, a2, a3, a4, a5);
  v6 = v5;
  v7 = v5;
  return v6;
}

void sub_1BD6DD028(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1BE052224();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id NearbyPeerPaymentViewProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NearbyPeerPaymentViewProvider.init()()
{
  *&v0[OBJC_IVAR___PKNearbyPeerPaymentViewProvider_amountEntryVC] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyPeerPaymentViewProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NearbyPeerPaymentViewProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyPeerPaymentViewProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD6DD1AC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v87 = a3;
  v88 = a5;
  v85 = a2;
  v86 = a4;
  v89 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v83 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50490, &unk_1BE0F0C38);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v83 - v12;
  v14 = type metadata accessor for NearbyPeerPaymentAmountEntryView(0);
  v90 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v83 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v84 = &v83 - v20;
  type metadata accessor for NearbyPeerPaymentSenderAuthorizationController(0);
  swift_allocObject();
  v21 = NearbyPeerPaymentSenderAuthorizationController.init()();
  v22 = *(v14 + 36);
  v23 = type metadata accessor for FeatureError(0);
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  sub_1BD23C2BC(v10, v7);
  v24 = v21;
  sub_1BE048964();
  sub_1BE051694();
  sub_1BD0DE53C(v10, &qword_1EBD416C0, &unk_1BE0BC2A0);
  v25 = (v18 + *(v14 + 40));
  type metadata accessor for AirDropRequirements(0);
  v26 = swift_allocObject();
  v27 = [objc_allocWithZone(MEMORY[0x1E69995C8]) init];
  [v27 activate];
  *(v26 + 16) = v27;
  *(v26 + 24) = [objc_opt_self() nearFieldSharingEnabled];
  *(v26 + 25) = 769;
  sub_1BE04B5C4();
  v92 = v26;
  sub_1BE051694();
  v29 = v93;
  v28 = v94;
  *v25 = v93;
  v25[1] = v28;
  v30 = [objc_opt_self() sharedInstance];
  if (!v30)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v31 = v30;
  v32 = [v30 account];

  if (!v32)
  {

    sub_1BD0DE53C(v18 + v22, &qword_1EBD3E968, &qword_1BE0C4110);
    v29, v36, v37, v38, v39, v40, v41, v42;
    v28, v43, v44, v45, v46, v47, v48, v49;
    (*(v90 + 56))(v13, 1, 1, v14);
LABEL_15:
    sub_1BD0DE53C(v13, &qword_1EBD50490, &unk_1BE0F0C38);
    return;
  }

  *v18 = v24;
  v18[3] = v32;
  v33 = v89;
  if (v89)
  {
    v34 = v32;
    v35 = v33;
  }

  else
  {
    sub_1BD1973C4();
    v50 = v32;
    v35 = sub_1BE053054();
  }

  v51 = v33;
  v52 = [v32 currentBalance];

  if (!v52)
  {
    goto LABEL_18;
  }

  v53 = [v52 currency];

  v54 = PKCurrencyAmountMake();
  if (!v54)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v18[4] = v54;
  v18[5] = 0;
  v56 = v88;
  v57 = v85;
  if (!v87)
  {
    v57 = 0;
  }

  v58 = 0xE000000000000000;
  if (v87)
  {
    v58 = v87;
  }

  v18[6] = v57;
  v18[7] = v58;
  v18[8] = 0;
  v18[1] = v86;
  v18[2] = v56;
  sub_1BD6DD7E0(v18, v13, v55);
  v59 = v90;
  (*(v90 + 56))(v13, 0, 1, v14);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BD6DD844(v18, v60);
  if ((*(v59 + 48))(v13, 1, v14) == 1)
  {
    v24, v61, v62, v63, v64, v65, v66, v67;
    goto LABEL_15;
  }

  v69 = v13;
  v70 = v84;
  sub_1BD6DD8A0(v69, v84, v68);
  sub_1BD6DD7E0(v70, v83, v71);
  v72 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD50498, &qword_1BE0F0C48));
  v73 = sub_1BE04F894();
  [v73 setOverrideUserInterfaceStyle_];
  v24, v74, v75, v76, v77, v78, v79, v80;
  sub_1BD6DD844(v70, v81);
  v82 = *(v91 + OBJC_IVAR___PKNearbyPeerPaymentViewProvider_amountEntryVC);
  *(v91 + OBJC_IVAR___PKNearbyPeerPaymentViewProvider_amountEntryVC) = v73;
}

uint64_t sub_1BD6DD7E0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for NearbyPeerPaymentAmountEntryView(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD6DD844(uint64_t a1, double a2)
{
  v3 = type metadata accessor for NearbyPeerPaymentAmountEntryView(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD6DD8A0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for NearbyPeerPaymentAmountEntryView(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1BD6DD904(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1BE0534B4();
    if (v2 <= 0x3F)
    {
      sub_1BD6DDEB0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD6DD9BC(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  v12 = *(v8 + 80);
  v13 = *(*(*(a3 + 24) - 8) + 64);
  if (!v9)
  {
    ++v13;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v5 - 8) + 64) + v12;
  v15 = v13 + 7;
  if (v11 < a2)
  {
    v16 = ((((((((((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v17 = a2 - v11;
    v18 = v16 & 0xFFFFFFF8;
    if ((v16 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = v17 + 1;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *(a1 + v16);
        if (v22)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v22 = *(a1 + v16);
        if (v22)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v21)
    {
      v22 = *(a1 + v16);
      if (v22)
      {
LABEL_27:
        v23 = v22 - 1;
        if (v18)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        return v11 + (v24 | v23) + 1;
      }
    }
  }

  if (v7 == v11)
  {
    v25 = *(v6 + 48);

    return v25(a1, v7, v5);
  }

  v27 = (a1 + v14) & ~v12;
  if (v10 == v11)
  {
    if (v9 >= 2)
    {
      v30 = (*(v8 + 48))(v27);
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v28 = *(((v15 + v27) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  v29 = v28 - 1;
  if (v29 < 0)
  {
    v29 = -1;
  }

  return (v29 + 1);
}

unsigned int *sub_1BD6DDBF8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a4 + 24) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = *(v9 + 64);
  if (v10)
  {
    v13 = v10 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v8)
  {
    v14 = *(v7 + 84);
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  v15 = *(*(v6 - 8) + 64) + v11;
  if (!v10)
  {
    ++v12;
  }

  v16 = v12 + 7;
  v17 = ((((((((((v16 + (v15 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 < a3)
  {
    v18 = a3 - v14;
    if (((((((((((v16 + (v15 & ~v11)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v5 = v20;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v14)
  {
    if (((((((((((v16 + (v15 & ~v11)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v21 = a2 - v14;
    }

    else
    {
      v21 = 1;
    }

    if (((((((((((v16 + (v15 & ~v11)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v22 = ~v14 + a2;
      v23 = result;
      bzero(result, ((((((((((v16 + (v15 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v23;
      *v23 = v22;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v17) = v21;
      }

      else
      {
        *(result + v17) = v21;
      }
    }

    else if (v5)
    {
      *(result + v17) = v21;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + v17) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_41;
    }

    *(result + v17) = 0;
  }

  else if (v5)
  {
    *(result + v17) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return result;
  }

LABEL_41:
  if (v8 == v14)
  {
    v24 = *(v7 + 56);

    return v24();
  }

  else
  {
    result = ((result + v15) & ~v11);
    if (v13 == v14)
    {
      v25 = *(v9 + 56);
      v26 = a2 + 1;

      return v25(result, v26, v10);
    }

    else
    {
      v27 = ((result + v16) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v27 = a2 - 0x7FFFFFFF;
        v27[1] = 0;
      }

      else
      {
        v27[1] = a2;
      }
    }
  }

  return result;
}

void sub_1BD6DDEB0()
{
  if (!qword_1EBD4A850)
  {
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4A850);
    }
  }
}

uint64_t sub_1BD6DDF44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60, &qword_1BE0E1650);
  v37 = a1[2];
  v3 = sub_1BE04EBD4();
  v35 = a1[4];
  v31 = MEMORY[0x1E697F940];
  v76 = v35;
  v77 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60, &qword_1BE0E1650, MEMORY[0x1E697F940]);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for OffsetScrollView(255, v3, WitnessTable, v5);
  sub_1BE04EBD4();
  v6 = sub_1BE04EBD4();
  v32 = a1;
  v34 = a1[3];
  sub_1BE0534B4();
  v33 = a1[5];
  v75 = v33;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v73 = swift_getWitnessTable();
  v74 = MEMORY[0x1E697EBF8];
  v71 = swift_getWitnessTable();
  v72 = v77;
  v7 = swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A858, &qword_1BE0E1658);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50520, &qword_1BE0F0CD0);
  sub_1BE04EBD4();
  v69 = swift_getWitnessTable();
  v70 = sub_1BD0DE4F4(&qword_1EBD50528, &qword_1EBD50520, &qword_1BE0F0CD0, v31);
  swift_getWitnessTable();
  sub_1BE04F6A4();
  v8 = sub_1BE04EBD4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = v7;
  v28 = v7;
  v68 = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  *&v78 = v6;
  *(&v78 + 1) = MEMORY[0x1E6981CD8];
  *&v79 = OpaqueTypeMetadata2;
  *(&v79 + 1) = v8;
  *&v80 = v7;
  *(&v80 + 1) = MEMORY[0x1E6981CD0];
  *&v81 = OpaqueTypeConformance2;
  v27 = OpaqueTypeConformance2;
  *(&v81 + 1) = v10;
  v11 = v10;
  v30 = MEMORY[0x1E6981460];
  v12 = swift_getOpaqueTypeMetadata2();
  v31 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v18 = v36;
  sub_1BD6DE60C(v32, &v56);
  v53 = v64;
  v54 = v65;
  v55 = v66;
  v49 = v60;
  v50 = v61;
  v51 = v62;
  v52 = v63;
  v45 = v56;
  v46 = v57;
  v47 = v58;
  v48 = v59;
  sub_1BE051C64();
  *&v19 = v37;
  *(&v19 + 1) = v34;
  *&v20 = v35;
  *(&v20 + 1) = v33;
  v42 = v19;
  v43 = v20;
  v44 = v18;
  v39 = v19;
  v40 = v20;
  v41 = v18;
  v21 = swift_checkMetadataState();
  v22 = swift_checkMetadataState();
  v23 = swift_checkMetadataState();
  v24 = v28;
  sub_1BE0510B4();
  v86 = v53;
  v87 = v54;
  v88 = v55;
  v82 = v49;
  v83 = v50;
  v84 = v51;
  v85 = v52;
  v78 = v45;
  v79 = v46;
  v80 = v47;
  v81 = v48;
  (*(*(v21 - 8) + 8))(&v78, v21);
  *&v56 = v21;
  *(&v56 + 1) = MEMORY[0x1E6981CD8];
  *&v57 = v22;
  *(&v57 + 1) = v23;
  *&v58 = v24;
  *(&v58 + 1) = MEMORY[0x1E6981CD0];
  *&v59 = v27;
  *(&v59 + 1) = v11;
  swift_getOpaqueTypeConformance2();
  sub_1BD147308();
  v25 = *(v31 + 8);
  v25(v14, v12);
  sub_1BD147308();
  return (v25)(v17, v12);
}

uint64_t sub_1BD6DE60C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v4 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v86 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v76 - v8;
  v11 = (v2 + *(v10 + 56));
  v12 = *v11;
  v13 = v11[1];
  *&v134 = v12;
  *(&v134 + 1) = v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
  sub_1BE0516A4();
  v14 = v123;
  v15 = *(v4 + 16);
  v92 = v4 + 16;
  v93 = v15;
  v82 = v9;
  v79 = v2;
  v15(v9, v2, a1);
  v16 = *(v4 + 80);
  v83 = (v16 + 56) & ~v16;
  v81 = v6;
  v17 = swift_allocObject();
  v18 = a1[3];
  v89 = a1[2];
  v76 = v18;
  *(v17 + 2) = v89;
  *(v17 + 3) = v18;
  v19 = a1[5];
  v88 = a1[4];
  *(v17 + 4) = v88;
  *(v17 + 5) = v19;
  *(v17 + 6) = v14;
  v90 = *(v4 + 32);
  v91 = v19;
  v90(&v17[(v16 + 56) & ~v16], v9, a1);
  v20 = v86;
  v21 = a1;
  v77 = a1;
  v93(v86, v2, a1);
  v80 = v16;
  v22 = (v16 + 48) & ~v16;
  v23 = swift_allocObject();
  v24 = v88;
  v25 = v76;
  *(v23 + 2) = v89;
  *(v23 + 3) = v25;
  v26 = v90;
  v27 = v91;
  *(v23 + 4) = v24;
  *(v23 + 5) = v27;
  v26(&v23[v22], v20, v21);
  v86 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60, &qword_1BE0E1650);
  v28 = sub_1BE04EBD4();
  v85 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60, &qword_1BE0E1650, MEMORY[0x1E697F940]);
  v109 = v24;
  v110 = v85;
  v78 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  PKEdgeInsetsMake();
  v31 = v30;
  v33 = v32;
  *&v134 = v34;
  *(&v134 + 1) = v30;
  *&v135 = v35;
  *(&v135 + 1) = v32;
  sub_1BE051CD4();
  type metadata accessor for OffsetScrollView(0, v28, WitnessTable, v36);
  v75 = swift_getWitnessTable();
  sub_1BE050F54();
  v33, v37, v38, v39, v40, v41, v42, v43;
  v31, v44, v45, v46, v47, v48, v49, v50;
  v117 = v129;
  v118 = v130;
  v119 = v131;
  v113 = v125;
  v114 = v126;
  v115 = v127;
  v116 = v128;
  v111 = v123;
  v112 = v124;
  v51 = v77;
  v52 = v79;
  v53 = (v79 + *(v77 + 16));
  v54 = *v53;
  v55 = v53[1];
  *&v134 = v54;
  *(&v134 + 1) = v55;
  sub_1BE0516A4();
  v56 = v96;
  v57 = v82;
  v93(v82, v52, v51);
  v58 = v83;
  v59 = swift_allocObject();
  v60 = v88;
  *(v59 + 2) = v89;
  *(v59 + 3) = v25;
  v61 = v90;
  v62 = v91;
  *(v59 + 4) = v60;
  *(v59 + 5) = v62;
  *(v59 + 6) = v56;
  v61(&v59[v58], v57, v51);
  v63 = sub_1BE04EBD4();
  v107 = v75;
  v108 = MEMORY[0x1E697EBF8];
  v64 = swift_getWitnessTable();
  sub_1BD6E0768(sub_1BD6E0AD8, v59, v63, v64);
  v59, v65, v66, v67, v68, v69, v70, v71;
  v122[6] = v117;
  v122[7] = v118;
  v122[8] = v119;
  v122[2] = v113;
  v122[3] = v114;
  v122[4] = v115;
  v122[5] = v116;
  v122[0] = v111;
  v122[1] = v112;
  (*(*(v63 - 8) + 8))(v122, v63);
  v104 = v142;
  v105 = v143;
  v106 = v144;
  v100 = v138;
  v101 = v139;
  v102 = v140;
  v103 = v141;
  v96 = v134;
  v97 = v135;
  v98 = v136;
  v99 = v137;
  v72 = sub_1BE04EBD4();
  v94 = v64;
  v95 = v85;
  swift_getWitnessTable();
  sub_1BD147308();
  v131 = v104;
  v132 = v105;
  v133 = v106;
  v127 = v100;
  v128 = v101;
  v129 = v102;
  v130 = v103;
  v123 = v96;
  v124 = v97;
  v125 = v98;
  v126 = v99;
  v73 = *(*(v72 - 8) + 8);
  v73(&v123, v72);
  v104 = v119;
  v105 = v120;
  v106 = v121;
  v100 = v115;
  v101 = v116;
  v102 = v117;
  v103 = v118;
  v96 = v111;
  v97 = v112;
  v98 = v113;
  v99 = v114;
  sub_1BD147308();
  v142 = v104;
  v143 = v105;
  v144 = v106;
  v138 = v100;
  v139 = v101;
  v140 = v102;
  v141 = v103;
  v134 = v96;
  v135 = v97;
  v136 = v98;
  v137 = v99;
  return (v73)(&v134, v72);
}

uint64_t sub_1BD6DECC0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a6;
  v39 = a5;
  v40 = a3;
  v41 = a2;
  v42 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60, &qword_1BE0E1650);
  v11 = sub_1BE04EBD4();
  v37 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60, &qword_1BE0E1650, MEMORY[0x1E697F940]);
  v64 = a5;
  v65 = v37;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for OffsetScrollView(255, v11, WitnessTable, v13);
  sub_1BE04EBD4();
  v34 = sub_1BE04EBD4();
  sub_1BE0534B4();
  v63 = a6;
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v61 = swift_getWitnessTable();
  v62 = MEMORY[0x1E697EBF8];
  v59 = swift_getWitnessTable();
  v60 = v37;
  v35 = swift_getWitnessTable();
  *&v48 = v34;
  *(&v48 + 1) = OpaqueTypeMetadata2;
  *&v49 = v35;
  *(&v49 + 1) = swift_getOpaqueTypeConformance2();
  v15 = *(&v49 + 1);
  v36 = MEMORY[0x1E697CE30];
  v16 = swift_getOpaqueTypeMetadata2();
  v37 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  v22 = a1[9];
  v56 = a1[8];
  v57 = v22;
  v58 = a1[10];
  v23 = a1[5];
  v52 = a1[4];
  v53 = v23;
  v24 = a1[7];
  v54 = a1[6];
  v55 = v24;
  v25 = a1[1];
  v48 = *a1;
  v49 = v25;
  v26 = a1[3];
  v50 = a1[2];
  v51 = v26;
  v43 = v40;
  v44 = a4;
  v45 = v39;
  v46 = v38;
  v47 = v41;
  sub_1BE04F7B4();
  v27 = swift_checkMetadataState();
  v28 = swift_checkMetadataState();
  v29 = v15;
  v30 = v35;
  sub_1BE050954();
  *&v48 = v27;
  *(&v48 + 1) = v28;
  *&v49 = v30;
  *(&v49 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  sub_1BD147308();
  v31 = *(v37 + 8);
  v31(v18, v16);
  sub_1BD147308();
  return (v31)(v21, v16);
}

uint64_t sub_1BD6DF0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a2;
  v25 = a4;
  v26 = a1;
  v28 = a6;
  v27 = sub_1BE04F714();
  v8 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE0534B4();
  v33 = a5;
  WitnessTable = swift_getWitnessTable();
  v29 = v11;
  v30 = WitnessTable;
  v23[1] = MEMORY[0x1E697D198];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v23 - v18;
  v29 = v24;
  v30 = a3;
  v31 = v25;
  v32 = a5;
  type metadata accessor for ContentStickyFooterScrollView(0, &v29);
  sub_1BE04F704();
  v20 = swift_checkMetadataState();
  sub_1BE050CB4();
  (*(v8 + 8))(v10, v27);
  v29 = v20;
  v30 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  sub_1BD147308();
  v21 = *(v14 + 8);
  v21(v16, OpaqueTypeMetadata2);
  sub_1BD147308();
  return (v21)(v19, OpaqueTypeMetadata2);
}

uint64_t sub_1BD6DF364@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a2;
  v37 = a6;
  v33 = a5;
  v34 = a3;
  v31 = a4;
  v38 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60, &qword_1BE0E1650);
  v9 = sub_1BE04EBD4();
  v10 = MEMORY[0x1E697F940];
  v35 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60, &qword_1BE0E1650, MEMORY[0x1E697F940]);
  v63 = a5;
  v64 = v35;
  WitnessTable = swift_getWitnessTable();
  v32 = type metadata accessor for OffsetScrollView(255, v9, WitnessTable, v12);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A858, &qword_1BE0E1658);
  sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50520, &qword_1BE0F0CD0);
  v13 = sub_1BE04EBD4();
  v61 = swift_getWitnessTable();
  v62 = sub_1BD0DE4F4(&qword_1EBD50528, &qword_1EBD50520, &qword_1BE0F0CD0, v10);
  v30[1] = v13;
  swift_getWitnessTable();
  v30[0] = sub_1BE04F6A4();
  v14 = sub_1BE04EBD4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v30 - v19;
  v21 = a1[9];
  v58 = a1[8];
  v59 = v21;
  v60 = a1[10];
  v22 = a1[5];
  v54 = a1[4];
  v55 = v22;
  v23 = a1[7];
  v56 = a1[6];
  v57 = v23;
  v24 = a1[1];
  v50 = *a1;
  v51 = v24;
  v25 = a1[3];
  v52 = a1[2];
  v53 = v25;
  v39 = v34;
  v40 = v31;
  v41 = v33;
  v42 = v37;
  v43 = v36;
  sub_1BE04F7B4();
  v48 = swift_getWitnessTable();
  v49 = MEMORY[0x1E697EBF8];
  v46 = swift_getWitnessTable();
  v47 = v35;
  v29 = swift_getWitnessTable();
  sub_1BE050A44();
  v26 = swift_getWitnessTable();
  v44 = v29;
  v45 = v26;
  swift_getWitnessTable();
  sub_1BD147308();
  v27 = *(v15 + 8);
  v27(v17, v14);
  sub_1BD147308();
  return (v27)(v20, v14);
}

uint64_t sub_1BD6DF7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a1;
  v29 = a5;
  v27 = a4;
  v34 = a6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50530, &qword_1BE0F0CD8);
  MEMORY[0x1EEE9AC00](v33);
  v31 = (&WitnessTable - v8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A858, &qword_1BE0E1658);
  sub_1BE0534B4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1BE051854();
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &WitnessTable - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50520, &qword_1BE0F0CD0);
  v12 = sub_1BE04EBD4();
  v32 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &WitnessTable - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v26 = &WitnessTable - v16;
  v35 = a2;
  v36 = a3;
  v17 = v27;
  v18 = v29;
  v37 = v27;
  v38 = v29;
  v39 = v28;
  sub_1BE04F7B4();
  sub_1BE051844();
  v42[0] = a2;
  v42[1] = a3;
  v42[2] = v17;
  v42[3] = v18;
  type metadata accessor for ContentStickyFooterScrollView(0, v42);
  v19 = v31;
  sub_1BD6DFE3C(v31);
  sub_1BE051CD4();
  v20 = swift_getWitnessTable();
  sub_1BD6E0094(&qword_1EBD50538, &qword_1EBD50530, &qword_1BE0F0CD8, sub_1BD6DFFA8);
  sub_1BE050834();
  sub_1BD6E002C(v19);
  (*(v30 + 8))(v11, v9);
  v21 = sub_1BD0DE4F4(&qword_1EBD50528, &qword_1EBD50520, &qword_1BE0F0CD0, MEMORY[0x1E697F940]);
  v40 = v20;
  v41 = v21;
  swift_getWitnessTable();
  v22 = v26;
  sub_1BD147308();
  v23 = *(v32 + 8);
  v23(v14, v12);
  sub_1BD147308();
  return (v23)(v22, v12);
}

uint64_t sub_1BD6DFBE8(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1BE0534B4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v17 = (a1 + *(type metadata accessor for ContentStickyFooterScrollView(0, &v27) + 68));
  v18 = *v17;
  v19 = v17[1];
  v27 = v18;
  v28 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
  sub_1BE0516A4();
  v20 = v25[0];
  v26[1] = a5;
  WitnessTable = swift_getWitnessTable();
  sub_1BD147308();
  v26[0] = v20;
  v27 = v26;
  (*(v11 + 16))(v13, v16, v10);
  v28 = v13;
  v25[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A858, &qword_1BE0E1658);
  v25[1] = v10;
  v24[0] = sub_1BD6E0094(&qword_1EBD36868, &qword_1EBD4A858, &qword_1BE0E1658, sub_1BD0EEEE0);
  v24[1] = WitnessTable;
  sub_1BD13A4C4(&v27, 2uLL, v25);
  v22 = *(v11 + 8);
  v22(v16, v10);
  return (v22)(v13, v10);
}

uint64_t sub_1BD6DFE3C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1BE051404();
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A888, &qword_1BE0E1688) + 36);
  sub_1BE051BD4();
  v5 = sub_1BE0501D4();
  v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD596C0, &unk_1BE0E1690) + 36)] = v5;
  *a2 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
  sub_1BE0516A4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50530, &qword_1BE0F0CD8);
  *(a2 + *(result + 36)) = v7;
  return result;
}

unint64_t sub_1BD6DFFA8()
{
  result = qword_1EBD50540;
  if (!qword_1EBD50540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50548, qword_1BE0F0CE0);
    sub_1BD56254C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50540);
  }

  return result;
}

uint64_t sub_1BD6E002C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50530, &qword_1BE0F0CD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD6E0094(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

void sub_1BD6E0148(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  if (a7 != a6)
  {
    v20 = v10;
    v21 = v9;
    v22 = v7;
    v23 = v8;
    v16 = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v12 = type metadata accessor for ContentStickyFooterScrollView(0, &v16);
    v13 = (result + v12[14]);
    v14 = *v13;
    v15 = v13[1];
    v16 = v14;
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
    sub_1BE0516B4();
    sub_1BD6E020C(v12);
  }
}

void sub_1BD6E020C(int *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
  sub_1BE0516A4();
  sub_1BE0516A4();
  sub_1BE0516A4();
  sub_1BE0516B4();
}

uint64_t sub_1BD6E0338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a3;
  v37 = a5;
  v34 = a1;
  v35 = a4;
  v39 = a6;
  v42[0] = a2;
  v42[1] = a3;
  v42[2] = a4;
  v42[3] = a5;
  v8 = type metadata accessor for ContentStickyFooterScrollView(0, v42);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60, &qword_1BE0E1650);
  v12 = sub_1BE04EBD4();
  v38 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - v17;
  (*(v9 + 16))(v11, a1, v8, v16);
  v19 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v20 = swift_allocObject();
  v22 = v35;
  v21 = v36;
  *(v20 + 2) = a2;
  *(v20 + 3) = v21;
  v23 = v37;
  *(v20 + 4) = v22;
  *(v20 + 5) = v23;
  (*(v9 + 32))(&v20[v19], v11, v8);
  sub_1BD6E0768(sub_1BD6E0EB8, v20, a2, v22);
  v20, v24, v25, v26, v27, v28, v29, v30;
  v31 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60, &qword_1BE0E1650, MEMORY[0x1E697F940]);
  v40 = v22;
  v41 = v31;
  swift_getWitnessTable();
  sub_1BD147308();
  v32 = *(v38 + 8);
  v32(v14, v12);
  sub_1BD147308();
  return (v32)(v18, v12);
}

uint64_t sub_1BD6E0620@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for ContentStickyFooterScrollView(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1BD6E0338(v8, v3, v4, v5, v6, a1);
}

void sub_1BD6E06CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v7 = type metadata accessor for ContentStickyFooterScrollView(0, &v11);
  v8 = (a1 + v7[15]);
  v9 = *v8;
  v10 = v8[1];
  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
  sub_1BE0516B4();
  sub_1BD6E020C(v7);
}

void sub_1BD6E0768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  sub_1BE048964();
  sub_1BE051CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45B70, qword_1BE0E16C0);
  sub_1BD0DE4F4(&qword_1EBD45B78, &qword_1EBD45B70, qword_1BE0E16C0, MEMORY[0x1E697E378]);
  sub_1BE050834();
  v6, v7, v8, v9, v10, v11, v12, v13;
}

void sub_1BD6E0878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  if (a7 != a6)
  {
    v20 = v10;
    v21 = v9;
    v22 = v7;
    v23 = v8;
    v16 = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v12 = type metadata accessor for ContentStickyFooterScrollView(0, &v16);
    v13 = (a1 + v12[16]);
    v14 = *v13;
    v15 = v13[1];
    v16 = v14;
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0, &qword_1BE112720);
    sub_1BE0516B4();
    sub_1BD6E020C(v12);
  }
}

uint64_t objectdestroyTm_79()
{
  v2 = *(v0 + 40);
  v37 = *(v0 + 16);
  v1 = v37;
  v38 = *(v0 + 24);
  v36 = v38;
  v39 = v2;
  v3 = type metadata accessor for ContentStickyFooterScrollView(0, &v37);
  v4 = v0 + ((*(*(v3 - 1) + 80) + 56) & ~*(*(v3 - 1) + 80));
  (*(*(v1 - 8) + 8))(v4, v1);
  v5 = v3[13];
  v6 = *(v36 - 8);
  if (!(*(v6 + 48))(v4 + v5, 1, v36))
  {
    (*(v6 + 8))(v4 + v5, v36);
  }

  *(v4 + v3[14] + 8), v7, v8, v9, v10, v11, v12, v13;
  *(v4 + v3[15] + 8), v14, v15, v16, v17, v18, v19, v20;
  *(v4 + v3[16] + 8), v21, v22, v23, v24, v25, v26, v27;
  *(v4 + v3[17] + 8), v28, v29, v30, v31, v32, v33, v34;
  return swift_deallocObject();
}

uint64_t sub_1BD6E0AF0(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t, __n128, __n128), double a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v14[0] = v2[2];
  v4 = v14[0];
  v14[1] = v5;
  v14[2] = v6;
  v14[3] = v7;
  v8 = *(type metadata accessor for ContentStickyFooterScrollView(0, v14) - 8);
  v9.n128_u64[0] = v2[6];
  v10 = v2 + ((*(v8 + 80) + 56) & ~*(v8 + 80));
  v11.n128_f64[0] = a2;

  return a1(v10, v4, v5, v6, v7, v11, v9);
}

void sub_1BD6E0BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE04E684();
  v6 = v5;
  v7 = sub_1BE051404();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v6;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45B80, &unk_1BE0D51E0);
  sub_1BD4163BC();
  sub_1BD0F9764();
  sub_1BE051064();
  v8, v10, v11, v12, v13, v14, v15, v16;
  v7, v17, v18, v19, v20, v21, v22, v23;
  v9, v24, v25, v26, v27, v28, v29, v30;
}

uint64_t objectdestroy_5Tm_3()
{
  v2 = *(v0 + 40);
  v37 = *(v0 + 16);
  v1 = v37;
  v38 = *(v0 + 24);
  v36 = v38;
  v39 = v2;
  v3 = type metadata accessor for ContentStickyFooterScrollView(0, &v37);
  v4 = v0 + ((*(*(v3 - 1) + 80) + 48) & ~*(*(v3 - 1) + 80));
  (*(*(v1 - 8) + 8))(v4, v1);
  v5 = v3[13];
  v6 = *(v36 - 8);
  if (!(*(v6 + 48))(v4 + v5, 1, v36))
  {
    (*(v6 + 8))(v4 + v5, v36);
  }

  *(v4 + v3[14] + 8), v7, v8, v9, v10, v11, v12, v13;
  *(v4 + v3[15] + 8), v14, v15, v16, v17, v18, v19, v20;
  *(v4 + v3[16] + 8), v21, v22, v23, v24, v25, v26, v27;
  *(v4 + v3[17] + 8), v28, v29, v30, v31, v32, v33, v34;
  return swift_deallocObject();
}

void sub_1BD6E0EB8(double a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v9[0] = v1[2];
  v3 = v9[0];
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = *(type metadata accessor for ContentStickyFooterScrollView(0, v9) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  sub_1BD6E06CC(v8, v3, v4, v5, v6, a1);
}

void sub_1BD6E10D0()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v61 - v7;
  if (*(v0 + OBJC_IVAR____TtC9PassKitUI39PeerPaymentUpdateUserInfoViewController_showCancelButton) == 1)
  {
    [v0 setHidesBackButton:1 animated:{0, v6}];
    v9 = [v0 navigationItem];
    v10 = [v9 leftBarButtonItem];

    if (v10)
    {
    }

    else
    {
      (*(v2 + 104))(v8, *MEMORY[0x1E69B80D0], v1);
      v11 = PKPassKitBundle();
      if (!v11)
      {
LABEL_16:
        __break(1u);
        return;
      }

      v12 = v11;
      sub_1BE04B6F4();
      v14 = v13;

      (*(v2 + 8))(v8, v1);
      updated = type metadata accessor for PeerPaymentUpdateUserInfoViewController();
      v62[0] = v0;
      v15 = v0;
      v16 = sub_1BE052404();
      v14, v17, v18, v19, v20, v21, v22, v23;
      v24 = updated;
      if (updated)
      {
        v25 = __swift_project_boxed_opaque_existential_1(v62, updated);
        v61[1] = v61;
        v26 = *(v24 - 8);
        v27 = MEMORY[0x1EEE9AC00](v25);
        v29 = v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v26 + 16))(v29, v27);
        v30 = sub_1BE053B74();
        (*(v26 + 8))(v29, v24);
        __swift_destroy_boxed_opaque_existential_0(v62, v31, v32, v33, v34, v35, v36, v37);
      }

      else
      {
        v30 = 0;
      }

      v38 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithTitle:v16 style:0 target:v30 action:sel_cancel];

      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1BE0B7020;
      *(v39 + 32) = v38;
      sub_1BD0E5E8C(0, &qword_1EBD41C40, 0x1E69DC708);
      v40 = v38;
      v41 = sub_1BE052724();
      v39, v42, v43, v44, v45, v46, v47, v48;
      [v15 _setLeftBarButtonItems_animated_];
    }
  }

  else
  {
    [v0 setHidesBackButton:0 animated:{0, v6}];
    [v0 _setLeftBarButtonItems_animated_];
  }

  if (*(v0 + OBJC_IVAR____TtC9PassKitUI39PeerPaymentUpdateUserInfoViewController_showSubmitButton) == 1)
  {
    (*(v2 + 104))(v4, *MEMORY[0x1E69B80D8], v1);
    v49 = PKPassKitBundle();
    if (v49)
    {
      v50 = v49;
      sub_1BE04B6F4();
      v52 = v51;

      (*(v2 + 8))(v4, v1);
      v53 = sub_1BE052404();
      v52, v54, v55, v56, v57, v58, v59, v60;
      [v0 setPrimaryButtonTitleText_];

      return;
    }

    __break(1u);
    goto LABEL_16;
  }

  [v0 setShowPrimaryButton_];
}

void sub_1BD6E15FC()
{
  v1 = v0;
  [v0 showActivitySpinnerWithTitle:0 subtitle:0];
  v2 = [v0 dockView];
  if (v2)
  {
    v3 = v2;
    [v2 setButtonsEnabled_];

    v4 = *&v0[OBJC_IVAR____TtC9PassKitUI39PeerPaymentUpdateUserInfoViewController_coordinator];
    v5 = swift_allocObject();
    v5[2] = v1;
    v6 = v1;
    sub_1BD986EF4();
    if (v7)
    {
      v23 = v7;
      sub_1BD6E1758(v7, 0);
      v5, v8, v9, v10, v11, v12, v13, v14;
    }

    else
    {
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1BE048964();
      sub_1BD987AF8(v4, v15, sub_1BD6E24F8, v5);
      v15, v16, v17, v18, v19, v20, v21, v22;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD6E1758(void *a1, void *a2)
{
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1BE051FA4();
  v8 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v11 = sub_1BE052D54();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_1BD6E2500;
  v29 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_22_7;
  v14 = _Block_copy(aBlock);
  v15 = v29;
  v16 = a1;
  v17 = a2;
  v15, v18, v19, v20, v21, v22, v23, v24;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v10, v7, v14);
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v27);
}

void sub_1BD6E1A24(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong hideActivitySpinner];
    v7 = [v6 dockView];
    if (v7)
    {
      v8 = v7;
      [v7 setButtonsEnabled_];

      if (a2)
      {
        v9 = a2;
        v10 = [v6 navigationController];
        [v10 pushViewController:v9 animated:1];

        return;
      }

      if (a3)
      {
        v11 = a3;
        v12 = sub_1BD6E1BE8(a3);
        if (v12)
        {
          v13 = v12;
          [v6 presentViewController:v12 animated:1 completion:0];

          return;
        }
      }

      v14 = [v6 presentingViewController];
      if (v14)
      {
        v15 = v14;
        [v14 dismissViewControllerAnimated:1 completion:0];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1BD6E1BE8(void *a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &aBlock[-1] - v8;
  if (!a1)
  {
    return 0;
  }

  aBlock[0] = a1;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
  sub_1BD0E5E8C(0, &qword_1EBD45E80, 0x1E696ABC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v79 = v1;
  v11 = v82;
  v12 = [v82 localizedFailureReason];
  v13 = v3;
  if (v12)
  {
    v14 = v12;
    sub_1BE052434();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v18 = v11;
  v19 = [v11 localizedRecoverySuggestion];
  if (v19)
  {
    v20 = v4;
    v21 = v19;
    sub_1BE052434();
    v23 = v22;

    v4 = v20;
    if (v16)
    {
LABEL_9:
      v24 = sub_1BE052404();
      v16, v25, v26, v27, v28, v29, v30, v31;
      goto LABEL_12;
    }
  }

  else
  {
    v23 = 0;
    if (v16)
    {
      goto LABEL_9;
    }
  }

  v24 = 0;
LABEL_12:
  v32 = v18;
  v33 = v13;
  if (v23)
  {
    v34 = sub_1BE052404();
    v23, v35, v36, v37, v38, v39, v40, v41;
  }

  else
  {
    v34 = 0;
  }

  v17 = [objc_opt_self() alertControllerWithTitle:v24 message:v34 preferredStyle:1];

  v42 = [v32 code];
  v43 = *MEMORY[0x1E69B8068];
  v44 = *(v4 + 104);
  if (v42 == 40349)
  {
    v44(v9, v43, v13);
    result = PKPassKitBundle();
    if (result)
    {
      v46 = result;
      sub_1BE04B6F4();
      v48 = v47;

      (*(v4 + 8))(v9, v33);
      v49 = sub_1BE052404();
      v48, v50, v51, v52, v53, v54, v55, v56;
      v57 = [objc_opt_self() actionWithTitle:v49 style:1 handler:0];
LABEL_20:

      [v17 addAction_];
      return v17;
    }

    __break(1u);
  }

  else
  {
    v44(v6, v43, v13);
    result = PKPassKitBundle();
    if (result)
    {
      v58 = result;
      sub_1BE04B6F4();
      v60 = v59;

      (*(v4 + 8))(v6, v13);
      v61 = swift_allocObject();
      v62 = v79;
      v61[2] = v79;
      v63 = v62;
      v49 = sub_1BE052404();
      v60, v64, v65, v66, v67, v68, v69, v70;
      aBlock[4] = sub_1BD6E24E8;
      v81 = v61;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD198918;
      aBlock[3] = &block_descriptor_165;
      v71 = _Block_copy(aBlock);
      v81, v72, v73, v74, v75, v76, v77, v78;
      v57 = [objc_opt_self() actionWithTitle:v49 style:1 handler:v71];
      _Block_release(v71);
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD6E208C()
{
  v0 = sub_1BE051F54();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE051FA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v8 = sub_1BE052D54();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BD6E24F0;
  v20 = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_9_7;
  v10 = _Block_copy(aBlock);
  v20, v11, v12, v13, v14, v15, v16, v17;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v7, v3, v10);
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_1BD6E2324(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong presentingViewController];
    if (v3)
    {
      v4 = v3;
      [v3 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

id sub_1BD6E23D8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PeerPaymentUpdateUserInfoViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1BD6E251C(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = sub_1BE04BD74();
  v63 = *(v2 - 8);
  v64 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v62 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(type metadata accessor for PaymentPassMethodSheet(0) + 84);
  v60 = v1;
  v5 = *(v1 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 40;
    v65 = *(v5 + 16);
    v58 = v6 - 1;
    v9 = MEMORY[0x1E69E7CC0];
    v59 = v5 + 40;
    do
    {
      v10 = v9;
      v11 = (v8 + 16 * v7);
      v12 = v7;
      while (1)
      {
        if (v12 >= *(v5 + 16))
        {
          __break(1u);
          goto LABEL_18;
        }

        v13 = *(v11 - 8);
        v14 = *v11;
        v7 = v12 + 1;
        v15 = *v11;
        sub_1BD11285C(&unk_1F3B8E328);
        v17 = v16;
        v18 = sub_1BD6CC328(v13, v16);

        v17, v19, v20, v21, v22, v23, v24, v25;
        if (v18)
        {
          break;
        }

        v11 += 2;
        ++v12;
        if (v65 == v7)
        {
          v9 = v10;
          goto LABEL_15;
        }
      }

      v9 = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BD532168(0, v10[2] + 1, 1, v27, v28, v29, v30, v31);
        v9 = v66;
      }

      v33 = v9[2];
      v32 = v9[3];
      if (v33 >= v32 >> 1)
      {
        sub_1BD532168((v32 > 1), v33 + 1, 1, v27, v28, v29, v30, v31);
        v9 = v66;
      }

      v9[2] = v33 + 1;
      v34 = &v9[2 * v33];
      *(v34 + 32) = v13;
      v34[5] = v14;
      v8 = v59;
    }

    while (v58 != v12);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:
  v36 = v62;
  v35 = v63;
  v37 = v64;
  (*(v63 + 104))(v62, *MEMORY[0x1E69B8068], v64);
  v38 = PKPassKitBundle();
  if (v38)
  {
    v39 = v38;
    v40 = sub_1BE04B6F4();
    v42 = v41;

    (*(v35 + 8))(v36, v37);
    sub_1BD6E2E10(v40, v42, v9, v61);
    v42, v43, v44, v45, v46, v47, v48, v49;
    v9, v50, v51, v52, v53, v54, v55, v56;
  }

  else
  {
LABEL_18:
    __break(1u);
  }
}

void sub_1BD6E27DC(uint64_t a1, void *a2, void *a3)
{
  v67 = a3;
  v68 = type metadata accessor for AvailablePass(0);
  v70 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66 = v5;
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PaymentPassMethodSheet(0);
  v64 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v65 = v8;
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - v14;
  v16 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = a1;
  sub_1BD6E40FC(a1, v21, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BD6E4314(v21, type metadata accessor for WrappedPass);
      return;
    }

    sub_1BD6E42AC(v21, v18, type metadata accessor for PlaceholderPass);
    v24 = [objc_allocWithZone(MEMORY[0x1E69B91E8]) init];
    [v24 setCardType_];
    sub_1BD6E4314(v18, type metadata accessor for PlaceholderPass);
  }

  else
  {
    v23 = *v21;
    v24 = [*v21 secureElementPass];

    if (!v24)
    {
      return;
    }
  }

  v60 = v9;
  v61 = v6;
  v62 = a2;
  v73 = v24;
  LOBYTE(v74) = 32;
  v25 = v69;
  v26 = *(v69 + v7[10]);
  objc_allocWithZone(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0));
  v27 = v26;
  v63 = v24;
  v28 = v67;
  v29 = v67;
  v30 = sub_1BD8D1EE0(&v73, v26, v28);

  v31 = v25 + v7[31];
  v33 = *(v31 + 8);
  v73 = *v31;
  v32 = v73;
  v74 = v33;
  v72 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F390, &qword_1BE0F2820);
  sub_1BE0516B4();
  sub_1BD6E40FC(v71, v15, type metadata accessor for AvailablePass);
  (*(v70 + 56))(v15, 0, 1, v68);
  sub_1BD0DE19C(v15, v12, &qword_1EBD520A0, &qword_1BE0B9840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0, &qword_1BE0DAD40);
  sub_1BE0516B4();
  sub_1BD0DE53C(v15, &qword_1EBD520A0, &qword_1BE0B9840);
  v73 = v32;
  v74 = v33;
  sub_1BE0516A4();
  v34 = v72;
  if (!v72)
  {
LABEL_10:

    return;
  }

  v35 = *(v25 + v7[28]);
  if (v35)
  {
    v36 = v60;
    sub_1BD6E40FC(v25, v60, type metadata accessor for PaymentPassMethodSheet);
    v37 = v61;
    sub_1BD6E40FC(v71, v61, type metadata accessor for AvailablePass);
    v38 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v39 = (v65 + *(v70 + 80) + v38) & ~*(v70 + 80);
    v40 = (v66 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    sub_1BD6E42AC(v36, &v41[v38], type metadata accessor for PaymentPassMethodSheet);
    sub_1BD6E42AC(v37, &v41[v39], type metadata accessor for AvailablePass);
    v42 = v62;
    *&v41[v40] = v62;
    v43 = v42;
    v44 = sub_1BE048964();
    sub_1BD8C1B80(v44, 1, sub_1BD6E41AC, v41);
    v41, v45, v46, v47, v48, v49, v50, v51;

    v35, v52, v53, v54, v55, v56, v57, v58;
    goto LABEL_10;
  }

  type metadata accessor for PresentationContext(0);
  sub_1BD6E4164(&unk_1EBD361B0, type metadata accessor for PresentationContext, &unk_1BE10BB18);
  sub_1BE04EEB4();
  __break(1u);
}

uint64_t sub_1BD6E2E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50570, &qword_1BE0F0D28);
  v18 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  if (PKOslo2024UIUpdatesEnabled() && *(a3 + 16))
  {
    v19 = a1;
    v20 = a2;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v19 = sub_1BE0506C4();
    v20 = v12;
    v21 = v13 & 1;
    v22 = v14;
    MEMORY[0x1EEE9AC00](v19);
    *(&v17 - 2) = a3;
    *(&v17 - 1) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50578, &qword_1BE0F0D30);
    sub_1BD6E3E54();
    sub_1BE051A24();
    (*(v18 + 32))(a4, v11, v9);
    return (*(v18 + 56))(a4, 0, 1, v9);
  }

  else
  {
    v16 = *(v18 + 56);

    return v16(a4, 1, 1, v9);
  }
}

uint64_t sub_1BD6E3038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentPassMethodSheet(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *(a1 + 16);
  v11[0] = 0;
  v11[1] = v7;
  swift_getKeyPath();
  sub_1BD6E40FC(a2, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassMethodSheet);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  sub_1BD6E42AC(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for PaymentPassMethodSheet);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D08, &unk_1BE0E76B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50590, &qword_1BE0F0D38);
  sub_1BD2D5394();
  sub_1BD6E3F34(&qword_1EBD50588, &qword_1EBD50590, &qword_1BE0F0D38, sub_1BD6E3F04);
  return sub_1BE0519C4();
}

void sub_1BD6E3224(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for PaymentPassMethodSheet(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v13 >= *(a2 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v14 = *(a2 + 16 * v13 + 40);
  v15 = *(a3 + *(v11 + 40));
  if (v14)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v14 = 0;
    v15 = 0;
    v24 = 0;
    v18 = 0;
    v25 = 0;
    v21 = 0;
    v22 = 0;
  }

  else
  {
    sub_1BD6E40FC(a3, &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PaymentPassMethodSheet);
    v17 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v18 = swift_allocObject();
    v18[2] = v14;
    sub_1BD6E42AC(v12, v18 + v17, type metadata accessor for PaymentPassMethodSheet);
    v40[7] = 0;
    v19 = v14;
    v20 = v15;
    sub_1BE048964();
    sub_1BE051694();
    v21 = v41;
    v22 = v42;
    sub_1BE048964();
    v23 = [v20 ineligibleDetailsForCriteria_];
    v41 = v19;
    v42 = v20;
    v24 = sub_1BD6E4088;
    v43 = sub_1BD6E4088;
    v44 = v18;
    v45 = v23;
    v46 = v21;
    v47 = v22;
    v25 = v23;
    sub_1BD638E10();

    v22, v26, v27, v28, v29, v30, v31, v32;
    v18, v33, v34, v35, v36, v37, v38, v39;
  }

  *a4 = v14;
  a4[1] = v15;
  a4[2] = v24;
  a4[3] = v18;
  a4[4] = v25;
  a4[5] = v21;
  a4[6] = v22;
}

uint64_t sub_1BD6E3478(void *a1, void *a2, uint64_t a3)
{
  v107 = a1;
  v108 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B20, &unk_1BE0DAD80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v105 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v105 - v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  v10 = *MEMORY[0x1E69BAA28];
  *(inited + 32) = *MEMORY[0x1E69BAA28];
  v11 = v10;
  v106 = a2;
  v12 = [a2 issuerName];
  v13 = sub_1BE052434();
  v15 = v14;

  *(inited + 40) = v13;
  *(inited + 48) = v15;
  v16 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  sub_1BD0DE53C(inited + 32, &qword_1EBD3F590, &qword_1BE0C0E20);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1BE0B98D0;
  v18 = *MEMORY[0x1E69BA680];
  *(v17 + 32) = *MEMORY[0x1E69BA680];
  *(v17 + 40) = sub_1BE052434();
  *(v17 + 48) = v19;
  v20 = *MEMORY[0x1E69BA440];
  *(v17 + 56) = *MEMORY[0x1E69BA440];
  strcpy((v17 + 64), "setupPayLater");
  v21 = *MEMORY[0x1E69BABE8];
  *(v17 + 78) = -4864;
  *(v17 + 80) = v21;
  *(v17 + 88) = sub_1BE052434();
  *(v17 + 96) = v22;
  v23 = v18;
  v24 = v20;
  v25 = v21;
  v26 = sub_1BD1AAF50(v17);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  if (v16[2])
  {
    sub_1BE048C84();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v111 = v26;
    sub_1BD6BC0F4(v16, sub_1BD6B2140, 0, isUniquelyReferenced_nonNull_native, &v111);
    v16, v28, v29, v30, v31, v32, v33, v34;
    v26 = v111;
  }

  v35 = objc_opt_self();
  v36 = *MEMORY[0x1E69BB6E0];
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD6E4164(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v37 = v36;
  v38 = sub_1BE052224();
  v26, v39, v40, v41, v42, v43, v44, v45;
  [v35 subject:v37 sendEvent:v38];

  v16, v46, v47, v48, v49, v50, v51, v52;
  if (!v107)
  {
    v73 = v106;
    *v8 = v106;
    v74 = _s11DetailSheetOMa(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v74 - 8) + 56))(v8, 0, 1, v74);
    type metadata accessor for PaymentPassMethodSheet(0);
    sub_1BD0DE19C(v8, v105, &unk_1EBD43B20, &unk_1BE0DAD80);
    v75 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8, &qword_1BE0DAD48);
    sub_1BE0516B4();
    v76 = v8;
    v77 = &unk_1EBD43B20;
    v78 = &unk_1BE0DAD80;
    return sub_1BD0DE53C(v76, v77, v78);
  }

  v53 = v107;
  v54 = [v53 domain];
  v55 = sub_1BE052434();
  v57 = v56;

  v59 = sub_1BE052434();
  v65 = v58;
  if (v55 == v59 && v57 == v58)
  {
    v57, v58, v59, v60, v61, v62, v63, v64;
    v65, v66, v67, v68, v69, v70, v71, v72;
  }

  else
  {
    v79 = sub_1BE053B84();
    v57, v80, v81, v82, v83, v84, v85, v86;
    v65, v87, v88, v89, v90, v91, v92, v93;
    if ((v79 & 1) == 0)
    {
      v95 = v53;
      v96 = sub_1BE04A844();

      v97 = PKPaymentOffersDisplayableError();
      v94 = v97;
      goto LABEL_11;
    }
  }

  v94 = v53;
  v95 = v94;
LABEL_11:
  sub_1BD2B1EAC(v94, &v111);
  v98 = v112;
  if (v112)
  {
    v99 = v111;
    v100 = sub_1BD1C2B14();
    v101 = swift_allocObject();
    *(v101 + 16) = v99;
    *(v101 + 24) = v98;
    v102 = v114;
    *(v101 + 32) = v113;
    *(v101 + 48) = v102;
    v103 = &type metadata for AuthorizationError;
  }

  else
  {
    v101 = 0;
    v103 = 0;
    v100 = 0;
    v110[1] = 0;
    v110[2] = 0;
  }

  v110[0] = v101;
  v110[3] = v103;
  v110[4] = v100;
  type metadata accessor for PaymentPassMethodSheet(0);
  sub_1BD0DE19C(v110, &v109, &qword_1EBD51EC0, &qword_1BE0B7120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80, &unk_1BE0DAEC0);
  sub_1BE0516B4();

  v76 = v110;
  v77 = &qword_1EBD51EC0;
  v78 = &qword_1BE0B7120;
  return sub_1BD0DE53C(v76, v77, v78);
}

void sub_1BD6E3A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v51 = a1;
  v5 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50, &qword_1BE0F2290);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v45 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  v17 = type metadata accessor for AvailablePass(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v45 = v18 + 56;
  v46 = v19;
  v19(v16, 1, 1, v17);
  v49 = type metadata accessor for PaymentPassMethodSheet(0);
  sub_1BD0DE19C(v16, v13, &qword_1EBD520A0, &qword_1BE0B9840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0, &qword_1BE0DAD40);
  v50 = a2;
  sub_1BE0516B4();
  sub_1BD0DE53C(v16, &qword_1EBD520A0, &qword_1BE0B9840);
  sub_1BD0DE19C(v51, v10, &unk_1EBD57C50, &qword_1BE0F2290);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v10;
    if (*v10)
    {
      v21 = v20;
      v22 = sub_1BE04A844();

      v23 = (v50 + *(v49 + 116));
      v24 = v23[1];
      v53 = *v23;
      v25 = v53;
      v54 = v24;
      v52 = v22;
      sub_1BE048964();
      v26 = v22;
      v27 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0, &qword_1BE0DAEF0);
      sub_1BE0516B4();

      v24, v28, v29, v30, v31, v32, v33, v34;
    }
  }

  else
  {
    sub_1BD6E42AC(v10, v7, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
    v35 = *(v7 + 1);
    if (v35)
    {
      v37 = v49;
      v36 = v50;
      v38 = *(v50 + *(v49 + 52));
      sub_1BD6E40FC(v47, v16, type metadata accessor for AvailablePass);
      v46(v16, 0, 1, v17);
      v39 = v36 + v37[39];
      v40 = *v39;
      v41 = *(v39 + 8);
      LOBYTE(v53) = v40;
      v54 = v41;
      v42 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E78, &qword_1BE0DB128);
      sub_1BE0516A4();
      v38(v16, v48, v52);
      sub_1BD0DE53C(v16, &qword_1EBD520A0, &qword_1BE0B9840);
      v43 = *(v36 + v37[12]);
      v44 = v42;
      v43(v35);

      (*(v36 + v37[23]))();
    }

    sub_1BD6E4314(v7, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
  }
}

unint64_t sub_1BD6E3E54()
{
  result = qword_1EBD50580;
  if (!qword_1EBD50580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50578, &qword_1BE0F0D30);
    sub_1BD6E3F34(&qword_1EBD50588, &qword_1EBD50590, &qword_1BE0F0D38, sub_1BD6E3F04);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50580);
  }

  return result;
}

uint64_t sub_1BD6E3F34(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD6E3FB0()
{
  result = qword_1EBD505A8;
  if (!qword_1EBD505A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD505A8);
  }

  return result;
}

void sub_1BD6E4004(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_1BD6E3224(a1, v6, v7, a2);
}

uint64_t sub_1BD6E4088(void *a1)
{
  v3 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1BD6E3478(a1, v4, v5);
}

uint64_t sub_1BD6E40FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD6E4164(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD6E41AC(uint64_t a1)
{
  v3 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for AvailablePass(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BD6E3A44(a1, v1 + v4, v1 + v7, v8);
}

uint64_t sub_1BD6E42AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD6E4314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BD6E43A4(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(id))
{
  v8 = a3;
  v9 = a4;
  v29 = a1;
  [v8 dismissViewControllerAnimated:1 completion:0];
  v11 = *&v29[OBJC_IVAR____TtCV9PassKitUI23ContactPickerController11Coordinator_parent + 8];
  v10 = *&v29[OBJC_IVAR____TtCV9PassKitUI23ContactPickerController11Coordinator_parent + 16];
  sub_1BE048964();
  v12 = a5(v9);
  v14 = v13;
  v11(v12);
  v10, v15, v16, v17, v18, v19, v20, v21;
  v14, v22, v23, v24, v25, v26, v27, v28;
}

uint64_t sub_1BD6E4494(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtCV9PassKitUI23ContactPickerController11Coordinator_parent))
  {
    v2 = [a1 phoneNumbers];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0, &qword_1BE0C38A0);
    v3 = sub_1BE052744();

    if (v3 >> 62)
    {
      result = sub_1BE053704();
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_4:
        if ((v3 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1BFB40900](0, v3);
          goto LABEL_7;
        }

        if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v12 = *(v3 + 32);
LABEL_7:
          v20 = v12;
          v3, v13, v14, v15, v16, v17, v18, v19;
          v21 = [v20 value];

          v22 = [v21 stringValue];
          sub_1BE052434();

          return sub_1BE052644();
        }

        __break(1u);
        goto LABEL_27;
      }
    }

    v3, v4, v5, v6, v7, v8, v9, v10;
    return sub_1BE052644();
  }

  v23 = [a1 emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0, &qword_1BE0C38A0);
  v24 = sub_1BE052744();

  if (!(v24 >> 62))
  {
    result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_19:
    v24, v25, v26, v27, v28, v29, v30, v31;
LABEL_20:
    sub_1BD0E5E8C(0, &qword_1EBD45E60, 0x1E696AEC0);
    sub_1BE0530A4();
    goto LABEL_21;
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x1BFB40900](0, v24);
  }

  else
  {
    if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_27:
      __break(1u);
      return result;
    }

    v32 = *(v24 + 32);
  }

  v40 = v32;
  v24, v33, v34, v35, v36, v37, v38, v39;
  v41 = [v40 value];

  if (!v41)
  {
    goto LABEL_20;
  }

LABEL_21:

  return sub_1BE052494();
}

id sub_1BD6E472C(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtCV9PassKitUI23ContactPickerController11Coordinator_parent))
  {
    if ([a1 value])
    {
      sub_1BE053624();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8 = v6;
    v9 = v7;
    if (*(&v7 + 1))
    {
      sub_1BD0E5E8C(0, &qword_1EBD50650, 0x1E695CF50);
      if (swift_dynamicCast())
      {
        v2 = [v5 stringValue];

        v3 = sub_1BE052434();
        return v3;
      }

      return 0;
    }

    goto LABEL_14;
  }

  if ([a1 value])
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
LABEL_14:
    sub_1BD14EC0C(&v8);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  return 0;
}

id sub_1BD6E48E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactPickerController.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1BD6E496C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6 = type metadata accessor for ContactPickerController.Coordinator();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV9PassKitUI23ContactPickerController11Coordinator_parent];
  *v8 = v3;
  *(v8 + 1) = v5;
  *(v8 + 2) = v4;
  v10.receiver = v7;
  v10.super_class = v6;
  sub_1BE048964();
  result = objc_msgSendSuper2(&v10, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1BD6E49F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD6E4D48();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD6E4A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD6E4D48();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD6E4AB8(uint64_t a1)
{
  sub_1BD6E4D48();
  sub_1BE0500A4();
  __break(1u);
}

id sub_1BD6E4AE4(uint64_t a1, char a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695D120]) init];
  sub_1BD0E5E8C(0, &qword_1EBD50628, 0x1E696AE18);
  v3 = sub_1BE052BB4();
  [v2 setPredicateForEnablingContact_];

  v4 = sub_1BE052BB4();
  [v2 setPredicateForSelectionOfContact_];

  v5 = sub_1BE052BB4();
  [v2 setPredicateForSelectionOfProperty_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630, &unk_1BE0CB870);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BE0B69E0;
  *(v6 + 32) = sub_1BE052434();
  *(v6 + 40) = v7;
  v8 = sub_1BE052724();
  v6, v9, v10, v11, v12, v13, v14, v15;
  [v2 setDisplayedPropertyKeys_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50638, &qword_1BE0F0E88);
  sub_1BE050154();
  [v2 setDelegate_];

  [v2 setMode_];
  return v2;
}

unint64_t sub_1BD6E4D48()
{
  result = qword_1EBD50640;
  if (!qword_1EBD50640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50640);
  }

  return result;
}

void sub_1BD6E4DE4(uint64_t a1)
{
  _s31SpendingSummaryDetailsViewModelVMa(319);
  if (v1 <= 0x3F)
  {
    sub_1BD49DA08(319);
    if (v2 <= 0x3F)
    {
      sub_1BD6E4E8C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD6E4E8C()
{
  if (!qword_1EBD50668)
  {
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD50668);
    }
  }
}

unint64_t sub_1BD6E4EF0()
{
  result = qword_1EBD50670;
  if (!qword_1EBD50670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50670);
  }

  return result;
}

uint64_t sub_1BD6E4F44(void (*a1)(uint64_t *__return_ptr, char *))
{
  v12 = a1;
  v3 = sub_1BE0491F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0, &qword_1BE0D5630);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1BD0DE19C(v1, &v11 - v8, &qword_1EBD45CC0, &qword_1BE0D5630);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v6, v9, v3);
  v12(&v13, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v13;
  }

  return result;
}

uint64_t sub_1BD6E5140@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50678, &qword_1BE0F0F98);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - v4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50680, &qword_1BE0F0FA0);
  v6 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v8 = &v17 - v7;
  *v5 = sub_1BE04F7C4();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v9 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50688, &qword_1BE0F0FA8) + 44)];
  v17 = v2;
  sub_1BD6E541C(v2, v9);
  v10 = sub_1BE050194();
  sub_1BE0501A4();
  sub_1BE0501A4();
  if (sub_1BE0501A4() != v10)
  {
    sub_1BE0501A4();
  }

  sub_1BE051CD4();
  v11 = sub_1BD0DE4F4(&qword_1EBD50690, &qword_1EBD50678, &qword_1BE0F0F98, MEMORY[0x1E6981870]);
  sub_1BE050DB4();
  sub_1BD0DE53C(v5, &qword_1EBD50678, &qword_1BE0F0F98);
  v12 = v17 + *(_s17SummaryDetailViewVMa(0) + 28);
  v13 = *v12;
  v14 = *(v12 + 8);
  LOBYTE(v20) = v13;
  v21 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50698, &qword_1BE0F0FB0);
  sub_1BE0516A4();
  v20 = v3;
  v21 = v11;
  swift_getOpaqueTypeConformance2();
  sub_1BD6E4EF0();
  v15 = v18;
  sub_1BE051064();
  return (*(v6 + 8))(v8, v15);
}

uint64_t sub_1BD6E541C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v152 = a1;
  v187 = a2;
  v2 = sub_1BE050034();
  v185 = *(v2 - 8);
  v186 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v184 = &v152 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1BE04F5B4();
  v173 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v169 = &v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506A0, &qword_1BE0F0FB8);
  v6 = *(v5 - 8);
  v166 = v5;
  v167 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v165 = &v152 - v7;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506A8, &qword_1BE0F0FC0);
  MEMORY[0x1EEE9AC00](v174);
  v164 = &v152 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506B0, &qword_1BE0F0FC8);
  v10 = *(v9 - 8);
  v176 = v9;
  v177 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v170 = &v152 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506B8, &qword_1BE0F0FD0);
  v13 = *(v12 - 8);
  v178 = v12;
  v179 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v171 = &v152 - v14;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506C0, &qword_1BE0F0FD8);
  v183 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v172 = &v152 - v15;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506C8, &qword_1BE0F0FE0);
  v197 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v180 = &v152 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v195 = &v152 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506D0, &qword_1BE0F0FE8);
  v20 = *(v19 - 8);
  v158 = v19;
  v159 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v154 = &v152 - v21;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506D8, &qword_1BE0F0FF0);
  MEMORY[0x1EEE9AC00](v157);
  v153 = &v152 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506E0, &qword_1BE0F0FF8);
  v24 = *(v23 - 8);
  v160 = v23;
  v161 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v155 = &v152 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506E8, &qword_1BE0F1000);
  v27 = *(v26 - 8);
  v162 = v26;
  v163 = v27;
  MEMORY[0x1EEE9AC00](v26);
  v156 = &v152 - v28;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506F0, &qword_1BE0F1008);
  v196 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v188 = &v152 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v198 = &v152 - v31;
  sub_1BD6E6534();
  v213 = v32;
  v214 = v33;
  sub_1BD0DDEBC();
  v34 = sub_1BE0506C4();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = sub_1BE050294();
  v42 = sub_1BE0505F4();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v41, v43, v45, v47, v49, v50, v51, v52;
  sub_1BD0DDF10(v34, v36, (v38 & 1), v53, v54, v55, v56, v57);
  v40, v58, v59, v60, v61, v62, v63, v64;
  sub_1BE050364();
  v65 = sub_1BE050544();
  v192 = v66;
  v193 = v65;
  LOBYTE(v34) = v67;
  v194 = v68;
  sub_1BD0DDF10(v42, v44, (v46 & 1), v68, v69, v70, v71, v72);
  v48, v73, v74, v75, v76, v77, v78, v79;
  v191 = sub_1BE0501C4();
  sub_1BE04E1F4();
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v189 = v34 & 1;
  LOBYTE(v206) = v34 & 1;
  v201 = 0;
  v190 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v95 = v94;
  LOBYTE(v213) = 0;
  v96 = v152;
  v200 = v152;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506F8, &qword_1BE0F1010);
  sub_1BD6F00E4(&qword_1EBD50700, &qword_1EBD506F8, &qword_1BE0F1010, sub_1BD6EEDE4);
  v97 = v154;
  sub_1BE0504E4();
  v98 = MEMORY[0x1E697CD20];
  sub_1BD0DE4F4(&qword_1EBD50738, &qword_1EBD506D0, &qword_1BE0F0FE8, MEMORY[0x1E697CD20]);
  v99 = v153;
  v100 = v158;
  sub_1BE050D24();
  (*(v159 + 8))(v97, v100);
  v101 = v157;
  *(v99 + *(v157 + 36)) = 256;
  sub_1BE0501C4();
  v102 = sub_1BD6EEF58();
  v103 = v155;
  sub_1BE050904();
  sub_1BD0DE53C(v99, &qword_1EBD506D8, &qword_1BE0F0FF0);
  sub_1BE0501E4();
  v213 = v101;
  v214 = v102;
  v159 = MEMORY[0x1E697CDF8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v105 = v156;
  v106 = v160;
  sub_1BE050904();
  (*(v161 + 8))(v103, v106);
  sub_1BE0501F4();
  v213 = v106;
  v214 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v107 = v162;
  sub_1BE050904();
  (*(v163 + 8))(v105, v107);
  v199 = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50748, &qword_1BE0F1038);
  sub_1BD0DE4F4(&qword_1EBD50750, &qword_1EBD50748, &qword_1BE0F1038, MEMORY[0x1E6981F48]);
  v108 = v165;
  sub_1BE0504E4();
  sub_1BD0DE4F4(&qword_1EBD50758, &qword_1EBD506A0, &qword_1BE0F0FB8, v98);
  v109 = v164;
  v110 = v166;
  sub_1BE050E24();
  (*(v167 + 8))(v108, v110);
  v111 = v169;
  sub_1BE04F584();
  v112 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50760, &qword_1BE0F1040) + 36);
  v113 = v173;
  v114 = v175;
  (*(v173 + 16))(&v109[v112], v111, v175);
  v115 = v113;
  v116 = *(v113 + 56);
  v117 = &v109[v112];
  v118 = v109;
  v116(v117, 0, 1, v114);
  KeyPath = swift_getKeyPath();
  v120 = &v109[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50768, &qword_1BE0F1078) + 36)];
  v121 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39580, &qword_1BE0D8820) + 28);
  (*(v115 + 32))(v120 + v121, v111, v114);
  v116(v120 + v121, 0, 1, v114);
  *v120 = KeyPath;
  v122 = v174;
  *(v118 + *(v174 + 36)) = 256;
  sub_1BE0501C4();
  v123 = sub_1BD6EF05C();
  v124 = v170;
  sub_1BE050904();
  sub_1BD0DE53C(v118, &qword_1EBD506A8, &qword_1BE0F0FC0);
  sub_1BE0501E4();
  v213 = v122;
  v214 = v123;
  v125 = swift_getOpaqueTypeConformance2();
  v126 = v171;
  v127 = v176;
  sub_1BE050904();
  (*(v177 + 8))(v124, v127);
  sub_1BE0501F4();
  v213 = v127;
  v214 = v125;
  v128 = swift_getOpaqueTypeConformance2();
  v129 = v172;
  v130 = v178;
  sub_1BE050904();
  (*(v179 + 8))(v126, v130);
  v131 = v184;
  sub_1BE050024();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50788, &qword_1BE0F1080);
  v213 = v130;
  v214 = v128;
  swift_getOpaqueTypeConformance2();
  v132 = sub_1BE04EEA4();
  v133 = sub_1BD6EED94(&qword_1EBD48208, MEMORY[0x1E697ED30], MEMORY[0x1E697ED28]);
  v213 = v132;
  v214 = v133;
  swift_getOpaqueTypeConformance2();
  v134 = v195;
  v135 = v181;
  sub_1BE050BD4();
  (*(v185 + 8))(v131, v186);
  (*(v183 + 8))(v129, v135);
  v186 = *(v196 + 16);
  v136 = v188;
  v137 = v168;
  v186(v188, v198, v168);
  v185 = *(v197 + 16);
  v138 = v180;
  v139 = v182;
  (v185)(v180, v134, v182);
  *&v206 = v193;
  *(&v206 + 1) = v192;
  LOBYTE(v207) = v189;
  *(&v207 + 1) = *v203;
  DWORD1(v207) = *&v203[3];
  *(&v207 + 1) = v194;
  LOBYTE(v208) = v191;
  *(&v208 + 1) = *v202;
  DWORD1(v208) = *&v202[3];
  *(&v208 + 1) = v81;
  *&v209 = v83;
  *(&v209 + 1) = v85;
  *&v210 = v87;
  BYTE8(v210) = 0;
  *(&v210 + 9) = *v205;
  HIDWORD(v210) = *&v205[3];
  LOBYTE(v211) = v190;
  DWORD1(v211) = *&v204[3];
  *(&v211 + 1) = *v204;
  *(&v211 + 1) = v89;
  *&v212[0] = v91;
  *(&v212[0] + 1) = v93;
  *&v212[1] = v95;
  BYTE8(v212[1]) = 0;
  v140 = v206;
  v141 = v207;
  v142 = v209;
  v143 = v187;
  v187[2] = v208;
  v143[3] = v142;
  *v143 = v140;
  v143[1] = v141;
  v144 = v210;
  v145 = v211;
  v146 = v212[0];
  *(v143 + 105) = *(v212 + 9);
  v143[5] = v145;
  v143[6] = v146;
  v143[4] = v144;
  v147 = v143;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50790, &qword_1BE0F1088);
  v186(&v147[*(v148 + 48)], v136, v137);
  (v185)(&v147[*(v148 + 64)], v138, v139);
  sub_1BD0DE19C(&v206, &v213, &qword_1EBD50798, &qword_1BE0F1090);
  v149 = *(v197 + 8);
  v149(v195, v139);
  v150 = *(v196 + 8);
  v150(v198, v137);
  v149(v138, v139);
  v150(v188, v137);
  v213 = v193;
  v214 = v192;
  v215 = v189;
  *v216 = *v203;
  *&v216[3] = *&v203[3];
  v217 = v194;
  v218 = v191;
  *v219 = *v202;
  *&v219[3] = *&v202[3];
  v220 = v81;
  v221 = v83;
  v222 = v85;
  v223 = v87;
  v224 = 0;
  *&v225[3] = *&v205[3];
  *v225 = *v205;
  v226 = v190;
  *&v227[3] = *&v204[3];
  *v227 = *v204;
  v228 = v89;
  v229 = v91;
  v230 = v93;
  v231 = v95;
  v232 = 0;
  return sub_1BD0DE53C(&v213, &qword_1EBD50798, &qword_1BE0F1090);
}

void sub_1BD6E6534()
{
  v1 = sub_1BE04AF64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = _s31SpendingSummaryDetailsViewModelVMa(0);
  sub_1BD0DE19C(v0 + *(v8 + 20), v7, &qword_1EBD38DB8, &unk_1BE0BD340);
  if (*(v0 + *(v8 + 24)))
  {
    if (*(v0 + *(v8 + 24)) == 1)
    {
      if (qword_1EBD36D38 != -1)
      {
        swift_once();
      }

      v9 = qword_1EBDAB4A8;
      v10 = sub_1BE04AE64();
      v11 = [v9 stringFromDate_];
    }

    else
    {
      if (qword_1EBD36D40 != -1)
      {
        swift_once();
      }

      v15 = qword_1EBDAB4B0;
      v10 = sub_1BE04AE64();
      v11 = [v15 stringFromDate_];
    }

    v16 = v11;

    sub_1BE052434();
    goto LABEL_12;
  }

  sub_1BE04ADD4();
  v12 = sub_1BE04AE64();
  v13 = sub_1BE04AE64();
  v14 = PKDateRangeStringFromDateToDate();

  if (v14)
  {
    sub_1BE052434();

    (*(v2 + 8))(v4, v1);
LABEL_12:
    sub_1BD0DE53C(v7, &qword_1EBD38DB8, &unk_1BE0BD340);
    return;
  }

  __break(1u);
}

double sub_1BD6E6808@<D0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50730, &unk_1BE0F1028);
  sub_1BD0DE4F4(&qword_1EBD50728, &qword_1EBD50730, &unk_1BE0F1028, MEMORY[0x1E6981870]);
  sub_1BE051A44();
  v3 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50710, &qword_1BE0F1018) + 36);
  *v3 = xmmword_1BE0F0E90;
  *(v3 + 16) = xmmword_1BE0F0EA0;
  *(v3 + 32) = 0;
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD506F8, &qword_1BE0F1010) + 36);
  result = 8.0;
  *v4 = xmmword_1BE0F0EB0;
  *(v4 + 16) = xmmword_1BE0F0EB0;
  *(v4 + 32) = 0;
  return result;
}

uint64_t sub_1BD6E690C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507A0, &qword_1BE0F1098);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507A8, &qword_1BE0F10A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  sub_1BD6E6AFC(&v16 - v12);
  sub_1BD6E6F70(v7);
  sub_1BD0DE19C(v13, v10, &qword_1EBD507A8, &qword_1BE0F10A0);
  sub_1BD0DE19C(v7, v4, &qword_1EBD507A0, &qword_1BE0F1098);
  sub_1BD0DE19C(v10, a1, &qword_1EBD507A8, &qword_1BE0F10A0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507B0, &qword_1BE0F10A8);
  sub_1BD0DE19C(v4, a1 + *(v14 + 48), &qword_1EBD507A0, &qword_1BE0F1098);
  sub_1BD0DE53C(v7, &qword_1EBD507A0, &qword_1BE0F1098);
  sub_1BD0DE53C(v13, &qword_1EBD507A8, &qword_1BE0F10A0);
  sub_1BD0DE53C(v4, &qword_1EBD507A0, &qword_1BE0F1098);
  return sub_1BD0DE53C(v10, &qword_1EBD507A8, &qword_1BE0F10A0);
}

uint64_t sub_1BD6E6AFC@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50810, &qword_1BE0F1108);
  MEMORY[0x1EEE9AC00](v27);
  v3 = &v25 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50818, &qword_1BE0F1110);
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50820, &qword_1BE0F1118);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s31SpendingSummaryDetailsViewModelVMa(0);
  sub_1BD6EF420(v1 + *(v18 + 28), v13, _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1BD6EF2C8(v13, _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa);
    return (*(v8 + 56))(v30, 1, 1, v7);
  }

  else
  {
    v26 = v7;
    v20 = sub_1BD6EF488(v13, v17, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
    if (*(*&v17[*(v14 + 32)] + 16) || *(*&v17[*(v14 + 52)] + 16))
    {
      MEMORY[0x1EEE9AC00](v20);
      *(&v25 - 2) = v1;
      *(&v25 - 1) = v17;
      sub_1BD6E9CA4(v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50828, &qword_1BE0F1120);
      sub_1BD6EFDFC();
      sub_1BD6EFFD0();
      sub_1BE051A24();
      v21 = v29;
      v22 = &v6[*(v29 + 36)];
      v22[32] = 0;
      *v22 = 0u;
      *(v22 + 1) = 0u;
      sub_1BD0DE204(v6, v10, &qword_1EBD50818, &qword_1BE0F1110);
      v23 = 0;
    }

    else
    {
      v23 = 1;
      v21 = v29;
    }

    (*(v28 + 56))(v10, v23, 1, v21);
    v24 = v30;
    sub_1BD0DE204(v10, v30, &qword_1EBD50820, &qword_1BE0F1118);
    (*(v8 + 56))(v24, 0, 1, v26);
    return sub_1BD6EF2C8(v17, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
  }
}

uint64_t sub_1BD6E6F70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_1BE04E2E4();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507B8, &qword_1BE0F10B0);
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507C0, &qword_1BE0F10B8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v33 - v11;
  v13 = _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _s31SpendingSummaryDetailsViewModelVMa(0);
  sub_1BD6EF420(v2 + *(v20 + 28), v15, _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v21 = _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa;
    v22 = v15;
  }

  else
  {
    sub_1BD6EF488(v15, v19, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
    if (sub_1BD9FD33C())
    {
      v23 = (v2 + *(_s17SummaryDetailViewVMa(0) + 28));
      v24 = *v23;
      v25 = *(v23 + 1);
      v39[0] = v24;
      v40 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50698, &qword_1BE0F0FB0);
      v26 = sub_1BE0516A4();
      if ((v41 & 1) == 0)
      {
        v33[0] = v33;
        MEMORY[0x1EEE9AC00](v26);
        v33[-2] = v19;
        v33[-1] = v2;
        sub_1BD6ECB40(v39);
        v33[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507C8, &unk_1BE0F10C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50798, &qword_1BE0F1090);
        sub_1BD0DE4F4(&qword_1EBD507D0, &qword_1EBD507C8, &unk_1BE0F10C0, MEMORY[0x1E6981F48]);
        sub_1BD6F0564(&qword_1EBD507D8, &qword_1EBD50798, &qword_1BE0F1090, sub_1BD2A275C);
        sub_1BE051A54();
        v29 = v36;
        v28 = v37;
        (*(v36 + 104))(v5, *MEMORY[0x1E697DAD8], v37);
        sub_1BD6EF330();
        v30 = v35;
        sub_1BE050B84();
        (*(v29 + 8))(v5, v28);
        (*(v34 + 8))(v8, v30);
        v31 = &v12[*(v9 + 36)];
        v31[32] = 0;
        *v31 = 0u;
        *(v31 + 1) = 0u;
        v32 = v38;
        sub_1BD0DE204(v12, v38, &qword_1EBD507C0, &qword_1BE0F10B8);
        (*(v10 + 56))(v32, 0, 1, v9);
        return sub_1BD6EF2C8(v19, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
      }
    }

    v21 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model;
    v22 = v19;
  }

  sub_1BD6EF2C8(v22, v21);
  return (*(v10 + 56))(v38, 1, 1, v9);
}

uint64_t sub_1BD6E750C(uint64_t a1, uint64_t a2)
{
  sub_1BE04FBB4();
  sub_1BE04EEA4();
  sub_1BD6EED94(&qword_1EBD48208, MEMORY[0x1E697ED30], MEMORY[0x1E697ED28]);
  return sub_1BE04E5D4();
}

void sub_1BD6E75AC(uint64_t a1, _BYTE *a2)
{
  v2 = sub_1BE052434();
  v4 = v3;
  v5 = objc_opt_self();
  v6 = *MEMORY[0x1E69BB6F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v8 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v9 = sub_1BE052434();
  v10 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v9;
  *(inited + 48) = v11;
  v12 = *v10;
  *(inited + 56) = *v10;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v13;
  v14 = *MEMORY[0x1E69BA440];
  *(inited + 80) = *MEMORY[0x1E69BA440];
  *(inited + 88) = v2;
  *(inited + 96) = v4;
  v15 = v8;
  v16 = v12;
  v17 = v14;
  v18 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD6EED94(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v19 = sub_1BE052224();
  v18, v20, v21, v22, v23, v24, v25, v26;
  [v5 subject:v6 sendEvent:v19];
}

void sub_1BD6E7788(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F7C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50920, &qword_1BE0F1238);
  sub_1BD6E77DC(a1, (a2 + *(v4 + 44)));
}

void sub_1BD6E77DC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v235 = a1;
  v244 = a2;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50928, &qword_1BE0F1240);
  MEMORY[0x1EEE9AC00](v243);
  v228 = &v205 - v2;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50930, &qword_1BE0F1248);
  MEMORY[0x1EEE9AC00](v226);
  v225 = &v205 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50938, &qword_1BE0F1250);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v227 = &v205 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v240 = &v205 - v7;
  v222 = sub_1BE04AF64();
  v221 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v220 = &v205 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98, &unk_1BE0D39B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v219 = &v205 - v10;
  v218 = sub_1BE0493F4();
  v234 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v233 = &v205 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = _s23SpendingDescriptionViewVMa(0);
  MEMORY[0x1EEE9AC00](v217);
  v224 = &v205 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v216 = &v205 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v236 = &v205 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50940, &qword_1BE0F1258);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v223 = &v205 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v247 = (&v205 - v20);
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50948, &unk_1BE0F1260);
  MEMORY[0x1EEE9AC00](v239);
  v242 = &v205 - v21;
  v215 = sub_1BE04EDC4();
  v214 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v212 = &v205 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v209 = &v205 - v24;
  v210 = sub_1BE050474();
  v208 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v207 = &v205 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50950, &qword_1BE0F1270);
  v213 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v211 = &v205 - v26;
  v27 = _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa(0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v205 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  v232 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245);
  v246 = &v205 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50958, &qword_1BE0F1278);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v241 = &v205 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v238 = &v205 - v34;
  v35 = sub_1BE052404();
  v36 = PKLocalizedBankConnectString(v35);

  if (v36)
  {
    v37 = sub_1BE052434();
    v39 = v38;

    v248 = v37;
    v249 = v39;
    sub_1BD0DDEBC();
    v40 = sub_1BE0506C4();
    v42 = v41;
    LOBYTE(v37) = v43;
    v45 = v44;
    v46 = sub_1BE0502A4();
    v47 = sub_1BE0505F4();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v46, v48, v50, v52, v54, v55, v56, v57;
    sub_1BD0DDF10(v40, v42, (v37 & 1), v58, v59, v60, v61, v62);
    v45, v63, v64, v65, v66, v67, v68, v69;
    LODWORD(v248) = sub_1BE04FC94();
    v231 = sub_1BE050574();
    v230 = v70;
    v229 = v71;
    v73 = v72;
    sub_1BD0DDF10(v47, v49, (v51 & 1), v72, v74, v75, v76, v77);
    v53, v78, v79, v80, v81, v82, v83, v84;
    v85 = _s31SpendingSummaryDetailsViewModelVMa(0);
    v86 = v235;
    sub_1BD6EF420(v235 + v85[7], v29, _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa);
    v87 = v245;
    if ((*(v232 + 48))(v29, 1, v245) == 1)
    {
      sub_1BD6EF2C8(v29, _s31SpendingSummaryDetailsViewModelV19SpendingSummaryDataOMa);
      v88 = v208;
      v89 = v207;
      v90 = v210;
      (*(v208 + 104))(v207, *MEMORY[0x1E6980F00], v210);
      v91 = *MEMORY[0x1E6980E28];
      v92 = sub_1BE050354();
      v93 = *(v92 - 8);
      v94 = v209;
      (*(v93 + 104))(v209, v91, v92);
      (*(v93 + 56))(v94, 0, 1, v92);
      v95 = sub_1BE0503C4();
      sub_1BD0DE53C(v94, &qword_1EBD49130, &qword_1BE0C7180);
      (*(v88 + 8))(v89, v90);
      v96 = sub_1BE0505F4();
      v98 = v97;
      LOBYTE(v90) = v99;
      v101 = v100;
      v95, v97, v99, v100, v102, v103, v104, v105;
      sub_1BE050364();
      v106 = sub_1BE050544();
      v108 = v107;
      LOBYTE(v95) = v109;
      v111 = v110;
      sub_1BD0DDF10(v96, v98, (v90 & 1), v110, v112, v113, v114, v115);
      v101, v116, v117, v118, v119, v120, v121, v122;
      v248 = v106;
      v249 = v108;
      v123 = (v95 & 1);
      v250 = v95 & 1;
      v251 = v111;
      v124 = v212;
      sub_1BE04EDB4();
      v125 = MEMORY[0x1E6981148];
      v126 = MEMORY[0x1E6981138];
      v127 = v211;
      sub_1BE0510A4();
      (*(v214 + 8))(v124, v215);
      sub_1BD0DDF10(v106, v108, v123, v128, v129, v130, v131, v132);
      v111, v133, v134, v135, v136, v137, v138, v139;
      v140 = v213;
      v141 = v237;
      (*(v213 + 16))(v242, v127, v237);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&qword_1EBD50960, &qword_1EBD50928, &qword_1BE0F1240, MEMORY[0x1E6981F48]);
      v248 = v125;
      v249 = v126;
      swift_getOpaqueTypeConformance2();
      v142 = v238;
      sub_1BE04F9A4();
      (*(v140 + 8))(v127, v141);
    }

    else
    {
      v143 = v246;
      sub_1BD6EF488(v29, v246, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
      v144 = sub_1BE04F504();
      v145 = v247;
      *v247 = v144;
      v145[1] = 0;
      *(v145 + 16) = 1;
      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50970, &qword_1BE0F1288);
      sub_1BD6E8B0C(v143, (v145 + *(v146 + 44)));
      v147 = v218;
      (*(v234 + 16))(v233, v143 + *(v87 + 20), v218);
      v148 = v219;
      sub_1BD0DE19C(v143 + *(v87 + 24), v219, &qword_1EBD44F98, &unk_1BE0D39B0);
      v149 = *(v86 + v85[6]);
      v150 = v86 + v85[5];
      v151 = v220;
      sub_1BE04AEF4();
      sub_1BD6EED94(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v152 = v222;
      v153 = sub_1BE052314();
      v206 = v73;
      if (v153)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
        v154 = sub_1BE0522F4();
      }

      else
      {
        v154 = 0;
      }

      (*(v221 + 8))(v151, v152);
      v155 = v216;
      (*(v234 + 32))(v216, v233, v147);
      v156 = v217;
      sub_1BD0DE204(v148, v155 + *(v217 + 20), &qword_1EBD44F98, &unk_1BE0D39B0);
      *(v155 + *(v156 + 24)) = v149;
      *(v155 + *(v156 + 28)) = v154 & 1;
      v157 = v236;
      sub_1BD6EF488(v155, v236, _s23SpendingDescriptionViewVMa);
      v158 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
      v159 = v225;
      sub_1BD0DE19C(v150, &v225[v158[5]], &qword_1EBD38DB8, &unk_1BE0BD340);
      v160 = v246;
      v161 = sub_1BE0493A4();
      v163 = v162;
      v164 = *(v160 + *(v245 + 28));
      *&v159[v158[11]] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8, &qword_1BE0E2E80);
      swift_storeEnumTagMultiPayload();
      *v159 = v149;
      v165 = &v159[v158[6]];
      *v165 = v161;
      v165[1] = v163;
      *&v159[v158[7]] = v164;
      v159[v158[8]] = 1;
      v159[v158[9]] = 0;
      v159[v158[10]] = 0;
      v166 = &v159[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50978, &qword_1BE0F12C8) + 36)];
      *v166 = 0x3FFD1745D1745D17;
      *(v166 + 4) = 0;
      sub_1BE048C84();
      LOBYTE(v161) = sub_1BE0501E4();
      sub_1BE04E1F4();
      v167 = &v159[*(v226 + 36)];
      *v167 = v161;
      *(v167 + 1) = v168;
      *(v167 + 2) = v169;
      *(v167 + 3) = v170;
      *(v167 + 4) = v171;
      v167[40] = 0;
      sub_1BE052434();
      v173 = v172;
      sub_1BD6F0564(&qword_1EBD50980, &qword_1EBD50930, &qword_1BE0F1248, sub_1BD6F05E8);
      v174 = v240;
      sub_1BE050DE4();
      v173, v175, v176, v177, v178, v179, v180, v181;
      sub_1BD0DE53C(v159, &qword_1EBD50930, &qword_1BE0F1248);
      v182 = v223;
      sub_1BD0DE19C(v247, v223, &qword_1EBD50940, &qword_1BE0F1258);
      v183 = v224;
      sub_1BD6EF420(v157, v224, _s23SpendingDescriptionViewVMa);
      v184 = v227;
      sub_1BD0DE19C(v174, v227, &qword_1EBD50938, &qword_1BE0F1250);
      v185 = v228;
      sub_1BD0DE19C(v182, v228, &qword_1EBD50940, &qword_1BE0F1258);
      v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50998, &qword_1BE0F12D0);
      sub_1BD6EF420(v183, v185 + *(v186 + 48), _s23SpendingDescriptionViewVMa);
      sub_1BD0DE19C(v184, v185 + *(v186 + 64), &qword_1EBD50938, &qword_1BE0F1250);
      sub_1BD0DE53C(v184, &qword_1EBD50938, &qword_1BE0F1250);
      sub_1BD6EF2C8(v183, _s23SpendingDescriptionViewVMa);
      sub_1BD0DE53C(v182, &qword_1EBD50940, &qword_1BE0F1258);
      sub_1BD0DE19C(v185, v242, &qword_1EBD50928, &qword_1BE0F1240);
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE4F4(&qword_1EBD50960, &qword_1EBD50928, &qword_1BE0F1240, MEMORY[0x1E6981F48]);
      v248 = MEMORY[0x1E6981148];
      v249 = MEMORY[0x1E6981138];
      swift_getOpaqueTypeConformance2();
      v142 = v238;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v185, &qword_1EBD50928, &qword_1BE0F1240);
      sub_1BD0DE53C(v240, &qword_1EBD50938, &qword_1BE0F1250);
      sub_1BD6EF2C8(v236, _s23SpendingDescriptionViewVMa);
      sub_1BD0DE53C(v247, &qword_1EBD50940, &qword_1BE0F1258);
      sub_1BD6EF2C8(v246, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
      v73 = v206;
    }

    v187 = v241;
    sub_1BD0DE19C(v142, v241, &qword_1EBD50958, &qword_1BE0F1278);
    v188 = v244;
    v189 = v231;
    v190 = v230;
    *v244 = v231;
    v188[1] = v190;
    v191 = (v229 & 1);
    *(v188 + 16) = v229 & 1;
    v188[3] = v73;
    v188[4] = sub_1BD1F3E44;
    v188[5] = 0;
    v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50968, &qword_1BE0F1280);
    sub_1BD0DE19C(v187, v188 + *(v192 + 48), &qword_1EBD50958, &qword_1BE0F1278);
    sub_1BD0D7F18(v189, v190, v191);
    sub_1BE048C84();
    sub_1BD0DE53C(v142, &qword_1EBD50958, &qword_1BE0F1278);
    sub_1BD0DE53C(v187, &qword_1EBD50958, &qword_1BE0F1278);
    sub_1BD0DDF10(v189, v190, v191, v193, v194, v195, v196, v197);
    v73, v198, v199, v200, v201, v202, v203, v204;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD6E8B0C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v104 = a1;
  v113 = a2;
  v2 = _s21SpendingTrendIconViewVMa(0);
  v111 = *(v2 - 8);
  v112 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v102 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98, &unk_1BE0D39B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v107 = &v100 - v5;
  v108 = type metadata accessor for FinanceKitSpendingTrend(0);
  v106 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v101 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD509A0, &qword_1BE0F12D8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v110 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v109 = &v100 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v100 - v12;
  v14 = sub_1BE050474();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE04B0F4();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  sub_1BE04B054();
  v22 = sub_1BE0493E4();
  v24 = v23;
  (*(v19 + 8))(v21, v18);
  v114 = v22;
  v115 = v24;
  sub_1BD0DDEBC();
  v25 = sub_1BE0506C4();
  v27 = v26;
  LOBYTE(v18) = v28;
  v103 = v29;
  v30 = v14;
  (*(v15 + 104))(v17, *MEMORY[0x1E6980F00], v14);
  v31 = *MEMORY[0x1E6980E28];
  v32 = sub_1BE050354();
  v33 = *(v32 - 8);
  (*(v33 + 104))(v13, v31, v32);
  (*(v33 + 56))(v13, 0, 1, v32);
  v34 = sub_1BE0503C4();
  sub_1BD0DE53C(v13, &qword_1EBD49130, &qword_1BE0C7180);
  (*(v15 + 8))(v17, v30);
  v35 = v103;
  v36 = sub_1BE0505F4();
  v38 = v37;
  LOBYTE(v17) = v39;
  v41 = v40;
  v34, v37, v39, v40, v42, v43, v44, v45;
  sub_1BD0DDF10(v25, v27, (v18 & 1), v46, v47, v48, v49, v50);
  v35, v51, v52, v53, v54, v55, v56, v57;
  sub_1BE050364();
  v58 = sub_1BE050544();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  sub_1BD0DDF10(v36, v38, (v17 & 1), v63, v65, v66, v67, v68);
  v69 = v41;
  v70 = v107;
  v69, v71, v72, v73, v74, v75, v76, v77;
  sub_1BD0DE19C(v104 + *(v105 + 24), v70, &qword_1EBD44F98, &unk_1BE0D39B0);
  if ((*(v106 + 48))(v70, 1, v108) == 1)
  {
    sub_1BD0DE53C(v70, &qword_1EBD44F98, &unk_1BE0D39B0);
    v78 = 1;
    v79 = v109;
  }

  else
  {
    v80 = v70;
    v81 = v101;
    sub_1BD6EF488(v80, v101, type metadata accessor for FinanceKitSpendingTrend);
    v82 = v81;
    v83 = v102;
    sub_1BD6EF488(v82, v102, type metadata accessor for FinanceKitSpendingTrend);
    v79 = v109;
    sub_1BD6EF488(v83, v109, _s21SpendingTrendIconViewVMa);
    v78 = 0;
  }

  (*(v111 + 56))(v79, v78, 1, v112);
  v84 = v110;
  sub_1BD0DE19C(v79, v110, &qword_1EBD509A0, &qword_1BE0F12D8);
  v85 = v113;
  *v113 = v58;
  v85[1] = v60;
  v86 = (v62 & 1);
  *(v85 + 16) = v86;
  v85[3] = v64;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD509A8, &unk_1BE0F12E0);
  sub_1BD0DE19C(v84, v85 + *(v87 + 48), &qword_1EBD509A0, &qword_1BE0F12D8);
  sub_1BD0D7F18(v58, v60, v86);
  sub_1BE048C84();
  sub_1BD0DE53C(v79, &qword_1EBD509A0, &qword_1BE0F12D8);
  sub_1BD0DE53C(v84, &qword_1EBD509A0, &qword_1BE0F12D8);
  sub_1BD0DDF10(v58, v60, v86, v88, v89, v90, v91, v92);
  v64, v93, v94, v95, v96, v97, v98, v99;
}

uint64_t sub_1BD6E91F8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD508A0, &qword_1BE0F1158);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD508F8, &qword_1BE0F11C0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50868, &qword_1BE0F1140);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23[-v12];
  v14 = (a1 + *(_s17SummaryDetailViewVMa(0) + 28));
  v15 = *v14;
  v16 = *(v14 + 1);
  v23[16] = v15;
  v24 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50698, &qword_1BE0F0FB0);
  sub_1BE0516A4();
  v17 = v23[15];
  v18 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  if (v17)
  {
    sub_1BD6E994C(*(a2 + *(v18 + 52)), v7);
    sub_1BD0DE19C(v7, v10, &qword_1EBD508A0, &qword_1BE0F1158);
    swift_storeEnumTagMultiPayload();
    sub_1BD6F0244(&qword_1EBD50860, &qword_1EBD50868, &qword_1BE0F1140, sub_1BD6F00B4);
    sub_1BD6F0244(&qword_1EBD50898, &qword_1EBD508A0, &qword_1BE0F1158, sub_1BD6F02C0);
    sub_1BE04F9A4();
    v19 = v7;
    v20 = &qword_1EBD508A0;
    v21 = &qword_1BE0F1158;
  }

  else
  {
    sub_1BD6E9538(*(a2 + *(v18 + 32)), a2, v13);
    sub_1BD0DE19C(v13, v10, &qword_1EBD50868, &qword_1BE0F1140);
    swift_storeEnumTagMultiPayload();
    sub_1BD6F0244(&qword_1EBD50860, &qword_1EBD50868, &qword_1BE0F1140, sub_1BD6F00B4);
    sub_1BD6F0244(&qword_1EBD50898, &qword_1EBD508A0, &qword_1BE0F1158, sub_1BD6F02C0);
    sub_1BE04F9A4();
    v19 = v13;
    v20 = &qword_1EBD50868;
    v21 = &qword_1BE0F1140;
  }

  return sub_1BD0DE53C(v19, v20, v21);
}

uint64_t sub_1BD6E9538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v5 = sub_1BE04AFE4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = _s17SummaryDetailViewVMa(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50878, &qword_1BE0F1148);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v17 = &KeyPath - v16;
  if (*(a1 + 16))
  {
    v32 = a1;
    v28 = v13;
    v29 = v14;
    KeyPath = swift_getKeyPath();
    sub_1BD6EF420(v30, &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), _s17SummaryDetailViewVMa);
    (*(v6 + 16))(&KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v5);
    v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v19 = *(v6 + 80);
    v31 = a3;
    v20 = (v10 + v19 + v18) & ~v19;
    v21 = swift_allocObject();
    sub_1BD6EF488(v11, v21 + v18, _s17SummaryDetailViewVMa);
    (*(v6 + 32))(v21 + v20, &KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50900, &qword_1BE0F1200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37258, &qword_1BE0B1278);
    sub_1BD0DE4F4(&qword_1EBD50908, &qword_1EBD50900, &qword_1BE0F1200, MEMORY[0x1E69E6338]);
    sub_1BD0DE4F4(&qword_1EBD50890, &qword_1EBD37258, &qword_1BE0B1278, MEMORY[0x1E697D680]);
    sub_1BE0519C4();
    v22 = v28;
    v23 = &v17[*(v28 + 36)];
    v23[32] = 0;
    *v23 = 0u;
    *(v23 + 1) = 0u;
    v24 = v31;
    sub_1BD0DE204(v17, v31, &qword_1EBD50878, &qword_1BE0F1148);
    return (*(v29 + 56))(v24, 0, 1, v22);
  }

  else
  {
    v26 = *(v14 + 56);

    return v26(a3, 1, 1, v15);
  }
}

uint64_t sub_1BD6E994C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = _s17SummaryDetailViewVMa(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD508B0, &qword_1BE0F1160);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - v11;
  if (*(a1 + 16))
  {
    v17[0] = v9;
    v17[1] = a1;
    swift_getKeyPath();
    sub_1BD6EF420(v2, v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), _s17SummaryDetailViewVMa);
    v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v14 = swift_allocObject();
    sub_1BD6EF488(v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, _s17SummaryDetailViewVMa);
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50910, &unk_1BE0F1228);
    _s17GroupBreakdownRowVMa(0);
    sub_1BD0DE4F4(&qword_1EBD50918, &qword_1EBD50910, &unk_1BE0F1228, MEMORY[0x1E69E6338]);
    sub_1BD6EED94(&qword_1EBD3A360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1BD6EED94(&qword_1EBD508B8, _s17GroupBreakdownRowVMa, &unk_1BE0F130C);
    sub_1BE0519C4();
    (*(v17[0] + 32))(a2, v12, v8);
    return (*(v17[0] + 56))(a2, 0, 1, v8);
  }

  else
  {
    v16 = *(v9 + 56);

    return v16(a2, 1, 1, v8, v10);
  }
}

void sub_1BD6E9CA4(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = sub_1BE04FAB4();
  v64 = *(v2 - 8);
  v65 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50848, &unk_1BE0F1130);
  v5 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v7 = &v61 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD508C0, &qword_1BE0F1168);
  v8 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v10 = &v61 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50840, &qword_1BE0F1128);
  MEMORY[0x1EEE9AC00](v61);
  v12 = &v61 - v11;
  v13 = sub_1BE052404();
  v14 = PKLocalizedBankConnectString(v13);

  if (v14)
  {
    v15 = sub_1BE052434();
    v17 = v16;

    v73 = v15;
    v74 = v17;
    v18 = (v1 + *(_s17SummaryDetailViewVMa(0) + 28));
    v19 = *v18;
    v20 = *(v18 + 1);
    LOBYTE(v67) = v19;
    v68 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50698, &qword_1BE0F0FB0);
    sub_1BE0516C4();
    v21 = v70;
    v22 = v71;
    v67 = v70;
    v68 = v71;
    v69 = v72;
    v23 = sub_1BE051D74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD508C8, &qword_1BE0F1170);
    sub_1BE051954();
    v22, v24, v25, v26, v27, v28, v29, v30;
    v23, v31, v32, v33, v34, v35, v36, v37;
    v21, v38, v39, v40, v41, v42, v43, v44;
    v67 = v70;
    v68 = v71;
    v69 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD508D0, &qword_1BE0F1178);
    sub_1BD6F0394();
    sub_1BD0DE4F4(&qword_1EBD508E0, &qword_1EBD508D0, &qword_1BE0F1178, MEMORY[0x1E6981F48]);
    sub_1BD0DDEBC();
    sub_1BE051804();
    sub_1BE04FAA4();
    sub_1BD0DE4F4(&qword_1EBD50850, &qword_1EBD50848, &unk_1BE0F1130, MEMORY[0x1E697D690]);
    v45 = v63;
    v46 = v65;
    sub_1BE050924();
    (*(v64 + 8))(v4, v46);
    (*(v5 + 8))(v7, v45);
    LOBYTE(v46) = sub_1BE0501F4();
    sub_1BE04E1F4();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    (*(v8 + 32))(v12, v10, v62);
    v55 = &v12[*(v61 + 36)];
    *v55 = v46;
    *(v55 + 1) = v48;
    *(v55 + 2) = v50;
    *(v55 + 3) = v52;
    *(v55 + 4) = v54;
    v55[40] = 0;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50810, &qword_1BE0F1108);
    v57 = v66;
    v58 = (v66 + *(v56 + 36));
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
    v60 = sub_1BE0505C4();
    (*(*(v60 - 8) + 56))(v58 + v59, 1, 1, v60);
    *v58 = swift_getKeyPath();
    sub_1BD0DE204(v12, v57, &qword_1EBD50840, &qword_1BE0F1128);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD6EA1F0(char *a1@<X8>)
{
  v44 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD508E8, &qword_1BE0F11B0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v43 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v41 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v41 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  v17 = sub_1BE052404();
  v18 = PKLocalizedBankConnectString(v17);

  if (v18)
  {
    v19 = sub_1BE052434();
    v21 = v20;

    v45 = v19;
    v46 = v21;
    sub_1BD0DDEBC();
    *v13 = sub_1BE0506C4();
    *(v13 + 1) = v22;
    v13[16] = v23 & 1;
    *(v13 + 3) = v24;
    *(v13 + 16) = 256;
    v25 = v2[4];
    v25(v16, v13, v1);
    v26 = sub_1BE052404();
    v27 = PKLocalizedBankConnectString(v26);

    if (v27)
    {
      v28 = sub_1BE052434();
      v30 = v29;

      v45 = v28;
      v46 = v30;
      *v8 = sub_1BE0506C4();
      *(v8 + 1) = v31;
      v8[16] = v32 & 1;
      *(v8 + 3) = v33;
      *(v8 + 16) = 257;
      v34 = v41;
      v25(v41, v8, v1);
      v35 = v2[2];
      v36 = v42;
      v35(v42, v16, v1);
      v37 = v43;
      v35(v43, v34, v1);
      v38 = v44;
      v35(v44, v36, v1);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD508F0, &qword_1BE0F11B8);
      v35(&v38[*(v39 + 48)], v37, v1);
      v40 = v2[1];
      v40(v34, v1);
      v40(v16, v1);
      v40(v37, v1);
      v40(v36, v1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD6EA58C@<X0>(_WORD *a1@<X8>)
{
  result = sub_1BE049AF4();
  *a1 = result;
  return result;
}

uint64_t sub_1BD6EA5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a3;
  v53 = a2;
  v51 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v49 = *(v5 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = &v34 - v6;
  v7 = sub_1BE049B04();
  v44 = *(v7 - 8);
  v45 = v7;
  v47 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1BE04AFE4();
  v9 = *(v42 - 8);
  v43 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v11;
  v12 = _s17SummaryDetailViewVMa(0);
  v40 = *(v12 - 8);
  v13 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v35 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v34 - v15;
  v41 = &v34 - v15;
  v17 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.CategoryBreakdown(0);
  v18 = v17[6];
  v19 = sub_1BE0493F4();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v16, a1 + v18, v19);
  (*(v20 + 56))(v16, 0, 1, v19);
  v39 = a1 + v17[7];
  v38 = *(a1 + v17[5]);
  v37 = a1;
  v21 = *(_s31SpendingSummaryDetailsViewModelVMa(0) + 20);
  v22 = v53;
  sub_1BD6EF420(v53, &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), _s17SummaryDetailViewVMa);
  v23 = v42;
  (*(v9 + 16))(v11, v48, v42);
  v25 = v44;
  v24 = v45;
  (*(v44 + 16))(v52, a1, v45);
  v26 = v46;
  sub_1BD0DE19C(v22 + v21, v46, &qword_1EBD38DB8, &unk_1BE0BD340);
  v27 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v28 = (v13 + *(v9 + 80) + v27) & ~*(v9 + 80);
  v29 = (v43 + *(v25 + 80) + v28) & ~*(v25 + 80);
  v30 = (v47 + *(v49 + 80) + v29) & ~*(v49 + 80);
  v31 = swift_allocObject();
  sub_1BD6EF488(v35, v31 + v27, _s17SummaryDetailViewVMa);
  (*(v9 + 32))(v31 + v28, v36, v23);
  (*(v25 + 32))(v31 + v29, v52, v24);
  sub_1BD0DE204(v26, v31 + v30, &qword_1EBD38DB8, &unk_1BE0BD340);
  v54 = v37;
  v55 = v38;
  v32 = v41;
  v56 = v53;
  v57 = v41;
  v58 = v39;
  _s16BreakdownRowViewVMa(0);
  sub_1BD6EED94(&qword_1EBD44FB8, _s16BreakdownRowViewVMa, &unk_1BE0D39D4);
  sub_1BE051704();
  return sub_1BD0DE53C(v32, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
}

double sub_1BD6EAB4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04AFE4();
  (*(*(v6 - 8) + 16))(a3, a2, v6);
  v7 = *(_s31SpendingSummaryDetailsViewModelVMa(0) + 20);
  v8 = _s17GroupBreakdownRowVMa(0);
  sub_1BD0DE19C(a2 + v7, a3 + v8[5], &qword_1EBD38DB8, &unk_1BE0BD340);
  sub_1BD6EF420(a1, a3 + v8[6], type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.GroupBreakdown);
  type metadata accessor for NavigationController();
  sub_1BD6EED94(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
  v9 = sub_1BE04EEC4();
  v11 = v10;
  v12 = v8[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4AB00, &qword_1BE0C85C0);
  sub_1BE051694();
  result = *&v15;
  *(a3 + v12) = v15;
  v14 = (a3 + v8[8]);
  *v14 = v9;
  v14[1] = v11;
  return result;
}

uint64_t sub_1BD6EACB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v209 = a2;
  v211 = a1;
  v184 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507E8, &qword_1BE0F10D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v177 = &v167 - v4;
  v176 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0);
  v178 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v170 = &v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v179 = &v167 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507F0, &qword_1BE0F10D8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v173 = &v167 - v9;
  v174 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown(0);
  v172 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v175 = &v167 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v187 = *(v11 - 8);
  v188 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v189 = &v167 - v12;
  v13 = sub_1BE04AFE4();
  v193 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v186 = v14;
  v203 = &v167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s17SummaryDetailViewVMa(0);
  v200 = *(v15 - 8);
  v16 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44F98, &unk_1BE0D39B0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v205 = &v167 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v204 = &v167 - v20;
  v210 = sub_1BE049B04();
  v21 = *(v210 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v210);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v167 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37258, &qword_1BE0B1278);
  v207 = *(v26 - 8);
  v208 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v190 = &v167 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD507F8, &qword_1BE0F10E0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v167 - v29;
  v31 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown(0);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v171 = &v167 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50800, &qword_1BE0F10E8);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v183 = &v167 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v182 = &v167 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v181 = &v167 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v194 = &v167 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v180 = &v167 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v192 = &v167 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v191 = &v167 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v199 = &v167 - v49;
  v198 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  sub_1BD0DE19C(v211 + v198[9], v30, &qword_1EBD507F8, &qword_1BE0F10E0);
  v50 = (*(v32 + 48))(v30, 1, v31);
  v51 = v209;
  v195 = v13;
  v196 = v16;
  v201 = &v167 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = v21;
  v206 = v25;
  v52 = v200;
  v197 = &v167 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = v22;
  if (v50 == 1)
  {
    sub_1BD0DE53C(v30, &qword_1EBD507F8, &qword_1BE0F10E0);
    v53 = *(v207 + 56);
    v53(v199, 1, 1, v208);
    v54 = v204;
  }

  else
  {
    v55 = v21;
    v56 = v25;
    v57 = v171;
    sub_1BD6EF488(v30, v171, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown);
    (*(v55 + 104))(v56, *MEMORY[0x1E6967A90], v210);
    v58 = sub_1BE0493F4();
    v59 = *(v58 - 8);
    v60 = v204;
    (*(v59 + 16))(v204, v57, v58);
    (*(v59 + 56))(v60, 0, 1, v58);
    v61 = type metadata accessor for FinanceKitSpendingTrend(0);
    (*(*(v61 - 8) + 56))(v205, 1, 1, v61);
    v168 = *(v57 + *(v31 + 20));
    v62 = *(_s31SpendingSummaryDetailsViewModelVMa(0) + 20);
    v63 = v201;
    sub_1BD6EF420(v51, v201, _s17SummaryDetailViewVMa);
    v64 = v193;
    v65 = v195;
    (*(v193 + 16))(v203, v211, v195);
    v66 = v22;
    v67 = v55;
    (*(v55 + 16))(v197, v206, v210);
    v68 = v189;
    sub_1BD0DE19C(v51 + v62, v189, &qword_1EBD38DB8, &unk_1BE0BD340);
    v69 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v70 = (v16 + *(v64 + 80) + v69) & ~*(v64 + 80);
    v71 = (v186 + *(v67 + 80) + v70) & ~*(v67 + 80);
    v72 = (v66 + *(v187 + 80) + v71) & ~*(v187 + 80);
    v73 = swift_allocObject();
    sub_1BD6EF488(v63, v73 + v69, _s17SummaryDetailViewVMa);
    (*(v64 + 32))(v73 + v70, v203, v65);
    (*(v67 + 32))(v73 + v71, v197, v210);
    v74 = v205;
    v75 = sub_1BD0DE204(v68, v73 + v72, &qword_1EBD38DB8, &unk_1BE0BD340);
    MEMORY[0x1EEE9AC00](v75);
    v76 = v206;
    v77 = v168;
    *(&v167 - 6) = v206;
    *(&v167 - 5) = v77;
    v54 = v204;
    *(&v167 - 4) = v209;
    *(&v167 - 3) = v54;
    *(&v167 - 2) = v74;
    _s16BreakdownRowViewVMa(0);
    sub_1BD6EED94(&qword_1EBD44FB8, _s16BreakdownRowViewVMa, &unk_1BE0D39D4);
    v78 = v190;
    sub_1BE051704();
    sub_1BD0DE53C(v74, &qword_1EBD44F98, &unk_1BE0D39B0);
    sub_1BD0DE53C(v54, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
    (*(v202 + 8))(v76, v210);
    v79 = v207;
    v80 = v208;
    v81 = v199;
    (*(v207 + 32))(v199, v78, v208);
    v53 = *(v79 + 56);
    v53(v81, 0, 1, v80);
    sub_1BD6EF2C8(v171, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown);
  }

  v82 = v173;
  sub_1BD0DE19C(v211 + v198[10], v173, &qword_1EBD507F0, &qword_1BE0F10D8);
  v83 = v174;
  if ((*(v172 + 48))(v82, 1, v174) == 1)
  {
    sub_1BD0DE53C(v82, &qword_1EBD507F0, &qword_1BE0F10D8);
    v53(v191, 1, 1, v208);
  }

  else
  {
    v84 = v175;
    sub_1BD6EF488(v82, v175, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown);
    v85 = v202;
    v86 = v206;
    (*(v202 + 104))(v206, *MEMORY[0x1E6967A70], v210);
    v87 = sub_1BE0493F4();
    v88 = *(v87 - 8);
    (*(v88 + 16))(v54, v84, v87);
    (*(v88 + 56))(v54, 0, 1, v87);
    v89 = type metadata accessor for FinanceKitSpendingTrend(0);
    (*(*(v89 - 8) + 56))(v205, 1, 1, v89);
    v174 = *(v84 + *(v83 + 20));
    v90 = *(_s31SpendingSummaryDetailsViewModelVMa(0) + 20);
    v91 = v209;
    v92 = v201;
    sub_1BD6EF420(v209, v201, _s17SummaryDetailViewVMa);
    v93 = v193;
    v94 = v195;
    (*(v193 + 16))(v203, v211, v195);
    (*(v85 + 16))(v197, v86, v210);
    v95 = v189;
    sub_1BD0DE19C(v91 + v90, v189, &qword_1EBD38DB8, &unk_1BE0BD340);
    v96 = (*(v200 + 80) + 16) & ~*(v200 + 80);
    v97 = (v196 + *(v93 + 80) + v96) & ~*(v93 + 80);
    v98 = v85;
    v99 = (v186 + *(v85 + 80) + v97) & ~*(v85 + 80);
    v100 = (v185 + *(v187 + 80) + v99) & ~*(v187 + 80);
    v101 = swift_allocObject();
    sub_1BD6EF488(v92, v101 + v96, _s17SummaryDetailViewVMa);
    v102 = v210;
    (*(v93 + 32))(v101 + v97, v203, v94);
    v103 = v101 + v99;
    v104 = v208;
    (*(v98 + 32))(v103, v197, v102);
    v105 = v204;
    v106 = v190;
    v107 = sub_1BD0DE204(v95, v101 + v100, &qword_1EBD38DB8, &unk_1BE0BD340);
    MEMORY[0x1EEE9AC00](v107);
    v108 = v205;
    v109 = v206;
    v110 = v174;
    *(&v167 - 6) = v206;
    *(&v167 - 5) = v110;
    *(&v167 - 4) = v209;
    *(&v167 - 3) = v105;
    *(&v167 - 2) = v108;
    _s16BreakdownRowViewVMa(0);
    sub_1BD6EED94(&qword_1EBD44FB8, _s16BreakdownRowViewVMa, &unk_1BE0D39D4);
    sub_1BE051704();
    sub_1BD0DE53C(v108, &qword_1EBD44F98, &unk_1BE0D39B0);
    sub_1BD0DE53C(v105, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
    v111 = v207;
    (*(v202 + 8))(v109, v102);
    v112 = v191;
    (*(v111 + 32))(v191, v106, v104);
    v53 = *(v111 + 56);
    v53(v112, 0, 1, v104);
    sub_1BD6EF2C8(v175, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown);
  }

  v113 = v179;
  v114 = v178;
  v115 = v177;
  sub_1BD0DE19C(v211 + v198[11], v177, &qword_1EBD507E8, &qword_1BE0F10D0);
  v116 = (*(v114 + 48))(v115, 1, v176);
  v118 = v200;
  v117 = v201;
  v119 = v196;
  if (v116 == 1)
  {
    sub_1BD0DE53C(v115, &qword_1EBD507E8, &qword_1BE0F10D0);
  }

  else
  {
    sub_1BD6EF488(v115, v113, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
    if (PKBankConnectExcludeFromSpendingSummariesAndHighlights())
    {
      sub_1BD6EF420(v209, v117, _s17SummaryDetailViewVMa);
      v120 = v170;
      sub_1BD6EF420(v113, v170, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
      v121 = (*(v118 + 80) + 16) & ~*(v118 + 80);
      v122 = (v119 + *(v114 + 80) + v121) & ~*(v114 + 80);
      v123 = swift_allocObject();
      sub_1BD6EF488(v201, v123 + v121, _s17SummaryDetailViewVMa);
      v124 = sub_1BD6EF488(v120, v123 + v122, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
      MEMORY[0x1EEE9AC00](v124);
      *(&v167 - 2) = v113;
      _s16BreakdownRowViewVMa(0);
      sub_1BD6EED94(&qword_1EBD44FB8, _s16BreakdownRowViewVMa, &unk_1BE0D39D4);
      v125 = v190;
      sub_1BE051704();
      v126 = v208;
      v127 = v192;
      (*(v207 + 32))(v192, v125, v208);
      v117 = v201;
      v53(v127, 0, 1, v126);
      sub_1BD6EF2C8(v113, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
      v128 = v195;
      v129 = v193;
      goto LABEL_13;
    }

    sub_1BD6EF2C8(v113, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown);
  }

  v128 = v195;
  v129 = v193;
  v53(v192, 1, 1, v208);
LABEL_13:
  v130 = v202;
  v131 = v206;
  if (*(v211 + v198[12]))
  {
    v198 = *(v211 + v198[12]);
    v132 = v210;
    (*(v202 + 104))(v206, *MEMORY[0x1E6967AC0], v210);
    v133 = sub_1BE0493F4();
    (*(*(v133 - 8) + 56))(v204, 1, 1, v133);
    v134 = type metadata accessor for FinanceKitSpendingTrend(0);
    (*(*(v134 - 8) + 56))(v205, 1, 1, v134);
    v135 = _s31SpendingSummaryDetailsViewModelVMa(0);
    v136 = v117;
    v137 = *(v135 + 20);
    v138 = v209;
    sub_1BD6EF420(v209, v136, _s17SummaryDetailViewVMa);
    (*(v129 + 16))(v203, v211, v128);
    v139 = v197;
    (*(v130 + 16))(v197, v131, v132);
    v140 = v189;
    sub_1BD0DE19C(v138 + v137, v189, &qword_1EBD38DB8, &unk_1BE0BD340);
    v141 = (*(v200 + 80) + 16) & ~*(v200 + 80);
    v142 = (v196 + *(v129 + 80) + v141) & ~*(v129 + 80);
    v143 = (v186 + *(v130 + 80) + v142) & ~*(v130 + 80);
    v144 = (v185 + *(v187 + 80) + v143) & ~*(v187 + 80);
    v145 = v128;
    v146 = swift_allocObject();
    sub_1BD6EF488(v201, v146 + v141, _s17SummaryDetailViewVMa);
    (*(v129 + 32))(v146 + v142, v203, v145);
    v147 = v146 + v143;
    v148 = v210;
    (*(v130 + 32))(v147, v139, v210);
    v149 = sub_1BD0DE204(v140, v146 + v144, &qword_1EBD38DB8, &unk_1BE0BD340);
    MEMORY[0x1EEE9AC00](v149);
    v151 = v205;
    v150 = v206;
    v152 = v198;
    *(&v167 - 6) = v206;
    *(&v167 - 5) = v152;
    v153 = v204;
    *(&v167 - 4) = v209;
    *(&v167 - 3) = v153;
    *(&v167 - 2) = v151;
    _s16BreakdownRowViewVMa(0);
    sub_1BD6EED94(&qword_1EBD44FB8, _s16BreakdownRowViewVMa, &unk_1BE0D39D4);
    v154 = v190;
    sub_1BE051704();
    sub_1BD0DE53C(v151, &qword_1EBD44F98, &unk_1BE0D39B0);
    sub_1BD0DE53C(v153, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
    (*(v202 + 8))(v150, v148);
    v155 = v207;
    v156 = v208;
    v157 = v180;
    (*(v207 + 32))(v180, v154, v208);
    (*(v155 + 56))(v157, 0, 1, v156);
  }

  else
  {
    v157 = v180;
    v53(v180, 1, 1, v208);
  }

  v158 = v194;
  sub_1BD0DE19C(v199, v194, &qword_1EBD50800, &qword_1BE0F10E8);
  v159 = v191;
  v160 = v181;
  sub_1BD0DE19C(v191, v181, &qword_1EBD50800, &qword_1BE0F10E8);
  v161 = v192;
  v162 = v182;
  sub_1BD0DE19C(v192, v182, &qword_1EBD50800, &qword_1BE0F10E8);
  v163 = v183;
  sub_1BD0DE19C(v157, v183, &qword_1EBD50800, &qword_1BE0F10E8);
  v164 = v184;
  sub_1BD0DE19C(v158, v184, &qword_1EBD50800, &qword_1BE0F10E8);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50808, &unk_1BE0F10F0);
  sub_1BD0DE19C(v160, v164 + v165[12], &qword_1EBD50800, &qword_1BE0F10E8);
  sub_1BD0DE19C(v162, v164 + v165[16], &qword_1EBD50800, &qword_1BE0F10E8);
  sub_1BD0DE19C(v163, v164 + v165[20], &qword_1EBD50800, &qword_1BE0F10E8);
  sub_1BD0DE53C(v157, &qword_1EBD50800, &qword_1BE0F10E8);
  sub_1BD0DE53C(v161, &qword_1EBD50800, &qword_1BE0F10E8);
  sub_1BD0DE53C(v159, &qword_1EBD50800, &qword_1BE0F10E8);
  sub_1BD0DE53C(v199, &qword_1EBD50800, &qword_1BE0F10E8);
  sub_1BD0DE53C(v163, &qword_1EBD50800, &qword_1BE0F10E8);
  sub_1BD0DE53C(v162, &qword_1EBD50800, &qword_1BE0F10E8);
  sub_1BD0DE53C(v160, &qword_1EBD50800, &qword_1BE0F10E8);
  return sub_1BD0DE53C(v194, &qword_1EBD50800, &qword_1BE0F10E8);
}

uint64_t sub_1BD6EC694(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = *(a1 + *(_s17SummaryDetailViewVMa(0) + 24));
  if (v7)
  {
    v8 = *(a2 + *(type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0) + 20));
    v9 = _s31SpendingSummaryDetailsViewModelVMa(0);
    sub_1BD0DE19C(a1 + *(v9 + 20), v6, &qword_1EBD38DB8, &unk_1BE0BD340);
    type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel(0);
    v10 = swift_allocObject();
    v11 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitManuallyExcludedHistoryView9ViewModel__state;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C08, &qword_1BE0F1100);
    (*(*(v12 - 8) + 56))(v10 + v11, 1, 2, v12);
    sub_1BE048964();
    sub_1BE048C84();
    sub_1BE04B5C4();
    *(v10 + 16) = v8;
    sub_1BD0DE204(v6, v10 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitManuallyExcludedHistoryView9ViewModel_range, &qword_1EBD38DB8, &unk_1BE0BD340);
    sub_1BD0F9B4C(v22);
    sub_1BD982668(v22);
    v7, v13, v14, v15, v16, v17, v18, v19;
    return sub_1BD6EFD4C(v22);
  }

  else
  {
    type metadata accessor for NavigationController();
    sub_1BD6EED94(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

void sub_1BD6EC8AC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BE04B0F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE052404();
  v9 = PKLocalizedBankConnectString(v8);

  if (v9)
  {
    v10 = sub_1BE052434();
    v12 = v11;

    v13 = sub_1BE052404();
    v14 = PKLocalizedString(v13);

    if (v14)
    {
      sub_1BE052434();
      v16 = v15;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1BE0B69E0;
      v18 = *(*(a1 + *(type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0) + 20)) + 16);
      v19 = MEMORY[0x1E69E65A8];
      *(v17 + 56) = MEMORY[0x1E69E6530];
      *(v17 + 64) = v19;
      *(v17 + 32) = v18;
      v20 = sub_1BE052454();
      v22 = v21;
      v16, v21, v23, v24, v25, v26, v27, v28;
      sub_1BE04B054();
      v29 = sub_1BE0493E4();
      v31 = v30;
      (*(v5 + 8))(v7, v4);
      PKScreenScale();
      v32 = PKIconForFKManuallyExcluded();
      v33 = *(_s16BreakdownRowViewVMa(0) + 32);
      v34 = type metadata accessor for FinanceKitSpendingTrend(0);
      (*(*(v34 - 8) + 56))(a2 + v33, 1, 1, v34);
      *a2 = v10;
      a2[1] = v12;
      a2[2] = v20;
      a2[3] = v22;
      a2[4] = v29;
      a2[5] = v31;
      a2[6] = v32;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD6ECB40(uint64_t a1@<X8>)
{
  v2 = sub_1BE052404();
  v3 = PKLocalizedBankConnectString(v2);

  if (v3)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    v4 = sub_1BE0506C4();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = sub_1BE050234();
    sub_1BE04E1F4();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = v8 & 1;
    v21 = sub_1BE050204();
    sub_1BE04E1F4();
    *a1 = v4;
    *(a1 + 8) = v6;
    *(a1 + 16) = v20;
    *(a1 + 24) = v10;
    *(a1 + 32) = v11;
    *(a1 + 40) = v13;
    *(a1 + 48) = v15;
    *(a1 + 56) = v17;
    *(a1 + 64) = v19;
    *(a1 + 72) = 0;
    *(a1 + 80) = v21;
    *(a1 + 88) = v22;
    *(a1 + 96) = v23;
    *(a1 + 104) = v24;
    *(a1 + 112) = v25;
    *(a1 + 120) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD6ECCB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v6 = sub_1BE052404();
  [v5 setLocalizedDateFormatFromTemplate_];

  *a4 = v5;
}

uint64_t sub_1BD6ECD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_1BE049B04();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE04AFE4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + *(_s17SummaryDetailViewVMa(0) + 24));
  if (v18)
  {
    (*(v15 + 16))(v17, a2, v14);
    (*(v11 + 16))(v13, a3, v10);
    sub_1BD0DE19C(v32, v9, &qword_1EBD38DB8, &unk_1BE0BD340);
    sub_1BE0490F4();
    sub_1BE048964();
    v32 = sub_1BE0490B4();
    type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel(0);
    v19 = swift_allocObject();
    v20 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__institution;
    v21 = sub_1BE049184();
    (*(*(v21 - 8) + 56))(v19 + v20, 1, 1, v21);
    v22 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__account;
    v23 = sub_1BE0495A4();
    (*(*(v23 - 8) + 56))(v19 + v22, 1, 1, v23);
    *(v19 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__transactions) = 0;
    sub_1BE04B5C4();
    (*(v15 + 32))(v19 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__accountID, v17, v14);
    (*(v11 + 32))(v19 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__category, v13, v10);
    sub_1BD0DE204(v9, v19 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__range, &qword_1EBD38DB8, &unk_1BE0BD340);
    *(v19 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__store) = v32;
    sub_1BD628774(v33);
    sub_1BD9827A8(v33);
    v18, v24, v25, v26, v27, v28, v29, v30;
    return sub_1BD6EFDA0(v33);
  }

  else
  {
    type metadata accessor for NavigationController();
    sub_1BD6EED94(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

void sub_1BD6ED11C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v41 = a4;
  v9 = sub_1BE049B04();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE049AE4();
  v39 = v14;
  v40 = v13;
  v15 = sub_1BE052404();
  v16 = PKLocalizedString(v15);

  if (v16)
  {
    sub_1BE052434();
    v18 = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1BE0B69E0;
    v20 = *(a2 + 16);
    v21 = MEMORY[0x1E69E65A8];
    *(v19 + 56) = MEMORY[0x1E69E6530];
    *(v19 + 64) = v21;
    *(v19 + 32) = v20;
    v22 = sub_1BE052454();
    v24 = v23;
    v18, v23, v25, v26, v27, v28, v29, v30;
    sub_1BD6ED354(a1, a3);
    v32 = v31;
    v34 = v33;
    (*(v10 + 16))(v12, a1, v9);
    MEMORY[0x1BFB3FF90](v12);
    PKScreenScale();
    v35 = PKIconForFKCategory();
    v36 = _s16BreakdownRowViewVMa(0);
    sub_1BD0DE19C(v41, a5 + *(v36 + 32), &qword_1EBD44F98, &unk_1BE0D39B0);
    v37 = v39;
    *a5 = v40;
    a5[1] = v37;
    a5[2] = v22;
    a5[3] = v24;
    a5[4] = v32;
    a5[5] = v34;
    a5[6] = v35;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD6ED354(uint64_t a1, uint64_t a2)
{
  v29 = sub_1BE04B0F4();
  v3 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_1BE0493F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(a2, v8, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1BD0DE53C(v8, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    if (sub_1BE049AA4())
    {
      sub_1BE04B054();
      sub_1BE0493E4();
      (*(v3 + 8))(v5, v29);
      (*(v10 + 8))(v12, v9);
    }

    else
    {
      v13 = sub_1BE052404();
      v14 = PKLocalizedPaymentString(v13);

      if (v14)
      {
        sub_1BE052434();
        v16 = v15;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1BE0B69E0;
        sub_1BE04B054();
        v18 = sub_1BE0493E4();
        v20 = v19;
        (*(v3 + 8))(v5, v29);
        *(v17 + 56) = MEMORY[0x1E69E6158];
        *(v17 + 64) = sub_1BD110550();
        *(v17 + 32) = v18;
        *(v17 + 40) = v20;
        sub_1BE052454();
        v16, v21, v22, v23, v24, v25, v26, v27;
        (*(v10 + 8))(v12, v9);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1BD6ED6D4@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37258, &qword_1BE0B1278);
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v47 - v3;
  v5 = _s17GroupBreakdownRowVMa(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1BD6EF420(v1, &v47 - v8, _s17GroupBreakdownRowVMa);
  v9 = *(v6 + 80);
  v10 = swift_allocObject();
  sub_1BD6EF488(&v47 - v8, v10 + ((v9 + 16) & ~v9), _s17GroupBreakdownRowVMa);
  v55 = v1;
  _s16BreakdownRowViewVMa(0);
  sub_1BD6EED94(&qword_1EBD44FB8, _s16BreakdownRowViewVMa, &unk_1BE0D39D4);
  v51 = v4;
  v11 = sub_1BE051704();
  MEMORY[0x1EEE9AC00](v11);
  sub_1BD6EF420(v1, &v47 - v8, _s17GroupBreakdownRowVMa);
  sub_1BE0528A4();
  v12 = sub_1BE052894();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  sub_1BD6EF488(&v47 - v8, v13 + ((v9 + 32) & ~v9), _s17GroupBreakdownRowVMa);
  v15 = sub_1BE0528D4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v49 = sub_1BE04EAA4();
    v50 = &v47;
    v48 = *(v49 - 8);
    MEMORY[0x1EEE9AC00](v49);
    v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_1BE053834();
    v58, v21, v22, v23, v24, v25, v26, v27;
    v57 = 0xD00000000000004ELL;
    v58 = 0x80000001BE1362D0;
    v56 = 387;
    v28 = sub_1BE053B24();
    v30 = v29;
    MEMORY[0x1BFB3F610](v28);
    v30, v31, v32, v33, v34, v35, v36, v37;
    v39 = MEMORY[0x1EEE9AC00](v38);
    (*(v16 + 16))(&v47 - v18, &v47 - v18, v15, v39);
    sub_1BE04EA94();
    (*(v16 + 8))(&v47 - v18, v15);
    v40 = v54;
    (*(v52 + 32))(v54, v51, v53);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37260, &qword_1BE0B1280);
    return (*(v48 + 32))(v40 + *(v41 + 36), v20, v49);
  }

  else
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37268, &qword_1BE0B1288);
    v44 = v54;
    v45 = (v54 + *(v43 + 36));
    v46 = sub_1BE04E7B4();
    (*(v16 + 32))(&v45[*(v46 + 20)], &v47 - v18, v15);
    *v45 = &unk_1BE0F1368;
    *(v45 + 1) = v13;
    return (*(v52 + 32))(v44, v51, v53);
  }
}

uint64_t sub_1BD6EDC68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v29 - v3;
  v5 = sub_1BE04AFE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v29 - v10;
  v12 = _s17GroupBreakdownRowVMa(0);
  v13 = *(a1 + *(v12 + 32));
  if (v13)
  {
    v14 = v12;
    v15 = *(v6 + 16);
    v15(v11, a1, v5);
    v15(v8, a1 + *(v14 + 24), v5);
    sub_1BD0DE19C(a1 + *(v14 + 20), v4, &qword_1EBD38DB8, &unk_1BE0BD340);
    sub_1BE0490F4();
    sub_1BE048964();
    v16 = sub_1BE0490B4();
    type metadata accessor for FinanceKitTransactionGroupHistoryView.ViewModel(0);
    v17 = swift_allocObject();
    *(v17 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__isLoading) = 0;
    v18 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel__groupHistoryDetails;
    v19 = type metadata accessor for FinanceKitTransactionGroupHistoryView.GroupHistoryViewModel(0);
    (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
    sub_1BE04B5C4();
    v20 = *(v6 + 32);
    v20(v17 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel_accountID, v11, v5);
    v20(v17 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel_groupID, v8, v5);
    sub_1BD0DE204(v4, v17 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel_range, &qword_1EBD38DB8, &unk_1BE0BD340);
    *(v17 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitTransactionGroupHistoryView9ViewModel_store) = v16;
    sub_1BDA4B278(v29);
    sub_1BD9828E8(v29);
    v13, v21, v22, v23, v24, v25, v26, v27;
    return sub_1BD6F0998(v29);
  }

  else
  {
    type metadata accessor for NavigationController();
    sub_1BD6EED94(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

void sub_1BD6EDF9C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1BE049B04();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04B0F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = _s17GroupBreakdownRowVMa(0);
  v10 = a1 + *(v44 + 24);
  v11 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.GroupBreakdown(0);
  v12 = (v10 + v11[5]);
  v13 = v12[1];
  v47 = *v12;
  v48 = v13;
  sub_1BE048C84();
  v14 = sub_1BE052404();
  v15 = PKLocalizedString(v14);

  if (v15)
  {
    sub_1BE052434();
    v17 = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BE0B69E0;
    v19 = *(*(v10 + v11[9]) + 16);
    v20 = MEMORY[0x1E69E65A8];
    *(v18 + 56) = MEMORY[0x1E69E6530];
    *(v18 + 64) = v20;
    *(v18 + 32) = v19;
    v21 = sub_1BE052454();
    v45 = v22;
    v46 = v21;
    v17, v22, v23, v24, v25, v26, v27, v28;
    sub_1BE04B054();
    v29 = sub_1BE0493E4();
    v31 = v30;
    v32 = (*(v7 + 8))(v9, v6);
    MEMORY[0x1EEE9AC00](v32);
    *(&v40 - 2) = a1;
    v33 = sub_1BD6E4F44(sub_1BD6F095C);
    if (v33)
    {
      goto LABEL_6;
    }

    v50 = *(a1 + *(v44 + 28));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DEC8, &unk_1BE0F1370);
    sub_1BE0516A4();
    v33 = v49;
    if (v49)
    {
      goto LABEL_6;
    }

    v34 = v41;
    (*(v42 + 16))(v41, v10 + v11[8], v43);
    MEMORY[0x1BFB3FF90](v34);
    PKScreenScale();
    v35 = PKIconForFKCategory();
    if (v35)
    {
      v33 = v35;
LABEL_6:
      v36 = v11[11];
      v37 = _s16BreakdownRowViewVMa(0);
      sub_1BD0DE19C(v10 + v36, a2 + *(v37 + 32), &qword_1EBD44F98, &unk_1BE0D39B0);
      v38 = v48;
      *a2 = v47;
      a2[1] = v38;
      v39 = v45;
      a2[2] = v46;
      a2[3] = v39;
      a2[4] = v29;
      a2[5] = v31;
      a2[6] = v33;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD6EE338(uint64_t a1)
{
  v1 = sub_1BE0491E4();
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v5 = sub_1BE04AAB4();
  v6 = [v4 initWithData_];

  sub_1BD1245AC(v1, v3, v7, v8, v9, v10, v11, v12);
  v13 = sub_1BE0491C4();
  if (v13)
  {
    v14 = v13;
    v15 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
  }

  else
  {
    v15 = [objc_opt_self() clearColor];
  }

  PKScreenScale();
  v16 = PKIconWithImageAndBackgroundColor();

  if (!v16)
  {
    __break(1u);
  }
}

uint64_t sub_1BD6EE45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  v3[6] = _s17GroupBreakdownRowVMa(0);
  v3[7] = swift_task_alloc();
  v4 = sub_1BE04D214();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_1BE0491F4();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45CC0, &qword_1BE0D5630);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  sub_1BE0528A4();
  v3[16] = sub_1BE052894();
  v7 = sub_1BE052844();
  v3[17] = v7;
  v3[18] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD6EE620, v7, v6);
}

uint64_t sub_1BD6EE620()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 40) + *(*(v0 + 48) + 24);
  v5 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.GroupBreakdown(0);
  sub_1BD0DE19C(v4 + *(v5 + 28), v1, &qword_1EBD45CC0, &qword_1BE0D5630);
  v6 = *(v3 + 48);
  *(v0 + 152) = v6;
  *(v0 + 160) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v1, 1, v2) == 1)
  {
    sub_1BD0DE53C(*(v0 + 120), &qword_1EBD45CC0, &qword_1BE0D5630);
    sub_1BE0490F4();
    *(v0 + 168) = sub_1BE0490B4();
    v14 = *(v5 + 24);
    v15 = swift_task_alloc();
    *(v0 + 176) = v15;
    *v15 = v0;
    v15[1] = sub_1BD6EE804;
    v16 = *(v0 + 112);

    return MEMORY[0x1EEDC14C0](v16, v4 + v14, 1, 1);
  }

  else
  {
    v17 = *(v0 + 120);
    *(v0 + 128), v7, v8, v9, v10, v11, v12, v13;
    sub_1BD0DE53C(v17, &qword_1EBD45CC0, &qword_1BE0D5630);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1BD6EE804()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v10 = *(v2 + 136);
    v11 = *(v2 + 144);
    v12 = sub_1BD6EEA84;
  }

  else
  {
    *(v2 + 168), v3, v4, v5, v6, v7, v8, v9;
    v10 = *(v2 + 136);
    v11 = *(v2 + 144);
    v12 = sub_1BD6EE920;
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

uint64_t sub_1BD6EE920(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 152);
  v10 = *(v8 + 112);
  v11 = *(v8 + 88);
  *(v8 + 128), a2, a3, a4, a5, a6, a7, a8;
  if (v9(v10, 1, v11) == 1)
  {
    sub_1BD0DE53C(*(v8 + 112), &qword_1EBD45CC0, &qword_1BE0D5630);
  }

  else
  {
    v12 = *(v8 + 104);
    v13 = *(v8 + 88);
    v14 = *(v8 + 96);
    v15 = *(v8 + 40);
    v16 = *(v8 + 48);
    (*(v14 + 32))(v12, *(v8 + 112), v13);
    sub_1BD6EE338(v12);
    *(v8 + 16) = *(v15 + *(v16 + 28));
    *(v8 + 32) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DEC8, &unk_1BE0F1370);
    sub_1BE0516B4();
    (*(v14 + 8))(v12, v13);
  }

  v18 = *(v8 + 8);

  return v18();
}

uint64_t sub_1BD6EEA84(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v57 = v8;
  v9 = *(v8 + 184);
  v10 = *(v8 + 168);
  v11 = *(v8 + 56);
  v12 = *(v8 + 40);
  *(v8 + 128), a2, a3, a4, a5, a6, a7, a8;
  v10, v13, v14, v15, v16, v17, v18, v19;
  sub_1BE04D114();
  sub_1BD6EF420(v12, v11, _s17GroupBreakdownRowVMa);
  v20 = v9;
  v21 = sub_1BE04D204();
  v22 = sub_1BE052C34();

  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v8 + 184);
  v26 = *(v8 + 72);
  v25 = *(v8 + 80);
  v27 = *(v8 + 56);
  v28 = *(v8 + 64);
  if (v23)
  {
    v55 = *(v8 + 80);
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v56 = v53;
    *v29 = 136315394;
    sub_1BE04AFE4();
    v54 = v28;
    sub_1BD6EED94(&unk_1EBD39960, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v31 = sub_1BE053B24();
    v33 = v32;
    sub_1BD6EF2C8(v27, _s17GroupBreakdownRowVMa);
    v34 = sub_1BD123690(v31, v33, &v56);
    v33, v35, v36, v37, v38, v39, v40, v41;
    *(v29 + 4) = v34;
    *(v29 + 12) = 2112;
    v42 = v24;
    v43 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 14) = v43;
    *v30 = v43;
    _os_log_impl(&dword_1BD026000, v21, v22, "Failed to generate icon for breakdown with ID: %s with error: %@.", v29, 0x16u);
    sub_1BD0DE53C(v30, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v30, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v53, v44, v45, v46, v47, v48, v49, v50);
    MEMORY[0x1BFB45F20](v53, -1, -1);
    MEMORY[0x1BFB45F20](v29, -1, -1);

    (*(v26 + 8))(v55, v54);
  }

  else
  {

    sub_1BD6EF2C8(v27, _s17GroupBreakdownRowVMa);
    (*(v26 + 8))(v25, v28);
  }

  v51 = *(v8 + 8);

  return v51();
}

uint64_t sub_1BD6EED94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD6EEDE4()
{
  result = qword_1EBD50708;
  if (!qword_1EBD50708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50710, &qword_1BE0F1018);
    sub_1BD6EEE9C();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50708);
  }

  return result;
}

unint64_t sub_1BD6EEE9C()
{
  result = qword_1EBD50718;
  if (!qword_1EBD50718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50720, &qword_1BE0F1020);
    sub_1BD0DE4F4(&qword_1EBD50728, &qword_1EBD50730, &unk_1BE0F1028, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50718);
  }

  return result;
}

unint64_t sub_1BD6EEF58()
{
  result = qword_1EBD50740;
  if (!qword_1EBD50740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD506D8, &qword_1BE0F0FF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD506D0, &qword_1BE0F0FE8);
    sub_1BD0DE4F4(&qword_1EBD50738, &qword_1EBD506D0, &qword_1BE0F0FE8, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50740);
  }

  return result;
}

unint64_t sub_1BD6EF05C()
{
  result = qword_1EBD50770;
  if (!qword_1EBD50770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD506A8, &qword_1BE0F0FC0);
    sub_1BD6EF0E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50770);
  }

  return result;
}

unint64_t sub_1BD6EF0E8()
{
  result = qword_1EBD50778;
  if (!qword_1EBD50778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50768, &qword_1BE0F1078);
    sub_1BD6EF1A0();
    sub_1BD0DE4F4(&qword_1EBD395B8, &qword_1EBD39580, &qword_1BE0D8820, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50778);
  }

  return result;
}

unint64_t sub_1BD6EF1A0()
{
  result = qword_1EBD50780;
  if (!qword_1EBD50780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50760, &qword_1BE0F1040);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD506A0, &qword_1BE0F0FB8);
    sub_1BD0DE4F4(&qword_1EBD50758, &qword_1EBD506A0, &qword_1BE0F0FB8, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD395A8, &qword_1EBD395B0, &unk_1BE0DFEE0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50780);
  }

  return result;
}

uint64_t sub_1BD6EF2C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD6EF330()
{
  result = qword_1EBD507E0;
  if (!qword_1EBD507E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD507B8, &qword_1BE0F10B0);
    sub_1BD0DE4F4(&qword_1EBD507D0, &qword_1EBD507C8, &unk_1BE0F10C0, MEMORY[0x1E6981F48]);
    sub_1BD6F0564(&qword_1EBD507D8, &qword_1EBD50798, &qword_1BE0F1090, sub_1BD2A275C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD507E0);
  }

  return result;
}

uint64_t sub_1BD6EF420(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD6EF488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD6EF4F8()
{
  v1 = *(_s17SummaryDetailViewVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1BD6EC694(v0 + v2, v5);
}

uint64_t objectdestroyTm_80()
{
  v103 = _s17SummaryDetailViewVMa(0);
  v113 = (*(*(v103 - 8) + 80) + 16) & ~*(*(v103 - 8) + 80);
  v112 = *(*(v103 - 8) + 64);
  v1 = sub_1BE04AFE4();
  v2 = *(v1 - 8);
  v111 = *(v2 + 80);
  v110 = *(v2 + 64);
  v104 = sub_1BE049B04();
  v3 = *(v104 - 8);
  v4 = *(v3 + 80);
  v109 = *(v3 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v6 = *(*(v5 - 8) + 80);
  v7 = v0 + v113;
  v107 = v1;
  v108 = *(v2 + 8);
  v106 = v0;
  v108(v0 + v113, v1);
  v8 = _s31SpendingSummaryDetailsViewModelVMa(0);
  v9 = v0 + v113 + *(v8 + 20);
  v10 = sub_1BE04AF64();
  v11 = *(*(v10 - 8) + 8);
  v11(v9, v10);
  v105 = v5;
  v11(v9 + *(v5 + 36), v10);
  v12 = v7 + *(v8 + 28);
  v13 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  v14 = (*(*(v13 - 1) + 48))(v12, 1, v13);
  v23 = v109;
  v22 = v110;
  v25 = v111;
  v24 = v112;
  v26 = v113;
  if (!v14)
  {
    v99 = v6;
    v100 = v11;
    v101 = v4;
    v102 = v3;
    v108(v12, v107);
    v27 = v13[5];
    v28 = sub_1BE0493F4();
    v29 = *(*(v28 - 8) + 8);
    v29(v12 + v27, v28);
    v30 = v13[6];
    v31 = type metadata accessor for FinanceKitSpendingTrend(0);
    v39 = v13;
    if (!(*(*(v31 - 8) + 48))(v12 + v30, 1, v31) && swift_getEnumCaseMultiPayload() <= 3)
    {
      v29(v12 + v30, v28);
    }

    *(v12 + v13[7]), v32, v33, v34, v35, v36, v37, v38;
    *(v12 + v13[8]), v40, v41, v42, v43, v44, v45, v46;
    v47 = v12 + v13[9];
    v48 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.IncomeBreakdown(0);
    if (!(*(*(v48 - 8) + 48))(v47, 1, v48))
    {
      v29(v47, v28);
      *(v47 + *(v48 + 20)), v49, v50, v51, v52, v53, v54, v55;
    }

    v56 = v12 + v39[10];
    v57 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ReimbursementsBreakdown(0);
    if (!(*(*(v57 - 8) + 48))(v56, 1, v57))
    {
      v29(v56, v28);
      *(v56 + *(v57 + 20)), v58, v59, v60, v61, v62, v63, v64;
    }

    v65 = v12 + v39[11];
    v66 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.ManuallyExcludedBreakdown(0);
    if (!(*(*(v66 - 8) + 48))(v65, 1, v66))
    {
      v29(v65, v28);
      *(v65 + *(v66 + 20)), v74, v75, v76, v77, v78, v79, v80;
    }

    *(v12 + v39[12]), v67, v68, v69, v70, v71, v72, v73;
    *(v12 + v39[13]), v81, v82, v83, v84, v85, v86, v87;
    v4 = v101;
    v3 = v102;
    v26 = v113;
    v25 = v111;
    v24 = v112;
    v23 = v109;
    v22 = v110;
    v11 = v100;
    v6 = v99;
  }

  v88 = (v26 + v24 + v25) & ~v25;
  v89 = (v88 + v22 + v4) & ~v4;
  v90 = (v89 + v23 + v6) & ~v6;
  *(v7 + *(v103 + 24)), v15, v16, v17, v18, v19, v20, v21;
  *(v7 + *(v103 + 28) + 8), v91, v92, v93, v94, v95, v96, v97;
  v108(v106 + v88, v107);
  (*(v3 + 8))(v106 + v89, v104);
  v11(v106 + v90, v10);
  v11(v106 + v90 + *(v105 + 36), v10);

  return swift_deallocObject();
}

uint64_t sub_1BD6EFBB4()
{
  v1 = *(_s17SummaryDetailViewVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1BE04AFE4() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1BE049B04() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340) - 8);
  v11 = v0 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_1BD6ECD38(v0 + v2, v0 + v5, v0 + v8, v11);
}

unint64_t sub_1BD6EFDFC()
{
  result = qword_1EBD50830;
  if (!qword_1EBD50830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50810, &qword_1BE0F1108);
    sub_1BD6EFEB4();
    sub_1BD0DE4F4(&unk_1EBD51290, &qword_1EBD386C0, &qword_1BE0B6C50, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50830);
  }

  return result;
}

unint64_t sub_1BD6EFEB4()
{
  result = qword_1EBD50838;
  if (!qword_1EBD50838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50840, &qword_1BE0F1128);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50848, &unk_1BE0F1130);
    sub_1BE04FAB4();
    sub_1BD0DE4F4(&qword_1EBD50850, &qword_1EBD50848, &unk_1BE0F1130, MEMORY[0x1E697D690]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50838);
  }

  return result;
}

unint64_t sub_1BD6EFFD0()
{
  result = qword_1EBD50858;
  if (!qword_1EBD50858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50828, &qword_1BE0F1120);
    sub_1BD6F0244(&qword_1EBD50860, &qword_1EBD50868, &qword_1BE0F1140, sub_1BD6F00B4);
    sub_1BD6F0244(&qword_1EBD50898, &qword_1EBD508A0, &qword_1BE0F1158, sub_1BD6F02C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50858);
  }

  return result;
}

uint64_t sub_1BD6F00E4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD6F0194()
{
  result = qword_1EBD50880;
  if (!qword_1EBD50880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50888, &qword_1BE0F1150);
    sub_1BD0DE4F4(&qword_1EBD50890, &qword_1EBD37258, &qword_1BE0B1278, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50880);
  }

  return result;
}

uint64_t sub_1BD6F0244(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD6F02C0()
{
  result = qword_1EBD508A8;
  if (!qword_1EBD508A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD508B0, &qword_1BE0F1160);
    sub_1BD6EED94(&qword_1EBD508B8, _s17GroupBreakdownRowVMa, &unk_1BE0F130C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD508A8);
  }

  return result;
}

unint64_t sub_1BD6F0394()
{
  result = qword_1EBD508D8;
  if (!qword_1EBD508D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD508D8);
  }

  return result;
}

uint64_t sub_1BD6F03E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s17SummaryDetailViewVMa(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1BE04AFE4() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1BD6EA5B8(a1, v2 + v6, v9, a2);
}

double sub_1BD6F04DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s17SummaryDetailViewVMa(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD6EAB4C(a1, v6, a2);
}

uint64_t sub_1BD6F0564(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD6F05E8()
{
  result = qword_1EBD50988;
  if (!qword_1EBD50988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50978, &qword_1BE0F12C8);
    sub_1BD6EED94(&qword_1EBD50990, type metadata accessor for FinanceKitSpendingSummariesGraphView, &unk_1BE0E2DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50988);
  }

  return result;
}

void sub_1BD6F06CC(uint64_t a1)
{
  sub_1BE04AFE4();
  if (v1 <= 0x3F)
  {
    sub_1BD0F5C4C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model.GroupBreakdown(319);
      if (v3 <= 0x3F)
      {
        sub_1BD6F0798(319);
        if (v4 <= 0x3F)
        {
          sub_1BD49DA08(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BD6F0798(uint64_t a1)
{
  if (!qword_1EBD509C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD4AB00, &qword_1BE0C85C0);
    v1 = sub_1BE0516D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD509C0);
    }
  }
}

uint64_t sub_1BD6F0818()
{
  v1 = *(_s17GroupBreakdownRowVMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD6EDC68(v2);
}

uint64_t sub_1BD6F0880()
{
  v2 = *(_s17GroupBreakdownRowVMa(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BD0F985C;

  return sub_1BD6EE45C(v4, v5, v0 + v3);
}

uint64_t FlightWidgetStatusSymbolContent.init(symbolName:symbolColor:displayContext:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v5;
  return result;
}

uint64_t static FlightWidgetStatusSymbolAndMessageContent.createContent(viewModel:context:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD509C8, &qword_1BE0F1380);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v15 = *a2;
  v9 = v15;
  static FlightWidgetStatusSymbolContent.createContent(viewModel:context:)(a1, &v15, &v16);
  v14 = v16;
  v10 = v17;
  v11 = v18;
  LOBYTE(v16) = v9;
  static FlightWidgetStatusMessageContent.createContent(viewModel:context:)(a1, &v16, v8);
  *a3 = v14;
  *(a3 + 16) = v10;
  *(a3 + 24) = v11;
  v12 = type metadata accessor for FlightWidgetStatusSymbolAndMessageContent(0);
  sub_1BD6F0F30(v8, a3 + *(v12 + 20));
  *(a3 + *(v12 + 24)) = v9;
  return (*(*(v12 - 8) + 56))(a3, 0, 1, v12);
}

void static FlightWidgetStatusSymbolContent.createContent(viewModel:context:)(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_55;
  }

  v6 = *a2;
  v7 = v4;
  v8 = PKCurrentlyReleventFlightStepForFlight();
  v9 = [v8 status];

  if (v9 == 3)
  {
    v10 = 0x80000001BE1363F0;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1BE0513C4();
  v19 = v11;
  v20 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState);
  if (v20 <= 6)
  {
    if (*(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState) <= 2u)
    {
      if (v9 == 3)
      {
        v10 = 0x80000001BE1363F0;
      }

      else
      {
        v10 = 0x80000001BE1363D0;
      }

      if (v9 == 3)
      {
        goto LABEL_22;
      }

      v28 = 0xD00000000000001CLL;
LABEL_53:
      *a3 = v28;
      *(a3 + 8) = v10;
      *(a3 + 16) = v19;
      *(a3 + 24) = v6;
      return;
    }

    if (*(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState) > 4u)
    {
      if (v20 != 5)
      {
        v28 = 0x656E616C70726961;

        v10, v67, v68, v69, v70, v71, v72, v73;
        v10 = 0xEE0064756F6C632ELL;
        goto LABEL_53;
      }

      v10, v37, v38, v39, v40, v41, v42, v43;
      v44 = "airplane.departure";
LABEL_48:
      v10 = ((v44 - 32) | 0x8000000000000000);
      v28 = 0xD000000000000012;
      goto LABEL_53;
    }

    if (v20 == 3)
    {
      v10, v12, v13, v14, v15, v16, v17, v18;
      if (v6 <= 1)
      {
        v28 = 0x65646F637271;

        v10 = 0xE600000000000000;
        goto LABEL_53;
      }

LABEL_50:
      v19, v21, v22, v23, v24, v25, v26, v27;

      goto LABEL_55;
    }

    if (v6 <= 1)
    {

      if (v9 == 3)
      {
        v28 = 0xD000000000000019;
      }

      else
      {
        v28 = 0xD000000000000012;
      }

      if (v9 == 3)
      {
        v10 = 0x80000001BE1363F0;
      }

      else
      {
        v10 = 0x80000001BE1363B0;
      }

      goto LABEL_53;
    }

LABEL_54:
    v11, v12, v13, v14, v15, v16, v17, v18;

    v10, v74, v75, v76, v77, v78, v79, v80;
    goto LABEL_55;
  }

  if (*(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState) <= 0xAu)
  {
    if (v20 - 8 < 2)
    {
      if (v9 != 3)
      {
        goto LABEL_49;
      }

LABEL_22:
      if (v6 > 1 && (v6 == 2 || v6 == 3))
      {
        v28 = 0xD000000000000019;
        v29 = sub_1BE051434();
        v19, v30, v31, v32, v33, v34, v35, v36;

        v19 = v29;
      }

      else
      {
        v28 = 0xD000000000000019;
      }

      goto LABEL_53;
    }

    if (v20 == 7)
    {

      v10, v45, v46, v47, v48, v49, v50, v51;
      v10 = 0x80000001BE136390;
      v28 = 0xD000000000000010;
      goto LABEL_53;
    }

    v10, v12, v13, v14, v15, v16, v17, v18;
    if (v6 <= 1)
    {
LABEL_49:
      v10 = 0xEF6465646E616C2ELL;
      v28 = 0x656E616C70726961;

      goto LABEL_53;
    }

    if (v6 == 2 || v6 == 3)
    {

      v44 = "suitcase.cart.fill";
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  if (v20 - 11 < 2)
  {
    v10, v12, v13, v14, v15, v16, v17, v18;

    v10 = 0x80000001BE136350;
    v28 = 0xD000000000000014;
    goto LABEL_53;
  }

  if (v20 != 13)
  {
    goto LABEL_54;
  }

  v10, v12, v13, v14, v15, v16, v17, v18;
  v52 = sub_1BE0513B4();
  v19, v53, v54, v55, v56, v57, v58, v59;

  if (v6 > 1 && (v6 == 2 || v6 == 3))
  {
    v10 = 0x80000001BE136320;
    v28 = 0xD000000000000020;
    v19 = v52;
    goto LABEL_53;
  }

  v52, v60, v61, v62, v63, v64, v65, v66;
LABEL_55:
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = 0;
}

uint64_t type metadata accessor for FlightWidgetStatusSymbolAndMessageContent(uint64_t a1)
{
  result = qword_1EBD509E0;
  if (!qword_1EBD509E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD6F0F30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD509C8, &qword_1BE0F1380);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD6F0FAC()
{
  result = qword_1EBD509D0;
  if (!qword_1EBD509D0)
  {
    type metadata accessor for FlightWidgetStatusSymbolAndMessageView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD509D0);
  }

  return result;
}

unint64_t sub_1BD6F1008()
{
  result = qword_1EBD509D8;
  if (!qword_1EBD509D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD509D8);
  }

  return result;
}

void sub_1BD6F1084(uint64_t a1)
{
  sub_1BD6F1110();
  if (v1 <= 0x3F)
  {
    sub_1BD6F1160(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD6F1110()
{
  if (!qword_1EBD509F0)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD509F0);
    }
  }
}

void sub_1BD6F1160(uint64_t a1)
{
  if (!qword_1EBD509F8)
  {
    type metadata accessor for FlightWidgetStatusMessageContent(255);
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD509F8);
    }
  }
}

id static FlightWidgetStatusMessageContent.createContent(viewModel:context:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v69 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v69 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v69 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v76 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v69 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v74 = &v69 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v73 = &v69 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A10, &unk_1BE0F1440);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v69 - v25;
  v27 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v69 - v31;
  v33 = *(a1 + 16);
  if (v33)
  {
    v71 = v9;
    v72 = v7;
    v69 = v6;
    v70 = v30;
    v34 = a3;
    v35 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState);
    v36 = *a2;
    v37 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_boardingTime;
    v81 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState);
    v38 = v36;
    v80 = v36;
    v39 = v33;
    sub_1BD6F1F44(v39, (a1 + v37), &v81, &v80, v26);
    if ((*(v28 + 48))(v26, 1, v27) == 1)
    {

      sub_1BD0DE53C(v26, &qword_1EBD50A10, &unk_1BE0F1440);
      v40 = type metadata accessor for FlightWidgetStatusMessageContent(0);
      return (*(*(v40 - 8) + 56))(v34, 1, 1, v40);
    }

    v44 = v32;
    sub_1BD6F4238(v26, v32);
    v45 = v38;
    if (v35 == 13)
    {
      if (v38 <= 1)
      {
        v46 = v34;
        v47 = sub_1BE0513B4();
        goto LABEL_18;
      }
    }

    else if (v38 <= 1)
    {
      v46 = v34;
      v47 = sub_1BE0513C4();
      goto LABEL_18;
    }

    v46 = v34;
    if (v38 != 2)
    {
      v48 = v72;
      v49 = v39;
      if (v45 == 3)
      {
        v50 = sub_1BE051424();
      }

      else
      {
        v50 = sub_1BE0513C4();
      }

      v51 = v50;
LABEL_19:
      v52 = v71;
      v53 = PKCurrentlyReleventFlightStepForFlight();
      v54 = [v53 status];

      if (v54 <= 1)
      {
        if (v54 != 1)
        {
          goto LABEL_32;
        }

        if (v45 <= 1)
        {
          v62 = *MEMORY[0x1E69B80C0];
          if (v45)
          {
            v55 = v74;
            (*(v48 + 104))(v74, v62, v69);
            result = PKPassKitBundle();
            if (!result)
            {
LABEL_53:
              __break(1u);
              goto LABEL_54;
            }
          }

          else
          {
            v55 = v73;
            (*(v48 + 104))(v73, v62, v69);
            result = PKPassKitBundle();
            if (!result)
            {
              __break(1u);
              goto LABEL_36;
            }
          }

          v64 = result;
          goto LABEL_47;
        }

        if (v45 == 2)
        {
          goto LABEL_39;
        }

        if (v45 != 3)
        {
          goto LABEL_32;
        }

        v55 = v76;
        (*(v48 + 104))(v76, *MEMORY[0x1E69B80C0], v69);
        result = PKPassKitBundle();
        if (result)
        {
          goto LABEL_40;
        }

        __break(1u);
      }

      if (v54 != 3)
      {
        goto LABEL_32;
      }

      if (v45 > 1)
      {
        if (v45 != 2)
        {
          if (v45 == 3)
          {
            (*(v48 + 104))(v52, *MEMORY[0x1E69B80C0], v69);
            result = PKPassKitBundle();
            if (result)
            {
              v56 = result;
              v57 = sub_1BE04B6F4();
              v59 = v58;

              v60 = v52;
              v61 = v57;
              (*(v48 + 8))(v60, v69);
LABEL_48:

              goto LABEL_49;
            }

            __break(1u);
            goto LABEL_51;
          }

LABEL_32:

          v61 = 0;
          v59 = 0;
LABEL_49:
          v66 = v70;
          sub_1BD6F4238(v44, v70);
          sub_1BD6F4238(v66, v46);
          v67 = type metadata accessor for FlightWidgetStatusMessageContent(0);
          v68 = (v46 + v67[6]);
          *v68 = v61;
          v68[1] = v59;
          *(v46 + v67[7]) = v45;
          *(v46 + v67[5]) = v51;
          return (*(*(v67 - 1) + 56))(v46, 0, 1, v67);
        }

        v55 = v79;
        (*(v48 + 104))(v79, *MEMORY[0x1E69B80C0], v69);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v64 = result;
LABEL_47:
        v61 = sub_1BE04B6F4();
        v59 = v65;

        (*(v48 + 8))(v55, v69);
        goto LABEL_48;
      }

LABEL_36:
      v63 = *MEMORY[0x1E69B80C0];
      if (v45)
      {
        v55 = v78;
        (*(v48 + 104))(v78, v63, v69);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_54:
          __break(1u);
          return result;
        }
      }

      else
      {
        v55 = v77;
        (*(v48 + 104))(v77, v63, v69);
        result = PKPassKitBundle();
        if (!result)
        {
          __break(1u);
LABEL_39:
          v55 = v75;
          (*(v48 + 104))(v75, *MEMORY[0x1E69B80C0], v69);
          result = PKPassKitBundle();
          if (!result)
          {
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

LABEL_40:
          v64 = result;
          goto LABEL_47;
        }
      }

      v64 = result;
      goto LABEL_47;
    }

    v47 = sub_1BE051424();
LABEL_18:
    v51 = v47;
    v48 = v72;
    v49 = v39;
    goto LABEL_19;
  }

  v42 = type metadata accessor for FlightWidgetStatusMessageContent(0);
  v43 = *(*(v42 - 8) + 56);

  return v43(a3, 1, 1, v42);
}

uint64_t sub_1BD6F1A68()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04AF64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  sub_1BD6F5160(v1, v8);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1BD6F51C4(v8);
    return 0;
  }

  v43 = v3;
  v44 = v2;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A18, &qword_1BE0F1690) + 48);
  v17 = *(v10 + 32);
  v17(v15, v8, v9);
  v17(v12, &v8[v16], v9);
  sub_1BE04ADC4();
  if (qword_1EBD36D48 != -1)
  {
    v45 = *&v18;
    swift_once();
    v18 = *&v45;
  }

  v19 = [qword_1EBD50A00 stringFromTimeInterval_];
  if (!v19)
  {
    v39 = *(v10 + 8);
    v39(v12, v9);
    v39(v15, v9);
    return 0;
  }

  v20 = v19;
  v45 = sub_1BE052434();
  v22 = v21;

  v23 = (v1 + *(type metadata accessor for FlightWidgetStatusMessageContent(0) + 24));
  v24 = v23[1];
  if (v24)
  {
    v41 = *v23;
    v42 = "nt Type: ";
    v25 = v43;
    (*(v43 + 104))(v5, *MEMORY[0x1E69B80C0], v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1BE0B6CA0;
    v27 = MEMORY[0x1E69E6158];
    *(v26 + 56) = MEMORY[0x1E69E6158];
    v28 = sub_1BD110550();
    *(v26 + 32) = v45;
    *(v26 + 40) = v22;
    *(v26 + 96) = v27;
    *(v26 + 104) = v28;
    v29 = v41;
    *(v26 + 64) = v28;
    *(v26 + 72) = v29;
    *(v26 + 80) = v24;
    sub_1BE048C84();
    v45 = sub_1BE04B714();
    v26, v30, v31, v32, v33, v34, v35, v36;
    (*(v25 + 8))(v5, v44);
  }

  v37 = *(v10 + 8);
  v37(v12, v9);
  v37(v15, v9);
  return v45;
}

id sub_1BD6F1E68()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v0 setAllowedUnits_];
  [v0 setUnitsStyle_];
  result = [v0 setZeroFormattingBehavior_];
  qword_1EBD50A00 = v0;
  return result;
}

id sub_1BD6F1EE0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_1EBD50A08 = v0;
  return result;
}

id sub_1BD6F1F44@<X0>(void *a1@<X0>, char *a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X3>, char *a5@<X8>)
{
  v346 = a2;
  v9 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
  v10 = *(v9 - 8);
  v352 = v9;
  v353 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v342 = &v314 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04D214();
  v340 = *(v12 - 8);
  v341 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v319 = &v314 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v318 = &v314 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v347 = &v314 - v17;
  v349 = sub_1BE04BD74();
  v351 = *(v349 - 8);
  MEMORY[0x1EEE9AC00](v349);
  v333 = &v314 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v332 = &v314 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v331 = &v314 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v330 = &v314 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v329 = &v314 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v327 = &v314 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v328 = &v314 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v326 = &v314 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v325 = &v314 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v324 = &v314 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v316 = &v314 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v315 = &v314 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v317 = &v314 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v314 = &v314 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v323 = &v314 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v322 = &v314 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v321 = &v314 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v320 = &v314 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A10, &unk_1BE0F1440);
  MEMORY[0x1EEE9AC00](v53 - 8);
  v334 = (&v314 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v55);
  v336 = (&v314 - v56);
  MEMORY[0x1EEE9AC00](v57);
  v335 = (&v314 - v58);
  MEMORY[0x1EEE9AC00](v59);
  v343 = &v314 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v354 = (&v314 - v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v63 - 8);
  v339 = &v314 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v338 = &v314 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v337 = &v314 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v344 = &v314 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v314 - v72;
  v74 = sub_1BE04AF64();
  v75 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v77 = &v314 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v314 - v79;
  v81 = *a3;
  LODWORD(v350) = *a4;
  v348 = a1;
  v82 = PKCurrentlyReleventFlightStepForFlight();
  v83 = [v82 currentGateTime];
  v355 = v80;
  if (v83)
  {
    v84 = v82;
    v85 = v83;
    sub_1BE04AEE4();

    v82 = a5;
    v86 = v75 + 32;
    v87 = *(v75 + 4);
    v87(v73, v77, v74);
    v88 = v75;
    v345 = *(v75 + 7);
    v345(v73, 0, 1, v74);
    v89 = (v87)(v80, v73, v74);
    a5 = v82;
    if (v81 <= 8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v345 = *(v75 + 7);
    v345(v73, 1, 1, v74);
    v84 = v82;
    v86 = [v82 scheduledGateTime];
    sub_1BE04AEE4();

    v88 = v75;
    v89 = (*(v75 + 6))(v73, 1, v74);
    if (v89 != 1)
    {
      v89 = sub_1BD0DE53C(v73, &unk_1EBD39970, &unk_1BE0B9F80);
    }

    if (v81 <= 8)
    {
LABEL_3:
      v90 = v88;
      v91 = v355;
      if (v81 > 3)
      {
        if ((v81 - 5) < 4)
        {

          v92 = v354;
          v88[2](v354, v91, v74);
          v93 = v352;
LABEL_6:
          swift_storeEnumTagMultiPayload();
          (*(v353 + 56))(v92, 0, 1, v93);
LABEL_104:
          sub_1BD6F5480(v92, a5);
          return v90[1](v91, v74);
        }

        v109 = v88;
        MEMORY[0x1EEE9AC00](v89);
        *(&v314 - 2) = v91;
        MEMORY[0x1EEE9AC00](v119);
        v112 = &v314 - 4;
        *(&v314 - 2) = v84;
        *(&v314 - 1) = v91;
        v113 = sub_1BD6F54F0;
        v114 = sub_1BD6F551C;
LABEL_29:
        v92 = v354;
        sub_1BD6F429C(v113, v111, v114, v112, v84, v348, v354);

        v90 = v109;
        goto LABEL_104;
      }

      if ((v81 - 1) < 2)
      {
        v109 = v88;
        MEMORY[0x1EEE9AC00](v89);
        *(&v314 - 2) = v346;
        *(&v314 - 1) = v91;
        MEMORY[0x1EEE9AC00](v110);
        v112 = &v314 - 4;
        *(&v314 - 2) = v84;
        *(&v314 - 1) = v91;
        v113 = sub_1BD6F54F8;
        v114 = sub_1BD6F5500;
        goto LABEL_29;
      }

      if (!v81)
      {

        v116 = v344;
        sub_1BD15D62C(v346, v344);
        v117 = v88[6];
        if ((v117)(v116, 1, v74) == 1)
        {
          v118 = v343;
          v88[2](v343, v91, v74);
          v90 = v88;
          if ((v117)(v116, 1, v74) != 1)
          {
            sub_1BD0DE53C(v116, &unk_1EBD39970, &unk_1BE0B9F80);
          }
        }

        else
        {
          v118 = v343;
          v88[4](v343, v116, v74);
          v90 = v88;
        }

        v125 = v352;
        swift_storeEnumTagMultiPayload();
        (*(v353 + 56))(v118, 0, 1, v125);
        v92 = v354;
        sub_1BD6F5480(v118, v354);
        goto LABEL_104;
      }

      if (v350 <= 1)
      {
        v126 = v84;
        v127 = v90;
        if (v350)
        {
          v169 = v351;
          v170 = v321;
          v171 = v349;
          (*(v351 + 104))(v321, *MEMORY[0x1E69B80C0], v349);
          result = PKPassKitBundle();
          if (!result)
          {
LABEL_136:
            __break(1u);
            goto LABEL_137;
          }

          v172 = result;
          v173 = sub_1BE04B6F4();
          v175 = v174;

          (*(v169 + 8))(v170, v171);
          v92 = v354;
          *v354 = v173;
          v92[1] = v175;
        }

        else
        {
          v128 = v351;
          v129 = v320;
          v130 = v349;
          (*(v351 + 104))(v320, *MEMORY[0x1E69B80C0], v349);
          result = PKPassKitBundle();
          if (!result)
          {
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
            goto LABEL_133;
          }

          v131 = result;
          v132 = sub_1BE04B6F4();
          v134 = v133;

          (*(v128 + 8))(v129, v130);
          v135 = v354;
          *v354 = v132;
          v135[1] = v134;
          v92 = v135;
        }

        v176 = v352;
        swift_storeEnumTagMultiPayload();
        (*(v353 + 56))(v92, 0, 1, v176);

        v90 = v127;
        goto LABEL_103;
      }

      v120 = v349;
      if (v350 == 2)
      {
        v91 = v88;
        v94 = v351;
        v121 = v322;
        (*(v351 + 104))(v322, *MEMORY[0x1E69B80C0], v349);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }
      }

      else
      {
        v94 = v351;
        if (v350 != 3)
        {

          goto LABEL_88;
        }

        v91 = v90;
        v121 = v323;
        (*(v351 + 104))(v323, *MEMORY[0x1E69B80C0], v349);
        result = PKPassKitBundle();
        if (!result)
        {
          __break(1u);
LABEL_35:
          if (v350 > 1)
          {
            v120 = v349;
            if (v350 != 2)
            {
              if (v350 == 3)
              {
                v84 = v86;
                v91 = v90;
                v121 = v331;
                (*(v94 + 104))(v331, *MEMORY[0x1E69B80C0], v349);
                result = PKPassKitBundle();
                if (!result)
                {
                  __break(1u);
                  goto LABEL_40;
                }

                goto LABEL_83;
              }

              goto LABEL_54;
            }

            v84 = v86;
            v91 = v90;
            v121 = v330;
            (*(v94 + 104))(v330, *MEMORY[0x1E69B80C0], v349);
            result = PKPassKitBundle();
            if (result)
            {
LABEL_83:
              v163 = result;
              goto LABEL_84;
            }

LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
            goto LABEL_136;
          }

          v84 = v86;
          v91 = v90;
          v120 = v349;
          if (v350)
          {
            v121 = v329;
            (*(v94 + 104))(v329, *MEMORY[0x1E69B80C0], v349);
            result = PKPassKitBundle();
            if (!result)
            {
LABEL_137:
              __break(1u);
              goto LABEL_138;
            }

            v163 = result;
            goto LABEL_84;
          }

          v136 = v327;
          (*(v94 + 104))(v327, *MEMORY[0x1E69B80C0], v349);
          result = PKPassKitBundle();
          if (result)
          {
            v137 = result;
LABEL_59:
            v138 = sub_1BE04B6F4();
            v140 = v139;

            (*(v94 + 8))(v136, v120);
            v141 = v354;
            *v354 = v138;
            v141[1] = v140;
LABEL_85:
            v92 = v141;
            v167 = v352;
            swift_storeEnumTagMultiPayload();
            (*(v353 + 56))(v92, 0, 1, v167);
LABEL_86:

LABEL_102:
            v90 = v91;
            goto LABEL_103;
          }

          goto LABEL_131;
        }
      }

      v163 = result;
LABEL_84:
      v164 = sub_1BE04B6F4();
      v166 = v165;

      (*(v94 + 8))(v121, v120);
      v141 = v354;
      *v354 = v164;
      v141[1] = v166;
      goto LABEL_85;
    }
  }

  v90 = v88;
  v86 = v84;
  if (v81 > 11)
  {
    v91 = v355;
    v94 = v351;
    if (v81 != 12)
    {
      if (v81 != 13)
      {
LABEL_45:

        v92 = v354;
        v93 = v352;
        goto LABEL_6;
      }

      if (v350 > 1)
      {
        if (v350 == 2 || v350 == 3)
        {
          v92 = v354;
          v115 = v352;
          swift_storeEnumTagMultiPayload();
          (*(v353 + 56))(v92, 0, 1, v115);
LABEL_55:

          goto LABEL_104;
        }

LABEL_54:
        v92 = v354;
        (*(v353 + 56))(v354, 1, 1, v352);
        goto LABEL_55;
      }

      v91 = v90;
      if (v350)
      {
        v121 = v333;
        v120 = v349;
        (*(v351 + 104))(v333, *MEMORY[0x1E69B80C0], v349);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        v163 = result;
        goto LABEL_84;
      }

      v136 = v332;
      v120 = v349;
      (*(v351 + 104))(v332, *MEMORY[0x1E69B80C0], v349);
      result = PKPassKitBundle();
      if (result)
      {
        v137 = result;
        goto LABEL_59;
      }

      goto LABEL_132;
    }

    goto LABEL_35;
  }

  v94 = v351;
  v95 = v347;
  if (v81 == 9)
  {
    goto LABEL_64;
  }

  if (v81 != 10)
  {
LABEL_40:
    if (v350 > 1)
    {
      v123 = v349;
      if (v350 != 2)
      {
        if (v350 == 3)
        {
          v91 = v90;
          v124 = v328;
          (*(v94 + 104))(v328, *MEMORY[0x1E69B80C0], v349);
          result = PKPassKitBundle();
          if (!result)
          {
            __break(1u);
            goto LABEL_45;
          }

          goto LABEL_90;
        }

        v92 = v354;
        (*(v353 + 56))(v354, 1, 1, v352);

LABEL_103:
        v91 = v355;
        goto LABEL_104;
      }

      v91 = v90;
      v124 = v326;
      (*(v94 + 104))(v326, *MEMORY[0x1E69B80C0], v349);
      result = PKPassKitBundle();
      if (result)
      {
LABEL_90:
        v168 = result;
LABEL_101:
        v177 = sub_1BE04B6F4();
        v179 = v178;

        (*(v94 + 8))(v124, v123);
        v180 = v354;
        *v354 = v177;
        v180[1] = v179;
        v92 = v180;
        v181 = v352;
        swift_storeEnumTagMultiPayload();
        (*(v353 + 56))(v92, 0, 1, v181);

        goto LABEL_102;
      }

      goto LABEL_135;
    }

    v91 = v90;
    v123 = v349;
    if (v350)
    {
      v124 = v325;
      (*(v94 + 104))(v325, *MEMORY[0x1E69B80C0], v349);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }
    }

    else
    {
      v124 = v324;
      (*(v94 + 104))(v324, *MEMORY[0x1E69B80C0], v349);
      result = PKPassKitBundle();
      if (!result)
      {
        __break(1u);
        goto LABEL_63;
      }
    }

    v168 = result;
    goto LABEL_101;
  }

  v96 = [v84 baggageClaim];
  if (!v96)
  {
    goto LABEL_64;
  }

  v82 = v84;
  v97 = v350 & 0xFE;
  v98 = v96;
  v99 = sub_1BE052434();
  v86 = v100;

  if (v97 == 2)
  {

    v92 = v354;
    *v354 = v99;
    v92[1] = v86;
    v108 = v352;
    swift_storeEnumTagMultiPayload();
    (*(v353 + 56))(v92, 0, 1, v108);
    goto LABEL_103;
  }

LABEL_63:
  v86, v101, v102, v103, v104, v105, v106, v107;
  v86 = v82;
  v95 = v347;
LABEL_64:
  if (v350 > 1)
  {
    v91 = v355;
    if (v350 != 2)
    {

LABEL_88:
      v92 = v354;
      (*(v353 + 56))(v354, 1, 1, v352);
      goto LABEL_104;
    }

    v147 = v90;
    v148 = [v86 status];
    v149 = [v86 currentGateTime];
    if (!v149)
    {
      v347 = v86;
      v182 = v339;
      v345(v339, 1, 1, v74);
      sub_1BD0DE53C(v182, &unk_1EBD39970, &unk_1BE0B9F80);
      v183 = v319;
      sub_1BE04D1D4();
      v184 = v348;
      v185 = sub_1BE04D204();
      v186 = sub_1BE052C34();

      if (os_log_type_enabled(v185, v186))
      {
        v187 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        v356 = v188;
        *v187 = 136315138;
        v189 = [v184 identifier];
        v190 = sub_1BE052434();
        v192 = v191;

        v193 = sub_1BD123690(v190, v192, &v356);
        v192, v194, v195, v196, v197, v198, v199, v200;
        *(v187 + 4) = v193;
        _os_log_impl(&dword_1BD026000, v185, v186, "Expected currentGateTime to be set. Falling back to onTime content | flightID=%s", v187, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v188, v201, v202, v203, v204, v205, v206, v207);
        v208 = v188;
        v91 = v355;
        MEMORY[0x1BFB45F20](v208, -1, -1);
        MEMORY[0x1BFB45F20](v187, -1, -1);

        (*(v340 + 8))(v319, v341);
      }

      else
      {

        (*(v340 + 8))(v183, v341);
      }

      v92 = v354;
      *v354 = 2743173364;
      v92[1] = 0xA400000000000000;
      v305 = v352;
      swift_storeEnumTagMultiPayload();
      (*(v353 + 56))(v92, 0, 1, v305);

      v90 = v147;
      goto LABEL_104;
    }

    v150 = v339;
    v151 = v149;
    sub_1BE04AEE4();

    v345(v150, 0, 1, v74);
    sub_1BD0DE53C(v150, &unk_1EBD39970, &unk_1BE0B9F80);
    if (v148 != 1 && v148 != 3)
    {
      v286 = v334;
      *v334 = 2743173364;
      v286[1] = 0xA400000000000000;
      v287 = v352;
      swift_storeEnumTagMultiPayload();
      (*(v353 + 56))(v286, 0, 1, v287);
      v288 = v286;
      v92 = v354;
      sub_1BD6F5480(v288, v354);

      v90 = v147;
      goto LABEL_104;
    }

    v272 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A18, &qword_1BE0F1690) + 48);
    v273 = [v86 scheduledGateTime];
    v274 = v342;
    sub_1BE04AEE4();

    v90 = v147;
    v147[2](&v274[v272], v91, v74);
    v275 = v352;
    swift_storeEnumTagMultiPayload();
    v276 = v274;
    v277 = &v357;
    goto LABEL_115;
  }

  v91 = v355;
  if (!v350)
  {
    v350 = v90;
    v142 = [v86 status];
    v143 = [v86 currentGateTime];
    v144 = v349;
    if (v143)
    {
      v145 = v337;
      v146 = v143;
      sub_1BE04AEE4();

      v345(v145, 0, 1, v74);
      sub_1BD0DE53C(v145, &unk_1EBD39970, &unk_1BE0B9F80);
      if (v142 == 1 || v142 == 3)
      {
        v278 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A18, &qword_1BE0F1690) + 48);
        v279 = [v86 scheduledGateTime];
        v280 = v342;
        sub_1BE04AEE4();

        v90 = v350;
        (v350[2])(&v280[v278], v91, v74);
        v275 = v352;
        swift_storeEnumTagMultiPayload();
        v276 = v280;
        v277 = &v358;
LABEL_115:
        v281 = *(v277 - 32);
LABEL_116:
        sub_1BD6F4238(v276, v281);
        (*(v353 + 56))(v281, 0, 1, v275);
        v92 = v354;
        sub_1BD6F5480(v281, v354);

        goto LABEL_104;
      }

      v289 = v314;
      (*(v94 + 104))(v314, *MEMORY[0x1E69B80C0], v144);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

      v290 = result;
      v291 = v144;
      v292 = sub_1BE04B6F4();
      v294 = v293;

      (*(v94 + 8))(v289, v291);
      v295 = v335;
      *v335 = v292;
      *(v295 + 8) = v294;
      v296 = v352;
      swift_storeEnumTagMultiPayload();
      (*(v353 + 56))(v295, 0, 1, v296);
      v92 = v354;
      sub_1BD6F5480(v295, v354);
LABEL_129:

      v90 = v350;
      goto LABEL_104;
    }

    v347 = v86;
    v209 = v337;
    v345(v337, 1, 1, v74);
    sub_1BD0DE53C(v209, &unk_1EBD39970, &unk_1BE0B9F80);
    sub_1BE04D1D4();
    v210 = v348;
    v211 = sub_1BE04D204();
    v212 = sub_1BE052C34();

    if (os_log_type_enabled(v211, v212))
    {
      v213 = swift_slowAlloc();
      v214 = swift_slowAlloc();
      v356 = v214;
      *v213 = 136315138;
      v215 = [v210 identifier];
      v216 = sub_1BE052434();
      v218 = v217;

      v219 = sub_1BD123690(v216, v218, &v356);
      v220 = v218;
      v94 = v351;
      v220, v221, v222, v223, v224, v225, v226, v227;
      *(v213 + 4) = v219;
      _os_log_impl(&dword_1BD026000, v211, v212, "Expected currentGateTime to be set. Falling back to onTime content | flightID=%s", v213, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v214, v228, v229, v230, v231, v232, v233, v234);
      v235 = v214;
      v91 = v355;
      MEMORY[0x1BFB45F20](v235, -1, -1);
      v236 = v213;
      v144 = v349;
      MEMORY[0x1BFB45F20](v236, -1, -1);
    }

    (*(v340 + 8))(v95, v341);
    v237 = v317;
    (*(v94 + 104))(v317, *MEMORY[0x1E69B80C0], v144);
    result = PKPassKitBundle();
    v86 = v347;
    if (!result)
    {
      goto LABEL_140;
    }

    v238 = result;
    v239 = v144;
    v240 = sub_1BE04B6F4();
    v242 = v241;

    (*(v94 + 8))(v237, v239);
    v92 = v354;
    *v354 = v240;
    v92[1] = v242;
LABEL_128:
    v313 = v352;
    swift_storeEnumTagMultiPayload();
    (*(v353 + 56))(v92, 0, 1, v313);
    goto LABEL_129;
  }

  v152 = [v86 status];
  v153 = [v86 currentGateTime];
  if (!v153)
  {
    v347 = v86;
    v350 = v90;
    v243 = v338;
    v345(v338, 1, 1, v74);
    sub_1BD0DE53C(v243, &unk_1EBD39970, &unk_1BE0B9F80);
    v244 = v318;
    sub_1BE04D1D4();
    v245 = v348;
    v246 = sub_1BE04D204();
    v247 = sub_1BE052C34();

    if (os_log_type_enabled(v246, v247))
    {
      v248 = swift_slowAlloc();
      v249 = v91;
      v250 = swift_slowAlloc();
      v356 = v250;
      *v248 = 136315138;
      v251 = [v245 identifier];
      v252 = sub_1BE052434();
      v254 = v253;

      v255 = sub_1BD123690(v252, v254, &v356);
      v256 = v254;
      v94 = v351;
      v256, v257, v258, v259, v260, v261, v262, v263;
      *(v248 + 4) = v255;
      _os_log_impl(&dword_1BD026000, v246, v247, "Expected currentGateTime to be set. Falling back to onTime content | flightID=%s", v248, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v250, v264, v265, v266, v267, v268, v269, v270);
      v271 = v250;
      v91 = v249;
      MEMORY[0x1BFB45F20](v271, -1, -1);
      MEMORY[0x1BFB45F20](v248, -1, -1);

      (*(v340 + 8))(v318, v341);
    }

    else
    {

      (*(v340 + 8))(v244, v341);
    }

    v306 = v316;
    v307 = v349;
    (*(v94 + 104))(v316, *MEMORY[0x1E69B80C0], v349);
    result = PKPassKitBundle();
    v86 = v347;
    if (!result)
    {
      goto LABEL_141;
    }

    v308 = result;
    v309 = sub_1BE04B6F4();
    v311 = v310;

    (*(v94 + 8))(v306, v307);
    v312 = v354;
    *v354 = v309;
    v312[1] = v311;
    v92 = v312;
    goto LABEL_128;
  }

  v154 = v338;
  v155 = v153;
  sub_1BE04AEE4();

  v345(v154, 0, 1, v74);
  sub_1BD0DE53C(v154, &unk_1EBD39970, &unk_1BE0B9F80);
  if (v152 == 1)
  {
    v282 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A18, &qword_1BE0F1690) + 48);
    v283 = v90;
    v284 = [v86 scheduledGateTime];
    v285 = v342;
    sub_1BE04AEE4();

    v90 = v283;
    v283[2](&v285[v282], v91, v74);
    v275 = v352;
    swift_storeEnumTagMultiPayload();
    v276 = v285;
    v281 = v336;
    goto LABEL_116;
  }

  v84 = v86;
  v91 = v90;
  if (v152 == 3)
  {
    v156 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A18, &qword_1BE0F1690) + 48);
    v157 = v86;
    v158 = [v86 scheduledGateTime];
    v159 = v342;
    sub_1BE04AEE4();

    v90 = v91;
    v160 = *(v91 + 2);
    v91 = v355;
    v160(v159 + v156, v355, v74);
    v161 = v352;
    swift_storeEnumTagMultiPayload();
    v162 = v336;
    sub_1BD6F4238(v159, v336);
    (*(v353 + 56))(v162, 0, 1, v161);
    v92 = v354;
    sub_1BD6F5480(v162, v354);

    goto LABEL_104;
  }

  v297 = v315;
  v298 = v349;
  (*(v94 + 104))(v315, *MEMORY[0x1E69B80C0], v349);
  result = PKPassKitBundle();
  if (result)
  {
    v299 = result;
    v300 = sub_1BE04B6F4();
    v302 = v301;

    (*(v94 + 8))(v297, v298);
    v303 = v336;
    *v336 = v300;
    v303[1] = v302;
    v304 = v352;
    swift_storeEnumTagMultiPayload();
    (*(v353 + 56))(v303, 0, 1, v304);
    v92 = v354;
    sub_1BD6F5480(v303, v354);
    goto LABEL_86;
  }

LABEL_143:
  __break(1u);
  return result;
}