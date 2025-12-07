uint64_t sub_1004BC9F0()
{

  return _swift_deallocObject(v0, 104, 7);
}

id sub_1004BCA30()
{
  v1 = *(v0 + 96);
  if (*(v0 + 24))
  {
    v2 = (v0 + 32);
  }

  else
  {
    v2 = (v0 + 64);
  }

  v3 = *v2;
  if (*(v0 + 24))
  {
    v4 = (v0 + 40);
  }

  else
  {
    v4 = (v0 + 72);
  }

  v5 = *v4;
  if (*(v0 + 24))
  {
    v6 = (v0 + 48);
  }

  else
  {
    v6 = (v0 + 80);
  }

  v7 = *v6;
  if (*(v0 + 24))
  {
    v8 = (v0 + 56);
  }

  else
  {
    v8 = (v0 + 88);
  }

  if (*(v0 + 24))
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  [*(v0 + 16) setFrame:{v3, v5, v7, *v8}];

  return [v1 setAlpha:v9];
}

double sub_1004BCADC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1004BCAF4()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_1004BCB48()
{
  v0[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderAvoidsOverscroll] = 0;
  v0[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_isSupplementaryViewAnimationEnabled] = 1;
  v1 = &v0[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderFrame];
  *v2 = 0u;
  v2[1] = 0u;
  v3 = &v0[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_pendingPrepareObserver];
  v4 = type metadata accessor for CollectionViewTableFlowLayout();
  *v3 = 0;
  v3[1] = 0;
  v11.receiver = v0;
  v11.super_class = v4;
  v5 = objc_msgSendSuper2(&v11, "init");
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v9 = v5;
  [v9 setSectionInset:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v9 setMinimumInteritemSpacing:0.0];
  [v9 setMinimumLineSpacing:0.0];
  [v9 setScrollDirection:0];

  return v9;
}

double sub_1004BCD24()
{
  v1 = [v0 collectionView];
  v2 = 0.0;
  if (v1)
  {
    v3 = v1;
    v4 = [v1 delegate];

    if (v4)
    {
      v5 = swift_dynamicCastObjCProtocolConditional();
      if (v5 && (v6 = v5, (v7 = [v0 collectionView]) != 0))
      {
        v8 = v7;
        [v6 collectionView:v7 heightForGlobalHeaderViewInTableFlowLayout:v0];
        v2 = v9;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  return v2;
}

void sub_1004BCE1C()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  objc_msgSendSuper2(&v25, "prepareLayout");
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    Width = CGRectGetWidth(v26);
    v4 = sub_1004BCD24();

    v5 = &v0[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize];
    *v5 = Width;
    v5[1] = v4;
  }

  else
  {
    v6 = &v0[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize];
    *v6 = 0;
    *(v6 + 1) = 0;
  }

  v7 = 0.0;
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderAvoidsOverscroll] == 1)
  {
    v8 = [v0 collectionView];
    if (v8)
    {
      v9 = v8;
      [v8 contentInset];
      v7 = v10;
      v12 = v11;
      [v9 bounds];
      v27.origin.x = sub_10010FD98(v13, v14, v15, v16, v7, v12);
      MinY = CGRectGetMinY(v27);

      if (MinY < v7)
      {
        v7 = MinY;
      }
    }
  }

  v18 = &v0[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderFrame];
  v19 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize];
  *v18 = 0.0;
  v18[1] = v7;
  *(v18 + 1) = v19;
  v20 = &v0[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_pendingPrepareObserver];
  v21 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_pendingPrepareObserver];
  if (v21)
  {
    v22 = v20[1];

    v21(v0);
    sub_1000164A8(v21, v22);
    v23 = *v20;
  }

  else
  {
    v23 = 0;
  }

  v24 = v20[1];
  *v20 = 0;
  v20[1] = 0;
  sub_1000164A8(v23, v24);
}

id sub_1004BD094(uint64_t a1)
{
  v2 = v1;
  isa = sub_100741704().super.isa;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  v4 = objc_msgSendSuper2(&v8, "layoutAttributesForItemAtIndexPath:", isa);

  if (v4)
  {
    if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize] >= COERCE_DOUBLE(1) && *&v2[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize + 8] >= COERCE_DOUBLE(1))
    {
      sub_1000E5AA4();
      v6 = sub_100754244();
      [v6 frame];
      [v6 setFrame:?];

      return v6;
    }
  }

  return v4;
}

id sub_1004BD270(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1 == 0xD000000000000035 && 0x800000010077FF70 == a2 || (sub_100754754() & 1) != 0)
  {
    v4 = sub_100753064();
    isa = sub_100741704().super.isa;
    v6 = [objc_opt_self() layoutAttributesForSupplementaryViewOfKind:v4 withIndexPath:isa];

    [v6 setFrame:{*&v3[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderFrame], *&v3[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderFrame + 8], *&v3[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderFrame + 16], *&v3[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderFrame + 24]}];
  }

  else
  {
    v8 = sub_100753064();
    v9 = sub_100741704().super.isa;
    v12.receiver = v2;
    v12.super_class = type metadata accessor for CollectionViewTableFlowLayout();
    v6 = objc_msgSendSuper2(&v12, "layoutAttributesForSupplementaryViewOfKind:atIndexPath:", v8, v9);

    if (v6)
    {
      if (*&v3[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize] >= COERCE_DOUBLE(1) && *&v3[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize + 8] >= COERCE_DOUBLE(1))
      {
        sub_1000E5AA4();
        v11 = sub_100754244();
        [v11 frame];
        [v11 setFrame:?];

        return v11;
      }
    }
  }

  return v6;
}

id sub_1004BD430(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_100753064();
  isa = sub_100741704().super.isa;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  v6 = objc_msgSendSuper2(&v10, "layoutAttributesForDecorationViewOfKind:atIndexPath:", v4, isa);

  if (v6)
  {
    if (*&v3[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize] >= COERCE_DOUBLE(1) && *&v3[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize + 8] >= COERCE_DOUBLE(1))
    {
      sub_1000E5AA4();
      v8 = sub_100754244();
      [v8 frame];
      [v8 setFrame:?];

      return v8;
    }
  }

  return v6;
}

id sub_1004BD534(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, char *))
{
  v7 = sub_1007417F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100753094();
  v13 = v12;
  sub_100741744();
  v14 = a1;
  v15 = a5(v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v15;
}

unint64_t sub_1004BD668(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_1007417F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize];
  v14 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize + 8];
  v46.origin.x = a1;
  v46.origin.y = a2;
  v46.size.width = a3;
  v46.size.height = a4;
  v16 = CGRectGetMinY(v46) - v14;
  if (v16 < 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v16;
  }

  v18 = type metadata accessor for CollectionViewTableFlowLayout();
  v45.receiver = v4;
  v45.super_class = v18;
  v19 = objc_msgSendSuper2(&v45, "layoutAttributesForElementsInRect:", a1, v17, a3, a4);
  if (!v19)
  {
    return 0;
  }

  v20 = v19;
  sub_1000E5AA4();
  v21 = sub_1007532A4();

  if (v15 < COERCE_DOUBLE(1) || v14 < COERCE_DOUBLE(1))
  {
    return v21;
  }

  if (v21 >> 62)
  {
    v23 = sub_100754664();
    if (v23)
    {
      goto LABEL_11;
    }

LABEL_29:

    v21 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
    goto LABEL_29;
  }

LABEL_11:
  v40 = v13;
  v41 = v11;
  v42 = v10;
  v43 = v5;
  v44 = _swiftEmptyArrayStorage;

  sub_1007545C4();
  if ((v23 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v26 = sub_100754574();
      }

      else
      {
        v26 = *(v21 + 8 * v24 + 32);
      }

      v27 = v26;
      v28 = [v26 representedElementKind];
      if (v28)
      {
        v29 = v28;
        v30 = sub_100753094();
        v32 = v31;

        if (v30 == 0xD000000000000035 && 0x800000010077FF70 == v32)
        {

          goto LABEL_14;
        }

        v34 = sub_100754754();

        if (v34)
        {
          goto LABEL_14;
        }
      }

      v25 = sub_100754244();
      [v25 frame];
      [v25 setFrame:?];

LABEL_14:
      ++v24;
      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      if (v23 == v24)
      {
        swift_bridgeObjectRelease_n();
        v5 = v43;
        v21 = v44;
        v11 = v41;
        v10 = v42;
        v13 = v40;
LABEL_30:
        v44 = v21;
        v47.origin.x = a1;
        v47.origin.y = a2;
        v47.size.width = a3;
        v47.size.height = a4;
        if (CGRectIntersectsRect(v47, *&v5[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderFrame]))
        {
          v35 = sub_100753064();
          sub_1007417A4();
          isa = sub_100741704().super.isa;
          (*(v11 + 8))(v13, v10);
          v37 = [v5 layoutAttributesForSupplementaryViewOfKind:v35 atIndexPath:isa];

          if (v37)
          {
            v5 = v37;
            sub_100753284();
            if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_33;
            }

            goto LABEL_36;
          }
        }

        return v21;
      }
    }
  }

  __break(1u);
LABEL_36:
  sub_100753304();
LABEL_33:
  sub_100753344();

  return v44;
}

id sub_1004BDB68(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v8 = sub_1007417F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v12 = 0;
  if (*(a1 + OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_isSupplementaryViewAnimationEnabled) == 1)
  {
    v13 = a3;
    v14 = a1;
    isa = sub_100741704().super.isa;
    v16 = type metadata accessor for CollectionViewTableFlowLayout();
    v18.receiver = v14;
    v18.super_class = v16;
    v12 = objc_msgSendSuper2(&v18, *a5, v13, isa);
  }

  (*(v9 + 8))(v11, v8);

  return v12;
}

uint64_t sub_1004BDCC8(id a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize] < COERCE_DOUBLE(1) || *&v6[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize + 8] < COERCE_DOUBLE(1);
  if (!v11 && v6[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderAvoidsOverscroll] == 1)
  {
    if (CGRectGetMinY(*&a3) <= 0.0)
    {
      return 1;
    }

    MinY = CGRectGetMinY(*&v6[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderFrame]);
    v13 = [v6 collectionView];
    if (v13)
    {
      v14 = v13;
      [v13 contentInset];
      v16 = v15;

      if (MinY < v16)
      {
        return 1;
      }
    }

    else if (MinY < 0.0)
    {
      return 1;
    }
  }

  v18.receiver = v6;
  v18.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  return objc_msgSendSuper2(&v18, "shouldInvalidateLayoutForBoundsChange:", a3, a4, a5, a6);
}

void *sub_1004BDE60(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v23.receiver = v6;
  v23.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  v11 = objc_msgSendSuper2(&v23, "invalidationContextForBoundsChange:", a3, a4, a5, a6);
  objc_opt_self();
  v12 = swift_dynamicCastObjCClassUnconditional();
  v13 = [v6 collectionView];
  if (v13)
  {
    v14 = v13;
    [v13 bounds];
    v16 = v15;
    v18 = v17;

    if (v16 != a5)
    {
      return v12;
    }
  }

  else
  {
    v18 = 0.0;
    if (a5 != 0.0)
    {
      return v12;
    }
  }

  if (v18 == a6 && *&v6[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize] >= COERCE_DOUBLE(1) && *&v6[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize + 8] >= COERCE_DOUBLE(1))
  {
    v20 = sub_100753064();
    sub_10000C518(&unk_1009405F0, &qword_1007A6410);
    sub_1007417F4();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007417A4();
    isa = sub_100753294().super.isa;

    [v12 invalidateSupplementaryElementsOfKind:v20 atIndexPaths:isa];
  }

  return v12;
}

void sub_1004BE104(void *a1, uint64_t a2)
{
  v3 = v2;
  v23.receiver = v3;
  v23.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  objc_msgSendSuper2(&v23, "invalidateLayoutWithContext:", a1);
  v5 = [a1 invalidatedSupplementaryIndexPaths];
  if (v5)
  {
    v6 = v5;
    sub_10000C518(&qword_10093A4D0, &qword_1007C5580);
    v7 = sub_100752F44();

    if (*(v7 + 16))
    {
      sub_1003861D0(0xD000000000000035, 0x800000010077FF70);
      v9 = v8;

      if (v9)
      {
        v10 = 0.0;
        if (v3[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderAvoidsOverscroll] == 1)
        {
          v11 = [v3 collectionView];
          if (v11)
          {
            v12 = v11;
            [v11 contentInset];
            v10 = v13;
            v15 = v14;
            [v12 bounds];
            v24.origin.x = sub_10010FD98(v16, v17, v18, v19, v10, v15);
            MinY = CGRectGetMinY(v24);

            if (MinY < v10)
            {
              v10 = MinY;
            }
          }
        }

        v21 = &v3[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderFrame];
        v22 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize];
        *v21 = 0.0;
        v21[1] = v10;
        *(v21 + 1) = v22;
      }
    }

    else
    {
    }
  }
}

id sub_1004BE32C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_1004BE398()
{
  sub_10000C518(&unk_1009259C0, &unk_1007A9270);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007A5A00;
  sub_100754534(55);
  v8._object = 0x800000010077FFF0;
  v8._countAndFlagsBits = 0xD000000000000035;
  sub_1007531B4(v8);
  v2 = [v0 description];
  v3 = sub_100753094();
  v5 = v4;

  v9._countAndFlagsBits = v3;
  v9._object = v5;
  sub_1007531B4(v9);

  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_100754494();

  return result;
}

double sub_1004BE4B8()
{
  sub_10000C518(&unk_1009259C0, &unk_1007A9270);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007A5A00;
  sub_100754534(55);
  v8._object = 0x800000010077FFB0;
  v8._countAndFlagsBits = 0xD000000000000035;
  sub_1007531B4(v8);
  v2 = [v0 description];
  v3 = sub_100753094();
  v5 = v4;

  v9._countAndFlagsBits = v3;
  v9._object = v5;
  sub_1007531B4(v9);

  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_100754494();

  return result;
}

void sub_1004BE5D8(void *a1, unint64_t a2)
{
  v285 = a2;
  v246 = sub_100752AC4();
  v245 = *(v246 - 8);
  __chkstk_darwin(v246);
  v242 = &v232 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v243 = &v232 - v6;
  __chkstk_darwin(v7);
  v244 = &v232 - v8;
  v265 = sub_10074BD24();
  v264 = *(v265 - 8);
  __chkstk_darwin(v265);
  v266 = &v232 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074BD44();
  v270 = *(v10 - 8);
  __chkstk_darwin(v10);
  v269 = &v232 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = sub_10074AB44();
  v260 = *(v261 - 8);
  __chkstk_darwin(v261);
  v262 = &v232 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v13 - 8);
  v259 = &v232 - v14;
  v268 = sub_100746584();
  v267 = *(v268 - 8);
  __chkstk_darwin(v268);
  v258 = &v232 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v263 = &v232 - v17;
  __chkstk_darwin(v18);
  v257 = &v232 - v19;
  v256 = sub_100754724();
  v255 = *(v256 - 8);
  __chkstk_darwin(v256);
  v254 = &v232 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_10074F704();
  v252 = *(v253 - 8);
  __chkstk_darwin(v253);
  v251 = &v232 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = sub_100743F54();
  v249 = *(v250 - 8);
  __chkstk_darwin(v250);
  v248 = &v232 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = sub_10074E984();
  v274 = *(v280 - 8);
  __chkstk_darwin(v280);
  v234 = &v232 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = sub_10000C518(&qword_10092C380, &unk_1007B0E90);
  __chkstk_darwin(v273);
  v275 = &v232 - v24;
  v25 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v271 = *(v25 - 8);
  __chkstk_darwin(v25);
  v272 = &v232 - v26;
  v27 = sub_10000C518(&qword_100923228, &unk_1007AB120);
  __chkstk_darwin(v27);
  v29 = &v232 - v28;
  v30 = sub_10000C518(&unk_10093D6E0, &unk_1007A6080);
  __chkstk_darwin(v30 - 8);
  v32 = &v232 - v31;
  v33 = sub_10000C518(&unk_100933370, &unk_1007A8CE0);
  __chkstk_darwin(v33 - 8);
  v241 = (&v232 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v35);
  v37 = &v232 - v36;
  __chkstk_darwin(v38);
  v281 = &v232 - v39;
  sub_100743FA4();
  sub_1004C1794(&qword_10092C388, &type metadata accessor for ProductMedia, &protocol conformance descriptor for ProductMedia);
  v40 = a1;
  sub_1007468B4();
  v41 = v289;
  if (!v289)
  {
    return;
  }

  v239 = v37;
  v237 = v10;
  v42 = sub_10007DC04();
  v43 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_objectGraph);
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_objectGraph) = v285;

  sub_100111078(v43);

  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_pageTraits) = v42;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v44 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_flowLayout);
  ObjectType = swift_getObjectType();
  v284 = v42;
  [v42 pageMarginInsets];
  [v44 setSectionInset:?];

  v283 = v2;
  sub_100110F6C(v45, v46);
  v47 = sub_100743F94();
  v48 = sub_100743F34();
  v240 = sub_100743F44();
  v276 = v49;
  v277 = v41;
  v247 = sub_100743F74();
  v279 = v50;
  v233 = sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v51 = swift_allocObject();
  v232 = xmmword_1007A5CF0;
  *(v51 + 16) = xmmword_1007A5CF0;
  *(v51 + 32) = v47;
  v282 = v47;

  v285 = v48;
  v235 = sub_10011D2E4(v48, v51);

  swift_getKeyPath();
  sub_100746914();

  sub_100028CD0(&v29[*(v27 + 48)], v32);
  v52 = v271;
  v53 = (v271[6])(v32, 1, v25);
  v278 = v40;
  if (v53 == 1)
  {
    sub_10000C8CC(v29, &unk_10093D6E0, &unk_1007A6080);
    sub_10000C8CC(v32, &unk_10093D6E0, &unk_1007A6080);
    v54 = v25;
    v55 = v274;
    v56 = v281;
    v57 = v280;
    v238 = *(v274 + 7);
    v238(v281, 1, 1, v280);
  }

  else
  {
    swift_getKeyPath();
    v56 = v281;
    sub_1007525B4();

    v52[1](v32, v25);
    v54 = v25;
    v55 = v274;
    v57 = v280;
    v238 = *(v274 + 7);
    v238(v56, 0, 1, v280);
    sub_10000C8CC(v29, &unk_10093D6E0, &unk_1007A6080);
  }

  swift_getKeyPath();
  v58 = v272;
  sub_100746914();

  swift_getKeyPath();
  v59 = v239;
  sub_1007525B4();

  v52[1](v58, v54);
  v60 = v59;
  v238(v59, 0, 1, v57);
  v61 = v273[12];
  v62 = v275;
  sub_100016B4C(v56, v275, &unk_100933370, &unk_1007A8CE0);
  sub_100016B4C(v59, v62 + v61, &unk_100933370, &unk_1007A8CE0);
  v63 = v56;
  v64 = *(v55 + 6);
  v65 = v64(v62, 1, v57);
  v280 = v285 >> 62;
  if (v65 == 1)
  {
    sub_10000C8CC(v60, &unk_100933370, &unk_1007A8CE0);
    sub_10000C8CC(v56, &unk_100933370, &unk_1007A8CE0);
    v66 = v64(v62 + v61, 1, v57);
    v67 = v283;
    if (v66 == 1)
    {
      sub_10000C8CC(v62, &unk_100933370, &unk_1007A8CE0);
LABEL_21:
      LODWORD(v281) = 0;
      v79 = 1;
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  v63 = v241;
  sub_100016B4C(v62, v241, &unk_100933370, &unk_1007A8CE0);
  v68 = v64(v62 + v61, 1, v57);
  v67 = v283;
  if (v68 == 1)
  {
    sub_10000C8CC(v60, &unk_100933370, &unk_1007A8CE0);
    sub_10000C8CC(v281, &unk_100933370, &unk_1007A8CE0);
    v69 = *(v55 + 1);
    v55 = (v55 + 8);
    v69(v63, v57);
LABEL_10:
    sub_10000C8CC(v62, &qword_10092C380, &unk_1007B0E90);
    v70 = v282;
    goto LABEL_11;
  }

  v76 = v234;
  (*(v55 + 4))(v234, v62 + v61, v57);
  sub_1004C1794(&qword_1009350D0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  v77 = sub_100753014();
  v78 = *(v55 + 1);
  v55 = (v55 + 8);
  v78(v76, v57);
  sub_10000C8CC(v60, &unk_100933370, &unk_1007A8CE0);
  sub_10000C8CC(v281, &unk_100933370, &unk_1007A8CE0);
  v78(v63, v57);
  sub_10000C8CC(v62, &unk_100933370, &unk_1007A8CE0);
  v70 = v282;
  if (v77)
  {
    goto LABEL_21;
  }

LABEL_11:
  if (!v280)
  {
    v71 = v285;
    v72 = *((v285 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v72)
    {
      goto LABEL_13;
    }

LABEL_23:

    *&v289 = v70;
    goto LABEL_24;
  }

  v71 = v285;
  v72 = sub_100754664();
  if (!v72)
  {
    goto LABEL_23;
  }

LABEL_13:
  v73 = v72 - 1;
  if (__OFSUB__(v72, 1))
  {
    __break(1u);
  }

  else if ((v71 & 0xC000000000000001) == 0)
  {
    if ((v73 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v73 < *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v74 = *(v71 + 8 * v73 + 32);

      *&v289 = v70;
      if (v74)
      {
        goto LABEL_18;
      }

LABEL_24:

      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_89;
  }

  v74 = sub_100754574();
  *&v289 = v70;
  if (!v74)
  {
    goto LABEL_24;
  }

LABEL_18:
  *&v286 = v74;
  sub_100744514();
  sub_1004C1794(&qword_100929290, &type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);
  v75 = sub_100753014();

  if (v75)
  {
    goto LABEL_21;
  }

LABEL_25:
  v79 = 0;
  LODWORD(v281) = v235 ^ 1;
LABEL_26:
  v80 = v248;
  sub_100743F64();
  v81 = (*(v249 + 88))(v80, v250);
  LODWORD(v275) = v79;
  if (v81 != enum case for ProductMedia.DescriptionPlacement.top(_:))
  {
    v85 = v265;
    if (v81 != enum case for ProductMedia.DescriptionPlacement.bottom(_:))
    {
      sub_100754744();
      __break(1u);
      return;
    }

    v86 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView;
    v87 = *(v67 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView);
    if (v87)
    {
      [v87 removeFromSuperview];
      v88 = *(v67 + v86);
    }

    else
    {
      v88 = 0;
    }

    *(v67 + v86) = 0;

    [v67 setNeedsLayout];
    v274 = type metadata accessor for PlatformSelectorView();
    swift_getKeyPath();
    v128 = v251;
    sub_100746914();

    sub_10074F674();
    (*(v252 + 8))(v128, v253);
    if (v281)
    {
      if (qword_100920BA8 != -1)
      {
        swift_once();
      }

      [qword_100936900 size];
    }

    else
    {
      if (v280)
      {
        v129 = sub_100754664();
      }

      else
      {
        v129 = *((v285 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v129 > 1)
      {
        sub_100744514();
        v130 = swift_allocObject();
        *(v130 + 16) = v232;
        *(v130 + 32) = v282;

        v131 = sub_1007444D4();

        goto LABEL_63;
      }
    }

    sub_100744514();
    v131 = sub_1007444D4();
LABEL_63:

    if (qword_100920BB0 != -1)
    {
      swift_once();
    }

    v132 = sub_10000D0FC(v85, qword_100936908);
    sub_10074BD14();
    v133 = *(&v290 + 1);
    sub_10000C888(&v289, *(&v290 + 1));
    v134 = v254;
    sub_100536120(v133);
    sub_100750564();
    v136 = v135;
    (*(v255 + 8))(v134, v256);
    sub_1003FD42C(v131, v136);
    sub_10000C620(&v289);
    if (v131 >> 62)
    {
      sub_100754664();
    }

    v137 = v261;

    v138 = v284;
    sub_100746574();
    v139 = sub_1003FD11C(v131, v138);

    v273 = v139;
    v140 = sub_10074BCD4();
    if (qword_100921018 != -1)
    {
      swift_once();
    }

    v141 = sub_100750534();
    v142 = sub_10000D0FC(v141, qword_100980D80);
    v143 = *(v141 - 8);
    v144 = v259;
    (*(v143 + 16))(v259, v142, v141);
    (*(v143 + 56))(v144, 0, 1, v141);
    (*(v260 + 104))(v262, enum case for DirectionalTextAlignment.none(_:), v137);
    v145 = sub_100745C84();
    v146 = objc_allocWithZone(v145);
    v147 = sub_100745C74();
    [v147 setAttributedText:v140];
    v272 = v140;
    if (qword_100920BA8 != -1)
    {
      swift_once();
    }

    v278 = qword_100936900;
    [qword_100936900 size];
    v148 = sub_100750F34();
    swift_allocObject();
    v149 = sub_100750F14();
    (*(v264 + 16))(v266, v132, v85);
    v150 = v267;
    v151 = v258;
    v152 = v268;
    (*(v267 + 16))(v263, v258, v268);
    *(&v290 + 1) = v145;
    v291 = &protocol witness table for UILabel;
    *&v289 = v147;
    *(&v287 + 1) = v148;
    v288 = &protocol witness table for LayoutViewPlaceholder;
    *&v286 = v149;
    v153 = v147;

    v154 = v269;
    sub_10074BD34();
    [v284 pageMarginInsets];
    sub_100753BA4();
    sub_1004C1794(&qword_10092E630, &type metadata accessor for PlatformSelectorViewLayout, &protocol conformance descriptor for PlatformSelectorViewLayout);
    v116 = v237;
    sub_100750404();
    sub_100753BC4();
    v156 = v155;
    v158 = v157;

    (v270[1])(v154, v116);
    (*(v150 + 8))(v151, v152);
    v122 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryView;
    v123 = v283;
    v159 = *(v283 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryView);
    if (v159)
    {
      [v159 setFrame:{0.0, 0.0, v156, v158}];
      v125 = v282;
      v121 = &OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView;
      goto LABEL_78;
    }

    v126 = [objc_allocWithZone(v274) initWithFrame:{0.0, 0.0, v156, v158}];
    v127 = *(v123 + v122);
    v121 = &OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView;
    if (!v127)
    {
      v116 = 0;
      goto LABEL_77;
    }

    goto LABEL_74;
  }

  v82 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryView;
  v83 = *(v67 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryView);
  v55 = v265;
  if (v83)
  {
    [v83 removeFromSuperview];
    v84 = *(v67 + v82);
  }

  else
  {
    v84 = 0;
  }

  *(v67 + v82) = 0;

  [v67 setNeedsLayout];
  v63 = type metadata accessor for PlatformSelectorView();
  swift_getKeyPath();
  v89 = v251;
  sub_100746914();

  sub_10074F674();
  (*(v252 + 8))(v89, v253);
  if (v281)
  {
    if (qword_100920BA8 == -1)
    {
LABEL_35:
      [qword_100936900 size];
      goto LABEL_40;
    }

LABEL_89:
    swift_once();
    goto LABEL_35;
  }

  if (v280)
  {
    v90 = sub_100754664();
  }

  else
  {
    v90 = *((v285 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v90 > 1)
  {
    sub_100744514();
    v91 = swift_allocObject();
    *(v91 + 16) = v232;
    *(v91 + 32) = v282;

    v92 = sub_1007444D4();

    goto LABEL_41;
  }

LABEL_40:
  sub_100744514();
  v92 = sub_1007444D4();
LABEL_41:

  if (qword_100920BB0 != -1)
  {
    swift_once();
  }

  v93 = sub_10000D0FC(v55, qword_100936908);
  sub_10074BD14();
  v94 = *(&v290 + 1);
  sub_10000C888(&v289, *(&v290 + 1));
  v95 = v254;
  sub_100536120(v94);
  sub_100750564();
  v97 = v96;
  (*(v255 + 8))(v95, v256);
  sub_1003FD42C(v92, v97);
  sub_10000C620(&v289);
  if (v92 >> 62)
  {
    sub_100754664();
  }

  v98 = v261;

  v99 = v284;
  sub_100746574();
  v100 = sub_1003FD11C(v92, v99);

  v274 = v100;
  v101 = sub_10074BCD4();
  if (qword_100921018 != -1)
  {
    swift_once();
  }

  v272 = v63;
  v102 = sub_100750534();
  v103 = sub_10000D0FC(v102, qword_100980D80);
  v104 = *(v102 - 8);
  v105 = v259;
  (*(v104 + 16))(v259, v103, v102);
  (*(v104 + 56))(v105, 0, 1, v102);
  (*(v260 + 104))(v262, enum case for DirectionalTextAlignment.none(_:), v98);
  v106 = sub_100745C84();
  v107 = objc_allocWithZone(v106);
  v108 = sub_100745C74();
  [v108 setAttributedText:v101];
  v273 = v101;
  if (qword_100920BA8 != -1)
  {
    swift_once();
  }

  v278 = qword_100936900;
  [qword_100936900 size];
  v109 = sub_100750F34();
  swift_allocObject();
  v110 = sub_100750F14();
  (*(v264 + 16))(v266, v93, v55);
  v111 = v267;
  v112 = v257;
  v113 = v268;
  (*(v267 + 16))(v263, v257, v268);
  *(&v290 + 1) = v106;
  v291 = &protocol witness table for UILabel;
  *&v289 = v108;
  *(&v287 + 1) = v109;
  v288 = &protocol witness table for LayoutViewPlaceholder;
  *&v286 = v110;
  v114 = v108;

  v115 = v269;
  sub_10074BD34();
  [v284 pageMarginInsets];
  sub_100753BA4();
  sub_1004C1794(&qword_10092E630, &type metadata accessor for PlatformSelectorViewLayout, &protocol conformance descriptor for PlatformSelectorViewLayout);
  v116 = v237;
  sub_100750404();
  sub_100753BC4();
  v118 = v117;
  v120 = v119;

  (v270[1])(v115, v116);
  (*(v111 + 8))(v112, v113);
  v121 = &OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView;
  v122 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView;
  v123 = v283;
  v124 = *(v283 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView);
  if (!v124)
  {
    v126 = [objc_allocWithZone(v272) initWithFrame:{0.0, 0.0, v118, v120}];
    v127 = *(v123 + v122);
    if (!v127)
    {
      v116 = 0;
      goto LABEL_77;
    }

LABEL_74:
    [v127 removeFromSuperview];
    v116 = *(v123 + v122);
LABEL_77:
    v125 = v282;
    *(v123 + v122) = v126;
    v160 = v126;

    v161 = [v123 contentView];
    [v161 addSubview:v160];

    [v123 setNeedsLayout];
    goto LABEL_78;
  }

  [v124 setFrame:{0.0, 0.0, v118, v120}];
  v125 = v282;
LABEL_78:
  v274 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView;
  v162 = *(v123 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView);
  v163 = v285;
  if (!v162)
  {
    goto LABEL_123;
  }

  type metadata accessor for PlatformSelectorView();
  v164 = swift_dynamicCastClass();
  if (!v164)
  {
    goto LABEL_123;
  }

  v165 = v164;
  if (v281)
  {
    goto LABEL_93;
  }

  if (v280)
  {
    if (sub_100754664() > 1)
    {
      goto LABEL_83;
    }

LABEL_93:

    v166 = 0;
    goto LABEL_94;
  }

  if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1)
  {
    goto LABEL_93;
  }

LABEL_83:
  v163 = swift_allocObject();
  *(v163 + 16) = v232;
  *(v163 + 32) = v125;

  v166 = 1;
LABEL_94:
  v272 = v162;
  v168 = sub_1003FD52C(v163, v167);

  if (v166)
  {
    v169 = v240;
  }

  else
  {
    v169 = v247;
  }

  v171 = &v165[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_text];
  *v171 = v169;
  v171[1] = v170;

  v172 = _swiftEmptyArrayStorage;
  *&v289 = _swiftEmptyArrayStorage;
  v173 = *(v168 + 2);
  v273 = v165;
  if (v173)
  {
    v174 = 0;
    v175 = v168 + 56;
    v269 = v173 - 1;
    v172 = _swiftEmptyArrayStorage;
    v270 = (v168 + 56);
    do
    {
      v271 = v172;
      v176 = &v175[32 * v174];
      v165 = v174;
      while (1)
      {
        if (v165 >= *(v168 + 2))
        {
          __break(1u);
          goto LABEL_131;
        }

        v177 = sub_100753064();
        v178 = [objc_opt_self() _systemImageNamed:v177];

        if (v178)
        {
          break;
        }

LABEL_101:
        ++v165;
        v176 += 32;
        if (v173 == v165)
        {
          v165 = v273;
          v172 = v271;
          goto LABEL_113;
        }
      }

      if (qword_100920BA0 != -1)
      {
        swift_once();
      }

      v179 = [v178 imageWithTintColor:qword_100980200];

      if (!v179)
      {
        goto LABEL_101;
      }

      sub_100753284();
      if (*((v289 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v289 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      v174 = v165 + 1;
      sub_100753344();
      v172 = v289;
      v180 = v269 == v165;
      v165 = v273;
      v175 = v270;
    }

    while (!v180);
  }

LABEL_113:
  v181 = OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_images;
  *&v165[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_images] = v172;

  v182 = *&v165[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_accessoryImageView];
  if (v281)
  {
    if (qword_100920BA8 != -1)
    {
      swift_once();
    }

    v183 = v278;
  }

  else
  {
    v183 = 0;
  }

  [v182 setImage:v183];

  v184 = *&v165[v181];
  if (v184)
  {
    if (v184 >> 62)
    {
LABEL_131:
      v185 = sub_100754664();
    }

    else
    {
      v185 = *((v184 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v185 = 0;
  }

  *&v165[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_numberOfBadges] = v185;
  v186 = v284;
  *&v165[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_pageTraits] = v284;
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  sub_1003FC0B4();
  [v186 pageMarginInsets];
  [v165 setLayoutMargins:?];
  [v165 setNeedsLayout];
  v289 = 0u;
  v290 = 0u;
  v286 = 0u;
  v287 = 0u;
  v187 = v242;
  sub_100752A34();
  sub_10000C8CC(&v286, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v289, &unk_100923520, &qword_1007A5A70);
  *&v289 = v168;
  *(&v289 + 1) = sub_1003FCE0C;
  *&v290 = 0;

  sub_10000C518(&qword_100939308, &qword_1007C2BA8);
  sub_10048176C();
  v188 = sub_100752FF4();
  v190 = v189;

  *(&v290 + 1) = &type metadata for String;
  *&v289 = v188;
  *(&v289 + 1) = v190;
  v191 = v243;
  sub_100752AA4();
  LOBYTE(v116) = v245 + 8;
  v121 = *(v245 + 8);
  v192 = v246;
  (v121)(v187, v246);
  sub_10000C8CC(&v289, &unk_100923520, &qword_1007A5A70);
  *&v289 = v168;
  *(&v289 + 1) = sub_1003FCE18;
  *&v290 = 0;
  v193 = sub_100752FF4();
  v195 = v194;

  *(&v290 + 1) = &type metadata for String;
  *&v289 = v193;
  *(&v289 + 1) = v195;
  v196 = v244;
  sub_100752AA4();
  (v121)(v191, v192);
  sub_10000C8CC(&v289, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  (v121)(v196, v192);
  v125 = v282;
  v123 = v283;
  v163 = v285;
LABEL_123:
  v197 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryView;
  v198 = *(v123 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryView);
  if (!v198 || (type metadata accessor for PlatformSelectorView(), (v199 = swift_dynamicCastClass()) == 0))
  {

    goto LABEL_166;
  }

  v121 = v199;
  v272 = v197;
  if (v281)
  {
    goto LABEL_133;
  }

  if (v280)
  {
    if (sub_100754664() > 1)
    {
      goto LABEL_128;
    }

LABEL_133:

    v200 = 0;
    goto LABEL_134;
  }

  if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1)
  {
    goto LABEL_133;
  }

LABEL_128:
  v163 = swift_allocObject();
  *(v163 + 16) = v232;
  *(v163 + 32) = v125;

  v200 = 1;
LABEL_134:
  v271 = v198;
  v197 = sub_1003FD52C(v163, v201);

  if (v200)
  {
    v202 = v240;
  }

  else
  {
    v202 = v247;
  }

  if (v200)
  {
    v163 = v276;
  }

  else
  {
    v163 = v279;
  }

  v203 = (v121 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_text);
  *v203 = v202;
  v203[1] = v163;

  v204 = _swiftEmptyArrayStorage;
  *&v289 = _swiftEmptyArrayStorage;
  v205 = *(v197 + 2);
  v273 = v121;
  if (v205)
  {
    v206 = 0;
    v207 = v197 + 56;
    v270 = (v205 - 1);
    v204 = _swiftEmptyArrayStorage;
    v116 = &_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOMQ_ptr;
    v123 = &selRef_initWithAdamID_cppIDs_serverCppID_adData_instanceID_;
    v276 = v197 + 56;
    do
    {
      v279 = v204;
      v125 = &v207[32 * v206];
      v121 = v206;
      while (1)
      {
        if (v121 >= *(v197 + 2))
        {
          __break(1u);
          goto LABEL_176;
        }

        v163 = *(v125 - 2);

        v208 = sub_100753064();
        v209 = [objc_opt_self() _systemImageNamed:v208];

        if (v209)
        {
          break;
        }

LABEL_144:
        v121 = (v121 + 1);
        v125 += 32;
        if (v205 == v121)
        {
          v121 = v273;
          v204 = v279;
          goto LABEL_156;
        }
      }

      if (qword_100920BA0 != -1)
      {
        swift_once();
      }

      v210 = [v209 imageWithTintColor:qword_100980200];

      if (!v210)
      {
        goto LABEL_144;
      }

      v163 = &v289;
      sub_100753284();
      if (*((v289 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v289 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      v206 = (v121 + 1);
      sub_100753344();
      v204 = v289;
      v180 = v270 == v121;
      v121 = v273;
      v207 = v276;
    }

    while (!v180);
  }

LABEL_156:
  v211 = OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_images;
  *(v121 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_images) = v204;

  v212 = *(v121 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_accessoryImageView);
  if (v281)
  {
    v123 = v283;
    if (qword_100920BA8 != -1)
    {
      swift_once();
    }

    v213 = v278;
  }

  else
  {
    v213 = 0;
    v123 = v283;
  }

  [v212 setImage:v213];

  v214 = *(v121 + v211);
  if (v214)
  {
    if (v214 >> 62)
    {
      goto LABEL_208;
    }

    v215 = *((v214 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  else
  {
    v215 = 0;
  }

  while (1)
  {
    *(v121 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_numberOfBadges) = v215;
    v216 = v284;
    *(v121 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_pageTraits) = v284;
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    sub_1003FC0B4();
    [v216 pageMarginInsets];
    [v121 setLayoutMargins:?];
    [v121 setNeedsLayout];
    v289 = 0u;
    v290 = 0u;
    v286 = 0u;
    v287 = 0u;
    v217 = v242;
    sub_100752A34();
    sub_10000C8CC(&v286, &unk_100923520, &qword_1007A5A70);
    sub_10000C8CC(&v289, &unk_100923520, &qword_1007A5A70);
    *&v289 = v197;
    *(&v289 + 1) = sub_1003FCE0C;
    *&v290 = 0;

    sub_10000C518(&qword_100939308, &qword_1007C2BA8);
    sub_10048176C();
    v218 = sub_100752FF4();
    v220 = v219;

    *(&v290 + 1) = &type metadata for String;
    *&v289 = v218;
    *(&v289 + 1) = v220;
    v116 = v243;
    sub_100752AA4();
    v121 = *(v245 + 8);
    v221 = v246;
    (v121)(v217, v246);
    sub_10000C8CC(&v289, &unk_100923520, &qword_1007A5A70);
    *&v289 = v197;
    *(&v289 + 1) = sub_1003FCE18;
    *&v290 = 0;
    v222 = sub_100752FF4();
    v224 = v223;

    *(&v290 + 1) = &type metadata for String;
    *&v289 = v222;
    *(&v289 + 1) = v224;
    v225 = v244;
    sub_100752AA4();
    (v121)(v116, v221);
    sub_10000C8CC(&v289, &unk_100923520, &qword_1007A5A70);
    sub_100753C74();

    (v121)(v225, v221);
    v125 = v282;
    v163 = v285;
    v197 = v272;
LABEL_166:
    if (v280)
    {
LABEL_176:
      v226 = sub_100754664();
      if (!v226)
      {
LABEL_177:

        goto LABEL_178;
      }
    }

    else
    {
      v226 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v226)
      {
        goto LABEL_177;
      }
    }

    if ((v163 & 0xC000000000000001) != 0)
    {

      v121 = sub_100754574();
      *&v289 = v125;
      if (!v121)
      {
        goto LABEL_178;
      }

LABEL_171:
      *&v286 = v121;
      sub_100744514();
      sub_1004C1794(&qword_100929290, &type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);

      LOBYTE(v116) = sub_100753014();

      if (v275)
      {
        v163 = v285;
        goto LABEL_181;
      }

      if (v116)
      {
        v227 = 1;
        goto LABEL_193;
      }

LABEL_190:
      *(v123 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = 0;
      sub_1001121E4();
LABEL_195:
      v231 = *&v197[v123] != 0;
      goto LABEL_199;
    }

    if (!*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      v229 = sub_100754574();
LABEL_186:

      *&v289 = v125;
      if (v229)
      {
        *&v286 = v229;
        sub_100744514();
        sub_1004C1794(&qword_100929290, &type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);
        v227 = sub_100753014();

        if ((v116 & 1) == 0)
        {
          v230 = 0;
          goto LABEL_194;
        }
      }

      else
      {

        if ((v116 & 1) == 0)
        {
          goto LABEL_197;
        }

        v227 = 0;
      }

LABEL_193:
      v230 = *(v274 + v123) != 0;
LABEL_194:
      *(v123 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = v230;
      sub_1001121E4();
      if ((v227 & 1) == 0)
      {
        goto LABEL_198;
      }

      goto LABEL_195;
    }

    v121 = *(v163 + 32);

    *&v289 = v125;
    if (v121)
    {
      goto LABEL_171;
    }

LABEL_178:
    if (!v275)
    {

      goto LABEL_190;
    }

    if (!v226)
    {
      break;
    }

    LOBYTE(v116) = 0;
LABEL_181:
    v228 = v226 - 1;
    if (__OFSUB__(v226, 1))
    {
      goto LABEL_204;
    }

    if ((v163 & 0xC000000000000001) != 0)
    {
      goto LABEL_205;
    }

    if ((v228 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v228 < *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v229 = *(v163 + 8 * v228 + 32);

      goto LABEL_186;
    }

    __break(1u);
LABEL_208:
    v215 = sub_100754664();
  }

LABEL_197:
  *(v123 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = 0;
  sub_1001121E4();
LABEL_198:
  v231 = 0;
LABEL_199:
  *(v123 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_displaysBottomAccessoryDivider) = v231;
  sub_1001121F8();
  [v123 setNeedsLayout];

  swift_unknownObjectRelease();
}

uint64_t sub_1004C15E8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &unk_100923200, &unk_1007A5C50);
}

uint64_t sub_1004C1654(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t sub_1004C1730()
{
  result = qword_100939318;
  if (!qword_100939318)
  {
    sub_10000C724(&unk_100939320, &unk_1007C2BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939318);
  }

  return result;
}

uint64_t sub_1004C1794(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004C17DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004C1828(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004C18C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100750294();
  v61 = *(v4 - 8);
  __chkstk_darwin(v4);
  v59 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = v5;
  __chkstk_darwin(v6);
  v60 = &v47[-v7];
  v8 = sub_10074ED34();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v47[-v13];
  sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  v15 = sub_100752DE4();
  sub_100742164();
  v16 = sub_10074ECE4();
  v17 = *(v9 + 8);
  v17(v14, v8);
  if (v16)
  {
    v51 = v16;
    v58 = v4;
    v55 = v15;
    sub_10000C518(&unk_100925780, qword_1007AC630);
    sub_100752764();
    v54 = a2;
    sub_100752D34();
    swift_getObjectType();
    sub_100742164();
    v18 = sub_1007424E4();
    swift_unknownObjectRelease();
    v17(v11, v8);
    swift_getObjectType();
    v53 = v18;
    v19 = sub_100742394();
    v20 = "ActionDispatcher[ASDAppQuery]:handleOpenAppAction";
    v52 = a1;
    if (v19)
    {
      v21 = sub_100742144();
      if (v21)
      {
        v20 = "ActionDispatcher[ASDAppQuery.BetaApps]:handleOpenAppAction";
        v22 = 58;
      }

      else
      {
        v22 = 49;
      }
    }

    else
    {
      v21 = 0;
      v22 = 49;
    }

    v49 = v20;
    sub_100752A04();
    sub_1007529F4();
    v25 = v60;
    sub_100750284();
    sub_1007538D4();
    v26 = sub_1007529F4();
    sub_100750274();

    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1007A5CF0;
    v28 = v51;
    *(v27 + 32) = v51;
    sub_100016C60(0, &qword_10092BE20, NSNumber_ptr);
    v50 = v28;
    v29.super.isa = sub_100753294().super.isa;

    v30 = objc_opt_self();
    v31 = &selRef_queryForBetaAppsWithStoreItemIDs_;
    v48 = v21 & 1;
    if ((v21 & 1) == 0)
    {
      v31 = &selRef_queryForStoreItemIDs_;
    }

    v51 = [v30 *v31];

    v32 = v61;
    (*(v61 + 16))(v59, v25, v58);
    sub_1004C3120(v57, v63);
    v33 = (*(v32 + 80) + 33) & ~*(v32 + 80);
    v34 = v33 + v56;
    v35 = (((v33 + v56) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
    v37 = v22;
    v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    *(v40 + 16) = v49;
    *(v40 + 24) = v37;
    *(v40 + 32) = 2;
    v41 = v58;
    (*(v32 + 32))(v40 + v33, v59, v58);
    *(v40 + v34) = v48;
    *(v40 + (v34 & 0xFFFFFFFFFFFFFFF8) + 8) = v52;
    sub_1004C3244(v63, v40 + v35);
    v15 = v55;
    *(v40 + v36) = v54;
    *(v40 + v38) = v15;
    v42 = v50;
    *(v40 + v39) = v50;
    aBlock[4] = sub_1004C327C;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10071450C;
    aBlock[3] = &unk_100878458;
    v43 = _Block_copy(aBlock);
    v44 = v42;

    v45 = v51;
    [v51 executeQueryWithResultHandler:v43];
    _Block_release(v43);

    swift_unknownObjectRelease();
    (*(v61 + 8))(v60, v41);
  }

  else
  {
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v23 = sub_100752E44();
    sub_10000D0FC(v23, qword_100983318);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752D04();

    sub_1004C30CC();
    swift_allocError();
    *v24 = 0;
    sub_100752DA4();
  }

  return v15;
}

void sub_1004C1FB4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  v45 = a7;
  v46 = a8;
  v47 = a11;
  v44 = a10;
  v13 = sub_10074ED34();
  __chkstk_darwin(v13 - 8);
  v41[1] = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100752614();
  __chkstk_darwin(v15 - 8);
  v43 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100748314();
  v42 = *(v17 - 8);
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = sub_1007538C4();
  sub_100752A04();
  v22 = sub_1007529F4();
  sub_100750274();

  if (!a1)
  {
    goto LABEL_13;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_13:
    if (v45)
    {
      sub_10074ECB4();
      sub_100742164();
      sub_100742134();
      sub_10074EC84();
      sub_10074EC64();
      sub_100742174();
      swift_allocObject();
      v37 = sub_100742154();
      sub_10052ADAC(v37, 1, v44);
      sub_100752D54();

      return;
    }

    v21 = a12;
    if (qword_100921EE0 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (!sub_100754664())
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) == 0)
  {
    v23 = v46;
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v24 = *(a1 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_19:
    swift_once();
LABEL_16:
    v38 = sub_100752E44();
    sub_10000D0FC(v38, qword_100983318);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5620;
    sub_1007523A4();
    v51 = sub_100016C60(0, &qword_10092BE20, NSNumber_ptr);
    aBlock = v21;
    v39 = v21;
    sub_1007523B4();
    sub_1000277BC(&aBlock);
    sub_1007523A4();
    sub_100752D04();

    sub_1004C30CC();
    swift_allocError();
    *v40 = 1;
    sub_100752DA4();

    return;
  }

  v24 = sub_100754574();
  v23 = v46;
LABEL_7:
  sub_100742134();
  v25 = v42;
  v26 = (*(v42 + 88))(v20, v17);
  if (v26 == enum case for OpenableDestination.app(_:))
  {
    v27 = [v24 bundleID];
    sub_100753094();

    sub_1007525F4();
    sub_100386760(_swiftEmptyArrayStorage);
    sub_10074CB04();
    swift_allocObject();
    sub_10074CAF4();

    v29 = v44;
    sub_10052ADF4(v28, 1, v44);

    v30 = objc_opt_self();
    sub_1004C3120(a9, v54);
    v31 = swift_allocObject();
    sub_1004C3244(v54, (v31 + 2));
    v31[4] = v23;
    v31[5] = v29;
    v31[6] = v47;
    v52 = sub_1004C353C;
    v53 = v31;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_1004C2E50;
    v51 = &unk_1008784F8;
    v32 = _Block_copy(&aBlock);

    [v30 launchApp:v24 withResultHandler:v32];

    _Block_release(v32);
  }

  else if (v26 == enum case for OpenableDestination.messages(_:))
  {
    v33 = objc_opt_self();
    sub_1004C3120(a9, v54);
    v34 = swift_allocObject();
    sub_1004C3244(v54, (v34 + 2));
    v35 = v44;
    v34[4] = v23;
    v34[5] = v35;
    v34[6] = v47;
    v52 = sub_1004C3384;
    v53 = v34;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_1004C2E50;
    v51 = &unk_1008784A8;
    v36 = _Block_copy(&aBlock);

    [v33 launchMessagesExtensionForApp:v24 withResultHandler:v36];

    _Block_release(v36);
  }

  else
  {

    (*(v25 + 8))(v20, v17);
  }
}

uint64_t sub_1004C2770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[0] = a3;
  v27[1] = a2;
  v5 = sub_100752624();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007521E4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100752224();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v25 = sub_100752E44();
    sub_10000D0FC(v25, qword_100983318);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A6580;
    sub_1007523A4();
    v29 = sub_10074ED34();
    sub_10000D134(aBlock);
    sub_100742164();
    sub_1007523B4();
    sub_1000277BC(aBlock);
    sub_100752D04();

    sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
    sub_1004C30CC();
    swift_allocError();
    v24 = 1;
    goto LABEL_9;
  }

  if (a1 == 1)
  {
    v18 = v15;
    sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
    v19 = sub_100753774();
    sub_1004C3120(v3, v32);
    v20 = swift_allocObject();
    sub_1004C3244(v32, v20 + 16);
    *(v20 + 32) = v27[0];
    v30 = sub_1004C3464;
    v31 = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    v29 = &unk_100878548;
    v21 = _Block_copy(aBlock);

    sub_100752204();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1004C3470(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000C518(&unk_10092F750, &qword_1007A6920);
    sub_1000A8054();
    sub_1007543A4();
    sub_100753784();
    _Block_release(v21);

    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v17, v18);
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v22 = sub_100752E44();
    sub_10000D0FC(v22, qword_100983318);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A6580;
    sub_1007523A4();
    v29 = sub_10074ED34();
    sub_10000D134(aBlock);
    sub_100742164();
    sub_1007523B4();
    sub_1000277BC(aBlock);
    sub_100752D04();

    sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
    sub_1004C30CC();
    swift_allocError();
    v24 = 2;
LABEL_9:
    *v23 = v24;
    return sub_100752D74();
  }

  sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  (*(v6 + 104))(v8, enum case for ActionOutcome.performed(_:), v5);
  return sub_100752D84();
}

double sub_1004C2E50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

double sub_1004C2EA4(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100745B04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100752614();
  __chkstk_darwin(v8 - 8);
  v12._object = 0x8000000100780240;
  v12._countAndFlagsBits = 0xD00000000000001FLL;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_1007458B4(v12, v14);
  v13._countAndFlagsBits = 0xD000000000000021;
  v13._object = 0x8000000100780260;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_1007458B4(v13, v15);
  sub_1007525F4();
  (*(v5 + 104))(v7, enum case for AlertActionStyle.normal(_:), v4);
  sub_100743144();
  swift_allocObject();
  v9 = sub_100743114();
  sub_10052AE0C(v9, 1, a3);

  return result;
}

unint64_t sub_1004C30CC()
{
  result = qword_10093A4D8;
  if (!qword_10093A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A4D8);
  }

  return result;
}

uint64_t sub_1004C3158()
{
  v1 = sub_100750294();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (((((((((v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_1004C327C(unint64_t a1, uint64_t a2)
{
  v5 = *(sub_100750294() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = ((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1004C1FB4(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8), v2 + v8, *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_1004C3368(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1004C3388()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 56, 7);
}

double sub_1004C33D8(uint64_t a1)
{
  sub_1004C2770(a1, *(v1 + 32), *(v1 + 40));
  sub_100752D54();

  return result;
}

uint64_t sub_1004C3424()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004C3470(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1004C34CC()
{
  result = qword_10093A4E0;
  if (!qword_10093A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A4E0);
  }

  return result;
}

unint64_t sub_1004C3554()
{
  result = qword_10093A4E8;
  if (!qword_10093A4E8)
  {
    sub_1007436A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A4E8);
  }

  return result;
}

uint64_t sub_1004C35AC()
{
  v0 = sub_100752624();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100743694();
  sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return sub_100752D84();
}

unint64_t sub_1004C36B8()
{
  result = qword_10093A4F0;
  if (!qword_10093A4F0)
  {
    sub_100747624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A4F0);
  }

  return result;
}

uint64_t sub_1004C3710(void *a1)
{
  v2 = sub_100752624();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 success])
  {
    (*(v3 + 104))(v6, enum case for ActionOutcome.performed(_:), v2);
    sub_100752DB4();
    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    v8 = [a1 error];
    sub_1004C3CA0();
    swift_allocError();
    *v9 = v8;
    sub_100752DA4();
  }
}

uint64_t sub_1004C3894()
{
  v0 = sub_100747604();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = aBlock - v5;
  sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  v7 = sub_100752DE4();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = sub_100378B58(Strong);

  sub_100747614();
  (*(v1 + 16))(v3, v6, v0);
  v10 = (*(v1 + 88))(v3, v0);
  if (v10 == enum case for FamilyCircleAction.EventType.initiate(_:))
  {
    v11 = *(v1 + 8);
    v12 = FACircleEventTypeInitiate;
    v11(v6, v0);
  }

  else
  {
    v13 = *(v1 + 8);
    if (v10 == enum case for FamilyCircleAction.EventType.addFamilyMember(_:))
    {
      v12 = FACircleEventTypeAddFamilyMemberV3;
      v14 = v6;
    }

    else
    {
      v12 = FACircleEventTypeInitiate;
      v13(v6, v0);
      v14 = v3;
    }

    v13(v14, v0);
  }

  v15 = [objc_allocWithZone(FACircleContext) initWithEventType:v12];

  sub_1007475E4();
  v16 = sub_100753064();

  [v15 setClientName:v16];

  v17 = [objc_opt_self() mainBundle];
  v18 = [v17 bundleIdentifier];

  [v15 setClientBundleID:v18];
  if (sub_1007475F4())
  {
    v19.super.isa = sub_100752F34().super.isa;
  }

  else
  {
    v19.super.isa = 0;
  }

  [v15 setAdditionalParameters:v19.super.isa];

  v20 = [objc_allocWithZone(FACircleStateController) initWithPresenter:v9];
  aBlock[4] = sub_1004C3C80;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001A67C4;
  aBlock[3] = &unk_1008786A0;
  v21 = _Block_copy(aBlock);

  [v20 performWithContext:v15 completion:v21];
  _Block_release(v21);

  return v7;
}

double sub_1004C3C88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1004C3CA0()
{
  result = qword_10093A4F8;
  if (!qword_10093A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A4F8);
  }

  return result;
}

uint64_t sub_1004C3CF4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1004C3D50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_1004C3DB0(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v11 = &a1[qword_1009805D8];
  v12 = sub_1007433C4();
  *v11 = 0;
  *(v11 + 1) = 0;
  v13 = [objc_allocWithZone(v12) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&a1[qword_1009805D0] = v13;
  v15.receiver = a1;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "initWithFrame:", a2, a3, a4, a5);
}

uint64_t type metadata accessor for FramedArtworkCollectionViewCell(uint64_t a1)
{
  result = qword_10093A528;
  if (!qword_10093A528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004C3FA4(uint64_t a1, uint64_t a2)
{
  sub_100743204();
  sub_1007433C4();
  sub_1004C4094(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  return sub_100744274();
}

uint64_t sub_1004C403C(uint64_t a1)
{
  result = sub_1004C4094(&qword_10093A6B0, type metadata accessor for FramedArtworkCollectionViewCell, &unk_1007C59F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1004C4094(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1004C40DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_objectGraph);
  *(v6 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_objectGraph) = a3;

  sub_100111078(v8);

  v9 = [a6 snapshotPageTraitEnvironment];
  *(v6 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_pageTraits) = v9;
  swift_unknownObjectRelease();
  v10 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_flowLayout);
  [a6 pageMarginInsets];
  [v10 setSectionInset:?];

  return sub_100110F6C(v11, v12);
}

uint64_t sub_1004C4270(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1004C42BC()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = sub_1007537B4();

  if ((v6 & 1) == 0)
  {
    if (v4 < v2)
    {
LABEL_7:
      JUScreenClassGetLandscapeWidth();
      return;
    }

    goto LABEL_10;
  }

  if (v4 >= v2)
  {
    if (v2 == 744.0)
    {
      return;
    }

    JUScreenClassGetPortraitWidth();
    if (v2 <= v8)
    {
      return;
    }

LABEL_10:
    JUScreenClassGetPortraitWidth();
    return;
  }

  if (v2 != 1133.0)
  {
    JUScreenClassGetLandscapeWidth();
    if (v2 > v7)
    {
      goto LABEL_7;
    }
  }
}

id sub_1004C449C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SnapshotPageTraitEnvironment();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void UIViewController.pageContainerSize.getter()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
  }

  else
  {
    __break(1u);
  }
}

id UIViewController.snapshotPageTraitEnvironment.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = type metadata accessor for SnapshotPageTraitEnvironment();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v8 = v2;
  *(v8 + 1) = v4;
  *&v7[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v5;
  v10.receiver = v7;
  v10.super_class = v6;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t MetadataRibbonBarViewLayout.Metrics.standard.unsafeMutableAddressor()
{
  if (qword_100920D58 != -1)
  {
    swift_once();
  }

  v0 = sub_10074C354();

  return sub_10000D0FC(v0, static MetadataRibbonBarViewLayout.Metrics.standard);
}

char *sub_1004C47E4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10074C354();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_metrics;
  if (qword_100920D58 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v11, static MetadataRibbonBarViewLayout.Metrics.standard);
  v17 = *(v12 + 16);
  v17(&v5[v15], v16, v11);
  v18 = &v5[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_id];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  v19 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_itemType;
  v20 = sub_100749D24();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = &v5[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_labelMaxWidth];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v5[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_truncationLegibilityThreshold];
  *v22 = 0;
  v22[8] = 1;
  v5[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_allowsTruncation] = 2;
  sub_100745C84();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_dividerLabel] = sub_100745C64();
  v43.receiver = v5;
  v43.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_dividerLabel;
  v29 = *&v27[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_dividerLabel];
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 separatorColor];
  [v31 setTextColor:v32];

  v33 = *&v27[v28];
  v17(v14, &v27[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_metrics], v11);
  v34 = v33;
  v35 = sub_10074C344();
  (*(v12 + 8))(v14, v11);
  [v34 setNumberOfLines:v35];

  v36 = *&v27[v28];
  sub_1007509A4();
  if (qword_100920210 != -1)
  {
    swift_once();
  }

  v37 = sub_10074A584();
  v38 = sub_10000D0FC(v37, qword_10097D9F0);
  v42[3] = v37;
  v42[4] = sub_1002371F8();
  v39 = sub_10000D134(v42);
  (*(*(v37 - 8) + 16))(v39, v38, v37);
  sub_100745BC4();

  [v27 addSubview:*&v27[v28]];
  return v27;
}

uint64_t sub_1004C4C2C()
{
  ObjectType = swift_getObjectType();
  v18 = sub_100750354();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074C354();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10074C364();
  v9 = *(v17 - 8);
  *&v10 = __chkstk_darwin(v17).n128_u64[0];
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v10);
  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_dividerLabel];
  v20 = sub_100745C84();
  v21 = &protocol witness table for UILabel;
  v19 = v13;
  (*(v6 + 16))(v8, &v0[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_metrics], v5);
  v14 = v13;
  sub_10074C304();
  sub_1007477B4();
  sub_10074C324();
  (*(v2 + 8))(v4, v18);
  return (*(v9 + 8))(v12, v17);
}

double sub_1004C51C0(uint64_t a1)
{
  sub_100747914();
  v2 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_dividerLabel];
  if (v3)
  {
    v4 = sub_100753064();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  [v1 setNeedsLayout];

  return result;
}

uint64_t sub_1004C5254@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_itemType;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &qword_100924B30, &unk_1007A8690);
}

uint64_t sub_1004C52BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_itemType;
  swift_beginAccess();
  sub_10006644C(a1, v1 + v3, &qword_100924B30, &unk_1007A8690);
  return swift_endAccess();
}

void sub_1004C5398(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_labelMaxWidth;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void sub_1004C5464(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_truncationLegibilityThreshold;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_1004C5524()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1004C5568(char a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_allowsTruncation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1004C5618@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_id;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &unk_1009276E0, &unk_1007A5C70);
}

uint64_t sub_1004C5680(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_id;
  swift_beginAccess();
  sub_10006644C(a1, v1 + v3, &unk_1009276E0, &unk_1007A5C70);
  return swift_endAccess();
}

uint64_t sub_1004C5750()
{
  v0 = sub_10000C518(&unk_100923180, &unk_1007A5F40);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  v4 = sub_10074C354();
  sub_100039C50(v4, static MetadataRibbonBarViewLayout.Metrics.standard);
  sub_10000D0FC(v4, static MetadataRibbonBarViewLayout.Metrics.standard);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  sub_100743564();
  sub_10074C334();
  return (*(v1 + 8))(v3, v0);
}

uint64_t static MetadataRibbonBarViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100920D58 != -1)
  {
    swift_once();
  }

  v2 = sub_10074C354();
  v3 = sub_10000D0FC(v2, static MetadataRibbonBarViewLayout.Metrics.standard);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for MetadataRibbonBarView(uint64_t a1)
{
  result = qword_10093A778;
  if (!qword_10093A778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004C598C(uint64_t a1)
{
  sub_10074C354();
  if (v1 <= 0x3F)
  {
    sub_1000D9E5C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_1004C5A80(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v39 = a2;
  v33 = a1;
  v4 = sub_10074C354();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074C364();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v34 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100750BD4();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100750E94();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  __chkstk_darwin(v17);
  v19 = &v29 - v18;
  if (qword_100920D58 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v4, static MetadataRibbonBarViewLayout.Metrics.standard);
  sub_100750E84();
  sub_1007509A4();
  v30 = v4;
  if (qword_100920210 != -1)
  {
    swift_once();
  }

  v21 = sub_10074A584();
  v22 = sub_10000D0FC(v21, qword_10097D9F0);
  v41[3] = v21;
  v41[4] = sub_1002371F8();
  v23 = sub_10000D134(v41);
  (*(*(v21 - 8) + 16))(v23, v22, v21);
  sub_100750DE4();
  v24 = *(v11 + 8);
  v24(v13, v10);
  sub_10000C620(v41);
  sub_10074C344();
  sub_100750E74();
  v24(v16, v10);
  sub_100747914();
  (*(v11 + 16))(v16, v19, v10);
  sub_100750BB4();
  sub_100750BF4();
  sub_100750BA4();
  (*(v31 + 8))(v9, v32);
  sub_10000C824(v41, v40);
  (*(v36 + 16))(v35, v20, v30);
  v25 = v34;
  sub_10074C304();
  sub_10074C314();
  v27 = v26;
  (*(v37 + 8))(v25, v38);
  sub_10000C620(v41);
  v24(v19, v10);
  return v27;
}

void sub_1004C5F74()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_metrics;
  if (qword_100920D58 != -1)
  {
    swift_once();
  }

  v2 = sub_10074C354();
  v3 = sub_10000D0FC(v2, static MetadataRibbonBarViewLayout.Metrics.standard);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = v0 + OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_id;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_itemType;
  v6 = sub_100749D24();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_labelMaxWidth;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_truncationLegibilityThreshold;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_allowsTruncation) = 2;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1004C6108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_10000C518(&unk_100933290, &unk_1007BA6D0);
  __chkstk_darwin(v5 - 8);
  v7 = v11 - v6;
  v11[1] = sub_1007445A4();
  sub_100743EB4();
  sub_100752764();
  sub_1004C6A2C(&qword_100933028, &type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  sub_100752684();

  v8 = sub_10000C518(&unk_1009332A0, &qword_1007ADB60);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyFooterCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_1004C6484(v7, v4 + v9);
  swift_endAccess();
  sub_10014C36C();
  return sub_1004C64F4(v7);
}

uint64_t sub_1004C62AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921718 != -1)
  {
    swift_once();
  }

  v7 = sub_100750B04();
  sub_10000D0FC(v7, qword_1009820C8);
  sub_1007502D4();
  sub_100750564();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  return v9;
}

uint64_t sub_1004C6484(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100933290, &unk_1007BA6D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004C64F4(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100933290, &unk_1007BA6D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1004C655C(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v34[0] = a1;
  v8 = sub_100748494();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007484B4();
  v35 = *(v12 - 8);
  v36 = v12;
  __chkstk_darwin(v12);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10074CD14();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100038D38();
  if (qword_100921248 != -1)
  {
    swift_once();
  }

  v19 = sub_100750534();
  sub_10000D0FC(v19, qword_100981410);
  v20 = [a6 traitCollection];
  v34[1] = a6;
  v21 = v20;
  v22 = sub_100753C14();

  sub_1007445A4();
  sub_100743E94();

  v23 = sub_100743074();

  v24 = sub_10074F3F4();
  v39 = v24;
  v40 = sub_1004C6A2C(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v25 = sub_10000D134(v38);
  (*(*(v24 - 8) + 104))(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v24);
  v34[0] = v23;
  v26 = v22;
  sub_10074FC74();
  sub_10000C620(v38);
  sub_10074CCD4();
  sub_10074CCE4();
  (*(v16 + 8))(v18, v15);
  if (qword_100920350 != -1)
  {
    swift_once();
  }

  v27 = sub_10000D0FC(v8, qword_10097DD00);
  (*(v9 + 16))(v11, v27, v8);
  v28 = v39;
  v29 = v40;
  v30 = sub_10000C888(v38, v39);
  v37[3] = v28;
  v37[4] = *(v29 + 8);
  v31 = sub_10000D134(v37);
  (*(*(v28 - 8) + 16))(v31, v30, v28);
  sub_1007484A4();
  sub_1004C6A2C(&unk_100923AC0, &type metadata accessor for PrivacyFooterLayout, &protocol conformance descriptor for PrivacyFooterLayout);
  v32 = v36;
  sub_100750404();

  (*(v35 + 8))(v14, v32);
  sub_10000C620(v38);
  return a2;
}

uint64_t sub_1004C6A2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1004C6A74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v11 = a1;
    v12 = v11;
    if ((a5 & 1) != 0 && ([v11 size], v14 = v13, objc_msgSend(v12, "size"), v15 < v14) && (v16 = objc_msgSend(v12, "CGImage")) != 0)
    {
      v17 = v16;
      [v12 scale];
      v19 = [objc_allocWithZone(UIImage) initWithCGImage:v17 scale:2 orientation:v18];
    }

    else
    {
      v19 = v12;
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      swift_beginAccess();
      v22 = *(v21 + 16);
      if ((v22 & 0xC000000000000001) != 0)
      {
        if (v22 < 0)
        {
          v23 = *(v21 + 16);
        }

        else
        {
          v23 = v22 & 0xFFFFFFFFFFFFFF8;
        }

        v24 = v19;
        v25 = sub_100754614();
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          return;
        }

        *(v21 + 16) = sub_1004C6D20(v23, v25 + 1);
      }

      else
      {
        v26 = v19;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *(v21 + 16);
      sub_100674504(v19, a7, isUniquelyReferenced_nonNull_native, v28);
      *(v21 + 16) = v33;
      swift_endAccess();
    }

    swift_beginAccess();
    v29 = swift_weakLoadStrong();
    if (v29)
    {
      v30 = v29;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v31 = *(v30 + 32);
        ObjectType = swift_getObjectType();
        (*(v31 + 8))(v30, v19, a8, ObjectType, v31);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1004C6CBC()
{

  sub_10000C4F0(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1004C6D20(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000C518(&qword_100936D28, &unk_1007D1030);
    v2 = sub_1007546A4();
    v20 = v2;
    sub_100754604();
    v3 = sub_100754634();
    if (v3)
    {
      v4 = v3;
      sub_10074F3D4();
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_1004C6F5C();
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_100673214(v13 + 1, 1);
        }

        v2 = v20;
        sub_1004C6FA8(v12);
        result = sub_100752FA4();
        v7 = v20 + 64;
        v8 = -1 << *(v20 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v20 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v20 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v10 == v15;
            if (v10 == v15)
            {
              v10 = 0;
            }

            v14 |= v16;
            v17 = *(v7 + 8 * v10);
          }

          while (v17 == -1);
          v11 = __clz(__rbit64(~v17)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v20 + 48) + 8 * v11) = v19;
        *(*(v20 + 56) + 8 * v11) = v18;
        ++*(v20 + 16);
        v5 = sub_100754634();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

unint64_t sub_1004C6F5C()
{
  result = qword_10092B280;
  if (!qword_10092B280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10092B280);
  }

  return result;
}

unint64_t sub_1004C6FA8(__n128 a1)
{
  result = qword_100936D20;
  if (!qword_100936D20)
  {
    sub_10074F3D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936D20);
  }

  return result;
}

void *sub_1004C7000(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    sub_1007545C4();
    v6 = a1 + 48;
    do
    {

      if (a2)
      {
        sub_10074F114();
      }

      sub_10074F374();

      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      v6 += 24;
      --v3;
    }

    while (v3);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

double sub_1004C7138(uint64_t a1, void *a2, double a3)
{
  sub_10000C888(a2, a2[3]);
  sub_100750404();
  return v3;
}

uint64_t sub_1004C71A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_1004C7200(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

double sub_1004C72C8()
{
  sub_100745224();
  sub_1004C736C();
  sub_1007468B4();
  if (v6)
  {
    v2 = sub_100745214();
    v4 = v3;

    v5 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_placement);
    swift_beginAccess();
    *v5 = v2;
    v5[1] = v4;
  }

  return result;
}

unint64_t sub_1004C736C()
{
  result = qword_10093A8C0;
  if (!qword_10093A8C0)
  {
    sub_100745224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A8C0);
  }

  return result;
}

uint64_t sub_1004C73C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074EB54();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1004C73F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074EB74();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1004C741C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v232 = a2;
  v223 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v223);
  v207 = &v194 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v212 = &v194 - v5;
  v231 = sub_100747144();
  v222 = *(v231 - 8);
  __chkstk_darwin(v231);
  v216 = &v194 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v228 = &v194 - v8;
  v9 = sub_10000C518(&qword_100928A88, qword_1007B1CF0);
  __chkstk_darwin(v9 - 8);
  v217 = &v194 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v214 = (&v194 - v12);
  __chkstk_darwin(v13);
  v211 = &v194 - v14;
  __chkstk_darwin(v15);
  v226 = (&v194 - v16);
  v17 = sub_10000C518(&unk_100940600, &qword_1007AC320);
  __chkstk_darwin(v17 - 8);
  v215 = &v194 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v208 = &v194 - v20;
  __chkstk_darwin(v21);
  v227 = &v194 - v22;
  __chkstk_darwin(v23);
  v218 = &v194 - v24;
  v25 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v220 = *(v25 - 8);
  v221 = v25;
  __chkstk_darwin(v25);
  v206 = &v194 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v205 = &v194 - v28;
  __chkstk_darwin(v29);
  v204 = &v194 - v30;
  __chkstk_darwin(v31);
  v213 = &v194 - v32;
  __chkstk_darwin(v33);
  v225 = &v194 - v34;
  __chkstk_darwin(v35);
  v210 = &v194 - v36;
  __chkstk_darwin(v37);
  v209 = &v194 - v38;
  __chkstk_darwin(v39);
  v224 = &v194 - v40;
  v41 = sub_10000C518(&unk_100928A90, qword_1007AC480);
  __chkstk_darwin(v41 - 8);
  v197 = &v194 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v196 = &v194 - v44;
  __chkstk_darwin(v45);
  v200 = &v194 - v46;
  __chkstk_darwin(v47);
  v199 = &v194 - v48;
  __chkstk_darwin(v49);
  v219 = &v194 - v50;
  __chkstk_darwin(v51);
  v195 = &v194 - v52;
  __chkstk_darwin(v53);
  v198 = &v194 - v54;
  __chkstk_darwin(v55);
  v203 = &v194 - v56;
  __chkstk_darwin(v57);
  v202 = &v194 - v58;
  __chkstk_darwin(v59);
  v201 = &v194 - v60;
  __chkstk_darwin(v61);
  v229 = &v194 - v62;
  v63 = sub_1007457B4();
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v66 = &v194 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v69 = &v194 - v68;
  v70 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v230 = *(v70 - 8);
  __chkstk_darwin(v70);
  v72 = &v194 - v71;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v73 = v236;
  if (v236)
  {
  }

  swift_getKeyPath();
  sub_1007525B4();

  v74 = v236;
  if (v236)
  {
    v75 = v235;

    v76 = HIBYTE(v74) & 0xF;
    if ((v74 & 0x2000000000000000) == 0)
    {
      v76 = v75 & 0xFFFFFFFFFFFFLL;
    }

    v233 = v76 != 0;
  }

  else
  {
    v233 = 0;
  }

  swift_getKeyPath();
  v234 = v72;
  sub_1007525B4();

  if (v235)
  {
    v77 = sub_100743A34();
  }

  else
  {
    v77 = 0;
  }

  swift_getKeyPath();
  sub_1007525B4();

  (*(v64 + 104))(v66, enum case for ShelfBackground.interactive(_:), v63);
  v78 = sub_1007457A4();
  v79 = *(v64 + 8);
  v79(v66, v63);
  v79(v69, v63);
  v80 = sub_1004C95EC(a1);
  if (sub_1004CA0B4(a1))
  {
    if ((v78 & 1) == 0)
    {
      v81 = v77 ^ 1;
      goto LABEL_17;
    }

LABEL_15:
    sub_10071ED04(v233, v232);
    return (*(v230 + 8))(v234, v70);
  }

  if (v78)
  {
    goto LABEL_15;
  }

  v81 = 0;
LABEL_17:
  v194 = v70;
  if (!v80)
  {
    LODWORD(v229) = v81;
    swift_getKeyPath();
    sub_1007525B4();

    if (v235)
    {
      v85 = v219;
      sub_1007439D4();

      v86 = sub_1007439C4();
      (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
    }

    else
    {
      v113 = sub_1007439C4();
      (*(*(v113 - 8) + 56))(v219, 1, 1, v113);
    }

    v114 = v221;
    if (v77)
    {
      v115 = v214;
      *v214 = xmmword_1007C5CF0;
      v116 = enum case for TitleHeaderLayout.AccessoryVerticalAlignment.corner(_:);
      v117 = sub_100747134();
      v118 = *(v117 - 8);
      v119 = *(v118 + 104);
      v227 = (v117 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v119(v115, v116, v117);
      v120 = *(v118 + 56);
      v228 = v117;
      v120(v115, 0, 1, v117);
      if (qword_100920AC8 != -1)
      {
        swift_once();
      }

      v121 = sub_10000D0FC(v114, qword_10097FF10);
      sub_10015027C(v121, v213);
      v122 = 10.0;
      v123 = v204;
      if (qword_100920AF8 != -1)
      {
        swift_once();
      }

      v124 = 1;
      v125 = qword_10097FFA0;
LABEL_107:
      v177 = v123;
LABEL_108:
      v178 = sub_10000D0FC(v114, v125);
      sub_10015027C(v178, v177);
      v179 = v208;
      (*(v220 + 56))(v208, v124, 1, v114);
      v180 = v213;
      v181 = v205;
      sub_10015027C(v213, v205);
      v182 = v206;
      sub_10015027C(v123, v206);
      sub_100016B4C(v179, v215, &unk_100940600, &qword_1007AC320);
      v183 = v214;
      sub_100016B4C(v214, v217, &qword_100928A88, qword_1007B1CF0);
      v184 = v222;
      (*(v222 + 104))(v216, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v231);
      sub_10000D198();
      v185 = sub_100753DB4();
      sub_10000C8CC(v183, &qword_100928A88, qword_1007B1CF0);
      sub_10000C8CC(v179, &unk_100940600, &qword_1007AC320);
      sub_1003B6E50(v123);
      sub_1003B6E50(v180);
      sub_10000C8CC(v219, &unk_100928A90, qword_1007AC480);
      (*(v230 + 8))(v234, v194);
      v186 = v223;
      v187 = *(v223 + 32);
      v188 = v207;
      sub_1003ED344(v181, v207, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_1003ED344(v182, v188 + v186[5], type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_100066578(v215, v188 + v186[6], &unk_100940600, &qword_1007AC320);
      *(v188 + v186[7]) = v229 & 1;
      *(v188 + v187) = 0;
      v189 = v233;
      *(v188 + v186[9]) = v233;
      *(v188 + v186[14]) = v122;
      *(v188 + v186[12]) = 0;
      *(v188 + v186[13]) = v185;
      v190 = v217;
      (*(v184 + 32))(v188 + v186[11], v216, v231);
      sub_100747134();
      v191 = v228;
      v192 = *(v228 - 1);
      if ((*(v192 + 48))(v190, 1, v228) == 1)
      {
        sub_10000C8CC(v190, &qword_100928A88, qword_1007B1CF0);
        if (v189)
        {
          v193 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
        }

        else
        {
          v193 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
        }

        (*(v192 + 104))(v188 + v186[10], *v193, v191);
      }

      else
      {
        (*(v192 + 32))(v188 + v186[10], v190, v191);
      }

      v166 = v188;
      return sub_1003ED344(v166, v232, type metadata accessor for TitleHeaderView.Style);
    }

    v126 = sub_100747134();
    v127 = *(*(v126 - 8) + 56);
    v227 = (v126 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v127(v214, 1, 1, v126);
    v228 = v126;
    if (v73)
    {
      if (!v233)
      {
        v145 = v200;
        sub_100016B4C(v219, v200, &unk_100928A90, qword_1007AC480);
        v146 = sub_1007439C4();
        v147 = *(v146 - 8);
        if ((*(v147 + 48))(v145, 1, v146) == 1)
        {
          sub_10000C8CC(v145, &unk_100928A90, qword_1007AC480);
          v148 = 0;
        }

        else
        {
          v148 = sub_100743964();
          (*(v147 + 8))(v145, v146);
        }

        v123 = v204;
        sub_1003AFADC(v148, v213);

        v122 = 16.0;
        if (qword_100920AF0 != -1)
        {
          swift_once();
        }

        v124 = 1;
        v125 = qword_10097FF88;
        goto LABEL_107;
      }

      v128 = v199;
      sub_100016B4C(v219, v199, &unk_100928A90, qword_1007AC480);
      v129 = sub_1007439C4();
      v130 = *(v129 - 8);
      if ((*(v130 + 48))(v128, 1, v129) == 1)
      {
        sub_10000C8CC(v128, &unk_100928A90, qword_1007AC480);
        v131 = 0;
      }

      else
      {
        v131 = sub_100743964();
        (*(v130 + 8))(v128, v129);
      }

      v123 = v204;
      sub_1003AFADC(v131, v213);

      if (qword_100920B08 != -1)
      {
        swift_once();
      }

      v171 = qword_10097FFD0;
    }

    else
    {
      if (!v233)
      {
        v167 = v197;
        sub_100016B4C(v219, v197, &unk_100928A90, qword_1007AC480);
        v168 = sub_1007439C4();
        v169 = *(v168 - 8);
        if ((*(v169 + 48))(v167, 1, v168) == 1)
        {
          sub_10000C8CC(v167, &unk_100928A90, qword_1007AC480);
          v170 = 0;
        }

        else
        {
          v170 = sub_100743964();
          (*(v169 + 8))(v167, v168);
        }

        v123 = v204;
        sub_1003AFADC(v170, v213);

        v122 = 16.0;
        if (qword_100920AE8 != -1)
        {
          swift_once();
        }

        v124 = 1;
        v125 = qword_10097FF70;
        goto LABEL_107;
      }

      v141 = v196;
      sub_100016B4C(v219, v196, &unk_100928A90, qword_1007AC480);
      v142 = sub_1007439C4();
      v143 = *(v142 - 8);
      if ((*(v143 + 48))(v141, 1, v142) == 1)
      {
        sub_10000C8CC(v141, &unk_100928A90, qword_1007AC480);
        v144 = 0;
      }

      else
      {
        v144 = sub_100743964();
        (*(v143 + 8))(v141, v142);
      }

      v123 = v204;
      sub_1003AFADC(v144, v213);

      if (qword_100920B00 != -1)
      {
        swift_once();
      }

      v171 = qword_10097FFB8;
    }

    v176 = sub_10000D0FC(v114, v171);
    sub_10015027C(v176, v123);
    v122 = 16.0;
    if (qword_100920AE0 != -1)
    {
      swift_once();
    }

    v124 = 0;
    v125 = qword_10097FF58;
    v177 = v208;
    goto LABEL_108;
  }

  swift_getKeyPath();
  sub_1007525B4();

  if (v235)
  {
    v83 = v229;
    sub_1007439D4();

    v84 = sub_1007439C4();
    (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
  }

  else
  {
    v87 = sub_1007439C4();
    (*(*(v87 - 8) + 56))(v229, 1, 1, v87);
  }

  if (v77)
  {
    v88 = v226;
    *v226 = xmmword_1007C5CF0;
    v89 = enum case for TitleHeaderLayout.AccessoryVerticalAlignment.corner(_:);
    v90 = sub_100747134();
    v91 = *(v90 - 8);
    v92 = *(v91 + 104);
    v217 = (v90 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v92(v88, v89, v90);
    v93 = *(v91 + 56);
    v219 = v90;
    v93(v88, 0, 1, v90);
    if (qword_100920AC8 != -1)
    {
      swift_once();
    }

    v94 = v221;
    v95 = sub_10000D0FC(v221, qword_10097FF10);
    sub_10015027C(v95, v224);
    v96 = 10.0;
    v97 = v209;
    if (qword_100920AF8 != -1)
    {
      swift_once();
    }

    v98 = 1;
    v99 = qword_10097FFA0;
  }

  else
  {
    v101 = sub_100747134();
    v102 = *(*(v101 - 8) + 56);
    v217 = (v101 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v102(v226, 1, 1, v101);
    v219 = v101;
    if (v233)
    {
      if (v80 == 1)
      {
        v103 = v201;
        sub_100016B4C(v229, v201, &unk_100928A90, qword_1007AC480);
        v104 = sub_1007439C4();
        v105 = *(v104 - 8);
        v106 = (*(v105 + 48))(v103, 1, v104);
        v97 = v209;
        if (v106 == 1)
        {
          sub_10000C8CC(v103, &unk_100928A90, qword_1007AC480);
          v107 = 0;
        }

        else
        {
          v107 = sub_100743964();
          (*(v105 + 8))(v103, v104);
        }

        v94 = v221;
        sub_1003AFADC(v107, v224);

        if (qword_100920B30 != -1)
        {
          swift_once();
        }

        v149 = qword_100980048;
      }

      else
      {
        v132 = v202;
        sub_100016B4C(v229, v202, &unk_100928A90, qword_1007AC480);
        v133 = sub_1007439C4();
        v134 = *(v133 - 8);
        v135 = (*(v134 + 48))(v132, 1, v133);
        v97 = v209;
        if (v135 == 1)
        {
          sub_10000C8CC(v132, &unk_100928A90, qword_1007AC480);
          v136 = 0;
        }

        else
        {
          v136 = sub_100743964();
          (*(v134 + 8))(v132, v133);
        }

        v94 = v221;
        sub_1003AFADC(v136, v224);

        if (qword_100920B20 != -1)
        {
          swift_once();
        }

        v149 = qword_100980018;
      }

      v150 = sub_10000D0FC(v94, v149);
      sub_10015027C(v150, v97);
      v96 = 16.0;
      if (qword_100920AE0 != -1)
      {
        swift_once();
      }

      v98 = 0;
      v99 = qword_10097FF58;
      v100 = v218;
      goto LABEL_73;
    }

    if (v80 == 1)
    {
      v108 = v203;
      sub_100016B4C(v229, v203, &unk_100928A90, qword_1007AC480);
      v109 = sub_1007439C4();
      v110 = *(v109 - 8);
      v111 = (*(v110 + 48))(v108, 1, v109);
      v94 = v221;
      v97 = v209;
      if (v111 == 1)
      {
        sub_10000C8CC(v108, &unk_100928A90, qword_1007AC480);
        v112 = 0;
      }

      else
      {
        v112 = sub_100743964();
        (*(v110 + 8))(v108, v109);
      }

      sub_1003AFADC(v112, v224);

      v96 = 16.0;
      if (qword_100920B28 != -1)
      {
        swift_once();
      }

      v98 = 1;
      v99 = qword_100980030;
    }

    else
    {
      v94 = v221;
      v97 = v209;
      if (v73)
      {
        v137 = v198;
        sub_100016B4C(v229, v198, &unk_100928A90, qword_1007AC480);
        v138 = sub_1007439C4();
        v139 = *(v138 - 8);
        if ((*(v139 + 48))(v137, 1, v138) == 1)
        {
          sub_10000C8CC(v137, &unk_100928A90, qword_1007AC480);
          v140 = 0;
        }

        else
        {
          v140 = sub_100743964();
          (*(v139 + 8))(v137, v138);
        }

        sub_1003AFAE4(v140, v224);

        v96 = 16.0;
        if (qword_100920B18 != -1)
        {
          swift_once();
        }

        v98 = 1;
        v99 = qword_100980000;
      }

      else
      {
        v172 = v195;
        sub_100016B4C(v229, v195, &unk_100928A90, qword_1007AC480);
        v173 = sub_1007439C4();
        v174 = *(v173 - 8);
        if ((*(v174 + 48))(v172, 1, v173) == 1)
        {
          sub_10000C8CC(v172, &unk_100928A90, qword_1007AC480);
          v175 = 0;
        }

        else
        {
          v175 = sub_100743964();
          (*(v174 + 8))(v172, v173);
        }

        sub_1003AFADC(v175, v224);

        v96 = 16.0;
        if (qword_100920B10 != -1)
        {
          swift_once();
        }

        v98 = 1;
        v99 = qword_10097FFE8;
      }
    }
  }

  v100 = v97;
LABEL_73:
  v151 = sub_10000D0FC(v94, v99);
  sub_10015027C(v151, v100);
  v152 = v218;
  (*(v220 + 56))(v218, v98, 1, v94);
  v153 = v224;
  v154 = v210;
  sub_10015027C(v224, v210);
  sub_10015027C(v97, v225);
  sub_100016B4C(v152, v227, &unk_100940600, &qword_1007AC320);
  v155 = v226;
  v156 = v211;
  sub_100016B4C(v226, v211, &qword_100928A88, qword_1007B1CF0);
  v157 = v222;
  (*(v222 + 104))(v228, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v231);
  sub_10000D198();
  v221 = sub_100753DB4();
  sub_10000C8CC(v155, &qword_100928A88, qword_1007B1CF0);
  sub_10000C8CC(v152, &unk_100940600, &qword_1007AC320);
  sub_1003B6E50(v97);
  sub_1003B6E50(v153);
  sub_10000C8CC(v229, &unk_100928A90, qword_1007AC480);
  (*(v230 + 8))(v234, v194);
  v158 = v223;
  v159 = *(v223 + 32);
  v160 = v212;
  sub_1003ED344(v154, v212, type metadata accessor for TitleHeaderView.TextConfiguration);
  v161 = v156;
  sub_1003ED344(v225, v160 + v158[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100066578(v227, v160 + v158[6], &unk_100940600, &qword_1007AC320);
  *(v160 + v158[7]) = 0;
  *(v160 + v159) = 0;
  v162 = v233;
  *(v160 + v158[9]) = v233;
  *(v160 + v158[14]) = v96;
  *(v160 + v158[12]) = 0;
  *(v160 + v158[13]) = v221;
  (*(v157 + 32))(v160 + v158[11], v228, v231);
  sub_100747134();
  v163 = v219;
  v164 = *(v219 - 8);
  if ((*(v164 + 48))(v161, 1, v219) == 1)
  {
    sub_10000C8CC(v161, &qword_100928A88, qword_1007B1CF0);
    if (v162)
    {
      v165 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
    }

    else
    {
      v165 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
    }

    (*(v164 + 104))(v160 + v158[10], *v165, v163);
  }

  else
  {
    (*(v164 + 32))(v160 + v158[10], v161, v163);
  }

  v166 = v160;
  return sub_1003ED344(v166, v232, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_1004C9364@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074EB54();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1004C9390@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074EB74();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1004C93C4()
{
  sub_10000C518(&qword_100930BC8, &unk_1007B79B0);
  v0 = sub_10074E984();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007B3A60;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for Shelf.ContentType.upsellBreakout(_:), v0);
  v6(v5 + v2, enum case for Shelf.ContentType.smallBreakout(_:), v0);
  v6(v5 + 2 * v2, enum case for Shelf.ContentType.ribbonBar(_:), v0);
  v6(v5 + 3 * v2, enum case for Shelf.ContentType.largeHeroBreakout(_:), v0);
  v6(v5 + 4 * v2, enum case for Shelf.ContentType.editorialStoryCard(_:), v0);
  v6(v5 + 5 * v2, enum case for Shelf.ContentType.gameCenterReengagement(_:), v0);
  v6(v5 + 6 * v2, enum case for Shelf.ContentType.heroCarousel(_:), v0);
  v6(v5 + 7 * v2, enum case for Shelf.ContentType.productBadge(_:), v0);
  v7 = sub_1001A9F00(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10093A8C8 = v7;
  return result;
}

uint64_t sub_1004C95EC(unint64_t a1)
{
  v95 = sub_10000C518(&qword_10093A8D0, qword_1007C5DF0);
  __chkstk_darwin(v95);
  v98 = &v90 - v2;
  v3 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v101 = *(v3 - 8);
  __chkstk_darwin(v3);
  v94 = &v90 - v4;
  v5 = sub_1007457B4();
  v6 = *(v5 - 8);
  v96 = v5;
  v97 = v6;
  __chkstk_darwin(v5);
  v92 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v90 = (&v90 - v9);
  __chkstk_darwin(v10);
  v91 = (&v90 - v11);
  __chkstk_darwin(v12);
  v102 = &v90 - v13;
  __chkstk_darwin(v14);
  v93 = &v90 - v15;
  __chkstk_darwin(v16);
  v99 = &v90 - v17;
  v18 = sub_10000C518(&unk_10093D6E0, &unk_1007A6080);
  __chkstk_darwin(v18 - 8);
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v90 - v22;
  __chkstk_darwin(v24);
  v26 = &v90 - v25;
  __chkstk_darwin(v27);
  v29 = &v90 - v28;
  __chkstk_darwin(v30);
  v32 = &v90 - v31;
  __chkstk_darwin(v33);
  v35 = &v90 - v34;
  v100 = a1;
  sub_100747BB4();
  sub_10000C8CC(v29, &unk_10093D6E0, &unk_1007A6080);
  v36 = v101;
  sub_100066578(v32, v35, &unk_10093D6E0, &unk_1007A6080);
  v37 = *(v36 + 48);
  if (v37(v35, 1, v3) == 1)
  {
    sub_10000C8CC(v35, &unk_10093D6E0, &unk_1007A6080);
LABEL_6:
    v40 = v102;
    goto LABEL_7;
  }

  swift_getKeyPath();
  sub_1007525B4();

  v38 = v103;
  (*(v36 + 8))(v35, v3);
  if (!v38)
  {
    goto LABEL_6;
  }

  v39 = sub_100743A34();

  v40 = v102;
  if (v39)
  {
    return 2;
  }

LABEL_7:
  sub_100747BB4();
  sub_10000C8CC(v20, &unk_10093D6E0, &unk_1007A6080);
  sub_100066578(v23, v26, &unk_10093D6E0, &unk_1007A6080);
  if (v37(v26, 1, v3) != 1)
  {
    swift_getKeyPath();
    v45 = v93;
    sub_1007525B4();

    v46 = *(v101 + 8);
    v46(v26, v3);
    v47 = v97;
    v48 = v99;
    v49 = v45;
    v50 = v96;
    (*(v97 + 32))(v99, v49, v96);
    v51 = v94;
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v46(v51, v3);
    v52 = v95[12];
    v53 = v47[2];
    v54 = v98;
    v53(v98, v40, v50);
    v101 = v52;
    v53(&v54[v52], v48, v50);
    v55 = v47[11];
    v56 = v55(v54, v50);
    if (v56 == enum case for ShelfBackground.color(_:))
    {
      v57 = v56;
      v58 = v91;
      v53(v91, v54, v50);
      v59 = v47;
      v60 = v58;
      v93 = v59[12];
      (v93)(v58, v50);
      v95 = *v58;
      v61 = sub_10000C518(&unk_100930940, qword_1007A9000);
      v94 = *(v61 + 48);
      if (v55(&v54[v101], v50) == v57)
      {
        v62 = v94;
        v63 = v90;
        v53(v90, &v98[v101], v50);
        (v93)(v63, v50);
        v64 = *v63;
        v65 = *(v61 + 48);
        v66 = sub_100747B94();
        v67 = v95;
        v68 = [v95 resolvedColorWithTraitCollection:v66];

        v69 = sub_100747B94();
        v70 = [v64 resolvedColorWithTraitCollection:v69];

        sub_10000D198();
        LOBYTE(v69) = sub_100753FC4();

        if ((v69 & 1) == 0)
        {
          v86 = *(v97 + 8);
          v86(v102, v50);
          v86(v99, v50);
          v87 = sub_100748E34();
          v88 = *(*(v87 - 8) + 8);
          v88(v63 + v65, v87);
          v88(&v62[v91], v87);
          v89 = v98;
          v86(&v98[v101], v50);
          v86(v89, v50);
          return 2;
        }

        v71 = sub_100748E34();
        v72 = *(*(v71 - 8) + 8);
        v72(v63 + v65, v71);
        v72(&v62[v91], v71);
      }

      else
      {
        v73 = sub_100748E34();
        (*(*(v73 - 8) + 8))(&v94[v60], v73);
      }

      v47 = v97;
      v54 = v98;
    }

    v74 = enum case for ShelfBackground.none(_:);
    v75 = v47[13];
    v76 = v92;
    v75(v92, enum case for ShelfBackground.none(_:), v50);
    v100 = sub_10034B8E4();
    v77 = sub_100753014();
    v78 = v47[1];
    v78(v76, v50);
    if ((v77 & 1) == 0)
    {
      v75(v76, v74, v50);
      v79 = sub_1007457A4();
      v78(v76, v50);
      if (v79)
      {
        v78(v102, v50);
        v78(v99, v50);
        v80 = v101;
LABEL_20:
        v78(&v54[v80], v50);
        v78(v54, v50);
        return 2;
      }
    }

    v81 = v75;
    v75(v76, v74, v50);
    v82 = v102;
    v83 = sub_1007457A4();
    v78(v76, v50);
    if (v83)
    {
      v81(v76, v74, v50);
      v84 = v99;
      v85 = sub_100753014();
      v78(v76, v50);
      v78(v82, v50);
      v78(v84, v50);
      v80 = v101;
      if ((v85 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v78(v82, v50);
      v78(v99, v50);
    }

    v42 = &qword_10093A8D0;
    v43 = qword_1007C5DF0;
    v44 = v54;
    goto LABEL_23;
  }

  v42 = &unk_10093D6E0;
  v43 = &unk_1007A6080;
  v44 = v26;
LABEL_23:
  sub_10000C8CC(v44, v42, v43);
  return 0;
}

uint64_t sub_1004CA0B4(uint64_t a1)
{
  v2 = sub_10000C518(&unk_10093D6E0, &unk_1007A6080);
  __chkstk_darwin(v2 - 8);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v36 = &v32 - v5;
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = sub_10074E984();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v33 = &v32 - v12;
  v13 = sub_1007439C4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v32 - v19;
  v38 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v21 = *(v18 + 8);
  v21(v20, v17);
  if (v39 && (sub_1007439D4(), , v22 = sub_1007439A4(), (*(v14 + 8))(v16, v13), (v22 & 1) == 0))
  {
    v25 = 0;
  }

  else
  {
    v24 = v36;
    v23 = v37;
    sub_100747BB4();
    sub_10000C8CC(v23, &unk_10093D6E0, &unk_1007A6080);
    sub_100066578(v24, v8, &unk_10093D6E0, &unk_1007A6080);
    if ((*(v18 + 48))(v8, 1, v17) == 1)
    {
      sub_10000C8CC(v8, &unk_10093D6E0, &unk_1007A6080);
      v25 = 1;
    }

    else
    {
      swift_getKeyPath();
      v26 = v32;
      sub_1007525B4();

      v21(v8, v17);
      v28 = v33;
      v27 = v34;
      v29 = v35;
      (*(v34 + 32))(v33, v26, v35);
      if (qword_100920D60 != -1)
      {
        swift_once();
      }

      v30 = sub_1002A5418(v28, qword_10093A8C8);
      (*(v27 + 8))(v28, v29);
      v25 = v30 ^ 1;
    }
  }

  return v25 & 1;
}

double sub_1004CA51C()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  result = 1.0 / v2;
  *&qword_100980620 = 1.0 / v2;
  return result;
}

uint64_t sub_1004CA5A8(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_100750304();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100750B04();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DividerView.Style(0);
  sub_100039C50(v12, a3);
  v13 = sub_10000D0FC(v12, a3);
  *v7 = UIFontTextStyleBody;
  (*(v5 + 104))(v7, enum case for FontSource.textStyle(_:), v4);
  v19[3] = v4;
  v19[4] = &protocol witness table for FontSource;
  v14 = sub_10000D134(v19);
  (*(v5 + 16))(v14, v7, v4);
  v15 = UIFontTextStyleBody;
  sub_100750B14();
  (*(v5 + 8))(v7, v4);
  v16 = *&UIEdgeInsetsZero.bottom;
  *v13 = *&UIEdgeInsetsZero.top;
  *(v13 + 1) = v16;
  return (*(v9 + 32))(&v13[*(v12 + 20)], v11, v8);
}

char *sub_1004CA7D4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_separatorInset];
  v11 = *&UIEdgeInsetsZero.bottom;
  *v10 = *&UIEdgeInsetsZero.top;
  *(v10 + 1) = v11;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension11DividerView_style;
  if (qword_100920D70 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for DividerView.Style(0);
  v14 = sub_10000D0FC(v13, qword_100980628);
  sub_1001154F8(v14, &v4[v12]);
  v15 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_separatorView] = v15;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension11DividerView_separatorView;
  v18 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_separatorView];
  sub_10000D198();
  v19 = v16;
  v20 = v18;
  v21 = sub_100753DB4();
  [v20 setBackgroundColor:v21];

  [v19 addSubview:*&v16[v17]];
  return v19;
}

id sub_1004CAC3C()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (qword_100920D68 != -1)
  {
    swift_once();
  }

  v9 = *&qword_100980620;
  v10 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_separatorView];
  v17.origin.x = v2;
  v17.origin.y = v4;
  v17.size.width = v6;
  v17.size.height = v8;
  MinX = CGRectGetMinX(v17);
  v12 = &v0[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_separatorInset];
  v13 = MinX + v12[1];
  v18.origin.x = v2;
  v18.origin.y = v4;
  v18.size.width = v6;
  v18.size.height = v8;
  v14 = CGRectGetMidY(v18) + v9 * -0.5;
  v19.origin.x = v2;
  v19.origin.y = v4;
  v19.size.width = v6;
  v19.size.height = v8;
  return [v10 setFrame:{v13, v14, CGRectGetWidth(v19) - v12[1] - v12[3], v9}];
}

uint64_t sub_1004CAE44(uint64_t a1)
{
  result = type metadata accessor for DividerView.Style(319);
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

uint64_t sub_1004CAF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_100750B04();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1004CAFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_100750B04();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_1004CB028(uint64_t a1)
{
  type metadata accessor for UIEdgeInsets(319);
  if (v1 <= 0x3F)
  {
    sub_100750B04();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_1004CB0AC(uint64_t a1, uint64_t a2)
{
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920D68 != -1)
  {
    swift_once();
  }

  v6 = floor(*&qword_100980620);
  type metadata accessor for DividerView.Style(0);
  sub_1007502D4();
  sub_100750B04();
  sub_100750564();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  return v6 + v8;
}

char *sub_1004CB1F8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - v12;
  sub_100741254();
  v14 = sub_100741264();
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v17 = objc_allocWithZone(LPLinkView);
    sub_100741204(v18);
    v20 = v19;
    v21 = [v17 initWithURL:v19];

    (*(v15 + 8))(v13, v14);
    *&v5[OBJC_IVAR____TtC22SubscribePageExtension20PresentationLinkView_linkView] = v21;
    v28.receiver = v5;
    v28.super_class = ObjectType;
    v22 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v26 = v22;
    [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
    v27 = OBJC_IVAR____TtC22SubscribePageExtension20PresentationLinkView_linkView;
    [*&v26[OBJC_IVAR____TtC22SubscribePageExtension20PresentationLinkView_linkView] _setApplyCornerRadius:1];
    [*&v26[v27] _setDisableAnimations:1];
    [*&v26[v27] _setDisableTapGesture:1];
    [*&v26[v27] _setForceFlexibleWidth:1];
    [v26 addSubview:*&v26[v27]];

    return v26;
  }

  return result;
}

uint64_t sub_1004CB608(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1007417F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1004CB6C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1007417F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ComponentOverflowData(uint64_t a1)
{
  result = qword_10093AA38;
  if (!qword_10093AA38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1004CB7B8(uint64_t a1)
{
  result = sub_100032B70();
  if (v2 <= 0x3F)
  {
    result = sub_1007417F4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004CB84C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10074E984();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v9 + 8))(v11, v8);
  result = (*(v5 + 88))(v7, v4);
  if (result == enum case for Shelf.ContentType.appTrailerLockup(_:))
  {
    *(a2 + 24) = &type metadata for Double;
    *(a2 + 32) = &protocol witness table for Double;
    *a2 = 0x4040000000000000;
  }

  else
  {
    sub_10031E808(a1, a2);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1004CBA50()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_100980660);
  sub_10000D0FC(v4, qword_100980660);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000D134(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

char *sub_1004CBBBC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension34SmallLockupCollectionViewTableCell_lockupView;
  type metadata accessor for SmallLockupView(0);
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for SmallLockupCollectionViewTableCell();
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v11 = [v10 contentView];
  [v11 setPreservesSuperviewLayoutMargins:0];

  v12 = [v10 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = [v10 contentView];
  [v13 addSubview:*&v10[OBJC_IVAR____TtC22SubscribePageExtension34SmallLockupCollectionViewTableCell_lockupView]];

  return v10;
}

id sub_1004CBDBC()
{
  v1 = v0;
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SmallLockupCollectionViewTableCell();
  v22.receiver = v0;
  v22.super_class = v6;
  objc_msgSendSuper2(&v22, "layoutSubviews");
  v7 = [v0 contentView];
  sub_100009D34();
  sub_1007477B4();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34SmallLockupCollectionViewTableCell_lockupView];
  [v14 intrinsicContentSize];
  v16 = v15;
  if (qword_100920D80 != -1)
  {
    swift_once();
  }

  v17 = sub_100750B04();
  sub_10000D0FC(v17, qword_100980660);
  v18 = [v1 traitCollection];
  sub_1007502D4();
  sub_100750AD4();
  v20 = v19;

  (*(v3 + 8))(v5, v2);
  return [v14 setFrame:{v9, v11 + v20, v13, v16}];
}

id sub_1004CC004(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SmallLockupCollectionViewTableCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1004CC08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013ABB0(a1, a2, a3, WitnessTable);
}

void sub_1004CC0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013AE68(a1, a2, a3, WitnessTable);
}

unint64_t sub_1004CC164(uint64_t a1)
{
  result = sub_1004CC18C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004CC18C()
{
  result = qword_10093AAA0;
  if (!qword_10093AAA0)
  {
    type metadata accessor for SmallLockupCollectionViewTableCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093AAA0);
  }

  return result;
}

uint64_t sub_1004CC248(double a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v8 = sub_100750304();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920DA8 != -1)
  {
    swift_once();
  }

  v12 = sub_100750534();
  v13 = sub_10000D0FC(v12, qword_10093AB50);
  (*(*(v12 - 8) + 16))(v11, v13, v12);
  (*(v9 + 104))(v11, enum case for FontSource.useCase(_:), v8);
  *a3 = sub_100750B04();
  *a4 = &protocol witness table for StaticDimension;
  sub_10000D134(a5);
  v17[3] = v8;
  v17[4] = &protocol witness table for FontSource;
  v14 = sub_10000D134(v17);
  (*(v9 + 16))(v14, v11, v8);
  sub_100750B14();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1004CC434()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_10093AB50);
  v1 = sub_10000D0FC(v0, qword_10093AB50);
  if (qword_1009214A0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D0FC(v0, qword_100981B18);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004CC564(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for GenericAccountPageViewController();
  objc_msgSendSuper2(&v22, "viewDidLoad");
  v4 = [v2 navigationItem];
  [v4 setLargeTitleDisplayMode:2];

  v5 = [v3 navigationItem];
  sub_10074C2B4();
  if (v6)
  {
    v7 = sub_100753064();
  }

  else
  {
    v7 = 0;
  }

  [v5 setTitle:v7];

  sub_1004D1894(&qword_10093AC48, v8, type metadata accessor for GenericAccountPageViewController, &unk_1007C6170);
  swift_unknownObjectRetain();
  sub_10074C294();
  [v3 setViewRespectsSystemMinimumLayoutMargins:0];
  result = [v3 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v10 = result;
  [result setLayoutMargins:{0.0, 16.0, 0.0, 16.0}];

  result = [v3 tableView];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = result;
  [result setAlwaysBounceVertical:1];

  result = [v3 tableView];
  if (!result)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v12 = result;
  sub_100016C60(0, &unk_10093AC50, UITableViewCell_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v14)
  {
    sub_100753094();
    v14 = sub_100753064();
  }

  [v12 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v14];

  result = [v3 tableView];
  if (!result)
  {
    goto LABEL_20;
  }

  v15 = result;
  type metadata accessor for LinkableFooterView();
  v16 = swift_getObjCClassFromMetadata();
  v17 = NSStringFromClass(v16);
  if (!v17)
  {
    sub_100753094();
    v17 = sub_100753064();
  }

  [v15 registerClass:v16 forHeaderFooterViewReuseIdentifier:v17];

  result = [v3 tableView];
  if (!result)
  {
    goto LABEL_21;
  }

  v18 = result;
  _s22SubscribePageExtension10HeaderViewCMa_0();
  v19 = swift_getObjCClassFromMetadata();
  v20 = NSStringFromClass(v19);
  if (!v20)
  {
    sub_100753094();
    v20 = sub_100753064();
  }

  [v18 registerClass:v19 forHeaderFooterViewReuseIdentifier:v20];

  result = [v3 tableView];
  if (result)
  {
    v21 = result;
    [result setRowHeight:UITableViewAutomaticDimension];

    return sub_100744314();
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_1004CCAE4(uint64_t a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for GenericAccountPageViewController();
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_overlayViewController];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 view];
    if (v4)
    {
      v5 = v4;
      v6 = [v1 view];
      if (v6)
      {
        v7 = v6;
        [v6 bounds];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;

        [v5 setFrame:{v9, v11, v13, v15}];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1004CCC8C(void *a1)
{
  v2 = v1;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for GenericAccountPageViewController();
  objc_msgSendSuper2(&v16, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_1007537F4();

  if (!a1 || ((sub_1007537F4() ^ v5) & 1) != 0)
  {
    goto LABEL_3;
  }

  v8 = [v2 traitCollection];
  v9 = [v8 preferredContentSizeCategory];

  v10 = [a1 preferredContentSizeCategory];
  v11 = sub_100753094();
  v13 = v12;
  if (v11 == sub_100753094() && v13 == v14)
  {

    return;
  }

  v15 = sub_100754754();

  if ((v15 & 1) == 0)
  {
LABEL_3:
    v6 = [v2 tableView];
    if (v6)
    {
      v7 = v6;
      [v6 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

char *sub_1004CCF38(void *a1, uint64_t a2)
{
  v4 = sub_100747294();
  v119 = *(v4 - 8);
  v120 = v4;
  __chkstk_darwin(v4);
  v117 = v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v118 = v114 - v7;
  v8 = sub_1007472C4();
  v122 = *(v8 - 1);
  v123 = v8;
  __chkstk_darwin(v8);
  v121 = v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100754724();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v11 = v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_10093AC30, qword_1007C61A8);
  __chkstk_darwin(v12 - 8);
  v14 = v114 - v13;
  v15 = sub_100744B34();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v114 - v20;
  v114[1] = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_presenter];
  sub_10074C234();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    goto LABEL_74;
  }

  v124 = v16;
  v125 = v15;
  v22.n128_f64[0] = (*(v16 + 32))(v21, v14, v15);
  v129 = v21;
  v23 = sub_1004CE2D8(v21, v22);
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_100920DA8 != -1)
  {
    swift_once();
  }

  v126 = v2;
  v24 = sub_100750534();
  sub_10000D0FC(v24, qword_10093AB50);
  v127 = a1;
  v25 = [a1 traitCollection];
  v26 = sub_100753C14();

  v27 = [v23 textLabel];
  if (v27)
  {
    v28 = v27;
    [v27 setFont:v26];
  }

  v128 = v26;
  v29 = [v23 textLabel];
  if (v29)
  {
    v30 = v29;
    [v29 setNumberOfLines:0];
  }

  v31 = [v23 textLabel];
  if (v31)
  {
    v32 = v31;
    [v31 setLineBreakMode:0];
  }

  v33 = [v23 textLabel];
  if (v33)
  {
    v34 = v33;
    v35 = [objc_opt_self() labelColor];
    [v34 setTextColor:v35];
  }

  v36 = [v23 detailTextLabel];
  if (v36)
  {
    v37 = v36;
    [v36 setFont:v128];
  }

  v38 = [v23 detailTextLabel];
  if (v38)
  {
    v39 = v38;
    [v38 setNumberOfLines:0];
  }

  v40 = [v23 detailTextLabel];
  if (v40)
  {
    v41 = v40;
    [v40 setLineBreakMode:0];
  }

  v42 = [v23 detailTextLabel];
  v43 = v126;
  if (v42)
  {
    v44 = v42;
    v45 = [objc_opt_self() labelColor];
    [v44 setTextColor:v45];
  }

  [v23 setAccessoryType:0];
  [v23 setAccessoryView:0];
  v14 = v23;
  [v14 setUserInteractionEnabled:0];
  if (qword_100920D90 != -1)
  {
    swift_once();
  }

  v46 = qword_10093AAF0;
  sub_10000C888(qword_10093AAD8, qword_10093AAF0);
  sub_100536120(v46);
  sub_100750564();
  v48 = v47;
  (*(v115 + 8))(v11, v116);
  v49 = v127;
  [v127 layoutMargins];
  v51 = v50;
  [v49 layoutMargins];
  [v14 setLayoutMargins:{v48, v51, v48}];
  v53 = v124;
  v52 = v125;
  (*(v124 + 16))(v18, v129, v125);
  v54 = (*(v53 + 88))(v18, v52);
  if (v54 == enum case for AccountSection.ContentItem.link(_:))
  {
    (*(v53 + 96))(v18, v52);
    (*(v122 + 32))(v121, v18, v123);
    v55 = [v14 textLabel];
    if (v55)
    {
      v56 = v55;
      sub_1007472B4();
      v57 = sub_100753064();

      [v56 setText:v57];
    }

    sub_1007472A4();
    (*(v119 + 104))(v117, enum case for AccountSectionLink.LinkDisplayType.navigation(_:), v120);
    sub_1004D1894(&qword_10093AC38, 255, &type metadata accessor for AccountSectionLink.LinkDisplayType, &protocol conformance descriptor for AccountSectionLink.LinkDisplayType);
    sub_100753274();
    sub_100753274();
    v58 = &selRef_initWithTitle_style_target_action_;
    if (aBlock == v136 && v131 == v137)
    {
      v59 = v120;
      v60 = *(v119 + 8);
      v60(v117, v120);
      v60(v118, v59);
    }

    else
    {
      v71 = sub_100754754();
      v72 = *(v119 + 8);
      v73 = v52;
      v74 = v43;
      v75 = v120;
      v72(v117, v120);
      v76 = v75;
      v43 = v74;
      v52 = v73;
      v58 = &selRef_initWithTitle_style_target_action_;
      v72(v118, v76);

      if ((v71 & 1) == 0)
      {
        v91 = [v14 textLabel];
        v77 = &selRef_initWithTitle_style_target_action_;
        if (v91)
        {
          v92 = v91;
          v93 = [v127 tintColor];
          [v92 setTextColor:v93];
        }

        goto LABEL_37;
      }
    }

    [v14 setAccessoryType:1];
    v77 = &selRef_initWithTitle_style_target_action_;
LABEL_37:
    [v14 v77[112]];

    (*(v122 + 8))(v121, v123);
LABEL_60:
    v67 = &selRef_initWithAdamID_cppIDs_serverCppID_adData_instanceID_;
    goto LABEL_61;
  }

  if (v54 != enum case for AccountSection.ContentItem.infoListItem(_:))
  {
    if (v54 != enum case for AccountSection.ContentItem.text(_:))
    {
      if (v54 == enum case for AccountSection.ContentItem.personalizedRecommendationsToggle(_:))
      {
        (*(v53 + 96))(v18, v52);
        v94 = *(v18 + 1);
        v95 = v18[16];
        sub_100016C60(0, &qword_100929CC0, UIAction_ptr);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v96 = sub_100753FF4();
        v97 = [objc_allocWithZone(UISwitch) initWithFrame:v96 primaryAction:{0.0, 0.0, 0.0, 0.0}];

        v98 = sub_10074C274();
        if (v98 == 2)
        {
          v99 = v95;
        }

        else
        {
          v99 = v98;
        }

        [v97 setOn:v99 & 1];
        [v14 setAccessoryView:v97];
        v100 = [v14 textLabel];
        if (v100)
        {
          v101 = v100;
          v58 = &selRef_initWithTitle_style_target_action_;
          if (v94)
          {
            v102 = sub_100753064();
          }

          else
          {
            v102 = 0;
          }

          [v101 setText:v102];
        }

        else
        {

          v58 = &selRef_initWithTitle_style_target_action_;
        }

        [v14 setUserInteractionEnabled:1];

        goto LABEL_60;
      }

      (*(v53 + 8))(v18, v52);
      goto LABEL_55;
    }

    (*(v53 + 96))(v18, v52);
    v78 = [v14 textLabel];
    v67 = &selRef_initWithAdamID_cppIDs_serverCppID_adData_instanceID_;
    if (v78)
    {
      v79 = v78;
      v80 = [objc_opt_self() secondaryLabelColor];
      [v79 setTextColor:v80];
    }

    v81 = [v14 textLabel];
    v58 = &selRef_initWithTitle_style_target_action_;
    if (!v81)
    {
      goto LABEL_44;
    }

    v123 = v81;
    sub_1007472D4();
    v82 = sub_10074F914();

    v83 = [v127 traitCollection];
    v84 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v82];
    v127 = [v82 length];
    v85 = swift_allocObject();
    *(v85 + 16) = 0;
    *(v85 + 24) = v83;
    *(v85 + 32) = v84;
    *(v85 + 40) = 1;
    v86 = swift_allocObject();
    *(v86 + 16) = sub_100047814;
    *(v86 + 24) = v85;
    v134 = sub_1000B18A8;
    v135 = v86;
    aBlock = _NSConcreteStackBlock;
    v131 = 1107296256;
    v132 = sub_100047044;
    v133 = &unk_100878918;
    v87 = _Block_copy(&aBlock);
    v88 = v83;
    v89 = v84;

    [v82 enumerateAttributesInRange:0 options:v127 usingBlock:{0x100000, v87}];

    _Block_release(v87);
    LOBYTE(v87) = swift_isEscapingClosureAtFileLocation();

    if ((v87 & 1) == 0)
    {
      v90 = v123;
      [v123 setAttributedText:v89];

      v52 = v125;
      v43 = v126;
      v53 = v124;
LABEL_55:
      v58 = &selRef_initWithTitle_style_target_action_;
      goto LABEL_60;
    }

    __break(1u);
LABEL_74:
    sub_10000C8CC(v14, &qword_10093AC30, qword_1007C61A8);
    result = sub_100754644();
    __break(1u);
    return result;
  }

  (*(v53 + 96))(v18, v52);
  v61 = [v14 textLabel];
  if (v61)
  {
    v62 = v61;
    sub_10074B994();
    v63 = sub_100753064();

    [v62 setText:v63];
  }

  v64 = [v14 textLabel];
  v58 = &selRef_initWithTitle_style_target_action_;
  if (v64)
  {
    v65 = v64;
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v66 = sub_100753DF4();
    [v65 setTextColor:v66];
  }

  v67 = &selRef_initWithAdamID_cppIDs_serverCppID_adData_instanceID_;
  v68 = [v14 detailTextLabel];
  if (v68)
  {
    v69 = v68;
    sub_10074B9A4();
    v70 = sub_100753064();

    [v69 setText:v70];

    v67 = &selRef_initWithAdamID_cppIDs_serverCppID_adData_instanceID_;
  }

LABEL_44:

LABEL_61:
  v103 = [v14 textLabel];
  if (v103)
  {
    v104 = v103;
    v105 = [v43 v58[129]];
    v106 = sub_1007537F4();

    if (v106)
    {
      v107 = 2;
    }

    else
    {
      v107 = 0;
    }

    [v104 setTextAlignment:v107];
  }

  v108 = [v14 v67[425]];
  if (v108)
  {
    v109 = v108;
    v110 = [v43 v58[129]];
    v111 = sub_1007537F4();

    if (v111)
    {
      v112 = 2;
    }

    else
    {
      v112 = 0;
    }

    [v109 setTextAlignment:v112];

    (*(v53 + 8))(v129, v52);
  }

  else
  {
    (*(v53 + 8))(v129, v52);
  }

  return v14;
}

void sub_1004CE094(void *a1, uint64_t a2)
{
  if ([a1 sender])
  {
    sub_100754314();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100016C60(0, &qword_10093AC40, UISwitch_ptr);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = Strong;

        [v4 isOn];
        sub_10074C284();
      }
    }
  }

  else
  {
    sub_10000C8CC(v7, &unk_100923520, &qword_1007A5A70);
  }
}

id sub_1004CE2D8(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_100744B34();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v7);
  if ((*(v6 + 88))(v9, v5) == enum case for AccountSection.ContentItem.infoListItem(_:))
  {
    (*(v6 + 8))(v9, v5);
    result = [v3 tableView];
    if (result)
    {
      v11 = result;
      v12 = sub_100753064();
      v13 = [v11 dequeueReusableCellWithIdentifier:v12];

      if (!v13)
      {
        v14 = objc_allocWithZone(UITableViewCell);
        v15 = sub_100753064();
        v13 = [v14 initWithStyle:1 reuseIdentifier:v15];
      }

      return v13;
    }

    __break(1u);
  }

  else
  {
    result = [v3 tableView];
    if (result)
    {
      v16 = result;
      v17 = sub_100753064();
      v13 = [v16 dequeueReusableCellWithIdentifier:v17];

      if (!v13)
      {
        v18 = objc_allocWithZone(UITableViewCell);
        v19 = sub_100753064();
        v13 = [v18 initWithStyle:0 reuseIdentifier:v19];
      }

      (*(v6 + 8))(v9, v5);
      return v13;
    }
  }

  __break(1u);
  return result;
}

id sub_1004CE598(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  (a5)(0, a2, a3, a4);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = a3;
  v9 = a1;
  v10 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v10)
  {
    sub_100753094();
    v10 = sub_100753064();
  }

  v11 = [v8 dequeueReusableHeaderFooterViewWithIdentifier:v10];

  return v11;
}

void sub_1004CE658(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100754724();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = sub_10074C2A4();
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      if (qword_100920DA0 != -1)
      {
        swift_once();
      }

      v14 = qword_10093AB40;
      sub_10000C888(qword_10093AB28, qword_10093AB40);
      sub_100536120(v14);
      sub_100750564();
      (*(v7 + 8))(v9, v6);
      [a1 layoutMargins];
      [a1 layoutMargins];
      v15 = [v3 tableView];
      if (v15)
      {
        v16 = v15;
        [v15 layoutMargins];

        v17 = [v3 tableView];
        if (v17)
        {
          v18 = v17;
          [v17 layoutMargins];

          [a1 frame];
          CGRectGetWidth(v20);
          sub_1004D10D8(v12, v13, a1);

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

void sub_1004CE91C(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_100754724();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s22SubscribePageExtension10HeaderViewCMa_0();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v34 = a2;
    v12 = sub_10074C2A4();
    if (v13)
    {
      v32[1] = v12;
      v33 = v3;
      v14 = qword_100920DA0;
      v15 = v34;
      if (v14 != -1)
      {
        swift_once();
      }

      v16 = qword_10093AB40;
      sub_10000C888(qword_10093AB28, qword_10093AB40);
      sub_100536120(v16);
      sub_100750564();
      v18 = v17;
      (*(v7 + 8))(v9, v6);
      [a1 layoutMargins];
      v20 = v19;
      [a1 layoutMargins];
      [v11 setLayoutMargins:{0.0, v20, v18}];

      v21 = v15;
      v22 = [v11 textLabel];
      if (v22)
      {
        v23 = v22;
        v24 = sub_100753064();

        [v23 setText:v24];
      }

      else
      {
      }

      v28 = [v11 textLabel];

      if (v28)
      {
        v29 = [v33 traitCollection];
        v30 = sub_1007537F4();

        if (v30)
        {
          v31 = 2;
        }

        else
        {
          v31 = 0;
        }

        [v28 setTextAlignment:v31];
      }
    }

    else
    {
      v25 = [v11 textLabel];
      if (v25)
      {
        v26 = v25;
        [v25 setText:0];
      }

      v27 = v34;
    }
  }
}

uint64_t sub_1004CECD8(void *a1, uint64_t a2)
{
  v5 = sub_100747294();
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin(v5);
  v68 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = v66 - v8;
  v9 = sub_1007472C4();
  v73 = *(v9 - 8);
  v74 = v9;
  __chkstk_darwin(v9);
  v72 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&qword_10093AC30, qword_1007C61A8);
  __chkstk_darwin(v11 - 8);
  v13 = v66 - v12;
  v14 = sub_100744B34();
  v15 = *(v14 - 8);
  v79 = v14;
  v80 = v15;
  __chkstk_darwin(v14);
  v67 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v75 = v66 - v18;
  v19 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v19 - 8);
  v21 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v66 - v23;
  v25 = sub_100752294();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = (v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = v2;
  v78 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_presenter);
  result = sub_10074C2C4();
  if (result)
  {
    v76 = result;
    v66[1] = a2;
    v30.super.isa = sub_100741704().super.isa;
    v31 = a1;
    isa = v30.super.isa;
    v66[0] = v31;
    v33 = [v31 cellForRowAtIndexPath:v30.super.isa];

    if (v33)
    {
      v34 = v33;
      [v34 bounds];
      LOBYTE(v101[0]) = 1;
      *&v83 = v33;
      *(&v83 + 1) = v35;
      *&v84 = v36;
      *(&v84 + 1) = v37;
      *&v85 = v38;
      BYTE8(v85) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v86 = _Q0;
      v87 = _Q0;
      v88 = 15;
      sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
      *v28 = sub_100753774();
      (*(v26 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v25);
      v44 = sub_1007522C4();
      result = (*(v26 + 8))(v28, v25);
      if ((v44 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v91 = xmmword_100931330;
      v92 = xmmword_100931340;
      v93 = xmmword_100931350;
      v89 = xmmword_100931310;
      v90 = xmmword_100931320;
      v97 = v85;
      v98 = v86;
      v99 = v87;
      v95 = v83;
      v96 = v84;
      v101[0] = xmmword_100931310;
      v101[1] = xmmword_100931320;
      v101[3] = xmmword_100931340;
      v101[4] = xmmword_100931350;
      v94 = qword_100931360;
      v100 = v88;
      v102 = qword_100931360;
      v101[2] = xmmword_100931330;
      sub_100173514(&v89, v81);
      xmmword_100931330 = v97;
      xmmword_100931340 = v98;
      xmmword_100931350 = v99;
      qword_100931360 = v100;
      xmmword_100931310 = v95;
      xmmword_100931320 = v96;
      sub_10000C8CC(v101, &unk_1009308C0, &unk_1007A8BB0);
      v45 = *(v77 + OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_objectGraph);
      v46 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
      sub_1001664D8(&v83, v81);
      sub_1007526C4();
      v47 = *(v46 - 8);
      if ((*(v47 + 48))(v24, 1, v46) == 1)
      {
        sub_10000C8CC(v24, &unk_100923960, &qword_1007A6240);
      }

      else
      {

        sub_1003C0E00(v53, 1, v45, v24);

        (*(v47 + 8))(v24, v46);
      }

      v81[2] = xmmword_100931330;
      v81[3] = xmmword_100931340;
      v81[4] = xmmword_100931350;
      v82 = qword_100931360;
      v81[0] = xmmword_100931310;
      v81[1] = xmmword_100931320;
      xmmword_100931310 = v89;
      xmmword_100931320 = v90;
      xmmword_100931330 = v91;
      xmmword_100931340 = v92;
      xmmword_100931350 = v93;
      qword_100931360 = v94;
      sub_10000C8CC(v81, &unk_1009308C0, &unk_1007A8BB0);
      sub_100166534(&v83);

      v54 = v79;
      v52 = v80;
    }

    else
    {
      v48 = *(v77 + OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_objectGraph);
      v49 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
      sub_1007526C4();
      v50 = *(v49 - 8);
      v51 = (*(v50 + 48))(v21, 1, v49);
      v52 = v80;
      if (v51 == 1)
      {
        sub_10000C8CC(v21, &unk_100923960, &qword_1007A6240);
      }

      else
      {

        sub_1003C0E00(v55, 1, v48, v21);

        (*(v50 + 8))(v21, v49);
      }

      v54 = v79;
    }

    sub_10074C234();
    if ((*(v52 + 48))(v13, 1, v54) == 1)
    {

      return sub_10000C8CC(v13, &qword_10093AC30, qword_1007C61A8);
    }

    v56 = v75;
    (*(v52 + 32))();
    v57 = v67;
    (*(v52 + 16))(v67, v56, v54);
    if ((*(v52 + 88))(v57, v54) != enum case for AccountSection.ContentItem.link(_:))
    {
      v61 = *(v52 + 8);
      v61(v56, v54);

      return (v61)(v57, v54);
    }

    (*(v52 + 96))(v57, v54);
    (*(v73 + 32))(v72, v57, v74);
    sub_1007472A4();
    (*(v70 + 104))(v68, enum case for AccountSectionLink.LinkDisplayType.action(_:), v71);
    sub_1004D1894(&qword_10093AC38, 255, &type metadata accessor for AccountSectionLink.LinkDisplayType, &protocol conformance descriptor for AccountSectionLink.LinkDisplayType);
    sub_100753274();
    sub_100753274();
    if (v101[0] == v95)
    {
      v58 = v71;
      v59 = *(v70 + 8);
      v59(v68, v71);
      v59(v69, v58);
      v56 = v75;

      v60 = v66[0];
    }

    else
    {
      v62 = sub_100754754();
      v63 = v71;
      v64 = *(v70 + 8);
      v64(v68, v71);
      v64(v69, v63);
      v52 = v80;

      v60 = v66[0];
      if ((v62 & 1) == 0)
      {

        goto LABEL_21;
      }
    }

    v65 = sub_100741704().super.isa;
    [v60 deselectRowAtIndexPath:v65 animated:1];

LABEL_21:
    (*(v73 + 8))(v72, v74);
    return (*(v52 + 8))(v56, v54);
  }

  return result;
}

void sub_1004CF84C(void *a1, uint64_t a2)
{
  sub_1004CFC78(a1, a2);
  v4 = [v2 tableView];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  [v4 layoutMargins];

  v6 = [v2 tableView];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 layoutMargins];

  if (sub_10074C2D4())
  {
    [a1 frame];
    CGRectGetWidth(v10);
    v8 = sub_100743E84();
    sub_1004D13FC(v8, v9, a1);
  }
}

void sub_1004CF9F4(void *a1, void *a2, uint64_t a3)
{
  type metadata accessor for LinkableFooterView();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = a2;
    if (sub_10074C2D4())
    {
      v10 = v9;
      [v8 setLayoutMargins:{sub_1004CFC78(a1, a3)}];

      v11 = OBJC_IVAR____TtC22SubscribePageExtensionP33_59D788B89EC47DDFEEBB94FF9EFA27D718LinkableFooterView_linkedLabel;
      v12 = *&v8[OBJC_IVAR____TtC22SubscribePageExtensionP33_59D788B89EC47DDFEEBB94FF9EFA27D718LinkableFooterView_linkedLabel];
      v13 = sub_100743EA4();
      sub_1001D3738(v13, sub_1000E12F0);
      v15 = v14;

      v16 = sub_100743E94();
      sub_10004DF04(v16, 0, v15);

      v19 = *&v8[v11];
      v17 = [v3 traitCollection];
      LOBYTE(v15) = sub_1007537F4();

      if (v15)
      {
        v18 = 2;
      }

      else
      {
        v18 = 0;
      }

      [v19 setTextAlignment:v18];
    }

    else
    {
      v19 = *&v8[OBJC_IVAR____TtC22SubscribePageExtensionP33_59D788B89EC47DDFEEBB94FF9EFA27D718LinkableFooterView_linkedLabel];
      sub_10004E1D8();
    }
  }
}

double sub_1004CFC78(void *a1, uint64_t a2)
{
  v5 = sub_100754724();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074C264();
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_8;
  }

  if (v9 - 1 == a2)
  {
    v15[1] = 0x4041800000000000;
    sub_1007502D4();
  }

  else
  {
    if (qword_100920D88 != -1)
    {
      swift_once();
    }

    v10 = qword_10093AAC8;
    sub_10000C888(qword_10093AAB0, qword_10093AAC8);
    sub_100536120(v10);
  }

  sub_100750564();
  v2 = *(v6 + 8);
  v2(v8, v5);
  if (qword_100920D98 != -1)
  {
    goto LABEL_10;
  }

LABEL_8:
  v11 = qword_10093AB18;
  sub_10000C888(qword_10093AB00, qword_10093AB18);
  sub_100536120(v11);
  sub_100750564();
  v13 = v12;
  v2(v8, v5);
  [a1 layoutMargins];
  [a1 layoutMargins];
  return v13;
}

void sub_1004CFEF0()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  sub_10074C2B4();
  if (v3)
  {
    v4 = sub_100753064();
  }

  else
  {
    v4 = 0;
  }

  [v2 setTitle:v4];

  v5 = [v1 tableView];
  if (v5)
  {
    v6 = v5;
    [v5 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_1004CFFCC()
{
  v1 = v0;
  v2 = sub_100750FA4();
  __chkstk_darwin(v2 - 8);
  if (sub_10074C264())
  {
    v3 = OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_overlayViewController;
    v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_overlayViewController];
    sub_10074B974();

    v5 = *&v0[v3];
    *&v0[v3] = 0;

    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];

      sub_10074B964();
      return;
    }

    __break(1u);
  }

  else
  {
    sub_100750F94();
    v8 = objc_allocWithZone(sub_100750FC4());
    v9 = sub_100750FB4();
    v10 = OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_overlayViewController;
    v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_overlayViewController];
    sub_10074B974();

    v12 = *&v1[v10];
    *&v1[v10] = v9;
    v13 = v9;

    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];

      sub_10074B964();
      return;
    }
  }

  __break(1u);
}

id sub_1004D01C4()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_overlayViewController];
  sub_10074B974();

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];

    return sub_10074B964();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004D0390()
{
  v0 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
  sub_100039C50(v0, qword_10093AB68);
  sub_10000D0FC(v0, qword_10093AB68);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  type metadata accessor for NSTextAlignment(0);
  return sub_100743474();
}

char *sub_1004D042C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_100750534();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC22SubscribePageExtensionP33_59D788B89EC47DDFEEBB94FF9EFA27D718LinkableFooterView_linkedLabel;
  if (qword_100921468 != -1)
  {
    swift_once();
  }

  v10 = sub_10000D0FC(v5, qword_100981A70);
  (*(v6 + 16))(v8, v10, v5);
  v11 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *&v3[v9] = sub_10004DA8C(v8, 0, 0, 0);
  if (a2)
  {
    v12 = sub_100753064();
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for LinkableFooterView();
  v29.receiver = v3;
  v29.super_class = v13;
  v14 = objc_msgSendSuper2(&v29, "initWithReuseIdentifier:", v12);

  v15 = OBJC_IVAR____TtC22SubscribePageExtensionP33_59D788B89EC47DDFEEBB94FF9EFA27D718LinkableFooterView_linkedLabel;
  v16 = *&v14[OBJC_IVAR____TtC22SubscribePageExtensionP33_59D788B89EC47DDFEEBB94FF9EFA27D718LinkableFooterView_linkedLabel];
  v17 = qword_100920DB0;
  v18 = v14;
  v19 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v20 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
  sub_10000D0FC(v20, qword_10093AB68);
  v28[0] = v18;
  v21 = v18;
  sub_100743464();

  [v19 setTextAlignment:v28[1]];
  v22 = *&v14[v15];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 secondaryLabelColor];
  [v24 setTextColor:v25];

  v26 = [v21 contentView];
  [v26 addSubview:*&v14[v15]];

  return v21;
}

id sub_1004D08B4()
{
  v1 = v0;
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LinkableFooterView();
  v15.receiver = v0;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_59D788B89EC47DDFEEBB94FF9EFA27D718LinkableFooterView_linkedLabel];
  v8 = [v0 contentView];
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  sub_1007477B4();
  v10 = v9;
  v12 = v11;

  [v7 measurementsWithFitting:v1 in:{v10, v12}];
  (*(v3 + 104))(v5, enum case for FloatingPointRoundingRule.up(_:), v2);
  sub_100753B84();
  (*(v3 + 8))(v5, v2);
  sub_1007477B4();
  v13 = [v1 contentView];
  sub_1007477B4();

  sub_100753B24();
  return [v7 setFrame:?];
}

uint64_t sub_1004D0B4C(uint64_t a1)
{
  v2 = v1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for LinkableFooterView();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_1007537F4();

  if (!a1 || (result = sub_1007537F4(), (result & 1) != (v5 & 1)))
  {
    v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtensionP33_59D788B89EC47DDFEEBB94FF9EFA27D718LinkableFooterView_linkedLabel];
    if (qword_100920DB0 != -1)
    {
      swift_once();
    }

    v8 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
    sub_10000D0FC(v8, qword_10093AB68);
    v10 = v2;
    v9 = v2;
    sub_100743464();

    return [v7 setTextAlignment:{v11, v10}];
  }

  return result;
}

void sub_1004D0D3C()
{
  v5.receiver = v0;
  v5.super_class = _s22SubscribePageExtension10HeaderViewCMa_0();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    sub_1007477B4();
    v3 = v2;
    [v3 frame];
    v4 = [v0 contentView];
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    sub_1007477B4();

    sub_100753B24();
    [v3 setFrame:?];
  }
}

id sub_1004D0FEC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_1004D10D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10074CD14();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_1009214A8 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  sub_10000D0FC(v8, qword_100981B30);
  v9 = [a3 traitCollection];
  sub_100753C14();

  v10 = sub_10074F3F4();
  v16[3] = v10;
  v16[4] = sub_1004D1894(&qword_10092AC70, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v11 = sub_10000D134(v16);
  (*(*(v10 - 8) + 104))(v11, enum case for Feature.measurement_with_labelplaceholder(_:), v10);
  sub_10074FC74();
  sub_10000C620(v16);

  sub_10074CD04();
  sub_100753BA4();
  sub_1004D1894(&unk_10092CB50, 255, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
  sub_100750404();
  sub_100753BC4();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  return v13;
}

double sub_1004D13FC(uint64_t a1, uint64_t a2, void *a3)
{
  v19[1] = a1;
  v19[2] = a2;
  v4 = sub_100754724();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074CD14();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100753BA4();
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_100921468 != -1)
  {
    swift_once();
  }

  v12 = sub_100750534();
  sub_10000D0FC(v12, qword_100981A70);
  v13 = [a3 traitCollection];
  sub_100753C14();

  v14 = sub_10074F3F4();
  v21 = v14;
  v22 = sub_1004D1894(&qword_10092AC70, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v15 = sub_10000D134(v20);
  (*(*(v14 - 8) + 104))(v15, enum case for Feature.measurement_with_labelplaceholder(_:), v14);
  sub_10074FC74();
  sub_10000C620(v20);

  sub_10074CD04();
  sub_10074CCE4();
  (*(v9 + 8))(v11, v8);
  sub_10000C888(v20, v21);
  sub_100750414();
  sub_100753BC4();
  (*(v5 + 104))(v7, enum case for FloatingPointRoundingRule.up(_:), v4);
  sub_100753B84();
  v17 = v16;
  (*(v5 + 8))(v7, v4);
  sub_10000C620(v20);
  return v17;
}

uint64_t sub_1004D17E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004D1824()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_1004D187C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1004D1894(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1004D18DC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_100743584();
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v54.receiver = v4;
  v54.super_class = ObjectType;
  v51 = ObjectType;
  v13 = objc_msgSendSuper2(&v54, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView;
  *(*&v13[OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView] + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_delegate + 8) = &off_100878940;
  swift_unknownObjectWeakAssign();
  v15 = *&v13[v14];
  v16 = v13;
  v48 = v15;
  v17 = [v16 traitCollection];
  v18 = [(NSString *)v17 preferredContentSizeCategory];
  v19 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v20 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  result = sub_100753964();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (sub_100753954())
  {
    v22 = sub_100753964();

    if (v22)
    {
      v23 = UIContentSizeCategoryAccessibilityLarge;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v24 = [(NSString *)v17 preferredContentSizeCategory];
  v25 = UIContentSizeCategoryAccessibilityMedium;
  v26 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = sub_100753964();
  if ((result & 1) == 0)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  if (sub_100753954())
  {
    v27 = sub_100753964();

    if (v27)
    {
      v23 = v25;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {

    v23 = 0;
    v17 = v25;
  }

LABEL_12:

  v28 = v48;
  [v48 setMaximumContentSizeCategory:v23];

  v29 = [v16 contentView];
  [v29 addSubview:*&v13[v14]];

  v30 = OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer;
  v31 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer];
  v32 = type metadata accessor for TodayCardInfoLayerView(0);
  v53.receiver = v31;
  v53.super_class = v32;
  v33 = v16;
  objc_msgSendSuper2(&v53, "_setContinuousCornerRadius:", 20.0);
  sub_10056880C();
  *&v33[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaCornerRadius] = 0x402E000000000000;
  v35 = v49;
  v34 = v50;
  (*(v49 + 104))(v12, enum case for CornerStyle.continuous(_:), v50);
  if (v33[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground])
  {
    v36 = 3;
  }

  else
  {
    v36 = -1;
  }

  sub_10072118C(v12, v36, 15.0);
  (*(v35 + 8))(v12, v34);
  v37 = *&v33[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v37)
  {
    v38 = v37;
    [v38 _setContinuousCornerRadius:15.0];
    v39 = [v38 layer];
    [v39 setMaskedCorners:sub_1007535E4()];
  }

  v40 = [v33 contentView];
  [v40 _setContinuousCornerRadius:20.0];

  v41 = [v33 contentView];
  v42 = [v41 layer];

  [v42 setMaskedCorners:3];
  v43 = *&v16[v30];
  v44 = *&v43[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_preferredGradientType];
  *&v43[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_preferredGradientType] = kCAGradientLayerAxial;
  v45 = v43;
  v46 = kCAGradientLayerAxial;

  sub_1004D1E80();
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1007A5A00;
  *(v47 + 32) = sub_1007519E4();
  *(v47 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v52[3] = v51;
  v52[0] = v33;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(v52);
  return v33;
}

uint64_t sub_1004D1E80()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView];
  v2 = [v0 traitCollection];
  v3 = [(NSString *)v2 preferredContentSizeCategory];
  v4 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v5 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  result = sub_100753964();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (sub_100753954())
  {
    v7 = sub_100753964();

    if (v7)
    {
      v8 = UIContentSizeCategoryAccessibilityLarge;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v9 = [(NSString *)v2 preferredContentSizeCategory];
  v10 = UIContentSizeCategoryAccessibilityMedium;
  v11 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = sub_100753964();
  if ((result & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (sub_100753954())
  {
    v12 = sub_100753964();

    if (v12)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {

    v8 = 0;
    v2 = v10;
  }

LABEL_12:

  [v1 setMaximumContentSizeCategory:v8];

  return [v0 setNeedsLayout];
}

double sub_1004D208C()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v17 - v4;
  v6 = 0.0;
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded] == 1)
  {
    v7 = &v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
    if ((v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32] & 1) != 0 || (v6 = *v7, *v7 <= 0.0) || (v8 = [v0 traitCollection], v9 = sub_1007537D4(), v8, (v9 & 1) == 0))
    {
      v10 = [v1 traitCollection];
      v11 = sub_1007537F4();

      v12 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_100037990(v1 + v12, v5);
      v13 = [v1 traitCollection];
      sub_1005F6CA0(v5, v13);
      if (v11)
      {
        v6 = v15;
      }

      else
      {
        v6 = v14;
      }

      sub_1000E94F8(v5);
    }
  }

  return v6;
}

id sub_1004D2294()
{
  v1 = v0;
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;

  v5 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded] == 1)
  {
    v6 = v4 + -30.0 + -14.0 + -14.0;
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView] bounds];
    Height = CGRectGetHeight(v37);
  }

  else
  {
    v8 = [v1 contentView];
    [v8 bounds];
    v6 = v9;
    Height = v10;
  }

  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView];
  sub_1000CBC6C(v36);
  sub_1000CD7E4(v11, v36, v6, Height);
  sub_1000CD59C(v36);

  if (v1[v5] == 1 && ((v12 = [v1 traitCollection], v13 = v12, !v1[v5]) ? (v14 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) : (v14 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory), sub_10056B184(v12, v1[*v14], v36), v13, v1[v5] == 1))
  {
    v15 = [v1 contentView];
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v38.origin.x = v17;
    v38.origin.y = v19;
    v38.size.width = v21;
    v38.size.height = v23;
    CGRectGetMinY(v38);
    MinY = sub_1004D208C();
  }

  else
  {
    v25 = [v1 contentView];
    [v25 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v39.origin.x = v27;
    v39.origin.y = v29;
    v39.size.width = v31;
    v39.size.height = v33;
    MinY = CGRectGetMinY(v39);
  }

  v34 = [v1 contentView];
  [v34 bounds];

  sub_100753B24();
  return [v11 setFrame:?];
}

void sub_1004D2560()
{
  if ((*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
    [v1 frame];
    sub_100753B14();
    [v1 setFrame:?];
    v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror);
    if (v2)
    {
      v3 = v2;
      [v3 frame];
      sub_100753B14();
      [v3 setFrame:?];
    }
  }
}

double sub_1004D2718(uint64_t a1, __objc2_prop *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_10074FB54();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v40 = v39 - v15;
  sub_1003171C4(a1, a2, a3, a4);
  v16 = sub_10074FB64();
  sub_1007419C4();
  if (swift_dynamicCastClass())
  {
    v39[1] = v16;
    v17 = sub_1007419A4();
    v18 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView];
    [v5 setNeedsLayout];
    v19 = [v5 backgroundView];
    if (v19)
    {
      v20 = v19;
      v21 = sub_1007419B4();
      [v20 setBackgroundColor:v21];
    }

    v39[0] = v13;
    v22 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
    v23 = sub_1007419B4();
    [v22 setBackgroundColor:v23];

    v24 = sub_1007419B4();
    v25 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_backgroundView;
    swift_beginAccess();
    v26 = *&v18[v25];
    if (v26)
    {
      v27 = v26;
      [v27 setBackgroundColor:v24];
    }

    type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
    sub_100752754();
    v28 = v43;
    v29 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
    v30 = *&v18[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
    v31 = v30;
    sub_1000CAC84(v28);
    v32 = *&v18[v29];
    *&v18[v29] = v28;
    v33 = v28;

    sub_1000CADE8(v30);
    v34 = v40;
    sub_10074FB74();
    v35 = v39[0];
    (*(v11 + 104))(v39[0], enum case for TodayCard.Style.white(_:), v10);
    sub_1000F8684();
    sub_100753274();
    sub_100753274();
    if (v43 == v41 && v44 == v42)
    {
      v36 = 1;
    }

    else if (sub_100754754())
    {
      v36 = 1;
    }

    else
    {
      v36 = 2;
    }

    v38 = *(v11 + 8);
    v38(v35, v10);
    v38(v34, v10);

    [v18 setOverrideUserInterfaceStyle:v36];
    sub_1004D2B04();
    [v5 setNeedsLayout];
  }

  else
  {
  }

  return result;
}

void sub_1004D2B04()
{
  v1 = v0;
  sub_1005F48BC();
  v2 = [v0 contentView];
  sub_1006787A8();
  if (v3)
  {
    v4 = sub_100753064();
  }

  else
  {
    v4 = 0;
  }

  [v2 setAccessibilityLabel:v4];

  v5 = [v1 contentView];
  v6 = [*(*&v1[OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView] + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_textLabel) text];
  if (v6)
  {
    v7 = v6;
    sub_100753094();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v21[0] = v9;
  v10 = 0;
  v21[1] = sub_1006787A8();
  v21[2] = v11;
  v12 = _swiftEmptyArrayStorage;
LABEL_8:
  v13 = &v21[2 * v10];
  while (++v10 != 3)
  {
    v14 = v13 + 2;
    v15 = *v13;
    v13 += 2;
    if (v15)
    {
      v16 = *(v14 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1002554F8(0, *(v12 + 2) + 1, 1, v12);
      }

      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      if (v18 >= v17 >> 1)
      {
        v12 = sub_1002554F8((v17 > 1), v18 + 1, 1, v12);
      }

      *(v12 + 2) = v18 + 1;
      v19 = &v12[16 * v18];
      *(v19 + 4) = v16;
      *(v19 + 5) = v15;
      goto LABEL_8;
    }
  }

  sub_10000C518(&qword_10092FE70, &qword_1007A63F0);
  swift_arrayDestroy();
  sub_10000C518(&unk_100928A70, &unk_1007AC470);
  sub_10010ABC4();
  sub_100752FF4();

  v20 = sub_100753064();

  [v5 setAccessibilityLabel:v20];
}

void sub_1004D2D88(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  sub_10031AF08(a1, a2, a3 & 1);
  v8 = swift_dynamicCastClass();
  if (v8 && (a3 & 1) == 0)
  {
    v9 = v8;
    v10 = a1;
    v11 = [v4 backgroundView];
    if (v11)
    {
      v12 = v11;
      v13 = [v9 backgroundView];
      v14 = [v13 backgroundColor];

      [v12 setBackgroundColor:v14];
    }

    v15 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
    v16 = [*&v9[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView] backgroundColor];
    [v15 setBackgroundColor:v16];

    v17 = OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView;
    v18 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView];
    v19 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
    swift_beginAccess();
    if (*(v18 + v19))
    {
    }

    else
    {
      v20 = _swiftEmptyArrayStorage;
    }

    v21 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView];
    [v4 setNeedsLayout];
    v22 = *&v9[v17];
    v23 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_backgroundView;
    swift_beginAccess();
    v24 = *(v22 + v23);
    if (v24)
    {
      v25 = [v24 backgroundColor];
    }

    else
    {
      v25 = 0;
    }

    v26 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_backgroundView;
    swift_beginAccess();
    v27 = *&v21[v26];
    if (v27)
    {
      v28 = v27;
      [v28 setBackgroundColor:v25];
    }

    [v21 setOverrideUserInterfaceStyle:{objc_msgSend(*&v9[v17], "overrideUserInterfaceStyle")}];
    v29 = [*&v9[v17] maximumContentSizeCategory];
    [v21 setMaximumContentSizeCategory:v29];

    v30 = [v4 contentView];
    v31 = [v9 contentView];
    v32 = [v31 overrideUserInterfaceStyle];

    [v30 setOverrideUserInterfaceStyle:v32];
  }
}

void sub_1004D3068()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView];
  [v1 setNeedsLayout];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4)
  {
    [v4 setBackgroundColor:0];
  }

  v5 = [v1 contentView];
  [v5 setOverrideUserInterfaceStyle:0];
}

id sub_1004D318C()
{
  v1 = v0;
  v2 = sub_100743584();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10031DE90();
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v8 = 5;
  }

  else
  {
    v8 = 3;
  }

  v9 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style);
  *(v6 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style) = v8;
  sub_1000C95D0(v9);
  if (v1[v7])
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 20.0;
  }

  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer];
  v12 = type metadata accessor for TodayCardInfoLayerView(0);
  v23.receiver = v11;
  v23.super_class = v12;
  objc_msgSendSuper2(&v23, "_setContinuousCornerRadius:", v10);
  sub_10056880C();
  if (v1[v7])
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 15.0;
  }

  *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaCornerRadius] = v13;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground])
  {
    v14 = 3;
  }

  else
  {
    v14 = -1;
  }

  sub_10072118C(v5, v14, v13);
  (*(v3 + 8))(v5, v2);
  v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v15)
  {
    v16 = v15;
    [v16 _setContinuousCornerRadius:v13];
    v17 = [v16 layer];
    [v17 setMaskedCorners:sub_1007535E4()];
  }

  if (v1[v7])
  {
    v18 = 0.0;
  }

  else
  {
    v18 = 20.0;
  }

  v19 = [v1 contentView];
  [v19 _setContinuousCornerRadius:v18];

  v20 = [v1 contentView];
  v21 = [v20 layer];

  [v21 setMaskedCorners:3];
  return [v1 setNeedsLayout];
}

id sub_1004D3468()
{
  v1 = v0;
  v2 = sub_100743584();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10031E18C();
  v6 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  v7 = v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded];
  v8 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v8 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v9 = v0[*v8];
  if (v9 == 4)
  {
    v10 = 16.0;
  }

  else
  {
    v10 = 15.0;
  }

  if (v9 == 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = 3;
  }

  v12 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView];
  if (v7)
  {
    v13 = 5;
  }

  else
  {
    v13 = v11;
  }

  v14 = *(v12 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style);
  *(v12 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style) = v13;
  sub_1000C95D0(v14);
  if (v1[v6])
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 20.0;
  }

  v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer];
  v17 = type metadata accessor for TodayCardInfoLayerView(0);
  v24.receiver = v16;
  v24.super_class = v17;
  objc_msgSendSuper2(&v24, "_setContinuousCornerRadius:", v15);
  sub_10056880C();
  if (v1[v6])
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v10;
  }

  *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaCornerRadius] = v18;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground])
  {
    v19 = 3;
  }

  else
  {
    v19 = -1;
  }

  sub_10072118C(v5, v19, v18);
  (*(v3 + 8))(v5, v2);
  v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v20)
  {
    v21 = v20;
    [v21 _setContinuousCornerRadius:v18];
    v22 = [v21 layer];
    [v22 setMaskedCorners:sub_1007535E4()];
  }

  return [v1 setNeedsLayout];
}

uint64_t type metadata accessor for AppEventTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_10093AC90;
  if (!qword_10093AC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004D37E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100747524();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100746914();

  v7 = v12[1];
  v8 = sub_1007537D4();

  if (v8)
  {
    (*(v4 + 104))(v6, enum case for ComponentSeparator.Position.bottom(_:), v3);
    sub_100747534();
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_100747564();
  return (*(*(v10 - 8) + 56))(a1, v9, 1, v10);
}

double sub_1004D396C()
{
  v0 = sub_1007504F4();
  sub_100039C50(v0, qword_100980678);
  sub_10000D0FC(v0, qword_100980678);
  sub_100750504();
  return result;
}

uint64_t sub_1004D39C0()
{
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  result = sub_100753E74();
  qword_100980690 = result;
  return result;
}

uint64_t sub_1004D3A04()
{
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  result = sub_100753E34();
  qword_100980698 = result;
  return result;
}

uint64_t sub_1004D3ACC()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_1009806E8);
  sub_10000D0FC(v4, qword_1009806E8);
  if (qword_100920DD0 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_1009806A0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004D3CA0()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_100980700);
  sub_10000D0FC(v4, qword_100980700);
  if (qword_100920DD8 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_1009806B8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004D3E74()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_100980718);
  sub_10000D0FC(v4, qword_100980718);
  if (qword_100920DE0 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_1009806D0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

id sub_1004D4048(uint64_t a1, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialTypeLabel];
  if (a2)
  {
    v5 = sub_100753064();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText:v5];

  [v4 setHidden:a2 == 0];
  v6 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_subtitleLabel];
  if ([v4 isHidden])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v6 setNumberOfLines:v7];

  return [v2 setNeedsLayout];
}

void (*sub_1004D412C(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1004D4180;
}

void sub_1004D4180(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v9 = *a1;
    sub_1004D644C();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = [v2 contentView];
      [v5 addSubview:v4];
    }

    [v2 setNeedsLayout];
  }

  else
  {
    v9 = *a1;
    sub_1004D644C();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = [v2 contentView];
      [v8 addSubview:v7];
    }

    [v2 setNeedsLayout];
  }
}

id sub_1004D42AC()
{
  v1 = v0;
  v2 = sub_100743584();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconArtworkView];
  if (v7)
  {
    sub_100746ED4();
    (*(v3 + 104))(v6, enum case for CornerStyle.arc(_:), v2);
    v8 = v7;
    v9 = sub_100746EC4();
    v10 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconBackingView;
    v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconBackingView];
    if (v11)
    {
      [v11 removeFromSuperview];
      v12 = *&v1[v10];
    }

    else
    {
      v12 = 0;
    }

    *&v1[v10] = v9;
    v16 = v9;

    sub_1004D446C();
    v17 = *&v1[v10];
    if (v17)
    {
      v18 = v17;
      [v18 addSubview:v8];
    }
  }

  else
  {
    v13 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconBackingView;
    v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconBackingView];
    if (v14)
    {
      [v14 removeFromSuperview];
      v15 = *&v1[v13];
    }

    else
    {
      v15 = 0;
    }

    *&v1[v13] = 0;

    sub_1004D446C();
  }

  return [v1 setNeedsLayout];
}

id sub_1004D446C()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconBackingView];
  if (v1)
  {
    v2 = v1;
    [v2 setClipsToBounds:1];
    if (qword_100920DC8 != -1)
    {
      swift_once();
    }

    [v2 setBackgroundColor:qword_100980698];
    v3 = [v0 contentView];
    [v3 addSubview:v2];

    v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconArtworkView];
    if (v4)
    {
      v5 = v4;
      v6 = [v0 contentView];
      [v6 addSubview:v5];
    }
  }

  return [v0 setNeedsLayout];
}

id sub_1004D459C()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_artworkGrid];
  if (v1)
  {
    v1[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_showBorder] = 1;
    v2 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_imageBorderView];
    v3 = v1;
    [v2 setHidden:0];
    v4 = v3;
    [v4 _setCornerRadius:20.0];
    [v4 setNeedsLayout];
    if (qword_100920DC0 != -1)
    {
      swift_once();
    }

    [v4 setBackgroundColor:qword_100980690];

    v5 = [v0 contentView];
    [v5 addSubview:v4];
  }

  return [v0 setNeedsLayout];
}

char *sub_1004D46CC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v61 = sub_10074AB44();
  v10 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v12 - 8);
  v14 = &v56 - v13;
  v15 = sub_100743B04();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialIcon;
  (*(v16 + 104))(v19, enum case for SystemImage.appstore(_:), v15, v17);
  v21 = sub_100743AE4();
  (*(v16 + 8))(v19, v15);
  v22 = [objc_allocWithZone(UIImageView) initWithImage:v21];

  *&v5[v20] = v22;
  v5[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_showEditorialIcon] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialArtworkView] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconArtworkView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconBackingView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_artworkGrid] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView] = 0;
  if (qword_100920DD0 != -1)
  {
    swift_once();
  }

  v23 = sub_100750534();
  v24 = sub_10000D0FC(v23, qword_1009806A0);
  v25 = *(v23 - 8);
  v58 = *(v25 + 16);
  v59 = v25 + 16;
  v58(v14, v24, v23);
  v57 = *(v25 + 56);
  v57(v14, 0, 1, v23);
  v26 = enum case for DirectionalTextAlignment.none(_:);
  v27 = *(v10 + 104);
  v27(v60, enum case for DirectionalTextAlignment.none(_:), v61);
  v28 = sub_100745C84();
  v29 = objc_allocWithZone(v28);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialTypeLabel] = sub_100745C74();
  if (qword_100920DD8 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v23, qword_1009806B8);
  v58(v14, v30, v23);
  v57(v14, 0, 1, v23);
  v27(v60, v26, v61);
  v31 = objc_allocWithZone(v28);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_titleLabel] = sub_100745C74();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_subtitleLabel] = sub_100745C64();
  v32 = type metadata accessor for EditorialSearchResultCollectionViewCell();
  v62.receiver = v5;
  v62.super_class = v32;
  v33 = objc_msgSendSuper2(&v62, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v37 = v33;
  [v37 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v38 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_subtitleLabel;
  v39 = qword_100920DE0;
  v40 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_subtitleLabel];
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_10000D0FC(v23, qword_1009806D0);
  v58(v14, v41, v23);
  v57(v14, 0, 1, v23);
  sub_100745BA4();

  [*&v37[v38] setLineBreakMode:4];
  v42 = [v37 contentView];
  v43 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialTypeLabel;
  [v42 addSubview:*&v37[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialTypeLabel]];

  v44 = [v37 contentView];
  v45 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialIcon;
  [v44 addSubview:*&v37[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialIcon]];

  v46 = [v37 contentView];
  [v46 addSubview:*&v37[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_titleLabel]];

  v47 = [v37 contentView];
  [v47 addSubview:*&v37[v38]];

  v48 = *&v37[v43];
  v49 = [v37 tintColor];
  [v48 setTextColor:v49];

  v50 = *&v37[v38];
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v51 = v50;
  v52 = sub_100753DF4();
  [v51 setTextColor:v52];

  v53 = *&v37[v45];
  v54 = [v37 tintColor];

  [v53 setTintColor:v54];
  return v37;
}

void sub_1004D4E64()
{
  v1 = v0;
  v174 = sub_100754724();
  v163 = *(v174 - 8);
  __chkstk_darwin(v174);
  v173 = &v156 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = COERCE_DOUBLE(sub_100750B04());
  v167 = *(*&v181 - 8);
  __chkstk_darwin(*&v181);
  v175 = &v156 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&qword_1009233B8, &unk_1007A63E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v159 = (&v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  *&v178 = &v156 - v8;
  __chkstk_darwin(v9);
  v11 = (&v156 - v10);
  __chkstk_darwin(v12);
  v172 = (&v156 - v13);
  __chkstk_darwin(v14);
  v16 = &v156 - v15;
  v17 = type metadata accessor for EditorialSearchResultCollectionViewCell();
  v184.receiver = v0;
  v184.super_class = v17;
  objc_msgSendSuper2(&v184, "layoutSubviews");
  v18 = [v0 contentView];
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  sub_1007477B4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_10000C518(&qword_1009233B0, &qword_1007B60B0);
  v27 = *(v5 + 72);
  v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *&v29 = COERCE_DOUBLE(swift_allocObject());
  v168 = v28;
  v176 = *&v29;
  v30 = v29 + v28;
  v31 = *(v4 + 48);
  v160 = v1;
  v32 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialTypeLabel];
  *(v29 + v28) = v32;
  v33 = qword_100920DE8;
  v171 = v32;
  if (v33 != -1)
  {
    swift_once();
  }

  v34 = v181;
  v35 = sub_10000D0FC(*&v181, qword_1009806E8);
  v179 = *(v167 + 16);
  (*&v179)(v30 + v31, v35, *&v34);
  v36 = *(v4 + 48);
  v37 = *&v160[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_titleLabel];
  *(v30 + *&v27) = v37;
  v38 = v4;
  v39 = qword_100920DF0;
  v40 = v37;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = v181;
  v42 = sub_10000D0FC(*&v181, qword_100980700);
  (*&v179)(v30 + *&v27 + v36, v42, *&v41);
  v180 = v27;
  v43 = (v30 + 2 * *&v27);
  v177 = v38;
  v44 = *(v38 + 48);
  v45 = *&v160[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_subtitleLabel];
  *v43 = v45;
  v46 = qword_100920DF8;
  v47 = v45;
  if (v46 != -1)
  {
    swift_once();
  }

  v48 = v181;
  v49 = sub_10000D0FC(*&v181, qword_100980718);
  (*&v179)(&v43[v44], v49, *&v48);
  *&v179 = v167 + 8;
  v50 = _swiftEmptyArrayStorage;
  v51 = 3;
  v170 = v30;
  v52 = v30;
  do
  {
    sub_100287B64(v52, v16);
    sub_100287B64(v16, v11);
    v54 = *v11;
    v55 = *(v177 + 48);
    v56 = [*v11 isHidden];

    v57 = **&v179;
    (**&v179)(v11 + v55, COERCE_DOUBLE(*&v181));
    if (v56)
    {
      sub_1004D6520(v16);
      v53 = v180;
    }

    else
    {
      sub_100287BD4(v16, *&v178);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v183[0] = v50;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10001E634(0, v50[2] + 1, 1);
        v50 = v183[0];
      }

      v60 = v50[2];
      v59 = v50[3];
      if (v60 >= v59 >> 1)
      {
        sub_10001E634((v59 > 1), v60 + 1, 1);
        v50 = v183[0];
      }

      v50[2] = v60 + 1;
      v53 = v180;
      sub_100287BD4(*&v178, v168 + v50 + v60 * *&v180);
    }

    v52 += *&v53;
    --v51;
  }

  while (v51);
  swift_setDeallocating();
  v61 = v177;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v62 = v50[2];
  v63 = v160;
  v165 = v24;
  v166 = v26;
  v176 = v20;
  if (v62)
  {
    v170 = *(v61 + 48);
    v64 = sub_100016C60(0, &qword_1009327F0, NSObject_ptr);
    v164 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_showEditorialIcon;
    v161 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialIcon;
    v65 = v168 + v50;
    v168 = (v167 + 32);
    v169 = v64;
    v167 = *&v163 + 8;
    v66 = 0.0;
    v157 = v65;
    v158 = v62;
    v67 = *&v181;
    v68 = v175;
    do
    {
      v69 = v172;
      sub_100287B64(v65, v172);
      v70 = *v69;
      (*v168)(v68, v69 + v170, v67);
      v71 = v70;
      [v71 sizeThatFits:{v24, v26}];
      v74 = v73;
      if (v72 >= v24)
      {
        v72 = v24;
      }

      v178 = v72;
      v75 = [v63 traitCollection];
      v76 = v63;
      v77 = v173;
      sub_1007502D4();
      sub_100750AD4();
      v79 = v78;

      v80 = v77;
      v63 = v76;
      (*v167)(v80, v174);
      v186.origin.x = v20;
      v186.origin.y = v22;
      v186.size.width = v24;
      v186.size.height = v26;
      v81 = v66 + CGRectGetMinY(v186);
      [v71 firstBaselineFromTop];
      v83 = v81 + v79 - v82;
      if ((sub_100753FC4() & 1) != 0 && v76[v164] == 1)
      {
        v84 = *&v76[v161];
        [v84 bounds];
        v85 = v24;
        v87 = v86;
        v89 = v88;
        v20 = v176;
        v187.origin.x = v176;
        v187.origin.y = v22;
        v187.size.width = v85;
        v187.size.height = v166;
        MinX = CGRectGetMinX(v187);
        v163 = v74;
        v90 = v74 * 0.5 + v83;
        v91 = v22;
        v92 = v90 - v89 * 0.5;
        sub_100753B24();
        [v84 setFrame:?];
        v188.origin.y = v92;
        v22 = v91;
        v188.origin.x = MinX;
        v188.size.width = v87;
        v24 = v165;
        v188.size.height = v89;
        v26 = v166;
        CGRectGetMaxX(v188);
      }

      else
      {
        v20 = v176;
        v185.origin.x = v176;
        v185.origin.y = v22;
        v185.size.width = v24;
        v185.size.height = v26;
        CGRectGetMinX(v185);
      }

      sub_100753B24();
      [v71 setFrame:?];

      v68 = v175;
      v67 = *&v181;
      v57(v175, *&v181);
      v66 = v66 + v79;
      v65 += *&v180;
      --v62;
    }

    while (v62);
    if (v158 > v50[2])
    {
      __break(1u);
      return;
    }

    v93 = v159;
    sub_100287B64(v157 + (v158 - 1) * *&v180, v159);

    v94 = *v93;
    v95 = *(v177 + 48);
    [*v93 frame];
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v103 = v102;

    v189.origin.x = v97;
    v189.origin.y = v99;
    v189.size.width = v101;
    v189.size.height = v103;
    v24 = v165;
    v26 = v166;
    MaxY = CGRectGetMaxY(v189);
    v57(v93 + v95, v67);
  }

  else
  {

    MaxY = 0.0;
    v67 = *&v181;
  }

  if (qword_100921708 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v67, qword_100982098);
  v105 = [v63 traitCollection];
  sub_100751034();
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_1007A5CF0;
  *(v106 + 32) = v105;
  v107 = v105;
  v108 = sub_100751044();
  sub_100750544();
  v110 = v109;

  v111 = MaxY + v110;
  v112 = v176;
  v190.origin.x = v176;
  v190.origin.y = v22;
  v190.size.width = v24;
  v190.size.height = v26;
  v181 = CGRectGetMinX(v190);
  v191.origin.x = v112;
  v191.origin.y = v22;
  v191.size.width = v24;
  v191.size.height = v26;
  v113 = CGRectGetMaxY(v191) - (MaxY + v110);
  if (qword_100920DB8 != -1)
  {
    swift_once();
  }

  v114 = sub_1007504F4();
  sub_10000D0FC(v114, qword_100980678);
  sub_1007504B4();
  v116 = v115;
  v192.origin.x = v112;
  v192.origin.y = v22;
  v192.size.width = v24;
  v192.size.height = v26;
  Width = CGRectGetWidth(v192);
  sub_1007504C4();
  if (Width >= v116)
  {
    v119 = v116;
  }

  else
  {
    v119 = Width;
  }

  if (Width >= v116)
  {
    v118 = v113;
  }

  v120 = v119;
  v121 = *&v63[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialArtworkView];
  v122 = v118;
  if (v121)
  {
    v123 = v121;
    sub_100753B24();
    sub_100743324();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v125 = Strong;
    sub_100753B24();
    [v125 setFrame:?];
  }

  v126 = *&v63[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_artworkGrid];
  if (v126)
  {
    v127 = v126;
    sub_100753B24();
    v129 = v128;
    v131 = v130;
    v132 = v122;
    v134 = v133;
    v136 = v135;
    v137 = type metadata accessor for ArtworkGrid();
    v182.receiver = v127;
    v182.super_class = v137;
    v138 = v134;
    v122 = v132;
    objc_msgSendSuper2(&v182, "setFrame:", v129, v131, v138, v136);
    sub_100602594();
    [v127 setNeedsLayout];
  }

  v139 = *&v63[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconArtworkView];
  if (v139)
  {
    v140 = *&v63[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconBackingView];
    if (v140)
    {
      v141 = v139;
      v142 = v140;
      v63 = v160;
      [v142 setFrame:{v181, v111, v120, v122}];
      [v142 bounds];
      v144 = v143;
      v146 = v145;
      v178 = v122;
      v148 = v147;
      v150 = v149;
      sub_100743394();
      v180 = v111;
      v193.origin.x = v144;
      v193.origin.y = v146;
      v193.size.width = v148;
      v193.size.height = v150;
      CGRectGetMidX(v193);
      v179 = v120;
      v194.origin.x = v144;
      v194.origin.y = v146;
      v194.size.width = v148;
      v122 = v178;
      v194.size.height = v150;
      CGRectGetMidY(v194);
      v120 = v179;
      v111 = v180;
      sub_100753B24();
      sub_100743324();
    }
  }

  v151 = *&v63[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView];
  if (v151)
  {
    v152 = v151;
    sub_1000CBC6C(v183);
    sub_1000CD7E4(v63, v183, v120, v122);
    v179 = v22;
    v180 = v153;
    v154 = v181;
    sub_1000CD59C(v183);
    v195.origin.x = v154;
    v195.origin.y = v111;
    v195.size.width = v120;
    v195.size.height = v122;
    CGRectGetMinX(v195);
    v196.size.height = v122;
    v196.origin.x = v154;
    v196.origin.y = v111;
    v196.size.width = v120;
    CGRectGetMinY(v196);
    v155 = v152;
    sub_100753B24();
    [v155 setFrame:?];
  }
}

id sub_1004D5CFC(uint64_t a1)
{
  v18.receiver = v1;
  v18.super_class = type metadata accessor for EditorialSearchResultCollectionViewCell();
  objc_msgSendSuper2(&v18, "prepareForReuse");
  v2 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialArtworkView;
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialArtworkView];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v1[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v2] = 0;

  [v1 setNeedsLayout];
  sub_1004D644C();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [v1 contentView];
    [v7 addSubview:v6];
  }

  [v1 setNeedsLayout];
  v8 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconArtworkView;
  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconArtworkView];
  if (v9)
  {
    [v9 removeFromSuperview];
    v10 = *&v1[v8];
  }

  else
  {
    v10 = 0;
  }

  *&v1[v8] = 0;

  sub_1004D42AC();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_artworkGrid;
  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_artworkGrid];
  if (v12)
  {
    [v12 removeFromSuperview];
    v13 = *&v1[v11];
  }

  else
  {
    v13 = 0;
  }

  *&v1[v11] = 0;

  sub_1004D459C();
  v14 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView;
  v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView];
  if (v15)
  {
    [v15 removeFromSuperview];
    v16 = *&v1[v14];
  }

  else
  {
    v16 = 0;
  }

  *&v1[v14] = 0;

  return [v1 setNeedsLayout];
}

id sub_1004D5F10(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EditorialSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1004D6044(void *a1)
{
  sub_1004D644C();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];
  }

  [v1 setNeedsLayout];
}

uint64_t (*sub_1004D60F4(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1004D412C(v2);
  return sub_1000181A8;
}

void sub_1004D6164()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView);
  if (v1)
  {
    v2 = v1;
    sub_1000C8E14();
  }
}

uint64_t sub_1004D61CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1004D6220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1004D628C(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_getWitnessTable();
  *(v4 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_1004D6404(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1004D644C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_1004D6404(&qword_1009230E0, 255, type metadata accessor for VideoView, &unk_1007C8140);
    Strong = v1;
  }

  v2 = sub_10043D124(Strong);

  if (v2)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];
    }
  }
}

uint64_t sub_1004D6520(uint64_t a1)
{
  v2 = sub_10000C518(&qword_1009233B8, &unk_1007A63E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1004D6588()
{
  v1 = sub_100743B04();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialIcon;
  (*(v2 + 104))(v5, enum case for SystemImage.appstore(_:), v1, v3);
  v7 = sub_100743AE4();
  (*(v2 + 8))(v5, v1);
  v8 = [objc_allocWithZone(UIImageView) initWithImage:v7];

  *(v0 + v6) = v8;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_showEditorialIcon) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialArtworkView) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconBackingView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_artworkGrid) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView) = 0;
  sub_100754644();
  __break(1u);
}

id sub_1004D6748(char a1)
{
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_isCollapsing) = a1;
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_detailPageView);
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_isCollapsing) = a1;
  *(*(v2 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaContainerView) + OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_isCollapsing) = a1;
  [*(v2 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_closeButton) setAlpha:0.0];
  v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_contentView);

  return [v3 setAlpha:0.0];
}

void sub_1004D67F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_isCollapsing] = 0;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_learnMoreActionMetrics;
  v10 = sub_100752614();
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_backButtonActionMetrics], 1, 1, v10);
  v11(&v4[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_closeButtonActionMetrics], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_objectGraph] = a2;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_presenter] = a1;
  sub_1007442C4();
  sub_100752764();

  sub_100752D34();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_artworkLoader] = v25;

  sub_1007442D4();

  sub_100744284();

  v12 = &v4[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver];
  *(v12 + 3) = sub_1007427D4();
  *(v12 + 4) = &protocol witness table for BasePresenter;
  *v12 = a1;
  v13 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageView(0));

  *&v4[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_detailPageView] = sub_10057D480(a2);
  v14 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageTransitioningDelegate(0));
  v15 = a3;
  v16 = sub_10003DF10(a3);

  *&v4[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_containerTransitioningDelegate] = v16;
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", 0, 0);
  sub_10074B184();
  v18 = v17;
  sub_100752D34();
  v19 = v25;
  v20 = v18;
  sub_10074B154();

  sub_1004DA624(&qword_10093ADC8, type metadata accessor for AppPromotionDetailPageViewController, &unk_1007C64C0);
  sub_1007427C4();
  v21 = [v20 view];

  if (!v21)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v22 = [v20 view];
  if (!v22)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v22 setClipsToBounds:0];

  v23 = [v20 view];
  if (v23)
  {
    [v23 addSubview:*&v20[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_detailPageView]];

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1004D6CC0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "viewDidLoad", v5);
  sub_10000C888(&v1[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v3);
  sub_100742974();
  (*(v4 + 8))(v7, v3);
  *(*&v1[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_detailPageView] + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_delegate + 8) = &off_100878980;
  swift_unknownObjectWeakAssign();
  return sub_100744314();
}

void sub_1004D6E8C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100742964();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1, v7);
  sub_10000C888(&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  sub_100742974();
  (*(v6 + 8))(v9, v5);
  sub_10074B184();
  sub_100752764();

  sub_100752D34();

  v10 = v12[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1004DA624(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
  }

  sub_1004DA624(&qword_10093EF20, type metadata accessor for AppPromotionDetailPageView, &unk_1007CAF6C);
  sub_10074B164();
}

void sub_1004D714C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100741454();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100742964();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = v2;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "viewDidAppear:", a1 & 1, v11);
  sub_10000C888(&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  sub_100742974();
  (*(v10 + 8))(v13, v9);
  if (sub_1007442E4())
  {
    sub_100741444();
    sub_100741424();
    (*(v6 + 8))(v8, v5);
    sub_100746C04();
  }

  sub_100744254();
  sub_100745584();
  sub_100745564();
  sub_100744324();
  sub_100745544();

  sub_10074B184();
  sub_100752764();

  sub_100752D34();

  v14 = v15[1];
  sub_10074B104();
  sub_100580030();
}

void sub_1004D748C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100741454();
  v18 = *(v5 - 8);
  v19 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100752BC4();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000C518(&qword_100930220, &unk_1007BD870);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_100742964();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v2;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, "viewWillDisappear:", a1 & 1, v14);
  sub_10000C888(&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  sub_100752BB4();
  (*(v13 + 104))(v16, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v12);
  sub_100742974();
  (*(v13 + 8))(v16, v12);
  if (sub_1007442E4())
  {
    sub_100752BB4();
    sub_100741444();
    sub_100741424();
    (*(v18 + 8))(v7, v19);
    sub_100746C24();
    v17 = sub_100746C34();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    sub_100746C14();
  }

  sub_100744254();
  sub_100745584();
  sub_100745564();
  sub_100745544();

  sub_100745564();
  sub_1007454E4();
}

void sub_1004D785C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100742964();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewDidDisappear:", a1 & 1, v7);
  sub_10000C888(&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v5);
  sub_100742974();
  (*(v6 + 8))(v9, v5);
  sub_1001A0764(*&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_artworkLoader], 1);
  sub_10074B184();
  sub_100752764();

  sub_100752D34();

  v10 = v12[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1004DA624(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
  }

  sub_1004DA624(&qword_10093EF20, type metadata accessor for AppPromotionDetailPageView, &unk_1007CAF6C);
  sub_10074B124();
}

double sub_1004D7BD0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewDidBecomeFullyVisible", v5);
  sub_10000C888(&v1[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v3);
  sub_100742974();
  (*(v4 + 8))(v7, v3);
  sub_100744254();
  sub_100745584();
  sub_100745564();
  sub_100744324();
  sub_100745544();

  sub_100745564();
  sub_1007454E4();

  return result;
}

double sub_1004D7DD0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewWillBecomePartiallyVisible", v5);
  sub_10000C888(&v1[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  sub_100752BB4();
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  sub_100742974();
  (*(v4 + 8))(v7, v3);
  sub_100744254();
  sub_100745584();
  sub_100745564();
  sub_100745544();

  sub_100745564();
  sub_1007454E4();

  return result;
}

void sub_1004D7FEC(SEL *a1, unsigned int *a2, void (*a3)(uint64_t))
{
  v7 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_100742964();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v7;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, *a1, v11);
  sub_10000C888(&v7[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v7[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, *a2, v9);
  sub_100742974();
  (*(v10 + 8))(v13, v9);
  sub_10074B184();
  sub_100752764();

  sub_100752D34();

  v15 = v16[1];
  a3(v14);
}

id sub_1004D8204()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_detailPageView];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v1 setFrame:{v5, v7, v9, v11}];
    v12 = sub_1004C4774();
    v13 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_defaultPageMargin;
    *&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_defaultPageMargin] = v12;
    v14 = [v1 traitCollection];
    LOBYTE(v3) = sub_1007537F4();

    if (v3)
    {
      v15 = -*&v1[v13];
    }

    else
    {
      v15 = 0.0;
    }

    return [*&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_pageScrollView] setScrollIndicatorInsets:{0.0, v15}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1004D8388(void *a1)
{
  v2 = v1;
  v17.receiver = v1;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = sub_100753804() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = sub_100753804();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0)
  {
    goto LABEL_12;
  }

  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_12:
    sub_1007427B4();
    goto LABEL_13;
  }

  v9 = [a1 preferredContentSizeCategory];
  v10 = sub_100753094();
  v12 = v11;
  if (v10 == sub_100753094() && v12 == v13)
  {

    goto LABEL_13;
  }

  v14 = sub_100754754();

  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  v15 = [v2 view];
  if (v15)
  {
    v16 = v15;
    [v15 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_1004D862C()
{
  v1 = sub_100742964();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888((v0 + OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver), *(v0 + OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24));
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.appEnteredWhileAppeared(_:), v1);
  sub_100742974();
  (*(v2 + 8))(v4, v1);
  sub_10074B184();
  sub_100752764();

  sub_100752D34();

  v5 = v6[1];
  sub_10074B0E4();
}

void sub_1004D8920(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C518(&qword_100927E40, &unk_1007BA470);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  sub_10074B384();
  if (swift_dynamicCastClass())
  {

    sub_10074B324();
    v7 = OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_learnMoreActionMetrics;
    swift_beginAccess();
    sub_1004D9AF4(v6, &v1[v7]);
    swift_endAccess();
    sub_10074B334();
    v8 = OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_backButtonActionMetrics;
    swift_beginAccess();
    sub_1004D9AF4(v6, &v1[v8]);
    swift_endAccess();
    sub_10074B354();
  }

  else
  {
    sub_1007482D4();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_6;
    }

    sub_100748274();
    v9 = OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_learnMoreActionMetrics;
    swift_beginAccess();
    sub_1004D9AF4(v6, &v1[v9]);
    swift_endAccess();
    sub_100748284();
    v10 = OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_backButtonActionMetrics;
    swift_beginAccess();
    sub_1004D9AF4(v6, &v1[v10]);
    swift_endAccess();
    sub_1007482A4();
  }

  v11 = OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_closeButtonActionMetrics;
  swift_beginAccess();
  sub_1004D9AF4(v6, &v2[v11]);
  swift_endAccess();
LABEL_6:
  v12 = [v2 traitCollection];
  if (v12)
  {
    v13 = v12;
    if (sub_1007537D4())
    {
      sub_100753804();
    }
  }

  v14 = [v2 view];
  if (v14)
  {
    v15 = v14;
    [v14 bounds];
    v17 = v16;
    v19 = v18;

    v20 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_artworkLoader];
    v21 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_objectGraph];

    sub_1001A164C(a1, v20, v21, v17, v19);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1004D8BE4(uint64_t a1)
{
  v3 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_objectGraph;
  v7 = sub_10000C518(&unk_100923210, &unk_1007A5C60);

  sub_1007526C4();

  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10000C8CC(v5, &unk_100923960, &qword_1007A6240);
  }

  v10 = *(v1 + v6);

  sub_1003C0E00(a1, 1, v10, v5);

  return (*(v8 + 8))(v5, v7);
}

double sub_1004D8D6C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  sub_100745584();
  sub_100745564();
  sub_100745514();

  sub_100745564();

  sub_100745524();

  v6 = sub_1007427A4();
  if (v6)
  {
    v7 = v6;
    v8 = OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_objectGraph;
    v9 = sub_10000C518(&unk_100923210, &unk_1007A5C60);

    sub_1007526C4();

    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v5, 1, v9) == 1)
    {
      sub_10000C8CC(v5, &unk_100923960, &qword_1007A6240);
    }

    else
    {
      v12 = *(a2 + v8);

      sub_1003C0E00(v7, 1, v12, v5);

      (*(v10 + 8))(v5, v9);
    }

    sub_100745564();
    sub_100745524();
  }

  else
  {
  }

  return result;
}

uint64_t sub_1004D8FC4()
{
  v0 = sub_100752314();
  v17 = *(v0 - 8);
  v18 = v0;
  __chkstk_darwin(v0);
  v2 = v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100752B34();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v16 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v13 - v7;
  sub_10000C518(&qword_1009366A8, qword_1007BECB8);

  sub_100752754();

  v14 = v20[6];
  v15 = v20[5];
  sub_100745584();
  sub_100745564();
  sub_100745514();

  sub_100745564();
  v13[3] = sub_100745574();

  sub_100745564();
  sub_100745554();

  v9 = sub_10074CE34();

  sub_100752754();

  if (v19[0])
  {
    v10 = &protocol witness table for SearchGhostHintMetricsTracker;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v19[1] = 0;
    v19[2] = 0;
  }

  v19[3] = v9;
  v19[4] = v10;
  sub_100745564();
  sub_100745504();

  sub_10000C518(&qword_1009366B0, &unk_1007C64F0);

  sub_100752754();

  sub_100752B24();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_10000C8CC(v20, &qword_100935468, &unk_1007BDA50);
  sub_10000C8CC(v19, &qword_100935460, qword_1007C6500);
  (*(v4 + 16))(v16, v8, v3);

  sub_1007522F4();
  v11 = sub_100752724();

  (*(v17 + 8))(v2, v18);
  (*(v4 + 8))(v8, v3);
  return v11;
}

uint64_t type metadata accessor for AppPromotionDetailPageViewController(uint64_t a1)
{
  result = qword_10093ADA0;
  if (!qword_10093ADA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004D9690(uint64_t a1)
{
  sub_1004D975C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1004D975C(uint64_t a1)
{
  if (!qword_10093ADB0)
  {
    sub_100752614();
    v1 = sub_100754284();
    if (!v2)
    {
      atomic_store(v1, &qword_10093ADB0);
    }
  }
}

CGFloat sub_1004D9828()
{
  v1 = *(*v0 + OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_detailPageView);
  [v1 bounds];
  v2 = CGRectGetWidth(v4) * 0.5;
  [v1 bounds];
  CGRectGetHeight(v5);
  return v2;
}

void *sub_1004D9890()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_detailPageView) + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_closeButton);
  v2 = v1;
  return v1;
}

double sub_1004D98D4()
{
  sub_100745584();
  sub_100745564();
  sub_100744324();
  sub_100745544();

  return result;
}

id sub_1004D9948()
{
  v1 = sub_100742964();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v1, v3);
  sub_1007427D4();
  sub_1004DA624(&qword_10093ADC0, &type metadata accessor for AppPromotionDetailPagePresenter, &protocol conformance descriptor for BasePresenter);
  sub_100748C64();
  (*(v2 + 8))(v5, v1);
  return [v0 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_1004D9AF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100927E40, &unk_1007BA470);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1004D9B64()
{
  v1 = v0;
  v2 = sub_100742964();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100745584();
  sub_100745564();
  v6 = sub_100745514();

  (*(v3 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v2);
  sub_1007427D4();
  sub_1004DA624(&qword_10093ADC0, &type metadata accessor for AppPromotionDetailPagePresenter, &protocol conformance descriptor for BasePresenter);
  sub_100748C64();
  (*(v3 + 8))(v5, v2);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v0;
  aBlock[4] = sub_1004DA604;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_100878A40;
  v8 = _Block_copy(aBlock);
  v9 = v1;

  [v9 dismissViewControllerAnimated:1 completion:v8];
  _Block_release(v8);
}

id sub_1004D9D8C()
{
  v1 = v0;
  v2 = sub_100742964();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_10000C518(&qword_100927E40, &unk_1007BA470);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_100752614();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_closeButtonActionMetrics;
  swift_beginAccess();
  sub_10032A6EC(v1 + v18, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000C8CC(v10, &qword_100927E40, &unk_1007BA470);
  }

  else
  {
    v26 = v3;
    (*(v12 + 32))(v17, v10, v11);
    v19 = sub_10000C518(&unk_100923210, &unk_1007A5C60);

    sub_1007526C4();

    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v7, 1, v19) == 1)
    {
      (*(v12 + 8))(v17, v11);
      sub_10000C8CC(v7, &unk_100923960, &qword_1007A6240);
    }

    else
    {
      sub_1007433F4();
      (*(v12 + 16))(v14, v17, v11);
      v21 = sub_1007433D4();
      v22 = sub_1004D8FC4();
      sub_1003C13F0(v21, 1, v22, v7);
      v25 = v2;

      v2 = v25;

      (*(v12 + 8))(v17, v11);
      (*(v20 + 8))(v7, v19);
    }

    v3 = v26;
  }

  v23 = v27;
  (*(v3 + 104))(v27, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v2);
  sub_1007427D4();
  sub_1004DA624(&qword_10093ADC0, &type metadata accessor for AppPromotionDetailPagePresenter, &protocol conformance descriptor for BasePresenter);
  sub_100748C64();
  (*(v3 + 8))(v23, v2);
  return [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_1004DA258(uint64_t *a1)
{
  v3 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_10000C518(&qword_100927E40, &unk_1007BA470);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_100752614();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v16 = *a1;
  swift_beginAccess();
  sub_10032A6EC(v1 + v16, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v17 = &qword_100927E40;
    v18 = &unk_1007BA470;
    v19 = v8;
    return sub_10000C8CC(v19, v17, v18);
  }

  (*(v10 + 32))(v15, v8, v9);
  v20 = sub_10000C518(&unk_100923210, &unk_1007A5C60);

  sub_1007526C4();

  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v5, 1, v20) == 1)
  {
    (*(v10 + 8))(v15, v9);
    v17 = &unk_100923960;
    v18 = &qword_1007A6240;
    v19 = v5;
    return sub_10000C8CC(v19, v17, v18);
  }

  sub_1007433F4();
  (*(v10 + 16))(v12, v15, v9);
  v23 = sub_1007433D4();
  v24 = sub_1004D8FC4();
  sub_1003C13F0(v23, 1, v24, v5);

  (*(v10 + 8))(v15, v9);
  return (*(v21 + 8))(v5, v20);
}