uint64_t sub_363208(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider20AnnotationImagesView_imageViews;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4 >> 62)
  {
    result = sub_76A860();
    if (result == a1)
    {
      return result;
    }
  }

  else
  {
    result = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (result == a1)
    {
      return result;
    }
  }

  v6 = *&v1[v3];
  if (v6 >> 62)
  {
    if (sub_76A860() > a1)
    {
      goto LABEL_5;
    }
  }

  else if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) > a1)
  {
LABEL_5:
    swift_beginAccess();
    v7 = sub_363908();
    result = swift_endAccess();
    if (!v7)
    {
      __break(1u);
      return result;
    }

    [v7 removeFromSuperview];
    swift_beginAccess();
    sub_BD88(&qword_950BD8, qword_798D80);
    sub_767470();
    swift_endAccess();
    goto LABEL_13;
  }

  swift_beginAccess();
  sub_BD88(&qword_950BD8, qword_798D80);
  sub_767450();
  swift_endAccess();
  swift_beginAccess();
  v7 = v8;
  sub_769440();
  if (*(&dword_10 + (*&v1[v3] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v1[v3] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  swift_endAccess();
  [v1 addSubview:v7];
LABEL_13:

  return sub_363208(a1);
}

uint64_t sub_363604()
{
  ObjectType = swift_getObjectType();
  v17 = sub_7664F0();
  v2 = *(v17 - 8);
  __chkstk_darwin(v17);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75F8B0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = sub_75F8C0();
  v9 = *(v16[0] - 8);
  *&v10 = __chkstk_darwin(v16[0]).n128_u64[0];
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v0;
  v18.super_class = ObjectType;
  v16[1] = ObjectType;
  objc_msgSendSuper2(&v18, "layoutSubviews", v10);
  swift_beginAccess();

  sub_14139C(v13);

  if (qword_93CDA8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v5, qword_99D428);
  (*(v6 + 16))(v8, v14, v5);
  sub_75F880();
  sub_75D650();
  sub_75F870();
  (*(v2 + 8))(v4, v17);
  return (*(v9 + 8))(v12, v16[0]);
}

unint64_t sub_363908()
{
  if (!(*v0 >> 62))
  {
    result = *(&dword_10 + (*v0 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_363C60();
    if (result)
    {
      return result;
    }

    if (*v0 >> 62)
    {
      v4 = sub_76A860();
      v3 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v3)
      {
        return sub_362334(result, sub_45EDF0);
      }
    }

    else
    {
      v2 = *(&dword_10 + (*v0 & 0xFFFFFFFFFFFFFF8));
      v3 = __OFSUB__(v2, 1);
      result = v2 - 1;
      if (!v3)
      {
        return sub_362334(result, sub_45EDF0);
      }
    }

    __break(1u);
    return result;
  }

  result = sub_76A860();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

id sub_3639AC@<X0>(void *a1@<X8>)
{
  type metadata accessor for AnnotationImagesView.AnnotationImageView();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for AnnotationImagesView(uint64_t a1)
{
  result = qword_950B88;
  if (!qword_950B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_363AC8(uint64_t a1)
{
  sub_363B68(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_363B68(uint64_t a1)
{
  if (!qword_950B98)
  {
    sub_133D8(&qword_950BA0, &qword_798D58);
    sub_363BD8();
    v1 = sub_767490();
    if (!v2)
    {
      atomic_store(v1, &qword_950B98);
    }
  }
}

unint64_t sub_363BD8()
{
  result = qword_950BA8;
  if (!qword_950BA8)
  {
    sub_133D8(&qword_950BA0, &qword_798D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950BA8);
  }

  return result;
}

uint64_t sub_363C60()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_45EDF0();
    v1 = result;
  }

  v3 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (v3)
  {
    v4 = v3 - 1;
    result = *(&stru_20.cmd + 8 * v4 + (v1 & 0xFFFFFFFFFFFFFF8));
    *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_363CC4(unint64_t a1, uint64_t a2, double a3, double a4)
{
  v47 = sub_765240();
  v6 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_765120();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v12 - 8);
  v14 = v38 - v13;
  v55 = sub_7570A0();
  v15 = *(v55 - 8);
  __chkstk_darwin(v55);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v18 = sub_76A860();
  }

  else
  {
    v18 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v19 = _swiftEmptyArrayStorage;
  if (!v18)
  {
    goto LABEL_28;
  }

  v57 = _swiftEmptyArrayStorage;
  v54 = v18;
  sub_76A7C0();
  if (v54 < 0)
  {
    __break(1u);
    return;
  }

  v51 = v17;
  v38[1] = a2;
  v20 = 0;
  v52 = (v9 + 8);
  v53 = a1 & 0xC000000000000001;
  v21 = (v15 + 48);
  v48 = (v15 + 8);
  v49 = (v15 + 32);
  v40 = "F0F19AnnotationImageView";
  v44 = (v6 + 8);
  v39 = xmmword_77E280;
  v45 = a1;
  v50 = v8;
  v43 = (v15 + 48);
  do
  {
    v22 = v55;
    if (v53)
    {
      sub_76A770();
    }

    else
    {
    }

    sub_765380();
    sub_765110();
    (*v52)(v11, v8);
    sub_757090();

    if ((*v21)(v14, 1, v22) == 1)
    {
      sub_10A2C(v14, &unk_93FD30, qword_77F240);
LABEL_7:
      sub_7670D0();
      swift_allocObject();
      sub_7670B0();
      goto LABEL_8;
    }

    v23 = v51;
    (*v49)(v51, v14, v22);
    v24 = sub_757070();
    if (!v25)
    {
      (*v48)(v23, v22);
LABEL_26:
      v8 = v50;
      goto LABEL_7;
    }

    v26 = v24;
    v27 = v25;
    if ((sub_765180() & 1) == 0)
    {

      (*v48)(v51, v22);
      goto LABEL_26;
    }

    v28.value.super.super.isa = 0;
    v29 = sub_765170(v28);
    if (qword_93DC58 != -1)
    {
      swift_once();
    }

    v30 = qword_95B098;
    v31 = v29;
    v32 = sub_769210();
    v33 = [objc_opt_self() imageNamed:v32 inBundle:v30 withConfiguration:v31];

    if (!v33)
    {
      v42 = v31;
      if (qword_93DEF0 != -1)
      {
        swift_once();
      }

      v34 = sub_768FF0();
      v41 = sub_BE38(v34, qword_9A0400);
      sub_BD88(&qword_93FD00, &unk_77DF10);
      sub_7685F0();
      *(swift_allocObject() + 16) = v39;
      sub_768540();
      v56[3] = &type metadata for String;
      v56[0] = v26;
      v56[1] = v27;

      sub_7685E0();
      sub_10A2C(v56, &unk_93FBD0, &qword_77DFA0);
      sub_768EA0();

      v33 = [objc_allocWithZone(UIImage) init];
      v31 = v42;
    }

    (*v48)(v51, v55);
    [v33 size];
    if (qword_93CDA8 != -1)
    {
      swift_once();
    }

    v35 = sub_75F8B0();
    sub_BE38(v35, qword_99D428);
    sub_75F890();
    v36 = v46;
    sub_765250();
    sub_765210();
    (*v44)(v36, v47);
    sub_769D70();
    sub_7670D0();
    swift_allocObject();
    sub_7670B0();

    v8 = v50;
    v21 = v43;
LABEL_8:

    ++v20;
    sub_76A7A0();
    sub_76A7D0();
    sub_76A7E0();
    sub_76A7B0();
  }

  while (v54 != v20);
  v19 = v57;
LABEL_28:
  sub_1411E4(v19);

  if (qword_93CDA8 != -1)
  {
    swift_once();
  }

  v37 = sub_75F8B0();
  sub_BE38(v37, qword_99D428);
  sub_75F860();
}

char *sub_364550(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider38ProductEditorsChoiceCollectionViewCell_itemLayoutContext;
  v11 = sub_75C840();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider38ProductEditorsChoiceCollectionViewCell_editorsChoiceView;
  type metadata accessor for ProductEditorsChoiceView(0);
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v14 = [v13 contentView];
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v15 = [v13 contentView];
  [v15 addSubview:*&v13[OBJC_IVAR____TtC18ASMessagesProvider38ProductEditorsChoiceCollectionViewCell_editorsChoiceView]];

  return v13;
}

uint64_t type metadata accessor for ProductEditorsChoiceCollectionViewCell(uint64_t a1)
{
  result = qword_950C08;
  if (!qword_950C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_36492C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v55 = sub_75CFE0();
  v4 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&qword_9439D8, &qword_799160);
  __chkstk_darwin(v6 - 8);
  v8 = &v51 - v7;
  v9 = sub_BD88(&qword_9439E0, &unk_787AB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v51 - v13;
  v15 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v51 - v20;
  __chkstk_darwin(v22);
  v24 = &v51 - v23;
  Main = JUScreenClassGetMain();
  if (a1)
  {
    if (Main == 1)
    {
      if (qword_93DEA8 != -1)
      {
        swift_once();
      }

      v26 = qword_9A0310;
    }

    else
    {
      if (qword_93DEA0 != -1)
      {
        swift_once();
      }

      v26 = qword_9A02F8;
    }

    v28 = sub_BE38(v15, v26);
    sub_C1D58(v28, v24, v29);
    if (qword_93DEB0 != -1)
    {
      swift_once();
    }

    v30 = sub_BE38(v15, qword_9A0328);
    sub_C1D58(v30, v14, v31);
    v32 = 0;
  }

  else
  {
    if (Main == 1)
    {
      if (qword_93DE98 != -1)
      {
        swift_once();
      }

      v27 = qword_9A02E0;
    }

    else
    {
      if (qword_93DE90 != -1)
      {
        swift_once();
      }

      v27 = qword_9A02C8;
    }

    v33 = sub_BE38(v15, v27);
    sub_C1D58(v33, v24, v34);
    v32 = 1;
  }

  (*(v16 + 56))(v14, v32, 1, v15);
  if (qword_93DE10 != -1)
  {
    swift_once();
  }

  v35 = sub_BE38(v15, qword_9A0148);
  v36 = v21;
  sub_C1D58(v35, v21, v37);
  sub_C1D58(v24, v18, v38);
  sub_366920(v14, v11);
  v39 = sub_75CFD0();
  v40 = *(v39 - 8);
  v52 = v11;
  v53 = v8;
  v41 = v40;
  (*(v40 + 56))(v8, 1, 1, v39);
  v42 = v54;
  v43 = v55;
  (*(v4 + 104))(v54, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v55);
  sub_396E8();
  v51 = sub_769FB0();
  sub_10A2C(v14, &qword_9439E0, &unk_787AB0);
  sub_C1DBC(v24, v44);
  v45 = type metadata accessor for TitleHeaderView.Style(0);
  v46 = v45[8];
  v47 = v36;
  v48 = v56;
  sub_C1E18(v47, v56, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_C1E18(v18, v48 + v45[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_15CF04(v52, v48 + v45[6]);
  *(v48 + v45[7]) = 0;
  *(v48 + v46) = 0;
  *(v48 + v45[9]) = 1;
  *(v48 + v45[14]) = 0x4030000000000000;
  *(v48 + v45[12]) = 0;
  *(v48 + v45[13]) = v51;
  v49 = v53;
  (*(v4 + 32))(v48 + v45[11], v42, v43);
  if ((*(v41 + 48))(v49, 1, v39) != 1)
  {
    return (*(v41 + 32))(v48 + v45[10], v49, v39);
  }

  sub_10A2C(v49, &qword_9439D8, &qword_799160);
  return (*(v41 + 104))(v48 + v45[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:), v39);
}

uint64_t sub_364F64()
{
  v0 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v0);
  v2 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_75CFE0();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&qword_9439D8, &qword_799160);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_BD88(&qword_9439E0, &unk_787AB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v36 = &v30 - v17;
  sub_161DC(v0, qword_99D450);
  v34 = sub_BE38(v0, qword_99D450);
  if (qword_93DE10 != -1)
  {
    swift_once();
  }

  v18 = sub_BE38(v12, qword_9A0148);
  sub_C1D58(v18, v36, v19);
  if (qword_93DE20 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v12, qword_9A0178);
  sub_C1D58(v20, v15, v21);
  (*(v13 + 56))(v11, 1, 1, v12);
  v22 = enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastLineCenter(_:);
  v23 = sub_75CFD0();
  v24 = *(v23 - 8);
  v32 = v15;
  v33 = v11;
  v25 = v24;
  v31 = *(v24 + 104);
  v31(v8, v22, v23);
  (*(v25 + 56))(v8, 0, 1, v23);
  (*(v3 + 104))(v5, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v37);
  sub_396E8();
  v26 = sub_769FB0();
  v35 = v8;
  v27 = v0[8];
  sub_C1E18(v36, v2, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_C1E18(v32, &v2[v0[5]], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_15CF04(v33, &v2[v0[6]]);
  v2[v0[7]] = 0;
  v2[v27] = 0;
  v2[v0[9]] = 0;
  *&v2[v0[14]] = 0x4030000000000000;
  *&v2[v0[12]] = 0;
  *&v2[v0[13]] = v26;
  v28 = v35;
  (*(v3 + 32))(&v2[v0[11]], v5, v37);
  if ((*(v25 + 48))(v28, 1, v23) == 1)
  {
    sub_10A2C(v28, &qword_9439D8, &qword_799160);
    v31(&v2[v0[10]], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v23);
  }

  else
  {
    (*(v25 + 32))(&v2[v0[10]], v28, v23);
  }

  return sub_C1E18(v2, v34, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_3654BC()
{
  v0 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v0);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_75CFE0();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&qword_9439D8, &qword_799160);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_BD88(&qword_9439E0, &unk_787AB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v33 = &v29 - v17;
  sub_161DC(v0, qword_99D480);
  v31 = sub_BE38(v0, qword_99D480);
  if (qword_93DE10 != -1)
  {
    swift_once();
  }

  v18 = sub_BE38(v12, qword_9A0148);
  sub_C1D58(v18, v33, v19);
  if (qword_93DEB8 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v12, qword_9A0340);
  sub_C1D58(v20, v15, v21);
  (*(v13 + 56))(v11, 1, 1, v12);
  v22 = sub_75CFD0();
  v23 = *(v22 - 8);
  v30 = v11;
  v24 = v23;
  (*(v23 + 56))(v8, 1, 1, v22);
  (*(v3 + 104))(v5, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v34);
  sub_396E8();
  v25 = sub_769FB0();
  v32 = v8;
  v26 = v0[8];
  sub_C1E18(v33, v2, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_C1E18(v15, &v2[v0[5]], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_15CF04(v30, &v2[v0[6]]);
  v2[v0[7]] = 1;
  v2[v26] = 0;
  v2[v0[9]] = 0;
  *&v2[v0[14]] = 0x4030000000000000;
  *&v2[v0[12]] = 0;
  *&v2[v0[13]] = v25;
  v27 = v32;
  (*(v3 + 32))(&v2[v0[11]], v5, v34);
  if ((*(v24 + 48))(v27, 1, v22) == 1)
  {
    sub_10A2C(v27, &qword_9439D8, &qword_799160);
    (*(v24 + 104))(&v2[v0[10]], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v22);
  }

  else
  {
    (*(v24 + 32))(&v2[v0[10]], v27, v22);
  }

  return sub_C1E18(v2, v31, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_3659BC()
{
  v0 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v0);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_75CFE0();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&qword_9439D8, &qword_799160);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_BD88(&qword_9439E0, &unk_787AB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v33 = &v29 - v17;
  sub_161DC(v0, qword_99D498);
  v31 = sub_BE38(v0, qword_99D498);
  if (qword_93DE10 != -1)
  {
    swift_once();
  }

  v18 = sub_BE38(v12, qword_9A0148);
  sub_C1D58(v18, v33, v19);
  if (qword_93DEC0 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v12, qword_9A0358);
  sub_C1D58(v20, v15, v21);
  (*(v13 + 56))(v11, 1, 1, v12);
  v22 = sub_75CFD0();
  v23 = *(v22 - 8);
  v30 = v11;
  v24 = v23;
  (*(v23 + 56))(v8, 1, 1, v22);
  (*(v3 + 104))(v5, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.centered(_:), v34);
  sub_396E8();
  v25 = sub_769FB0();
  v32 = v8;
  v26 = v0[8];
  sub_C1E18(v33, v2, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_C1E18(v15, &v2[v0[5]], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_15CF04(v30, &v2[v0[6]]);
  v2[v0[7]] = 0;
  v2[v26] = 0;
  v2[v0[9]] = 0;
  *&v2[v0[14]] = 0x4030000000000000;
  *&v2[v0[12]] = 0;
  *&v2[v0[13]] = v25;
  v27 = v32;
  (*(v3 + 32))(&v2[v0[11]], v5, v34);
  if ((*(v24 + 48))(v27, 1, v22) == 1)
  {
    sub_10A2C(v27, &qword_9439D8, &qword_799160);
    (*(v24 + 104))(&v2[v0[10]], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v22);
  }

  else
  {
    (*(v24 + 32))(&v2[v0[10]], v27, v22);
  }

  return sub_C1E18(v2, v31, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_365EE4(uint64_t a1, uint64_t *a2, void *a3, char *a4, uint64_t a5)
{
  v36[1] = a5;
  v40 = a4;
  v7 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v7);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_75CFE0();
  v10 = *(v38 - 8);
  __chkstk_darwin(v38);
  v42 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&qword_9439D8, &qword_799160);
  __chkstk_darwin(v12 - 8);
  v14 = v36 - v13;
  v15 = sub_BD88(&qword_9439E0, &unk_787AB0);
  __chkstk_darwin(v15 - 8);
  v17 = v36 - v16;
  v18 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v41 = v36 - v23;
  sub_161DC(v7, a2);
  v39 = sub_BE38(v7, a2);
  if (qword_93DE10 != -1)
  {
    swift_once();
  }

  v24 = sub_BE38(v18, qword_9A0148);
  sub_C1D58(v24, v41, v25);
  if (*a3 != -1)
  {
    swift_once();
  }

  v26 = sub_BE38(v18, v40);
  sub_C1D58(v26, v21, v27);
  v28 = *(v19 + 56);
  v37 = v17;
  v28(v17, 1, 1, v18);
  v29 = sub_75CFD0();
  v30 = *(v29 - 8);
  (*(v30 + 56))(v14, 1, 1, v29);
  v31 = v38;
  (*(v10 + 104))(v42, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v38);
  sub_396E8();
  v32 = sub_769FB0();
  v40 = v14;
  v33 = v7[8];
  sub_C1E18(v41, v9, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_C1E18(v21, &v9[v7[5]], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_15CF04(v37, &v9[v7[6]]);
  v9[v7[7]] = 0;
  v9[v33] = 0;
  v9[v7[9]] = 0;
  *&v9[v7[14]] = 0x4030000000000000;
  *&v9[v7[12]] = 0;
  *&v9[v7[13]] = v32;
  v34 = v40;
  (*(v10 + 32))(&v9[v7[11]], v42, v31);
  if ((*(v30 + 48))(v34, 1, v29) == 1)
  {
    sub_10A2C(v34, &qword_9439D8, &qword_799160);
    (*(v30 + 104))(&v9[v7[10]], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v29);
  }

  else
  {
    (*(v30 + 32))(&v9[v7[10]], v34, v29);
  }

  return sub_C1E18(v9, v39, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_3663E4@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v45 = sub_75CFE0();
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_9439D8, &qword_799160);
  __chkstk_darwin(v7 - 8);
  v9 = (v40 - v8);
  v10 = sub_BD88(&qword_9439E0, &unk_787AB0);
  __chkstk_darwin(v10 - 8);
  v12 = v40 - v11;
  v13 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v40 - v18;
  sub_75A920();
  sub_768900();
  sub_768ED0();
  v20 = sub_75A890();

  if (qword_93DE10 != -1)
  {
    swift_once();
  }

  v21 = sub_BE38(v13, qword_9A0148);
  v44 = v19;
  sub_C1D58(v21, v19, v22);
  v46 = v16;
  sub_5E6F94(a1, v16);
  sub_5E7754(v12);
  v23 = *(v14 + 56);
  v48 = v12;
  v23(v12, 0, 1, v13);
  if (v20)
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  v42 = v24;
  if (sub_7699D0())
  {
    v25 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstLineCenter(_:);
  }

  else
  {
    *v9 = 0;
    v9[1] = 0;
    v25 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.corner(_:);
  }

  v26 = *v25;
  v27 = sub_75CFD0();
  v28 = *(v27 - 8);
  v29 = *(v28 + 104);
  v40[1] = v28 + 104;
  v41 = v29;
  v29(v9, v26, v27);
  (*(v28 + 56))(v9, 0, 1, v27);
  v30 = sub_7699D0();
  v31 = &enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:);
  if ((v30 & 1) == 0)
  {
    v31 = &enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.centered(_:);
  }

  v32 = v47;
  v33 = v43;
  v34 = v45;
  (*(v47 + 104))(v43, *v31, v45);
  sub_396E8();
  v35 = sub_769FB0();
  v36 = type metadata accessor for TitleHeaderView.Style(0);
  v49 = v9;
  v37 = v36[8];
  sub_C1E18(v44, a3, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_C1E18(v46, a3 + v36[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_15CF04(v48, a3 + v36[6]);
  *(a3 + v36[7]) = 0;
  *(a3 + v37) = 0;
  *(a3 + v36[9]) = v42;
  *(a3 + v36[14]) = 0x4030000000000000;
  *(a3 + v36[12]) = 0;
  *(a3 + v36[13]) = v35;
  v38 = v49;
  (*(v32 + 32))(a3 + v36[11], v33, v34);
  if ((*(v28 + 48))(v38, 1, v27) != 1)
  {
    return (*(v28 + 32))(a3 + v36[10], v38, v27);
  }

  sub_10A2C(v38, &qword_9439D8, &qword_799160);
  return v41(a3 + v36[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:), v27);
}

uint64_t sub_366920(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_9439E0, &unk_787AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TodayCardLabelsView(uint64_t a1)
{
  result = qword_950CC8;
  if (!qword_950CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_366A60()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_applyPendingFontChange;
  v3 = *(v0 + qword_950C88) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_applyPendingFontChange;
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 8);

    v4(v6);
    sub_F704(v4, v5);
    v2 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_applyPendingFontChange;
  }

  v7 = *(v1 + qword_950C90) + v2;
  v8 = *v7;
  if (*v7)
  {
    v9 = *(v7 + 8);

    v8(v10);
    sub_F704(v8, v9);
    v2 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_applyPendingFontChange;
  }

  v11 = *(v1 + qword_950CA0) + v2;
  v12 = *v11;
  if (*v11)
  {
    v13 = *(v11 + 8);

    v12(v14);

    sub_F704(v12, v13);
  }
}

void sub_366B5C(uint64_t a1, char a2)
{
  v4 = sub_765B10();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v5 + 104))(v8, enum case for TodayCard.Style.white(_:), v4, v6);
    sub_36A25C(&qword_9409B0, &type metadata accessor for TodayCard.Style, &protocol conformance descriptor for TodayCard.Style);
    sub_769430();
    sub_769430();
    if (v10[2] == v10[0] && v10[3] == v10[1])
    {
      v9 = 1;
    }

    else if (sub_76A950())
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    (*(v5 + 8))(v8, v4);

    [v2 setOverrideUserInterfaceStyle:v9];
    sub_36860C();
  }

  else
  {
    [v2 setOverrideUserInterfaceStyle:{0, v6.n128_f64[0]}];

    sub_36860C();
  }
}

uint64_t sub_366D68()
{
  v0 = sub_368D84();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_21:
    v3 = sub_76A860();
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = sub_76A770();
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = [v7 text];
      if (v9)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_22;
      }
    }

    v10 = v9;
    v11 = sub_769240();
    v18 = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_7B5CC(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_7B5CC((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v15 = &v5[2 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v18;
  }

  while (v4 != v3);
LABEL_22:

  sub_BD88(&unk_947FF0, &unk_7801F0);
  sub_5FBA8();
  v16 = sub_7691A0();

  return v16;
}

void sub_366F68()
{
  if (qword_93CDD8 != -1)
  {
    swift_once();
  }

  v0 = qword_950C18;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 preferredFontDescriptorWithTextStyle:v2];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];
  v5 = objc_opt_self();
  if (v4)
  {
    v6 = [v5 fontWithDescriptor:v4 size:0.0];

    v3 = v4;
  }

  else
  {
    v6 = [v5 fontWithDescriptor:v3 size:0.0];
  }

  qword_950C20 = v6;
}

id sub_3670BC()
{
  result = [objc_opt_self() systemFontOfSize:43.0 weight:UIFontWeightHeavy];
  qword_950C38 = result;
  return result;
}

void sub_367128()
{
  if (qword_93CE00 != -1)
  {
    swift_once();
  }

  v0 = qword_950C40;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 preferredFontDescriptorWithTextStyle:v2];
  v4 = [objc_opt_self() fontWithDescriptor:v3 size:0.0];

  qword_950C48 = v4;
}

void sub_36723C(uint64_t a1, void *a2, void **a3, void *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v13 = a3;
    swift_once();
    a3 = v13;
  }

  v6 = *a3;
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 preferredFontDescriptorWithTextStyle:v8];
  v10 = [v9 fontDescriptorWithSymbolicTraits:32770];
  v11 = objc_opt_self();
  if (v10)
  {
    v12 = [v11 fontWithDescriptor:v10 size:0.0];

    v9 = v10;
  }

  else
  {
    v12 = [v11 fontWithDescriptor:v9 size:0.0];
  }

  *a4 = v12;
}

char *sub_367388(uint64_t a1, _OWORD *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v76 = sub_768C60();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[qword_950C78] = 7;
  v3[qword_950C80] = 7;
  v7 = qword_950C98;
  *&v3[v7] = [objc_allocWithZone(UIImageView) init];
  v3[qword_950CA8] = 0;
  v3[qword_950CB8] = 0;
  v3[qword_950CC0] = 0;
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 40);
  v11 = *(a1 + 56);
  v12 = *(a1 + 72);
  v13 = *(a1 + 88);
  v14 = &v3[qword_950CB0];
  v15 = *(a1 + 16);
  *v14 = *a1;
  v14[1] = v15;
  v16 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v16;
  v17 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v17;
  v18 = &v3[qword_950C70];
  v19 = a2[1];
  *v18 = *a2;
  v18[1] = v19;
  *(v18 + 25) = *(a2 + 25);
  sub_BD88(&qword_950D18, &qword_798EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77DCF0;
  *(inited + 32) = 5;
  v21 = qword_93CDF0;
  v82 = v8;

  v81 = v9;

  v80 = v10;

  v79 = v11;

  v78 = v12;

  v77 = v13;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_950C30;
  *(inited + 40) = qword_950C30;
  *(inited + 48) = 2;
  *(inited + 56) = v22;
  *(inited + 64) = 3;
  *(inited + 72) = v22;
  *(inited + 80) = 0;
  *(inited + 88) = v22;
  *(inited + 96) = 1;
  *(inited + 104) = v22;
  *(inited + 112) = 6;
  v23 = qword_93CE28;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_950C68;
  *(inited + 120) = qword_950C68;
  *(inited + 128) = 4;
  v26 = qword_93CE18;
  v27 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_950C58;
  *(inited + 136) = qword_950C58;
  v29 = sub_10D278(inited);
  swift_setDeallocating();
  v30 = v28;
  sub_BD88(&qword_950D20, &qword_798EE8);
  swift_arrayDestroy();
  v31 = type metadata accessor for TodayTransitioningLabelView();
  v32 = objc_allocWithZone(v31);
  *&v3[qword_950C90] = sub_726C3C(v29, v24);
  v33 = sub_10D278(_swiftEmptyArrayStorage);
  if (qword_93CE08 != -1)
  {
    swift_once();
  }

  v34 = qword_950C48;
  objc_allocWithZone(v31);
  *&v3[qword_950CA0] = sub_726C3C(v33, v34);
  v35 = sub_10D278(_swiftEmptyArrayStorage);
  if (qword_93CDE0 != -1)
  {
    swift_once();
  }

  v36 = qword_950C20;
  v37 = objc_allocWithZone(v31);
  *&v3[qword_950C88] = sub_726C3C(v35, v36);
  v88.receiver = v3;
  v88.super_class = ObjectType;
  v38 = objc_msgSendSuper2(&v88, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v39 = [v38 layer];
  [v39 setAllowsGroupBlending:0];

  v40 = qword_950C90;
  *(*&v38[qword_950C90] + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v41 = *&v38[qword_950C88];
  v42 = qword_950C88;
  v73 = qword_950C88;
  *(v41 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v43 = *&v38[qword_950CA0];
  v44 = qword_950CA0;
  v72 = qword_950CA0;
  *(v43 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v45 = *(v41 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v46 = v45;
  v47 = sub_769FF0();
  [v46 setTextColor:v47];

  v48 = *&v38[v40];
  v71 = v40;
  v49 = *(v48 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v50 = sub_769FD0();
  [v49 setTextColor:v50];

  v51 = *(*&v38[v44] + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v52 = sub_769FF0();
  [v51 setTextColor:v52];

  v53 = qword_950C98;
  [*&v38[qword_950C98] setContentMode:1];
  v54 = *(*&v38[v42] + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v55 = v54;
  v56 = v74;
  sub_768C10();
  sub_10A2C(&v84, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v86, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  v57 = *(v75 + 8);
  v58 = v76;
  v57(v56, v76);
  v59 = *(*&v38[v40] + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v60 = v59;
  sub_768C10();
  sub_10A2C(&v84, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v86, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  v57(v56, v58);
  v61 = *&v38[v53];
  v62 = v53;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v63 = v61;
  sub_768C10();
  sub_10A2C(&v84, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v86, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  v57(v56, v58);
  v64 = v72;
  v65 = *(*&v38[v72] + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v66 = v65;
  sub_768C10();
  sub_10A2C(&v84, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v86, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  v57(v56, v58);
  [v38 addSubview:*&v38[v73]];
  [v38 addSubview:*&v38[v71]];
  [v38 addSubview:*&v38[v62]];
  [v38 addSubview:*&v38[v64]];
  sub_BD88(&qword_9477F0, qword_780200);
  v67 = swift_allocObject();
  v76 = xmmword_77B6D0;
  *(v67 + 16) = xmmword_77B6D0;
  *(v67 + 32) = sub_767B80();
  *(v67 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(&v87 + 1) = ObjectType;
  *&v86 = v38;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(&v86);
  v68 = swift_allocObject();
  *(v68 + 16) = v76;
  *(v68 + 32) = sub_7676F0();
  *(v68 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_769F40();

  swift_unknownObjectRelease();

  return v38;
}

id sub_367E48()
{
  v1 = v0;
  v2 = *&v0[qword_950C88];
  v3 = qword_950C78;
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_sizeCategory);
  v5 = v1[qword_950C78];
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_sizeCategory) = v5;
  sub_7275FC(v4, v5);
  v6 = *&v1[qword_950C90];
  v7 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_sizeCategory);
  v8 = v1[v3];
  *(v6 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_sizeCategory) = v8;
  sub_7275FC(v7, v8);
  v9 = *&v1[qword_950CA0];
  v10 = *(v9 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_sizeCategory);
  v11 = v1[v3];
  *(v9 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_sizeCategory) = v11;
  sub_7275FC(v10, v11);

  return [v1 setNeedsLayout];
}

double sub_367EFC()
{
  [v0 layoutIfNeeded];
  v1 = v0[qword_950C78];
  v2 = *&v0[qword_950C88];
  if ([*&v2[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label] isHidden] & 1) != 0 || (v3 = *&v0[qword_950C90], (objc_msgSend(*&v3[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label], "isHidden")))
  {
    v4 = *&v0[qword_950C90];
    v5 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
    if ([*&v4[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label] isHidden] & 1) != 0 || (v0[qword_950CA8])
    {
      if (([*&v4[v5] isHidden] & 1) != 0 || v0[qword_950CA8] != 1)
      {
        v10 = *&v0[qword_950C98];
        if (([v10 isHidden] & 1) == 0)
        {
          [v10 frame];
LABEL_19:
          MaxY = CGRectGetMaxY(*&v6);
          return MaxY + 20.0;
        }

        [v0 bounds];
      }

      else
      {
        [v4 frame];
        if (v1 != 4)
        {
          goto LABEL_19;
        }
      }

      return CGRectGetMinY(*&v6);
    }

    else
    {
      [v4 frame];
      result = CGRectGetMinY(v18);
      if (v1 != 4)
      {
        return result + 20.0;
      }
    }
  }

  else
  {
    if (v1 != 4)
    {
      [v3 frame];
      MaxY = CGRectGetMinY(v19);
      return MaxY + 20.0;
    }

    [v2 frame];

    return CGRectGetMaxY(*&v12);
  }

  return result;
}

id sub_3680EC()
{
  v1 = v0;
  v2 = *&v0[qword_950C88];
  v3 = &v0[qword_950CB0];
  v4 = *&v0[qword_950CB0];

  v5 = [v0 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = v4(v6);

  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_numberOfLines) = v7;
  v8 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeInLabel);
  if (!v8)
  {
    v8 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  }

  [v8 setNumberOfLines:v7];
  v9 = *&v1[qword_950C90];
  v10 = *(v3 + 10);

  v11 = [v1 traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  v13 = v10(v12);

  *(v9 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_numberOfLines) = v13;
  v14 = *(v9 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeInLabel);
  if (!v14)
  {
    v14 = *(v9 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  }

  [v14 setNumberOfLines:v13];
  v15 = *&v1[qword_950CA0];
  v16 = *(v3 + 6);

  v17 = [v1 traitCollection];
  v18 = [v17 preferredContentSizeCategory];

  v19 = v16(v18);

  *(v15 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_numberOfLines) = v19;
  v20 = *(v15 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_fadeInLabel);
  if (v20)
  {
    [v20 setNumberOfLines:v19];
  }

  else
  {
    [*(v15 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label) setNumberOfLines:v19];
  }

  v21 = *(v3 + 2);
  v22 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);

  v23 = [v1 traitCollection];
  v24 = [v23 preferredContentSizeCategory];

  v25 = v21(v24);

  [v22 setMaximumContentSizeCategory:v25];

  v26 = *(v3 + 4);
  v27 = *(v9 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);

  v28 = [v1 traitCollection];
  v29 = [v28 preferredContentSizeCategory];

  v30 = v26(v29);

  [v27 setMaximumContentSizeCategory:v30];

  v31 = *(v3 + 8);
  v32 = *(v15 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);

  v33 = [v1 traitCollection];
  v34 = [v33 preferredContentSizeCategory];

  v35 = v31(v34);

  [v32 setMaximumContentSizeCategory:v35];

  return [v1 setNeedsLayout];
}

void sub_36851C()
{
  v1 = *(v0 + qword_950C88);
  v2 = *(v0 + qword_950CC0);
  v3 = &OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning) = v2;
  if (v2 == 1)
  {
    *(*(v0 + qword_950C90) + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning) = 1;
    v4 = *(v0 + qword_950CA0);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
    v5 = *(v0 + qword_950C90);
    *(v5 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning) = v2;
    *(v5 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
    v4 = *(v0 + qword_950CA0);
    *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_isTransitioning) = v2;
    v3 = &OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_labelRequiresUnanimatedLayout;
    LOBYTE(v2) = 0;
  }

  *(v4 + *v3) = v2;
}

void sub_3685C4(void *a1)
{
  v1 = a1;
  sub_3680EC();
}

void sub_36860C()
{
  if ([v0 overrideUserInterfaceStyle])
  {
    [v0 overrideUserInterfaceStyle];
    sub_769240();
    v1 = sub_769210();

    v2 = [*&v0[qword_950C88] layer];
    [v2 setCompositingFilter:v1];

    v4 = [*&v0[qword_950CA0] layer];
    [v4 setCompositingFilter:v1];
  }

  else
  {
    v3 = [*&v0[qword_950C88] layer];
    [v3 setCompositingFilter:0];

    v4 = [*&v0[qword_950CA0] layer];
    [v4 setCompositingFilter:0];
  }
}

id sub_368778@<X0>(uint64_t *a1@<X8>)
{
  v20 = *(v1 + qword_950C70 + 16);
  v21 = *(v1 + qword_950C70);
  v3 = *(v1 + qword_950C70 + 32);
  v4 = *(v1 + qword_950C88);
  v5 = *(v1 + qword_950C90);
  v6 = *(v1 + qword_950C70 + 40);
  v7 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];
  v23 = sub_75BB20();
  v24 = &protocol witness table for UILabel;
  *&v22 = v7;
  v8 = *(v1 + qword_950C98);
  v9 = v4;
  v10 = v5;
  v11 = v7;
  v12 = [v8 image];
  if (v12)
  {

    v13 = sub_BE70(0, &qword_949D90, UIImageView_ptr);
    v14 = v8;
    v15 = &protocol witness table for UIView;
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v8 = 0;
  }

  v19 = *(v1 + qword_950CA0);
  v16 = *(v1 + qword_950CA8);
  a1[3] = &type metadata for TodayCardLabelsLayout;
  a1[4] = sub_36A138();
  v17 = swift_allocObject();
  *a1 = v17;
  *(v17 + 16) = v21;
  *(v17 + 32) = v20;
  *(v17 + 48) = v3;
  *(v17 + 56) = v6;
  *(v17 + 64) = v9;
  *(v17 + 72) = v10;
  sub_34698(&v22, v17 + 80);
  *(v17 + 120) = v8;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 144) = v13;
  *(v17 + 152) = v15;
  *(v17 + 160) = v19;
  *(v17 + 168) = v16;

  return v19;
}

void sub_368924(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_B170(a1, a1[3]);
  v4 = sub_767660();
  v6 = v3();

  if (v6)
  {
    sub_B170(a1, a1[3]);
    v5 = sub_767660();
    if (sub_769B40())
    {
      v6;
    }

    sub_10974(a1, a1[3]);
    sub_767670();
  }
}

void sub_368A40(void *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  sub_B170(a1, a1[3]);
  v4 = sub_767660();
  v6 = v3();

  if (v6)
  {
    sub_B170(a1, a1[3]);
    v5 = sub_767660();
    if (sub_769B40())
    {
      v6;
    }

    sub_10974(a1, a1[3]);
    sub_767670();
  }
}

void sub_368B5C(void *a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  sub_B170(a1, a1[3]);
  v4 = sub_767660();
  v6 = v3();

  if (v6)
  {
    sub_B170(a1, a1[3]);
    v5 = sub_767660();
    if (sub_769B40())
    {
      v6;
    }

    sub_10974(a1, a1[3]);
    sub_767670();
  }
}

id sub_368C78(void *a1)
{
  v1 = a1;
  sub_366D68();
  v3 = v2;

  if (v3)
  {
    v4 = sub_769210();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_368CF0(void *a1, uint64_t a2, NSString a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_769240();
    v6 = a1;
    a3 = sub_769210();
  }

  else
  {
    v7 = a1;
  }

  v8.receiver = a1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "setAccessibilityLabel:", a3);
}

double *sub_368D84()
{
  sub_BD88(&unk_93F5C0, &unk_77C600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_78D690;
  v2 = *(v0 + qword_950C88);
  *(inited + 32) = v2;
  v3 = *(v0 + qword_950C90);
  *(inited + 40) = v3;
  v4 = *(v0 + qword_950CA0);
  *(inited + 48) = v4;
  v21 = _swiftEmptyArrayStorage;
  v5 = inited & 0xC000000000000001;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_33;
  }

  if (!*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_32;
  }

  for (i = v6; ; i = sub_76A770())
  {
    v10 = i;
    if ([i isHidden] & 1) != 0 || (objc_msgSend(*&v10[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label], "isHidden"))
    {

      if (v5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
      if (v5)
      {
LABEL_18:
        v11 = sub_76A770();
        goto LABEL_9;
      }
    }

    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 2uLL)
    {
      goto LABEL_32;
    }

    v11 = *(inited + 40);
LABEL_9:
    v12 = v11;
    if ([v11 isHidden] & 1) != 0 || (objc_msgSend(*&v12[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label], "isHidden"))
    {

      if (v5)
      {
        break;
      }

      goto LABEL_12;
    }

    sub_76A7A0();
    sub_76A7D0();
    sub_76A7E0();
    sub_76A7B0();
    if (v5)
    {
      break;
    }

LABEL_12:
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) >= 3uLL)
    {
      v13 = *(inited + 48);
      goto LABEL_14;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v13 = sub_76A770();
LABEL_14:
  v14 = v13;
  if ([v13 isHidden] & 1) != 0 || (objc_msgSend(*&v14[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label], "isHidden"))
  {
  }

  else
  {
    sub_76A7A0();
    sub_76A7D0();
    sub_76A7E0();
    sub_76A7B0();
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  if ((v21 & 0x8000000000000000) != 0 || (v21 & 0x4000000000000000) != 0)
  {
    v15 = sub_76A860();
    if (v15)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

  v15 = *(v21 + 2);
  if (!v15)
  {
LABEL_35:

    return _swiftEmptyArrayStorage;
  }

LABEL_25:
  result = sub_76A7C0();
  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    v17 = 0;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v18 = sub_76A770();
      }

      else
      {
        v18 = *&v21[v17 + 4];
      }

      v19 = v18;
      ++v17;
      v20 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label];

      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
    }

    while (v15 != v17);

    return _swiftEmptyArrayStorage;
  }

  return result;
}

Class sub_3690FC(void *a1)
{
  v1 = a1;
  v2 = sub_368D84();
  sub_1413E4(v2);

  v3.super.isa = sub_769450().super.isa;

  return v3.super.isa;
}

void sub_369184(void *a1, uint64_t a2, Class a3, SEL *a4)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_769460();
    v8 = a1;
    a3 = sub_769450().super.isa;
  }

  else
  {
    v9 = a1;
  }

  v10.receiver = a1;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, *a4, a3);
}

double sub_369258()
{

  return result;
}

double sub_369320(uint64_t a1)
{

  return result;
}

uint64_t sub_3693F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_36943C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_3694C8(uint64_t a1, __n128 a2)
{
  v3 = sub_75F730();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_950D30, qword_798EF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  sub_36A1EC(a1, &v36 - v11);
  v13 = *(v4 + 48);
  v14 = v13(v12, 1, v3);
  v37 = v4;
  if (v14 == 1)
  {
    sub_10A2C(v12, &qword_950D30, qword_798EF0);
    v15 = 0;
  }

  else
  {
    sub_75F720();
    sub_36A25C(&unk_94A340, &type metadata accessor for StringCharacteristics, &protocol conformance descriptor for StringCharacteristics);
    v15 = sub_76A520();
    v16 = *(v4 + 8);
    v16(v6, v3);
    v16(v12, v3);
  }

  sub_36A1EC(a1, v9);
  if (v13(v9, 1, v3) != 1)
  {
    sub_75F700();
    sub_36A25C(&unk_94A340, &type metadata accessor for StringCharacteristics, &protocol conformance descriptor for StringCharacteristics);
    v18 = sub_76A520();
    v19 = *(v37 + 8);
    v19(v6, v3);
    v19(v9, v3);
    if (v15)
    {
      v20 = 52.0;
    }

    else
    {
      v20 = 44.0;
    }

    if ((v15 | v18))
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  sub_10A2C(v9, &qword_950D30, qword_798EF0);
  if ((v15 & 1) == 0)
  {
LABEL_11:
    v17 = 0x4042000000000000;
    goto LABEL_12;
  }

  v17 = 0x404A000000000000;
LABEL_12:
  v20 = *&v17;
LABEL_13:
  v21 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v21 setMaximumLineHeight:v20];
  sub_BD88(&qword_940F40, &qword_785F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77DC20;
  *(inited + 32) = NSFontAttributeName;
  v23 = qword_93CDF8;
  v24 = NSFontAttributeName;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_950C38;
  v26 = sub_BE70(0, &qword_93F900, UIFont_ptr);
  *(inited + 40) = v25;
  *(inited + 64) = v26;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v27 = sub_BE70(0, &unk_959BA0, NSMutableParagraphStyle_ptr);
  *(inited + 80) = v21;
  *(inited + 104) = v27;
  *(inited + 112) = kCTBaselineOffsetAttributeName;
  v28 = objc_allocWithZone(NSNumber);
  v29 = v25;
  v30 = NSParagraphStyleAttributeName;
  v31 = v21;
  v32 = kCTBaselineOffsetAttributeName;
  v33 = [v28 initWithDouble:{fmin(v20 + -43.0, 0.0)}];
  *(inited + 144) = sub_BE70(0, &qword_945820, NSNumber_ptr);
  *(inited + 120) = v33;
  v34 = sub_10D028(inited);
  swift_setDeallocating();
  sub_BD88(qword_940F50, &qword_785170);
  swift_arrayDestroy();

  return v34;
}

unint64_t sub_3699E0(uint64_t *a1, void **a2, uint64_t a3)
{
  sub_BD88(&qword_940F40, &qword_785F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77DC20;
  *(inited + 32) = NSFontAttributeName;
  v6 = *a1;
  v7 = NSFontAttributeName;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = *a2;
  v9 = sub_BE70(0, &qword_93F900, UIFont_ptr);
  *(inited + 40) = v8;
  *(inited + 64) = v9;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v10 = objc_allocWithZone(NSParagraphStyle);
  v11 = v8;
  v12 = NSParagraphStyleAttributeName;
  v13 = [v10 init];
  v14 = sub_BE70(0, &qword_940F48, NSParagraphStyle_ptr);
  *(inited + 80) = v13;
  *(inited + 104) = v14;
  *(inited + 112) = kCTBaselineOffsetAttributeName;
  v15 = objc_allocWithZone(NSNumber);
  v16 = kCTBaselineOffsetAttributeName;
  v17 = [v15 initWithDouble:0.0];
  *(inited + 144) = sub_BE70(0, &qword_945820, NSNumber_ptr);
  *(inited + 120) = v17;
  v18 = sub_10D028(inited);
  swift_setDeallocating();
  sub_BD88(qword_940F50, &qword_785170);
  swift_arrayDestroy();
  return v18;
}

id sub_369B90(_BYTE *a1)
{
  v3 = *&a1[qword_950C70 + 32];
  v4 = a1[qword_950C70 + 40];
  v5 = &v1[qword_950C70];
  v6 = *&a1[qword_950C70 + 16];
  *v5 = *&a1[qword_950C70];
  *(v5 + 1) = v6;
  *(v5 + 4) = v3;
  v5[40] = v4;
  [v1 setNeedsLayout];
  v1[qword_950CA8] = a1[qword_950CA8];
  v7 = *&v1[qword_950C90];
  *(v7 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v8 = v7;
  v51 = *&v1[qword_950C88];
  v9 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v50 = *&a1[qword_950C88];
  v10 = *(v50 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v11 = *(v51 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v12 = [v10 text];
  [v11 setText:v12];

  v13 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v14 = *(v8 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v15 = v8;
  v16 = *&a1[qword_950C90];
  v17 = *(v16 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v18 = v14;
  v19 = [v17 attributedText];
  [v18 setAttributedText:v19];

  v49 = v15;
  v20 = *(v16 + v13);
  v21 = *(v15 + v13);
  [v21 setAdjustsFontSizeToFitWidth:{objc_msgSend(v20, "adjustsFontSizeToFitWidth")}];

  v22 = *(v16 + v13);
  v23 = *(v15 + v13);
  [v22 minimumScaleFactor];
  [v23 setMinimumScaleFactor:?];

  v24 = *&v1[qword_950C98];
  v46 = v24;
  v47 = *&a1[qword_950C98];
  v25 = [v47 image];
  [v24 setImage:v25];

  v26 = *&v1[qword_950CA0];
  v27 = OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label;
  v28 = *&a1[qword_950CA0];
  v29 = *(v28 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v30 = *(v26 + OBJC_IVAR____TtC18ASMessagesProvider27TodayTransitioningLabelView_label);
  v31 = [v29 text];
  [v30 setText:v31];

  v32 = *(v50 + v9);
  v33 = *(v51 + v9);
  [v33 setHidden:{objc_msgSend(v32, "isHidden")}];

  v34 = *(v16 + v13);
  v35 = *(v49 + v13);
  [v35 setHidden:{objc_msgSend(v34, "isHidden")}];

  [v46 setHidden:{objc_msgSend(v47, "isHidden")}];
  v36 = *(v26 + v27);
  v37 = *(v28 + v27);
  v38 = v36;
  [v38 setHidden:{objc_msgSend(v37, "isHidden")}];

  v39 = *&a1[qword_950CB0 + 88];
  v40 = &v1[qword_950CB0];
  v41 = *&a1[qword_950CB0 + 8];
  v42 = *&a1[qword_950CB0 + 24];
  v45 = *&a1[qword_950CB0 + 40];
  v43 = *&a1[qword_950CB0 + 56];
  *v48 = *&a1[qword_950CB0 + 72];
  *v40 = *&a1[qword_950CB0];
  *(v40 + 8) = v41;
  *(v40 + 24) = v42;
  *(v40 + 40) = v45;
  *(v40 + 56) = v43;
  *(v40 + 72) = *v48;
  *(v40 + 11) = v39;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_3680EC();

  [v1 setOverrideUserInterfaceStyle:{objc_msgSend(a1, "overrideUserInterfaceStyle")}];
  sub_36860C();

  return [v1 setNeedsLayout];
}

void sub_36A074()
{
  *(v0 + qword_950C78) = 7;
  *(v0 + qword_950C80) = 7;
  v1 = qword_950C98;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  *(v0 + qword_950CA8) = 0;
  *(v0 + qword_950CB8) = 0;
  *(v0 + qword_950CC0) = 0;
  sub_76A840();
  __break(1u);
}

unint64_t sub_36A138()
{
  result = qword_950D28;
  if (!qword_950D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950D28);
  }

  return result;
}

uint64_t sub_36A18C()
{
  sub_BEB8((v0 + 80));
  if (*(v0 + 144))
  {
    sub_BEB8((v0 + 120));
  }

  return _swift_deallocObject(v0, 169, 7);
}

uint64_t sub_36A1EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_950D30, qword_798EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_36A25C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_36A2C0()
{
  result = qword_950D38;
  if (!qword_950D38)
  {
    sub_7626F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950D38);
  }

  return result;
}

uint64_t sub_36A318(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&qword_955640, &unk_790C50);
  __chkstk_darwin(v3 - 8);
  v5 = &v34[-1] - v4;
  v6 = sub_7626D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v34[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_BD88(&qword_94DDC0, qword_77DE00);
  v10 = sub_768F90();
  sub_75A920();
  sub_768900();
  sub_768ED0();
  v11 = v34[0];
  sub_7626E0();
  v12 = (*(v7 + 88))(v9, v6);
  if (v12 == enum case for GameCenterInvitePlayerAction.InvitationType.messages(_:))
  {
    (*(v7 + 96))(v9, v6);
    v13 = *v9;
    v14 = v9[1];
    v15 = sub_768F90();
    sub_758BB0();
    v16 = sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
    v17 = sub_769970();
    v35 = v16;
    v36 = &protocol witness table for OS_dispatch_queue;
    v34[0] = v17;
    v18 = swift_allocObject();
    v18[2] = v15;
    v18[3] = v13;
    v18[4] = v14;
    v18[5] = a2;

    sub_758B60();

    sub_BEB8(v34);
    sub_768F00();

    return v10;
  }

  if (v12 == enum case for GameCenterInvitePlayerAction.InvitationType.player(_:))
  {
    (*(v7 + 96))(v9, v6);
    v19 = *v9;
    v20 = v9[1];
    v21 = sub_769590();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v19;
    v22[5] = v20;
    v22[6] = v11;
    v22[7] = v10;

    v23 = &unk_798FB0;
LABEL_7:
    sub_54A098(0, 0, v5, v23, v22);

    return v10;
  }

  if (v12 == enum case for GameCenterInvitePlayerAction.InvitationType.contact(_:))
  {
    (*(v7 + 96))(v9, v6);
    v33 = *v9;
    v24 = v9[2];
    v25 = v9[3];
    v26 = sub_769590();
    (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    *(v22 + 2) = v33;
    v22[6] = v24;
    v22[7] = v25;
    v22[8] = v11;
    v22[9] = v10;

    v23 = &unk_798FA0;
    goto LABEL_7;
  }

  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v27 = sub_768FF0();
  *&v33 = sub_BE38(v27, qword_9A0430);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768540();
  sub_768EA0();

  v28 = sub_768F90();
  sub_758BB0();
  v29 = sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  v30 = sub_769970();
  v35 = v29;
  v36 = &protocol witness table for OS_dispatch_queue;
  v34[0] = v30;
  v31 = swift_allocObject();
  v31[2] = v28;
  v31[3] = 0;
  v31[4] = 0;
  v31[5] = a2;

  sub_758B60();

  sub_BEB8(v34);
  sub_768F00();

  (*(v7 + 8))(v9, v6);
  return v10;
}

uint64_t sub_36A928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v8 = sub_7687C0();
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  v9 = sub_758B80();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();

  return _swift_task_switch(sub_36AA48, 0, 0);
}

uint64_t sub_36AA48()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[10];
  v4 = v0[11];
  sub_758BB0();
  *v1 = v5;
  v1[1] = v4;
  (*(v2 + 104))(v1, enum case for GameCenter.PushFriendInvitationType.player(_:), v3);

  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_36AB44;
  v7 = v0[19];
  v8 = v0[12];

  return static GameCenter.sendFriendInvitationViaPush(_:bag:)(v7, v8);
}

uint64_t sub_36AB44()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  *(*v1 + 168) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_36AD78;
  }

  else
  {
    v5 = sub_36ACB4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_36ACB4()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v2 + 104))(v1, enum case for ActionOutcome.performed(_:), v3);
  sub_768F60();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_36AD78()
{
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v1 = sub_768FF0();
  sub_BE38(v1, qword_9A0430);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  swift_getErrorValue();
  v2 = v0[6];
  v3 = v0[7];
  v0[5] = v3;
  v4 = sub_B1B4(v0 + 2);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  sub_7685E0();
  sub_BDD0((v0 + 2));
  sub_768EA0();

  sub_768F50();

  v5 = v0[1];

  return v5();
}

uint64_t sub_36AFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v13;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a4;
  v8[11] = a5;
  v9 = sub_7687C0();
  v8[16] = v9;
  v8[17] = *(v9 - 8);
  v8[18] = swift_task_alloc();
  v10 = sub_758B80();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_36B0CC, 0, 0);
}

uint64_t sub_36B0CC()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  sub_758BB0();
  *v1 = v7;
  v1[1] = v6;
  v1[2] = v5;
  v1[3] = v4;
  (*(v2 + 104))(v1, enum case for GameCenter.PushFriendInvitationType.contact(_:), v3);

  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_36B1E0;
  v9 = v0[21];
  v10 = v0[14];

  return static GameCenter.sendFriendInvitationViaPush(_:bag:)(v9, v10);
}

uint64_t sub_36B1E0()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  *(*v1 + 184) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_36B414;
  }

  else
  {
    v5 = sub_36B350;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_36B350()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v2 + 104))(v1, enum case for ActionOutcome.performed(_:), v3);
  sub_768F60();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_36B414()
{
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v1 = sub_768FF0();
  sub_BE38(v1, qword_9A0430);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  swift_getErrorValue();
  v2 = v0[6];
  v3 = v0[7];
  v0[5] = v3;
  v4 = sub_B1B4(v0 + 2);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  sub_7685E0();
  sub_BDD0((v0 + 2));
  sub_768EA0();

  sub_768F50();

  v5 = v0[1];

  return v5();
}

uint64_t sub_36B63C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    sub_758BB0();
    v8 = a1;
    sub_758B90();
    v9 = swift_allocObject();
    *(v9 + 16) = a5;
    *(v9 + 24) = a2;
    v10 = sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
    swift_retain_n();

    v13[3] = v10;
    v13[4] = &protocol witness table for OS_dispatch_queue;
    v13[0] = sub_769970();
    sub_768F10();

    return sub_BEB8(v13);
  }

  else
  {
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v12 = sub_768FF0();
    sub_BE38(v12, qword_9A0430);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();

    sub_36C1F8();
    swift_allocError();
    sub_768F50();
  }
}

double sub_36B8EC(void **a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v33 = a2;
  v34 = a3;
  v32 = sub_758B40();
  v5 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_75F340();
  v7 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_760280();
  v10 = *(v29 - 8);
  __chkstk_darwin(v29);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_7687B0();
  __chkstk_darwin(v13 - 8);
  v14 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v14 - 8);
  v16 = &v29 - v15;
  v17 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v17 - 8);
  v19 = &v29 - v18;
  v20 = sub_765490();
  __chkstk_darwin(v20);
  v22 = *a1;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  (*(v23 + 104))(&v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.viewController(_:));
  v24 = sub_7570A0();
  (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
  v25 = sub_759E30();
  (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
  v36 = sub_BE70(0, &qword_9434E0, UIViewController_ptr);
  v35 = v22;
  v26 = v22;
  sub_768790();
  (*(v10 + 104))(v12, enum case for FlowPresentationContext.infer(_:), v29);
  (*(v7 + 104))(v9, enum case for FlowAnimationBehavior.infer(_:), v30);
  (*(v5 + 104))(v31, enum case for FlowOrigin.inapp(_:), v32);
  sub_768CE0();
  sub_758B20();
  swift_allocObject();
  v27 = sub_758AD0();
  sub_72D7A8(v27, 1, v33);
  sub_768F00();

  return result;
}

uint64_t sub_36BDD8(uint64_t a1)
{
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v1 = sub_768FF0();
  sub_BE38(v1, qword_9A0430);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768540();
  sub_768EA0();

  return sub_768F50();
}

uint64_t sub_36BF48()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_36BFA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_14FCC;

  return sub_36AFA0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_36C08C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_36C0DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_254BD8;

  return sub_36A928(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_36C1B0()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_36C1F8()
{
  result = qword_950D40;
  if (!qword_950D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950D40);
  }

  return result;
}

uint64_t sub_36C24C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_36C2B0()
{
  result = qword_950D48;
  if (!qword_950D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950D48);
  }

  return result;
}

unint64_t sub_36C320()
{
  result = qword_950D50;
  if (!qword_950D50)
  {
    sub_75E510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950D50);
  }

  return result;
}

uint64_t sub_36C380(uint64_t a1, uint64_t a2, __n128 a3)
{
  v32 = a2;
  v29 = a1;
  v31 = sub_758B40();
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_75F340();
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_760280();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7687B0();
  __chkstk_darwin(v12 - 8);
  v13 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v13 - 8);
  v15 = &v27 - v14;
  v16 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - v17;
  v19 = sub_765490();
  __chkstk_darwin(v19);
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  (*(v21 + 104))(&v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.reportAConcern(_:));
  v22 = sub_7570A0();
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  v23 = sub_759E30();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v34 = sub_75E510();
  v33 = v29;

  sub_768790();
  (*(v9 + 104))(v11, enum case for FlowPresentationContext.presentModalFormSheet(_:), v8);
  (*(v5 + 104))(v7, enum case for FlowAnimationBehavior.infer(_:), v28);
  (*(v3 + 104))(v30, enum case for FlowOrigin.inapp(_:), v31);
  sub_768CE0();
  sub_758B20();
  swift_allocObject();
  v24 = sub_758AD0();
  v25 = sub_72D7A8(v24, 1, v32);

  return v25;
}

uint64_t sub_36C850@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v66 = sub_75CFE0();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_BD88(&qword_9439D8, &qword_799160);
  __chkstk_darwin(v3 - 8);
  v63 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v53 - v6;
  v8 = sub_BD88(&qword_9439E0, &unk_787AB0);
  __chkstk_darwin(v8 - 8);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v53 - v11;
  v12 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v58 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v55 = &v53 - v16;
  __chkstk_darwin(v17);
  v19 = &v53 - v18;
  v20 = sub_BD88(&unk_948010, qword_789590);
  __chkstk_darwin(v20 - 8);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v53 - v24;
  v26 = sub_759810();
  v27 = *(v26 - 8);
  (*(v27 + 56))(v25, 1, 1, v26);
  v28 = sub_75CFD0();
  v60 = *(v28 - 8);
  v61 = v28;
  (*(v60 + 56))(v7, 1, 1);
  v56 = v25;
  sub_1ED18(v25, v22, &unk_948010, qword_789590);
  if ((*(v27 + 48))(v22, 1, v26) == 1)
  {
    sub_10A2C(v22, &unk_948010, qword_789590);
    v29 = 0;
  }

  else
  {
    v29 = sub_7597B0();
    (*(v27 + 8))(v22, v26);
  }

  v30 = v19;
  sub_5E740C(v29, v19);

  if (qword_93DE38 != -1)
  {
    swift_once();
  }

  v31 = sub_BE38(v12, qword_9A01C0);
  v32 = v57;
  v33.n128_f64[0] = (*(v13 + 56))(v57, 1, 1, v12);
  v34 = v55;
  sub_C1D58(v30, v55, v33);
  v35 = v58;
  sub_C1D58(v31, v58, v36);
  v53 = v30;
  v37 = v59;
  sub_1ED18(v32, v59, &qword_9439E0, &unk_787AB0);
  v38 = v7;
  v39 = v7;
  v40 = v63;
  sub_1ED18(v39, v63, &qword_9439D8, &qword_799160);
  v42 = v64;
  v41 = v65;
  v43 = v66;
  (*(v64 + 104))(v65, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v66);
  sub_396E8();
  v54 = sub_769FB0();
  sub_10A2C(v38, &qword_9439D8, &qword_799160);
  sub_10A2C(v32, &qword_9439E0, &unk_787AB0);
  sub_C1DBC(v53, v44);
  sub_10A2C(v56, &unk_948010, qword_789590);
  v45 = type metadata accessor for TitleHeaderView.Style(0);
  v46 = v45[8];
  v47 = v62;
  sub_15CEA0(v34, v62, v48);
  sub_15CEA0(v35, v47 + v45[5], v49);
  sub_15CF04(v37, v47 + v45[6]);
  *(v47 + v45[7]) = 0;
  *(v47 + v46) = 1;
  *(v47 + v45[9]) = 0;
  *(v47 + v45[14]) = 0x4030000000000000;
  *(v47 + v45[12]) = 0;
  *(v47 + v45[13]) = v54;
  (*(v42 + 32))(v47 + v45[11], v41, v43);
  v51 = v60;
  v50 = v61;
  if ((*(v60 + 48))(v40, 1, v61) != 1)
  {
    return (*(v51 + 32))(v47 + v45[10], v40, v50);
  }

  sub_10A2C(v40, &qword_9439D8, &qword_799160);
  return (*(v51 + 104))(v47 + v45[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v50);
}

uint64_t sub_36CF0C()
{

  sub_13238(v0 + 24);

  return swift_deallocClassInstance();
}

id sub_36CF70()
{
  sub_BD88(&qword_950EE0, &qword_799168);
  inited = swift_initStackObject();
  v2 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 32) = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 16) = xmmword_77E280;
  v3 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 40) = 0;
  *(inited + 48) = v3;
  *(inited + 56) = 6;
  v4 = v2;
  v5 = v3;
  v6 = sub_10EC1C(inited);
  swift_setDeallocating();
  sub_BD88(&qword_950EE8, &qword_799170);
  swift_arrayDestroy();
  v7 = [v0 fontDescriptor];
  sub_BD88(&qword_950EF0, &qword_799178);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_77B6D0;
  *(v8 + 32) = UIFontDescriptorFeatureSettingsAttribute;
  sub_BD88(&qword_950EF8, &qword_799180);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_77B6D0;
  *(v9 + 32) = v6;
  *(v8 + 64) = sub_BD88(&qword_950F00, qword_799188);
  *(v8 + 40) = v9;
  v10 = UIFontDescriptorFeatureSettingsAttribute;
  sub_10ED08(v8);
  swift_setDeallocating();
  sub_36D1C0(v8 + 32);
  type metadata accessor for AttributeName(0);
  sub_36D228();
  isa = sub_7690E0().super.isa;

  v12 = [v7 fontDescriptorByAddingAttributes:isa];

  [v0 pointSize];
  v14 = [objc_opt_self() fontWithDescriptor:v12 size:v13];

  return v14;
}

uint64_t sub_36D1C0(uint64_t a1)
{
  v2 = sub_BD88(&qword_945400, &qword_785238);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_36D228()
{
  result = qword_93E948;
  if (!qword_93E948)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93E948);
  }

  return result;
}

id sub_36D2C0(uint64_t *a1, uint64_t (*a2)(void, __n128))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    swift_unknownObjectWeakInit();
    (a2)(0);
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v7 setHidden:1];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      [Strong addSubview:v7];
    }

    swift_unknownObjectWeakDestroy();
    v10 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

void sub_36D3A4(void *a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider22LinkCollectionViewCell_currentLinkView;
  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22LinkCollectionViewCell_currentLinkView];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider22LinkCollectionViewCell_currentLinkView] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 setHidden:1];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v16 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    [v6 setHidden:0];
    v7 = [v1 contentView];
    sub_2630C();
    sub_75D650();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [v6 setFrame:{v9, v11, v13, v15}];
  }

LABEL_4:
}

id sub_36D4B8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider22LinkCollectionViewCell____lazy_storage___standardLinkView] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider22LinkCollectionViewCell____lazy_storage___presentationLinkView] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider22LinkCollectionViewCell_currentLinkView] = 0;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider22LinkCollectionViewCell_itemLayoutContext;
  v11 = sub_75C840();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 contentView];
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v12;
}

void sub_36D6E0()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider22LinkCollectionViewCell_currentLinkView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 contentView];
    sub_2630C();
    sub_75D650();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v2 setFrame:{v5, v7, v9, v11}];
  }
}

uint64_t type metadata accessor for LinkCollectionViewCell(uint64_t a1)
{
  result = qword_950F48;
  if (!qword_950F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_36D90C(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_36D9AC()
{
  v36 = sub_75EAB0();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v23 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_7664A0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75EAC0();
  sub_161DC(v5, qword_99D4E0);
  v33 = sub_BE38(v5, qword_99D4E0);
  if (qword_93CE38 != -1)
  {
    swift_once();
  }

  v6 = sub_7666D0();
  v7 = sub_BE38(v6, qword_99D4F8);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v4, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v2 + 13;
  v32 = v2[13];
  v32(v4, enum case for FontSource.useCase(_:), v1);
  v31 = sub_766CA0();
  v50[3] = v31;
  v50[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v50);
  v48 = v1;
  v49 = &protocol witness table for FontSource;
  v13 = sub_B1B4(&v47);
  v30 = v2[2];
  v30(v13, v4, v1);
  sub_766CB0();
  v14 = v2[1];
  v28 = v2 + 1;
  v29 = v14;
  v14(v4, v1);
  if (qword_93CE40 != -1)
  {
    swift_once();
  }

  v15 = sub_BE38(v6, qword_99D510);
  v24 = v9;
  v25 = v10;
  v9(v4, v15, v6);
  v16 = v32;
  v32(v4, v11, v1);
  v27 = v12;
  v17 = v31;
  v48 = v31;
  v49 = &protocol witness table for StaticDimension;
  sub_B1B4(&v47);
  v26 = v11;
  v45 = v1;
  v46 = &protocol witness table for FontSource;
  v18 = sub_B1B4(v44);
  v19 = v30;
  v30(v18, v4, v1);
  sub_766CB0();
  v20 = v29;
  v29(v4, v1);
  v45 = &type metadata for Double;
  v46 = &protocol witness table for Double;
  v44[0] = 0x4034000000000000;
  v24(v4, v15, v6);
  v16(v4, v26, v1);
  v43[3] = v17;
  v43[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v43);
  v41 = v1;
  v42 = &protocol witness table for FontSource;
  v21 = sub_B1B4(v40);
  v19(v21, v4, v1);
  sub_766CB0();
  v20(v4, v1);
  v42 = &protocol witness table for Double;
  v41 = &type metadata for Double;
  v40[0] = 0x4080E00000000000;
  v39 = 0;
  v38 = 0u;
  v37 = 0u;
  (*(v34 + 104))(v35, enum case for EditorialQuoteLayout.Metrics.Alignment.leading(_:), v36);
  return sub_75EAA0();
}

char *sub_36DF78(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_760AD0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = OBJC_IVAR____TtC18ASMessagesProvider32EditorialQuoteCollectionViewCell_itemLayoutContext;
  v16 = sub_75C840();
  v17 = *(*(v16 - 8) + 56);
  v46 = v4;
  v17(&v4[v15], 1, 1, v16);
  if (qword_93CE38 != -1)
  {
    swift_once();
  }

  v18 = sub_7666D0();
  v19 = sub_BE38(v18, qword_99D4F8);
  v20 = *(v18 - 8);
  v43 = *(v20 + 16);
  v43(v14, v19, v18);
  v42 = *(v20 + 56);
  v42(v14, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v22 = *(v10 + 104);
  v22(v45, enum case for DirectionalTextAlignment.none(_:), v9);
  v23 = sub_75BB20();
  v41 = v9;
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *&v46[OBJC_IVAR____TtC18ASMessagesProvider32EditorialQuoteCollectionViewCell_quoteLabel] = sub_75BB10();
  if (qword_93CE40 != -1)
  {
    swift_once();
  }

  v26 = sub_BE38(v18, qword_99D510);
  v43(v14, v26, v18);
  v42(v14, 0, 1, v18);
  v22(v45, v21, v41);
  v27 = objc_allocWithZone(v24);
  v28 = sub_75BB10();
  v29 = v46;
  *&v46[OBJC_IVAR____TtC18ASMessagesProvider32EditorialQuoteCollectionViewCell_attributionLabel] = v28;
  v47.receiver = v29;
  v47.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v31 = [v30 contentView];
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v32 = [v30 contentView];
  [v32 addSubview:*&v30[OBJC_IVAR____TtC18ASMessagesProvider32EditorialQuoteCollectionViewCell_quoteLabel]];

  v33 = OBJC_IVAR____TtC18ASMessagesProvider32EditorialQuoteCollectionViewCell_attributionLabel;
  v34 = *&v30[OBJC_IVAR____TtC18ASMessagesProvider32EditorialQuoteCollectionViewCell_attributionLabel];
  v35 = objc_opt_self();
  v36 = v34;
  v37 = [v35 systemGrayColor];
  [v36 setTextColor:v37];

  v38 = [v30 contentView];
  [v38 addSubview:*&v30[v33]];

  v39 = v30;
  sub_36EA8C(v39, v39);

  return v39;
}

uint64_t sub_36E530()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v23 = sub_7664F0();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75EAC0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75EAE0();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v1;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "layoutSubviews", v12);
  v15 = [v1 contentView];
  sub_2630C();
  sub_75D650();

  if (qword_93CE30 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v6, qword_99D4E0);
  (*(v7 + 16))(v9, v16, v6);
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32EditorialQuoteCollectionViewCell_quoteLabel];
  v28 = sub_75BB20();
  v29 = &protocol witness table for UIView;
  v26 = &protocol witness table for UIView;
  v27 = v17;
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32EditorialQuoteCollectionViewCell_attributionLabel];
  v25 = v28;
  v24 = v18;
  v19 = v17;
  v20 = v18;
  sub_75EAD0();
  sub_75EA90();
  (*(v3 + 8))(v5, v23);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_36E894(uint64_t a1)
{
  v2 = v1;
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_7699F0();

  if (!a1)
  {
    return sub_36EA8C(v2, v2);
  }

  if ((sub_7699F0() ^ v5))
  {
    return sub_36EA8C(v2, v2);
  }

  v6 = [v2 traitCollection];
  v7 = sub_7699D0() & 1;

  result = sub_7699D0();
  if ((result & 1) != v7)
  {
    return sub_36EA8C(v2, v2);
  }

  return result;
}

uint64_t type metadata accessor for EditorialQuoteCollectionViewCell(uint64_t a1)
{
  result = qword_950F90;
  if (!qword_950F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_36EA8C(void *a1, uint64_t a2)
{
  v4 = sub_760AD0();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  v10 = sub_7699D0();

  if (v10)
  {
    v11 = enum case for DirectionalTextAlignment.leading(_:);
    v12 = *(v5 + 104);
    v12(v8, enum case for DirectionalTextAlignment.leading(_:), v4);
    sub_75BA90();
    v12(v8, v11, v4);
    return sub_75BA90();
  }

  else
  {
    [*(a2 + OBJC_IVAR____TtC18ASMessagesProvider32EditorialQuoteCollectionViewCell_quoteLabel) setTextAlignment:1];
    v14 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider32EditorialQuoteCollectionViewCell_attributionLabel);

    return [v14 setTextAlignment:1];
  }
}

id sub_36EC2C(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v11 = &a1[qword_99D538];
  v12 = sub_759210();
  *v11 = 0;
  *(v11 + 1) = 0;
  v13 = [objc_allocWithZone(v12) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&a1[qword_99D530] = v13;
  v15.receiver = a1;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "initWithFrame:", a2, a3, a4, a5);
}

uint64_t type metadata accessor for FramedArtworkCollectionViewCell(uint64_t a1)
{
  result = qword_950FC8;
  if (!qword_950FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_36EE20(uint64_t a1, uint64_t a2)
{
  sub_759050();
  sub_759210();
  sub_36EF10(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  return sub_75A0C0();
}

uint64_t sub_36EEB8(uint64_t a1)
{
  result = sub_36EF10(&qword_951150, type metadata accessor for FramedArtworkCollectionViewCell, &unk_799288);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_36EF10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double *sub_36EF58(uint64_t a1, int *a2)
{
  v30 = a2;
  v3 = sub_764930();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = sub_BD88(&unk_94F1F0, &qword_782290);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v11 + 8))(v13, v10);
  (*(v4 + 104))(v6, enum case for Shelf.ContentType.todayCard(_:), v3);
  sub_3706DC(&qword_942D68, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  sub_769430();
  sub_769430();
  if (v32 == v31)
  {
    v14 = *(v4 + 8);
    v14(v6, v3);
    v14(v9, v3);
  }

  else
  {
    v15 = sub_76A950();
    v16 = *(v4 + 8);
    v16(v6, v3);
    v16(v9, v3);

    if ((v15 & 1) == 0)
    {
      return sub_6C330C(a1, v30);
    }
  }

  v17 = COERCE_DOUBLE(sub_36FBC8(a1, v30));
  if (v19)
  {
    return _swiftEmptyArrayStorage;
  }

  v20 = v17;
  v21 = v18;
  v22 = v18 >= v17 ? v17 : v18;
  if (v22 <= 0.0)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = objc_opt_self();
  v24 = [v23 absoluteDimension:v20];
  v25 = [v23 absoluteDimension:v21];
  v26 = [objc_opt_self() sizeWithWidthDimension:v24 heightDimension:v25];

  v27 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v26 elementKind:UICollectionElementKindSectionHeader alignment:1];
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_77D9F0;
  *(v28 + 32) = v27;

  return v28;
}

double sub_36F37C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v65 = a4;
  v76 = a1;
  v77 = a2;
  v78 = a5;
  v6 = sub_75DAB0();
  v7 = *(v6 - 8);
  v74 = v6;
  v75 = v7;
  __chkstk_darwin(v6);
  v72 = v8;
  v73 = &v63[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_75B660();
  v70 = *(v9 - 8);
  v71 = v9;
  __chkstk_darwin(v9);
  v69 = &v63[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v68 = &v63[-v12];
  v13 = sub_764930();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v63[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v63[-v18];
  v20 = sub_BD88(&unk_94F1F0, &qword_782290);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v67 = &v63[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v25 = &v63[-v24];
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v66 = *(v21 + 8);
  v66(v25, v20);
  (*(v14 + 104))(v16, enum case for Shelf.ContentType.todayCard(_:), v13);
  sub_3706DC(&qword_942D68, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  sub_769430();
  sub_769430();
  if (v80 == v79)
  {
    v26 = *(v14 + 8);
    v26(v16, v13);
    v26(v19, v13);

LABEL_4:
    v29 = v67;
    sub_75DAA0();
    swift_getKeyPath();
    v30 = v68;
    sub_768750();

    v66(v29, v20);
    v32 = v69;
    v31 = v70;
    v33 = v71;
    (*(v70 + 104))(v69, enum case for ShelfBackground.interactive(_:), v71);
    sub_3706DC(&qword_9439F8, &type metadata accessor for ShelfBackground, &protocol conformance descriptor for ShelfBackground);
    v34 = sub_7691C0();
    v35 = *(v31 + 8);
    v35(v32, v33);
    v35(v30, v33);
    v28 = v34 ^ 1;
    goto LABEL_5;
  }

  v64 = sub_76A950();
  v27 = *(v14 + 8);
  v27(v16, v13);
  v27(v19, v13);

  v28 = 0;
  if (v64)
  {
    goto LABEL_4;
  }

LABEL_5:
  v36 = sub_769240();
  v39 = v76;
  v38 = v77;
  if (v36 != v76 || v37 != v77)
  {
    v41 = sub_76A950();

    if ((v41 & v28 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    v42 = sub_BD88(&qword_951300, &qword_799368);
    v43 = v78;
    v78[3] = v42;
    v43[4] = sub_15D000(&qword_951308, &qword_951300, &qword_799368);
    v78 = sub_B1B4(v43);
    v44 = sub_769240();
    v76 = v45;
    v77 = v44;
    type metadata accessor for ShelfHeaderView(0);
    sub_769BD0();
    v46 = swift_allocObject();
    swift_weakInit();
    v47 = v74;
    v48 = v75;
    v49 = v73;
    (*(v75 + 16))(v73, a3, v74);
    v50 = (*(v48 + 80) + 24) & ~*(v48 + 80);
    v51 = (v72 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    *(v52 + 16) = v46;
    (*(v48 + 32))(v52 + v50, v49, v47);
    *(v52 + v51) = v65;

LABEL_15:
    sub_763760();
    return result;
  }

  if (v28)
  {
    goto LABEL_12;
  }

LABEL_8:
  type metadata accessor for TodayDebugSectionBackgroundView();
  if (sub_769BC0() == v39 && v40 == v38)
  {

LABEL_14:
    v54 = sub_BD88(&qword_9512F0, &qword_799360);
    v55 = v78;
    v78[3] = v54;
    v55[4] = sub_15D000(&qword_9512F8, &qword_9512F0, &qword_799360);
    v78 = sub_B1B4(v55);
    sub_769BC0();
    sub_769BD0();
    v56 = v74;
    v57 = v75;
    v58 = a3;
    v59 = v73;
    (*(v75 + 16))(v73, v58, v74);
    v60 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v61 = swift_allocObject();
    (*(v57 + 32))(v61 + v60, v59, v56);
    goto LABEL_15;
  }

  v53 = sub_76A950();

  if (v53)
  {
    goto LABEL_14;
  }

  return sub_6BED78(v39, v38, a3, v65, v78);
}

uint64_t sub_36FBC8(uint64_t a1, int *a2)
{
  v37 = a2;
  v3 = sub_7656C0();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_764930();
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = sub_BD88(&unk_94F1F0, &qword_782290);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v17 = *(v11 + 8);
  v17(v16, v10);
  v18 = v42;
  if (v42)
  {
    v33 = a1;
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v17(v13, v10);
    v20 = v38;
    v19 = v39;
    (*(v39 + 104))(v38, enum case for Shelf.ContentType.todayCard(_:), v5);
    sub_3706DC(&qword_942D68, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
    sub_769430();
    sub_769430();
    if (v42 == v40 && v43 == v41)
    {
      v21 = *(v19 + 8);
      v21(v20, v5);
      v21(v9, v5);

LABEL_7:
      v25 = v33;
      v26 = v34;
      sub_75DA60();
      sub_765BE0();
      sub_765630();
      v28 = v27;
      v30 = v29;
      (*(v35 + 8))(v26, v36);
      type metadata accessor for ShelfHeaderView(0);
      v31 = sub_50F5C0(v18, v25, v28, v30);

      return *&v31;
    }

    v23 = sub_76A950();
    v24 = *(v19 + 8);
    v24(v20, v5);
    v24(v9, v5);

    if (v23)
    {
      goto LABEL_7;
    }

    v22 = v33;
  }

  else
  {
    v22 = a1;
  }

  return sub_6BFEFC(v22, v37);
}

double *sub_370048(uint64_t a1, uint64_t a2)
{
  v2 = sub_764930();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v23 - v7;
  v9 = sub_BD88(&unk_94F1F0, &qword_782290);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v23 - v12;
  v14 = sub_6C3644(v11);
  v24 = v14;
  if (sub_4AD020(v15))
  {
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    (*(v10 + 8))(v13, v9);
    (*(v3 + 104))(v5, enum case for Shelf.ContentType.todayCard(_:), v2);
    sub_3706DC(&qword_942D68, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
    sub_769430();
    sub_769430();
    if (v23[3] == v23[1] && v23[4] == v23[2])
    {
      v16 = *(v3 + 8);
      v16(v5, v2);
      v16(v8, v2);
    }

    else
    {
      v17 = sub_76A950();
      v18 = *(v3 + 8);
      v18(v5, v2);
      v18(v8, v2);

      if ((v17 & 1) == 0)
      {
        return v14;
      }
    }

    v19 = objc_opt_self();
    type metadata accessor for TodayDebugSectionBackgroundView();
    sub_769BC0();
    v20 = sub_769210();

    v21 = [v19 backgroundDecorationItemWithElementKind:v20];

    sub_769440();
    if (*(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v24 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
    return v24;
  }

  return v14;
}

uint64_t sub_370414()
{
  v1 = sub_75DAB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_370500()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_370538()
{
  v1 = sub_75DAB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

double sub_370610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_75DAB0() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v4 + 16);
  v12 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_6C1E64(a1, a2, a3, a4, v11, v4 + v10, v12);
}

uint64_t sub_3706DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_370728(uint64_t a1)
{
  v1 = sub_7580D0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_764CF0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_7586A0())
  {
    sub_BD88(&unk_944300, &qword_77DEE0);
    sub_768900();
    sub_768ED0();
    v12 = v1;
    swift_getObjectType();
    sub_7586E0();
    sub_764F00();

    sub_758330();
    (*(v6 + 8))(v8, v5);
    swift_getObjectType();
    sub_7586E0();
    sub_764E00();

    sub_758230();
    v9 = sub_758080();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v2 + 8))(v4, v12);
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

__n128 sub_370988(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_3709B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_3709FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_370A68(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_370A8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_370AD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_370B44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_370B8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_370BF0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v57 = sub_75E800();
  v59 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_75E820();
  v6 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_75E840();
  v8 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_75E850();
  v10 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_76A920();
  v12 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a2;
  sub_75E810();
  v63 = v3;
  v14 = *(v3 + 120);
  v49 = *(v14 + 16);
  if (v49)
  {
    v15 = 0;
    v16 = v14 + 32;
    v60 = (v12 + 8);
    v47 = enum case for _VerticalFlowLayout.Child.Placement.top(_:);
    v46 = (v8 + 104);
    v45 = (v6 + 104);
    v44 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.center(_:);
    v43 = v59 + 8;
    v42 = (v6 + 8);
    v41 = (v8 + 8);
    v40 = (v10 + 8);
    v39 = xmmword_77B6D0;
    v48 = v14;
    v17 = v52;
    while (v15 < *(v14 + 16))
    {
      *v68 = v15;
      sub_371864(v16, &v68[8]);
      if (*&v69[8])
      {
        v27 = *v68;
        *v68 = *&v68[8];
        *&v68[16] = *v69;
        *v69 = *&v69[8];
        *&v69[16] = *&v69[24];
        *&v69[32] = *&v69[40];
        *&v69[48] = v70;
        v28 = 24;
        if (!v27)
        {
          v28 = 64;
        }

        v29 = 40;
        if (v27)
        {
          v29 = 0;
        }

        v30 = *(v63 + v28);
        sub_B170((v63 + v29), v30);
        v31 = v61;
        sub_33964(v30);
        sub_766700();
        v33 = v32;
        v34 = *v60;
        (*v60)(v31, v62);
        v35 = 0;
        if (v27 == *(v14 + 16) - 1)
        {
          v36 = *(v63 + 104);
          sub_B170((v63 + 80), v36);
          v37 = v61;
          sub_33964(v36);
          sub_766700();
          v35 = v38;
          v34(v37, v62);
        }

        ++v15;
        v18 = v53;
        (*v46)(v17, v47, v53);
        v19 = v54;
        v20 = v55;
        (*v45)(v54, v44, v55);
        v67[3] = &type metadata for CGFloat;
        v67[4] = &protocol witness table for CGFloat;
        v67[0] = v33;
        v66[3] = &type metadata for CGFloat;
        v66[4] = &protocol witness table for CGFloat;
        v66[0] = v35;
        sub_BD88(&qword_9417E0, &unk_786F20);
        v21 = v59;
        v22 = swift_allocObject();
        *(v22 + 16) = v39;
        sub_75E7D0();
        v65 = v22;
        sub_3718CC(v23);
        sub_BD88(&qword_9417F0, &unk_780EC0);
        sub_7DCC8();
        v24 = v56;
        v25 = v57;
        sub_76A5A0();
        v26 = v50;
        sub_75E830();
        (*(v21 + 8))(v24, v25);
        (*v42)(v19, v20);
        (*v41)(v17, v18);
        sub_34630(v66);
        sub_BEB8(v67);
        sub_75E860();
        (*v40)(v26, v51);
        sub_37189C(v68);
        v16 += 80;
        v14 = v48;
        if (v49 != v15)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_371388(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = sub_76A920();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_75E870();
  v32 = *(v33 - 8);
  __chkstk_darwin(v33);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_370BF0(a1, v16);
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v31 = v16;
  sub_75E7C0();
  v17 = *(v5 + 120);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v17 + 32;
    do
    {
      sub_371864(v19, v41);
      sub_33B80(&v43, &v37);
      if (v38)
      {
        sub_34698(&v37, v39);
        sub_B170(v41, v42);
        sub_766520();
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v28 = v40;
        sub_B170(v39, v40);
        sub_33964(v28);
        sub_766700();
        (*(v12 + 8))(v14, v11);
        v44.origin.x = v21;
        v44.origin.y = v23;
        v44.size.width = v25;
        v44.size.height = v27;
        CGRectGetWidth(v44);
        v45.origin.x = v21;
        v45.origin.y = v23;
        v45.size.width = v25;
        v45.size.height = v27;
        CGRectGetHeight(v45);
        v46.origin.x = v34;
        v46.origin.y = v35;
        v46.size.width = v36;
        v46.size.height = a5;
        CGRectGetMidX(v46);
        v47.origin.x = v21;
        v47.origin.y = v23;
        v47.size.width = v25;
        v47.size.height = v27;
        CGRectGetMinY(v47);
        sub_B170(v41, v42);
        sub_766530();
        sub_37189C(v41);
        sub_BEB8(v39);
      }

      else
      {
        sub_37189C(v41);
        sub_34630(&v37);
      }

      v19 += 80;
      --v18;
    }

    while (v18);
  }

  return (*(v32 + 8))(v31, v33);
}

void sub_37172C(uint64_t a1, __n128 a2, double a3)
{
  v5 = sub_75E870();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(v3 + 120) + 16))
  {
    sub_370BF0(a1, &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_75E7B0();
    (*(v6 + 8))(v8, v5);
  }
}

unint64_t sub_3718CC(__n128 a1)
{
  result = qword_9417E8;
  if (!qword_9417E8)
  {
    sub_75E800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9417E8);
  }

  return result;
}

double sub_371970()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75E490();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75E4B0();
  sub_371D7C(&qword_94F768, &type metadata accessor for ProductReviewAction, &protocol conformance descriptor for ProductReviewAction);
  sub_75C750();
  if (v30[1])
  {
    sub_75E4A0();
    v8 = (*(v5 + 88))(v7, v4);
    if (v8 == enum case for ProductReviewAction.ReviewAction.tapToRate(_:))
    {
      (*(v5 + 96))(v7, v4);
      swift_getKeyPath();
      sub_75C7B0();

      sub_765630();
      v10 = v9;
      v12 = v11;
      (*(v1 + 8))(v3, v0);
      v13 = sub_527DE4();
      sub_2FCFA8(v13, v10, v12);
      v15 = v14;
      swift_unknownObjectRelease();

LABEL_13:

      return v15;
    }

    if (v8 == enum case for ProductReviewAction.ReviewAction.writeAReview(_:))
    {
      (*(v5 + 96))(v7, v4);
      v30[0] = type metadata accessor for ProductReviewActionsView(0);
      v16 = sub_75E4D0();
      v17 = sub_75E4C0();
      swift_getKeyPath();
      sub_75C7B0();

      sub_765630();
      v19 = v18;
      v21 = v20;
      (*(v1 + 8))(v3, v0);
      sub_527DE4();
      if (v16)
      {

        v22 = sub_764C60();
        v24 = v23;

        if (v17)
        {
LABEL_7:

          v25 = sub_764C60();
          v27 = v26;

LABEL_12:
          sub_480530(v22, v24, v25, v27, v30[0], v19, v21);
          v15 = v28;

          swift_unknownObjectRelease();

          goto LABEL_13;
        }
      }

      else
      {
        v22 = 0;
        v24 = 0;
        if (v17)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v27 = 0;
      goto LABEL_12;
    }

    (*(v5 + 8))(v7, v4);
  }

  return 0.0;
}

uint64_t sub_371D7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_371DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v33 = a6;
  v31 = a4;
  v32 = a5;
  v29 = a3;
  v30 = a2;
  v26 = a1;
  v28 = sub_BD88(&qword_946810, &qword_783360);
  v14 = *(v28 - 8);
  __chkstk_darwin(v28);
  v16 = &v26 - v15;
  swift_getAssociatedTypeWitness();
  v27 = sub_769050();
  v17 = *(v27 - 8);
  __chkstk_darwin(v27);
  v19 = &v26 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v23 = &v26 - v22;
  sub_134D8(v26, v34);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  swift_dynamicCast();
  (*(v14 + 16))(v16, v29, v28);
  sub_769060();
  v24 = (*(a8 + 48))(v23, v30, v19, v31, v32, v33, a7, a8, a9, a10);
  (*(v17 + 8))(v19, v27);
  (*(v21 + 8))(v23, AssociatedTypeWitness);
  return v24;
}

uint64_t sub_372104(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void *a6)
{
  v20[0] = a6;
  v10 = sub_BD88(&unk_944D90, &qword_783300);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - v12;
  v14 = sub_BD88(&qword_944D88, &unk_784820);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v20 - v16;
  sub_134D8(a1, v21);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75B1B0();
  result = swift_dynamicCast();
  if (result)
  {
    v19 = v20[2];
    (*(v11 + 16))(v13, a2, v10);
    sub_768FA0();
    sub_768B30();
    sub_1B2A9C(v19, a4, a3, v20[0]);

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_372310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v71 = a4;
  v67 = a3;
  v9 = sub_BD88(&qword_93FF90, qword_77ECE0);
  __chkstk_darwin(v9 - 8);
  v66 = &v60 - v10;
  v11 = sub_75FA00();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_944D90, &qword_783300);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v60 - v17;
  v19 = sub_BD88(&qword_944D88, &unk_784820);
  v68 = *(v19 - 8);
  v69 = v19;
  __chkstk_darwin(v19);
  v21 = &v60 - v20;
  sub_134D8(a1, v73);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_764C80();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v63 = a6;
  v23 = v72;
  (*(v16 + 16))(v18, a2, v15);
  sub_768FA0();
  v64 = v21;
  sub_768B30();
  v24 = v65;
  v25 = *&v65[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_textLabel];
  sub_764C60();
  sub_75BA70();

  v26 = v24;
  v27 = *&v24[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_separatorView];
  sub_75F9B0();
  sub_38CEC0(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v28 = sub_76A520();
  v29 = *(v12 + 8);
  v30 = v14;
  v31 = v14;
  v62 = v12 + 8;
  v32 = v29;
  v29(v31, v11);
  [v27 setHidden:v28 & 1];
  v70 = v23;
  v33 = sub_764C30();
  v34 = v11;
  v61 = v25;
  if ((v33 & 2) != 0)
  {
    [v25 _setTextColorFollowsTintColor:1];
  }

  else
  {
    [v25 _setTextColorFollowsTintColor:0];
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v35 = sub_769FD0();
    [v25 setTextColor:v35];
  }

  v36 = v63;
  swift_getObjectType();
  v37 = sub_3DB210(v36);
  v38 = type metadata accessor for Accessory(0);
  v39 = v26;
  if (v37)
  {
    v40 = v66;
    swift_storeEnumTagMultiPayload();
    v41 = 0;
    v42 = v32;
  }

  else
  {
    v41 = 1;
    v42 = v32;
    v40 = v66;
  }

  (*(*(v38 - 8) + 56))(v40, v41, 1, v38);
  sub_2512A8(v40, v67);
  sub_10A2C(v40, &qword_93FF90, qword_77ECE0);
  v43 = [v36 traitCollection];
  v44 = [v43 horizontalSizeClass];

  if (v44 == &dword_0 + 1 || (sub_75F9C0(), v45 = sub_76A520(), v42(v30, v34), (v45 & 1) != 0))
  {
    v46 = [v39 contentView];
    [v36 pageMarginInsets];
  }

  else
  {
    v46 = [v39 contentView];
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v51 = v64;
  v52 = v61;
  [v46 setLayoutMargins:{top, left, bottom, right}];

  v53 = sub_764C70();
  if (v53)
  {

    v54 = *&v39[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (v54 && ([v54 isHidden] & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_18:
    v56 = v53 == 0;
    v57 = sub_24F274();
    [v57 setHidden:v56];

    goto LABEL_19;
  }

  v55 = *&v39[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_lazilyCreatedArtworkView];
  if (v55 && ![v55 isHidden])
  {
    goto LABEL_18;
  }

LABEL_19:
  sub_75F9C0();
  v58 = sub_76A520();
  v42(v30, v34);
  v39[OBJC_IVAR____TtC18ASMessagesProvider24ActionCollectionViewCell_isVertical] = (v58 & 1) == 0;
  if (v58)
  {
    v59 = 1;
  }

  else
  {
    v59 = 3;
  }

  [v52 setNumberOfLines:v59];
  [v39 setNeedsLayout];
  [v39 setNeedsLayout];

  return (*(v68 + 8))(v51, v69);
}

uint64_t sub_3729D4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v76 = a6;
  v79 = a4;
  v88 = a3;
  v75 = a2;
  v7 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v7 - 8);
  v86 = &v73 - v8;
  v9 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v9 - 8);
  v87 = &v73 - v10;
  v11 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v11 - 8);
  v85 = &v73 - v12;
  v13 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v13 - 8);
  v84 = &v73 - v14;
  v15 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v15 - 8);
  v83 = &v73 - v16;
  v17 = sub_BD88(&qword_94C3F0, qword_781390);
  __chkstk_darwin(v17 - 8);
  v77 = &v73 - v18;
  v91 = sub_75FA00();
  v78 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_7664A0();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_7674E0();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v74 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_767510();
  v82 = *(v92 - 8);
  __chkstk_darwin(v92);
  v93 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_BD88(&unk_944D90, &qword_783300);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v73 - v30;
  v81 = sub_BD88(&qword_944D88, &unk_784820);
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v33 = &v73 - v32;
  sub_134D8(a1, v95);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_764F90();
  result = swift_dynamicCast();
  if (result)
  {
    v73 = v94[0];
    (*(v29 + 16))(v31, v75, v28);
    sub_768FA0();
    v75 = v33;
    sub_768B30();
    v35 = [v76 traitCollection];
    (*(v25 + 104))(v74, enum case for Separator.Position.bottom(_:), v24);
    *v23 = UIFontTextStyleBody;
    (*(v21 + 104))(v23, enum case for FontSource.textStyle(_:), v20);
    v96 = sub_766CA0();
    v97 = &protocol witness table for StaticDimension;
    sub_B1B4(v95);
    v94[3] = v20;
    v94[4] = &protocol witness table for FontSource;
    v36 = sub_B1B4(v94);
    (*(v21 + 16))(v36, v23, v20);
    v37 = UIFontTextStyleBody;
    sub_766CB0();
    (*(v21 + 8))(v23, v20);
    v38 = v93;
    sub_7674F0();
    v39 = v90;
    sub_75F9B0();
    sub_38CEC0(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
    v40 = v91;
    v41 = sub_76A520();
    v42 = *(v78 + 8);
    v42(v39, v40);
    v76 = v35;
    if (v41)
    {
      v43 = v82;
      v44 = v77;
      (*(v82 + 56))(v77, 1, 1, v92);
      v45 = OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_separator;
      v46 = v89;
      swift_beginAccess();
      sub_FB88C(v44, &v46[v45], &qword_94C3F0, qword_781390);
      swift_endAccess();
      sub_276DA8();
      sub_10A2C(v44, &qword_94C3F0, qword_781390);
      v47 = v90;
      sub_75F9C0();
      v48 = v91;
      LOBYTE(v45) = sub_76A520();
      v42(v47, v48);
      v49 = [v46 contentView];
      v50 = v49;
      if (v45)
      {
        [v49 layoutMargins];
        [v50 setLayoutMargins:?];
      }

      else
      {
        sub_7674A0();
        sub_B170(v95, v96);
        sub_766710();
        [v50 layoutMargins];
        [v50 setLayoutMargins:?];

        sub_BEB8(v95);
      }
    }

    else
    {
      v51 = v38;
      v43 = v82;
      v52 = v77;
      v53 = v92;
      (*(v82 + 16))(v77, v51, v92);
      (*(v43 + 56))(v52, 0, 1, v53);
      v54 = OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_separator;
      v46 = v89;
      swift_beginAccess();
      sub_FB88C(v52, &v46[v54], &qword_94C3F0, qword_781390);
      swift_endAccess();
      sub_276DA8();
      sub_10A2C(v52, &qword_94C3F0, qword_781390);
      v55 = [v46 contentView];
      [v55 layoutMargins];
      [v55 setLayoutMargins:?];

      v56 = v90;
      sub_75F990();
      v57 = v91;
      v58 = sub_76A520();
      v42(v56, v57);
      v59 = v46[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout];
      v46[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout] = v58 & 1;
      if ((v58 & 1) != v59)
      {
        v60 = *&v46[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_separatorView];
        if (v60)
        {
          v61 = 1.0;
          if (v58)
          {
            v61 = 0.0;
          }

          [v60 setAlpha:v61];
        }
      }
    }

    v62 = *&v46[OBJC_IVAR____TtC18ASMessagesProvider29SmallLockupCollectionViewCell_lockupView];
    v63 = sub_BD88(&unk_948740, &unk_784920);
    v64 = v83;
    (*(*(v63 - 8) + 56))(v83, 1, 1, v63);
    v65 = sub_758C70();
    v66 = v84;
    (*(*(v65 - 8) + 56))(v84, 1, 1, v65);
    v67 = sub_75BD30();
    v68 = v85;
    (*(*(v67 - 8) + 56))(v85, 1, 1, v67);
    v69 = sub_BD88(&unk_9457F0, qword_783FD0);
    v70 = v87;
    (*(*(v69 - 8) + 56))(v87, 1, 1, v69);
    v71 = sub_765870();
    v72 = v86;
    (*(*(v71 - 8) + 56))(v86, 1, 1, v71);
    sub_4A18A4(v73, v62, v64, v88, 0, 0, v66, v68, v72, v70);
    sub_10A2C(v72, &unk_9457D0, &unk_785630);
    v62[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v62 setNeedsLayout];
    sub_10A2C(v70, &unk_94AC40, qword_78D7F0);
    sub_10A2C(v68, &unk_9457E0, &qword_785640);
    sub_10A2C(v66, &unk_94A780, &unk_788DC0);
    sub_10A2C(v64, &unk_948730, &qword_788DD0);
    [v46 setNeedsLayout];

    (*(v43 + 8))(v93, v92);
    return (*(v80 + 8))(v75, v81);
  }

  return result;
}

uint64_t sub_373778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), void (*a8)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = a8;
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v12 = sub_BD88(&unk_944D90, &qword_783300);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  v16 = sub_BD88(&qword_944D88, &unk_784820);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v22 - v18;
  sub_134D8(a1, v28);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  a7(0);
  result = swift_dynamicCast();
  if (result)
  {
    v21 = v27;
    (*(v13 + 16))(v15, a2, v12);
    sub_768FA0();
    sub_768B30();
    v26(v21, v19, a3, v23, v24, v25);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_37399C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v26 = a6;
  v10 = sub_BD88(&unk_944D90, &qword_783300);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  v14 = sub_BD88(&qword_944D88, &unk_784820);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - v16;
  sub_134D8(a1, v27);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_759DF0();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v11 + 16))(v13, a2, v10);
    sub_768FA0();
    sub_768B30();
    v19 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_objectGraph);
    *(v6 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_objectGraph) = a3;

    sub_56FA00(v19);

    v20 = v26;
    v21 = [v26 snapshotPageTraitEnvironment];
    *(v6 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_pageTraits) = v21;
    swift_unknownObjectRelease();
    v22 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider30ProductMediaCollectionViewCell_flowLayout);
    [v20 pageMarginInsets];
    [v22 setSectionInset:?];

    sub_56F8F4(v23, v24);

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

double sub_373C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v20 = a3;
  v21 = a4;
  ObjectType = swift_getObjectType();
  v9 = sub_BD88(&unk_944D90, &qword_783300);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_BD88(&qword_944D88, &unk_784820);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_134D8(a1, v25);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75A3E0();
  if (swift_dynamicCast())
  {
    v26 = v24;
    (*(v10 + 16))(v12, a2, v9);
    sub_768FA0();
    sub_768B30();
    v18 = sub_38CEC0(&qword_944E58, type metadata accessor for PrivacyFooterCollectionViewCell, &unk_7AE8E0);
    (*(v18 + 56))(&v26, v16, v20, v21, v22, v23, ObjectType, v18);
    (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_373E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v51 = a2;
  v52 = a6;
  v54 = a3;
  ObjectType = swift_getObjectType();
  v9 = sub_BD88(&qword_944EA0, &unk_78A060);
  __chkstk_darwin(v9 - 8);
  v11 = &v49 - v10;
  v12 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v49 - v16);
  v18 = sub_BD88(&unk_95CF90, &unk_784980);
  v57 = *(v18 - 8);
  v58 = v18;
  __chkstk_darwin(v18);
  v53 = &v49 - v19;
  v20 = sub_BD88(&unk_944D90, &qword_783300);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v49 - v22;
  v24 = sub_BD88(&qword_944D88, &unk_784820);
  v55 = *(v24 - 8);
  v56 = v24;
  __chkstk_darwin(v24);
  v26 = &v49 - v25;
  sub_134D8(a1, v62);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75A600();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v21 + 16))(v23, v51, v20);
    sub_768FA0();
    sub_768B30();
    v28 = [v52 snapshotPageTraitEnvironment];
    *&v7[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_pageTraits] = v28;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    [v7 setNeedsLayout];
    swift_unknownObjectRelease();
    sub_75A5F0();
    v29 = sub_75B260();

    v50 = v26;
    if (v29)
    {
      if (qword_93CA70 != -1)
      {
        swift_once();
      }

      v30 = sub_BE38(v12, qword_99CA78);
      sub_FCD60(v30, v17, v31);
      v32 = *v17;
      v33 = v29;

      *v17 = v29;
      sub_FCD60(v17, v14, v34);
      sub_BD88(&qword_93FBE0, &unk_77EA70);
      v35 = v53;
      sub_7592F0();

      sub_FCDC4(v17, v36);
    }

    else
    {
      if (qword_93CA70 != -1)
      {
        swift_once();
      }

      v37 = sub_BE38(v12, qword_99CA78);
      sub_FCD60(v37, v17, v38);
      sub_BD88(&qword_93FBE0, &unk_77EA70);
      v35 = v53;
      sub_7592F0();
    }

    v39 = v58;
    v40 = sub_75A5F0();
    v41 = v57;
    (*(v57 + 16))(v11, v35, v39);
    v42.n128_f64[0] = (*(v41 + 56))(v11, 0, 1, v39);
    sub_5F8FA0(v42, v40, v11, v54);

    sub_10A2C(v11, &qword_944EA0, &unk_78A060);
    v43 = sub_75A5E0();
    if (!v43)
    {
      v43 = [objc_opt_self() clearColor];
    }

    v44 = v43;
    v45 = ObjectType;
    v61.receiver = v7;
    v61.super_class = ObjectType;
    objc_msgSendSuper2(&v61, "setBackgroundColor:", v43);
    v46 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider31SmallBreakoutCollectionViewCell_iconView];
    v60.receiver = v7;
    v60.super_class = v45;
    v47 = v46;
    v48 = objc_msgSendSuper2(&v60, "backgroundColor");
    sub_759070();

    [v7 setNeedsLayout];

    (*(v41 + 8))(v35, v39);
    return (*(v55 + 8))(v50, v56);
  }

  return result;
}

uint64_t sub_3744A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v54 = a6;
  v65 = a3;
  v53 = a2;
  v7 = sub_BD88(&unk_944DF0, &unk_783130);
  __chkstk_darwin(v7 - 8);
  v62 = &v51 - v8;
  v60 = sub_7623A0();
  v56 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_BD88(&unk_9457F0, qword_783FD0);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v51 - v10;
  v11 = sub_BD88(&unk_944E00, &unk_784910);
  __chkstk_darwin(v11 - 8);
  v13 = &v51 - v12;
  v14 = sub_763750();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v18 - 8);
  v20 = &v51 - v19;
  v21 = sub_BD88(&unk_944D90, &qword_783300);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v51 - v23;
  v25 = sub_BD88(&qword_944D88, &unk_784820);
  v63 = *(v25 - 8);
  v64 = v25;
  __chkstk_darwin(v25);
  v27 = &v51 - v26;
  sub_134D8(a1, v67);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75AAB0();
  result = swift_dynamicCast();
  if (result)
  {
    v51 = v13;
    v29 = v66;
    (*(v22 + 16))(v24, v53, v21);
    sub_768FA0();
    sub_768B30();
    v30 = v55;
    v31 = [v55 contentView];
    [v54 pageMarginInsets];
    [v31 setLayoutMargins:?];

    v54 = v29;
    v32 = sub_75AA50();
    v33 = v30;
    v52 = v27;
    if (v32)
    {
      if (v32 >> 62)
      {
        v37 = v32;
        v38 = sub_76A860();
        v32 = v37;
        if (v38)
        {
          goto LABEL_5;
        }
      }

      else if (*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_5:
        v34 = v32;
        sub_75A110();
        sub_768900();
        sub_768ED0();
        v35 = v67[0];
        v36 = *&v33[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_iconGridView];
        [v36 setHidden:0];
        *&v36[OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_impressionableArtworks] = v34;

        *&v36[OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_artworkLoader] = v35;

        sub_533B34(v34, v35);

LABEL_9:
        v55 = *&v33[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_offerButton];
        v39 = sub_75AA90();
        v40 = sub_75AA70();
        v41 = sub_75AA60();
        (*(v15 + 104))(v17, enum case for OfferButtonPresenterViewAlignment.center(_:), v14);
        (*(v15 + 56))(v51, 1, 1, v14);
        sub_38CEC0(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
        sub_760940();
        v42 = sub_BD88(&unk_948740, &unk_784920);
        (*(*(v42 - 8) + 56))(v20, 0, 1, v42);
        v43 = v56;
        v44 = v60;
        (*(v56 + 104))(v57, enum case for OfferButtonSubtitlePosition.above(_:), v60);
        (*(v43 + 56))(v62, 1, 1, v44);
        sub_38CEC0(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
        v45 = v58;
        sub_760940();
        sub_1DFEBC(v39, v40, v41, v20, v45, v65, 0, 0);

        (*(v59 + 8))(v45, v61);
        sub_10A2C(v20, &unk_948730, &qword_788DD0);
        sub_761230();
        sub_768900();
        sub_768ED0();
        v46 = v67[0];
        sub_75AA80();
        sub_75AAA0();
        v47 = sub_761190();
        swift_allocObject();
        v48 = v46;
        v49 = sub_761170();
        sub_38CEC0(&unk_9513A0, type metadata accessor for ArcadeShowcaseCollectionViewCell, &unk_7A8090);
        swift_unknownObjectRetain();
        sub_761180();
        v67[3] = v47;
        v67[0] = v49;
        v50 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_offerLabelPresenter;
        swift_beginAccess();

        sub_B33C8(v67, &v33[v50], &unk_93FBD0, &qword_77DFA0);
        swift_endAccess();
        [v33 setNeedsLayout];

        return (*(v63 + 8))(v52, v64);
      }
    }

    [*&v30[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_iconGridView] setHidden:1];
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_374E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = sub_BD88(&unk_944D90, &qword_783300);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v39 - v14;
  v16 = sub_BD88(&qword_944D88, &unk_784820);
  v40 = *(v16 - 8);
  v41 = v16;
  __chkstk_darwin(v16);
  v18 = v39 - v17;
  sub_134D8(a1, v43);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_757BA0();
  result = swift_dynamicCast();
  if (result)
  {
    v20 = v42;
    (*(v13 + 16))(v15, a2, v12);
    sub_768FA0();
    sub_768B30();
    v21 = v39[1];
    sub_320474(v20, a3, a4, a5, a6);
    sub_757B90();
    v22 = sub_764EF0();
    v24 = v23;

    if (v24)
    {
      v44._countAndFlagsBits = 0x465F4E4F5F444441;
      v44._object = 0xEE005050415F524FLL;
      v45._object = 0x80000000007CF0F0;
      v45._countAndFlagsBits = 0xD000000000000031;
      sub_75B750(v44, v45);
      sub_BD88(&unk_944E30, &unk_784930);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_77B6D0;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_FA4CC();
      *(v25 + 32) = v22;
      *(v25 + 40) = v24;

      sub_769270();

      v26 = objc_allocWithZone(NSMutableAttributedString);
      v27 = sub_769210();
      v28 = [v26 initWithString:v27];

      v29 = objc_allocWithZone(NSString);
      v30 = sub_769210();

      v31 = [v29 initWithString:v30];

      v32 = sub_769210();

      v33 = [v31 rangeOfString:v32 options:4];
      v35 = v34;

      v36 = [v21 tintColor];
      v43[0] = v36;
      sub_BD88(&unk_944E40, qword_7A1360);
      v37 = sub_76A470();

      [v28 addAttribute:NSForegroundColorAttributeName value:v37 range:{v33, v35}];
      swift_unknownObjectRelease();
      v38 = *(*&v21[OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_subtitleLabel);
      if (!v38)
      {

        return (*(v40 + 8))(v18, v41);
      }

      [v38 setAttributedText:v28];
    }

    return (*(v40 + 8))(v18, v41);
  }

  return result;
}

uint64_t sub_3752F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = a8;
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v12 = sub_BD88(&unk_944D90, &qword_783300);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  v16 = sub_BD88(&qword_944D88, &unk_784820);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v22 - v18;
  sub_134D8(a1, v28);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  a7(0);
  result = swift_dynamicCast();
  if (result)
  {
    v21 = v27;
    (*(v13 + 16))(v15, a2, v12);
    sub_768FA0();
    sub_768B30();
    v26(v21, a3, v23, v24, v25);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_375514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a6;
  v35 = a4;
  v36 = a5;
  v33 = a2;
  v34 = a3;
  v38 = a1;
  v10 = sub_BD88(&unk_944D90, &qword_783300);
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v28[1] = swift_getAssociatedTypeWitness();
  v13 = sub_768B20();
  v29 = *(v13 - 8);
  v30 = v13;
  __chkstk_darwin(v13);
  v15 = v28 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_76A480();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v28 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v22);
  v24 = v28 - v23;
  sub_134D8(v38, v39);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  v25 = swift_dynamicCast();
  v26 = *(v21 + 56);
  if (v25)
  {
    v26(v20, 0, 1, AssociatedTypeWitness);
    (*(v21 + 32))(v24, v20, AssociatedTypeWitness);
    (*(v31 + 16))(v12, v33, v32);
    sub_768B30();
    (*(a8 + 56))(v24, v15, v34, v35, v36, v37, a7, a8);
    (*(v29 + 8))(v15, v30);
    return (*(v21 + 8))(v24, AssociatedTypeWitness);
  }

  else
  {
    v26(v20, 1, 1, AssociatedTypeWitness);
    return (*(v18 + 8))(v20, v17);
  }
}

uint64_t sub_3758CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a3;
  v23 = a2;
  v20 = a1;
  v22 = sub_BD88(&unk_944D90, &qword_783300);
  v7 = *(v22 - 8);
  __chkstk_darwin(v22);
  v9 = &v19 - v8;
  swift_getAssociatedTypeWitness();
  v21 = sub_768B20();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v19 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = &v19 - v15;
  sub_134D8(v20, v25);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  swift_dynamicCast();
  (*(v7 + 16))(v9, v23, v22);
  sub_768B30();
  v17 = (*(a5 + 64))(v16, v12, v24, a4, a5);
  (*(v10 + 8))(v12, v21);
  (*(v14 + 8))(v16, AssociatedTypeWitness);
  return v17;
}

double sub_375B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_375C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_375CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_375D58(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = sub_BD88(&qword_946810, &qword_783360);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25[-v15];
  v17 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v25[-v19];
  sub_134D8(a1, v25);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_7587A0();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a5, v13);
  sub_768FA0();
  sub_769060();
  v21 = v26;
  ObjectType = swift_getObjectType();
  v23 = sub_271EC(v21, a8, ObjectType, a2, a3);
  (*(v18 + 8))(v20, v17);

  return v23;
}

double sub_375FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_37607C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_376118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_376194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_376248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_3762E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_376360(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_BD88(&qword_946810, &qword_783360);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v14 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v22 - v17;
  (*(v11 + 16))(v13, a4, v10, v16);
  sub_768FA0();
  sub_769060();
  v19 = [a7 snapshotPageTraitEnvironment];
  swift_getObjectType();
  v20 = sub_5DF100(v19, a1);
  swift_unknownObjectRelease();
  (*(v15 + 8))(v18, v14);
  return v20;
}

double sub_37656C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = sub_BD88(&qword_946810, &qword_783360);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22[-v15];
  v17 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v22[-v19];
  sub_134D8(a1, v22);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_758770();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a5, v13);
  sub_768FA0();
  sub_769060();
  sub_4309AC(v23, a8, a2, a3);
  (*(v18 + 8))(v20, v17);

  return a2;
}

double sub_3767E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_376898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_376934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_3769B0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_BD88(&qword_946810, &qword_783360);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v21 - v16;
  (*(v10 + 16))(v12, a5, v9, v15);
  sub_768FA0();
  sub_769060();
  sub_765E60();
  sub_765E30();
  v19 = v18;
  (*(v14 + 8))(v17, v13);
  return v19;
}

double sub_376B7C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_BD88(&qword_946810, &qword_783360);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23[-v15];
  v17 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v23[-v19];
  sub_134D8(a1, v23);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75B1B0();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a5, v13);
  sub_768FA0();
  sub_769060();
  v21 = sub_1B4888(a2, a3, v24, a8);
  (*(v18 + 8))(v20, v17);

  return v21;
}

double sub_376DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_376E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_376F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_376F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8)
{
  v13 = sub_BD88(&qword_946810, &qword_783360);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23[-v15];
  v17 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v23[-v19];
  sub_134D8(a1, v23);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_765430();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a3, v13);
  sub_768FA0();
  sub_769060();
  v21 = sub_50025C(v24, a6, 1, a7, a8);
  (*(v18 + 8))(v20, v17);

  return v21;
}

double sub_377284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_377338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_3773D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_377450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_377504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_3775A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_37761C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_3776D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_37776C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_377820(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_944D90, &qword_783300);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-v5];
  v7 = sub_BD88(&qword_950670, &qword_798050);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13[-v10];
  (*(v4 + 16))(v6, a2, v3, v9);
  sub_768B30();
  sub_280A0();
  sub_768AF0();
  (*(v8 + 8))(v11, v7);
  return 3;
}

double sub_3779DC(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_BD88(&qword_946810, &qword_783360);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v17 - v13;
  (*(v7 + 16))(v9, a4, v6, v12);
  sub_768FA0();
  sub_769060();
  if (qword_93CD60 != -1)
  {
    swift_once();
  }

  v15 = sub_766690();
  sub_BE38(v15, qword_99D338);
  sub_766660();
  (*(v11 + 8))(v14, v10);
  return a1;
}

double sub_377BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_377C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_377D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

void sub_377E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&qword_946810, &qword_783360);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v9 = __chkstk_darwin(v8 - 8);
  (*(v5 + 16))(v7, a3, v4, v9);
  sub_768FA0();
  sub_769060();
  sub_76A840();
  __break(1u);
}

double sub_377FF4(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_BD88(&qword_946810, &qword_783360);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v13 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v23 - v16;
  (*(v10 + 16))(v12, a5, v9, v15);
  sub_768FA0();
  sub_769060();
  if (qword_93CD48 != -1)
  {
    swift_once();
  }

  v18 = sub_75D510();
  sub_BE38(v18, qword_99D278);
  sub_75D530();
  sub_38CEC0(&qword_94F368, &type metadata accessor for FlowcaseItemLayout, &protocol conformance descriptor for FlowcaseItemLayout);
  sub_766ED0();
  if (qword_93CD50 != -1)
  {
    swift_once();
  }

  v19 = sub_767510();
  sub_BE38(v19, qword_99D290);
  sub_769DD0();
  v21 = v20;
  (*(v14 + 8))(v17, v13);
  return v21;
}

double sub_378320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_3783D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_378470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_3784EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_3785A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_37863C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_3786D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v31 = a6;
  v29 = a4;
  v30 = a5;
  v27 = a3;
  v28 = a2;
  v11 = sub_BD88(&qword_946810, &qword_783360);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = sub_BD88(&qword_951438, qword_799648);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - v17;
  v19 = sub_758A00();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_134D8(a1, v32);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  swift_dynamicCast();
  (*(v12 + 16))(v14, v27, v11);
  sub_769060();
  v23 = sub_38CEC0(&unk_951440, type metadata accessor for AnnotationCollectionViewCell, &unk_79DBF8);
  v24 = (*(v23 + 48))(v22, v28, v18, v29, v30, v31, a7, a8);
  (*(v16 + 8))(v18, v15);
  (*(v20 + 8))(v22, v19);
  return v24;
}

double sub_378A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_378B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_378BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_378C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = sub_BD88(&qword_946810, &qword_783360);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v21 - v16;
  (*(v10 + 16))(v12, a3, v9, v15);
  sub_768FA0();
  sub_769060();
  sub_5367D4(a2, a6);
  v19 = v18;
  (*(v14 + 8))(v17, v13);
  return v19;
}

double sub_378E2C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_BD88(&qword_946810, &qword_783360);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v20 - v17;
  (*(v11 + 16))(v13, a4, v10, v16);
  sub_768FA0();
  sub_769060();
  sub_5A6D14(a7);
  (*(v15 + 8))(v18, v14);
  return a1;
}

double sub_378FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_3790A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_37913C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_3791B8(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = sub_BD88(&qword_946810, &qword_783360);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v26[-v16];
  v18 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v26[-v20];
  sub_134D8(a1, v26);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_7587A0();
  swift_dynamicCast();
  (*(v15 + 16))(v17, a5, v14);
  sub_768FA0();
  sub_769060();
  v22 = v27;
  ObjectType = swift_getObjectType();
  v24 = sub_59D5F0(v22, a8, v8, ObjectType, a2, a3);
  (*(v19 + 8))(v21, v18);

  return v24;
}

double sub_379490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_379544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_3795E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_379674(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = sub_BD88(&qword_946810, &qword_783360);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23[-v15];
  v17 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v23[-v19];
  sub_134D8(a1, v23);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_759DF0();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a5, v13);
  sub_768FA0();
  sub_769060();
  v21 = sub_571A34(v24, 0, 0, a8, 0.0, 0.0, a2, a3, a2);
  (*(v18 + 8))(v20, v17);

  return v21;
}

double sub_3798A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_37995C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_3799F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_379AA8(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[0] = a11;
  v17 = sub_BD88(&qword_946810, &qword_783360);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v29 - v19;
  v21 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v29 - v23;
  sub_134D8(a1, v30);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_758700();
  swift_dynamicCast();
  (*(v18 + 16))(v20, a5, v17);
  sub_768FA0();
  sub_769060();
  v25 = v31;
  ObjectType = swift_getObjectType();
  v27 = (v29[0])(v25, a8, a6, v29[1], ObjectType, a2, a3);
  (*(v22 + 8))(v24, v21);

  return v27;
}

double sub_379D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_379DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_379E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_379EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_379F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_37A034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

double sub_37A0B0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = sub_BD88(&qword_946810, &qword_783360);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - v14;
  v16 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v25 - v19;
  (*(v13 + 16))(v15, a5, v12, v18);
  sub_768FA0();
  sub_769060();
  if (qword_93E0E0 != -1)
  {
    swift_once();
  }

  ObjectType = swift_getObjectType();
  v22 = type metadata accessor for VideoCardView(0);
  v23 = sub_6B2178(a1, a2, &qword_9A07C0, a8, v22, ObjectType);
  (*(v17 + 8))(v20, v16);
  return v23;
}

double sub_37A2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_371DD8(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_37A38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_375514(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_37A428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_3758CC(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_37A4B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_944D90, &qword_783300);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - v5;
  v7 = sub_BD88(&qword_944D88, &unk_784820);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - v10;
  (*(v4 + 16))(v6, a2, v3, v9);
  sub_768FA0();
  sub_768B30();
  (*(v8 + 8))(v11, v7);
  return 0;
}

uint64_t sub_37A660(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_944D90, &qword_783300);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - v5;
  v7 = sub_BD88(&qword_944D88, &unk_784820);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - v10;
  (*(v4 + 16))(v6, a2, v3, v9);
  sub_768FA0();
  sub_768B30();
  (*(v8 + 8))(v11, v7);
  return 3;
}

double sub_37A7EC(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v9 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v9 - 8);
  v49 = v48 - v10;
  v11 = sub_766690();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&qword_946810, &qword_783360);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v48 - v17;
  v19 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v51 = *(v19 - 8);
  v52 = v19;
  __chkstk_darwin(v19);
  v21 = v48 - v20;
  sub_134D8(a1, aBlock);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_759490();
  swift_dynamicCast();
  (*(v16 + 16))(v18, a2, v15);
  sub_768FA0();
  v50 = v21;
  sub_769060();
  if ((sub_759430() & 1) == 0)
  {
    [a6 pageMarginInsets];
  }

  if (sub_759480())
  {
    sub_765260();
    sub_7666A0();
    sub_766660();
    (*(v12 + 8))(v14, v11);
    sub_759430();
  }

  v22 = sub_759450();
  v23 = [v22 length];

  if (v23 >= 1)
  {
    sub_759460();
    if (v24)
    {
      if (qword_93DA18 != -1)
      {
        swift_once();
      }

      v25 = sub_7666D0();
      sub_BE38(v25, qword_99F640);
      v26 = sub_7653B0();
      v54 = v26;
      v55 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v27 = sub_B1B4(aBlock);
      (*(*(v26 - 8) + 104))(v27, enum case for Feature.measurement_with_labelplaceholder(_:), v26);
      sub_765C30();
      sub_BEB8(aBlock);
      sub_762CB0();
    }

    v28 = sub_759450();
    v48[1] = a6;
    v29 = [a6 traitCollection];
    v30 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v28];
    v31 = [v28 length];
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = v29;
    *(v32 + 32) = v30;
    *(v32 + 40) = 1;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_119AC;
    *(v33 + 24) = v32;
    v55 = sub_2636C;
    v56 = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10C1C;
    v54 = &unk_88ED60;
    v34 = _Block_copy(aBlock);
    v35 = v29;
    v36 = v30;

    [v28 enumerateAttributesInRange:0 options:v31 usingBlock:{0x100000, v34}];

    _Block_release(v34);
    LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

    if (v35)
    {
      __break(1u);
    }

    else
    {
      v37 = qword_93DA10;
      v28 = v36;
      if (v37 == -1)
      {
LABEL_12:
        v38 = sub_7666D0();
        v39 = sub_BE38(v38, qword_99F628);
        v40 = *(v38 - 8);
        v41 = v49;
        (*(v40 + 16))(v49, v39, v38);
        (*(v40 + 56))(v41, 0, 1, v38);
        v42 = sub_7653B0();
        v54 = v42;
        v55 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v43 = sub_B1B4(aBlock);
        (*(*(v42 - 8) + 104))(v43, enum case for Feature.measurement_with_labelplaceholder(_:), v42);
        sub_765C30();
        sub_BEB8(aBlock);
        sub_762CA0();

        sub_10A2C(v41, &unk_93E530, &unk_77C5F0);
        if (qword_93E250 != -1)
        {
          swift_once();
        }

        v44 = sub_766CA0();
        sub_BE38(v44, qword_9A09B8);
        sub_766720();
        if (qword_93E258 != -1)
        {
          swift_once();
        }

        sub_BE38(v44, qword_9A09D0);
        sub_7666F0();

        goto LABEL_17;
      }
    }

    swift_once();
    goto LABEL_12;
  }

LABEL_17:
  sub_769D90();
  v46 = v45;
  (*(v51 + 8))(v50, v52);

  return v46;
}

double sub_37B170(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_37B188(uint64_t a1, uint64_t a2, __n128 a3, double a4, uint64_t a5, void *a6)
{
  v42 = sub_75ABC0();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_75ABE0();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v44 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_762D10();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&qword_946810, &qword_783360);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v38 - v17;
  v41 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v20 = &v38 - v19;
  sub_134D8(a1, v53);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_7654E0();
  swift_dynamicCast();
  (*(v16 + 16))(v18, a2, v15);
  sub_768FA0();
  v38 = v20;
  sub_769060();
  sub_7654D0();
  v21 = sub_7654C0();
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93D600 != -1)
  {
    swift_once();
  }

  v22 = sub_7666D0();
  sub_BE38(v22, qword_99E9F8);
  v47 = a6;
  v23 = [a6 traitCollection];
  v24 = sub_769E10();

  v25 = sub_7653B0();
  v53[3] = v25;
  v53[4] = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v26 = sub_B1B4(v53);
  (*(*(v25 - 8) + 104))(v26, enum case for Feature.measurement_with_labelplaceholder(_:), v25);
  v27 = v24;
  sub_765C30();
  sub_BEB8(v53);
  sub_762D00();
  sub_762CE0();
  (*(v12 + 8))(v14, v11);
  if ((v21 & 2) != 0)
  {
    if (qword_93C430 != -1)
    {
      swift_once();
    }

    [qword_99B290 size];
    v28 = sub_7670D0();
    swift_allocObject();
    v29 = sub_7670B0();
    *(&v51 + 1) = v28;
    v52 = &protocol witness table for LayoutViewPlaceholder;
    *&v50 = v29;
  }

  else
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
  }

  v30 = v47;
  if (qword_93C418 != -1)
  {
    swift_once();
  }

  v31 = v42;
  v32 = sub_BE38(v42, qword_99B278);
  (*(v40 + 16))(v43, v32, v31);
  sub_134D8(v53, v49);
  sub_6D310(&v50, v48);
  v33 = v44;
  sub_75ABD0();
  [v30 pageMarginInsets];
  sub_769DA0();
  sub_38CEC0(&qword_951400, &type metadata accessor for FootnoteLayout, &protocol conformance descriptor for FootnoteLayout);
  v34 = v46;
  sub_7665A0();
  sub_769DC0();
  v36 = v35;

  (*(v45 + 8))(v33, v34);
  sub_BEB8(v53);
  (*(v39 + 8))(v38, v41);
  sub_10A2C(&v50, &unk_943B10, &qword_77E080);

  return v36;
}

double sub_37B928(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v50 = sub_760530();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v51 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_760550();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_762D10();
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&qword_946810, &qword_783360);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v43 - v15;
  v48 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v18 = v43 - v17;
  sub_134D8(a1, v61);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75CB00();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a2, v13);
  sub_768FA0();
  v46 = v18;
  sub_769060();
  v19 = v61[5];
  v20 = sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93D8B0 != -1)
  {
    swift_once();
  }

  v44 = sub_7666D0();
  sub_BE38(v44, qword_99F208);
  v21 = [a6 traitCollection];
  v22 = sub_769E10();

  sub_75CAF0();
  v23 = sub_7653B0();
  v61[3] = v23;
  v24 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v61[4] = v24;
  v25 = sub_B1B4(v61);
  v26 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v27 = *(v23 - 8);
  v43[1] = v19;
  v28 = *(v27 + 104);
  v55 = a6;
  v28(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v23);
  v29 = v22;
  v43[0] = v20;
  v30 = v29;
  sub_765C30();
  sub_BEB8(v61);
  v45 = v30;
  sub_762D00();
  sub_762CE0();
  v31 = *(v57 + 8);
  v57 += 8;
  v31(v12, v56);
  if (qword_93D8B8 != -1)
  {
    swift_once();
  }

  sub_BE38(v44, qword_99F220);
  v32 = [v55 traitCollection];
  v33 = sub_769E10();

  sub_75CAE0();
  v60[3] = v23;
  v60[4] = v24;
  v34 = sub_B1B4(v60);
  v28(v34, v26, v23);
  v35 = v33;
  sub_765C30();
  sub_BEB8(v60);
  sub_762D00();
  sub_762CE0();
  v31(v12, v56);
  if (qword_93CA88 != -1)
  {
    swift_once();
  }

  v36 = v50;
  v37 = sub_BE38(v50, qword_99CAC0);
  (*(v49 + 16))(v51, v37, v36);
  sub_134D8(v61, v59);
  sub_134D8(v60, v58);
  v38 = v52;
  sub_760540();
  sub_38CEC0(&unk_951380, &type metadata accessor for PrivacyDefinitionLayout, &protocol conformance descriptor for PrivacyDefinitionLayout);
  v39 = v54;
  sub_7665A0();
  v41 = v40;

  (*(v53 + 8))(v38, v39);
  sub_BEB8(v60);
  sub_BEB8(v61);
  (*(v47 + 8))(v46, v48);

  return v41;
}

double sub_37C140(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v90 = a6;
  v87 = sub_762D10();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v81 = &v73 - v10;
  __chkstk_darwin(v11);
  v80 = &v73 - v12;
  v78 = sub_75E890();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v79 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_7609C0();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7609A0();
  v96 = *(v15 - 8);
  __chkstk_darwin(v15);
  v91 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v95 = &v73 - v18;
  v19 = sub_765C90();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v76 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v73 - v23;
  v25 = sub_BD88(&qword_946810, &qword_783360);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v73 - v27;
  v94 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v30 = &v73 - v29;
  sub_134D8(a1, v103);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75D1C0();
  swift_dynamicCast();
  (*(v26 + 16))(v28, a2, v25);
  sub_768FA0();
  v92 = v30;
  sub_769060();
  v31 = v103[5];
  v32 = sub_75D180();
  if (*(v32 + 16))
  {
    v33 = v20;
    v34 = v90;
    v75 = v33;
    v35 = *(v33 + 16);
    v36 = v32 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v88 = v24;
    v89 = v19;
    v35(v24, v36, v19);

    if (qword_93C800 != -1)
    {
      swift_once();
    }

    v37 = sub_BE38(v15, qword_99BE50);
    v38 = *(v96 + 16);
    v39 = v95;
    v38(v95, v37, v15);
    v40 = [v34 traitCollection];
    v41 = sub_769A00();

    if (v41)
    {
      v73 = v15;
      v38(v91, v39, v15);
      v35(v76, v88, v89);
      v42 = v31;
      sub_75D1A0();
      v43 = [v34 traitCollection];
      v44 = sub_7699D0();

      v45 = &enum case for AchievementGroupView.Size.phone(_:);
      if ((v44 & 1) == 0)
      {
        v45 = &enum case for AchievementGroupView.Size.pad(_:);
      }

      (*(v77 + 104))(v79, *v45, v78);
      v46 = sub_75E8A0();
      v47 = objc_allocWithZone(v46);
      v48 = sub_75E880();
      v103[3] = v46;
      v103[4] = &protocol witness table for UIView;
      v103[0] = v48;
      v49 = sub_75D1B0();
      v104._object = 0x80000000007CF0B0;
      v104._countAndFlagsBits = 0xD000000000000032;
      v105._countAndFlagsBits = 0;
      v105._object = 0xE000000000000000;
      sub_761130(v104, v49, v105);
      v50 = sub_BE70(0, &qword_93F900, UIFont_ptr);
      if (qword_93D830 != -1)
      {
        swift_once();
      }

      v79 = sub_7666D0();
      sub_BE38(v79, qword_99F088);
      v78 = v50;
      sub_769E00();
      v51 = sub_7653B0();
      v102[3] = v51;
      v77 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v102[4] = v77;
      v52 = sub_B1B4(v102);
      v53 = *(*(v51 - 8) + 104);
      LODWORD(v76) = enum case for Feature.measurement_with_labelplaceholder(_:);
      v74 = v53;
      v53(v52);
      sub_765C30();
      sub_BEB8(v102);
      v54 = v80;
      sub_762D00();
      sub_762CE0();
      v55 = *(v86 + 8);
      v56 = v87;
      v55(v54, v87);
      v57 = [v34 traitCollection];
      sub_13F070();
      v86 = v42;

      if (qword_93D838 != -1)
      {
        swift_once();
      }

      sub_BE38(v79, qword_99F0A0);
      sub_769E00();
      v101[3] = v51;
      v101[4] = v77;
      v58 = sub_B1B4(v101);
      v74(v58, v76, v51);
      sub_765C30();
      sub_BEB8(v101);
      v59 = v81;
      sub_762D00();
      sub_762CE0();
      v55(v59, v56);
      sub_75D190();
      if (qword_93D840 != -1)
      {
        swift_once();
      }

      sub_BE38(v79, qword_99F0B8);
      sub_769E00();
      v100[3] = v51;
      v100[4] = v77;
      v60 = sub_B1B4(v100);
      v74(v60, v76, v51);
      sub_765C30();
      sub_BEB8(v100);
      v61 = v83;
      sub_762D00();
      sub_762CE0();
      v55(v61, v56);
      v99 = 0;
      v98 = 0u;
      v97 = 0u;
      v62 = v82;
      sub_7609B0();
      sub_38CEC0(&unk_9463E0, &type metadata accessor for AchievementSummaryLayout, &protocol conformance descriptor for AchievementSummaryLayout);
      v63 = v85;
      sub_7665A0();
      v65 = v64;
      (*(v84 + 8))(v62, v63);
      (*(v96 + 8))(v95, v73);
      (*(v75 + 8))(v88, v89);
    }

    else
    {
      [v34 pageContainerSize];
      if (v67 >= v66)
      {
        v69 = v89;
        v68 = v95;
      }

      else
      {
        JUScreenClassGetLandscapeWidth();
        v68 = v95;
        v69 = v89;
      }

      v70 = v88;
      sub_760970();
      v65 = v71;
      (*(v96 + 8))(v68, v15);
      (*(v75 + 8))(v70, v69);
    }
  }

  else
  {

    v65 = 0.0;
  }

  (*(v93 + 8))(v92, v94);

  return v65;
}

double sub_37CEC0(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v11 = sub_BD88(&qword_946810, &qword_783360);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27[-v13];
  v15 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27[-v17];
  sub_134D8(a1, v27);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75CC50();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_768FA0();
  sub_769060();
  v19 = sub_75CC20();
  v21 = v20;
  v22 = sub_75CC40();
  v23 = sub_75CC30();
  swift_getObjectType();
  v24.n128_f64[0] = a3;
  v25 = sub_35BEE0(v19, v21, v22, v23, a6, v24, a4);

  (*(v16 + 8))(v18, v15);

  return v25;
}

double sub_37D134(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void *a6)
{
  v10 = sub_BD88(&qword_946810, &qword_783360);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - v12;
  v14 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v23 - v16;
  sub_134D8(a1, v24);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75A270();
  swift_dynamicCast();
  (*(v11 + 16))(v13, a2, v10);
  sub_768FA0();
  sub_769060();
  v18 = v24[5];
  sub_BD88(&unk_943590, &unk_784940);
  sub_768900();
  sub_768ED0();
  v23[1] = v18;
  sub_758C30();

  v19 = v24[0];
  if ((~v24[0] & 0xF000000000000007) != 0)
  {
    v20 = v24[1];
  }

  else
  {

    v20 = 0;
    v19 = v18;
  }

  v21 = sub_440B18(v19, v20, a6, a4);
  sub_B3204(v19, v20);
  (*(v15 + 8))(v17, v14);

  return v21;
}

double sub_37D3DC(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_76A920();
  v84 = *(v9 - 8);
  v85 = v9;
  __chkstk_darwin(v9);
  v82 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_766690();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v93 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v12 - 8);
  v89 = &v81 - v13;
  v14 = sub_BD88(&qword_946810, &qword_783360);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v81 - v16;
  v18 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v91 = *(v18 - 8);
  v92 = v18;
  __chkstk_darwin(v18);
  v20 = &v81 - v19;
  sub_134D8(a1, &v106);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_7648E0();
  swift_dynamicCast();
  (*(v15 + 16))(v17, a2, v14);
  sub_768FA0();
  v90 = v20;
  sub_769060();
  v21 = v105;
  [a5 pageMarginInsets];
  v110._object = 0x80000000007CC420;
  v110._countAndFlagsBits = 0xD000000000000010;
  v111._countAndFlagsBits = 0;
  v111._object = 0xE000000000000000;
  v22 = sub_75B750(v110, v111);
  v24 = sub_3A5CC8(v22, v23);
  if (v24 > 2)
  {
    if (v24 - 3 < 2)
    {
      if (qword_93CE60 != -1)
      {
        swift_once();
      }

      v25 = &xmmword_99D650;
      goto LABEL_21;
    }

    if (v24 == 5)
    {
      if (qword_93CE68 != -1)
      {
        swift_once();
      }

      v25 = &xmmword_99D6A8;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (!v24)
  {
LABEL_15:
    if (qword_93CE48 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_99D548;
    goto LABEL_21;
  }

  if (v24 == 1)
  {
    if (qword_93CE50 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_99D5A0;
  }

  else
  {
    if (qword_93CE58 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_99D5F8;
  }

LABEL_21:
  v26 = v25[4];
  *&v108[16] = v25[3];
  *&v108[32] = v26;
  v109 = *(v25 + 10);
  v27 = v25[2];
  v107 = v25[1];
  *v108 = v27;
  v106 = *v25;
  v28 = *&v108[40];
  v29 = v109;
  v97 = *&v108[24];
  v98 = *&v108[8];
  v30 = *(&v107 + 1);
  v31 = v27;
  v33 = *(&v106 + 1);
  v32 = v107;
  v34 = v106;
  sub_72018(&v106, v102);
  v102[0] = __PAIR128__(v33, v34);
  v102[1] = __PAIR128__(v30, v32);
  *&v103[0] = v31;
  *(v103 + 8) = v98;
  *(&v103[1] + 8) = v97;
  *(&v103[2] + 1) = v28;
  v104 = v29;
  v109 = v29;
  v106 = __PAIR128__(v33, v34);
  v107 = __PAIR128__(v30, v32);
  *v108 = v103[0];
  *&v108[16] = v103[1];
  *&v108[32] = v103[2];
  [a5 pageMarginInsets];
  v35 = [objc_allocWithZone(type metadata accessor for QuotesLabel()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v96 = sub_3A5D14(&v106);

  *&v97 = v21;
  sub_7648B0();
  v37 = v36;
  v38 = sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93CE88 != -1)
  {
    swift_once();
  }

  v94 = sub_7666D0();
  v39 = sub_BE38(v94, qword_99D700);
  *&v98 = a5;
  v40 = [a5 traitCollection];
  v88 = v39;
  v41 = sub_769E10();

  sub_BD88(&qword_940F40, &qword_785F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77E280;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v43 = qword_93C2E0;
  v44 = NSParagraphStyleAttributeName;
  if (v43 != -1)
  {
    swift_once();
  }

  v45 = [qword_99A440 paragraphStyleWithBaseWritingDirection:-1];
  v46 = sub_BE70(0, &qword_940F48, NSParagraphStyle_ptr);
  *(inited + 40) = v45;
  *(inited + 64) = v46;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v38;
  *(inited + 80) = v41;
  v47 = NSFontAttributeName;
  v87 = v41;
  sub_10D028(inited);
  swift_setDeallocating();
  sub_BD88(qword_940F50, &qword_785170);
  swift_arrayDestroy();
  v48 = objc_allocWithZone(NSMutableAttributedString);
  v49 = sub_769210();
  type metadata accessor for Key(0);
  sub_38CEC0(&qword_93EC10, type metadata accessor for Key, &unk_77D804);
  v50.super.isa = sub_7690E0().super.isa;
  v86 = v37;
  isa = v50.super.isa;

  v52 = [v48 initWithString:v49 attributes:isa];

  v95 = v52;
  if (v96)
  {
    v53 = v96;
    sub_10D028(_swiftEmptyArrayStorage);
    v54 = objc_allocWithZone(NSAttributedString);
    v55 = sub_769210();
    v56 = sub_7690E0().super.isa;

    v57 = [v54 initWithString:v55 attributes:v56];

    v58 = v95;
    [v58 appendAttributedString:v57];
    v59 = [objc_allocWithZone(NSTextAttachment) init];
    [v59 setImage:v53];
    [(UIImage *)v53 size];
    [v59 setBounds:{0.0, -v28, v60, v61}];
    v62 = [objc_opt_self() attributedStringWithAttachment:v59];
    [v58 appendAttributedString:v62];

    sub_72078(v102);
  }

  else
  {

    sub_72078(v102);
  }

  v63 = v94;
  v64 = *(v94 - 8);
  v65 = v89;
  (*(v64 + 16))(v89, v88, v94);
  (*(v64 + 56))(v65, 0, 1, v63);
  v66 = sub_7653B0();
  v100 = v66;
  v67 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v101 = v67;
  v68 = sub_B1B4(v99);
  v69 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v70 = *(*(v66 - 8) + 104);
  v70(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v66);
  sub_765C30();
  sub_BEB8(v99);
  sub_762CA0();
  sub_10A2C(v65, &unk_93E530, &unk_77C5F0);
  if (qword_93CE98 != -1)
  {
    swift_once();
  }

  v71 = sub_766CA0();
  sub_BE38(v71, qword_99D730);
  sub_766720();
  if (qword_93CEA0 != -1)
  {
    swift_once();
  }

  sub_BE38(v71, qword_99D748);
  sub_7666F0();
  v89 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v89 setMaximumNumberOfLines:0];
  sub_7648C0();
  if (v72)
  {
    if (qword_93CE90 != -1)
    {
      swift_once();
    }

    sub_BE38(v94, qword_99D718);
    v100 = v66;
    v101 = v67;
    v73 = sub_B1B4(v99);
    v70(v73, v69, v66);
    sub_765C30();
    sub_BEB8(v99);
    v74 = v98;
    sub_762CB0();

    if (qword_93CEA8 != -1)
    {
      swift_once();
    }

    sub_BE38(v71, qword_99D760);
    sub_766720();
    v75 = v74;
    v76 = v93;
    v77 = &unk_90D000;
    if (qword_93CEB0 != -1)
    {
      swift_once();
    }

    sub_BE38(v71, qword_99D778);
    sub_7666F0();
  }

  else
  {
    v75 = v98;
    v76 = v93;
    v77 = &unk_90D000;
  }

  if (sub_7648D0())
  {
    sub_765260();
    sub_765260();
    sub_7666A0();
    if ((sub_7648A0() & 1) == 0)
    {
      [v75 v77[511]];
      [v75 v77[511]];
    }

    sub_766660();
    v78 = v95;
    if (qword_93CEB8 != -1)
    {
      swift_once();
    }

    sub_BE38(v71, qword_99D790);
    v79 = v82;
    sub_766470();
    sub_766700();

    (*(v84 + 8))(v79, v85);
    (*(v81 + 8))(v76, v83);
    (*(v91 + 8))(v90, v92);
  }

  else
  {

    (*(v91 + 8))(v90, v92);
  }

  return a3;
}

double sub_37E3A0(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v11 = sub_BD88(&qword_946810, &qword_783360);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - v13;
  v40 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v15 = *(v40 - 8);
  __chkstk_darwin(v40);
  v17 = &v39 - v16;
  sub_134D8(a1, &v42);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_764C80();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_768FA0();
  sub_769060();
  v18 = v45;
  swift_getObjectType();
  v19 = [a6 traitCollection];
  v20 = [v19 horizontalSizeClass];

  if (v20 == &dword_0 + 1)
  {
    [a6 pageMarginInsets];
    top = v21;
    left = v23;
    bottom = v25;
    right = v27;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v41 = v18;

  sub_BD88(&unk_952540, &qword_7918A0);
  if (swift_dynamicCast())
  {
    sub_B170(&v42, *(&v43 + 1));
    v29 = sub_762A20();
    sub_BEB8(&v42);
  }

  else
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    sub_10A2C(&v42, &unk_9513E0, &qword_7A38B0);
    v29 = 0;
  }

  v30 = sub_764C60();
  v32 = v31;
  v33 = sub_764C70();
  if (v33)
  {
  }

  v34 = sub_3DB210(a6);
  if (qword_93C768 != -1)
  {
    swift_once();
  }

  v35 = sub_759B00();
  v36 = sub_BE38(v35, qword_99BBB0);
  v37 = sub_251BC4(v36, a6, v30, v32, v33 != 0, v34, v29 & 1, a3, a4, top, left, bottom, right);

  (*(v15 + 8))(v17, v40);

  return v37;
}

double sub_37E7A0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void *a6)
{
  v11 = sub_BD88(&qword_946810, &qword_783360);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26[-v13];
  v15 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26[-v17];
  sub_134D8(a1, v26);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_758700();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_768FA0();
  sub_769060();
  v19 = v27;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v22 = v21;
  v23 = type metadata accessor for AppEventView(0);
  v24 = sub_650A20(v22, a4, v19, a6, a3, v23, ObjectType);
  (*(v16 + 8))(v18, v15);

  return v24;
}

void sub_37E9E8(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v11 = sub_BD88(&qword_946810, &qword_783360);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v34 - v13;
  v15 = sub_BD88(&qword_93F730, &qword_799640);
  v37 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v34 - v16;
  sub_134D8(a1, aBlock);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_765940();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_769060();
  v18 = aBlock[6];
  sub_280A0();
  v38 = v15;
  v36 = v17;
  sub_769030();
  if (LOBYTE(aBlock[0]) == 2)
  {
    v35 = sub_765890();
  }

  else
  {
    v35 = LOBYTE(aBlock[0]);
  }

  v19 = sub_7658D0();
  v34[1] = swift_getObjectType();
  v20 = [a6 traitCollection];
  v34[0] = v18;
  v21 = v20;
  v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v19];
  v23 = [v19 length];
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = v21;
  *(v24 + 32) = v22;
  *(v24 + 40) = 1;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_266A8;
  *(v25 + 24) = v24;
  aBlock[4] = sub_26694;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10C1C;
  aBlock[3] = &unk_88EE78;
  v26 = _Block_copy(aBlock);
  v27 = v21;
  v28 = v22;

  [v19 enumerateAttributesInRange:0 options:v23 usingBlock:{0x100000, v26}];

  _Block_release(v26);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  else
  {
    v29 = v28;
    [a6 pageMarginInsets];
    sub_334D4C(v28, v35 & 1, a6, v30, v31, v32, v33, a3, a4);

    sub_3B1248(v34[0], a6);
    (*(v37 + 8))(v36, v38);
  }
}

double sub_37EE50(uint64_t a1, uint64_t a2, __n128 a3, double a4, uint64_t a5, void (*a6)(void *, uint64_t, uint64_t))
{
  v114 = a6;
  v6 = a3.n128_f64[0];
  ObjectType = a2;
  v8 = sub_75CBF0();
  v95 = *(v8 - 8);
  v96 = v8;
  __chkstk_darwin(v8);
  v94 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_762D10();
  v102 = *(v10 - 8);
  v103 = v10;
  __chkstk_darwin(v10);
  v101 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7666D0();
  v109 = *(v12 - 8);
  v110 = v12;
  __chkstk_darwin(v12);
  v108 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_75BE90();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v111 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v84 - v18;
  v20 = sub_75CBD0();
  v105 = *(v20 - 8);
  v106 = v20;
  __chkstk_darwin(v20);
  v89 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v84 - v23;
  v25 = sub_BD88(&qword_946810, &qword_783360);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v84 - v27;
  v29 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v92 = *(v29 - 8);
  v93 = v29;
  __chkstk_darwin(v29);
  v31 = &v84 - v30;
  sub_134D8(a1, v121);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_759650();
  swift_dynamicCast();
  (*(v26 + 16))(v28, ObjectType, v25);
  v32 = v114;
  sub_768FA0();
  v91 = v31;
  sub_769060();
  v33 = v121[5];
  v34 = sub_759640();
  sub_759610();
  ObjectType = swift_getObjectType();
  sub_827CC(v34, v19, v32, v24);

  v35 = *(v15 + 8);
  v90 = v19;
  v35(v19, v14);
  v36 = sub_7670D0();
  swift_allocObject();
  v37 = sub_7670B0();
  swift_allocObject();
  v87 = sub_7670B0();
  swift_allocObject();
  v86 = sub_7670B0();
  v104 = v24;
  sub_75CBB0();
  v113 = v36;
  v38 = v111;
  swift_allocObject();
  v39 = sub_7670B0();
  sub_759610();
  v40 = (*(v15 + 88))(v38, v14);
  v88 = v37;
  v85 = v39;
  if (v40 != enum case for PrivacyTypeStyle.productPage(_:))
  {
    if (v40 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v40 == enum case for PrivacyTypeStyle.detailPage(_:))
    {
      v47 = v108;
      if (qword_93D880 != -1)
      {
        swift_once();
      }

      v48 = v110;
      v49 = sub_BE38(v110, qword_99F178);
      (*(v109 + 16))(v47, v49, v48);
      v46 = 4;
      goto LABEL_13;
    }

    v43 = v108;
    if (qword_93D878 != -1)
    {
      swift_once();
    }

    v44 = v110;
    v45 = sub_BE38(v110, qword_99F160);
    (*(v109 + 16))(v43, v45, v44);
    v35(v38, v14);
    goto LABEL_9;
  }

  if (qword_93D878 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v41 = v110;
    v42 = sub_BE38(v110, qword_99F160);
    (*(v109 + 16))(v108, v42, v41);
LABEL_9:
    v46 = 1;
LABEL_13:
    v111 = v46;
    sub_BE70(0, &qword_93F900, UIFont_ptr);
    v50 = v114;
    v51 = [v114 traitCollection];
    v52 = sub_769E10();

    sub_759620();
    v53 = sub_7653B0();
    v121[3] = v53;
    v100 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v121[4] = v100;
    v54 = sub_B1B4(v121);
    v107 = v33;
    v55 = *(v53 - 8);
    v56 = *(v55 + 104);
    v99 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v97 = v55 + 104;
    v98 = v56;
    v56(v54);
    v57 = v52;
    sub_765C30();
    sub_BEB8(v121);
    v58 = v101;
    v84 = v57;
    sub_762D00();
    sub_762CE0();
    v59 = v103;
    v33 = v102[1];
    v33(v58, v103);
    if (qword_93D888 != -1)
    {
      swift_once();
    }

    sub_BE38(v110, qword_99F190);
    v60 = [v50 traitCollection];
    v61 = sub_769E10();

    sub_759630();
    v120[3] = v53;
    v120[4] = v100;
    v62 = sub_B1B4(v120);
    v98(v62, v99, v53);
    v63 = v61;
    sub_765C30();
    sub_BEB8(v120);
    sub_762D00();
    sub_762CE0();
    v33(v58, v59);
    v64 = sub_7595F0();
    v65 = v64;
    if (v64 >> 62)
    {
      v76 = v64;
      v77 = sub_76A860();
      v65 = v76;
      v66 = v77;
      v102 = v63;
      if (!v77)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v66 = *(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8));
      v102 = v63;
      if (!v66)
      {
        goto LABEL_29;
      }
    }

    v67 = v65;
    v111 = type metadata accessor for PrivacyCategoryView();
    if (v66 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  v68 = 0;
  v69 = v67;
  v70 = _swiftEmptyArrayStorage;
  do
  {
    if ((v67 & 0xC000000000000001) != 0)
    {
      v71 = sub_76A770();
    }

    else
    {
      v71 = *(v69 + 8 * v68 + 32);
    }

    v73 = sub_4DBE18(v71, v114, v72);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v70 = sub_7AE30(0, *(v70 + 2) + 1, 1, v70);
    }

    v75 = *(v70 + 2);
    v74 = *(v70 + 3);
    if (v75 >= v74 >> 1)
    {
      v70 = sub_7AE30((v74 > 1), v75 + 1, 1, v70);
    }

    ++v68;

    v118 = v113;
    v119 = &protocol witness table for LayoutViewPlaceholder;
    *&v117 = v73;
    *(v70 + 2) = v75 + 1;
    sub_10914(&v117, &v70[5 * v75 + 4]);
    v69 = v67;
  }

  while (v66 != v68);
LABEL_29:

  v78 = [v114 traitCollection];
  sub_767500();

  v79 = v113;
  swift_allocObject();
  v80 = sub_7670B0();
  (*(v105 + 16))(v89, v104, v106);
  v118 = v79;
  v119 = &protocol witness table for LayoutViewPlaceholder;
  *&v117 = v88;
  v116[23] = v79;
  v116[24] = &protocol witness table for LayoutViewPlaceholder;
  v116[19] = &protocol witness table for LayoutViewPlaceholder;
  v116[20] = v87;
  v116[18] = v79;
  v116[14] = &protocol witness table for LayoutViewPlaceholder;
  v116[15] = v86;
  v116[13] = v79;
  v116[9] = &protocol witness table for LayoutViewPlaceholder;
  v116[10] = v80;
  ObjectType = v80;
  v116[8] = v79;
  v116[5] = v85;
  sub_134D8(v121, v116);
  sub_134D8(v120, &v115);

  sub_759610();
  v81 = v94;
  sub_75CBE0();
  sub_38CEC0(&qword_951450, &type metadata accessor for PrivacyTypeLayout, &protocol conformance descriptor for PrivacyTypeLayout);
  v82 = v96;
  sub_7665A0();

  (*(v95 + 8))(v81, v82);
  sub_BEB8(v120);
  sub_BEB8(v121);
  (*(v109 + 8))(v108, v110);
  (*(v105 + 8))(v104, v106);
  (*(v92 + 8))(v91, v93);

  return v6;
}

double sub_37FBFC(double a1, uint64_t a2, char *a3, uint64_t a4, void *a5)
{
  v49 = a5;
  v41 = a4;
  v42 = a3;
  v38 = sub_76A920();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_7664A0();
  v7 = *(v45 - 8);
  __chkstk_darwin(v45);
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_7674E0();
  v10 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_767510();
  v47 = *(v12 - 8);
  v48 = v12;
  __chkstk_darwin(v12);
  v44 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_75FA00();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&qword_946810, &qword_783360);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v36 - v20;
  v46 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v43 = *(v46 - 8);
  v22 = __chkstk_darwin(v46);
  v24 = &v36 - v23;
  (*(v19 + 16))(v21, v42, v18, v22);
  sub_768FA0();
  v42 = v24;
  sub_769060();
  sub_75F9B0();
  sub_38CEC0(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  LOBYTE(v18) = sub_76A520();
  v25 = v17;
  v26 = v39;
  (*(v15 + 8))(v25, v14);
  (*(v10 + 104))(v26, enum case for Separator.Position.bottom(_:), v40);
  *v9 = UIFontTextStyleBody;
  v27 = v45;
  (*(v7 + 104))(v9, enum case for FontSource.textStyle(_:), v45);
  v52 = sub_766CA0();
  v53 = &protocol witness table for StaticDimension;
  sub_B1B4(v51);
  v50[3] = v27;
  v50[4] = &protocol witness table for FontSource;
  v28 = sub_B1B4(v50);
  (*(v7 + 16))(v28, v9, v27);
  v29 = UIFontTextStyleBody;
  sub_766CB0();
  (*(v7 + 8))(v9, v27);
  if (v18)
  {
    v30 = v44;
    sub_7674F0();
    sub_7674A0();
    (*(v47 + 8))(v30, v48);
    v31 = v52;
    sub_B170(v51, v52);
    v32 = v36;
    sub_33964(v31);
    v33 = v49;
    sub_766700();
    (*(v37 + 8))(v32, v38);
    sub_BEB8(v51);
  }

  else
  {
    v34 = v44;
    sub_7674F0();
    v33 = v49;
    sub_7674D0();
    (*(v47 + 8))(v34, v48);
  }

  swift_getObjectType();
  sub_277BF8(v33);
  (*(v43 + 8))(v42, v46);
  return a1;
}

double sub_38036C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v36 = a4;
  v38 = a5;
  v9 = sub_76A920();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v33 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_75FA00();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_767510();
  v39 = *(v15 - 8);
  v40 = v15;
  __chkstk_darwin(v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&qword_946810, &qword_783360);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v33 - v20;
  v37 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v22 = *(v37 - 8);
  v23 = __chkstk_darwin(v37);
  v25 = &v33 - v24;
  (*(v19 + 16))(v21, v36, v18, v23);
  sub_768FA0();
  sub_769060();
  swift_getObjectType();
  sub_27A378(a6, v17);
  sub_75F9B0();
  sub_38CEC0(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  LOBYTE(v21) = sub_76A520();
  v26 = (*(v12 + 8))(v14, v11);
  v26.n128_f64[0] = a1;
  v27 = sub_27BC08(a6, v26, a2);
  if (v21)
  {
    v28 = v27;
    sub_7674A0();
    v29 = v42;
    sub_B170(v41, v42);
    v30 = v33;
    sub_33964(v29);
    sub_766700();
    (*(v34 + 8))(v30, v35);
    (*(v39 + 8))(v17, v40);
    (*(v22 + 8))(v25, v37);
    sub_BEB8(v41);
  }

  else
  {
    sub_769DD0();
    v28 = v31;
    (*(v39 + 8))(v17, v40);
    (*(v22 + 8))(v25, v37);
  }

  return v28;
}

double sub_380820(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v10 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v10 - 8);
  v62 = &v59 - v11;
  v61 = sub_76A920();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v66 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_766690();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&qword_946810, &qword_783360);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v59 - v19;
  v21 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v64 = *(v21 - 8);
  v65 = v21;
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  sub_134D8(a1, aBlock);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75A2D0();
  swift_dynamicCast();
  (*(v18 + 16))(v20, a2, v17);
  sub_768FA0();
  v63 = v23;
  sub_769060();
  if ((sub_759430() & 1) == 0)
  {
    [a6 pageMarginInsets];
  }

  v24 = a6;
  v25 = sub_75A2C0();
  v26 = v66;
  if (v25)
  {
    sub_765260();
    sub_7666A0();
    sub_766660();
    v28 = v27;
    v29 = *(v14 + 8);
    v29(v16, v13);
    sub_759430();
    if ((sub_759430() & 1) != 0 || v28 <= a4)
    {
    }

    else
    {
      sub_765260();
      sub_7666A0();
      sub_766650();
      v29(v16, v13);
    }
  }

  v30 = sub_759450();
  v31 = [v30 length];

  if (v31 >= 1)
  {
    sub_759460();
    if (v32)
    {
      if (qword_93DA18 != -1)
      {
        swift_once();
      }

      v33 = sub_7666D0();
      sub_BE38(v33, qword_99F640);
      v34 = sub_7653B0();
      v68 = v34;
      v69 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v35 = sub_B1B4(aBlock);
      (*(*(v34 - 8) + 104))(v35, enum case for Feature.measurement_with_labelplaceholder(_:), v34);
      sub_765C30();
      sub_BEB8(aBlock);
      sub_762CB0();

      if (qword_93E250 != -1)
      {
        swift_once();
      }

      v36 = sub_766CA0();
      sub_BE38(v36, qword_9A09B8);
      sub_766470();
      sub_766700();
      v37 = *(v60 + 8);
      v38 = v61;
      v37(v26, v61);
      if (qword_93E260 != -1)
      {
        swift_once();
      }

      sub_BE38(v36, qword_9A09E8);
      sub_766470();
      sub_766700();
      v37(v26, v38);
      if (qword_93E258 != -1)
      {
        swift_once();
      }

      sub_BE38(v36, qword_9A09D0);
      sub_766470();
      sub_766700();
      v37(v26, v38);
    }

    v39 = sub_759450();
    v40 = [v24 traitCollection];
    v41 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v39];
    v42 = [v39 length];
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = v40;
    *(v43 + 32) = v41;
    *(v43 + 40) = 1;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_266A8;
    *(v44 + 24) = v43;
    v69 = sub_26694;
    v70 = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10C1C;
    v68 = &unk_88EF68;
    v45 = _Block_copy(aBlock);
    v46 = v40;
    v47 = v41;

    [v39 enumerateAttributesInRange:0 options:v42 usingBlock:{0x100000, v45}];

    _Block_release(v45);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if (v41)
    {
      __break(1u);
    }

    else
    {
      v48 = qword_93DA10;
      v39 = v47;
      if (v48 == -1)
      {
LABEL_21:
        v49 = sub_7666D0();
        v50 = sub_BE38(v49, qword_99F628);
        v51 = *(v49 - 8);
        v52 = v62;
        (*(v51 + 16))(v62, v50, v49);
        (*(v51 + 56))(v52, 0, 1, v49);
        v53 = sub_7653B0();
        v68 = v53;
        v69 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v54 = sub_B1B4(aBlock);
        (*(*(v53 - 8) + 104))(v54, enum case for Feature.measurement_with_labelplaceholder(_:), v53);
        sub_765C30();
        sub_BEB8(aBlock);
        sub_762CA0();

        sub_10A2C(v52, &unk_93E530, &unk_77C5F0);
        if (qword_93E250 != -1)
        {
          swift_once();
        }

        v55 = sub_766CA0();
        sub_BE38(v55, qword_9A09B8);
        sub_766720();
        if (qword_93E258 != -1)
        {
          swift_once();
        }

        sub_BE38(v55, qword_9A09D0);
        sub_7666F0();

        goto LABEL_26;
      }
    }

    swift_once();
    goto LABEL_21;
  }

LABEL_26:
  sub_769D90();
  v57 = v56;
  (*(v64 + 8))(v63, v65);

  return v57;
}

double sub_381410(uint64_t a1, uint64_t a2, __n128 a3, double a4, uint64_t a5, void *a6)
{
  v47 = a6;
  v6 = a3.n128_f64[0];
  v9 = sub_75E410();
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_75E430();
  v45 = *(v11 - 8);
  v46 = v11;
  __chkstk_darwin(v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_762D10();
  v14 = *(v40 - 8);
  __chkstk_darwin(v40);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&qword_946810, &qword_783360);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v40 - v19;
  v41 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v21 = *(v41 - 8);
  __chkstk_darwin(v41);
  v23 = &v40 - v22;
  sub_134D8(a1, v49);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75A3E0();
  swift_dynamicCast();
  (*(v18 + 16))(v20, a2, v17);
  sub_768FA0();
  sub_769060();
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93D868 != -1)
  {
    swift_once();
  }

  v24 = sub_7666D0();
  sub_BE38(v24, qword_99F130);
  v25 = [v47 traitCollection];
  v26 = sub_769E10();

  sub_75A3D0();
  sub_759CE0();

  v27 = sub_758EC0();

  v28 = sub_7653B0();
  v50 = v28;
  v51 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v29 = sub_B1B4(v49);
  (*(*(v28 - 8) + 104))(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
  v30 = v27;
  v31 = v26;
  sub_765C30();
  sub_BEB8(v49);
  sub_762CD0();
  sub_762CE0();
  (*(v14 + 8))(v16, v40);
  if (qword_93DD40 != -1)
  {
    swift_once();
  }

  v32 = v43;
  v33 = sub_BE38(v43, qword_99FFD0);
  (*(v42 + 16))(v44, v33, v32);
  v34 = v50;
  v35 = v51;
  v36 = sub_B170(v49, v50);
  v48[3] = v34;
  v48[4] = *(v35 + 8);
  v37 = sub_B1B4(v48);
  (*(*(v34 - 8) + 16))(v37, v36, v34);
  sub_75E420();
  sub_38CEC0(&unk_94E500, &type metadata accessor for PrivacyFooterLayout, &protocol conformance descriptor for PrivacyFooterLayout);
  v38 = v46;
  sub_7665A0();

  (*(v45 + 8))(v13, v38);
  (*(v21 + 8))(v23, v41);
  sub_BEB8(v49);

  return v6;
}

void sub_381A90(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, uint64_t a6, void *a7)
{
  v70 = a7;
  v73 = a3;
  v74 = sub_762D10();
  v57 = *(v74 - 8);
  __chkstk_darwin(v74);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_75E460();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v66 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_75E480();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_7666D0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&qword_946810, &qword_783360);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v56 - v19;
  v65 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v22 = &v56 - v21;
  sub_134D8(a1, v82);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75A420();
  swift_dynamicCast();
  (*(v18 + 16))(v20, a2, v17);
  sub_768FA0();
  v61 = v22;
  sub_769060();
  v23 = v85;
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93D860 != -1)
  {
    swift_once();
  }

  v24 = sub_BE38(v13, qword_99F118);
  v25 = [v70 traitCollection];
  v75 = sub_769E10();

  (*(v14 + 16))(v16, v24, v13);
  v59 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v26 = objc_allocWithZone(v59);
  v27 = sub_4ECF40(v16, 0, 0, 1);
  sub_75A410();
  v28 = sub_759CF0();
  sub_22A974(v28, sub_38CF18);
  v30 = v29;

  v31 = sub_759CE0();
  v58 = v27;
  sub_4ED3B8(v31, 0, v30);

  v32 = sub_75A400();
  v33 = v32;
  if (v32 >> 62)
  {
    v54 = v32;
    v55 = sub_76A860();
    v33 = v54;
    v34 = v55;
  }

  else
  {
    v34 = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
  }

  v60 = v23;
  if (v34)
  {
    if (v34 < 1)
    {
      __break(1u);
      return;
    }

    v35 = 0;
    v72 = v33 & 0xC000000000000001;
    v71 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v36 = (v57 + 8);
    v37 = _swiftEmptyArrayStorage;
    v73 = v33;
    do
    {
      if (v72)
      {
        sub_76A770();
      }

      else
      {
      }

      sub_762FE0();
      sub_759CE0();

      v38 = v75;
      v39 = sub_758EC0();

      v40 = sub_7653B0();
      v83 = v40;
      v84 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v41 = sub_B1B4(v82);
      (*(*(v40 - 8) + 104))(v41, v71, v40);
      v42 = v39;
      v43 = v38;
      sub_765C30();
      sub_BEB8(v82);
      sub_762CD0();
      sub_762CE0();
      (*v36)(v10, v74);
      sub_134D8(v82, &v79);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_7B08C(0, *(v37 + 2) + 1, 1, v37);
      }

      v45 = *(v37 + 2);
      v44 = *(v37 + 3);
      if (v45 >= v44 >> 1)
      {
        v37 = sub_7B08C((v44 > 1), v45 + 1, 1, v37);
      }

      ++v35;

      sub_BEB8(v82);
      *(v37 + 2) = v45 + 1;
      sub_10914(&v79, &v37[5 * v45 + 4]);
    }

    while (v34 != v35);
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
  }

  v46 = [v70 traitCollection];
  sub_767500();

  v47 = sub_7670D0();
  swift_allocObject();
  v48 = sub_7670B0();
  if (qword_93D2A8 != -1)
  {
    swift_once();
  }

  v49 = v64;
  v50 = sub_BE38(v64, qword_99E0C0);
  (*(v62 + 16))(v66, v50, v49);
  sub_75A3F0();
  v83 = v59;
  v84 = &protocol witness table for UIView;
  v82[0] = v58;
  v51 = v58;
  sub_14038C(v37);

  v80 = v47;
  v81 = &protocol witness table for LayoutViewPlaceholder;
  v78 = &protocol witness table for LayoutViewPlaceholder;
  *&v79 = v48;
  v77 = v47;
  v76 = v48;
  swift_retain_n();
  v52 = v67;
  sub_75E470();
  sub_38CEC0(&unk_9513C0, &type metadata accessor for PrivacyHeaderLayout, &protocol conformance descriptor for PrivacyHeaderLayout);
  v53 = v69;
  sub_7665A0();

  (*(v68 + 8))(v52, v53);
  (*(v63 + 8))(v61, v65);
}

double sub_3824E8(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = sub_75E670();
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_75E690();
  v11 = *(v31 - 8);
  __chkstk_darwin(v31);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&qword_946810, &qword_783360);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v29 - v16;
  v30 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v18 = *(v30 - 8);
  v19 = __chkstk_darwin(v30);
  v21 = &v29 - v20;
  (*(v15 + 16))(v17, a4, v14, v19);
  sub_768FA0();
  sub_769060();
  sub_6443F4(a6, v10);
  swift_getObjectType();
  sub_6456A8(a6);
  v22 = sub_7670D0();
  swift_allocObject();
  v23 = sub_7670B0();
  v36 = v22;
  v37 = &protocol witness table for LayoutViewPlaceholder;
  v35 = v23;
  swift_allocObject();
  v24 = sub_7670B0();
  v33 = v22;
  v34 = &protocol witness table for LayoutViewPlaceholder;
  v32 = v24;
  sub_75E680();
  sub_38CEC0(&qword_95CFA0, &type metadata accessor for SmallBreakoutLayout, &protocol conformance descriptor for SmallBreakoutLayout);
  v25 = v31;
  sub_7665A0();
  v27 = v26;
  (*(v11 + 8))(v13, v25);
  (*(v18 + 8))(v21, v30);
  return v27;
}

double sub_38287C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, uint64_t a6, void *a7)
{
  v32 = a7;
  v31 = a3;
  v33 = sub_758FD0();
  v11 = *(v33 - 8);
  __chkstk_darwin(v33);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&qword_946810, &qword_783360);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - v16;
  v18 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v31 - v20;
  sub_134D8(a1, &v34);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75AAB0();
  swift_dynamicCast();
  (*(v15 + 16))(v17, a2, v14);
  sub_768FA0();
  sub_769060();
  sub_761230();
  sub_768900();
  sub_768ED0();
  v22 = v34;
  sub_761210();
  if (sub_758FA0())
  {
    v23 = sub_75AA80();
  }

  else
  {
    v23 = sub_75AAA0();
  }

  v25 = v23;
  v26 = v24;
  v27 = v32;
  swift_getObjectType();
  v28.n128_f64[0] = a4;
  v29 = sub_145CB4(v25, v26, v27, v28, a5);

  (*(v11 + 8))(v13, v33);
  (*(v19 + 8))(v21, v18);

  return v29;
}

double sub_382BB4(uint64_t a1, uint64_t a2, __n128 a3, double a4, uint64_t a5, void *a6)
{
  v7 = a3.n128_f64[0];
  v55 = sub_75EAC0();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v57 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_75EAE0();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_762D10();
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&qword_946810, &qword_783360);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v50 - v16;
  v56 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v19 = v50 - v18;
  sub_134D8(a1, &v70);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75AB70();
  swift_dynamicCast();
  (*(v15 + 16))(v17, a2, v14);
  sub_768FA0();
  v52 = v19;
  sub_769060();
  v20 = v73;
  [a6 pageMarginInsets];
  sub_769DA0();
  v21 = [a6 traitCollection];
  LOBYTE(v14) = sub_7699D0();

  v22 = 4;
  if ((v14 & 1) == 0)
  {
    v22 = 1;
  }

  v61 = v22;
  v51 = v20;
  sub_75AB60();
  v50[1] = v23;
  v24 = sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93CE38 != -1)
  {
    swift_once();
  }

  v25 = sub_7666D0();
  sub_BE38(v25, qword_99D4F8);
  v26 = [a6 traitCollection];
  sub_769E10();

  v27 = sub_7653B0();
  v62 = a6;
  v28 = v27;
  v71 = v27;
  v29 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v72 = v29;
  v30 = sub_B1B4(&v70);
  v31 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v32 = *(v28 - 8);
  v50[0] = v24;
  v33 = *(v32 + 104);
  v33(v30, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
  sub_765C30();
  sub_BEB8(&v70);
  sub_762D00();
  sub_762CE0();
  v34 = *(v64 + 8);
  v64 += 8;
  v34(v13, v63);
  v51 = sub_75AB50();
  if (qword_93CE40 != -1)
  {
    swift_once();
  }

  sub_BE38(v25, qword_99D510);
  v35 = [v62 traitCollection];
  sub_769E10();

  v68 = v28;
  v69 = v29;
  v36 = sub_B1B4(v67);
  v33(v36, v31, v28);
  sub_765C30();
  sub_BEB8(v67);
  sub_762D00();
  sub_762CE0();
  v34(v13, v63);
  if (qword_93CE30 != -1)
  {
    swift_once();
  }

  v37 = v55;
  v38 = sub_BE38(v55, qword_99D4E0);
  (*(v53 + 16))(v57, v38, v37);
  v39 = v71;
  v40 = v72;
  v41 = sub_B170(&v70, v71);
  v66[3] = v39;
  v66[4] = *(v40 + 8);
  v42 = sub_B1B4(v66);
  (*(*(v39 - 8) + 16))(v42, v41, v39);
  v43 = v68;
  v44 = v69;
  v45 = sub_B170(v67, v68);
  v65[3] = v43;
  v65[4] = *(v44 + 8);
  v46 = sub_B1B4(v65);
  (*(*(v43 - 8) + 16))(v46, v45, v43);
  v47 = v58;
  sub_75EAD0();
  sub_38CEC0(&unk_9513F0, &type metadata accessor for EditorialQuoteLayout, &protocol conformance descriptor for EditorialQuoteLayout);
  v48 = v60;
  sub_7665A0();
  (*(v59 + 8))(v47, v48);
  (*(v54 + 8))(v52, v56);
  sub_BEB8(v67);
  sub_BEB8(&v70);

  return v7;
}

double sub_3834B0(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v24 = a5;
  v25 = sub_75AC60();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&qword_946810, &qword_783360);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v15 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - v17;
  sub_134D8(a1, v26);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75AC90();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_768FA0();
  sub_769060();
  if (sub_75AC20())
  {
    v19 = v24;
  }

  else
  {
    v19 = v24;
    [v24 pageMarginInsets];
    a3 = a3 - v20 - v21;
  }

  sub_75AC80();
  v22 = [v19 traitCollection];
  sub_75AC40();

  (*(v8 + 8))(v10, v25);
  (*(v16 + 8))(v18, v15);

  return a3;
}

double sub_3837AC(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v10 = sub_BD88(&qword_946810, &qword_783360);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - v12;
  v14 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v21 - v16;
  sub_134D8(a1, v21);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75B610();
  swift_dynamicCast();
  (*(v11 + 16))(v13, a2, v10);
  sub_768FA0();
  sub_769060();
  v18 = v21[5];
  type metadata accessor for PrivacyCategoryView();
  swift_getObjectType();
  v21[0] = sub_4DBE18(v18, a6, v19);
  sub_7670D0();
  sub_7665A0();
  (*(v15 + 8))(v17, v14);

  return a3;
}

double sub_383A14(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_BD88(&qword_946810, &qword_783360);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22[-v11];
  v13 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22[-v15];
  sub_134D8(a1, v22);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_7587A0();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a2, v9);
  sub_768FA0();
  sub_769060();
  v17 = v23;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v20 = sub_271EC(v17, a5, ObjectType, v19, a3);
  (*(v14 + 8))(v16, v13);

  return v20;
}

double sub_383C40(uint64_t a1, uint64_t a2, __n128 a3, double a4, uint64_t a5, void *a6)
{
  v50 = sub_763560();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_763590();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7604B0();
  __chkstk_darwin(v12 - 8);
  v47 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_7604D0();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_762D10();
  v15 = *(v40 - 8);
  __chkstk_darwin(v40);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&qword_946810, &qword_783360);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v38 - v20;
  v43 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v23 = &v38 - v22;
  sub_134D8(a1, v61);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75C8C0();
  swift_dynamicCast();
  (*(v19 + 16))(v21, a2, v18);
  sub_768FA0();
  v41 = v23;
  sub_769060();
  v53 = a6;
  v24 = [a6 traitCollection];
  v25 = sub_7670D0();
  swift_allocObject();
  v26 = sub_7670B0();
  sub_75C8B0();
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93DAD0 != -1)
  {
    swift_once();
  }

  v27 = sub_7666D0();
  sub_BE38(v27, qword_99F868);
  sub_769E10();
  v28 = sub_7653B0();
  v39 = v24;
  v29 = v28;
  v61[3] = v28;
  v61[4] = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v30 = sub_B1B4(v61);
  (*(*(v29 - 8) + 104))(v30, enum case for Feature.measurement_with_labelplaceholder(_:), v29);
  sub_765C30();
  sub_BEB8(v61);
  sub_762D00();
  sub_762CE0();
  (*(v15 + 8))(v17, v40);
  sub_75C870();
  v31 = v46;
  sub_763570();
  (*(v44 + 8))(v11, v45);
  sub_28F39C(v31, v53, v47);
  (*(v48 + 8))(v31, v50);
  swift_allocObject();
  v32 = sub_7670B0();
  v59 = v25;
  v60 = &protocol witness table for LayoutViewPlaceholder;
  v58 = v32;
  sub_134D8(v61, v57);
  v55 = v25;
  v56 = &protocol witness table for LayoutViewPlaceholder;
  v54 = v26;

  v33 = v49;
  sub_7604C0();
  sub_38CEC0(&unk_951390, &type metadata accessor for LargeHeroBreakoutLayout, &protocol conformance descriptor for LargeHeroBreakoutLayout);
  v34 = v52;
  sub_7665A0();
  v36 = v35;

  (*(v51 + 8))(v33, v34);
  sub_BEB8(v61);
  (*(v42 + 8))(v41, v43);

  return v36;
}

double sub_384418(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_BD88(&qword_946810, &qword_783360);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23[-v11];
  v13 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23[-v15];
  sub_134D8(a1, v23);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75F8F0();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a2, v9);
  sub_768FA0();
  sub_769060();
  v17 = sub_75F8D0();
  if (v18)
  {
    v19 = sub_75F8E0();
    if (v19 >> 62)
    {
      v20 = sub_76A860();
    }

    else
    {
      v20 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
    }
  }

  else
  {
    v20 = v17;
  }

  v21 = [a5 traitCollection];
  sub_755CB8(v20, v21);

  (*(v14 + 8))(v16, v13);

  return a3;
}

double sub_384694(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v28 = a6;
  v27 = sub_762D10();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&qword_946810, &qword_783360);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - v13;
  v26 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v15 = *(v26 - 8);
  __chkstk_darwin(v26);
  v17 = &v25 - v16;
  sub_134D8(a1, v29);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75D8F0();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_768FA0();
  sub_769060();
  sub_75D8E0();
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93D788 != -1)
  {
    swift_once();
  }

  v18 = sub_7666D0();
  sub_BE38(v18, qword_99EE90);
  v19 = [v28 traitCollection];
  sub_769E10();

  v20 = sub_7653B0();
  v30 = v20;
  v31 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v21 = sub_B1B4(v29);
  (*(*(v20 - 8) + 104))(v21, enum case for Feature.measurement_with_labelplaceholder(_:), v20);
  sub_765C30();
  sub_BEB8(v29);
  sub_762D00();
  sub_762CE0();
  (*(v8 + 8))(v10, v27);
  sub_B170(v29, v30);
  sub_7665B0();
  v23 = v22;
  (*(v15 + 8))(v17, v26);
  sub_BEB8(v29);

  return v23;
}

double sub_384AEC(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v51 = a6;
  v8 = sub_762760();
  __chkstk_darwin(v8 - 8);
  v47 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_762780();
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v48 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_762D10();
  v12 = *(v59 - 8);
  __chkstk_darwin(v59);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&qword_946810, &qword_783360);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v43 - v17;
  v19 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v45 = *(v19 - 8);
  v46 = v19;
  __chkstk_darwin(v19);
  v21 = v43 - v20;
  sub_134D8(a1, v76);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75FC20();
  swift_dynamicCast();
  (*(v16 + 16))(v18, a2, v15);
  sub_768FA0();
  v44 = v21;
  sub_769060();
  v58 = v76[5];
  sub_75FBE0();
  v22 = sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93DB70 != -1)
  {
    swift_once();
  }

  v57 = sub_7666D0();
  sub_BE38(v57, qword_99FA48);
  v23 = [v51 traitCollection];
  sub_769E10();

  v24 = sub_7653B0();
  v76[3] = v24;
  v56 = sub_38CEC0(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v76[4] = v56;
  v25 = sub_B1B4(v76);
  v26 = *(*(v24 - 8) + 104);
  v55 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v54 = v26;
  v26(v25);
  sub_765C30();
  v52 = v22;
  sub_BEB8(v76);
  sub_762D00();
  sub_762CE0();
  v53 = *(v12 + 8);
  v53(v14, v59);
  sub_75FBF0();
  if (qword_93DB78 != -1)
  {
    swift_once();
  }

  sub_BE38(v57, qword_99FA60);
  v27 = v51;
  v28 = [v51 traitCollection];
  sub_769E10();

  v75[3] = v24;
  v75[4] = v56;
  v29 = sub_B1B4(v75);
  v54(v29, v55, v24);
  sub_765C30();
  sub_BEB8(v75);
  sub_762D00();
  sub_762CE0();
  v53(v14, v59);
  sub_75FC10();
  if (qword_93DB80 != -1)
  {
    swift_once();
  }

  sub_BE38(v57, qword_99FA78);
  v30 = [v27 traitCollection];
  sub_769E10();

  v74[3] = v24;
  v74[4] = v56;
  v31 = sub_B1B4(v74);
  v54(v31, v55, v24);
  sub_765C30();
  sub_BEB8(v74);
  sub_762D00();
  sub_762CE0();
  v53(v14, v59);
  v32 = sub_7670D0();
  swift_allocObject();
  v33 = sub_7670A0();
  v34 = swift_allocObject();
  v34[2] = v58;
  v34[3] = v27;
  v34[4] = v43[1];
  swift_allocObject();

  swift_unknownObjectRetain();
  v35 = sub_767090();
  sub_48E270(v27, v47);
  v73 = 0;
  *&v71[40] = 0u;
  v72 = 0u;
  sub_134D8(v76, v71);
  sub_134D8(v75, &v70);
  sub_134D8(v74, &v69);
  v67 = v32;
  v68 = &protocol witness table for LayoutViewPlaceholder;
  v66 = v33;

  v36 = [v27 traitCollection];
  sub_767500();

  swift_allocObject();
  v37 = sub_7670B0();
  v64 = v32;
  v65 = &protocol witness table for LayoutViewPlaceholder;
  v62 = &protocol witness table for LayoutViewPlaceholder;
  v63 = v37;
  v61 = v32;
  v60 = v35;

  v38 = v48;
  sub_762770();
  sub_38CEC0(&unk_94F080, &type metadata accessor for GameCenterReengagementLayout, &protocol conformance descriptor for GameCenterReengagementLayout);
  v39 = v50;
  sub_7665A0();
  v41 = v40;

  (*(v49 + 8))(v38, v39);
  sub_BEB8(v74);
  sub_BEB8(v75);
  sub_BEB8(v76);
  (*(v45 + 8))(v44, v46);

  return v41;
}

double sub_385450(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v35 = a4;
  v36 = a5;
  v9 = sub_76A920();
  v33 = *(v9 - 8);
  v34 = v9;
  __chkstk_darwin(v9);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_767510();
  v38 = *(v11 - 8);
  v39 = v11;
  __chkstk_darwin(v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_75FA00();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&qword_946810, &qword_783360);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v32 - v20;
  v37 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v22 = *(v37 - 8);
  v23 = __chkstk_darwin(v37);
  v25 = &v32 - v24;
  (*(v19 + 16))(v21, v35, v18, v23);
  sub_768FA0();
  sub_769060();
  sub_75F9B0();
  sub_38CEC0(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  LOBYTE(v21) = sub_76A520();
  (*(v15 + 8))(v17, v14);
  swift_getObjectType();
  sub_321BC4(a6, v13);
  type metadata accessor for InAppPurchaseLockupView(0);
  v26 = sub_1F1030(a6, a1, a2);
  if (v21)
  {
    v27 = v26;
    sub_7674A0();
    v28 = v41;
    sub_B170(v40, v41);
    v29 = v32;
    sub_33964(v28);
    sub_766700();
    (*(v33 + 8))(v29, v34);
    (*(v38 + 8))(v13, v39);
    (*(v22 + 8))(v25, v37);
    sub_BEB8(v40);
  }

  else
  {
    sub_769DD0();
    v27 = v30;
    (*(v38 + 8))(v13, v39);
    (*(v22 + 8))(v25, v37);
  }

  return v27;
}

uint64_t sub_385908(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = a3;
  v42 = a2;
  v4 = sub_BD88(&qword_9440C8, &qword_783AB8);
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v48 = v39 - v5;
  v6 = sub_BD88(&unk_951310, &qword_781F50);
  __chkstk_darwin(v6 - 8);
  v46 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v39 - v9;
  __chkstk_darwin(v11);
  v13 = v39 - v12;
  __chkstk_darwin(v14);
  v16 = v39 - v15;
  __chkstk_darwin(v17);
  v19 = v39 - v18;
  v49 = sub_765EE0();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_BD88(&unk_944D90, &qword_783300);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v39 - v24;
  v26 = sub_BD88(&qword_944D88, &unk_784820);
  v43 = *(v26 - 8);
  v44 = v26;
  __chkstk_darwin(v26);
  v28 = v39 - v27;
  sub_134D8(a1, v53);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_761C30();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v23 + 16))(v25, v42, v22);
    sub_768FA0();
    sub_768B30();
    v30 = v21;
    v41 = v21;
    v31 = v52;
    sub_761C20();
    v40 = v19;
    sub_761BE0();
    sub_761C10();
    sub_761C00();
    sub_761BF0();
    v32 = v46;
    v33 = sub_761BD0();
    v42 = v39;
    __chkstk_darwin(v33);
    v39[1] = v39;
    v39[-8] = v30;
    v39[-7] = v31;
    v39[-6] = v45;
    v39[-5] = v19;
    v39[-4] = v16;
    v39[-3] = v13;
    v39[-2] = v10;
    v39[-1] = v32;
    __chkstk_darwin(v34);
    v39[-4] = sub_D3794;
    v39[-3] = v35;
    v39[-2] = v36;
    v39[-1] = v31;
    sub_BD88(&qword_9440D0, &unk_7A8880);
    sub_D37B4();
    v37 = v48;
    sub_767F90();
    sub_767FF0();
    v38 = v51;
    v53[3] = v51;
    v53[4] = sub_16194(&unk_951370, &qword_9440C8, &qword_783AB8, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_B1B4(v53);
    sub_767F80();
    (*(v50 + 8))(v37, v38);
    sub_769AE0();

    (*(v43 + 8))(v28, v44);
    sub_10A2C(v32, &unk_951310, &qword_781F50);
    sub_10A2C(v10, &unk_951310, &qword_781F50);
    sub_10A2C(v13, &unk_951310, &qword_781F50);
    sub_10A2C(v16, &unk_951310, &qword_781F50);
    sub_10A2C(v40, &unk_951310, &qword_781F50);
    return (*(v47 + 8))(v41, v49);
  }

  return result;
}

uint64_t sub_385EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v20 = a6;
  v9 = sub_BD88(&unk_944D90, &qword_783300);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_BD88(&qword_944D88, &unk_784820);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_134D8(a1, v22);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_758700();
  result = swift_dynamicCast();
  if (result)
  {
    v18 = v21;
    (*(v10 + 16))(v12, a2, v9);
    sub_768FA0();
    sub_768B30();
    v20(v18, a3);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_386104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t))
{
  v22 = a7;
  v11 = sub_BD88(&unk_944D90, &qword_783300);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v23 - v13 + 8;
  v15 = sub_BD88(&qword_944D88, &unk_784820);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v23 - v17 + 8;
  sub_134D8(a1, v23);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_7587A0();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v12 + 16))(v14, a2, v11);
    sub_768FA0();
    sub_768B30();
    sub_75B370();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      a6(v20, a3);
    }

    else
    {
      sub_765860();
      v21 = swift_dynamicCastClass();
      if (v21)
      {
        v22(v21, a3);
      }
    }

    return (*(v16 + 8))(v18, v15);
  }

  return result;
}

uint64_t sub_38634C(uint64_t a1, uint64_t a2)
{
  v5 = sub_BD88(&unk_944D90, &qword_783300);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - v7;
  v9 = sub_BD88(&qword_944D88, &unk_784820);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - v11;
  sub_134D8(a1, v25);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75CC50();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v6 + 16))(v8, a2, v5);
    sub_768FA0();
    sub_768B30();
    v14 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_titleLabel];
    v15 = v2;
    sub_75CC20();
    v16 = sub_769210();

    [v14 setText:v16];

    sub_75CC40();
    v17 = sub_75CC10();
    v18 = sub_759CF0();
    sub_22A974(v18, sub_30AE4);
    v20 = v19;

    v21 = sub_759CE0();
    v24[0] = v9;
    sub_4ED3B8(v21, v17, v20);

    v22 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_iconImageView];
    v23 = sub_75CC00();
    [v22 setTintColor:v23];

    *&v15[OBJC_IVAR____TtC18ASMessagesProvider21ProductCapabilityCell_icon] = sub_75CC30();

    [v15 setNeedsLayout];

    return (*(v10 + 8))(v12, v24[0]);
  }

  return result;
}

uint64_t sub_386688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_BD88(&unk_944D90, &qword_783300);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - v8;
  v10 = sub_BD88(&qword_944D88, &unk_784820);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v18 - v12;
  sub_134D8(a1, v20);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_75A270();
  result = swift_dynamicCast();
  if (result)
  {
    v18[1] = v3;
    v15 = v19;
    (*(v7 + 16))(v9, a2, v6);
    sub_768FA0();
    sub_768B30();
    sub_BD88(&unk_943590, &unk_784940);
    sub_768900();
    sub_768ED0();
    v19 = v15;
    sub_758C30();

    v16 = v20[0];
    if ((~v20[0] & 0xF000000000000007) != 0)
    {
      v17 = v20[1];
    }

    else
    {

      v17 = 0;
      v16 = v15;
    }

    sub_4408AC(v16, v17);
    sub_B3204(v16, v17);

    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_386914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v26 = a2;
  v5 = sub_764A60();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_944D90, &qword_783300);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - v11;
  v13 = sub_BD88(&qword_944D88, &unk_784820);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  sub_134D8(a1, v29);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_764890();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v10 + 16))(v12, v26, v9);
    sub_768FA0();
    sub_768B30();
    sub_764870();
    if (v18)
    {
      v19 = sub_769210();
    }

    else
    {
      v19 = 0;
    }

    v20 = v28;
    [v28 setAccessibilityLabel:v19];

    sub_764A20();
    sub_38CEC0(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
    v21 = sub_76A520();
    (*(v6 + 8))(v8, v5);
    if (v21)
    {
      v22 = sub_764880();
      v23 = &v20[OBJC_IVAR____TtC18ASMessagesProvider23BrickCollectionViewCell_shortDescriptionLabelText];
      *v23 = v22;
      v23[1] = v24;

      sub_359B6C();
    }

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_386C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a2;
  v7 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - v8;
  v10 = sub_766690();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_944D90, &qword_783300);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v47 - v16;
  v18 = sub_BD88(&qword_944D88, &unk_784820);
  v50 = *(v18 - 8);
  v51 = v18;
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  sub_134D8(a1, v53);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_7648E0();
  result = swift_dynamicCast();
  if (result)
  {
    v48 = a5;
    (*(v15 + 16))(v17, v49, v14);
    sub_768FA0();
    sub_768B30();
    v22 = v52;
    v23 = *&v52[OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_quoteView];
    v24 = sub_7648B0();
    sub_3A39A4(v24, v25);
    v26 = sub_7648C0();
    sub_3A4118(v26, v27);
    v23[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_isFullWidthArtwork] = sub_7648A0() & 1;
    sub_3A4508();
    if (sub_7648D0())
    {
      sub_765260();
      sub_765260();
      sub_7666A0();
      (*(v11 + 16))(v9, v13, v10);
      (*(v11 + 56))(v9, 0, 1, v10);
      v28 = OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkAspectRatio;
      swift_beginAccess();
      sub_B33C8(v9, &v23[v28], &unk_948720, &unk_784970);
      swift_endAccess();
      [*&v23[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkView] setHidden:0];
      [v23 setNeedsLayout];
      v29 = [v22 contentView];
      sub_BE70(0, &qword_93E550, UIView_ptr);
      sub_75D650();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v54.origin.x = v31;
      v54.origin.y = v33;
      v54.size.width = v35;
      v54.size.height = v37;
      Width = CGRectGetWidth(v54);
      sub_766660();
      v40 = v39;

      (*(v11 + 8))(v13, v10);
      v41 = &v22[OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_preferredArtworkSize];
      *v41 = Width;
      *(v41 + 1) = v40;
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
      v42 = OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkAspectRatio;
      swift_beginAccess();
      sub_B33C8(v9, &v23[v42], &unk_948720, &unk_784970);
      swift_endAccess();
      [*&v23[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkView] setHidden:1];
      [v23 setNeedsLayout];
      v43 = &v22[OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_preferredArtworkSize];
      *v43 = 0;
      *(v43 + 1) = 0;
    }

    v44 = v48;
    [v48 pageMarginInsets];
    v46 = v45;
    [v44 pageMarginInsets];
    [v23 setLayoutMargins:{0.0, v46, 0.0}];

    return (*(v50 + 8))(v20, v51);
  }

  return result;
}

uint64_t sub_3871F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_BD88(&unk_944D90, &qword_783300);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-v9 - 8];
  v11 = sub_BD88(&qword_944D88, &unk_784820);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18[-v13 - 8];
  sub_134D8(a1, v18);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_758700();
  result = swift_dynamicCast();
  if (result)
  {
    v16 = v17;
    (*(v8 + 16))(v10, a2, v7);
    sub_768FA0();
    sub_768B30();
    sub_650D38(v16, a3);
    [v3 setNeedsLayout];

    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_387418(uint64_t a1, uint64_t a2)
{
  v5 = sub_BD88(&unk_944D90, &qword_783300);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-v7 - 8];
  v9 = sub_BD88(&qword_944D88, &unk_784820);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20[-v11 - 8];
  sub_134D8(a1, v20);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_7654E0();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v6 + 16))(v8, a2, v5);
    sub_768FA0();
    sub_768B30();
    v14 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider26FootnoteCollectionViewCell_footnoteView];
    v15 = sub_7654C0();
    v16 = v14[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_hasChevron];
    v14[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_hasChevron] = (v15 & 2) != 0;
    sub_14F5D4(v16);
    v14[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLightensOnHighlight] = (sub_7654C0() & 4) != 0;
    v17 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLabel];
    sub_7654D0();
    v18 = sub_769210();

    [v17 setText:v18];

    [v14 setNeedsLayout];
    [v2 setNeedsLayout];

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_3876BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v19[0] = a5;
  v9 = sub_BD88(&unk_944D90, &qword_783300);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - v11;
  v13 = sub_BD88(&qword_950670, &qword_798050);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v19 - v15;
  sub_134D8(a1, v20);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_765940();
  result = swift_dynamicCast();
  if (result)
  {
    v18 = v19[2];
    (*(v10 + 16))(v12, a2, v9);
    sub_768B30();
    sub_3B1A58(v18, v16, a3, a4, v19[0]);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_3878C8(uint64_t a1, char *a2, uint64_t a3)
{
  v106 = a3;
  v104 = a2;
  v5 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v5 - 8);
  v92 = v85 - v6;
  v7 = sub_BD88(&unk_94AC40, qword_78D7F0);
  __chkstk_darwin(v7 - 8);
  v94 = v85 - v8;
  v9 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v9 - 8);
  v93 = v85 - v10;
  v11 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v11 - 8);
  v91 = v85 - v12;
  v13 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v13 - 8);
  v90 = v85 - v14;
  v15 = sub_75CA40();
  __chkstk_darwin(v15 - 8);
  v89 = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_7593D0();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&unk_948710, &qword_77FF90);
  __chkstk_darwin(v18 - 8);
  v99 = v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v98 = v85 - v21;
  v22 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v22 - 8);
  v97 = v85 - v23;
  v24 = sub_75A6B0();
  __chkstk_darwin(v24 - 8);
  v96 = v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v95 = v85 - v27;
  v28 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v28 - 8);
  v30 = v85 - v29;
  v31 = sub_75A6E0();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = v85 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_75DC30();
  v102 = *(v35 - 8);
  v103 = v35;
  __chkstk_darwin(v35);
  v105 = v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_BD88(&unk_944D90, &qword_783300);
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = v85 - v39;
  v41 = sub_BD88(&qword_944D88, &unk_784820);
  v100 = *(v41 - 8);
  v101 = v41;
  __chkstk_darwin(v41);
  v43 = v85 - v42;
  sub_134D8(a1, v108);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_765BB0();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v85[0] = v3;
  v45 = v107;
  (*(v38 + 16))(v40, v104, v37);
  sub_768FA0();
  v104 = v43;
  sub_768B30();
  v85[1] = v45;
  sub_765B90();
  (*(v32 + 104))(v34, enum case for VideoFillMode.scaleAspectFill(_:), v31);
  sub_764BC0();
  sub_765260();
  sub_7666A0();

  v46 = sub_766690();
  (*(*(v46 - 8) + 56))(v30, 0, 1, v46);
  sub_764B60();
  sub_764BA0();
  sub_764B70();
  sub_764B50();
  sub_764BB0();
  v47 = v105;
  sub_75DC10();
  sub_75C360();
  sub_768880();
  v48 = v108[0];
  sub_764B40();
  v49 = v97;
  sub_764BD0();
  v50 = sub_7570A0();
  (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
  v51 = v98;
  sub_764B90();
  v52 = v99;
  sub_764B80();
  type metadata accessor for VideoView(0);
  sub_38CEC0(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
  v96 = v48;
  v53 = sub_75C340();
  sub_10A2C(v52, &unk_948710, &qword_77FF90);
  sub_10A2C(v51, &unk_948710, &qword_77FF90);
  sub_10A2C(v49, &unk_93FD30, qword_77F240);
  sub_10A2C(v108, &unk_9443A0, &unk_77E240);
  v54 = *(v85[0] + OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_videoCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v56 = Strong;
    v57 = [Strong superview];
    if (v57)
    {
      v58 = v57;
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v59 = v54;
      v60 = sub_76A1C0();

      if ((v60 & 1) == 0)
      {
        goto LABEL_8;
      }

      v61 = swift_unknownObjectWeakLoadStrong();
      if (!v61)
      {
        goto LABEL_8;
      }

      v56 = v61;
      [v61 removeFromSuperview];
    }
  }

LABEL_8:
  swift_unknownObjectWeakAssign();
  v62 = swift_unknownObjectWeakLoadStrong();
  if (v62)
  {
    v63 = v62;
    v64 = v87;
    v65 = v86;
    v66 = v88;
    (*(v87 + 104))(v86, enum case for CornerStyle.continuous(_:), v88);
    sub_75CCD0();
    (*(v64 + 8))(v65, v66);
    [v54 addSubview:v63];
    [v54 sendSubviewToBack:v63];
    [v54 setNeedsLayout];
  }

  v67 = swift_unknownObjectWeakLoadStrong();
  if (v67)
  {
    v67[qword_940598] = 1;
  }

  v68 = *&v54[OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_overlayView];
  v69 = sub_765BA0();
  if (v69)
  {
    v70 = v69;
    [v68 setHidden:0];
    v71 = v89;
    sub_765B80();
    sub_6B0E70(v71);
    v72 = *&v54[OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_lockupView];
    v73 = sub_BD88(&unk_948740, &unk_784920);
    v74 = v90;
    (*(*(v73 - 8) + 56))(v90, 1, 1, v73);
    v75 = sub_758C70();
    v76 = v91;
    (*(*(v75 - 8) + 56))(v91, 1, 1, v75);
    v77 = sub_75BD30();
    v78 = v93;
    (*(*(v77 - 8) + 56))(v93, 1, 1, v77);
    v79 = sub_BD88(&unk_9457F0, qword_783FD0);
    v80 = v94;
    (*(*(v79 - 8) + 56))(v94, 1, 1, v79);
    v81 = sub_765870();
    v82 = v92;
    (*(*(v81 - 8) + 56))(v92, 1, 1, v81);
    v83 = v72;
    sub_4A18A4(v70, v83, v74, v106, 0, 0, v76, v78, v82, v80);
    sub_10A2C(v82, &unk_9457D0, &unk_785630);
    v83[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v83 setNeedsLayout];

    sub_10A2C(v80, &unk_94AC40, qword_78D7F0);
    sub_10A2C(v78, &unk_9457E0, &qword_785640);
    sub_10A2C(v76, &unk_94A780, &unk_788DC0);
    sub_10A2C(v74, &unk_948730, &qword_788DD0);
    (*(v102 + 8))(v105, v103);
  }

  else
  {
    v84 = v68;
    [v84 setHidden:1];

    (*(v102 + 8))(v47, v103);
  }

  return (*(v100 + 8))(v104, v101);
}