uint64_t sub_100086EA8()
{
  v1 = type metadata accessor for UICellConfigurationState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (v5)
  {

    v6 = [v0 _bridgedConfigurationState];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter())
    {
      v7 = 1;
    }

    else
    {
      v7 = UICellConfigurationState.isEditing.getter();
    }

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_100086FD8(uint64_t a1, __n128 a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100086634();
  }
}

void sub_100087070()
{
  v1 = v0;
  v2 = type metadata accessor for UICellConfigurationState();
  __chkstk_darwin(v2 - 8);
  v3 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (v3)
  {
    v11 = v3;
    if (dispatch thunk of DOCItemCollectionCellContent.hasAllTheProperties.getter())
    {
      v4 = sub_10008751C();
      v5 = qword_1000BD548;
      v6 = *&v0[qword_1000BD548];
      if (v6)
      {
        v7 = v4;
        v8 = v6;
        v9 = [v1 _bridgedConfigurationState];
        static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

        DOCItemCollectionCell.BackgroundStateView.configurationState.setter();
        v10 = *&v1[v5];
        if (v10)
        {
          [v10 setHidden:(v7 & 1) == 0];
        }
      }

      [v1 setNeedsLayout];
    }

    else
    {
    }
  }
}

void sub_1000871BC(void *a1)
{
  v4.receiver = a1;
  v4.super_class = type metadata accessor for DOCSBCollectionViewCell(0);
  v1 = v4.receiver;
  objc_msgSendSuper2(&v4, "prepareForReuse");
  v2 = *&v1[qword_1000BD548];
  if (v2)
  {
    v3 = v2;
    [v3 setHidden:{1, v4.receiver, v4.super_class}];
  }
}

uint64_t sub_10008723C()
{
  v1 = objc_allocWithZone(type metadata accessor for DOCItemCollectionListCellSpringLoadedInteractionEffect());
  v2 = v0;
  return DOCItemCollectionListCellSpringLoadedInteractionEffect.init(targetCell:)();
}

void sub_100087274()
{
  if ((dispatch thunk of DOCItemCollectionCell.isRenaming.getter() & 1) == 0)
  {
    v0 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
    if (v0)
    {
      v5 = v0;
      v1 = dispatch thunk of DOCItemCollectionCellContent.shouldDim.getter();
      v2 = DOCItemCollectionCell.thumbnailView.getter();
      v3 = v2;
      v4 = 0.35;
      if ((v1 & 1) == 0)
      {
        v4 = 1.0;
      }

      [v2 setAlpha:v4];
    }
  }
}

uint64_t sub_100087324(double a1)
{
  result = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (result)
  {
    v2 = result;
    if (dispatch thunk of DOCItemCollectionCellContent.isFolder.getter())
    {

      return 1;
    }

    else
    {
      v3 = dispatch thunk of DOCItemCollectionCellContent.thumbnail.getter();
      if (v3)
      {
        v4 = [v3 isRepresentativeIcon];
        swift_unknownObjectRelease();

        return v4 ^ 1;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

void sub_1000873A0()
{
  v1 = *(v0 + qword_1000BD548);
}

id sub_10008740C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100087444(uint64_t a1)
{
  v2 = *(a1 + qword_1000BD548);
}

id sub_1000874BC()
{
  v1 = [*v0 contentView];

  return v1;
}

uint64_t sub_10008751C()
{
  v1 = type metadata accessor for UICellConfigurationState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  if ((dispatch thunk of DOCItemCollectionCellContent.hasAllTheProperties.getter() & 1) == 0)
  {

LABEL_6:
    v8 = 0;
    return v8 & 1;
  }

  v7 = [v0 _bridgedConfigurationState];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v7) = UICellConfigurationState.isSelected.getter();
  (*(v2 + 8))(v4, v1);
  if (v7)
  {

    v8 = 1;
  }

  else
  {
    v8 = dispatch thunk of DOCItemCollectionCellContent.isFocusing.getter();
  }

  return v8 & 1;
}

void sub_10008765C(char *a1)
{
  v1 = *&a1[qword_1000BD548];
  if (v1)
  {
    v9 = v1;
    sub_100087734(v10);
    if ((v11 & 1) == 0)
    {
      v3 = *v10;
      v4 = *&v10[1];
      v5 = *&v10[2];
      v6 = *&v10[3];
      v7 = [v9 superview];
      if (v7)
      {
        v8 = v7;
        [a1 convertRect:v7 toCoordinateSpace:{v3, v4, v5, v6}];
        [v9 setFrame:?];
      }
    }
  }
}

void sub_100087734(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (v8)
  {
    v9 = v8;
    if (dispatch thunk of DOCItemCollectionCellContent.isFocusing.getter())
    {
    }

    else
    {
      static Logger.UI.getter();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Laying out a focus view of a cell that has no focus.", v12, 2u);
      }

      (*(v5 + 8))(v7, v4);
    }
  }

  v13 = *(v2 + qword_1000BD538);
  if (v13)
  {
    v14 = v13;
    DOCImageViewContainerView.focusImageBackgroundFrame.getter();

    v15 = v17;
    *a1 = *&v16[8];
    *(a1 + 16) = v15;
    *(a1 + 32) = v18;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000878E8(void *a1)
{
  v1 = a1;
  sub_100086634();
}

void sub_1000879A0(void *a1)
{
  v2 = v1;
  sub_100086568(a1);
  sub_100086094(0x4050000000000000, 0x4050000000000000, 0);
  v3 = qword_1000BD540;
  [*&v1[qword_1000BD540] setAutoresizingMask:18];
  v4 = *&v1[v3];
  v5 = [v2 contentView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v4 setFrame:{v7, v9, v11, v13}];
  v14 = qword_1000BD538;
  if (!*&v2[qword_1000BD538])
  {
    __break(1u);
    goto LABEL_17;
  }

  [*&v2[v3] addSubview:?];
  v15 = *&v2[v3];
  v16 = sub_100088104();
  [v15 addSubview:v16];

  v17 = *&v2[v3];
  v18 = qword_1000BD610;
  v19 = *&v2[qword_1000BD610];
  v20 = *&v17[OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label];
  *&v17[OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_label] = v19;
  v21 = v17;
  v22 = v19;

  v23 = *&v2[v14];
  if (!v23)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24 = v23;
  v25 = DOCItemCollectionCell.thumbnailView.getter();
  [v24 addSubview:v25];

  v26 = *&v2[v14];
  if (!v26)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v27 = v26;
  DOCItemCollectionCell.thumbnailView.getter();
  dispatch thunk of DOCImageViewContainerView.containedView.setter();

  v28 = *&v2[v14];
  if (!v28)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = DOCItemCollectionCell.thumbnailView.getter();
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

  v30 = DOCItemCollectionCell.thumbnailView.getter();
  LODWORD(v31) = 1144750080;
  [v30 setContentCompressionResistancePriority:0 forAxis:v31];

  v32 = DOCItemCollectionCell.thumbnailView.getter();
  LODWORD(v33) = 1144750080;
  [v32 setContentCompressionResistancePriority:1 forAxis:v33];

  [*&v2[v18] setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = *&v2[v14];
  if (!v34)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v35 = [v34 widthAnchor];
  v36 = &v2[qword_1000BD530];
  if (v2[qword_1000BD530 + 16])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v37 = v35;
  v38 = [v35 constraintEqualToConstant:*v36];

  v39 = qword_1000BD600;
  v40 = *&v2[qword_1000BD600];
  *&v2[qword_1000BD600] = v38;

  v41 = *&v2[v14];
  if (!v41)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v42 = [v41 heightAnchor];
  if (v36[2])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v43 = v42;
  v85 = v18;
  v44 = [v42 constraintEqualToConstant:v36[1]];

  v45 = qword_1000BD608;
  v46 = *&v2[qword_1000BD608];
  *&v2[qword_1000BD608] = v44;

  sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_10008F920;
  v48 = *&v2[v14];
  if (!v48)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v49 = [v48 topAnchor];
  v50 = [*&v2[v3] topAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v47 + 32) = v51;
  v52 = *&v2[v14];
  if (!v52)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v53 = [v52 centerXAnchor];
  v54 = [*&v2[v3] centerXAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];

  *(v47 + 40) = v55;
  v56 = *&v2[v39];
  if (!v56)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(v47 + 48) = v56;
  v57 = *&v2[v45];
  if (!v57)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(v47 + 56) = v57;
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_10008F960;
  v59 = v57;
  v60 = v56;
  v61 = DOCItemCollectionCell.thumbnailView.getter();
  v62 = [v61 centerXAnchor];

  v63 = *&v2[v14];
  if (!v63)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v64 = [v63 centerXAnchor];
  v65 = [v62 constraintEqualToAnchor:v64];

  *(v58 + 32) = v65;
  v66 = DOCItemCollectionCell.thumbnailView.getter();
  v67 = [v66 bottomAnchor];

  v68 = *&v2[v14];
  if (v68)
  {
    v69 = [v68 bottomAnchor];
    v70 = [v67 constraintEqualToAnchor:v69];

    *(v58 + 40) = v70;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100090F10;
    v72 = [*&v2[v85] trailingAnchor];
    v73 = [*&v2[v3] trailingAnchor];
    v74 = [v72 constraintEqualToAnchor:v73];

    *(inited + 32) = v74;
    v75 = [*&v2[v85] leadingAnchor];
    v76 = [*&v2[v3] leadingAnchor];
    v77 = [v75 constraintEqualToAnchor:v76];

    *(inited + 40) = v77;
    v78 = [*&v2[v85] bottomAnchor];
    v79 = [*&v2[v3] bottomAnchor];
    v80 = [v78 constraintEqualToAnchor:v79 constant:-3.0];

    *(inited + 48) = v80;
    v81 = objc_opt_self();
    sub_10000D644(inited, v82);
    sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v81 activateConstraints:isa];

    v84 = Array._bridgeToObjectiveC()().super.isa;

    [v81 activateConstraints:v84];

    return;
  }

LABEL_29:
  __break(1u);
}

id sub_100088104()
{
  v1 = qword_1000BD610;
  v2 = *&v0[qword_1000BD610];
  if (v2)
  {
    v3 = *&v0[qword_1000BD610];
  }

  else
  {
    v4 = sub_100088168(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100088168(void *a1)
{
  v2 = [objc_allocWithZone(UILabel) init];
  [v2 setTextAlignment:1];
  [v2 setNumberOfLines:1];
  v3 = v2;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_opt_self();
  v5 = [v4 labelColor];
  [v3 setTextColor:v5];

  [v3 setLineBreakMode:5];
  LODWORD(v6) = 1148846080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [v3 setContentCompressionResistancePriority:1 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v3 setContentHuggingPriority:1 forAxis:v8];
  LODWORD(v9) = 1148846080;
  [v3 setContentHuggingPriority:0 forAxis:v9];
  v10 = [v4 clearColor];
  [v3 setBackgroundColor:v10];

  v11 = objc_opt_self();
  v12 = [a1 traitCollection];
  v13 = [v11 preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption2 compatibleWithTraitCollection:v12];

  v14 = v13;
  [v14 pointSize];
  v16 = [objc_opt_self() fontWithDescriptor:v14 size:v15];

  [v3 setFont:v16];
  return v3;
}

void sub_1000883C4(double a1)
{
  v1 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (v1)
  {
    v4 = v1;
    dispatch thunk of DOCItemCollectionCellContent.title.getter();
    v2 = sub_100088104();
    v3 = String._bridgeToObjectiveC()();

    [v2 setText:v3];
  }
}

void sub_100088494(uint64_t a1)
{
  type metadata accessor for DOCItemCollectionCell();
  v1 = method lookup function for DOCItemCollectionCell();
  v1();
  sub_100087274();
  v2 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (v2)
  {
    v3 = v2;
    dispatch thunk of DOCItemCollectionCellContent.title.getter();
    v4 = sub_100088104();
    v5 = String._bridgeToObjectiveC()();

    [v4 setText:v5];
  }

  sub_100087274();
  v6 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (v6)
  {
    v9 = v6;
    dispatch thunk of DOCItemCollectionCellContent.title.getter();
    v7 = sub_100088104();
    v8 = String._bridgeToObjectiveC()();

    [v7 setText:v8];
  }
}

void sub_1000885D8(void *a1)
{
  v12.receiver = a1;
  v12.super_class = swift_getObjectType();
  v1 = v12.receiver;
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v2 = *&v1[qword_1000BD540];
  v3 = [v1 contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
}

id sub_1000886B8(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, "applyLayoutAttributes:", a3);
}

char *sub_100088700(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v8 = objc_allocWithZone(v6);
  *&v8[qword_1000BD600] = 0;
  *&v8[qword_1000BD608] = 0;
  *&v8[qword_1000BD610] = 0;
  v9 = &v8[qword_1000BD530];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  *&v8[qword_1000BD538] = 0;
  v10 = qword_1000BD540;
  type metadata accessor for DOCSBCollectionViewCellContentView();
  *&v8[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v8[qword_1000BD548] = 0;
  v11 = a1;
  v12 = DOCItemCollectionCell.init(frame:containerView:)();
  v13 = objc_allocWithZone(UIView);
  v14 = v12;
  v15 = [v13 init];
  v16 = [objc_allocWithZone(type metadata accessor for DOCItemCollectionCell.BackgroundStateView()) init];
  [v16 setAutoresizingMask:18];
  [v16 setHidden:1];

  [v15 addSubview:v16];
  v17 = *&v14[qword_1000BD548];
  *&v14[qword_1000BD548] = v16;

  v18 = [objc_allocWithZone(UIView) init];
  [v14 setSelectedBackgroundView:v18];

  [v14 setBackgroundView:v15];
  return v14;
}

void sub_1000888EC()
{
  v1 = *(v0 + qword_1000BD610);
}

void sub_100088958(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = *(a1 + *a5);
}

double sub_100088A48()
{
  v0 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.2];
  v1 = [v0 CGColor];

  dword_1000BF188 = 1065353216;
  qword_1000BF190 = v1;
  result = 0.0;
  xmmword_1000BF198 = xmmword_1000914F0;
  qword_1000BF1A8 = 0x4030000000000000;
  dword_1000BF1B0 = 1065353216;
  byte_1000BF1B4 = 1;
  return result;
}

void sub_100088ADC(void *a1)
{
  v2 = v1;
  sub_100086568(a1);
  v3 = qword_1000BD540;
  [*&v1[qword_1000BD540] setAutoresizingMask:18];
  v4 = *&v1[v3];
  v5 = [v2 contentView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v4 setFrame:{v7, v9, v11, v13}];
  type metadata accessor for DOCSBLabelPlatterView();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = qword_1000BD668;
  v16 = *&v2[qword_1000BD668];
  *&v2[qword_1000BD668] = v14;
  v17 = v14;

  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = qword_1000BD538;
  v19 = *&v2[qword_1000BD538];
  if (!v19)
  {
    goto LABEL_29;
  }

  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = [objc_allocWithZone(UIView) init];
  v21 = qword_1000BD670;
  v22 = *&v2[qword_1000BD670];
  *&v2[qword_1000BD670] = v20;

  if (qword_1000BB748 == -1)
  {
    v23 = *&v2[v21];
    if (v23)
    {
      goto LABEL_4;
    }

    goto LABEL_28;
  }

  swift_once();
  v23 = *&v2[v21];
  if (!v23)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_4:
  v24 = byte_1000BF1B4;
  v25 = dword_1000BF1B0;
  v27 = *(&xmmword_1000BF198 + 1);
  v26 = *&qword_1000BF1A8;
  v28 = *&xmmword_1000BF198;
  v29 = dword_1000BF188;
  v30 = qword_1000BF190;
  v31 = [v23 layer];
  LODWORD(v32) = v29;
  [v31 setOpacity:v32];
  [v31 setShadowColor:v30];
  [v31 setShadowOffset:{v28, v27}];
  [v31 setShadowRadius:v26];
  LODWORD(v33) = v25;
  [v31 setShadowOpacity:v33];
  [v31 setPunchoutShadow:v24];

  v34 = DOCItemCollectionCell.thumbnailView.getter();
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

  v35 = DOCItemCollectionCell.thumbnailView.getter();
  LODWORD(v36) = 1144750080;
  [v35 setContentCompressionResistancePriority:0 forAxis:v36];

  v37 = DOCItemCollectionCell.thumbnailView.getter();
  LODWORD(v38) = 1144750080;
  [v37 setContentCompressionResistancePriority:1 forAxis:v38];

  v39 = *&v2[v21];
  if (!v39)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v40 = [v39 layer];
  [v40 setCornerRadius:8.0];

  v41 = *&v2[v21];
  if (!v41)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v42 = [v41 layer];
  [v42 setShadowPathIsBounds:1];

  if (!*&v2[v15])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [*&v2[v3] addSubview:?];
  if (!*&v2[v18])
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [*&v2[v3] addSubview:?];
  v43 = *&v2[v3];
  v44 = *&v2[v15];
  v45 = *&v43[OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_labelContainer];
  *&v43[OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_labelContainer] = v44;
  v46 = v43;
  v47 = v44;

  v48 = *&v2[v3];
  v49 = *&v2[v21];
  v50 = *&v48[OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_thumbnailShadow];
  *&v48[OBJC_IVAR____TtC21DockFolderViewService34DOCSBCollectionViewCellContentView_thumbnailShadow] = v49;
  v51 = v48;
  v52 = v49;

  v53 = *&v2[v18];
  if (!v53)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v54 = *&v2[v21];
  if (!v54)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  [v53 insertSubview:v54 atIndex:0];
  v55 = *&v2[v21];
  if (!v55)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v56 = v55;
  v57 = DOCItemCollectionCell.thumbnailView.getter();
  [v56 addSubview:v57];

  v58 = *&v2[v18];
  if (!v58)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v59 = v58;
  DOCItemCollectionCell.thumbnailView.getter();
  dispatch thunk of DOCImageViewContainerView.containedView.setter();

  sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_10008F920;
  v61 = *&v2[v18];
  if (!v61)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v62 = [v61 leadingAnchor];
  v63 = [*&v2[v3] leadingAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  *(v60 + 32) = v64;
  v65 = *&v2[v18];
  if (!v65)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v66 = [v65 trailingAnchor];
  v67 = [*&v2[v3] trailingAnchor];
  v68 = [v66 constraintEqualToAnchor:v67];

  *(v60 + 40) = v68;
  v69 = *&v2[v18];
  if (!v69)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v70 = [v69 topAnchor];
  v71 = [*&v2[v3] topAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];

  *(v60 + 48) = v72;
  v73 = *&v2[v18];
  if (!v73)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v116 = v15;
  v74 = [v73 bottomAnchor];
  v75 = [*&v2[v3] bottomAnchor];
  v76 = [v74 constraintEqualToAnchor:v75];

  *(v60 + 56) = v76;
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_10008F960;
  v78 = DOCItemCollectionCell.thumbnailView.getter();
  v79 = [v78 centerXAnchor];

  v80 = *&v2[v18];
  if (!v80)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v81 = [v80 centerXAnchor];
  v82 = [v79 constraintEqualToAnchor:v81];

  *(v77 + 32) = v82;
  v83 = DOCItemCollectionCell.thumbnailView.getter();
  v84 = [v83 centerYAnchor];

  v85 = *&v2[v18];
  if (!v85)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v86 = [v85 centerYAnchor];
  v87 = [v84 constraintEqualToAnchor:v86];

  *(v77 + 40) = v87;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008F940;
  v89 = *&v2[v116];
  if (!v89)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v90 = [v89 centerYAnchor];
  v91 = [*&v2[v3] centerYAnchor];
  v92 = [v90 constraintEqualToAnchor:v91];

  *(inited + 32) = v92;
  v93 = swift_initStackObject();
  *(v93 + 16) = xmmword_10008F940;
  v94 = *&v2[v116];
  if (!v94)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v95 = [v94 trailingAnchor];
  v96 = *&v2[v18];
  if (!v96)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v97 = [v96 leadingAnchor];
  v98 = [v95 constraintEqualToAnchor:v97 constant:-8.0];

  *(v93 + 32) = v98;
  v99 = *&v2[v21];
  if (!v99)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v100 = v99;
  v101 = DOCItemCollectionCell.thumbnailView.getter();
  isa = DOCConstraintsToResizeWithReferenceView();

  if (!isa)
  {
    sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v103 = objc_opt_self();

  sub_10000D644(v104, v105);

  sub_10000D644(v106, v107);
  sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
  v108 = Array._bridgeToObjectiveC()().super.isa;

  [v103 activateConstraints:v108];

  v109 = Array._bridgeToObjectiveC()().super.isa;
  [v103 activateConstraints:v109];

  [v103 activateConstraints:isa];
  v110 = *&v2[v116];
  if (!v110)
  {
    goto LABEL_48;
  }

  v111 = *(v110 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelVisualEffectPlatter);
  if (v111)
  {
    v112 = v111;

    swift_setDeallocating();
    swift_arrayDestroy();
    v113 = [v112 layer];

    [v113 setAllowsEdgeAntialiasing:1];
    v114 = DOCItemCollectionCell.thumbnailView.getter();
    v115 = [v114 layer];

    [v115 setAllowsEdgeAntialiasing:1];
    [v2 setClipsToBounds:0];
    return;
  }

LABEL_49:
  __break(1u);
}

void *sub_1000895A0()
{
  v1 = *(v0 + qword_1000BD668);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_label);
    v3 = v2;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000895E4(void *a1)
{
  v17.receiver = v1;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "applyLayoutAttributes:", a1);
  type metadata accessor for DOCSBFolderFanCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v1[qword_1000BD678] = (*(v3 + OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_titleShouldHide) & 1) == 0;
    v5 = *&v1[qword_1000BD680];
    *&v1[qword_1000BD680] = *(v3 + OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_titleAlpha);
    v6 = a1;
    sub_10008982C(v5);
    v7 = *(v4 + OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_isPinnedToBottom);
    v8 = v1[qword_1000BD690];
    v1[qword_1000BD690] = v7;
    if (v7 != v8)
    {
      v9 = *&v1[qword_1000BD668];
      if (!v9)
      {
        goto LABEL_9;
      }

      [v9 setHidden:?];
    }

    v10 = qword_1000BD688;
    *&v1[qword_1000BD688] = *(v4 + OBJC_IVAR____TtC21DockFolderViewService44DOCSBFolderFanCollectionViewLayoutAttributes_imageScale);
    v11 = DOCItemCollectionCell.thumbnailView.getter();
    v12 = *&v1[v10];
    v16.a = 1.0;
    v16.b = 0.0;
    v16.c = 0.0;
    v16.d = 1.0;
    v16.tx = 0.0;
    v16.ty = 0.0;
    CGAffineTransformScale(&v15, &v16, v12, v12);
    v16 = v15;
    [v11 setTransform:&v16];

    v13 = *&v1[qword_1000BD670];
    if (v13)
    {
      v14 = *&v1[v10];
      v16.a = 1.0;
      v16.b = 0.0;
      v16.c = 0.0;
      v16.d = 1.0;
      v16.tx = 0.0;
      v16.ty = 0.0;
      CGAffineTransformScale(&v15, &v16, v14, v14);
      v16 = v15;
      [v13 setTransform:&v16];

      return;
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }
}

void sub_1000897C4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1000895E4(v4);
}

void sub_10008982C(double a1)
{
  v2 = qword_1000BD680;
  if (*(v1 + qword_1000BD680) == a1)
  {
    return;
  }

  v3 = v1;
  v4 = *(v1 + qword_1000BD668);
  if (!v4)
  {
    __break(1u);
    goto LABEL_17;
  }

  [v4 setAlpha:?];
  v5 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  if (dispatch thunk of DOCItemCollectionCellContent.isFolder.getter())
  {
    v7 = 1;
  }

  else
  {
    v8 = dispatch thunk of DOCItemCollectionCellContent.thumbnail.getter();
    if (v8)
    {
      v9 = [v8 isRepresentativeIcon];
      swift_unknownObjectRelease();
      v7 = v9 ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  v10 = *(v3 + qword_1000BD670);
  if (!v10)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v11 = [v10 layer];
  v12 = 0.0;
  if ((v7 & 1) == 0)
  {
    v12 = *(v3 + v2);
    *&v12 = v12;
  }

  v13 = v11;
  [v11 setShadowOpacity:v12];
}

void sub_100089980(double a1)
{
  v2 = v1;
  v3 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (v3)
  {
    v4 = v3;
    dispatch thunk of DOCItemCollectionCellContent.title.getter();
    v5 = *(v2 + qword_1000BD668);
    if (!v5)
    {
      __break(1u);
      goto LABEL_23;
    }

    v6 = *(v5 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_label);
    if (v6)
    {
      v7 = v6;
      v8 = String._bridgeToObjectiveC()();

      [v7 setText:v8];
    }

    else
    {
    }
  }

  v9 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (!v9)
  {
    return;
  }

  v10 = v9;
  if (dispatch thunk of DOCItemCollectionCellContent.isFolder.getter())
  {
    v11 = 1;
  }

  else
  {
    v12 = dispatch thunk of DOCItemCollectionCellContent.thumbnail.getter();
    if (v12)
    {
      v13 = [v12 isRepresentativeIcon];
      swift_unknownObjectRelease();
      v11 = v13 ^ 1;
    }

    else
    {
      v11 = 0;
    }
  }

  dispatch thunk of DOCItemCollectionCellContent.isFolder.getter();
  v14 = *(v2 + qword_1000BD670);
  if (!v14)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v15 = [v14 layer];
  v16 = 0.0;
  v17 = v15;
  if ((v11 & 1) == 0)
  {
    if (qword_1000BB748 != -1)
    {
      swift_once();
      v15 = v17;
    }

    LODWORD(v16) = dword_1000BF1B0;
  }

  [v15 setShadowOpacity:v16];
}

void sub_100089B5C(uint64_t a1)
{
  type metadata accessor for DOCItemCollectionCell();
  v1 = method lookup function for DOCItemCollectionCell();
  v1();
  sub_100087274();
  sub_100089980(v2);
  sub_100087274();

  sub_100089980(v3);
}

void sub_100089BB8()
{
  type metadata accessor for DOCSBCollectionViewCell(0);
  v0 = method lookup function for DOCItemCollectionCell();
  v0();
  v1 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();
  if (v1)
  {
    v2 = v1;
    dispatch thunk of DOCItemCollectionCellContent.showGridCircularProgressView.getter();
  }
}

uint64_t sub_100089C80(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t (*a4)(void))
{
  type metadata accessor for DOCItemCollectionCell();
  v5 = method lookup function for DOCItemCollectionCell();
  v6 = v5();
  a3(v6);

  return a4();
}

char *sub_100089CF0(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v8 = objc_allocWithZone(v6);
  *&v8[qword_1000BD668] = 0;
  *&v8[qword_1000BD670] = 0;
  v8[qword_1000BD678] = 1;
  *&v8[qword_1000BD680] = 0x3FF0000000000000;
  *&v8[qword_1000BD688] = 0x3FF0000000000000;
  v8[qword_1000BD690] = 0;
  v9 = &v8[qword_1000BD530];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  *&v8[qword_1000BD538] = 0;
  v10 = qword_1000BD540;
  type metadata accessor for DOCSBCollectionViewCellContentView();
  *&v8[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v8[qword_1000BD548] = 0;
  v11 = a1;
  v12 = DOCItemCollectionCell.init(frame:containerView:)();
  v13 = objc_allocWithZone(UIView);
  v14 = v12;
  v15 = [v13 init];
  v16 = [objc_allocWithZone(type metadata accessor for DOCItemCollectionCell.BackgroundStateView()) init];
  [v16 setAutoresizingMask:18];
  [v16 setHidden:1];

  [v15 addSubview:v16];
  v17 = *&v14[qword_1000BD548];
  *&v14[qword_1000BD548] = v16;

  v18 = [objc_allocWithZone(UIView) init];
  [v14 setSelectedBackgroundView:v18];

  [v14 setBackgroundView:v15];
  return v14;
}

void sub_100089F04()
{
  v1 = *(v0 + qword_1000BD670);
}

void sub_100089F44(uint64_t a1)
{
  v2 = *(a1 + qword_1000BD670);
}

id sub_100089F98()
{
  v1 = OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView____lazy_storage____headerFont;
  v2 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView____lazy_storage____headerFont);
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

void sub_10008A05C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_label] = 0;
  *&v5[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_shadowView] = 0;
  *&v5[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelVisualEffectPlatter] = 0;
  v10 = &v5[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelInsets];
  __asm
  {
    FMOV            V0.2D, #7.0
    FMOV            V1.2D, #-7.0
  }

  *v10 = _Q0;
  *(v10 + 1) = _Q1;
  *&v5[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_maximumLabelWidthSpec] = 0x4072C00000000000;
  *&v5[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_maximumLabelWidth] = 0x4072C00000000000;
  *&v5[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelMaxWidthConstraint] = 0;
  *&v5[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView____lazy_storage____headerFont] = 1;
  v124.receiver = v5;
  v124.super_class = type metadata accessor for DOCSBLabelPlatterView();
  v17 = objc_msgSendSuper2(&v124, "initWithFrame:", a2, a3, a4, a5);
  v18 = objc_allocWithZone(UILabel);
  v19 = v17;
  v20 = [v18 init];
  v21 = OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_label;
  v22 = *&v19[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_label];
  *&v19[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_label] = v20;
  v23 = v20;

  if (!v23)
  {
    __break(1u);
    goto LABEL_41;
  }

  [v23 setTextAlignment:4];

  v24 = *&v19[v21];
  if (!v24)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  [v24 setNumberOfLines:1];
  v25 = *&v19[v21];
  if (!v25)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  [v25 setLineBreakMode:5];
  v26 = *&v19[v21];
  if (!v26)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v27 = v26;
  v28 = sub_100089F98();
  [v27 setFont:v28];

  v29 = *&v19[v21];
  if (!v29)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = *&v19[v21];
  if (!v30)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 labelColor];
  [v32 setTextColor:v33];

  v35 = *&v19[v21];
  if (!v35)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LODWORD(v34) = 1144750080;
  [v35 setContentCompressionResistancePriority:0 forAxis:v34];
  v37 = *&v19[v21];
  if (!v37)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  LODWORD(v36) = 1148846080;
  [v37 setContentCompressionResistancePriority:1 forAxis:v36];
  v39 = *&v19[v21];
  if (!v39)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  LODWORD(v38) = 1148846080;
  [v39 setContentHuggingPriority:1 forAxis:v38];
  v41 = *&v19[v21];
  if (!v41)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  LODWORD(v40) = 1148846080;
  [v41 setContentHuggingPriority:0 forAxis:v40];
  v42 = *&v19[v21];
  if (!v42)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v43 = v42;
  v44 = [v31 clearColor];
  [v43 setBackgroundColor:v44];

  v45 = [objc_allocWithZone(UIView) init];
  v46 = OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_shadowView;
  v47 = *&v19[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_shadowView];
  *&v19[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_shadowView] = v45;
  v48 = v45;

  if (!v48)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  [v48 setTranslatesAutoresizingMaskIntoConstraints:0];

  v49 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.2];
  v50 = [v49 CGColor];

  v51 = *&v19[v46];
  if (!v51)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v52 = [v51 layer];
  LODWORD(v53) = 1.0;
  [v52 setOpacity:v53];
  [v52 setShadowColor:v50];
  [v52 setShadowOffset:{0.0, 4.0}];
  [v52 setShadowRadius:16.0];
  LODWORD(v54) = 1.0;
  [v52 setShadowOpacity:v54];
  [v52 setPunchoutShadow:1];

  v55 = *&v19[v46];
  if (!v55)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v56 = [v55 layer];
  [v56 setShadowPathIsBounds:1];

  v57 = [objc_opt_self() effectWithStyle:8];
  v58 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v57];

  v59 = OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelVisualEffectPlatter;
  v60 = *&v19[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelVisualEffectPlatter];
  *&v19[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelVisualEffectPlatter] = v58;
  v61 = v58;

  if (!v61)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v62 = String._bridgeToObjectiveC()();
  [v61 _setGroupName:v62];

  v63 = *&v19[v59];
  if (!v63)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  [v63 setAutoresizingMask:18];
  v64 = *&v19[v59];
  if (!v64)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  [v64 _setCornerRadius:0 continuous:15 maskedCorners:8.0];
  v65 = *&v19[v46];
  if (!v65)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v66 = v19;
  [v66 addSubview:v65];
  v67 = *&v19[v46];
  if (!v67)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (!*&v19[v59])
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  [v67 addSubview:?];
  v68 = *&v19[v46];
  if (!v68)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (!*&v19[v21])
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  [v68 addSubview:?];
  v69 = *&v19[v46];
  if (!v69)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v70 = [v69 layer];
  [v70 setAllowsEdgeAntialiasing:1];

  v71 = *&v19[v59];
  if (!v71)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v72 = [v71 layer];
  [v72 setAllowsEdgeAntialiasing:1];

  v73 = *&v19[v21];
  if (!v73)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v123 = v50;
  v74 = [v73 widthAnchor];
  v75 = [v74 constraintLessThanOrEqualToConstant:*&v66[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_maximumLabelWidth]];

  v76 = OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelMaxWidthConstraint;
  v77 = *&v66[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelMaxWidthConstraint];
  *&v66[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelMaxWidthConstraint] = v75;

  sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100091500;
  v79 = *&v19[v21];
  if (!v79)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v80 = [v79 topAnchor];
  v81 = *&v19[v46];
  if (!v81)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v82 = [v81 topAnchor];
  v83 = &v66[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelInsets];
  v84 = [v80 constraintEqualToAnchor:v82 constant:*&v66[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelInsets]];

  *(inited + 32) = v84;
  v85 = *&v19[v21];
  if (!v85)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v86 = [v85 bottomAnchor];
  v87 = *&v19[v46];
  if (!v87)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v88 = [v87 bottomAnchor];
  v89 = [v86 constraintEqualToAnchor:v88 constant:v83[2]];

  *(inited + 40) = v89;
  v90 = *&v19[v21];
  if (!v90)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v91 = [v90 leadingAnchor];
  v92 = *&v19[v46];
  if (!v92)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v93 = [v92 leadingAnchor];
  v94 = [v91 constraintEqualToAnchor:v93 constant:v83[1]];

  *(inited + 48) = v94;
  v95 = *&v19[v21];
  if (!v95)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v96 = [v95 trailingAnchor];
  v97 = *&v19[v46];
  if (!v97)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v98 = [v97 trailingAnchor];
  v99 = [v96 constraintEqualToAnchor:v98 constant:v83[3]];

  *(inited + 56) = v99;
  v100 = *&v66[v76];
  if (!v100)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  *(inited + 64) = v100;
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_10008F920;
  v102 = *&v19[v46];
  if (!v102)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v103 = v101;
  v104 = v100;
  v105 = [v102 topAnchor];
  v106 = [v66 topAnchor];

  v107 = [v105 constraintEqualToAnchor:v106];
  v103[4] = v107;
  v108 = *&v19[v46];
  if (!v108)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v109 = [v108 bottomAnchor];
  v110 = [v66 bottomAnchor];

  v111 = [v109 constraintEqualToAnchor:v110];
  v103[5] = v111;
  v112 = *&v19[v46];
  if (!v112)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v113 = [v112 leadingAnchor];
  v114 = [v66 leadingAnchor];

  v115 = [v113 constraintEqualToAnchor:v114];
  v103[6] = v115;
  v116 = *&v19[v46];
  if (v116)
  {
    v117 = [v116 trailingAnchor];
    v118 = [v66 trailingAnchor];

    v119 = [v117 constraintEqualToAnchor:v118];
    v103[7] = v119;
    v120 = objc_opt_self();
    sub_10000D644(inited, v121);
    sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v120 activateConstraints:isa];

    return;
  }

LABEL_77:
  __break(1u);
}

id sub_10008ABFC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DOCSBLabelPlatterView();
  v12.receiver = v1;
  v12.super_class = v6;
  objc_msgSendSuper2(&v12, "didMoveToWindow");
  result = [v1 window];
  if (result)
  {

    if (byte_1000BD4E8)
    {
      v8 = 300.0;
    }

    else
    {
      v8 = *&qword_1000BD4E0;
      static Logger.UI.getter();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 134217984;
        *(v11 + 4) = v8;
        _os_log_impl(&_mh_execute_header, v9, v10, "USING TUNED VALUE FOR maximumLabelWidth: %f", v11, 0xCu);
      }

      (*(v3 + 8))(v5, v2);
    }

    *&v1[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_maximumLabelWidth] = v8;
    return [*&v1[OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelMaxWidthConstraint] setConstant:v8];
  }

  return result;
}

uint64_t sub_10008AED8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10008B390(v18);
    v8 = [v4 standardUserDefaults];
    v9 = String._bridgeToObjectiveC()();
    [v8 floatForKey:v9];
    v11 = v10;

    static Logger.UI.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v18[0] = v15;
      *v14 = 134218242;
      v16 = v11;
      *(v14 + 4) = v16;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_100037B98(0xD000000000000020, 0x8000000100095730, v18);
      _os_log_impl(&_mh_execute_header, v12, v13, "LOADED TUNED VALUE FOR maximumLabelWidth: %f from default %s", v14, 0x16u);
      sub_1000064E0(v15);

      result = (*(v1 + 8))(v3, v0);
    }

    else
    {

      result = (*(v1 + 8))(v3, v0);
      v16 = v11;
    }
  }

  else
  {
    memset(v18, 0, sizeof(v18));
    result = sub_10008B390(v18);
    v16 = 0.0;
  }

  qword_1000BD4E0 = *&v16;
  byte_1000BD4E8 = v7 == 0;
  return result;
}

void sub_10008B1B4()
{
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_label) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_shadowView) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelVisualEffectPlatter) = 0;
  v1 = (v0 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelInsets);
  __asm
  {
    FMOV            V0.2D, #7.0
    FMOV            V1.2D, #-7.0
  }

  *v1 = _Q0;
  v1[1] = _Q1;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_maximumLabelWidthSpec) = 0x4072C00000000000;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_maximumLabelWidth) = 0x4072C00000000000;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView_labelMaxWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC21DockFolderViewService21DOCSBLabelPlatterView____lazy_storage____headerFont) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10008B288()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10008B2E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10008B2F8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10008B338()
{
  result = qword_1000BC400;
  if (!qword_1000BC400)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BC400);
  }

  return result;
}

uint64_t sub_10008B390(uint64_t a1)
{
  v2 = sub_10000589C(&qword_1000BCA30, &unk_100090E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10008B464()
{
  v0 = [objc_opt_self() sharedInstance];
}

id sub_10008B660(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

uint64_t sub_10008B77C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v30 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  qword_1000BD750 = CFAbsoluteTimeGetCurrent();
  byte_1000BD758 = 0;
  static Logger.UI.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v11, v12))
  {
    goto LABEL_4;
  }

  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  aBlock[0] = v14;
  *v13 = 136315394;
  result = sub_100037B98(0xD00000000000002ELL, 0x8000000100095830, aBlock);
  *(v13 + 4) = result;
  *(v13 + 12) = 2048;
  if ((byte_1000BD758 & 1) == 0)
  {
    *(v13 + 14) = qword_1000BD750;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s start time: %f", v13, 0x16u);
    sub_1000064E0(v14);

LABEL_4:

    (*(v8 + 8))(v10, v7);
    sub_10001A2A8(0, &qword_1000BD820, FINode_ptr);
    static FINode.startIfNeeded()();
    v16 = [objc_opt_self() sharedManager];
    v17 = DOCSBFolderAppBundleIdentifier;
    [v16 setHostIdentifier:DOCSBFolderAppBundleIdentifier];

    v18 = [objc_opt_self() defaultPermission];
    [v18 setHostIdentifier:v17];

    v19 = [objc_allocWithZone(DOCSourceObserver) initWithUserAction:0 hostIdentifier:v17];
    v20 = *(v27 + OBJC_IVAR____TtC21DockFolderViewService11AppDelegate_sourceObserver);
    *(v27 + OBJC_IVAR____TtC21DockFolderViewService11AppDelegate_sourceObserver) = v19;
    v21 = v19;

    [v21 startObservingSources];
    sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
    (*(v4 + 104))(v6, enum case for DispatchQoS.QoSClass.userInitiated(_:), v3);
    v22 = static OS_dispatch_queue.global(qos:)();
    (*(v4 + 8))(v6, v3);
    aBlock[4] = sub_10008B464;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000D508;
    aBlock[3] = &unk_1000B0680;
    v23 = _Block_copy(aBlock);
    v24 = v28;
    static DispatchQoS.unspecified.getter();
    v34 = _swiftEmptyArrayStorage;
    sub_10008C0B0(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000589C(&unk_1000BCE30, &unk_100090E70);
    sub_1000518F8();
    v25 = v30;
    v26 = v33;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (*(v32 + 8))(v25, v26);
    (*(v29 + 8))(v24, v31);
    return 1;
  }

  __break(1u);
  return result;
}

id sub_10008BD70(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [a1 role];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

LABEL_8:
    v10 = [a1 configuration];
    v11 = [v10 name];

    if (!v11)
    {
      v12 = 0;
      goto LABEL_11;
    }

    goto LABEL_22;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {

    goto LABEL_8;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
  {

    goto LABEL_19;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
LABEL_19:
    v22 = [a1 configuration];
    v11 = [v22 name];

    if (!v11)
    {
      v12 = 0;
      goto LABEL_11;
    }

    goto LABEL_22;
  }

  v23 = [a1 configuration];
  v11 = [v23 name];

  if (v11)
  {
LABEL_22:
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v24;

    goto LABEL_11;
  }

  v12 = 0;
LABEL_11:
  v13 = [a1 role];
  if (v12)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  v15 = [objc_allocWithZone(UISceneConfiguration) initWithName:v14 sessionRole:v13];

  return v15;
}

double sub_10008C098(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10008C0B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall DOCLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = DOCLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName._countAndFlagsBits, tableName._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = String.init(repeating:count:)(repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String_optional __swiftcall DOCNode.localizedDate(horizontalSizeClass:preferLastUsedDate:)(UIUserInterfaceSizeClass horizontalSizeClass, Swift::Bool preferLastUsedDate)
{
  v2 = DOCNode.localizedDate(horizontalSizeClass:preferLastUsedDate:)(horizontalSizeClass, preferLastUsedDate);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}