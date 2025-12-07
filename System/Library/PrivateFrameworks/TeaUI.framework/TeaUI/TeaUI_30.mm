char *sub_1D80AFEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_1D8190F14();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return TableViewCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

id TableViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TableViewCell.init(coder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + qword_1EDBB1930) = 1;
  v5 = qword_1EDBB1910;
  sub_1D7E40308(0, a2, a3, a4);
  v7 = v6;
  *(v4 + v5) = [objc_allocWithZone(v6) init];
  v8 = qword_1EDBB1938;
  *(v4 + v8) = [objc_allocWithZone(v7) init];
  v9 = qword_1EDBB1928;
  *(v4 + v9) = [objc_allocWithZone(v7) init];
  v10 = qword_1EDBB1940;
  v11 = objc_allocWithZone(type metadata accessor for SelectedBackgroundView());
  *(v4 + v10) = OUTLINED_FUNCTION_4(v11, sel_initWithFrame_);
  *(v4 + qword_1EDBB1920) = 0x8000000000000008;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall TableViewCell.layoutSubviews()()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1D818E7D4();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39.receiver = v0;
  v39.super_class = ObjectType;
  objc_msgSendSuper2(&v39, sel_layoutSubviews, v3);
  v6 = qword_1EDBB1930;
  OUTLINED_FUNCTION_8_4(&v0[qword_1EDBB1930], v38);
  v7 = v0[v6];
  v8 = [v0 contentView];
  [v8 bounds];

  sub_1D818E7C4();
  type metadata accessor for RTLAdjuster();
  inited = swift_initStackObject();
  if (v7)
  {
    v10 = inited + 2;
    inited[5] = v2;
    inited[6] = sub_1D7E4E9A0();
    __swift_allocate_boxed_opaque_existential_0(inited + 2);
    OUTLINED_FUNCTION_16_37();
    v11();
    v12 = OUTLINED_FUNCTION_6_70();
    v13(v12);
    sub_1D80B067C(inited, v0);
  }

  else
  {
    v10 = inited + 2;
    inited[5] = v2;
    inited[6] = sub_1D7E4E9A0();
    __swift_allocate_boxed_opaque_existential_0(inited + 2);
    OUTLINED_FUNCTION_16_37();
    v14();
    v15 = OUTLINED_FUNCTION_6_70();
    v16(v15);
    sub_1D80B0498(inited, v0);
  }

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  v17 = *&v0[qword_1EDBB1908];
  v18 = OBJC_IVAR____TtC5TeaUI13SeparatorView_layoutStyle;
  OUTLINED_FUNCTION_8_4(v17 + OBJC_IVAR____TtC5TeaUI13SeparatorView_layoutStyle, &v37);
  if (*(v17 + v18))
  {
    [v0 bounds];
    [v0 separatorInset];
    v36 = 1;
    v40.origin.x = OUTLINED_FUNCTION_8_0();
    v41 = SeparatorView.makeFrame(in:insets:anchor:)(v40, v42, v19);
    [v17 setFrame_];
  }

  else
  {
    OUTLINED_FUNCTION_21_29();
    OUTLINED_FUNCTION_21_29();
    v20 = [v0 contentView];
    v21 = [v20 readableContentGuide];

    [v21 layoutFrame];
    OUTLINED_FUNCTION_21_29();
    OUTLINED_FUNCTION_21_29();
    v22 = [v0 safeAreaLayoutGuide];
    [v22 layoutFrame];
    v24 = v23;
    v26 = v25;

    sub_1D818E7C4();
    v27 = swift_initStackObject();
    v27[5] = v2;
    v27[6] = sub_1D7E4E9A0();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27 + 2);
    (v35[2])(boxed_opaque_existential_0, v5, v2);
    v27[7] = 0;
    v27[8] = 0;
    v27[9] = v24;
    v27[10] = v26;
    (v35[1])(v5, v2);
    v29 = OUTLINED_FUNCTION_8_0();
    sub_1D80B08F0(v30, v31, v29, v32, v33, v34);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1Tm(v27 + 2);
  }
}

id sub_1D80B0498(int a1, char *a2)
{
  v3 = *&a2[qword_1EDBB1918];
  v4 = [a2 contentView];
  v5 = [v4 readableContentGuide];

  [v5 layoutFrame];
  v7 = v6;

  v8 = [a2 readableContentGuide];
  [v8 layoutFrame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v42.origin.x = v10;
  v42.origin.y = v12;
  v42.size.width = v14;
  v42.size.height = v16;
  Width = CGRectGetWidth(v42);
  v18 = [a2 accessoryView];
  if (v18)
  {
    v19 = v18;
    [v18 frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v43.origin.x = v21;
    v43.origin.y = v23;
    v43.size.width = v25;
    v43.size.height = v27;
    v28 = CGRectGetWidth(v43);
  }

  else
  {
    v28 = 0.0;
  }

  v29 = Width - v28;
  v30 = [a2 contentView];
  [v30 frame];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v44.origin.x = v32;
  v44.origin.y = v34;
  v44.size.width = v36;
  v44.size.height = v38;
  v45.size.height = CGRectGetHeight(v44);
  v40 = 0;
  v45.origin.y = 0.0;
  v45.origin.x = v7;
  v45.size.width = v29;
  v46 = RTLAdjuster.frame(_:alignment:)(v45, &v40);

  return [v3 setFrame_];
}

id sub_1D80B067C(uint64_t a1, char *a2)
{
  if (RTLAdjuster.layoutDirection.getter() == 1 && [a2 isEditing])
  {
    v3 = *&a2[qword_1EDBB1918];
    v4 = [a2 contentView];
    v5 = [v4 readableContentGuide];

    [v5 layoutFrame];
    v7 = v6;

    [a2 layoutMargins];
    v9 = v7 + v8;
    v10 = [a2 readableContentGuide];
    [v10 layoutFrame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v54.origin.x = v12;
    v54.origin.y = v14;
    v54.size.width = v16;
    v54.size.height = v18;
    Width = CGRectGetWidth(v54);
    v20 = [a2 contentView];
    [v20 frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v55.origin.x = v22;
    v55.origin.y = v24;
    v55.size.width = v26;
    v55.size.height = v28;
    Height = CGRectGetHeight(v55);
    v51 = 0;
    v30 = 0;
    v31 = &v51;
    v32 = v9;
    v33 = Width;
  }

  else
  {
    v3 = *&a2[qword_1EDBB1918];
    v34 = [a2 contentView];
    [v34 bounds];
    v36 = v35;
    v38 = v37;

    v39 = [a2 accessoryView];
    if (v39)
    {
      v40 = v39;
      [v39 frame];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;

      v56.origin.x = v42;
      v56.origin.y = v44;
      v56.size.width = v46;
      v56.size.height = v48;
      v49 = CGRectGetWidth(v56);
    }

    else
    {
      v49 = 0.0;
    }

    v33 = v36 - v49;
    v52 = 0;
    v32 = 0.0;
    v30 = 0;
    v31 = &v52;
    Height = v38;
  }

  v57 = RTLAdjuster.frame(_:alignment:)(*&v32, v31);

  return [v3 setFrame_];
}

id sub_1D80B08F0(int a1, char *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v10 = *&a2[qword_1EDBB1908];
  v11 = [a2 safeAreaLayoutGuide];
  [v11 layoutFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v22 = 1;
  v24.origin.x = v13;
  v24.origin.y = v15;
  v24.size.width = v17;
  v24.size.height = v19;
  v27.top = a3;
  v27.left = a4;
  v27.bottom = a5;
  v27.right = a6;
  v25 = SeparatorView.makeFrame(in:insets:anchor:)(v24, v27, &v22);
  v21 = 1;
  v26 = RTLAdjuster.frame(_:alignment:)(v25, &v21);

  return [v10 setFrame_];
}

void sub_1D80B09FC(void *a1)
{
  v1 = a1;
  TableViewCell.layoutSubviews()();
}

Swift::Void __swiftcall TableViewCell.prepareForReuse()()
{
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v0;

  v14 = *(v0 + qword_1EDBB1918);
  v5 = *((v3 & v2) + 0x50);
  sub_1D7E0631C(0, qword_1EDBBA428, &protocol descriptor for RevisionProviding);
  v6 = v14;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1D7E9DD24(v12, &qword_1EDBBA420, qword_1EDBBA428, &protocol descriptor for RevisionProviding);
    goto LABEL_5;
  }

  sub_1D7E05450(v12, v15);
  v7 = v16;
  v8 = v17;
  __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  v9 = (*(v8 + 24))(v12, v7, v8);
  if (*v10 != -1)
  {
    ++*v10;
    v9(v12, 0);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
LABEL_5:
    v11.receiver = v0;
    v11.super_class = ObjectType;
    objc_msgSendSuper2(&v11, sel_prepareForReuse);
    [v0 setAccessoryView_];
    [v0 setAccessoryType_];
    v15[0] = 1;
    SeparatorView.visibilityStyle.setter(v15);
    *v15 = v6;
    (*(*(v4 + 88) + 16))(v5);

    return;
  }

  __break(1u);
}

void sub_1D80B0C9C(void *a1)
{
  v1 = a1;
  TableViewCell.prepareForReuse()();
}

Swift::Void __swiftcall TableViewCell.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v3 = v2;
  v4 = animated;
  v5 = _;
  ObjectType = swift_getObjectType();
  v7 = *v2;
  v8 = *MEMORY[0x1E69E7D40];
  v19.receiver = v3;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, sel_setEditing_animated_, v5, v4);
  v16[0] = *&v3[qword_1EDBB1918];
  (*(*(*((v8 & v7) + 0x58) + 8) + 8))(v5, v4, *((v8 & v7) + 0x50));
  v9 = [v3 accessoryView];
  if (!v9 || (v16[0] = v9, sub_1D7E0A1A8(0, &qword_1EDBB2FC0, 0x1E69DD250), sub_1D7E0631C(0, &qword_1EDBAE688, &protocol descriptor for Editable), (swift_dynamicCast() & 1) == 0))
  {
    OUTLINED_FUNCTION_2_9();
    goto LABEL_8;
  }

  if (!v15)
  {
LABEL_8:
    sub_1D7E9DD24(&v14, &qword_1EDBAE680, &qword_1EDBAE688, &protocol descriptor for Editable);
    return;
  }

  sub_1D7E05450(&v14, v16);
  v10 = v17;
  v11 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  if (((*(v11 + 24))(v10, v11) & 1) == 0)
  {
    v12 = v17;
    v13 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v13 + 8))(v5, v4, v12, v13);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

void sub_1D80B0ED4(void *a1, uint64_t a2, Swift::Bool a3, Swift::Bool a4)
{
  v6 = a1;
  TableViewCell.setEditing(_:animated:)(a3, a4);
}

Swift::Void __swiftcall TableViewCell.setSelected(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v51.receiver = v2;
  v51.super_class = OUTLINED_FUNCTION_19_28();
  objc_msgSendSuper2(&v51, sel_setSelected_animated_, v4 & 1, v3 & 1);
  OUTLINED_FUNCTION_15_34();
  sub_1D7E0631C(0, qword_1EDBBB350, &protocol descriptor for ViewSelectable);
  if (OUTLINED_FUNCTION_9_35(v4))
  {
    sub_1D7E05450(v48, v50);
    OUTLINED_FUNCTION_1_129();
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v7 = OUTLINED_FUNCTION_3_15();
    if (v8(v7))
    {
      OUTLINED_FUNCTION_20_33();
      OUTLINED_FUNCTION_1_129();
      __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
      v11 = OUTLINED_FUNCTION_5_63();
      v12(v11);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v50);
  }

  else
  {
    v49 = 0;
    memset(v48, 0, sizeof(v48));
    sub_1D7E9DD24(v48, &unk_1EDBBB340, qword_1EDBBB350, &protocol descriptor for ViewSelectable);
  }

  if ([v4 isAccessibilityElement])
  {
    v13 = OUTLINED_FUNCTION_20_33();
    v14 = [v4 accessibilityTraits];
    if (v13)
    {
      v15 = *MEMORY[0x1E69DDA08] | v14;
    }

    else
    {
      v15 = v14 & ~*MEMORY[0x1E69DDA08];
    }

    [v4 setAccessibilityTraits_];
  }

  v16 = OUTLINED_FUNCTION_8_4(&v2[qword_1EDBB1920], v48);
  OUTLINED_FUNCTION_17_29(v16, v17, v18, v19, v20, v21, v22, v23, v44, v46);
  OUTLINED_FUNCTION_1_129();
  __swift_project_boxed_opaque_existential_1(v24, v25);
  OUTLINED_FUNCTION_20_33();
  [v2 isHighlighted];
  v26 = OUTLINED_FUNCTION_7_59();
  v28 = v27(v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  v29 = [v2 selectionStyle];
  v30 = *&v2[qword_1EDBB1908];
  v31 = OBJC_IVAR____TtC5TeaUI13SeparatorView_isSelected;
  if (v29)
  {
    OUTLINED_FUNCTION_4_75(v29);
    v32 = v28 & 1;
  }

  else
  {
    OUTLINED_FUNCTION_4_75(0);
    v32 = 0;
  }

  v31[v30] = v32;
  sub_1D806EB08();
  OUTLINED_FUNCTION_12_40(v33, v34, v35, v36, v37, v38, v39, v40, v45, v47);
  OUTLINED_FUNCTION_1_129();
  __swift_project_boxed_opaque_existential_1(v41, v42);
  if (v28)
  {
    (*(v31 + 4))(1, v4, *&v2[qword_1EDBB1940], v28, v31);
  }

  else
  {
    v43 = [v2 isHighlighted];
    (*(v31 + 2))(0, v43, 0, v4, *&v2[qword_1EDBB1940], v28, v31);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  OUTLINED_FUNCTION_20_33();
  sub_1D7E80824();
}

void sub_1D80B1230(void *a1, uint64_t a2, Swift::Bool a3, Swift::Bool a4)
{
  v6 = a1;
  TableViewCell.setSelected(_:animated:)(a3, a4);
}

Swift::Void __swiftcall TableViewCell.setHighlighted(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v49.receiver = v2;
  v49.super_class = OUTLINED_FUNCTION_19_28();
  objc_msgSendSuper2(&v49, sel_setHighlighted_animated_, v4 & 1, v3 & 1);
  OUTLINED_FUNCTION_15_34();
  sub_1D7E0631C(0, qword_1EDBBA0F0, &protocol descriptor for ViewHighlightable);
  if (OUTLINED_FUNCTION_9_35(v4))
  {
    sub_1D7E05450(v44, v46);
    OUTLINED_FUNCTION_1_129();
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v7 = OUTLINED_FUNCTION_3_15();
    if (v8(v7))
    {
      [v2 isHighlighted];
      OUTLINED_FUNCTION_1_129();
      __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
      v11 = OUTLINED_FUNCTION_5_63();
      v12(v11);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v46);
  }

  else
  {
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    sub_1D7E9DD24(v44, &unk_1EDBBA0E0, qword_1EDBBA0F0, &protocol descriptor for ViewHighlightable);
  }

  v13 = OUTLINED_FUNCTION_8_4(&v2[qword_1EDBB1920], v44);
  OUTLINED_FUNCTION_17_29(v13, v14, v15, v16, v17, v18, v19, v20, v40, v42);
  OUTLINED_FUNCTION_1_129();
  __swift_project_boxed_opaque_existential_1(v21, v22);
  [v2 isSelected];
  [v2 isHighlighted];
  v23 = OUTLINED_FUNCTION_7_59();
  v25 = v24(v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  v26 = [v2 selectionStyle];
  v27 = *&v2[qword_1EDBB1908];
  v28 = OBJC_IVAR____TtC5TeaUI13SeparatorView_isHighlighted;
  if (v26)
  {
    OUTLINED_FUNCTION_4_75(v26);
    v29 = v25 & 1;
  }

  else
  {
    OUTLINED_FUNCTION_4_75(0);
    v29 = 0;
  }

  *(v27 + v28) = v29;
  sub_1D806E9CC();
  OUTLINED_FUNCTION_12_40(v30, v31, v32, v33, v34, v35, v36, v37, v41, v43);
  v38 = v47;
  v39 = v48;
  __swift_project_boxed_opaque_existential_1(v46, v47);
  (*(v39 + 32))(v25 & 1, v4, *&v2[qword_1EDBB1940], v38, v39);
  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  sub_1D7E80824();
}

void sub_1D80B14D0(void *a1, uint64_t a2, Swift::Bool a3, Swift::Bool a4)
{
  v6 = a1;
  TableViewCell.setHighlighted(_:animated:)(a3, a4);
}

id sub_1D80B152C(void *a1)
{
  v1 = a1;
  v2 = TableViewCell.accessibilityCustomActions.getter();

  if (v2)
  {
    sub_1D7E0A1A8(0, &unk_1EDBB3040, 0x1E69DC5E8);
    v3 = sub_1D8191304();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t TableViewCell.accessibilityCustomActions.getter()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v5, sel_accessibilityCustomActions);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1D7E0A1A8(0, &unk_1EDBB3040, 0x1E69DC5E8);
  v3 = sub_1D8191314();

  return v3;
}

void sub_1D80B1634(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    sub_1D7E0A1A8(0, &unk_1EDBB3040, 0x1E69DC5E8);
    v3 = sub_1D8191314();
  }

  v5 = a1;
  TableViewCell.accessibilityCustomActions.setter(v3);
}

void TableViewCell.accessibilityCustomActions.setter(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v14 = *&v1[qword_1EDBB1918];
  sub_1D7E0631C(0, &qword_1ECA10630, &protocol descriptor for AccessibilitySupplementaryActions);
  v5 = v14;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1D7E9DD24(v12, &qword_1ECA10638, &qword_1ECA10630, &protocol descriptor for AccessibilitySupplementaryActions);
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  sub_1D7E05450(v12, v15);
  v6 = [v1 ts_privateAccessibilityCustomActions];
  sub_1D7E0A1A8(0, &unk_1EDBB3040, 0x1E69DC5E8);
  v7 = sub_1D8191314();

  v8 = v16;
  v9 = v17;
  __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  (*(v9 + 16))(v7, v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D7E0A1A8(0, &unk_1EDBB3040, 0x1E69DC5E8);
  v10 = sub_1D8191304();

LABEL_6:
  v11.receiver = v2;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, sel_setAccessibilityCustomActions_, v10);
}

void (*TableViewCell.accessibilityCustomActions.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = TableViewCell.accessibilityCustomActions.getter();
  return sub_1D80B18D8;
}

void sub_1D80B18D8(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = sub_1D8190DB4();
    TableViewCell.accessibilityCustomActions.setter(v2);
  }

  else
  {
    TableViewCell.accessibilityCustomActions.setter(*a1);
  }
}

id sub_1D80B1930(void *a1)
{
  v1 = a1;
  TableViewCell.tsaxAccessibilityLabelForReordering.getter();
  v3 = v2;

  if (v3)
  {
    v4 = sub_1D8190EE4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void *TableViewCell.tsaxAccessibilityLabelForReordering.getter()
{
  v1 = *(v0 + qword_1EDBB1918);
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v1;
    v4 = [v2 tsaxAccessibilityLabelForReordering];
    if (v4)
    {
      v5 = v4;
      v2 = sub_1D8190F14();
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

id TableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1D80B1A90(uint64_t a1)
{
  v2 = *(a1 + qword_1EDBB1920);

  return sub_1D7E9B848(v2);
}

uint64_t TableViewCell.keyCommandBlocks.getter()
{
  v16 = MEMORY[0x1E69E7CC0];
  v12 = *&v0[qword_1EDBB1918];
  sub_1D7E0631C(0, &qword_1EDBB6760, &protocol descriptor for KeyCommandBlockProviderType);
  v1 = v12;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(&v10, v13);
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v2 = OUTLINED_FUNCTION_3_15();
    v4 = v3(v2);
    sub_1D7F0A4EC(v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    OUTLINED_FUNCTION_2_9();
    sub_1D7E9DD24(&v10, &qword_1EDBB6758, &qword_1EDBB6760, &protocol descriptor for KeyCommandBlockProviderType);
  }

  v5 = [v0 accessoryView];
  if (!v5 || (v13[0] = v5, sub_1D7E0A1A8(0, &qword_1EDBB2FC0, 0x1E69DD250), (swift_dynamicCast() & 1) == 0))
  {
    OUTLINED_FUNCTION_2_9();
    goto LABEL_9;
  }

  if (!v11)
  {
LABEL_9:
    sub_1D7E9DD24(&v10, &qword_1EDBB6758, &qword_1EDBB6760, &protocol descriptor for KeyCommandBlockProviderType);
    return v16;
  }

  sub_1D7E05450(&v10, v13);
  v6 = v14;
  v7 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v8 = (*(v7 + 8))(v6, v7);
  sub_1D7F0A4EC(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  return v16;
}

id sub_1D80B1D60()
{
  v1 = [v0 selectedBackgroundView];

  return v1;
}

unint64_t sub_1D80B2080()
{
  result = qword_1ECA10640;
  if (!qword_1ECA10640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10640);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TableViewCellViewLayout(_BYTE *result, unsigned int a2, unsigned int a3)
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

void ShineTransform.motionTransform(shineSize:viewSize:requestSize:)(uint64_t *a1@<X8>)
{
  if (*v1 == 6)
  {
    v3 = 0x8000000000000000;
LABEL_6:
    *a1 = v3;
    return;
  }

  v4 = swift_allocObject();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_1_130(v6, v7, v8, v9, v10, v11);
  v18 = floor(v12.n128_f64[0]);
  if (v18 < 0.0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_1_130(v12, v13, v14, v15, v16, v17);
    v20 = floor(v19);
    if (v20 >= 0.0)
    {
      *(v5 + 16) = -v18;
      *(v5 + 24) = v18;
      *(v5 + 32) = -v20;
      *(v5 + 40) = v20;
      *(v5 + 48) = 0;
      *(v5 + 56) = 3;
      v3 = v4 | 0x6000000000000000;
      *(v4 + 16) = v5;
      goto LABEL_6;
    }
  }

  __break(1u);
}

void ShineTransform.Expression.range(shineSize:viewSize:requestSize:)(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  sub_1D80B238C(a1, a2, a3, a4, a5, a6);
  if (floor(v6) < 0.0)
  {
    __break(1u);
  }
}

void sub_1D80B238C(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  switch(*v6)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      return;
    default:
      v7 = *(*v6 + 24);
      v8 = sub_1D80B238C(a1, a2, a3, a4, a5, a6);
      v7(v8);
      break;
  }
}

unint64_t sub_1D80B24AC@<X0>(unint64_t *a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  v8 = *a1;
  v9 = swift_allocObject();
  v9[2] = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  v9[3] = a3;
  v9[4] = v10;
  *a4 = v9;

  return sub_1D7F3B8EC(v8);
}

uint64_t get_enum_tag_for_layout_string_5TeaUI14ShineTransformO10ExpressionO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_5TeaUI14ShineTransformO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 6;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D80B257C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483641);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 6;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D80B25E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

void *sub_1D80B2630(void *result, unsigned int a2)
{
  if (a2 >= 0x7FFFFFFA)
  {
    v2 = a2 - 2147483642;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 + 5;
  }

  *result = v2;
  return result;
}

uint64_t sub_1D80B2670(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D80B26C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t StateCommandButton.identifier.getter()
{
  OUTLINED_FUNCTION_3_7();
  v2 = (v0 + *(v1 + 112));
  OUTLINED_FUNCTION_8_4(v2, v5);
  v3 = *v2;
  sub_1D8190DB4();
  return v3;
}

uint64_t StateCommandButton.identifier.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_7();
  v6 = (v2 + *(v5 + 112));
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t (*StateCommandButton.identifier.modify(uint64_t a1))(uint64_t a1)
{
  OUTLINED_FUNCTION_3_7();
  swift_beginAccess();
  return j__swift_endAccess;
}

void StateCommandButton.commandState.getter()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v3 = *v0;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = (*MEMORY[0x1E69E7D40] & *v0);
  v6 = v5[10];
  v7 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = &v0[*((v4 & v3) + 0x78)];
  OUTLINED_FUNCTION_8_4(v13, &v27);
  if (*v13)
  {
    v14 = *(v13 + 1);
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_3_7();
    v23 = *&v0[*(v15 + 152)];
    v24 = v6;
    v18 = *((v17 & v16) + 0x88);
    OUTLINED_FUNCTION_8_4(&v0[v18], &v26);
    (*(v9 + 16))(v12, &v0[v18], v7);
    v19 = *(v14 + 80);
    v20 = v5[11];
    v21 = v5[13];
    swift_unknownObjectRetain();
    v19(v23, v12, v24, v20, v21, ObjectType, v14);
    swift_unknownObjectRelease();
    (*(v9 + 8))(v12, v7);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v5[11]);
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D80B2A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D8191E84();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 16))(&v9 - v7, a1, v6);
  StateCommandButton.commandState.setter();
}

void StateCommandButton.commandState.setter()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = (*MEMORY[0x1E69E7D40] & v4);
  v7 = v6[10];
  v8 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  v14 = &v1[*((v5 & v4) + 0x90)];
  v15 = *v14;
  v43 = v6;
  if (v15)
  {
    v16 = v13;
    v17 = v10;
    v18 = v8;
    v19 = v7;
    v20 = v3;
    v21 = *(v14 + 1);
    v22 = *(v14 + 2);
    v45[0] = v15;
    v45[1] = v21;
    v46 = v22;
    v23 = v6[11];
    v24 = sub_1D7E471D0();
    v25 = type metadata accessor for StateCommandValue(0, v23, v24, v6[13]);

    v26 = v22;
    v3 = v20;
    v7 = v19;
    v8 = v18;
    v10 = v17;
    v13 = v16;
    StateCommandValue.value(for:)(v3, v25, v44);

    v27 = v44[0];
  }

  else
  {
    v27 = 0;
  }

  [v1 setImage:v27 forState:0];

  OUTLINED_FUNCTION_66();
  v29 = &v1[*(v28 + 120)];
  swift_beginAccess();
  if (*v29)
  {
    v42 = *(v29 + 1);
    swift_endAccess();
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_66();
    v31 = v3;
    v32 = *&v1[*(v30 + 152)];
    OUTLINED_FUNCTION_66();
    v34 = *(v33 + 136);
    OUTLINED_FUNCTION_8_4(&v1[v34], v44);
    (*(v10 + 16))(v13, &v1[v34], v8);
    OUTLINED_FUNCTION_0_8();
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_8_8();
    v36 = swift_allocObject();
    v36[2] = v7;
    v37 = v43;
    v36[3] = v43[11];
    v36[4] = v37[12];
    v36[5] = v37[13];
    v36[6] = v35;
    swift_unknownObjectRetain();

    CommandCenterType.canExecute<A>(command:context:closure:)(v32, v13, sub_1D80B2F38, v36, ObjectType, v42);
    swift_unknownObjectRelease();

    (*(v10 + 8))(v13, v8);

    __swift_project_boxed_opaque_existential_1(v45, v47);
    sub_1D818ED84();
    sub_1D8191E84();
    OUTLINED_FUNCTION_8();
    (*(v38 + 8))(v31);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
  }

  else
  {
    sub_1D8191E84();
    OUTLINED_FUNCTION_8();
    (*(v39 + 8))(v3);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_100();
}

void (*StateCommandButton.commandState.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_3_7();
  v4 = sub_1D8191E84();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  StateCommandButton.commandState.getter();
  return sub_1D80B303C;
}

void sub_1D80B303C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    StateCommandButton.commandState.setter();
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    StateCommandButton.commandState.setter();
  }

  free(v4);
  free(v3);

  free(v2);
}

void StateCommandButton.init(command:stateImage:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v44 = v4;
  ObjectType = swift_getObjectType();
  v5 = *v1;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v13 = v12 - v11;
  v14 = *(v3 + 8);
  v42 = *(v3 + 16);
  v43 = *v3;
  v15 = (v1 + *((v6 & v5) + 0x70));
  sub_1D818E784();
  v16 = sub_1D818E764();
  v18 = v17;
  (*(v9 + 8))(v13, v7);
  *v15 = v16;
  v15[1] = v18;
  v19 = v14;
  v20 = MEMORY[0x1E69E7D40];
  v21 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x78));
  *v21 = 0;
  v21[1] = 0;
  OUTLINED_FUNCTION_1_131();
  *(v1 + *(v22 + 128)) = 0;
  OUTLINED_FUNCTION_1_131();
  __swift_storeEnumTagSinglePayload(v1 + *(v23 + 136), 1, 1, *((v6 & v5) + 0x50));
  OUTLINED_FUNCTION_1_131();
  v25 = (v1 + *(v24 + 144));
  v25[1] = 0;
  v25[2] = 0;
  *v25 = 0;
  OUTLINED_FUNCTION_1_131();
  v27 = *(v26 + 160);
  sub_1D7E40308(0, v28, v29, v30);
  *(v1 + v27) = [objc_allocWithZone(v31) init];
  OUTLINED_FUNCTION_1_131();
  v33 = *(v32 + 168);
  v34 = v20;
  *(v1 + v33) = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  OUTLINED_FUNCTION_1_131();
  *(v1 + *(v35 + 152)) = v44;
  v36 = *v25;
  v37 = v25[1];
  v38 = v25[2];
  *v25 = v43;
  v25[1] = v19;
  v25[2] = v42;

  sub_1D80B3440(v43, v19, v42);
  sub_1D7E45BA8(v36, v37, v38);
  v46.receiver = v1;
  v46.super_class = ObjectType;
  v39 = objc_msgSendSuper2(&v46, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v40 = v39;
  if (v43)
  {
    v39;
    StateCommandButton.setImage(_:)();
    sub_1D7E45BA8(v43, v19, v42);
  }

  else
  {
    v41 = v39;
  }

  [v40 addTarget:*(v40 + *((*v34 & *v40) + 0xA0)) action:sel_handleAction forControlEvents:64];

  OUTLINED_FUNCTION_100();
}

id sub_1D80B3440(id result, uint64_t a2, void *a3)
{
  if (result)
  {

    return a3;
  }

  return result;
}

void StateCommandButton.setImage(_:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v40 = *MEMORY[0x1E69E7D40] & *v1;
  v41 = *((v5 & v4) + 0x58);
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v42 = v7;
  v43 = v6;
  OUTLINED_FUNCTION_44();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v39 = &v39 - v10;
  sub_1D7F89D40(0, v9);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v44 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v16 = sub_1D8191E04();
  OUTLINED_FUNCTION_9();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  v22 = v21 - v20;
  v24 = *v3;
  v23 = v3[1];
  v25 = v3[2];
  v26 = (v1 + *((v5 & v4) + 0x90));
  v27 = *v26;
  v28 = v26[1];
  v29 = v26[2];
  *v26 = v24;
  v26[1] = v23;
  v26[2] = v25;

  v30 = v25;
  sub_1D7E45BA8(v27, v28, v29);
  sub_1D8191E14();
  OUTLINED_FUNCTION_21(v15);
  if (v31)
  {
    sub_1D8191DD4();
    OUTLINED_FUNCTION_21(v15);
    if (!v31)
    {
      sub_1D7F8CA80(v15);
    }
  }

  else
  {
    (*(v18 + 32))(v22, v15, v16);
  }

  if (*v26)
  {
    v32 = v26[1];
    v33 = v26[2];
    v45 = *v26;
    v46 = v32;
    v47 = v33;

    v34 = v33;
    v35 = v39;
    StateCommandButton.commandState.getter();
    v36 = sub_1D7E471D0();
    v37 = type metadata accessor for StateCommandValue(0, v41, v36, *(v40 + 104));
    StateCommandValue.value(for:)(v35, v37, &v48);
    (*(v42 + 8))(v35, v43);
  }

  sub_1D8191DC4();
  v38 = v44;
  (*(v18 + 16))(v44, v22, v16);
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v16);
  sub_1D8191E24();
  (*(v18 + 8))(v22, v16);
  OUTLINED_FUNCTION_100();
}

void sub_1D80B37D4()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  v11 = (v1 + *((v3 & v2) + 0x70));
  sub_1D818E784();
  v12 = sub_1D818E764();
  v14 = v13;
  (*(v6 + 8))(v10, v4);
  *v11 = v12;
  v11[1] = v14;
  OUTLINED_FUNCTION_1_71();
  v16 = (v1 + *(v15 + 120));
  *v16 = 0;
  v16[1] = 0;
  OUTLINED_FUNCTION_1_71();
  *(v1 + *(v17 + 128)) = 0;
  OUTLINED_FUNCTION_1_71();
  __swift_storeEnumTagSinglePayload(v1 + *(v18 + 136), 1, 1, *((v3 & v2) + 0x50));
  OUTLINED_FUNCTION_1_71();
  v20 = (v1 + *(v19 + 144));
  v20[1] = 0;
  v20[2] = 0;
  *v20 = 0;
  OUTLINED_FUNCTION_1_71();
  v22 = *(v21 + 160);
  sub_1D7E40308(0, v23, v24, v25);
  *(v1 + v22) = [objc_allocWithZone(v26) init];
  OUTLINED_FUNCTION_1_71();
  v28 = *(v27 + 168);
  *(v1 + v28) = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  sub_1D81923A4();
  __break(1u);
}

void StateCommandButton.configure(with:commandSource:context:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v51 = v2;
  v4 = v3;
  v6 = v5;
  v48 = v5;
  v8 = v7;
  v9 = *v0;
  v10 = *MEMORY[0x1E69E7D40];
  v52 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  sub_1D8191E84();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v43 - v12;
  v50 = *&v0[*((v10 & v9) + 0xA0)];

  OUTLINED_FUNCTION_66();
  v14 = &v0[*(v13 + 120)];
  swift_beginAccess();
  *v14 = v8;
  *(v14 + 1) = v6;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_66();
  *&v0[*(v15 + 128)] = v4;
  swift_unknownObjectRetain();

  OUTLINED_FUNCTION_66();
  v17 = *(v16 + 136);
  swift_beginAccess();
  v18 = *((v10 & v9) + 0x50);
  v19 = sub_1D8191E84();
  OUTLINED_FUNCTION_8();
  v21 = *(v20 + 24);

  v21(&v1[v17], v51, v19);
  swift_endAccess();
  v46 = v8;
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_66();
  v45 = *&v1[*(v22 + 152)];
  v23 = v9;
  v24 = *((v10 & v9) + 0x68);
  v25 = v18;
  v26 = v52;
  v27 = v48;
  (*(v48 + 80))();
  StateCommandButton.commandState.setter();
  OUTLINED_FUNCTION_0_8();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_8_8();
  v29 = swift_allocObject();
  v29[2] = v25;
  v29[3] = v26;
  v30 = v26;
  v31 = *((v10 & v23) + 0x60);
  v29[4] = v31;
  v29[5] = v24;
  v47 = v24;
  v29[6] = v28;
  v32 = *(v27 + 96);

  v42 = v27;
  v33 = v25;
  v34 = v25;
  v35 = v31;
  v32(v53, v45, v51, sub_1D80B3F58, v29, v34, v30, v31, v24, ObjectType, v42);

  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  OUTLINED_FUNCTION_66();
  v37 = *&v1[*(v36 + 168)];
  sub_1D818ED84();

  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  OUTLINED_FUNCTION_0_8();
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_8_8();
  v39 = swift_allocObject();
  *&v40 = v33;
  *(&v40 + 1) = v52;
  *&v41 = v35;
  *(&v41 + 1) = v47;
  *(v39 + 16) = v40;
  *(v39 + 32) = v41;
  *(v39 + 48) = v38;

  OUTLINED_FUNCTION_100();
}

void sub_1D80B3E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D8191E84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*(v6 + 16))(v8, a1, v5);
    StateCommandButton.commandState.setter();
  }
}

void sub_1D80B3F68(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1D80B3FCC();
  }
}

double sub_1D80B3FCC()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*MEMORY[0x1E69E7D40] & *v0);
  v4 = v3[10];
  v5 = sub_1D8191E84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  if (*&v1[v3[16]])
  {

    v19 = sub_1D810DE04();

    v3 = (*v2 & *v1);
  }

  else
  {
    v19 = 0;
  }

  v9 = &v1[v3[15]];
  swift_beginAccess();
  if (*v9)
  {
    v10 = *(v9 + 1);
    ObjectType = swift_getObjectType();
    v12 = *v2;
    v13 = *&v1[*((*v2 & *v1) + 0x98)];
    v14 = *((v12 & *v1) + 0x88);
    swift_beginAccess();
    (*(v6 + 16))(v8, &v1[v14], v5);
    v18 = v5;
    v15 = *(v10 + 8);
    swift_unknownObjectRetain();
    v15(v13, v8, v19, v4, ObjectType, v10);
    (*(v6 + 8))(v8, v18);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t StateCommandButton.setSymbolReplaceEffect(_:)(uint64_t a1, double a2)
{
  sub_1D7F89D40(0, a2);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21[-1] - v7;
  v9 = sub_1D8191E04();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v15 = v14 - v13;
  sub_1D8191E14();
  OUTLINED_FUNCTION_21(v8);
  if (v16)
  {
    sub_1D8191DD4();
    OUTLINED_FUNCTION_21(v8);
    if (!v16)
    {
      sub_1D7F8CA80(v8);
    }
  }

  else
  {
    (*(v11 + 32))(v15, v8, v9);
  }

  v17 = sub_1D8190BA4();
  v21[3] = v17;
  v21[4] = sub_1D80B446C();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_0, a1, v17);
  sub_1D8191D94();
  (*(v11 + 16))(v5, v15, v9);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v9);
  sub_1D8191E24();
  return (*(v11 + 8))(v15, v9);
}

unint64_t sub_1D80B446C()
{
  result = qword_1ECA10648[0];
  if (!qword_1ECA10648[0])
  {
    sub_1D8190BA4();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA10648);
  }

  return result;
}

id StateCommandButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id StateCommandButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D80B45A0(char *a1)
{

  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  v3 = *(v2 + 136);
  sub_1D8191E84();
  OUTLINED_FUNCTION_8();
  (*(v4 + 8))(&a1[v3]);
  OUTLINED_FUNCTION_1();
  sub_1D7E45BA8(*&a1[*(v5 + 144)], *&a1[*(v5 + 144) + 8], *&a1[*(v5 + 144) + 16]);
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  v8 = *&a1[*(v7 + 168)];
}

Swift::Void __swiftcall StateCommandButton.prepareForReuse()()
{
  [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  OUTLINED_FUNCTION_3_7();
  *(v0 + *(v1 + 168)) = v2;

  MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1D80B47A4(uint64_t a1)
{
  result = sub_1D8191E84();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double CGRect.scaledBy(x:y:)(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v6 = a1 * a3;
  v8.origin.x = a3;
  v8.origin.y = a4;
  v8.size.width = a5;
  v8.size.height = a6;
  CGRectGetWidth(v8);
  v9.origin.x = OUTLINED_FUNCTION_80();
  CGRectGetHeight(v9);
  return v6;
}

__C::CGRect __swiftcall CGRect.replace(size:)(CGSize size)
{
  OUTLINED_FUNCTION_1_132();
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

double CGRect.scale(by:)(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5 = a1 * a2;
  v7.origin.x = a2;
  v7.origin.y = a3;
  v7.size.width = a4;
  v7.size.height = a5;
  CGRectGetWidth(v7);
  v8.origin.x = OUTLINED_FUNCTION_80();
  CGRectGetHeight(v8);
  return v5;
}

TeaUI::CollectionViewSupplementaryKind_optional __swiftcall CollectionViewSupplementaryKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D81924B4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

TeaUI::CollectionViewSupplementaryKind_optional __swiftcall CollectionViewSupplementaryKind.init(representedElementKind:)(Swift::String_optional representedElementKind)
{
  v3 = v2;
  if (!representedElementKind.value._object)
  {
    goto LABEL_13;
  }

  object = representedElementKind.value._object;
  countAndFlagsBits = representedElementKind.value._countAndFlagsBits;
  if (representedElementKind.value._countAndFlagsBits != 0xD000000000000024 || 0x80000001D81C5910 != representedElementKind.value._object)
  {
    v7 = OUTLINED_FUNCTION_0_182(representedElementKind.value._countAndFlagsBits, representedElementKind.value._object, v1, 0x80000001D81C5910);
    if ((v7 & 1) == 0)
    {
      if (countAndFlagsBits == 0xD000000000000024 && 0x80000001D81C5940 == object)
      {
      }

      else
      {
        v12 = OUTLINED_FUNCTION_0_182(v7, v8, v9, 0x80000001D81C5940);

        if ((v12 & 1) == 0)
        {
LABEL_13:
          v10 = 2;
          goto LABEL_16;
        }
      }

      v10 = 1;
      goto LABEL_16;
    }
  }

  v10 = 0;
LABEL_16:
  *v3 = v10;
  return representedElementKind.value._countAndFlagsBits;
}

unint64_t sub_1D80B4C28@<X0>(void *a1@<X8>)
{
  result = CollectionViewSupplementaryKind.rawValue.getter();
  *a1 = 0xD000000000000024;
  a1[1] = v3;
  return result;
}

uint64_t UICollectionView.dequeue<A>(supplementaryView:supplementaryData:name:)(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v12 = *a2;
  v10 = type metadata accessor for BlueprintViewSupplementaryData(0);
  return UICollectionView.dequeue<A>(supplementaryView:kind:at:name:)(a1, &v12, &a2[*(v10 + 20)], a3, a4, a5);
}

unint64_t sub_1D80B4CD4()
{
  result = qword_1ECA106D0;
  if (!qword_1ECA106D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA106D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CollectionViewSupplementaryKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

char *sub_1D80B4E04(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC5TeaUI24SectionViewSegmentedView_segmentedControl;
  *&v4[v10] = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCF38]), sel_initWithFrame_);
  v13.receiver = v4;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  [v11 addSubview_];
  return v11;
}

void sub_1D80B4EE8()
{
  v1 = OBJC_IVAR____TtC5TeaUI24SectionViewSegmentedView_segmentedControl;
  *(v0 + v1) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCF38]), sel_initWithFrame_);
  sub_1D81923A4();
  __break(1u);
}

uint64_t sub_1D80B4F88()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC5TeaUI24SectionViewSegmentedView_segmentedControl];
  result = [v2 numberOfSegments];
  if (result >= 1)
  {
    v4 = result;
    v5 = [v0 traitCollection];
    v6 = [v5 horizontalSizeClass];

    if (v6)
    {
      v8 = v6 == 2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_3_16();
      CGRectGetWidth(v15);
      [v0 layoutMargins];
      do
      {
        OUTLINED_FUNCTION_0_183();
        v7 = v1;
      }

      while (v4 != v1);
    }

    else if (v6 == 1)
    {
      OUTLINED_FUNCTION_3_16();
      CGRectGetWidth(v16);
      [v0 layoutMargins];
      do
      {
        OUTLINED_FUNCTION_0_183();
        v7 = v1;
      }

      while (v4 != v1);
    }

    [v2 sizeToFit];
    OUTLINED_FUNCTION_3_16();
    v9 = CGRectGetWidth(v17) * 0.5;
    OUTLINED_FUNCTION_3_106();
    v10 = v9 - CGRectGetWidth(v18) * 0.5;
    OUTLINED_FUNCTION_3_16();
    v11 = CGRectGetHeight(v19) * 0.5;
    OUTLINED_FUNCTION_3_106();
    v12 = v11 - CGRectGetHeight(v20) * 0.5;
    OUTLINED_FUNCTION_3_106();
    Width = CGRectGetWidth(v21);
    OUTLINED_FUNCTION_3_106();
    return [v2 setFrame_];
  }

  return result;
}

uint64_t AccessoryContainerView.AccessoryType.hashValue.getter()
{
  sub_1D81927E4();
  MEMORY[0x1DA714A00](0);
  return sub_1D8192824();
}

double AccessoryContainerView.spacing.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5TeaUI22AccessoryContainerView_spacing;
  OUTLINED_FUNCTION_1_0(a1);
  return *(v1 + v2);
}

double sub_1D80B5300@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI22AccessoryContainerView_spacing;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

void sub_1D80B5364()
{
  v1 = [v0 superview];
  if (v1)
  {

    __break(1u);
  }

  else
  {
    v2 = [v0 subviews];
    sub_1D7E0A1A8(0, &qword_1EDBB2FC0, 0x1E69DD250);
    v3 = sub_1D8191314();

    sub_1D80B5A48(v3);
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v0 setFrame_];
  }
}

uint64_t AccessoryContainerView.spacing.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_15_12(a1);
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

double AccessoryContainerView.rightMargin.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5TeaUI22AccessoryContainerView_rightMargin;
  OUTLINED_FUNCTION_1_0(a1);
  return *(v1 + v2);
}

double sub_1D80B54D0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI22AccessoryContainerView_rightMargin;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t AccessoryContainerView.rightMargin.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_15_12(a1);
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

double AccessoryContainerView.leftMargin.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5TeaUI22AccessoryContainerView_leftMargin;
  OUTLINED_FUNCTION_1_0(a1);
  return *(v1 + v2);
}

double sub_1D80B55B4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI22AccessoryContainerView_leftMargin;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

void sub_1D80B5618(uint64_t *a1, double a2)
{
  v4 = *a1;
  swift_beginAccess();
  *(v2 + v4) = a2;
  sub_1D80B5364();
}

uint64_t AccessoryContainerView.leftMargin.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_15_12(a1);
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

double AccessoryContainerView.itemSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtC5TeaUI22AccessoryContainerView_itemSize;
  OUTLINED_FUNCTION_8_4(v0 + OBJC_IVAR____TtC5TeaUI22AccessoryContainerView_itemSize, v3);
  return *v1;
}

__n128 sub_1D80B56F8@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI22AccessoryContainerView_itemSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

void AccessoryContainerView.itemSize.setter(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC5TeaUI22AccessoryContainerView_itemSize);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  sub_1D80B5364();
}

uint64_t AccessoryContainerView.itemSize.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_15_12(a1);
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

void sub_1D80B5820(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D80B5364();
  }
}

uint64_t AccessoryContainerView.init(height:views:)(uint64_t a1, double a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC5TeaUI22AccessoryContainerView_touchInsets];
  *v6 = xmmword_1D81B7980;
  *(v6 + 1) = xmmword_1D81B7980;
  *&v2[OBJC_IVAR____TtC5TeaUI22AccessoryContainerView_spacing] = 0x4034000000000000;
  *&v2[OBJC_IVAR____TtC5TeaUI22AccessoryContainerView_rightMargin] = 0;
  *&v2[OBJC_IVAR____TtC5TeaUI22AccessoryContainerView_leftMargin] = 0;
  __asm { FMOV            V0.2D, #24.0 }

  *&v2[OBJC_IVAR____TtC5TeaUI22AccessoryContainerView_itemSize] = _Q0;
  *&v2[OBJC_IVAR____TtC5TeaUI22AccessoryContainerView_cellHeight] = a2;
  v27.receiver = v2;
  v27.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1D80B5A48(a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v12;
  [v21 setFrame_];
  [v21 setClipsToBounds_];
  result = sub_1D7E36AB8(a1);
  if (!result)
  {
LABEL_8:

    return v21;
  }

  v23 = result;
  if (result >= 1)
  {
    for (i = 0; i != v23; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x1DA714420](i, a1);
      }

      else
      {
        v25 = *(a1 + 8 * i + 32);
      }

      v26 = v25;
      [v21 addSubview_];
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_1D80B5A48(uint64_t a1)
{
  v1 = sub_1D7E36AB8(a1);
  swift_beginAccess();
  swift_beginAccess();
  if (__OFSUB__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    swift_beginAccess();
  }
}

char *AccessoryContainerView.__allocating_init(height:type:)(double a1)
{
  sub_1D7E0A1A8(0, &qword_1EDBB2F10, 0x1E69DC738);
  v2 = static UIButton.disclosureIndicator.getter();

  return AccessoryContainerView.__allocating_init(height:view:)(v2, a1);
}

char *AccessoryContainerView.__allocating_init(height:view:)(void *a1, double a2)
{
  sub_1D7E49240();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D81A50A0;
  *(inited + 32) = a1;
  v6 = objc_allocWithZone(v2);
  v7 = a1;
  v8 = AccessoryContainerView.init(height:views:)(inited, a2);
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v13 = &v8[OBJC_IVAR____TtC5TeaUI22AccessoryContainerView_itemSize];
  swift_beginAccess();
  *v13 = v10;
  *(v13 + 1) = v12;
  sub_1D80B5364();

  return v8;
}

id AccessoryContainerView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void AccessoryContainerView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI22AccessoryContainerView_touchInsets);
  *v1 = xmmword_1D81B7980;
  v1[1] = xmmword_1D81B7980;
  *(v0 + OBJC_IVAR____TtC5TeaUI22AccessoryContainerView_spacing) = 0x4034000000000000;
  *(v0 + OBJC_IVAR____TtC5TeaUI22AccessoryContainerView_rightMargin) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI22AccessoryContainerView_leftMargin) = 0;
  __asm { FMOV            V0.2D, #24.0 }

  *(v0 + OBJC_IVAR____TtC5TeaUI22AccessoryContainerView_itemSize) = _Q0;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall AccessoryContainerView.layoutSubviews()()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  OUTLINED_FUNCTION_8_4(v0 + OBJC_IVAR____TtC5TeaUI22AccessoryContainerView_leftMargin, v14);
  v1 = [v0 subviews];
  sub_1D7E0A1A8(0, &qword_1EDBB2FC0, 0x1E69DD250);
  v2 = sub_1D8191314();

  v3 = sub_1D7E36AB8(v2);
  if (!v3)
  {
LABEL_8:

    return;
  }

  v4 = v3;
  if (v3 >= 1)
  {
    v5 = OBJC_IVAR____TtC5TeaUI22AccessoryContainerView_spacing;
    OUTLINED_FUNCTION_8_4(v0 + OBJC_IVAR____TtC5TeaUI22AccessoryContainerView_itemSize, v13);
    OUTLINED_FUNCTION_8_4(v0 + v5, v12);
    v6 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA714420](v6, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      [v0 bounds];
      CGRectGetHeight(v16);
      v9 = OUTLINED_FUNCTION_20();
      [v10 v11];
      v17.origin.x = OUTLINED_FUNCTION_20();
      CGRectGetMaxX(v17);
    }

    while (v4 != v6);
    goto LABEL_8;
  }

  __break(1u);
}

Swift::Bool __swiftcall AccessoryContainerView.point(inside:with:)(CGPoint inside, UIEvent_optional with)
{
  y = inside.y;
  x = inside.x;
  [v2 frame];
  v6 = UIEdgeInsetsInsetRect_1(v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v2 superview];
  [v2 convertPoint:v13 toView:{x, y}];
  v15 = v14;
  v17 = v16;

  v20.origin.x = v6;
  v20.origin.y = v8;
  v20.size.width = v10;
  v20.size.height = v12;
  v19.x = v15;
  v19.y = v17;
  return CGRectContainsPoint(v20, v19);
}

id AccessoryContainerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AccessoryContainerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void AccessoryContainerView.keyCommandBlocks.getter()
{
  v1 = [v0 subviews];
  sub_1D7E0A1A8(0, &qword_1EDBB2FC0, 0x1E69DD250);
  v2 = sub_1D8191314();

  v3 = sub_1D7E36AB8(v2);
  if (v3)
  {
    v4 = v3;
    *&v58[0] = MEMORY[0x1E69E7CC0];
    sub_1D7F08ED4(0, v3 & ~(v3 >> 63), 0);
    if (v4 < 0)
    {
      goto LABEL_74;
    }

    v5 = 0;
    v6 = *&v58[0];
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA714420](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      *&v56[0] = v7;
      sub_1D7E0631C(0, &qword_1EDBB6760, &protocol descriptor for KeyCommandBlockProviderType);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
      }

      *&v58[0] = v6;
      v9 = *(v6 + 16);
      v8 = *(v6 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1D7F08ED4(v8 > 1, v9 + 1, 1);
        v6 = *&v58[0];
      }

      ++v5;
      *(v6 + 16) = v9 + 1;
      v10 = v6 + 40 * v9;
      v11 = v59;
      v12 = v60;
      *(v10 + 64) = v61;
      *(v10 + 32) = v11;
      *(v10 + 48) = v12;
    }

    while (v4 != v5);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v13 = *(v6 + 16);
  if (v13)
  {
    v14 = v6 + 32;
    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D80B6DA4(v14, &v59);
      v56[0] = v59;
      v56[1] = v60;
      v57 = v61;
      if (*(&v60 + 1))
      {
        sub_1D7E05450(v56, v58);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D7EE4978(0, *(v15 + 16) + 1, 1, v15);
          v15 = v18;
        }

        v17 = *(v15 + 16);
        v16 = *(v15 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1D7EE4978(v16 > 1, v17 + 1, 1, v15);
          v15 = v19;
        }

        *(v15 + 16) = v17 + 1;
        sub_1D7E05450(v58, v15 + 40 * v17 + 32);
      }

      else
      {
        sub_1D80B6E5C(v56, sub_1D7FE07D4);
      }

      v14 += 40;
      --v13;
    }

    while (v13);
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  v20 = *(v15 + 16);
  if (v20)
  {
    *&v58[0] = MEMORY[0x1E69E7CC0];
    sub_1D7F08EB4(0, v20, 0);
    v21 = *&v58[0];
    v22 = v15 + 32;
    do
    {
      sub_1D7E0E768(v22, &v59);
      v23 = *(&v60 + 1);
      v24 = v61;
      __swift_project_boxed_opaque_existential_1(&v59, *(&v60 + 1));
      v25 = (*(v24 + 8))(v23, v24);
      __swift_destroy_boxed_opaque_existential_1Tm(&v59);
      *&v58[0] = v21;
      v27 = *(v21 + 16);
      v26 = *(v21 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1D7F08EB4(v26 > 1, v27 + 1, 1);
        v21 = *&v58[0];
      }

      *(v21 + 16) = v27 + 1;
      *(v21 + 8 * v27 + 32) = v25;
      v22 += 40;
      --v20;
    }

    while (v20);
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
  }

  v28 = 0;
  v53 = *(v21 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  v52 = v21 + 32;
  v51 = v21;
  while (1)
  {
    if (v28 == v53)
    {

      return;
    }

    if (v28 >= *(v21 + 16))
    {
      break;
    }

    v30 = *(v52 + 8 * v28);
    if (v30 >> 62)
    {
      v31 = sub_1D81920A4();
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v29 >> 62;
    if (v29 >> 62)
    {
      v33 = sub_1D81920A4();
    }

    else
    {
      v33 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = v33 + v31;
    if (__OFADD__(v33, v31))
    {
      goto LABEL_68;
    }

    sub_1D8190DB4();
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v32)
      {
LABEL_46:
        sub_1D81920A4();
      }

LABEL_47:
      v29 = sub_1D8192224();
      v35 = v29 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_48;
    }

    if (v32)
    {
      goto LABEL_46;
    }

    v35 = v29 & 0xFFFFFFFFFFFFFF8;
    if (v34 > *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_47;
    }

LABEL_48:
    v54 = v35;
    v55 = v29;
    ++v28;
    v36 = *(v35 + 16);
    v37 = (*(v35 + 24) >> 1) - v36;
    v38 = v35 + 8 * v36;
    if (v30 >> 62)
    {
      v40 = sub_1D81920A4();
      if (v40)
      {
        v41 = v40;
        v42 = sub_1D81920A4();
        if (v37 < v42)
        {
          goto LABEL_72;
        }

        if (v41 < 1)
        {
          goto LABEL_73;
        }

        v39 = v42;
        v43 = v38 + 32;
        sub_1D80B6E08(0, &qword_1ECA10710, type metadata accessor for KeyCommandBlock);
        sub_1D80B7AC8(&qword_1ECA10718, &qword_1ECA10710, type metadata accessor for KeyCommandBlock);
        for (i = 0; i != v41; ++i)
        {
          v45 = sub_1D7F05EB8(&v59, i, v30);
          v47 = *v46;

          v45(&v59, 0);
          *(v43 + 8 * i) = v47;
        }

        v21 = v51;
        goto LABEL_58;
      }

LABEL_62:

      if (v31 > 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v39 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v39)
      {
        goto LABEL_62;
      }

      if (v37 < v39)
      {
        goto LABEL_71;
      }

      type metadata accessor for KeyCommandBlock();
      swift_arrayInitWithCopy();
LABEL_58:

      v29 = v55;
      if (v39 < v31)
      {
        goto LABEL_69;
      }

      if (v39 > 0)
      {
        v48 = *(v54 + 16);
        v49 = __OFADD__(v48, v39);
        v50 = v48 + v39;
        if (v49)
        {
          goto LABEL_70;
        }

        *(v54 + 16) = v50;
      }
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
}

Swift::Void __swiftcall AccessoryContainerView.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  LODWORD(v34) = _;
  HIDWORD(v34) = animated;
  v3 = [v2 subviews];
  v4 = sub_1D7E0A1A8(0, &qword_1EDBB2FC0, 0x1E69DD250);
  v5 = sub_1D8191314();

  v6 = sub_1D7E36AB8(v5);
  if (v6)
  {
    v7 = v6;
    if (v6 < 1)
    {
      __break(1u);
    }

    else
    {
      v8 = 0;
      v9 = v5 & 0xC000000000000001;
      v10 = &protocol descriptor for Editable;
      v11 = &qword_1EDBAE688;
      v33 = v6;
      do
      {
        if (v9)
        {
          v12 = MEMORY[0x1DA714420](v8, v5);
        }

        else
        {
          v12 = *(v5 + 8 * v8 + 32);
        }

        v13 = v12;
        v37 = v12;
        sub_1D7E0631C(0, v11, v10);
        v14 = v13;
        if (swift_dynamicCast())
        {
          sub_1D7E05450(v35, v38);
          v15 = v9;
          v16 = v5;
          v17 = v4;
          v18 = v11;
          v19 = v10;
          v20 = v39;
          v21 = v40;
          __swift_project_boxed_opaque_existential_1(v38, v39);
          v22 = *(v21 + 8);
          v23 = v21;
          v10 = v19;
          v11 = v18;
          v4 = v17;
          v5 = v16;
          v9 = v15;
          v7 = v33;
          v22(v34 & 1, BYTE4(v34) & 1, v20, v23);

          __swift_destroy_boxed_opaque_existential_1Tm(v38);
        }

        else
        {

          OUTLINED_FUNCTION_9_36(v24, v25, v26, v27, v28, v29, v30, v31, v33, v34, v35[0], v35[1], v36);
        }

        ++v8;
      }

      while (v7 != v8);

      OUTLINED_FUNCTION_10_46();
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_46();
  }
}

void AccessoryContainerView.hidesWhenEditing.getter()
{
  v1 = [v0 subviews];
  v2 = sub_1D7E0A1A8(0, &qword_1EDBB2FC0, 0x1E69DD250);
  v3 = sub_1D8191314();

  v4 = sub_1D7E36AB8(v3);
  v5 = 0;
  v6 = v3 & 0xC000000000000001;
  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  v8 = &protocol descriptor for Editable;
  v31 = v3;
  while (1)
  {
    if (v4 == v5)
    {
LABEL_13:

      OUTLINED_FUNCTION_10_46();
      return;
    }

    if (v6)
    {
      v9 = MEMORY[0x1DA714420](v5, v3);
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_15;
      }

      v9 = *(v3 + 8 * v5 + 32);
    }

    v10 = v9;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v34 = v9;
    sub_1D7E0631C(0, &qword_1EDBAE688, v8);
    v11 = v10;
    if (swift_dynamicCast())
    {
      sub_1D7E05450(v32, v35);
      v12 = v4;
      v13 = v7;
      v14 = v6;
      v15 = v2;
      v16 = v8;
      v17 = v36;
      v18 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v19 = *(v18 + 24);
      v20 = v18;
      v8 = v16;
      v2 = v15;
      v6 = v14;
      v7 = v13;
      v4 = v12;
      v3 = v31;
      v21 = v19(v17, v20);

      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      if ((v21 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {

      OUTLINED_FUNCTION_9_36(v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32[0], v32[1], v33);
    }

    ++v5;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_1D80B6DA4(uint64_t a1, uint64_t a2)
{
  sub_1D7FE07D4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D80B6E08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D8191484();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D80B6E5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D80B6EC0()
{
  result = qword_1ECA10720;
  if (!qword_1ECA10720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10720);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AccessoryContainerView.AccessoryType(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1D80B7824(uint64_t a1)
{
  if (!qword_1ECA10728)
  {
    sub_1D7E0A1A8(255, &qword_1EDBB3078, 0x1E69DC7E8);
    v1 = sub_1D8191484();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA10728);
    }
  }
}

void sub_1D80B7990(uint64_t a1)
{
  if (!qword_1ECA10750)
  {
    sub_1D7E0A1A8(255, &unk_1EDBB3040, 0x1E69DC5E8);
    v1 = sub_1D8191484();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA10750);
    }
  }
}

void sub_1D80B79F8(uint64_t a1)
{
  if (!qword_1ECA10760)
  {
    sub_1D7E0A1A8(255, &qword_1EDBB3208, 0x1E69DCC78);
    v1 = sub_1D8191484();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA10760);
    }
  }
}

void sub_1D80B7A60(uint64_t a1)
{
  if (!qword_1EDBAE598)
  {
    sub_1D7E0A1A8(255, &qword_1EDBB3020, 0x1E69DC858);
    v1 = sub_1D8191484();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBAE598);
    }
  }
}

uint64_t sub_1D80B7AC8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D80B6E08(255, a2, a3);
    result = OUTLINED_FUNCTION_11_41(v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D80B7B00(uint64_t a1)
{
  if (!qword_1EDBAE5A8)
  {
    sub_1D7E0A1A8(255, &qword_1EDBB31D0, 0x1E69DC708);
    v1 = sub_1D8191484();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBAE5A8);
    }
  }
}

uint64_t sub_1D80B7B68(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    v4 = a2(255);
    result = OUTLINED_FUNCTION_11_41(v4);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_1D80B7BAC()
{
  if (qword_1EDBB8158 != -1)
  {
    OUTLINED_FUNCTION_0_185(&qword_1EDBB8158);
  }

  return &qword_1EDBB8160;
}

void sub_1D80B7BEC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 24);
    do
    {
      v3 = v2 - 1;
      if (__OFSUB__(v2, 1))
      {
        __break(1u);
        return;
      }

      v4 = v2;
      atomic_compare_exchange_strong_explicit((Strong + 24), &v4, v3, memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v2;
      v2 = v4;
    }

    while (!v5);
    if (!v3)
    {
      [*(Strong + 16) cancel];
    }
  }
}

uint64_t sub_1D80B7C7C(atomic_ullong *a1, uint64_t a2)
{
  v4 = qword_1EDBB8158;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_0_185(&qword_1EDBB8158);
  }

  swift_beginAccess();
  if (qword_1EDBB8160 != a1)
  {
    v5 = a1[3];
    v6 = a1[4];
    a1[3] = sub_1D80B8230;
    a1[4] = a2;
    sub_1D7E418F4(v5, v6);

    if (atomic_fetch_or_explicit(a1 + 2, 2uLL, memory_order_release))
    {
      sub_1D80B7BEC(a2);
      v7 = a1[3];
      v8 = a1[4];
      a1[3] = 0;
      a1[4] = 0;
      sub_1D7E418F4(v7, v8);
    }
  }
}

void ImageCacheInterestToken.__allocating_init()()
{
  OUTLINED_FUNCTION_0_127();
  v0 = swift_allocObject();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = 0;
}

double static ImageCacheInterestToken.singleton.getter()
{
  if (qword_1EDBB8158 != -1)
  {
    OUTLINED_FUNCTION_0_185(&qword_1EDBB8158);
  }

  swift_beginAccess();

  return result;
}

double static ImageCacheInterestToken.singleton.setter(uint64_t a1)
{
  if (qword_1EDBB8158 != -1)
  {
    OUTLINED_FUNCTION_0_185(&qword_1EDBB8158);
  }

  swift_beginAccess();
  qword_1EDBB8160 = a1;

  return result;
}

uint64_t (*static ImageCacheInterestToken.singleton.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDBB8158 != -1)
  {
    OUTLINED_FUNCTION_0_185(&qword_1EDBB8158);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_1D80B7ECC@<D0>(void *a1@<X8>)
{
  sub_1D80B7BAC();
  swift_beginAccess();
  *a1 = qword_1EDBB8160;

  return result;
}

double sub_1D80B7F20(uint64_t *a1)
{
  v1 = *a1;

  sub_1D80B7BAC();
  swift_beginAccess();
  qword_1EDBB8160 = v1;

  return result;
}

uint64_t static ImageCacheInterestToken.disposeOn(_:)()
{
  OUTLINED_FUNCTION_0_127();
  v0 = swift_allocObject();
  v1 = swift_unknownObjectRetain();
  ImageCacheInterestToken.init(disposeOn:)(v1);
  return v0;
}

uint64_t ImageCacheInterestToken.__allocating_init(disposeOn:)(uint64_t a1)
{
  OUTLINED_FUNCTION_0_127();
  v2 = swift_allocObject();
  ImageCacheInterestToken.init(disposeOn:)(a1);
  return v2;
}

void *ImageCacheInterestToken.init()()
{
  result = v0;
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  return result;
}

void *ImageCacheInterestToken.init(disposeOn:)(uint64_t a1)
{
  sub_1D818EF04();
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = 0;
  v4[3] = swift_getObjectType();
  v4[0] = a1;
  swift_unknownObjectRetain();

  sub_1D818EEF4();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v1;
}

void sub_1D80B80A8()
{
  if ((atomic_fetch_or_explicit(v0 + 2, 1uLL, memory_order_acquire) & 2) != 0)
  {
    v1 = v0;
    v3 = v0 + 3;
    v2 = v0[3];
    if (v2)
    {
      v4 = v0[4];

      v2(v5);
      sub_1D7E418F4(v2, v4);
      v6 = v1[3];
    }

    else
    {
      v6 = 0;
    }

    v7 = v1[4];
    *v3 = 0;
    v3[1] = 0;

    sub_1D7E418F4(v6, v7);
  }
}

void *ImageCacheInterestToken.deinit()
{
  if ((v0[2] & 1) == 0)
  {
    sub_1D80B80A8();
  }

  sub_1D7E418F4(v0[3], v0[4]);
  return v0;
}

uint64_t ImageCacheInterestToken.__deallocating_deinit()
{
  ImageCacheInterestToken.deinit();
  OUTLINED_FUNCTION_0_127();

  return swift_deallocClassInstance();
}

void sub_1D80B81D8()
{
  if (!qword_1ECA10798)
  {
    v0 = sub_1D818FD14();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA10798);
    }
  }
}

uint64_t SectionBlueprintBookmarkApplicator.__allocating_init(blueprintProvider:blueprintLayoutProvider:blueprintViewProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  SectionBlueprintBookmarkApplicator.init(blueprintProvider:blueprintLayoutProvider:blueprintViewProvider:)(a1, a2, a3);
  return v6;
}

uint64_t SectionBlueprintBookmarkApplicator.deinit()
{
  OUTLINED_FUNCTION_48_0();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_48_0();
  (*(v3 + 8))(v0 + v4);
  OUTLINED_FUNCTION_12();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SectionBlueprintBookmarkApplicator.__deallocating_deinit()
{
  SectionBlueprintBookmarkApplicator.deinit();

  return swift_deallocClassInstance();
}

double SectionBlueprintBookmarkApplicator.prepare(bookmark:context:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void SectionBlueprintBookmarkApplicator.apply(bookmark:context:preparedContext:)(void *a1)
{
  v2 = v1;
  v44 = *&a1;
  v3 = *v1;
  v42 = v3;
  v4 = v3[13];
  v5 = v3[10];
  OUTLINED_FUNCTION_16();
  *&v6 = COERCE_DOUBLE(swift_getAssociatedTypeWitness());
  OUTLINED_FUNCTION_16();
  v41 = v4;
  v46 = *&v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v49 = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for Blueprint(0, &v46);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v37 - v8;
  v43 = type metadata accessor for BlueprintBookmark(0);
  MEMORY[0x1EEE9AC00](v43);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v3[11];
  v12 = v3[14];
  BlueprintLayoutProviderType.layoutBlueprint.getter(v11, v12);
  v13 = OUTLINED_FUNCTION_3_108();
  v14 = OUTLINED_FUNCTION_3_108();
  v15 = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v45[0] = v13;
  v45[1] = v14;
  v45[2] = v15;
  v45[3] = v16;
  v17 = type metadata accessor for BlueprintLayout(0, v45);
  swift_getWitnessTable();
  LOBYTE(v3) = sub_1D8191874();
  (*(*(v17 - 8) + 8))(&v46, v17);
  if ((v3 & 1) == 0)
  {
    sub_1D7E2B108(*&v44, v10);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v19 = *v10;
      v18 = *(v10 + 1);
      v20 = v10[2];
      v21 = v38;
      v22 = v41;
      v23 = BlueprintProviderType.blueprint.getter(v5, v41);
      v44 = COERCE_DOUBLE(&v37);
      MEMORY[0x1EEE9AC00](v23);
      *(&v37 - 8) = v5;
      *(&v37 - 7) = v11;
      v24 = v42;
      v25 = v42[12];
      *(&v37 - 6) = v25;
      *(&v37 - 5) = v22;
      v26 = v24[15];
      *(&v37 - 4) = v12;
      *(&v37 - 3) = v26;
      *(&v37 - 2) = v19;
      *(&v37 - 1) = v18;
      v27 = v40;
      swift_getWitnessTable();
      sub_1D81917D4();

      (*(v39 + 8))(v21, v27);
      if ((AssociatedTypeWitness & 1) == 0)
      {
        v44 = v46;
        v28 = *(v26 + 56);
        v42 = *(v2 + *(*v2 + 144));
        v43 = v28;
        v29 = v28(v25, v26);
        OUTLINED_FUNCTION_16();
        swift_getAssociatedTypeWitness();
        v30 = swift_getAssociatedConformanceWitness();
        v31 = *(v30 + 96);
        v32 = swift_checkMetadataState();
        v31(&v46, *&v44, v32, v30);

        if ((v50 & 1) == 0)
        {
          v33 = sub_1D80B8A94(v2, v46, *&AssociatedTypeWitness, *&AssociatedConformanceWitness, *&v49, v20);
          v35 = v34;
          v36 = v43(v25, v26);
          [v36 setContentOffset_];
        }
      }
    }

    else
    {
      sub_1D7E2BBA0(v10);
    }
  }
}

uint64_t sub_1D80B892C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14[0] = swift_getAssociatedTypeWitness();
  v14[1] = swift_getAssociatedTypeWitness();
  v14[2] = swift_getAssociatedConformanceWitness();
  v14[3] = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for BlueprintSection(0, v14);
  if (BlueprintSection.identifier.getter(v9) == a2 && v10 == a3)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D8192634();
  }

  return v12 & 1;
}

double sub_1D80B8A94(uint64_t *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v11 = *a1;
  BlueprintLayoutProviderType.layoutBlueprint.getter(*(*a1 + 88), *(*a1 + 112));
  v12 = v31;
  v29[0] = swift_getAssociatedTypeWitness();
  v29[1] = swift_getAssociatedTypeWitness();
  v29[2] = swift_getAssociatedConformanceWitness();
  v29[3] = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for BlueprintLayout(0, v29);
  (*(*(v13 - 8) + 8))(v30, v13);
  if (v12)
  {
    v14 = *(v11 + 120);
    v15 = *(v14 + 56);
    v16 = *(v11 + 96);
    v17 = v15(v16, v14);
    [v17 contentOffset];
    v19 = v18;

    v32.origin.x = a2;
    v32.origin.y = a3;
    v32.size.width = a4;
    v32.size.height = a5;
    CGRectGetMinY(v32);
    v20 = v15(v16, v14);
    [v20 adjustedContentInset];
  }

  else
  {
    v33.origin.x = a2;
    v33.origin.y = a3;
    v33.size.width = a4;
    v33.size.height = a5;
    v21 = CGRectGetMinX(v33) + a6;
    v22 = *(v11 + 120);
    v23 = *(v22 + 56);
    v24 = *(v11 + 96);
    v25 = v23(v24, v22);
    [v25 adjustedContentInset];
    v27 = v26;

    v19 = v21 - v27;
    v20 = v23(v24, v22);
    [v20 contentOffset];
  }

  return v19;
}

BOOL static SectionViewControllerPresentation.needsPresentationUpdate(lhs:rhs:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  switch(v3)
  {
    case 1:
      return v4 != 1;
    case 2:
      return v4 != 2;
    case 3:
      return v4 != 3;
  }

  if ((v4 - 1) < 3)
  {
    return 1;
  }

  v6 = a1[2];
  v7 = a2[2];
  if (v3)
  {
    if (v4)
    {
      v8 = *a1 == *a2 && v3 == v4;
      if (v8 || (sub_1D8192634() & 1) != 0)
      {
        return (v7 ^ v6) & 1;
      }
    }
  }

  else if (!v4)
  {
    return (v7 ^ v6) & 1;
  }

  return 1;
}

uint64_t SectionSelectorStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D80B8F7C()
{
  result = qword_1ECA107A0;
  if (!qword_1ECA107A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA107A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SectionSelectorStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_So6UIMenuCIego_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_5TeaUI33SectionViewControllerPresentationO(uint64_t a1)
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

uint64_t sub_1D80B90E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D80B9150(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

double sub_1D80B91A8(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = a2;
  }

  return result;
}

id sub_1D80B9204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = (a1 + 32);
  if (v4)
  {
    while (1)
    {
      v6 = *v5;
      v7 = *v5;
      if (!*v5)
      {
        break;
      }

      v8 = *(v2 + 16);
      v9 = OUTLINED_FUNCTION_0_40();
      v21 = v10;
      sub_1D7E19F24(v9, v11);
      v12 = OUTLINED_FUNCTION_0_40();
      sub_1D7E19F24(v12, v13);
      LOBYTE(v8) = v7(v8);
      v14 = OUTLINED_FUNCTION_0_40();
      sub_1D7E0E10C(v14, v15);
      v6 = v21;
      if (v8)
      {
        break;
      }

      v16 = OUTLINED_FUNCTION_0_40();
      sub_1D7E0E10C(v16, v17);
      ++v5;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    v20 = *(v2 + 16);
    *a2 = v20;
    *(a2 + 8) = v6;
    return v20;
  }

  else
  {
LABEL_5:
    sub_1D80B931C();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }
}

unint64_t sub_1D80B931C()
{
  result = qword_1ECA107A8;
  if (!qword_1ECA107A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA107A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ShortcutItemHandlerMatcher.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D80B9450()
{
  result = qword_1ECA107B0;
  if (!qword_1ECA107B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA107B0);
  }

  return result;
}

uint64_t sub_1D80B94A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = *(v3 + 24);
  }

  else
  {
    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v6;
  return sub_1D7E19F24(v4, v5);
}

uint64_t sub_1D80B94F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  sub_1D7E19F24(v2, v3);
  return sub_1D7E0E10C(v6, v7);
}

uint64_t BlueprintCompositionalListItemSeparatorProvider.itemSeparatorHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_1D7E19F24(v1, *(v0 + 24));
  return v1;
}

uint64_t BlueprintCompositionalListItemSeparatorProvider.__allocating_init(blueprintProvider:kindProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  BlueprintCompositionalListItemSeparatorProvider.init(blueprintProvider:kindProvider:)(a1, a2, a3);
  return v6;
}

char *BlueprintCompositionalListItemSeparatorProvider.deinit()
{
  v1 = *v0;
  sub_1D7E0E10C(*(v0 + 2), *(v0 + 3));
  sub_1D7E166A0((v0 + 32));
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_12();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v2 + 120)]);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1DA715E30](&v0[*(v3 + 128)]);
  return v0;
}

uint64_t BlueprintCompositionalListItemSeparatorProvider.__deallocating_deinit()
{
  BlueprintCompositionalListItemSeparatorProvider.deinit();

  return swift_deallocClassInstance();
}

id ImageDeserializer.deserialize(_:)(uint64_t a1, unint64_t a2)
{
  sub_1D7E471D0();
  sub_1D7F0731C(a1, a2);
  result = sub_1D8149054(a1, a2);
  if (!result)
  {
    sub_1D80B9854();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1D80B9854()
{
  result = qword_1ECA107B8;
  if (!qword_1ECA107B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA107B8);
  }

  return result;
}

id sub_1D80B98E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = ImageDeserializer.deserialize(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ImageDeserializer.ImageError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D80B9A14()
{
  result = qword_1ECA107C0;
  if (!qword_1ECA107C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA107C0);
  }

  return result;
}

uint64_t ModalViewSession.identifier.getter()
{
  v1 = *v0;
  sub_1D8190DB4();
  return v1;
}

uint64_t ModalViewSession.createdDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ModalViewSession(0) + 20);
  v4 = sub_1D818E754();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ModalViewSession(uint64_t a1)
{
  result = qword_1EDBB1450;
  if (!qword_1EDBB1450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ModalViewSession.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ModalViewSession(0) + 24);

  return sub_1D7FA9E88(v3, a1);
}

double ModalViewSession.duration.getter()
{
  sub_1D7E313D0(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D818E754();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ModalViewSession(0);
  sub_1D7FA9E88(v0 + *(v8 + 24), v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_1D7FCBA58(v3);
    sub_1D818E714();
    return fabs(v9);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1D818E6B4();
    v10 = v11;
    (*(v5 + 8))(v7, v4);
  }

  return v10;
}

void sub_1D80B9DA4(uint64_t a1)
{
  sub_1D818E754();
  if (v1 <= 0x3F)
  {
    sub_1D7E313D0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t BlueprintViewCellSelectionBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D80B9ED4()
{
  result = qword_1ECA107C8;
  if (!qword_1ECA107C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA107C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BlueprintViewCellSelectionBehavior(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t BlueprintPipelineProcessorCommit.init(apply:validate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1D80BA04C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D80BA08C(uint64_t result, int a2, int a3)
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

double BlueprintCaches.add<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_186();
  v3(a2, a3);
  v9[3] = a2;
  v9[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  sub_1D818F944();

  return result;
}

uint64_t BlueprintCaches.cache<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_0_186();
  v3(a1, a2);
  sub_1D818F934();

  sub_1D80BA260(0);
  v7 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v7 ^ 1u, 1, a1);
}

void sub_1D80BA260(uint64_t a1)
{
  if (!qword_1EDBBA0C8)
  {
    sub_1D7E21920();
    v1 = sub_1D8191E84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBBA0C8);
    }
  }
}

uint64_t sub_1D80BA3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D7E5B0D4;

  return BlueprintPipelineProcessorType.process(blueprint:runOptions:)(a1, a2, a3, a4, a5);
}

uint64_t BlueprintPipelineProcessor.__allocating_init<A>(processor:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  BlueprintPipelineProcessor.init<A>(processor:)(a1, a2, a3);
  return v6;
}

uint64_t BlueprintPipelineProcessor.deinit()
{

  return v0;
}

uint64_t BlueprintPipelineProcessor.__deallocating_deinit()
{
  BlueprintPipelineProcessor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D80BA60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D7E5B0D4;

  return BlueprintPipelineProcessor.process(blueprint:runOptions:)(a1, a2, a3);
}

uint64_t dispatch thunk of BlueprintPipelineProcessorType.process(blueprint:runOptions:)()
{
  OUTLINED_FUNCTION_6_72();
  v6 = (*(v0 + 48) + **(v0 + 48));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2_14(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_2_117(v2);

  return v6(v4);
}

uint64_t get_enum_tag_for_layout_string_5TeaUI12BarViewStyleO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D80BA840(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D80BA894(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t BlueprintLayoutOptionsChangeTrigger.AccessibilityChangeTrigger.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t BlueprintViewControllerDelegateType.blueprint(_:didCreateInfiniteScrollRequest:)(uint64_t a1, void *a2)
{
  v2 = a2[3];
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v2);
  return (*(v3 + 24))(0, v2, v3);
}

unint64_t sub_1D80BAA98()
{
  result = qword_1ECA107D0[0];
  if (!qword_1ECA107D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA107D0);
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for BlueprintLayoutOptionsChangeTrigger(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 5)
    {
      v7 = v6 - 4;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 0xB)
    {
      return (v7 - 10);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 14;
    if (a2 + 14 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 14);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BlueprintLayoutOptionsChangeTrigger(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 14;
  if (a3 + 14 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xF2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF1)
  {
    v7 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D80BAC70(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BlueprintLayoutOptionsChangeTrigger.AccessibilityChangeTrigger(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

void BlueprintCompositionalListDataSourceProxy.__allocating_init(diffableDataSourceProvider:)(uint64_t a1)
{
  OUTLINED_FUNCTION_0_187();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = 1;
}

uint64_t BlueprintCompositionalListDataSourceProxy.init(diffableDataSourceProvider:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 1;
  return v1;
}

void BlueprintCompositionalListDataSourceProxy.__allocating_init(dataSource:)(uint64_t a1)
{
  OUTLINED_FUNCTION_0_187();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
}

uint64_t BlueprintCompositionalListDataSourceProxy.init(dataSource:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

double BlueprintCompositionalListDataSourceProxy.blueprintViewDataSource.getter()
{
  OUTLINED_FUNCTION_39();
  swift_unknownObjectRetain();
  return result;
}

uint64_t BlueprintCompositionalListDataSourceProxy.dragReorderDelegate.getter()
{
  v1 = *v0;
  if (v0[3])
  {
    return 0;
  }

  v3 = *(v1 + 104);
  v4 = *(v3 + 24);
  v5 = *(v1 + 80);
  swift_unknownObjectRetain();
  v2 = v4(v5, v3);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1D80BB134(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return BlueprintCompositionalListDataSourceProxy.dragReorderDelegate.setter(v2, v1);
}

void (*BlueprintCompositionalListDataSourceProxy.dragReorderDelegate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = BlueprintCompositionalListDataSourceProxy.dragReorderDelegate.getter();
  a1[1] = v3;
  return sub_1D80BB1B8;
}

void sub_1D80BB1B8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {
    v3 = swift_unknownObjectRetain();
    BlueprintCompositionalListDataSourceProxy.dragReorderDelegate.setter(v3, v2);

    swift_unknownObjectRelease();
  }

  else
  {
    BlueprintCompositionalListDataSourceProxy.dragReorderDelegate.setter(*a1, v2);
  }
}

double BlueprintCompositionalListDataSourceProxy.registerKeyCommandTraversal(observable:)()
{
  OUTLINED_FUNCTION_39();
  v2 = 104;
  if (*(v0 + 24))
  {
    v2 = 112;
  }

  v3 = *(*(v1 + v2) + 64);
  swift_unknownObjectRetain();
  v4 = OUTLINED_FUNCTION_1_135();
  v3(v4);

  swift_unknownObjectRelease();
  return result;
}

uint64_t BlueprintCompositionalListDataSourceProxy.identifiers(for:)(uint64_t a1)
{
  BlueprintCompositionalListDataSourceProxy.blueprintViewDataSource.getter();
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 72))(a1, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t BlueprintCompositionalListDataSourceProxy.indexPaths(for:)(uint64_t a1)
{
  BlueprintCompositionalListDataSourceProxy.blueprintViewDataSource.getter();
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 80))(a1, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t BlueprintCompositionalListDataSourceProxy.handleDrop(sourceIndexPath:destinationIndexPath:)(uint64_t result, uint64_t a2)
{
  if (v2[24] == 1)
  {
    return (*(*(*v2 + 120) + 8))(result, a2, *(*v2 + 88));
  }

  return result;
}

Swift::Void __swiftcall BlueprintCompositionalListDataSourceProxy.registerReorderingHandlers()()
{
  if (v0[24] == 1)
  {
    (*(*(*v0 + 128) + 8))(*(*v0 + 88));
  }
}

uint64_t BlueprintCompositionalListDataSourceProxy.__deallocating_deinit()
{
  BlueprintCompositionalListDataSourceProxy.deinit();
  OUTLINED_FUNCTION_0_187();

  return swift_deallocClassInstance();
}

void (*sub_1D80BB4F8(uint64_t **a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintCompositionalListDataSourceProxy.dragReorderDelegate.modify(v2);
  return sub_1D7F4150C;
}

uint64_t sub_1D80BB5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double ScrollToTopBlueprintAnimator.animate(context:animation:applyUpdates:)(uint64_t a1, uint64_t a2, void (*a3)(id (*)(uint64_t a1, uint64_t a2), uint64_t))
{

  a3(sub_1D80BB860, v3);

  return result;
}

id sub_1D80BB6C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = objc_opt_self();
  [v6 begin];
  v16[4] = a1;
  v16[5] = a2;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1D7E64940;
  v16[3] = &block_descriptor_68;
  v7 = _Block_copy(v16);

  [v6 setCompletionBlock_];
  _Block_release(v7);
  v8 = *(v5 + 88);
  v9 = *(v8 + 56);
  v10 = *(v5 + 80);
  v11 = v9(v10, v8);
  [v11 adjustedContentInset];
  v13 = v12;

  v14 = v9(v10, v8);
  [v14 setContentOffset:1 animated:{0.0, -v13}];

  return [v6 commit];
}

uint64_t ScrollToTopBlueprintAnimator.__deallocating_deinit()
{
  ScrollToTopBlueprintAnimator.deinit();

  return swift_deallocClassInstance();
}

uint64_t ActivityTrait.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1D81924B4();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_1D80BB9E8()
{
  result = qword_1ECA10858;
  if (!qword_1ECA10858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10858);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ActivityTrait(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D80BBBD8()
{
  result = qword_1ECA10860;
  if (!qword_1ECA10860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10860);
  }

  return result;
}

void MotionTransformable.transform(layer:bounds:motionDisabled:)(void *a1, uint64_t a2)
{
  v3 = *a2;
  if (*(a2 + 8))
  {
    if (*(a2 + 8) == 1)
    {
      OUTLINED_FUNCTION_155();
      if (qword_1EDBB1D18 != -1)
      {
        swift_once();
      }

      v4.m11 = v3;
      OUTLINED_FUNCTION_80();
      MotionTransformable.transform(motionData:layer:bounds:motionTransform:)();
    }

    else
    {
      memcpy(&v4, MEMORY[0x1E69792E8], sizeof(v4));
      [a1 setTransform_];
    }
  }

  else
  {
    CATransform3DMakeScale(&v4, *a2, *a2, 1.0);
    [a1 setTransform_];
  }
}

void MotionTransformable.transform(motionData:layer:bounds:motionTransform:)()
{
  OUTLINED_FUNCTION_155();
  v3 = v2;
  v183[1] = *v4;
  sub_1D80E7FBC(v183);
  switch(v183[0] >> 61)
  {
    case 1:
      v171 = *((v183[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v177 = *((v183[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v49 = *((v183[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v50 = *((v183[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v160 = *((v183[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v165 = *((v183[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
      v51 = *((v183[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v52 = *((v183[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x48);
      v188.origin.x = OUTLINED_FUNCTION_80();
      Width = CGRectGetWidth(v188);
      v54 = 1.0;
      switch(v52)
      {
        case 1:
        case 2:
          v189.origin.x = OUTLINED_FUNCTION_80();
          v55 = v50 - v49 + CGRectGetWidth(v189);
          v190.origin.x = OUTLINED_FUNCTION_80();
          v54 = v55 / CGRectGetWidth(v190);
          goto LABEL_18;
        case 3:
        case 4:
LABEL_18:
          if (*&v171 / Width > v54)
          {
            v56 = *&v171 / Width;
          }

          else
          {
            v56 = v54;
          }

          v191.origin.x = OUTLINED_FUNCTION_80();
          Height = CGRectGetHeight(v191);
          v66 = 1.0;
          if ((v52 - 3) >= 2)
          {
            *&v171 = v56;
            v67 = v160;
            if (v52 == 1)
            {
              *&v67 = v49;
            }

            v153 = v67;
            if (v52 == 1)
            {
              v68 = v50;
            }

            else
            {
              v68 = *&v165;
            }

            v192.origin.x = OUTLINED_FUNCTION_80();
            v69 = CGRectGetHeight(v192) + v68 - *&v153;
            v193.origin.x = OUTLINED_FUNCTION_80();
            v66 = v69 / CGRectGetHeight(v193);
          }

          if (*&v177 / Height > v66)
          {
            v70 = *&v177 / Height;
          }

          else
          {
            v70 = v66;
          }

          goto LABEL_51;
        case 5:
          v207.origin.x = OUTLINED_FUNCTION_80();
          v139 = *&v177 / CGRectGetHeight(v207);
          if (v139 > v51)
          {
            v70 = v139;
          }

          else
          {
            v70 = v51;
          }

LABEL_51:
          OUTLINED_FUNCTION_2_118(v57, v58, v59, v60, v61, v62, v63, v64, v149, v153, v160, v165, v171, v177, *&v179.m11, *&v179.m12, *&v179.m13, *&v179.m14, *&v179.m21, *&v179.m22, *&v179.m23, *&v179.m24, *&v179.m31, *&v179.m32, *&v179.m33, *&v179.m34, *&v179.m41, *&v179.m42, *&v179.m43, *&v179.m44, *&b.m11, *&b.m12, *&b.m13, *&b.m14, *&b.m21, *&b.m22, *&b.m23, *&b.m24, *&b.m31, *&b.m32, *&b.m33, *&b.m34, *&b.m41, *&b.m42, *&b.m43, *&b.m44, *&a.m11, *&a.m12, *&a.m13, *&a.m14, *&a.m21, *&a.m22, *&a.m23, *&a.m24, *&a.m31);
          OUTLINED_FUNCTION_1_136();
          OUTLINED_FUNCTION_5_65();
          v119 = MotionData.xTranslate(to:inverted:)(v140, v141, v142);
          break;
        default:
          v202.origin.x = OUTLINED_FUNCTION_80();
          v104 = CGRectGetHeight(v202);
          v203.origin.x = OUTLINED_FUNCTION_80();
          v105 = CGRectGetWidth(v203) * v49;
          v204.origin.x = OUTLINED_FUNCTION_80();
          v114 = (v105 - CGRectGetWidth(v204)) * 0.5;
          if (v114 < 0.0)
          {
            goto LABEL_57;
          }

          v115 = *&v177 / v104;
          if (*&v177 / v104 <= v49)
          {
            v115 = v49;
          }

          OUTLINED_FUNCTION_2_118(v106, v107, v108, v109, v110, v111, v112, v113, v149, v153, v160, COERCE__INT64(-v114), v171, *&v115, *&v179.m11, *&v179.m12, *&v179.m13, *&v179.m14, *&v179.m21, *&v179.m22, *&v179.m23, *&v179.m24, *&v179.m31, *&v179.m32, *&v179.m33, *&v179.m34, *&v179.m41, *&v179.m42, *&v179.m43, *&v179.m44, *&b.m11, *&b.m12, *&b.m13, *&b.m14, *&b.m21, *&b.m22, *&b.m23, *&b.m24, *&b.m31, *&b.m32, *&b.m33, *&b.m34, *&b.m41, *&b.m42, *&b.m43, *&b.m44, *&a.m11, *&a.m12, *&a.m13, *&a.m14, *&a.m21, *&a.m22, *&a.m23, *&a.m24, *&a.m31);
          OUTLINED_FUNCTION_5_65();
          v119 = MotionData.xTranslate(to:inverted:)(v116, v117, v118);
          v205.origin.x = OUTLINED_FUNCTION_80();
          v120 = CGRectGetHeight(v205) * v49;
          v206.origin.x = OUTLINED_FUNCTION_80();
          if ((v120 - CGRectGetHeight(v206)) * 0.5 < 0.0)
          {
            goto LABEL_60;
          }

          v70 = *&v178;
          break;
      }

      OUTLINED_FUNCTION_2_118(v121, v122, v123, v124, v125, v126, v127, v128, v152, v156, v161, v166, v172, v178, *&v179.m11, *&v179.m12, *&v179.m13, *&v179.m14, *&v179.m21, *&v179.m22, *&v179.m23, *&v179.m24, *&v179.m31, *&v179.m32, *&v179.m33, *&v179.m34, *&v179.m41, *&v179.m42, *&v179.m43, *&v179.m44, *&b.m11, *&b.m12, *&b.m13, *&b.m14, *&b.m21, *&b.m22, *&b.m23, *&b.m24, *&b.m31, *&b.m32, *&b.m33, *&b.m34, *&b.m41, *&b.m42, *&b.m43, *&b.m44, *&a.m11, *&a.m12, *&a.m13, *&a.m14, *&a.m21, *&a.m22, *&a.m23, *&a.m24, *&a.m31);
      OUTLINED_FUNCTION_1_136();
      OUTLINED_FUNCTION_5_65();
      MotionData.yTranslate(to:inverted:)(v143, v144, v145);
      v146 = OUTLINED_FUNCTION_6_73();
      CATransform3DMakeScale(v147, v146, v70, v148);
      CATransform3DMakeTranslation(&b, v119, v0, 1.0);
      memcpy(&a, __dst, sizeof(a));
      CATransform3DConcat(&v179, &a, &b);
      [v3 setTransform_];
      goto LABEL_53;
    case 2:
      v34 = *((v183[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v35 = *((v183[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      switch(*((v183[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x38))
      {
        case 1:
        case 4:
          v48 = *((v183[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          OUTLINED_FUNCTION_2_118(v5, v6, v7, v8, v9, v10, v11, v12, v149, v153, v157, v162, v167, v173, *&v179.m11, *&v179.m12, *&v179.m13, *&v179.m14, *&v179.m21, *&v179.m22, *&v179.m23, *&v179.m24, *&v179.m31, *&v179.m32, *&v179.m33, *&v179.m34, *&v179.m41, *&v179.m42, *&v179.m43, *&v179.m44, *&b.m11, *&b.m12, *&b.m13, *&b.m14, *&b.m21, *&b.m22, *&b.m23, *&b.m24, *&b.m31, *&b.m32, *&b.m33, *&b.m34, *&b.m41, *&b.m42, *&b.m43, *&b.m44, *&a.m11, *&a.m12, *&a.m13, *&a.m14, *&a.m21, *&a.m22, *&a.m23, *&a.m24, *&a.m31);
          v71 = OUTLINED_FUNCTION_1_136();
          v47 = MotionData.xTranslate(to:inverted:)(v72, v71, v48);
          goto LABEL_34;
        case 2:
        case 3:
        case 5:
          v36 = *((v183[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          OUTLINED_FUNCTION_2_118(v5, v6, v7, v8, v9, v10, v11, v12, v149, v153, v157, v162, v167, v173, *&v179.m11, *&v179.m12, *&v179.m13, *&v179.m14, *&v179.m21, *&v179.m22, *&v179.m23, *&v179.m24, *&v179.m31, *&v179.m32, *&v179.m33, *&v179.m34, *&v179.m41, *&v179.m42, *&v179.m43, *&v179.m44, *&b.m11, *&b.m12, *&b.m13, *&b.m14, *&b.m21, *&b.m22, *&b.m23, *&b.m24, *&b.m31, *&b.m32, *&b.m33, *&b.m34, *&b.m41, *&b.m42, *&b.m43, *&b.m44, *&a.m11, *&a.m12, *&a.m13, *&a.m14, *&a.m21, *&a.m22, *&a.m23, *&a.m24, *&a.m31);
          v37 = OUTLINED_FUNCTION_1_136();
          v47 = MotionData.xTranslate(to:inverted:)(v38, v37, v36);
          v48 = v35;
          goto LABEL_34;
        default:
          v194.origin.x = OUTLINED_FUNCTION_80();
          CGRectGetWidth(v194);
          v195.origin.x = OUTLINED_FUNCTION_80();
          v73 = CGRectGetWidth(v195);
          OUTLINED_FUNCTION_4_77(v73);
          if (v82 != v83)
          {
            __break(1u);
            goto LABEL_56;
          }

          OUTLINED_FUNCTION_2_118(v74, v75, v76, v77, v78, v79, v80, v81, v149, v153, v157, v162, v167, v173, *&v179.m11, *&v179.m12, *&v179.m13, *&v179.m14, *&v179.m21, *&v179.m22, *&v179.m23, *&v179.m24, *&v179.m31, *&v179.m32, *&v179.m33, *&v179.m34, *&v179.m41, *&v179.m42, *&v179.m43, *&v179.m44, *&b.m11, *&b.m12, *&b.m13, *&b.m14, *&b.m21, *&b.m22, *&b.m23, *&b.m24, *&b.m31, *&b.m32, *&b.m33, *&b.m34, *&b.m41, *&b.m42, *&b.m43, *&b.m44, *&a.m11, *&a.m12, *&a.m13, *&a.m14, *&a.m21, *&a.m22, *&a.m23, *&a.m24, *&a.m31);
          OUTLINED_FUNCTION_3_109();
          v47 = MotionData.xTranslate(to:inverted:)(v84, v85, v86);
          v196.origin.x = OUTLINED_FUNCTION_80();
          v87 = CGRectGetHeight(v196) * v34;
          v197.origin.x = OUTLINED_FUNCTION_80();
          v48 = (v87 - CGRectGetHeight(v197)) * v1;
          if (v48 < 0.0)
          {
            goto LABEL_58;
          }

LABEL_34:
          OUTLINED_FUNCTION_2_118(v39, v40, v41, v42, v43, v44, v45, v46, v151, v155, v159, v164, v170, v176, *&v179.m11, *&v179.m12, *&v179.m13, *&v179.m14, *&v179.m21, *&v179.m22, *&v179.m23, *&v179.m24, *&v179.m31, *&v179.m32, *&v179.m33, *&v179.m34, *&v179.m41, *&v179.m42, *&v179.m43, *&v179.m44, *&b.m11, *&b.m12, *&b.m13, *&b.m14, *&b.m21, *&b.m22, *&b.m23, *&b.m24, *&b.m31, *&b.m32, *&b.m33, *&b.m34, *&b.m41, *&b.m42, *&b.m43, *&b.m44, *&a.m11, *&a.m12, *&a.m13, *&a.m14, *&a.m21, *&a.m22, *&a.m23, *&a.m24, *&a.m31);
          v88 = OUTLINED_FUNCTION_1_136();
          [v3 setShadowOffset_];
          break;
      }

      goto LABEL_35;
    case 3:
LABEL_35:
      OUTLINED_FUNCTION_8_48();

      return;
    case 4:
      memcpy(__dst, MEMORY[0x1E69792E8], sizeof(__dst));
      [v3 setTransform_];
      goto LABEL_54;
    default:
      v13 = *(v183[0] + 16);
      v14 = *(v183[0] + 24);
      v168 = *(v183[0] + 32);
      v174 = *(v183[0] + 40);
      v15 = 1.0;
      v16 = *(v183[0] + 56);
      switch(*(v183[0] + 56))
      {
        case 1:
        case 2:
          v184.origin.x = OUTLINED_FUNCTION_80();
          v17 = v14 - v13 + CGRectGetWidth(v184);
          v185.origin.x = OUTLINED_FUNCTION_80();
          v15 = v17 / CGRectGetWidth(v185);
          goto LABEL_4;
        case 3:
        case 4:
LABEL_4:
          v18 = 1.0;
          if ((v16 - 3) >= 2)
          {
            v162 = *&v15;
            if (v16 == 1)
            {
              v19 = v13;
            }

            else
            {
              v19 = *&v168;
            }

            if (v16 == 1)
            {
              v20 = v14;
            }

            else
            {
              v20 = *&v174;
            }

            v186.origin.x = OUTLINED_FUNCTION_80();
            v21 = CGRectGetHeight(v186) + v20 - v19;
            v187.origin.x = OUTLINED_FUNCTION_80();
            v18 = v21 / CGRectGetHeight(v187);
          }

          OUTLINED_FUNCTION_2_118(v5, v6, v7, v8, v9, v10, v11, v12, v149, v153, v157, v162, v168, v174, *&v179.m11, *&v179.m12, *&v179.m13, *&v179.m14, *&v179.m21, *&v179.m22, *&v179.m23, *&v179.m24, *&v179.m31, *&v179.m32, *&v179.m33, *&v179.m34, *&v179.m41, *&v179.m42, *&v179.m43, *&v179.m44, *&b.m11, *&b.m12, *&b.m13, *&b.m14, *&b.m21, *&b.m22, *&b.m23, *&b.m24, *&b.m31, *&b.m32, *&b.m33, *&b.m34, *&b.m41, *&b.m42, *&b.m43, *&b.m44, *&a.m11, *&a.m12, *&a.m13, *&a.m14, *&a.m21, *&a.m22, *&a.m23, *&a.m24, *&a.m31);
          OUTLINED_FUNCTION_1_136();
          OUTLINED_FUNCTION_3_109();
          v33 = MotionData.xTranslate(to:inverted:)(v22, v23, v24);
          goto LABEL_47;
        case 5:
          v129 = *(v183[0] + 48);
          OUTLINED_FUNCTION_2_118(v5, v6, v7, v8, v9, v10, v11, v12, v149, v153, v157, v162, v168, v174, *&v179.m11, *&v179.m12, *&v179.m13, *&v179.m14, *&v179.m21, *&v179.m22, *&v179.m23, *&v179.m24, *&v179.m31, *&v179.m32, *&v179.m33, *&v179.m34, *&v179.m41, *&v179.m42, *&v179.m43, *&v179.m44, *&b.m11, *&b.m12, *&b.m13, *&b.m14, *&b.m21, *&b.m22, *&b.m23, *&b.m24, *&b.m31, *&b.m32, *&b.m33, *&b.m34, *&b.m41, *&b.m42, *&b.m43, *&b.m44, *&a.m11, *&a.m12, *&a.m13, *&a.m14, *&a.m21, *&a.m22, *&a.m23, *&a.m24, *&a.m31);
          OUTLINED_FUNCTION_1_136();
          OUTLINED_FUNCTION_3_109();
          v33 = MotionData.xTranslate(to:inverted:)(v130, v131, v132);
          v18 = v129;
          goto LABEL_47;
        default:
          v198.origin.x = OUTLINED_FUNCTION_80();
          CGRectGetWidth(v198);
          v199.origin.x = OUTLINED_FUNCTION_80();
          v91 = CGRectGetWidth(v199);
          OUTLINED_FUNCTION_4_77(v91);
          if (v82 != v83)
          {
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          OUTLINED_FUNCTION_2_118(v92, v93, v94, v95, v96, v97, v98, v99, v149, v153, v157, v162, v168, v174, *&v179.m11, *&v179.m12, *&v179.m13, *&v179.m14, *&v179.m21, *&v179.m22, *&v179.m23, *&v179.m24, *&v179.m31, *&v179.m32, *&v179.m33, *&v179.m34, *&v179.m41, *&v179.m42, *&v179.m43, *&v179.m44, *&b.m11, *&b.m12, *&b.m13, *&b.m14, *&b.m21, *&b.m22, *&b.m23, *&b.m24, *&b.m31, *&b.m32, *&b.m33, *&b.m34, *&b.m41, *&b.m42, *&b.m43, *&b.m44, *&a.m11, *&a.m12, *&a.m13, *&a.m14, *&a.m21, *&a.m22, *&a.m23, *&a.m24, *&a.m31);
          OUTLINED_FUNCTION_3_109();
          v175 = MotionData.xTranslate(to:inverted:)(v100, v101, v102);
          v200.origin.x = OUTLINED_FUNCTION_80();
          v103 = CGRectGetHeight(v200) * v13;
          v201.origin.x = OUTLINED_FUNCTION_80();
          if ((v103 - CGRectGetHeight(v201)) * 1.0 < 0.0)
          {
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
            return;
          }

          v18 = v13;
          v33 = *&v175;
LABEL_47:
          OUTLINED_FUNCTION_2_118(v25, v26, v27, v28, v29, v30, v31, v32, v150, v154, v158, v163, v169, v175, *&v179.m11, *&v179.m12, *&v179.m13, *&v179.m14, *&v179.m21, *&v179.m22, *&v179.m23, *&v179.m24, *&v179.m31, *&v179.m32, *&v179.m33, *&v179.m34, *&v179.m41, *&v179.m42, *&v179.m43, *&v179.m44, *&b.m11, *&b.m12, *&b.m13, *&b.m14, *&b.m21, *&b.m22, *&b.m23, *&b.m24, *&b.m31, *&b.m32, *&b.m33, *&b.m34, *&b.m41, *&b.m42, *&b.m43, *&b.m44, *&a.m11, *&a.m12, *&a.m13, *&a.m14, *&a.m21, *&a.m22, *&a.m23, *&a.m24, *&a.m31);
          OUTLINED_FUNCTION_1_136();
          OUTLINED_FUNCTION_3_109();
          MotionData.yTranslate(to:inverted:)(v133, v134, v135);
          v136 = OUTLINED_FUNCTION_6_73();
          CATransform3DMakeScale(v137, v136, v18, v138);
          CATransform3DMakeTranslation(&b, v33, v0, 1.0);
          memcpy(&a, __dst, sizeof(a));
          CATransform3DConcat(&v179, &a, &b);
          [v3 setTransform_];
LABEL_53:

LABEL_54:
          OUTLINED_FUNCTION_8_48();
          return;
      }
  }
}

uint64_t SplitView.model.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI9SplitView_model;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), 0xB9uLL);
  memcpy(a1, (v1 + v3), 0xB9uLL);
  return sub_1D80BC538(__dst, v5);
}

uint64_t sub_1D80BC538(uint64_t a1, uint64_t a2)
{
  sub_1D80BC59C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D80BC59C()
{
  if (!qword_1ECA10870)
  {
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA10870);
    }
  }
}

uint64_t sub_1D80BC5EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI9SplitView_model;
  swift_beginAccess();
  memcpy(__dst, (v3 + v4), 0xB9uLL);
  memcpy(a2, (v3 + v4), 0xB9uLL);
  return sub_1D80BC538(__dst, v6);
}

id sub_1D80BC668(void *__src)
{
  memcpy(__dst, __src, 0xB9uLL);
  sub_1D80BC538(__dst, &v3);
  return SplitView.model.setter(__src);
}

id SplitView.model.setter(const void *a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI9SplitView_model;
  swift_beginAccess();
  memcpy(__dst, &v1[v3], 0xB9uLL);
  memcpy(&v1[v3], a1, 0xB9uLL);
  sub_1D80BC748(__dst);
  return [v1 setNeedsDisplay];
}

uint64_t sub_1D80BC748(uint64_t a1)
{
  sub_1D80BC59C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id (*SplitView.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D80BC808;
}

id sub_1D80BC808(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsDisplay];
  }

  return result;
}

id SplitView.__allocating_init(model:frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_80();
  return SplitView.init(model:frame:)();
}

id SplitView.init(model:frame:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC5TeaUI9SplitView_model;
  sub_1D80BC984(__src);
  memcpy((v0 + v4), __src, 0xB9uLL);
  memcpy(__dst, v2, sizeof(__dst));
  nullsub_1();
  swift_beginAccess();
  memcpy(v11, (v0 + v4), 0xB9uLL);
  memcpy((v0 + v4), __dst, 0xB9uLL);
  sub_1D80BC748(v11);
  v5 = OUTLINED_FUNCTION_80();
  return objc_msgSendSuper2(v6, v7, v5, v0, ObjectType);
}

double sub_1D80BC984(uint64_t a1)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 0x1FFFFFFFELL;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  return result;
}

id SplitView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id SplitView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC5TeaUI9SplitView_model;
  sub_1D80BC984(__src);
  memcpy((v0 + v2), __src, 0xB9uLL);
  v3 = OUTLINED_FUNCTION_80();
  return objc_msgSendSuper2(v4, v5, v3, v0, ObjectType);
}

void sub_1D80BCAB0()
{
  v1 = OBJC_IVAR____TtC5TeaUI9SplitView_model;
  sub_1D80BC984(__src);
  memcpy((v0 + v1), __src, 0xB9uLL);
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall SplitView.draw(_:)(__C::CGRect a1)
{
  OUTLINED_FUNCTION_155();
  v17 = v1;
  ObjectType = swift_getObjectType();
  v2 = OUTLINED_FUNCTION_80();
  objc_msgSendSuper2(v3, v4, v2);
  [v1 bounds];
  v6 = v5;
  v8 = v7;
  v9 = OBJC_IVAR____TtC5TeaUI9SplitView_model;
  swift_beginAccess();
  memcpy(__dst, &v1[v9], 0xB9uLL);
  memcpy(v22, &v1[v9], 0xB9uLL);
  if (sub_1D80BCD50(v22) != 1)
  {
    memcpy(v16, __dst, 0xB9uLL);
    sub_1D80BCD68(v16, v15);
    v10 = UIGraphicsGetCurrentContext();
    if (v10)
    {
      v11 = v10;
      if (v6 > 0.0 && v8 > 0.0)
      {
        *__src = *&v22[1];
        sub_1D80BCDC4(__src, v15, v6, v8, v22[0], v22[3]);
        v20[0] = v15[0];
        v20[1] = v15[1];
        v20[2] = v15[2];
        v20[3] = v15[3];
        v19[0] = v15[4];
        v19[1] = v15[5];
        v19[2] = v15[6];
        v19[3] = v15[7];
        memcpy(__src, &v22[4], 0x49uLL);
        sub_1D8081474(&v22[4], v13);
        sub_1D80BCE7C(__src, v20, v11, v6, v8);
        memcpy(v13, __src, 0x49uLL);
        sub_1D80BD258(v13);
        memcpy(v12, &v22[14], 0x49uLL);
        sub_1D8081474(&v22[14], __src);
        sub_1D80BCE7C(v12, v19, v11, v6, v8);

        sub_1D80BC748(__dst);
        memcpy(__src, v12, 0x49uLL);
        sub_1D80BD258(__src);
        return;
      }
    }

    sub_1D80BC748(__dst);
  }
}

uint64_t sub_1D80BCD50(uint64_t a1)
{
  if ((*(a1 + 80) >> 1) > 0x80000000)
  {
    return -(*(a1 + 80) >> 1);
  }

  else
  {
    return 0;
  }
}

double sub_1D80BCDC4@<D0>(double *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v9 = *a1 + (a3 - *a1 - a1[1]) * a5;
  v10 = a4 * 0.5;
  v11 = a6 * 3.14159265 / 180.0;
  if (a6 == 0.0)
  {
    v11 = 6.28318531;
  }

  v12 = tan(v11);
  *a2 = 0;
  *(a2 + 8) = 0;
  v13 = v10 / v12;
  v14 = v13 + v9;
  *(a2 + 16) = v13 + v9;
  *(a2 + 24) = 0;
  result = v9 - v13;
  *(a2 + 32) = result;
  *(a2 + 40) = a4;
  *(a2 + 48) = 0;
  *(a2 + 56) = a4;
  *(a2 + 64) = v14;
  *(a2 + 72) = 0;
  *(a2 + 80) = a3;
  *(a2 + 88) = 0;
  *(a2 + 96) = a3;
  *(a2 + 104) = a4;
  *(a2 + 112) = result;
  *(a2 + 120) = a4;
  return result;
}

void sub_1D80BCE7C(uint64_t a1, double *a2, CGContextRef c, CGFloat a4, double a5)
{
  v8 = *a1;
  v9 = *(a1 + 24);
  v10 = *(a1 + 40);
  v26 = *(a1 + 32);
  v25 = *(a1 + 48);
  v24 = *(a1 + 16);
  v11 = *(a1 + 72);
  CGContextSaveGState(c);
  v28 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  [v28 moveToPoint_];
  [v28 addLineToPoint_];
  [v28 addLineToPoint_];
  [v28 addLineToPoint_];
  [v28 closePath];
  [v28 addClip];
  if (v11 < 0)
  {
    v13 = [v23 traitCollection];
    GradientDescriptor.resolvedCGColors(with:)(v13);

    type metadata accessor for CGColor();
    v14 = sub_1D8191304();

    v15 = GradientDescriptor.cgLocations.getter();
    if (v15)
    {
      v16 = (v15 + 32);
    }

    else
    {
      v16 = 0;
    }

    v17 = CGGradientCreateWithColors(0, v14, v16);

    if (!v17)
    {
      goto LABEL_18;
    }

    if (v25)
    {
      v12 = c;
      if (!(*&v26 | *&v9 | *&v24 | *&v10))
      {
        v20 = 0.5;
        v19 = a4 * 0.5;
        goto LABEL_14;
      }

      v18 = *&v26 | *&v9 | *&v10;
      if (*&v24 == 1 && !v18)
      {
        v19 = a4 * 0.5;
        v20 = 0.0;
LABEL_14:
        v22 = a5 * v20;
        v21 = 1.0;
LABEL_15:
        a4 = v19;
        goto LABEL_16;
      }

      if (*&v24 == 2 && !v18)
      {
        v19 = a4 * 0.5;
        v21 = 0.0;
        v22 = a5;
        goto LABEL_15;
      }

      if (*&v24 != 3 || v18)
      {
        if (*&v24 != 4 || v18)
        {
          if (*&v24 != 5 || v18)
          {
            if (*&v24 != 6 || v18)
            {
              if (*&v24 != 7 || v18)
              {
                v21 = 0.0;
                v19 = a4;
                a4 = a4 * 0.0;
              }

              else
              {
                v21 = 0.0;
                v19 = a4 * 0.0;
              }

              v22 = a5;
              goto LABEL_16;
            }

            v22 = a5 * 0.0;
            v19 = a4;
            a4 = a4 * 0.0;
          }

          else
          {
            v19 = a4 * 0.0;
            v22 = a5 * 0.0;
          }

          v21 = 1.0;
        }

        else
        {
          v21 = 0.5;
          v22 = a5 * 0.5;
          v19 = a4;
          a4 = a4 * 0.0;
        }
      }

      else
      {
        v19 = a4 * 0.0;
        v21 = 0.5;
        v22 = a5 * 0.5;
      }
    }

    else
    {
      v19 = v24 * a4;
      v21 = v10;
      v22 = v9 * a5;
      a4 = v26 * a4;
      v12 = c;
    }

LABEL_16:
    v30.y = v21 * a5;
    v30.x = a4;
    CGContextDrawLinearGradient(v12, v17, *&v19, v30, 0);

    goto LABEL_17;
  }

  [v8 setFill];
  [v28 fill];
  v12 = c;
LABEL_17:
  CGContextRestoreGState(v12);
LABEL_18:
}

Swift::Void __swiftcall SplitView.prepareForReuse()()
{
  sub_1D80BC984(__src);
  memcpy(v0, __src, 0xB9uLL);
  SplitView.model.setter(v0);
}

id SplitView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1D80BD454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR____TtC5TeaUI19SwitchTableViewCell_onChange];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = OBJC_IVAR____TtC5TeaUI19SwitchTableViewCell_switchControl;
  *&v3[v6] = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCFD0]), sel_initWithFrame_);
  if (a3)
  {
    v7 = sub_1D8190EE4();
  }

  else
  {
    v7 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for SwitchTableViewCell();
  v8 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_, 1, v7);

  v9 = OBJC_IVAR____TtC5TeaUI19SwitchTableViewCell_switchControl;
  v10 = *&v8[OBJC_IVAR____TtC5TeaUI19SwitchTableViewCell_switchControl];
  v11 = v8;
  [v10 addTarget:v11 action:sel_valueChanged forControlEvents:4096];
  [*&v8[v9] setPreferredStyle_];
  [v11 setAccessoryView_];

  return v11;
}

void sub_1D80BD5B8()
{
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI19SwitchTableViewCell_onChange);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC5TeaUI19SwitchTableViewCell_switchControl;
  *(v0 + v2) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCFD0]), sel_initWithFrame_);
  sub_1D81923A4();
  __break(1u);
}

void sub_1D80BD668()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI19SwitchTableViewCell_onChange);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC5TeaUI19SwitchTableViewCell_onChange + 8);
    v3 = *(v0 + OBJC_IVAR____TtC5TeaUI19SwitchTableViewCell_switchControl);

    v1([v3 isOn]);

    sub_1D7E418F4(v1, v2);
  }
}

id sub_1D80BD744(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SwitchTableViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D80BD844(uint64_t a1, uint64_t a2)
{
  sub_1D7E328A8(0, &qword_1EDBB44D0, qword_1EDBB44D8, &protocol descriptor for BlueprintLayoutSectionDecorationItemType);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t BlueprintLayoutCollectionFactory.__deallocating_deinit()
{
  BlueprintLayoutCollectionFactory.deinit();
  OUTLINED_FUNCTION_19();

  return swift_deallocClassInstance();
}

uint64_t sub_1D80BD968(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 128);
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

uint64_t sub_1D80BD9A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t BlueprintViewportMotionData.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall setPreviewing(viewController:previewing:)(UIViewController *viewController, Swift::Bool previewing)
{
  OUTLINED_FUNCTION_4_78();
  sub_1D80BDB68();
  v4 = v3;
  v6 = OUTLINED_FUNCTION_12_1(v4, v5);
  if (v6)
  {
    sub_1D7E17C84(v29, v31);
    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    v14 = OUTLINED_FUNCTION_0_188();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_5_67(v6, v7, v8, v9, v10, v11, v12, v13, v25, v27, v29[0], v29[1], v30);
    v24 = OUTLINED_FUNCTION_3_110(v16, v17, v18, v19, v20, v21, v22, v23, v26, v28);
    if (v24)
    {
      [v24 setPreviewing_];
    }
  }
}

unint64_t sub_1D80BDB68()
{
  result = qword_1EDBAFF48;
  if (!qword_1EDBAFF48)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBAFF48);
  }

  return result;
}

uint64_t sub_1D80BDBC4(uint64_t a1)
{
  sub_1D80BDC20(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D80BDC20(uint64_t a1)
{
  if (!qword_1ECA0DD50)
  {
    sub_1D80BDB68();
    v1 = sub_1D8191E84();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA0DD50);
    }
  }
}

double sub_1D80BDC78@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

double ViewControllerPreviewable.previewInsets.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

void __swiftcall previewInsets(for:)(UIEdgeInsets_optional *__return_ptr retstr, UIViewController *a2)
{
  v19 = a2;
  sub_1D7E194D0();
  sub_1D80BDB68();
  v4 = a2;
  if (swift_dynamicCast())
  {
    sub_1D7E17C84(&v16, v20);
    v5 = v21;
    v6 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(v6 + 16))(&v16, v5, v6);
    v14 = v16;
    v15 = v17;
    v7 = v18;
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v8 = v14;
    v9 = v15;
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    sub_1D80BDBC4(&v16);
    v7 = 1;
    v10 = swift_dynamicCastObjCProtocolConditional();
    if (v10)
    {
      v11 = v10;
      if ([v10 respondsToSelector_])
      {
        [v11 previewInsets];
        v7 = 0;
        *(&v9 + 1) = v12;
        *(&v8 + 1) = v13;
      }

      else
      {
        v8 = 0uLL;
        v7 = 1;
        v9 = 0uLL;
      }
    }

    else
    {
      v9 = 0uLL;
      v8 = 0uLL;
    }
  }

  *&retstr->value.top = v8;
  *&retstr->value.bottom = v9;
  retstr->is_nil = v7;
}

double sub_1D80BDE00()
{
  v0.n128_f64[0] = sub_1D80BDC78(&v12);
  *&result = OUTLINED_FUNCTION_2_120(v1, v2, v3, v4, v5, v6, v7, v8, v0, v11, v9, v12, v13).n128_u64[0];
  return result;
}

double sub_1D80BDE34@<D0>(uint64_t a1@<X8>)
{
  ViewControllerPreviewable.previewInsets.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

id static Previewing.setPreviewing(viewController:previewing:)()
{
  OUTLINED_FUNCTION_4_78();
  sub_1D80BDB68();
  v2 = v1;
  v4 = OUTLINED_FUNCTION_12_1(v2, v3);
  if (v4)
  {
    sub_1D7E17C84(v27, v29);
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    v12 = OUTLINED_FUNCTION_0_188();
    v13(v12);
    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_5_67(v4, v5, v6, v7, v8, v9, v10, v11, v23, v25, v27[0], v27[1], v28);
    result = OUTLINED_FUNCTION_3_110(v15, v16, v17, v18, v19, v20, v21, v22, v24, v26);
    if (result)
    {
      return [result setPreviewing_];
    }
  }

  return result;
}

id Previewing.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Previewing.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Previewing.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double SearchToolbarItemConfiguration.toolbarItemDelegate.setter()
{
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_2_121(v2);
  *(v1 + 24) = v0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*SearchToolbarItemConfiguration.toolbarItemDelegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1D7F032D0;
}

uint64_t SearchToolbarItemConfiguration.__allocating_init(toolbarItemDelegate:)()
{
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_7_0();
  v0 = swift_allocObject();
  SearchToolbarItemConfiguration.init(toolbarItemDelegate:)();
  return v0;
}

uint64_t SearchToolbarItemConfiguration.init(toolbarItemDelegate:)()
{
  OUTLINED_FUNCTION_66_0();
  *(v1 + 24) = 0;
  v2 = swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_121(v2);
  *(v1 + 24) = v0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t SearchToolbarItemConfiguration.__deallocating_deinit()
{
  sub_1D7E166A0(v0 + 16);
  OUTLINED_FUNCTION_7_0();

  return swift_deallocClassInstance();
}

void SearchToolbarItem.__allocating_init(identifier:)()
{
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_7_0();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
}

uint64_t SearchToolbarItem.init(identifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t SearchToolbarItem.__deallocating_deinit()
{

  OUTLINED_FUNCTION_7_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D80BE2C4(uint64_t a1)
{
  result = sub_1D80BE370(&qword_1ECA10888, &protocol conformance descriptor for SearchToolbarItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D80BE32C(uint64_t a1)
{
  result = sub_1D80BE370(&qword_1ECA10890, &protocol conformance descriptor for SearchToolbarItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D80BE370(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchToolbarItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t BlueprintTraversalCollection.contains(indexPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BlueprintTraversalCollectionItem(255, *(a2 + 16), a3, a4);
  sub_1D8191484();
  sub_1D8190DB4();
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_10_51();
  v4 = sub_1D8191234();

  return v4 & 1;
}

uint64_t sub_1D80BE4C8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *v2;
  v4 = OUTLINED_FUNCTION_18_35();
  v8 = type metadata accessor for BlueprintTraversalCollectionItem(v4, v5, v6, v7);

  return a2(v3, v8);
}

uint64_t BlueprintTraversalCollection.subscript.getter(uint64_t a1, uint64_t a2)
{
  v4 = BlueprintTraversalCollection.startIndex.getter(a2);
  result = BlueprintTraversalCollection.endIndex.getter(a2);
  if (result < v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (v4 > a1 || result <= a1)
  {
    goto LABEL_10;
  }

  type metadata accessor for BlueprintTraversalCollectionItem(0, *(a2 + 16), v6, v7);

  return sub_1D81914C4();
}

Swift::Int __swiftcall BlueprintTraversalCollection.index(after:)(Swift::Int after)
{
  type metadata accessor for BlueprintTraversalCollectionItem(0, *(v1 + 16), v2, v3);

  return sub_1D8191424();
}

uint64_t sub_1D80BE68C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = BlueprintTraversalCollection.startIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D80BE6B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = BlueprintTraversalCollection.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_1D80BE6DC(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1D80BE750(v6, *a2, a3, v7);
  return sub_1D7E46A38;
}

void (*sub_1D80BE750(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v7 = type metadata accessor for BlueprintTraversalCollectionItem(0, *(a3 + 16), a3, a4);
  *a1 = v7;
  v8 = *(v7 - 8);
  a1[1] = v8;
  a1[2] = __swift_coroFrameAllocStub(*(v8 + 64));
  BlueprintTraversalCollection.subscript.getter(a2, a3);
  return sub_1D7E96864;
}

Swift::Int sub_1D80BE814@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = BlueprintTraversalCollection.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_1D80BE840(Swift::Int *a1)
{
  result = BlueprintTraversalCollection.index(after:)(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_1D80BE86C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *v2;
  sub_1D8190DB4();
  v5 = BlueprintTraversalCollection.startIndex.getter(a1);

  a2[1] = v5;
  return result;
}

uint64_t sub_1D80BE8C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1D80BE914(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

uint64_t BlueprintTraversalCollectionSection<A>.count.getter()
{
  v0 = OUTLINED_FUNCTION_18_35();
  type metadata accessor for BlueprintTraversalCollectionItem(v0, v1, v2, v3);

  return sub_1D8191414();
}

uint64_t BlueprintTraversalCollectionSection<A>.traversable(at:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = *(a2 + 16);
  v8 = type metadata accessor for BlueprintTraversalCollectionItem(0, v7, a3, a4);
  OUTLINED_FUNCTION_9();
  v10 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  sub_1D81914C4();
  a5[3] = v7;
  a5[4] = a3;
  __swift_allocate_boxed_opaque_existential_0(a5);
  OUTLINED_FUNCTION_3_0();
  (*(v14 + 16))();
  return (*(v10 + 8))(v13, v8);
}

uint64_t BlueprintTraversalCollection<A>.count.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BlueprintTraversalCollectionItem(255, *(a1 + 16), a3, a4);
  sub_1D8191484();
  sub_1D80BEC0C();
  sub_1D8190DB4();
  OUTLINED_FUNCTION_2_8();
  sub_1D81911E4();

  v4 = *(v6 + 16);

  return v4;
}

BOOL sub_1D80BEB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BlueprintTraversalCollectionItem(0, a3, a3, a4);
  v4 = sub_1D818E974();
  return sub_1D7F59BF8(&v6, v4);
}

void sub_1D80BEC0C()
{
  if (!qword_1EDBAE588)
  {
    v0 = sub_1D81916C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAE588);
    }
  }
}

uint64_t BlueprintTraversalCollection<A>.traversable(at:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v9 = *(a1 + 16);
  type metadata accessor for BlueprintTraversalCollectionItem(255, v9, a2, a3);
  sub_1D8191484();
  sub_1D8190DB4();
  OUTLINED_FUNCTION_4_79();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_51();
  v5 = sub_1D8192264();
  a4[3] = type metadata accessor for BlueprintTraversalCollectionSection(0, v9, v6, v7);
  result = swift_getWitnessTable();
  a4[4] = result;
  *a4 = v5;
  return result;
}

void BlueprintTraversalCollection<A>.firstTraversableIndexPath.getter()
{
  OUTLINED_FUNCTION_120();
  v3 = v2;
  v35 = v4;
  v5 = OUTLINED_FUNCTION_18_35();
  v38 = v6;
  v9 = type metadata accessor for BlueprintTraversalCollectionItem(v5, v6, v7, v8);
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_37();
  v16 = *v0;
  sub_1D8190DB4();
  v40 = sub_1D8191324();
  v36 = v3 + 8;
  v37 = v11 + 16;
  for (i = (v11 + 8); ; (*i)(v14, v9))
  {
    v18 = sub_1D8191414();
    v19 = v40;
    if (v40 == v18)
    {

      sub_1D818E994();
      OUTLINED_FUNCTION_8_1();
LABEL_11:
      __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
      OUTLINED_FUNCTION_100();
      return;
    }

    v20 = sub_1D81913E4();
    sub_1D81913A4();
    if (v20)
    {
      (*(v11 + 16))(v1, v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v19, v9);
      goto LABEL_5;
    }

    v21 = sub_1D8192204();
    if (v34 != 8)
    {
      break;
    }

    v39 = v21;
    v22 = OUTLINED_FUNCTION_15_36();
    v23(v22);
    swift_unknownObjectRelease();
LABEL_5:
    sub_1D8191454();
    (*(v11 + 32))(v14, v1, v9);
    if ((*(v3 + 8))(v38, v3))
    {

      v28 = *(v9 + 28);
      v29 = sub_1D818E994();
      OUTLINED_FUNCTION_8();
      v31 = &v14[v28];
      v32 = v35;
      (*(v30 + 16))(v35, v31, v29);
      (*i)(v14, v9);
      v24 = v32;
      v25 = 0;
      v26 = 1;
      v27 = v29;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void BlueprintTraversalCollection<A>.lastTraversableIndexPath.getter()
{
  OUTLINED_FUNCTION_120();
  v3 = v2;
  v31[1] = v4;
  v5 = OUTLINED_FUNCTION_18_35();
  v32 = v6;
  v9 = type metadata accessor for BlueprintTraversalCollectionItem(v5, v6, v7, v8);
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[0] = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_37();
  v33 = *v0;
  v16 = sub_1D8191484();
  sub_1D8190DB4();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1DA713090](&v34, v16, WitnessTable);
  v18 = v34;
  sub_1D8190DB4();
  v19 = sub_1D8191414();

  v35 = v19;
  v31[2] = v3 + 8;
  v31[3] = v11 + 16;
  for (i = (v11 + 8); ; (*i)(v14, v9))
  {
    if (v19 == sub_1D8191324())
    {

      sub_1D818E994();
      OUTLINED_FUNCTION_8_1();
      goto LABEL_10;
    }

    sub_1D8191464();
    v19 = v35;
    v21 = sub_1D81913E4();
    sub_1D81913A4();
    if (v21)
    {
      (*(v11 + 16))(v1, v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v19, v9);
      goto LABEL_5;
    }

    v22 = sub_1D8192204();
    if (v31[0] != 8)
    {
      break;
    }

    v34 = v22;
    v23 = OUTLINED_FUNCTION_15_36();
    v24(v23);
    swift_unknownObjectRelease();
LABEL_5:
    (*(v11 + 32))(v14, v1, v9);
    if ((*(v3 + 8))(v32, v3))
    {

      sub_1D818E994();
      OUTLINED_FUNCTION_8();
      v25 = OUTLINED_FUNCTION_16_5();
      v26(v25);
      (*i)(v14, v9);
      v27 = OUTLINED_FUNCTION_6_75();
LABEL_10:
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
      OUTLINED_FUNCTION_100();
      return;
    }
  }

  __break(1u);
}

void BlueprintTraversalCollection<A>.nextTraversableIndexPath(from:)()
{
  OUTLINED_FUNCTION_120();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = *(v8 + 16);
  v11 = type metadata accessor for BlueprintTraversalCollectionItem(0, v9, v2, v10);
  OUTLINED_FUNCTION_9();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_37();
  v36 = *v0;
  v31 = v9;
  v32 = v3;
  v33 = v9;
  v34 = v3;
  v35 = v5;
  OUTLINED_FUNCTION_56_0();
  sub_1D8191484();
  sub_1D8190DB4();
  OUTLINED_FUNCTION_4_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_51();
  sub_1D81917D4();

  if (v38)
  {
    goto LABEL_8;
  }

  if (!__OFADD__(v37, 1))
  {
    v18 = v37 + 1;
    if (v18 < sub_1D8191414())
    {
      v30[0] = v7;
      OUTLINED_FUNCTION_16_5();
      sub_1D81914B4();
      v20 = v19;
      v37 = sub_1D8191F44();
      v30[2] = v13 + 32;
      v30[3] = v13 + 16;
      v30[1] = v32 + 8;
      for (i = (v13 + 8); ; (*i)(v16, v11))
      {
        OUTLINED_FUNCTION_13_37();
        v22 = sub_1D8191F74();
        v23 = v37;
        if (v37 == v22)
        {
          swift_unknownObjectRelease();
          sub_1D818E994();
          goto LABEL_9;
        }

        OUTLINED_FUNCTION_13_37();
        sub_1D8191F64();
        sub_1D8191F54();
        (*(v13 + 16))(v1, v20 + *(v13 + 72) * v23, v11);
        sub_1D8191F84();
        (*(v13 + 32))(v16, v1, v11);
        if ((*(v32 + 8))(v31))
        {
          break;
        }
      }

      swift_unknownObjectRelease();
      sub_1D818E994();
      OUTLINED_FUNCTION_8();
      v28 = OUTLINED_FUNCTION_16_5();
      v29(v28);
      (*i)(v16, v11);
      v24 = OUTLINED_FUNCTION_6_75();
      goto LABEL_10;
    }

LABEL_8:
    sub_1D818E994();
LABEL_9:
    OUTLINED_FUNCTION_8_1();
LABEL_10:
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    OUTLINED_FUNCTION_100();
    return;
  }

  __break(1u);
}

void BlueprintTraversalCollection<A>.previousTraversableIndexPath(from:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = *(v7 + 16);
  v10 = type metadata accessor for BlueprintTraversalCollectionItem(0, v8, v1, v9);
  OUTLINED_FUNCTION_9();
  v33 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v31 - v13;
  v15 = *v0;
  v37 = v4;
  v38 = v15;
  v32 = v8;
  v35 = v8;
  v36 = v2;
  v34 = v2;
  OUTLINED_FUNCTION_56_0();
  sub_1D8191484();
  sub_1D8190DB4();
  OUTLINED_FUNCTION_4_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_51();
  sub_1D81917D4();

  if (v43)
  {
    sub_1D818E994();
  }

  else
  {
    if (v42 < 0)
    {
      __break(1u);
      return;
    }

    v31[1] = v6;
    v20 = sub_1D81914B4();
    v38 = v20;
    v39 = v21;
    v40 = v22;
    v41 = v23;
    OUTLINED_FUNCTION_56_0();
    v24 = sub_1D8191FA4();
    v31[0] = v20;
    swift_unknownObjectRetain();
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x1DA713090](&v42, v24, WitnessTable);
    v26 = v43;
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_7_61();
    v27 = sub_1D8191F74();
    swift_unknownObjectRelease();
    v44 = v27;
    v31[2] = v33 + 16;
    for (i = (v33 + 8); ; (*i)(v14, v10))
    {
      OUTLINED_FUNCTION_7_61();
      if (v27 == sub_1D8191F44())
      {
        break;
      }

      sub_1D8191F94();
      v27 = v44;
      OUTLINED_FUNCTION_7_61();
      sub_1D8191F64();
      sub_1D8191F54();
      (*(v33 + 16))(v14, v26 + *(v33 + 72) * v27, v10);
      if ((*(v34 + 8))(v32))
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_1D818E994();
        OUTLINED_FUNCTION_8();
        v29 = OUTLINED_FUNCTION_16_5();
        v30(v29);
        (*i)(v14, v10);
        v16 = OUTLINED_FUNCTION_6_75();
        goto LABEL_10;
      }
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1D818E994();
  }

  OUTLINED_FUNCTION_8_1();
LABEL_10:
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  OUTLINED_FUNCTION_100();
}

void BlueprintTraversalCollection<A>.firstTraversableIndexPath(from:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = *(v7 + 16);
  v10 = type metadata accessor for BlueprintTraversalCollectionItem(255, v8, v1, v9);
  OUTLINED_FUNCTION_56_0();
  v11 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v13 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - v15;
  v26 = *v0;
  v25[2] = v8;
  v25[3] = v2;
  v25[4] = v4;
  OUTLINED_FUNCTION_56_0();
  sub_1D8191484();
  sub_1D8190DB4();
  OUTLINED_FUNCTION_4_79();
  swift_getWitnessTable();
  v26 = sub_1D8192264();
  OUTLINED_FUNCTION_4_7();
  swift_getWitnessTable();
  sub_1D8191844();

  if (__swift_getEnumTagSinglePayload(v16, 1, v10) == 1)
  {
    (*(v13 + 8))(v16, v11);
    sub_1D818E994();
    OUTLINED_FUNCTION_8_1();
  }

  else
  {
    v21 = *(v10 + 28);
    v22 = sub_1D818E994();
    OUTLINED_FUNCTION_8();
    (*(v23 + 16))(v6, &v16[v21], v22);
    OUTLINED_FUNCTION_3_0();
    (*(v24 + 8))(v16, v10);
    v17 = v6;
    v18 = 0;
    v19 = 1;
    v20 = v22;
  }

  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D80BFBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = a1 + *(type metadata accessor for BlueprintTraversalCollectionItem(0, a3, a3, a4) + 28);
  if (sub_1D7EB0860(sub_1D7EB0ED8, v9, a2))
  {
    v7 = (*(a4 + 8))(a3, a4);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void BlueprintTraversalCollection<A>.traversable(at:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = *(v7 + 16);
  v10 = type metadata accessor for BlueprintTraversalCollectionItem(255, v8, v1, v9);
  OUTLINED_FUNCTION_56_0();
  v11 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v13 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v19 - v15;
  v19[7] = *v0;
  v19[2] = v8;
  v19[3] = v2;
  v19[4] = v4;
  OUTLINED_FUNCTION_56_0();
  sub_1D8191484();
  sub_1D8190DB4();
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_10_51();
  sub_1D81911C4();

  if (__swift_getEnumTagSinglePayload(v16, 1, v10) == 1)
  {
    (*(v13 + 8))(v16, v11);
    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
  }

  else
  {
    *(v6 + 24) = v8;
    *(v6 + 32) = v2;
    __swift_allocate_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_3_0();
    (*(v17 + 16))();
    OUTLINED_FUNCTION_3_0();
    (*(v18 + 8))(v16, v10);
  }

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D80BFEF8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1D818E994();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v13 = v8;
  v14 = *(v6 + 64) + v12;
  if (a2 <= v11)
  {
LABEL_25:
    if (v7 >= v10)
    {
      v22 = a1;
      v10 = v7;
      v13 = v5;
    }

    else
    {
      v22 = ((a1 + v14) & ~v12);
    }

    return __swift_getEnumTagSinglePayload(v22, v10, v13);
  }

  v15 = (v14 & ~v12) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_24;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 2:
        v21 = *a1;
        break;
      case 3:
        v21 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v21 = *a1;
        break;
      default:
        v21 = *a1;
        break;
    }
  }

  else
  {
    v21 = 0;
  }

  return v11 + (v21 | v19) + 1;
}

void sub_1D80C0118(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_1D818E994();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v11 + 80);
  v15 = *(v8 + 64) + v14;
  v16 = (v15 & ~v14) + *(*(v10 - 8) + 64);
  v17 = 8 * v16;
  if (a3 <= v13)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v13 + ~(-1 << v17)) >> v17) + 1;
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

  if (v13 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 >= v12)
          {
            v24 = a1;
            v25 = a2;
            v12 = v9;
            v10 = v7;
          }

          else
          {
            v24 = (&a1[v15] & ~v14);
            v25 = a2;
          }

          __swift_storeEnumTagSinglePayload(v24, v25, v12, v10);
        }

        break;
    }
  }

  else
  {
    v19 = ~v13 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t FloatingTabBarNavigationVisibility.hashValue.getter(char a1)
{
  sub_1D81927E4();
  MEMORY[0x1DA714A00](a1 & 1);
  return sub_1D8192824();
}

uint64_t sub_1D80C04D4(uint64_t a1)
{
  v2 = *v1;
  sub_1D81927E4();
  FloatingTabBarNavigationVisibility.hash(into:)(v4, v2);
  return sub_1D8192824();
}

unint64_t sub_1D80C051C()
{
  result = qword_1ECA10898;
  if (!qword_1ECA10898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10898);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FloatingTabBarNavigationVisibility(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D80C064C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1D81920A4();
  }

  else
  {
    return *(a1 + 16);
  }
}

void sub_1D80C066C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_1D8190DB4();
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t BlueprintInfiniteScrollManager.__allocating_init(infiniteScroll:log:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for BlueprintInfiniteScroll(0);
  v5 = OUTLINED_FUNCTION_50(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  sub_1D7E33AB4(a1, v7 - v6);
  v9 = OUTLINED_FUNCTION_4_80();
  BlueprintInfiniteScrollManager.init(infiniteScroll:maxInflightRequests:log:)(v8, 0x7FFFFFFFFFFFFFFFLL, a2);
  sub_1D7E306A8(a1);
  return v9;
}

uint64_t BlueprintInfiniteScrollManager.__allocating_init(infiniteScroll:maxInflightRequests:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlueprintInfiniteScroll(0);
  v5 = OUTLINED_FUNCTION_50(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  sub_1D7E33AB4(a1, v7 - v6);
  if (qword_1EDBB1B60 != -1)
  {
    OUTLINED_FUNCTION_2_122(&qword_1EDBB1B60);
  }

  v9 = qword_1EDBC6040;
  v10 = swift_allocObject();
  BlueprintInfiniteScrollManager.init(infiniteScroll:maxInflightRequests:log:)(v8, a2, v9);
  sub_1D7E306A8(a1);
  return v10;
}

uint64_t BlueprintInfiniteScrollManager.__allocating_init(infiniteScroll:maxInflightRequests:log:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OUTLINED_FUNCTION_4_80();
  BlueprintInfiniteScrollManager.init(infiniteScroll:maxInflightRequests:log:)(a1, a2, a3);
  return v6;
}

uint64_t sub_1D80C089C(_BYTE *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v11 = v7;
  v78 = a1;
  v79 = a2;
  sub_1D8190DB4();
  sub_1D8161794(sub_1D80C17A8, v77);
  v18 = v79;
  v74 = v11;
  v75 = a3;
  v73 = OBJC_IVAR____TtC5TeaUI30BlueprintInfiniteScrollManager_direction;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  if (*a1)
  {
    if (*(*&v11 + OBJC_IVAR____TtC5TeaUI30BlueprintInfiniteScrollManager_direction))
    {
      MaxY = CGRectGetMaxY(*&v19);
    }

    else
    {
      MaxY = CGRectGetMinY(*&v19);
    }
  }

  else if (*(*&v11 + OBJC_IVAR____TtC5TeaUI30BlueprintInfiniteScrollManager_direction))
  {
    MaxY = CGRectGetMaxX(*&v19);
  }

  else
  {
    MaxY = CGRectGetMinX(*&v19);
  }

  v24 = MaxY;
  v25 = *(v18 + 16);
  if (v25)
  {
    v76 = *a1;
    v26 = (v18 + 72);
    v27 = MEMORY[0x1E69E7CC0];
    v28 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = *(v26 - 5);
      v8 = *(v26 - 4);
      v29 = *(v26 - 3);
      v30 = *(v26 - 2);
      v18 = *(v26 - 1);
      v11 = *v26;
      sub_1D8190DB4();
      if (v76)
      {
        if (v30 <= v24)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D7EB8980();
            v28 = v37;
          }

          v31 = *(v28 + 16);
          v9 = v31 + 1;
          if (v31 >= *(v28 + 24) >> 1)
          {
LABEL_36:
            sub_1D7EB8980();
            v32 = v39;
            v28 = v39;
            goto LABEL_29;
          }

          v32 = v28;
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D7EB8980();
            v27 = v34;
          }

          v31 = *(v27 + 16);
          v9 = v31 + 1;
          if (v31 >= *(v27 + 24) >> 1)
          {
LABEL_33:
            sub_1D7EB8980();
            v32 = v36;
            v27 = v36;
            goto LABEL_29;
          }

          v32 = v27;
        }
      }

      else if (v29 <= v24)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v32 = v28;
        }

        else
        {
          sub_1D7EB8980();
          v32 = v38;
        }

        v31 = *(v32 + 16);
        v9 = v31 + 1;
        if (v31 >= *(v32 + 24) >> 1)
        {
          goto LABEL_36;
        }

        v28 = v32;
      }

      else
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v32 = v27;
        }

        else
        {
          sub_1D7EB8980();
          v32 = v35;
        }

        v31 = *(v32 + 16);
        v9 = v31 + 1;
        if (v31 >= *(v32 + 24) >> 1)
        {
          goto LABEL_33;
        }

        v27 = v32;
      }

LABEL_29:
      v26 += 6;
      *(v32 + 16) = v9;
      v33 = v32 + 48 * v31;
      *(v33 + 32) = v10;
      *(v33 + 40) = v8;
      *(v33 + 48) = v29;
      *(v33 + 56) = v30;
      *(v33 + 64) = v18;
      *(v33 + 72) = v11;
      if (!--v25)
      {
        goto LABEL_38;
      }
    }
  }

  v27 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
LABEL_38:

  if ((*(*&v74 + v73) & 1) == 0)
  {
    v40 = v75;
    v53 = sub_1D80C116C(v75, v27);
    v57 = (v56 >> 1) - *&v55;
    if (__OFSUB__(v56 >> 1, *&v55))
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v46 = __OFSUB__(v75, v57);
    v58 = v75 - v57;
    if (v46)
    {
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      swift_unknownObjectRelease();
      goto LABEL_42;
    }

    v18 = v53;
    v27 = v54;
    v11 = v55;
    v8 = v56;
    v40 = sub_1D80C1200(v58 & ~(v58 >> 63), v28);
    v28 = v59;
    v9 = v60;
    v10 = v61;
    if (v61)
    {
      sub_1D81926B4();
      swift_unknownObjectRetain_n();
      v68 = swift_dynamicCastClass();
      if (!v68)
      {
        swift_unknownObjectRelease();
        v68 = MEMORY[0x1E69E7CC0];
      }

      v69 = *(v68 + 16);

      if (__OFSUB__(v10 >> 1, v9))
      {
        goto LABEL_67;
      }

      if (v69 == (v10 >> 1) - v9)
      {
        v52 = swift_dynamicCastClass();
        if (!v52)
        {
          swift_unknownObjectRelease();
          v52 = MEMORY[0x1E69E7CC0];
        }

        goto LABEL_60;
      }

      swift_unknownObjectRelease();
    }

    sub_1D7F765F0(v40, v28, v9, v10);
    v52 = v62;
LABEL_60:
    v65 = v18;
    v66 = v27;
    v67 = *&v11;
    goto LABEL_61;
  }

  v40 = v75;
  v41 = sub_1D80C1200(v75, v28);
  v45 = (v44 >> 1) - v43;
  if (__OFSUB__(v44 >> 1, v43))
  {
    __break(1u);
    goto LABEL_63;
  }

  v46 = __OFSUB__(v75, v45);
  v47 = v75 - v45;
  if (v46)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v18 = v41;
  v11 = v42;
  v28 = v43;
  v8 = v44;
  v40 = sub_1D80C116C(v47 & ~(v47 >> 63), v27);
  v27 = v48;
  v9 = v49;
  v10 = v50;
  if (v50)
  {
    sub_1D81926B4();
    swift_unknownObjectRetain_n();
    v63 = swift_dynamicCastClass();
    if (!v63)
    {
      swift_unknownObjectRelease();
      v63 = MEMORY[0x1E69E7CC0];
    }

    v64 = *(v63 + 16);

    if (!__OFSUB__(v10 >> 1, v9))
    {
      if (v64 == (v10 >> 1) - v9)
      {
        v52 = swift_dynamicCastClass();
        if (!v52)
        {
          swift_unknownObjectRelease();
          v52 = MEMORY[0x1E69E7CC0];
        }

        goto LABEL_53;
      }

      goto LABEL_68;
    }

    goto LABEL_66;
  }

LABEL_42:
  sub_1D7F765F0(v40, v27, v9, v10);
  v52 = v51;
LABEL_53:
  v65 = v18;
  v66 = *&v11;
  v67 = v28;
LABEL_61:
  sub_1D80C1298(v65, v66, v67, v8, v52);
  v71 = v70;
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v71;
}

double sub_1D80C0E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v7 = type metadata accessor for BlueprintInfiniteScroll(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v29 = v9;
    v30 = v7;
    v13 = *(Strong + OBJC_IVAR____TtC5TeaUI30BlueprintInfiniteScrollManager_log);
    sub_1D7E30644(0, &qword_1EDBBE100, sub_1D7F06938, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D819FAC0;
    v15 = *a4;
    v16 = *(a4 + 8);
    v17 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    v18 = sub_1D7E13BF4();
    *(v14 + 64) = v18;
    v31 = v16;
    v32 = v15;
    *(v14 + 32) = v15;
    *(v14 + 40) = v16;
    v19 = v13;
    sub_1D80C16F8(a4, v34);
    v20 = sub_1D80D6B60(v5);
    *(v14 + 96) = v17;
    *(v14 + 104) = v18;
    *(v14 + 72) = v20;
    *(v14 + 80) = v21;
    v22 = sub_1D81919E4();
    sub_1D818FD44("Blueprint infinite scroll manager completed request %{public}@, result=%{public}@", 81, 2, &dword_1D7DFF000, v19, v22, v14);

    swift_beginAccess();
    sub_1D800C0EC(*(a1 + 16), *(a1 + 24));

    sub_1D800C438(a1);
    swift_endAccess();

    if (v5 == 2)
    {
      goto LABEL_8;
    }

    v24 = v31;
    v23 = v32;
    if ((v5 & 1) == 0)
    {
      v25 = v29;
      sub_1D818F154();
      v26 = *(v25 + *(v30 + 28));
      sub_1D8190DB4();
      sub_1D7E306A8(v25);
      LOBYTE(v25) = sub_1D7F28578(v23, v24, v26);

      if (v25)
      {
        v33 = *(a4 + 32);
        swift_beginAccess();
        sub_1D80C17D4();
        sub_1D80C182C(&qword_1EDBB3430, sub_1D80C17D4, MEMORY[0x1E69E5FB8]);
        sub_1D818E834();
        swift_endAccess();
      }
    }

    if (!swift_unknownObjectWeakLoadStrong())
    {
LABEL_8:
    }

    else
    {
      v27 = *(v12 + 24);
      ObjectType = swift_getObjectType();
      (*(v27 + 8))(v12, v23, v24, ObjectType, v27);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1D80C1134(char a1)
{
  if (a1)
  {
    return 0x647261776B636162;
  }

  else
  {
    return 0x64726177726F66;
  }
}

uint64_t sub_1D80C116C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1D8096AD8();
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
      sub_1D80C066C(0, v5, a2);
      v7 = v6;

      return v7;
    }
  }

  __break(1u);
  return result;
}

int64_t sub_1D80C1200(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1D8096AD8();
    if (v4)
    {
      result = 0;
    }

    if (v3 >= result)
    {
      sub_1D80C066C(result, v3, a2);
      v6 = v5;

      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_1D80C1298(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else if (!__OFADD__(*(a5 + 16), (a4 >> 1) - a3))
  {
    sub_1D7EB8980();
    v8 = swift_unknownObjectRetain();
    sub_1D7F0A5C0(v8, a2, a3, a4);
    v9 = sub_1D8190DB4();
    sub_1D7F0A52C(v9);
    return;
  }

  __break(1u);
}

uint64_t sub_1D80C134C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D81924B4();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D80C13C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D80C134C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D80C13F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D80C1134(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t BlueprintInfiniteScrollManager.deinit()
{
  sub_1D7E166A0(v0 + 16);

  v1 = OBJC_IVAR____TtC5TeaUI30BlueprintInfiniteScrollManager_rangeCache;
  sub_1D818E8B4();
  OUTLINED_FUNCTION_8();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t BlueprintInfiniteScrollManager.__deallocating_deinit()
{
  BlueprintInfiniteScrollManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BlueprintInfiniteScrollManager(uint64_t a1)
{
  result = qword_1EDBB6018;
  if (!qword_1EDBB6018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BlueprintInfiniteScrollManager.ScrollDirection(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D80C1698()
{
  result = qword_1ECA108A0;
  if (!qword_1ECA108A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA108A0);
  }

  return result;
}

BOOL sub_1D80C17A8(uint64_t a1, uint64_t a2)
{
  if (**(v2 + 16))
  {
    return *(a1 + 24) < *(a2 + 24);
  }

  else
  {
    return *(a1 + 16) < *(a2 + 16);
  }
}

void sub_1D80C17D4()
{
  if (!qword_1EDBB3438)
  {
    v0 = sub_1D8190EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB3438);
    }
  }
}

uint64_t sub_1D80C182C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double MiniMastheadBarCompressionAnimator.topOffset.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5TeaUI34MiniMastheadBarCompressionAnimator_topOffset;
  OUTLINED_FUNCTION_1_0(a1);
  return *(v1 + v2);
}

void MiniMastheadBarCompressionAnimator.topOffset.setter(double a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI34MiniMastheadBarCompressionAnimator_topOffset;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id MiniMastheadBarCompressionAnimator.init(navigationBar:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5TeaUI34MiniMastheadBarCompressionAnimator_topOffset] = 0;
  *&v1[OBJC_IVAR____TtC5TeaUI34MiniMastheadBarCompressionAnimator_navigationBar] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Void __swiftcall MiniMastheadBarCompressionAnimator.detached()()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI34MiniMastheadBarCompressionAnimator_navigationBar);
  v2 = [v1 topItem];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 titleView];

    if (v4)
    {
      [v4 setMaskView_];
    }
  }

  v5[0] = 0x3FF0000000000000;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = 0x3FF0000000000000;
  v5[4] = 0;
  v5[5] = 0;
  [v1 setTransform_];
}

uint64_t MiniMastheadBarCompressionAnimator.update(withPercentage:)(double a1)
{
  v3 = *&v1[OBJC_IVAR____TtC5TeaUI34MiniMastheadBarCompressionAnimator_navigationBar];
  v4 = [v3 topItem];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = [v4 titleView];

  if (!v6)
  {
    v11 = 0;
    v5 = 0;
    goto LABEL_11;
  }

  if (a1 >= 1.0 != [v6 isHidden])
  {
    [v6 setHidden_];
  }

  v7 = [v6 maskView];
  if (!v7)
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    v8 = [objc_opt_self() whiteColor];
    [v7 setBackgroundColor_];

    [v7 setUserInteractionEnabled_];
    [v6 setMaskView_];
  }

  v9 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v6;
  *(v5 + 24) = v1;
  *(v5 + 32) = a1;
  v10 = swift_allocObject();
  v11 = sub_1D80C1F70;
  *(v10 + 16) = sub_1D80C1F70;
  *(v10 + 24) = v5;
  *&v18.tx = sub_1D7E74D6C;
  *&v18.ty = v10;
  *&v18.a = MEMORY[0x1E69E9820];
  *&v18.b = 1107296256;
  *&v18.c = sub_1D7E74D74;
  *&v18.d = &block_descriptor_69;
  v12 = _Block_copy(&v18);
  v13 = v6;
  v14 = v1;

  [v9 performWithoutAnimation_];

  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_9:
    v11 = 0;
  }

LABEL_11:
  [v3 frame];
  Height = CGRectGetHeight(v19);
  CGAffineTransformMakeTranslation(&v18, 0.0, -(Height * a1));
  [v3 setTransform_];
  return sub_1D7E418F4(v11, v5);
}

void sub_1D80C1E7C(void *a1, uint64_t a2, double a3)
{
  v5 = [a1 maskView];
  if (v5)
  {
    v6 = *(a2 + OBJC_IVAR____TtC5TeaUI34MiniMastheadBarCompressionAnimator_navigationBar);
    v11 = v5;
    [v6 bounds];
    Height = CGRectGetHeight(v13);
    [v6 bounds];
    Width = CGRectGetWidth(v14);
    [v6 bounds];
    v9 = CGRectGetHeight(v15);
    if (a3 == 0.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 / a3;
    }

    [v11 setFrame_];
  }
}

Swift::Bool __swiftcall MiniMastheadBarCompressionAnimator.animationShouldBegin(for:currentlyFullyCompressed:)(UIScrollView *a1, Swift::Bool currentlyFullyCompressed)
{
  if ([(UIScrollView *)a1 isDragging]&& currentlyFullyCompressed)
  {
    return 0;
  }

  v6 = [(UIScrollView *)a1 contentOffset];
  v8 = v7;
  v9 = OBJC_IVAR____TtC5TeaUI34MiniMastheadBarCompressionAnimator_topOffset;
  OUTLINED_FUNCTION_1_0(v6);
  return v8 >= *(v2 + v9);
}

CGFloat MiniMastheadBarCompressionAnimator.maximumBarHeight(for:)()
{
  [*(v0 + OBJC_IVAR____TtC5TeaUI34MiniMastheadBarCompressionAnimator_navigationBar) bounds];

  return CGRectGetHeight(*&v1);
}

id MiniMastheadBarCompressionAnimator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MiniMastheadBarCompressionAnimator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id UIColor.barButtonBackgroundColor.getter()
{
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v0 _isSimilarToColor_withinPercentage_];

  if (v3)
  {
    v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v5 = 0.4;
LABEL_8:

    return [v4 initWithWhite:v5 alpha:v5];
  }

  v6 = [v1 whiteColor];
  v7 = [v0 _isSimilarToColor_withinPercentage_];

  if (!v7)
  {
    v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v5 = 0.3;
    goto LABEL_8;
  }

  v8 = [v1 tertiarySystemFillColor];

  return v8;
}

id UIColor.getHSBA()@<X0>(uint64_t a1@<X8>)
{

  return sub_1D7E60BF0(&selRef_getHue_saturation_brightness_alpha_, a1);
}

id UIColor.clampingLuminance(between:and:desaturatingUnderLuminance:desaturatingOverLuminance:)(double a1, double a2, double a3, double a4)
{
  UIColor.getRGBA()(&v41);
  if (v45)
  {
    return 0;
  }

  v10 = v41;
  v9 = v42;
  v11 = v43;
  v40 = v44;
  v12 = v41 * 0.2126 + v42 * 0.7152;
  v13 = v12 + v43 * 0.0722;
  if (v13 <= a2)
  {
    v14 = v12 + v43 * 0.0722;
  }

  else
  {
    v14 = a2;
  }

  if (v14 >= a1)
  {
    a1 = v14;
  }

  sub_1D7E71F64(0, &qword_1EDBB2CD0, MEMORY[0x1E69E7DE0]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D81A1B70;
  *(inited + 32) = v10;
  *(inited + 40) = v9;
  *(inited + 48) = v11;
  v16 = COERCE_DOUBLE(sub_1D802A2B4(inited));
  v18 = v17;
  result = swift_setDeallocating();
  if (v18)
  {
    __break(1u);
    goto LABEL_58;
  }

  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1D81A1B70;
  *(v19 + 32) = v10;
  *(v19 + 40) = v9;
  *(v19 + 48) = v11;
  v20 = COERCE_DOUBLE(sub_1D80C2754(v19));
  v22 = v21;
  result = swift_setDeallocating();
  if (v22)
  {
LABEL_58:
    __break(1u);
    return result;
  }

  v25 = 0.0;
  v26 = v13 < a3;
  v23.i64[0] = 0;
  v27 = 0.0;
  if (!v26)
  {
    v23.i64[0] = 0;
    if (v13 < a4)
    {
      v27 = v16 - v20;
      if (v16 - v20 == 0.0)
      {
        v23.i64[0] = 0;
      }

      else if (v10 == v16)
      {
        *v23.i64 = fmod((v9 - v11) / v27, 6.0);
        if (v9 < v11)
        {
          *v23.i64 = *v23.i64 + 6.0;
        }
      }

      else
      {
        if (v9 == v16)
        {
          v38 = (v11 - v10) / v27;
          v39 = 2.0;
        }

        else
        {
          v38 = (v10 - v9) / v27;
          v39 = 4.0;
        }

        *v23.i64 = v38 + v39;
      }
    }
  }

  *v24.i64 = *v23.i64 + trunc(*v23.i64 * 0.5) * -2.0;
  v28.f64[0] = NAN;
  v28.f64[1] = NAN;
  *v24.i64 = v27 * (1.0 - fabs(*vbslq_s8(vnegq_f64(v28), v24, v23).i64 + -1.0));
  if (*v23.i64 < 0.0 || *v23.i64 > 1.0)
  {
    v30 = *v23.i64 < 1.0 || *v23.i64 > 2.0;
    v36 = v40;
    if (v30)
    {
      if (*v23.i64 < 2.0 || *v23.i64 > 3.0)
      {
        if (*v23.i64 > 5.0)
        {
          v32 = *v24.i64;
        }

        else
        {
          v32 = v27;
        }

        if (*v23.i64 > 5.0)
        {
          v33 = v27;
        }

        else
        {
          v33 = *v24.i64;
        }

        if (*v23.i64 < 4.0)
        {
          v32 = *v24.i64;
          v33 = v27;
        }

        v34 = *v23.i64 < 3.0 || *v23.i64 > 4.0;
        if (v34)
        {
          v25 = v32;
        }

        else
        {
          v25 = v27;
        }

        if (v34)
        {
          v35 = 0.0;
        }

        else
        {
          v35 = *v24.i64;
        }

        if (v34)
        {
          v27 = v33;
        }

        else
        {
          v27 = 0.0;
        }
      }

      else
      {
        v25 = *v24.i64;
        v35 = v27;
        v27 = 0.0;
      }
    }

    else
    {
      v35 = v27;
      v27 = *v24.i64;
    }
  }

  else
  {
    v35 = *v24.i64;
    v36 = v40;
  }

  v37 = a1 - (v25 * 0.0722 + v35 * 0.7152 + v27 * 0.2126);
  return [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:v27 + v37 green:v35 + v37 blue:v25 + v37 alpha:v36];
}

uint64_t sub_1D80C2754(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

double UIColor.components.getter()
{
  v1 = [v0 CGColor];
  v2 = [objc_allocWithZone(MEMORY[0x1E695F610]) initWithCGColor_];

  [v2 red];
  v4 = v3;
  [v2 green];
  [v2 blue];
  [v2 alpha];

  return v4;
}

id sub_1D80C2888(uint64_t a1, id a2)
{
  v2 = [a2 resolvedColorWithTraitCollection_];
  v3 = UIColor.legibleForeground.getter();

  return v3;
}

id sub_1D80C2900(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v6 = v2;
  return sub_1D80C2E50(a2, v4);
}

id sub_1D80C2960(void *a1, id a2)
{
  v3 = [a2 resolvedColorWithTraitCollection_];
  [v3 ts_luminance];
  if (v4 > 0.7)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [objc_opt_self() secondaryLabelColor];
  sub_1D80C2FA8();
  sub_1D7E71F64(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D81A5090;
  *(v7 + 32) = a1;
  v8 = objc_opt_self();
  v9 = a1;
  *(v7 + 40) = [v8 traitCollectionWithUserInterfaceStyle_];
  v10 = sub_1D80C2AB8(v7);
  v11 = [v6 resolvedColorWithTraitCollection_];

  return v11;
}

id sub_1D80C2AB8(uint64_t a1)
{
  sub_1D80C2FA8();
  v1 = sub_1D8191304();

  v2 = [swift_getObjCClassFromMetadata() traitCollectionWithTraitsFromCollections_];

  return v2;
}

id sub_1D80C2B6C()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.866666667 green:0.0901960784 blue:0.105882353 alpha:1.0];
  qword_1ECA108C0 = result;
  return result;
}

id sub_1D80C2BE0()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.941176471 green:0.588235294 blue:0.196078431 alpha:1.0];
  qword_1ECA108C8 = result;
  return result;
}

id sub_1D80C2C54()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.960784314 green:0.62745098 blue:0.0901960784 alpha:1.0];
  qword_1ECA108D0 = result;
  return result;
}

id static UIColor.random()()
{
  v0 = arc4random() / 4294967300.0;
  v1 = arc4random() / 4294967300.0;
  v2 = arc4random() / 4294967300.0;
  v3 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  return [v3 initWithRed:v0 green:v1 blue:v2 alpha:1.0];
}

id UIColor.blend(with:alpha:)(uint64_t a1, double a2)
{
  UIColor.getRGBA()(v8);
  result = 0;
  if ((v9 & 1) == 0 && a1)
  {
    v5 = *v8;
    v6 = *&v8[1];
    v7 = *&v8[2];
    UIColor.getRGBA()(v10);
    if (v11)
    {
      return 0;
    }

    else
    {
      return [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:v5 * a2 + (1.0 - a2) * v10[0] green:v6 * a2 + (1.0 - a2) * v10[1] blue:v7 * a2 + (1.0 - a2) * v10[2] alpha:1.0];
    }
  }

  return result;
}

id sub_1D80C2E50(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1D7FBFE1C;
  v6[3] = &block_descriptor_70;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithDynamicProvider_];
  _Block_release(v3);

  return v4;
}

_BYTE *storeEnumTagSinglePayload for Rec709Luma(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D80C2FA8()
{
  result = qword_1EDBB3170;
  if (!qword_1EDBB3170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBB3170);
  }

  return result;
}

uint64_t Settings.Automation.RunnerState.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1D81924B4();

  v6 = 3;
  if (v4 < 3)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1D80C308C(uint64_t a1)
{
  v2 = sub_1D7E59DE0();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D80C30E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7E59DE0();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

double static Settings.Automation.runnerState.getter()
{
  if (qword_1EDBBC610 != -1)
  {
    swift_once();
  }

  return result;
}

_BYTE *_s10AutomationVwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1D80C3284(uint64_t a1, int a2)
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

uint64_t sub_1D80C32C4(uint64_t result, int a2, int a3)
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

void sub_1D80C3324(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v10 = v1;
  type metadata accessor for JSONSchema.LabeledValue(255, &v8);
  v2 = sub_1D8191484();
  if (v3 <= 0x3F)
  {
    v11 = 0;
    v8 = v2;
    v4 = sub_1D7E31228();
    if (v5 <= 0x3F)
    {
      v12 = 0;
      *&v9 = v4;
      sub_1D80CCB44(319, qword_1ECA108D8, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
      if (v7 <= 0x3F)
      {
        v13 = 0;
        *(&v9 + 1) = v6;
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D80C34B0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for JSONSchemaView(0);
  MEMORY[0x1EEE9AC00](v4);
  sub_1D80CC9C8(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26[-v11];
  v27 = a1;
  sub_1D80C38A8(a1);
  sub_1D80CCBA4(&qword_1ECA0FE58);
  sub_1D81903B4();
  if ((*(a1 + 24) & 1) != 0 || (*a1) && ((v29 = *(a1 + 32), v30 = v29, sub_1D80CCB44(0, &qword_1ECA0EF60, type metadata accessor for JSONSchemaValueArray, MEMORY[0x1E6981790]), sub_1D8190994(), v13 = *(v28 + OBJC_IVAR____TtC5TeaUI20JSONSchemaValueArray_validations + 8), v14 = *(v28 + OBJC_IVAR____TtC5TeaUI20JSONSchemaValueArray_validations + 24), , v13 != 1) || (v14 & 1) == 0))
  {
    v29 = v30;
    sub_1D8190994();
    sub_1D7EFD738();

    v15 = sub_1D8190944();
    v29 = v30;
    sub_1D8190994();
    sub_1D7EFD738();

    v17 = sub_1D8190924();
    KeyPath = swift_getKeyPath();
  }

  else
  {
    v15 = 0;
    KeyPath = 0;
    v17 = 0;
  }

  v18 = *(v7 + 16);
  v18(v9, v12, v6);
  v19 = v18(a2, v9, v6);
  sub_1D80CC928(0, v19);
  v21 = &a2[*(v20 + 48)];
  sub_1D80CAC9C(v15);
  v22 = sub_1D80CACEC(v15);
  *v21 = v15;
  v21[1] = KeyPath;
  v21[2] = v17;
  v23 = *(v7 + 8);
  v23(v12, v6, v22);
  v24 = sub_1D80CACEC(v15);
  return (v23)(v9, v6, v24);
}

uint64_t sub_1D80C38A8(uint64_t a1)
{
  v2 = type metadata accessor for JSONSchema(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  v10 = v9;
  sub_1D80CCB44(0, &qword_1ECA0EF60, type metadata accessor for JSONSchemaValueArray, MEMORY[0x1E6981790]);
  sub_1D8190994();
  sub_1D80CAB18(v8 + OBJC_IVAR____TtC5TeaUI15JSONSchemaValue_schema, v4, type metadata accessor for JSONSchema);

  v9 = v10;
  sub_1D8190994();
  return sub_1D804FED8(v4, 0, 0, 0, 255, v8, v5);
}

uint64_t sub_1D80C39E4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D81905C4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1D81905B4();
  sub_1D81905A4();
  sub_1D8190DB4();
  sub_1D8190594();

  sub_1D81905A4();
  sub_1D80CCB44(0, &qword_1ECA0EF60, type metadata accessor for JSONSchemaValueArray, MEMORY[0x1E6981790]);
  v6 = sub_1D8190994();
  sub_1D7EFC4E4(v6, v7);
  v9 = v8;

  sub_1D7E36AB8(v9);

  sub_1D8190584();
  sub_1D81905A4();
  sub_1D81905E4();
  v10 = sub_1D8190804();
  v12 = v11;
  v14 = v13;
  if (a1[24] & 1) != 0 || (*a1)
  {
    sub_1D81906E4();
  }

  else
  {
    sub_1D81906F4();
  }

  v15 = sub_1D81907E4();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1D80CBD04(v10, v12, v14 & 1);

  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v21;
  return result;
}

uint64_t sub_1D80C3CB4()
{
  sub_1D8191534();
  sub_1D8058A38(v0, &v7);
  v1 = sub_1D8191524();
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E85E0];
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  OUTLINED_FUNCTION_30_21(v2);
  sub_1D8058A38(v0, &v7);
  v4 = sub_1D8191524();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  OUTLINED_FUNCTION_30_21(v5);
  sub_1D8190AB4();
  return sub_1D8190A44();
}

void sub_1D80C3DE4(_BYTE *a2@<X8>)
{
  sub_1D80CCB44(0, &qword_1ECA10B90, type metadata accessor for JSONSchemaValueBool, MEMORY[0x1E6981790]);
  v3 = sub_1D8190994();
  v5 = sub_1D7EFC58C(v3, v4);

  *a2 = v5 & 1;
}

double sub_1D80C3E7C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4 = *a1;
  sub_1D80CC34C(0, &qword_1ECA0FEF0, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  sub_1D8190A94();
  sub_1D80CCB44(0, &qword_1ECA10B90, type metadata accessor for JSONSchemaValueBool, MEMORY[0x1E6981790]);
  sub_1D8190994();
  sub_1D7EFDAB0(v4, v5);

  return result;
}

uint64_t sub_1D80C3F64@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 4))
  {
    v4 = *(a1 + 3);
    v5 = *(a1 + 4);
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x65756C6156;
  }

  *&v21 = v4;
  *(&v21 + 1) = v5;
  sub_1D7E50D2C();
  sub_1D8190DB4();
  v6 = sub_1D8190814();
  v8 = v7;
  v10 = v9;
  if ((*(a1 + 40) & 1) != 0 || (v21 = *a1, v22 = *(a1 + 16), sub_1D80CC34C(0, &qword_1ECA0FEF0, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]), MEMORY[0x1DA712C90](&v20), v20 == 1))
  {
    v11 = sub_1D81906E4();
  }

  else
  {
    v11 = sub_1D81906F4();
  }

  LODWORD(v21) = v11;
  v12 = sub_1D81907E4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1D80CBD04(v6, v8, v10 & 1);

  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v18;
  return result;
}

uint64_t sub_1D80C4130@<X0>(__n128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v38[1] = a2;
  sub_1D80CB66C(0, a3);
  v39 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D80CBAEC(0, &qword_1ECA10B68, sub_1D80CB66C, sub_1D80CB864, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v38 - v9;
  sub_1D80CB864(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1[3];
  sub_1D80CCB44(0, &qword_1ECA10B70, type metadata accessor for JSONSchemaValueInteger, MEMORY[0x1E6981790]);
  sub_1D8190994();
  v15 = *(v40.n128_u64[0] + OBJC_IVAR____TtC5TeaUI22JSONSchemaValueInteger_suppliedValues);
  v16 = *(v40.n128_u64[0] + OBJC_IVAR____TtC5TeaUI22JSONSchemaValueInteger_suppliedValues + 8);
  sub_1D7ED06CC(v15, *(v40.n128_u64[0] + OBJC_IVAR____TtC5TeaUI22JSONSchemaValueInteger_suppliedValues + 8));

  if (v16 != 255)
  {
    if (v16)
    {
      v44 = sub_1D80C7830();
      v45 = v17;
      sub_1D8191534();
      sub_1D805897C(a1, &v42);
      v18 = sub_1D8191524();
      v38[0] = v5;
      v19 = v18;
      v20 = swift_allocObject();
      v21 = MEMORY[0x1E69E85E0];
      *(v20 + 16) = v19;
      *(v20 + 24) = v21;
      v22 = a1[1];
      *(v20 + 32) = *a1;
      *(v20 + 48) = v22;
      v23 = a1[3];
      *(v20 + 64) = a1[2];
      *(v20 + 80) = v23;
      sub_1D805897C(a1, &v42);
      v24 = sub_1D8191524();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = MEMORY[0x1E69E85E0];
      v26 = a1[1];
      *(v25 + 32) = *a1;
      *(v25 + 48) = v26;
      v27 = a1[3];
      *(v25 + 64) = a1[2];
      *(v25 + 80) = v27;
      v28 = sub_1D8190AB4();
      v40 = v42;
      v41 = v43;
      MEMORY[0x1EEE9AC00](v28);
      sub_1D80CB71C(0);
      sub_1D80CB80C(&unk_1ECA10B10);
      sub_1D7E50D2C();
      sub_1D8190A24();
      sub_1D7ED07B8(v15, v16);
      v29 = v38[0];
      v30 = v39;
      (*(v38[0] + 16))(v10, v7, v39);
      swift_storeEnumTagMultiPayload();
      sub_1D80CCBA4(&unk_1ECA10B80);
      sub_1D80CCBA4(&unk_1ECA10B88);
      sub_1D8190634();
      return (*(v29 + 8))(v7, v30);
    }

    sub_1D7ED07B8(v15, v16);
  }

  v32 = sub_1D80C7830();
  v34 = v33;
  v42 = *a1;
  LOBYTE(v43) = a1[1].n128_u8[0];
  sub_1D80CC34C(0, &qword_1ECA0FEF0, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x1DA712C90](&v40);
  v35 = v40.n128_u8[0];
  *v14 = v32;
  *(v14 + 1) = v34;
  v14[16] = v35;
  v36 = &v14[*(v12 + 40)];
  *v36 = sub_1D8190574();
  *(v36 + 1) = 0;
  v36[16] = 1;
  sub_1D80CAABC(0, &unk_1ECA10B78);
  sub_1D80C49E4(a1, &v36[*(v37 + 44)]);
  sub_1D80CBB6C(v14, v10, sub_1D80CB864);
  swift_storeEnumTagMultiPayload();
  sub_1D80CCBA4(&unk_1ECA10B80);
  sub_1D80CCBA4(&unk_1ECA10B88);
  sub_1D8190634();
  return sub_1D80CBBCC(v14, sub_1D80CB864);
}

uint64_t sub_1D80C4768(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  KeyPath = swift_getKeyPath();
  sub_1D7EF87CC(0);
  v4 = v3;
  sub_1D80CC4AC(0, &qword_1ECA10990, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697C050]);
  v6 = v5;
  v7 = sub_1D80CCBA4(&unk_1ECA10B08);
  v8 = sub_1D80CA7DC();
  sub_1D8190DB4();
  return sub_1D8190AD4(&v10, KeyPath, sub_1D80C4888, 0, v4, v6, v7, MEMORY[0x1E69E6540], v8);
}