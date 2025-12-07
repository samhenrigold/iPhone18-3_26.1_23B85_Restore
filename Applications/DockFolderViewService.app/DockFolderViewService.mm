uint64_t sub_100002108(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_locationTitle);
  *v3 = a1;
  v3[1] = a2;
}

char *sub_100002124(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_locationTitle];
  *v9 = 0;
  v9[1] = 0;
  result = _DocumentManagerBundle();
  if (result)
  {
    v11 = result;
    v12 = &v4[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_actionTitle];
    v26._object = 0x8000000100091C70;
    v13._countAndFlagsBits = 0x617A696C61636F4CLL;
    v13._object = 0xEB00000000656C62;
    v14._countAndFlagsBits = 0x206E69206E65704FLL;
    v14._object = 0xED000073656C6946;
    v15._countAndFlagsBits = 0x206E69206E65704FLL;
    v15._object = 0xED000073656C6946;
    v26._countAndFlagsBits = 0xD00000000000005DLL;
    v16 = DOCLocalizedString(_:tableName:bundle:value:comment:)(v14, v13, v11, v15, v26);

    *v12 = v16;
    v4[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_openButtonHidden] = 0;
    *&v4[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_interactionDelegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v4[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_actionGestureRecognizer] = 0;
    v17 = [objc_allocWithZone(UILabel) init];
    *&v4[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_openWithLabel] = v17;
    v25.receiver = v4;
    v25.super_class = type metadata accessor for DOCSBFolderCollectionHeaderView();
    v18 = objc_msgSendSuper2(&v25, "initWithFrame:", a1, a2, a3, a4);
    v19 = *&v18[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_openWithLabel];
    v20 = v18;
    v21 = v19;

    v22 = String._bridgeToObjectiveC()();

    [v21 setText:v22];

    v23 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v20 action:"actionViewTappedWithSender:"];
    v24 = *&v20[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_actionGestureRecognizer];
    *&v20[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_actionGestureRecognizer] = v23;

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000023F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCSBFolderCollectionHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000024D4()
{
  v1 = OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_openInImageSize;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_openInImageSize] = *&v0[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_iconSize] * 0.87;
  v2 = *&v0[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_visualEffectView];
  if (v2)
  {
    v5 = v2;
    v3 = [v5 layer];
    [v3 setCornerRadius:*&v0[v1] * 0.5];

    v4 = *&v0[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_widthConstraint];
    if (v4)
    {
      [v4 setConstant:*&v0[v1]];
      [v0 setNeedsUpdateConstraints];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1000025CC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_openInImageSize] = 0x4047800000000000;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_iconSize] = 0x4051000000000000;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_visualEffectView] = 0;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_imageView] = 0;
  v10 = OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_shadowView;
  *&v4[v10] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_widthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_heightConstraint] = 0;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  sub_1000026D8();

  return v11;
}

void sub_1000026D8()
{
  v1 = [objc_allocWithZone(UIView) init];
  v2 = OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_shadowView;
  v3 = *&v0[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_shadowView];
  *&v0[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_shadowView] = v1;
  v4 = v1;

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [*&v0[v2] layer];
  v6 = OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_openInImageSize;
  [v5 setCornerRadius:*&v0[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_openInImageSize] * 0.5];

  v7 = [*&v0[v2] layer];
  [v7 setShadowPathIsBounds:1];

  [*&v0[v2] setAutoresizingMask:18];
  [*&v0[v2] setUserInteractionEnabled:1];
  v8 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.2];
  v9 = [v8 CGColor];

  v10 = [*&v0[v2] layer];
  LODWORD(v11) = 1.0;
  [v10 setOpacity:v11];
  [v10 setShadowColor:v9];
  [v10 setShadowOffset:{0.0, 4.0}];
  [v10 setShadowRadius:16.0];
  LODWORD(v12) = 1.0;
  [v10 setShadowOpacity:v12];
  [v10 setPunchoutShadow:1];

  [v0 addSubview:*&v0[v2]];
  v13 = [objc_opt_self() effectWithStyle:8];
  v14 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v13];

  v15 = OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_visualEffectView;
  v16 = *&v0[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_visualEffectView];
  *&v0[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_visualEffectView] = v14;
  v17 = v14;

  if (!v17)
  {
    __break(1u);
    goto LABEL_19;
  }

  v18 = String._bridgeToObjectiveC()();
  [v17 _setGroupName:v18];

  v19 = *&v0[v15];
  if (!v19)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v19 setAutoresizingMask:18];
  v20 = *&v0[v15];
  if (!v20)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v20 setClipsToBounds:1];
  if (!*&v0[v15])
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [*&v0[v2] addSubview:?];
  v21 = String._bridgeToObjectiveC()();
  v22 = [objc_opt_self() systemImageNamed:v21];

  v56 = v9;
  if (v22)
  {
    v23 = [v22 imageWithRenderingMode:{2, v9}];
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_allocWithZone(UIImageView) initWithImage:v23];
  v25 = OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_imageView;
  v26 = *&v0[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_imageView];
  *&v0[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_imageView] = v24;
  v27 = v24;

  if (!v27)
  {
    goto LABEL_22;
  }

  v28 = [objc_opt_self() secondaryLabelColor];
  v29 = [v28 colorWithAlphaComponent:0.9];

  [v27 setTintColor:v29];
  v30 = *&v0[v25];
  if (!v30)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v30 setAutoresizingMask:18];
  v31 = *&v0[v25];
  if (!v31)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v31 setContentMode:1];
  v32 = *&v0[v15];
  if (!v32)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v33 = [v32 contentView];
  if (!*&v0[v25])
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v34 = v33;
  [v33 addSubview:?];

  v35 = [*&v0[v2] widthAnchor];
  v36 = [v35 constraintEqualToConstant:*&v0[v6]];

  v37 = OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_widthConstraint;
  v38 = *&v0[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_widthConstraint];
  *&v0[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_widthConstraint] = v36;

  v39 = [*&v0[v2] heightAnchor];
  v40 = [*&v0[v2] widthAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:1.0];

  v42 = OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_heightConstraint;
  v43 = *&v0[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_heightConstraint];
  *&v0[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_heightConstraint] = v41;

  sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_10008F920;
  v45 = [*&v0[v2] centerXAnchor];
  v46 = [v0 centerXAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v44 + 32) = v47;
  v48 = [*&v0[v2] centerYAnchor];
  v49 = [v0 centerYAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v44 + 40) = v50;
  v51 = *&v0[v37];
  if (!v51)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(v44 + 48) = v51;
  v52 = *&v0[v42];
  if (!v52)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v53 = objc_opt_self();
  *(v44 + 56) = v52;
  sub_1000062E8();
  v54 = v51;
  v55 = v52;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v53 activateConstraints:isa];
}

id sub_100002E08()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  v1 = [*&v0[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_shadowView] layer];
  [v1 setCornerRadius:*&v0[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_openInImageSize] * 0.5];

  v2 = OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_visualEffectView;
  result = *&v0[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_visualEffectView];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  [result bounds];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  v8 = CGRectGetWidth(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  CGRectGetHeight(v16);
  result = *&v0[v2];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = [result bounds];
  v13 = *&v0[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_imageView];
  if (v13)
  {
    return [v13 setFrame:{sub_1000064C4(v9, v10, v11, v12, 0.0, v8 * 0.440677966 * 0.5)}];
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_100003050()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_iconSize;
  *&v1[OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_openInImageSize] = *&v1[OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_iconSize] * 0.87;
  result = *&v1[OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_widthConstraint];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = [result setConstant:?];
  v4 = *&v1[OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_buttonPlatterView];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *&v4[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_iconSize] = *&v1[v2];
  v5 = v4;
  sub_1000024D4();

  return [v1 setNeedsUpdateConstraints];
}

id sub_100003104(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_iconSize] = 0x4051000000000000;
  v10 = OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_contentViewContainer;
  type metadata accessor for DOCSBCollectionViewCellContentView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_labelPlatterView] = 0;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_buttonPlatterView] = 0;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_widthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_heightConstraint] = 0;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_openInImageSize] = 0x4047800000000000;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  sub_100003214();

  return v11;
}

void sub_100003214()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_contentViewContainer;
  [*&v0[OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_contentViewContainer] setTranslatesAutoresizingMaskIntoConstraints:1];
  [*&v0[v2] setAutoresizingMask:18];
  v3 = *&v0[v2];
  [v1 bounds];
  [v3 setFrame:?];

  p_type = &stru_1000B6FF0.type;
  [v1 addSubview:*&v1[v2]];
  [v1 bounds];
  v5 = *&v1[OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_iconSize];
  v10 = [objc_allocWithZone(type metadata accessor for DOCSBHeaderOpenLocationView()) initWithFrame:{v6, v7, v8, v9}];
  *&v10[OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_iconSize] = v5;
  v11 = OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_buttonPlatterView;
  v12 = *&v1[OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_buttonPlatterView];
  *&v1[OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_buttonPlatterView] = v10;
  v13 = v10;

  if (!*&v1[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_actionGestureRecognizer])
  {
    __break(1u);
    goto LABEL_24;
  }

  [v13 addGestureRecognizer:?];

  v14 = *&v1[v11];
  if (!v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v14 setUserInteractionEnabled:1];
  v15 = *&v1[v11];
  if (!v15)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (!*&v1[v11])
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [*&v1[v2] addSubview:?];
  v16 = *&v1[v11];
  if (!v16)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v17 = [v16 widthAnchor];
  v18 = [v17 constraintEqualToConstant:*&v1[OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_openInImageSize]];

  v19 = OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_widthConstraint;
  v20 = *&v1[OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_widthConstraint];
  *&v1[OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_widthConstraint] = v18;

  v21 = *&v1[v11];
  if (!v21)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v22 = [v21 heightAnchor];
  v23 = *&v1[v11];
  if (!v23)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v24 = [v23 widthAnchor];
  v25 = [v22 constraintEqualToAnchor:v24 constant:1.0];

  v26 = *&v1[OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_heightConstraint];
  v80 = OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_heightConstraint;
  *&v1[OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_heightConstraint] = v25;

  type metadata accessor for DOCSBLabelPlatterView();
  v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v28 = OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_labelPlatterView;
  v29 = *&v1[OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_labelPlatterView];
  *&v1[OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_labelPlatterView] = v27;
  v30 = v27;

  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  v31 = *&v1[v28];
  if (!v31)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v32 = *(v31 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_label);
  if (!v32)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v33 = *&v1[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_locationTitle + 8];
  v81 = v28;
  if (!v33)
  {
    v41 = v32;

LABEL_14:
    v42 = String._bridgeToObjectiveC()();

    [v32 setText:v42];

    if (*&v1[v28])
    {
      [*&v1[v2] p_type[356]];
      v43 = *&v1[v2];
      v44 = *&v1[v28];
      v45 = *&v43[OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_labelContainer];
      *&v43[OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_labelContainer] = v44;
      v46 = v43;
      v47 = v44;

      sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_10008F920;
      v49 = *&v1[v11];
      if (v49)
      {
        v79 = v19;
        v50 = [v49 centerXAnchor];
        v51 = [*&v1[v2] centerXAnchor];
        v52 = [v50 constraintEqualToAnchor:v51];

        *(v48 + 32) = v52;
        v53 = *&v1[v11];
        if (v53)
        {
          v54 = [v53 centerYAnchor];
          v55 = v2;
          v56 = [*&v1[v2] centerYAnchor];
          v57 = [v54 constraintEqualToAnchor:v56];

          *(v48 + 40) = v57;
          v58 = *&v1[v79];
          if (v58)
          {
            *(v48 + 48) = v58;
            v59 = *&v1[v80];
            if (v59)
            {
              *(v48 + 56) = v59;
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_10008F940;
              v61 = *&v1[v81];
              if (v61)
              {
                v62 = inited;
                v63 = v59;
                v64 = v58;
                v65 = [v61 centerYAnchor];
                v66 = [*&v1[v55] centerYAnchor];
                v67 = [v65 constraintEqualToAnchor:v66];

                *(v62 + 32) = v67;
                v68 = swift_initStackObject();
                *(v68 + 16) = xmmword_10008F940;
                v69 = *&v1[v81];
                if (v69)
                {
                  v70 = [v69 trailingAnchor];
                  v71 = *&v1[v11];
                  if (v71)
                  {
                    v72 = [v71 leadingAnchor];
                    v73 = [v70 constraintEqualToAnchor:v72 constant:-8.0];

                    *(v68 + 32) = v73;
                    v74 = objc_opt_self();
                    sub_10000D644(v62, v75);
                    sub_10000D644(v68, v76);
                    sub_1000062E8();
                    isa = Array._bridgeToObjectiveC()().super.isa;

                    [v74 activateConstraints:isa];

                    [v1 setClipsToBounds:0];
                    return;
                  }

                  goto LABEL_39;
                }

LABEL_38:
                __break(1u);
LABEL_39:
                __break(1u);
                goto LABEL_40;
              }

LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v78 = *&v1[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_locationTitle];
  v34 = v32;

  v35 = _DocumentManagerBundle();
  if (v35)
  {
    v36 = v35;
    v82._object = 0x8000000100091AA0;
    v37._countAndFlagsBits = 0x617A696C61636F4CLL;
    v37._object = 0xEB00000000656C62;
    v38._object = 0x8000000100091A80;
    v39._object = 0x8000000100091A80;
    v82._countAndFlagsBits = 0x10000000000000AALL;
    v38._countAndFlagsBits = 0x1000000000000016;
    v39._countAndFlagsBits = 0x1000000000000016;
    DOCLocalizedString(_:tableName:bundle:value:comment:)(v38, v37, v36, v39, v82);

    sub_10000589C(&qword_1000BB8E8, &qword_10008FB18);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10008F930;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = sub_1000058E4();
    *(v40 + 32) = v78;
    *(v40 + 40) = v33;
    static String.localizedStringWithFormat(_:_:)();

    p_type = (&stru_1000B6FF0 + 16);
    v28 = v81;
    goto LABEL_14;
  }

LABEL_40:
  __break(1u);
}

void sub_100003A20()
{
  v1 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_labelPlatterView);
  if (!v1)
  {
    return;
  }

  v2 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_label);
  if (!v2)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_locationTitle + 8);
  if (!v3)
  {
    v12 = v2;

    goto LABEL_8;
  }

  v4 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_locationTitle);
  v5 = v2;

  v6 = _DocumentManagerBundle();
  if (!v6)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v7 = v6;
  v15._object = 0x8000000100091AA0;
  v8._countAndFlagsBits = 0x617A696C61636F4CLL;
  v8._object = 0xEB00000000656C62;
  v9._object = 0x8000000100091A80;
  v10._object = 0x8000000100091A80;
  v15._countAndFlagsBits = 0x10000000000000AALL;
  v9._countAndFlagsBits = 0x1000000000000016;
  v10._countAndFlagsBits = 0x1000000000000016;
  DOCLocalizedString(_:tableName:bundle:value:comment:)(v9, v8, v7, v10, v15);

  sub_10000589C(&qword_1000BB8E8, &qword_10008FB18);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10008F930;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_1000058E4();
  *(v11 + 32) = v4;
  *(v11 + 40) = v3;
  static String.localizedStringWithFormat(_:_:)();

LABEL_8:
  v13 = String._bridgeToObjectiveC()();

  [v2 setText:v13];
}

void sub_100003C24(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_locationTitle);
  *v3 = a1;
  v3[1] = a2;

  sub_100003A20();
}

void sub_100003CD0()
{
  v1 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_heightConstraint);
}

uint64_t sub_100003E04(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_locationTitle);
  v4 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_locationTitle);
  v5 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_locationTitle + 8);
  *v3 = result;
  v3[1] = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == result && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_14;
      }
    }

    v7 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_locationTitleLabel);
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = v7;

    v9 = String._bridgeToObjectiveC()();

    goto LABEL_13;
  }

  if (!v5)
  {
    return result;
  }

  v10 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_locationTitleLabel);
  if (v10)
  {
    v8 = v10;
    v9 = 0;
LABEL_13:
    [v8 setText:v9];
  }

LABEL_14:
}

id sub_100003F14(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_locationIcon;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_locationIcon] = 0;
  v11 = OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_locationTitleLabel;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_locationTitleLabel] = 0;
  v12 = OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_locationImageView;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_locationImageView] = 0;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_backgroundVisualEffectView] = 0;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle____lazy_storage____headerFont] = 1;
  *&v4[OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle____lazy_storage____headerButtonFont] = 1;
  v13 = &v4[OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_lastBounds];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v13[32] = 1;
  v14 = String._bridgeToObjectiveC()();
  v15 = [objc_opt_self() systemImageNamed:v14];

  v16 = *&v4[v10];
  *&v4[v10] = v15;

  v17 = [objc_allocWithZone(UILabel) init];
  v18 = *&v4[v11];
  *&v4[v11] = v17;

  v19 = [objc_allocWithZone(UIImageView) initWithImage:*&v4[v10]];
  v20 = *&v4[v12];
  *&v4[v12] = v19;

  v23.receiver = v4;
  v23.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  sub_1000040BC();

  return v21;
}

void sub_1000040BC()
{
  v1 = objc_opt_self();
  v2 = [v1 labelColor];
  [v0 setTintColor:v2];

  v3 = *&v0[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_openWithLabel];
  v4 = [v1 labelColor];
  [v3 setTextColor:v4];

  v5 = sub_1000049A8();
  [v3 setFont:v5];

  v6 = OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_locationTitleLabel;
  v7 = *&v0[OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_locationTitleLabel];
  if (!v7)
  {
    __break(1u);
    goto LABEL_29;
  }

  v8 = v7;
  v9 = sub_100004A14();
  [v8 setFont:v9];

  [v0 bounds];
  v11 = sub_100006104(v10, 3.0);
  v12 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];

  v13 = OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_backgroundVisualEffectView;
  v14 = *&v0[OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_backgroundVisualEffectView];
  *&v0[OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_backgroundVisualEffectView] = v12;
  v15 = v12;

  if (!v15)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v15 setAutoresizingMask:18];

  v16 = *&v0[v13];
  if (!v16)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v17 = v16;
  [v0 bounds];
  [v17 setFrame:?];

  if (!*&v0[v13])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v0 addSubview:?];
  [v0 bounds];
  v74 = [objc_allocWithZone(UIView) initWithFrame:{v18, v19, v20, v21}];
  [v74 setAutoresizingMask:18];
  [v0 addSubview:v74];
  v22 = *&v0[v6];
  if (!v22)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (*&v0[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_locationTitle + 8])
  {
    v23 = v22;

    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v25 = v22;
    v24 = 0;
  }

  [v22 setText:v24];

  v26 = OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_locationImageView;
  v27 = *&v0[OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_locationImageView];
  if (!v27)
  {
    goto LABEL_33;
  }

  [v27 setImage:*&v0[OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_locationIcon]];
  v29 = *&v0[v26];
  if (!v29)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  LODWORD(v28) = 1144750080;
  [v29 setContentCompressionResistancePriority:0 forAxis:v28];
  v31 = *&v0[v6];
  if (!v31)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  LODWORD(v30) = 1144750080;
  [v31 setContentCompressionResistancePriority:0 forAxis:v30];
  LODWORD(v32) = 1144750080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v32];
  [v3 setLineBreakMode:5];
  v33 = *&v0[v6];
  if (!v33)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  [v33 setLineBreakMode:5];
  [v74 addSubview:v3];
  if (!*&v0[v6])
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [v74 addSubview:?];
  if (!*&v0[v26])
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [v74 addSubview:?];
  v34 = *&v0[v6];
  if (!v34)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  v35 = *&v0[v26];
  if (!v35)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_10008F950;
  v37 = *&v0[v26];
  if (!v37)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v38 = [v37 leadingAnchor];
  v39 = [v74 leadingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:16.0];

  *(v36 + 32) = v40;
  v41 = *&v0[v6];
  if (!v41)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v42 = [v41 leadingAnchor];
  v43 = *&v0[v26];
  if (!v43)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v44 = [v43 trailingAnchor];
  v45 = [v42 constraintEqualToAnchor:v44 constant:8.0];

  *(v36 + 40) = v45;
  v46 = *&v0[v6];
  if (!v46)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v47 = [v46 widthAnchor];
  v48 = [v47 constraintLessThanOrEqualToConstant:300.0];

  *(v36 + 48) = v48;
  v49 = [v3 trailingAnchor];
  v50 = [v74 trailingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:-16.0];

  *(v36 + 56) = v51;
  v52 = [v3 widthAnchor];
  v53 = [v52 constraintLessThanOrEqualToConstant:200.0];

  *(v36 + 64) = v53;
  v54 = *&v0[v26];
  if (!v54)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v55 = [v54 centerYAnchor];
  v56 = [v74 centerYAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  *(v36 + 72) = v57;
  v58 = *&v0[v6];
  if (!v58)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v59 = [v58 bottomAnchor];
  v60 = [v74 bottomAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];

  *(v36 + 80) = v61;
  v62 = *&v0[v6];
  if (!v62)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v63 = objc_opt_self();
  v64 = [v62 topAnchor];
  v65 = [v74 topAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  *(v36 + 88) = v66;
  v67 = [v3 bottomAnchor];
  v68 = [v74 bottomAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];

  *(v36 + 96) = v69;
  v70 = [v3 topAnchor];
  v71 = [v74 topAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];

  *(v36 + 104) = v72;
  sub_1000062E8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v63 activateConstraints:isa];

  if (!*&v0[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_actionGestureRecognizer])
  {
LABEL_48:
    __break(1u);
    return;
  }

  [v3 addGestureRecognizer:?];
  [v3 setUserInteractionEnabled:1];
}

id sub_1000049A8()
{
  v1 = OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle____lazy_storage____headerButtonFont;
  v2 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle____lazy_storage____headerButtonFont);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_100004AD8();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_100005938(v4);
  }

  sub_100006380(v2);
  return v3;
}

id sub_100004A14()
{
  v1 = OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle____lazy_storage____headerFont;
  v2 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle____lazy_storage____headerFont);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
    v3 = [objc_opt_self() fontWithDescriptor:v4 size:0.0];

    v5 = *(v0 + v1);
    *(v0 + v1) = v3;
    v6 = v3;
    sub_100005938(v5);
  }

  sub_100006380(v2);
  return v3;
}

id sub_100004AD8()
{
  v0 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
  sub_10000589C(&qword_1000BB908, &unk_100091370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008F930;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_10000589C(&unk_1000BB910, &qword_10008FB30);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_10008F930;
  *(v2 + 32) = UIFontWeightTrait;
  *(v2 + 40) = UIFontWeightLight;
  v3 = v0;
  v4 = UIFontDescriptorTraitsAttribute;
  v5 = UIFontWeightTrait;
  v6 = sub_10007B4BC(v2);
  swift_setDeallocating();
  sub_100006390(v2 + 32, &qword_1000BD1A0, &qword_10008FB38);
  *(inited + 64) = sub_10000589C(&qword_1000BB920, &unk_10008FB40);
  *(inited + 40) = v6;
  sub_10007B5AC(inited);
  swift_setDeallocating();
  sub_100006390(inited + 32, &qword_1000BB928, &qword_100091380);
  type metadata accessor for AttributeName(0);
  sub_100006688(&qword_1000BB930, type metadata accessor for AttributeName, &unk_100090390);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = [v3 fontDescriptorByAddingAttributes:isa];

  v9 = [objc_opt_self() fontWithDescriptor:v8 size:0.0];
  return v9;
}

id sub_100004D20()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "layoutSubviews");
  v1 = &v0[OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_lastBounds];
  v2 = *&v0[OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_lastBounds];
  v3 = *&v0[OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_lastBounds + 8];
  v4 = *&v0[OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_lastBounds + 16];
  v5 = *&v0[OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_lastBounds + 24];
  v6 = v0[OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_lastBounds + 32];
  [v0 bounds];
  if ((v6 & 1) != 0 || (v22.origin.x = v7, v22.origin.y = v8, v22.size.width = v9, v22.size.height = v10, v21.origin.x = v2, v21.origin.y = v3, v21.size.width = v4, v21.size.height = v5, result = CGRectEqualToRect(v21, v22), (result & 1) == 0))
  {
    result = [v0 bounds];
    *v1 = v12;
    *(v1 + 1) = v13;
    *(v1 + 2) = v14;
    *(v1 + 3) = v15;
    v1[32] = 0;
    v16 = *&v0[OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_backgroundVisualEffectView];
    if (v16)
    {
      v17 = v16;
      [v0 bounds];
      v19 = sub_100006104(v18, 3.0);
      [v17 setEffect:v19];

      return [*&v0[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_openWithLabel] setHidden:v0[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_openButtonHidden]];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100004EA4()
{
  sub_100005938(*(v0 + OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle____lazy_storage____headerFont));
  v1 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle____lazy_storage____headerButtonFont);

  sub_100005938(v1);
}

id sub_100004F24()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_100005010(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000501C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000503C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 sub_10000507C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100005088(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000050A8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 sub_1000050E4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000050F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005118(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

void sub_100005178(void *a1, double a2, CGFloat a3)
{
  v4 = [a1 CGContext];
  sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10008F960;
  v6 = objc_opt_self();
  v7 = [v6 clearColor];
  v8 = [v7 CGColor];

  *(v5 + 32) = v8;
  v9 = [v6 blackColor];
  v10 = [v9 CGColor];

  *(v5 + 40) = v10;
  type metadata accessor for CGColor(0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  gradient = CGGradientCreateWithColors(0, isa, dbl_1000ADAF8);

  if (gradient)
  {

    v14.x = 0.0;
    v15.x = 0.0;
    v15.y = 0.0;
    v14.y = a3;
    CGContextDrawLinearGradient(v4, gradient, v14, v15, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100005314(uint64_t a1, uint64_t a2)
{
  result = static CGFloat._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100005368(uint64_t a1, uint64_t a2)
{
  v3 = static CGFloat._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_10000548C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

void sub_10000550C(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
}

uint64_t sub_100005554@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100005580(uint64_t a1)
{
  sub_100006688(&qword_1000BB930, type metadata accessor for AttributeName, &unk_100090390);
  sub_100006688(&qword_1000BBA10, type metadata accessor for AttributeName, &unk_100090144);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100005640(uint64_t a1)
{
  sub_100006688(&qword_1000BBA30, type metadata accessor for TraitKey, &unk_10008FEF4);
  sub_100006688(&qword_1000BBA38, type metadata accessor for TraitKey, &unk_10008FE94);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void *sub_1000056FC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_10000570C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_100005718(uint64_t a1)
{
  sub_100006688(&qword_1000BBA18, type metadata accessor for Weight, &unk_10009004C);
  sub_100006688(&qword_1000BBA20, type metadata accessor for Weight, &unk_10008FFEC);
  sub_100006AC0();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000057E0(uint64_t a1)
{
  sub_100006688(&qword_1000BBA00, type metadata accessor for FPProviderDomainID, &unk_100090308);
  sub_100006688(&qword_1000BBA08, type metadata accessor for FPProviderDomainID, &unk_1000902B0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10000589C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000058E4()
{
  result = qword_1000BB8F0;
  if (!qword_1000BB8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB8F0);
  }

  return result;
}

void sub_100005938(id a1)
{
  if (a1 != 1)
  {
  }
}

void sub_100005948(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
}

uint64_t sub_100005990(uint64_t a1)
{
  sub_100006688(&qword_1000BBA40, type metadata accessor for LaunchOptionsKey, &unk_1000903D4);
  sub_100006688(&qword_1000BBA48, type metadata accessor for LaunchOptionsKey, &unk_10008FD80);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void sub_100005A54()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
}

uint64_t sub_100005A90(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:_:)(a1, *&v2);
}

uint64_t sub_100005AA8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

double sub_100005AE4(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  return result;
}

Swift::Int sub_100005B38(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100005BC0(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

void sub_100005C48(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_locationTitle);
  *v2 = 0;
  v2[1] = 0;
  v3 = _DocumentManagerBundle();
  if (!v3)
  {
    __break(1u);
  }

  v4 = (v1 + OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_actionTitle);
  v10._object = 0x8000000100091C70;
  v5._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5._object = 0xEB00000000656C62;
  v6._countAndFlagsBits = 0x206E69206E65704FLL;
  v7._object = 0xED000073656C6946;
  v10._countAndFlagsBits = 0xD00000000000005DLL;
  v8 = v3;
  v7._countAndFlagsBits = 0x206E69206E65704FLL;
  v6._object = 0xED000073656C6946;
  v9 = DOCLocalizedString(_:tableName:bundle:value:comment:)(v7, v5, v8, v6, v10);

  *v4 = v9;
  *(v1 + OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_openButtonHidden) = 0;
  *(v1 + OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_interactionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_actionGestureRecognizer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100005D90()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100037B98(0xD000000000000019, 0x8000000100091C50, &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_1000064E0(v7);
  }

  (*(v1 + 8))(v3, v0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10003BB40();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100005F50()
{
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_openInImageSize) = 0x4047800000000000;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_iconSize) = 0x4051000000000000;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_visualEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_imageView) = 0;
  v1 = OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_shadowView;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_widthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService27DOCSBHeaderOpenLocationView_heightConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100006028()
{
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_iconSize) = 0x4051000000000000;
  v1 = OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_contentViewContainer;
  type metadata accessor for DOCSBCollectionViewCellContentView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_labelPlatterView) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_buttonPlatterView) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_widthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_heightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_openInImageSize) = 0x4047800000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100006104(double a1, double a2)
{
  result = 0;
  if (a2 > 0.0 && a1 > 0.0)
  {
    v5 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{1.0, a1}];
    v6 = swift_allocObject();
    *(v6 + 16) = 0x3FF0000000000000;
    *(v6 + 24) = a1;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_100006344;
    *(v7 + 24) = v6;
    v11[4] = sub_10000634C;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_100074FCC;
    v11[3] = &unk_1000ADEC8;
    v8 = _Block_copy(v11);

    v9 = [v5 imageWithActions:v8];

    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }

    else
    {
      v10 = [objc_opt_self() _effectWithVariableBlurRadius:v9 imageMask:a2 scale:1.0];

      return v10;
    }
  }

  return result;
}

unint64_t sub_1000062E8()
{
  result = qword_1000BB900;
  if (!qword_1000BB900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000BB900);
  }

  return result;
}

uint64_t sub_100006354(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100006380(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_100006390(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000589C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_100006404()
{
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_locationIcon) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_locationTitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_locationImageView) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_backgroundVisualEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle____lazy_storage____headerFont) = 1;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle____lazy_storage____headerButtonFont) = 1;
  v1 = v0 + OBJC_IVAR____TtC21DockFolderViewService42DOCSBFolderCollectionHeaderViewBannerStyle_lastBounds;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000064E0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_1000065F4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100006688(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100006AC0()
{
  result = qword_1000BBA28;
  if (!qword_1000BBA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BBA28);
  }

  return result;
}

void sub_100006B60(int a1, int a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  v167 = a6;
  LODWORD(v164) = a2;
  v19 = type metadata accessor for Logger();
  v168 = *(v19 - 8);
  __chkstk_darwin(v19);
  v159 = &v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v160 = (&v143 - v22);
  __chkstk_darwin(v23);
  v25 = &v143 - v24;
  static Logger.UI.getter();
  v26 = v10;

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  v29 = os_log_type_enabled(v27, v28);
  v162 = a1;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v161 = a5;
    v31 = v30;
    Strong = swift_slowAlloc();
    v176 = Strong;
    *v31 = 136316674;
    *(v31 + 4) = sub_100037B98(0xD000000000000053, 0x8000000100091DD0, &v176);
    *(v31 + 12) = 2080;
    v166 = a3;
    v163 = a4;
    v32 = *(v26 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
    v33 = *(v26 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8);

    v34 = sub_100037B98(v32, v33, &v176);

    *(v31 + 14) = v34;
    *(v31 + 22) = 2080;
    v170 = a7;
    v171 = a8;
    v172 = a9;
    v173 = a10;
    type metadata accessor for CGRect(0);
    v35 = String.init<A>(describing:)();
    v37 = sub_100037B98(v35, v36, &v176);

    *(v31 + 24) = v37;
    *(v31 + 32) = 1024;
    *(v31 + 34) = a1 & 1;
    *(v31 + 38) = 1024;
    *(v31 + 40) = v164 & 1;
    *(v31 + 44) = 2080;
    *(v31 + 46) = sub_100037B98(v166, v163, &v176);
    *(v31 + 54) = 2080;
    v38 = *(v26 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier + 8);
    v170 = *(v26 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier);
    v171 = v38;

    sub_10000589C(&qword_1000BBCF0, "0T");
    v39 = String.init<A>(describing:)();
    v41 = sub_100037B98(v39, v40, &v176);

    *(v31 + 56) = v41;
    a4 = v163;
    a3 = v166;
    _os_log_impl(&_mh_execute_header, v27, v28, "%s identifier: %s to: %s isExpanding: %{BOOL}d retargetExistingAnimation: %{BOOL}d animationID: %s mostRecentlyRequestedAnimationIdentifier: %s", v31, 0x40u);
    swift_arrayDestroy();

    a5 = v161;
  }

  v42 = v168[1];
  v42(v25, v19);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (a5)();
    return;
  }

  v43 = (v26 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame);
  if ((*(v26 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 32) & 1) != 0 || (v44 = *(v26 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer)) == 0)
  {
LABEL_39:
    (a5)(0);

    return;
  }

  v148 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer;
  v45 = v43[2];
  v155 = v43[3];
  v47 = *v43;
  v46 = v43[1];
  v48 = v44;
  v49 = v48;
  LOBYTE(v50) = v162;
  if (v162)
  {
    goto LABEL_9;
  }

  v51 = [v48 superview];
  if (!v51)
  {
    (a5)();

    return;
  }

  v44 = *(v26 + v148);
  if (v44)
  {
LABEL_9:
    v149 = v42;
    v154 = v19;
    v52 = v44;
    sub_100062FF4();

    v53 = *(v26 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView);
    if (v53)
    {
      v147 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
      [v53 layoutSubviews];
      v54 = 0.5;
      if (v50)
      {
        v54 = 1.0;
      }

      v146 = v54;
      v55 = 0.0;
      if (v50)
      {
        v56 = 0.0;
      }

      else
      {
        v56 = 1.0;
      }

      if ((v50 & 1) == 0)
      {
        a10 = v155;
        a9 = v45;
        a8 = v46;
        a7 = v47;
      }

      p_type = &stru_1000B6FF0.type;
      if (v50)
      {
        v55 = 1.0;
      }

      v145 = v55;
      if ((v164 & 1) == 0)
      {
        [v49 setAlpha:v56];
      }

      v58 = swift_allocObject();
      *(v58 + 16) = 0;
      v152 = v58 + 16;
      v59 = swift_allocObject();
      v156 = v59;
      *(v59 + 16) = _swiftEmptyArrayStorage;
      v157 = (v59 + 16);
      v60 = swift_allocObject();
      v153 = v60;
      *(v60 + 16) = _swiftEmptyArrayStorage;
      v158 = (v60 + 16);
      v61 = *(v26 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView);
      if (v61)
      {
        [v61 setAlpha:v56];
      }

      [*(v26 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView) setAlpha:1.0];
      v62 = *(v26 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView);
      v63 = v164;
      if (v62)
      {
        [v62 setAlpha:0.0];
      }

      v151 = v26;
      v165 = v49;
      v150 = v58;
      v161 = a5;
      v166 = a3;
      if ((v63 & 1) == 0)
      {
        v75 = sub_100008104(v26, Strong, v50 & 1, a3, a4, v49, v47, v46, v45, v155);
        v77 = v76;
        *v157 = v75;

        *v158 = v77;

        v79 = sub_1000099DC(v78);
        v80 = v79;
        v163 = a4;
        if (v79 >> 62)
        {
          goto LABEL_106;
        }

        v81 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_43;
      }

      v64 = *(v26 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts);
      if (v64)
      {
        v65 = v157;
        *v157 = v64;

        v66 = *(v26 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts);
        p_type = v156;
        if (v66)
        {
          *v158 = v66;

          sub_100009470(v67, v26, p_type, v58, a3, a4);

          sub_100009470(v68, v26, p_type, v58, a3, a4);

          swift_beginAccess();

          v70 = sub_1000099DC(v69);
          a5 = v70;
          if (v70 >> 62)
          {
            v71 = _CocoaArrayWrapper.endIndex.getter();
            if (!v71)
            {
              while (1)
              {
LABEL_70:

                swift_beginAccess();
                if (*v65 >> 62)
                {
LABEL_102:
                  v91 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v91 = *((*v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                swift_beginAccess();
                *(v58 + 16) = v91 == 0;
                v92 = v160;
                static Logger.UI.getter();
                v93 = v26;

                v94 = Logger.logObject.getter();
                v95 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v94, v95))
                {
                  v50 = v91;
                  v96 = a4;
                  p_type = swift_slowAlloc();
                  v174 = swift_slowAlloc();
                  *p_type = 136316162;
                  *(p_type + 4) = sub_100037B98(0xD000000000000053, 0x8000000100091DD0, &v174);
                  *(p_type + 12) = 2080;
                  v98 = *(v93 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
                  v97 = *(v93 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8);

                  v99 = sub_100037B98(v98, v97, &v174);

                  *(p_type + 14) = v99;
                  *(p_type + 22) = 2048;
                  if (*v157 >> 62)
                  {
                    v100 = _CocoaArrayWrapper.endIndex.getter();
                  }

                  else
                  {
                    v100 = *((*v157 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  a4 = v96;
                  *(p_type + 24) = v100;

                  *(p_type + 32) = 1024;
                  *(p_type + 34) = v50 == 0;

                  *(p_type + 38) = 2080;
                  *(p_type + 40) = sub_100037B98(v166, v96, &v174);
                  _os_log_impl(&_mh_execute_header, v94, v95, "%s identifier: %s animating from dock: %ld folderIsEmpty: %{BOOL}d animationID: %s", p_type, 0x30u);
                  swift_arrayDestroy();

                  v101 = v149;
                  v149(v160, v154);
                  v102 = v159;
                  LOBYTE(v50) = v162;
                }

                else
                {

                  v101 = v149;
                  v149(v92, v154);
                  v102 = v159;
                }

                static Logger.UI.getter();
                v103 = v93;

                v104 = Logger.logObject.getter();
                v105 = static os_log_type_t.debug.getter();

                v106 = os_log_type_enabled(v104, v105);
                v107 = v147;
                v164 = v103;
                if (v106)
                {
                  v108 = a4;
                  v109 = swift_slowAlloc();
                  p_type = swift_slowAlloc();
                  v175 = p_type;
                  *v109 = 136315906;
                  *(v109 + 4) = sub_100037B98(0xD000000000000053, 0x8000000100091DD0, &v175);
                  *(v109 + 12) = 2080;
                  v110 = &v103[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
                  v111 = *&v103[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
                  v112 = *(v110 + 1);

                  v113 = sub_100037B98(v111, v112, &v175);

                  *(v109 + 14) = v113;
                  *(v109 + 22) = 2048;
                  v114 = v158;
                  swift_beginAccess();
                  if (*v114 >> 62)
                  {
                    v115 = _CocoaArrayWrapper.endIndex.getter();
                  }

                  else
                  {
                    v115 = *((*v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  a4 = v108;
                  v77 = v166;
                  *(v109 + 24) = v115;

                  *(v109 + 32) = 2080;
                  *(v109 + 34) = sub_100037B98(v77, v108, &v175);
                  _os_log_impl(&_mh_execute_header, v104, v105, "%s identifier: %s animating from within cv: %ld animationID: %s", v109, 0x2Au);
                  swift_arrayDestroy();

                  v149(v159, v154);
                }

                else
                {

                  v101(v102, v154);
                  v77 = v166;
                }

                v116 = v151;
                if (v50)
                {
                  v117 = *(v151 + v148);
                  if (!v117)
                  {
                    goto LABEL_120;
                  }

                  [v117 setFrame:{v47, v46, v45, v155}];
                  [Strong layoutSubviews];
                }

                v118 = *(v116 + v107);
                if (!v118)
                {
                  goto LABEL_117;
                }

                v80 = v118;
                v119 = sub_100009E04();

                v144 = a7;
                v120 = v119 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
                a7 = v56;
                v26 = &off_10008F000;
                v56 = a8;
                if (!v120)
                {
                  break;
                }

                v143 = a7;
                if ((v119 & 0xC000000000000001) != 0)
                {
                  v121 = a9;
                  v122 = a10;
                  v123 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_92:
                  v124 = v123;

                  if (v124)
                  {
                    v125 = v124;
                    [v125 frame];
                    v128 = *(v116 + v107);
                    if (!v128)
                    {
                      goto LABEL_122;
                    }

                    v129 = v126;
                    v130 = v127;
                    [v128 frame];
                    [v125 setFrame:{v129, v130}];
                    [v125 layoutIfNeeded];
                  }

                  v131 = v50;
                  a7 = v143;
LABEL_97:
                  v168 = v124;
                  v132 = sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
                  v160 = &v143;
                  __chkstk_darwin(v132);
                  v133 = v164;
                  *(&v143 - 12) = v164;
                  *(&v143 - 11) = v144;
                  *(&v143 - 10) = v56;
                  *(&v143 - 9) = v121;
                  *(&v143 - 8) = v122;
                  *(&v143 - 7) = v124;
                  *(&v143 - 48) = v131 & 1;
                  v134 = v145;
                  *(&v143 - 5) = v145;
                  v135 = v157;
                  *(&v143 - 4) = v157;
                  *(&v143 - 3) = 1.0;
                  *(&v143 - 2) = v158;
                  v136 = swift_allocObject();
                  *(v136 + 16) = v77;
                  *(v136 + 24) = a4;
                  v137 = v161;
                  *(v136 + 32) = v133;
                  *(v136 + 40) = v137;
                  v138 = v156;
                  *(v136 + 48) = v167;
                  *(v136 + 56) = v138;
                  *(v136 + 64) = v153;
                  *(v136 + 72) = v131 & 1;
                  v139 = v133;

                  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();

                  __chkstk_darwin(v140);
                  *(&v143 - 4) = v135;
                  *(&v143 - 3) = v134;
                  *(&v143 - 2) = v158;
                  v141 = static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
                  __chkstk_darwin(v141);
                  *(&v143 - 6) = v139;
                  v142 = v146;
                  *(&v143 - 5) = v134;
                  *(&v143 - 4) = v142;
                  *(&v143 - 3) = v152;
                  *(&v143 - 2) = a7;
                  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();

                  return;
                }

                if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v121 = a9;
                  v122 = a10;
                  v123 = *(v119 + 32);
                  goto LABEL_92;
                }

                __break(1u);
LABEL_106:
                v81 = _CocoaArrayWrapper.endIndex.getter();
LABEL_43:
                v50 = &OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label;
                if (v81)
                {
                  v82 = 0;
                  v58 = v80 & 0xC000000000000001;
                  a4 = v80 & 0xFFFFFFFFFFFFFF8;
                  while (1)
                  {
                    if (v58)
                    {
                      v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      v26 = (v82 + 1);
                      if (__OFADD__(v82, 1))
                      {
                        goto LABEL_54;
                      }
                    }

                    else
                    {
                      if (v82 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_100;
                      }

                      v83 = *(v80 + 8 * v82 + 32);

                      v26 = (v82 + 1);
                      if (__OFADD__(v82, 1))
                      {
LABEL_54:
                        __break(1u);
                        goto LABEL_55;
                      }
                    }

                    [sub_1000128AC() setFrame:{*(v83 + 32), *(v83 + 40), *(v83 + 48), *(v83 + 56)}];
                    [Strong addSubview:sub_1000128AC()];
                    [sub_1000128AC() *(p_type + 3304)];
                    v84 = *(v83 + 224);
                    if (!v84)
                    {
                      break;
                    }

                    v85 = *(v84 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label);
                    if (!v85)
                    {
                      goto LABEL_113;
                    }

                    [v85 *(p_type + 3304)];

                    ++v82;
                    if (v26 == v81)
                    {
                      goto LABEL_55;
                    }
                  }

                  __break(1u);
LABEL_113:
                  __break(1u);
LABEL_114:
                  __break(1u);
LABEL_115:
                  __break(1u);
                  goto LABEL_116;
                }

LABEL_55:

                if (v77 >> 62)
                {
                  v86 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v86 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                a4 = v163;
                if (v86)
                {
                  v87 = 0;
                  v58 = v77 & 0xFFFFFFFFFFFFFF8;
                  do
                  {
                    if ((v77 & 0xC000000000000001) != 0)
                    {
                      v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      v26 = (v87 + 1);
                      if (__OFADD__(v87, 1))
                      {
                        goto LABEL_68;
                      }
                    }

                    else
                    {
                      if (v87 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_101;
                      }

                      v88 = *(v77 + 8 * v87 + 32);

                      v26 = (v87 + 1);
                      if (__OFADD__(v87, 1))
                      {
LABEL_68:
                        __break(1u);
                        break;
                      }
                    }

                    [sub_1000128AC() setFrame:{*(v88 + 32), *(v88 + 40), *(v88 + 48), *(v88 + 56)}];
                    [v165 addSubview:sub_1000128AC()];
                    [sub_1000128AC() *(p_type + 3304)];
                    v89 = *(v88 + 224);
                    if (!v89)
                    {
                      goto LABEL_114;
                    }

                    v90 = *(v89 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label);
                    if (!v90)
                    {
                      goto LABEL_115;
                    }

                    [v90 *(p_type + 3304)];

                    ++v87;
                  }

                  while (v26 != v86);
                }

                v65 = v157;
                v26 = v151;
                *(v151 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts) = *v157;

                *(v26 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts) = *v158;

                LOBYTE(v50) = v162;
                v58 = v150;
                p_type = v156;
              }

              v121 = a9;
              v122 = a10;

              v124 = 0;
              v131 = v50;
              goto LABEL_97;
            }
          }

          else
          {
            v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v71)
            {
              goto LABEL_70;
            }
          }

          v72 = 0;
          v26 = (a5 & 0xC000000000000001);
          p_type = a5 & 0xFFFFFFFFFFFFFF8;
          v50 = &stru_1000B6FF0.type;
          v58 = &stru_1000B6FF0.type;
          while (1)
          {
            if (v26)
            {
              v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v74 = v72 + 1;
              if (__OFADD__(v72, 1))
              {
                goto LABEL_38;
              }
            }

            else
            {
              if (v72 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_100:
                __break(1u);
LABEL_101:
                __break(1u);
                goto LABEL_102;
              }

              v73 = *(a5 + 8 * v72 + 32);

              v74 = v72 + 1;
              if (__OFADD__(v72, 1))
              {
LABEL_38:
                __break(1u);
                goto LABEL_39;
              }
            }

            [sub_1000128AC() setFrame:{v73[4], v73[5], v73[6], v73[7]}];
            [Strong addSubview:sub_1000128AC()];

            ++v72;
            if (v74 == v71)
            {
              LOBYTE(v50) = v162;
              v26 = v151;
              v58 = v150;
              p_type = v156;
              v65 = v157;
              goto LABEL_70;
            }
          }
        }

        goto LABEL_119;
      }
    }

    else
    {
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
    }

    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
  }

  __break(1u);
LABEL_122:
  __break(1u);
}

uint64_t sub_100008104(uint64_t a1, unint64_t a2, int a3, uint64_t a4, unint64_t a5, void *a6, double a7, double a8, double a9, double a10)
{
  v103 = a6;
  v105 = a4;
  v106 = a5;
  v108 = a3;
  v102 = type metadata accessor for Logger();
  v16 = *(v102 - 8);
  __chkstk_darwin(v102);
  i = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer);
  if (!v19)
  {
    __break(1u);
    goto LABEL_132;
  }

  [v19 convertRect:a2 fromCoordinateSpace:{a7, a8, a9, a10}];
  v20 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
  v21 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView);
  if (!v21)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v22 = v21;
  v23 = sub_100008CE4();

  v24 = *(a1 + v20);
  if (v24)
  {
    v25 = a2;
    v26 = v24;
    v27 = sub_100063294();

    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 0;
    }

    v29 = (v23 & 0xFFFFFFFFFFFFFF8);
    v30 = v23 >> 62;
    if (v23 >> 62)
    {
      goto LABEL_106;
    }

    v31 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31 >= v28)
    {
      v32 = v28;
    }

    else
    {
      v32 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v27)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    if (v31 >= v33)
    {
      goto LABEL_15;
    }

LABEL_119:
    __break(1u);
LABEL_120:
    for (i = _CocoaArrayWrapper.endIndex.getter(); ; i = *(v27 + 16))
    {
      v99 = a2;
      if (!i)
      {

        v23 = _swiftEmptyArrayStorage;
        if (!(a2 >> 62))
        {
          goto LABEL_80;
        }

        goto LABEL_99;
      }

      v109[0] = _swiftEmptyArrayStorage;
      v28 = v109;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (i < 0)
      {
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      v55 = 0;
      v16 = v27 & 0xC000000000000001;
      while (1)
      {
        v31 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        if (v16)
        {
          v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v29 = *(v27 + 16);
          if (v55 >= v29)
          {
            goto LABEL_104;
          }

          v56 = *(v27 + 8 * v55 + 32);
        }

        v57 = v56;
        v110 = v56;
        sub_100008EC8(&v110, v25, v108 & 1, v105, v106, v111, a7, a8, a9);

        if (v23)
        {
          goto LABEL_135;
        }

        v33 = v111[0];
        v28 = v109;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v30 = *(v109[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v55;
        if (v31 == i)
        {

          v23 = v109[0];
          v16 = v100;
          a2 = v99;
          if (!(v99 >> 62))
          {
LABEL_80:
            v104 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v104)
            {
              goto LABEL_100;
            }

            goto LABEL_81;
          }

LABEL_99:
          v104 = _CocoaArrayWrapper.endIndex.getter();
          if (!v104)
          {
LABEL_100:

            return v23;
          }

LABEL_81:
          v111[0] = _swiftEmptyArrayStorage;
          v28 = v111;
          v27 = v104;
          specialized ContiguousArray.reserveCapacity(_:)();
          if ((v27 & 0x8000000000000000) == 0)
          {
            v94 = v23;
            v30 = 0;
            v59 = a2 & 0xC000000000000001;
            v95 = a2 & 0xFFFFFFFFFFFFFF8;
            v60 = (v107 + 8);
            *&v58 = 136315650;
            v96 = v58;
            v101 = xmmword_100090450;
            v25 = v106;
            v98 = a2 & 0xC000000000000001;
            v29 = &v112;
            v97 = (v107 + 8);
            while (!__OFADD__(v30, 1))
            {
              v107 = v30 + 1;
              if (v59)
              {
                v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v29 = *(v95 + 16);
                if (v30 >= v29)
                {
                  goto LABEL_105;
                }

                v61 = *(a2 + 8 * v30 + 32);
              }

              v62 = v61;
              v63 = [v61 contentView];
              [v63 bounds];
              v65 = v64;
              v67 = v66;
              v69 = v68;
              v71 = v70;

              v72 = [v62 contentView];
              [v103 convertRect:v72 fromCoordinateSpace:{v65, v67, v69, v71}];
              a7 = v73;
              v75 = v74;
              a9 = v76;
              a8 = v77;

              if (v108)
              {
                v78 = 0.0;
              }

              else
              {
                v78 = a7;
              }

              if (v108)
              {
                v79 = a7;
              }

              else
              {
                v79 = 0.0;
              }

              static Logger.UI.getter();
              v80 = v62;

              v81 = Logger.logObject.getter();
              i = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v81, i))
              {
                v82 = swift_slowAlloc();
                v110 = swift_slowAlloc();
                *v82 = v96;
                *v109 = a7;
                v109[1] = v75;
                *&v109[2] = a9;
                *&v109[3] = a8;
                type metadata accessor for CGRect(0);
                v83 = String.init<A>(describing:)();
                v85 = sub_100037B98(v83, v84, &v110);

                *(v82 + 4) = v85;
                *(v82 + 12) = 2080;
                v86 = *&v80[qword_1000BD540];
                v87 = [v86 description];
                v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v90 = v89;

                v16 = v100;
                v60 = v97;
                v91 = sub_100037B98(v88, v90, &v110);
                v25 = v106;

                *(v82 + 14) = v91;
                *(v82 + 22) = 2080;
                *(v82 + 24) = sub_100037B98(v105, v25, &v110);
                _os_log_impl(&_mh_execute_header, v81, i, "animationFromDockTuple: cellIconViewFrameInCollectionView: %s gridCell: %s  animationID: %s", v82, 0x20u);
                swift_arrayDestroy();
                v59 = v98;

                a2 = v99;
              }

              (*v60)(v16, v102);
              type metadata accessor for FolderCellAnimationItemContext();
              v23 = swift_allocObject();
              *(v23 + 96) = v101;
              *(v23 + 112) = 0x3FF0000000000000;
              *(v23 + 120) = 0;
              *(v23 + 128) = 0;
              *(v23 + 136) = 0x3FF0000000000000;
              *(v23 + 144) = 0;
              *(v23 + 152) = 0;
              *(v23 + 160) = 0x3FF0000000000000;
              *(v23 + 168) = 0;
              *(v23 + 176) = 0;
              *(v23 + 184) = 0x3FF0000000000000;
              *(v23 + 192) = 0;
              *(v23 + 200) = 0;
              *(v23 + 208) = 0;
              *(v23 + 216) = 0;
              *(v23 + 224) = 0;
              *(v23 + 16) = v80;
              *(v23 + 24) = &off_1000B0598;
              *(v23 + 64) = v79;
              *(v23 + 72) = v75;
              *(v23 + 80) = a9;
              *(v23 + 88) = a8;
              *(v23 + 32) = v78;
              *(v23 + 40) = v75;
              *(v23 + 48) = a9;
              *(v23 + 56) = a8;
              v28 = v111;
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v27 = *(v111[0] + 16);
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              ++v30;
              v29 = v104;
              if (v107 == v104)
              {

                return v94;
              }
            }

            goto LABEL_103;
          }

          goto LABEL_122;
        }
      }

      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      if (v23 < 0)
      {
        a2 = v23;
      }

      else
      {
        a2 = v29;
      }

      v31 = _CocoaArrayWrapper.endIndex.getter();
      if (_CocoaArrayWrapper.endIndex.getter() < 0)
      {
        goto LABEL_134;
      }

      if (v31 >= v28)
      {
        v93 = v28;
      }

      else
      {
        v93 = v31;
      }

      if (v31 < 0)
      {
        v93 = v28;
      }

      if (v27)
      {
        v33 = v93;
      }

      else
      {
        v33 = 0;
      }

      if (_CocoaArrayWrapper.endIndex.getter() < v33)
      {
        goto LABEL_119;
      }

LABEL_15:
      v107 = v16;
      v100 = i;
      v34 = v23 & 0xC000000000000001;
      if ((v23 & 0xC000000000000001) == 0 || v33 == 0)
      {
      }

      else
      {
        type metadata accessor for DOCSBCollectionViewCell(0);

        v36 = 0;
        do
        {
          v37 = v36 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v36);
          v36 = v37;
        }

        while (v33 != v37);
      }

      if (v30)
      {

        a2 = _CocoaArrayWrapper.subscript.getter();
        v27 = v39;
        v33 = v40;
        if ((v40 & 1) == 0)
        {
LABEL_26:
          sub_10000DF28(a2, v38, v27, v33);
          v27 = v41;
LABEL_36:
          swift_unknownObjectRelease();
          v44 = v23 & 0xFFFFFFFFFFFFFF8;
          if (v30)
          {
            goto LABEL_37;
          }

          goto LABEL_33;
        }
      }

      else
      {
        v27 = 0;
        a2 = v23 & 0xFFFFFFFFFFFFFF8;
        v38 = (v23 & 0xFFFFFFFFFFFFFF8) + 32;
        v33 = (2 * v33) | 1;
        if ((v33 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v104 = v23 & 0xC000000000000001;
      v16 = v30;
      *&v101 = v38;
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v42 = swift_dynamicCastClass();
      if (!v42)
      {
        swift_unknownObjectRelease();
        v42 = _swiftEmptyArrayStorage;
      }

      v43 = v42[2];

      if (__OFSUB__(v33 >> 1, v27))
      {
        goto LABEL_123;
      }

      if (v43 != (v33 >> 1) - v27)
      {
        goto LABEL_125;
      }

      v27 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v30 = v16;
      v34 = v104;
      if (!v27)
      {
        v27 = _swiftEmptyArrayStorage;
        goto LABEL_36;
      }

      v44 = v23 & 0xFFFFFFFFFFFFFF8;
      if (v16)
      {
LABEL_37:
        if (v28 >= _CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_34;
        }

LABEL_38:
        if (v31 >= v28)
        {
          if (v30)
          {
            goto LABEL_42;
          }

          v45 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v45 < v28)
          {
            __break(1u);
LABEL_42:
            if (v23 < 0)
            {
              a2 = v23;
            }

            else
            {
              a2 = v23 & 0xFFFFFFFFFFFFFF8;
            }

            if (_CocoaArrayWrapper.endIndex.getter() >= v28)
            {
              v45 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_47;
            }

LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

LABEL_47:
          if (v45 < v31)
          {
            __break(1u);
            goto LABEL_127;
          }

          if (!v34 || v28 == v31)
          {
          }

          else
          {
            if (v28 >= v31)
            {
              goto LABEL_128;
            }

            type metadata accessor for DOCSBCollectionViewCell(0);

            v46 = v28;
            do
            {
              v47 = v46 + 1;
              _ArrayBuffer._typeCheckSlowPath(_:)(v46);
              v46 = v47;
            }

            while (v31 != v47);
          }

          v16 = v100;
          if (!v30)
          {
            a2 = v23 & 0xFFFFFFFFFFFFFF8;
            v33 = (v23 & 0xFFFFFFFFFFFFFF8) + 32;
            v34 = (2 * v31) | 1;
            goto LABEL_59;
          }

          a2 = _CocoaArrayWrapper.subscript.getter();
          v33 = v48;
          v28 = v49;
          v34 = v50;

          if ((v34 & 1) == 0)
          {
LABEL_58:
            sub_10000DF28(a2, v33, v28, v34);
            goto LABEL_64;
          }

LABEL_59:
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v51 = swift_dynamicCastClass();
          if (!v51)
          {
            swift_unknownObjectRelease();
            v51 = _swiftEmptyArrayStorage;
          }

          v31 = v51[2];

          if (__OFSUB__(v34 >> 1, v28))
          {
            goto LABEL_129;
          }

          if (v31 != (v34 >> 1) - v28)
          {
LABEL_130:
            swift_unknownObjectRelease_n();
            goto LABEL_58;
          }

          v52 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          if (!v52)
          {
LABEL_64:
            swift_unknownObjectRelease();
          }

          v109[0] = sub_10000FEB4(v53, sub_100010290);
          v23 = 0;
          sub_10000DE94(v109, sub_10000EA80, sub_10000E30C);

          v109[0] = sub_10000FEB4(v54, sub_100010290);
          sub_10000DE94(v109, sub_10000E408, sub_10000E210);

          a2 = v109[0];
          goto LABEL_66;
        }

LABEL_124:
        __break(1u);
LABEL_125:
        swift_unknownObjectRelease();
        v38 = v101;
        v30 = v16;
        v34 = v104;
        goto LABEL_26;
      }

LABEL_33:
      if (v28 < *(v44 + 16))
      {
        goto LABEL_38;
      }

LABEL_34:

      v23 = 0;
      a2 = _swiftEmptyArrayStorage;
      v16 = v100;
LABEL_66:
      if (v27 < 0 || (v27 & 0x4000000000000000) != 0)
      {
        goto LABEL_120;
      }
    }
  }

LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);

LABEL_135:

  __break(1u);
  return result;
}

void *sub_100008CE4()
{
  v1 = [v0 visibleCells];
  sub_10001A2A8(0, &qword_1000BBD08, UICollectionViewCell_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = v0;

  v9 = sub_10000FEB4(v3, sub_1000100F0);
  sub_10001280C(&v9, v2);

  v4 = v9;
  if ((v9 & 0x8000000000000000) == 0 && (v9 & 0x4000000000000000) == 0)
  {
    v5 = *(v9 + 16);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_12:

    return _swiftEmptyArrayStorage;
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_4:
  v9 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v5 < 0)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      ++v6;
      type metadata accessor for DOCSBCollectionViewCell(0);
      swift_dynamicCastClassUnconditional();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v5 != v6);

    return v9;
  }

  return result;
}

char *sub_100008EC8@<X0>(id *a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>)
{
  v84 = a4;
  v87 = a8;
  v17 = type metadata accessor for Logger();
  v88 = *(v17 - 8);
  v89 = v17;
  v18 = __chkstk_darwin(v17);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  [*a1 layoutIfNeeded];
  v22 = qword_1000BD540;
  [*&v21[qword_1000BD540] bounds];
  [a2 convertRect:*&v21[v22] fromCoordinateSpace:?];
  v25 = v23;
  v27 = v26;
  v28 = v24;
  v90 = v29;
  if (a3)
  {
    v23 = a7;
    v24 = a9;
    v30 = v25;
  }

  else
  {
    v30 = a7;
  }

  if (a3)
  {
    v31 = v28;
  }

  else
  {
    v31 = a9;
  }

  result = *&v21[qword_1000BD538];
  if (result)
  {
    v85 = v23 - (v28 - v24) * 0.5;
    v86 = v30 - (v28 - v31) * 0.5;
    [result bounds];
    MidY = CGRectGetMidY(v96);
    v34 = DOCItemCollectionCell.thumbnailView.getter();
    [v34 frame];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v97.origin.x = v36;
    v97.origin.y = v38;
    v97.size.width = v40;
    v97.size.height = v42;
    v43 = v87 - (CGRectGetMidY(v97) - MidY);
    if (a3)
    {
      v44 = v43;
    }

    else
    {
      v44 = v27;
    }

    if (a3)
    {
      v45 = v27;
    }

    else
    {
      v45 = v43;
    }

    static Logger.UI.getter();
    v46 = v21;

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v80 = v48;
      v81 = v46;
      v82 = a5;
      v83 = a6;
      v87 = v9;
      v49 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v95 = v79;
      *v49 = 136316674;
      *(v49 + 4) = sub_100037B98(0xD000000000000023, 0x8000000100091E70, &v95);
      *(v49 + 12) = 2080;
      v91 = v25;
      v92 = v27;
      v50 = v90;
      v93 = v28;
      v94 = v90;
      type metadata accessor for CGRect(0);
      v51 = String.init<A>(describing:)();
      v53 = sub_100037B98(v51, v52, &v95);

      *(v49 + 14) = v53;
      *(v49 + 22) = 2080;
      v54 = v86;
      v91 = v86;
      v92 = v45;
      v93 = v28;
      v94 = v50;
      v55 = String.init<A>(describing:)();
      v57 = sub_100037B98(v55, v56, &v95);

      *(v49 + 24) = v57;
      *(v49 + 32) = 2080;
      v58 = v85;
      v91 = v85;
      v92 = v44;
      v93 = v28;
      v94 = v50;
      v59 = String.init<A>(describing:)();
      v61 = sub_100037B98(v59, v60, &v95);

      *(v49 + 34) = v61;
      *(v49 + 42) = 2080;
      v62 = *(*&v21[v22] + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label);
      if (v62 && (v63 = [v62 text]) != 0)
      {
        v64 = v63;
        *&v65 = COERCE_DOUBLE(static String._unconditionallyBridgeFromObjectiveC(_:)());
        v67 = v66;
      }

      else
      {
        *&v65 = 0.0;
        v67 = 0.0;
      }

      v91 = *&v65;
      v92 = v67;
      sub_10000589C(&qword_1000BBCF0, "0T");
      v68 = String.init<A>(describing:)();
      v70 = sub_100037B98(v68, v69, &v95);

      *(v49 + 44) = v70;
      *(v49 + 52) = 2080;
      v71 = *&v21[v22];
      v72 = [v71 description];
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;

      v76 = sub_100037B98(v73, v75, &v95);

      *(v49 + 54) = v76;
      *(v49 + 62) = 2080;
      *(v49 + 64) = sub_100037B98(v84, v82, &v95);
      _os_log_impl(&_mh_execute_header, v47, v80, "%s animationFromDockTuple: cellContentViewContainerInHostView: %s centeredAndOffsetDestinationFrame: %s centeredAndOffsetOriginFrame: %s contentViewContainer: %s %s animationID: %s", v49, 0x48u);
      swift_arrayDestroy();

      (*(v88 + 8))(v20, v89);
      a6 = v83;
      v46 = v81;
    }

    else
    {

      (*(v88 + 8))(v20, v89);
      v50 = v90;
      v58 = v85;
      v54 = v86;
    }

    type metadata accessor for FolderCellAnimationItemContext();
    v77 = swift_allocObject();
    *(v77 + 96) = xmmword_100090450;
    *(v77 + 112) = 0x3FF0000000000000;
    *(v77 + 120) = 0;
    *(v77 + 128) = 0;
    *(v77 + 136) = 0x3FF0000000000000;
    *(v77 + 144) = 0;
    *(v77 + 152) = 0;
    *(v77 + 160) = 0x3FF0000000000000;
    *(v77 + 168) = 0;
    *(v77 + 176) = 0;
    *(v77 + 184) = 0x3FF0000000000000;
    *(v77 + 192) = 0;
    *(v77 + 200) = 0;
    *(v77 + 208) = 0;
    *(v77 + 216) = 0;
    *(v77 + 224) = 0;
    *(v77 + 16) = v46;
    *(v77 + 24) = &off_1000B0598;
    *(v77 + 64) = v54;
    *(v77 + 72) = v45;
    *(v77 + 80) = v28;
    *(v77 + 88) = v50;
    *(v77 + 32) = v58;
    *(v77 + 40) = v44;
    *(v77 + 48) = v28;
    *(v77 + 56) = v50;
    *a6 = v77;
    return v46;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100009470(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v45 = a5;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v15 = a2;

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  v44 = v17;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = v12;
    v43 = v11;
    v19 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v46 = v42;
    *v19 = 136316162;
    *(v19 + 4) = sub_100037B98(0xD00000000000002DLL, 0x8000000100091E30, &v46);
    *(v19 + 12) = 2080;
    v20 = &v15[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v21 = *&v15[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v22 = *(v20 + 1);

    v23 = sub_100037B98(v21, v22, &v46);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2048;
    swift_beginAccess();
    v24 = *(a3 + 16);
    if (v24 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = v43;
    *(v19 + 24) = v25;

    *(v19 + 32) = 1024;
    swift_beginAccess();
    *(v19 + 34) = *(a4 + 16);

    *(v19 + 38) = 2080;
    *(v19 + 40) = sub_100037B98(v45, a6, &v46);
    _os_log_impl(&_mh_execute_header, v16, v44, "%s identifier: %s animating from dock: %ld folderIsEmpty: %{BOOL}d animationID: %s", v19, 0x30u);
    swift_arrayDestroy();

    result = (*(v18 + 8))(v14, v26);
  }

  else
  {

    result = (*(v12 + 8))(v14, v11);
  }

  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v28)
  {
    do
    {
      v29 = 0;
      while ((a1 & 0xC000000000000001) != 0)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_16;
        }

LABEL_12:
        v32 = *(v30 + 64);
        v33 = *(v30 + 80);
        v34 = *(v30 + 48);
        *(v30 + 64) = *(v30 + 32);
        *(v30 + 80) = v34;
        *(v30 + 32) = v32;
        *(v30 + 48) = v33;
        v35 = *(v30 + 112);
        v36 = *(v30 + 160);
        v37 = *(v30 + 176);
        *(v30 + 96) = vextq_s8(*(v30 + 96), *(v30 + 96), 8uLL);
        *(v30 + 112) = v36;
        v38 = *(v30 + 128);
        v39 = *(v30 + 144);
        *(v30 + 160) = v35;
        *(v30 + 176) = v38;
        v40 = *(v30 + 192);
        *(v30 + 192) = v39;
        *(v30 + 128) = v37;
        *(v30 + 144) = v40;

        ++v29;
        if (v31 == v28)
        {
          return result;
        }
      }

      if (v29 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v31 = v29 + 1;
      if (!__OFADD__(v29, 1))
      {
        goto LABEL_12;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      result = _CocoaArrayWrapper.endIndex.getter();
      v28 = result;
    }

    while (result);
  }

  return result;
}

void sub_100009848(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView);
  if (v1)
  {
    v2 = [v1 visibleCells];
    sub_10001A2A8(0, &qword_1000BBD08, UICollectionViewCell_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        [v6 setAlpha:0.0];

        ++v5;
        if (v8 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1000099DC(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v13 = a1;
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      v15 = v14;
      v1 = sub_10000DD08(v14, 0);
      sub_100010420(v1 + 32, v15, v13);
      v17 = v16;

      if (v17 != v15)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = _CocoaArrayWrapper.endIndex.getter();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v6);
          v10 = *(v1 + 8 * v7 + 32);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_10000DE30(v1);
          v11 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v11) = 0;
        }

        v12 = v1 & 0xFFFFFFFFFFFFFF8;
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v10;

        if ((v1 & 0x8000000000000000) != 0 || v11)
        {
          a1 = sub_10000DE30(v1);
          v1 = a1;
          v12 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v12 + 16))
        {
          goto LABEL_34;
        }

        *(v12 + 8 * v7 + 32) = v9;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

unint64_t sub_100009BF0(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v13 = a1;
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      v15 = v14;
      v1 = sub_10000DD08(v14, 0);
      sub_1000105AC(v1 + 32, v15, v13);
      v17 = v16;

      if (v17 != v15)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = _CocoaArrayWrapper.endIndex.getter();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v6);
          v10 = *(v1 + 8 * v7 + 32);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_10000DE30(v1);
          v11 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v11) = 0;
        }

        v12 = v1 & 0xFFFFFFFFFFFFFF8;
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v10;
        a1 = swift_unknownObjectRelease();
        if ((v1 & 0x8000000000000000) != 0 || v11)
        {
          a1 = sub_10000DE30(v1);
          v1 = a1;
          v12 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v12 + 16))
        {
          goto LABEL_34;
        }

        *(v12 + 8 * v7 + 32) = v9;
        a1 = swift_unknownObjectRelease();
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

void *sub_100009E04()
{
  v1 = [v0 visibleSupplementaryViewsOfKind:UICollectionElementKindSectionHeader];
  sub_10001A2A8(0, &unk_1000BBD10, UICollectionReusableView_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_11:

    return _swiftEmptyArrayStorage;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      ++v5;
      type metadata accessor for DOCSBFolderCollectionHeaderView();
      swift_dynamicCastClassUnconditional();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v3 != v5);

    return _swiftEmptyArrayStorage;
  }

  return result;
}

void *sub_100009F94(char *a1, void *a2, char a3, uint64_t *a4, unint64_t *a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v12 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer;
  result = *&a1[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
  if (!result)
  {
    goto LABEL_42;
  }

  [result setFrame:{a6, a7, a8, a9}];
  result = *&a1[v12];
  if (!result)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  [result layoutIfNeeded];
  if (a2)
  {
    v20 = a2;
    [v20 frame];
    [v20 setFrame:?];
    [v20 layoutIfNeeded];
    v21 = 0.0;
    if (a3)
    {
      v21 = 1.0;
    }

    [v20 setAlpha:v21];
  }

  result = *&a1[v12];
  if (a3)
  {
    if (result)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (!result)
  {
LABEL_44:
    __break(1u);
    return result;
  }

LABEL_11:
  [result setAlpha:a10];
  swift_beginAccess();
  v22 = *a4;
  if (*a4 >> 62)
  {
    goto LABEL_39;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:

  if (v23)
  {
    v24 = 0;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_22:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          v23 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_13;
        }

        v25 = *(v22 + 8 * v24 + 32);

        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_22;
        }
      }

      [sub_1000128AC() setFrame:{v25[8], v25[9], v25[10], v25[11]}];
      [sub_1000128AC() setAlpha:a11];

      ++v24;
    }

    while (v26 != v23);
  }

  swift_beginAccess();
  v27 = *a5;
  if (*a5 >> 62)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v22 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22)
  {
    v28 = 0;
    do
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v28 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v29 = *(v27 + 8 * v28 + 32);

        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
LABEL_34:
          __break(1u);
          break;
        }
      }

      [sub_1000128AC() setFrame:{v29[8], v29[9], v29[10], v29[11]}];
      [sub_1000128AC() setAlpha:a11];

      ++v28;
    }

    while (v30 != v22);
  }

  v31 = objc_opt_self();
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1000143F8;
  *(v33 + 24) = v32;
  aBlock[4] = sub_100014410;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000099B4;
  aBlock[3] = &unk_1000AE2C0;
  v34 = _Block_copy(aBlock);
  v35 = a1;

  [v31 performWithoutAnimation:v34];
  _Block_release(v34);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  return result;
}

uint64_t sub_10000A3BC(int a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v75 = a7;
  v79 = a5;
  v76 = a1;
  v13 = type metadata accessor for Logger();
  __chkstk_darwin(v13);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &a4[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
  v17 = *&a4[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier + 8];
  v81 = v18;
  v77 = a2;
  if (v17)
  {
    if (*v16 == a2 && v17 == a3)
    {
      LODWORD(v80) = 1;
    }

    else
    {
      LODWORD(v80) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    LODWORD(v80) = 0;
  }

  static Logger.UI.getter();
  v20 = a4;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  v74 = v22;
  v23 = os_log_type_enabled(v21, v22);
  v78 = v20;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v73 = a8;
    v25 = v24;
    v71 = swift_slowAlloc();
    v83[0] = v71;
    *v25 = 136316418;
    *(v25 + 4) = sub_100037B98(0xD000000000000053, 0x8000000100091DD0, v83);
    *(v25 + 12) = 2080;
    v72 = v13;
    v27 = *&v20[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v26 = *&v20[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v28 = sub_100037B98(v27, v26, v83);

    *(v25 + 14) = v28;
    *(v25 + 22) = 1024;
    *(v25 + 24) = v76 & 1;
    *(v25 + 28) = 1024;
    v29 = v80;
    *(v25 + 30) = v80 & 1;
    *(v25 + 34) = 2080;
    *(v25 + 36) = sub_100037B98(v77, a3, v83);
    *(v25 + 44) = 2080;
    v30 = *(v16 + 1);
    v83[3] = *v16;
    v83[4] = v30;

    sub_10000589C(&qword_1000BBCF0, "0T");
    v31 = String.init<A>(describing:)();
    v33 = sub_100037B98(v31, v32, v83);

    *(v25 + 46) = v33;
    _os_log_impl(&_mh_execute_header, v21, v74, "%s identifier: %s animating from dock finished: %{BOOL}d finalAnimationCompleted: %{BOOL}d animationID: %s mostRecentlyRequestedAnimationIdentifier: %s", v25, 0x36u);
    swift_arrayDestroy();

    (*(v81 + 8))(v15, v72);
  }

  else
  {

    (*(v81 + 8))(v15, v13);
    v29 = v80;
  }

  result = (v79)(v29 & 1);
  v35 = v78;
  if (v29)
  {
    *&v78[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = 0;

    *&v35[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] = 0;

    v36 = v75;
    swift_beginAccess();
    v37 = *(v36 + 16);
    swift_beginAccess();
    v82 = v37;

    sub_10000D7A8(v38, sub_100010420, v39);
    v40 = v82;
    if (v82 >> 62)
    {
      goto LABEL_28;
    }

    for (i = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v42 = 0;
      v79 = v40 & 0xFFFFFFFFFFFFFF8;
      v80 = v40 & 0xC000000000000001;
      while (v80)
      {
        v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v44 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          goto LABEL_26;
        }

LABEL_20:
        v45 = v43[28];
        if (v45)
        {
          v46 = i;
          v47 = v43[2];
          v48 = v43[3];
          ObjectType = swift_getObjectType();
          v81 = v44;
          v82 = v47;
          v50 = *(v48 + 16);
          v51 = v45;
          v52 = v48;
          i = v46;
          v53 = v50(ObjectType, v52);
          v54 = v51;
          [v53 addSubview:v54];

          v55 = v43[2];
          v56 = v43[3];
          v57 = swift_getObjectType();
          v82 = v55;
          v58 = (*(v56 + 16))(v57, v56);
          [v58 bounds];
          v60 = v59;
          v62 = v61;
          v64 = v63;
          v66 = v65;

          [v54 setFrame:{v60, v62, v64, v66}];
          v44 = v81;
        }

        v67 = v43[27];
        if (v67)
        {
          v68 = v67;
          [v68 removeFromSuperview];
        }

        ++v42;
        if (v44 == i)
        {
          goto LABEL_29;
        }
      }

      if (v42 >= *(v79 + 16))
      {
        goto LABEL_27;
      }

      v43 = *(v40 + 8 * v42 + 32);

      v44 = v42 + 1;
      if (!__OFADD__(v42, 1))
      {
        goto LABEL_20;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      ;
    }

LABEL_29:

    v69 = v78;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10004AE34(v69, a9 & 1);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10000A9D8(unint64_t *a1, unint64_t *a2, __n128 a3)
{
  v3 = a3.n128_f64[0];
  swift_beginAccess();
  v5 = *a1;
  if (v5 >> 62)
  {
LABEL_33:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v8 = *(v5 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_14;
        }
      }

      v10 = *(v8 + 224);
      if (v10)
      {
        v11 = *(v10 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label);
        if (v11)
        {
          v12 = v11;
          [v12 setAlpha:v3];
        }
      }

      ++v7;
    }

    while (v9 != v6);
  }

  swift_beginAccess();
  v13 = *a2;
  if (*a2 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    while (1)
    {
      if (__OFSUB__(v5--, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 224);
        if (!v16)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      else
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (v5 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v15 = *(v13 + 32 + 8 * v5);

        v16 = *(v15 + 224);
        if (!v16)
        {
          goto LABEL_27;
        }
      }

      v17 = *(v16 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label);
      if (!v17)
      {
        break;
      }

      [v17 setAlpha:v3];

      if (!v5)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_28:
  }
}

void sub_10000AC10(char a1, int a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t a6, double a7, double a8, double a9, double a10)
{
  v106 = a5;
  v107 = type metadata accessor for Logger();
  v20 = *(v107 - 1);
  __chkstk_darwin(v107);
  v102 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v94 - v23;
  static Logger.UI.getter();
  v25 = v10;

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  v28 = os_log_type_enabled(v26, v27);
  v103 = a3;
  v105 = v20;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v114[0] = v101;
    *v29 = 136316674;
    *(v29 + 4) = sub_100037B98(0xD000000000000052, 0x8000000100091EA0, v114);
    v30 = a3;
    v31 = v25;
    v32 = v30;
    *(v29 + 12) = 2080;
    LODWORD(v100) = v27;
    v104 = a6;
    v33 = *&v31[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v34 = *&v31[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v35 = sub_100037B98(v33, v34, v114);

    *(v29 + 14) = v35;
    *(v29 + 22) = 2080;
    aBlock = *&a7;
    v109 = *&a8;
    v110 = *&a9;
    v111 = a10;
    type metadata accessor for CGRect(0);
    v36 = String.init<A>(describing:)();
    v38 = sub_100037B98(v36, v37, v114);

    *(v29 + 24) = v38;
    *(v29 + 32) = 1024;
    *(v29 + 34) = a1 & 1;
    *(v29 + 38) = 1024;
    *(v29 + 40) = a2 & 1;
    *(v29 + 44) = 2080;
    *(v29 + 46) = sub_100037B98(v32, a4, v114);
    *(v29 + 54) = 2080;
    v25 = v31;
    v39 = *&v31[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier + 8];
    aBlock = *&v31[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    v109 = v39;

    sub_10000589C(&qword_1000BBCF0, "0T");
    v40 = String.init<A>(describing:)();
    v42 = sub_100037B98(v40, v41, v114);

    *(v29 + 56) = v42;
    a6 = v104;
    _os_log_impl(&_mh_execute_header, v26, v100, "%s identifier: %s to: %s isExpanding: %{BOOL}d retargetExistingAnimation: %{BOOL}d animationID: %s mostRecentlyRequestedAnimationIdentifier: %s", v29, 0x40u);
    swift_arrayDestroy();

    v43 = v105;
  }

  else
  {

    v43 = v20;
  }

  v44 = *(v43 + 8);
  v44(v24, v107);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v106();
    return;
  }

  v46 = Strong;
  v47 = &v25[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame];
  if (v25[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame + 32])
  {
LABEL_6:
    (v106)(0);

    return;
  }

  v49 = v47[2];
  v48 = v47[3];
  v51 = *v47;
  v50 = v47[1];
  if ((a1 & 1) == 0)
  {
    v52 = *&v25[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
    if (!v52)
    {
      goto LABEL_6;
    }

    v53 = [v52 superview];
    if (!v53)
    {
      goto LABEL_6;
    }
  }

  v54 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer;
  v55 = *&v25[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
  if (!v55)
  {
    __break(1u);
    goto LABEL_47;
  }

  v56 = v55;
  sub_100062FF4();

  v57 = *&v25[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
  if (!v57)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  [v57 layoutSubviews];
  if (a1)
  {
    v58 = 0.0;
  }

  else
  {
    v58 = 1.0;
  }

  if (a1)
  {
    v59 = 1.0;
  }

  else
  {
    v59 = 0.0;
  }

  if (a1)
  {
    v60 = 1.0;
  }

  else
  {
    v60 = 0.5;
  }

  v115[0] = 0;
  v61 = *&v25[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
  if (v61)
  {
    [v61 setAlpha:v58];
  }

  [*&v25[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] setAlpha:1.0];
  v62 = *&v25[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
  if (v62)
  {
    [v62 setAlpha:0.0];
  }

  v101 = v46;
  v99 = v54;
  if (a2)
  {
    v63 = *&v25[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts];
    if (v63)
    {
      swift_bridgeObjectRetain_n();
      sub_10000C7C0(v63, v25, v63, v115, v103, a4);
      goto LABEL_31;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  sub_10000B7A4(v25, v46, a1 & 1, v51, v50, v49, v48);
  v64 = v46;
  v63 = v65;
  swift_bridgeObjectRetain_n();
  sub_10000C58C(v63, a1 & 1, v64, v25, v58);
  *&v25[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = v63;

  *&v25[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] = _swiftEmptyArrayStorage;

LABEL_31:
  v97 = v63 >> 62;
  if (v63 >> 62)
  {
    v66 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v66 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v98 = v66;
  v67 = v66 == 1;
  swift_beginAccess();
  v115[0] = v67;

  v68 = v102;
  static Logger.UI.getter();
  v100 = v25;
  v69 = v25;

  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.debug.getter();

  v96 = v71;
  v72 = os_log_type_enabled(v70, v71);
  v104 = a6;
  if (v72)
  {
    v95 = a2;
    v73 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    aBlock = v94;
    *v73 = 136316162;
    *(v73 + 4) = sub_100037B98(0xD000000000000052, 0x8000000100091EA0, &aBlock);
    *(v73 + 12) = 2080;
    v74 = *&v69[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v75 = *&v69[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v76 = sub_100037B98(v74, v75, &aBlock);

    *(v73 + 14) = v76;
    *(v73 + 22) = 2048;
    v77 = a4;
    if (v97)
    {
      v78 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v78 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    LOBYTE(a2) = v95;
    v80 = v98 == 1;

    *(v73 + 24) = v78;

    *(v73 + 32) = 1024;
    *(v73 + 34) = v80;
    *(v73 + 38) = 2080;
    a4 = v77;
    *(v73 + 40) = sub_100037B98(v103, v77, &aBlock);
    _os_log_impl(&_mh_execute_header, v70, v96, "%s identifier: %s animating from dock: %ld folderIsEmpty: %{BOOL}d animationID: %s", v73, 0x30u);
    swift_arrayDestroy();

    v79 = v102;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v79 = v68;
  }

  v44(v79, v107);
  if (a2)
  {
    goto LABEL_42;
  }

  v81 = *&v100[v99];
  if (!v81)
  {
LABEL_49:
    __break(1u);
    return;
  }

  [v81 setAlpha:v58];
LABEL_42:
  v82 = sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
  __chkstk_darwin(v82);
  *(&v94 - 4) = v69;
  *(&v94 - 3) = v59;
  *(&v94 - 2) = v63;
  *(&v94 - 8) = a1 & 1;
  v83 = &selRef__dimmingViewColor;
  if ((a1 & 1) == 0)
  {
    v83 = &selRef_clearColor;
  }

  v107 = v83;
  v84 = swift_allocObject();
  *(v84 + 16) = v103;
  *(v84 + 24) = a4;
  v85 = v106;
  *(v84 + 32) = v69;
  *(v84 + 40) = v85;
  *(v84 + 48) = v104;
  *(v84 + 56) = a1 & 1;
  *(v84 + 64) = v63;
  v86 = v69;

  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();

  __chkstk_darwin(v87);
  *(&v94 - 6) = v86;
  *(&v94 - 5) = v59;
  *(&v94 - 4) = v60;
  *(&v94 - 3) = v115;
  *(&v94 - 2) = v58;
  static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
  v88 = [objc_opt_self() *v107];
  v89 = objc_opt_self();
  v90 = swift_allocObject();
  *(v90 + 16) = v86;
  *(v90 + 24) = v88;
  v112 = sub_10001A3FC;
  v113 = v90;
  aBlock = _NSConcreteStackBlock;
  v109 = 1107296256;
  v110 = sub_10000D508;
  v111 = COERCE_DOUBLE(&unk_1000AE428);
  v91 = _Block_copy(&aBlock);
  v92 = v86;
  v93 = v88;

  [v89 animateWithDuration:65542 delay:v91 options:0 animations:0.25 completion:0.0];

  _Block_release(v91);
}

void sub_10000B7A4(uint64_t a1, void *a2, char a3, double a4, double a5, double a6, double a7)
{
  v7 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
  v8 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView);
  if (!v8)
  {
    __break(1u);
    goto LABEL_88;
  }

  v11 = v8;
  v12 = sub_100008CE4();

  v13 = *(a1 + v7);
  if (!v13)
  {
LABEL_88:
    __break(1u);
    return;
  }

  v14 = v13;
  i = sub_100009E04();

  if (i >> 62)
  {
    goto LABEL_78;
  }

  v16 = i & 0xFFFFFFFFFFFFFF8;

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  type metadata accessor for DOCSBFolderCollectionHeaderViewIconStyle();
  if (swift_dynamicCastMetatype() || (v95 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
  {
LABEL_5:

    goto LABEL_6;
  }

  v96 = v16 + 32;
  while (swift_dynamicCastClass())
  {
    v96 += 8;
    if (!--v95)
    {
      goto LABEL_5;
    }
  }

  for (i = v16 | 1; ; i = v97)
  {
LABEL_6:
    v17 = sub_10000BEF0(i, type metadata accessor for DOCSBFolderCollectionHeaderViewIconStyle);

    v18 = sub_10000BEF0(v12, type metadata accessor for DOCSBCollectionViewCell);
    v109 = v17;
    sub_10000D65C(v18);
    v19 = v109;
    v20 = v12 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

    v12 = *(v19 + 16);
    if (v12)
    {
      v98 = v20;
      v115 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v100 = type metadata accessor for FolderCellAnimationItemContext();
      v21 = (v19 + 40);
      p_type = &stru_1000B6FF0.type;
      __asm { FMOV            V0.2D, #1.0 }

      v99 = *(&_Q0 + 1);
      do
      {
        v29 = *(v21 - 1);
        v30 = *v21;
        ObjectType = swift_getObjectType();
        v32 = v29;
        [v32 transform];
        v106 = v109;
        v107 = v110;
        v33 = *&v112;
        v108 = v111;
        v34 = v113;
        v35 = v114;
        v36 = p_type;
        v37 = p_type[416];
        v110 = 0;
        v111 = 0;
        v109 = 0x3FF0000000000000;
        v112 = 0x3FF0000000000000;
        v113 = 0;
        v114 = 0;
        [v32 v37];
        [v32 layoutIfNeeded];
        v109 = v32;
        v38 = *(v30 + 8);
        v39 = v38(ObjectType, v30);
        [v39 bounds];
        v41 = v40;
        v43 = v42;
        v45 = v44;
        v47 = v46;

        v48 = v38(ObjectType, v30);
        [a2 convertRect:v48 fromCoordinateSpace:{v41, v43, v45, v47}];
        v50 = v49;
        v52 = v51;
        v54 = v53;
        v56 = v55;

        if (a3)
        {
          v57 = a4;
        }

        else
        {
          v57 = v50;
        }

        v58 = a5;
        v59 = a6;
        if (a3)
        {
          v60 = a5;
        }

        else
        {
          v60 = v52;
        }

        if (a3)
        {
          v61 = a6;
        }

        else
        {
          v61 = v54;
        }

        v62 = a7;
        if (a3)
        {
          v63 = a7;
        }

        else
        {
          v63 = v56;
        }

        if (a3)
        {
          v64 = v50;
        }

        else
        {
          v64 = a4;
        }

        if (a3)
        {
          v58 = v52;
          v59 = v54;
          v62 = v56;
        }

        sub_100011068(v32, v64, v58, v59, v62, v57, v60, v61, v63, v100, ObjectType, v30);
        v66 = v65;
        if (a3)
        {
          *(v65 + 96) = 0;
          [v32 alpha];
          *(&v68 + 1) = v99;
          *&v68 = v67;
          v69 = 0uLL;
          v70 = 1.0;
          v71 = 0;
          v72 = 0;
          v74 = v107;
          v73 = v108;
          v75 = *&v106;
        }

        else
        {
          [v32 alpha];
          *(v66 + 96) = v76;
          v74 = v107;
          v73 = v108;
          *&v69 = v107;
          *(&v69 + 1) = v108;
          *&v68 = 0;
          v75 = *&v106;
          *(&v68 + 1) = v106;
          v71 = v35;
          v72 = v34;
          v70 = v33;
        }

        *(v66 + 104) = v68;
        *(v66 + 120) = v69;
        v77 = v75;
        v78 = v74;
        *(v66 + 136) = v70;
        *(v66 + 144) = v72;
        v79 = v33;
        v80 = v34;
        v81 = v35;
        *(v66 + 152) = v71;
        p_type = v36;
        if ((a3 & 1) == 0)
        {
          v78 = 0;
          v77 = 1.0;
          v73 = 0;
          v79 = 1.0;
          v80 = 0;
          v81 = 0;
        }

        *(v66 + 160) = v77;
        *(v66 + 168) = v78;
        *(v66 + 176) = v73;
        *(v66 + 184) = v79;
        *(v66 + 192) = v80;
        *(v66 + 200) = v81;
        v109 = v32;
        *(v66 + 208) = (*(v30 + 24))(ObjectType, v30) & 1;
        v28 = v36[416];
        v109 = v106;
        v110 = v107;
        v111 = v108;
        v112 = *&v33;
        v113 = v34;
        v114 = v35;
        [v32 v28];
        [v32 layoutIfNeeded];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v21 += 2;
        --v12;
      }

      while (v12);

      v82 = v115;
      v20 = v98;
      if (!(v115 >> 62))
      {
LABEL_34:
        v83 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v83)
        {
          return;
        }

        goto LABEL_35;
      }
    }

    else
    {

      v82 = _swiftEmptyArrayStorage;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_34;
      }
    }

    v83 = _CocoaArrayWrapper.endIndex.getter();
    if (!v83)
    {
      return;
    }

LABEL_35:
    if (v83 == 0x8000000000000000)
    {
      goto LABEL_75;
    }

    v84 = v83 - 1;
    v85 = v82 & 0xC000000000000001;
    if ((v82 & 0xC000000000000001) != 0)
    {
      v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (v20 < 1)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if ((v84 & 0x8000000000000000) != 0)
      {
        goto LABEL_76;
      }

      if (v84 >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      if (v20 < 1)
      {
        goto LABEL_64;
      }
    }

    v87 = 104;
    if (a3)
    {
      v87 = 96;
    }

    *(v86 + v87) = 0x3FF0000000000000;

    if (v83 == 1)
    {
      return;
    }

    if (v83 == 0x8000000000000001)
    {
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v88 = v83 - 2;
    if (v85)
    {
      v89 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (v20 == 1)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if ((v88 & 0x8000000000000000) != 0)
      {
        goto LABEL_76;
      }

      if (v88 >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      if (v20 == 1)
      {
        goto LABEL_64;
      }
    }

    v90 = 104;
    if (a3)
    {
      v90 = 96;
    }

    *(v89 + v90) = 0x3FF0000000000000;

    if (v83 == 2)
    {
      return;
    }

    if (v83 == 0x8000000000000002)
    {
      goto LABEL_75;
    }

    v91 = v83 - 3;
    if (v85)
    {
      v92 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (v20 == 2)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if ((v91 & 0x8000000000000000) != 0)
      {
        goto LABEL_76;
      }

      if (v91 >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      if (v20 == 2)
      {
        goto LABEL_64;
      }
    }

    v93 = 104;
    if (a3)
    {
      v93 = 96;
    }

    *(v92 + v93) = 0x3FF0000000000000;

    if (v83 == 3)
    {
      return;
    }

    if (v83 == 0x8000000000000003)
    {
      goto LABEL_75;
    }

    v94 = v83 - 4;
    if (v85)
    {
      break;
    }

    if ((v94 & 0x8000000000000000) != 0)
    {
      goto LABEL_76;
    }

    if (v94 < *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_64;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    type metadata accessor for DOCSBFolderCollectionHeaderViewIconStyle();

    v97 = _bridgeCocoaArray<A>(_:)();
    swift_bridgeObjectRelease_n();
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_64:
}

void *sub_10000BEF0(unint64_t a1, uint64_t (*a2)(void))
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_10000F738(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        a2(0);
        sub_10000589C(&qword_1000BBD48, &qword_100090540);
        swift_dynamicCast();
        v7 = v15;
        v9 = _swiftEmptyArrayStorage[2];
        v8 = _swiftEmptyArrayStorage[3];
        if (v9 >= v8 >> 1)
        {
          sub_10000F738((v8 > 1), v9 + 1, 1);
          v7 = v15;
        }

        _swiftEmptyArrayStorage[2] = v9 + 1;
        *&_swiftEmptyArrayStorage[2 * v9 + 4] = v7;
      }
    }

    else
    {
      v10 = (a1 + 32);
      a2(0);
      do
      {
        v11 = *v10;
        sub_10000589C(&qword_1000BBD48, &qword_100090540);
        swift_dynamicCast();
        v12 = v15;
        v14 = _swiftEmptyArrayStorage[2];
        v13 = _swiftEmptyArrayStorage[3];
        if (v14 >= v13 >> 1)
        {
          sub_10000F738((v13 > 1), v14 + 1, 1);
          v12 = v15;
        }

        _swiftEmptyArrayStorage[2] = v14 + 1;
        *&_swiftEmptyArrayStorage[2 * v14 + 4] = v12;
        ++v10;
        --v4;
      }

      while (v4);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

char *sub_10000C104(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v12 = _swiftEmptyArrayStorage;
  result = sub_10000F758(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
        swift_dynamicCast();
        v12 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10000F758((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        v3[2] = v7 + 1;
        sub_10001A344(v11, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
        swift_dynamicCast();
        v12 = v3;
        v10 = v3[2];
        v9 = v3[3];
        if (v10 >= v9 >> 1)
        {
          sub_10000F758((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        v3[2] = v10 + 1;
        sub_10001A344(v11, &v3[4 * v10 + 4]);
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_10000C2FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F7B8(0, v1, 0);
    v3 = a1 + 32;
    do
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_10000589C(&qword_1000BBD90, &qword_100090580);
      sub_10000589C(&qword_1000BBD88, &qword_100090578);
      swift_dynamicCast();
      v4 = v8;
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_10000F7B8((v5 > 1), v6 + 1, 1);
        v4 = v8;
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      *&_swiftEmptyArrayStorage[2 * v6 + 4] = v4;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10000C444(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000F778(0, v1, 0);
    v3 = a1 + 32;
    do
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_10000589C(&qword_1000BBD88, &qword_100090578);
      sub_10000589C(&qword_1000BBD90, &qword_100090580);
      swift_dynamicCast();
      v4 = v8;
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_10000F778((v5 > 1), v6 + 1, 1);
        v4 = v8;
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      *&_swiftEmptyArrayStorage[2 * v6 + 4] = v4;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void sub_10000C58C(unint64_t a1, char a2, void *a3, uint64_t a4, double a5)
{
  if (a1 >> 62)
  {
LABEL_23:
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  v8 = 0;
  v22 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v9 = *(a1 + 8 * v8 + 32);

      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    v11 = sub_1000128AC();
    if (a2)
    {
      [a3 addSubview:v11];
    }

    else
    {
      [a3 insertSubview:v11 belowSubview:*(a4 + v22)];
    }

    v12 = sub_1000128AC();
    v13 = *(v9 + 96);
    v14 = v12;
    [v14 setAlpha:v13];
    [v14 setFrame:{*(v9 + 32), *(v9 + 40), *(v9 + 48), *(v9 + 56)}];
    v15 = *(v9 + 128);
    v26[0] = *(v9 + 112);
    v26[1] = v15;
    v26[2] = *(v9 + 144);
    [v14 setTransform:v26];
    v16 = *(v9 + 224);
    if (!v16)
    {
      break;
    }

    v17 = *(v16 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_labelContainer);
    if (v17)
    {
      [v17 setAlpha:a5];
      v16 = *(v9 + 224);
      if (!v16)
      {
        break;
      }
    }

    v18 = *(v16 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_thumbnailShadow);
    if (v18)
    {
      v19 = [v18 layer];
      v21 = v19;
      if (*(v9 + 208))
      {
        *&v20 = 0.0;
      }

      else
      {
        *&v20 = a5;
      }

      [v19 setShadowOpacity:{v20, v22}];
    }

    ++v8;
    if (v10 == v7)
    {
      return;
    }
  }

  __break(1u);
}

void sub_10000C7C0(unint64_t a1, void *a2, unint64_t a3, unsigned __int8 *a4, uint64_t a5, unint64_t a6)
{
  v40 = a4;
  v41 = a5;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  static Logger.UI.getter();

  v14 = a2;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v38 = v11;
    v39 = v10;
    v17 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v17 = 136316162;
    *(v17 + 4) = sub_100037B98(0xD00000000000002DLL, 0x8000000100091E30, &v42);
    *(v17 + 12) = 2080;
    v18 = &v14[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v20 = *&v14[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v19 = *(v18 + 1);

    v21 = sub_100037B98(v20, v19, &v42);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2048;
    if (a3 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v39;

    *(v17 + 24) = v22;

    *(v17 + 32) = 1024;
    v24 = v40;
    swift_beginAccess();
    *(v17 + 34) = *v24;
    *(v17 + 38) = 2080;
    *(v17 + 40) = sub_100037B98(v41, a6, &v42);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s identifier: %s animating from dock: %ld folderIsEmpty: %{BOOL}d animationID: %s", v17, 0x30u);
    swift_arrayDestroy();

    (*(v38 + 8))(v13, v23);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v11 + 8))(v13, v10);
  }

  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v26 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_16;
      }

LABEL_12:
      v29 = *(v27 + 64);
      v30 = *(v27 + 80);
      v31 = *(v27 + 48);
      *(v27 + 64) = *(v27 + 32);
      *(v27 + 80) = v31;
      *(v27 + 32) = v29;
      *(v27 + 48) = v30;
      v32 = *(v27 + 112);
      v33 = *(v27 + 160);
      v34 = *(v27 + 176);
      *(v27 + 96) = vextq_s8(*(v27 + 96), *(v27 + 96), 8uLL);
      *(v27 + 112) = v33;
      v35 = *(v27 + 128);
      v36 = *(v27 + 144);
      *(v27 + 160) = v32;
      *(v27 + 176) = v35;
      v37 = *(v27 + 192);
      *(v27 + 192) = v36;
      *(v27 + 128) = v34;
      *(v27 + 144) = v37;

      ++v26;
      if (v28 == i)
      {
        return;
      }
    }

    if (v26 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v28 = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void sub_10000CB74(uint64_t a1, unint64_t a2, char a3, double a4)
{
  v4 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer);
  if (!v4)
  {
    __break(1u);
    return;
  }

  [v4 setAlpha:?];
  if (a2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = 0;
    while ((a2 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_12;
      }

LABEL_8:
      v12 = v10;
      sub_10000CCA0(&v12, a3 & 1, a4);

      ++v9;
      if (v11 == i)
      {
        return;
      }
    }

    if (v9 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v10 = *(a2 + 8 * v9 + 32);

    v11 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_10000CCA0(uint64_t *a1, char a2, double a3)
{
  v5 = *a1;
  v6 = sub_1000128AC();
  v7 = *(v5 + 104);
  v8 = v6;
  [v8 setAlpha:v7];
  [v8 setFrame:{*(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88)}];
  if (a2)
  {
    [v8 setFrame:{*(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88)}];
    v9 = *(v5 + 176);
    v18 = *(v5 + 160);
    v19 = v9;
    v20 = *(v5 + 192);
    [v8 setTransform:&v18];
  }

  else
  {
    v10 = *(v5 + 176);
    v18 = *(v5 + 160);
    v19 = v10;
    v20 = *(v5 + 192);
    [v8 setTransform:&v18];
    [v8 setFrame:{*(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88)}];
  }

  v11 = *(v5 + 224);
  if (!v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = *(v11 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_labelContainer);
  if (!v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v12 setAlpha:a3];
  v13 = *(v5 + 224);
  if (!v13)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v14 = *(v13 + OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_thumbnailShadow);
  if (v14)
  {
    v15 = [v14 layer];
    v16 = v15;
    *&v17 = a3;
    if (*(v5 + 208))
    {
      *&v17 = 0.0;
    }

    [v15 setShadowOpacity:v17];
  }

  [v8 layoutIfNeeded];
}

uint64_t sub_10000CE40(int a1, uint64_t a2, unint64_t a3, char *a4, uint64_t (*a5)(void), uint64_t a6, int a7, uint64_t a8)
{
  v76 = a8;
  v74 = a7;
  v14 = type metadata accessor for Logger();
  __chkstk_darwin(v14);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &a4[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
  v18 = *&a4[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier + 8];
  v78 = v19;
  v73 = a2;
  v72 = a1;
  if (v18)
  {
    if (*v17 == a2 && v18 == a3)
    {
      LODWORD(v77) = 1;
    }

    else
    {
      LODWORD(v77) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    LODWORD(v77) = 0;
  }

  static Logger.UI.getter();
  v21 = a4;

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  v24 = os_log_type_enabled(v22, v23);
  v75 = v21;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v71 = a6;
    v26 = v25;
    v68 = swift_slowAlloc();
    v81 = v68;
    *v26 = 136316418;
    *(v26 + 4) = sub_100037B98(0xD000000000000052, 0x8000000100091EA0, &v81);
    v69 = v14;
    v70 = a5;
    *(v26 + 12) = 2080;
    v28 = *&v21[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v27 = *&v21[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v29 = sub_100037B98(v28, v27, &v81);

    *(v26 + 14) = v29;
    *(v26 + 22) = 1024;
    *(v26 + 24) = v72 & 1;
    *(v26 + 28) = 1024;
    v30 = v77;
    *(v26 + 30) = v77 & 1;
    *(v26 + 34) = 2080;
    *(v26 + 36) = sub_100037B98(v73, a3, &v81);
    *(v26 + 44) = 2080;
    a5 = v70;
    v31 = *(v17 + 1);
    v79 = *v17;
    v80 = v31;

    sub_10000589C(&qword_1000BBCF0, "0T");
    v32 = String.init<A>(describing:)();
    v34 = sub_100037B98(v32, v33, &v81);
    v21 = v75;

    *(v26 + 46) = v34;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s identifier: %s animating from dock finished: %{BOOL}d finalAnimationCompleted: %{BOOL}d animationID: %s mostRecentlyRequestedAnimationIdentifier: %s", v26, 0x36u);
    swift_arrayDestroy();

    (*(v78 + 8))(v16, v69);
    v35 = v76;
  }

  else
  {

    (*(v78 + 8))(v16, v14);
    v35 = v76;
    v30 = v77;
  }

  result = a5(v30 & 1);
  if (v30)
  {
    *&v21[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = 0;

    *&v21[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] = 0;

    v37 = *&v21[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
    if (v37)
    {
      v38 = 1.0;
      if (v74)
      {
        v38 = 0.0;
      }

      [v37 setAlpha:v38];
    }

    if (v35 >> 62)
    {
      goto LABEL_32;
    }

    for (i = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v40 = 0;
      v77 = v35 & 0xFFFFFFFFFFFFFF8;
      v78 = v35 & 0xC000000000000001;
      while (v78)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v42 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_30;
        }

LABEL_24:
        v43 = v41[28];
        if (v43)
        {
          v44 = v41[2];
          v45 = v41[3];
          ObjectType = swift_getObjectType();
          v79 = v44;
          v47 = *(v45 + 16);
          v48 = v43;
          v49 = v47(ObjectType, v45);
          v50 = v48;
          [v49 addSubview:v50];

          v51 = v41[2];
          v52 = v41[3];
          v53 = swift_getObjectType();
          v79 = v51;
          v54 = *(v52 + 16);
          v55 = v52;
          v35 = v76;
          v56 = v54(v53, v55);
          [v56 bounds];
          v58 = v57;
          v60 = v59;
          v62 = v61;
          v64 = v63;

          [v50 setFrame:{v58, v60, v62, v64}];
        }

        v65 = v41[27];
        if (v65)
        {
          v66 = v65;
          [v66 removeFromSuperview];
        }

        ++v40;
        if (v42 == i)
        {
          goto LABEL_33;
        }
      }

      if (v40 >= *(v77 + 16))
      {
        goto LABEL_31;
      }

      v41 = *(v35 + 8 * v40 + 32);

      v42 = v40 + 1;
      if (!__OFADD__(v40, 1))
      {
        goto LABEL_24;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      ;
    }

LABEL_33:
    v67 = v75;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10004AE34(v67, v74 & 1);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_10000D410(uint64_t a1, _BYTE *a2, __n128 a3, CGFloat a4, double a5)
{
  v8 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView;
  v9 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView);
  if (v9)
  {
    [v9 setAlpha:a3.n128_f64[0]];
    v11 = *(a1 + v8);
    if (v11)
    {
      v14.a = 1.0;
      v14.b = 0.0;
      v14.c = 0.0;
      v14.d = 1.0;
      v14.tx = 0.0;
      v14.ty = 0.0;
      CGAffineTransformScale(&v13, &v14, a4, a4);
      v14 = v13;
      [v11 setTransform:&v14];
    }
  }

  result = swift_beginAccess();
  if (*a2 == 1)
  {
    result = *(a1 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView);
    if (result)
    {
      return [result setAlpha:a5];
    }
  }

  return result;
}

double sub_10000D508(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_10000D54C()
{

  return _swift_deallocClassInstance(v0, 232, 7);
}

__n128 sub_10000D5B8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10000D5D4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000D5F4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 80) = v3;
  return result;
}

void sub_10000D65C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_10000D9A4(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10000589C(&qword_1000BBD48, &qword_100090540);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_10000D7A8(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t), __n128 a3)
{
  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v7 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v6);
    v9 = v7 + v6;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = _CocoaArrayWrapper.endIndex.getter();
  v8 = __OFADD__(v16, v6);
  v9 = v16 + v6;
  if (v8)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10000DD90(v9, 1, a3);
  v10 = *v3;
  v11 = *v3 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v3 = v10;
    return;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

char *sub_10000D8A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000589C(&qword_1000BBD20, &qword_100090528);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_10000D9A4(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000589C(&unk_1000BBD50, &qword_100090548);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000589C(&qword_1000BBD48, &qword_100090540);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000DAD8(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000589C(&qword_1000BBD98, &qword_100090588);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000589C(&qword_1000BBD90, &qword_100090580);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000DC0C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10000589C(&unk_1000BBE10, &qword_1000905D0);
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
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

void *sub_10000DD08(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_10000DD90(uint64_t a1, char a2, __n128 a3)
{
  v5 = *v3;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v3 = v5;
  if (result)
  {
    if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v3 = result;
  return result;
}

uint64_t sub_10000DE30(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_10000DE94(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), void (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_100010FC0(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_10000E0FC(v10, a2, a3);
  return specialized ContiguousArray._endMutation()();
}

void sub_10000DF28(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
        type metadata accessor for DOCSBCollectionViewCell(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_10000E00C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
        sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_10000E0FC(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), void (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  v7 = _minimumMergeRunLength(_:)(v6);
  if (v7 < v6)
  {
    if (v6 >= -1)
    {
      v8 = v7;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for DOCSBCollectionViewCell(0);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v11 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    a3(0, v6, 1, a1);
  }
}

void sub_10000E210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 frame];
      v15 = v14;
      [v13 frame];
      v17 = v16;

      if (v15 >= v17)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10000E30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 frame];
      v15 = v14;
      [v13 frame];
      v17 = v16;

      if (v17 >= v15)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10000E408(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_10000F704(v8);
    }

    v99 = v5;
    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v5 = v100 - 1;
        v101 = *&v8[16 * v100];
        v102 = *&v8[16 * v100 + 24];
        sub_10000F0F8((*a3 + 8 * v101), (*a3 + 8 * *&v8[16 * v100 + 16]), (*a3 + 8 * v102), v9);
        if (v99)
        {
          goto LABEL_98;
        }

        if (v102 < v101)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10000F704(v8);
        }

        if (v100 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v103 = &v8[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        sub_10000F678(v100 - 1);
        v100 = *(v8 + 2);
        if (v100 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v105 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 frame];
      v19 = v18;
      [v17 frame];
      v21 = v20;

      v22 = v12 + 2;
      while (v6 != v22)
      {
        v23 = *(v14 - 1);
        v24 = *v14;
        v25 = v23;
        [v24 frame];
        v27 = v26;
        [v25 frame];
        v29 = v28;

        ++v22;
        ++v14;
        if (v19 < v21 == v27 >= v29)
        {
          v6 = (v22 - 1);
          break;
        }
      }

      v9 = v12;
      if (v19 < v21)
      {
        if (v6 < v12)
        {
          goto LABEL_118;
        }

        if (v12 < v6)
        {
          v30 = 8 * v6 - 8;
          v31 = v6;
          v32 = v12;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v5);
              *(v34 + v5) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            v32 = (v32 + 1);
            v30 -= 8;
            v5 += 8;
          }

          while (v32 < v31);
        }
      }

      v10 = v6;
      v5 = v105;
    }

    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = v9 + a4;
        }

        if (v36 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v10 != v36)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_10000D8A0(0, *(v8 + 2) + 1, 1, v8);
    }

    v54 = *(v8 + 2);
    v53 = *(v8 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v8 = sub_10000D8A0((v53 > 1), v54 + 1, 1, v8);
    }

    *(v8 + 2) = v55;
    v56 = &v8[16 * v54];
    *(v56 + 4) = v9;
    *(v56 + 5) = v10;
    v57 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v111 = v10;
    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_57:
          if (v62)
          {
            goto LABEL_105;
          }

          v75 = &v8[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_108;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_112;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v85 = &v8[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_71:
        if (v80)
        {
          goto LABEL_107;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_78:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v97 = *&v8[16 * v96 + 32];
        v9 = *&v8[16 * v58 + 40];
        sub_10000F0F8((*a3 + 8 * v97), (*a3 + 8 * *&v8[16 * v58 + 32]), (*a3 + 8 * v9), v57);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v9 < v97)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10000F704(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v98 = &v8[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v9;
        sub_10000F678(v58);
        v55 = *(v8 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_103;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_104;
      }

      v70 = &v8[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_106;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_109;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_113;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v111;
    v6 = a3[1];
    if (v111 >= v6)
    {
      goto LABEL_88;
    }
  }

  v106 = v5;
  v37 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v10 - 8;
  v107 = v37;
  v40 = v37 - v10;
  v109 = v36;
LABEL_30:
  v110 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    [v45 frame];
    v48 = v47;
    [v46 frame];
    v50 = v49;

    if (v48 >= v50)
    {
LABEL_29:
      v10 = v110 + 1;
      v39 += 8;
      --v40;
      if (v110 + 1 != v109)
      {
        goto LABEL_30;
      }

      v10 = v109;
      v5 = v106;
      v9 = v107;
      goto LABEL_37;
    }

    if (!v38)
    {
      break;
    }

    v51 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v51;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

void sub_10000EA80(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_10000F704(v8);
    }

    v99 = v5;
    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v5 = v100 - 1;
        v101 = *&v8[16 * v100];
        v102 = *&v8[16 * v100 + 24];
        sub_10000F3B8((*a3 + 8 * v101), (*a3 + 8 * *&v8[16 * v100 + 16]), (*a3 + 8 * v102), v9);
        if (v99)
        {
          goto LABEL_98;
        }

        if (v102 < v101)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10000F704(v8);
        }

        if (v100 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v103 = &v8[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        sub_10000F678(v100 - 1);
        v100 = *(v8 + 2);
        if (v100 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v105 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 frame];
      v19 = v18;
      [v17 frame];
      v21 = v20;

      v22 = v12 + 2;
      while (v6 != v22)
      {
        v23 = *(v14 - 1);
        v24 = *v14;
        v25 = v23;
        [v24 frame];
        v27 = v26;
        [v25 frame];
        v29 = v28;

        ++v22;
        ++v14;
        if (v21 < v19 == v29 >= v27)
        {
          v6 = (v22 - 1);
          break;
        }
      }

      v9 = v12;
      if (v21 < v19)
      {
        if (v6 < v12)
        {
          goto LABEL_118;
        }

        if (v12 < v6)
        {
          v30 = 8 * v6 - 8;
          v31 = v6;
          v32 = v12;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v5);
              *(v34 + v5) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            v32 = (v32 + 1);
            v30 -= 8;
            v5 += 8;
          }

          while (v32 < v31);
        }
      }

      v10 = v6;
      v5 = v105;
    }

    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = v9 + a4;
        }

        if (v36 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v10 != v36)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_10000D8A0(0, *(v8 + 2) + 1, 1, v8);
    }

    v54 = *(v8 + 2);
    v53 = *(v8 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v8 = sub_10000D8A0((v53 > 1), v54 + 1, 1, v8);
    }

    *(v8 + 2) = v55;
    v56 = &v8[16 * v54];
    *(v56 + 4) = v9;
    *(v56 + 5) = v10;
    v57 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v111 = v10;
    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_57:
          if (v62)
          {
            goto LABEL_105;
          }

          v75 = &v8[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_108;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_112;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v85 = &v8[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_71:
        if (v80)
        {
          goto LABEL_107;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_78:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v97 = *&v8[16 * v96 + 32];
        v9 = *&v8[16 * v58 + 40];
        sub_10000F3B8((*a3 + 8 * v97), (*a3 + 8 * *&v8[16 * v58 + 32]), (*a3 + 8 * v9), v57);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v9 < v97)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10000F704(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v98 = &v8[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v9;
        sub_10000F678(v58);
        v55 = *(v8 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_103;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_104;
      }

      v70 = &v8[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_106;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_109;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_113;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v111;
    v6 = a3[1];
    if (v111 >= v6)
    {
      goto LABEL_88;
    }
  }

  v106 = v5;
  v37 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v10 - 8;
  v107 = v37;
  v40 = v37 - v10;
  v109 = v36;
LABEL_30:
  v110 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    [v45 frame];
    v48 = v47;
    [v46 frame];
    v50 = v49;

    if (v50 >= v48)
    {
LABEL_29:
      v10 = v110 + 1;
      v39 += 8;
      --v40;
      if (v110 + 1 != v109)
      {
        goto LABEL_30;
      }

      v10 = v109;
      v5 = v106;
      v9 = v107;
      goto LABEL_37;
    }

    if (!v38)
    {
      break;
    }

    v51 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v51;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_10000F0F8(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
    }

    v24 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v41 = v4;
LABEL_26:
      __dst = v24;
      v26 = v24 - 1;
      --v5;
      v27 = v14;
      do
      {
        v28 = v5 + 1;
        v29 = *--v27;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        [v32 frame];
        v35 = v34;
        [v33 frame];
        v37 = v36;

        if (v35 < v37)
        {
          v38 = v30;
          if (v28 != __dst)
          {
            *v5 = *v30;
          }

          v4 = v41;
          if (v14 <= v41 || (v24 = v38, v38 <= v6))
          {
            v24 = v38;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v28 != v14)
        {
          *v5 = *v27;
        }

        --v5;
        v14 = v27;
        v26 = v30;
      }

      while (v27 > v41);
      v14 = v27;
      v24 = __dst;
      v4 = v41;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 frame];
        v19 = v18;
        [v17 frame];
        v21 = v20;

        if (v19 >= v21)
        {
          break;
        }

        v22 = v13;
        v23 = v6 == v13++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v22 = v4;
      v23 = v6 == v4++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v22;
      goto LABEL_17;
    }

LABEL_19:
    v24 = v6;
  }

LABEL_37:
  if (v24 != v4 || v24 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_10000F3B8(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
    }

    v24 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v41 = v4;
LABEL_26:
      __dst = v24;
      v26 = v24 - 1;
      --v5;
      v27 = v14;
      do
      {
        v28 = v5 + 1;
        v29 = *--v27;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        [v32 frame];
        v35 = v34;
        [v33 frame];
        v37 = v36;

        if (v37 < v35)
        {
          v38 = v30;
          if (v28 != __dst)
          {
            *v5 = *v30;
          }

          v4 = v41;
          if (v14 <= v41 || (v24 = v38, v38 <= v6))
          {
            v24 = v38;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v28 != v14)
        {
          *v5 = *v27;
        }

        --v5;
        v14 = v27;
        v26 = v30;
      }

      while (v27 > v41);
      v14 = v27;
      v24 = __dst;
      v4 = v41;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 frame];
        v19 = v18;
        [v17 frame];
        v21 = v20;

        if (v21 >= v19)
        {
          break;
        }

        v22 = v13;
        v23 = v6 == v13++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v22 = v4;
      v23 = v6 == v4++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v22;
      goto LABEL_17;
    }

LABEL_19:
    v24 = v6;
  }

LABEL_37:
  if (v24 != v4 || v24 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_10000F678(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10000F704(v3);
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

char *sub_10000F718(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000F83C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000F738(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000F948(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000F758(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000FA7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000F778(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000FB8C(a1, a2, a3, *v3, &qword_1000BBD98, &qword_100090588, &qword_1000BBD90, &qword_100090580);
  *v3 = result;
  return result;
}

void *sub_10000F7B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000FB8C(a1, a2, a3, *v3, &qword_1000BBDA0, &unk_100090590, &qword_1000BBD88, &qword_100090578);
  *v3 = result;
  return result;
}

void *sub_10000F7F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000FCC0(a1, a2, a3, *v3, &qword_1000BBD80, qword_100090560, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

char *sub_10000F83C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000589C(&qword_1000BBDC0, &qword_100090E90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000F948(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000589C(&unk_1000BBD50, &qword_100090548);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000589C(&qword_1000BBD48, &qword_100090540);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000FA7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000589C(&unk_1000BCA60, &qword_1000905C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000FB8C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10000589C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000589C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_10000FCC0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000589C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_10000FEB4(unint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = sub_10000DD08(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10000FF50(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10001A2F0(&qword_1000BBD68, &qword_1000BBD60, &qword_100090550);
          for (i = 0; i != v6; ++i)
          {
            sub_10000589C(&qword_1000BBD60, &qword_100090550);
            v9 = sub_100010DA8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000100F0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10001A2F0(&qword_1000BBD40, &qword_1000BBD38, &qword_100090538);
          for (i = 0; i != v6; ++i)
          {
            sub_10000589C(&qword_1000BBD38, &qword_100090538);
            v9 = sub_100010DA8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10001A2A8(0, &qword_1000BBD08, UICollectionViewCell_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100010290(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10001A2F0(&qword_1000BBD30, &qword_1000BBD28, &qword_100090530);
          for (i = 0; i != v6; ++i)
          {
            sub_10000589C(&qword_1000BBD28, &qword_100090530);
            v9 = sub_100010E28(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for DOCSBCollectionViewCell(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100010420(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10001A2F0(&qword_1000BBD00, &qword_1000BBCF8, &unk_100090518);
          for (i = 0; i != v6; ++i)
          {
            sub_10000589C(&qword_1000BBCF8, &unk_100090518);
            v9 = sub_100010EB0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for FolderCellAnimationItemContext();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000105AC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10001A2F0(&qword_1000BBDB8, &qword_1000BBDB0, &unk_1000905A0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000589C(&qword_1000BBDB0, &unk_1000905A0);
            v9 = sub_100010F38(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100010748(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10001A2F0(&unk_1000BBE00, &qword_1000BBDF8, &qword_1000905C0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000589C(&qword_1000BBDF8, &qword_1000905C0);
            v9 = sub_100010DA8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10001A2A8(0, &qword_1000BBDF0, UIDocumentBrowserAction_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000108E8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10001A2F0(&qword_1000BBDE8, &qword_1000BBDE0, &qword_1000905B8);
          for (i = 0; i != v6; ++i)
          {
            sub_10000589C(&qword_1000BBDE0, &qword_1000905B8);
            v9 = sub_100010DA8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10001A2A8(0, &unk_1000BC6A0, UIKeyCommand_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100010A88(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10001A2F0(&unk_1000BBDD0, &qword_1000BBDC8, &qword_1000905B0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000589C(&qword_1000BBDC8, &qword_1000905B0);
            v9 = sub_100010DA8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for DOCSBFolderPresentationController(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100010C18(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10001A2F0(&qword_1000BBD78, &qword_1000BBD70, &qword_100090558);
          for (i = 0; i != v6; ++i)
          {
            sub_10000589C(&qword_1000BBD70, &qword_100090558);
            v9 = sub_100010DA8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for RecentItemCell();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_100010DA8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10001A428;
  }

  __break(1u);
  return result;
}

void (*sub_100010E28(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100010EA8;
  }

  __break(1u);
  return result;
}