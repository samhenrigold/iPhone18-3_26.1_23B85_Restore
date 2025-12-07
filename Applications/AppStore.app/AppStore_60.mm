uint64_t sub_1006B648C(uint64_t result, uint64_t a2)
{
  v2 = a2 * result;
  if ((a2 * result) >> 64 != (a2 * result) >> 63)
  {
    goto LABEL_31;
  }

  if (v2 < 1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = result / 2;
  v4 = a2 / 2;
  result = sub_100035300(0, 1, 1, _swiftEmptyArrayStorage);
  v5 = v3;
  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = v2 + 1;
  v11 = -1;
  while (1)
  {
    v12 = v9 + v5;
    if (__OFADD__(v9, v5))
    {
      break;
    }

    if (__OFADD__(v8, v4))
    {
      goto LABEL_26;
    }

    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      v20 = v5;
      result = sub_100035300((v13 > 1), v14 + 1, 1, v6);
      v5 = v20;
      v6 = result;
    }

    *(v6 + 16) = v14 + 1;
    v15 = v6 + 16 * v14;
    *(v15 + 32) = v12;
    *(v15 + 40) = v8 + v4;
    if (v9 < 0)
    {
      v17 = -v9;
      if (__OFSUB__(0, v9))
      {
        goto LABEL_30;
      }

      if (v8 != v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v16 = v8 == v9;
      if (!v9)
      {
        goto LABEL_15;
      }

      if (v8 != v9)
      {
        v17 = 1 - v9;
LABEL_14:
        v16 = v8 == v17;
LABEL_15:
        if (!v16)
        {
          goto LABEL_19;
        }
      }
    }

    v18 = -v11;
    if (__OFSUB__(0, v11))
    {
      goto LABEL_29;
    }

    v11 = v7;
    v7 = v18;
LABEL_19:
    v19 = __OFADD__(v9, v7);
    v9 += v7;
    if (v19)
    {
      goto LABEL_27;
    }

    v19 = __OFADD__(v8, v11);
    v8 += v11;
    if (v19)
    {
      goto LABEL_28;
    }

    if (--v10 <= 1)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1006B660C(int64x2_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType;
  v46.receiver = v2;
  v46.super_class = ObjectType;
  v6 = v2[OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType];
  [(int64x2_t *)&v46 frame];
  result = sub_1006B4D5C(v6, v7, v8);
  if (!a1[1].i64[0])
  {
    __break(1u);
    goto LABEL_27;
  }

  if (!result)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v11 = a1[2];
  v12 = a1[2].i64[0];
  if (v12 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_31;
  }

  v13 = v12 % result;
  _VF = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (_VF)
  {
    goto LABEL_28;
  }

  if (!v10)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  if (v11.i64[1] == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_32;
  }

  v16 = v11.i64[1] % v10 + 1;
  if (__OFADD__(v11.i64[1] % v10, 1))
  {
    goto LABEL_30;
  }

  v17.f64[0] = v15;
  if (v2[v5] > 1u)
  {
    if (v2[v5] == 2)
    {
      v17.f64[1] = v16;
      __asm { FMOV            V2.2D, #15.0 }

      recta.origin = vaddq_f64(vmulq_f64(vcvtq_f64_s64(v11), vdupq_n_s64(0x406A000000000000uLL)), vmulq_f64(v17, _Q2));
      y = recta.origin.y;
      v28 = 0x406A000000000000;
LABEL_21:
      v25 = *&v28;
      v26 = [v2 traitCollection];
      goto LABEL_22;
    }
  }

  else if (v2[v5])
  {
    v17.f64[1] = v16;
    __asm { FMOV            V2.2D, #15.0 }

    v22 = vaddq_f64(vmulq_f64(vcvtq_f64_s64(v11), vdupq_n_s64(0x4067E00000000000uLL)), vmulq_f64(v17, _Q2));
    goto LABEL_18;
  }

  v17.f64[1] = v16;
  __asm { FMOV            V2.2D, #15.0 }

  v22 = vaddq_f64(vmulq_f64(vcvtq_f64_s64(v11), vdupq_n_s64(0x4056000000000000uLL)), vmulq_f64(v17, _Q2));
  y = v22.y;
  if (v2[v5] > 1u)
  {
    recta.origin = v22;
    goto LABEL_20;
  }

  if (v2[v5])
  {
LABEL_18:
    recta.origin = v22;
    y = v22.y;
LABEL_20:
    v28 = 0x4067E00000000000;
    goto LABEL_21;
  }

  v25 = 88.0;
  v26 = [v2 traitCollection];
LABEL_22:
  v29 = v26;
  v30 = UITraitCollection.prefersRightToLeftLayouts.getter();

  if (v30)
  {
    v47.origin.x = recta.origin.x;
    v47.origin.y = y;
    v47.size.width = v25;
    v47.size.height = v25;
    MinX = CGRectGetMinX(v47);
    v48.origin.x = recta.origin.x;
    v48.origin.y = y;
    v48.size.width = v25;
    v48.size.height = v25;
    MaxY = CGRectGetMaxY(v48);
    v33 = *&v2[OBJC_IVAR____TtC8AppStore11ArtworkGrid_contentView];
    [v2 convertPoint:v33 fromCoordinateSpace:{MinX, MaxY}];
    v35 = v34;
    v49.origin.x = recta.origin.x;
    v49.origin.y = y;
    v49.size.width = v25;
    v49.size.height = v25;
    MaxX = CGRectGetMaxX(v49);
  }

  else
  {
    v33 = *&v2[OBJC_IVAR____TtC8AppStore11ArtworkGrid_contentView];
    [v2 convertPoint:v33 fromCoordinateSpace:{recta.origin.x, y}];
    v35 = v37;
    v50.origin.x = recta.origin.x;
    v50.origin.y = y;
    v50.size.width = v25;
    v50.size.height = v25;
    MaxX = CGRectGetMinX(v50);
  }

  v38 = MaxX;
  v51.origin.x = recta.origin.x;
  v51.origin.y = y;
  v51.size.width = v25;
  v51.size.height = v25;
  [v2 convertPoint:v33 fromCoordinateSpace:{v38, CGRectGetMaxY(v51)}];
  v40 = v39;
  v41 = dbl_1007DE1A0[v2[v5]];
  *&recta.size.width = v2;
  *&recta.size.height = ObjectType;
  [(CGSize *)&recta.size frame];
  v42 = CGRectGetHeight(v52) - dbl_1007DE1C0[v2[v5]] - v40;
  [v33 center];
  return [v33 setCenter:{v41 - v35 + v43, v42 + v44}];
}

void sub_1006B696C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType;
  v92.receiver = v2;
  v92.super_class = ObjectType;
  v6 = v2[OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType];
  objc_msgSendSuper2(&v92, "frame");
  v9 = sub_1006B4D5C(v6, v7, v8);
  v11 = v9 * v10;
  if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
  {
    goto LABEL_80;
  }

  v12 = v9;
  v13 = v10;
  v91.receiver = v2;
  v91.super_class = ObjectType;
  v14 = v2[v5];
  objc_msgSendSuper2(&v91, "frame");
  v16.f64[0] = v15;
  v87 = sub_1006B4CD4(v14, v16, v17);
  sub_1006B5960();
  if (v11 < 0)
  {
LABEL_81:
    __break(1u);
  }

  else
  {
    v22 = v18;
    v23 = v19;
    v24 = v20;
    v25 = v21;
    if (!v11)
    {
LABEL_68:
      v72 = &v2[OBJC_IVAR____TtC8AppStore11ArtworkGrid_lastVisibleBounds];
      *v72 = v22;
      v72[1] = v23;
      v72[2] = v24;
      v72[3] = v25;
      return;
    }

    if (v12)
    {
      _ZF = v13 == 0;
    }

    else
    {
      _ZF = 1;
    }

    if (!_ZF)
    {
      v85 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_artworkViews;
      v86 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_contentView;
      v88 = a1 + 32;
      v89 = *(a1 + 16);
      v83 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_artworkImages;
      swift_beginAccess();
      v27 = 0;
      v28 = 0;
      v29 = v12 / 2 - 1;
      v30 = v13 / 2;
      v31 = v13 / 2 - 1;
      v32 = v12 * v31;
      v81 = (v12 * v31) >> 64 != (v12 * v31) >> 63;
      v33 = v29 + v12 * v31;
      v34 = __OFADD__(v29, v32);
      v80 = v34;
      v79 = (v12 * v30) >> 64 != (v12 * v30) >> 63;
      _VF = __OFADD__(v29, v12 * v30);
      v36 = v29 + v12 * v30;
      v37 = _VF;
      v75 = v33 + 1;
      v76 = v36;
      v38 = __OFADD__(v33, 1);
      v77 = v38;
      v78 = v37;
      v73 = v36 + 1;
      v39 = __OFADD__(v36, 1);
      v74 = v39;
      __asm { FMOV            V0.2D, #15.0 }

      v82 = v5;
      v84 = v11;
      while (1)
      {
        if (v28 == v89)
        {
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
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        v45 = *(v88 + 16 * v28);
        v46 = *(v88 + 16 * v28);
        if (v46 == 0x8000000000000000 && v12 == -1)
        {
          goto LABEL_72;
        }

        if (__OFADD__(v46 % v12, 1))
        {
          goto LABEL_70;
        }

        if (*(&v45 + 1) == 0x8000000000000000 && v13 == -1)
        {
          goto LABEL_73;
        }

        if (__OFADD__(*(&v45 + 1) % v13, 1))
        {
          goto LABEL_71;
        }

        if (v2[v5] > 1u)
        {
          if (v2[v5] == 2)
          {
            goto LABEL_40;
          }
        }

        else if (v2[v5])
        {
          goto LABEL_40;
        }

        if (v2[v5] > 1u)
        {
          if (v81)
          {
            goto LABEL_74;
          }

          if (v80)
          {
            goto LABEL_75;
          }

          if (v79)
          {
            goto LABEL_76;
          }

          if (v78)
          {
            goto LABEL_77;
          }

          sub_10002849C(&qword_100980550, &qword_1007B1290);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1007B1E00;
          if (v77)
          {
            goto LABEL_78;
          }

          *(inited + 32) = v75;
          *(inited + 40) = v76;
          if (v74)
          {
            goto LABEL_79;
          }

          *(inited + 48) = v73;
          v48 = sub_100084504(inited);
          swift_setDeallocating();
          if (!v48[2])
          {
            goto LABEL_45;
          }

          goto LABEL_41;
        }

LABEL_40:
        v48 = _swiftEmptySetSingleton;
        if (!_swiftEmptySetSingleton[2])
        {
          goto LABEL_45;
        }

LABEL_41:
        v49 = static Hasher._hash(seed:_:)();
        v50 = -1 << *(v48 + 32);
        v51 = v49 & ~v50;
        if ((*(v48 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v51))
        {
          v52 = ~v50;
          while (*(v48[6] + 8 * v51) != v28)
          {
            v51 = (v51 + 1) & v52;
            if (((*(v48 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v51) & 1) == 0)
            {
              goto LABEL_45;
            }
          }

          goto LABEL_25;
        }

LABEL_45:

        v53 = *&v2[v86];
        [v2 convertRect:v53 fromCoordinateSpace:?];
        v95.origin.x = v22;
        v95.origin.y = v23;
        v95.size.width = v24;
        v95.size.height = v25;
        if (!CGRectIntersectsRect(v94, v95) || v27 >= v87)
        {
          goto LABEL_25;
        }

        swift_beginAccess();
        v55 = *&v2[v85];
        if (*(v55 + 16) && (v56 = sub_1003D7340(v28), (v57 & 1) != 0))
        {
          v58 = v27;
          v59 = *(*(v55 + 56) + 8 * v56);
          swift_endAccess();
          v60 = v59;
        }

        else
        {
          v58 = v27;
          swift_endAccess();
          type metadata accessor for ArtworkView();
          v61 = static ArtworkView.iconArtworkView.getter();
          swift_beginAccess();
          v60 = v61;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v90 = *&v2[v85];
          *&v2[v85] = 0x8000000000000000;
          sub_1000529FC(v60, v28, isUniquelyReferenced_nonNull_native);
          *&v2[v85] = v90;
          swift_endAccess();
          [v53 addSubview:v60];
        }

        [v60 setHidden:{0, v73}];
        v63 = *&v2[v83];
        v64 = *(v63 + 16);
        if (v64)
        {
          v65 = *(v63 + 8 * (v28 % v64) + 32);
          if (v65)
          {
            v66 = v65;
            v67 = ArtworkView.image.getter();
            if (v67)
            {
              v68 = v67;
              sub_100005744(0, &qword_1009744B0, UIImage_ptr);
              v69 = v66;
              v70 = static NSObject.== infix(_:_:)();

              if (v70)
              {
                goto LABEL_23;
              }
            }

            else
            {
              v43 = v66;
            }

            v93.value.super.isa = v65;
            v93.is_nil = 0;
            ArtworkView.setImage(image:animated:)(v93, v44);
LABEL_23:

            v5 = v82;
          }
        }

        ArtworkView.frame.setter();

        v27 = v58 + 1;
        v11 = v84;
LABEL_25:
        if (++v28 == v11)
        {
          goto LABEL_68;
        }
      }
    }
  }

  __break(1u);
}

void sub_1006B701C()
{
  if (v0[OBJC_IVAR____TtC8AppStore11ArtworkGrid_isLazyLayoutEnabled] == 1)
  {
    v1 = &v0[OBJC_IVAR____TtC8AppStore11ArtworkGrid_lastVisibleBounds];
    v2 = *&v0[OBJC_IVAR____TtC8AppStore11ArtworkGrid_lastVisibleBounds];
    rect_8 = *&v0[OBJC_IVAR____TtC8AppStore11ArtworkGrid_lastVisibleBounds + 8];
    v3 = *&v0[OBJC_IVAR____TtC8AppStore11ArtworkGrid_lastVisibleBounds + 16];
    v4 = *&v0[OBJC_IVAR____TtC8AppStore11ArtworkGrid_lastVisibleBounds + 24];
    sub_1006B5960();
    x = v12.origin.x;
    y = v12.origin.y;
    width = v12.size.width;
    height = v12.size.height;
    v9 = CGRectGetWidth(v12);
    v13.origin.x = v2;
    v13.origin.y = rect_8;
    v13.size.width = v3;
    v13.size.height = v4;
    if (CGRectGetWidth(v13) < v9 || (v14.origin.x = x, v14.origin.y = y, v14.size.width = width, v14.size.height = height, v10 = CGRectGetHeight(v14), v15.origin.x = v2, v15.origin.y = rect_8, v15.size.width = v3, v15.size.height = v4, CGRectGetHeight(v15) < v10))
    {
      [v0 setNeedsLayout];
      *v1 = x;
      v1[1] = y;
      v1[2] = width;
      v1[3] = height;
    }
  }
}

uint64_t sub_1006B7118@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v232 = a2;
  v223 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v223);
  v207 = &v194 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v212 = &v194 - v5;
  v231 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v222 = *(v231 - 8);
  __chkstk_darwin(v231);
  v216 = &v194 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v228 = &v194 - v8;
  v9 = sub_10002849C(&qword_1009794E0, &unk_1007C4840);
  __chkstk_darwin(v9 - 8);
  v217 = &v194 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v214 = (&v194 - v12);
  __chkstk_darwin(v13);
  v211 = &v194 - v14;
  __chkstk_darwin(v15);
  v226 = (&v194 - v16);
  v17 = sub_10002849C(&qword_1009794E8, &unk_1007C18C0);
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
  v41 = sub_10002849C(&unk_100984380, &qword_1007C4850);
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
  v63 = type metadata accessor for ShelfBackground();
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v66 = &v194 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v69 = &v194 - v68;
  v70 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v230 = *(v70 - 8);
  __chkstk_darwin(v70);
  v72 = &v194 - v71;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v73 = v236;
  if (v236)
  {
  }

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

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
  ReadOnlyLens.subscript.getter();

  if (v235)
  {
    v77 = ShelfHeader.hasTrailingArtwork.getter();
  }

  else
  {
    v77 = 0;
  }

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v64 + 104))(v66, enum case for ShelfBackground.interactive(_:), v63);
  v78 = static ShelfBackground.== infix(_:_:)();
  v79 = *(v64 + 8);
  v79(v66, v63);
  v79(v69, v63);
  v80 = sub_1006B9288(a1);
  if (sub_1006B9D50(a1))
  {
    if ((v78 & 1) == 0)
    {
      v81 = v77 ^ 1;
      goto LABEL_17;
    }

LABEL_15:
    sub_1001EE328(v233, v232);
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
    ReadOnlyLens.subscript.getter();

    if (v235)
    {
      v85 = v219;
      ShelfHeader.configuration.getter();

      v86 = type metadata accessor for ShelfHeader.Configuration();
      (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
    }

    else
    {
      v113 = type metadata accessor for ShelfHeader.Configuration();
      (*(*(v113 - 8) + 56))(v219, 1, 1, v113);
    }

    v114 = v221;
    if (v77)
    {
      v115 = v214;
      *v214 = xmmword_1007DE1E0;
      v116 = enum case for TitleHeaderLayout.AccessoryVerticalAlignment.corner(_:);
      v117 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
      v118 = *(v117 - 8);
      v119 = *(v118 + 104);
      v227 = (v117 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v119(v115, v116, v117);
      v120 = *(v118 + 56);
      v228 = v117;
      v120(v115, 0, 1, v117);
      if (qword_10096E758 != -1)
      {
        swift_once();
      }

      v121 = sub_1000056A8(v114, qword_1009D2670);
      sub_1001EFDF0(v121, v213);
      v122 = 10.0;
      v123 = v204;
      if (qword_10096E788 != -1)
      {
        swift_once();
      }

      v124 = 1;
      v125 = qword_1009D2700;
LABEL_107:
      v177 = v123;
LABEL_108:
      v178 = sub_1000056A8(v114, v125);
      sub_1001EFDF0(v178, v177);
      v179 = v208;
      (*(v220 + 56))(v208, v124, 1, v114);
      v180 = v213;
      v181 = v205;
      sub_1001EFDF0(v213, v205);
      v182 = v206;
      sub_1001EFDF0(v123, v206);
      sub_100031660(v179, v215, &qword_1009794E8, &unk_1007C18C0);
      v183 = v214;
      sub_100031660(v214, v217, &qword_1009794E0, &unk_1007C4840);
      v184 = v222;
      (*(v222 + 104))(v216, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v231);
      sub_100028BB8();
      v185 = static UIColor.defaultLine.getter();
      sub_10002B894(v183, &qword_1009794E0, &unk_1007C4840);
      sub_10002B894(v179, &qword_1009794E8, &unk_1007C18C0);
      sub_1001EFF9C(v123);
      sub_1001EFF9C(v180);
      sub_10002B894(v219, &unk_100984380, &qword_1007C4850);
      (*(v230 + 8))(v234, v194);
      v186 = v223;
      v187 = *(v223 + 32);
      v188 = v207;
      sub_1001EFEC4(v181, v207, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_1001EFEC4(v182, v188 + v186[5], type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_1000476A0(v215, v188 + v186[6], &qword_1009794E8, &unk_1007C18C0);
      *(v188 + v186[7]) = v229 & 1;
      *(v188 + v187) = 0;
      v189 = v233;
      *(v188 + v186[9]) = v233;
      *(v188 + v186[14]) = v122;
      *(v188 + v186[12]) = 0;
      *(v188 + v186[13]) = v185;
      v190 = v217;
      (*(v184 + 32))(v188 + v186[11], v216, v231);
      type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
      v191 = v228;
      v192 = *(v228 - 1);
      if ((*(v192 + 48))(v190, 1, v228) == 1)
      {
        sub_10002B894(v190, &qword_1009794E0, &unk_1007C4840);
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
      return sub_1001EFEC4(v166, v232, type metadata accessor for TitleHeaderView.Style);
    }

    v126 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
    v127 = *(*(v126 - 8) + 56);
    v227 = (v126 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v127(v214, 1, 1, v126);
    v228 = v126;
    if (v73)
    {
      if (!v233)
      {
        v145 = v200;
        sub_100031660(v219, v200, &unk_100984380, &qword_1007C4850);
        v146 = type metadata accessor for ShelfHeader.Configuration();
        v147 = *(v146 - 8);
        if ((*(v147 + 48))(v145, 1, v146) == 1)
        {
          sub_10002B894(v145, &unk_100984380, &qword_1007C4850);
          v148 = 0;
        }

        else
        {
          v148 = ShelfHeader.Configuration.eyebrowColor.getter();
          (*(v147 + 8))(v145, v146);
        }

        v123 = v204;
        sub_100512504(v148, v213);

        v122 = 16.0;
        if (qword_10096E780 != -1)
        {
          swift_once();
        }

        v124 = 1;
        v125 = qword_1009D26E8;
        goto LABEL_107;
      }

      v128 = v199;
      sub_100031660(v219, v199, &unk_100984380, &qword_1007C4850);
      v129 = type metadata accessor for ShelfHeader.Configuration();
      v130 = *(v129 - 8);
      if ((*(v130 + 48))(v128, 1, v129) == 1)
      {
        sub_10002B894(v128, &unk_100984380, &qword_1007C4850);
        v131 = 0;
      }

      else
      {
        v131 = ShelfHeader.Configuration.eyebrowColor.getter();
        (*(v130 + 8))(v128, v129);
      }

      v123 = v204;
      sub_100512504(v131, v213);

      if (qword_10096E798 != -1)
      {
        swift_once();
      }

      v171 = qword_1009D2730;
    }

    else
    {
      if (!v233)
      {
        v167 = v197;
        sub_100031660(v219, v197, &unk_100984380, &qword_1007C4850);
        v168 = type metadata accessor for ShelfHeader.Configuration();
        v169 = *(v168 - 8);
        if ((*(v169 + 48))(v167, 1, v168) == 1)
        {
          sub_10002B894(v167, &unk_100984380, &qword_1007C4850);
          v170 = 0;
        }

        else
        {
          v170 = ShelfHeader.Configuration.eyebrowColor.getter();
          (*(v169 + 8))(v167, v168);
        }

        v123 = v204;
        sub_100512504(v170, v213);

        v122 = 16.0;
        if (qword_10096E778 != -1)
        {
          swift_once();
        }

        v124 = 1;
        v125 = qword_1009D26D0;
        goto LABEL_107;
      }

      v141 = v196;
      sub_100031660(v219, v196, &unk_100984380, &qword_1007C4850);
      v142 = type metadata accessor for ShelfHeader.Configuration();
      v143 = *(v142 - 8);
      if ((*(v143 + 48))(v141, 1, v142) == 1)
      {
        sub_10002B894(v141, &unk_100984380, &qword_1007C4850);
        v144 = 0;
      }

      else
      {
        v144 = ShelfHeader.Configuration.eyebrowColor.getter();
        (*(v143 + 8))(v141, v142);
      }

      v123 = v204;
      sub_100512504(v144, v213);

      if (qword_10096E790 != -1)
      {
        swift_once();
      }

      v171 = qword_1009D2718;
    }

    v176 = sub_1000056A8(v114, v171);
    sub_1001EFDF0(v176, v123);
    v122 = 16.0;
    if (qword_10096E770 != -1)
    {
      swift_once();
    }

    v124 = 0;
    v125 = qword_1009D26B8;
    v177 = v208;
    goto LABEL_108;
  }

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  if (v235)
  {
    v83 = v229;
    ShelfHeader.configuration.getter();

    v84 = type metadata accessor for ShelfHeader.Configuration();
    (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
  }

  else
  {
    v87 = type metadata accessor for ShelfHeader.Configuration();
    (*(*(v87 - 8) + 56))(v229, 1, 1, v87);
  }

  if (v77)
  {
    v88 = v226;
    *v226 = xmmword_1007DE1E0;
    v89 = enum case for TitleHeaderLayout.AccessoryVerticalAlignment.corner(_:);
    v90 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
    v91 = *(v90 - 8);
    v92 = *(v91 + 104);
    v217 = (v90 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v92(v88, v89, v90);
    v93 = *(v91 + 56);
    v219 = v90;
    v93(v88, 0, 1, v90);
    if (qword_10096E758 != -1)
    {
      swift_once();
    }

    v94 = v221;
    v95 = sub_1000056A8(v221, qword_1009D2670);
    sub_1001EFDF0(v95, v224);
    v96 = 10.0;
    v97 = v209;
    if (qword_10096E788 != -1)
    {
      swift_once();
    }

    v98 = 1;
    v99 = qword_1009D2700;
  }

  else
  {
    v101 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
    v102 = *(*(v101 - 8) + 56);
    v217 = (v101 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v102(v226, 1, 1, v101);
    v219 = v101;
    if (v233)
    {
      if (v80 == 1)
      {
        v103 = v201;
        sub_100031660(v229, v201, &unk_100984380, &qword_1007C4850);
        v104 = type metadata accessor for ShelfHeader.Configuration();
        v105 = *(v104 - 8);
        v106 = (*(v105 + 48))(v103, 1, v104);
        v97 = v209;
        if (v106 == 1)
        {
          sub_10002B894(v103, &unk_100984380, &qword_1007C4850);
          v107 = 0;
        }

        else
        {
          v107 = ShelfHeader.Configuration.eyebrowColor.getter();
          (*(v105 + 8))(v103, v104);
        }

        v94 = v221;
        sub_100512504(v107, v224);

        if (qword_10096E7C0 != -1)
        {
          swift_once();
        }

        v149 = qword_1009D27A8;
      }

      else
      {
        v132 = v202;
        sub_100031660(v229, v202, &unk_100984380, &qword_1007C4850);
        v133 = type metadata accessor for ShelfHeader.Configuration();
        v134 = *(v133 - 8);
        v135 = (*(v134 + 48))(v132, 1, v133);
        v97 = v209;
        if (v135 == 1)
        {
          sub_10002B894(v132, &unk_100984380, &qword_1007C4850);
          v136 = 0;
        }

        else
        {
          v136 = ShelfHeader.Configuration.eyebrowColor.getter();
          (*(v134 + 8))(v132, v133);
        }

        v94 = v221;
        sub_100512504(v136, v224);

        if (qword_10096E7B0 != -1)
        {
          swift_once();
        }

        v149 = qword_1009D2778;
      }

      v150 = sub_1000056A8(v94, v149);
      sub_1001EFDF0(v150, v97);
      v96 = 16.0;
      if (qword_10096E770 != -1)
      {
        swift_once();
      }

      v98 = 0;
      v99 = qword_1009D26B8;
      v100 = v218;
      goto LABEL_73;
    }

    if (v80 == 1)
    {
      v108 = v203;
      sub_100031660(v229, v203, &unk_100984380, &qword_1007C4850);
      v109 = type metadata accessor for ShelfHeader.Configuration();
      v110 = *(v109 - 8);
      v111 = (*(v110 + 48))(v108, 1, v109);
      v94 = v221;
      v97 = v209;
      if (v111 == 1)
      {
        sub_10002B894(v108, &unk_100984380, &qword_1007C4850);
        v112 = 0;
      }

      else
      {
        v112 = ShelfHeader.Configuration.eyebrowColor.getter();
        (*(v110 + 8))(v108, v109);
      }

      sub_100512504(v112, v224);

      v96 = 16.0;
      if (qword_10096E7B8 != -1)
      {
        swift_once();
      }

      v98 = 1;
      v99 = qword_1009D2790;
    }

    else
    {
      v94 = v221;
      v97 = v209;
      if (v73)
      {
        v137 = v198;
        sub_100031660(v229, v198, &unk_100984380, &qword_1007C4850);
        v138 = type metadata accessor for ShelfHeader.Configuration();
        v139 = *(v138 - 8);
        if ((*(v139 + 48))(v137, 1, v138) == 1)
        {
          sub_10002B894(v137, &unk_100984380, &qword_1007C4850);
          v140 = 0;
        }

        else
        {
          v140 = ShelfHeader.Configuration.eyebrowColor.getter();
          (*(v139 + 8))(v137, v138);
        }

        sub_10051250C(v140, v224);

        v96 = 16.0;
        if (qword_10096E7A8 != -1)
        {
          swift_once();
        }

        v98 = 1;
        v99 = qword_1009D2760;
      }

      else
      {
        v172 = v195;
        sub_100031660(v229, v195, &unk_100984380, &qword_1007C4850);
        v173 = type metadata accessor for ShelfHeader.Configuration();
        v174 = *(v173 - 8);
        if ((*(v174 + 48))(v172, 1, v173) == 1)
        {
          sub_10002B894(v172, &unk_100984380, &qword_1007C4850);
          v175 = 0;
        }

        else
        {
          v175 = ShelfHeader.Configuration.eyebrowColor.getter();
          (*(v174 + 8))(v172, v173);
        }

        sub_100512504(v175, v224);

        v96 = 16.0;
        if (qword_10096E7A0 != -1)
        {
          swift_once();
        }

        v98 = 1;
        v99 = qword_1009D2748;
      }
    }
  }

  v100 = v97;
LABEL_73:
  v151 = sub_1000056A8(v94, v99);
  sub_1001EFDF0(v151, v100);
  v152 = v218;
  (*(v220 + 56))(v218, v98, 1, v94);
  v153 = v224;
  v154 = v210;
  sub_1001EFDF0(v224, v210);
  sub_1001EFDF0(v97, v225);
  sub_100031660(v152, v227, &qword_1009794E8, &unk_1007C18C0);
  v155 = v226;
  v156 = v211;
  sub_100031660(v226, v211, &qword_1009794E0, &unk_1007C4840);
  v157 = v222;
  (*(v222 + 104))(v228, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v231);
  sub_100028BB8();
  v221 = static UIColor.defaultLine.getter();
  sub_10002B894(v155, &qword_1009794E0, &unk_1007C4840);
  sub_10002B894(v152, &qword_1009794E8, &unk_1007C18C0);
  sub_1001EFF9C(v97);
  sub_1001EFF9C(v153);
  sub_10002B894(v229, &unk_100984380, &qword_1007C4850);
  (*(v230 + 8))(v234, v194);
  v158 = v223;
  v159 = *(v223 + 32);
  v160 = v212;
  sub_1001EFEC4(v154, v212, type metadata accessor for TitleHeaderView.TextConfiguration);
  v161 = v156;
  sub_1001EFEC4(v225, v160 + v158[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1000476A0(v227, v160 + v158[6], &qword_1009794E8, &unk_1007C18C0);
  *(v160 + v158[7]) = 0;
  *(v160 + v159) = 0;
  v162 = v233;
  *(v160 + v158[9]) = v233;
  *(v160 + v158[14]) = v96;
  *(v160 + v158[12]) = 0;
  *(v160 + v158[13]) = v221;
  (*(v157 + 32))(v160 + v158[11], v228, v231);
  type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v163 = v219;
  v164 = *(v219 - 8);
  if ((*(v164 + 48))(v161, 1, v219) == 1)
  {
    sub_10002B894(v161, &qword_1009794E0, &unk_1007C4840);
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
  return sub_1001EFEC4(v166, v232, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_1006B9060()
{
  sub_10002849C(&qword_100985F38, &unk_1007CDAE0);
  v0 = type metadata accessor for Shelf.ContentType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007B5370;
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
  v7 = sub_1000833C4(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100992088 = v7;
  return result;
}

uint64_t sub_1006B9288(unint64_t a1)
{
  v95 = sub_10002849C(&qword_10098CB20, &qword_1007D61F0);
  __chkstk_darwin(v95);
  v98 = &v90 - v2;
  v3 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v101 = *(v3 - 8);
  __chkstk_darwin(v3);
  v94 = &v90 - v4;
  v5 = type metadata accessor for ShelfBackground();
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
  v18 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
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
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v29, &unk_10098FFB0, qword_1007B3890);
  v36 = v101;
  sub_1000476A0(v32, v35, &unk_10098FFB0, qword_1007B3890);
  v37 = *(v36 + 48);
  if (v37(v35, 1, v3) == 1)
  {
    sub_10002B894(v35, &unk_10098FFB0, qword_1007B3890);
LABEL_6:
    v40 = v102;
    goto LABEL_7;
  }

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v38 = v103;
  (*(v36 + 8))(v35, v3);
  if (!v38)
  {
    goto LABEL_6;
  }

  v39 = ShelfHeader.hasTrailingArtwork.getter();

  v40 = v102;
  if (v39)
  {
    return 2;
  }

LABEL_7:
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v20, &unk_10098FFB0, qword_1007B3890);
  sub_1000476A0(v23, v26, &unk_10098FFB0, qword_1007B3890);
  if (v37(v26, 1, v3) != 1)
  {
    swift_getKeyPath();
    v45 = v93;
    ReadOnlyLens.subscript.getter();

    v46 = *(v101 + 8);
    v46(v26, v3);
    v47 = v97;
    v48 = v99;
    v49 = v45;
    v50 = v96;
    (*(v97 + 32))(v99, v49, v96);
    v51 = v94;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

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
      v61 = sub_10002849C(&qword_100972A40, &unk_1007B3750);
      v94 = *(v61 + 48);
      if (v55(&v54[v101], v50) == v57)
      {
        v62 = v94;
        v63 = v90;
        v53(v90, &v98[v101], v50);
        (v93)(v63, v50);
        v64 = *v63;
        v65 = *(v61 + 48);
        v66 = ShelfLayoutContext.traitCollection.getter();
        v67 = v95;
        v68 = [v95 resolvedColorWithTraitCollection:v66];

        v69 = ShelfLayoutContext.traitCollection.getter();
        v70 = [v64 resolvedColorWithTraitCollection:v69];

        sub_100028BB8();
        LOBYTE(v69) = static NSObject.== infix(_:_:)();

        if ((v69 & 1) == 0)
        {
          v86 = *(v97 + 8);
          v86(v102, v50);
          v86(v99, v50);
          v87 = type metadata accessor for ShelfBackgroundStyle();
          v88 = *(*(v87 - 8) + 8);
          v88(v63 + v65, v87);
          v88(&v62[v91], v87);
          v89 = v98;
          v86(&v98[v101], v50);
          v86(v89, v50);
          return 2;
        }

        v71 = type metadata accessor for ShelfBackgroundStyle();
        v72 = *(*(v71 - 8) + 8);
        v72(v63 + v65, v71);
        v72(&v62[v91], v71);
      }

      else
      {
        v73 = type metadata accessor for ShelfBackgroundStyle();
        (*(*(v73 - 8) + 8))(&v94[v60], v73);
      }

      v47 = v97;
      v54 = v98;
    }

    v74 = enum case for ShelfBackground.none(_:);
    v75 = v47[13];
    v76 = v92;
    v75(v92, enum case for ShelfBackground.none(_:), v50);
    v100 = sub_1006BA1B4();
    v77 = dispatch thunk of static Equatable.== infix(_:_:)();
    v78 = v47[1];
    v78(v76, v50);
    if ((v77 & 1) == 0)
    {
      v75(v76, v74, v50);
      v79 = static ShelfBackground.== infix(_:_:)();
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
    v83 = static ShelfBackground.== infix(_:_:)();
    v78(v76, v50);
    if (v83)
    {
      v81(v76, v74, v50);
      v84 = v99;
      v85 = dispatch thunk of static Equatable.== infix(_:_:)();
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

    v42 = &qword_10098CB20;
    v43 = &qword_1007D61F0;
    v44 = v54;
    goto LABEL_23;
  }

  v42 = &unk_10098FFB0;
  v43 = qword_1007B3890;
  v44 = v26;
LABEL_23:
  sub_10002B894(v44, v42, v43);
  return 0;
}

uint64_t sub_1006B9D50(uint64_t a1)
{
  v2 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v2 - 8);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v36 = &v32 - v5;
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for Shelf.ContentType();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v33 = &v32 - v12;
  v13 = type metadata accessor for ShelfHeader.Configuration();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v32 - v19;
  v38 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v21 = *(v18 + 8);
  v21(v20, v17);
  if (v39 && (ShelfHeader.configuration.getter(), , v22 = ShelfHeader.Configuration.includeSeparator.getter(), (*(v14 + 8))(v16, v13), (v22 & 1) == 0))
  {
    v25 = 0;
  }

  else
  {
    v24 = v36;
    v23 = v37;
    ShelfLayoutContext.surroundingShelves.getter();
    sub_10002B894(v23, &unk_10098FFB0, qword_1007B3890);
    sub_1000476A0(v24, v8, &unk_10098FFB0, qword_1007B3890);
    if ((*(v18 + 48))(v8, 1, v17) == 1)
    {
      sub_10002B894(v8, &unk_10098FFB0, qword_1007B3890);
      v25 = 1;
    }

    else
    {
      swift_getKeyPath();
      v26 = v32;
      ReadOnlyLens.subscript.getter();

      v21(v8, v17);
      v28 = v33;
      v27 = v34;
      v29 = v35;
      (*(v34 + 32))(v33, v26, v35);
      if (qword_10096EDC8 != -1)
      {
        swift_once();
      }

      v30 = sub_100295E2C(v28, qword_100992088);
      (*(v27 + 8))(v28, v29);
      v25 = v30 ^ 1;
    }
  }

  return v25 & 1;
}

unint64_t sub_1006BA1B4()
{
  result = qword_100981230;
  if (!qword_100981230)
  {
    type metadata accessor for ShelfBackground();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981230);
  }

  return result;
}

uint64_t type metadata accessor for ProductRatingsView(uint64_t a1)
{
  result = qword_1009920C0;
  if (!qword_1009920C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1006BA2B8()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096DF10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v30 = sub_1000056A8(v4, qword_1009D0CB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v31 = v5 + 16;
  v6(v3, v30, v4);
  v23 = enum case for FontSource.useCase(_:);
  v28 = v1[13];
  v28(v3);
  v29 = type metadata accessor for StaticDimension();
  *(&v43 + 1) = v29;
  *v44 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v42);
  *(&v37 + 1) = v0;
  *&v38[0] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(&v36);
  v8 = v1[2];
  v8(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v22 = v1[1];
  v22(v3, v0);
  *&v44[8] = xmmword_1007DE2E0;
  v9 = v30;
  v24 = v4;
  v30 = v6;
  v6(v3, v9, v4);
  v10 = v23;
  (v28)(v3, v23, v0);
  *(&v37 + 1) = v29;
  *&v38[0] = &protocol witness table for StaticDimension;
  sub_1000056E0(&v36);
  *(&v34 + 1) = v0;
  *&v35[0] = &protocol witness table for FontSource;
  v11 = sub_1000056E0(&v33);
  v25 = v8;
  v26 = v1 + 2;
  v8(v11, v3, v0);
  v12 = v22;
  StaticDimension.init(_:scaledLike:)();
  v27 = v1 + 1;
  v12(v3, v0);
  if (qword_10096DF20 != -1)
  {
    swift_once();
  }

  v13 = v24;
  v14 = sub_1000056A8(v24, qword_1009D0CE0);
  v30(v3, v14, v13);
  v15 = v28;
  (v28)(v3, v10, v0);
  v16 = v10;
  if (qword_10096EDE0 != -1)
  {
    swift_once();
  }

  v17 = qword_1009D35C8;
  *&v39 = type metadata accessor for CappedSizeStaticDimension();
  *(&v39 + 1) = sub_1006BBB38(&unk_100991130, &type metadata accessor for CappedSizeStaticDimension, &protocol conformance descriptor for CappedSizeStaticDimension);
  sub_1000056E0(v38 + 1);
  v18 = v17;
  CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)();
  v40 = xmmword_1007DE2F0;
  v41 = 0x4069C00000000000;
  if (qword_10096DF18 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v13, qword_1009D0CC8);
  v30(v3, v19, v13);
  v15(v3, v16, v0);
  *(&v34 + 1) = v29;
  *&v35[0] = &protocol witness table for StaticDimension;
  sub_1000056E0(&v33);
  v32[3] = v0;
  v32[4] = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v32);
  v25(v20, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v12(v3, v0);
  *(v35 + 8) = xmmword_1007DE300;
  xmmword_1009D34D0 = v42;
  unk_1009D34E0 = v43;
  xmmword_1009D34F0 = *v44;
  unk_1009D3538 = v38[1];
  unk_1009D3548 = v39;
  unk_1009D3558 = v40;
  unk_1009D3508 = v36;
  *(&v35[1] + 1) = 0x4077000000000000;
  qword_1009D3500 = *&v44[16];
  qword_1009D3568 = v41;
  unk_1009D3518 = v37;
  unk_1009D3528 = v38[0];
  xmmword_1009D3590 = v35[0];
  unk_1009D35A0 = v35[1];
  result = *&v34;
  xmmword_1009D3570 = v33;
  unk_1009D3580 = v34;
  return result;
}

double sub_1006BA830()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10002849C(&unk_100970ED0, &unk_1007B2390);
  sub_100005644(v7, qword_1009D35B0);
  sub_1000056A8(v7, qword_1009D35B0);
  if (qword_10096DF18 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v0, qword_1009D0CC8);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_10096DF10 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v0, qword_1009D0CB0);
  v9(v3, v10, v0);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  Conditional<>.init(regularValue:compactValue:)();
  return result;
}

char *sub_1006BAA40(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v79 = type metadata accessor for DynamicTextAppearance();
  v10 = *(v79 - 8);
  __chkstk_darwin(v79);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v4[qword_1009920B8] = 0;
  type metadata accessor for DynamicLabel();
  *&v4[qword_100992090] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = type metadata accessor for RatingView();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC8AppStore10RatingView_rating] = 0;
  *&v15[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor] = 0;
  v16 = &v15[OBJC_IVAR____TtC8AppStore10RatingView_starPadding];
  *v16 = 0;
  v16[8] = 1;
  *&v15[OBJC_IVAR____TtC8AppStore10RatingView_maxNumberOfStars] = 5;
  if (qword_10096DAE8 != -1)
  {
    swift_once();
  }

  v17 = qword_100982C88;
  *&v15[OBJC_IVAR____TtC8AppStore10RatingView_starColor] = qword_100982C88;
  v15[OBJC_IVAR____TtC8AppStore10RatingView_starSize] = 0;
  *v16 = 0;
  v16[8] = 1;
  v15[OBJC_IVAR____TtC8AppStore10RatingView_useCase] = 1;
  v18 = type metadata accessor for StarRow();
  v19 = objc_allocWithZone(v18);
  v20 = v17;
  *&v15[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView] = sub_1003A533C(5, 1, 0, 0, 1, 0, 1);
  v15[OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars] = 0;
  v21 = objc_allocWithZone(v18);
  *&v15[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView] = sub_1003A533C(5, 0, 0, 0, 1, 0, 1);
  v82.receiver = v15;
  v82.super_class = v14;
  v22 = objc_msgSendSuper2(&v82, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1003A2F78();
  v23 = OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView;
  v24 = *&v22[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView];
  v25 = *&v24[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating];
  *&v24[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating] = *&v22[OBJC_IVAR____TtC8AppStore10RatingView_rating];
  v26 = v24;
  sub_1003A3A64(v25);

  if (*&v22[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView])
  {
    [v22 addSubview:?];
  }

  [v22 addSubview:{*&v22[v23], v79}];

  *&v5[qword_100992098] = v22;
  DynamicTextAppearance.init()();
  if (qword_10096DF20 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for FontUseCase();
  sub_1000056A8(v27, qword_1009D0CE0);
  DynamicTextAppearance.withFontUseCase(_:)();
  v28 = *(v10 + 8);
  v29 = v79;
  v28(v12, v79);
  *&v5[qword_1009920A0] = DynamicLabel.__allocating_init(with:)();
  DynamicTextAppearance.init()();
  DynamicTextAppearance.withFontUseCase(_:)();
  v28(v12, v29);
  *&v5[qword_1009920A8] = DynamicLabel.__allocating_init(with:)();
  *&v5[qword_1009920B0] = [objc_allocWithZone(type metadata accessor for ProductRatingsHistogramView()) init];
  v81.receiver = v5;
  v81.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v81, "initWithFrame:", a1, a2, a3, a4);
  v31 = qword_100992090;
  v32 = *&v30[qword_100992090];
  sub_100028BB8();
  v33 = v30;
  v34 = v32;
  v35 = static UIColor.primaryText.getter();
  [v34 setTextColor:v35];

  v36 = *&v30[v31];
  v37 = v33;
  [v37 addSubview:v36];
  v38 = qword_100992098;
  v39 = *&v37[qword_100992098];
  v40 = static UIColor.primaryText.getter();
  v41 = *&v39[OBJC_IVAR____TtC8AppStore10RatingView_starColor];
  *&v39[OBJC_IVAR____TtC8AppStore10RatingView_starColor] = v40;
  v42 = v40;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    sub_1003A2F78();
  }

  v43 = *&v37[v38];
  v44 = static UIColor.tertiaryText.getter();
  v45 = static UIColor.primaryText.getter();
  v46 = static UIColor.tertiaryText.getter();
  v47 = static UIColor.primaryText.getter();
  v48.super.isa = UIColor.init(light:lightHighContrast:dark:darkHighContrast:)(v44, v45, v46, v47).super.isa;
  isa = v48.super.isa;
  v50 = *&v43[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor];
  *&v43[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor] = v48;
  if (v50)
  {
    v51 = v48.super.isa;
    v52 = v50;
    v53 = static NSObject.== infix(_:_:)();

    if (v53)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v54 = v48.super.isa;
    v52 = 0;
  }

  sub_1003A2F78();
  v51 = isa;
LABEL_14:

  v55 = *&v37[v38];
  v56 = [v37 traitCollection];

  v57 = [v56 accessibilityContrast];
  v58 = v57 == 0;
  v59 = v55[OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars];
  v55[OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars] = v58;
  if ((v58 ^ v59))
  {
    v60 = *&v55[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView];
    if (v60)
    {
      v61 = *(v60 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_filled);
      *(v60 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_filled) = v58;
      if (((v57 == 0) ^ v61))
      {
        sub_1003A450C();
      }
    }
  }

  v62 = qword_10096EDE8;
  v63 = *&v37[v38];
  if (v62 != -1)
  {
    swift_once();
  }

  [v63 setMaximumContentSizeCategory:qword_1009D35D0];

  [v37 addSubview:*&v37[v38]];
  v64 = qword_1009920A0;
  v65 = qword_10096EDE0;
  v66 = *&v37[qword_1009920A0];
  if (v65 != -1)
  {
    swift_once();
  }

  v67 = qword_1009D35C8;
  [v66 setMaximumContentSizeCategory:qword_1009D35C8];

  v68 = *&v37[v64];
  v69._object = 0x80000001007FBBB0;
  v69._countAndFlagsBits = 0xD000000000000012;
  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  localizedStringWithCount(_:count:comment:)(v69, 5, v70);
  v71 = String._bridgeToObjectiveC()();

  [v68 setText:v71];

  v72 = *&v37[v64];
  v73 = static UIColor.secondaryText.getter();
  [v72 setTextColor:v73];

  [v37 addSubview:*&v37[v64]];
  v74 = qword_1009920A8;
  [*&v37[qword_1009920A8] setMaximumContentSizeCategory:v67];
  v75 = *&v37[v74];
  v76 = static UIColor.secondaryText.getter();
  [v75 setTextColor:v76];

  [v37 addSubview:*&v37[v74]];
  [v37 addSubview:*&v37[qword_1009920B0]];
  sub_1006BB340();
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1007B1890;
  *(v77 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v77 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v77 + 48) = type metadata accessor for UITraitAccessibilityContrast();
  *(v77 + 56) = &protocol witness table for UITraitAccessibilityContrast;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v37;
}

void sub_1006BB340()
{
  v19 = type metadata accessor for FontUseCase();
  v1 = *(v19 - 8);
  __chkstk_darwin(v19);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DynamicTextAppearance();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  sub_1006BB698();
  v18[1] = *&v0[qword_100992090];
  DynamicTextAppearance.init()();
  if (qword_10096EDD8 != -1)
  {
    swift_once();
  }

  v9 = sub_10002849C(&unk_100970ED0, &unk_1007B2390);
  sub_1000056A8(v9, qword_1009D35B0);
  v20 = v0;
  v10 = v0;
  Conditional.evaluate(with:)();

  DynamicTextAppearance.withFontUseCase(_:)();
  (*(v1 + 8))(v3, v19);
  (*(v5 + 8))(v7, v4);
  dispatch thunk of DynamicLabel.dynamicTextAppearance.setter();
  v11 = *&v10[qword_100992098];
  v12 = [v10 traitCollection];
  v13 = [v12 accessibilityContrast];

  v14 = v13 == 0;
  v15 = *(v11 + OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars);
  *(v11 + OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars) = v14;
  if (v14 != v15)
  {
    v16 = *(v11 + OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView);
    if (v16)
    {
      v17 = *(v16 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_filled);
      *(v16 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_filled) = v14;
      if (((v13 == 0) ^ v17))
      {
        sub_1003A450C();
      }
    }
  }
}

void sub_1006BB630(uint64_t a1)
{
  *(a1 + qword_1009920B8) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1006BB698()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = UITraitCollection.isSizeClassCompact.getter();

  v4 = qword_1009920B8;
  v5 = v1[qword_1009920B8] | v3 ^ 1;
  [*&v1[qword_100992098] setHidden:v5 & 1];
  [*&v1[qword_1009920B0] setHidden:(v5 & 1) == 0];
  v6 = *&v1[qword_1009920A0];
  v7 = (v1[v4] & v3 & 1) == 0;

  return [v6 setHidden:v7];
}

id sub_1006BB768@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  if (qword_10096EDD0 != -1)
  {
    swift_once();
  }

  a1[3] = &type metadata for ProductRatingsLayout;
  a1[4] = sub_1006BBAE4();
  v4 = swift_allocObject();
  *a1 = v4;
  sub_10005DD08(&xmmword_1009D34D0, v4 + 16);
  v5 = *(v2 + qword_100992090);
  v6 = type metadata accessor for DynamicLabel();
  *(v4 + 264) = v6;
  *(v4 + 272) = &protocol witness table for UILabel;
  *(v4 + 240) = v5;
  type metadata accessor for RatingView();
  v7 = v5;
  Measurable.placeable.getter();
  v8 = *(v2 + qword_1009920A0);
  *(v4 + 344) = v6;
  *(v4 + 352) = &protocol witness table for UILabel;
  *(v4 + 320) = v8;
  v9 = *(v2 + qword_1009920A8);
  *(v4 + 384) = v6;
  *(v4 + 392) = &protocol witness table for UILabel;
  *(v4 + 360) = v9;
  v13 = *(v2 + qword_1009920B0);
  *(v4 + 424) = type metadata accessor for ProductRatingsHistogramView();
  *(v4 + 432) = sub_1006BBB38(&qword_100992128, type metadata accessor for ProductRatingsHistogramView, &unk_1007CE004);
  *(v4 + 400) = v13;
  *(v4 + 440) = *(v2 + qword_1009920B8);
  v10 = v8;
  v11 = v9;

  return v13;
}

void sub_1006BB964()
{
  v1 = *(v0 + qword_1009920B0);
}

void sub_1006BB9D4(uint64_t a1)
{
  v2 = *(a1 + qword_1009920B0);
}

unint64_t sub_1006BBA6C()
{
  result = qword_100992110;
  if (!qword_100992110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992110);
  }

  return result;
}

unint64_t sub_1006BBAE4()
{
  result = qword_100992120;
  if (!qword_100992120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992120);
  }

  return result;
}

uint64_t sub_1006BBB38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SearchFocusLayoutSectionProvider(uint64_t a1)
{
  result = qword_100992138;
  if (!qword_100992138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1006BBC70(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v8 = *(a1 + 32);
  sub_10002849C(&unk_10097E130, &qword_1007C5840);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  swift_unknownObjectRetain();
  v8(v9, a3, a4, a5);

  swift_unknownObjectRelease();
  return result;
}

void sub_1006BBD2C()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[1];
  if (v3 != v2)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_14:
        __break(1u);
        return;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    if (!__OFADD__(v3, 1))
    {
      v0[1] = v3 + 1;
      v6 = v0[2];
      v8 = v4;
      v6(&v7, &v8);

      return;
    }

    goto LABEL_13;
  }
}

uint64_t sub_1006BBE14(uint64_t a1, void *a2)
{
  v73 = a2;
  v3 = sub_10002849C(&qword_100972620, &unk_1007C4AF0);
  __chkstk_darwin(v3 - 8);
  v75 = &v60 - v4;
  v5 = sub_10002849C(&unk_100984000, "Ȳ\a");
  __chkstk_darwin(v5 - 8);
  v76 = &v60 - v6;
  v77 = sub_10002849C(&qword_1009918C0, "̲\a");
  v74 = *(v77 - 8);
  __chkstk_darwin(v77);
  v72 = &v60 - v7;
  v8 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for SearchEntity();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_100982AA0, qword_1007C0320);
  __chkstk_darwin(v13 - 8);
  v15 = &v60 - v14;
  v16 = sub_10002849C(&qword_100975048, "b,\b");
  __chkstk_darwin(v16 - 8);
  v18 = &v60 - v17;
  v19 = type metadata accessor for AttributedString();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v70 = &v60 - v24;
  __chkstk_darwin(v25);
  v71 = &v60 - v26;
  v27 = SearchAction.term.getter();
  if (!v28)
  {
    return 0;
  }

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    return 0;
  }

  v68 = v27;
  v69 = v28;
  SearchAction.entity.getter();
  if ((*(v10 + 48))(v15, 1, v9) != 1)
  {
    if (qword_10096EC78 != -1)
    {
      swift_once();
    }

    v60 = qword_1009D3290;
    if (qword_10096EC80 != -1)
    {
      swift_once();
    }

    v64 = qword_1009D3298;
    (*(v10 + 16))(v12, v15, v9);
    v31 = (*(v10 + 88))(v12, v9);
    v67 = a1;
    v66 = v20;
    v65 = v10;
    v62 = v9;
    if (v31 == enum case for SearchEntity.developers(_:))
    {
      v63 = "Search.ResultsTitle.InStories";
      v32 = 0xD000000000000020;
    }

    else
    {
      if (v31 != enum case for SearchEntity.stories(_:))
      {
        if (v31 == enum case for SearchEntity.arcade(_:))
        {
          v63 = "Search.ResultsTitle.InWatch";
          v33 = 0xD00000000000001CLL;
        }

        else
        {
          if (v31 != enum case for SearchEntity.watch(_:))
          {
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          v63 = "must be handled.";
          v33 = 0xD00000000000001BLL;
        }

        v61 = v33;
        goto LABEL_23;
      }

      v63 = "Search.ResultsTitle.InArcade";
      v32 = 0xD00000000000001DLL;
    }

    v61 = v32;
LABEL_23:
    sub_10002849C(&unk_100984010, &qword_1007BCDD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B10D0;
    *(inited + 32) = 0x745F686372616573;
    *(inited + 40) = 0xEB000000006D7265;
    v35 = v69;
    *(inited + 48) = v68;
    *(inited + 56) = v35;

    v36 = sub_1001962CC(inited);
    swift_setDeallocating();
    sub_10002B894(inited + 32, &unk_100989050, &qword_1007CB9D0);
    v37._object = (v63 | 0x8000000000000000);
    v37._countAndFlagsBits = v61;
    localizedString(_:with:)(v37, v36);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v38 = v73;
    v79[0] = v73;
    sub_1001469E0();
    v39 = v38;
    AttributedString.subscript.setter();
    v40 = v64;
    v79[0] = v64;
    sub_1002F4F4C();
    v41 = v40;
    AttributedString.subscript.setter();
    v79[0] = v68;
    v79[1] = v35;
    v42 = type metadata accessor for Locale();
    v43 = v75;
    (*(*(v42 - 8) + 56))(v75, 1, 1, v42);
    sub_1006BF63C(&unk_100984030, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
    sub_10007FED4();
    v44 = v76;
    AttributedStringProtocol.range<A>(of:options:locale:)();
    sub_10002B894(v43, &qword_100972620, &unk_1007C4AF0);
    if ((*(v74 + 48))(v44, 1, v77) == 1)
    {
      v45 = &unk_100984000;
      v46 = "Ȳ\a";
    }

    else
    {
      v47 = v44;
      v44 = v72;
      sub_1003EBAA0(v47, v72);
      v48 = v60;
      v49 = v60;
      sub_1003EBB10();
      v50 = AttributedString.subscript.modify();
      v78 = v48;
      AttributedSubstring.subscript.setter();
      v50(v79, 0);
      v45 = &qword_1009918C0;
      v46 = "̲\a";
    }

    sub_10002B894(v44, v45, v46);
    v51 = v65;
    v52 = v62;
    v53 = v66;
    v54 = *(v66 + 32);
    v54(v18, v22, v19);
    (*(v53 + 56))(v18, 0, 1, v19);
    (*(v51 + 8))(v15, v52);
    if ((*(v53 + 48))(v18, 1, v19) != 1)
    {

      v58 = v71;
      v54(v71, v18, v19);
      sub_100005744(0, &unk_100984040, NSAttributedString_ptr);
      (*(v53 + 16))(v70, v58, v19);
      v59 = NSAttributedString.init(_:)();
      (*(v53 + 8))(v58, v19);
      return v59;
    }

    goto LABEL_27;
  }

  sub_10002B894(v15, &unk_100982AA0, qword_1007C0320);
  (*(v20 + 56))(v18, 1, 1, v19);
LABEL_27:
  sub_10002B894(v18, &qword_100975048, "b,\b");
  v55 = Action.title.getter();
  if (!v56)
  {
    return v68;
  }

  v57 = v55;

  return v57;
}

uint64_t sub_1006BC8E4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_10002C0AC(a1, v11);
  type metadata accessor for SearchLandingLayoutSectionProvider(0);
  swift_allocObject();
  sub_10002C0AC(v11, v10);
  sub_10002C0AC(v10, v9);

  v6 = BasePageLayoutSectionProvider.init(componentTypeMappingProvider:visibleItemsObserverProviders:componentHeightCache:)();
  sub_100007000(v10);
  sub_100007000(v11);
  *(v4 + qword_100992130) = v6;
  sub_10002C0AC(a1, v11);
  sub_10002C0AC(v11, v10);
  v7 = BasePageLayoutSectionProvider.init(componentTypeMappingProvider:visibleItemsObserverProviders:componentHeightCache:)();
  sub_100007000(a1);
  sub_100007000(v11);
  return v7;
}

id sub_1006BC9E4(__objc2_class_ro *a1, uint64_t (*a2)(void), void (*a3)(char *, uint64_t), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v239 = a8;
  v234 = a7;
  v230 = a6;
  v231 = a5;
  v232 = a4;
  v253 = a3;
  v254 = a2;
  v255 = a10;
  v238 = a9;
  v11 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  v241 = (&v226 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for ItemLayoutContext();
  v247 = *(v13 - 8);
  v248 = v13;
  __chkstk_darwin(v13);
  v242 = (&v226 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = &v226 - v16;
  v228 = type metadata accessor for PageGrid();
  v229 = *(v228 - 8);
  __chkstk_darwin(v228);
  v227 = &v226 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002849C(&qword_10097F480, &unk_1007C4AB0);
  __chkstk_darwin(v19 - 8);
  v233 = &v226 - v20;
  v21 = type metadata accessor for Shelf.ContentType();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v237 = &v226 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v251 = &v226 - v25;
  __chkstk_darwin(v26);
  v28 = &v226 - v27;
  v29 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  *&v236 = &v226 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v226 - v33;
  __chkstk_darwin(v35);
  v240 = &v226 - v36;
  __chkstk_darwin(v37);
  v39 = &v226 - v38;
  v235 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v40 = *(v30 + 8);
  v245 = v29;
  v244 = v30 + 8;
  v243 = v40;
  v40(v39, v29);
  v249 = v28;
  v250 = v22;
  v43 = *(v22 + 88);
  v42 = (v22 + 88);
  v41 = v43;
  v246 = v21;
  v44 = (v43)(v28, v21);
  if (v44 == enum case for Shelf.ContentType.singleColumnList(_:) || v44 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    v64 = v254();
    v65 = *(v64 + 16);
    v66 = _swiftEmptyArrayStorage;
    if (v65)
    {
      v256 = _swiftEmptyArrayStorage;
      sub_100144108(0, v65, 0);
      v251 = *(v247 + 16);
      v67 = (*(v247 + 80) + 32) & ~*(v247 + 80);
      v226 = v64;
      v68 = v64 + v67;
      v237 = "outSectionProvider";
      v69 = *(v247 + 72);
      v249 = v247 + 8;
      v250 = v69;
      v236 = xmmword_1007B10D0;
      v66 = v256;
      v70 = v248;
      v71 = v242;
      v247 += 16;
      do
      {
        (v251)(v71, v68, v70);
        BasePageLayoutSectionProvider.componentTypeMappingProvider.getter();
        sub_10002A400(&aBlock, v260);
        if (dispatch thunk of ShelfComponentTypeMappingProvider.componentType(for:asPartOf:)() && swift_conformsToProtocol2())
        {
          sub_100007000(&aBlock);
          dispatch thunk of static ExactHeightProviding.height(in:asPartOf:)();
          v73 = v72;
        }

        else
        {
          sub_100007000(&aBlock);
          if (qword_10096D110 != -1)
          {
            swift_once();
          }

          v254 = type metadata accessor for OSLogger();
          v253 = sub_1000056A8(v254, qword_1009CE1E8);
          sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
          type metadata accessor for LogMessage();
          *(swift_allocObject() + 16) = v236;
          LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v74._object = (v237 | 0x8000000000000000);
          v74._countAndFlagsBits = 0xD000000000000047;
          LogMessage.StringInterpolation.appendLiteral(_:)(v74);
          swift_getKeyPath();
          v75 = v240;
          ItemLayoutContext.subscript.getter();

          swift_getKeyPath();
          v260 = v246;
          sub_1000056E0(&aBlock);
          v76 = v245;
          ReadOnlyLens.subscript.getter();

          v77 = v76;
          v71 = v242;
          v243(v75, v77);
          LogMessage.StringInterpolation.appendInterpolation(safe:)();
          sub_10002B894(&aBlock, &unk_1009711D0, &unk_1007B1A10);
          v78._countAndFlagsBits = 0;
          v78._object = 0xE000000000000000;
          LogMessage.StringInterpolation.appendLiteral(_:)(v78);
          LogMessage.init(stringInterpolation:)();
          Logger.error(_:)();

          v73 = 0;
          v70 = v248;
        }

        (*v249)(v71, v70);
        v256 = v66;
        v80 = v66[2];
        v79 = v66[3];
        if (v80 >= v79 >> 1)
        {
          sub_100144108((v79 > 1), v80 + 1, 1);
          v66 = v256;
        }

        v66[2] = v80 + 1;
        v66[v80 + 4] = v73;
        v68 += v250;
        --v65;
      }

      while (v65);
      v49 = v235;
      v81 = v233;
    }

    else
    {
      v49 = v235;
      v81 = v233;
    }

    v91 = COERCE_DOUBLE(sub_1003E616C(v66));
    v92 = v231;
    if ((v93 & 1) != 0 || v91 <= 0.0)
    {

      goto LABEL_31;
    }

    v94 = static ComponentLayoutBuilder.verticalLayoutGroup(for:withItemHeights:in:itemSupplementaryProvider:asPartOf:)();

    v95 = [objc_opt_self() sectionWithGroup:v94];
    swift_getObjectType();
    dispatch thunk of ShelfSupplementaryProvider.supplementaryItems(for:shelfLayoutSpacingProvider:asPartOf:)();
    sub_100005744(0, &qword_10097F460, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v95 setBoundarySupplementaryItems:isa];

    dispatch thunk of ShelfSupplementaryProvider.decorationItems(for:shelfLayoutSpacingProvider:asPartOf:)();
    sub_100005744(0, &unk_10097D670, NSCollectionLayoutDecorationItem_ptr);
    v97 = Array._bridgeToObjectiveC()().super.isa;

    [v95 setDecorationItems:v97];

    v98 = v227;
    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.horizontalDirectionalMargins.getter();
    v100 = v99;
    v102 = v101;
    (*(v229 + 8))(v98, v228);
    sub_10002A400(v92, v92[3]);
    ShelfLayoutSpacingProvider.topPaddingValue(in:)();
    v104 = v103;
    sub_10002A400(v92, v92[3]);
    ShelfLayoutSpacingProvider.bottomPaddingValue(in:)();
    [v95 setContentInsets:{v104, v100, v105, v102}];
    BasePageLayoutSectionProvider.visibleItemsObserverProviders.getter();
    v106 = Array<A>.visibleItemsTransformer(for:observing:asPartOf:)();
    v108 = v107;

    if (v106)
    {
      v261 = v106;
      v262 = v108;
      aBlock = _NSConcreteStackBlock;
      v258 = 1107296256;
      v259 = sub_1006BBC70;
      v260 = &unk_1008CED90;
      v106 = _Block_copy(&aBlock);
    }

    [v95 setVisibleItemsInvalidationHandler:{v106, v226}];
    _Block_release(v106);

    return v95;
  }

  if (v44 != enum case for Shelf.ContentType.scrollablePill(_:))
  {
    v242 = &v226;
    v252 = *(v252 + qword_100992130);
    __chkstk_darwin(v44);
    v47 = v235;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    v82 = v251;
    v83 = v245;
    ReadOnlyLens.subscript.getter();

    v243(v34, v83);
    v241 = v41;
    v84 = (v41)(v82, v246);
    v85 = v232;
    if (v84 == enum case for Shelf.ContentType.action(_:))
    {
      v86 = ASKDeviceTypeGetCurrent();
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v88;
      if (v87 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v89 == v90)
      {
        goto LABEL_23;
      }

      v147 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v147)
      {
        goto LABEL_46;
      }

      v86 = ASKDeviceTypeGetCurrent();
      v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v186 = v185;
      if (v184 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v186 == v187)
      {
LABEL_23:

LABEL_46:
        v148 = (v254)(v84);
        v149 = *(v148 + 16);
        v42 = _swiftEmptyArrayStorage;
        v245 = v149;
        if (v149)
        {
          aBlock = _swiftEmptyArrayStorage;
          sub_100144108(0, v149, 0);
          v150 = type metadata accessor for SearchActionContentView(0);
          v42 = aBlock;
          v151 = v247 + 16;
          v253 = *(v247 + 16);
          v254 = v150;
          v152 = *(v247 + 80);
          v247 = v148;
          v153 = v148 + ((v152 + 32) & ~v152);
          v154 = *(v151 + 56);
          v155 = (v151 - 8);
          v156 = v149;
          do
          {
            v157 = v248;
            (v253)(v17, v153, v248);
            v158 = sub_100448E18(v17);
            (*v155)(v17, v157);
            aBlock = v42;
            v160 = v42[2];
            v159 = v42[3];
            if (v160 >= v159 >> 1)
            {
              sub_100144108((v159 > 1), v160 + 1, 1);
              v42 = aBlock;
            }

            v42[2] = (v160 + 1);
            *&v42[v160 + 4] = v158;
            v153 += v154;
            --v156;
          }

          while (v156);
          v47 = v235;
          v161 = v233;
        }

        else
        {
LABEL_64:
          v161 = v233;
        }

        v168 = COERCE_DOUBLE(sub_1003E616C(v42));
        if ((v169 & 1) == 0 && v168 > 0.0)
        {
          v170 = *&v168;
          v171 = v227;
          ShelfLayoutContext.contentPageGrid.getter();
          PageGrid.columnCount.getter();
          v173 = v172;
          v174 = v229 + 8;
          v175 = *(v229 + 8);
          v175(v171, v228);
          v229 = v174;
          v253 = v175;
          if (v173 < 2.0)
          {
            goto LABEL_89;
          }

          v176 = v245;
          if (!v245)
          {
            goto LABEL_89;
          }

          v177 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v177 + 16) = v176;
          v178 = (v177 + 32);
          if (v176 >= 4)
          {
            v179 = v176 & 0x7FFFFFFFFFFFFFFCLL;
            v178 += v176 & 0x7FFFFFFFFFFFFFFCLL;
            v202 = vdupq_n_s64(v170);
            v203 = (v177 + 48);
            v204 = v176 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v203[-1] = v202;
              *v203 = v202;
              v203 += 2;
              v204 -= 4;
            }

            while (v204);
            if (v176 == v179)
            {
              goto LABEL_89;
            }
          }

          else
          {
            v179 = 0;
          }

          v205 = v176 - v179;
          do
          {
            *v178++ = v170;
            --v205;
          }

          while (v205);
LABEL_89:
          v206 = static ComponentLayoutBuilder.verticalLayoutGroup(for:withItemHeights:in:itemSupplementaryProvider:asPartOf:)();

          v207 = objc_opt_self();
          v254 = v206;
          v95 = [v207 sectionWithGroup:v206];
          swift_getObjectType();
          v208 = v231;
          dispatch thunk of ShelfSupplementaryProvider.supplementaryItems(for:shelfLayoutSpacingProvider:asPartOf:)();
          sub_100005744(0, &qword_10097F460, NSCollectionLayoutBoundarySupplementaryItem_ptr);
          v209 = Array._bridgeToObjectiveC()().super.isa;

          [v95 setBoundarySupplementaryItems:v209];

          dispatch thunk of ShelfSupplementaryProvider.decorationItems(for:shelfLayoutSpacingProvider:asPartOf:)();
          sub_100005744(0, &unk_10097D670, NSCollectionLayoutDecorationItem_ptr);
          v210 = Array._bridgeToObjectiveC()().super.isa;

          [v95 setDecorationItems:v210];

          v211 = v227;
          ShelfLayoutContext.contentPageGrid.getter();
          PageGrid.horizontalDirectionalMargins.getter();
          v213 = v212;
          v215 = v214;
          v253(v211, v228);
          sub_10002A400(v208, v208[3]);
          ShelfLayoutSpacingProvider.topPaddingValue(in:)();
          v217 = v216;
          sub_10002A400(v208, v208[3]);
          ShelfLayoutSpacingProvider.bottomPaddingValue(in:)();
          [v95 setContentInsets:{v217, v213, v218, v215}];
          BasePageLayoutSectionProvider.visibleItemsObserverProviders.getter();
          v219 = Array<A>.visibleItemsTransformer(for:observing:asPartOf:)();
          v221 = v220;

          if (v219)
          {
            v261 = v219;
            v262 = v221;
            aBlock = _NSConcreteStackBlock;
            v258 = 1107296256;
            v259 = sub_1006BBC70;
            v260 = &unk_1008CED68;
            v219 = _Block_copy(&aBlock);
          }

          v183 = v249;
          v182 = v250;
          [v95 setVisibleItemsInvalidationHandler:v219];
          _Block_release(v219);

          goto LABEL_92;
        }

        sub_100005744(0, &unk_100990AB0, NSCollectionLayoutSection_ptr);
        v180 = type metadata accessor for ShelfLayoutContext();
        v181 = *(v180 - 8);
        (*(v181 + 16))(v161, v47, v180);
        (*(v181 + 56))(v161, 0, 1, v180);
        v95 = static NSCollectionLayoutSection.emptyLayoutSection(for:)();
        sub_10002B894(v161, &qword_10097F480, &unk_1007C4AB0);
        v183 = v249;
        v182 = v250;
        goto LABEL_92;
      }

      v188 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v188)
      {
        goto LABEL_46;
      }
    }

    v248 = &v226;
    __chkstk_darwin(v84);
    __chkstk_darwin(v189);
    type metadata accessor for BasePageLayoutSectionProvider();
    v190 = method lookup function for BasePageLayoutSectionProvider();
    v191 = v85;
    v192 = v231;
    v193 = v239;
    v95 = v190(v47, sub_10002F0EC, &v226 - 4, v191, v231, v230, v234, v239, v238, v255);
    v194 = v236;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    v195 = v237;
    v196 = v245;
    ReadOnlyLens.subscript.getter();

    v243(v194, v196);
    v197 = v241(v195, v246);
    if (v197 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v198 = v254();
      v199 = sub_10040C1D8(v47, v198, v232, v192, v230, v234, v193, v238, v255);

      v95 = v199;
      v182 = v250;
    }

    else
    {
      v182 = v250;
      if (v197 != enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v183 = v249;
        if (v197 == enum case for Shelf.ContentType.smallContactCard(_:))
        {
          [v95 setOrthogonalScrollingBehavior:2];
        }

        else
        {
          (*(v250 + 8))(v237, v246);
        }

        goto LABEL_92;
      }

      v200 = v254();
      v201 = sub_10040D51C(v47, v200, v232, v192, v230, v234, v239, v238, v255);

      v95 = v201;
    }

    v183 = v249;
LABEL_92:
    v222 = *(v182 + 8);
    v223 = v246;
    v222(v251, v246);
    v222(v183, v223);
    return v95;
  }

  v45 = v254();
  v46 = *(v45 + 16);
  v47 = &StringUserDefaultsDebugSetting;
  v48 = &StringUserDefaultsDebugSetting;
  v49 = v235;
  if (v46)
  {
    aBlock = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v42 = objc_opt_self();
    v254 = objc_opt_self();
    v253 = objc_opt_self();
    ObjectType = swift_getObjectType();
    v51 = v247 + 16;
    v250 = *(v247 + 16);
    v251 = ObjectType;
    v52 = *(v247 + 80);
    v247 = v45;
    v53 = v45 + ((v52 + 32) & ~v52);
    v249 = *(v51 + 56);
    v54 = v248;
    do
    {
      (v250)(v17, v53, v54);
      v55 = sub_1006BEB18(v17, 0, 0, 1);
      v57 = v56;
      v58 = [v42 absoluteDimension:v55];
      v59 = [v42 absoluteDimension:v57];
      v60 = [v254 sizeWithWidthDimension:v58 heightDimension:v59];

      dispatch thunk of ItemSupplementaryProvider.supplementaryItems(for:asPartOf:)();
      sub_100005744(0, &qword_100982860, NSCollectionLayoutSupplementaryItem_ptr);
      v61 = Array._bridgeToObjectiveC()().super.isa;

      v62 = [v253 itemWithLayoutSize:v60 supplementaryItems:v61];

      (*(v51 - 8))(v17, v54);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v53 += v249;
      --v46;
    }

    while (v46);

    v63 = aBlock;
    v49 = v235;
    v48 = &StringUserDefaultsDebugSetting;
    v47 = &StringUserDefaultsDebugSetting;
  }

  else
  {

    v63 = _swiftEmptyArrayStorage;
  }

  KeyPath = swift_getKeyPath();
  aBlock = v63;
  v258 = 0;
  v259 = sub_1006BF5E0;
  v260 = KeyPath;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  sub_1006BBD2C();
  v254 = (v63 >> 62);
  if (v113)
  {

    swift_bridgeObjectRelease_n();
    v114 = 0.0;
    goto LABEL_39;
  }

  v253 = KeyPath;
  if (v63 >> 62)
  {
    v225 = v112;
    v115 = _CocoaArrayWrapper.endIndex.getter();
    v112 = v225;
  }

  else
  {
    v115 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v114 = v112;
  v81 = v258;
  if (v258 == v115)
  {
LABEL_38:

    swift_bridgeObjectRelease_n();
    v49 = v235;
    v48 = &StringUserDefaultsDebugSetting;
    v47 = &StringUserDefaultsDebugSetting;
LABEL_39:
    v81 = v233;
    if (v254)
    {
      goto LABEL_96;
    }

    if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    goto LABEL_41;
  }

  v49 = v63 & 0xC000000000000001;
  v47 = (v63 & 0xFFFFFFFFFFFFFF8);
  v48 = &StringUserDefaultsDebugSetting;
  while (1)
  {
    if (v49)
    {
      v162 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v163 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        goto LABEL_63;
      }

      goto LABEL_57;
    }

    if ((v81 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v81 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_95;
    }

    v162 = v63[v81 + 4];
    v163 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

LABEL_57:
    v164 = v162;
    v42 = [v164 layoutSize];
    v165 = [v42 heightDimension];
    [v165 dimension];
    v167 = v166;

    if (v114 < v167)
    {
      v114 = v167;
    }

    ++v81;
    if (v163 == v115)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_31:

    sub_100005744(0, &unk_100990AB0, NSCollectionLayoutSection_ptr);
    v109 = type metadata accessor for ShelfLayoutContext();
    v110 = *(v109 - 8);
    (*(v110 + 16))(v81, v49, v109);
    (*(v110 + 56))(v81, 0, 1, v109);
    v95 = static NSCollectionLayoutSection.emptyLayoutSection(for:)();
    sub_10002B894(v81, &qword_10097F480, &unk_1007C4AB0);
    return v95;
  }

LABEL_41:
  if (v114 < 2.22507386e-308)
  {
    goto LABEL_31;
  }

  v116 = objc_opt_self();
  v117 = v227;
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v119 = v118;
  v120 = v229 + 8;
  v121 = *(v229 + 8);
  v121(v117, v228);
  v122 = v121;
  v251 = v121;
  v229 = v120;
  v123 = [v116 estimatedDimension:v119];
  v124 = [v116 v47[42].ivars];
  v125 = [objc_opt_self() v48[42].weak:v123 ivar:v124lyt];

  v126 = objc_opt_self();
  sub_100005744(0, &qword_10098EFE0, NSCollectionLayoutItem_ptr);
  v127 = Array._bridgeToObjectiveC()().super.isa;

  v254 = v125;
  v128 = [v126 horizontalGroupWithLayoutSize:v125 subitems:v127];

  v129 = objc_opt_self();
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.interColumnSpace.getter();
  v131 = v130;
  v122(v117, v228);
  v132 = [v129 fixedSpacing:v131];
  [v128 setInterItemSpacing:v132];

  v133 = objc_opt_self();
  v253 = v128;
  v95 = [v133 sectionWithGroup:v128];
  swift_getObjectType();
  v134 = v231;
  dispatch thunk of ShelfSupplementaryProvider.supplementaryItems(for:shelfLayoutSpacingProvider:asPartOf:)();
  sub_100005744(0, &qword_10097F460, NSCollectionLayoutBoundarySupplementaryItem_ptr);
  v135 = Array._bridgeToObjectiveC()().super.isa;

  [v95 setBoundarySupplementaryItems:v135];

  dispatch thunk of ShelfSupplementaryProvider.decorationItems(for:shelfLayoutSpacingProvider:asPartOf:)();
  sub_100005744(0, &unk_10097D670, NSCollectionLayoutDecorationItem_ptr);
  v136 = Array._bridgeToObjectiveC()().super.isa;

  [v95 setDecorationItems:v136];

  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.horizontalDirectionalMargins.getter();
  v138 = v137;
  v140 = v139;
  (v251)(v117, v228);
  sub_10002A400(v134, v134[3]);
  ShelfLayoutSpacingProvider.topPaddingValue(in:)();
  v142 = v141;
  sub_10002A400(v134, v134[3]);
  ShelfLayoutSpacingProvider.bottomPaddingValue(in:)();
  [v95 setContentInsets:{v142, v138, v143, v140}];
  [v95 setOrthogonalScrollingBehavior:1];
  BasePageLayoutSectionProvider.visibleItemsObserverProviders.getter();
  v144 = Array<A>.visibleItemsTransformer(for:observing:asPartOf:)();
  v146 = v145;

  if (v144)
  {
    v261 = v144;
    v262 = v146;
    aBlock = _NSConcreteStackBlock;
    v258 = 1107296256;
    v259 = sub_1006BBC70;
    v260 = &unk_1008CEDB8;
    v144 = _Block_copy(&aBlock);
  }

  [v95 setVisibleItemsInvalidationHandler:v144];
  _Block_release(v144);

  return v95;
}

void sub_1006BEA58(id *a1)
{
  v3 = *a1;
  swift_getAtKeyPath();
}

uint64_t sub_1006BEAC0()
{
  BasePageLayoutSectionProvider.deinit();

  return swift_deallocClassInstance();
}

double sub_1006BEB18(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v80 = a4;
  v75 = a2;
  v76 = a3;
  v5 = type metadata accessor for PageGrid();
  v78 = *(v5 - 8);
  __chkstk_darwin(v5);
  v77 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LabelPlaceholder();
  v89 = *(v7 - 8);
  __chkstk_darwin(v7);
  v79 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v88 = &v66 - v10;
  v11 = type metadata accessor for TextAppearance();
  v83 = *(v11 - 8);
  v84 = v11;
  __chkstk_darwin(v11);
  v87 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for DynamicTextAppearance();
  v13 = *(v90 - 8);
  __chkstk_darwin(v90);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v66 - v17;
  __chkstk_darwin(v19);
  v21 = &v66 - v20;
  __chkstk_darwin(v22);
  v24 = &v66 - v23;
  type metadata accessor for SearchAction();
  sub_1006BF63C(&unk_100983FF0, &type metadata accessor for SearchAction, &protocol conformance descriptor for Action);
  ItemLayoutContext.typedModel<A>(as:)();
  v86 = v102[0];
  if (!v102[0])
  {
    return 0.0;
  }

  v85 = v24;
  v70 = v5;
  v74 = v7;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  DynamicTextAppearance.init()();
  if (qword_10096E708 != -1)
  {
    swift_once();
  }

  v73 = qword_1009D25D8;
  DynamicTextAppearance.withTextStyle(_:)();
  v71 = v13;
  v26 = v13 + 8;
  v25 = *(v13 + 8);
  v27 = v15;
  v28 = v90;
  v25(v27, v90);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v25(v18, v28);
  v29 = v21;
  v30 = v85;
  DynamicTextAppearance.withLineBreakMode(_:)();
  v72 = v29;
  v25(v29, v28);
  swift_getKeyPath();
  v82 = a1;
  ItemLayoutContext.subscript.getter();

  v31 = v99;
  v32 = v87;
  TextAppearance.init()();
  DynamicTextAppearance.customTextStyle.getter();
  sub_10002A400(v102, v103);
  dispatch thunk of CustomTextStyle.font(compatibleWith:)();
  TextAppearance.font.setter();
  sub_100007000(v102);
  DynamicTextAppearance.textAlignment.getter();
  TextAppearance.textAlignment.setter();
  DynamicTextAppearance.lineBreakMode.getter();
  TextAppearance.lineBreakMode.setter();
  DynamicTextAppearance.numberOfLines.getter();
  TextAppearance.numberOfLines.setter();
  DynamicTextAppearance.lineSpacing.getter();
  TextAppearance.lineSpacing.setter();

  v33 = TextAppearance.font.getter();
  v34 = sub_1006BBE14(v86, v33);
  v81 = v35;
  v37 = v36;
  LODWORD(v31) = ~v36;

  if (!v31)
  {

    (*(v83 + 8))(v32, v84);
    v25(v30, v90);
    return 0.0;
  }

  v69 = v26;
  (*(v71 + 16))(v72, v30, v90);
  v68 = v37;
  v67 = v25;
  if (v37)
  {
    sub_1003EBB74(v34, v81, 1);
    LabelPlaceholder.Options.init(rawValue:)();
    v38 = v79;
    v39 = v34;
    LabelPlaceholder.init(_:with:where:)();
  }

  else
  {
    sub_1003EBB74(v34, v81, 0);
    LabelPlaceholder.Options.init(rawValue:)();
    v38 = v79;
    v39 = v34;
    LabelPlaceholder.init(_:with:where:)();
  }

  v41 = v74;
  (*(v89 + 32))(v88, v38, v74);

  v42 = Action.artwork.getter();

  v43 = v73;
  if (v42 && (v44 = [objc_opt_self() configurationWithTextStyle:v73 scale:2], swift_getKeyPath(), ItemLayoutContext.subscript.getter(), , v45 = v102[0], v46 = objc_msgSend(v44, "configurationWithTraitCollection:", v102[0]), v45, v44, v47 = static SystemImage.load(artwork:with:includePrivateImages:)(), , v46, v47))
  {
    [v47 size];
    v49 = v48;
    v51 = v50;

    *(&v100 + 1) = &type metadata for FixedSizedPlaceholder;
    v101 = sub_100168330();
    *&v99 = v49;
    *(&v99 + 1) = v51;
  }

  else
  {
    v101 = 0;
    v99 = 0u;
    v100 = 0u;
  }

  v98[3] = v41;
  v98[4] = &protocol witness table for LabelPlaceholder;
  v52 = sub_1000056E0(v98);
  (*(v89 + 16))(v52, v88, v41);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  NSDirectionalEdgeInsets.insetsWithLayoutDirection(in:)();
  sub_1000CB084(&v99, &v95);
  sub_10002C0AC(v98, v94);
  v94[8] = &type metadata for SearchLinkLayout;
  v94[9] = sub_1002679AC();
  v53 = swift_allocObject();
  v94[5] = v53;
  v54 = sub_100267A00();
  v55 = swift_allocObject();
  sub_10002C0AC(v94, v55 + 16);
  sub_1000CB084(&v95, &v92);
  if (v93)
  {
    sub_100005A38(&v92, v91);
    v56 = swift_allocObject();
    sub_100005A38(v91, v56 + 16);
    v57 = v43;
    sub_100007000(v94);
    sub_10002B894(&v95, &unk_10097B860, &qword_1007B49E0);
    v58 = &type metadata for AutoAdjustingPlaceable;
    v59 = v54;
  }

  else
  {
    v60 = v43;
    sub_100007000(v94);
    sub_10002B894(&v95, &unk_10097B860, &qword_1007B49E0);
    v56 = 0;
    v58 = 0;
    v59 = 0;
  }

  v53[2] = v56;
  v53[3] = 0;
  v53[4] = 0;
  v53[5] = v58;
  v53[6] = v59;
  v53[7] = v55;
  v53[10] = &type metadata for AutoAdjustingPlaceable;
  v53[11] = v54;
  v53[12] = v43;
  v53[13] = 0x4014000000000000;
  v96 = type metadata accessor for Margins();
  v97 = &protocol witness table for Margins;
  sub_1000056E0(&v95);
  Margins.init(insets:child:)();
  swift_unknownObjectRelease();
  sub_100005A38(&v95, v102);
  sub_100007000(v98);
  sub_10002B894(&v99, &unk_10097B860, &qword_1007B49E0);
  if (v80)
  {
    swift_getKeyPath();
    v61 = v77;
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    (*(v78 + 8))(v61, v70);
  }

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v62 = v99;
  sub_10002A400(v102, v103);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v64 = v63;

  sub_1003EBA78(v39, v81, v68);

  v40 = ceil(v64);
  sub_1006BF5E8(v102);
  (*(v89 + 8))(v88, v41);
  (*(v83 + 8))(v87, v84);
  v67(v85, v90);
  return v40;
}

uint64_t sub_1006BF63C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1006BF694(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v4[OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_shouldApplyBreakoutData] = 1;
  type metadata accessor for UpsellBreakoutView(0);
  *&v4[OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_upsellBreakoutView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for UpsellBreakoutCollectionViewCell(0);
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = [v11 contentView];
  [v13 addSubview:*&v11[OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_upsellBreakoutView]];

  return v11;
}

uint64_t sub_1006BF8F8()
{
  v1 = *(*(*(*(v0 + OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_upsellBreakoutView) + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

double (*sub_1006BF974(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_upsellBreakoutView);
  v4 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(*(*(v3 + v4) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_1006BFA1C;
}

double sub_1006BFA1C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 8) + *(a1 + 16));
  v5 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  v6 = *(v4 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
  if (a2)
  {
    if (v3)
    {
      sub_1006C0524(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
      v7 = v3;
      v8 = [v7 superview];
      if (v8)
      {
        v9 = v8;
        sub_100028004();
        v10 = v6;
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          [v7 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v17 = *&v6[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v6[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v3;
    v18 = v3;
    sub_10047C6C8(v17);

    if (*(*(v4 + v5) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents))
    {
      type metadata accessor for VideoView(0);
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        *(v19 + qword_100988CA8 + 8) = &off_1008CDCD0;
        swift_unknownObjectWeakAssign();
      }
    }

    v20 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_1006C0524(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
      v12 = v3;
      v13 = [v12 superview];
      if (v13)
      {
        v14 = v13;
        sub_100028004();
        v15 = v6;
        v16 = static NSObject.== infix(_:_:)();

        if (v16)
        {
          [v12 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v22 = *&v6[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v6[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v3;
    v23 = v3;
    sub_10047C6C8(v22);

    if (*(*(v4 + v5) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents))
    {
      type metadata accessor for VideoView(0);
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        *(v24 + qword_100988CA8 + 8) = &off_1008CDCD0;

        swift_unknownObjectWeakAssign();
      }
    }
  }

  return result;
}

void sub_1006BFE74(void *a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for UpsellBreakoutCollectionViewCell(0);
  objc_msgSendSuper2(&v16, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = *&v1[OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_upsellBreakoutView];
    v6 = *(v3 + OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_parallaxY);
    v7 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer;
    v8 = *(*(v5 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
    v9 = *&v8[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY];
    *&v8[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = v6;
    v10 = a1;
    if (v6 != v9)
    {
      [v8 setNeedsLayout];
    }

    v11 = *(*(*(v5 + v7) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    if (v11)
    {
      type metadata accessor for VideoView(0);
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v12;
        v14 = *(v4 + OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_isRubberbanding);
        v15 = v11;

        *(v13 + qword_100988CD0) = v14;
        v10 = v15;
      }
    }
  }
}

id sub_1006C0030()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpsellBreakoutCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for UpsellBreakoutCollectionViewCell(uint64_t a1)
{
  result = qword_1009921D0;
  if (!qword_1009921D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006C0108(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_1006C01E0(uint64_t **a1))()
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
  v2[4] = sub_1006BF974(v2);
  return sub_1000B4CAC;
}

uint64_t sub_1006C0250(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1006C02A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1006C0310(uint64_t *a1, uint64_t a2))()
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
  *(v4 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_1006C03AC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_upsellBreakoutView) + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
  sub_100028004();
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t sub_1006C0524(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006C056C()
{
  v1 = type metadata accessor for Locale();
  v66 = *(v1 - 8);
  v67 = v1;
  __chkstk_darwin(v1);
  v72 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v69 = swift_allocObject();
  v65 = xmmword_1007B15F0;
  *(v69 + 16) = xmmword_1007B15F0;
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  type metadata accessor for NavigationActionDebugSetting();
  v8 = swift_allocObject();
  v8[7] = 0xD000000000000011;
  v8[8] = 0x8000000100820640;
  v8[10] = 0;
  v8[11] = 0;
  v8[9] = sub_1006C0D44;
  v8[12] = sub_1006C13FC;
  v8[13] = v7;
  v9 = v0;

  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  v13 = *(v4 + 8);
  v13(v6, v3);
  v68 = v13;
  v73 = v10;
  v74 = v12;
  AnyHashable.init<A>(_:)();

  v14 = v69;
  *(v69 + 32) = v8;
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  v16 = swift_allocObject();
  v16[7] = 0xD00000000000001ALL;
  v16[8] = 0x8000000100820660;
  v16[10] = 0;
  v16[11] = 0;
  v16[9] = 0;
  v16[12] = sub_1006C1404;
  v16[13] = v15;
  v17 = v9;

  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  v13(v6, v3);
  v73 = v18;
  v74 = v20;
  AnyHashable.init<A>(_:)();

  *(v14 + 40) = v16;
  static Locale.storefront.getter();
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1007BCD60;
  v21 = Locale.identifier.getter();
  v23 = v22;
  v71 = type metadata accessor for InfoDebugSetting();
  v24 = swift_allocObject();
  v24[7] = 0x696669746E656449;
  v24[8] = 0xEA00000000007265;
  v24[9] = v21;
  v24[10] = v23;

  UUID.init()();
  v25 = UUID.uuidString.getter();
  v27 = v26;
  v28 = v68;
  v68(v6, v3);
  v73 = v25;
  v74 = v27;
  AnyHashable.init<A>(_:)();

  v29 = v64;
  *(v64 + 32) = v24;
  v30 = swift_allocObject();
  *(v30 + 56) = 0xD000000000000013;
  *(v30 + 64) = 0x8000000100820680;
  *(v30 + 72) = xmmword_1007DE6C0;
  UUID.init()();
  v31 = UUID.uuidString.getter();
  v33 = v32;
  v28(v6, v3);
  v73 = v31;
  v74 = v33;
  AnyHashable.init<A>(_:)();
  v29[5] = v30;
  Locale.paragraphLineHeightMultiple.getter();
  v34 = Double.description.getter();
  v36 = v35;
  v37 = swift_allocObject();
  v37[7] = 0xD000000000000014;
  v37[8] = 0x80000001008206A0;
  v37[9] = v34;
  v37[10] = v36;

  UUID.init()();
  v38 = UUID.uuidString.getter();
  v40 = v39;
  v28(v6, v3);
  v73 = v38;
  v74 = v40;
  AnyHashable.init<A>(_:)();

  v29[6] = v37;
  v41 = Locale.prefersSmallerText.getter();
  if (v41)
  {
    v42 = 1702195828;
  }

  else
  {
    v42 = 0x65736C6166;
  }

  if (v41)
  {
    v43 = 0xE400000000000000;
  }

  else
  {
    v43 = 0xE500000000000000;
  }

  v44 = swift_allocObject();
  v44[7] = 0xD000000000000014;
  v44[8] = 0x80000001008206C0;
  v44[9] = v42;
  v44[10] = v43;

  UUID.init()();
  v45 = UUID.uuidString.getter();
  v47 = v46;
  v48 = v68;
  v68(v6, v3);
  v73 = v45;
  v74 = v47;
  AnyHashable.init<A>(_:)();

  v29[7] = v44;
  type metadata accessor for BoolUserDefaultsDebugSetting();
  v49 = swift_allocObject();
  *(v49 + 56) = 0xD000000000000012;
  *(v49 + 64) = 0x80000001008206E0;
  *(v49 + 72) = 0;
  *(v49 + 80) = 0xD00000000000001DLL;
  *(v49 + 88) = 0x8000000100820700;
  *(v49 + 96) = 0;
  UUID.init()();
  v50 = UUID.uuidString.getter();
  v52 = v51;
  v48(v6, v3);
  v73 = v50;
  v74 = v52;
  AnyHashable.init<A>(_:)();
  v29[8] = v49;
  v53 = swift_allocObject();
  *(v53 + 16) = v65;
  type metadata accessor for DebugSection();
  v54 = swift_allocObject();
  UUID.init()();
  v55 = UUID.uuidString.getter();
  v57 = v56;
  v48(v6, v3);
  v54[2] = v55;
  v54[3] = v57;
  v54[4] = 0x6F726665726F7453;
  v54[5] = 0xEA0000000000746ELL;
  v54[6] = v69;
  *(v53 + 32) = v54;
  v58 = swift_allocObject();
  UUID.init()();
  v59 = UUID.uuidString.getter();
  v61 = v60;
  v48(v6, v3);
  v58[2] = v59;
  v58[3] = v61;
  v58[4] = 0x656C61636F4CLL;
  v58[5] = 0xE600000000000000;
  v58[6] = v29;
  *(v53 + 40) = v58;
  (*(v66 + 8))(v72, v67);
  return v53;
}

uint64_t sub_1006C0D70(uint64_t a1)
{
  v2 = type metadata accessor for FlowOrigin();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v38 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FlowAnimationBehavior();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for FlowPresentationContext();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  v11 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v11 - 8);
  v13 = v29 - v12;
  v14 = type metadata accessor for FlowPage();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v18 - 8);
  v20 = v29 - v19;
  v21 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  v39 = a1;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_1000F40E0(v20);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v24 = *(v15 + 104);
  v29[1] = v17;
  v24(v17, enum case for FlowPage.debugStorefrontPicker(_:), v14);
  v25 = type metadata accessor for URL();
  v26 = *(*(v25 - 8) + 56);
  v29[0] = v13;
  v26(v13, 1, 1, v25);
  v27 = type metadata accessor for ReferrerData();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  v40 = 0u;
  v41 = 0u;
  static ActionMetrics.notInstrumented.getter();
  (*(v30 + 104))(v31, enum case for FlowPresentationContext.infer(_:), v32);
  (*(v34 + 104))(v33, enum case for FlowAnimationBehavior.infer(_:), v35);
  (*(v36 + 104))(v38, enum case for FlowOrigin.inapp(_:), v37);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v28 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  sub_1005F9C8C(v28, 1, v39, v20);

  return (*(v22 + 8))(v20, v21);
}

void sub_1006C1344()
{
  v0 = [objc_opt_self() sharedCoordinator];
  [v0 simulateStorefrontChange];
}

id sub_1006C13A4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StorefrontSettings();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1006C140C(void *a1)
{
  if (*v1 != *a1)
  {
    goto LABEL_16;
  }

  if ((static AnyHashable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  type metadata accessor for BoolPreferencesDebugSetting(0);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = v2;
  v4 = *(v2 + 56) == *(v1 + 56) && *(v2 + 64) == *(v1 + 64);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  v5 = *(v3 + 80);
  v6 = *(v1 + 80);
  if (v5)
  {
    if (v6 && (*(v3 + 72) == *(v1 + 72) && v5 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_14;
    }

LABEL_16:
    v7 = 0;
    return v7 & 1;
  }

  if (v6)
  {
    goto LABEL_16;
  }

LABEL_14:
  v7 = *(v3 + 88) ^ *(v1 + 88) ^ 1;
  return v7 & 1;
}

void sub_1006C1524(uint64_t a1, __n128 a2)
{
  AnyHashable.hash(into:)();
  String.hash(into:)();
  if (*(v2 + 80))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + 88));
}

double sub_1006C15B0()
{

  v1 = OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key;
  v2 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1006C1644()
{
  sub_10003D614(v0 + 16);

  v1 = OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key;
  v2 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BoolPreferencesDebugSetting(uint64_t a1)
{
  result = qword_100992240;
  if (!qword_100992240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006C1780(uint64_t a1)
{
  sub_1006C1830();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1006C1830()
{
  if (!qword_100992250)
  {
    v0 = type metadata accessor for PreferenceKey();
    if (!v1)
    {
      atomic_store(v0, &qword_100992250);
    }
  }
}

uint64_t sub_1006C18D4(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for FontSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticDimension();
  sub_100005644(v8, a3);
  sub_1000056A8(v8, a3);
  if (qword_10096EDF0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_100992318);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v14);
  (*(v5 + 16))(v11, v7, v4);
  StaticDimension.init(_:scaledLike:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1006C1ADC()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_100992378);
  sub_1000056A8(v4, qword_100992378);
  if (qword_10096EE08 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_100992360);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1006C1CB0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_100992390);
  sub_1000056A8(v4, qword_100992390);
  *v3 = UIFontTextStyleSubheadline;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_1000056E0(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleSubheadline;
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

id sub_1006C1E48(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for AccountDetailCollectionViewCell(0);
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_1006C1EA0(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v8 = a1;
  sub_1006C1F10(a3);
  v9.receiver = v8;
  v9.super_class = type metadata accessor for AccountDetailCollectionViewCell(0);
  objc_msgSendSuper2(&v9, *a4, a3);
  sub_1006C1FDC(a5);
}

id sub_1006C1F10(char a1)
{
  v2 = v1;
  v4 = [v2 contentView];
  if (a1)
  {
    v5 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v5 = static UIColor.tableViewCellBackground.getter();
  }

  v6 = v5;
  [v4 setBackgroundColor:v5];

  return [v2 setNeedsDisplay];
}

id sub_1006C1FDC(SEL *a1)
{
  v2 = v1;
  v3 = [v1 *a1];
  v4 = [v2 contentView];
  if (v3)
  {
    v5 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v5 = static UIColor.tableViewCellBackground.getter();
  }

  v6 = v5;
  [v4 setBackgroundColor:v5];

  return [v2 setNeedsDisplay];
}

char *sub_1006C20B4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for DirectionalTextAlignment();
  v98 = *(v10 - 8);
  __chkstk_darwin(v10);
  *&v97 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v89 - v13;
  v4[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldShowFullTitle] = 1;
  v15 = &v4[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_imageMarginRight];
  *v15 = 0;
  v15[8] = 1;
  v4[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldResizeImage] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryView] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_secondaryAccessoryView] = 0;
  v16 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessory;
  v17 = type metadata accessor for Accessory(0);
  v18 = *(*(v17 - 8) + 56);
  v18(&v5[v16], 1, 1, v17);
  v18(&v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_secondaryAccessory], 1, 1, v17);
  v19 = &v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryMargin];
  *v19 = 0;
  v19[8] = 1;
  v20 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_topSeparatorView;
  v21 = type metadata accessor for SeparatorView(0);
  *&v5[v20] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22 = &v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_topSeparatorViewInsets];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v22[32] = 1;
  v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_showTopSeparatorView] = 0;
  v23 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_bottomSeparatorView;
  *&v5[v23] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = &v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_bottomSeparatorViewInsets];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v24[32] = 1;
  v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_showBottomSeparatorView] = 0;
  v25 = &v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryAction];
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_backgroundSelectionView;
  *&v5[v26] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_isSelectable] = 1;
  v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_disabled] = 0;
  v27 = &v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_selectionHandler];
  *v27 = 0;
  v27[1] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_tapGestureRecognizer] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_imageView] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_10096EDF0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for FontUseCase();
  v29 = sub_1000056A8(v28, qword_100992318);
  v30 = *(v28 - 8);
  v31 = *(v30 + 16);
  v94 = v29;
  v96 = v31;
  v32 = v30 + 16;
  (v31)(v14);
  v34 = *(v30 + 56);
  v33 = v30 + 56;
  v93 = v34;
  v34(v14, 0, 1, v28);
  v35 = *(v98 + 13);
  v36 = enum case for DirectionalTextAlignment.none(_:);
  v98 = (v98 + 104);
  v92 = v35;
  (v35)(v97);
  v37 = type metadata accessor for DynamicTypeLabel();
  v38 = objc_allocWithZone(v37);
  *&v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096EE08 != -1)
  {
    swift_once();
  }

  v39 = sub_1000056A8(v28, qword_100992360);
  v91 = v32;
  v96(v14, v39, v28);
  v40 = v93;
  v93(v14, 0, 1, v28);
  v41 = v97;
  v42 = v10;
  v89 = v33;
  v90 = v10;
  v43 = v92;
  v92(v97, v36, v42);
  v44 = objc_allocWithZone(v37);
  *&v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_subtitleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v96(v14, v94, v28);
  v40(v14, 0, 1, v28);
  v43(v41, v36, v90);
  v45 = objc_allocWithZone(v37);
  *&v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_detailLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v46 = type metadata accessor for AccountDetailCollectionViewCell(0);
  v100.receiver = v5;
  v100.super_class = v46;
  v98 = v46;
  v47 = objc_msgSendSuper2(&v100, "initWithFrame:", a1, a2, a3, a4);
  sub_1006C4E1C();
  [v47 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v48 = [v47 contentView];
  v49 = sub_100005744(0, &qword_100970180, UIColor_ptr);
  v50 = static UIColor.tableViewCellBackground.getter();
  [v48 setBackgroundColor:v50];

  v51 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_imageView;
  v52 = *&v47[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_imageView];
  static UIColor.mediaBorder.getter();
  dispatch thunk of RoundedCornerView.borderColor.setter();

  v53 = *&v47[v51];
  v54 = [v47 traitCollection];
  static Separator.thickness(compatibleWith:)();

  dispatch thunk of RoundedCornerView.borderWidth.setter();
  v55 = *&v47[v51];
  v56 = [v47 backgroundColor];

  ArtworkView.backgroundColor.setter();
  [*&v47[v51] setContentMode:1];
  v57 = [v47 contentView];
  [v57 addSubview:*&v47[v51]];

  v58 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_titleLabel;
  [*&v47[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_titleLabel] setLineBreakMode:4];
  v59 = [v47 contentView];
  [v59 addSubview:*&v47[v58]];

  v60 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_subtitleLabel;
  v61 = *&v47[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_subtitleLabel];
  *&v97 = v49;
  v62 = static UIColor.secondaryText.getter();
  [v61 setTextColor:v62];

  v63 = [v47 contentView];
  [v63 addSubview:*&v47[v60]];

  v64 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_detailLabel;
  v65 = *&v47[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_detailLabel];
  v66 = static UIColor.secondaryText.getter();
  [v65 setTextColor:v66];

  v67 = [v47 contentView];
  [v67 addSubview:*&v47[v64]];

  v68 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_topSeparatorView;
  v69 = *&v47[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_topSeparatorView];
  v70 = objc_opt_self();
  v71 = v69;
  v72 = [v70 separatorColor];
  v73 = *&v71[OBJC_IVAR____TtC8AppStore13SeparatorView_lineColor];
  *&v71[OBJC_IVAR____TtC8AppStore13SeparatorView_lineColor] = v72;
  v74 = v72;

  [*&v71[OBJC_IVAR____TtC8AppStore13SeparatorView_lineView] setBackgroundColor:v74];
  [*&v47[v68] setHidden:1];
  v75 = [v47 contentView];
  [v75 addSubview:*&v47[v68]];

  v76 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_bottomSeparatorView;
  v77 = *&v47[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_bottomSeparatorView];
  v78 = [v70 separatorColor];
  v79 = *&v77[OBJC_IVAR____TtC8AppStore13SeparatorView_lineColor];
  *&v77[OBJC_IVAR____TtC8AppStore13SeparatorView_lineColor] = v78;
  v80 = v78;

  [*&v77[OBJC_IVAR____TtC8AppStore13SeparatorView_lineView] setBackgroundColor:v80];
  [*&v47[v76] setHidden:1];
  v81 = [v47 contentView];
  [v81 addSubview:*&v47[v76]];

  v82 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_backgroundSelectionView;
  v83 = *&v47[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_backgroundSelectionView];
  v84 = static UIColor.tableViewCellSelectedBackground.getter();
  [v83 setBackgroundColor:v84];

  [*&v47[v82] setOpaque:0];
  [*&v47[v82] setUserInteractionEnabled:0];
  if (v47[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_isSelectable] == 1)
  {
    [v47 setSelectedBackgroundView:*&v47[v82]];
  }

  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v85 = swift_allocObject();
  v97 = xmmword_1007B10D0;
  *(v85 + 16) = xmmword_1007B10D0;
  *(v85 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v85 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v99[3] = v98;
  v99[0] = v47;
  v86 = v47;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v99);
  v87 = swift_allocObject();
  *(v87 + 16) = v97;
  *(v87 + 32) = type metadata accessor for UITraitLegibilityWeight();
  *(v87 + 40) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  return v86;
}

void sub_1006C2D2C()
{
  v1 = v0;
  v180 = type metadata accessor for Accessory(0);
  v2 = *(v180 - 8);
  __chkstk_darwin(v180);
  v170 = (&v167 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v171 = sub_10002849C(&qword_100984348, qword_1007DE850);
  __chkstk_darwin(v171);
  *&v172 = &v167 - v4;
  v5 = sub_10002849C(&qword_100984340, qword_1007C0830);
  __chkstk_darwin(v5 - 8);
  *&v173 = &v167 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v167 - v8;
  __chkstk_darwin(v10);
  v12 = &v167 - v11;
  *&v13 = COERCE_DOUBLE(type metadata accessor for FloatingPointRoundingRule());
  v187 = *(v13 - 8);
  v188 = *&v13;
  __chkstk_darwin(v13);
  v15 = &v167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AccountDetailCollectionViewCell(0);
  v189.receiver = v0;
  v189.super_class = v16;
  objc_msgSendSuper2(&v189, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  Width = CGRectGetWidth(v190);
  v18 = [v0 traitCollection];
  LODWORD(v19) = UITraitCollection.prefersAccessibilityLayouts.getter();

  v20 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryView;
  v21 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryView];
  if (v21)
  {
    LODWORD(v183) = [v21 isHidden] ^ 1;
  }

  else
  {
    LODWORD(v183) = 0;
  }

  v174 = *&v12;
  v22 = ArtworkView.image.getter();
  v23 = v22;
  if (v22)
  {
  }

  v181 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_subtitleLabel];
  v24 = [*&v181 text];
  v26 = v24;
  if (v24)
  {
  }

  v182 = v26;
  v27 = v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_imageMarginRight + 8];
  v185 = v19;
  v186 = v23;
  if (v27)
  {
    v28 = 8.0;
    if (v23)
    {
      goto LABEL_10;
    }

LABEL_16:
    v31 = 0.0;
    goto LABEL_17;
  }

  v28 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_imageMarginRight];
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_10:
  v29 = COERCE_DOUBLE(sub_1006C501C(v25));
  v31 = 0.0;
  if (v32)
  {
LABEL_17:
    v41 = 0.0;
    v33 = 0.0;
    v34 = 0.0;
    goto LABEL_18;
  }

  v33 = v29;
  v34 = v30;
  if (v19)
  {
    if (qword_10096EDF8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for StaticDimension();
    sub_1000056A8(v35, qword_100992330);
    v19 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_titleLabel];
    static Dimensions.defaultRoundingRule.getter();
    v36 = [v19 traitCollection];
    StaticDimension.value(compatibleWith:rounded:)();
    v38 = v37;

    [v19 firstBaselineFromTop];
    v40 = v39;
    (*(*&v187 + 8))(v15, COERCE_DOUBLE(*&v188));
    v41 = v38 - v40;
    LOBYTE(v19) = v185;
  }

  else
  {
    LayoutMarginsAware<>.layoutFrame.getter();
    v41 = CGRectGetMidY(v192) + v34 * -0.5;
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  MinX = CGRectGetMinX(v193);
  v31 = MinX;
  if ((v19 & 1) == 0)
  {
    v78 = v41;
    v79 = v33;
    v80 = v34;
    Width = Width - (v28 + CGRectGetWidth(*&MinX));
  }

LABEL_18:
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(in:relativeTo:)();
  ArtworkView.frame.setter();
  v178 = v33;
  v176 = v41;
  v175 = v31;
  if (v19)
  {
    ArtworkView.frame.getter();
    MaxY = CGRectGetMaxY(v191);
    if (qword_10096EDF8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for StaticDimension();
    sub_1000056A8(v43, qword_100992330);
    v44 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_titleLabel];
    static Dimensions.defaultRoundingRule.getter();
    v45 = [v44 traitCollection];
    StaticDimension.value(compatibleWith:rounded:)();
    v47 = v46;

    [v44 firstBaselineFromTop];
    v49 = v48;
    v50 = *(*&v187 + 8);
    v50(v15, *&v188);
    v51 = MaxY + v47 - v49;
  }

  else
  {
    if (qword_10096EDF8 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for StaticDimension();
    sub_1000056A8(v52, qword_100992330);
    v44 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_titleLabel];
    static Dimensions.defaultRoundingRule.getter();
    v53 = [v44 traitCollection];
    StaticDimension.value(compatibleWith:rounded:)();
    v55 = v54;

    [v44 firstBaselineFromTop];
    v57 = v56;
    v50 = *(*&v187 + 8);
    v50(v15, *&v188);
    v51 = v55 - v57;
  }

  v184 = v51;
  v58 = &selRef_setRequiresColorStatistics_;
  v59 = v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryMargin + 8] == 1;
  v177 = v34;
  if (v59)
  {
    v60 = 16.0;
    if (LOBYTE(v183))
    {
      goto LABEL_30;
    }

    v183 = 16.0;
LABEL_35:
    LODWORD(v180) = 1;
    v76 = 0.0;
    v173 = 0.0;
    v172 = 0.0;
    v68 = 0.0;
    v75 = v181;
    goto LABEL_60;
  }

  v60 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryMargin];
  if (!LODWORD(v183))
  {
    v183 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryMargin];
    goto LABEL_35;
  }

LABEL_30:
  v169 = v44;
  v61 = *&v1[v20];
  v183 = v60;
  if (!v61)
  {
    LODWORD(v180) = 1;
    v76 = 0.0;
    v173 = 0.0;
    v172 = 0.0;
    v68 = 0.0;
    v44 = v169;
    v75 = v181;
    goto LABEL_60;
  }

  v167 = v50;
  v62 = v61;
  LayoutMarginsAware<>.layoutFrame.getter();
  v168 = v62;
  [v62 sizeThatFits:{v63, v64}];
  v66 = v65;
  v68 = v67;
  v69 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  v70 = *&v174;
  v71 = v180;
  swift_storeEnumTagMultiPayload();
  (*(v2 + 56))(v70, 0, 1, v71);
  v72 = *(v171 + 48);
  v171 = v69;
  v73 = *&v172;
  sub_1006C6130(&v1[v69], *&v172);
  sub_1006C6130(v70, v73 + v72);
  v74 = *(v2 + 48);
  if (v74(v73, 1, v71) == 1)
  {
    sub_10002B894(v70, &qword_100984340, qword_1007C0830);
    if (v74(v73 + v72, 1, v71) == 1)
    {
      sub_10002B894(v73, &qword_100984340, qword_1007C0830);
      v44 = v169;
      v75 = v181;
LABEL_44:
      v84 = [v1 traitCollection];
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

      CGSize.scaled(_:)();
      v66 = v85;
      v68 = v86;
      goto LABEL_45;
    }

LABEL_42:
    sub_10002B894(v73, &qword_100984348, qword_1007DE850);
    v81 = &selRef__setDefaultAttributes_;
    v44 = v169;
    v75 = v181;
    goto LABEL_46;
  }

  sub_1006C6130(v73, v9);
  if (v74(v73 + v72, 1, v71) == 1)
  {
    sub_10002B894(*&v174, &qword_100984340, qword_1007C0830);
    sub_1000C7C80(v9);
    goto LABEL_42;
  }

  v82 = v170;
  sub_1000561D8(v73 + v72, v170);
  v83 = sub_1000C6830(v9, v82);
  sub_1000C7C80(v82);
  sub_10002B894(*&v174, &qword_100984340, qword_1007C0830);
  sub_1000C7C80(v9);
  sub_10002B894(v73, &qword_100984340, qword_1007C0830);
  v44 = v169;
  v75 = v181;
  if (v83)
  {
    goto LABEL_44;
  }

LABEL_45:
  v81 = &selRef__setDefaultAttributes_;
LABEL_46:
  LayoutMarginsAware<>.layoutFrame.getter();
  v76 = CGRectGetMaxX(v194) - v66;
  v87 = *&v173;
  sub_1006C6130(&v1[v171], *&v173);
  v88 = v74(v87, 1, v180);
  v181 = v66;
  if (v88 == 1)
  {
    sub_10002B894(v87, &qword_100984340, qword_1007C0830);
    v50 = v167;
LABEL_50:
    [v1 v81[378]];
    x = v196.origin.x;
    y = v196.origin.y;
    v93 = v196.size.width;
    v94 = v28;
    v95 = v76;
    v96 = Width;
    height = v196.size.height;
    CGRectGetMidX(v196);
    v197.origin.x = x;
    v197.origin.y = y;
    v60 = v183;
    v197.size.width = v93;
    v197.size.height = height;
    Width = v96;
    v76 = v95;
    v28 = v94;
    v90 = round(CGRectGetMidY(v197) + v68 * -0.5);
    goto LABEL_51;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1000C7C80(v87);
  v50 = v167;
  if (EnumCaseMultiPayload != 5)
  {
    goto LABEL_50;
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  v90 = v184 + CGRectGetMinY(v195);
LABEL_51:
  LayoutMarginsAware<>.layoutFrame.getter();
  v98 = CGRectGetWidth(v198);
  if (v181 >= v98)
  {
    v99 = v98;
  }

  else
  {
    v99 = v181;
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(in:relativeTo:)();
  v100 = v168;
  [v168 setFrame:?];
  v199.origin.x = v76;
  v199.origin.y = v90;
  v199.size.width = v99;
  v199.size.height = v68;
  Width = Width - (v60 + CGRectGetWidth(v199));
  v101 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_secondaryAccessoryView];
  if (v101)
  {
    v102 = v101;
    LayoutMarginsAware<>.layoutFrame.getter();
    [v102 sizeThatFits:{v103, v104}];
    v106 = v105;
    v108 = v107;
    v200.origin.x = v76;
    v200.origin.y = v90;
    v200.size.width = v99;
    v200.size.height = v68;
    v181 = CGRectGetMinX(v200);
    [v1 v81[378]];
    v109 = v201.origin.x;
    v110 = v28;
    v111 = Width;
    v112 = v201.origin.y;
    v113 = v201.size.width;
    v114 = v201.size.height;
    CGRectGetMidX(v201);
    v202.origin.x = v109;
    v202.origin.y = v112;
    v115 = v111;
    v28 = v110;
    v202.size.width = v113;
    v202.size.height = v114;
    v116 = round(CGRectGetMidY(v202) + v108 * -0.5);
    LayoutMarginsAware<>.layoutFrame.getter();
    v117 = CGRectGetWidth(v203);
    if (v106 >= v117)
    {
      v118 = v117;
    }

    else
    {
      v118 = v106;
    }

    v119 = v183;
    v76 = v181 - v106 - v183;
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    v58 = &selRef_setRequiresColorStatistics_;
    [v102 setFrame:?];
    v204.origin.x = v76;
    v173 = v116;
    v204.origin.y = v116;
    v172 = v118;
    v204.size.width = v118;
    v204.size.height = v108;
    v120 = CGRectGetWidth(v204);

    LODWORD(v180) = 0;
    Width = v115 - (v119 + v120);
    v68 = v108;
  }

  else
  {
    v172 = v99;
    v173 = v90;

    LODWORD(v180) = 0;
    v58 = &selRef_setRequiresColorStatistics_;
  }

LABEL_60:
  v174 = v76;
  v181 = v68;
  LayoutMarginsAware<>.layoutFrame.getter();
  [v44 v58[22]];
  v122 = v121;
  v124 = v123;
  v125 = v58;
  if (qword_10096EE10 != -1)
  {
    swift_once();
  }

  v126 = v186 == 0;
  v127 = type metadata accessor for StaticDimension();
  sub_1000056A8(v127, qword_100992378);
  static Dimensions.defaultRoundingRule.getter();
  v128 = [*&v75 traitCollection];
  StaticDimension.value(compatibleWith:rounded:)();
  v130 = v129;

  [*&v75 firstBaselineFromTop];
  v132 = v131;
  v50(v15, *&v188);
  v133 = v130 - v132;
  LayoutMarginsAware<>.layoutFrame.getter();
  [*&v75 v125[22]];
  v136 = v135;
  v137 = v134;
  v187 = v133;
  v138 = v182;
  if (v182)
  {
    v139 = v124 + v133 + v134;
  }

  else
  {
    v139 = v124;
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  v140 = (CGRectGetHeight(v207) - v139) * 0.5;
  v141 = v185;
  if (v185 & 1 | (v140 <= v184))
  {
    v142 = v184;
  }

  else
  {
    v142 = v140;
  }

  if (Width >= v122)
  {
    v143 = v122;
  }

  else
  {
    v143 = Width;
  }

  v188 = Width;
  v179 = v28;
  if ((v126 | v185))
  {
    LayoutMarginsAware<>.layoutFrame.getter();
    v144 = CGRectGetMinX(v208);
  }

  else
  {
    v209.origin.x = v175;
    v209.origin.y = v176;
    v209.size.width = v178;
    v209.size.height = v177;
    v144 = v28 + CGRectGetMaxX(v209);
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  MinY = CGRectGetMinY(v210);
  v184 = v142;
  v146 = v142 + MinY;
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v44 setFrame:?];
  if (v138)
  {
    [*&v75 setHidden:0];
    if (v188 < v136)
    {
      v136 = v188;
    }

    v211.origin.x = v144;
    v211.origin.y = v146;
    v147 = v143;
    v211.size.width = v143;
    v211.size.height = v124;
    v148 = CGRectGetMinX(v211);
    [v44 lastBaselineMaxY];
    v150 = v187 + v149;
  }

  else
  {
    v147 = v143;
    [*&v75 setHidden:1];
    v148 = 0.0;
    v150 = 0.0;
    v136 = 0.0;
    v137 = 0.0;
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(in:relativeTo:)();
  [*&v75 setFrame:?];
  if (v141)
  {
    v151 = v147;
  }

  else
  {
    v212.origin.x = v148;
    v212.origin.y = v150;
    v212.size.width = v136;
    v212.size.height = v137;
    v152 = CGRectGetWidth(v212);
    v213.origin.x = v144;
    v213.origin.y = v146;
    v151 = v147;
    v213.size.width = v147;
    v213.size.height = v124;
    v153 = CGRectGetWidth(v213);
    if (v152 > v153)
    {
      v153 = v152;
    }

    if (v186)
    {
      v153 = v179 + v153;
    }

    v188 = v188 - v153;
  }

  v154 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_detailLabel];
  v155 = [v154 text];
  if (v155)
  {
    v156 = v155;
    v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v159 = v158;

    v160 = HIBYTE(v159) & 0xF;
    if ((v159 & 0x2000000000000000) == 0)
    {
      v160 = v157 & 0xFFFFFFFFFFFFLL;
    }

    if (v160)
    {
      if (v141)
      {
        v161 = v188;
      }

      else
      {
        v161 = v188 - v183;
      }

      LayoutMarginsAware<>.layoutFrame.getter();
      [v154 measurementsWithFitting:v1 in:{v161, CGRectGetHeight(v214)}];
      if (v141)
      {
        v215.origin.x = v144;
        v215.origin.y = v146;
        v215.size.width = v151;
        v215.size.height = v124;
        CGRectGetMinX(v215);
        [v44 lastBaselineMaxY];
      }

      else
      {
        if (v180)
        {
          LayoutMarginsAware<>.layoutFrame.getter();
          CGRectGetMaxX(v216);
        }

        else
        {
          v217.origin.x = v174;
          v217.origin.y = v173;
          v217.size.width = v172;
          v217.size.height = v181;
          CGRectGetMinX(v217);
        }

        LayoutMarginsAware<>.layoutFrame.getter();
        CGRectGetMinY(v218);
      }

      LayoutMarginsAware<>.layoutFrame.getter();
      CGRect.withLayoutDirection(in:relativeTo:)();
      [v154 setFrame:?];
    }
  }

  if (v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_showTopSeparatorView] == 1)
  {
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMinX(v219);
    [v1 bounds];
    CGRectGetMinY(v220);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetWidth(v221);
    v162 = [v1 traitCollection];
    static Separator.thickness(compatibleWith:)();

    if ((v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_topSeparatorViewInsets + 32] & 1) == 0)
    {
      [v1 bounds];
    }

    v163 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_topSeparatorView];
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v163 setFrame:?];
  }

  if (v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_showBottomSeparatorView] == 1)
  {
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMinX(v222);
    [v1 bounds];
    CGRectGetMaxY(v223);
    v164 = [v1 traitCollection];
    static Separator.thickness(compatibleWith:)();

    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetWidth(v224);
    v165 = [v1 traitCollection];
    static Separator.thickness(compatibleWith:)();

    if ((v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_bottomSeparatorViewInsets + 32] & 1) == 0)
    {
      [v1 bounds];
    }

    v166 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_bottomSeparatorView];
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v166 setFrame:?];
  }
}

double sub_1006C40EC(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for Accessory(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v60 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v60 - v8);
  __chkstk_darwin(v10);
  v12 = &v60 - v11;
  v13 = sub_10002849C(&qword_100984340, qword_1007C0830);
  __chkstk_darwin(v13 - 8);
  v61 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  __chkstk_darwin(v18);
  v74 = &v60 - v19;
  __chkstk_darwin(v20);
  v76 = &v60 - v21;
  v71 = ArtworkView.image.getter();
  v22 = v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldResizeImage];
  if (v22 == 1)
  {
    ArtworkView.imageSize.getter();
  }

  v23 = [*&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_titleLabel] text];
  if (v23)
  {
    v24 = v23;
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v25;
  }

  else
  {
    v63 = 0;
    v72 = 0;
  }

  LODWORD(v65) = v2[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldShowFullTitle];
  v26 = [*&v2[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_subtitleLabel] text];
  if (v26)
  {
    v27 = v26;
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v28;
  }

  else
  {
    v62 = 0;
    v75 = 0;
  }

  v29 = [*&v2[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_detailLabel] text];
  if (v29)
  {
    v30 = v29;
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v31;
  }

  else
  {
    v64 = 0;
    v68 = 0;
  }

  v32 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  sub_1006C6130(&v2[v32], v76);
  v33 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_secondaryAccessory;
  swift_beginAccess();
  sub_1006C6130(&v2[v33], v74);
  v66 = v2[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_showTopSeparatorView];
  v67 = v2[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_showBottomSeparatorView];
  [v2 layoutMargins];
  v69 = v34;
  v35 = [v2 traitCollection];
  v36 = UITraitCollection.prefersAccessibilityLayouts.getter();

  v73 = v36;
  v70 = a1;
  if ((v22 & 1) == 0 && v71)
  {
    [v71 size];
  }

  v37 = [v2 traitCollection];
  sub_1006C6130(v76, v17);
  v38 = *(v5 + 48);
  if (v38(v17, 1, v4) == 1)
  {
    v39 = v17;
  }

  else
  {
    sub_1000561D8(v17, v12);
    sub_1000C571C(v37);
    swift_storeEnumTagMultiPayload();
    v40 = sub_1000C6830(v12, v9);
    sub_1000C7C80(v9);
    if (v40)
    {
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
    }

    v41 = v61;
    sub_1006C6130(v74, v61);
    if (v38(v41, 1, v4) != 1)
    {
      v42 = v41;
      v43 = v60;
      sub_1000561D8(v42, v60);
      sub_1000C571C(v37);
      sub_1000C7C80(v43);
      sub_1000C7C80(v12);
      goto LABEL_23;
    }

    sub_1000C7C80(v12);
    v39 = v41;
  }

  sub_10002B894(v39, &qword_100984340, qword_1007C0830);
LABEL_23:
  if ((v65 & 1) == 0 && (UITraitCollection.prefersAccessibilityLayouts.getter() & 1) == 0)
  {
    Optional<A>.isNilOrEmpty.getter();
  }

  v65 = v37;
  if (qword_10096EDF0 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for FontUseCase();
  v45 = sub_1000056A8(v44, qword_100992318);
  v46 = type metadata accessor for Feature();
  v78 = v46;
  v47 = sub_100085D7C();
  v79 = v47;
  v48 = sub_1000056E0(v77);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v50 = *(*(v46 - 8) + 104);
  v50(v48, enum case for Feature.measurement_with_labelplaceholder(_:), v46);
  isFeatureEnabled(_:)();
  sub_100007000(v77);
  v63 = v45;
  static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  if (qword_10096EDF8 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for StaticDimension();
  sub_1000056A8(v51, qword_100992330);
  AnyDimension.topMargin(from:in:)();
  if (v75)
  {
    if (qword_10096EE08 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v44, qword_100992360);
    v78 = v46;
    v79 = v47;
    v52 = sub_1000056E0(v77);
    v50(v52, v49, v46);
    isFeatureEnabled(_:)();
    sub_100007000(v77);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    if (qword_10096EE10 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v51, qword_100992378);
    AnyDimension.topMargin(from:in:)();
    v53 = v68;
    if (qword_10096EE18 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v51, qword_100992390);
    AnyDimension.bottomMargin(from:in:)();
  }

  else
  {
    if (qword_10096EE00 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v51, qword_100992348);
    AnyDimension.bottomMargin(from:in:)();
    v53 = v68;
  }

  if ((v73 & (v53 != 0)) != 1)
  {
    goto LABEL_50;
  }

  v54 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v54 = v64 & 0xFFFFFFFFFFFFLL;
  }

  if (v54)
  {
    v78 = v46;
    v79 = v47;
    v55 = sub_1000056E0(v77);
    v50(v55, v49, v46);
    isFeatureEnabled(_:)();
    sub_100007000(v77);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    if (qword_10096EE10 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v51, qword_100992378);
    AnyDimension.topMargin(from:in:)();
    v56 = v65;
    if (qword_10096EE18 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v51, qword_100992390);
    AnyDimension.bottomMargin(from:in:)();
  }

  else
  {
LABEL_50:
    v56 = v65;
  }

  if (v66)
  {
    v57 = [v2 traitCollection];
    static Separator.thickness(compatibleWith:)();
  }

  if (v67)
  {
    v58 = [v2 traitCollection];
    static Separator.thickness(compatibleWith:)();
  }

  else
  {
  }

  sub_10002B894(v74, &qword_100984340, qword_1007C0830);
  sub_10002B894(v76, &qword_100984340, qword_1007C0830);
  return v70;
}

BOOL sub_1006C4E1C()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_titleLabel];
    v5 = [v4 numberOfLines] != 0;
    [v4 setNumberOfLines:0];
    [*&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_subtitleLabel] setNumberOfLines:0];
    v6 = 0;
LABEL_16:
    [*&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_detailLabel] setNumberOfLines:v6];
    return v5;
  }

  v7 = v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldShowFullTitle];
  v8 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_subtitleLabel];
  v9 = [v8 text];
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = [v1 traitCollection];
  v12 = v11;
  if (v7)
  {

    v13 = 0;
  }

  else if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {

    v13 = 3;
  }

  else
  {
    v14 = Optional<A>.isNilOrEmpty.getter();

    if (v14)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  v15 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_titleLabel];
  v16 = [v15 numberOfLines];
  v5 = v13 != v16;
  if (v13 != v16)
  {
    [v15 setNumberOfLines:v13];
  }

  if ([v8 numberOfLines] != 1)
  {
    [v8 setNumberOfLines:1];
    v6 = 1;
    v5 = 1;
    goto LABEL_16;
  }

  return v5;
}

void *sub_1006C501C(__n128 a1)
{
  result = ArtworkView.image.getter();
  v3 = result;
  if (result)
  {
    [result size];
    v5 = v4;

    if (*(v1 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldResizeImage) == 1)
    {
      v6 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
      ArtworkView.imageSize.getter();
      [v6 scaledValueForValue:?];
      v8 = v7;

      v9 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
      ArtworkView.imageSize.getter();
      [v9 scaledValueForValue:v10];

      if (v8 <= 56.0)
      {
        v11 = v8;
      }

      else
      {
        v11 = 56.0;
      }

      return *&v11;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

void sub_1006C51F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v5 = type metadata accessor for Accessory(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v35 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10002849C(&qword_100984340, qword_1007C0830);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v37 = &v35 - v12;
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v16 = sub_10002849C(&qword_100984348, qword_1007DE850);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v35 - v18;
  v20 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  v21 = *(v17 + 56);
  v38 = a1;
  sub_1006C6130(a1, v19);
  sub_1006C6130(&v3[v20], &v19[v21]);
  v22 = *(v6 + 48);
  if (v22(v19, 1, v5) == 1)
  {
    if (v22(&v19[v21], 1, v5) == 1)
    {
      sub_10002B894(v19, &qword_100984340, qword_1007C0830);
      return;
    }
  }

  else
  {
    sub_1006C6130(v19, v15);
    if (v22(&v19[v21], 1, v5) != 1)
    {
      v30 = &v19[v21];
      v31 = v35;
      sub_1000561D8(v30, v35);
      v32 = sub_1000C6830(v15, v31);
      sub_1000C7C80(v31);
      sub_1000C7C80(v15);
      sub_10002B894(v19, &qword_100984340, qword_1007C0830);
      if (v32)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_1000C7C80(v15);
  }

  sub_10002B894(v19, &qword_100984348, qword_1007DE850);
LABEL_7:
  v24 = v37;
  v23 = v38;
  sub_1006C6130(v38, v37);
  swift_beginAccess();
  sub_1002BAFE4(v24, &v3[v20]);
  swift_endAccess();
  sub_1006C6130(v23, v10);
  if (v22(v10, 1, v5) == 1)
  {
    sub_10002B894(v10, &qword_100984340, qword_1007C0830);
    v25 = 0;
  }

  else
  {
    sub_1000C4450(v36);
    v25 = v26;
    sub_1000C7C80(v10);
  }

  v27 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryView;
  v28 = *&v3[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryView];
  if (v28)
  {
    [v28 removeFromSuperview];
    v29 = *&v3[v27];
  }

  else
  {
    v29 = 0;
  }

  *&v3[v27] = v25;
  v33 = v25;

  if (v25)
  {
    [v3 addSubview:v33];
  }

  if (*&v3[v27])
  {
    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    if (v34)
    {
      [v34 addTarget:v3 action:"didTapWithAccessoryView:" forControlEvents:64];
    }
  }

  [v3 setNeedsLayout];
}

void sub_1006C5624(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = a2;
  v5 = type metadata accessor for Accessory(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v34 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10002849C(&qword_100984340, qword_1007C0830);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v36 = &v34 - v12;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = sub_10002849C(&qword_100984348, qword_1007DE850);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v34 - v18;
  v20 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_secondaryAccessory;
  swift_beginAccess();
  v21 = *(v17 + 56);
  v37 = a1;
  sub_1006C6130(a1, v19);
  sub_1006C6130(&v3[v20], &v19[v21]);
  v22 = *(v6 + 48);
  if (v22(v19, 1, v5) == 1)
  {
    if (v22(&v19[v21], 1, v5) == 1)
    {
      sub_10002B894(v19, &qword_100984340, qword_1007C0830);
      return;
    }
  }

  else
  {
    sub_1006C6130(v19, v15);
    if (v22(&v19[v21], 1, v5) != 1)
    {
      v30 = &v19[v21];
      v31 = v34;
      sub_1000561D8(v30, v34);
      v32 = sub_1000C6830(v15, v31);
      sub_1000C7C80(v31);
      sub_1000C7C80(v15);
      sub_10002B894(v19, &qword_100984340, qword_1007C0830);
      if (v32)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_1000C7C80(v15);
  }

  sub_10002B894(v19, &qword_100984348, qword_1007DE850);
LABEL_7:
  v24 = v36;
  v23 = v37;
  sub_1006C6130(v37, v36);
  swift_beginAccess();
  sub_1002BAFE4(v24, &v3[v20]);
  swift_endAccess();
  sub_1006C6130(v23, v10);
  if (v22(v10, 1, v5) == 1)
  {
    sub_10002B894(v10, &qword_100984340, qword_1007C0830);
    v25 = 0;
  }

  else
  {
    sub_1000C4450(v35);
    v25 = v26;
    sub_1000C7C80(v10);
  }

  v27 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_secondaryAccessoryView;
  v28 = *&v3[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_secondaryAccessoryView];
  if (v28)
  {
    [v28 removeFromSuperview];
    v29 = *&v3[v27];
  }

  else
  {
    v29 = 0;
  }

  *&v3[v27] = v25;
  v33 = v25;

  if (v25)
  {
    [v3 addSubview:v33];
  }

  [v3 setNeedsLayout];
}

double sub_1006C5AE4()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100984340, qword_1007C0830);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for AccountDetailCollectionViewCell(0);
  v22.receiver = v0;
  v22.super_class = v5;
  objc_msgSendSuper2(&v22, "prepareForReuse");
  ArtworkView.image.setter();
  [v0 setNeedsLayout];
  v6 = &v0[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_imageMarginRight];
  *v6 = 0;
  v6[8] = 1;
  v7 = *&v0[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_titleLabel];
  [v7 setText:0];
  [v0 setNeedsLayout];
  v8 = v0[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldShowFullTitle];
  v0[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldShowFullTitle] = 1;
  if ((v8 & 1) == 0)
  {
    [v0 setNeedsLayout];
  }

  v9 = *&v0[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_subtitleLabel];
  [v9 setText:0];
  if (sub_1006C4E1C())
  {
    [v0 setNeedsLayout];
  }

  [*&v0[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_detailLabel] setText:0];
  v10 = type metadata accessor for Accessory(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessory;
  swift_beginAccess();
  sub_1002BAFE4(v4, &v1[v11]);
  swift_endAccess();
  sub_1006C61A0(0);
  v12 = &v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryMargin];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryAction];
  v14 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryAction];
  v15 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryAction + 8];
  *v13 = 0;
  *(v13 + 1) = 0;
  sub_10001F63C(v14, v15);
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v16 = static UIColor.primaryText.getter();
  [v7 setTextColor:v16];

  v17 = static UIColor.secondaryText.getter();
  [v9 setTextColor:v17];

  v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_showTopSeparatorView] = 0;
  [*&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_topSeparatorView] setHidden:1];
  v18 = &v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_topSeparatorViewInsets];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_showBottomSeparatorView] = 0;
  [*&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_bottomSeparatorView] setHidden:1];
  v19 = &v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_bottomSeparatorViewInsets];
  result = 0.0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v19[32] = 1;
  return result;
}

id sub_1006C5E68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountDetailCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AccountDetailCollectionViewCell(uint64_t a1)
{
  result = qword_100992438;
  if (!qword_100992438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006C6030(uint64_t a1)
{
  sub_1002BAF8C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1006C6130(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100984340, qword_1007C0830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1006C61A0(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryView;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    [v1 addSubview:v6];
  }

  if (*&v1[v3])
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v7 addTarget:v1 action:"didTapWithAccessoryView:" forControlEvents:64];
    }
  }

  return [v1 setNeedsLayout];
}

void sub_1006C6284()
{
  *(v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldShowFullTitle) = 1;
  v1 = v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_imageMarginRight;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldResizeImage) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_secondaryAccessoryView) = 0;
  v2 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessory;
  v3 = type metadata accessor for Accessory(0);
  v4 = *(*(v3 - 8) + 56);
  v4(v0 + v2, 1, 1, v3);
  v4(v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_secondaryAccessory, 1, 1, v3);
  v5 = v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryMargin;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_topSeparatorView;
  v7 = type metadata accessor for SeparatorView(0);
  *(v0 + v6) = [objc_allocWithZone(v7) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_topSeparatorViewInsets;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_showTopSeparatorView) = 0;
  v9 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_bottomSeparatorView;
  *(v0 + v9) = [objc_allocWithZone(v7) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_bottomSeparatorViewInsets;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_showBottomSeparatorView) = 0;
  v11 = (v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryAction);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_backgroundSelectionView;
  *(v0 + v12) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_isSelectable) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_disabled) = 0;
  v13 = (v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_selectionHandler);
  *v13 = 0;
  v13[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_tapGestureRecognizer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1006C64D8(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView];
  if (a1)
  {
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 clearColor];
    [v7 setBackgroundColor:v8];
  }

  else
  {
    v9 = v5;
  }

  [v5 setNeedsLayout];

  return [v2 setNeedsLayout];
}

void sub_1006C65C8(uint64_t a1, uint64_t (*a2)(char *, void, uint64_t, __n128), uint64_t a3, char *a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  v260 = a3;
  v259 = a2;
  v18 = sub_10002849C(&qword_10097AE68, &qword_1007C2A38);
  __chkstk_darwin(v18 - 8);
  v231 = &v224 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v224 - v21;
  v23 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v23 - 8);
  v247 = &v224 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v248 = &v224 - v26;
  v27 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v27 - 8);
  v246 = &v224 - v28;
  v29 = type metadata accessor for VideoControls();
  __chkstk_darwin(v29 - 8);
  v230 = &v224 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v235 = &v224 - v32;
  __chkstk_darwin(v33);
  v241 = &v224 - v34;
  __chkstk_darwin(v35);
  v240 = &v224 - v36;
  v245 = type metadata accessor for VideoFillMode();
  v244 = *(v245 - 8);
  __chkstk_darwin(v245);
  v234 = &v224 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v239 = &v224 - v39;
  v250 = type metadata accessor for VideoConfiguration();
  v249 = *(v250 - 8);
  __chkstk_darwin(v250);
  v236 = &v224 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v261 = &v224 - v42;
  v229 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v228 = *(v229 - 8);
  __chkstk_darwin(v229);
  v44 = &v224 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10002849C(&unk_100973C90, qword_1007B55A0);
  __chkstk_darwin(v45 - 8);
  v232 = &v224 - v46;
  v243 = type metadata accessor for AspectRatio();
  v242 = *(v243 - 8);
  __chkstk_darwin(v243);
  v258 = &v224 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = type metadata accessor for LockupMediaLayout.Metrics();
  v255 = *(v256 - 8);
  __chkstk_darwin(v256);
  v254 = &v224 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = type metadata accessor for ScreenshotsDisplayStyle();
  v270 = *(v274 - 8);
  __chkstk_darwin(v274);
  v257 = &v224 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v273 = &v224 - v51;
  __chkstk_darwin(v52);
  v265 = &v224 - v53;
  v275 = type metadata accessor for LockupMediaLayout.DisplayType();
  v54 = *(v275 - 8);
  __chkstk_darwin(v275);
  v226 = &v224 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v233 = &v224 - v57;
  __chkstk_darwin(v58);
  v262 = &v224 - v59;
  __chkstk_darwin(v60);
  v238 = &v224 - v61;
  __chkstk_darwin(v62);
  v268 = &v224 - v63;
  v64 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v64 - 8);
  v227 = &v224 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v264 = &v224 - v67;
  __chkstk_darwin(v68);
  v272 = &v224 - v69;
  v70 = &unk_1007B0B60;
  v71 = sub_10002849C(&unk_1009731E0, &unk_1007B0B60);
  __chkstk_darwin(v71 - 8);
  v73 = &v224 - v72;
  [v9 setLayoutMargins:{a6, a7, a8, a9}];
  v74 = *&v9[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView];
  *&v74[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_regularWidthColumnSpacing] = a5;
  [v74 setNeedsLayout];
  v75 = type metadata accessor for ItemLayoutContext();
  (*(*(v75 - 8) + 56))(v73, 1, 1, v75);
  v253 = v74;
  sub_100279F24(a1, v73, a4);
  sub_10002B894(v73, &unk_1009731E0, &unk_1007B0B60);
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v76 = static UIColor.defaultBackground.getter();
  [v10 setBackgroundColor:v76];

  v276 = a1;
  v77 = MixedMediaLockup.screenshots.getter();
  if (v77 >> 62)
  {
    v76 = v77;
    v78 = _CocoaArrayWrapper.endIndex.getter();
    v77 = v76;
  }

  else
  {
    v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v79 = v265;
  if (v78)
  {
    if ((v77 & 0xC000000000000001) != 0)
    {
      v76 = v77;
      v267 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_78;
      }

      v76 = v77;
      v267 = *(v77 + 32);
    }
  }

  else
  {

    v267 = 0;
  }

  v252 = v10;
  v73 = *(v10 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView);
  v266 = MixedMediaLockup.alignedRegionArtwork.getter();
  v10 = MixedMediaLockup.alignedRegionVideo.getter();
  v80 = MixedMediaLockup.trailers.getter();
  if (v80 >> 62)
  {
    v76 = v80;
    v81 = _CocoaArrayWrapper.endIndex.getter();
    v80 = v76;
  }

  else
  {
    v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v263 = a4;
  v271 = v54;
  if (v81)
  {
    if ((v80 & 0xC000000000000001) != 0)
    {
      v269 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_80;
      }

      v269 = *(v80 + 32);
    }
  }

  else
  {

    v269 = 0;
  }

  sub_1006C9F8C(v272);
  v70 = MixedMediaLockup.alignedRegionArtwork.getter();
  v54 = MixedMediaLockup.alignedRegionVideo.getter();
  v82 = MixedMediaLockup.screenshots.getter();
  if (v82 >> 62)
  {
    v83 = v82;
    v84 = _CocoaArrayWrapper.endIndex.getter();
    v82 = v83;
    if (v84)
    {
LABEL_19:
      if ((v82 & 0xC000000000000001) == 0)
      {
        if (!*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_82;
        }

        v76 = *(v82 + 32);

        goto LABEL_22;
      }

LABEL_78:
      v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:

      goto LABEL_27;
    }
  }

  else if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

  v76 = 0;
LABEL_27:
  v82 = MixedMediaLockup.trailers.getter();
  if (!(v82 >> 62))
  {
    if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

LABEL_34:

    v85 = 0;
    goto LABEL_35;
  }

  v86 = v82;
  v87 = _CocoaArrayWrapper.endIndex.getter();
  v82 = v86;
  if (!v87)
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((v82 & 0xC000000000000001) != 0)
  {
LABEL_80:
    v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_32;
  }

  if (!*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v85 = *(v82 + 32);

LABEL_32:

LABEL_35:
  v237 = v22;
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  v88 = ScreenshotsDisplayStyle.shouldShowScreenshots.getter();
  v251 = v44;
  if ((v88 & 1) == 0)
  {

    v265 = *(v270 + 8);
    (v265)(v79, v274);
    v94 = v271;
    v76 = v268;
    (*(v271 + 104))(v268, enum case for LockupMediaLayout.DisplayType.none(_:), v275);
    v70 = 0x10093E000;
    v44 = v267;
    goto LABEL_66;
  }

  v90 = v262;
  if (v54 | v70)
  {
    v95 = v238;
    AspectRatio.init(_:_:)();

    v265 = *(v270 + 8);
    (v265)(v79, v274);
    v94 = v271;
    v96 = v275;
    (*(v271 + 104))(v95, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v275);
    v76 = v268;
    (*(v94 + 32))(v268, v95, v96);
    v70 = 0x10093E000;
    v44 = v267;
    v54 = v258;
    goto LABEL_67;
  }

  v91 = sub_1001B9B24(v76, v85, 0, 1, v89);
  v54 = v91;
  v70 = v91 >> 62;
  if (v91 >> 62)
  {
    goto LABEL_130;
  }

  for (i = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v260 = i;
    if (v76)
    {
      v93 = Screenshots.mediaPlatform.getter();
    }

    else
    {
      v93 = 0;
    }

    v97 = sub_1001B9E6C(v93);

    v225 = v10;
    LODWORD(v224) = v97;
    if (v76)
    {
      v98 = Screenshots.mediaPlatform.getter();
    }

    else
    {
      v98 = 0;
    }

    v99 = v270;
    v100 = v232;
    v101 = v274;
    (*(v270 + 16))(v232, v265, v274);
    (*(v99 + 56))(v100, 0, 1, v101);
    HIDWORD(v224) = sub_1001BA394(v98, v100);

    sub_10002B894(v100, &unk_100973C90, qword_1007B55A0);
    if (v70)
    {
      v102 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v102 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v225;
    v103 = v233;
    if (!v102)
    {

LABEL_57:
      v107 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
      v108 = v271;
      v109 = v275;
      v259 = *(v271 + 104);
      (v259)(v103, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v275);
      v110 = LockupMediaLayout.DisplayType.numberOfViews.getter();
      v111 = *(v108 + 8);
      v111(v103, v109);
      if (((v260 >= v110) & BYTE4(v224)) != 0 || (v107 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v112 = v275, (v259)(v103, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v275), v113 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v111(v103, v112), ((v260 >= v113) & v224) != 0) || (v107 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v114 = v275, (v259)(v103, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v275), v115 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v111(v103, v114), v260 >= v115))
      {

        v121 = v265;
        v265 = *(v270 + 8);
        (v265)(v121, v274);
      }

      else
      {
        v107 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
        v116 = v275;
        (v259)(v103, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v275);
        v117 = LockupMediaLayout.DisplayType.numberOfViews.getter();

        v111(v103, v116);
        v118 = v265;
        v265 = *(v270 + 8);
        (v265)(v118, v274);
        if (v260 != v117)
        {
          v119 = enum case for LockupMediaLayout.DisplayType.none(_:);
          v106 = v238;
          v120 = v238;
LABEL_64:
          (v259)(v120, v119, v275);
          v94 = v271;
          v70 = &StringUserDefaultsDebugSetting;
          v76 = v268;
          v44 = v267;
          v10 = v225;
          goto LABEL_65;
        }
      }

      v106 = v238;
      v120 = v238;
      v119 = v107;
      goto LABEL_64;
    }

    if ((v54 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_152;
      }
    }

    v104 = dispatch thunk of Artwork.isLandscape.getter();

    if ((v104 & 1) == 0)
    {
      goto LABEL_57;
    }

    v105 = v265;
    v265 = *(v270 + 8);
    (v265)(v105, v274);
    v94 = v271;
    v106 = v238;
    (*(v271 + 104))(v238, enum case for LockupMediaLayout.DisplayType.landscape(_:), v275);
    v70 = 0x10093E000;
    v76 = v268;
    v44 = v267;
LABEL_65:
    (*(v94 + 32))(v76, v106, v275);
LABEL_66:
    v54 = v258;
    v90 = v262;
LABEL_67:
    MixedMediaLockup.screenshotsDisplayStyle.getter();
    v278[3] = &type metadata for CGFloat;
    v278[4] = &protocol witness table for CGFloat;
    v278[0] = 0x4021000000000000;
    sub_10002C0AC(v278, v277);
    v122 = *(v94 + 16);
    v122(v90, v76, v275);
    v262 = v122;
    if (v10 | v266)
    {
      goto LABEL_85;
    }

    v82 = sub_1001B9B24(v44, v269, 0, 1, v123);
    if (v82 >> 62)
    {
      break;
    }

    if (!*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_84;
    }

LABEL_70:
    if ((v82 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_73;
    }

    if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

LABEL_73:

      Artwork.size.getter();
      AspectRatio.init(_:_:)();

      goto LABEL_86;
    }

    __break(1u);
LABEL_130:
    ;
  }

LABEL_83:
  v76 = v82;
  v124 = _CocoaArrayWrapper.endIndex.getter();
  v82 = v76;
  if (v124)
  {
    goto LABEL_70;
  }

LABEL_84:

LABEL_85:
  AspectRatio.init(_:_:)();
LABEL_86:
  sub_100031660(v272, v264, &unk_1009732A0, &unk_1007B4FE0);
  v125 = v254;
  LockupMediaLayout.Metrics.init(interItemSpacing:displayType:mediaAspectRatio:boundingAspectRatio:)();
  sub_100007000(v278);
  v126 = OBJC_IVAR____TtC8AppStore15LockupMediaView_metrics;
  swift_beginAccess();
  v127 = v255;
  v128 = &v73[v126];
  v129 = v256;
  (*(v255 + 24))(v128, v125, v256);
  swift_endAccess();
  [v73 *(v70 + 2984)];
  (*(v127 + 8))(v125, v129);
  if (v44)
  {
    v130 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v130 = 0;
  }

  type metadata accessor for Screenshots();
  v131 = v251;
  sub_10061B788(v130, v251);

  v132 = OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_1001BAB64(v131, &v73[v132], v133);
  swift_endAccess();
  sub_1001B7B88(v134);
  sub_1001BABC8(v131, v135);
  if (v44)
  {
    v44 = Screenshots.mediaPlatform.getter();
  }

  *&v73[OBJC_IVAR____TtC8AppStore15LockupMediaView_platform] = v44;

  sub_1001B7D8C(v136);

  v137 = v270;
  v138 = v257;
  v139 = v274;
  (*(v270 + 16))(v257, v273, v274);
  v140 = OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v137 + 24))(&v73[v140], v138, v139);
  swift_endAccess();
  [v73 setNeedsLayout];
  (v265)(v138, v139);
  if (v10)
  {
    v270 = v137 + 8;
    (*(v244 + 104))(v239, enum case for VideoFillMode.scaleAspectFill(_:), v245);

    Video.preview.getter();
    Artwork.size.getter();
    v141 = v264;
    AspectRatio.init(_:_:)();

    (*(v242 + 56))(v141, 0, 1, v243);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    v142 = v263;
    BaseObjectGraph.inject<A>(_:)();
    Video.playbackId.getter();
    v143 = v246;
    Video.videoUrl.getter();
    v144 = type metadata accessor for URL();
    (*(*(v144 - 8) + 56))(v143, 0, 1, v144);
    v145 = v248;
    Video.templateMediaEvent.getter();
    v146 = v247;
    Video.templateClickEvent.getter();
    type metadata accessor for VideoView(0);
    sub_100007904(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    v147 = v142;
    v148 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v146, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v145, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v143, &qword_100982460, &unk_1007B5C90);
    sub_10002B894(v278, &qword_10096FB90, &qword_1007B2A50);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v150 = Strong;
      v151 = [Strong superview];
      if (!v151)
      {
        goto LABEL_97;
      }

      v152 = v151;
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v153 = v73;
      v154 = static NSObject.== infix(_:_:)();

      v147 = v263;
      if (v154)
      {
        v155 = swift_unknownObjectWeakLoadStrong();
        if (v155)
        {
          v150 = v155;
          [v155 removeFromSuperview];
LABEL_97:
        }
      }
    }

    swift_unknownObjectWeakAssign();
    v156 = swift_unknownObjectWeakLoadStrong();
    if (v156)
    {
      v158 = v156;
      [v73 addSubview:v156];
    }

    sub_1001B8790(v157);
    [v73 setNeedsLayout];

    v159 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
    v160 = *&v73[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView];
    v161 = v273;
    v162 = v147;
    if (v160)
    {
      [v160 removeFromSuperview];
      v163 = *&v73[v159];
    }

    else
    {
      v163 = 0;
    }

    v173 = v250;
    *&v73[v159] = 0;

    [v73 setNeedsLayout];

    (*(v249 + 8))(v261, v173);
    goto LABEL_145;
  }

  if (!v269)
  {
    goto LABEL_133;
  }

  v164 = Trailers.videos.getter();
  if (v164 >> 62)
  {
    v205 = v164;
    v206 = _CocoaArrayWrapper.endIndex.getter();
    v164 = v205;
    if (!v206)
    {
      goto LABEL_132;
    }

LABEL_105:
    v225 = 0;
    v270 = v137 + 8;
    if ((v164 & 0xC000000000000001) == 0)
    {
      v165 = v268;
      if (!*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

LABEL_108:

      v166 = v226;
      v167 = v275;
      (v262)(v226, v165, v275);
      v168 = v271;
      v169 = (*(v271 + 88))(v166, v167);
      v170 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
      (*(v168 + 8))(v166, v167);
      if (v169 == v170)
      {
        v171 = 1;
        v172 = v237;
      }

      else
      {
        v174 = Trailers.mediaPlatform.getter();
        v172 = v237;
        sub_10061B788(v174, v237);

        v171 = 0;
      }

      v175 = v231;
      v176 = v229;
      v177 = v245;
      v178 = v244;
      v179 = v227;
      v180 = v228;
      (*(v228 + 56))(v172, v171, 1, v229);
      (*(v178 + 104))(v234, enum case for VideoFillMode.scaleAspectFill(_:), v177);
      Video.preview.getter();
      Artwork.size.getter();
      AspectRatio.init(_:_:)();

      (*(v242 + 56))(v179, 0, 1, v243);
      Video.playbackControls.getter();
      Video.autoPlayPlaybackControls.getter();
      LODWORD(v264) = Video.canPlayFullScreen.getter();
      Video.allowsAutoPlay.getter();
      Video.looping.getter();
      sub_100031660(v172, v175, &qword_10097AE68, &qword_1007C2A38);
      if ((*(v180 + 48))(v175, 1, v176) == 1)
      {
        sub_10002B894(v175, &qword_10097AE68, &qword_1007C2A38);
      }

      else
      {
        sub_1001BABC8(v175, v181);
      }

      VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
      type metadata accessor for VideoViewManager();
      BaseObjectGraph.inject<A>(_:)();
      v182 = v278[0];
      Video.playbackId.getter();
      v183 = v246;
      Video.videoUrl.getter();
      v184 = type metadata accessor for URL();
      (*(*(v184 - 8) + 56))(v183, 0, 1, v184);
      v185 = v248;
      Video.templateMediaEvent.getter();
      v186 = v247;
      Video.templateClickEvent.getter();
      type metadata accessor for VideoView(0);
      sub_100007904(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
      v264 = v182;
      v187 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
      sub_10002B894(v186, &unk_100973A50, &unk_1007B4FD0);
      sub_10002B894(v185, &unk_100973A50, &unk_1007B4FD0);
      sub_10002B894(v183, &qword_100982460, &unk_1007B5C90);
      sub_10002B894(v278, &qword_10096FB90, &qword_1007B2A50);
      v188 = swift_unknownObjectWeakLoadStrong();
      v189 = v273;
      v190 = v237;
      if (!v188)
      {
        goto LABEL_122;
      }

      v191 = v188;
      v192 = v273;
      v193 = [v188 superview];
      if (v193)
      {
        v194 = v193;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v195 = v73;
        v196 = static NSObject.== infix(_:_:)();

        v190 = v237;
        v189 = v192;
        if ((v196 & 1) == 0)
        {
          goto LABEL_122;
        }

        v197 = swift_unknownObjectWeakLoadStrong();
        if (!v197)
        {
          goto LABEL_122;
        }

        v191 = v197;
        [v197 removeFromSuperview];
      }

LABEL_122:
      swift_unknownObjectWeakAssign();
      v198 = swift_unknownObjectWeakLoadStrong();
      if (v198)
      {
        v200 = v198;
        [v73 addSubview:v198];
      }

      sub_1001B8790(v199);
      [v73 setNeedsLayout];

      v201 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
      v202 = *&v73[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView];
      v203 = v250;
      v161 = v189;
      if (v202)
      {
        [v202 removeFromSuperview];
        v204 = *&v73[v201];
      }

      else
      {
        v204 = 0;
      }

      *&v73[v201] = 0;

      [v73 setNeedsLayout];

      (*(v249 + 8))(v236, v203);
      sub_10002B894(v190, &qword_10097AE68, &qword_1007C2A38);
      v162 = v263;
      goto LABEL_145;
    }

LABEL_152:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    v165 = v268;
    goto LABEL_108;
  }

  if (*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_105;
  }

LABEL_132:

LABEL_133:
  v207 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
  v208 = *&v73[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView];
  if (v208)
  {
    [v208 removeFromSuperview];
    v209 = *&v73[v207];
  }

  else
  {
    v209 = 0;
  }

  v162 = v263;
  v210 = v273;
  *&v73[v207] = 0;

  [v73 setNeedsLayout];
  v211 = swift_unknownObjectWeakLoadStrong();
  if (v211)
  {
    v212 = v211;
    sub_100007904(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    v213 = [v212 superview];
    if (!v213)
    {
      goto LABEL_141;
    }

    v214 = v213;
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v215 = v73;
    v216 = static NSObject.== infix(_:_:)();

    if (v216)
    {
      v217 = swift_unknownObjectWeakLoadStrong();
      if (v217)
      {
        v212 = v217;
        [v217 removeFromSuperview];
LABEL_141:
      }
    }
  }

  swift_unknownObjectWeakAssign();
  v218 = swift_unknownObjectWeakLoadStrong();
  if (v218)
  {
    v220 = v218;
    [v73 addSubview:v218];
  }

  sub_1001B8790(v219);
  [v73 setNeedsLayout];
  v161 = v210;
LABEL_145:
  [v73 setNeedsLayout];

  (v265)(v161, v274);
  (*(v271 + 8))(v268, v275);
  sub_10002B894(v272, &unk_1009732A0, &unk_1007B4FE0);
  if (Lockup.searchAdOpportunity.getter())
  {
    v221 = SearchAdOpportunity.searchAd.getter();

    v222 = v252;
    if (v221)
    {
      v223 = [objc_opt_self() clearColor];
      [v222 setBackgroundColor:v223];
    }
  }

  else
  {
    v221 = 0;
    v222 = v252;
  }

  [v222 setNeedsLayout];

  [v222 setNeedsLayout];
}

void sub_1006C89B8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v183 = a4;
  v9 = type metadata accessor for ScreenshotsDisplayStyle();
  v165 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v140[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_10002849C(&unk_10096FC10, &unk_1007B10C0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v140[-v14];
  v16 = type metadata accessor for SmallSearchLockupLayout();
  v172 = *(v16 - 8);
  v173 = v16;
  __chkstk_darwin(v16);
  v171 = &v140[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v176 = *(v18 - 8);
  *&v177 = v18;
  __chkstk_darwin(v18);
  v159 = &v140[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for LabelPlaceholderCompatibility();
  v168 = *(v20 - 8);
  v169 = v20;
  __chkstk_darwin(v20);
  v167 = &v140[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = type metadata accessor for OfferButtonMetrics();
  v180 = *(v22 - 8);
  v181 = v22;
  __chkstk_darwin(v22);
  v166 = &v140[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v179 = &v140[-v25];
  v185 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v178 = *(v185 - 8);
  __chkstk_darwin(v185);
  v170 = &v140[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v184 = &v140[-v28];
  v29 = sub_10002849C(&unk_1009912C0, &unk_1007B4130);
  __chkstk_darwin(v29 - 8);
  v160 = &v140[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v182 = &v140[-v32];
  v33 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v33 - 8);
  if (*(a2 + 32))
  {
    return;
  }

  v164 = &v140[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v156 = v15;
  v157 = v13;
  v158 = v12;
  v142 = v11;
  v143 = v9;
  v35 = *(a2 + 16);
  v36 = *(a2 + 24);
  v175 = v5;
  v37 = *(v5 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView);
  v38 = OBJC_IVAR____TtC8AppStore15LockupMediaView_imageViews;
  swift_beginAccess();
  v162 = v37;
  v39 = *(v37 + v38);
  if (v39 >> 62)
  {
    v40 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v174 = a1;
  v41 = v175;
  if (v40)
  {
    if (v40 < 1)
    {
      __break(1u);
      goto LABEL_62;
    }

    v42 = a3;

    v43 = 0;
    do
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v44 = *(v39 + v43 + 4);
      }

      v45 = v44;
      ++v43;
      v221[0] = v44;
      type metadata accessor for BorderedScreenshotView(0);
      sub_100007904(&qword_100973D78, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
      v46 = v45;
      AnyHashable.init<A>(_:)();
      ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
      sub_10003D614(v222);
      v47 = *&v46[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
      v223.value.super.isa = 0;
      v223.is_nil = 0;
      ArtworkView.setImage(image:animated:)(v223, v48);
    }

    while (v40 != v43);

    a3 = v42;
    v41 = v175;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v50 = Strong;
    [*(Strong + qword_100988CC0) setImage:0];
    v221[0] = v50;
    type metadata accessor for VideoView(0);
    sub_100007904(&qword_100992450, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
    v51 = v50;
    AnyHashable.init<A>(_:)();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
    v41 = v175;

    sub_10003D614(v222);
  }

  v5 = *(v41 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView);
  v13 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  v52 = *(v5 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v224.value.super.isa = 0;
  v224.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v224, v53);

  v54 = *(v5 + v13);
  type metadata accessor for ArtworkView();
  sub_100007904(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v55 = v54;
  v161 = a3;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  if (Lockup.icon.getter())
  {
    v56 = qword_10096EE80;
    v39 = *(v5 + v13);
    if (v56 == -1)
    {
LABEL_16:
      v57 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v57, qword_1009D3798);
      SmallLockupLayout.Metrics.artworkSize.getter();
      [v39 contentMode];
      Artwork.config(_:mode:prefersLayeredImage:)();
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v39 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      v58 = *(v5 + v13);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

      goto LABEL_19;
    }

LABEL_62:
    swift_once();
    goto LABEL_16;
  }

LABEL_19:
  v59 = Lockup.title.getter();
  v147 = v60;
  v148 = v59;
  v61 = Lockup.subtitle.getter();
  v63 = v62;
  v64 = Lockup.searchAdOpportunity.getter();
  v150 = v61;
  if (v64)
  {
    v65 = SearchAdOpportunity.searchAd.getter();

    v66 = v183;
    v67 = v184;
    v69 = v176;
    v68 = v177;
    v70 = v166;
    if (v65)
    {
      v71 = SearchAd.advertisingText.getter();
      v151 = v72;
      v152 = v71;
    }

    else
    {
      v151 = 0;
      v152 = 0;
    }
  }

  else
  {
    v151 = 0;
    v152 = 0;
    v66 = v183;
    v67 = v184;
    v69 = v176;
    v68 = v177;
    v70 = v166;
  }

  v175 = MixedMediaLockup.metadataRibbonItems.getter();
  v166 = MixedMediaLockup.searchTagRibbonItems.getter();
  v73 = MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
  (*(v69 + 56))(v182, 1, 1, v68);
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v74 = v185;
  v75 = sub_1000056A8(v185, qword_1009CDC00);
  v76 = v178 + 16;
  v77 = *(v178 + 16);
  v77(v67, v75, v74);
  v78 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v154 = v77;
  v155 = v76;
  v141 = v73;
  v149 = v63;
  if ((v78 & 1) == 0)
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v79 = qword_100991028;
    goto LABEL_32;
  }

  if (qword_10096ECB8 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v79 = qword_100991010;
LABEL_32:
    v80 = v181;
    v81 = sub_1000056A8(v181, v79);
    v82 = v180;
    (*(v180 + 16))(v70, v81, v80);
    (*(v82 + 32))(v179, v70, v80);
    v83 = [v66 preferredContentSizeCategory];
    UIContentSizeCategory.isAccessibilityCategory.getter();

    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
    SmallSearchLockupLayout.Metrics.artworkSize.getter();
    v153 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v164 = LayoutViewPlaceholder.init(representing:)();
    v84 = objc_opt_self();
    v145 = v84;
    v85 = [v84 preferredFontForTextStyle:UIFontTextStyleBody];
    v86 = type metadata accessor for Feature();
    v222[3] = v86;
    v163 = sub_100007904(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v222[4] = v163;
    v87 = sub_1000056E0(v222);
    v88 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v146 = *(*(v86 - 8) + 104);
    v144 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v146(v87, enum case for Feature.measurement_with_labelplaceholder(_:), v86);
    isFeatureEnabled(_:)();
    sub_100007000(v222);
    v89 = v167;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v90 = v169;
    v168 = *(v168 + 8);
    (v168)(v89, v169);
    v91 = [v84 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v221[3] = v86;
    v221[4] = v163;
    v92 = sub_1000056E0(v221);
    v93 = v88;
    v94 = v146;
    v146(v92, v93, v86);
    isFeatureEnabled(_:)();
    sub_100007000(v221);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v95 = v168;
    (v168)(v89, v90);
    v96 = [v145 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v220[3] = v86;
    v220[4] = v163;
    v97 = sub_1000056E0(v220);
    v94(v97, v144, v86);
    isFeatureEnabled(_:)();
    sub_100007000(v220);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v95(v89, v90);
    v98 = v175;
    LODWORD(v169) = sub_1000AE138() & (v98 != 0);
    if (v169 == 1)
    {
      v99 = objc_allocWithZone(type metadata accessor for TraitEnvironmentPlaceholder());
      v100 = v183;
      v101 = TraitEnvironmentPlaceholder.init(traitCollection:)();
      v102 = v160;
      sub_100031660(v182, v160, &unk_1009912C0, &unk_1007B4130);
      v104 = v176;
      v103 = v177;
      v105 = *(v176 + 48);
      if (v105(v102, 1, v177) == 1)
      {
        v106 = v159;
        static MetadataRibbonViewLayout.Metrics.standard.getter();
        v107 = v105(v102, 1, v103);
        v108 = v166;
        if (v107 != 1)
        {
          sub_10002B894(v102, &unk_1009912C0, &unk_1007B4130);
        }
      }

      else
      {
        v106 = v159;
        (*(v104 + 32))(v159, v102, v103);
        v108 = v166;
      }

      v111 = v101;
      sub_1000AD91C(v175, v106, v111, v35, v36);

      (*(v104 + 8))(v106, v103);
      v109 = v153;
      swift_allocObject();
      v110 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      v109 = v153;
      swift_allocObject();
      v110 = LayoutViewPlaceholder.init(representing:)();
      v108 = v166;
    }

    if ((sub_1000AE138() & (v108 != 0)) == 1)
    {
      v112 = v183;
      sub_100046528(v108, v141 & 1, v35, v36);
      swift_allocObject();
      v113 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      swift_allocObject();
      v113 = LayoutViewPlaceholder.init(representing:)();
      v112 = v183;
    }

    v154(v170, v184, v185);
    v219 = &protocol witness table for LayoutViewPlaceholder;
    v218 = v109;
    v217 = v164;
    v216 = 0;
    *&v214[40] = 0u;
    v215 = 0u;
    sub_10002C0AC(v222, v214);
    sub_10002C0AC(v221, &v213);
    v212 = 0;
    v210 = 0u;
    v211 = 0u;
    v209 = 0;
    v207 = 0u;
    v208 = 0u;

    v114 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
    v206 = &protocol witness table for LayoutViewPlaceholder;
    v205 = v109;
    v204 = v114;
    v203 = 0;
    v201 = 0u;
    v202 = 0u;
    v200 = 0;
    v198 = 0u;
    v199 = 0u;
    v197 = 0;
    v195 = 0u;
    v196 = 0u;
    v194 = 0;
    v193 = 0u;
    *&v192[40] = 0u;
    sub_10002C0AC(v220, v192);
    v190 = v109;
    v191 = &protocol witness table for LayoutViewPlaceholder;
    v188 = &protocol witness table for LayoutViewPlaceholder;
    v189 = v110;
    v187 = v109;
    v186 = v113;
    v115 = v171;
    SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v116 = swift_allocObject();
    v177 = xmmword_1007B0B70;
    *(v116 + 16) = xmmword_1007B0B70;
    *(v116 + 32) = v112;
    v117 = v112;
    v118 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_100007904(&unk_100972E60, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
    v119 = v173;
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v121 = v120;

    (*(v172 + 8))(v115, v119);
    sub_100007000(v220);
    sub_100007000(v221);
    sub_100007000(v222);
    (*(v180 + 8))(v179, v181);
    (*(v178 + 8))(v184, v185);
    sub_10002B894(v182, &unk_1009912C0, &unk_1007B4130);
    v122 = v156;
    static StandardSearchResultContentViewMetrics.bottomMargin.getter();
    v123 = swift_allocObject();
    *(v123 + 16) = v177;
    *(v123 + 32) = v117;
    v124 = v117;
    v125 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_100097060(&qword_10096FC20, &unk_10096FC10, &unk_1007B10C0, &protocol conformance descriptor for <> Conditional<A, B>);
    v126 = v158;
    dispatch thunk of AnyDimension.rawValue(in:)();
    v128 = v127;

    (*(v157 + 8))(v122, v126);
    v129 = MixedMediaLockup.alignedRegionArtwork.getter();
    v70 = MixedMediaLockup.alignedRegionVideo.getter();
    v130 = MixedMediaLockup.screenshots.getter();
    if (v130 >> 62)
    {
      v132 = v130;
      v133 = _CocoaArrayWrapper.endIndex.getter();
      v130 = v132;
      v66 = v161;
      if (!v133)
      {
LABEL_50:

        v131 = 0;
        goto LABEL_51;
      }
    }

    else
    {
      v66 = v161;
      if (!*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }
    }

    if ((v130 & 0xC000000000000001) != 0)
    {
      v131 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_66;
      }

      v131 = *(v130 + 32);
    }

LABEL_51:
    v134 = MixedMediaLockup.trailers.getter();
    if (!(v134 >> 62))
    {
      if (!*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_53;
    }

    v136 = v134;
    v137 = _CocoaArrayWrapper.endIndex.getter();
    v134 = v136;
    if (!v137)
    {
      break;
    }

LABEL_53:
    if ((v134 & 0xC000000000000001) != 0)
    {
      v135 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_56;
    }

    if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v135 = *(v134 + 32);

LABEL_56:

      goto LABEL_59;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  v135 = 0;
LABEL_59:
  v138 = v142;
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  v139.n128_f64[0] = v35;
  sub_1005B6FA0(v129, v70, v131, v135, v124, v66, v138, v139, v36 - v121 - v128);

  (*(v165 + 8))(v138, v143);
}

uint64_t sub_1006C9F8C@<X0>(uint64_t a2@<X8>)
{
  if (UITraitCollection.isSizeClassCompact.getter())
  {
    v3 = type metadata accessor for AspectRatio();
    v4 = *(*(v3 - 8) + 56);
    v5 = v3;
    v6 = a2;
    v7 = 1;
    goto LABEL_19;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {

    goto LABEL_15;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
LABEL_15:
    if (qword_10096EE20 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for AspectRatio();
    v22 = v21;
    v23 = qword_1009D3678;
    goto LABEL_18;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      static AspectRatio.square.getter();
      v20 = type metadata accessor for AspectRatio();
      v4 = *(*(v20 - 8) + 56);
      v5 = v20;
      v6 = a2;
      v7 = 0;
      goto LABEL_19;
    }
  }

  if (qword_10096EE28 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for AspectRatio();
  v22 = v21;
  v23 = qword_1009D3690;
LABEL_18:
  v24 = sub_1000056A8(v21, v23);
  v26 = *(v22 - 8);
  (*(v26 + 16))(a2, v24, v22);
  v4 = *(v26 + 56);
  v6 = a2;
  v7 = 0;
  v5 = v22;
LABEL_19:

  return v4(v6, v7, 1, v5);
}

id sub_1006CA250(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v4 = a1;
    v5 = a2;
    v6 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor:v6];

    a1 = v4;
    a2 = v5;
  }

  v7 = sub_10027B8BC(a1, a2);

  return [v3 setNeedsLayout];
}

uint64_t sub_1006CA320(uint64_t a1, uint64_t (*a2)(char *, void, uint64_t, __n128), uint64_t a3, void *a4, char *a5, int a6)
{
  v7 = v6;
  v79 = a5;
  v72 = a4;
  v70 = a3;
  v71 = a2;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v77 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for DispatchQoS();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = COERCE_DOUBLE(type metadata accessor for DispatchTimeInterval());
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = type metadata accessor for DispatchTime();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v63 - v21;
  sub_10002C0AC(a1, aBlock);
  sub_10002849C(&unk_100980530, &qword_1007B69B0);
  type metadata accessor for MixedMediaLockup();
  result = swift_dynamicCast();
  if (result)
  {
    v69 = v10;
    v24 = OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView;
    v25 = *(*&v7[OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView] + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView);
    v66 = a6;
    v26 = v81[0];
    v64 = *(v25 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_regularWidthColumnSpacing);
    [v7 layoutMargins];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    [v7 setUserInteractionEnabled:0];
    v35 = *&v7[v24];
    v68 = v11;
    [v35 frame];
    v40 = [objc_allocWithZone(type metadata accessor for AdvertsSearchResultContentView()) initWithFrame:{v36, v37, v38, v39}];
    v67 = v26;
    v41 = v64;
    v64 = *&v14;
    v42 = v71;
    v65 = v22;
    sub_1006C65C8(v26, v71, v70, v79, v41, v28, v30, v32, v34);
    [v40 layoutIfNeeded];
    [*&v7[v24] frame];
    v81[0] = v43;
    v81[1] = v44;
    v81[2] = v45;
    v81[3] = v46;
    v82 = 0;
    sub_1006C89B8(v26, v81, v72, v42);
    v47 = (*&v7[v24] + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_disableAdvertRotation);
    swift_beginAccess();
    v49 = *v47;
    v48 = v47[1];
    sub_10000827C(*v47, v48);
    sub_10068D354(v49, v48);
    sub_10001F63C(v49, v48);
    sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
    v72 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    v50 = 333;
    if ((v66 & 1) == 0)
    {
      v50 = 0;
    }

    *v17 = v50;
    v51 = v64;
    (*(v15 + 104))(v17, enum case for DispatchTimeInterval.milliseconds(_:), COERCE_DOUBLE(*&v64));
    + infix(_:_:)();
    (*(v15 + 8))(v17, COERCE_DOUBLE(*&v51));
    v52 = *(v73 + 8);
    v53 = v74;
    v52(v19, v74);
    v54 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v55 = swift_allocObject();
    v55[2] = v54;
    v55[3] = v40;
    v55[4] = v79;
    aBlock[4] = sub_1000E4028;
    aBlock[5] = v55;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008CEEF0;
    v56 = _Block_copy(aBlock);
    v57 = v40;

    v58 = v75;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100007904(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
    sub_100097060(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80, &protocol conformance descriptor for [A]);
    v59 = v77;
    v60 = v69;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v61 = v65;
    v62 = v72;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v56);

    (*(v68 + 8))(v59, v60);
    (*(v76 + 8))(v58, v78);
    return (v52)(v61, v53);
  }

  return result;
}

void sub_1006CAAD4(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = objc_opt_self();
    v8 = *&v6[OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView];
    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = v6;
    v9[4] = a2;
    aBlock[4] = sub_1006CC5A0;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100504C5C;
    aBlock[3] = &unk_1008CEF40;
    v10 = _Block_copy(aBlock);
    v11 = v8;

    v12 = v6;
    v13 = a2;

    [v7 transitionFromView:v11 toView:v13 duration:5242880 options:v10 completion:0.666];
    _Block_release(v10);
  }
}

void sub_1006CAC44(__n128 a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v7 = OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView;
  v8 = *&a4[OBJC_IVAR____TtC8AppStore36AdvertSearchResultCollectionViewCell_advertsContentView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_100007904(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
  }

  sub_100007904(&unk_100973DE0, type metadata accessor for AdvertsSearchResultContentView, &unk_1007DC960);
  v10 = v8;
  dispatch thunk of VideoPlaybackCoordinator.unregister(videoView:videoContainer:pausingPlayback:)();

  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    sub_100007904(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
  }

  dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();

  v12 = *&a4[v7];
  *&a4[v7] = a5;
  v13 = a5;

  [a4 setUserInteractionEnabled:1];
}

uint64_t sub_1006CAEAC(unint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for AdvertsSearchResultContentView();

  return sub_1006CAF54(a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_1006CAF54(unint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11)
{
  v148 = a11;
  v149 = a3;
  v181 = a2;
  v12 = sub_10002849C(&unk_100973C90, qword_1007B55A0);
  __chkstk_darwin(v12 - 8);
  v144 = &v143 - v13;
  v146 = type metadata accessor for LockupMediaLayout.DisplayType();
  v153 = *(v146 - 8);
  __chkstk_darwin(v146);
  v15 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v143 - v17;
  __chkstk_darwin(v19);
  v147 = &v143 - v20;
  v21 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v21 - 8);
  v154 = &v143 - v22;
  v23 = type metadata accessor for FloatingPointRoundingRule();
  v151 = *(v23 - 8);
  v152 = v23;
  __chkstk_darwin(v23);
  v150 = &v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ScreenshotsDisplayStyle();
  v177 = *(v25 - 8);
  v178 = v25;
  __chkstk_darwin(v25);
  v27 = &v143 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for SmallSearchLockupLayout();
  v175 = *(v28 - 8);
  v176 = v28;
  __chkstk_darwin(v28);
  v174 = &v143 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for LabelPlaceholderCompatibility();
  v171 = *(v30 - 8);
  v172 = v30;
  __chkstk_darwin(v30);
  v170 = &v143 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for OfferButtonMetrics();
  v186 = *(v32 - 8);
  __chkstk_darwin(v32);
  v34 = &v143 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v184 = &v143 - v36;
  v187 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v185 = *(v187 - 1);
  __chkstk_darwin(v187);
  v173 = &v143 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v143 - v39;
  CGSize.subtracting(insets:)();
  v42 = v41;
  v44 = v43;
  v45 = Lockup.title.getter();
  v160 = v46;
  v161 = v45;
  v47 = Lockup.subtitle.getter();
  v162 = v48;
  v163 = v47;
  if (Lockup.searchAdOpportunity.getter() && (v49 = SearchAdOpportunity.searchAd.getter(), , v49))
  {
    v50 = SearchAd.advertisingText.getter();
    v167 = v51;
    v168 = v50;
  }

  else
  {
    v167 = 0;
    v168 = 0;
  }

  MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
  v52 = [v181 traitCollection];
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v53 = v187;
  v54 = sub_1000056A8(v187, qword_1009CDC00);
  v164 = *(v185 + 16);
  v165 = v185 + 16;
  v164(v40, v54, v53);
  v55 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v179 = v27;
  v180 = a1;
  v145 = v18;
  v143 = v15;
  if (v55)
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v56 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v56 = qword_100991028;
  }

  v57 = sub_1000056A8(v32, v56);
  v58 = v186;
  (*(v186 + 16))(v34, v57, v32);
  (*(v58 + 32))();
  v59 = [v52 preferredContentSizeCategory];
  UIContentSizeCategory.isAccessibilityCategory.getter();
  v169 = v52;

  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  v183 = v40;
  SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
  SmallSearchLockupLayout.Metrics.artworkSize.getter();
  v60 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v159 = LayoutViewPlaceholder.init(representing:)();
  v61 = objc_opt_self();
  v157 = v61;
  v62 = [v61 preferredFontForTextStyle:UIFontTextStyleBody];
  v63 = type metadata accessor for Feature();
  v224[3] = v63;
  v182 = sub_100007904(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v224[4] = v182;
  v64 = sub_1000056E0(v224);
  v65 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v66 = *(v63 - 8);
  v166 = v32;
  v158 = *(v66 + 104);
  v67 = v66 + 104;
  v155 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v158(v64, enum case for Feature.measurement_with_labelplaceholder(_:), v63);
  v156 = v67;
  isFeatureEnabled(_:)();
  sub_100007000(v224);
  v68 = v170;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v69 = v172;
  v171 = *(v171 + 8);
  (v171)(v68, v172);
  v70 = [v61 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v223[3] = v63;
  v223[4] = v182;
  v71 = sub_1000056E0(v223);
  v72 = v65;
  v73 = v158;
  v158(v71, v72, v63);
  isFeatureEnabled(_:)();
  sub_100007000(v223);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v74 = v171;
  (v171)(v68, v69);
  v75 = [v157 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v222[3] = v63;
  v222[4] = v182;
  v76 = sub_1000056E0(v222);
  v73(v76, v155, v63);
  isFeatureEnabled(_:)();
  sub_100007000(v222);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v74(v68, v69);
  sub_1000AE138();
  swift_allocObject();
  v77 = LayoutViewPlaceholder.init(representing:)();

  sub_1000AE138();
  swift_allocObject();
  v78 = LayoutViewPlaceholder.init(representing:)();
  v164(v173, v183, v187);
  v221 = &protocol witness table for LayoutViewPlaceholder;
  v220 = v60;
  v79 = v159;
  v219 = v159;
  v218 = 0;
  *&v216[40] = 0u;
  v217 = 0u;
  sub_10002C0AC(v224, v216);
  sub_10002C0AC(v223, &v215);
  v214 = 0;
  v212 = 0u;
  v213 = 0u;
  v211 = 0;
  v209 = 0u;
  v210 = 0u;

  v80 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
  v208 = &protocol witness table for LayoutViewPlaceholder;
  v207 = v60;
  v206 = v80;
  v205 = 0;
  v203 = 0u;
  v204 = 0u;
  v202 = 0;
  v200 = 0u;
  v201 = 0u;
  v199 = 0;
  v197 = 0u;
  v198 = 0u;
  v196 = 0;
  v195 = 0u;
  *&v194[40] = 0u;
  sub_10002C0AC(v222, v194);
  v192 = v60;
  v193 = &protocol witness table for LayoutViewPlaceholder;
  v190 = &protocol witness table for LayoutViewPlaceholder;
  v191 = v77;
  v189 = v60;
  v188 = v78;
  v81 = v174;
  SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1007B0B70;
  v83 = v169;
  *(v82 + 32) = v169;
  v84 = v83;
  v85 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_100007904(&unk_100972E60, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v86 = v176;
  dispatch thunk of Measurable.measurements(fitting:in:)();

  (*(v175 + 8))(v81, v86);
  sub_100007000(v222);
  sub_100007000(v223);
  sub_100007000(v224);
  (*(v186 + 8))(v184, v166);
  (*(v185 + 8))(v183, v187);
  v88 = v179;
  v87 = v180;
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  if ((ScreenshotsDisplayStyle.shouldShowScreenshots.getter() & 1) == 0 || (sub_1001A41FC() & 1) == 0)
  {
    return (*(v177 + 8))(v88, v178);
  }

  if (qword_10096E6B8 != -1)
  {
    swift_once();
  }

  v89 = type metadata accessor for StaticDimension();
  sub_1000056A8(v89, qword_1009D2448);
  v90 = v150;
  static Dimensions.defaultRoundingRule.getter();
  v91 = v181;
  AnyDimension.value(in:rounded:)();
  (*(v151 + 8))(v90, v152);
  v92 = MixedMediaLockup.alignedRegionArtwork.getter();
  v93 = MixedMediaLockup.alignedRegionVideo.getter();
  v94 = MixedMediaLockup.screenshots.getter();
  if (v94 >> 62)
  {
    v96 = v94;
    v97 = _CocoaArrayWrapper.endIndex.getter();
    v94 = v96;
    if (v97)
    {
      goto LABEL_20;
    }

LABEL_26:

    v79 = 0;
    goto LABEL_27;
  }

  if (!*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_26;
  }

LABEL_20:
  if ((v94 & 0xC000000000000001) != 0)
  {
    v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_61;
    }

    v79 = *(v94 + 32);
  }

LABEL_27:
  v98 = MixedMediaLockup.trailers.getter();
  if (v98 >> 62)
  {
    v100 = v98;
    v101 = _CocoaArrayWrapper.endIndex.getter();
    v98 = v100;
    if (v101)
    {
      goto LABEL_29;
    }

LABEL_34:

    v187 = 0;
    goto LABEL_35;
  }

  if (!*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((v98 & 0xC000000000000001) != 0)
  {
    v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_63;
    }
  }

  v187 = v99;

LABEL_35:
  v102 = [v91 traitCollection];
  sub_1006C9F8C(v154);

  v77 = MixedMediaLockup.alignedRegionArtwork.getter();
  v78 = MixedMediaLockup.alignedRegionVideo.getter();
  v103 = MixedMediaLockup.screenshots.getter();
  if (v103 >> 62)
  {
    v104 = v103;
    v105 = _CocoaArrayWrapper.endIndex.getter();
    v103 = v104;
    if (v105)
    {
LABEL_37:
      if ((v103 & 0xC000000000000001) == 0)
      {
        if (!*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_65;
        }

        v87 = *(v103 + 32);

        goto LABEL_40;
      }

LABEL_61:
      v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_40:

      goto LABEL_43;
    }
  }

  else if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

  v87 = 0;
LABEL_43:
  v106 = MixedMediaLockup.trailers.getter();
  if (v106 >> 62)
  {
    v109 = v106;
    v110 = _CocoaArrayWrapper.endIndex.getter();
    v106 = v109;
    v186 = v79;
    if (v110)
    {
LABEL_45:
      if ((v106 & 0xC000000000000001) == 0)
      {
        if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v108 = *(v106 + 32);

LABEL_48:

          goto LABEL_51;
        }

LABEL_65:
        __break(1u);
LABEL_66:
        v183 = _CocoaArrayWrapper.endIndex.getter();
        if (v87)
        {
          goto LABEL_55;
        }

        goto LABEL_67;
      }

LABEL_63:
      v108 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_48;
    }
  }

  else
  {
    v107 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v186 = v79;
    if (v107)
    {
      goto LABEL_45;
    }
  }

  v108 = 0;
LABEL_51:
  v111 = ScreenshotsDisplayStyle.shouldShowScreenshots.getter();
  v185 = v93;
  if ((v111 & 1) == 0)
  {

    v115 = v153;
    v117 = v146;
    v116 = v147;
    (*(v153 + 104))(v147, enum case for LockupMediaLayout.DisplayType.none(_:), v146);
LABEL_88:
    v139 = v187;
    type metadata accessor for LockupMediaView(0);
    v140 = v154;
    v141 = v91;
    v142 = v179;
    sub_1005B8730(v92, v185, v186, v139, v154, v116, v141, v179, v42, v44);

    (*(v115 + 8))(v116, v117);
    sub_10002B894(v140, &unk_1009732A0, &unk_1007B4FE0);
    return (*(v177 + 8))(v142, v178);
  }

  if (v78 | v77)
  {
    v118 = v145;
    AspectRatio.init(_:_:)();

    v115 = v153;
    v117 = v146;
    (*(v153 + 104))(v118, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v146);
    v116 = v147;
    (*(v115 + 32))(v147, v118, v117);
    goto LABEL_88;
  }

  v113 = sub_1001B9B24(v87, v108, 0, 1, v112);
  v78 = v113;
  v93 = v113 >> 62;
  if (v113 >> 62)
  {
    goto LABEL_66;
  }

  v183 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v87)
  {
LABEL_55:
    v114 = Screenshots.mediaPlatform.getter();
    goto LABEL_68;
  }

LABEL_67:
  v114 = 0;
LABEL_68:
  LODWORD(v180) = sub_1001B9E6C(v114);

  v184 = v92;
  if (v87)
  {
    v119 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v119 = 0;
  }

  v120 = v177;
  v121 = v144;
  v122 = v88;
  v123 = v178;
  (*(v177 + 16))(v144, v122, v178);
  (*(v120 + 56))(v121, 0, 1, v123);
  v124 = sub_1001BA394(v119, v121);

  sub_10002B894(v121, &unk_100973C90, qword_1007B55A0);
  if (!v93)
  {
    result = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v92 = v184;
    if (result)
    {
      goto LABEL_73;
    }

LABEL_79:

    goto LABEL_80;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v92 = v184;
  if (!result)
  {
    goto LABEL_79;
  }

LABEL_73:
  if ((v78 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_76:

    v125 = dispatch thunk of Artwork.isLandscape.getter();

    if (v125)
    {

      v115 = v153;
      v126 = v145;
      v117 = v146;
      (*(v153 + 104))(v145, enum case for LockupMediaLayout.DisplayType.landscape(_:), v146);
      v116 = v147;
LABEL_87:
      (*(v115 + 32))(v116, v126, v117);
      goto LABEL_88;
    }

LABEL_80:
    v127 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v128 = v153;
    v129 = v143;
    v130 = v146;
    v182 = *(v153 + 104);
    v182(v143, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v146);
    v131 = LockupMediaLayout.DisplayType.numberOfViews.getter();
    v176 = *(v128 + 8);
    v176(v129, v130);
    if (((v183 >= v131) & v124) != 0 || (v127 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v182(v129, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v130), v132 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v133 = v176, v176(v129, v130), ((v183 >= v132) & v180) != 0) || (v127 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v182(v129, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v130), v134 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v133(v129, v130), v183 >= v134))
    {

      v126 = v145;
      v182(v145, v127, v130);
      v91 = v181;
      v117 = v130;
    }

    else
    {
      v135 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      v182(v129, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v130);
      v136 = LockupMediaLayout.DisplayType.numberOfViews.getter();

      v133(v129, v130);
      v117 = v130;
      if (v183 == v136)
      {
        v126 = v145;
        v137 = v145;
        v138 = v135;
      }

      else
      {
        v138 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v126 = v145;
        v137 = v145;
      }

      v182(v137, v138, v130);
      v91 = v181;
    }

    v115 = v153;
    v116 = v147;
    v92 = v184;
    goto LABEL_87;
  }

  if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_76;
  }

  __break(1u);
  return result;
}

double sub_1006CC5B4(double a1, double a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = sub_10002849C(&qword_100992470, &unk_1007B45B0);
  __chkstk_darwin(v15 - 8);
  v17 = v31 - v16;
  v18 = type metadata accessor for ComponentPrefetchSizing();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = Shelf.prefetchableArtwork.getter();
  if (v22 >> 62)
  {
    v28 = a6;
    v29 = v22;
    v30 = _CocoaArrayWrapper.endIndex.getter();
    v22 = v29;
    a6 = v28;
    if (v30)
    {
LABEL_3:
      v31[1] = a6;
      v23 = v22;
      (*(a8 + 16))(a4 & 1, a5, a7, a8, a1, a2);
      if ((*(v19 + 48))(v17, 1, v18) == 1)
      {

        sub_10002B894(v17, &qword_100992470, &unk_1007B45B0);
      }

      else
      {
        v25 = (*(v19 + 32))(v21, v17, v18);
        __chkstk_darwin(v25);
        v31[-2] = v21;
        sub_1000B40B8(sub_1000BDD2C, &v31[-4], v23);
        v27._rawValue = v26;

        ArtworkLoader.prefetchArtwork(using:)(v27);

        (*(v19 + 8))(v21, v18);
      }

      return result;
    }
  }

  else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1006CC88C(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Shelf.ContentType();
  v10 = (*(*(v9 - 8) + 48))(a1, 1, v9);
  result = 0;
  if (((v10 != 1) & a2) == 1)
  {
    if (qword_10096E6C0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for StaticDimension();
    sub_1000056A8(v12, qword_1009D2460);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    return v14;
  }

  return result;
}

uint64_t sub_1006CCA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ShelfBackground();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Shelf.ContentType();
  if ((*(*(v14 - 8) + 48))(a1, 1, v14) == 1)
  {
    return 0;
  }

  v25 = v7;
  v26 = a4;
  v16 = enum case for ShelfBackground.none(_:);
  v17 = *(v11 + 104);
  v17(v13, enum case for ShelfBackground.none(_:), v10);
  v18 = static ShelfBackground.== infix(_:_:)();
  v19 = *(v11 + 8);
  v19(v13, v10);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v17(v13, v16, v10);
  sub_1006BA1B4();
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19(v13, v10);
  if (v20)
  {
    return 0;
  }

  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for StaticDimension();
  sub_1000056A8(v21, qword_1009D2460);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v23 = v22;
  (*(v25 + 8))(v9, v6);
  return v23;
}

double sub_1006CD76C(__n128 a1)
{
  if (Shelf.prefetchableArtwork.getter() >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return result;
}

double sub_1006CD7C8(double a1, uint64_t a2, char a3)
{
  v4 = type metadata accessor for ComponentPrefetchSizing();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v20[-v9];
  v11 = Shelf.prefetchableArtwork.getter();
  if (v11 >> 62)
  {
    v18 = v11;
    v19 = _CocoaArrayWrapper.endIndex.getter();
    v11 = v18;
    if (v19)
    {
      goto LABEL_3;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v12 = v11;
    if (a3)
    {
      swift_getObjectType();
      PageTraitEnvironment.pageColumnWidth.getter();
      PageTraitEnvironment.pageColumnMargin.getter();
    }

    if (qword_10096D050 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for AspectRatio();
    sub_1000056A8(v13, qword_1009CDF98);
    AspectRatio.height(fromWidth:)();
    ComponentPrefetchSizing.init(size:contentMode:)();
    v14 = (*(v5 + 32))(v10, v7, v4);
    __chkstk_darwin(v14);
    *&v20[-16] = v10;
    sub_1000B40B8(sub_1000C26E8, &v20[-32], v12);
    v16._rawValue = v15;

    ArtworkLoader.prefetchArtwork(using:)(v16);

    (*(v5 + 8))(v10, v4);
    return result;
  }

  return result;
}

double sub_1006CDA78()
{
  v0 = type metadata accessor for ComponentPrefetchSizing();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = Shelf.prefetchableArtwork.getter();
  if (v4 >> 62)
  {
    v10 = v4;
    v11 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v10;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v5 = v4;
    swift_getObjectType();
    PageTraitEnvironment.pageColumnWidth.getter();
    PageTraitEnvironment.pageColumnMargin.getter();
    v6 = ComponentPrefetchSizing.init(size:contentMode:)();
    __chkstk_darwin(v6);
    *&v12[-16] = v3;
    sub_1000B40B8(sub_1000C26E8, &v12[-32], v5);
    v8._rawValue = v7;

    ArtworkLoader.prefetchArtwork(using:)(v8);

    (*(v1 + 8))(v3, v0);
    return result;
  }

  return result;
}

double sub_1006CDC70()
{
  v0 = type metadata accessor for ComponentPrefetchSizing();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = Shelf.prefetchableArtwork.getter();
  if (v4 >> 62)
  {
    v11 = v4;
    v12 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v11;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v5 = v4;
    if (qword_10096EE80 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for SmallLockupLayout.Metrics();
    sub_1000056A8(v6, qword_1009D3798);
    SmallLockupLayout.Metrics.artworkSize.getter();
    v7 = ComponentPrefetchSizing.init(size:contentMode:)();
    __chkstk_darwin(v7);
    *&v13[-16] = v3;
    sub_1000B40B8(sub_1000C26E8, &v13[-32], v5);
    v9._rawValue = v8;

    ArtworkLoader.prefetchArtwork(using:)(v9);

    (*(v1 + 8))(v3, v0);
    return result;
  }

  return result;
}

double sub_1006CDE78(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_10002849C(&unk_100970EA0, &unk_1007B2210);
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v26 - v6;
  v8 = type metadata accessor for MediumLockupLayout.Metrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ComponentPrefetchSizing();
  v29 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = Shelf.prefetchableArtwork.getter();
  if (v15 >> 62)
  {
    v23 = v12;
    v24 = v15;
    v25 = _CocoaArrayWrapper.endIndex.getter();
    v15 = v24;
    v12 = v23;
    if (v25)
    {
      goto LABEL_3;
    }
  }

  else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v27 = v12;
    v16 = v15;
    v17 = [a2 traitCollection];
    v26[1] = a3;
    v18 = v17;
    sub_100631334(v11);

    MediumLockupLayout.Metrics.artworkSize.getter();
    (*(v9 + 8))(v11, v8);
    v30 = a2;
    swift_unknownObjectRetain();
    Conditional.evaluate(with:)();
    (*(v28 + 8))(v7, v5);
    swift_unknownObjectRelease();
    v19 = ComponentPrefetchSizing.init(size:contentMode:)();
    __chkstk_darwin(v19);
    v26[-2] = v14;
    sub_1000B40B8(sub_1000C26E8, &v26[-4], v16);
    v21._rawValue = v20;

    ArtworkLoader.prefetchArtwork(using:)(v21);

    (*(v29 + 8))(v14, v27);
    return result;
  }

  return result;
}

double sub_1006CE1E8(double a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v6 = type metadata accessor for AspectRatio();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ComponentPrefetchSizing();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v25 - v15;
  v17 = Shelf.prefetchableArtwork.getter();
  if (v17 >> 62)
  {
    v23 = v17;
    v24 = _CocoaArrayWrapper.endIndex.getter();
    v17 = v23;
    if (v24)
    {
      goto LABEL_3;
    }
  }

  else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v26 = v17;
    if (a3)
    {
      swift_getObjectType();
      PageTraitEnvironment.pageColumnWidth.getter();
    }

    if (qword_10096D4D0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for FlowcaseItemLayout.Metrics();
    sub_1000056A8(v18, qword_1009CEA50);
    FlowcaseItemLayout.Metrics.artworkAspectRatio.getter();
    AspectRatio.height(fromWidth:)();
    (*(v7 + 8))(v9, v6);
    ComponentPrefetchSizing.init(size:contentMode:)();
    v19 = (*(v11 + 32))(v16, v13, v10);
    __chkstk_darwin(v19);
    *(&v25 - 2) = v16;
    sub_1000B40B8(sub_1000C26E8, (&v25 - 4), v26);
    v21._rawValue = v20;

    ArtworkLoader.prefetchArtwork(using:)(v21);

    (*(v11 + 8))(v16, v10);
    return result;
  }

  return result;
}

uint64_t sub_1006CE518(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for Shelf.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  sub_100094EE4(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10002B894(v4, &unk_100992460, &qword_1007B6BF0);
  }

  else
  {
    v12 = *(v6 + 32);
    v12(v11, v4, v5);
    v12(v8, v11, v5);
    v13 = (*(v6 + 88))(v8, v5);
    if (v13 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v13 == enum case for Shelf.ContentType.upsellBreakout(_:) || v13 == enum case for Shelf.ContentType.smallBreakout(_:) || v13 == enum case for Shelf.ContentType.editorialStoryCard(_:) || v13 == enum case for Shelf.ContentType.gameCenterReengagement(_:) || v13 == enum case for Shelf.ContentType.heroCarousel(_:))
    {
      return 0;
    }

    (*(v6 + 8))(v8, v5);
  }

  return 1;
}

void sub_1006CE764(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(40);
  _typeName(_:qualified:)();

  v2._object = 0x80000001008209F0;
  v2._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v2);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1006CE83C(void *a1, char a2)
{
  v2 = &unk_1008AE840;
  if ((a2 & 1) == 0)
  {
    v2 = &unk_1008AE7F8;
  }

  v3 = *v2;
  if (*v2)
  {
    v5 = a1;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (a2)
    {
      v6 = &off_1008AE830;
    }

    else
    {
      v6 = &off_1008AE7E8;
    }

    v7 = (v6 + 4);
    for (i = v3 & ~(v3 >> 63); i; --i)
    {
      v9 = *v7++;
      v10 = [v5 colorWithAlphaComponent:v9];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (!--v3)
      {

        return;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

char *sub_1006CE96C(char a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_effectVisibilityThreshold] = 0;
  v4 = OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_alignment;
  v5 = enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:);
  v6 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  (*(*(v6 - 8) + 104))(&v1[v4], v5, v6);
  v46 = a1 & 1;
  v47 = a1;
  v1[OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_style] = a1 & 1;
  v7 = type metadata accessor for GradientView();
  v8 = [objc_allocWithZone(v7) init];
  *&v1[OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_overlayView] = v8;
  v9 = [objc_allocWithZone(v7) init];
  *&v1[OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_plusDarkerView] = v9;
  v10 = [objc_allocWithZone(v7) init];
  *&v1[OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_gradientMaskView] = v10;
  result = [objc_opt_self() effectWithBlurRadius:35.0];
  if (result)
  {
    v12 = result;
    v48.receiver = v1;
    v48.super_class = ObjectType;
    v13 = objc_msgSendSuper2(&v48, "initWithEffect:", result);

    v14 = v13;
    [v14 setOverrideUserInterfaceStyle:2];
    [v14 setUserInteractionEnabled:0];
    [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    v15 = v14;
    [v15 setClipsToBounds:0];
    v16 = [v15 contentView];
    v17 = [v16 layer];

    [v17 setAllowsGroupBlending:0];
    v18 = OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_overlayView;
    v19 = *&v15[OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_overlayView];
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 blackColor];
    specialized ContiguousArray.reserveCapacity(_:)();
    v23 = [v22 colorWithAlphaComponent:0.0];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v24 = [v22 colorWithAlphaComponent:0.2];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();

    *&v21[OBJC_IVAR____TtC8AppStore12GradientView_colors] = _swiftEmptyArrayStorage;

    sub_1001C0CEC();

    v25 = [v15 contentView];
    [v25 addSubview:*&v15[v18]];

    v26 = OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_plusDarkerView;
    v27 = *&v15[OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_plusDarkerView];
    v28 = [v20 blackColor];
    specialized ContiguousArray.reserveCapacity(_:)();
    v29 = [v28 colorWithAlphaComponent:0.0];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v30 = [v28 colorWithAlphaComponent:0.2];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();

    *&v27[OBJC_IVAR____TtC8AppStore12GradientView_colors] = _swiftEmptyArrayStorage;

    sub_1001C0CEC();

    v31 = [*&v15[v26] layer];
    [v31 setCompositingFilter:kCAFilterPlusD];

    v32 = [v15 contentView];
    [v32 addSubview:*&v15[v26]];

    v33 = OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_gradientMaskView;
    v34 = *&v15[OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_gradientMaskView];
    v35 = [v20 blackColor];
    sub_1006CE83C(v35, v46);
    v37 = v36;

    *&v34[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v37;

    sub_1001C0CEC();

    v38 = *&v15[v33];
    if (v47)
    {
      v39 = &off_1008AE8C0;
    }

    else
    {
      v39 = &off_1008AE878;
    }

    if (v47)
    {
      v40 = &kCAGradientLayerRadial;
    }

    else
    {
      v40 = &kCAGradientLayerAxial;
    }

    sub_1001C0B48(v39);

    v41 = *&v15[v33];
    v41[OBJC_IVAR____TtC8AppStore12GradientView_kind] = v46;
    v42 = v41;
    v43 = [v42 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setType:*v40];

    v44 = [v15 layer];
    v45 = [*&v15[v33] layer];
    objc_opt_self();
    [v44 setMask:swift_dynamicCastObjCClassUnconditional()];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006CF0D8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  if (v1[OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_style] == 1)
  {
    v9 = OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_alignment;
    swift_beginAccess();
    (*(v3 + 16))(v5, &v1[v9], v2);
    v10 = [v1 traitCollection];
    HeroCarouselItemOverlay.DisplayOptions.Placement.value(with:)();

    v11 = *(v3 + 8);
    v11(v5, v2);
    v12 = (*(v3 + 88))(v8, v2);
    if (v12 == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:))
    {
      v13 = 150.0;
      v14 = 500.0;
    }

    else
    {
      if (v12 == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.center(_:))
      {
        LayoutMarginsAware<>.layoutFrame.getter();
        v13 = CGRectGetWidth(v22) * 0.5;
        v15 = 350.0;
      }

      else
      {
        if (v12 != enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.trailing(_:))
        {
          v11(v8, v2);
          v14 = 0.0;
          v13 = 0.0;
          goto LABEL_10;
        }

        LayoutMarginsAware<>.layoutFrame.getter();
        v13 = CGRectGetWidth(v23) + -150.0;
        v15 = -350.0;
      }

      v14 = v13 + v15;
    }

LABEL_10:
    v16 = *&v1[OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_gradientMaskView];
    LayoutMarginsAware<>.layoutFrame.getter();
    v17 = v13 / CGRectGetWidth(v24);
    v18 = [v16 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v17, 1.0}];

    LayoutMarginsAware<>.layoutFrame.getter();
    v19 = v14 / CGRectGetWidth(v25);
    v20 = [v16 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v19, 0.0}];
  }
}

uint64_t type metadata accessor for ModuleOverlayGradientBlurView(uint64_t a1)
{
  result = qword_1009924C8;
  if (!qword_1009924C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006CF5FC(uint64_t a1)
{
  result = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
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

unint64_t sub_1006CF6CC()
{
  result = qword_1009924D8;
  if (!qword_1009924D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009924D8);
  }

  return result;
}

uint64_t sub_1006CF720()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v5 = swift_allocObject();
  v28 = xmmword_1007B0B70;
  *(v5 + 16) = xmmword_1007B0B70;
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  type metadata accessor for ActionDebugSetting();
  v7 = swift_allocObject();
  *(v7 + 56) = 0xD000000000000016;
  *(v7 + 64) = 0x80000001008212E0;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = sub_1006D00AC;
  *(v7 + 112) = v6;
  v8 = v0;

  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  v12 = *(v2 + 8);
  v29 = v2 + 8;
  v30 = v12;
  v12(v4, v1);
  v31 = v9;
  v32 = v11;
  AnyHashable.init<A>(_:)();

  *(v5 + 32) = v7;
  v13 = swift_allocObject();
  *(v13 + 16) = v28;
  v14 = v13;
  v27 = v13;
  type metadata accessor for PromptActionDebugSetting();
  swift_allocObject();
  *(v14 + 32) = sub_100553DF8(0xD000000000000018, 0x8000000100821300, 0, 0, sub_1006CFA74, 0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007B15F0;
  type metadata accessor for DebugSection();
  v16 = swift_allocObject();
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  v20 = v30;
  v30(v4, v1);
  v16[2] = v17;
  v16[3] = v19;
  v16[4] = 0x42206F54206B7341;
  v16[5] = 0xEA00000000007975;
  v16[6] = v5;
  *(v15 + 32) = v16;
  v21 = swift_allocObject();
  UUID.init()();
  v22 = UUID.uuidString.getter();
  v24 = v23;
  v20(v4, v1);
  v21[2] = v22;
  v21[3] = v24;
  v21[4] = 0xD000000000000015;
  v21[5] = 0x8000000100821320;
  v21[6] = v27;
  *(v15 + 40) = v21;
  return v15;
}

void sub_1006CFA74(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v4 = HIBYTE(a3) & 0xF;
    v5 = a2 & 0xFFFFFFFFFFFFLL;
    if ((a3 & 0x2000000000000000) != 0 ? HIBYTE(a3) & 0xF : v5)
    {
      if ((a3 & 0x1000000000000000) != 0)
      {

        sub_10070EC94(a2, a3, 10);
        v9 = v38;
        v40 = v39;

        if (v40)
        {
          return;
        }

        goto LABEL_64;
      }

      if ((a3 & 0x2000000000000000) != 0)
      {
        v41 = a2;
        v42 = a3 & 0xFFFFFFFFFFFFFFLL;
        if (a2 == 43)
        {
          if (v4)
          {
            if (--v4)
            {
              v9 = 0;
              v19 = &v41 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  break;
                }

                v21 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  break;
                }

                v9 = v21 + v20;
                if (__OFADD__(v21, v20))
                {
                  break;
                }

                ++v19;
                if (!--v4)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_62;
          }

LABEL_75:
          __break(1u);
          return;
        }

        if (a2 != 45)
        {
          if (v4)
          {
            v9 = 0;
            v24 = &v41;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                break;
              }

              v26 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                break;
              }

              v24 = (v24 + 1);
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

        if (v4)
        {
          if (--v4)
          {
            v9 = 0;
            v13 = &v41 + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                break;
              }

              v15 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                break;
              }

              ++v13;
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v7 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v7 = _StringObject.sharedUTF8.getter();
        }

        v8 = *v7;
        if (v8 == 43)
        {
          if (v5 >= 1)
          {
            v4 = v5 - 1;
            if (v5 != 1)
            {
              v9 = 0;
              if (v7)
              {
                v16 = v7 + 1;
                while (1)
                {
                  v17 = *v16 - 48;
                  if (v17 > 9)
                  {
                    goto LABEL_62;
                  }

                  v18 = 10 * v9;
                  if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                  {
                    goto LABEL_62;
                  }

                  v9 = v18 + v17;
                  if (__OFADD__(v18, v17))
                  {
                    goto LABEL_62;
                  }

                  ++v16;
                  if (!--v4)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_54;
            }

            goto LABEL_62;
          }

          goto LABEL_74;
        }

        if (v8 != 45)
        {
          if (v5)
          {
            v9 = 0;
            if (v7)
            {
              while (1)
              {
                v22 = *v7 - 48;
                if (v22 > 9)
                {
                  goto LABEL_62;
                }

                v23 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_62;
                }

                v9 = v23 + v22;
                if (__OFADD__(v23, v22))
                {
                  goto LABEL_62;
                }

                ++v7;
                if (!--v5)
                {
                  goto LABEL_54;
                }
              }
            }

            goto LABEL_54;
          }

LABEL_62:
          v9 = 0;
          LOBYTE(v4) = 1;
LABEL_63:
          v43 = v4;
          if (v4)
          {
            return;
          }

LABEL_64:
          v27 = objc_opt_self();
          v28 = [v27 treatmentOverrides];
          if (v28)
          {
            v29 = v28;
            v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
            v30 = sub_1001962CC(_swiftEmptyArrayStorage);
          }

          v41 = 0x62734435625378;
          v42 = 0xE700000000000000;
          sub_10002849C(&unk_10097E350, &unk_1007DEA00);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_1007B10D0;
          *(v31 + 56) = &type metadata for Int;
          *(v31 + 64) = &protocol witness table for Int;
          *(v31 + 32) = v9;
          v32._countAndFlagsBits = String.init(format:_:)();
          String.append(_:)(v32);

          v33 = v41;
          v34 = v42;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v41 = v30;
          sub_10005192C(v33, v34, 0x6D4B3562504E66, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v27 setTreatmentOverrides:isa];

          return;
        }

        if (v5 >= 1)
        {
          v4 = v5 - 1;
          if (v5 != 1)
          {
            v9 = 0;
            if (v7)
            {
              v10 = v7 + 1;
              while (1)
              {
                v11 = *v10 - 48;
                if (v11 > 9)
                {
                  goto LABEL_62;
                }

                v12 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_62;
                }

                v9 = v12 - v11;
                if (__OFSUB__(v12, v11))
                {
                  goto LABEL_62;
                }

                ++v10;
                if (!--v4)
                {
                  goto LABEL_63;
                }
              }
            }

LABEL_54:
            LOBYTE(v4) = 0;
            goto LABEL_63;
          }

          goto LABEL_62;
        }

        __break(1u);
      }

      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }
  }
}

void sub_1006CFED4(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = static AskToBuyRequestNotificationDetails.notificationName.getter();
  sub_10002849C(&unk_10097E340, &unk_1007C9830);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B10D0;
  static AskToBuyRequestNotificationDetails.adamIdKey.getter();
  AnyHashable.init<A>(_:)();
  v5 = type metadata accessor for AdamId();
  *(inited + 96) = v5;
  v6 = sub_1000056E0((inited + 72));
  (*(*(v5 - 8) + 16))(v6, a1, v5);
  sub_100397CE8(inited);
  swift_setDeallocating();
  sub_10002B894(inited + 32, &unk_1009827A0, &unk_1007B2F90);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 postNotificationName:v3 object:0 userInfo:isa];
}

id sub_1006D0054(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProductPageSettings();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1006D00D0()
{
  v0 = sub_10002849C(&qword_100972A80, &qword_1007C9840);
  __chkstk_darwin(v0 - 8);
  v2 = &v27 - v1;
  v3 = type metadata accessor for AdamId();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  __chkstk_darwin(v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong presentingViewController];

    if (v11)
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (!v12)
      {
LABEL_6:

        goto LABEL_7;
      }

      v13 = [v12 selectedViewController];

      if (v13)
      {
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        v11 = v13;
        if (v14)
        {
          goto LABEL_10;
        }

        goto LABEL_6;
      }
    }
  }

LABEL_7:
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v30 = [v15 presentingViewController];

  if (!v30)
  {
    return;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_10:
  v30 = v14;
  v17 = [v14 topViewController];
  if (!v17)
  {
LABEL_14:
    v19 = v30;
LABEL_16:

    return;
  }

  v28 = v17;
  type metadata accessor for ProductDiffablePageViewController(0);
  if (!swift_dynamicCastClass())
  {

    v19 = v28;
    goto LABEL_16;
  }

  ProductDiffablePagePresenter.adamId.getter();

  v18 = v29;
  if ((*(v29 + 48))(v2, 1, v3) == 1)
  {

    sub_10002B894(v2, &qword_100972A80, &qword_1007C9840);
    return;
  }

  v27 = *(v18 + 32);
  v27(v8, v2, v3);
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22 = [v20 presentingViewController];

    if (v22)
    {
      v23 = v29;
      (*(v29 + 16))(v5, v8, v3);
      v24 = (*(v23 + 80) + 16) & ~*(v23 + 80);
      v25 = swift_allocObject();
      v27((v25 + v24), v5, v3);
      aBlock[4] = sub_1006D0598;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008CF048;
      v26 = _Block_copy(aBlock);

      [v22 dismissViewControllerAnimated:1 completion:v26];
      _Block_release(v26);

      (*(v23 + 8))(v8, v3);
      return;
    }

    (*(v29 + 8))(v8, v3);
  }

  else
  {
    (*(v18 + 8))(v8, v3);
  }
}