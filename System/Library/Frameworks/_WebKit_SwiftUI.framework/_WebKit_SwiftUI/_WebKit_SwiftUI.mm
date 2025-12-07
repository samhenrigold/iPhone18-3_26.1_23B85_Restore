__n128 sub_23BC8A458@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_extrinsicSafeAreaInsets;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_23BC8A4B0(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_extrinsicSafeAreaInsets];
  result = swift_beginAccess();
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = *(v3 + 32);
  v10 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v10;
  v11 = *(a1 + 32);
  *(v3 + 32) = v11;
  if (v9)
  {
    if (v11)
    {
      return result;
    }

    return [v1 safeAreaInsetsDidChange];
  }

  if (v11)
  {
    return [v1 safeAreaInsetsDidChange];
  }

  result = sub_23BC9565C();
  if ((result & 1) == 0)
  {
    return [v1 safeAreaInsetsDidChange];
  }

  return result;
}

void (*sub_23BC8A56C(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_extrinsicSafeAreaInsets;
  *(v3 + 64) = v1;
  *(v3 + 72) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 32);
  v8 = *(v6 + 16);
  *v4 = *v6;
  *(v4 + 16) = v8;
  *(v4 + 32) = v7;
  return sub_23BC8A60C;
}

void sub_23BC8A60C(id **a1)
{
  v1 = *a1;
  v2 = ((*a1)[9] + (*a1)[8]);
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  v6 = *(*a1 + 32);
  v7 = *v2;
  v8 = v2[1];
  v9 = v2[2];
  v10 = v2[3];
  v11 = *(v2 + 32);
  *v2 = **a1;
  *(v2 + 1) = v3;
  *(v2 + 2) = v4;
  *(v2 + 3) = v5;
  *(v2 + 32) = v6;
  if (v11)
  {
    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ((v6 & 1) != 0 || (sub_23BC9565C() & 1) == 0)
  {
LABEL_6:
    [v1[8] safeAreaInsetsDidChange];
  }

LABEL_7:

  free(v1);
}

id sub_23BC8A7FC()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x190))();
  if (result)
  {
    v2 = result;
    v3 = [result findInteraction];

    if (v3)
    {
      v4 = [v3 isFindNavigatorVisible];

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_23BC8A8A0()
{
  v1 = OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter____lazy_storage___findInteraction;
  v2 = *(v0 + OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter____lazy_storage___findInteraction);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = (*((*MEMORY[0x277D85000] & *v0) + 0x190))();
    if (v4 && (v5 = v4, v6 = [v4 findInteraction], v5, v6))
    {
      nullsub_1();
      v3 = v7;
    }

    else
    {
      v3 = 0;
    }

    v8 = *(v0 + v1);
    *(v0 + v1) = v3;
    v9 = v3;
    sub_23BC8C4A4(v8);
  }

  sub_23BC8C4B4(v2);
  return v3;
}

void sub_23BC8A97C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter____lazy_storage___findInteraction);
  *(v1 + OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter____lazy_storage___findInteraction) = a1;
  sub_23BC8C4A4(v2);
}

void (*sub_23BC8A994(void **a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_23BC8A8A0();
  return sub_23BC8A9DC;
}

void sub_23BC8A9DC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter____lazy_storage___findInteraction);
  *(v3 + OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter____lazy_storage___findInteraction) = *a1;
  if (a2)
  {
    v5 = v2;
    sub_23BC8C4A4(v4);
  }

  else
  {

    sub_23BC8C4A4(v4);
  }
}

uint64_t sub_23BC8AB18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_23BC8C50C(v4 + v8, a4, a2, a3);
}

uint64_t sub_23BC8ABA0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_23BC8C574(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_23BC8AC74()
{
  v1 = (v0 + OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_onScrollGeometryChange);
  swift_beginAccess();
  v2 = *v1;
  sub_23BC8C5DC(*v1, v1[1], v1[2], v1[3]);
  return v2;
}

uint64_t sub_23BC8ACEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = (*((*MEMORY[0x277D85000] & *v4) + 0x190))();
  if (v10)
  {
    v11 = v10;
    sub_23BC955CC();
  }

  v12 = (v5 + OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_onScrollGeometryChange);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = v12[3];
  *v12 = a1;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = a4;
  return sub_23BC8C620(v13, v14, v15, v16);
}

void (*sub_23BC8ADBC(uint64_t **a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_onScrollGeometryChange;
  v3[7] = v1;
  v3[8] = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  *v4 = *v6;
  v4[1] = v8;
  v4[2] = v9;
  v4[3] = v10;
  sub_23BC8C5DC(v7, v8, v9, v10);
  return sub_23BC8AE60;
}

void sub_23BC8AE60(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = *((*MEMORY[0x277D85000] & *(*a1)[7]) + 0x190);
  if (a2)
  {
    v8 = sub_23BC8C5DC(**a1, v4, v6, v5);
    v9 = (v7)(v8);
    if (v9)
    {
      v10 = v9;
      sub_23BC955CC();
    }

    v11 = (v2[7] + v2[8]);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v15 = v11[3];
    *v11 = v3;
    v11[1] = v4;
    v11[2] = v6;
    v11[3] = v5;
    sub_23BC8C620(v12, v13, v14, v15);
    v16 = *v2;
    v17 = v2[1];
    v18 = v2[2];
    v19 = v2[3];
  }

  else
  {
    v20 = v7();
    if (v20)
    {
      v21 = v20;
      sub_23BC955CC();
    }

    v22 = (v2[7] + v2[8]);
    v16 = *v22;
    v17 = v22[1];
    v18 = v22[2];
    v19 = v22[3];
    *v22 = v3;
    v22[1] = v4;
    v22[2] = v6;
    v22[3] = v5;
  }

  sub_23BC8C620(v16, v17, v18, v19);

  free(v2);
}

void sub_23BC8AF8C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_webViewConstraints;
  v3 = OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_findBarConstraints;
  v13 = *(v0 + OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_webViewConstraints);

  sub_23BC8C768(v4);
  if (v13 >> 62)
  {
    v5 = sub_23BC95B8C();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x23EEB94C0](i, v13);
    }

    else
    {
      v7 = *(v13 + 8 * i + 32);
    }

    v8 = v7;
    [v7 setActive_];
  }

LABEL_10:

  v9 = OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_webViewHeightConstraint;
  v10 = *(v1 + OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_webViewHeightConstraint);
  if (v10)
  {
    [v10 setActive_];
  }

  v11 = MEMORY[0x277D84F90];
  *(v1 + v2) = MEMORY[0x277D84F90];

  *(v1 + v3) = v11;

  v12 = *(v1 + v9);
  *(v1 + v9) = 0;
}

void sub_23BC8B0F0()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x190))();
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1F40, &qword_23BC96190);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_23BC96080;
    v4 = v2;
    v5 = [v4 widthAnchor];
    v6 = [v0 widthAnchor];
    v7 = [v5 constraintEqualToAnchor_];

    *(v3 + 32) = v7;
    v8 = [v4 leadingAnchor];
    v9 = [v0 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor_];

    *(v3 + 40) = v10;
    v11 = [v4 bottomAnchor];
    v12 = [v0 bottomAnchor];
    v13 = [v11 constraintEqualToAnchor_];

    *(v3 + 48) = v13;
    v14 = OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_webViewConstraints;
    *(v0 + OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_webViewConstraints) = v3;

    v15 = [v4 heightAnchor];

    v16 = [v0 heightAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    v18 = *(v0 + OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_webViewHeightConstraint);
    *(v0 + OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_webViewHeightConstraint) = v17;
    v19 = v17;

    v20 = objc_opt_self();
    v21 = *(v0 + v14);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23BC96090;
    *(inited + 32) = v19;
    v23 = v19;

    sub_23BC8C768(inited);
    sub_23BC8CEBC();
    v24 = sub_23BC95ABC();

    [v20 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

void *sub_23BC8B3E8()
{
  v1 = OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_webView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_23BC8B434(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_webView;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5)
  {
    if (a1)
    {
      sub_23BC955FC();
      v6 = v5;
      v7 = a1;
      v8 = sub_23BC95AFC();

      if (v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = v5;
    }
  }

  else if (!a1)
  {
    goto LABEL_10;
  }

  sub_23BC8AF8C();
  v10 = *&v2[v4];
  if (v10)
  {
    [v10 removeFromSuperview];
  }

LABEL_10:
  v11 = *&v2[v4];
  *&v2[v4] = a1;
  v12 = a1;

  v13 = *&v2[v4];
  if (v5)
  {
    if (!v13)
    {
      goto LABEL_18;
    }

    sub_23BC955FC();
    v5 = v5;
    v14 = v13;
    v15 = sub_23BC95AFC();

    if (v15)
    {
      goto LABEL_18;
    }

    v13 = *&v2[v4];
    if (!v13)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v13)
  {
    v5 = 0;
LABEL_17:
    v16 = v13;
    [v16 setTranslatesAutoresizingMaskIntoConstraints_];
    [v2 addSubview_];
    sub_23BC8B0F0();
    sub_23BC8C664();
    swift_unknownObjectRetain();
    sub_23BC955DC();

    v12 = v5;
    v5 = v16;
LABEL_18:

    v12 = v5;
  }
}

void (*sub_23BC8B5DC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_webView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_23BC8B678;
}

void sub_23BC8B678(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v7 = *(v5 + v6);
  if (a2)
  {
    if (v7)
    {
      v8 = *(v5 + v6);
      if (v3)
      {
        sub_23BC955FC();
        v9 = v3;
        v10 = v7;
        v11 = v9;
        v12 = sub_23BC95AFC();

        if (v12)
        {
          goto LABEL_14;
        }

        v5 = v2[4];
        v6 = v2[5];
        goto LABEL_12;
      }
    }

    else
    {
      v8 = *(*a1 + 24);
      if (!v3)
      {
        goto LABEL_14;
      }
    }

    v16 = v8;
LABEL_12:
    sub_23BC8AF8C();
    v17 = *(v5 + v6);
    if (v17)
    {
      [v17 removeFromSuperview];
    }

LABEL_14:
    v19 = v2[4];
    v18 = v2[5];
    v20 = *(v19 + v18);
    *(v19 + v18) = v3;
    v21 = v3;

    v22 = *(v19 + v18);
    if (v7)
    {
      if (!v22)
      {
        goto LABEL_24;
      }

      sub_23BC955FC();
      v7 = v7;
      v23 = v22;
      v24 = sub_23BC95AFC();

      if (v24)
      {
        goto LABEL_24;
      }

      v25 = v2[4];
      v22 = *&v25[v2[5]];
      if (!v22)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (!v22)
      {
LABEL_25:

        v27 = *v4;
        goto LABEL_38;
      }

      v7 = 0;
      v25 = v2[4];
    }

    v26 = v22;
    [v26 setTranslatesAutoresizingMaskIntoConstraints_];
    [v25 addSubview_];
    sub_23BC8B0F0();
    sub_23BC8C664();
    swift_unknownObjectRetain();
    sub_23BC955DC();

LABEL_24:
    goto LABEL_25;
  }

  if (v7)
  {
    if (v3)
    {
      sub_23BC955FC();
      v13 = v7;
      v14 = v3;
      v15 = sub_23BC95AFC();

      if (v15)
      {
        goto LABEL_29;
      }

      v5 = v2[4];
      v6 = v2[5];
    }

    else
    {
      v28 = v7;
    }
  }

  else if (!v3)
  {
    goto LABEL_29;
  }

  sub_23BC8AF8C();
  v29 = *(v5 + v6);
  if (v29)
  {
    [v29 removeFromSuperview];
  }

LABEL_29:
  v31 = v2[4];
  v30 = v2[5];
  v32 = *(v31 + v30);
  *(v31 + v30) = v3;
  v27 = v3;

  v33 = *(v31 + v30);
  if (v7)
  {
    if (!v33)
    {
      goto LABEL_37;
    }

    sub_23BC955FC();
    v7 = v7;
    v34 = v33;
    v35 = sub_23BC95AFC();

    if (v35)
    {
      goto LABEL_37;
    }

    v36 = v2[4];
    v33 = *&v36[v2[5]];
    if (!v33)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if (!v33)
    {
      goto LABEL_38;
    }

    v7 = 0;
    v36 = v2[4];
  }

  v37 = v33;
  [v37 setTranslatesAutoresizingMaskIntoConstraints_];
  [v36 addSubview_];
  sub_23BC8B0F0();
  sub_23BC8C664();
  swift_unknownObjectRetain();
  sub_23BC955DC();

LABEL_37:
LABEL_38:

  free(v2);
}

id sub_23BC8B96C(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_extrinsicSafeAreaInsets];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  *&v4[OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter____lazy_storage___findInteraction] = 1;
  v10 = OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_findContext;
  v11 = sub_23BC9569C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_scrollPosition;
  v13 = type metadata accessor for ScrollPositionContext(0);
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  v14 = &v4[OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_onScrollGeometryChange];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  sub_23BC9576C();
  v15 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_webViewConstraints] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_findBarConstraints] = v15;
  *&v4[OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_webViewHeightConstraint] = 0;
  *&v4[OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_webView] = 0;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for CocoaWebViewAdapter(0);
  return objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4, 0, 0);
}

id sub_23BC8BBE0(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_extrinsicSafeAreaInsets];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  *&v1[OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter____lazy_storage___findInteraction] = 1;
  v4 = OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_findContext;
  v5 = sub_23BC9569C();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_scrollPosition;
  v7 = type metadata accessor for ScrollPositionContext(0);
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v8 = &v1[OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_onScrollGeometryChange];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  sub_23BC9576C();
  v9 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_webViewConstraints] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_findBarConstraints] = v9;
  *&v1[OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_webViewHeightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_webView] = 0;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for CocoaWebViewAdapter(0);
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1, 0, 0);

  if (v10)
  {
  }

  return v10;
}

id sub_23BC8BE30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CocoaWebViewAdapter(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BC8BFD4@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **v1) + 0xC0))();
  *a1 = result;
  return result;
}

uint64_t sub_23BC8C030(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23BC9564C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BC9577C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v24 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  (*(v5 + 16))(v7, a1, v4);
  v26 = v17;
  sub_23BC8E698(v7);
  v18 = OBJC_IVAR____TtC15_WebKit_SwiftUI19CocoaWebViewAdapter_currentScrollGeometry;
  swift_beginAccess();
  v19 = (*(v9 + 16))(v15, &v2[v18], v8);
  v20 = (*((*MEMORY[0x277D85000] & *v2) + 0x108))(v19);
  if (v20)
  {
    v22 = v20;
    v25 = v21;
    v20(v28, v26);
    v22(v27, v15);
    if ((MEMORY[0x23EEB9480](v27, v28) & 1) == 0)
    {
      v25(v27, v28);
    }

    sub_23BC8CC8C(v27);
    sub_23BC8CC8C(v28);
  }

  (*(v9 + 8))(v15, v8);
  (*(v9 + 32))(v12, v26, v8);
  swift_beginAccess();
  (*(v9 + 40))(&v2[v18], v12, v8);
  return swift_endAccess();
}

uint64_t sub_23BC8C38C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1F10, &qword_23BC960A0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  (*((*MEMORY[0x277D85000] & *v0) + 0xD8))(v2);
  v5 = sub_23BC9569C();
  if ((*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_23BC9568C();
  }

  sub_23BC8C708(v4, &qword_27E1C1F10, &qword_23BC960A0);
  return v6 & 1;
}

void sub_23BC8C4A4(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_23BC8C4B4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23BC8C50C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23BC8C574(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_23BC8C5DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23BC8C620(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_23BC8C664()
{
  result = qword_27E1C1F20;
  if (!qword_27E1C1F20)
  {
    type metadata accessor for CocoaWebViewAdapter(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C1F20);
  }

  return result;
}

uint64_t type metadata accessor for CocoaWebViewAdapter(uint64_t a1)
{
  result = qword_27E1C2210;
  if (!qword_27E1C2210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BC8C708(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23BC8C768(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_23BC95B8C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_23BC95B8C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_23BC8C858(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_23BC8C980(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_23BC8C858(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_23BC95B8C();
LABEL_9:
  result = sub_23BC95B6C();
  *v2 = result;
  return result;
}

void (*sub_23BC8C8F8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EEB94C0](a2, a3);
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
    return sub_23BC8C978;
  }

  __break(1u);
  return result;
}

uint64_t sub_23BC8C980(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23BC95B8C();
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
      result = sub_23BC95B8C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23BC8CF08();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1F50, &qword_23BC96198);
            v9 = sub_23BC8C8F8(v13, i, a3);
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
        sub_23BC8CEBC();
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

uint64_t sub_23BC8CB00(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1F10, &qword_23BC960A0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14[-v5];
  (*((*MEMORY[0x277D85000] & *v1) + 0xD8))(v4);
  v7 = sub_23BC9569C();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    return sub_23BC8C708(v6, &qword_27E1C1F10, &qword_23BC960A0);
  }

  v9 = sub_23BC9567C();
  v11 = v10;
  v13 = v12;
  result = sub_23BC8C708(v6, &qword_27E1C1F10, &qword_23BC960A0);
  if (v11)
  {
    v15 = v9;
    v16 = v11;
    v17 = v13 & 1;
    v14[7] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1F38, &qword_23BC970C0);
    sub_23BC95A1C();
  }

  return result;
}

void sub_23BC8CCF4(uint64_t a1)
{
  sub_23BC8CE68(319, &qword_27E1C1F28, MEMORY[0x277CDD740]);
  if (v1 <= 0x3F)
  {
    sub_23BC8CE68(319, &qword_27E1C1F30, type metadata accessor for ScrollPositionContext);
    if (v2 <= 0x3F)
    {
      sub_23BC9577C();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_23BC8CE68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23BC95B0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_23BC8CEBC()
{
  result = qword_27E1C1F48;
  if (!qword_27E1C1F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1C1F48);
  }

  return result;
}

unint64_t sub_23BC8CF08()
{
  result = qword_27E1C1F58;
  if (!qword_27E1C1F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C1F50, &qword_23BC96198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C1F58);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

_BYTE *sub_23BC8CFB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BC91340();
  *a1 = *result;
  return result;
}

uint64_t sub_23BC8CFE4()
{
  sub_23BC8D02C();

  return sub_23BC9587C();
}

unint64_t sub_23BC8D02C()
{
  result = qword_27E1C2220;
  if (!qword_27E1C2220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C2220);
  }

  return result;
}

_BYTE *sub_23BC8D0A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BC9134C();
  *a1 = *result;
  return result;
}

uint64_t sub_23BC8D0CC()
{
  sub_23BC8D114();

  return sub_23BC9587C();
}

unint64_t sub_23BC8D114()
{
  result = qword_27E1C2228;
  if (!qword_27E1C2228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C2228);
  }

  return result;
}

_BYTE *sub_23BC8D188@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BC913A0();
  *a1 = *result;
  return result;
}

uint64_t sub_23BC8D1B4()
{
  sub_23BC8D1FC();

  return sub_23BC9587C();
}

unint64_t sub_23BC8D1FC()
{
  result = qword_27E1C2230;
  if (!qword_27E1C2230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C2230);
  }

  return result;
}

uint64_t sub_23BC8D288()
{
  sub_23BC8D2C4();
  sub_23BC9587C();
  return v1;
}

unint64_t sub_23BC8D2C4()
{
  result = qword_27E1C2238;
  if (!qword_27E1C2238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C2238);
  }

  return result;
}

_BYTE *sub_23BC8D354@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BC91458();
  *a1 = *result;
  return result;
}

uint64_t sub_23BC8D380()
{
  sub_23BC8D3C8();

  return sub_23BC9587C();
}

unint64_t sub_23BC8D3C8()
{
  result = qword_27E1C2240;
  if (!qword_27E1C2240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C2240);
  }

  return result;
}

uint64_t sub_23BC8D494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23BC8DBCC();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23BC8D4F8()
{
  sub_23BC8D534();
  sub_23BC9587C();
  return v1;
}

unint64_t sub_23BC8D534()
{
  result = qword_27E1C2250;
  if (!qword_27E1C2250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C2250);
  }

  return result;
}

double sub_23BC8D5C4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_23BC8D5D0()
{
  sub_23BC8D610();
  sub_23BC9587C();
  return v1;
}

unint64_t sub_23BC8D610()
{
  result = qword_27E1C2258;
  if (!qword_27E1C2258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C2258);
  }

  return result;
}

uint64_t sub_23BC8D6A8()
{
  sub_23BC8D6F0();

  return sub_23BC9587C();
}

unint64_t sub_23BC8D6F0()
{
  result = qword_27E1C2260;
  if (!qword_27E1C2260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C2260);
  }

  return result;
}

uint64_t sub_23BC8D744(uint64_t a1)
{
  v2 = type metadata accessor for ScrollPositionContext(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23BC8D7E4(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23BC8D6F0();
  sub_23BC9588C();
  return sub_23BC8D848(a1);
}

uint64_t sub_23BC8D7E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrollPositionContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BC8D848(uint64_t a1)
{
  v2 = type metadata accessor for ScrollPositionContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BC8D8A4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ScrollInputBehaviorContext(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_23BC8D910()
{
  sub_23BC8D958();

  return sub_23BC9587C();
}

unint64_t sub_23BC8D958()
{
  result = qword_27E1C2268[0];
  if (!qword_27E1C2268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1C2268);
  }

  return result;
}

uint64_t sub_23BC8D9AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1F60, &unk_23BC961B0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23BC8DA54(a1, &v5 - v3);
  sub_23BC8D958();
  sub_23BC9588C();
  return sub_23BC8DAC4(a1);
}

uint64_t sub_23BC8DA54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1F60, &unk_23BC961B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BC8DAC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1F60, &unk_23BC961B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23BC8DBCC()
{
  result = qword_27E1C1F68;
  if (!qword_27E1C1F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C1F68);
  }

  return result;
}

void sub_23BC8DC24(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() mainRunLoop];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1F70, &qword_23BC965C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23BC965A0;
  v6 = *MEMORY[0x277CBE738];
  *(v5 + 32) = *MEMORY[0x277CBE738];
  type metadata accessor for Mode();
  v7 = v6;
  v8 = sub_23BC95ABC();

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v11[4] = sub_23BC8DE2C;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_23BC8E02C;
  v11[3] = &block_descriptor;
  v10 = _Block_copy(v11);

  [v4 performInModes:v8 block:v10];
  _Block_release(v10);
}

void type metadata accessor for Mode()
{
  if (!qword_27E1C1F78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27E1C1F78);
    }
  }
}

uint64_t sub_23BC8DDF4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23BC8DE2C(uint64_t a1, uint64_t a2)
{
  sub_23BC95AEC();
  v4[1] = *(v2 + 16);
  return sub_23BC8DEA4(sub_23BC8E558, v4, "_WebKit_SwiftUI/Foundation+Extras.swift", 39, 2u, 30);
}

uint64_t sub_23BC8DEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_23BC95ADC();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_23BC8E610();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_23BC95B4C();
    MEMORY[0x23EEB9400](0xD00000000000003FLL, 0x800000023BC97C60);
    v12 = sub_23BC95BFC();
    MEMORY[0x23EEB9400](v12);

    MEMORY[0x23EEB9400](46, 0xE100000000000000);
    result = sub_23BC95B7C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23BC8E02C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23BC8E0A4(uint64_t a1, id *a2)
{
  result = sub_23BC95A5C();
  *a2 = 0;
  return result;
}

uint64_t sub_23BC8E11C(uint64_t a1, id *a2)
{
  v3 = sub_23BC95A6C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23BC8E19C@<X0>(uint64_t *a1@<X8>)
{
  sub_23BC95A7C();
  v2 = sub_23BC95A4C();

  *a1 = v2;
  return result;
}

uint64_t sub_23BC8E1E0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_23BC95A4C();

  *a2 = v3;
  return result;
}

uint64_t sub_23BC8E228@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BC95A7C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23BC8E254(uint64_t a1)
{
  v2 = sub_23BC8E514(&qword_27E1C1F98, &unk_23BC966DC);
  v3 = sub_23BC8E514(&qword_27E1C1FA0, &unk_23BC9667C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23BC8E354()
{
  v0 = sub_23BC95A7C();
  v1 = MEMORY[0x23EEB9410](v0);

  return v1;
}

uint64_t sub_23BC8E390(uint64_t a1)
{
  sub_23BC95A7C();
  sub_23BC95A8C();
}

uint64_t sub_23BC8E3E4(uint64_t a1)
{
  sub_23BC95A7C();
  sub_23BC95BBC();
  sub_23BC95A8C();
  v1 = sub_23BC95BEC();

  return v1;
}

uint64_t sub_23BC8E458(void *a1, uint64_t *a2)
{
  v2 = sub_23BC95A7C();
  v4 = v3;
  if (v2 == sub_23BC95A7C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23BC95BAC();
  }

  return v7 & 1;
}

uint64_t sub_23BC8E514(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Mode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BC8E558(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  sub_23BC95AEC();
  sub_23BC95ADC();
  sub_23BC95ACC();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v3(isCurrentExecutor);
}

uint64_t sub_23BC8E698(uint64_t a1)
{
  sub_23BC9563C();
  sub_23BC9560C();
  sub_23BC9562C();
  sub_23BC9561C();
  sub_23BC9576C();
  v2 = sub_23BC9564C();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_23BC8E784(uint64_t a1)
{
  if (sub_23BC956BC())
  {

    v1 = sub_23BC956AC() ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_23BC8E7C8(uint64_t a1)
{
  if (a1 >= 0x80000)
  {
    if (a1 == 0x80000)
    {
      return MEMORY[0x282130D58]();
    }

    if (a1 != 0x100000)
    {
      if (a1 == 0x200000)
      {
        return MEMORY[0x282130D48]();
      }

      return MEMORY[0x282130D78](0);
    }

    return MEMORY[0x282130D60]();
  }

  else
  {
    if (a1 == 0x10000)
    {
      return MEMORY[0x282130D70]();
    }

    if (a1 != 0x20000)
    {
      if (a1 == 0x40000)
      {
        return MEMORY[0x282130D68]();
      }

      return MEMORY[0x282130D78](0);
    }

    return MEMORY[0x282130D50]();
  }
}

uint64_t sub_23BC8E828@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BC8CFE4();
  *a1 = v3;
  return result;
}

uint64_t sub_23BC8E8A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BC8D0CC();
  *a1 = v3;
  return result;
}

uint64_t sub_23BC8E928@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BC8D1B4();
  *a1 = v3;
  return result;
}

uint64_t View.webViewTextSelection<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  sub_23BC9589C();
  sub_23BC959BC();
}

uint64_t sub_23BC8EA38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BC8D288();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23BC8EA9C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_23BC959BC();
}

uint64_t sub_23BC8EB0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BC8D380();
  *a1 = v3;
  return result;
}

uint64_t View.webViewContentBackground(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_23BC959BC();
}

uint64_t sub_23BC8EC24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BC8D4F8();
  *a1 = result;
  return result;
}

uint64_t View.webViewOnScrollGeometryChange<A>(for:of:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a9;
  v16[6] = a2;
  v16[7] = a3;
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v17[5] = a9;
  v17[6] = a4;
  v17[7] = a5;

  nullsub_1();
  swift_getKeyPath();

  sub_23BC959BC();
}

uint64_t sub_23BC8EDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x28223BE20](a1);
  v6(v5);
  return sub_23BC95B3C();
}

uint64_t sub_23BC8EE84()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23BC8EECC(uint64_t a1, uint64_t a2, void (*a3)(char *, char *), uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - v11;
  sub_23BC95B2C();
  swift_dynamicCast();
  sub_23BC95B2C();
  swift_dynamicCast();
  a3(v12, v10);
  v13 = *(v7 + 8);
  v13(v10, a5);
  return (v13)(v12, a5);
}

uint64_t sub_23BC8F048@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BC8D5D0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_23BC8F078(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  sub_23BC8C5DC(*a1, v2, v3, v4);
  return sub_23BC8D664(v1, v2, v3, v4);
}

uint64_t View.webViewScrollPosition(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1FA8, &qword_23BC96948);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for ScrollPositionContext(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_23BC8C50C(a1, v6, &qword_27E1C1FB0, &unk_23BC969F0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1FB0, &unk_23BC969F0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  sub_23BC8F934(v6, v9);
  sub_23BC959BC();

  return sub_23BC8D848(v9);
}

uint64_t sub_23BC8F288(uint64_t a1)
{
  v2 = type metadata accessor for ScrollPositionContext(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BC8D7E4(a1, v4);
  return sub_23BC8D744(v4);
}

uint64_t View.webViewScrollInputBehavior(_:for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20[2] = a4;
  v20[0] = a5;
  v20[1] = a3;
  v7 = sub_23BC9582C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23BC958AC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1F60, &unk_23BC961B0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v20 - v16;
  swift_getKeyPath();
  (*(v12 + 16))(v14, a1, v11);
  (*(v8 + 16))(v10, a2, v7);
  sub_23BC8F9CC(v14, v10, v17);
  v18 = type metadata accessor for ScrollInputBehaviorContext(0);
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  sub_23BC959BC();

  return sub_23BC8DAC4(v17);
}

uint64_t sub_23BC8F580(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1F60, &unk_23BC961B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_23BC8C50C(a1, &v6 - v3, &qword_27E1C1F60, &unk_23BC961B0);
  return sub_23BC8D9AC(v4);
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy08_WebKit_aB00jC0V37BackForwardNavigationGesturesBehaviorVGGAaBHPxAaBHD1__AlA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_23BC9580C();
  sub_23BC8F860(a4, a2, a3);
  return swift_getWitnessTable();
}

uint64_t get_witness_table_7SwiftUI4ViewRzAA17TextSelectabilityRd__r__lAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVySbGGAaBHPxAaBHD1__AhA0cK0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_23BC9580C();
  sub_23BC8F860(a4, a2, a3);
  return swift_getWitnessTable();
}

uint64_t sub_23BC8F860(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23BC8F8BC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1FB0, &unk_23BC969F0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_23BC8F93C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1FA8, &qword_23BC96948);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BC8F9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23BC958AC();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for ScrollInputBehaviorContext(0) + 20);
  v8 = sub_23BC9582C();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23BC8FAA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23BC8FAF0(uint64_t result, int a2, int a3)
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

uint64_t sub_23BC8FB54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1FA8, &qword_23BC96948);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23BC8FBE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1FA8, &qword_23BC96948);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23BC8FC7C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BC8FCB4(uint64_t a1)
{
  sub_23BC8FD20(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23BC8FD20(uint64_t a1)
{
  if (!qword_27E1C2048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C1FB0, &unk_23BC969F0);
    v1 = sub_23BC95B0C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1C2048);
    }
  }
}

uint64_t sub_23BC8FD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BC958AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_23BC9582C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23BC8FE9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23BC958AC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_23BC9582C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23BC8FF98(uint64_t a1)
{
  result = sub_23BC958AC();
  if (v2 <= 0x3F)
  {
    result = sub_23BC9582C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t WebPage.themeColor.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BC9551C();

  return v1;
}

uint64_t sub_23BC900A8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23BC9551C();

  *a1 = v3;
  return result;
}

id sub_23BC90148@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 themeColor];
  *a2 = result;
  return result;
}

uint64_t sub_23BC90184@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1)
  {
    v3 = *a1;
    result = sub_23BC959EC();
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t WebPage.NavigationAction.modifierFlags.getter()
{
  v0 = sub_23BC9552C();
  v1 = [v0 modifierFlags];

  return sub_23BC8E7C8(v1);
}

uint64_t WebView.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for WebView.Storage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t WebView.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_23BC954FC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C2050, &qword_23BC96B10) + 48);
  sub_23BC9554C();
  sub_23BC954EC();
  *a2 = sub_23BC9550C();
  a2[1] = 0;
  sub_23BC90350(a1, a2 + v5);
  type metadata accessor for WebView.Storage(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23BC90350(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C2058, &qword_23BC96B18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_23BC903C0@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WebView.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23BC95AEC();
  sub_23BC95ADC();
  sub_23BC95ACC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23BC90A0C(a1, v6, type metadata accessor for WebView.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v6;
  if (EnumCaseMultiPayload != 1)
  {
    v9 = v6[1];
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C2050, &qword_23BC96B10) + 48);
    v19 = v8;
    *&v20 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C20C0, "f\a");
    sub_23BC959FC();

    sub_23BC8C708(v6 + v10, &qword_27E1C2058, &qword_23BC96B18);
    v8 = v18;
  }

  sub_23BC956CC();
  sub_23BC9343C(v8, &v19, v11, v12, v13, v14);
  v15 = sub_23BC9581C();
  v16 = sub_23BC9598C();

  *a2 = v19;
  result = v21;
  *(a2 + 8) = v20;
  *(a2 + 24) = result;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  return result;
}

uint64_t WebView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v2 = type metadata accessor for WebView.Storage(0);
  MEMORY[0x28223BE20](v2);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C2058, &qword_23BC96B18);
  v5 = MEMORY[0x28223BE20](v19[0]);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - v8;
  v10 = type metadata accessor for WebView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_23BC90A0C(v1, v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WebView);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  sub_23BC90928(v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v19[2] = sub_23BC9098C;
  v19[3] = v14;
  sub_23BC90A0C(v1, v4, type metadata accessor for WebView.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BC90A74(v4);
    v15 = sub_23BC954AC();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  }

  else
  {

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C2050, &qword_23BC96B10);
    sub_23BC90350(&v4[*(v16 + 48)], v7);
  }

  sub_23BC90350(v7, v9);
  sub_23BC90A0C(v1, v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WebView);
  v17 = swift_allocObject();
  sub_23BC90928(v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C2060, &qword_23BC96B20);
  sub_23BC91200();
  sub_23BC91264();
  sub_23BC959DC();

  sub_23BC8C708(v9, &qword_27E1C2058, &qword_23BC96B18);
}

uint64_t sub_23BC90928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_23BC9098C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  *&result = sub_23BC903C0(v4, a1).n128_u64[0];
  return result;
}

uint64_t sub_23BC90A0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23BC90A74(uint64_t a1)
{
  v2 = type metadata accessor for WebView.Storage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BC90AD0(uint64_t a1)
{
  v40 = a1;
  v1 = sub_23BC9549C();
  v37 = *(v1 - 8);
  v38 = v1;
  MEMORY[0x28223BE20](v1);
  v36 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C20D0, &unk_23BC96EF8);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v32 - v4;
  v5 = type metadata accessor for WebView.Storage(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C2058, &qword_23BC96B18);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = sub_23BC954AC();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v32 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v32 - v21;
  sub_23BC95AEC();
  v39 = sub_23BC95ADC();
  sub_23BC95ACC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = v40;
  sub_23BC90A0C(v40, v10, type metadata accessor for WebView.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23BC90A74(v10);
    (*(v18 + 56))(v14, 1, 1, v17);
  }

  else
  {

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C2050, &qword_23BC96B10);
    sub_23BC90350(&v10[*(v24 + 48)], v14);
  }

  sub_23BC90350(v14, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_23BC8C708(v16, &qword_27E1C2058, &qword_23BC96B18);
  }

  else
  {
    (*(v18 + 32))(v22, v16, v17);
    sub_23BC90A0C(v23, v8, type metadata accessor for WebView.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v26 = *v8;
    if (EnumCaseMultiPayload != 1)
    {
      v27 = v8[1];
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C2050, &qword_23BC96B10) + 48);
      v41 = v26;
      v42 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C20C0, "f\a");
      sub_23BC959FC();

      sub_23BC8C708(v8 + v28, &qword_27E1C2058, &qword_23BC96B18);
    }

    (*(v18 + 16))(v32, v22, v17);
    v29 = v36;
    sub_23BC9548C();
    v30 = v33;
    sub_23BC9553C();

    (*(v37 + 8))(v29, v38);
    (*(v34 + 8))(v30, v35);
    (*(v18 + 8))(v22, v17);
  }
}

uint64_t objectdestroyTm()
{
  v1 = *(type metadata accessor for WebView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  type metadata accessor for WebView.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C2050, &qword_23BC96B10) + 48);
    v8 = sub_23BC954AC();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23BC911A0()
{
  v1 = *(type metadata accessor for WebView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23BC90AD0(v2);
}

unint64_t sub_23BC91200()
{
  result = qword_27E1C2068;
  if (!qword_27E1C2068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C2060, &qword_23BC96B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C2068);
  }

  return result;
}

unint64_t sub_23BC91264()
{
  result = qword_27E1C2070;
  if (!qword_27E1C2070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C2058, &qword_23BC96B18);
    sub_23BC91F3C(&qword_27E1C2078, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C2070);
  }

  return result;
}

uint64_t sub_23BC913CC()
{
  v1 = *v0;
  sub_23BC95BBC();
  MEMORY[0x23EEB9530](v1);
  return sub_23BC95BEC();
}

uint64_t sub_23BC91414(uint64_t a1)
{
  v2 = *v1;
  sub_23BC95BBC();
  MEMORY[0x23EEB9530](v2);
  return sub_23BC95BEC();
}

uint64_t sub_23BC91470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C2058, &qword_23BC96B18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WebView.ActivatedElementInfo.hash(into:)(uint64_t a1)
{
  v2 = sub_23BC954AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C2058, &qword_23BC96B18);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - v7;
  sub_23BC91470(v1, &v10 - v7);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_23BC95BDC();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_23BC95BDC();
  sub_23BC91F3C(&qword_27E1C2080, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_23BC95A2C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t WebView.ActivatedElementInfo.hashValue.getter()
{
  v1 = v0;
  v2 = sub_23BC954AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C2058, &qword_23BC96B18);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - v7;
  sub_23BC95BBC();
  sub_23BC91470(v1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_23BC95BDC();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_23BC95BDC();
    sub_23BC91F3C(&qword_27E1C2080, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_23BC95A2C();
    (*(v3 + 8))(v5, v2);
  }

  return sub_23BC95BEC();
}

uint64_t sub_23BC9188C(uint64_t a1)
{
  v2 = sub_23BC954AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C2058, &qword_23BC96B18);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - v7;
  sub_23BC91470(v1, &v10 - v7);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_23BC95BDC();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_23BC95BDC();
  sub_23BC91F3C(&qword_27E1C2080, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_23BC95A2C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_23BC91A50(uint64_t a1)
{
  v2 = v1;
  v3 = sub_23BC954AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C2058, &qword_23BC96B18);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_23BC95BBC();
  sub_23BC91470(v2, v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_23BC95BDC();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_23BC95BDC();
    sub_23BC91F3C(&qword_27E1C2080, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_23BC95A2C();
    (*(v4 + 8))(v6, v3);
  }

  return sub_23BC95BEC();
}

BOOL _s15_WebKit_SwiftUI0A4ViewV20ActivatedElementInfoV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BC954AC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C2058, &qword_23BC96B18);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C20C8, &qword_23BC96EF0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_23BC91470(a1, &v20 - v13);
  sub_23BC91470(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_23BC91470(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_23BC91F3C(&qword_27E1C2078, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v18 = sub_23BC95A3C();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_23BC8C708(v14, &qword_27E1C2058, &qword_23BC96B18);
      return (v18 & 1) != 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_23BC8C708(v14, &qword_27E1C20C8, &qword_23BC96EF0);
    return 0;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_23BC8C708(v14, &qword_27E1C2058, &qword_23BC96B18);
  return 1;
}

uint64_t sub_23BC91F3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23BC91FA4()
{
  result = qword_27E1C2088;
  if (!qword_27E1C2088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C2088);
  }

  return result;
}

unint64_t sub_23BC91FFC()
{
  result = qword_27E1C2090;
  if (!qword_27E1C2090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C2090);
  }

  return result;
}

unint64_t sub_23BC92054()
{
  result = qword_27E1C2098;
  if (!qword_27E1C2098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C2098);
  }

  return result;
}

unint64_t sub_23BC920AC()
{
  result = qword_27E1C20A0;
  if (!qword_27E1C20A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C20A0);
  }

  return result;
}

uint64_t sub_23BC9217C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebView.Storage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23BC921FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebView.Storage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t _s15_WebKit_SwiftUI7WebViewV19LinkPreviewBehaviorV5ValueOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s15_WebKit_SwiftUI7WebViewV19LinkPreviewBehaviorV5ValueOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23BC92480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C2058, &qword_23BC96B18);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23BC9250C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C2058, &qword_23BC96B18);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23BC925A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23BC92610(uint64_t a1)
{
  if (!qword_27E1C20B0)
  {
    sub_23BC954AC();
    v1 = sub_23BC95B0C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1C20B0);
    }
  }
}

uint64_t sub_23BC92668()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C2060, &qword_23BC96B20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C2058, &qword_23BC96B18);
  sub_23BC91200();
  sub_23BC91264();
  return swift_getOpaqueTypeConformance2();
}

void sub_23BC92748(uint64_t a1)
{
  sub_23BC927BC(319);
  if (v1 <= 0x3F)
  {
    sub_23BC9554C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_23BC927BC(uint64_t a1)
{
  if (!qword_27E1C20B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C20C0, "f\a");
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1C2058, &qword_23BC96B18);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27E1C20B8);
    }
  }
}

uint64_t sub_23BC9288C(void *a1, uint64_t a2)
{
  v83 = sub_23BC9594C();
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = v5;
  v84 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for EquatableScrollBounceBehavior(0);
  MEMORY[0x28223BE20](v82);
  v7 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1F60, &unk_23BC961B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v73 - v9;
  v79 = type metadata accessor for ScrollInputBehaviorContext(0);
  v11 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v73[0] = v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_23BC9586C();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v14 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73[2] = *v2;
  v15 = sub_23BC954BC();
  v73[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C20D8, &qword_23BC96F08);
  v78 = a2;
  sub_23BC9596C();
  v16 = *(v2 + 8);
  v76 = v2;
  v17 = *(v2 + 24);
  v87[0] = v16;
  v87[1] = v17;
  v88 = 0;
  v18 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *a1) + 0xA8))(v87);
  v19 = *((*v18 & *a1) + 0x198);
  v20 = v15;
  v77 = a1;
  v19(v15);
  v21 = v20;
  sub_23BC8CFE4();
  LOBYTE(v85[0]) = 2;
  sub_23BC91FA4();
  [v21 setAllowsBackForwardNavigationGestures_];
  sub_23BC8D1B4();
  LOBYTE(v85[0]) = 2;
  sub_23BC92054();
  [v21 setAllowsLinkPreview_];
  sub_23BC8D0CC();
  LOBYTE(v85[0]) = 2;
  sub_23BC91FFC();
  sub_23BC95A3C();
  sub_23BC9557C();
  sub_23BC8D4F8();
  v22 = sub_23BC9566C();
  v23 = v21;
  if (((v22 ^ [v23 isOpaque]) & 1) == 0)
  {
    [v23 setOpaque_];
  }

  sub_23BC8D910();
  v24 = v79;
  if ((*(v11 + 48))(v10, 1, v79) == 1)
  {
    sub_23BC8C708(v10, &qword_27E1C1F60, &unk_23BC961B0);
  }

  else
  {
    v25 = v73[0];
    sub_23BC94EA4(v10, v73[0]);
    v26 = sub_23BC958AC();
    v86[3] = v26;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v86);
    (*(*(v26 - 8) + 16))(boxed_opaque_existential_0, v25, v26);
    v28 = *(v24 + 20);
    v29 = sub_23BC9582C();
    v85[3] = v29;
    v30 = __swift_allocate_boxed_opaque_existential_0(v85);
    (*(*(v29 - 8) + 16))(v30, v25 + v28, v29);
    sub_23BC955BC();
    sub_23BC95320(v25, type metadata accessor for ScrollInputBehaviorContext);
    __swift_destroy_boxed_opaque_existential_0(v85);
    __swift_destroy_boxed_opaque_existential_0(v86);
  }

  v32 = v82;
  v31 = v83;
  v33 = v81;
  v34 = v84;
  sub_23BC9584C();
  v35 = *(v33 + 32);
  v35(v7, v34, v31);
  if (qword_27E1C3128 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v32, qword_27E1C2140);
  if (v80 != 1)
  {
    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_11;
  }

  v37 = *v7;
  v82 = v36;
  v38 = *v36;
  sub_23BC95320(v7, type metadata accessor for EquatableScrollBounceBehavior);
  if (v37 == v38)
  {
LABEL_12:
    v43 = v35;
    v44 = v84;
LABEL_13:
    sub_23BC9559C();
    sub_23BC9556C();
    goto LABEL_14;
  }

  v39 = v84;
  sub_23BC9584C();
  v35(v7, v39, v31);
  if (qword_27E1C3120 != -1)
  {
    goto LABEL_30;
  }

LABEL_11:
  v40 = __swift_project_value_buffer(v32, qword_27E1C2128);
  v41 = *v7;
  v42 = *v40;
  sub_23BC95320(v7, type metadata accessor for EquatableScrollBounceBehavior);
  if (v41 == v42)
  {
    goto LABEL_12;
  }

  v64 = v84;
  sub_23BC9584C();
  v43 = v35;
  v35(v7, v64, v31);
  if (qword_27E1C3130 != -1)
  {
    swift_once();
  }

  v65 = __swift_project_value_buffer(v32, qword_27E1C2158);
  v66 = *v7;
  v67 = *v65;
  sub_23BC95320(v7, type metadata accessor for EquatableScrollBounceBehavior);
  v68 = v66 == v67;
  v44 = v84;
  if (v68)
  {
    goto LABEL_13;
  }

LABEL_14:
  v45 = v32;
  sub_23BC9585C();
  v46 = v83;
  v43(v7, v44, v83);
  v47 = *v7;
  v48 = v44;
  v49 = *v82;
  sub_23BC95320(v7, type metadata accessor for EquatableScrollBounceBehavior);
  if (v47 == v49)
  {
    goto LABEL_18;
  }

  sub_23BC9585C();
  v43(v7, v48, v46);
  if (qword_27E1C3120 != -1)
  {
    swift_once();
  }

  v50 = __swift_project_value_buffer(v45, qword_27E1C2128);
  v51 = *v7;
  v52 = *v50;
  sub_23BC95320(v7, type metadata accessor for EquatableScrollBounceBehavior);
  if (v51 == v52)
  {
    goto LABEL_18;
  }

  v69 = v84;
  sub_23BC9585C();
  v43(v7, v69, v83);
  if (qword_27E1C3130 != -1)
  {
    swift_once();
  }

  v70 = __swift_project_value_buffer(v45, qword_27E1C2158);
  v71 = *v7;
  v72 = *v70;
  sub_23BC95320(v7, type metadata accessor for EquatableScrollBounceBehavior);
  if (v71 == v72)
  {
LABEL_18:
    sub_23BC955AC();
    sub_23BC9558C();
  }

  v53 = [v23 configuration];
  v54 = [v53 preferences];

  [v54 setTextInteractionEnabled_];
  v55 = [v23 configuration];

  v56 = [v55 preferences];
  sub_23BC8D380();
  LOBYTE(v85[0]) = 1;
  sub_23BC920AC();
  [v56 setElementFullscreenEnabled_];

  v57 = sub_23BC8D5D0();
  v58 = v77;
  (*((*MEMORY[0x277D85000] & *v77) + 0x110))(v57);
  v59 = v78;
  sub_23BC9595C();
  v60 = v85[0];
  swift_beginAccess();
  v61 = v76;
  v62 = v76[1];
  *(v60 + 16) = *v76;
  *(v60 + 32) = v62;
  *(v60 + 48) = *(v61 + 4);

  sub_23BC93980(v58);
  sub_23BC9400C(v58, v59);

  return (*(v74 + 8))(v14, v75);
}

uint64_t type metadata accessor for EquatableScrollBounceBehavior(uint64_t a1)
{
  result = qword_27E1C32C0;
  if (!qword_27E1C32C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_23BC933FC(uint64_t a1)
{
  v2 = swift_allocObject();
  result = *a1;
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(a1 + 32);
  return result;
}

uint64_t sub_23BC9343C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

uint64_t sub_23BC9344C()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_23BC93484()
{
  v5 = *(v0 + 24);
  v6 = *(v0 + 8);
  result = sub_23BC954CC();
  if (result)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for CocoaWebViewAdapter(0);
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v3 = sub_23BC954BC();
    v4 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v2) + 0x198))(v3);
    v7[1] = v5;
    v7[0] = v6;
    v8 = 0;
    (*((*v4 & *v2) + 0xA8))(v7);
    sub_23BC954DC();
    return v2;
  }

  return result;
}

uint64_t sub_23BC9359C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();

  sub_23BC954DC();
}

uint64_t sub_23BC935F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for WebViewCoordinator();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = *(v1 + 1);
  *(v4 + 40) = *(v1 + 3);
  *(v4 + 24) = v5;
  *a1 = v4;
}

uint64_t sub_23BC936A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BC95264();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23BC93704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BC95264();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23BC93768(uint64_t a1)
{
  sub_23BC95264();
  sub_23BC9592C();
  __break(1u);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23BC93828(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v5 = sub_23BC9594C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EquatableScrollBounceBehavior(0);
  __swift_allocate_value_buffer(v9, a2);
  v10 = __swift_project_value_buffer(v9, a2);
  a3();
  return (*(v6 + 32))(v10, v8, v5);
}

uint64_t sub_23BC93924(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_23BC9594C();
  v6 = *(v4 - 8);
  result = v4 - 8;
  if (*(v6 + 64) == 1)
  {
    return *a1 == *a2;
  }

  __break(1u);
  return result;
}

void *sub_23BC93980(void *a1)
{
  v2 = sub_23BC9569C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v53 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1F10, &qword_23BC960A0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v54 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v49 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v49 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - v14;
  v16 = sub_23BC9586C();
  v55 = *(v16 - 8);
  v56 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x190))(v17);
  if (result)
  {
    v22 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C20D8, &qword_23BC96F08);
    sub_23BC9596C();
    sub_23BC9583C();
    sub_23BC8C50C(v15, v13, &qword_27E1C1F10, &qword_23BC960A0);
    (*((*v20 & *a1) + 0xE0))(v13);
    v52 = v3;
    v23 = *(v3 + 48);
    v24 = [v22 setFindInteractionEnabled_];
    v25 = (*((*v20 & *a1) + 0xC0))(v24);
    if (!v25)
    {
      (*(v55 + 8))(v19, v56);

      v27 = v15;
      return sub_23BC8C708(v27, &qword_27E1C1F10, &qword_23BC960A0);
    }

    v50 = v25;
    v51 = v19;
    v49 = v22;
    v26 = (*((*v20 & *a1) + 0xB8))();
    sub_23BC8C50C(v15, v10, &qword_27E1C1F10, &qword_23BC960A0);
    v27 = v15;
    if (v23(v10, 1, v2) == 1)
    {
      sub_23BC8C708(v10, &qword_27E1C1F10, &qword_23BC960A0);
      v28 = v52;
    }

    else
    {
      v28 = v52;
      v29 = v53;
      (*(v52 + 32))(v53, v10, v2);
      v30 = sub_23BC9567C();
      if (v31)
      {
        v58 = v30;
        v59 = v31;
        v60 = v32 & 1;
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1F38, &qword_23BC970C0);
        MEMORY[0x23EEB9370](&v57, v33);
        v34 = v57;

        if (!(v26 & 1 | ((v34 & 1) == 0)))
        {
          v46 = swift_allocObject();
          v47 = v50;
          *(v46 + 16) = v50;
          v48 = v47;
          sub_23BC8DC24(sub_23BC95418, v46);

          (*(v28 + 8))(v29, v2);
LABEL_17:
          (*(v55 + 8))(v51, v56);
          return sub_23BC8C708(v27, &qword_27E1C1F10, &qword_23BC960A0);
        }
      }

      (*(v28 + 8))(v29, v2);
    }

    v35 = v54;
    sub_23BC8C50C(v15, v54, &qword_27E1C1F10, &qword_23BC960A0);
    if (v23(v35, 1, v2) == 1)
    {

      sub_23BC8C708(v35, &qword_27E1C1F10, &qword_23BC960A0);
    }

    else
    {
      v36 = sub_23BC9567C();
      v38 = v37;
      v40 = v39;
      (*(v28 + 8))(v35, v2);
      if (v38 && (v58 = v36, v59 = v38, v60 = v40 & 1, v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1F38, &qword_23BC970C0), MEMORY[0x23EEB9370](&v57, v41), v42 = v57, , , (v42 & 1) == 0) && (v26 & 1) != 0)
      {
        v43 = swift_allocObject();
        v44 = v50;
        *(v43 + 16) = v50;
        v45 = v44;
        sub_23BC8DC24(sub_23BC95410, v43);
      }

      else
      {
      }
    }

    goto LABEL_17;
  }

  return result;
}

void *sub_23BC9400C(void *a1, uint64_t a2)
{
  v109 = a2;
  v104 = sub_23BC957CC();
  v113 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v92 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C20F0, &unk_23BC970A0);
  MEMORY[0x28223BE20](v103);
  v110 = &v87 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1FA8, &qword_23BC96948);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v101 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v87 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1FB0, &unk_23BC969F0);
  v11 = *(v10 - 8);
  v111 = v10;
  v112 = v11;
  MEMORY[0x28223BE20](v10);
  v91 = (&v87 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C1F18, &qword_23BC960A8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v99 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v87 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C20F8, &unk_23BC970B0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v93 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v97 = &v87 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v96 = &v87 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v100 = &v87 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v102 = &v87 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v98 = &v87 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v87 - v32;
  MEMORY[0x28223BE20](v31);
  v108 = &v87 - v34;
  v35 = type metadata accessor for ScrollPositionContext(0);
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v87 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_23BC9586C();
  v105 = *(v39 - 8);
  v106 = v39;
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v87 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x190))(v40);
  if (result)
  {
    v94 = result;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C20D8, &qword_23BC96F08);
    sub_23BC9596C();
    v107 = v38;
    v95 = v42;
    v45 = sub_23BC8D6A8();
    (*((*v43 & *a1) + 0xF0))(v45);
    v46 = (*(v36 + 48))(v17, 1, v35);
    v47 = v112;
    v90 = v35;
    v89 = v36;
    if (v46 || (*(v112 + 48))(v17, 1, v111))
    {
      sub_23BC8C708(v17, &qword_27E1C1F18, &qword_23BC960A8);
      v48 = 1;
      v49 = v111;
      v50 = v108;
    }

    else
    {
      v80 = v91;
      sub_23BC8C50C(v17, v91, &qword_27E1C1FB0, &unk_23BC969F0);
      sub_23BC8C708(v17, &qword_27E1C1F18, &qword_23BC960A8);
      v50 = v108;
      v49 = v111;
      MEMORY[0x23EEB9370](v111);
      sub_23BC8C708(v80, &qword_27E1C1FB0, &unk_23BC969F0);
      v48 = 0;
    }

    v51 = *(v113 + 56);
    v52 = v104;
    v51(v50, v48, 1, v104);
    sub_23BC8C50C(v107, v9, &qword_27E1C1FA8, &qword_23BC96948);
    v88 = *(v47 + 48);
    v53 = v88(v9, 1, v49);
    v112 = v47 + 48;
    if (v53 == 1)
    {
      sub_23BC8C708(v9, &qword_27E1C1FA8, &qword_23BC96948);
      v54 = 1;
    }

    else
    {
      MEMORY[0x23EEB9370](v49);
      sub_23BC8C708(v9, &qword_27E1C1FB0, &unk_23BC969F0);
      v54 = 0;
    }

    v91 = v51;
    v51(v33, v54, 1, v52);
    v55 = *(v103 + 48);
    v56 = v110;
    sub_23BC8C50C(v50, v110, &qword_27E1C20F8, &unk_23BC970B0);
    sub_23BC8C50C(v33, v56 + v55, &qword_27E1C20F8, &unk_23BC970B0);
    v57 = v50;
    v58 = *(v113 + 48);
    if (v58(v56, 1, v52) == 1)
    {
      sub_23BC8C708(v33, &qword_27E1C20F8, &unk_23BC970B0);
      v59 = v110;
      sub_23BC8C708(v57, &qword_27E1C20F8, &unk_23BC970B0);
      if (v58(v59 + v55, 1, v52) == 1)
      {
        sub_23BC8C708(v59, &qword_27E1C20F8, &unk_23BC970B0);
        v60 = v107;
LABEL_23:

LABEL_38:
        v86 = v95;
        sub_23BC95320(v60, type metadata accessor for ScrollPositionContext);
        return (*(v105 + 8))(v86, v106);
      }
    }

    else
    {
      v61 = v98;
      sub_23BC8C50C(v56, v98, &qword_27E1C20F8, &unk_23BC970B0);
      if (v58(v56 + v55, 1, v52) != 1)
      {
        v72 = v113;
        v73 = v56 + v55;
        v74 = v92;
        (*(v113 + 32))(v92, v73, v52);
        sub_23BC95380();
        LODWORD(v103) = sub_23BC95A3C();
        v75 = *(v72 + 8);
        v75(v74, v52);
        sub_23BC8C708(v33, &qword_27E1C20F8, &unk_23BC970B0);
        sub_23BC8C708(v108, &qword_27E1C20F8, &unk_23BC970B0);
        v75(v61, v52);
        sub_23BC8C708(v110, &qword_27E1C20F8, &unk_23BC970B0);
        v60 = v107;
        if (v103)
        {
          goto LABEL_23;
        }

LABEL_14:
        v62 = v99;
        sub_23BC952B8(v60, v99, type metadata accessor for ScrollPositionContext);
        (*(v89 + 56))(v62, 0, 1, v90);
        (*((*MEMORY[0x277D85000] & *a1) + 0xF8))(v62);
        v63 = v101;
        sub_23BC8C50C(v60, v101, &qword_27E1C1FA8, &qword_23BC96948);
        v64 = v111;
        if (v88(v63, 1, v111) == 1)
        {
          sub_23BC8C708(v63, &qword_27E1C1FA8, &qword_23BC96948);
          v65 = 1;
          v66 = v102;
        }

        else
        {
          v66 = v102;
          MEMORY[0x23EEB9370](v64);
          sub_23BC8C708(v63, &qword_27E1C1FB0, &unk_23BC969F0);
          v65 = 0;
        }

        v67 = v100;
        v91(v66, v65, 1, v52);
        sub_23BC8C50C(v66, v67, &qword_27E1C20F8, &unk_23BC970B0);
        if (v58(v67, 1, v52) == 1)
        {
          sub_23BC8C708(v67, &qword_27E1C20F8, &unk_23BC970B0);
        }

        else
        {
          sub_23BC957BC();
          v69 = v68;
          (*(v113 + 8))(v67, v52);
          if ((v69 & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        v70 = v96;
        sub_23BC8C50C(v66, v96, &qword_27E1C20F8, &unk_23BC970B0);
        if (v58(v70, 1, v52) == 1)
        {
          sub_23BC8C708(v70, &qword_27E1C20F8, &unk_23BC970B0);
          v71 = v97;
        }

        else
        {
          v76 = sub_23BC957AC();
          (*(v113 + 8))(v70, v52);
          v71 = v97;
          if (v76 != 4)
          {
            sub_23BC8E088(v76);
            v83 = sub_23BC9597C();
            sub_23BC8E784(v83);

            v84 = v94;
            sub_23BC955EC();
LABEL_36:

            goto LABEL_37;
          }
        }

        sub_23BC8C50C(v66, v71, &qword_27E1C20F8, &unk_23BC970B0);
        if (v58(v71, 1, v52) == 1)
        {
          sub_23BC8C708(v71, &qword_27E1C20F8, &unk_23BC970B0);
LABEL_28:
          v79 = v93;
          sub_23BC8C50C(v66, v93, &qword_27E1C20F8, &unk_23BC970B0);
          if (v58(v79, 1, v52) == 1)
          {

            sub_23BC8C708(v79, &qword_27E1C20F8, &unk_23BC970B0);
LABEL_37:
            sub_23BC8C708(v66, &qword_27E1C20F8, &unk_23BC970B0);
            goto LABEL_38;
          }

          sub_23BC9579C();
          v82 = v81;
          (*(v113 + 8))(v79, v52);
          if (v82)
          {

            goto LABEL_37;
          }

          goto LABEL_35;
        }

        sub_23BC9578C();
        v78 = v77;
        (*(v113 + 8))(v71, v52);
        if (v78)
        {
          goto LABEL_28;
        }

LABEL_35:
        v85 = sub_23BC9597C();
        sub_23BC8E784(v85);

        v84 = v94;
        sub_23BC9555C();
        goto LABEL_36;
      }

      sub_23BC8C708(v33, &qword_27E1C20F8, &unk_23BC970B0);
      v59 = v110;
      sub_23BC8C708(v108, &qword_27E1C20F8, &unk_23BC970B0);
      (*(v113 + 8))(v61, v52);
    }

    sub_23BC8C708(v59, &qword_27E1C20F0, &unk_23BC970A0);
    v60 = v107;
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_23BC94EA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrollInputBehaviorContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

unint64_t sub_23BC94FE0()
{
  result = qword_27E1C20E0;
  if (!qword_27E1C20E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C20E0);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23BC95054(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23BC9509C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23BC95108(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BC9594C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23BC95188(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BC9594C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23BC951F8(uint64_t a1)
{
  result = sub_23BC9594C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23BC95264()
{
  result = qword_27E1C20E8;
  if (!qword_27E1C20E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C20E8);
  }

  return result;
}

uint64_t sub_23BC952B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23BC95320(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23BC95380()
{
  result = qword_27E1C2100;
  if (!qword_27E1C2100)
  {
    sub_23BC957CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1C2100);
  }

  return result;
}

uint64_t sub_23BC953D8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}