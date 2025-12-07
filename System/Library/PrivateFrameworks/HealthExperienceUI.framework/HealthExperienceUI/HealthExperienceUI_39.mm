uint64_t PDFHStack.Config.SeparatorConfig.init(color:lineWidth:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

__n128 PDFHStack.Config.init(columnSpacing:separator:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

id PDFHStack.config.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 8);
  v2 = *(v1 + 16);
  *(a1 + 8) = v2;
  return v2;
}

uint64_t PDFHStack.init(config:_:)@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  result = a2();
  *a3 = result;
  a3[1] = v4;
  a3[2] = v5;
  a3[3] = v6;
  return result;
}

void PDFHStack.render(context:document:)(UIGraphicsPDFRendererContext a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(a2 + 96);

  v46 = v5;
  if (v9 == 1)
  {
    v46 = sub_1BA326634(v5);
  }

  *&v51 = v5;
  *(&v51 + 1) = v6;
  v44 = v8;
  v45 = v7;
  *&v52 = v7;
  *(&v52 + 1) = v8;
  PDFHStack.boundingRectForContent(in:)(a2);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v54.origin.x = PDFBuilder.Document.drawingContext.getter();
  v61.origin.x = v11;
  v61.origin.y = v13;
  v61.size.width = v15;
  v61.size.height = v17;
  if (!CGRectContainsRect(v54, v61))
  {
    PDFBuilder.Document.moveToNextDrawableRegion(in:)(a1);
  }

  v18 = 0;
  v19 = v46[2];
  v20 = 0.0;
  while (1)
  {
    v21 = 0uLL;
    v22 = v19;
    v23 = 0uLL;
    v24 = 0uLL;
    if (v18 != v19)
    {
      if (v18 >= v46[2])
      {
        __break(1u);
        return;
      }

      v22 = v18 + 1;
      *&v48 = v18;
      sub_1B9F0A534(&v46[5 * v18 + 4], &v48 + 8);
      v21 = v48;
      v23 = v49;
      v24 = v50;
    }

    v51 = v21;
    v52 = v23;
    v53 = v24;
    if (!v24)
    {
      break;
    }

    v47 = v21;
    sub_1B9F25598((&v51 + 8), &v48);
    type metadata accessor for PDFBuilder.Document();
    swift_allocObject();
    v25 = sub_1BA20F244(a2);
    v26 = (CGRectGetWidth(*(a2 + 168)) - v6 * (v5[2] + -1.0)) / v5[2];
    v55.origin.x = PDFBuilder.Document.drawingContext.getter();
    v27 = CGRectGetMinX(v55) + v6 * v47 + v26 * v47;
    MinY = CGRectGetMinY(*(v25 + 168));
    Height = CGRectGetHeight(*(v25 + 168));
    *(v25 + 168) = v27;
    *(v25 + 176) = MinY;
    *(v25 + 184) = v26;
    *(v25 + 192) = Height;
    *(v25 + 200) = 0;
    v30 = *(&v49 + 1);
    v31 = v50;
    __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
    (*(v31 + 16))(a1.super.super.isa, v25, v30, v31);
    v32 = *(&v49 + 1);
    v33 = v50;
    __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
    v56.origin.x = (*(v33 + 24))(v25, v32, v33);
    v34 = CGRectGetHeight(v56);

    if (v20 < v34)
    {
      v20 = v34;
    }

    __swift_destroy_boxed_opaque_existential_1(&v48);
    v18 = v22;
  }

  if (v45)
  {
    *&v51 = v5;
    *(&v51 + 1) = v6;
    *&v52 = v45;
    *(&v52 + 1) = v44;
    *&v48 = v45;
    *(&v48 + 1) = v44;
    v35 = v45;
    sub_1BA327210(&v48, a1.super.super.isa, a2, v20);
  }

  v36 = *(a2 + 168);
  v37 = *(a2 + 176);
  v38 = *(a2 + 184);
  v39 = *(a2 + 192);
  v57.origin.x = v36;
  v57.origin.y = v37;
  v57.size.width = v38;
  v57.size.height = v39;
  v40 = CGRectGetMinX(v57) + 0.0;
  v58.origin.x = v36;
  v58.origin.y = v37;
  v58.size.width = v38;
  v58.size.height = v39;
  v41 = v20 + CGRectGetMinY(v58);
  v59.origin.x = v36;
  v59.origin.y = v37;
  v59.size.width = v38;
  v59.size.height = v39;
  Width = CGRectGetWidth(v59);
  v60.origin.x = v36;
  v60.origin.y = v37;
  v60.size.width = v38;
  v60.size.height = v39;
  v43 = CGRectGetHeight(v60);
  *(a2 + 168) = v40;
  *(a2 + 176) = v41;
  *(a2 + 184) = Width;
  *(a2 + 192) = v43 - v20;
  *(a2 + 200) = 0;
}

void PDFHStack.boundingRectForContent(in:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(a1 + 96);

  v6 = v3;
  if (v5 == 1)
  {
    v6 = sub_1BA326634(v3);
  }

  v7 = 0;
  v8 = v6[2];
  v9 = 0.0;
  while (1)
  {
    v10 = 0uLL;
    v11 = v8;
    v12 = 0uLL;
    v13 = 0uLL;
    if (v7 == v8)
    {
      goto LABEL_7;
    }

    if (v7 >= v6[2])
    {
      break;
    }

    v11 = v7 + 1;
    *&v23 = v7;
    sub_1B9F0A534(&v6[5 * v7 + 4], &v23 + 8);
    v10 = v23;
    v12 = v24;
    v13 = v25;
LABEL_7:
    v26[0] = v10;
    v26[1] = v12;
    v26[2] = v13;
    if (!v13)
    {

      PDFBuilder.Document.drawingContext.getter();
      CGRectGetWidth(*(a1 + 168));
      return;
    }

    v22 = v10;
    sub_1B9F25598((v26 + 8), &v23);
    type metadata accessor for PDFBuilder.Document();
    swift_allocObject();
    v14 = sub_1BA20F244(a1);
    v27.origin.x = PDFBuilder.Document.drawingContext.getter();
    v15 = (CGRectGetWidth(v27) - v4 * (v3[2] + -1.0)) / v3[2];
    v28.origin.x = PDFBuilder.Document.drawingContext.getter();
    v16 = CGRectGetMinX(v28) + v4 * v22 + v15 * v22;
    MinY = CGRectGetMinY(*(v14 + 168));
    Height = CGRectGetHeight(*(v14 + 168));
    *(v14 + 168) = v16;
    *(v14 + 176) = MinY;
    *(v14 + 184) = v15;
    *(v14 + 192) = Height;
    *(v14 + 200) = 0;
    v19 = *(&v24 + 1);
    v20 = v25;
    __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
    v29.origin.x = (*(v20 + 24))(v14, v19, v20);
    v21 = CGRectGetHeight(v29);

    if (v9 < v21)
    {
      v9 = v21;
    }

    __swift_destroy_boxed_opaque_existential_1(&v23);
    v7 = v11;
  }

  __break(1u);
}

uint64_t PDFHStack.documentForColumn(_:in:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  type metadata accessor for PDFBuilder.Document();
  swift_allocObject();
  v7 = sub_1BA20F244(a2);
  v13.origin.x = PDFBuilder.Document.drawingContext.getter();
  v8 = (CGRectGetWidth(v13) - v6 * (*(*&v5 + 16) + -1.0)) / *(*&v5 + 16);
  v14.origin.x = PDFBuilder.Document.drawingContext.getter();
  v9 = CGRectGetMinX(v14) + v6 * a1 + v8 * a1;
  MinY = CGRectGetMinY(*(v7 + 168));
  Height = CGRectGetHeight(*(v7 + 168));
  *(v7 + 168) = v9;
  *(v7 + 176) = MinY;
  *(v7 + 184) = v8;
  *(v7 + 192) = Height;
  *(v7 + 200) = 0;
  return v7;
}

void sub_1BA327210(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  color = *a1;
  v7 = *v4;
  v45 = *(v4 + 8);
  width = *(a1 + 8);
  v8 = *(a3 + 96);

  v9 = v7;
  if (v8 == 1)
  {
    v9 = sub_1BA326634(v7);
  }

  if (v9[2] < 2uLL)
  {

    return;
  }

  v10 = [a2 CGContext];
  sub_1BA1F36C0(1uLL, v9);
  v43 = v11;
  v13 = v12;
  v14 = 0;
  v16 = v15 >> 1;
  v44 = v12;
  while (1)
  {
    v17 = 0uLL;
    if (v13 == v16)
    {
      v13 = v16;
      v18 = 0uLL;
      v19 = 0uLL;
      goto LABEL_11;
    }

    if (v13 < v44 || v13 >= v16)
    {
      break;
    }

    *&v50 = v14;
    sub_1B9F0A534(v43 + 40 * v13, &v50 + 8);
    if (__OFADD__(v14++, 1))
    {
      goto LABEL_20;
    }

    ++v13;
    v17 = v50;
    v18 = v51;
    v19 = v52;
LABEL_11:
    v53[0] = v17;
    v53[1] = v18;
    v53[2] = v19;
    if (!v19)
    {

      swift_unknownObjectRelease();
      return;
    }

    v49 = v17;
    sub_1B9F25598((v53 + 8), &v50);
    type metadata accessor for PDFBuilder.Document();
    swift_allocObject();
    v21 = sub_1BA20F244(a3);
    v55.origin.x = PDFBuilder.Document.drawingContext.getter();
    v22 = (CGRectGetWidth(v55) - v45 * (v7[2] + -1.0)) / v7[2];
    v56.origin.x = PDFBuilder.Document.drawingContext.getter();
    v23 = CGRectGetMinX(v56) + v45 * v49 + v22 * v49;
    MinY = CGRectGetMinY(*(v21 + 168));
    Height = CGRectGetHeight(*(v21 + 168));
    *(v21 + 168) = v23;
    *(v21 + 176) = MinY;
    *(v21 + 184) = v22;
    *(v21 + 192) = Height;
    *(v21 + 200) = 0;
    v26 = (CGRectGetWidth(*(a3 + 168)) - v45 * (v7[2] + -1.0)) / v7[2];
    v28 = *(&v51 + 1);
    v27 = v52;
    __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
    v57.origin.x = (*(v27 + 24))(v21, v28, v27);
    v29 = CGRectGetWidth(v57);
    v30 = v26 - v29;
    if (v26 - v29 <= 0.0)
    {
      v30 = 0.0;
    }

    v31 = v29 + (v45 + v30) * 0.5;
    CGContextSaveGState(v10);
    v32 = *(v21 + 168);
    v33 = *(v21 + 176);
    v34 = *(v21 + 184);
    v35 = *(v21 + 192);
    v58.origin.x = v32;
    v58.origin.y = v33;
    v58.size.width = v34;
    v58.size.height = v35;
    v36 = CGRectGetMinX(v58) + 0.0;
    v59.origin.x = v32;
    v59.origin.y = v33;
    v59.size.width = v34;
    v59.size.height = v35;
    v37 = CGRectGetMinY(v59) + 0.0;
    v60.origin.x = v32;
    v60.origin.y = v33;
    v60.size.width = v34;
    v60.size.height = v35;
    v38 = CGRectGetWidth(v60);
    v61.origin.x = v32;
    v61.origin.y = v33;
    v61.size.width = v34;
    v61.size.height = v35;
    v39 = CGRectGetHeight(v61);
    *(v21 + 168) = v36;
    *(v21 + 176) = v37;
    *(v21 + 184) = v38;
    *(v21 + 192) = v39;
    *(v21 + 200) = 0;
    CGContextSetLineWidth(v10, width);
    sub_1BA069EC4(0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1BA4B5460;
    v41 = *(v21 + 176);
    v42 = v31 + *(v21 + 168);
    *(v40 + 32) = v42;
    *(v40 + 40) = v41;
    *(v40 + 48) = v42;
    *(v40 + 56) = v41 + a4;
    sub_1BA4A6F08();

    CGContextSetStrokeColorWithColor(v10, color);
    CGContextStrokePath(v10);
    CGContextRestoreGState(v10);

    __swift_destroy_boxed_opaque_existential_1(&v50);
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

CGFloat PDFHStack.columnWidth(in:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4.origin.x = PDFBuilder.Document.drawingContext.getter();
  return (CGRectGetWidth(v4) - v2 * (*(*&v1 + 16) + -1.0)) / *(*&v1 + 16);
}

uint64_t sub_1BA3276F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_1BA327750(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

char *DataTypeDetailViewController.init(dataSource:context:viewModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = sub_1BA32AC20(a1, a2, a3);

  return v3;
}

uint64_t DataTypeDetailViewController.init(dataSource:context:hkType:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1BA32A8A0(a1, a2, a3);
  v5 = v4;

  return v5;
}

uint64_t sub_1BA32786C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  sub_1B9F0A534(v1 + v2, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = (*(v4 + 56))(v3, v4);
  [v1 setUserActivity_];

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void sub_1BA327918()
{
  v1 = v0;
  sub_1B9F36938();
  v2 = [v0 collectionView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  sub_1B9FF57C0();

  v4 = [v1 collectionView];
  if (!v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  sub_1B9F437FC();

  v6 = [v1 collectionView];
  if (!v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  sub_1B9FF5688();

  v8 = [v1 collectionView];
  if (!v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v8;
  sub_1B9FF5CD4();

  v10 = [v1 collectionView];
  if (!v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v10;
  sub_1B9FF56F0();

  v12 = [v1 collectionView];
  if (!v12)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v13 = v12;
  sub_1B9FF5654();
}

uint64_t sub_1BA327A54@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  return sub_1BA114D9C(v1 + v3, a1);
}

id sub_1BA327AAC()
{
  v1 = objc_opt_self();
  v2 = v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  v3 = [v1 sharedInstanceForHealthStore_];

  return v3;
}

id sub_1BA327B28()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  v2 = *(v1 + 40);

  return v2;
}

uint64_t sub_1BA327B80@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  return sub_1B9F0A534(v3 + 64, a1);
}

void *sub_1BA327BD4()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  v2 = *(v1 + 104);
  v3 = v2;
  return v2;
}

void sub_1BA327C24(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  v4 = *(v3 + 104);
  *(v3 + 104) = a1;
}

uint64_t (*sub_1BA327C78(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 104);
  *(v4 + 24) = v7;
  v8 = v7;
  return sub_1BA327D18;
}

uint64_t sub_1BA327D6C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_chartImageProvider;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA327DD8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_chartImageProvider;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA30AD60;
}

uint64_t sub_1BA327E78@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  return sub_1B9F0A534(v1 + v3, a1);
}

uint64_t sub_1BA327ED0(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));
  sub_1B9F1134C(a1, v1 + v3);
  return swift_endAccess();
}

double sub_1BA327F98()
{
  swift_beginAccess();

  return result;
}

double sub_1BA327FE0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_cancellables;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void *sub_1BA328098()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_restorationUserActivity;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA3280E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_restorationUserActivity;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BA32819C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___personalizedFeedTrainer;
  if (*&v0[OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___personalizedFeedTrainer])
  {
    v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___personalizedFeedTrainer];
  }

  else
  {
    type metadata accessor for PersonalizedFeedTrainer();
    v3 = swift_allocObject();
    v4 = v0;
    v2 = sub_1BA32AAEC(v4, v3, 2.5, 0.5, 1.2);

    *&v0[v1] = v2;
  }

  return v2;
}

double sub_1BA32823C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___personalizedFeedTrainer) = a1;

  return result;
}

double (*sub_1BA328254(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1BA32819C();
  return sub_1BA32829C;
}

double sub_1BA32829C(uint64_t *a1)
{
  *(a1[1] + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___personalizedFeedTrainer) = *a1;

  return result;
}

uint64_t sub_1BA3282B4()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  return sub_1BA4A1318();
}

id sub_1BA328364()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___addDataButton;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___addDataButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___addDataButton);
  }

  else
  {
    v4 = sub_1BA1BFCB8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

double sub_1BA3283C4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  sub_1B9F0A534(v1 + v2, v20);
  v3 = v21;
  v4 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_1(v20);
  v8 = v1 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  sub_1BA114D9C(v8, v20);
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v9 = sub_1BA4A1B68();
  v10 = *(v8 + 40);
  v11 = [v10 profileIdentifier];
  v12 = *(v8 + 48);
  if (v12 == 1)
  {
    v13 = [v1 navigationItem];
    v14 = sub_1BA4A6758();
    [v13 setTitle_];

    sub_1BA114E30(v20);
  }

  else
  {
    sub_1BA37C4A8(v9, v10, v11, v12, v5, v7);

    sub_1BA114E30(v20);
    swift_beginAccess();
    sub_1BA4A4D28();
    swift_endAccess();
  }

  v15 = [v1 navigationItem];
  [v15 setLargeTitleDisplayMode_];

  v16 = sub_1BA1BF3E4();
  if (v16 >> 62)
  {
    if (sub_1BA4A7CC8())
    {
      goto LABEL_6;
    }
  }

  else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:
    v17 = [v1 navigationItem];
    sub_1B9F0ADF8(0, &qword_1EDC6B600, 0x1E69DC708);
    v18 = sub_1BA4A6AE8();

    [v17 setRightBarButtonItems_];

    return result;
  }

  return result;
}

uint64_t sub_1BA3286A8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  sub_1B9F0A534(v0 + v1, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 88))(v0, v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_1BA32873C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  sub_1B9F0A534(v2 + v4, v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 96))(v2, a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

void sub_1BA3287D8()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    sub_1BA243838(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1BA4B9FD0;
    strcpy((v3 + 32), "DataTypeDetail");
    *(v3 + 47) = -18;
    v4 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
    swift_beginAccess();
    sub_1B9F0A534(v0 + v4, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    *(v3 + 48) = (*(v6 + 16))(v5, v6);
    *(v3 + 56) = v7;
    strcpy((v3 + 64), "CollectionView");
    *(v3 + 79) = -18;
    __swift_destroy_boxed_opaque_existential_1(v10);
    v8 = sub_1BA4A6AE8();

    v9 = HKUIJoinStringsForAutomationIdentifier();

    [v2 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1BA328974()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  sub_1B9F0A534(v1 + v2, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  LOBYTE(v2) = (*(v4 + 32))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v6);
  result = 0;
  if (v2)
  {
    return sub_1B9F0F724();
  }

  return result;
}

uint64_t sub_1BA328A18(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = MEMORY[0x1E69695A8];
  sub_1BA32AFE0(0, &unk_1EDC6AE50, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v39[-v10];
  v12 = sub_1BA4A3EA8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v39[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA4A3E28();
  sub_1BA32AF74(a1, v11, &unk_1EDC6AE50, v3);
  v17 = v1;
  v18 = sub_1BA4A3E88();
  v19 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v46 = v41;
    *v20 = 136446722;
    v21 = sub_1BA4A85D8();
    v40 = v19;
    v23 = sub_1B9F0B82C(v21, v22, &v46);
    ObjectType = v12;
    v24 = v23;

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    v25 = MEMORY[0x1E69695A8];
    sub_1BA32AF74(v11, v7, &unk_1EDC6AE50, MEMORY[0x1E69695A8]);
    v26 = sub_1BA4A6808();
    v28 = v27;
    sub_1BA32B098(v11, &unk_1EDC6AE50, v25);
    v29 = sub_1B9F0B82C(v26, v28, &v46);

    *(v20 + 14) = v29;
    *(v20 + 22) = 2080;
    v30 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
    swift_beginAccess();
    sub_1B9F0A534(v17 + v30, v43);
    v31 = v44;
    v32 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    v33 = (*(v32 + 8))(v31, v32);
    v35 = v34;
    __swift_destroy_boxed_opaque_existential_1(v43);
    v36 = sub_1B9F0B82C(v33, v35, &v46);

    *(v20 + 24) = v36;
    _os_log_impl(&dword_1B9F07000, v18, v40, "[%{public}s] Unexpected request to navigate to sample details with UUID: %{public}s for view model: %s", v20, 0x20u);
    v37 = v41;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v37, -1, -1);
    MEMORY[0x1BFAF43A0](v20, -1, -1);

    return (*(v13 + 8))(v16, ObjectType);
  }

  else
  {

    sub_1BA32B098(v11, &unk_1EDC6AE50, MEMORY[0x1E69695A8]);
    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_1BA328DE4(uint64_t a1, uint64_t *a2)
{
  sub_1BA114D9C(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  sub_1BA32B860(v6, v3 + v4);
  return swift_endAccess();
}

void sub_1BA328E48(void **a1, void *a2)
{
  v2 = *a1;
  v3 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  v4 = *(v3 + 104);
  *(v3 + 104) = v2;
  v5 = v2;
}

uint64_t sub_1BA328EAC(uint64_t a1, uint64_t *a2)
{
  sub_1B9F0A534(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + v4));
  sub_1B9F1134C(v6, v3 + v4);
  return swift_endAccess();
}

double sub_1BA328F18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_cancellables;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

void sub_1BA328F80(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_restorationUserActivity;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

char *DataTypeDetailViewController.__allocating_init(dataSource:context:viewModel:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1BA32AC20(a1, a2, a3);

  return v8;
}

uint64_t DataTypeDetailViewController.__allocating_init(dataSource:context:hkType:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  sub_1BA32A8A0(a1, a2, a3);
  v9 = v8;

  return v9;
}

uint64_t DataTypeDetailViewController.__allocating_init(dataSource:context:measure:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1BA114D9C(a2, v16);
  sub_1B9F0A534(a3, v13);
  v15[3] = &type metadata for DataTypeDetailViewController.MeasureViewModel;
  v15[4] = &protocol witness table for DataTypeDetailViewController.MeasureViewModel;
  v7 = swift_allocObject();
  v15[0] = v7;
  *(v7 + 32) = 0;
  sub_1B9F0A534(v13, v7 + 40);
  __swift_project_boxed_opaque_existential_1(v13, v14);
  *(v7 + 16) = sub_1BA4A1A98();
  *(v7 + 24) = v8;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  *(v7 + 80) = sub_1BA4A1A98();
  *(v7 + 88) = v9;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  *(v7 + 96) = sub_1BA4A1A98();
  *(v7 + 104) = v10;
  __swift_destroy_boxed_opaque_existential_1(v13);
  v11 = (*(v3 + 592))(a1, v16, v15);
  __swift_destroy_boxed_opaque_existential_1(a3);
  sub_1BA114E30(a2);
  return v11;
}

id DataTypeDetailViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_1BA32927C()
{
  v1 = v0;
  sub_1BA3283C4();
  sub_1BA3287D8();
  v10.receiver = v0;
  v10.super_class = type metadata accessor for DataTypeDetailViewController();
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  v2 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  sub_1B9F0A534(v1 + v2, &v7);
  v3 = *(&v8 + 1);
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
  LOBYTE(v2) = (*(v4 + 72))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(&v7);
  if (v2)
  {
    sub_1B9F0ADF8(0, &qword_1EDC5E558, 0x1E69DCBA0);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x230))();
    v7 = 0u;
    v8 = 0u;
    v6 = MEMORY[0x1E69E7CC0];
    v5 = sub_1BA4A6F28();
    [v1 addKeyCommand_];
  }
}

uint64_t sub_1BA329460(char a1)
{
  v3 = sub_1BA4A4018();
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x168))(v10, v5);
  v6 = v10[0];
  sub_1BA4A71E8();
  v12 = v6;
  sub_1B9F3AEE8();
  sub_1BA4A4008();
  sub_1BA4A71F8();
  v7 = type metadata accessor for DataTypeDetailViewController();
  v11.receiver = v1;
  v11.super_class = v7;
  objc_msgSendSuper2(&v11, sel_viewIsAppearing_, a1 & 1);
  v8 = v1 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v8, *(v8 + 24));
  DataTypeDetailViewController.ViewModel.sendRoomEntryAnalyticsEvent()();
  return swift_endAccess();
}

uint64_t sub_1BA3296C8(void *a1, uint64_t a2, uint64_t a3, const char **a4, void (*a5)(char *))
{
  v9 = sub_1BA4A1728();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DataTypeDetailViewController();
  v18.receiver = a1;
  v18.super_class = v14;
  v15 = *a4;
  v16 = a1;
  objc_msgSendSuper2(&v18, v15, a3);
  sub_1BA32819C();
  sub_1BA4A1718();
  a5(v13);

  return (*(v10 + 8))(v13, v9);
}

id DataTypeDetailViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

void sub_1BA3299E4()
{
  sub_1BA114E30(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context);
  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_chartImageProvider);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel));

  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___addDataButton);
}

id DataTypeDetailViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DataTypeDetailViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1BA329BC4()
{
  v1 = *v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  v2 = *(v1 + 40);

  return v2;
}

id sub_1BA329C20()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = v1 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  v4 = [v2 sharedInstanceForHealthStore_];

  return v4;
}

void *sub_1BA329CA0()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_restorationUserActivity;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1BA329CF0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  return sub_1B9F0A534(v3 + 64, a1);
}

void *sub_1BA329D48()
{
  v1 = *v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  v2 = *(v1 + 104);
  v3 = v2;
  return v2;
}

void sub_1BA329D9C(uint64_t a1)
{
  v3 = *v1 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  v4 = *(v3 + 104);
  *(v3 + 104) = a1;
}

uint64_t (*sub_1BA329DF4(uint64_t *a1))()
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
  v5 = *v1;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  *(v3 + 32) = *v1;
  *(v3 + 40) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  v8 = *(v7 + 104);
  *(v4 + 24) = v8;
  v9 = v8;
  return sub_1BA32B8BC;
}

void sub_1BA329E98(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*a1 + 32) + *(*a1 + 40);
  v6 = *(v5 + 104);
  *(v5 + 104) = *v4;
  if (a2)
  {
    v7 = v3;

    v6 = *v4;
  }

  free(v2);
}

uint64_t sub_1BA329F54(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_chartImageProvider;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA329FC4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_chartImageProvider;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_1BA30D77C;
}

void DataTypeDetailViewController.updateChartOverlayVersionProvider(provider:)(void *a1)
{
  v2 = [a1 chartOverlayVersion];
  v3 = v1 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 104))(v2, v4, v5);
  swift_endAccess();
}

void sub_1BA32A148(void *a1)
{
  v2 = *v1;
  v3 = [a1 chartOverlayVersion];
  v4 = v2 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 104))(v3, v5, v6);
  swift_endAccess();
}

Swift::Void __swiftcall DataTypeDetailViewController.onInternalSettingsGesture()()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  sub_1B9F0A534(v0 + v1, v4);
  v2 = v5;
  v3 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v3 + 64))(v0, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t DataTypeDetailViewController.description.getter()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider;
  swift_beginAccess();
  sub_1BA32AF74(v1 + v7, &ObjectType, &qword_1EDC6BAD0, sub_1BA32B034);
  v8 = v25;
  sub_1BA32B098(&ObjectType, &qword_1EDC6BAD0, sub_1BA32B034);
  if (v8)
  {
    ObjectType = 0;
    v24 = 0xE000000000000000;
    sub_1BA4A7DF8();
    v22[0] = ObjectType;
    v22[1] = v24;
    MEMORY[0x1BFAF1350](60, 0xE100000000000000);
    ObjectType = swift_getObjectType();
    sub_1BA32B0F4();
    v9 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v9);

    MEMORY[0x1BFAF1350](32, 0xE100000000000000);
    ObjectType = v1;
    sub_1BA4A7FB8();
    MEMORY[0x1BFAF1350](0xD000000000000015, 0x80000001BA500430);
    sub_1BA32AF74(v1 + v7, &ObjectType, &qword_1EDC6BAD0, sub_1BA32B034);
    sub_1BA32AFE0(0, &qword_1EDC6BAD0, sub_1BA32B034);
    v10 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v10);

    MEMORY[0x1BFAF1350](0x6F5361746164202CLL, 0xEE00203A65637275);
    ObjectType = sub_1B9F23FB0();
    type metadata accessor for CompoundSectionedDataSource(0);
    sub_1BA32B138();
    v11 = sub_1BA4A82D8();
    v13 = v12;

    MEMORY[0x1BFAF1350](v11, v13);

    MEMORY[0x1BFAF1350](62, 0xE100000000000000);
    return v22[0];
  }

  else
  {
    ObjectType = swift_getObjectType();
    sub_1BA32B0F4();
    v14 = sub_1BA4A6808();
    v16 = v15;
    sub_1BA4A3E28();

    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      ObjectType = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_1B9F0B82C(v14, v16, &ObjectType);
      _os_log_impl(&dword_1B9F07000, v17, v18, "Found nil dataSource while trying to print description of %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  return v14;
}

Swift::Void __swiftcall DataTypeDetailViewController.ttrButtonTapped()()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  sub_1B9F0A534(v0 + v1, v4);
  v2 = v5;
  v3 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v3 + 40))(v0, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v4);
}

void sub_1BA32A8A0(uint64_t a1, uint64_t a2, void *a3)
{
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_chartImageProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_cancellables) = MEMORY[0x1E69E7CD0];
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_restorationUserActivity) = 0;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___personalizedFeedTrainer) = 0;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___addDataButton) = 0;
  sub_1BA114D9C(a2, v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context);
  sub_1BA114D9C(a2, v27);
  v30 = &type metadata for DataTypeDetailViewController.HealthKitTypeViewModel;
  v31 = &protocol witness table for DataTypeDetailViewController.HealthKitTypeViewModel;
  v6 = swift_allocObject();
  *&v29 = v6;
  v21[120] = 0;
  v23 = 0;
  v24 = 0;
  v7 = v28;
  v20[0] = v28;
  v20[1] = a3;
  sub_1BA114D9C(v27, v21);
  v22 = 0;
  v8 = a3;
  v9 = [v7 displayTypeController];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 displayTypeForObjectType_];

    if (v11)
    {
      v12 = [v11 localization];

      v13 = [v12 displayName];
      v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v16 = v15;

      v25 = v14;
      v26 = v16;
      sub_1BA114DF8(v20, v6 + 16);
      sub_1BA114E30(v27);
      sub_1BA114E84(v20);
      sub_1B9F1134C(&v29, v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel);

      v18 = CompoundDataSourceCollectionViewController.init(dataSource:)(v17);
      v19 = [v18 navigationItem];
      [v19 setLargeTitleDisplayMode_];

      sub_1BA114E30(a2);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BA32AAEC(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  *(a2 + 40) = 0;
  v9 = MEMORY[0x1E69E7CC8];
  *(a2 + 16) = MEMORY[0x1E69E7CC8];
  *(a2 + 24) = v9;
  *(a2 + 32) = MEMORY[0x1E69E7CC0];
  *(a2 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 56) = &protocol witness table for DataTypeDetailViewController;
  swift_unknownObjectWeakAssign();
  *(a2 + 64) = a3;
  *(a2 + 72) = a4;
  *(a2 + 80) = a5;
  v10 = objc_opt_self();
  v11 = [v10 defaultCenter];
  [v11 addObserver:a2 selector:sel_appDidBecomeActive name:*MEMORY[0x1E69DDAB0] object:0];

  v12 = [v10 defaultCenter];
  [v12 addObserver:a2 selector:sel_appDidEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];

  return a2;
}

char *sub_1BA32AC20(uint64_t a1, uint64_t a2, void *a3)
{
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_chartImageProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_cancellables) = MEMORY[0x1E69E7CD0];
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_restorationUserActivity) = 0;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___personalizedFeedTrainer) = 0;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___addDataButton) = 0;
  sub_1BA114D9C(a2, v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context);
  sub_1B9F0A534(a3, v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel);

  v7 = CompoundDataSourceCollectionViewController.init(dataSource:)(v6);
  v8 = [v7 navigationItem];
  [v8 setLargeTitleDisplayMode_];

  __swift_destroy_boxed_opaque_existential_1(a3);
  sub_1BA114E30(a2);
  return v7;
}

void _s18HealthExperienceUI28DataTypeDetailViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_chartImageProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_cancellables) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_restorationUserActivity) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___personalizedFeedTrainer) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___addDataButton) = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA32ADF4()
{
  v0 = sub_1BA4A1728();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA32819C();
  sub_1BA4A1718();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 56);
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 16))(ObjectType, v6);
    swift_unknownObjectRelease();
    sub_1B9F51E70(v8, v4);

    return (*(v1 + 8))(v4, v0);
  }

  else
  {
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA32AF74(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BA32AFE0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1BA32AFE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BA32B034()
{
  result = qword_1EDC6BAE0[0];
  if (!qword_1EDC6BAE0[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDC6BAE0);
  }

  return result;
}

uint64_t sub_1BA32B098(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA32AFE0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1BA32B0F4()
{
  result = qword_1EDC646D8;
  if (!qword_1EDC646D8)
  {
    type metadata accessor for DataTypeDetailViewController();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC646D8);
  }

  return result;
}

unint64_t sub_1BA32B138()
{
  result = qword_1EBBF09F0;
  if (!qword_1EBBF09F0)
  {
    type metadata accessor for CompoundSectionedDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF09F0);
  }

  return result;
}

void static PluginFeedItem.categoryItem(for:sourceProfile:)(_OWORD *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[1];
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = a1[2];
  sub_1BA4A0EE8();
  swift_allocObject();
  sub_1BA4A0ED8();
  sub_1BA32B9B8();
  v7 = sub_1BA4A0EC8();
  v9 = v8;

  if (!v3)
  {
    sub_1BA32BA0C(v10, a2, v7, v9, a3);
    sub_1B9F2BB4C(v7, v9);
  }
}

unint64_t sub_1BA32B9B8()
{
  result = qword_1EDC62AB0[0];
  if (!qword_1EDC62AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC62AB0);
  }

  return result;
}

void sub_1BA32BA0C(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a4;
  v64 = a3;
  v67 = a5;
  v69 = sub_1BA4A1C68();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v7);
  v62 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v70 = &v53 - v11;
  v12 = sub_1BA4A1F38();
  v66 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  *&v71[0] = 0;
  *(&v71[0] + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();

  *&v71[0] = 0xD00000000000001DLL;
  *(&v71[0] + 1) = 0x80000001BA500610;
  MEMORY[0x1BFAF1350](v16, v17);
  v18 = v71[0];
  *&v71[0] = 0x656C69666F72705FLL;
  *(&v71[0] + 1) = 0xE90000000000005FLL;
  v63 = a2;
  v19 = sub_1BA4A1D48();
  MEMORY[0x1BFAF1350](v19);

  v72 = v18;
  *&v72 = sub_1BA4A69D8();
  *(&v72 + 1) = v20;
  sub_1BA4A6908();

  *&v71[0] = 0x525F6573776F7242;
  *(&v71[0] + 1) = 0xEF5F72616C756765;
  MEMORY[0x1BFAF1350](v72, *(&v72 + 1));

  v21 = *&v71[0];
  v23 = *a1;
  v22 = a1[1];

  v24 = v23;
  v25 = v77;
  HKTypeGroupCategoryTileViewModel.init(hkTypeGroupIdentifier:)(v24, v22, v71);
  if (v25)
  {
  }

  else
  {
    v55 = v21;
    v77 = 0;
    v26 = v68;
    v27 = v69;
    v58 = v17;
    v59 = v16;
    v60 = v15;
    v57 = v12;
    v73 = v71[0];
    v74 = v71[1];
    v75 = v71[2];
    v76 = v71[3];
    v56 = a1[2];
    v28 = HKDisplayCategoryIdentifierToString();
    if (v28)
    {
      v29 = v28;
      v54 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v61 = v30;
    }

    else
    {
      v54 = 0;
      v61 = 0;
    }

    v31 = v27;
    v32 = v70;
    (*(v26 + 104))(v70, *MEMORY[0x1E69A3BE8], v27);
    v68 = type metadata accessor for HKTypeGroupCategoryActionHandler();
    sub_1BA32CB84(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v34 = NSStringFromClass(ObjCClassFromMetadata);
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    v35 = v77;
    v36 = sub_1BA2E1A2C();
    if (v35)
    {

      (*(v26 + 8))(v32, v27);
      sub_1BA32C710(&v73);
    }

    else
    {
      v38 = v36;
      v39 = v37;
      (*(v26 + 16))(v62, v32, v31);
      v40 = v38;
      v77 = v39;
      sub_1B9F206D4(v38, v39);
      v41 = v63;
      sub_1BA4A1E28();
      v42 = swift_getObjCClassFromMetadata();
      v43 = NSStringFromClass(v42);
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      sub_1BA4A1EB8();
      sub_1B9F6AD84(v64, v65);
      sub_1BA4A1E78();
      sub_1BA4A1ED8();
      sub_1B9F2BB4C(v40, v77);
      (*(v26 + 8))(v70, v69);
      v44 = v61;
      if (v61)
      {
        v45 = v57;
        v46 = v66;
        v47 = v54;
      }

      else
      {
        v47 = *(&v74 + 1);
        v44 = v75;

        v45 = v57;
        v46 = v66;
      }

      sub_1B9F25350();
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1BA4B5460;
      *(v48 + 32) = 0x686372616553;
      *(v48 + 40) = 0xE600000000000000;
      *(v48 + 48) = v47;
      *(v48 + 56) = v44;
      v49 = sub_1BA4A6AE8();

      v50 = HKUIJoinStringsForAutomationIdentifier();

      if (v50)
      {
        _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      }

      v51 = v60;
      sub_1BA4A1ED8();

      sub_1BA4A1E18();
      (*(v46 + 32))(v67, v51, v45);
      sub_1BA32C710(&v73);
      if (v56 == 14)
      {
        v52 = sub_1BA4A1F08();
        sub_1BA4A6DE8();
        v52(v71, 0);
      }
    }
  }
}

void static PluginFeedItem.categoryItem<A>(for:sourceProfile:actionHandlerType:actionHandlerUserData:)(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[3];
  v31 = a1[2];
  v12 = a1[4];
  sub_1BA4A7DF8();

  MEMORY[0x1BFAF1350](v11, v12);
  v13 = sub_1BA4A1D48();
  MEMORY[0x1BFAF1350](v13);

  *&v34 = sub_1BA4A69D8();
  *(&v34 + 1) = v14;
  sub_1BA4A6908();

  *&v38[0] = 0x525F6573776F7242;
  *(&v38[0] + 1) = 0xEF5F72616C756765;
  MEMORY[0x1BFAF1350](v34, *(&v34 + 1));

  v15 = v38[0];

  v16 = v39;
  HKTypeGroupCategoryTileViewModel.init(hkTypeGroupIdentifier:)(v9, v10, v38);
  if (v16)
  {
  }

  else
  {
    v24 = v12;
    v39 = v11;
    v34 = v38[0];
    v35 = v38[1];
    v36 = v38[2];
    v37 = v38[3];
    v17 = HKDisplayCategoryIdentifierToString();
    if (v17)
    {
      v18 = v17;
      v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v22 = sub_1BA32C6BC();
    static PluginFeedItem.categoryItem<A, B>(uniqueIdentifier:viewModel:actionHandlerType:actionHandlerUserData:sourceProfile:localizedTitle:automationTitle:)(v15, *(&v15 + 1), &v34, a3, a4, a5, a2, v39, a8, v24, v19, v21, a6, &type metadata for HKTypeGroupCategoryTileViewModel, a7, v22);
    v33[0] = v34;
    v33[1] = v35;
    v33[2] = v36;
    v33[3] = v37;
    sub_1BA32C710(v33);

    if (v31 == 14)
    {
      v23 = sub_1BA4A1F08();
      sub_1BA4A6DE8();
      v23(v32, 0);
    }
  }
}

uint64_t static PluginFeedItem.categoryItem<A, B>(uniqueIdentifier:viewModel:actionHandlerType:actionHandlerUserData:sourceProfile:localizedTitle:automationTitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16)
{
  v39 = a6;
  v33[1] = a8;
  v33[2] = a3;
  v34 = a7;
  v35 = a4;
  v37 = a5;
  v38 = a2;
  v36 = a1;
  v17 = sub_1BA4A1C68();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 1;
  v22 = *(a15 + 8);
  v41[0] = a14;
  v41[1] = a13;
  v41[2] = a16;
  v41[3] = v22;
  v23 = type metadata accessor for CategoryTileConfigurationProvider(0, v41);
  (*(v18 + 104))(v21, *MEMORY[0x1E69A3BE8], v17);
  WitnessTable = swift_getWitnessTable();
  v25 = v40;
  static PluginFeedItem.makeContentConfigurationFeedItem<A, B>(cellType:configurationProvider:viewModel:actionHandlerType:actionHandlerUserData:uniqueIdentifier:contentKind:sourceProfile:baseAutomationIdentifier:)(&v42, v35, v37, v39, v36, v38, a9, v21, v34, 0, 0, v23, a13, WitnessTable);
  if (v25)
  {
    return (*(v18 + 8))(v21, v17);
  }

  v39 = a14;
  v40 = a10;
  (*(v18 + 8))(v21, v17);
  if (a12)
  {
    v28 = a12;
  }

  else
  {
    a11 = (*(a16 + 16))(v39, a16);
    v28 = v29;
  }

  sub_1B9F25350();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1BA4B5460;
  *(v30 + 32) = 0x686372616553;
  *(v30 + 40) = 0xE600000000000000;
  *(v30 + 48) = a11;
  *(v30 + 56) = v28;

  v31 = sub_1BA4A6AE8();

  v32 = HKUIJoinStringsForAutomationIdentifier();

  if (v32)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  sub_1BA4A1ED8();

  return sub_1BA4A1E18();
}

unint64_t sub_1BA32C6BC()
{
  result = qword_1EDC62AA0;
  if (!qword_1EDC62AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC62AA0);
  }

  return result;
}

uint64_t static PluginFeedItem.categoryItem<A>(uniqueIdentifier:title:imageRepresentation:colorRepresentation:actionHandlerType:actionHandlerUserData:sourceProfile:automationTitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, unint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v41 = a3;
  v49 = a1;
  v50 = a2;
  v48 = a8;
  v52 = a9;
  v53 = a7;
  v51 = a10;
  v46 = a12;
  v47 = a11;
  v45 = a13;
  v43 = a4;
  v44 = a14;
  v42 = MEMORY[0x1E69A3260];
  sub_1B9F20680(0, &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v40 - v18;
  v20 = MEMORY[0x1E69A32A0];
  sub_1B9F20680(0, &qword_1EDC6E1C8, MEMORY[0x1E69A32A0]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v40 - v23;
  v25 = type metadata accessor for StandardCategoryTileViewModel(0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (&v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_1BA4A2BF8();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v24, a5, v29);
  v31 = *(v30 + 56);
  v31(v24, 0, 1, v29);
  sub_1BA2E1FDC(a6, v19);
  v32 = v25[5];
  v31(v28 + v32, 1, 1, v29);
  v33 = v25[6];
  v34 = sub_1BA4A2B98();
  (*(*(v34 - 8) + 56))(v28 + v33, 1, 1, v34);
  v35 = v41;
  v36 = v43;
  *v28 = v41;
  v28[1] = v36;
  v37 = v36;

  sub_1BA32CABC(v24, v28 + v32, &qword_1EDC6E1C8, v20);
  sub_1BA32CABC(v19, v28 + v33, &qword_1EDC6E1D0, v42);
  *(v28 + v25[7]) = xmmword_1BA4D1B60;
  *(v28 + v25[8]) = 1;
  v38 = sub_1BA32CC98(&qword_1EBBF0A68, type metadata accessor for StandardCategoryTileViewModel, &protocol conformance descriptor for StandardCategoryTileViewModel);
  static PluginFeedItem.categoryItem<A, B>(uniqueIdentifier:viewModel:actionHandlerType:actionHandlerUserData:sourceProfile:localizedTitle:automationTitle:)(v49, v50, v28, v45, v53, v52, v51, v35, v48, v37, v47, v46, v45, v25, v44, v38);
  return sub_1BA32CB28(v28);
}

uint64_t sub_1BA32CABC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F20680(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA32CB28(uint64_t a1)
{
  v2 = type metadata accessor for StandardCategoryTileViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA32CB84(uint64_t a1)
{
  if (!qword_1EDC63CA8)
  {
    sub_1BA32CC18(255);
    v3 = v2;
    v4 = sub_1BA32CC98(&qword_1EDC62268, sub_1BA32CC18, &protocol conformance descriptor for CategoryTileConfigurationProvider<A, B>);
    v6 = type metadata accessor for PlatformConfigurationProvider(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDC63CA8);
    }
  }
}

void sub_1BA32CC18(uint64_t a1)
{
  if (!qword_1EDC62260)
  {
    v4[0] = &type metadata for HKTypeGroupCategoryTileViewModel;
    v4[1] = type metadata accessor for HKTypeGroupCategoryActionHandler();
    v4[2] = sub_1BA32C6BC();
    v4[3] = &protocol witness table for HKTypeGroupCategoryActionHandler;
    v2 = type metadata accessor for CategoryTileConfigurationProvider(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDC62260);
    }
  }
}

uint64_t sub_1BA32CC98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BA32CD38()
{
  v0 = sub_1BA4A1798();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ProfileContactOptionsItem();
  v6 = [objc_allocWithZone(v5) init];
  sub_1B9FF6758();
  inited = swift_initStackObject();
  v17 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F28360(0);
  v8 = swift_allocObject();
  *(v8 + 16) = v17;
  *(v8 + 56) = v5;
  *(v8 + 64) = sub_1BA1AAEE4();
  *(v8 + 32) = v6;
  v9 = v6;
  sub_1BA4A1788();
  v10 = sub_1BA4A1748();
  v12 = v11;
  (*(v1 + 8))(v4, v0);
  v13 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = sub_1B9F1C5F0(v13);
  *(inited + 32) = 0;
  *(inited + 40) = 0;

  *(inited + 48) = v8;
  v14 = Array<A>.identifierToIndexDict()(v8);

  *(inited + 56) = v14;
  *(inited + 64) = v10;
  *(inited + 72) = v12;
  v15 = sub_1B9F1DAFC(inited, 1, sub_1B9F5AEA0, 0);

  return v15;
}

uint64_t ImageStyle.init(contentMode:backgroundColor:tintColor:borderColor:borderWidth:cornerRadius:cornerCurve:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 44) = BYTE4(a6) & 1;
  *(a9 + 48) = a7;
  *(a9 + 52) = BYTE4(a7) & 1;
  *(a9 + 56) = a8;
  return result;
}

void *ImageStyle.backgroundColor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *ImageStyle.tintColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *ImageStyle.borderColor.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *ImageStyle.cornerCurve.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

BOOL _s18HealthExperienceUI10ImageStyleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 44);
  v7 = *(a1 + 48);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 44);
  v14 = *(a2 + 48);
  v15 = *(a2 + 52);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v9)
    {
      return 0;
    }

    v36 = *(a1 + 52);
    v37 = *(a1 + 56);
    v38 = *(a2 + 56);
    sub_1B9F0F360();
    v16 = v9;
    v17 = v3;
    v18 = sub_1BA4A7798();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v36 = *(a1 + 52);
    v37 = *(a1 + 56);
    v38 = *(a2 + 56);
    if (v9)
    {
      return 0;
    }
  }

  if (v2)
  {
    if (!v10)
    {
      return 0;
    }

    sub_1B9F0F360();
    v19 = v10;
    v20 = v2;
    v21 = sub_1BA4A7798();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v4)
  {
    if (!v11)
    {
      return 0;
    }

    sub_1B9F0F360();
    v22 = v11;
    v23 = v4;
    v24 = sub_1BA4A7798();

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v6)
  {
    v25 = v37;
    v26 = v38;
    v27 = v36;
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == v12)
    {
      v28 = v13;
    }

    else
    {
      v28 = 1;
    }

    v25 = v37;
    v26 = v38;
    v27 = v36;
    if (v28)
    {
      return 0;
    }
  }

  if (v27)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (v7 == v14)
    {
      v29 = v15;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  if (!v25)
  {
    return !v26;
  }

  if (!v26)
  {
    return 0;
  }

  v30 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v32 = v31;
  if (v30 != _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() || v32 != v33)
  {
    v35 = sub_1BA4A8338();

    return (v35 & 1) != 0;
  }

  return 1;
}

uint64_t sub_1BA32D360(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1BA32D3BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t DateOfBirthItem.init(dateOfBirthComponents:dateGenerator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1BA018958(a1, a4);
  v8 = type metadata accessor for DateOfBirthItem(0);
  v9 = (a4 + v8[5]);
  *v9 = a2;
  v9[1] = a3;
  v10 = qword_1EDC5E100;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_1BA4A1318();
  v12 = (a4 + v8[6]);
  *v12 = v11;
  v12[1] = v13;
  v14 = sub_1BA4A1318();
  v16 = v15;

  result = sub_1BA32E9B8(a1, &qword_1EBBEA478, MEMORY[0x1E6968278]);
  v18 = (a4 + v8[7]);
  *v18 = v14;
  v18[1] = v16;
  return result;
}

uint64_t type metadata accessor for DateOfBirthItem(uint64_t a1)
{
  result = qword_1EBBF0AC8;
  if (!qword_1EBBF0AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1BA32D5E4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v0 setTimeStyle_];
  result = [v0 setDateStyle_];
  qword_1EBBF0A90 = v0;
  return result;
}

id sub_1BA32D648()
{
  result = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  qword_1EBBF0A98 = result;
  return result;
}

uint64_t sub_1BA32D67C()
{
  v0 = sub_1BA4A17D8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A18A8();
  __swift_allocate_value_buffer(v5, qword_1EBBF0AA0);
  __swift_project_value_buffer(v5, qword_1EBBF0AA0);
  (*(v1 + 104))(v4, *MEMORY[0x1E6969868], v0);
  sub_1BA4A17E8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t DateOfBirthItem.reuseIdentifier.getter()
{
  type metadata accessor for TitleValueTableViewCell();
  sub_1BA32D934(0, &qword_1EBBE9718, type metadata accessor for TitleValueTableViewCell);
  return sub_1BA4A6808();
}

uint64_t DateOfBirthItem.uniqueIdentifier.getter()
{
  sub_1BA32EA70(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = v12 - v3;
  v12[0] = type metadata accessor for DateOfBirthItem(0);
  sub_1BA32D934(0, &qword_1EBBF0AB8, type metadata accessor for DateOfBirthItem);
  v5 = sub_1BA4A6808();
  v7 = v6;
  sub_1BA018958(v0, v4);
  v8 = sub_1BA4A6808();
  v10 = v9;
  v12[0] = v5;
  v12[1] = v7;

  MEMORY[0x1BFAF1350](v8, v10);

  return v12[0];
}

uint64_t sub_1BA32D934(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1BA32D980()
{
  type metadata accessor for TitleValueTableViewCell();
  sub_1BA32D934(0, &qword_1EBBE9718, type metadata accessor for TitleValueTableViewCell);
  return sub_1BA4A6808();
}

uint64_t sub_1BA32D9D8(uint64_t a1)
{
  sub_1BA32EA70(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v14 - v5;
  v14[0] = a1;
  sub_1BA32D934(0, &qword_1EBBF0AB8, type metadata accessor for DateOfBirthItem);
  v7 = sub_1BA4A6808();
  v9 = v8;
  sub_1BA018958(v1, v6);
  v10 = sub_1BA4A6808();
  v12 = v11;
  v14[0] = v7;
  v14[1] = v9;

  MEMORY[0x1BFAF1350](v10, v12);

  return v14[0];
}

uint64_t sub_1BA32DB14(uint64_t a1)
{
  v2 = sub_1BA32EA28(&qword_1EBBEC290, type metadata accessor for DateOfBirthItem, &protocol conformance descriptor for DateOfBirthItem);

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t DateOfBirthItem.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for DateOfBirthItem(0) + 24));

  return v1;
}

uint64_t DateOfBirthItem.value.getter()
{
  v1 = sub_1BA4A1148();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA32EA70(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v12 - v8;
  sub_1BA018958(v0, &v12 - v8);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    v10 = *(v0 + *(type metadata accessor for DateOfBirthItem(0) + 28));
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    v10 = sub_1BA32DD8C(v5);
    (*(v2 + 8))(v5, v1);
  }

  return v10;
}

uint64_t sub_1BA32DD8C(uint64_t a1)
{
  v2 = sub_1BA4A1148();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A3EA8();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v62[0] = v62 - v13;
  sub_1BA32EA70(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = v62 - v16;
  v18 = sub_1BA4A1728();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v65 = v62 - v25;
  if (qword_1EBBE8828 != -1)
  {
    swift_once();
  }

  v26 = sub_1BA4A18A8();
  __swift_project_value_buffer(v26, qword_1EBBF0AA0);
  sub_1BA4A1838();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1BA32E9B8(v17, &qword_1EDC6E440, MEMORY[0x1E6969530]);
    sub_1BA4A3DE8();
    (*(v3 + 16))(v6, a1, v2);
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v66 = v30;
      *v29 = 136446722;
      *(v29 + 4) = sub_1B9F0B82C(0x6942664F65746144, 0xEF6D657449687472, &v66);
      *(v29 + 12) = 2082;
      *(v29 + 14) = sub_1B9F0B82C(0xD000000000000020, 0x80000001BA500770, &v66);
      *(v29 + 22) = 2080;
      sub_1BA32EA28(&qword_1EBBEBC50, MEMORY[0x1E6968278], MEMORY[0x1E69682A0]);
      v31 = sub_1BA4A82D8();
      v33 = v32;
      (*(v3 + 8))(v6, v2);
      v34 = sub_1B9F0B82C(v31, v33, &v66);

      *(v29 + 24) = v34;
      _os_log_impl(&dword_1B9F07000, v27, v28, "[%{public}s.%{public}s]: Unable to create date from birth day components: %s", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    (*(v63 + 8))(v10, v64);
    return 0;
  }

  (*(v19 + 32))(v65, v17, v18);
  v35 = sub_1BA4A10F8();
  v36 = type metadata accessor for DateOfBirthItem(0);
  (*(v62[1] + *(v36 + 20)))();
  v37 = sub_1BA4A16B8();
  v38 = *(v19 + 8);
  v38(v22, v18);
  v39 = [v35 hk:v37 ageWithCurrentDate:?];

  if (qword_1EBBE8820 != -1)
  {
    swift_once();
  }

  v40 = qword_1EBBF0A98;
  sub_1BA0B5A7C();
  v41 = sub_1BA4A7768();
  v42 = [v40 stringFromNumber_];

  if (!v42)
  {
    v57 = v62[0];
    sub_1BA4A3DE8();
    v58 = sub_1BA4A3E88();
    v59 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v66 = v61;
      *v60 = 136446723;
      *(v60 + 4) = sub_1B9F0B82C(0x6942664F65746144, 0xEF6D657449687472, &v66);
      *(v60 + 12) = 2082;
      *(v60 + 14) = sub_1B9F0B82C(0xD000000000000020, 0x80000001BA500770, &v66);
      *(v60 + 22) = 2049;
      *(v60 + 24) = v39;
      _os_log_impl(&dword_1B9F07000, v58, v59, "[%{public}s.%{public}s]: Unable to create age string from age: %{private}ld", v60, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v61, -1, -1);
      MEMORY[0x1BFAF43A0](v60, -1, -1);
    }

    (*(v63 + 8))(v57, v64);
    v38(v65, v18);
    return 0;
  }

  v43 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v63 = v44;

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v64 = v38;
  sub_1BA4A1318();
  sub_1BA32EA70(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1BA4B5460;
  if (qword_1EBBE8818 != -1)
  {
    swift_once();
  }

  v46 = qword_1EBBF0A90;
  v47 = v65;
  v48 = sub_1BA4A16B8();
  v49 = [v46 stringFromDate_];

  v50 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v52 = v51;

  v53 = MEMORY[0x1E69E6158];
  *(v45 + 56) = MEMORY[0x1E69E6158];
  v54 = sub_1B9F1BE20();
  *(v45 + 32) = v50;
  *(v45 + 40) = v52;
  *(v45 + 96) = v53;
  *(v45 + 104) = v54;
  *(v45 + 64) = v54;
  *(v45 + 72) = v43;
  *(v45 + 80) = v63;
  v55 = sub_1BA4A67D8();

  v64(v47, v18);
  return v55;
}

uint64_t sub_1BA32E714(uint64_t a1)
{
  v3 = sub_1BA4A1148();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA32EA70(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v14 - v10;
  sub_1BA018958(v1, &v14 - v10);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    v12 = *(v1 + *(a1 + 28));
  }

  else
  {
    (*(v4 + 32))(v7, v11, v3);
    v12 = sub_1BA32DD8C(v7);
    (*(v4 + 8))(v7, v3);
  }

  return v12;
}

void sub_1BA32E8F4(uint64_t a1)
{
  sub_1BA32EA70(319, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9F37BB8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BA32E9B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA32EA70(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA32EA28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BA32EA70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

CGFloat sub_1BA32EAD4(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  Width = CGRectGetWidth(v22);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  v11 = Width / CGRectGetHeight(v23);
  v12 = v11 < a1;
  Height = a5;
  v14 = a4;
  if (v11 != a1)
  {
    v15 = a2;
    v16 = a3;
    v17 = a4;
    v18 = a5;
    if (v12)
    {
      v14 = CGRectGetWidth(*&v15);
      v24.origin.x = a2;
      v24.origin.y = a3;
      v24.size.width = a4;
      v24.size.height = a5;
      Height = CGRectGetWidth(v24) / a1;
    }

    else
    {
      Height = CGRectGetHeight(*&v15);
      v25.origin.x = a2;
      v25.origin.y = a3;
      v25.size.width = a4;
      v25.size.height = a5;
      v14 = CGRectGetHeight(v25) * a1;
    }
  }

  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  v19 = CGRectGetWidth(v26);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = v14;
  v27.size.height = Height;
  v20 = floor((v19 - CGRectGetWidth(v27)) * 0.5) + a2;
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  CGRectGetHeight(v28);
  v29.origin.x = v20;
  v29.origin.y = a3;
  v29.size.width = v14;
  v29.size.height = Height;
  CGRectGetHeight(v29);
  return v20;
}

uint64_t static SharingProfileDeepLinkRouter.isProfileIdentifierValid(_:context:)(uint64_t a1, uint64_t a2)
{
  sub_1BA4A6C68();
  v5[2] = a2;
  v5[3] = a1;
  return sub_1BA1E0C2C(sub_1BA32EE50, v5, "HealthExperienceUI/SharingProfileDeepLinkRouter.swift", 53, 2, 35) & 1;
}

uint64_t sub_1BA32ECBC@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = MEMORY[0x1E69A3108];
  sub_1BA3304E4(0, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v14 - v9;
  type metadata accessor for HealthKitProfileInformationDataSource(0);
  swift_allocObject();
  v11 = *sub_1BA2B8F0C(a1, a2, 0, 0, 0, 0);
  (*(v11 + 760))();

  v12 = sub_1BA4A2888();
  LOBYTE(a2) = (*(*(v12 - 8) + 48))(v10, 1, v12) != 1;
  result = sub_1BA330538(v10, &qword_1EDC6E200, v6);
  *a3 = a2;
  return result;
}

uint64_t static SharingProfileDeepLinkRouter.configureAppForSharingActivity(_:rootViewController:)(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 32);
  ObjectType = swift_getObjectType();
  [v3 restoreUserActivityState_];
  return (*(v4 + 24))(ObjectType, v4);
}

uint64_t static SharingProfileDeepLinkRouter.handleUserActivity(_:rootViewController:profileIdentifier:)(void *a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  v7 = v3;
  return sub_1BA32FD64(a1, v6, a3) & 1;
}

uint64_t static SharingProfileDeepLinkRouter.handleURL(_:rootViewController:profileIdentifier:)(uint64_t a1, void **a2, void *a3)
{
  v63 = a1;
  v4 = *a2;
  v66 = a2[1];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  sub_1BA3304E4(0, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v58 = &v53 - v10;
  v61 = sub_1BA4A3678();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v11);
  v59 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A35A8();
  v62 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BA4A15D8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1BA4A3878();
  v64 = *(v65 - 8);
  *&v23 = MEMORY[0x1EEE9AC00](v65, v22).n128_u64[0];
  v67 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a3 type] == 1 || (v54 = v6, v55 = v5, v56 = v7, v57 = v4, UIViewController.resolvedHealthExperienceStore.getter(v72), __swift_project_boxed_opaque_existential_1(v72, v73), v25 = sub_1BA4A1B68(), v26 = sub_1BA4A6C68(), MEMORY[0x1EEE9AC00](v26, v27), *(&v53 - 2) = v25, *(&v53 - 1) = a3, v53 = a3, v28 = sub_1BA1E0C2C(sub_1BA330594, (&v53 - 4), "HealthExperienceUI/SharingProfileDeepLinkRouter.swift", 53, 2, 35), v25, __swift_destroy_boxed_opaque_existential_1(v72), (v28 & 1) == 0))
  {
    v38 = 0;
  }

  else
  {
    v29 = v63;
    (*(v18 + 16))(v21, v63, v17);
    v30 = v67;
    sub_1BA4A3828();
    sub_1BA4A37E8();
    if (v31)
    {
      type metadata accessor for PluginDeepLinkRouter();
      inited = swift_initStackObject();
      v33 = v57;
      v34 = v66;
      *(inited + 16) = v57;
      *(inited + 24) = v34;
      v35 = v55;
      *(inited + 32) = v54;
      *(inited + 40) = v35;
      *(inited + 48) = v56;
      v36 = v33;
      sub_1BA4A3598();
      PluginDeepLinkRouter.launchPluginFromURL(_:pluginType:)(v29, v16, v37);
      swift_setDeallocating();

      (*(v62 + 8))(v16, v13);
      (*(v64 + 8))(v30, v65);
      v38 = 1;
    }

    else
    {
      v40 = v58;
      sub_1BA32F5D4(v58);
      v41 = v60;
      v42 = *(v60 + 48);
      v43 = v61;
      v44 = v42(v40, 1, v61);
      v45 = v56;
      v46 = v55;
      v47 = v54;
      if (v44 == 1)
      {
        v48 = v59;
        (*(v41 + 104))(v59, *MEMORY[0x1E69A2C30], v43);
        v49 = v42(v40, 1, v43);
        v50 = v53;
        if (v49 != 1)
        {
          sub_1BA330538(v40, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
        }
      }

      else
      {
        v48 = v59;
        (*(v41 + 32))(v59, v40, v43);
        v50 = v53;
      }

      v51 = sub_1BA4A35B8();
      if (sub_1BA4A3808())
      {
        v52 = sub_1BA4A6618();

        [v51 addUserInfoEntriesFromDictionary_];
      }

      *&v68 = v57;
      *(&v68 + 1) = v66;
      v69 = v47;
      v70 = v46;
      v71 = v45;
      v38 = sub_1BA32FD64(v51, &v68, v50);

      (*(v41 + 8))(v48, v43);
      (*(v64 + 8))(v67, v65);
    }
  }

  return v38 & 1;
}

void *sub_1BA32F5D4@<X0>(char *a1@<X8>)
{
  sub_1BA3304E4(0, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v25 - v8;
  v10 = sub_1BA4A3678();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v25 - v17;
  sub_1BA4A15A8();
  if (v19)
  {
    sub_1BA4A3668();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      v23 = *(v11 + 32);
      v23(v18, v9, v10);
      v23(a1, v18, v10);
      goto LABEL_11;
    }

    sub_1BA330538(v9, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  }

  v20 = *(sub_1BA4A1528() + 16);

  if (v20 < 2)
  {
LABEL_8:
    v22 = 1;
    return (*(v11 + 56))(a1, v22, 1, v10);
  }

  result = sub_1BA4A1528();
  if (result[2] >= 2uLL)
  {

    sub_1BA4A3668();
    if ((*(v11 + 48))(v5, 1, v10) == 1)
    {
      sub_1BA330538(v5, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
      goto LABEL_8;
    }

    v24 = *(v11 + 32);
    v24(v14, v5, v10);
    v24(a1, v14, v10);
LABEL_11:
    v22 = 0;
    return (*(v11 + 56))(a1, v22, 1, v10);
  }

  __break(1u);
  return result;
}

id _s18HealthExperienceUI28SharingProfileDeepLinkRouterV35migrateLegacyProfilesPluginActivityySo06NSUserM0CAFFZ_0(void *a1)
{
  v44 = a1;
  v1 = sub_1BA4A3678();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A35D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x1EEE9AC00](v11, v12).n128_u64[0];
  v15 = &v39 - v14;
  v16 = [v44 userInfo];
  if (v16)
  {
    v41 = v5;
    v42 = v2;
    v43 = v1;
    v17 = v16;
    v18 = sub_1BA4A6628();

    v49 = v18;
    v19 = *MEMORY[0x1E69A2B78];
    v40 = *(v7 + 104);
    v40(v15, v19, v6);
    v20 = sub_1BA4A35C8();
    v22 = v21;
    v23 = *(v7 + 8);
    v23(v15, v6);
    v45 = v20;
    v46 = v22;
    sub_1BA4A7D58();
    if (*(v18 + 16) && (v24 = sub_1B9FDA8E4(v47), (v25 & 1) != 0))
    {
      sub_1B9F0AD9C(*(v18 + 56) + 32 * v24, v48);
      sub_1B9FDC768(v47);
      if (swift_dynamicCast())
      {
        if (v45 == 0xD000000000000019 && 0x80000001BA500820 == v46)
        {

LABEL_14:
          v40(v10, v19, v6);
          v29 = sub_1BA4A35C8();
          v31 = v30;
          v23(v10, v6);
          *&v48[0] = v29;
          *(&v48[0] + 1) = v31;
          sub_1BA4A7D58();
          sub_1BA0F6614(v47, v48);
          sub_1B9F0DF20(v48, sub_1BA01E3E8);
          sub_1B9FDC768(v47);
          v32 = [v44 title];
          if (v32)
          {
            v33 = v32;
            _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          }

          v35 = v42;
          v34 = v43;
          v36 = v41;
          (*(v42 + 104))(v41, *MEMORY[0x1E69A2C30], v43);
          v37 = sub_1BA4A35B8();

          (*(v35 + 8))(v36, v34);
          v38 = sub_1BA4A6618();
          [v37 addUserInfoEntriesFromDictionary_];

          return v37;
        }

        v28 = sub_1BA4A8338();

        if (v28)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1B9FDC768(v47);
    }
  }

  v26 = v44;

  return v26;
}

uint64_t sub_1BA32FD64(void *a1, __int128 *a2, void *a3)
{
  v57 = a1;
  v4 = a2[1];
  v58 = *a2;
  v56 = v4;
  v5 = *(a2 + 4);
  v6 = sub_1BA4A3678();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA33038C(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3304E4(0, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v50 - v22;
  *&v26 = MEMORY[0x1EEE9AC00](v24, v25).n128_u64[0];
  v28 = &v50 - v27;
  if ([a3 type] == 1)
  {
    return 0;
  }

  v54 = v28;
  v55 = v7;
  v53 = v5;
  v29 = v58;
  ObjectType = swift_getObjectType();
  v52 = v29;
  UIViewController.resolvedHealthExperienceStore.getter(v59);
  __swift_project_boxed_opaque_existential_1(v59, v59[3]);
  v30 = sub_1BA4A1B68();
  v31 = sub_1BA4A6C68();
  MEMORY[0x1EEE9AC00](v31, v32);
  *(&v50 - 2) = v30;
  *(&v50 - 1) = a3;
  LOBYTE(v29) = sub_1BA1E0C2C(sub_1BA330594, (&v50 - 4), "HealthExperienceUI/SharingProfileDeepLinkRouter.swift", 53, 2, 35);

  __swift_destroy_boxed_opaque_existential_1(v59);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

  v33 = _s18HealthExperienceUI28SharingProfileDeepLinkRouterV35migrateLegacyProfilesPluginActivityySo06NSUserM0CAFFZ_0(v57);
  v34 = [v33 activityType];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  v35 = v54;
  sub_1BA4A3688();
  v36 = v55;
  (*(v55 + 104))(v23, *MEMORY[0x1E69A2C50], v6);
  (*(v36 + 56))(v23, 0, 1, v6);
  v37 = *(v12 + 48);
  sub_1BA33040C(v35, v15);
  sub_1BA33040C(v23, &v15[v37]);
  v38 = *(v36 + 48);
  if (v38(v15, 1, v6) == 1)
  {
    sub_1BA330538(v23, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
    v39 = v38(&v15[v37], 1, v6);
    v40 = v53;
    if (v39 == 1)
    {
      sub_1BA330538(v15, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
LABEL_12:
      type metadata accessor for PluginDeepLinkRouter();
      inited = swift_initStackObject();
      v48 = v56;
      *(inited + 16) = v58;
      *(inited + 32) = v48;
      *(inited + 48) = v40;
      v49 = v52;
      PluginDeepLinkRouter.launchPluginForSharingActivity(activity:)(v33);

      swift_setDeallocating();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_1BA33040C(v15, v19);
  if (v38(&v15[v37], 1, v6) == 1)
  {
    sub_1BA330538(v23, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
    (*(v55 + 8))(v19, v6);
    v40 = v53;
LABEL_9:
    sub_1B9F0DF20(v15, sub_1BA33038C);
    goto LABEL_10;
  }

  v57 = v33;
  v43 = v55;
  (*(v55 + 32))(v10, &v15[v37], v6);
  sub_1BA33048C();
  v44 = sub_1BA4A6728();
  v45 = *(v43 + 8);
  v45(v10, v6);
  v46 = MEMORY[0x1E69A2C78];
  sub_1BA330538(v23, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  v45(v19, v6);
  v33 = v57;
  v35 = v54;
  sub_1BA330538(v15, &qword_1EBBED070, v46);
  v40 = v53;
  if (v44)
  {
    goto LABEL_12;
  }

LABEL_10:
  v42 = v52;
  [v52 restoreUserActivityState_];
  v59[0] = v42;

LABEL_13:
  sub_1BA330538(v35, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  return 1;
}

void sub_1BA33038C(uint64_t a1)
{
  if (!qword_1EBBF0AD8)
  {
    sub_1BA3304E4(255, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF0AD8);
    }
  }
}

uint64_t sub_1BA33040C(uint64_t a1, uint64_t a2)
{
  sub_1BA3304E4(0, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA33048C()
{
  result = qword_1EBBF0AE0;
  if (!qword_1EBBF0AE0)
  {
    sub_1BA4A3678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0AE0);
  }

  return result;
}

void sub_1BA3304E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA330538(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA3304E4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void (*sub_1BA3305FC(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI24PluginNotificationRouter_sceneProvider;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA04A958;
}

id PluginNotificationRouter.init()(uint64_t a1, uint64_t a2)
{
  sub_1BA4A3C48();
  v2 = sub_1BA4A3C38();
  type metadata accessor for PlatformNotificationHandlerPluginProvider();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = v2;
  v4 = sub_1B9F0A388(v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

id PluginNotificationRouter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PluginNotificationRouter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PluginNotificationRouter.userNotificationCenter(_:willPresent:withCompletionHandler:)(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v8 = sub_1BA3308D8(a2);
  if ((v9 & 1) == 0)
  {
    v10 = sub_1BA330E40(v8);
    if (v10)
    {
      v11 = v10;
      if (sub_1BA3311D8(v10, sel_userNotificationCenter_willPresentNotification_withCompletionHandler_))
      {
        v12 = swift_allocObject();
        *(v12 + 16) = a3;
        *(v12 + 24) = a4;
        v15[4] = sub_1BA332CE0;
        v15[5] = v12;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 1107296256;
        v15[2] = sub_1BA331738;
        v15[3] = &block_descriptor_88;
        v13 = _Block_copy(v15);

        [v11 userNotificationCenter:a1 willPresentNotification:a2 withCompletionHandler:v13];
        _Block_release(v13);
        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }

  return a3(27);
}

id sub_1BA3308D8(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v8, v9).n128_u64[0];
  v12 = &v46 - v11;
  v13 = [a1 request];
  v14 = [v13 content];

  v15 = [v14 userInfo];
  v16 = sub_1BA4A6628();

  v48[0] = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v48[1] = v17;
  sub_1BA4A7D58();
  if (*(v16 + 16) && (v18 = sub_1B9FDA8E4(v50), (v19 & 1) != 0))
  {
    sub_1B9F0AD9C(*(v16 + 56) + 32 * v18, v51);
    sub_1B9FDC768(v50);

    sub_1B9F0AD9C(v51, v50);
    sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v20 = v48[0];
      v21 = [v48[0] integerValue];

      __swift_destroy_boxed_opaque_existential_1(v51);
      return v21;
    }

    sub_1BA4A3E08();
    sub_1B9F0AD9C(v51, v50);
    v35 = sub_1BA4A3E88();
    v36 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v49 = v38;
      *v37 = 136446466;
      v48[0] = ObjectType;
      swift_getMetatypeMetadata();
      v39 = sub_1BA4A6808();
      v41 = sub_1B9F0B82C(v39, v40, &v49);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      sub_1B9F0AD9C(v50, v48);
      v42 = sub_1BA4A6808();
      v44 = v43;
      __swift_destroy_boxed_opaque_existential_1(v50);
      v45 = sub_1B9F0B82C(v42, v44, &v49);

      *(v37 + 14) = v45;
      _os_log_impl(&dword_1B9F07000, v35, v36, "[%{public}s]: Unhandled notification due to unexpected object in domain key: %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v38, -1, -1);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v50);
    }

    (*(v4 + 8))(v12, v3);
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  else
  {
    sub_1B9FDC768(v50);
    sub_1BA4A3E08();

    v23 = sub_1BA4A3E88();
    v24 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v51[0] = v26;
      *v25 = 136446466;
      v50[0] = ObjectType;
      swift_getMetatypeMetadata();
      v27 = sub_1BA4A6808();
      v29 = sub_1B9F0B82C(v27, v28, v51);
      v47 = v3;
      v30 = v29;

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      v31 = sub_1BA4A6638();
      v33 = v32;

      v34 = sub_1B9F0B82C(v31, v33, v51);

      *(v25 + 14) = v34;
      _os_log_impl(&dword_1B9F07000, v23, v24, "[%{public}s]: Unhandled notification due to missing domain key in userInfo: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      MEMORY[0x1BFAF43A0](v25, -1, -1);

      (*(v4 + 8))(v7, v47);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }
  }

  return 0;
}

uint64_t sub_1BA330E40(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18HealthExperienceUI24PluginNotificationRouter_pluginProviding), *(v1 + OBJC_IVAR____TtC18HealthExperienceUI24PluginNotificationRouter_pluginProviding + 24));
  result = sub_1BA332B08();
  v7 = result;
  v8 = *(result + 16);
  if (v8)
  {
    v9 = 0;
    while (1)
    {
      if (v9 >= *(v7 + 16))
      {
        __break(1u);
        return result;
      }

      v37 = *(v7 + 16 * v9 + 32);
      v10 = swift_getObjectType();
      v11 = *(&v37 + 1);
      v12 = *(*(&v37 + 1) + 16);
      swift_unknownObjectRetain();
      v13 = v12(a1, v10, v11);
      if (v13)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (v8 == ++v9)
      {
        goto LABEL_6;
      }
    }

    v14 = v13;

    v15 = v34;
    sub_1BA4A3E08();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v16 = sub_1BA4A3E88();
    v17 = sub_1BA4A6FC8();
    v18 = v14;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v16, v17))
    {
      v19 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = v32;
      *v19 = 136446978;
      *&v38 = ObjectType;
      swift_getMetatypeMetadata();
      v20 = sub_1BA4A6808();
      v22 = sub_1B9F0B82C(v20, v21, &v39);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2082;
      v38 = v37;
      sub_1BA333414();
      swift_unknownObjectRetain();
      v23 = sub_1BA4A6808();
      v25 = sub_1B9F0B82C(v23, v24, &v39);

      *(v19 + 14) = v25;
      *(v19 + 22) = 2082;
      v26 = v18;
      *&v38 = v18;
      sub_1BA3333B0();
      swift_unknownObjectRetain();
      v27 = sub_1BA4A6808();
      v29 = sub_1B9F0B82C(v27, v28, &v39);

      *(v19 + 24) = v29;
      *(v19 + 32) = 2048;
      *(v19 + 34) = a1;
      _os_log_impl(&dword_1B9F07000, v16, v17, "[%{public}s]: %{public}s plugin provided delegate %{public}s for domain raw value: %ld", v19, 0x2Au);
      v30 = v32;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
      swift_unknownObjectRelease();

      (*(v35 + 8))(v15, v36);
      return v26;
    }

    else
    {

      swift_unknownObjectRelease();
      (*(v35 + 8))(v15, v36);
      return v14;
    }
  }

  else
  {
LABEL_6:

    return 0;
  }
}

id sub_1BA3311D8(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v5, v7).n128_u64[0];
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 respondsToSelector_];
  if ((result & 1) == 0)
  {
    v26 = result;
    sub_1BA4A3E08();
    swift_unknownObjectRetain();
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FC8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      v28 = ObjectType;
      *v14 = 136446722;
      swift_getMetatypeMetadata();
      v15 = sub_1BA4A6808();
      v17 = sub_1B9F0B82C(v15, v16, &v27);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2082;
      v28 = a1;
      sub_1BA3333B0();
      swift_unknownObjectRetain();
      v18 = sub_1BA4A6808();
      v20 = sub_1B9F0B82C(v18, v19, &v27);

      *(v14 + 14) = v20;
      *(v14 + 22) = 2082;
      v21 = sub_1BA4A19A8();
      v23 = sub_1B9F0B82C(v21, v22, &v27);

      *(v14 + 24) = v23;
      _os_log_impl(&dword_1B9F07000, v12, v13, "[%{public}s]: delegate %{public}s does not respond to: %{public}s", v14, 0x20u);
      v24 = v25;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
    }

    (*(v6 + 8))(v10, v5);
    return v26;
  }

  return result;
}

uint64_t sub_1BA33144C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A6478();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BA4A64C8();
  v11 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v15 = sub_1BA4A7308();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a1;
  aBlock[4] = sub_1BA333380;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_51;
  v17 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7F60];
  sub_1BA3332D4(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1BA33331C(0, &qword_1EDC5E6B0, v18, MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v14, v10, v17);
  _Block_release(v17);

  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v21);
}

double sub_1BA331738(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void PluginNotificationRouter.userNotificationCenter(_:didReceive:withCompletionHandler:)(uint64_t a1, id a2, void (*a3)(void *), uint64_t a4)
{
  v8 = [a2 notification];
  v9 = sub_1BA3308D8(v8);
  v11 = v10;

  if (v11)
  {
    goto LABEL_7;
  }

  v12 = sub_1BA330E40(v9);
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = v12;
  if ((sub_1BA3311D8(v12, sel_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler_) & 1) == 0)
  {
    v12 = swift_unknownObjectRelease();
LABEL_7:
    a3(v12);
    return;
  }

  if ([v13 respondsToSelector_])
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    v16[4] = sub_1BA332CE8;
    v16[5] = v14;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1B9F0B040;
    v16[3] = &block_descriptor_6_7;
    v15 = _Block_copy(v16);
    swift_unknownObjectRetain();

    [v13 userNotificationCenter:a1 didReceiveNotificationResponse:a2 withCompletionHandler:v15];
    _Block_release(v15);

    swift_unknownObjectRelease_n();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1BA331978(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A6478();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A64C8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v14 = sub_1BA4A7308();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  aBlock[4] = sub_1B9F7B0D4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_45;
  v16 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7F60];
  sub_1BA3332D4(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1BA33331C(0, &qword_1EDC5E6B0, v17, MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v13, v8, v16);
  _Block_release(v16);

  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

void sub_1BA331C74(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, id, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v11, v12, v13, v10);
  _Block_release(v10);
  _Block_release(v10);
}

Swift::Void __swiftcall PluginNotificationRouter.userNotificationCenter(_:openSettingsFor:)(UNUserNotificationCenter _, UNNotification_optional openSettingsFor)
{
  isa = openSettingsFor.value.super.isa;
  sub_1BA33331C(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v21 - v10;
  if (isa)
  {
    v12 = sub_1BA3308D8(isa);
    if ((v13 & 1) == 0)
    {
      v14 = sub_1BA330E40(v12);
      if (v14)
      {
        v15 = v14;
        if (sub_1BA3311D8(v14, sel_userNotificationCenter_openSettingsForNotification_))
        {
          [v15 userNotificationCenter:_.super.isa openSettingsForNotification:isa];

          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E69A2D88]) init];
  v17 = [v16 URLForNotificationSettings];
  if (v17)
  {
    v18 = v17;
    sub_1BA4A1588();

    v19 = sub_1BA4A15D8();
    (*(*(v19 - 8) + 56))(v7, 0, 1, v19);
  }

  else
  {
    v20 = sub_1BA4A15D8();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  }

  sub_1BA12BCA4(v7, v11);
  sub_1BA331F48(v11);

  sub_1BA0B17A4(v11);
}

uint64_t sub_1BA331F48(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v85 = *(v3 - 8);
  v86 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v73[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v73[-v9];
  MEMORY[0x1EEE9AC00](v11, v12);
  v82 = &v73[-v13];
  sub_1BA33331C(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v73[-v16];
  v18 = sub_1BA4A15D8();
  v83 = *(v18 - 8);
  v19 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v18, v20);
  v81 = &v73[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v73[-v23];
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v73[-v27];
  v29 = v1 + OBJC_IVAR____TtC18HealthExperienceUI24PluginNotificationRouter_sceneProvider;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v31 = Strong, v32 = *(v29 + 8), v33 = swift_getObjectType(), v34 = (*(v32 + 8))(v33, v32), v31, v34))
  {
    sub_1BA3331A4(a1, v17);
    v35 = v83;
    if ((*(v83 + 48))(v17, 1, v18) == 1)
    {
      sub_1BA0B17A4(v17);
      sub_1BA4A3E28();
      v36 = sub_1BA4A3E88();
      v37 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        aBlock[0] = v39;
        *v38 = 136446210;
        v40 = sub_1BA4A85D8();
        v42 = v34;
        v43 = sub_1B9F0B82C(v40, v41, aBlock);

        *(v38 + 4) = v43;
        _os_log_impl(&dword_1B9F07000, v36, v37, "%{public}s Invalid URL. Something is really wrong!", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v39);
        MEMORY[0x1BFAF43A0](v39, -1, -1);
        MEMORY[0x1BFAF43A0](v38, -1, -1);
      }

      else
      {
      }

      return (*(v85 + 8))(v10, v86);
    }

    else
    {
      v52 = *(v35 + 32);
      v79 = v35 + 32;
      v80 = v34;
      v78 = v52;
      v52(v28, v17, v18);
      v53 = v82;
      sub_1BA4A3E28();
      v77 = *(v35 + 16);
      v77(v24, v28, v18);
      v54 = sub_1BA4A3E88();
      v55 = sub_1BA4A6FC8();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        aBlock[0] = v75;
        *v56 = 136446466;
        v57 = sub_1BA4A85D8();
        v59 = sub_1B9F0B82C(v57, v58, aBlock);

        *(v56 + 4) = v59;
        *(v56 + 12) = 2082;
        sub_1BA3332D4(&qword_1EBBF0B10, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v60 = sub_1BA4A82D8();
        v62 = v61;
        v63 = *(v83 + 8);
        v74 = v55;
        v76 = v63;
        v63(v24, v18);
        v64 = sub_1B9F0B82C(v60, v62, aBlock);

        *(v56 + 14) = v64;
        _os_log_impl(&dword_1B9F07000, v54, v74, "%{public}s Opening %{public}s", v56, 0x16u);
        v65 = v75;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v65, -1, -1);
        v66 = v56;
        v35 = v83;
        MEMORY[0x1BFAF43A0](v66, -1, -1);

        (*(v85 + 8))(v82, v86);
      }

      else
      {

        v76 = *(v35 + 8);
        v76(v24, v18);
        (*(v85 + 8))(v53, v86);
      }

      v67 = sub_1BA4A1548();
      v68 = v81;
      v77(v81, v28, v18);
      v69 = (*(v35 + 80) + 16) & ~*(v35 + 80);
      v70 = swift_allocObject();
      v78(v70 + v69, v68, v18);
      *(v70 + ((v19 + v69 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
      aBlock[4] = sub_1BA333238;
      aBlock[5] = v70;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BA40695C;
      aBlock[3] = &block_descriptor_39;
      v71 = _Block_copy(aBlock);

      v72 = v80;
      [v80 openURL:v67 options:0 completionHandler:v71];
      _Block_release(v71);

      return (v76)(v28, v18);
    }
  }

  else
  {
    sub_1BA4A3E28();
    v44 = sub_1BA4A3E88();
    v45 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      aBlock[0] = v47;
      *v46 = 136446210;
      v48 = sub_1BA4A85D8();
      v50 = sub_1B9F0B82C(v48, v49, aBlock);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_1B9F07000, v44, v45, "%{public}s Can not find connected scene. Something is really wrong!", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1BFAF43A0](v47, -1, -1);
      MEMORY[0x1BFAF43A0](v46, -1, -1);
    }

    return (*(v85 + 8))(v6, v86);
  }
}

void sub_1BA3327F4(char a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BA4A15D8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a1 & 1) == 0)
  {
    sub_1BA4A3E28();
    (*(v6 + 16))(v9, a2, v5);
    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v17 = 136446466;
      v18 = sub_1BA4A85D8();
      v27 = v16;
      v20 = sub_1B9F0B82C(v18, v19, &v29);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2082;
      sub_1BA3332D4(&qword_1EBBF0B10, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v21 = sub_1BA4A82D8();
      v23 = v22;
      (*(v6 + 8))(v9, v5);
      v24 = sub_1B9F0B82C(v21, v23, &v29);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_1B9F07000, v15, v27, "%{public}s Could not open %{public}s", v17, 0x16u);
      v25 = v28;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    (*(v11 + 8))(v14, v10);
  }
}

void *sub_1BA332B08()
{
  v1 = *(v0 + 16);
  if (v1)
  {
  }

  else
  {
    v17 = v0;
    v2 = sub_1BA4A3B68();
    v3 = v2;
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_22:
      v5 = sub_1BA4A7CC8();
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    v1 = MEMORY[0x1E69E7CC0];
    while (v5 != v6)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFAF2860](v6, v3);
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_21;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v10 = sub_1BA2FE0E0();
      v12 = v11;

      ++v6;
      if (v10)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_1BA280B28(0, v1[2] + 1, 1, v1);
        }

        v14 = v1[2];
        v13 = v1[3];
        if (v14 >= v13 >> 1)
        {
          v1 = sub_1BA280B28((v13 > 1), v14 + 1, 1, v1);
        }

        v1[2] = v14 + 1;
        v15 = &v1[2 * v14];
        v15[4] = v10;
        v15[5] = v12;
        v6 = v9;
      }
    }

    *(v17 + 16) = v1;
  }

  return v1;
}

uint64_t sub_1BA332CA0()
{

  return swift_deallocClassInstance();
}

double sub_1BA332D98(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  _Block_copy(a4);
  v8 = sub_1BA3308D8(a2);
  if ((v9 & 1) == 0)
  {
    v10 = sub_1BA330E40(v8);
    if (v10)
    {
      v11 = v10;
      if (sub_1BA3311D8(v10, sel_userNotificationCenter_willPresentNotification_withCompletionHandler_))
      {
        v12 = swift_allocObject();
        *(v12 + 16) = sub_1BA204DF0;
        *(v12 + 24) = v7;
        v15[4] = sub_1BA3334A0;
        v15[5] = v12;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 1107296256;
        v15[2] = sub_1BA331738;
        v15[3] = &block_descriptor_33_1;
        v13 = _Block_copy(v15);

        [v11 userNotificationCenter:a1 willPresentNotification:a2 withCompletionHandler:v13];
        _Block_release(v13);

        swift_unknownObjectRelease();
        return result;
      }

      swift_unknownObjectRelease();
    }
  }

  a4[2](a4, 27);

  return result;
}

void sub_1BA332F4C(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  _Block_copy(a4);
  v8 = [a2 notification];
  v9 = sub_1BA3308D8(v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    v12 = sub_1BA330E40(v9);
    if (v12)
    {
      v13 = v12;
      if (sub_1BA3311D8(v12, sel_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler_))
      {
        if ([v13 respondsToSelector_])
        {
          v14 = swift_allocObject();
          *(v14 + 16) = sub_1BA333194;
          *(v14 + 24) = v7;
          v16[4] = sub_1BA333484;
          v16[5] = v14;
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 1107296256;
          v16[2] = sub_1B9F0B040;
          v16[3] = &block_descriptor_23_0;
          v15 = _Block_copy(v16);
          swift_unknownObjectRetain();

          [v13 userNotificationCenter:a1 didReceiveNotificationResponse:a2 withCompletionHandler:v15];
          _Block_release(v15);

          swift_unknownObjectRelease_n();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        return;
      }

      swift_unknownObjectRelease();
    }
  }

  a4[2](a4);
}

uint64_t sub_1BA3331A4(uint64_t a1, uint64_t a2)
{
  sub_1BA33331C(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA333238(char a1)
{
  v3 = *(sub_1BA4A15D8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BA3327F4(a1, v1 + v4, v5);
}

uint64_t sub_1BA3332D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BA33331C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA3333B0()
{
  result = qword_1EDC5E238;
  if (!qword_1EDC5E238)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC5E238);
  }

  return result;
}

unint64_t sub_1BA333414()
{
  result = qword_1EDC603E0;
  if (!qword_1EDC603E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC603E0);
  }

  return result;
}

id LayoutConfiguration.layoutSection.getter()
{
  v1 = v0[5];
  v7[4] = v0[4];
  v7[5] = v1;
  v2 = v0[7];
  v7[6] = v0[6];
  v7[7] = v2;
  v3 = v0[1];
  v7[0] = *v0;
  v7[1] = v3;
  v4 = v0[3];
  v7[2] = v0[2];
  v7[3] = v4;
  sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
  sub_1B9F1D9A4(v7, &v6);
  return sub_1B9F293A8(v0);
}

double static LayoutConfiguration.chart(for:respectsSystemLayoutMargins:)@<D0>(char a1@<W1>, uint64_t a2@<X8>)
{
  sub_1B9F292B4(a2);
  v4 = [objc_opt_self() estimatedDimension_];

  *(a2 + 8) = v4;
  v5 = 2;
  if (a1)
  {
    v5 = 3;
  }

  *(a2 + 88) = v5;
  sub_1B9F1DA18(*(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48));
  result = 0.0;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  return result;
}

double LayoutConfiguration.withoutHeader.getter@<D0>(uint64_t a1@<X8>)
{
  v4 = v1[5];
  v19 = v1[4];
  v3 = v19;
  v20 = v4;
  v6 = v1[7];
  v21 = v1[6];
  v5 = v21;
  v22 = v6;
  v7 = v1[1];
  v16[0] = *v1;
  v16[1] = v7;
  v9 = v1[3];
  v17 = v1[2];
  v8 = v17;
  v18 = v9;
  *a1 = v16[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;
  *(a1 + 112) = v6;
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  sub_1B9F1D9A4(v16, &v15);
  sub_1B9F1DA18(v10, v11, v12, v13);
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

double LayoutConfiguration.withoutFooter.getter@<D0>(uint64_t a1@<X8>)
{
  v4 = v1[5];
  v19 = v1[4];
  v3 = v19;
  v20 = v4;
  v6 = v1[7];
  v21 = v1[6];
  v5 = v21;
  v22 = v6;
  v7 = v1[1];
  v16[0] = *v1;
  v16[1] = v7;
  v9 = v1[3];
  v17 = v1[2];
  v8 = v17;
  v18 = v9;
  *a1 = v16[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;
  *(a1 + 112) = v6;
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  sub_1B9F1D9A4(v16, &v15);
  sub_1B9F1DA18(v10, v11, v12, v13);
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

uint64_t LayoutConfiguration.BoundarySupplementaryItem.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  sub_1BA33572C(a1, a2);

  v4 = *(*(*(v3 + *MEMORY[0x1E69E6CE8] + 8) - 8) + 8);

  return v4(a1);
}

uint64_t ListLayoutConfiguration.withFooter.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F37E38(v2, v7);
  *(v7 + 8) = 0;
  v8 = *(v2 + 24);
  if (!v8 || !*(v2 + 32))
  {
    if (qword_1EDC6D4A0 != -1)
    {
      swift_once();
    }

    v9 = qword_1EDC6D4B0;
    v10 = v8;
    if (!v8)
    {
      v10 = qword_1EDC6D4A8;
      v11 = qword_1EDC6D4A8;
    }

    v12 = *(v7 + 3);
    v13 = v8;

    *(v7 + 3) = v10;
    v14 = *(v2 + 32);
    v15 = v14;
    if (!v14)
    {
      v16 = v9;
      v15 = v9;
    }

    v17 = *(v7 + 4);
    v18 = v14;

    *(v7 + 4) = v15;
    v19 = *(v4 + 92);
    v20 = sub_1BA4A47C8();
    v21 = *(v20 - 8);
    (*(v21 + 8))(&v7[v19], v20);
    (*(v21 + 104))(&v7[v19], *MEMORY[0x1E69DC270], v20);
  }

  return sub_1BA2AFC5C(v7, a1);
}

id static UICollectionViewCompositionalLayout.respectingLayoutMargins(sectionProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultConfiguration];
  [v4 setContentInsetsReference_];
  v5 = objc_allocWithZone(MEMORY[0x1E69DC808]);
  v9[4] = a1;
  v9[5] = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1B9F54940;
  v9[3] = &block_descriptor_89;
  v6 = _Block_copy(v9);

  v7 = [v5 initWithSectionProvider:v6 configuration:v4];

  _Block_release(v6);

  return v7;
}

__n128 static LayoutConfiguration.pill(environment:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v20[4] = xmmword_1EDC6D3C8;
  v20[5] = unk_1EDC6D3D8;
  v20[6] = xmmword_1EDC6D3E8;
  v20[7] = unk_1EDC6D3F8;
  v20[0] = xmmword_1EDC6D388;
  v20[1] = xmmword_1EDC6D398;
  v20[2] = xmmword_1EDC6D3A8;
  v20[3] = xmmword_1EDC6D3B8;
  v17 = unk_1EDC6D3D8;
  v18 = xmmword_1EDC6D3E8;
  v19 = unk_1EDC6D3F8;
  v13 = xmmword_1EDC6D398;
  v14 = xmmword_1EDC6D3A8;
  v4 = *(&xmmword_1EDC6D388 + 1);
  v5 = xmmword_1EDC6D388;
  v15 = xmmword_1EDC6D3B8;
  v16 = xmmword_1EDC6D3C8;
  sub_1B9F1D9A4(v20, &v12);
  v6 = [a1 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  LOBYTE(v6) = sub_1BA4A7528();
  if (v6)
  {
    v8 = *(&v20[0] + 1);
    v4 = [objc_opt_self() estimatedDimension_];
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  v9 = v18;
  *(a2 + 80) = v17;
  *(a2 + 96) = v9;
  *(a2 + 112) = v19;
  v10 = v14;
  *(a2 + 16) = v13;
  *(a2 + 32) = v10;
  result = v16;
  *(a2 + 48) = v15;
  *(a2 + 64) = result;
  return result;
}

uint64_t ListLayoutConfiguration.withItemSeparationHandler(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B9F37E38(v3, a3);
  v7 = *(a3 + 128);
  v8 = *(a3 + 136);

  result = sub_1B9F0E310(v7, v8);
  *(a3 + 128) = a1;
  *(a3 + 136) = a2;
  return result;
}

uint64_t LayoutConfigurationProviding.respectsSystemLayoutMargins.setter(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  return (*(a3 + 16))(v3, a2);
}

uint64_t (*LayoutConfigurationProviding.respectsSystemLayoutMargins.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = ((*(a3 + 8))(a2, a3) - 3) < 2;
  return sub_1BA333D00;
}

uint64_t sub_1BA333D00(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1[1] + 16);
  if (*(a1 + 24))
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  return v2(v3, v1);
}

void LayoutConfiguration.header.getter(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_1B9F29940(v2, v3, v4, v5);
}

__n128 LayoutConfiguration.header.setter(uint64_t a1)
{
  sub_1B9F1DA18(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = *a1;
  *(v1 + 40) = *(a1 + 16);
  *(v1 + 24) = result;
  return result;
}

void LayoutConfiguration.footer.getter(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_1B9F29940(v2, v3, v4, v5);
}

__n128 LayoutConfiguration.footer.setter(uint64_t a1)
{
  sub_1B9F1DA18(*(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  result = *a1;
  *(v1 + 72) = *(a1 + 16);
  *(v1 + 56) = result;
  return result;
}

void LayoutConfiguration.additionalContentInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[12] = a1;
  v4[13] = a2;
  v4[14] = a3;
  v4[15] = a4;
}

id LayoutConfiguration.itemSize.getter()
{
  v1 = [objc_opt_self() sizeWithWidthDimension:*(v0 + 16) heightDimension:*(v0 + 8)];

  return v1;
}

Swift::Void __swiftcall LayoutConfiguration.setContentInsets(_:relativeToLayoutMargins:)(NSDirectionalEdgeInsets _, Swift::Bool relativeToLayoutMargins)
{
  v3 = 2;
  if (relativeToLayoutMargins)
  {
    v3 = 3;
  }

  *(v2 + 88) = v3;
  *(v2 + 96) = _;
}

void LayoutConfiguration.BoundarySupplementaryItem.subscript.getter()
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v3 = v5;
  v4 = v6;
  swift_getAtKeyPath();
}

void (*LayoutConfiguration.BoundarySupplementaryItem.subscript.modify(void *a1, void *a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*a2 + *MEMORY[0x1E69E6CE8] + 8);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  LayoutConfiguration.BoundarySupplementaryItem.subscript.getter();
  return sub_1BA334250;
}

void sub_1BA334250(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);

    sub_1BA33572C(v3, v7);

    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {

    sub_1BA33572C(v4, v7);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

id static LayoutConfiguration.BoundarySupplementaryItem.topAligned(width:height:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 2;
  *(a3 + 8) = 1;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  v3 = a1;

  return a2;
}

uint64_t LayoutConfiguration.BoundarySupplementaryItem.init(width:height:alignment:followsContentInsets:pinToVisibleBounds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a3;
  *(a6 + 8) = a4;
  *(a6 + 9) = a5;
  *(a6 + 16) = result;
  *(a6 + 24) = a2;
  return result;
}

__n128 LayoutConfiguration.BoundarySupplementaryItem.init(size:alignment:followsContentInsets:pinToVisibleBounds:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, unsigned __int8 a4@<W3>, __n128 *a5@<X8>)
{
  result = *a1;
  a5[1] = *a1;
  a5->n128_u64[0] = a2;
  a5->n128_u8[8] = a3;
  a5->n128_u8[9] = a4;
  return result;
}

id static LayoutConfiguration.BoundarySupplementaryItem.bottomAligned(width:height:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 4;
  *(a3 + 8) = 1;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  v3 = a1;

  return a2;
}

id sub_1BA334428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v6 = *(a1 + 8);
  *(a3 + 16) = *a1;
  *(a3 + 24) = v6;
  *a3 = a2;
  *(a3 + 8) = 1;
  v4 = v3;

  return v6;
}

HealthExperienceUI::LayoutConfiguration::Size __swiftcall LayoutConfiguration.Size.init(width:height:)(NSCollectionLayoutDimension width, NSCollectionLayoutDimension height)
{
  v2->super.isa = width.super.isa;
  v2[1].super.isa = height.super.isa;
  result.height = height;
  result.width = width;
  return result;
}

NSCollectionLayoutBoundarySupplementaryItem __swiftcall LayoutConfiguration.BoundarySupplementaryItem.collectionLayoutItem(forElementKind:)(Swift::String forElementKind)
{
  v2 = *v1;
  v3 = *(v1 + 9);
  v4 = [objc_opt_self() sizeWithWidthDimension:v1[2] heightDimension:v1[3]];
  v5 = sub_1BA4A6758();
  v6 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v4 elementKind:v5 alignment:v2];

  [v6 setPinToVisibleBounds_];
  v7 = v6;
  [v7 contentInsets];
  [v7 setContentInsets_];
  [v7 contentInsets];
  [v7 setContentInsets_];

  return v7;
}

id static LayoutConfiguration.Size.supplementaryItemDefault.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDC6D4A0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_1EDC6D4A8;
  v1 = qword_1EDC6D4B0;
  v6 = qword_1EDC6D4B0;
  *a1 = qword_1EDC6D4A8;
  a1[1] = v1;
  v3 = v2;

  return v6;
}

uint64_t static LayoutConfiguration.short.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EBBE8838 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_1EBBF0B58;
  v2 = unk_1EBBF0B68;
  v11[4] = xmmword_1EBBF0B58;
  v11[5] = unk_1EBBF0B68;
  v3 = xmmword_1EBBF0B78;
  v4 = unk_1EBBF0B88;
  v11[6] = xmmword_1EBBF0B78;
  v11[7] = unk_1EBBF0B88;
  v5 = unk_1EBBF0B28;
  v11[0] = xmmword_1EBBF0B18;
  v11[1] = unk_1EBBF0B28;
  v6 = xmmword_1EBBF0B38;
  v7 = unk_1EBBF0B48;
  v11[2] = xmmword_1EBBF0B38;
  v11[3] = unk_1EBBF0B48;
  *a1 = xmmword_1EBBF0B18;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v1;
  a1[5] = v2;
  a1[6] = v3;
  a1[7] = v4;
  return sub_1B9F1D9A4(v11, &v10);
}

uint64_t static LayoutConfiguration.pill.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EDC6D380 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_1EDC6D3C8;
  v2 = unk_1EDC6D3D8;
  v11[4] = xmmword_1EDC6D3C8;
  v11[5] = unk_1EDC6D3D8;
  v3 = xmmword_1EDC6D3E8;
  v4 = unk_1EDC6D3F8;
  v11[6] = xmmword_1EDC6D3E8;
  v11[7] = unk_1EDC6D3F8;
  v5 = xmmword_1EDC6D398;
  v11[0] = xmmword_1EDC6D388;
  v11[1] = xmmword_1EDC6D398;
  v6 = xmmword_1EDC6D3A8;
  v7 = xmmword_1EDC6D3B8;
  v11[2] = xmmword_1EDC6D3A8;
  v11[3] = xmmword_1EDC6D3B8;
  *a1 = xmmword_1EDC6D388;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v1;
  a1[5] = v2;
  a1[6] = v3;
  a1[7] = v4;
  return sub_1B9F1D9A4(v11, &v10);
}

void sub_1BA334814()
{
  sub_1B9F292B4(&xmmword_1EDC67D38);
  v0 = [objc_opt_self() estimatedDimension_];
  v1 = *(&xmmword_1EDC67D38 + 1);
  *(&xmmword_1EDC67D38 + 1) = v0;

  *&xmmword_1EDC67D38 = 0;
}

uint64_t static LayoutConfiguration.table.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EBBE8848 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_1EDC67D78;
  v2 = *&qword_1EDC67D88;
  v11[4] = xmmword_1EDC67D78;
  v11[5] = *&qword_1EDC67D88;
  v3 = xmmword_1EDC67D98;
  v4 = unk_1EDC67DA8;
  v11[6] = xmmword_1EDC67D98;
  v11[7] = unk_1EDC67DA8;
  v5 = *&qword_1EDC67D48;
  v11[0] = xmmword_1EDC67D38;
  v11[1] = *&qword_1EDC67D48;
  v6 = xmmword_1EDC67D58;
  v7 = *&qword_1EDC67D68;
  v11[2] = xmmword_1EDC67D58;
  v11[3] = *&qword_1EDC67D68;
  *a1 = xmmword_1EDC67D38;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v1;
  a1[5] = v2;
  a1[6] = v3;
  a1[7] = v4;
  return sub_1B9F1D9A4(v11, &v10);
}

uint64_t static LayoutConfiguration.empty.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EDC6D2F0 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_1EDC6D338;
  v2 = unk_1EDC6D348;
  v11[4] = xmmword_1EDC6D338;
  v11[5] = unk_1EDC6D348;
  v3 = xmmword_1EDC6D358;
  v4 = unk_1EDC6D368;
  v11[6] = xmmword_1EDC6D358;
  v11[7] = unk_1EDC6D368;
  v5 = *&qword_1EDC6D308;
  v11[0] = xmmword_1EDC6D2F8;
  v11[1] = *&qword_1EDC6D308;
  v6 = xmmword_1EDC6D318;
  v7 = unk_1EDC6D328;
  v11[2] = xmmword_1EDC6D318;
  v11[3] = unk_1EDC6D328;
  *a1 = xmmword_1EDC6D2F8;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v1;
  a1[5] = v2;
  a1[6] = v3;
  a1[7] = v4;
  return sub_1B9F1D9A4(v11, &v10);
}

id ListLayoutConfiguration.headerWidth.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *ListLayoutConfiguration.headerHeight.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *ListLayoutConfiguration.footerWidth.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *ListLayoutConfiguration.footerHeight.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void ListLayoutConfiguration.additionalContentInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
}

__n128 ListLayoutConfiguration.separatorInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  result = *(v1 + 88);
  v4 = *(v1 + 104);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 ListLayoutConfiguration.separatorInsets.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 104) = v3;
  *(v1 + 120) = *(a1 + 32);
  return result;
}

uint64_t ListLayoutConfiguration.itemSeparatorHandler.getter()
{
  v1 = *(v0 + 128);
  sub_1B9F0F1B8(v1, *(v0 + 136));
  return v1;
}

uint64_t ListLayoutConfiguration.itemSeparatorHandler.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B9F0E310(*(v2 + 128), *(v2 + 136));
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t sub_1BA334D88@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 160);
  v4 = *(a1 + 168);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA335A2C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1B9F0F1B8(v3, v4);
}

uint64_t sub_1BA334E08(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA335A28;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 160);
  v8 = *(a2 + 168);
  sub_1B9F0F1B8(v3, v4);
  result = sub_1B9F0E310(v7, v8);
  *(a2 + 160) = v6;
  *(a2 + 168) = v5;
  return result;
}

uint64_t ListLayoutConfiguration.leadingSwipeActionsConfigurationProvider.getter()
{
  v1 = *(v0 + 160);
  sub_1B9F0F1B8(v1, *(v0 + 168));
  return v1;
}

uint64_t ListLayoutConfiguration.leadingSwipeActionsConfigurationProvider.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B9F0E310(*(v2 + 160), *(v2 + 168));
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t sub_1BA334F30@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 176);
  v4 = *(a1 + 184);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA3359F8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1B9F0F1B8(v3, v4);
}

uint64_t sub_1BA334FB0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA1F2B54;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 176);
  v8 = *(a2 + 184);
  sub_1B9F0F1B8(v3, v4);
  result = sub_1B9F0E310(v7, v8);
  *(a2 + 176) = v6;
  *(a2 + 184) = v5;
  return result;
}

uint64_t ListLayoutConfiguration.trailingSwipeActionsConfigurationProvider.getter()
{
  v1 = *(v0 + 176);
  sub_1B9F0F1B8(v1, *(v0 + 184));
  return v1;
}

uint64_t ListLayoutConfiguration.trailingSwipeActionsConfigurationProvider.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B9F0E310(*(v2 + 176), *(v2 + 184));
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return result;
}

uint64_t ListLayoutConfiguration.headerMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListLayoutConfiguration(0) + 88);
  v4 = sub_1BA4A47D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListLayoutConfiguration.headerMode.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListLayoutConfiguration(0) + 88);
  v4 = sub_1BA4A47D8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListLayoutConfiguration.footerMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListLayoutConfiguration(0) + 92);
  v4 = sub_1BA4A47C8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListLayoutConfiguration.footerMode.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListLayoutConfiguration(0) + 92);
  v4 = sub_1BA4A47C8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1BA335448()
{
  v0 = type metadata accessor for ListLayoutConfiguration(0);
  __swift_allocate_value_buffer(v0, qword_1EDC6CB70);
  v1 = __swift_project_value_buffer(v0, qword_1EDC6CB70);
  if (qword_1EDC6CBB0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EDC6CBB8);

  return sub_1B9F37E38(v2, v1);
}

void ListLayoutConfiguration.withoutHeader.getter(id *a1@<X8>)
{
  sub_1B9F37E38(v1, a1);
  v3 = *(type metadata accessor for ListLayoutConfiguration(0) + 88);
  v4 = sub_1BA4A47D8();
  v5 = *(v4 - 8);
  (*(v5 + 8))(a1 + v3, v4);
  (*(v5 + 104))(a1 + v3, *MEMORY[0x1E69DC290], v4);

  a1[1] = 0;
  *a1 = 0;
}

void sub_1BA3355E0(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration(0);
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  _s18HealthExperienceUI23ListLayoutConfigurationV16withLeadingInset5insetAC12CoreGraphics7CGFloatV_tFZ_0(v4);
  v5 = *(v3 + 88);
  v6 = sub_1BA4A47D8();
  v7 = *(v6 - 8);
  (*(v7 + 8))(v4 + v5, v6);
  (*(v7 + 104))(v4 + v5, *MEMORY[0x1E69DC290], v6);
  v8 = v4[1];
  v4[1] = 0;

  v9 = *v4;
  *v4 = 0;
}

uint64_t ListLayoutConfiguration.withAbsoluteLayoutMargins.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B9F37E38(v1, a1);
  *(a1 + 144) = 2;
  return result;
}

uint64_t sub_1BA33572C(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a1);
  (*(v4 + 16))(&v6 - v3, v2);
  return swift_setAtWritableKeyPath();
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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

uint64_t sub_1BA335880(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1BA3358C8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1BA335928(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA335970(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1BA3359F8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t HealthDataSecurityMessagingVariant.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

uint64_t HealthDataSecurityMessagingVariantProvider.__allocating_init(healthStore:)(void *a1)
{
  v2 = swift_allocObject();
  HealthDataSecurityMessagingVariantProvider.init(healthStore:)(a1);
  return v2;
}

uint64_t HealthDataSecurityMessagingVariantProvider.init(healthStore:)(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  sub_1BA335CF0(0, &qword_1EBBF0BB0, sub_1B9F1174C, MEMORY[0x1E695BF98]);
  swift_allocObject();
  *(v1 + 24) = sub_1BA4A4DF8();
  sub_1B9F0ADF8(0, &unk_1EDC5E3E0, 0x1E696BFE8);
  sub_1BA4A7428();
  swift_allocObject();
  swift_weakInit();
  sub_1BA335CF0(0, &qword_1EDC5F470, sub_1B9F113DC, MEMORY[0x1E695BED0]);
  sub_1BA335D64();
  v4 = sub_1BA4A5148();

  *(v2 + 16) = v4;

  return v2;
}

double sub_1BA335C74(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1BA335DEC(v2, v3);
  }

  return result;
}

void sub_1BA335CF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1BA335D64()
{
  result = qword_1EDC5F478;
  if (!qword_1EDC5F478)
  {
    sub_1BA335CF0(255, &qword_1EDC5F470, sub_1B9F113DC, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F478);
  }

  return result;
}

uint64_t sub_1BA335DEC(void *a1, char a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v4, v6).n128_u64[0];
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1BA4A3E28();
    v10 = a1;
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FA8();
    sub_1BA336520(a1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      *v13 = 136446466;
      v14 = sub_1BA4A85D8();
      v16 = sub_1B9F0B82C(v14, v15, &v26);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      v25 = a1;
      v17 = a1;
      sub_1B9FED358();
      v18 = sub_1BA4A6808();
      v20 = sub_1B9F0B82C(v18, v19, &v26);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_1B9F07000, v11, v12, "[%{public}s] Error retrieving cloud sync status: %s", v13, 0x16u);
      v21 = v24;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v21, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    LOBYTE(v26) = 2;
  }

  else
  {
    LOBYTE(v26) = [a1 accountSupportsSecureContainer];
  }

  return sub_1BA4A4DC8();
}

uint64_t sub_1BA336064()
{
  sub_1BA3361DC(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *(v0 + 24);
  sub_1BA335CF0(0, &qword_1EBBF0BB0, sub_1B9F1174C, MEMORY[0x1E695BF98]);
  sub_1BA336278();

  sub_1BA4A4FE8();

  sub_1BA336384();
  v7 = sub_1BA4A4F98();
  (*(v3 + 8))(v6, v2);
  return v7;
}

void sub_1BA3361DC(uint64_t a1)
{
  if (!qword_1EBBF0BB8)
  {
    sub_1BA335CF0(255, &qword_1EBBF0BB0, sub_1B9F1174C, MEMORY[0x1E695BF98]);
    sub_1BA336278();
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF0BB8);
    }
  }
}

unint64_t sub_1BA336278()
{
  result = qword_1EBBF0BC0;
  if (!qword_1EBBF0BC0)
  {
    sub_1BA335CF0(255, &qword_1EBBF0BB0, sub_1B9F1174C, MEMORY[0x1E695BF98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0BC0);
  }

  return result;
}

void sub_1BA336300(char *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = [objc_opt_self() sharedConnection];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 isPasscodeSet];

    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    if (v3)
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1BA336384()
{
  result = qword_1EBBF0BC8;
  if (!qword_1EBBF0BC8)
  {
    sub_1BA3361DC(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0BC8);
  }

  return result;
}

uint64_t HealthDataSecurityMessagingVariantProvider.deinit()
{

  return v0;
}

uint64_t HealthDataSecurityMessagingVariantProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1BA336448()
{
  result = qword_1EBBF0BD0;
  if (!qword_1EBBF0BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0BD0);
  }

  return result;
}

double sub_1BA33655C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v28[1] = a2;
  v6 = sub_1BA4A6478();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A64C8();
  v31 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BA4A6488();
  v16 = *(v15 - 8);
  *&result = MEMORY[0x1EEE9AC00](v15, v17).n128_u64[0];
  v20 = v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v4 + *a1;
  v22 = *(v21 + 8);
  if (v22 <= 1)
  {
    v28[0] = v11;
    v23 = *v21;
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
    (*(v16 + 104))(v20, *MEMORY[0x1E69E7F88], v15);
    sub_1BA02040C(v23, v22);
    v24 = sub_1BA4A7338();
    (*(v16 + 8))(v20, v15);
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    aBlock[4] = v29;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = v30;
    v26 = _Block_copy(aBlock);
    sub_1BA4A64A8();
    v32 = MEMORY[0x1E69E7CC0];
    sub_1B9F0AFA8(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v27 = MEMORY[0x1E69E7F60];
    sub_1B9F3E8C4(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60]);
    sub_1BA33AAD0(&qword_1EDC5E6A0, &qword_1EDC5E6B0, v27);
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v14, v10, v26);
    _Block_release(v26);

    (*(v7 + 8))(v10, v6);
    (*(v31 + 8))(v14, v28[0]);
  }

  return result;
}

id sub_1BA336920()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A72F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A7288();
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = sub_1BA4A64C8();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___queue;
  v12 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___queue);
  if (v12)
  {
    v13 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___queue);
  }

  else
  {
    v24 = sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
    v25 = 0;
    v26 = 0xE000000000000000;
    v23 = v2;
    sub_1BA4A7DF8();
    v14 = sub_1BA4A85D8();
    v16 = v15;

    v25 = v14;
    v26 = v16;
    MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA500DD0);
    v22[2] = v26;
    v22[3] = v25;
    sub_1BA4A64A8();
    v25 = MEMORY[0x1E69E7CC0];
    v22[1] = sub_1B9F0AFA8(&unk_1EDC5E480, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    v17 = MEMORY[0x1E69E8030];
    sub_1B9F3E8C4(0, &qword_1EDC5E670, MEMORY[0x1E69E8030]);
    sub_1BA33AAD0(&qword_1EDC5E660, &qword_1EDC5E670, v17);
    sub_1BA4A7C38();
    (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v23);
    v18 = sub_1BA4A7328();
    v19 = *(v1 + v11);
    *(v1 + v11) = v18;
    v13 = v18;

    v12 = 0;
  }

  v20 = v12;
  return v13;
}

void (*sub_1BA336C24(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1BA336920();
  return sub_1BA336C6C;
}

void sub_1BA336C6C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___queue);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___queue) = v2;
}

uint64_t sub_1BA336C84()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___isStewieSupported;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___isStewieSupported);
  if (v2 == 2)
  {
    if (HAFeatureFlagStewieEnabled())
    {
      v3 = v0 + OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController_emergencyStatus;
      LOBYTE(v2) = *(v3 + *(type metadata accessor for EmergencyAccessUserStatus(0) + 20));
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

id sub_1BA336CF0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutModeBullet;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutModeBullet];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutModeBullet];
  }

  else
  {
    sub_1BA336D54(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1BA336D54(void *a1)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v21 = sub_1BA4A1318();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = objc_opt_self();
  v6 = *MEMORY[0x1E69DDDB8];
  v7 = a1;
  v8 = [v5 preferredFontForTextStyle_];
  v9 = [objc_opt_self() configurationWithFont_];
  v10 = sub_1BA4A6758();
  v11 = objc_opt_self();
  v12 = [v11 _systemImageNamed_withConfiguration_];

  v13 = v12;
  if (v12 || (type metadata accessor for EmergencyAccessBuddyStartViewController(0), ObjCClassFromMetadata = swift_getObjCClassFromMetadata(), v15 = [objc_opt_self() bundleForClass_], v16 = sub_1BA4A6758(), v13 = objc_msgSend(v11, sel_imageNamed_inBundle_, v16, v15), v16, v15, v13))
  {
    v17 = v12;
    v18 = sub_1BA4A1318();
    v20 = v19;
    v22[0] = v21;
    v22[1] = v3;
    v22[2] = sub_1BA33A714;
    v22[3] = v4;
    objc_allocWithZone(type metadata accessor for OBKStyleBulletListItemView());

    [OBKStyleBulletListItemView.init(image:title:description:buttonConfiguration:)(v13 v18];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA33709C(void *a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BA338C60())
  {

    sub_1BA339220();
  }

  else
  {
    sub_1BA4A3DD8();
    v7 = sub_1BA4A3E88();
    v8 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1B9F0B82C(0xD000000000000026, 0x80000001BA4D2150, &v12);
      _os_log_impl(&dword_1B9F07000, v7, v8, "[%s] User is not currently eligible to launch the demo flow", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1BFAF43A0](v10, -1, -1);
      MEMORY[0x1BFAF43A0](v9, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    sub_1BA339490(a1);
  }
}

Swift::Void __swiftcall StewieDemoFlowProviding.launchStewieDemoFlowIfEligible(on:)(UIViewController_optional *on)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (StewieDemoFlowProviding.canLaunchStewieDemoFlow()())
  {

    StewieDemoFlowProviding.launchStewieDemoFlow()();
  }

  else
  {
    sub_1BA4A3DD8();
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v21 = v13;
      v22 = swift_slowAlloc();
      v24 = v22;
      *v13 = 136315138;
      v14 = sub_1BA4A85D8();
      v23 = on;
      v16 = sub_1B9F0B82C(v14, v15, &v24);
      on = v23;

      v17 = v21;
      *(v21 + 1) = v16;
      v18 = v12;
      v19 = v17;
      _os_log_impl(&dword_1B9F07000, v11, v18, "[%s] User is not currently eligible to launch the demo flow", v17, 0xCu);
      v20 = v22;
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    sub_1BA339978(on, v4, v3);
  }
}

id sub_1BA3374B4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutModeView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutModeView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutModeView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *MEMORY[0x1E69796E8];
    v6 = [v4 layer];
    [v6 setCornerCurve_];

    v7 = [v4 layer];
    [v7 setCornerRadius_];

    v8 = [v4 layer];
    [v8 setMaskedCorners_];

    [v4 setClipsToBounds_];
    v9 = [objc_opt_self() systemGray5Color];
    [v4 setBackgroundColor_];

    v10 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_1BA337638()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutFootnote;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutFootnote);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutFootnote);
  }

  else
  {
    v4 = sub_1BA337698();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA337698()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setNumberOfLines_];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  [v0 setAdjustsFontForContentSizeCategory_];
  v2 = [objc_opt_self() systemGrayColor];
  [v0 setTextColor_];

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v3 = sub_1BA4A6758();

  [v0 setText_];

  return v0;
}

void sub_1BA337850(void *a1, uint64_t *a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController_stewieStateMonitor] = 0;
  v6 = *a2;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___queue] = 0;
  v3[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___isStewieSupported] = 2;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutModeBullet] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutModeView] = 0;
  v7 = *(a2 + 8);
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutFootnote] = 0;
  v8 = &v3[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController_flow];
  *v8 = v6;
  v8[8] = v7;
  sub_1BA020470(a3, &v3[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController_emergencyStatus]);
  type metadata accessor for EmergencyAccessBuddyStartViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_1BA4A6758();
  v12 = [objc_opt_self() imageNamed:v11 inBundle:v10];

  if (v12)
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1BA4A1318();
    sub_1B9F2EAC0(0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BA4B5480;
    v14 = MEMORY[0x1E69E65A8];
    *(v13 + 56) = MEMORY[0x1E69E6530];
    *(v13 + 64) = v14;
    *(v13 + 32) = 6;
    sub_1BA4A6768();

    v15 = sub_1BA4A6758();

    v16 = sub_1BA4A6758();

    v24.receiver = v3;
    v24.super_class = type metadata accessor for EmergencyAccessBuddyDoneViewController(0);
    v17 = objc_msgSendSuper2(&v24, sel_initWithTitle_detailText_icon_contentLayout_, v15, v16, v12, 2, 0xE000000000000000);

    v18 = v17;
    v19 = sub_1BA336920();
    v20 = [objc_allocWithZone(MEMORY[0x1E6965080]) initWithDelegate:v18 queue:v19];

    v21 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController_stewieStateMonitor;
    swift_beginAccess();
    v22 = *&v18[v21];
    *&v18[v21] = v20;

    v23 = *&v18[v21];
    if (v23)
    {
      [v23 start];
    }

    sub_1BA338438(a1);

    sub_1BA0204E8(a3);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA337C38()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v1 = [objc_opt_self() boldButton];
  v2 = sub_1BA4A6758();

  [v1 setTitle:v2 forState:0];

  [v1 addTarget:v0 action:sel_didTapDone_ forControlEvents:64];
  v3 = [v0 buttonTray];
  [v3 addButton_];
}

void sub_1BA337D8C()
{
  if (sub_1BA336C84())
  {
    v1 = [v0 contentView];
    v2 = sub_1BA3374B4();
    [v1 addSubview_];

    v3 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutModeView;
    v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutModeView];
    v5 = sub_1BA336CF0();
    [v4 addSubview_];

    v6 = [v0 &selRef_fetchSources];
    v7 = sub_1BA337638();
    [v6 addSubview_];

    v52 = objc_opt_self();
    sub_1B9F109F8();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BA4B79D0;
    v9 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutModeBullet;
    v10 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutModeBullet] topAnchor];
    v11 = [v0 &selRef_fetchSources];
    v12 = [v11 topAnchor];

    v13 = [v10 constraintEqualToAnchor:v12 constant:22.0];
    *(v8 + 32) = v13;
    v14 = [*&v0[v9] leadingAnchor];
    v15 = [v0 &selRef_fetchSources];
    v16 = [v15 leadingAnchor];

    v17 = [v14 constraintEqualToAnchor_];
    *(v8 + 40) = v17;
    v18 = [*&v0[v9] trailingAnchor];
    v19 = [v0 &selRef_fetchSources];
    v20 = [v19 &selRef_cloudSyncObserverSyncCompleted_ + 4];

    v21 = [v18 constraintEqualToAnchor_];
    *(v8 + 48) = v21;
    v22 = [*&v0[v3] topAnchor];
    v23 = [*&v0[v9] topAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:-16.0];

    *(v8 + 56) = v24;
    v25 = [*&v0[v3] leadingAnchor];
    v26 = [v0 contentView];
    v27 = [v26 &selRef__totalDistance + 1];

    v28 = [v25 constraintEqualToAnchor:v27 constant:-16.0];
    *(v8 + 64) = v28;
    v29 = [*&v0[v3] trailingAnchor];
    v30 = [v0 contentView];
    v31 = [v30 trailingAnchor];

    v32 = [v29 &selRef:v31 objectAtIndex:16.0 + 6];
    *(v8 + 72) = v32;
    v33 = [*&v0[v3] bottomAnchor];
    v34 = [*&v0[v9] bottomAnchor];
    v35 = [v33 &selRef:v34 objectAtIndex:16.0 + 6];

    *(v8 + 80) = v35;
    v36 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutFootnote;
    v37 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutFootnote] topAnchor];
    v38 = [*&v0[v3] bottomAnchor];
    v39 = [v37 &selRef:v38 objectAtIndex:5.0 + 6];

    *(v8 + 88) = v39;
    v40 = [*&v0[v36] leadingAnchor];
    v41 = [v0 contentView];
    v42 = [v41 leadingAnchor];

    v43 = [v40 constraintEqualToAnchor_];
    *(v8 + 96) = v43;
    v44 = [*&v0[v36] trailingAnchor];
    v45 = [v0 contentView];
    v46 = [v45 trailingAnchor];

    v47 = [v44 constraintEqualToAnchor_];
    *(v8 + 104) = v47;
    v48 = [*&v0[v36] bottomAnchor];
    v49 = [v0 contentView];
    v50 = [v49 bottomAnchor];

    v51 = [v48 constraintEqualToAnchor_];
    *(v8 + 112) = v51;
    sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
    v53 = sub_1BA4A6AE8();

    [v52 activateConstraints_];
  }
}

void sub_1BA338438(uint64_t a1)
{
  v2 = sub_1BA336C84();
  sub_1B9F0ADF8(0, &qword_1EDC5E500, 0x1E696C210);
  if (v2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  static HKKeyValueDomain.saveOnboardingStatus(_:healthStore:)(v3, a1);
  if (qword_1EDC5E450 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDC5E458;
  v5 = objc_allocWithZone(sub_1BA4A34C8());
  v6 = v4;
  v7 = sub_1BA4A34B8();
  sub_1B9F0ADF8(0, &qword_1EDC6B5F0, 0x1E696ADC8);
  v8 = sub_1BA4A7198();
  [v8 addOperation_];
}

void sub_1BA338540()
{
  ObjectType = swift_getObjectType();
  [v0 dismissViewControllerAnimated:1 completion:0];
  sub_1BA33655C(&OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController_flow, &unk_1F3817B60, sub_1BA020420, &block_descriptor_27_1);
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v2 = objc_allocWithZone(MEMORY[0x1E6997AC8]);
  v3 = sub_1BA4A6758();

  v4 = [v2 initWithClientIdentifier_];

  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = ObjectType;
    v7[4] = sub_1BA33A6B0;
    v7[5] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1BA454240;
    v7[3] = &block_descriptor_21_1;
    v6 = _Block_copy(v7);

    [v4 clearPendingFollowUpItemsWithCompletion_];
    _Block_release(v6);
  }
}

uint64_t sub_1BA3386CC(char a1, void *a2, uint64_t a3)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v10 = a2;
  v11 = sub_1BA4A3E88();
  v12 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = v5;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136315650;
    v16 = sub_1BA4A85D8();
    v18 = sub_1B9F0B82C(v16, v17, &v27);

    *(v14 + 4) = v18;
    *(v14 + 12) = 1024;
    *(v14 + 14) = a1 & 1;
    *(v14 + 18) = 2080;
    v26 = a2;
    v19 = a2;
    sub_1BA33A6B8(0, &qword_1EDC6B3E0, &qword_1EDC6E310, MEMORY[0x1E69E7280], sub_1B9F0D950);
    v20 = sub_1BA4A6828();
    v22 = sub_1B9F0B82C(v20, v21, &v27);

    *(v14 + 20) = v22;
    _os_log_impl(&dword_1B9F07000, v11, v12, "[%s] Cleared pending followup items with success %{BOOL}d and error %s", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v15, -1, -1);
    MEMORY[0x1BFAF43A0](v14, -1, -1);

    return (*(v6 + 8))(v9, v25);
  }

  else
  {

    return (*(v6 + 8))(v9, v5);
  }
}

id sub_1BA3389F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmergencyAccessBuddyDoneViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1BA338AD4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController_stewieStateMonitor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA338B20(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController_stewieStateMonitor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1BA338BDC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___queue);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___queue) = a1;
}

void (*sub_1BA338BF0(id **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1BA336C24(v2);
  return sub_1B9FCDD98;
}

uint64_t sub_1BA338C60()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController_stewieStateMonitor;
  swift_beginAccess();
  v8 = *&v1[v7];
  if (v8 && (v9 = [v8 getState]) != 0)
  {
    v10 = v9;
    v11 = [v9 allowedServices];
    v12 = [v10 activeServices];

    return (v12 != 1) & (v11 >> 1);
  }

  else
  {
    sub_1BA4A3DD8();
    v14 = v1;
    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_1B9F0B82C(0xD000000000000026, 0x80000001BA4D2150, &v25);
      *(v17 + 12) = 2080;
      v19 = *&v1[v7];
      v24[1] = v19;
      sub_1BA33A6B8(0, &qword_1EBBF0BE0, &unk_1EBBF0BE8, 0x1E6965080, sub_1B9F0ADF8);
      v20 = v19;
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, &v25);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_1B9F07000, v15, v16, "[%s] Stewie state monitor did not provide a state for us to determine if flow can be launched: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v18, -1, -1);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }
}

Swift::Bool __swiftcall StewieDemoFlowProviding.canLaunchStewieDemoFlow()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 8);
  v11 = v10(v3, v2, v7);
  if (v11 && (v12 = v11, v13 = [v11 getState], v12, v13))
  {
    v14 = [v13 allowedServices];
    v15 = [v13 activeServices];

    return (v15 != 1) & (v14 >> 1);
  }

  else
  {
    sub_1BA4A3DD8();
    swift_unknownObjectRetain();
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FA8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v33 = v4;
      v20 = v19;
      v32 = swift_slowAlloc();
      v35 = v32;
      *v20 = 136315394;
      v21 = sub_1BA4A85D8();
      HIDWORD(v30) = v18;
      v23 = sub_1B9F0B82C(v21, v22, &v35);
      v31 = v5;
      v24 = v23;

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v34 = (v10)(v3, v2);
      sub_1BA33A6B8(0, &qword_1EBBF0BE0, &unk_1EBBF0BE8, 0x1E6965080, sub_1B9F0ADF8);
      v25 = sub_1BA4A6808();
      v27 = sub_1B9F0B82C(v25, v26, &v35);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_1B9F07000, v17, BYTE4(v30), "[%s] Stewie state monitor did not provide a state for us to determine if flow can be launched: %s", v20, 0x16u);
      v28 = v32;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v20, -1, -1);

      (*(v31 + 8))(v9, v33);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }

    LOBYTE(v16) = 0;
  }

  return v16;
}

void sub_1BA339220()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6965078]) init];
  [v0 setReason_];
  v1 = sub_1BA336920();
  v2 = [objc_allocWithZone(MEMORY[0x1E69650A0]) initWithQueue_];

  v4[4] = sub_1BA339E3C;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1BA33A4B8;
  v4[3] = &block_descriptor_33_2;
  v3 = _Block_copy(v4);

  [v2 requestStewieWithContext:v0 completion:v3];
  _Block_release(v3);
}

Swift::Void __swiftcall StewieDemoFlowProviding.launchStewieDemoFlow()()
{
  v2 = v1;
  v3 = v0;
  v4 = [objc_allocWithZone(MEMORY[0x1E6965078]) init];
  [v4 setReason_];
  v5 = (*(v2 + 32))(v3, v2);
  v6 = [objc_allocWithZone(MEMORY[0x1E69650A0]) initWithQueue_];

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v2;
  v9[4] = sub_1BA33A524;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BA33A4B8;
  v9[3] = &block_descriptor_90;
  v8 = _Block_copy(v9);

  [v6 requestStewieWithContext:v4 completion:v8];
  _Block_release(v8);
}

void sub_1BA339490(void *a1)
{
  v2 = v1;
  v31 = sub_1BA4A3EA8();
  v4 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDC84A30;
  v32 = sub_1BA4A1318();
  v9 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController_stewieStateMonitor;
  swift_beginAccess();
  v10 = *&v2[v9];
  if (v10 && (v11 = [v10 getState]) != 0)
  {
    v12 = v11;
    sub_1BA33A738([v11 statusReasonForService_]);
  }

  else
  {
    v30[1] = v8;
    v30[2] = "eview_medical_id_later_button";
    sub_1BA4A3DD8();
    v13 = v2;
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v30[0] = a1;
      v17 = v16;
      v18 = swift_slowAlloc();
      v34 = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_1B9F0B82C(0xD000000000000026, 0x80000001BA4D2150, &v34);
      *(v17 + 12) = 2080;
      v19 = *&v2[v9];
      v33 = v19;
      sub_1BA33A6B8(0, &qword_1EBBF0BE0, &unk_1EBBF0BE8, 0x1E6965080, sub_1B9F0ADF8);
      v20 = v19;
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, &v34);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_1B9F07000, v14, v15, "[%s] Error retrieving Stewie state monitor. Displaying generic error message. %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v18, -1, -1);
      v24 = v17;
      a1 = v30[0];
      MEMORY[0x1BFAF43A0](v24, -1, -1);
    }

    (*(v4 + 8))(v7, v31);
    sub_1BA4A1318();
  }

  v25 = sub_1BA4A6758();

  v26 = sub_1BA4A6758();

  v27 = [objc_opt_self() alertControllerWithTitle:v25 message:v26 preferredStyle:1];

  sub_1BA4A1318();
  v28 = sub_1BA4A6758();

  v29 = [objc_opt_self() actionWithTitle:v28 style:1 handler:0];

  [v27 addAction_];
  if (a1)
  {
    [a1 presentViewController:v27 animated:1 completion:0];
  }
}

void sub_1BA339978(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A3EA8();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v41 = qword_1EDC84A30;
  v39 = sub_1BA4A1318();
  v40 = v10;
  v11 = *(a3 + 8);
  v12 = v11(a2, a3);
  if (v12 && (v13 = v12, v14 = [v12 getState], v13, v14))
  {
    sub_1BA33AB20([v14 statusReasonForService_], a2);
  }

  else
  {
    sub_1BA4A3DD8();
    swift_unknownObjectRetain();
    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6FB8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v35 = "eview_medical_id_later_button";
      v18 = v17;
      v34 = swift_slowAlloc();
      v43 = v34;
      *v18 = 136315394;
      v19 = sub_1BA4A85D8();
      v33 = v16;
      v21 = sub_1B9F0B82C(v19, v20, &v43);
      v36 = a1;
      v22 = v21;

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v42 = v11(a2, a3);
      sub_1BA33A6B8(0, &qword_1EBBF0BE0, &unk_1EBBF0BE8, 0x1E6965080, sub_1B9F0ADF8);
      v23 = sub_1BA4A6808();
      v25 = sub_1B9F0B82C(v23, v24, &v43);

      *(v18 + 14) = v25;
      a1 = v36;
      _os_log_impl(&dword_1B9F07000, v15, v33, "[%s] Error retrieving Stewie state monitor. Displaying generic error message. %s", v18, 0x16u);
      v26 = v34;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
    }

    (*(v37 + 8))(v9, v38);
    sub_1BA33AB20(0, a2);
  }

  v27 = sub_1BA4A6758();

  v28 = sub_1BA4A6758();

  v29 = [objc_opt_self() alertControllerWithTitle:v27 message:v28 preferredStyle:1];

  sub_1BA4A1318();
  v30 = sub_1BA4A6758();

  v31 = [objc_opt_self() actionWithTitle:v30 style:1 handler:0];

  [v29 addAction_];
  if (a1)
  {
    [a1 presentViewController:v29 animated:1 completion:0];
  }
}

uint64_t sub_1BA339E3C(void *a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  if (a1)
  {
    v11 = a1;
    sub_1BA4A3DD8();
    v12 = a1;
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_1B9F0B82C(0xD000000000000026, 0x80000001BA4D2150, &v27);
      *(v15 + 12) = 2080;
      v26 = a1;
      v17 = a1;
      sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
      v18 = sub_1BA4A6828();
      v20 = sub_1B9F0B82C(v18, v19, &v27);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_1B9F07000, v13, v14, "[%s] User was unable to complete Stewie demo: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v10, v2);
  }

  else
  {
    sub_1BA4A3DD8();
    v21 = sub_1BA4A3E88();
    v22 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1B9F0B82C(0xD000000000000026, 0x80000001BA4D2150, &v27);
      _os_log_impl(&dword_1B9F07000, v21, v22, "[%s] User successfully completed Stewie demo", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v23, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1BA33A174(void *a1, uint64_t a2)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v33 - v10;
  if (a1)
  {
    v12 = a1;
    sub_1BA4A3DD8();
    v13 = a1;
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v34 = v17;
      *v16 = 136315394;
      v18 = sub_1BA4A85D8();
      v20 = sub_1B9F0B82C(v18, v19, &v34);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v33 = a1;
      v21 = a1;
      sub_1B9F0D950(0, &qword_1EDC6E310, MEMORY[0x1E69E7280]);
      v22 = sub_1BA4A6828();
      v24 = sub_1B9F0B82C(v22, v23, &v34);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_1B9F07000, v14, v15, "[%s] User was unable to complete Stewie demo: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    else
    {
    }

    return (*(v4 + 8))(v11, v3);
  }

  else
  {
    sub_1BA4A3DD8();
    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v34 = v28;
      *v27 = 136315138;
      v29 = sub_1BA4A85D8();
      v31 = sub_1B9F0B82C(v29, v30, &v34);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1B9F07000, v25, v26, "[%s] User successfully completed Stewie demo", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }
}

void sub_1BA33A4B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t type metadata accessor for EmergencyAccessBuddyDoneViewController(uint64_t a1)
{
  result = qword_1EBBF0C28;
  if (!qword_1EBBF0C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA33A580(uint64_t a1)
{
  result = type metadata accessor for EmergencyAccessUserStatus(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1BA33A6B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1BA33A738(unint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 4)
  {
    if (a1 - 6 >= 6)
    {
      if (a1 == 5)
      {
        if (qword_1EDC5E100 == -1)
        {
          return sub_1BA4A1318();
        }

        goto LABEL_15;
      }

LABEL_12:
      v9 = v5;
      sub_1BA4A3DD8();
      v10 = sub_1BA4A3E88();
      v11 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v15 = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_1B9F0B82C(0xD000000000000026, 0x80000001BA4D2150, &v15);
        _os_log_impl(&dword_1B9F07000, v10, v11, "[%s] Received an error we do not handle. Returning the generic message.", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x1BFAF43A0](v13, -1, -1);
        MEMORY[0x1BFAF43A0](v12, -1, -1);
      }

      (*(v3 + 8))(v7, v9);
      if (qword_1EDC5E100 != -1)
      {
        goto LABEL_15;
      }

      return sub_1BA4A1318();
    }
  }

  else if (a1 >= 4)
  {
    if (a1 == 4)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }

      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (qword_1EDC5E100 != -1)
  {
LABEL_15:
    swift_once();
  }

  return sub_1BA4A1318();
}

uint64_t sub_1BA33AAD0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1B9F3E8C4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA33AB20(unint64_t a1, uint64_t a2)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 4)
  {
    if (a1 - 6 < 6)
    {
      goto LABEL_7;
    }

    if (a1 == 5)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }

      goto LABEL_15;
    }
  }

  else
  {
    if (a1 < 4)
    {
      goto LABEL_7;
    }

    if (a1 == 4)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }

      goto LABEL_15;
    }
  }

  v10 = v6;
  sub_1BA4A3DD8();
  v11 = sub_1BA4A3E88();
  v12 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    v15 = sub_1BA4A85D8();
    v17 = sub_1B9F0B82C(v15, v16, &v19);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1B9F07000, v11, v12, "[%s] Received an error we do not handle. Returning the generic message.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1BFAF43A0](v14, -1, -1);
    MEMORY[0x1BFAF43A0](v13, -1, -1);
  }

  (*(v4 + 8))(v8, v10);
LABEL_7:
  if (qword_1EDC5E100 != -1)
  {
LABEL_15:
    swift_once();
  }

  return sub_1BA4A1318();
}

void HealthSharingInternalSettingsViewController.init()()
{
  type metadata accessor for HealthSharingInternalSettingsDataSource(0);
  swift_allocObject();
  sub_1BA33B2C8();

  v1 = CompoundDataSourceCollectionViewController.init(dataSource:)(v0);
  v2 = sub_1BA4A6758();
  [v1 setTitle_];

  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = [objc_opt_self() systemGroupedBackgroundColor];
    [v3 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

id HealthSharingInternalSettingsViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HealthSharingInternalSettingsViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id HealthSharingInternalSettingsViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HealthSharingInternalSettingsViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BA33B2C8()
{
  v0 = sub_1BA4A1798();
  v1 = *(v0 - 8);
  v93 = v0;
  v94 = v1;
  MEMORY[0x1EEE9AC00](v0, v2);
  v92 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA243838(0, &qword_1EDC6ADF0, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v84 - v6;
  v8 = sub_1BA4A28B8();
  v91 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA33CC50(0, &qword_1EBBF0D40, sub_1BA33CBB4, MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4C9870;
  *(v13 + 32) = 0x6C61626F6C47;
  *(v13 + 40) = 0xE600000000000000;
  sub_1BA243838(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v88 = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5470;
  v16 = *MEMORY[0x1E69A3160];
  v96 = *(v9 + 104);
  v90 = (v9 + 104);
  v96(v12, v16, v8);
  type metadata accessor for HealthSharingUserDefaultSwitchItem(0);
  v17 = swift_allocObject();
  sub_1BA4A28A8();
  sub_1BA33C23C(0x2065727574616546, 0xEF64656C62616E45, 0, 0, v7);
  v18 = *(v9 + 8);
  v89 = v9 + 8;
  v97 = v18;
  v19 = v91;
  v18(v12, v91);
  *(v15 + 32) = v17;
  v95 = v13;
  *(v13 + 48) = v15;
  *(v13 + 56) = 0x6D726F6674616C50;
  *(v13 + 64) = 0xE800000000000000;
  v20 = swift_allocObject();
  v86 = xmmword_1BA4B7510;
  *(v20 + 16) = xmmword_1BA4B7510;
  v21 = v19;
  v22 = v19;
  v23 = v96;
  v96(v12, *MEMORY[0x1E69A3148], v21);
  v24 = swift_allocObject();
  sub_1BA4A28A8();
  sub_1BA33C23C(0xD000000000000014, 0x80000001BA5010C0, 0, 0, v7);
  v25 = v22;
  v26 = v22;
  v27 = v97;
  v97(v12, v26);
  *(v20 + 32) = v24;
  v23(v12, *MEMORY[0x1E69A3130], v25);
  v28 = swift_allocObject();
  sub_1BA4A28A8();
  sub_1BA33C23C(0x4420262067617244, 0xEB00000000706F72, 0, 0, v7);
  v29 = v91;
  v27(v12, v91);
  *(v20 + 40) = v28;
  v30 = v95;
  *(v95 + 72) = v20;
  *(v30 + 80) = 0xD000000000000010;
  *(v30 + 88) = 0x80000001BA5010E0;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BA4B5890;
  v32 = v31;
  v87 = v31;
  v33 = v96;
  v96(v12, *MEMORY[0x1E69A3140], v29);
  v34 = swift_allocObject();
  sub_1BA4A28A8();
  sub_1BA33C23C(0xD000000000000014, 0x80000001BA501100, 0, 0, v7);
  v35 = v97;
  v97(v12, v29);
  *(v32 + 32) = v34;
  v33(v12, *MEMORY[0x1E69A3150], v29);
  v36 = swift_allocObject();
  sub_1BA4A28A8();
  sub_1BA33C23C(0xD000000000000017, 0x80000001BA501120, 0, 0, v7);
  v37 = v91;
  v35(v12, v91);
  v38 = v87;
  *(v87 + 40) = v36;
  v39 = v96;
  v96(v12, *MEMORY[0x1E69A3138], v37);
  v40 = swift_allocObject();
  sub_1BA4A28A8();
  sub_1BA33C23C(0x20747865746E6F43, 0xEC000000756E654DLL, 0, 0, v7);
  v97(v12, v37);
  *(v38 + 48) = v40;
  v39(v12, *MEMORY[0x1E69A3158], v37);
  v41 = swift_allocObject();
  v85 = v7;
  sub_1BA4A28A8();
  sub_1BA33C23C(0xD00000000000001FLL, 0x80000001BA501140, 0, 0, v7);
  v42 = v97;
  v97(v12, v37);
  v43 = v87;
  *(v87 + 56) = v41;
  v44 = v95;
  *(v95 + 96) = v43;
  strcpy((v44 + 104), "Health Sharing");
  *(v44 + 119) = -18;
  v45 = swift_allocObject();
  *(v45 + 16) = v86;
  v88 = "Share Menu Default Debug Action";
  v46 = v96;
  v96(v12, *MEMORY[0x1E69A3120], v37);
  v47 = swift_allocObject();
  v48 = v85;
  sub_1BA4A28A8();
  sub_1BA33C23C(0xD00000000000001ELL, v88 | 0x8000000000000000, 0, 0, v48);
  v49 = v91;
  v42(v12, v91);
  *(v45 + 32) = v47;
  v46(v12, *MEMORY[0x1E69A3128], v49);
  v50 = swift_allocObject();
  sub_1BA4A28A8();
  sub_1BA33C23C(0xD000000000000022, 0x80000001BA501180, 0, 0, v48);
  v51 = v95;
  v97(v12, v49);
  *(v45 + 40) = v50;
  *(v51 + 120) = v45;
  v52 = *(v51 + 16);
  v53 = MEMORY[0x1E69E7CC0];
  if (v52)
  {
    v98 = MEMORY[0x1E69E7CC0];
    sub_1B9F277B0(0, v52, 0);
    v54 = 0;
    v53 = v98;
    v90 = (v94 + 8);
    v91 = v52;
    v55 = v51 + 48;
    while (v54 < *(v51 + 16))
    {
      v56 = *(v55 - 8);
      v97 = *(v55 - 16);

      v58 = sub_1B9FE681C(v57);
      v59 = v92;
      sub_1BA4A1788();
      v96 = sub_1BA4A1748();
      v61 = v60;
      (*v90)(v59, v93);

      v63 = Array<A>.identifierToIndexDict()(v62);

      v98 = v53;
      v65 = *(v53 + 16);
      v64 = *(v53 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_1B9F277B0((v64 > 1), v65 + 1, 1);
        v53 = v98;
      }

      ++v54;
      *(v53 + 16) = v65 + 1;
      v66 = (v53 + 48 * v65);
      v67 = v96;
      v66[4] = v97;
      v66[5] = v56;
      v66[6] = v58;
      v66[7] = v63;
      v66[8] = v67;
      v66[9] = v61;
      v55 += 24;
      v68 = v94;
      v51 = v95;
      if (v91 == v54)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v68 = v94;
LABEL_9:
    v98 = 0x3C53447961727241;
    v99 = 0xE800000000000000;
    v69 = v92;
    sub_1BA4A1788();
    v70 = sub_1BA4A1748();
    v72 = v71;
    (*(v68 + 8))(v69, v93);
    MEMORY[0x1BFAF1350](v70, v72);

    MEMORY[0x1BFAF1350](62, 0xE100000000000000);
    v73 = v98;
    v74 = v99;
    type metadata accessor for ArrayDataSource(0);
    swift_allocObject();
    v75 = sub_1B9F348D8(v53, v73, v74);

    sub_1BA243890(0);
    v76 = swift_allocObject();
    v76[4] = v75;
    v76[5] = sub_1BA33BF58;
    v76[6] = 0;
    v78 = v75[5];
    v77 = v75[6];
    v76[2] = v78;
    v76[3] = v77;
    v79 = swift_allocObject();
    v79[2] = sub_1BA33BF7C;
    v79[3] = 0;
    v79[4] = v76;
    sub_1BA33CCD4(0);
    v80 = swift_allocObject();
    *(v80 + 16) = v76;
    *(v80 + 24) = v78;
    *(v80 + 32) = v77;
    *(v80 + 40) = 0;
    *(v80 + 48) = sub_1BA33CCB4;
    *(v80 + 56) = v79;
    v81 = swift_allocObject();
    *(v81 + 16) = v51;
    sub_1BA33CD18(0, &unk_1EBBF0D70, sub_1BA33CCD4, &protocol witness table for DataSourceWithLayout<A>, type metadata accessor for Supplementary);
    v82 = swift_allocObject();
    v82[4] = v80;
    v82[5] = sub_1BA33CD10;
    v82[6] = v81;
    v82[2] = v78;
    v82[3] = v77;
    sub_1BA33CC50(0, &qword_1EDC5DC70, sub_1BA03A7DC, MEMORY[0x1E69E6F90]);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_1BA4B5480;
    *(v83 + 32) = v82;
    *(v83 + 40) = &protocol witness table for Supplementary<A>;
    swift_bridgeObjectRetain_n();

    CompoundSectionedDataSource.init(_:)(v83);
  }
}

void *sub_1BA33BF7C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDC6CB88 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_1EDC6CB90);
  sub_1B9F37E38(v7, v6);
  v8 = *(v3 + 88);
  v9 = sub_1BA4A47D8();
  v10 = *(v9 - 8);
  (*(v10 + 8))(v6 + v8, v9);
  (*(v10 + 104))(v6 + v8, *MEMORY[0x1E69DC290], v9);

  v6[1] = 0;
  *v6 = 0;
  v11 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1BA047354(v6);
  return v11;
}

unint64_t sub_1BA33C0EC@<X0>(uint64_t a1@<X3>, void *a2@<X8>)
{
  v4 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1BA4A1968();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(a1 + 16))
  {
    v9 = a1 + 24 * result;
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);

    _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
    v12 = type metadata accessor for HeaderItem(0);
    swift_allocObject();
    HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v10, v11, 0, 0, 0, 0, v7, 0, 0);
    v14 = v13;
    a2[3] = v12;
    result = sub_1BA011754();
    a2[4] = result;
    *a2 = v14;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA33C23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *(v6 + 88) = a1;
  *(v6 + 96) = a2;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI21UserDefaultSwitchItem_userDefault;
  sub_1BA243838(0, &qword_1EDC6ADF0, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  v14 = v13;
  v15 = *(v13 - 8);
  (*(v15 + 16))(v6 + v12, a5, v13);

  sub_1BA4A1CA8();
  *(v6 + 81) = v21;
  type metadata accessor for SwitchCollectionViewCell(0);
  sub_1BA04DA88();
  v16 = sub_1BA4A6808();
  v18 = v17;
  (*(v15 + 8))(a5, v14);
  *(v6 + 16) = v16;
  *(v6 + 24) = v18;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0;
  *(v6 + 32) = 0u;
  swift_beginAccess();
  *(v6 + 32) = 0;
  swift_beginAccess();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  swift_beginAccess();
  *(v6 + 56) = a3;
  *(v6 + 64) = a4;

  swift_beginAccess();
  v19 = *(v6 + 72);
  *(v6 + 72) = 0;

  return v6;
}

uint64_t sub_1BA33C434()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI21UserDefaultSwitchItem_userDefault;
  sub_1BA243838(0, &qword_1EDC6ADF0, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_1BA33C4C8()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI21UserDefaultSwitchItem_userDefault;
  sub_1BA243838(0, &qword_1EDC6ADF0, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1BA33C5F4(uint64_t a1)
{
  sub_1BA243838(319, &qword_1EDC6ADF0, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BA33C6C8()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI21UserDefaultSwitchItem_userDefault;
  sub_1BA243838(0, &qword_1EDC6ADF0, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA33C818(int a1)
{
  v2 = v1;
  v34 = *v2;
  sub_1BA243838(0, &qword_1EDC6ADF0, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v30[-v8];
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = a1;
  v37 = a1;
  v15 = OBJC_IVAR____TtC18HealthExperienceUI21UserDefaultSwitchItem_userDefault;
  swift_beginAccess();
  sub_1BA4A1CB8();
  swift_endAccess();
  sub_1BA4A3DD8();

  v16 = sub_1BA4A3E88();
  v17 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = v11;
    v19 = v18;
    v32 = swift_slowAlloc();
    v36[0] = v32;
    *v19 = 136315906;
    v20 = sub_1BA4A85D8();
    v31 = v17;
    v22 = sub_1B9F0B82C(v20, v21, v36);
    v34 = v10;
    v23 = v22;

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_1B9F0B82C(v2[11], v2[12], v36);
    *(v19 + 22) = 2080;
    (*(v6 + 16))(v9, v2 + v15, v5);
    v24 = sub_1BA4A1CD8();
    v26 = v25;
    (*(v6 + 8))(v9, v5);
    v27 = sub_1B9F0B82C(v24, v26, v36);

    *(v19 + 24) = v27;
    *(v19 + 32) = 1024;
    *(v19 + 34) = v35 & 1;
    _os_log_impl(&dword_1B9F07000, v16, v31, "[%s] %s switch with default key %s set to %{BOOL}d", v19, 0x26u);
    v28 = v32;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v28, -1, -1);
    MEMORY[0x1BFAF43A0](v19, -1, -1);

    return (*(v33 + 8))(v14, v34);
  }

  else
  {

    return (*(v11 + 8))(v14, v10);
  }
}

void sub_1BA33CBB4(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBF0D48)
  {
    sub_1BA33CC50(255, &unk_1EBBF0D50, type metadata accessor for HealthSharingUserDefaultSwitchItem, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF0D48);
    }
  }
}

void sub_1BA33CC50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA33CD18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1BA33CD94()
{
  v2 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v0 = sub_1BA4A1748();
  MEMORY[0x1BFAF1350](v0);

  return v2;
}

void sub_1BA33CE28(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI9ImageItem_image;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1BA33CE88()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI9ImageItem_image;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BA33CEDC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI9ImageItem_image;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ImageItem.__allocating_init(image:cell:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  sub_1BA4A1788();
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI9ImageItem_image) = a1;
  sub_1BA33D088(0, v4);
  *(v3 + 16) = sub_1BA4A6808();
  *(v3 + 24) = v5;
  return v3;
}

uint64_t ImageItem.init(image:cell:)(uint64_t a1, uint64_t a2)
{
  sub_1BA4A1788();
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI9ImageItem_image) = a1;
  sub_1BA33D088(0, v4);
  *(v2 + 16) = sub_1BA4A6808();
  *(v2 + 24) = v5;
  return v2;
}

unint64_t sub_1BA33D088(uint64_t a1, uint64_t a2)
{
  result = qword_1EBBF0D98;
  if (!qword_1EBBF0D98)
  {
    type metadata accessor for ImageCollectionViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBF0D98);
  }

  return result;
}

uint64_t static ImageItem.roundedImageItem(image:)(void *a1)
{
  type metadata accessor for RoundedImageCollectionViewCell();
  type metadata accessor for ImageItem(0);
  v2 = swift_allocObject();
  sub_1BA4A1788();
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI9ImageItem_image) = a1;
  sub_1BA33D088(0, v3);
  v4 = a1;
  *(v2 + 16) = sub_1BA4A6808();
  *(v2 + 24) = v5;
  return v2;
}

uint64_t type metadata accessor for ImageItem(uint64_t a1)
{
  result = qword_1EBBF0DC0;
  if (!qword_1EBBF0DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImageItem.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI9ImageItem_uuid;
  v2 = sub_1BA4A1798();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ImageItem.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI9ImageItem_uuid;
  v2 = sub_1BA4A1798();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA33D324(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA33D388(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA33D824();
  return sub_1B9F7B644(v6);
}

uint64_t sub_1BA33D3F8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA33D450(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA33D824();
  return sub_1B9F7B644(a1);
}

void (*sub_1BA33D4BC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA33D520;
}

void sub_1BA33D520(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA33D824();
  }
}

id ImageCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *ImageCollectionViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_imageView;
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setContentMode_];

  *&v4[v10] = v11;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_heightConstraint] = 0;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for ImageCollectionViewCell();
  v12 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_imageView;
  v14 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_imageView];
  v15 = v12;
  [v15 addSubview_];
  [v15 hk:*&v12[v13] alignConstraintsWithView:?];

  return v15;
}

id ImageCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_1BA33D77C(void *a1)
{
  v2 = OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_heightConstraint;
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_heightConstraint);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_heightConstraint) = a1;
  if (v3)
  {
    v4 = a1;
    [v3 setActive_];
    v5 = *(v1 + v2);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    [v6 setActive_];
  }

LABEL_4:
}

void sub_1BA33D824()
{
  swift_getObjectType();
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v0[v6], v30);
  if (v30[3])
  {
    sub_1B9FCD918();
    type metadata accessor for ImageItem(0);
    if (swift_dynamicCast())
    {
      v7 = v29[1];
      v8 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_imageView];
      v9 = OBJC_IVAR____TtC18HealthExperienceUI9ImageItem_image;
      swift_beginAccess();
      [v8 setImage_];
      v10 = [v8 image];
      if (v10 && (v11 = v10, [v10 size], v13 = v12, v15 = v14, v11, v13 > 0.0))
      {
        v16 = [v0 heightAnchor];
        v17 = [v0 widthAnchor];
        v18 = [v16 constraintEqualToAnchor:v17 multiplier:v15 / v13];

        v19 = v18;
      }

      else
      {
        v27 = [v0 heightAnchor];
        v28 = [v27 constraintEqualToConstant_];

        v19 = v28;
      }

      sub_1BA33D77C(v19);

      return;
    }
  }

  else
  {
    sub_1B9F7B644(v30);
  }

  sub_1BA4A3DD8();
  v20 = sub_1BA4A3E88();
  v21 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30[0] = v23;
    *v22 = 136315138;
    v24 = sub_1BA4A85D8();
    v26 = sub_1B9F0B82C(v24, v25, v30);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_1B9F07000, v20, v21, "[%s] item is not ImageItem", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1BFAF43A0](v23, -1, -1);
    MEMORY[0x1BFAF43A0](v22, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
}

id ImageCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s18HealthExperienceUI23ImageCollectionViewCellC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_imageView;
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setContentMode_];

  *(v0 + v2) = v3;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_heightConstraint) = 0;
  sub_1BA4A8018();
  __break(1u);
}

unint64_t sub_1BA33DCFC()
{
  result = qword_1EBBF0DB8;
  if (!qword_1EBBF0DB8)
  {
    type metadata accessor for ImageItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0DB8);
  }

  return result;
}

uint64_t sub_1BA33DD5C(uint64_t a1)
{
  result = sub_1BA4A1798();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BA33DFE0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBC098C8 = result;
  unk_1EBC098D0 = v1;
  return result;
}

uint64_t sub_1BA33E08C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBC098D8 = result;
  unk_1EBC098E0 = v1;
  return result;
}

uint64_t sub_1BA33E138()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBC098E8 = result;
  unk_1EBC098F0 = v1;
  return result;
}

uint64_t sub_1BA33E1E4()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBC098F8 = result;
  unk_1EBC09900 = v1;
  return result;
}

void sub_1BA33E32C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for SummarySharingSelectionFlow(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA17294C(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectionFlowContext;
  v12 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectionFlowContext];
  swift_beginAccess();
  if (([*(*(v12 + 32) + 64) BOOLValue] & 1) == 0)
  {

    sub_1B9FF0E2C();
  }

  memset(v39, 0, 32);
  v40 = 0uLL;
  *&v41 = 0;
  *(&v41 + 1) = 7;
  LOBYTE(v42) = 7;

  sub_1B9FEEC64(ObjectType, v39, 0, &v40);

  sub_1B9FF3BFC(v40, *(&v40 + 1), v41, *(&v41 + 1));
  sub_1B9F0DBB4(v39, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8);
  v13 = *&v1[v11];
  swift_beginAccess();
  v14 = *(v13 + 32);
  sub_1BA0B5A7C();

  v15 = sub_1BA4A7758();
  v16 = *(v14 + 64);
  *(v14 + 64) = v15;

  v36 = v11;
  v17 = *&v1[v11];
  swift_beginAccess();
  v18 = *(v17 + 40);
  if (*(v18 + 16))
  {
    v19 = *(v18 + 32);
  }

  else
  {
    v19 = 0x80;
  }

  sub_1B9F0A534(&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_healthExperienceStore], v39);
  v20 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_healthStore];
  v21 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContact + 16];
  v40 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContact];
  v41 = v21;
  v42 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContact + 32];
  v22 = v40;
  v23 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContact + 24];
  v24 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContactPhotoPublisher];
  v43 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContact + 8];
  v44[0] = v23;
  v25 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedItems];
  *v10 = v19;
  swift_storeEnumTagMultiPayload();
  (*(v4 + 56))(v10, 0, 1, v3);
  type metadata accessor for SummarySharingSelectedDataTypesContext(0);
  swift_allocObject();
  v26 = v20;
  v27 = v22;

  sub_1B9F87F44(&v43, v38);
  sub_1B9F87F44(v44, v38);
  v28 = SummarySharingSelectedDataTypesContext.init(selectedItems:selectionFlow:)(v25, v10);
  v29 = v37;
  *v37 = v19;
  swift_storeEnumTagMultiPayload();
  v30 = *&v1[v36];
  v31 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingAlertsSelectionViewController(0));

  v32 = sub_1BA360B94(v39, v26, &v40, v24, v28, v29, v30);

  v33 = MEMORY[0x1E69E6158];
  sub_1B9F0DBB4(&v43, &qword_1EDC6E410, MEMORY[0x1E69E6158]);
  sub_1B9F0DBB4(v44, &qword_1EDC6E410, v33);

  v34 = [v1 navigationController];
  if (v34)
  {
    v35 = v34;
    [v34 pushViewController:v32 animated:1];
  }
}

void sub_1BA33E7C0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for SummarySharingSelectionFlow(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA17294C(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectionFlowContext;
  v12 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectionFlowContext];
  swift_beginAccess();
  if ([*(*(v12 + 32) + 64) BOOLValue])
  {

    sub_1B9FF0E2C();
  }

  memset(v32, 0, sizeof(v32));
  v33 = 0uLL;
  *&v34 = 0;
  *(&v34 + 1) = 7;
  LOBYTE(v35) = 7;

  sub_1B9FEEC64(ObjectType, v32, 0, &v33);

  sub_1B9FF3BFC(v33, *(&v33 + 1), v34, *(&v34 + 1));
  sub_1B9F0DBB4(v32, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8);
  sub_1B9F0A534(&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_healthExperienceStore], v32);
  v13 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_healthStore];
  v14 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContact + 16];
  v33 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContact];
  v34 = v14;
  v35 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContact + 32];
  v15 = v33;
  v16 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContact + 24];
  v36 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContact + 8];
  v37[0] = v16;
  v17 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContactPhotoPublisher];
  v18 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedItems];
  swift_storeEnumTagMultiPayload();
  (*(v4 + 56))(v10, 0, 1, v3);
  type metadata accessor for SummarySharingSelectedDataTypesContext(0);
  swift_allocObject();
  v19 = v13;
  v20 = v15;

  sub_1B9F87F44(&v36, v31);
  sub_1B9F87F44(v37, v31);
  v21 = SummarySharingSelectedDataTypesContext.init(selectedItems:selectionFlow:)(v18, v10);
  v22 = v30;
  swift_storeEnumTagMultiPayload();
  v23 = *&v1[v11];
  v24 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingAlertsSelectionViewController(0));

  v25 = sub_1BA360B94(v32, v19, &v33, v17, v21, v22, v23);

  v26 = MEMORY[0x1E69E6158];
  sub_1B9F0DBB4(&v36, &qword_1EDC6E410, MEMORY[0x1E69E6158]);
  sub_1B9F0DBB4(v37, &qword_1EDC6E410, v26);

  v27 = [v1 navigationController];
  if (v27)
  {
    v28 = v27;
    [v27 pushViewController:v25 animated:1];
  }
}

id sub_1BA33ECA8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SummarySharingOnboardingChooseSelectionFlowViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_1BA33EDB0@<D0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_item);
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;

  return result;
}

void sub_1BA33EE04(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = &v1[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_item];
  swift_beginAccess();
  *v4 = v2;
  *(v4 + 1) = v3;

  v5 = sub_1BA33F1EC();
  if (*(v4 + 1))
  {
    v6 = v5;

    v7 = sub_1BA4A6758();

    [v6 setText_];

    v8 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView____lazy_storage___textLabel] text];
    [v1 setAccessibilityLabel_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_1BA33EEF0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_item;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BA33EF78;
}

void sub_1BA33EF78(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3] + v3[4];
    v5 = sub_1BA33F1EC();
    if (!*(v4 + 8))
    {
      __break(1u);
      return;
    }

    v6 = v5;
    v7 = v3[3];

    v8 = sub_1BA4A6758();

    [v6 setText_];

    v9 = [*&v7[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView____lazy_storage___textLabel] text];
    [v7 setAccessibilityLabel_];
  }

  free(v3);
}

double sub_1BA33F068(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

uint64_t sub_1BA33F0D4()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1BA33F12C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

id sub_1BA33F1EC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView____lazy_storage___textLabel;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView____lazy_storage___textLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView____lazy_storage___textLabel);
  }

  else
  {
    v4 = sub_1BA33F24C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA33F24C()
{
  v0 = [objc_allocWithZone(type metadata accessor for DynamicFontLabel()) initWithFrame_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = v0;
  [v1 setUserInteractionEnabled_];
  [v1 setAdjustsFontForContentSizeCategory_];
  v2 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB978], 0, 0x8000, 0, 0, 1);
  [v1 setFont_];

  v3 = [objc_opt_self() labelColor];
  [v1 setTextColor_];

  [v1 setLineBreakMode_];
  [v1 setNumberOfLines_];
  LODWORD(v4) = 1132068864;
  [v1 setContentHuggingPriority:0 forAxis:v4];
  LODWORD(v5) = 1132068864;
  [v1 setContentCompressionResistancePriority:0 forAxis:v5];

  return v1;
}

char *sub_1BA33F3C8(id a1)
{
  v2 = a1;
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_item];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_baseIdentifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView____lazy_storage___textLabel] = 0;
  if (!a1)
  {
    a1 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  *&v1[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_accessoryView] = a1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CellWithAccessoryView();
  v5 = v2;
  v6 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = sub_1BA33F1EC();
  [v6 addSubview_];

  v8 = OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_accessoryView;
  [v6 addSubview_];
  [*&v6[v8] setTranslatesAutoresizingMaskIntoConstraints_];
  sub_1BA33F628();

  return v6;
}

id sub_1BA33F4F4(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_item];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_baseIdentifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView____lazy_storage___textLabel] = 0;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_accessoryView] = v5;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for CellWithAccessoryView();
  v6 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v9 = sub_1BA33F1EC();
    [v8 addSubview_];

    v10 = OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_accessoryView;
    [v8 addSubview_];
    [*&v8[v10] setTranslatesAutoresizingMaskIntoConstraints_];
    sub_1BA33F628();
  }

  return v7;
}

id sub_1BA33F628()
{
  v1 = v0;
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5470;
  v3 = [v0 heightAnchor];
  v4 = [v3 constraintGreaterThanOrEqualToConstant_];

  *(inited + 32) = v4;
  sub_1B9F73B50(inited);
  v5 = sub_1BA33F77C();
  sub_1B9F73B50(v5);
  v6 = sub_1BA33F994();
  sub_1B9F73B50(v6);
  v7 = objc_opt_self();
  sub_1B9F740B0();
  v8 = sub_1BA4A6AE8();

  [v7 activateConstraints_];

  return [v1 setNeedsLayout];
}

uint64_t sub_1BA33F77C()
{
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5890;
  v2 = sub_1BA33F1EC();
  v3 = [v2 topAnchor];

  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:8.0];

  *(v1 + 32) = v5;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView____lazy_storage___textLabel;
  v7 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView____lazy_storage___textLabel] bottomAnchor];
  v8 = [v0 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:-8.0];

  *(v1 + 40) = v9;
  v10 = [*&v0[v6] leadingAnchor];
  v11 = [v0 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:16.0];

  *(v1 + 48) = v12;
  v13 = [*&v0[v6] centerYAnchor];
  v14 = [v0 centerYAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v1 + 56) = v15;
  return v1;
}

uint64_t sub_1BA33F994()
{
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B8B60;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_accessoryView;
  v3 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_accessoryView] leadingAnchor];
  v4 = sub_1BA33F1EC();
  v5 = [v4 trailingAnchor];

  v6 = [v3 constraintGreaterThanOrEqualToAnchor:v5 constant:8.0];
  *(v1 + 32) = v6;
  v7 = [*&v0[v2] trailingAnchor];
  v8 = [v0 trailingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:-16.0];

  *(v1 + 40) = v9;
  v10 = [*&v0[v2] centerYAnchor];
  v11 = [v0 centerYAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v1 + 48) = v12;
  return v1;
}

uint64_t sub_1BA33FB50(void *a1)
{
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 8))(v9, v10);
  if (v12 >> 60 == 15)
  {
    sub_1BA4A3DD8();
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26[0] = v16;
      *v15 = 136446210;
      v17 = sub_1BA4A85D8();
      v19 = sub_1B9F0B82C(v17, v18, v26);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1B9F07000, v13, v14, "%{public}s No User Data!", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    v20 = v11;
    v21 = v12;
    sub_1BA4A0EB8();
    swift_allocObject();
    sub_1B9F206D4(v20, v21);
    sub_1BA4A0EA8();
    sub_1BA18F124();
    sub_1BA4A0E98();

    sub_1B9F6AC8C(v20, v21);
    v22 = v26[2];
    v23 = v26[3];

    v26[0] = v22;
    v26[1] = v23;
    sub_1BA33EE04(v26);
    return sub_1B9F6AC8C(v20, v21);
  }
}

uint64_t sub_1BA33FFA8()
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](60, 0xE100000000000000);
  swift_getObjectType();
  sub_1BA34018C();
  v1 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v1);

  MEMORY[0x1BFAF1350](32, 0xE100000000000000);
  sub_1BA4A7FB8();
  MEMORY[0x1BFAF1350](0x203A7478655420, 0xE700000000000000);
  v2 = sub_1BA33F1EC();
  v3 = [v2 text];

  if (v3)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  sub_1B9F23348(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v4 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v4);

  MEMORY[0x1BFAF1350](0x6F73736563634120, 0xEC000000203A7972);
  swift_getObjectType();
  v5 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](v5);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return 0;
}

unint64_t sub_1BA34018C()
{
  result = qword_1EBBF0E18;
  if (!qword_1EBBF0E18)
  {
    type metadata accessor for CellWithAccessoryView();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBF0E18);
  }

  return result;
}

id CellWithAccessoryView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CellWithAccessoryView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CellWithAccessoryView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall CellWithAccessoryView.updateAutomationIdentifiers(with:)(Swift::String_optional with)
{
  v2 = v1;
  if (with.value._object)
  {
    v3 = sub_1BA33F1EC();

    MEMORY[0x1BFAF1350](0x656C7469542ELL, 0xE600000000000000);
    v4 = sub_1BA4A6758();

    [v3 setAccessibilityIdentifier_];

    v5 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_accessoryView);

    v6 = v5;
    MEMORY[0x1BFAF1350](0x6F7373656363412ELL, 0xEA00000000007972);
    v9 = sub_1BA4A6758();

    [v6 setAccessibilityIdentifier_];
  }

  else
  {
    v7 = sub_1BA33F1EC();
    [v7 setAccessibilityIdentifier_];

    v8 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_accessoryView);

    [v8 setAccessibilityIdentifier_];
  }
}

uint64_t sub_1BA340514()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1BA340570(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

double keypath_getTm_3@<D0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;

  return result;
}

HealthExperienceUI::PDFFileNameGenerator::Options_optional __swiftcall PDFFileNameGenerator.Options.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1BA340808(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x1E69E9840];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), v8 = v13, (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, v8);
    v10 = &v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    v11 = sub_1BA3409A8(v10, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_1BA341D00(v15, v7, v18);
    v11 = v18[0];

    MEMORY[0x1BFAF43A0](v15, -1, -1);
  }

  return v11;
}

uint64_t sub_1BA3409A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = 0;
  v7 = 0;
  v8 = a4 + 56;
  v9 = a3 + 32;
  while (1)
  {
    v11 = *(v9 + v7);
    sub_1BA4A8488();
    MEMORY[0x1BFAF2ED0](v11);
    v12 = sub_1BA4A84D8();
    v13 = -1 << *(a4 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & *(v8 + 8 * (v14 >> 6))) != 0)
    {
      v17 = *(a4 + 48);
      if (*(v17 + v14) != v11)
      {
        v18 = ~v13;
        do
        {
          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = 1 << v14;
          if (((1 << v14) & *(v8 + 8 * (v14 >> 6))) == 0)
          {
            goto LABEL_4;
          }
        }

        while (*(v17 + v14) != v11);
      }

      v10 = a1[v15];
      a1[v15] = v10 | v16;
      if ((v10 & v16) == 0 && __OFADD__(v6++, 1))
      {
        break;
      }
    }

LABEL_4:
    if (++v7 == v5)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_14:
  v6 = 0;
LABEL_15:

  return sub_1BA306EC4(a1, a2, v6, a4);
}

uint64_t _s18HealthExperienceUI20PDFFileNameGeneratorV10dateString0G09showsTime8calendarSS10Foundation4DateV_SbAH8CalendarVtFZ_0(uint64_t a1, char a2)
{
  v4 = sub_1BA4A18C8();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1F6640(0, &qword_1EDC6AE40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v42 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v13 = sub_1BA4A6758();
  [v12 setDateFormat_];

  v14 = sub_1BA4A1818();
  [v12 setCalendar_];

  v46 = a1;
  v15 = sub_1BA4A16B8();
  v47 = v12;
  v16 = [v12 stringFromDate_];

  v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v19 = v18;

  v20 = MEMORY[0x1E69E6158];
  if (a2)
  {
    v43 = v17;
    v21 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v22 = sub_1BA4A1818();
    [v21 setCalendar_];

    sub_1BA4A1868();
    v23 = sub_1BA4A17C8();
    v24 = *(v23 - 8);
    v25 = 0;
    if ((*(v24 + 48))(v11, 1, v23) != 1)
    {
      v25 = sub_1BA4A17A8();
      (*(v24 + 8))(v11, v23);
    }

    [v21 setLocale_];

    sub_1BA4A1888();
    v26 = sub_1BA4A18B8();
    (*(v44 + 8))(v7, v45);
    [v21 setTimeZone_];

    [v21 setDateStyle_];
    [v21 setTimeStyle_];
    v27 = sub_1BA4A16B8();
    v28 = [v21 stringFromDate_];

    v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v31 = v30;

    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1BA1F6640(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1BA4B5460;
    *(v32 + 56) = v20;
    v33 = sub_1B9F1BE20();
    *(v32 + 32) = v43;
    *(v32 + 40) = v19;
    *(v32 + 96) = v20;
    *(v32 + 104) = v33;
    *(v32 + 64) = v33;
    *(v32 + 72) = v29;
    *(v32 + 80) = v31;
    v17 = sub_1BA4A67D8();
    v19 = v34;
  }

  v52 = v17;
  v53 = v19;
  v50 = 47;
  v51 = 0xE100000000000000;
  v48 = 45;
  v49 = 0xE100000000000000;
  sub_1B9F252FC();
  v35 = sub_1BA4A7B58();
  v37 = v36;

  v52 = v35;
  v53 = v37;
  v50 = 58;
  v51 = 0xE100000000000000;
  v48 = 46;
  v49 = 0xE100000000000000;
  sub_1BA4A7B58();

  v38 = sub_1BA4A6758();

  v39 = [v38 hk_stringByNormalizingSpaces];

  v40 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  return v40;
}

uint64_t sub_1BA3410BC(uint64_t a1, uint64_t a2, uint64_t *a3, char a4, uint64_t a5)
{
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3[1];
  if (v15)
  {
    v16 = *a3;
    v17 = qword_1EDC5E100;

    if (v17 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v18 = type metadata accessor for PDFCharacteristicsProvider.Content(0);
    v19 = _s18HealthExperienceUI20PDFFileNameGeneratorV10dateString0G09showsTime8calendarSS10Foundation4DateV_SbAH8CalendarVtFZ_0(a3 + *(v18 + 24), a4 & 1);
    v21 = v20;
    sub_1BA1F6640(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1BA4B9FD0;
    v23 = MEMORY[0x1E69E6158];
    *(v22 + 56) = MEMORY[0x1E69E6158];
    v24 = sub_1B9F1BE20();
    *(v22 + 32) = v16;
    *(v22 + 40) = v15;
    *(v22 + 96) = v23;
    *(v22 + 104) = v24;
    *(v22 + 64) = v24;
    *(v22 + 72) = a1;
    *(v22 + 80) = a2;
    *(v22 + 136) = v23;
    *(v22 + 144) = v24;
    *(v22 + 112) = v19;
    *(v22 + 120) = v21;
  }

  else
  {
    v42 = a5;
    sub_1BA4A3DD8();
    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v41 = a1;
      v28 = v27;
      v29 = swift_slowAlloc();
      v43 = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_1B9F0B82C(0xD000000000000014, 0x80000001BA4D2560, &v43);
      _os_log_impl(&dword_1B9F07000, v25, v26, "%{public}s Can not create file name with name, defaulting to only date time.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      v30 = v28;
      a1 = v41;
      MEMORY[0x1BFAF43A0](v30, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v31 = type metadata accessor for PDFCharacteristicsProvider.Content(0);
    v32 = _s18HealthExperienceUI20PDFFileNameGeneratorV10dateString0G09showsTime8calendarSS10Foundation4DateV_SbAH8CalendarVtFZ_0(a3 + *(v31 + 24), a4 & 1);
    v34 = v33;
    sub_1BA1F6640(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1BA4B5460;
    v36 = MEMORY[0x1E69E6158];
    *(v35 + 56) = MEMORY[0x1E69E6158];
    v37 = sub_1B9F1BE20();
    *(v35 + 32) = a1;
    *(v35 + 40) = a2;
    *(v35 + 96) = v36;
    *(v35 + 104) = v37;
    *(v35 + 64) = v37;
    *(v35 + 72) = v32;
    *(v35 + 80) = v34;
  }

  v38 = sub_1BA4A67D8();

  return v38;
}

uint64_t sub_1BA341514(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3[1];
  if (v11)
  {
    v12 = *a3;
    v13 = qword_1EDC5E100;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1BA1F6640(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BA4B5460;
    v15 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    v16 = sub_1B9F1BE20();
    *(v14 + 32) = v12;
    *(v14 + 40) = v11;
    *(v14 + 96) = v15;
    *(v14 + 104) = v16;
    *(v14 + 64) = v16;
    *(v14 + 72) = a1;
    *(v14 + 80) = a2;
  }

  else
  {
    sub_1BA4A3DD8();
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_1B9F0B82C(0xD000000000000014, 0x80000001BA4D2560, &v25);
      _os_log_impl(&dword_1B9F07000, v17, v18, "%{public}s Can not create file name with name, defaulting to standard name.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1BA1F6640(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BA4B5480;
    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = sub_1B9F1BE20();
    *(v21 + 32) = a1;
    *(v21 + 40) = a2;
  }

  v22 = sub_1BA4A67D8();

  return v22;
}

uint64_t _s18HealthExperienceUI20PDFFileNameGeneratorV04fileE015characteristics016localizedFeatureE07options16calendarOverrideSSAA26PDFCharacteristicsProviderC7ContentV_SSShyAC7OptionsOG10Foundation8CalendarVtFZ_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v10 = *(sub_1BA340808(&unk_1F37FBF20, a4) + 16);

  v11 = *(sub_1BA340808(&unk_1F37FBF48, a4) + 16);

  v12 = *(sub_1BA340808(&unk_1F37FBF70, a4) + 16);

  if (v10)
  {
    if (v12)
    {

      return sub_1BA3410BC(a2, a3, a1, v11 != 0, a5);
    }

    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v14 = type metadata accessor for PDFCharacteristicsProvider.Content(0);
    v15 = _s18HealthExperienceUI20PDFFileNameGeneratorV10dateString0G09showsTime8calendarSS10Foundation4DateV_SbAH8CalendarVtFZ_0(a1 + *(v14 + 24), v11 != 0);
    v17 = v16;
    sub_1BA1F6640(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BA4B5460;
    v19 = MEMORY[0x1E69E6158];
    *(v18 + 56) = MEMORY[0x1E69E6158];
    v20 = sub_1B9F1BE20();
    *(v18 + 32) = a2;
    *(v18 + 40) = a3;
    *(v18 + 96) = v19;
    *(v18 + 104) = v20;
    *(v18 + 64) = v20;
    *(v18 + 72) = v15;
    *(v18 + 80) = v17;

    v21 = sub_1BA4A67D8();
LABEL_16:

    return v21;
  }

  if (!v12)
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1BA1F6640(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1BA4B5480;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1B9F1BE20();
    *(v22 + 32) = a2;
    *(v22 + 40) = a3;

    v21 = sub_1BA4A67D8();
    goto LABEL_16;
  }

  return sub_1BA341514(a2, a3, a1);
}

unint64_t sub_1BA341C8C()
{
  result = qword_1EBBF0E28;
  if (!qword_1EBBF0E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0E28);
  }

  return result;
}

uint64_t sub_1BA341D00@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1BA3409A8(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1BA341D5C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  return v3;
}

void sub_1BA341DC8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v35[4] = *MEMORY[0x1E69E9840];
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = OBJC_IVAR____TtC18HealthExperienceUI49SummarySharingProfileTileEscalatedDetailsProvider_frc;
    v13 = *(Strong + OBJC_IVAR____TtC18HealthExperienceUI49SummarySharingProfileTileEscalatedDetailsProvider_frc);
    v35[0] = 0;
    if ([v13 performFetch_])
    {
      v14 = *&v11[v12];
      v15 = v35[0];
      v16 = [v14 sections];
      if (v16)
      {
        v17 = v16;
        sub_1BA024D28();
        v18 = sub_1BA4A6B08();
      }

      else
      {
        v18 = 0;
      }

      sub_1BA342230(v18);

      if (a2)
      {
        a2(v33);
      }
    }

    else
    {
      v19 = v35[0];
      v20 = sub_1BA4A1488();

      swift_willThrow();
      sub_1BA4A3E28();
      v21 = v20;
      v22 = sub_1BA4A3E88();
      v23 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v34[0] = swift_slowAlloc();
        v35[0] = v34[0];
        *v24 = 136315394;
        v25 = sub_1BA4A85D8();
        v27 = sub_1B9F0B82C(v25, v26, v35);

        *(v24 + 4) = v27;
        *(v24 + 12) = 2080;
        v34[1] = v20;
        v28 = v20;
        sub_1B9FED358();
        v29 = sub_1BA4A6808();
        v31 = sub_1B9F0B82C(v29, v30, v35);

        *(v24 + 14) = v31;
        _os_log_impl(&dword_1B9F07000, v22, v23, "[%s] Error occurred while trying to perform fetch: %s", v24, 0x16u);
        v32 = v34[0];
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v32, -1, -1);
        MEMORY[0x1BFAF43A0](v24, -1, -1);
      }

      else
      {
      }

      (*(v6 + 8))(v9, v5);
    }
  }
}

double sub_1BA342114(int a1, id a2)
{
  v2 = [a2 sections];
  if (v2)
  {
    v3 = v2;
    sub_1BA024D28();
    v4 = sub_1BA4A6B08();
  }

  else
  {
    v4 = 0;
  }

  sub_1BA342230(v4);

  return result;
}

uint64_t sub_1BA342230(unint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v11);
  if (a1)
  {
    v44 = v6;
    v45 = v12;
    v49 = 0;
    v50 = 0;
    v43 = &v43 - v13;
    if (a1 >> 62)
    {
      goto LABEL_17;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      while (1)
      {
        v16 = 0;
        v9 = 0;
        while ((a1 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1BFAF2860](v16, a1, v14);
          v6 = v12;
          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_12:
            __break(1u);
            goto LABEL_13;
          }

LABEL_8:
          v48[0] = v6;
          sub_1BA3427C8(v48, &v49, &v50, ObjectType);
          swift_unknownObjectRelease();
          ++v16;
          if (v17 == v15)
          {
            goto LABEL_18;
          }
        }

        if (v16 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v15 = sub_1BA4A7CC8();
        if (!v15)
        {
          goto LABEL_18;
        }
      }

      v6 = *(a1 + 8 * v16 + 32);
      v12 = swift_unknownObjectRetain();
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

LABEL_18:
    v27 = v43;
    sub_1BA4A3E28();
    v28 = v2;
    v29 = sub_1BA4A3E88();
    v30 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v48[0] = v32;
      *v31 = 136316418;
      v33 = sub_1BA4A85D8();
      v35 = sub_1B9F0B82C(v33, v34, v48);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2048;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BA4A4F28();

      *(v31 + 14) = v47;

      *(v31 + 22) = 2048;
      swift_beginAccess();
      *(v31 + 24) = v49;
      *(v31 + 32) = 2048;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BA4A4F28();

      *(v31 + 34) = v47;

      *(v31 + 42) = 2048;
      swift_beginAccess();
      *(v31 + 44) = v50;
      *(v31 + 52) = 2080;
      v36 = sub_1BA4A1D48();
      v38 = sub_1B9F0B82C(v36, v37, v48);

      *(v31 + 54) = v38;
      _os_log_impl(&dword_1B9F07000, v29, v30, "[%s] updating the # of alerts from %ld to %ld and # of changes from %ld to %ld for profile %s", v31, 0x3Eu);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v32, -1, -1);
      MEMORY[0x1BFAF43A0](v31, -1, -1);
    }

    else
    {
    }

    (v44)[1](v27, v45);
    swift_beginAccess();
    v39 = v49;
    swift_getKeyPath();
    swift_getKeyPath();
    v47 = v39;
    v40 = v28;
    sub_1BA4A4F38();
    swift_beginAccess();
    v41 = v50;
    swift_getKeyPath();
    swift_getKeyPath();
    v46 = v41;
    v42 = v40;
    return sub_1BA4A4F38();
  }

  else
  {
LABEL_13:
    v18 = v12;
    sub_1BA4A3E28();
    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v48[0] = v22;
      *v21 = 136315138;
      v23 = sub_1BA4A85D8();
      v25 = sub_1B9F0B82C(v23, v24, v48);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1B9F07000, v19, v20, "[%s] Unable to find sections from fetchedResultsController", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFAF43A0](v22, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    return (v6)[1](v9, v18);
  }
}

void sub_1BA3427C8(void **a1, void *a2, void *a3, NSObject *a4)
{
  v65 = a4;
  v61 = a3;
  v62 = a2;
  v66 = sub_1BA4A3EA8();
  v6 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v7);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v59 - v12;
  v14 = sub_1BA4A1C68();
  v63 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = MEMORY[0x1EEE9AC00](v18, v19).n128_u64[0];
  v22 = &v59 - v21;
  v23 = *a1;
  v24 = [v23 objects];
  if (!v24)
  {
    goto LABEL_7;
  }

  v25 = v24;
  v60 = v13;
  v64 = v4;
  v26 = sub_1BA4A6B08();

  if (!*(v26 + 16))
  {

    goto LABEL_7;
  }

  sub_1B9F0AD9C(v26 + 32, v67);

  sub_1BA4A27B8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_1BA4A3E28();
    v30 = sub_1BA4A3E88();
    v31 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v67[0] = v33;
      *v32 = 136315138;
      v34 = sub_1BA4A85D8();
      v36 = sub_1B9F0B82C(v34, v35, v67);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_1B9F07000, v30, v31, "[%s] unable to determine feeditem or feeditem's contentKind for section", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1BFAF43A0](v33, -1, -1);
      MEMORY[0x1BFAF43A0](v32, -1, -1);
    }

    (*(v6 + 8))(v9, v66);
    return;
  }

  v27 = v67[5];
  sub_1BA4A26B8();
  v28 = (v63)[11](v22, v14);
  if (v28 == *MEMORY[0x1E69A3B90])
  {
    v29 = [v23 numberOfObjects];

    *v62 = v29;
    return;
  }

  if (v28 == *MEMORY[0x1E69A3BA0])
  {
    v37 = [v23 numberOfObjects];

    v38 = v61;
    v39 = &v37[*v61];
    if (!__OFADD__(*v61, v37))
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  if (v28 == *MEMORY[0x1E69A3BC8])
  {
    v40 = [v23 numberOfObjects];

    v38 = v61;
    v39 = &v40[*v61];
    if (!__OFADD__(*v61, v40))
    {
LABEL_16:
      *v38 = v39;
      return;
    }

    __break(1u);
  }

  else
  {
    v41 = v60;
    sub_1BA4A3E28();
    v42 = v27;
    v43 = sub_1BA4A3E88();
    v44 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      LODWORD(v61) = v44;
      v46 = v45;
      v62 = swift_slowAlloc();
      v67[0] = v62;
      *v46 = 136315394;
      v47 = sub_1BA4A85D8();
      v65 = v43;
      v49 = sub_1B9F0B82C(v47, v48, v67);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2080;
      sub_1BA4A26B8();
      v50 = sub_1BA4A1C58();
      v52 = v51;
      v53 = v63[1];
      v63 = v42;
      v54 = v17;
      v55 = v53;
      v53(v54, v14);
      v56 = sub_1B9F0B82C(v50, v52, v67);

      *(v46 + 14) = v56;
      v57 = v65;
      _os_log_impl(&dword_1B9F07000, v65, v61, "[%s] Unsupported content kind %s for tile details", v46, 0x16u);
      v58 = v62;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v58, -1, -1);
      MEMORY[0x1BFAF43A0](v46, -1, -1);

      (*(v6 + 8))(v41, v66);
    }

    else
    {

      (*(v6 + 8))(v41, v66);
      v55 = v63[1];
    }

    v55(v22, v14);
  }
}

id sub_1BA342DC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingProfileTileEscalatedDetailsProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SummarySharingProfileTileEscalatedDetailsProvider(uint64_t a1)
{
  result = qword_1EBBF0E58;
  if (!qword_1EBBF0E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}