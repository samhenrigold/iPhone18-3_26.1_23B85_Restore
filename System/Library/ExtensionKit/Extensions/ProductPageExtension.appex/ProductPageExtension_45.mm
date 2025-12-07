uint64_t sub_100517950(double a1, double a2)
{
  v4 = v2;
  v7 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v7 - 8);
  v75 = &v65 - v8;
  v9 = sub_100762E7C();
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  __chkstk_darwin(v11);
  v14 = &v65 - v13;
  result = *&v2[OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_artworkLoader];
  if (!result)
  {
    return result;
  }

  v70 = v12;
  v73 = result;

  v16 = &selRef_initWithTabBarSystemItem_tag_;
  v17 = [v2 traitCollection];
  v18 = sub_1007706EC();

  v19 = &off_100911000;
  if (v18)
  {
    v20 = [v4 window];
    if (v20)
    {
      v21 = v20;
      [v20 frame];
      CGRectGetWidth(v82);
    }
  }

  sub_100762E6C();
  sub_100762E4C();
  v22 = *(v10 + 8);
  v68 = v10 + 8;
  v67 = v22;
  v22(v14, v9);
  v80 = _swiftEmptyArrayStorage;
  v81 = _swiftEmptyArrayStorage;
  v79 = _swiftEmptyArrayStorage;
  v23 = OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_iconViews;
  swift_beginAccess();
  v24 = *&v23[v4];
  if (v24 >> 62)
  {
    if (sub_10077158C())
    {
      goto LABEL_7;
    }
  }

  else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    sub_1005171E4();
    goto LABEL_10;
  }

  sub_10075FD2C();
  v25 = sub_10075FB3C();
LABEL_10:
  v26 = v25;
  swift_endAccess();
  v27 = v26;
  sub_10077019C();
  if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_93:
    sub_10077021C();
  }

  v71 = v27;
  sub_10077025C();
  v77 = v79;
  v78 = v23;
  if (!*(v4 + OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_primaryIcon))
  {
    v29 = _swiftEmptyArrayStorage;
    v74 = _swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  swift_retain_n();
  sub_10077019C();
  if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v74 = v81;
  v28 = v75;
  sub_10076609C();
  v3 = sub_100518EF0(v28);
  sub_100269504(v28);
  if (!v3)
  {
    v29 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v23 = [objc_allocWithZone(AMSUIDynamicImpressionItem) initWithFrame:v3 impressionMetrics:{0.0, 0.0, a1, a2}];
  sub_10077019C();
  if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_110;
  }

  while (1)
  {
    sub_10077025C();

    v29 = v80;
LABEL_19:
    sub_1007660AC();
    sub_10076BFBC();

    sub_10075FD2C();
    sub_10000D7F8();
    sub_100760B8C();

    v23 = v78;
LABEL_20:
    [v4 bounds];
    v30 = [v4 *(v16 + 2192)];
    v31 = sub_1007706EC();

    if (v31)
    {
      v32 = [v4 v19[250]];
      if (v32)
      {
        v33 = v32;
        [v32 frame];
        CGRectGetWidth(v83);
      }
    }

    v16 = v70;
    sub_100762E6C();
    v34 = sub_100762EAC();
    v35 = *(v34 + 16);
    v19 = v73;
    v69 = v34;
    if (v35 >= 2)
    {
      break;
    }

LABEL_76:
    sub_1005188D4(v74, a1, a2);

    *(v4 + OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_amsImpressionItems) = v29;

    v51 = v77;
    if (v77 >> 62)
    {
      v58 = sub_10077158C();
      v51 = v77;
      v52 = v58;
      if (!v58)
      {
        goto LABEL_95;
      }
    }

    else
    {
      v52 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v52)
      {
        goto LABEL_95;
      }
    }

    if (v52 < 1)
    {
      __break(1u);
      goto LABEL_109;
    }

    v53 = 0;
    v3 = v51 & 0xC000000000000001;
    do
    {
      if (v3)
      {
        v56 = sub_10077149C();
      }

      else
      {
        v56 = *(v51 + 8 * v53 + 32);
      }

      v55 = v56;
      v57 = [v56 superview];
      if (v57)
      {
        v54 = v57;

        v55 = v54;
      }

      else
      {
        [v4 addSubview:v55];
      }

      ++v53;

      v51 = v77;
    }

    while (v52 != v53);
LABEL_95:
    v23 = v78;
    v59 = *&v78[v4];
    if (v59 >> 62)
    {
      v64 = sub_10077158C();
      v51 = v77;
      v60 = v64;
      v19 = v73;
      if (!v64)
      {
        goto LABEL_104;
      }
    }

    else
    {
      v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v73;
      if (!v60)
      {
        goto LABEL_104;
      }
    }

    if (v60 >= 1)
    {

      for (i = 0; i != v60; ++i)
      {
        if ((v59 & 0xC000000000000001) != 0)
        {
          v62 = sub_10077149C();
        }

        else
        {
          v62 = *(v59 + 8 * i + 32);
        }

        v63 = v62;
        [v62 removeFromSuperview];
      }

      v51 = v77;
      v23 = v78;
LABEL_104:
      *&v23[v4] = v51;

      [v4 setNeedsLayout];

      return v67(v16, v9);
    }

LABEL_109:
    __break(1u);
LABEL_110:
    sub_10077021C();
  }

  v72 = v29;
  v66 = v9;
  v36 = OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_remainingIcons;
  v27 = v34;

  swift_beginAccess();
  v16 = 0;
  v76 = v35 - 1;
  v9 = v27 + 7;
  while (1)
  {
    v37 = *(v9 - 1);
    v38 = *v9;
    swift_beginAccess();
    v3 = *&v23[v4];
    v23 = (v3 >> 62);
    if (v3 >> 62)
    {
      break;
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

LABEL_52:
    sub_10075FD2C();
    v27 = sub_10075FB3C();
    v23 = v78;
LABEL_53:
    swift_endAccess();
    v3 = v27;
    sub_10077019C();
    if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v27 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_10077021C();
    }

    sub_10077025C();
    v77 = v79;
    v43 = *(v4 + v36);
    if (v43 >> 62)
    {
      if (!sub_10077158C())
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    else if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    v44 = *(v4 + v36);
    if (v44 >> 62)
    {
      v45 = sub_10077158C();
      if (!v45)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v45)
      {
        goto LABEL_88;
      }
    }

    v46 = v16 % v45;
    swift_beginAccess();
    v47 = *(v4 + v36);
    if ((v47 & 0xC000000000000001) != 0)
    {
      v27 = sub_10077149C();
    }

    else
    {
      if (v46 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_90;
      }

      v27 = *(v47 + 8 * v46 + 32);
    }

    swift_endAccess();

    sub_10077019C();
    if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
    v74 = v81;
    v48 = v75;
    sub_10076609C();
    v49 = sub_100518EF0(v48);
    sub_100269504(v48);
    if (v49)
    {
      v50 = [objc_allocWithZone(AMSUIDynamicImpressionItem) initWithFrame:v49 impressionMetrics:{0.0, 0.0, v37, v38}];
      sub_10077019C();
      if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();

      v72 = v80;
      v19 = v73;
    }

    sub_1007660AC();
    sub_10076BFBC();

    sub_10075FD2C();
    sub_10000D7F8();
    sub_100760B8C();

    v23 = v78;
LABEL_26:
    ++v16;
    v9 += 2;
    if (v76 == v16)
    {

      v9 = v66;
      v16 = v70;
      v29 = v72;
      goto LABEL_76;
    }
  }

  if (!sub_10077158C())
  {
    goto LABEL_52;
  }

  result = sub_10077158C();
  if (result)
  {
    result = sub_10077158C();
    if (!result)
    {
      goto LABEL_112;
    }

LABEL_29:
    if ((v3 & 0xC000000000000001) != 0)
    {
      v39 = sub_10077149C();
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v39 = *(v3 + 32);
    }

    v27 = v39;
    if (v23)
    {
      if (!sub_10077158C())
      {
        goto LABEL_91;
      }

      if (sub_10077158C() < 1)
      {
        goto LABEL_92;
      }

      v40 = sub_10077158C();
    }

    else
    {
      v40 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v40)
      {
        goto LABEL_91;
      }
    }

    v41 = v40 - 1;
    if (__OFSUB__(v40, 1))
    {
      goto LABEL_89;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v78[v4] = v3;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v23)
      {
        if (v41 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v23 = v78;
LABEL_47:
          sub_10061B330(0, 1, 0);
          *&v23[v4] = v3;
          goto LABEL_53;
        }

LABEL_44:
        v23 = v78;
LABEL_46:
        v3 = sub_1007714AC();
        *&v23[v4] = v3;
        goto LABEL_47;
      }
    }

    else if (!v23)
    {
      goto LABEL_44;
    }

    sub_10077158C();
    v23 = v78;
    goto LABEL_46;
  }

  __break(1u);
LABEL_112:
  __break(1u);
  return result;
}

double sub_1005185F0(uint64_t a1, __n128 a2, double a3)
{
  v4 = v3;
  v5 = sub_100762E7C();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100762EBC();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v3 bounds];
  v11 = [v3 traitCollection];
  v12 = sub_1007706EC();

  if (v12)
  {
    v13 = [v4 window];
    if (v13)
    {
      v14 = v13;
      [v13 frame];
      CGRectGetWidth(v20);
    }
  }

  sub_100762E6C();
  swift_beginAccess();

  sub_10016E274(v15);

  sub_100762E8C();
  sub_100762E3C();
  v17 = v16;
  (*(v7 + 8))(v10, v6);
  return v17;
}

void sub_1005188D4(unint64_t a1, double a2, double a3)
{
  v5 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_10076F7FC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_impressionsCalculator))
  {
    if (a1 >> 62)
    {
      v12 = sub_10077158C();
      if (!v12)
      {
        return;
      }
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        return;
      }
    }

    if (v12 < 1)
    {
      __break(1u);
    }

    else
    {
      v19 = a1 & 0xC000000000000001;
      v13 = (v9 + 48);
      v17 = (v9 + 32);
      v14 = (v9 + 8);

      for (i = 0; i != v12; ++i)
      {
        if (v19)
        {
          sub_10077149C();
        }

        else
        {
        }

        sub_10076609C();
        if ((*v13)(v7, 1, v8) == 1)
        {

          sub_100269504(v7);
        }

        else
        {
          (*v17)(v11, v7, v8);
          sub_1007660EC();

          (*v14)(v11, v8);
        }
      }
    }
  }
}

void sub_100518CA4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000A5D4(&qword_100948B48, &qword_10078B530);
    v2 = sub_1007715DC();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v10 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v11 = v10 | (v9 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        sub_10000CD08(*(a1 + 56) + 32 * v11, v27);
        *&v26 = v13;
        *(&v26 + 1) = v14;
        v24 = v26;
        v25[0] = v27[0];
        v25[1] = v27[1];
        v15 = v26;
        sub_10000CD64(v25, &v22);

        sub_10000A5D4(&qword_100944F00, qword_1007871E0);
        swift_dynamicCast();
        v16 = v23;
        v17 = sub_100561E0C(v15, *(&v15 + 1));
        if (v18)
        {
          *(v2[6] + 16 * v17) = v15;
          v8 = v17;

          *(v2[7] + 8 * v8) = v16;
          swift_unknownObjectRelease();
          v7 = v9;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
          *(v2[6] + 16 * v17) = v15;
          *(v2[7] + 8 * v17) = v16;
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v9;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v9 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

id sub_100518EF0(uint64_t a1)
{
  v2 = sub_10076F7CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v34 - v7;
  __chkstk_darwin(v9);
  v11 = v34 - v10;
  v12 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v12 - 8);
  v14 = v34 - v13;
  v15 = sub_10076F7FC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100116BF0(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100269504(v14);
    return 0;
  }

  else
  {
    v20 = *(v16 + 32);
    v35 = v15;
    v20(v18, v14, v15);
    sub_10076F7DC();
    v34[1] = sub_10076F7AC();
    v22 = v21;
    v23 = *(v3 + 8);
    v23(v11, v2);
    sub_10076F7DC();
    v34[2] = sub_10076F7BC();
    v23(v8, v2);
    sub_10076F7DC();
    v24 = sub_10076F79C();
    v23(v5, v2);
    if (v22)
    {
      v25 = sub_10076FF6C();
    }

    else
    {
      v25 = 0;
    }

    v26 = objc_allocWithZone(AMSUIDynamicImpressionMetricsIdentifier);
    v27 = sub_10076FF6C();

    v28 = [v26 initWithParent:v25 element:v27 index:v24];

    v29 = sub_10076F7EC();
    sub_100518CA4(v29);

    sub_1000FDA1C(_swiftEmptyArrayStorage);
    v30 = objc_allocWithZone(AMSUIDynamicImpressionMetrics);
    sub_10000A5D4(&qword_100944F00, qword_1007871E0);
    isa = sub_10076FE3C().super.isa;

    v32 = sub_10076FE3C().super.isa;

    v33 = [v30 initWithIdentifier:v28 fields:isa custom:v32];

    (*(v16 + 8))(v18, v35);
    return v33;
  }
}

unint64_t sub_10051930C()
{
  result = qword_10095BA30;
  if (!qword_10095BA30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10095BA30);
  }

  return result;
}

void sub_100519358()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_primaryIcon) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_remainingIcons) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_artworkLoader) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_impressionsCalculator) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_iconViews) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_amsImpressionItems) = _swiftEmptyArrayStorage;
  sub_10077156C();
  __break(1u);
}

char *sub_100519404(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  v11 = sub_10076341C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView;
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_isAnimationEnabled] = 1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator] = 0;
  v13 = &v4[OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock];
  *v13 = 0;
  v13[1] = 0;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setClipsToBounds:1];

  v16 = OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView;
  [*&v14[OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView] setClipsToBounds:1];
  v17 = [v14 contentView];

  [v17 addSubview:*&v14[v16]];
  return v14;
}

void sub_1005196FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000A570(a3, v14);
      sub_10000A5D4(&qword_1009575A0, &unk_100784980);
      sub_10076AC2C();
      if (swift_dynamicCast())
      {
        sub_10076AC1C();

        sub_10076BACC();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10000CFBC(v6, &qword_1009492E0, &qword_1007893A0);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          sub_1007660EC();

          (*(v8 + 8))(v10, v7);
        }
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

uint64_t type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell(uint64_t a1)
{
  result = qword_10095BA70;
  if (!qword_10095BA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100519A64(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100519B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10051A14C(&qword_100950A10, type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell, &unk_1007A9760);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100519BB8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_100519C10(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

double sub_100519CD0()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *&v0[v1] = 0;

  return result;
}

double sub_100519D38(__n128 a1, uint64_t a2, uint64_t a3)
{
  sub_10076AC2C();
  sub_10051A14C(&qword_100953AE8, &type metadata accessor for MediumAdLockupWithScreenshotsBackground, &protocol conformance descriptor for MediumAdLockupWithScreenshotsBackground);
  sub_10076332C();
  if (v6)
  {
    sub_100356C74(v6, a3);
    [v3 setNeedsLayout];
  }

  return result;
}

double sub_100519DFC()
{
  swift_beginAccess();

  return result;
}

double sub_100519E44(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_100519EFC()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1, v1[1]);
  return v2;
}

double sub_100519F58(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6, v7);
}

void (*sub_10051A018(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000A570(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012498(v6, v4 + 32);
  return sub_10051A24C;
}

uint64_t sub_10051A14C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10051A194()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10051A1CC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10051A204()
{

  sub_10000CD74((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

void sub_10051A258()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  v2 = sub_10076341C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView;
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_isAnimationEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator) = 0;
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock);
  *v4 = 0;
  v4[1] = 0;
  sub_10077156C();
  __break(1u);
}

NSString sub_10051A358()
{
  result = sub_10076FF6C();
  static UIActivityType.gift = result;
  return result;
}

uint64_t *UIActivityType.gift.unsafeMutableAddressor()
{
  if (qword_1009407B8 != -1)
  {
    swift_once();
  }

  return &static UIActivityType.gift;
}

id static UIActivityType.gift.getter()
{
  if (qword_1009407B8 != -1)
  {
    swift_once();
  }

  v1 = static UIActivityType.gift;

  return v1;
}

double sub_10051A440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000A570(a1, v9);
  sub_10000A5D4(&unk_100942830, &qword_100782680);
  sub_10076C84C();
  if (swift_dynamicCast())
  {
    v5 = sub_10076C83C();
    if (v5)
    {
      v6 = v5;
      v7 = *(v3 + qword_10099CA08);
      if (v7)
      {
        v9[3] = sub_100762DFC();
        v9[4] = sub_10051B49C(&qword_100943490, &type metadata accessor for TodayCardOverlay, &protocol conformance descriptor for TodayCardOverlay);
        v9[0] = v6;
        v8[3] = swift_getObjectType();
        v8[0] = v7;
        swift_unknownObjectRetain_n();

        sub_10075FA0C();
        swift_unknownObjectRelease();

        sub_10000CD74(v8);
        sub_10000CFBC(v9, &unk_10094F720, &unk_100785540);
        return result;
      }
    }
  }

  return result;
}

char *sub_10051A5BC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10076F9AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = qword_10095BA80;
  type metadata accessor for CondensedAdLockupWithIconBackgroundView();
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  [v16 setClipsToBounds:1];

  v17 = qword_10095BA80;
  [*&v15[qword_10095BA80] setClipsToBounds:1];
  v18 = [v15 contentView];

  [v18 addSubview:*&v15[v17]];
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  sub_10076F95C();
  sub_10000CFBC(v20, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(v21, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  (*(v11 + 8))(v13, v10);
  return v15;
}

id sub_10051A81C()
{
  v1 = *&v0[qword_10095BA80];
  [v0 bounds];

  return [v1 setFrame:?];
}

void sub_10051A870(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_10075FCAC();
}

double sub_10051A908(__n128 a1)
{
  sub_10076A7DC();
  sub_10051B49C(&qword_10094B558, &type metadata accessor for CondensedAdLockupWithIconBackground, &protocol conformance descriptor for CondensedAdLockupWithIconBackground);
  sub_10076332C();
  if (v2)
  {
    sub_10076A7CC();
  }

  return result;
}

double sub_10051A9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  sub_1005D5228(a5);
  sub_10076C7FC();
  sub_100768ACC();
  if (swift_dynamicCastClass())
  {
    v8 = sub_100768ABC();
    sub_1005CAE80(v8, a3, a4);

    sub_1005D5228(v9);
    [v5 setNeedsLayout];
  }

  return result;
}

uint64_t sub_10051AA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_10076C38C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10051A440(a1, a2, a3);
  v14 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10003BDD4(v3 + v14, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10000CFBC(v9, &unk_1009434A0, &unk_100787B90);
  }

  (*(v11 + 32))(v13, v9, v10);
  v16 = sub_1005CC6D4(a1, v13);
  return (*(v11 + 8))(v13, v10, v16);
}

void sub_10051AC68(uint64_t a1, uint64_t a2, char a3)
{
  if (*(v3 + qword_10099CA08))
  {
    v5 = *(v3 + qword_10099CA08 + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 128);
    swift_unknownObjectRetain();
    v7(a1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v8 = *(v3 + qword_10095BA80);
  sub_10075FCAC();
  sub_10075FD2C();
  sub_10051B49C(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_100760BFC();
  v9 = OBJC_IVAR____TtC20ProductPageExtension39CondensedAdLockupWithIconBackgroundView_lockupView;
  v10 = *(*(v8 + OBJC_IVAR____TtC20ProductPageExtension39CondensedAdLockupWithIconBackgroundView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FCAC();

  v11 = *(*(v8 + v9) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_100760BFC();
}

void (*sub_10051ADFC(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000A570(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012498(v6, v4 + 32);
  return sub_10051B490;
}

void sub_10051AEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000A570(a3, v14);
      sub_10000A5D4(&qword_1009575A0, &unk_100784980);
      sub_10076C84C();
      if (swift_dynamicCast())
      {
        sub_10076C7FC();

        sub_100761BDC();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10000CFBC(v6, &qword_1009492E0, &qword_1007893A0);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          sub_1007660EC();

          (*(v8 + 8))(v10, v7);
        }
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

Class sub_10051B158(uint64_t a1)
{
  sub_10000A5D4(&unk_1009434B0, &unk_100785550);
  v2 = swift_allocObject();
  v3 = *(a1 + qword_10095BA80);
  *(v2 + 16) = xmmword_100783DD0;
  v4 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension39CondensedAdLockupWithIconBackgroundView_lockupView);
  *(v2 + 56) = type metadata accessor for TodayCardLockupView();
  *(v2 + 32) = v4;
  v5 = v4;
  v6.super.isa = sub_1007701AC().super.isa;

  return v6.super.isa;
}

void sub_10051B20C(void *a1, uint64_t a2, Class a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_1007701BC();
    v6 = a1;
    a3 = sub_1007701AC().super.isa;
  }

  else
  {
    v7 = a1;
  }

  v8.receiver = a1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "setAccessibilityElements:", a3);
}

uint64_t type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_10095BAB0;
  if (!qword_10095BAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10051B3D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10051B410()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10051B448()
{

  sub_10000CD74((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10051B49C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10051B4E4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v6 - 8);
  v8 = &v55 - v7;
  v9 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v9 - 8);
  v11 = &v55 - v10;
  v12 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v12 - 8);
  v14 = &v55 - v13;
  v15 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v15 - 8);
  v62 = &v55 - v16;
  v17 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v17 - 8);
  v19 = &v55 - v18;
  v20 = sub_10076BF6C();
  __chkstk_darwin(v20 - 8);
  v63 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10075E7CC();
  v23 = sub_10075E7BC();
  if (v23)
  {
    v59 = v14;

    v24 = sub_10076BB5C();
    v60 = a1;
    if (v24)
    {
      v56 = v8;
      v57 = v11;
      v61 = v23;
      if (qword_10093FBE0 != -1)
      {
        swift_once();
      }

      v25 = sub_100763ADC();
      sub_10000A61C(v25, qword_10099DDA0);
      sub_1007639AC();
      v58 = v2;
      v26 = *&v2[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_lockupView];
      v27 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
      [*(v26 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView) contentMode];
      sub_10076BFCC();
      v28 = *(v26 + v27);
      sub_10076BF7C();
      sub_10075FCCC();
      [v28 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_1000325F0();
        sub_100770D5C();
      }

      sub_10075FB8C();

      sub_100760C4C();
      sub_10076F64C();
      sub_10076FC1C();
      v29 = *(v26 + v27);
      sub_10075FD2C();
      sub_10000D7F8();
      v30 = v29;
      sub_100760B8C();

      v11 = v57;
      v3 = v58;
      v23 = v61;
      v8 = v56;
    }

    v31 = *&v3[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_lockupView];
    v32 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
    (*(*(v32 - 8) + 56))(v19, 1, 1, v32);
    v33 = sub_10075F78C();
    v34 = a2;
    v35 = v62;
    (*(*(v33 - 8) + 56))(v62, 1, 1, v33);
    v36 = sub_1007628DC();
    v37 = v59;
    (*(*(v36 - 8) + 56))(v59, 1, 1, v36);
    v38 = sub_10000A5D4(&unk_100946750, qword_100787A30);
    (*(*(v38 - 8) + 56))(v11, 1, 1, v38);
    v39 = sub_10076C54C();
    (*(*(v39 - 8) + 56))(v8, 1, 1, v39);
    sub_1004D0A60(v23, v31, v19, v34, 0, 0, v35, v37, v8, v11);
    sub_10000CFBC(v8, &unk_100949290, &unk_10078BBF0);
    v31[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v31 setNeedsLayout];

    sub_10000CFBC(v11, &qword_10094F730, qword_10078A050);
    sub_10000CFBC(v37, &unk_1009492A0, &unk_10078BC00);
    v40 = v35;
    a2 = v34;
    sub_10000CFBC(v40, &unk_10094D210, &qword_10078DE20);
    sub_10000CFBC(v19, &unk_100946760, &unk_100787A20);
  }

  if (v22)
  {

    if (sub_10076BB5C())
    {
      v61 = v23;
      v62 = a2;
      v41 = *&v3[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_inAppPurchaseView];
      v42 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView;
      [*(v41 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView) contentMode];
      sub_10076BFCC();
      v43 = *(v41 + v42);
      sub_10076BF7C();
      sub_10075FCCC();
      [v43 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_1000325F0();
        sub_100770D5C();
      }

      sub_10075FB8C();

      sub_100760C4C();
      sub_10076F64C();
      sub_10076FC1C();
      v44 = *(v41 + v42);
      sub_10075FD2C();
      sub_10000D7F8();
      v45 = v44;
      sub_100760B8C();
    }

    else
    {
    }

    v47 = *&v3[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_titleLabel];

    sub_10076BB6C();
    v49 = v48;

    if (v49)
    {
      v46 = sub_10076FF6C();
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
    v47 = *&v3[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_titleLabel];
  }

  [v47 setText:v46];

  v50 = *&v3[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_descriptionLabel];
  sub_10075E7AC();
  if (v51)
  {
    v52 = sub_10076FF6C();
  }

  else
  {
    v52 = 0;
  }

  [v50 setText:v52];

  v53 = *&v3[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_messageLabel];
  v64._object = 0x80000001007EC250;
  v64._countAndFlagsBits = 0xD000000000000030;
  v65._countAndFlagsBits = 0;
  v65._object = 0xE000000000000000;
  sub_1007622EC(v64, v65);
  v54 = sub_10076FF6C();

  [v53 setText:v54];

  [v3 setNeedsLayout];
}

double sub_10051BE4C()
{
  v0 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v79 - v1;
  v89 = sub_10077164C();
  v3 = *(v89 - 8);
  __chkstk_darwin(v89);
  v83 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076D39C();
  v87 = *(v5 - 8);
  v88 = v5;
  __chkstk_darwin(v5);
  v86 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076C36C();
  v85 = *(v7 - 8);
  __chkstk_darwin(v7);
  v84 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v79 - v10;
  v12 = sub_10076C38C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v79 - v17;
  sub_100760E0C();
  sub_10051CDFC(&qword_10095BE50, &type metadata accessor for FramedArtwork, &protocol conformance descriptor for FramedMedia);
  sub_10076332C();
  if (!aBlock[0])
  {
    return 0.0;
  }

  v81 = v3;
  v82 = v2;

  v19 = sub_10075FF4C();
  swift_getKeyPath();
  sub_10076338C();

  v20 = (v13 + 8);
  if (v19)
  {
    sub_10076C2FC();
    v22 = v21;
    (*v20)(v18, v12);
  }

  else
  {
    sub_10076C24C();
    v24 = *v20;
    (*v20)(v18, v12);
    v80 = v24;
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C26C();
    v24(v15, v12);
    v25 = v85;
    (*(v85 + 104))(v11, enum case for PageGrid.Direction.vertical(_:), v7);
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C25C();
    v26 = v80;
    v80(v15, v12);
    (*(v25 + 16))(v84, v11, v7);
    sub_1005AC334(0.0);
    sub_10076C33C();
    (*(v25 + 8))(v11, v7);
    sub_10076C2FC();
    v22 = v27;
    v26(v18, v12);
  }

  v28 = sub_100760DFC();
  v29 = v89;
  if (v28)
  {
    sub_10076BEFC();
    v30 = v86;
    sub_10076D3AC();
    sub_10076D36C();
    v32 = v31;
    (*(v87 + 8))(v30, v88);
    v33 = sub_10075FF4C();

    if (v22 >= v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = v22;
    }

    if (v33)
    {
      v34 = v32;
    }

    v23 = v34 + 0.0;
  }

  else
  {
    v23 = 0.0;
  }

  v35 = sub_10075FF6C();
  v36 = [v35 length];

  if (v36 < 1)
  {

    return v23;
  }

  v37 = 0.0;
  sub_100770ACC();
  sub_10075FF7C();
  v38 = &off_10093F000;
  if (v39)
  {
    if (qword_100940F68 != -1)
    {
      swift_once();
    }

    v40 = sub_10076D3DC();
    sub_10000A61C(v40, qword_1009A1C30);
    swift_getKeyPath();
    sub_10076338C();

    v41 = sub_10076C04C();
    v92 = v41;
    v93 = sub_10051CDFC(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v42 = sub_10000DB7C(aBlock);
    (*(*(v41 - 8) + 104))(v42, enum case for Feature.measurement_with_labelplaceholder(_:), v41);
    sub_10076C90C();
    sub_10000CD74(aBlock);
    sub_10076991C();
    swift_unknownObjectRelease();

    v43 = v83;
    if (qword_10093F990 != -1)
    {
      swift_once();
    }

    v44 = sub_10076D9AC();
    sub_10000A61C(v44, qword_10099D738);
    swift_getKeyPath();
    sub_10076338C();

    sub_10076D17C();
    sub_10076D40C();
    v46 = v45;
    swift_unknownObjectRelease();
    v47 = *(v81 + 8);
    v47(v43, v29);
    if (qword_10093F9A0 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v44, qword_10099D768);
    swift_getKeyPath();
    sub_10076338C();

    sub_10076D17C();
    sub_10076D40C();
    v49 = v48;
    swift_unknownObjectRelease();
    v47(v43, v29);
    v50 = v46 + v49;
    if (qword_10093F998 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v44, qword_10099D750);
    swift_getKeyPath();
    sub_10076338C();

    sub_10076D17C();
    sub_10076D40C();
    v52 = v51;
    swift_unknownObjectRelease();
    v47(v43, v29);
    v37 = v50 + v52;
    v38 = &off_10093F000;
  }

  v53 = sub_10075FF6C();

  swift_getKeyPath();
  sub_10076338C();

  v54 = v95;
  v55 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v53];
  v56 = [v53 length];
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  *(v57 + 24) = v54;
  *(v57 + 32) = v55;
  *(v57 + 40) = 1;
  v58 = swift_allocObject();
  v58[2] = sub_1000275EC;
  v58[3] = v57;
  v93 = sub_1000ACB04;
  v94 = v58;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026610;
  v92 = &unk_100898CC0;
  v59 = _Block_copy(aBlock);
  v60 = v54;
  v61 = v55;

  [v53 enumerateAttributesInRange:0 options:v56 usingBlock:{0x100000, v59}];

  _Block_release(v59);
  LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

  if (v53)
  {
    __break(1u);
    goto LABEL_37;
  }

  v62 = qword_100940F60;
  v58 = v61;
  if (v62 != -1)
  {
LABEL_37:
    swift_once();
  }

  v63 = sub_10076D3DC();
  v64 = sub_10000A61C(v63, qword_1009A1C18);
  v65 = *(v63 - 8);
  v66 = v82;
  (*(v65 + 16))(v82, v64, v63);
  (*(v65 + 56))(v66, 0, 1, v63);
  swift_getKeyPath();
  sub_10076338C();

  v67 = sub_10076C04C();
  v92 = v67;
  v93 = sub_10051CDFC(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v68 = sub_10000DB7C(aBlock);
  (*(*(v67 - 8) + 104))(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v67);
  sub_10076C90C();
  sub_10000CD74(aBlock);
  sub_10076990C();
  v70 = v69;

  swift_unknownObjectRelease();
  sub_1000276DC(v66);
  if (qword_10093F990 != -1)
  {
    swift_once();
  }

  v71 = sub_10076D9AC();
  sub_10000A61C(v71, qword_10099D738);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076D42C();
  v73 = v72;
  swift_unknownObjectRelease();
  v74 = v70 + v73;
  if (v38[307] != -1)
  {
    swift_once();
  }

  sub_10000A61C(v71, qword_10099D750);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076D3FC();
  v76 = v75;
  swift_unknownObjectRelease();

  v77 = v74 + v76;
  if (v37 > v74 + v76)
  {
    v77 = v37;
  }

  return v23 + v77;
}

uint64_t sub_10051CD88()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_10051CDE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10051CDFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10051CE64(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_10076D1AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076D9AC();
  sub_10000DB18(v8, a3);
  sub_10000A61C(v8, a3);
  if (qword_100940F28 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_1009A1B70);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v14);
  (*(v5 + 16))(v11, v7, v4);
  sub_10076D9BC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10051D040()
{
  v0 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
  sub_10000DB18(v0, qword_10095BE90);
  sub_10000A61C(v0, qword_10095BE90);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

void sub_10051D0DC(void *a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_accessoryView;
  v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_accessoryView];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_accessoryView] = a1;
  v3 = a1;
  [v6 removeFromSuperview];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    [v1 addSubview:v5];
    [v1 setNeedsLayout];
  }
}

char *sub_10051D184(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10076F9AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076771C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v18 - 8);
  v20 = &v33 - v19;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_accessoryView] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_sizeCategory] = 7;
  if (qword_100940F28 != -1)
  {
    swift_once();
  }

  v21 = sub_10076D3DC();
  v22 = sub_10000A61C(v21, qword_1009A1B70);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v20, v22, v21);
  (*(v23 + 56))(v20, 0, 1, v21);
  (*(v15 + 104))(v17, enum case for DirectionalTextAlignment.none(_:), v14);
  v24 = objc_allocWithZone(sub_1007626BC());
  v25 = sub_1007626AC();
  v26 = OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_label;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_label] = v25;
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v27 = v25;
  sub_10076F95C();
  sub_1000258C0(v36);
  sub_1000258C0(v37);
  sub_100770B9C();

  (*(v11 + 8))(v13, v10);
  v28 = *&v5[v26];
  sub_1000325F0();
  v29 = v28;
  v30 = sub_100770D1C();
  [v29 setTextColor:v30];

  type metadata accessor for Accessory(0);
  swift_storeEnumTagMultiPayload();
  v35.receiver = v5;
  v35.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  [v31 addSubview:*&v31[OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_label]];
  return v31;
}

double sub_10051D624(double a1)
{
  swift_getObjectType();
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076422C();
  v11 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_accessoryView);
  if (v11)
  {
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    [v11 sizeThatFits:{v9, v10}];
    v10 = v15;
    v9 = v14;
    v8 = v13;
    v17 = v16;
    v7 = v12;
  }

  else
  {
    v17 = 0.0;
  }

  Width = CGRectGetWidth(*&v7);
  v19 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_label);
  [v19 sizeThatFits:{Width + -16.0 - v17, 1.79769313e308}];
  if (qword_1009407C0 != -1)
  {
    swift_once();
  }

  v20 = sub_10076D9AC();
  sub_10000A61C(v20, qword_10095BE60);
  sub_10076D17C();
  sub_10076D40C();
  v21 = *(v4 + 8);
  v21(v6, v3);
  [v19 firstBaselineFromTop];
  if (qword_1009407C8 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v20, qword_10095BE78);
  sub_10076D17C();
  sub_10076D40C();
  v21(v6, v3);
  [v19 lastBaselineFromBottom];
  return a1;
}

id sub_10051D91C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32.receiver = v1;
  v32.super_class = ObjectType;
  objc_msgSendSuper2(&v32, "layoutSubviews", v5);
  sub_10076422C();
  v11 = v10;
  v13 = v12;
  v14 = v8;
  v15 = v9;
  v16 = OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_accessoryView;
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_accessoryView];
  if (v17)
  {
    [v17 sizeThatFits:{v8, v9}];
    v19 = v18;
    v21 = v20;
  }

  else
  {
    v19 = 0.0;
    v21 = 0.0;
  }

  v33.origin.x = v11;
  v33.origin.y = v13;
  v33.size.width = v14;
  v33.size.height = v15;
  v22 = CGRectGetMaxX(v33) - v19;
  v34.origin.x = v11;
  v34.origin.y = v13;
  v34.size.width = v14;
  v34.size.height = v15;
  v35.origin.y = CGRectGetMidY(v34) + v21 * -0.5;
  v35.origin.x = v22;
  v31 = v19;
  v35.size.width = v19;
  v35.size.height = v21;
  CGRectIntegral(v35);
  v23 = *&v1[v16];
  if (v23)
  {
    v24 = v23;
    sub_100770A4C();
    [v24 setFrame:?];
  }

  v36.origin.x = v11;
  v36.origin.y = v13;
  v36.size.width = v14;
  v36.size.height = v15;
  v25 = CGRectGetWidth(v36) + -16.0 - v31;
  v37.origin.x = v11;
  v37.origin.y = v13;
  v37.size.width = v14;
  v37.size.height = v15;
  Height = CGRectGetHeight(v37);
  v27 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_label];
  [v27 sizeThatFits:{v25, Height}];
  if (qword_1009407C0 != -1)
  {
    swift_once();
  }

  v28 = sub_10076D9AC();
  sub_10000A61C(v28, qword_10095BE60);
  sub_10076D17C();
  sub_10076D40C();
  (*(v4 + 8))(v7, v3);
  [v27 firstBaselineFromTop];
  v38.origin.x = v11;
  v38.origin.y = v13;
  v38.size.width = v14;
  v38.size.height = v15;
  CGRectGetMinX(v38);
  v39.origin.x = v11;
  v39.origin.y = v13;
  v39.size.width = v14;
  v39.size.height = v15;
  CGRectGetMinY(v39);
  sub_100770A4C();
  return [v27 setFrame:?];
}

id sub_10051DCB8(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_1009407D0 != -1)
    {
      swift_once();
    }

    v6 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
    sub_10000A61C(v6, qword_10095BE90);
    v7 = v1;
    sub_10075FDCC();

    return sub_100770E7C();
  }

  return result;
}

uint64_t type metadata accessor for TodayCardActionOverlayView(uint64_t a1)
{
  result = qword_10095BEE8;
  if (!qword_10095BEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10051DF08(uint64_t a1)
{
  result = type metadata accessor for Accessory(319);
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

unint64_t sub_10051DFEC()
{
  result = qword_10095BEF8;
  if (!qword_10095BEF8)
  {
    sub_100766CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095BEF8);
  }

  return result;
}

void sub_10051E044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v8 = a5;
  v5[OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_sizeCategory] = a5;
  [v5 setNeedsLayout];
  sub_100527CDC(a2);
  sub_10051D0DC(v9);
  v10 = sub_10076C7BC();
  [v6 setBackgroundColor:v10];

  v11 = [v6 traitCollection];
  if (v8 != 4)
  {
    sub_10076C31C();
    sub_10076C31C();
  }

  [v11 layoutDirection];
  sub_1007708DC();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v6 setLayoutMargins:{v13, v15, v17, 15.0}];
  v18 = *&v6[OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_label];
  sub_100766CEC();
  sub_10076B8EC();
  v20 = v19;

  if (v20)
  {
    v21 = sub_10076FF6C();
  }

  else
  {
    v21 = 0;
  }

  [v18 setText:v21];
}

uint64_t sub_10051E220()
{
  v0 = sub_10076FBAC();
  sub_10000DB18(v0, qword_1009A0660);
  sub_10000A61C(v0, qword_1009A0660);
  return sub_10076FB9C();
}

uint64_t sub_10051E28C()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v4 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v4, v0);
  qword_10095BFC0 = sub_10076FD4C();
  unk_10095BFC8 = &protocol witness table for OSLogger;
  sub_10000DB7C(qword_10095BFA8);
  return sub_10076FD3C();
}

uint64_t sub_10051E3D0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_10000A5D4(&qword_100956EF8, &unk_1007A2A38);
  v3 = sub_10076FCEC();
  v4 = [objc_opt_self() authorizationStatusForEntityType:0];
  if ((v4 - 1) < 2)
  {
    goto LABEL_6;
  }

  if ((v4 - 3) < 2)
  {
    LOBYTE(v9[0]) = 1;
LABEL_7:
    sub_10076FCBC();
    return v3;
  }

  if (v4)
  {
LABEL_6:
    LOBYTE(v9[0]) = 0;
    goto LABEL_7;
  }

  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension17EventStoreManager_eventStore);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = ObjectType;
  v9[4] = sub_10051E810;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1005F04D8;
  v9[3] = &unk_100898DA8;
  v7 = _Block_copy(v9);

  [v5 requestWriteOnlyAccessToEventsWithCompletion:v7];
  _Block_release(v7);
  return v3;
}

uint64_t sub_10051E53C(char a1, uint64_t a2)
{
  if (!a2)
  {
    return sub_10076FCBC();
  }

  swift_errorRetain();
  if (qword_1009407E0 != -1)
  {
    swift_once();
  }

  sub_10000CF78(qword_10095BFA8, qword_10095BFC0);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  swift_getErrorValue();
  v5[3] = v4;
  v2 = sub_10000DB7C(v5);
  (*(*(v4 - 8) + 16))(v2);
  sub_10076F32C();
  sub_1000258C0(v5);
  sub_10076FBCC();

  sub_10076FCAC();
}

uint64_t sub_10051E7D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_10051E818(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10051E830(char a1)
{
  v2 = sub_10000A5D4(&qword_100942900, &unk_10078A660);
  __chkstk_darwin(v2 - 8);
  v58 = &v45 - v3;
  v56 = sub_10076C2DC();
  v4 = *(v56 - 8);
  __chkstk_darwin(v56);
  v6 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  __chkstk_darwin(v7 - 8);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49.i64[0] = &v45 - v10;
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  __chkstk_darwin(v14);
  v61 = &v45 - v15;
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  __chkstk_darwin(v19);
  sub_10000A5D4(&qword_100942910, &unk_10078A670);
  v20 = *(sub_10076C20C() - 8);
  v57 = *(v20 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v50 = v22;
  *(v22 + 16) = xmmword_1007844F0;
  v54 = v22 + v21;
  if (a1)
  {
    v23 = 1.5;
  }

  else
  {
    v23 = 2.0;
  }

  v63 = *&v23;
  sub_10001E290();
  sub_10076C29C();
  v62 = 0x4030000000000000;
  v63 = 0x4020000000000000;
  sub_10076C27C();
  v63 = 0x4034000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v60 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v29 = *(v4 + 104);
  v59 = v4 + 104;
  v55 = v29;
  v30 = v56;
  (v29)(v6);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v63) = 0;
  sub_10076C29C();
  v63 = 0;
  v45 = v13;
  sub_10076C29C();
  v53 = v18;
  sub_10076C1CC();
  v63 = *&v23;
  sub_10076C29C();
  v62 = 0x4034000000000000;
  v63 = 0x4024000000000000;
  sub_10076C27C();
  v63 = 0x4034000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  v33 = v60;
  v34 = v55;
  v55(v6, v60, v30);
  LOBYTE(v63) = 0;
  sub_10076C29C();
  v63 = 0;
  sub_10076C29C();
  v35 = v57;
  top = UIEdgeInsetsZero.top;
  v48 = left;
  sub_10076C1CC();
  v46 = 2 * v35;
  v63 = 0x4008000000000000;
  sub_10076C29C();
  v63 = 0x4034000000000000;
  sub_10076C29C();
  v63 = 0x4034000000000000;
  sub_10076C29C();
  v49 = vdupq_n_s64(0x4041000000000000uLL);
  v51 = v6;
  *v6 = v49;
  v36 = v56;
  v34(v6, v33, v56);
  LOBYTE(v63) = 0;
  sub_10076C29C();
  v63 = 0;
  sub_10076C29C();
  v37 = v46;
  v38 = v51;
  sub_10076C1CC();
  v39 = v57;
  v46 = v37 + v57;
  v63 = 0x4010000000000000;
  sub_10076C29C();
  v63 = 0x4034000000000000;
  sub_10076C29C();
  v63 = 0x4034000000000000;
  sub_10076C29C();
  *v38 = v49;
  v40 = v36;
  v41 = v55;
  v55(v38, v60, v40);
  sub_1007704BC();
  LOBYTE(v63) = 0;
  sub_10076C29C();
  v63 = 0;
  sub_10076C29C();
  v42 = v51;
  sub_10076C1CC();
  v46 = 4 * v39;
  v63 = 0x4014000000000000;
  sub_10076C29C();
  v63 = 0x4038000000000000;
  sub_10076C29C();
  v63 = 0x4034000000000000;
  sub_10076C29C();
  v49 = vdupq_n_s64(0x404A000000000000uLL);
  *v42 = v49;
  v43 = v56;
  v41(v42, v60, v56);
  LOBYTE(v63) = 0;
  sub_10076C29C();
  v63 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v63 = 0x4018000000000000;
  sub_10076C29C();
  v63 = 0x4038000000000000;
  sub_10076C29C();
  v63 = 0x4034000000000000;
  sub_10076C29C();
  *v42 = v49;
  v55(v42, v60, v43);
  LOBYTE(v63) = 0;
  sub_10076C29C();
  v63 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  return v50;
}

uint64_t sub_10051F26C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + qword_10095C000);
  v4 = *(v1 + qword_10095C008);
  v5 = type metadata accessor for TopChartsSegmentPageGridProvider();
  v6 = swift_allocObject();
  sub_100760F1C();
  swift_allocObject();
  *(v6 + 24) = sub_100760F0C();
  *(v6 + 16) = v3;
  *(v6 + 17) = v4;
  a1[3] = v5;
  result = sub_10051F7D8(&qword_10095C5B8, type metadata accessor for TopChartsSegmentPageGridProvider, &unk_1007ACB24);
  a1[4] = result;
  *a1 = v6;
  return result;
}

unint64_t sub_10051F338@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  a1[3] = &type metadata for TopChartSegmentPageShelfLayoutSpacingProvider;
  result = sub_10051F784();
  a1[4] = result;
  *a1 = sub_10051F764;
  a1[1] = v2;
  return result;
}

void *sub_10051F3AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TopChartSegmentShelfSupplementaryProvider();
  v3 = swift_allocObject();
  v3[2] = v1;
  v3[3] = sub_10051F820;
  v3[4] = v2;
  sub_10051F7D8(&qword_10095C5A8, type metadata accessor for TopChartSegmentShelfSupplementaryProvider, &unk_10078CCDC);

  return v3;
}

uint64_t sub_10051F47C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong[qword_10095C000];

  return v2;
}

double sub_10051F4E0(char a1, char a2)
{
  swift_getObjectType();
  v5 = qword_10095C000;
  *(v2 + qword_10095C000) = a1 & 1;
  *(v2 + qword_10095C008) = a2 & 1;
  sub_10051F7D8(&qword_10095C598, type metadata accessor for TopChartDiffableSegmentViewController, &unk_100799ED0);
  sub_10076A64C();
  sub_10000A5D4(&unk_100950690, &qword_1007916B8);
  type metadata accessor for TopChartsSegmentPageGridProvider();
  if (swift_dynamicCast())
  {
    *(v7 + 16) = *(v2 + v5);
    *(v7 + 17) = a2 & 1;
    sub_10051F7D8(&qword_10095C5A0, type metadata accessor for TopChartsSegmentPageGridProvider, &unk_1007ACAE4);
    sub_1007620CC();
  }

  return result;
}

uint64_t type metadata accessor for TopChartDiffableSegmentViewController(uint64_t a1)
{
  result = qword_10095C038;
  if (!qword_10095C038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10051F6D8()
{
  result = qword_10095C590;
  if (!qword_10095C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095C590);
  }

  return result;
}

uint64_t sub_10051F72C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10051F784()
{
  result = qword_10095C5B0;
  if (!qword_10095C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095C5B0);
  }

  return result;
}

uint64_t sub_10051F7D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10051F824(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v45 = a2;
  v4 = sub_1007679DC();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007688CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  v63 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_71;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v59 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
  v60 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
  v57 = enum case for MetadataRibbonItemViewType.starRating(_:);
  v58 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
  v55 = enum case for MetadataRibbonItemViewType.divider(_:);
  v56 = enum case for MetadataRibbonItemViewType.textLabel(_:);
  v62 = a1 & 0xC000000000000001;
  v54 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
  v52 = a1;
  if (v13)
  {
    v53 = v9;
    v9 = v13;
    v14 = 0;
    v61 = a1 & 0xFFFFFFFFFFFFFF8;
    v15 = (v7 + 11);
    v51 = v7++;
    while (1)
    {
      if (v62)
      {
        sub_10077149C();
        v16 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
LABEL_32:
          __break(1u);
LABEL_33:
          v24 = v63;
          v13 = v9;
          v9 = v53;
          v7 = v51;
          goto LABEL_35;
        }
      }

      else
      {
        if (v14 >= *(v61 + 16))
        {
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          v13 = sub_10077158C();
          goto LABEL_3;
        }

        v16 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
          goto LABEL_32;
        }
      }

      sub_10076432C();
      v17 = (*v15)(v12, v6);
      if (v17 == v60 || v17 == v59 || v17 == v58 || v17 == v57 || v17 == v56 || v17 == v55 || v17 == v54)
      {
        sub_1007714CC();
        sub_1007714FC();
        a1 = v52;
        sub_10077150C();
        sub_1007714DC();
      }

      else
      {

        (*v7)(v12, v6);
      }

      ++v14;
      if (v16 == v9)
      {
        goto LABEL_33;
      }
    }
  }

  v61 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = _swiftEmptyArrayStorage;
LABEL_35:
  v25 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemModels;
  v26 = v49;
  swift_beginAccess();
  *&v26[v25] = v24;

  if (v13)
  {
    v53 = v13;
    v27 = 0;
    v28 = (v7 + 11);
    ++v7;
    v29 = _swiftEmptyArrayStorage;
    do
    {
      v51 = v29;
      v12 = v27;
      while (1)
      {
        if (v62)
        {
          sub_10077149C();
          v27 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v12 >= *(v61 + 16))
          {
            goto LABEL_70;
          }

          v27 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_69;
          }
        }

        sub_10076432C();
        v30 = (*v28)(v9, v6);
        if (v30 == v60)
        {
          type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView(0);
          v31 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView;
          v32 = &unk_1007A3058;
          v33 = &unk_1009428B8;
          goto LABEL_60;
        }

        if (v30 == v59)
        {
          type metadata accessor for MetadataRibbonEditorsChoiceView(0);
          v31 = type metadata accessor for MetadataRibbonEditorsChoiceView;
          v32 = &unk_1007B3278;
          v33 = &unk_1009428B0;
          goto LABEL_60;
        }

        if (v30 == v58)
        {
          type metadata accessor for MetadataRibbonIconWithLabelView(0);
          v31 = type metadata accessor for MetadataRibbonIconWithLabelView;
          v32 = &unk_1007993A8;
          v33 = &unk_1009428A8;
          goto LABEL_60;
        }

        if (v30 == v57)
        {
          type metadata accessor for MetadataRibbonStarRatingView(0);
          v31 = type metadata accessor for MetadataRibbonStarRatingView;
          v32 = &unk_1007B1478;
          v33 = &unk_1009428C0;
          goto LABEL_60;
        }

        if (v30 == v56)
        {
          type metadata accessor for MetadataRibbonTagView(0);
          v31 = type metadata accessor for MetadataRibbonTagView;
          v32 = &unk_100795240;
          v33 = &unk_100942898;
          goto LABEL_60;
        }

        if (v30 == v55)
        {
          type metadata accessor for MetadataRibbonBarView(0);
          v31 = type metadata accessor for MetadataRibbonBarView;
          v32 = &unk_100791880;
          v33 = &unk_1009428A0;
          goto LABEL_60;
        }

        if (v30 == v54)
        {
          break;
        }

        (*v7)(v9, v6);
        ++v12;
        if (v27 == v53)
        {
          v29 = v51;
          goto LABEL_67;
        }
      }

      type metadata accessor for MetadataRibbonHighlightedTextView(0);
      v31 = type metadata accessor for MetadataRibbonHighlightedTextView;
      v32 = &unk_100785290;
      v33 = &unk_100942888;
LABEL_60:
      v34 = sub_100521F9C(v33, v31, v32);
      v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      sub_10076697C();
      sub_10076434C();
      sub_10076695C();

      v29 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_10049D090(0, v29[2] + 1, 1, v29);
      }

      v37 = v29[2];
      v36 = v29[3];
      if (v37 >= v36 >> 1)
      {
        v29 = sub_10049D090((v36 > 1), v37 + 1, 1, v29);
      }

      v29[2] = (v37 + 1);
      v38 = &v29[2 * v37];
      v38[4] = v35;
      v38[5] = v34;
      a1 = v52;
    }

    while (v27 != v53);
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
  }

LABEL_67:
  v39 = v49;
  sub_10052032C(v29);
  v41 = v47;
  v40 = v48;
  v42 = v46;
  (*(v47 + 16))(v46, v45, v48);
  v43 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v41 + 24))(&v39[v43], v42, v40);
  swift_endAccess();
  [v39 setNeedsLayout];
  (*(v41 + 8))(v42, v40);
  return [v39 setNeedsLayout];
}

id sub_1005201B0()
{
  v1 = v0;
  v2 = sub_1007679DC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v6], v2);

  sub_1007679BC();
  (*(v3 + 8))(v5, v2);
  result = sub_100236B78();
  v11 = (v10 >> 1) - v9;
  if (v10 >> 1 == v9)
  {
    goto LABEL_5;
  }

  if ((v10 >> 1) > v9)
  {
    v12 = (v8 + 16 * v9);
    do
    {
      v13 = *v12;
      v12 += 2;
      [v1 addSubview:v13];
      --v11;
    }

    while (v11);
LABEL_5:
    swift_unknownObjectRelease();
    return [v1 setNeedsLayout];
  }

  __break(1u);
  return result;
}

id sub_10052032C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemViews;
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemViews);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = 32;
    do
    {
      [*(v4 + v6) removeFromSuperview];
      v6 += 16;
      --v5;
    }

    while (v5);
  }

  *(v1 + v3) = a1;

  return sub_1005201B0();
}

uint64_t MetadataRibbonView.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metrics;
  swift_beginAccess();
  v4 = sub_1007679DC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100520450@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metrics;
  swift_beginAccess();
  v5 = sub_1007679DC();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1005204DC(uint64_t a1, char **a2)
{
  v4 = sub_1007679DC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v5 + 24))(&v9[v10], v8, v4);
  swift_endAccess();
  [v9 setNeedsLayout];
  return (*(v5 + 8))(v8, v4);
}

double MetadataRibbonView.metadataRibbonItemModels.getter()
{
  swift_beginAccess();

  return result;
}

Swift::Void __swiftcall MetadataRibbonView.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v33 = sub_10076D1FC();
  v32 = *(v33 - 8);
  __chkstk_darwin(v33);
  v30 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1007679DC();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1007679EC();
  v28 = *(v29 - 8);
  *&v5 = __chkstk_darwin(v29).n128_u64[0];
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46.receiver = v1;
  v46.super_class = ObjectType;
  v31 = ObjectType;
  objc_msgSendSuper2(&v46, "layoutSubviews", v5);
  v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemViews];
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    v11 = v7 + 40;
    while (v9 < *(v7 + 16))
    {
      v12 = *(v11 - 8);
      swift_getObjectType();
      v13 = v12;
      sub_10076690C();
      v36 = v42;
      v37 = v43;
      v38 = v44;
      v39 = v45;
      v34 = v40;
      v35 = v41;

      if (*(&v35 + 1))
      {
        v42 = v36;
        v43 = v37;
        v44 = v38;
        v45 = v39;
        v40 = v34;
        v41 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_10049CD80(0, v10[2] + 1, 1, v10);
        }

        v15 = v10[2];
        v14 = v10[3];
        if (v15 >= v14 >> 1)
        {
          v10 = sub_10049CD80((v14 > 1), v15 + 1, 1, v10);
        }

        v10[2] = v15 + 1;
        v16 = &v10[11 * v15];
        v17 = v41;
        *(v16 + 2) = v40;
        *(v16 + 3) = v17;
        v18 = v42;
        v19 = v43;
        v20 = v44;
        *(v16 + 56) = v45;
        *(v16 + 5) = v19;
        *(v16 + 6) = v20;
        *(v16 + 4) = v18;
      }

      else
      {
        sub_10000CFBC(&v34, &qword_10095C5C8, &qword_1007A9B70);
      }

      ++v9;
      v11 += 16;
      if (v8 == v9)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v21 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metrics;
    swift_beginAccess();
    (*(v25 + 16))(v24, &v1[v21], v27);
    v22 = v26;
    sub_10076798C();
    sub_10076422C();
    v23 = v30;
    sub_1007679AC();
    (*(v32 + 8))(v23, v33);
    (*(v28 + 8))(v22, v29);
  }
}

void MetadataRibbonView.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v30 = a1;
  v28 = sub_1007679DC();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1007679EC();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v23 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v3;
  v6 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemViews);
  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = 0;
    v9 = _swiftEmptyArrayStorage;
    v10 = v6 + 40;
    while (v8 < *(v6 + 16))
    {
      v11 = *(v10 - 8);
      swift_getObjectType();
      v12 = v11;
      sub_10076690C();
      v33 = v39;
      v34 = v40;
      v35 = v41;
      v36 = v42;
      v31 = v37;
      v32 = v38;

      if (*(&v32 + 1))
      {
        v39 = v33;
        v40 = v34;
        v41 = v35;
        v42 = v36;
        v37 = v31;
        v38 = v32;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10049CD80(0, v9[2] + 1, 1, v9);
        }

        v14 = v9[2];
        v13 = v9[3];
        if (v14 >= v13 >> 1)
        {
          v9 = sub_10049CD80((v13 > 1), v14 + 1, 1, v9);
        }

        v9[2] = v14 + 1;
        v15 = &v9[11 * v14];
        v16 = v38;
        *(v15 + 2) = v37;
        *(v15 + 3) = v16;
        v17 = v39;
        v18 = v40;
        v19 = v41;
        *(v15 + 56) = v42;
        *(v15 + 5) = v18;
        *(v15 + 6) = v19;
        *(v15 + 4) = v17;
      }

      else
      {
        sub_10000CFBC(&v31, &qword_10095C5C8, &qword_1007A9B70);
      }

      ++v8;
      v10 += 16;
      if (v7 == v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v20 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metrics;
    v21 = v29;
    swift_beginAccess();
    (*(v26 + 16))(v24, v21 + v20, v28);
    v22 = v23;
    sub_10076798C();
    sub_10076799C();
    (*(v25 + 8))(v22, v27);
  }
}

uint64_t MetadataRibbonView.hasContent.getter()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v2 = *(v0 + v1);

  v3 = sub_1000E99EC(0, v2);

  return v3 & 1;
}

uint64_t MetadataRibbonView.isInsideSearchAd.getter()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_isInsideSearchAd;
  swift_beginAccess();
  return *(v0 + v1);
}

void MetadataRibbonView.isInsideSearchAd.setter(char a1)
{
  v3 = sub_1007679DC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_isInsideSearchAd;
  swift_beginAccess();
  v1[v7] = a1;
  if (a1)
  {
    _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
    v8 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metrics;
    swift_beginAccess();
    (*(v4 + 24))(&v1[v8], v6, v3);
    swift_endAccess();
    [v1 setNeedsLayout];
    (*(v4 + 8))(v6, v3);
  }
}

void (*MetadataRibbonView.isInsideSearchAd.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = sub_1007679DC();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v8 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_isInsideSearchAd;
  v4[9] = v7;
  v4[10] = v8;
  swift_beginAccess();
  return sub_100521360;
}

void sub_100521360(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 48);
    if (v4[*(v3 + 80)] == 1)
    {
      v6 = *(v3 + 64);
      v5 = *(v3 + 72);
      v7 = *(v3 + 56);
      _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
      v8 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metrics;
      swift_beginAccess();
      (*(v6 + 24))(&v4[v8], v5, v7);
      swift_endAccess();
      [v4 setNeedsLayout];
      (*(v6 + 8))(v5, v7);
    }
  }

  free(*(v3 + 72));

  free(v3);
}

uint64_t type metadata accessor for MetadataRibbonView(uint64_t a1)
{
  result = qword_10095C5F8;
  if (!qword_10095C5F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100521534(uint64_t a1)
{
  result = sub_1007679DC();
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

void sub_1005215E8(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v20 = sub_10076BEDC();
  v3 = *(v20 - 8);
  __chkstk_darwin(v20);
  v19 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6)
  {
    v7 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemViews);
    v8 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 >> 62)
    {
      goto LABEL_24;
    }

    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v9)
    {
      v10 = 0;
      v22 = v9;
      v23 = v6 & 0xC000000000000001;
      v16 = v3 + 1;
      v17 = v6;
      v11 = 32;
      v18 = v7;
      do
      {
        if (v23)
        {
          sub_10077149C();
        }

        else
        {
          if (v10 >= *(v8 + 16))
          {
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            v9 = sub_10077158C();
            goto LABEL_4;
          }
        }

        v12 = *(v7 + 16);
        if (v10 == v12)
        {

          break;
        }

        if (v10 >= v12)
        {
          goto LABEL_23;
        }

        v3 = *(v7 + v11);
        type metadata accessor for MetadataRibbonIconWithLabelView(0);
        if (swift_dynamicCastClass())
        {
          v13 = v3;
          v14 = sub_10076436C();
          if (v14)
          {
            v3 = v14;
            v15 = v19;
            sub_10076BEEC();
            sub_10076BE9C();
            (*v16)(v15, v20);
            sub_10076BFCC();
            sub_100760C4C();
            sub_10075FD2C();
            sub_100760BCC();
            swift_allocObject();
            swift_unknownObjectWeakInit();

            sub_100760B7C();

            sub_10000CFBC(v24, &qword_100943310, &unk_100784150);
            v6 = v17;
            v7 = v18;
          }

          else
          {
          }

          v9 = v22;
        }

        else
        {
        }

        ++v10;
        v11 += 16;
      }

      while (v9 != v10);
    }
  }
}

uint64_t sub_100521944()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100521984(unint64_t a1, uint64_t a2)
{
  v34 = a2;
  v33 = sub_10076BEDC();
  v36 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10076D39C();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10076AA4C();
  v6 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007688CC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  result = _swiftEmptyArrayStorage;
  if (!a1)
  {
    return result;
  }

  v42 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    result = sub_10077158C();
    if (result)
    {
      goto LABEL_4;
    }

    return _swiftEmptyArrayStorage;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_4:
  if (result >= 1)
  {
    v16 = 0;
    v39 = a1 & 0xC000000000000001;
    v38 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
    v37 = (v9 + 104);
    v17 = (v9 + 8);
    v27 = (v4 + 8);
    v26 = (v6 + 8);
    v25 = (v36 + 8);
    v35 = _swiftEmptyArrayStorage;
    v36 = a1;
    v40 = result;
    while (1)
    {
      if (v39)
      {
        sub_10077149C();
      }

      else
      {
      }

      sub_10076432C();
      (*v37)(v11, v38, v8);
      sub_100521F9C(&qword_10095C608, &type metadata accessor for MetadataRibbonItemViewType, &protocol conformance descriptor for MetadataRibbonItemViewType);
      sub_10077018C();
      sub_10077018C();
      if (v41[0] == v41[5] && v41[1] == v41[6])
      {
        v18 = *v17;
        (*v17)(v11, v8);
        v18(v14, v8);
      }

      else
      {
        v19 = sub_10077167C();
        v20 = *v17;
        (*v17)(v11, v8);
        v20(v14, v8);

        if ((v19 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      if (sub_10076436C())
      {
        v21 = v28;
        sub_10076AA2C();
        sub_10076AA1C();
        sub_10000CF78(v41, v41[3]);
        sub_10076D41C();
        sub_10000CD74(v41);
        sub_10076BEFC();
        v22 = v30;
        sub_10076D3AC();
        sub_10076D35C();
        (*v27)(v22, v31);
        (*v26)(v21, v29);
        v23 = v32;
        sub_10076BEEC();
        sub_10076BE9C();
        (*v25)(v23, v33);
        sub_10076BFCC();
        sub_10077019C();
        if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();

        v35 = v42;
        goto LABEL_7;
      }

LABEL_6:

LABEL_7:
      if (v40 == ++v16)
      {
        return v35;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100521F9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100521FE4(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, id a6, double a7, double a8)
{
  v11 = [a6 traitCollection];
  if (sub_1007706FC())
  {
    sub_10077071C();
  }

  v12 = sub_1000BF38C(a6, a7, a8);

  return v12;
}

uint64_t sub_100522118(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100522160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *&v3[OBJC_IVAR____TtC20ProductPageExtension34ProductTapToRateCollectionViewCell_separatorView];
  v8 = [v3 traitCollection];
  v9 = sub_1007706FC();

  if (v9)
  {
    v10 = [v4 traitCollection];
    v11 = sub_10077071C();

    v12 = v11 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  [v7 setHidden:v12 & 1];
  sub_1000BED74(a1, 0, a3);

  return [v4 setNeedsLayout];
}

double sub_10052225C()
{
  v1 = v0;
  v2 = sub_10076747C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076749C();
  v71 = *(v6 - 8);
  v72 = v6;
  __chkstk_darwin(v6);
  v70 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v2, qword_1009A0690);
  (*(v3 + 16))(v5, v8, v2);
  v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
  type metadata accessor for BaseLockupView();
  sub_10076422C();
  v10 = &v9[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
  if (v9[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v11 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000A570(&v9[v11], v120);
    sub_10000CF78(v120, v121);
    sub_100767A2C();
    v13 = v12;
    v15 = v14;
    sub_10000CD74(v120);
    *v10 = v13;
    *(v10 + 1) = v15;
    v10[16] = 0;
  }

  sub_10076746C();
  v16 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  v17 = sub_10075FD2C();
  v122 = &protocol witness table for UIView;
  v121 = v17;
  v67 = v16;
  v120[0] = v16;
  v18 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel);
  v66 = v18;
  if (v18)
  {
    v19 = sub_1007626BC();
    v20 = &protocol witness table for UILabel;
    v21 = v18;
  }

  else
  {
    v21 = 0;
    v19 = 0;
    v20 = 0;
    v116 = 0;
    v117 = 0;
  }

  v115 = v21;
  v118 = v19;
  v119 = v20;
  v22 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
  v23 = sub_1007626BC();
  v24 = v23;
  v114 = &protocol witness table for UILabel;
  v113 = v23;
  v112 = v22;
  v25 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  v111 = &protocol witness table for UILabel;
  v110 = v23;
  v64 = v25;
  v65 = v22;
  v109 = v25;
  v26 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
  if (v26)
  {
    v27 = &protocol witness table for UILabel;
    v28 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
    v29 = v23;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v105 = 0;
    v106 = 0;
  }

  v104 = v28;
  v107 = v29;
  v108 = v27;
  v30 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel);
  v102 = v23;
  v103 = &protocol witness table for UILabel;
  v63 = v30;
  v101 = v30;
  v99 = type metadata accessor for OfferButton();
  v100 = &protocol witness table for UIView;
  v98 = v9;
  v31 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView);
  v96 = type metadata accessor for RatingView();
  v97 = &protocol witness table for UIView;
  v94 = &protocol witness table for UILabel;
  v95 = v31;
  v32 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel);
  v93 = v24;
  v61 = v32;
  v62 = v31;
  v92 = v32;
  v33 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_editorsChoiceView);
  v68 = v9;
  if (v33)
  {
    v34 = type metadata accessor for EditorsChoiceView();
    v35 = &protocol witness table for UIView;
    v36 = v33;
  }

  else
  {
    v36 = 0;
    v34 = 0;
    v35 = 0;
    v88 = 0;
    v89 = 0;
  }

  v87 = v36;
  v90 = v34;
  v91 = v35;
  v37 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton);
  v69 = v5;
  if (v37)
  {
    v38 = type metadata accessor for SearchAdTransparencyButton(0);
    v39 = &protocol witness table for UIView;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v83 = 0;
    v84 = 0;
  }

  v81 = &protocol witness table for UILabel;
  v82 = v37;
  v85 = v38;
  v86 = v39;
  v40 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_descriptionLabel);
  v80 = v24;
  v79 = v40;
  v41 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView);
  v77 = type metadata accessor for MetadataRibbonView(0);
  v78 = &protocol witness table for UIView;
  v76 = v41;
  v42 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchTagsRibbonView);
  v74 = type metadata accessor for SearchTagsRibbonView(0);
  v75 = &protocol witness table for UIView;
  v73 = v42;
  v43 = v33;
  v44 = v37;
  v45 = v40;
  v46 = v41;
  v42;
  v47 = v67;
  v48 = v66;
  v49 = v65;
  v50 = v64;
  v51 = v26;
  v52 = v63;
  v53 = v68;
  v54 = v62;
  v55 = v61;
  MetadataRibbonView.hasContent.getter();
  sub_1004EEFC8();
  v56 = v70;
  sub_10076748C();
  sub_100526680(&unk_100958A50, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v57 = v72;
  sub_10076D2AC();
  v59 = v58;
  (*(v71 + 8))(v56, v57);
  return v59;
}

id sub_100522870()
{
  v1 = v0;
  v2 = sub_1007679DC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20.value.super.isa = 0;
  v20.is_nil = 0;
  sub_10075FCEC(v20, v6);
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_descriptionLabel];
  v8 = [v7 superview];
  if (!v8 || (v9 = v8, sub_100016F40(0, &qword_1009441F0, UIView_ptr), v10 = v0, v11 = sub_100770EEC(), v9, v10, (v11 & 1) == 0))
  {
    [v1 addSubview:v7];
  }

  [v7 setHidden:1];
  [v7 setText:0];
  [v1 setNeedsLayout];
  v12 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton;
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton];
  if (v13)
  {
    [v13 removeFromSuperview];
    v14 = *&v1[v12];
  }

  else
  {
    v14 = 0;
  }

  *&v1[v12] = 0;

  v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includesMetadataInformationInLockup] = 0;
  v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView];
  v16 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  *&v15[v16] = _swiftEmptyArrayStorage;

  sub_10052032C(_swiftEmptyArrayStorage);
  _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
  v17 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v3 + 24))(&v15[v17], v5, v2);
  swift_endAccess();
  [v15 setNeedsLayout];
  (*(v3 + 8))(v5, v2);
  *(*&v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchTagsRibbonView] + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_metadataRibbonItemModels) = _swiftEmptyArrayStorage;

  return sub_1004EDB68(_swiftEmptyArrayStorage);
}

uint64_t sub_100522B20(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_impressionsCalculator;
  swift_beginAccess();
  if (*(v1 + v2))
  {

    sub_10076611C();
  }

  *(v1 + v2) = 0;

  v3 = (v1 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_1000167E0(v4, v5);
  type metadata accessor for SearchTagsRibbonView(0);
  sub_100526680(&qword_10095C6D0, type metadata accessor for SearchTagsRibbonView, &unk_1007A85D8);
  return sub_10076A02C();
}

void sub_100522C28(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton];
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
}

uint64_t sub_100522CD0()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076747C();
  sub_10000DB18(v4, qword_1009A0690);
  v46 = sub_10000A61C(v4, qword_1009A0690);
  v96 = &type metadata for Double;
  v97 = &protocol witness table for Double;
  v95 = 0x4024000000000000;
  if (qword_100940A40 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A0CD0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  v7 = v1[13];
  v7(v3, enum case for FontSource.useCase(_:), v0);
  v50 = v7;
  v93 = sub_10076D9AC();
  v94 = &protocol witness table for StaticDimension;
  v8 = v93;
  v47 = v93;
  sub_10000DB7C(v92);
  v90 = v0;
  v91 = &protocol witness table for FontSource;
  v9 = sub_10000DB7C(v89);
  v52 = v1[2];
  v52(v9, v3, v0);
  v48 = v1 + 2;
  sub_10076D9BC();
  v10 = v1[1];
  v10(v3, v0);
  v53 = v1 + 1;
  *v3 = UIFontTextStyleBody;
  v49 = enum case for FontSource.textStyle(_:);
  v54 = v1 + 13;
  (v7)(v3);
  v90 = v8;
  v91 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v89);
  v87 = v0;
  v88 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v86);
  v12 = v52;
  v52(v11, v3, v0);
  v13 = UIFontTextStyleBody;
  sub_10076D9BC();
  v10(v3, v0);
  *v3 = v13;
  v14 = v49;
  v15 = v50;
  v50(v3, v49, v0);
  v87 = v47;
  v88 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v86);
  v84 = v0;
  v85 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v83);
  v12(v16, v3, v0);
  v17 = v13;
  sub_10076D9BC();
  v10(v3, v0);
  v51 = v10;
  *v3 = v17;
  v15(v3, v14, v0);
  v18 = v47;
  v84 = v47;
  v85 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v83);
  v81 = v0;
  v82 = &protocol witness table for FontSource;
  v19 = sub_10000DB7C(v80);
  v20 = v52;
  v52(v19, v3, v0);
  v21 = v17;
  sub_10076D9BC();
  v10(v3, v0);
  *v3 = v21;
  v50(v3, v49, v0);
  v81 = v18;
  v82 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v80);
  v78 = v0;
  v79 = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(v77);
  v20(v22, v3, v0);
  v23 = v21;
  sub_10076D9BC();
  v51(v3, v0);
  *v3 = UIFontTextStyleFootnote;
  v24 = v49;
  v25 = v50;
  v50(v3, v49, v0);
  v26 = v18;
  v78 = v18;
  v79 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v77);
  v75 = v0;
  v76 = &protocol witness table for FontSource;
  v27 = sub_10000DB7C(v74);
  v28 = v52;
  v52(v27, v3, v0);
  v29 = UIFontTextStyleFootnote;
  sub_10076D9BC();
  v30 = v51;
  v51(v3, v0);
  *v3 = v29;
  v25(v3, v24, v0);
  v75 = v26;
  v76 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v74);
  v72 = v0;
  v73 = &protocol witness table for FontSource;
  v31 = sub_10000DB7C(v71);
  v28(v31, v3, v0);
  v32 = v29;
  sub_10076D9BC();
  v30(v3, v0);
  *v3 = v32;
  v33 = v49;
  v34 = v50;
  v50(v3, v49, v0);
  v72 = v26;
  v73 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v71);
  v69 = v0;
  v70 = &protocol witness table for FontSource;
  v35 = sub_10000DB7C(v68);
  v52(v35, v3, v0);
  v36 = v32;
  sub_10076D9BC();
  v51(v3, v0);
  *v3 = v36;
  v34(v3, v33, v0);
  v69 = v26;
  v70 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v68);
  v66 = v0;
  v67 = &protocol witness table for FontSource;
  v37 = sub_10000DB7C(v65);
  v38 = v52;
  v52(v37, v3, v0);
  v39 = v36;
  sub_10076D9BC();
  v40 = v51;
  v51(v3, v0);
  *v3 = v39;
  v34(v3, v33, v0);
  v66 = v26;
  v67 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v65);
  v63 = v0;
  v64 = &protocol witness table for FontSource;
  v41 = sub_10000DB7C(v62);
  v38(v41, v3, v0);
  v42 = v39;
  sub_10076D9BC();
  v40(v3, v0);
  v64 = &protocol witness table for Double;
  v63 = &type metadata for Double;
  v61[19] = &protocol witness table for Double;
  v62[0] = 0x4024000000000000;
  v61[18] = &type metadata for Double;
  v61[14] = &protocol witness table for Double;
  v61[15] = 0x4010000000000000;
  v61[13] = &type metadata for Double;
  v61[9] = &protocol witness table for Double;
  v61[10] = 0x4020000000000000;
  v61[8] = &type metadata for Double;
  v61[5] = 0x401C000000000000;
  *v3 = v42;
  v50(v3, v49, v0);
  v61[3] = v47;
  v61[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v61);
  v59 = v0;
  v60 = &protocol witness table for FontSource;
  v43 = sub_10000DB7C(v58);
  v52(v43, v3, v0);
  v44 = v42;
  sub_10076D9BC();
  v51(v3, v0);
  v59 = &type metadata for Double;
  v60 = &protocol witness table for Double;
  v57 = &protocol witness table for Double;
  v58[0] = 0x4040000000000000;
  v56 = &type metadata for Double;
  v55 = 0x4024000000000000;
  return sub_10076744C();
}

uint64_t sub_100523664()
{
  v0 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
  sub_10000DB18(v0, qword_10095C660);
  sub_10000A61C(v0, qword_10095C660);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

void sub_100523700(char a1)
{
  if (v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice] != (a1 & 1))
  {
    v2 = v1;
    if (v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice])
    {
      v3 = v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_useAdsLocale];
      v4 = objc_allocWithZone(type metadata accessor for EditorsChoiceView());
      v5 = sub_100040B8C(2, 0, 0, v3, 0);
      v6 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_editorsChoiceView;
      v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_editorsChoiceView];
      *&v2[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_editorsChoiceView] = v5;

      v8 = *&v2[v6];
      if (!v8 || (sub_100016F40(0, &qword_100942F10, UIColor_ptr), v9 = v8, v10 = sub_100770D1C(), [v9 setTintColor:v10], v9, v10, !*&v2[v6]))
      {
        __break(1u);
        return;
      }

      [v2 addSubview:?];
    }

    else
    {
      v11 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_editorsChoiceView;
      v12 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_editorsChoiceView];
      if (v12)
      {
        [v12 removeFromSuperview];
        v13 = *&v2[v11];
      }

      else
      {
        v13 = 0;
      }

      *&v2[v11] = 0;
    }

    [v2 setNeedsLayout];
  }
}

void sub_10052385C()
{
  v1 = sub_1007679DC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView);
  v6 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_isDisplayingSearchAd;
  v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_isDisplayingSearchAd);
  v8 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_isInsideSearchAd;
  swift_beginAccess();
  v5[v8] = v7;
  if (v7 == 1)
  {
    _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
    v9 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metrics;
    swift_beginAccess();
    (*(v2 + 24))(&v5[v9], v4, v1);
    swift_endAccess();
    [v5 setNeedsLayout];
    (*(v2 + 8))(v4, v1);
  }

  *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchTagsRibbonView) + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_isInsideSearchAd) = *(v0 + v6);
}

char *sub_1005239EC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v101 = sub_10076771C();
  v103 = *(v101 - 1);
  __chkstk_darwin(v101);
  v11 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v94 - v13;
  v15 = sub_10076D1AC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRegularMargin] = 0x4024000000000000;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataSmallMargin] = 0x401C000000000000;
  if (qword_100940FD8 != -1)
  {
    swift_once();
  }

  v98 = v11;
  v19 = sub_10076D3DC();
  v20 = sub_10000A61C(v19, qword_1009A1D80);
  v100 = *(v19 - 8);
  v102 = *(v100 + 16);
  v104 = v100 + 16;
  v102(v18, v20, v19);
  (*(v16 + 104))(v18, enum case for FontSource.useCase(_:), v15);
  v109 = v15;
  v110 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(v108);
  (*(v16 + 16))(v21, v18, v15);
  sub_10076D9BC();
  (*(v16 + 8))(v18, v15);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_regularWidthColumnSpacing] = 0x4040000000000000;
  v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeRatings] = 0;
  v22 = type metadata accessor for RatingView();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating] = 0;
  *&v23[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor] = 0;
  v24 = &v23[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starPadding];
  *v24 = 0;
  v24[8] = 1;
  *&v23[OBJC_IVAR____TtC20ProductPageExtension10RatingView_maxNumberOfStars] = 5;
  if (qword_10093F570 != -1)
  {
    swift_once();
  }

  v25 = qword_100944D30;
  *&v23[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor] = qword_100944D30;
  v23[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starSize] = 3;
  *v24 = 0;
  v24[8] = 1;
  v23[OBJC_IVAR____TtC20ProductPageExtension10RatingView_useCase] = 0;
  v26 = type metadata accessor for StarRow();
  v27 = objc_allocWithZone(v26);
  v28 = v25;
  *&v23[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView] = sub_10006446C(5, 1, 3, 0, 1, 0, 0);
  v23[OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars] = 0;
  v29 = objc_allocWithZone(v26);
  *&v23[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView] = sub_10006446C(5, 0, 3, 0, 1, 0, 0);
  v107.receiver = v23;
  v107.super_class = v22;
  v30 = objc_msgSendSuper2(&v107, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1000620A4();
  v31 = OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView;
  v32 = *&v30[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView];
  v33 = *&v32[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating];
  *&v32[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating] = *&v30[OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating];
  v34 = v32;
  sub_100062B94(v33);

  if (*&v30[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView])
  {
    [v30 addSubview:?];
  }

  v35 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView;
  [v30 addSubview:*&v30[v31]];

  *&v5[v35] = v30;
  v36 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel;
  v37 = v103;
  if (qword_100940E88 != -1)
  {
    swift_once();
  }

  v38 = sub_10000A61C(v19, qword_1009A1990);
  v102(v14, v38, v19);
  v39 = *(v100 + 56);
  v39(v14, 0, 1, v19);
  v40 = *(v37 + 104);
  v103 = v37 + 104;
  v41 = v98;
  LODWORD(v100) = enum case for DirectionalTextAlignment.none(_:);
  v97 = v40;
  v40(v98);
  v42 = sub_1007626BC();
  v43 = objc_allocWithZone(v42);
  *&v5[v36] = sub_1007626AC();
  v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_useAdsLocale] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includeEditorsChoice] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_editorsChoiceView] = 0;
  v44 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView;
  *&v5[v44] = [objc_allocWithZone(type metadata accessor for MetadataRibbonView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v45 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchTagsRibbonView;
  *&v5[v45] = [objc_allocWithZone(type metadata accessor for SearchTagsRibbonView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_isDisplayingSearchAd] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_includesMetadataInformationInLockup] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_shouldEvenlyDistribute] = 2;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_impressionsCalculator] = 0;
  v46 = &v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_impressionsUpdateBlock];
  *v46 = 0;
  v46[1] = 0;
  if (qword_100940E80 != -1)
  {
    swift_once();
  }

  v47 = sub_10000A61C(v19, qword_1009A1978);
  v48 = v102;
  v102(v14, v47, v19);
  v95 = v19;
  v96 = v39;
  v39(v14, 0, 1, v19);
  v97(v41, v100, v101);
  v49 = objc_allocWithZone(v42);
  v50 = &unk_1009A0000;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_descriptionLabel] = sub_1007626AC();
  v106.receiver = v5;
  v106.super_class = ObjectType;
  v51 = objc_msgSendSuper2(&v106, "initWithFrame:", a1, a2, a3, a4);
  v52 = sub_10076C04C();
  v109 = v52;
  v53 = sub_100526680(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v110 = v53;
  v54 = sub_10000DB7C(v108);
  v55 = *(v52 - 8);
  v56 = *(v55 + 104);
  LODWORD(v103) = enum case for Feature.search_tags(_:);
  ObjectType = v52;
  v100 = v55 + 104;
  v101 = v56;
  (v56)(v54);
  LOBYTE(v52) = sub_10076C90C();
  sub_10000CD74(v108);
  v57 = v48;
  if (v52)
  {
    v98 = v53;
    v58 = v51;
    if (qword_100940A60 != -1)
    {
      swift_once();
    }

    v59 = v95;
    v60 = sub_10000A61C(v95, qword_1009A0D30);
    v48(v14, v60, v59);
    v61 = v14;
    v62 = v14;
    v63 = v96;
    v96(v61, 0, 1, v59);
    sub_1007625DC();
    v64 = qword_100940A70;
    v65 = *&v58[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];
    if (v64 != -1)
    {
      swift_once();
    }

    v66 = sub_10000A61C(v59, qword_1009A0D60);
    v57(v62, v66, v59);
    v63(v62, 0, 1, v59);
    sub_1007625DC();

    v67 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel;
    v68 = *&v58[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel];
    sub_10076D84C();
    if (qword_10093F6A0 != -1)
    {
      swift_once();
    }

    v69 = sub_10076715C();
    v70 = sub_10000A61C(v69, qword_10099CE50);
    v109 = v69;
    v110 = sub_100526680(&qword_10094B6A0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
    v71 = sub_10000DB7C(v108);
    (*(*(v69 - 8) + 16))(v71, v70, v69);
    sub_1007625FC();

    v72 = *&v58[v67];
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v73 = v72;
    v74 = sub_100770D1C();
    [v73 setTextColor:v74];

    [*&v58[v67] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
    v75 = v98;
    v50 = &unk_1009A0000;
  }

  else
  {
    v76 = *&v51[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel];
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v77 = v76;
    v78 = sub_100770D0C();
    [v77 setTextColor:v78];

    v75 = v53;
    v58 = v51;
  }

  v79 = v50[220];
  v80 = *&v58[v79];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v81 = v80;
  v82 = sub_100770D1C();
  [v81 setTextColor:v82];

  [*&v58[v79] setUserInteractionEnabled:0];
  v83 = v103;
  if (qword_1009407F0 != -1)
  {
    swift_once();
  }

  v84 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
  sub_10000A61C(v84, qword_10095C660);
  v105 = v58;
  v85 = v58;
  sub_10075FDCC();

  sub_100770E7C();
  [v85 addSubview:*&v85[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView]];
  v86 = ObjectType;
  v109 = ObjectType;
  v110 = v75;
  v87 = sub_10000DB7C(v108);
  v88 = v101;
  v101(v87, v83, v86);
  v89 = sub_10076C90C();
  sub_10000CD74(v108);
  if (v89)
  {
    [v85 addSubview:*&v85[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel]];
  }

  v109 = v86;
  v110 = v75;
  v90 = sub_10000DB7C(v108);
  v88(v90, v83, v86);
  v91 = sub_10076C90C();
  sub_10000CD74(v108);
  v92 = &OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchTagsRibbonView;
  if ((v91 & 1) == 0)
  {
    v92 = &OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView;
  }

  [v85 addSubview:*&v85[*v92]];
  *(*&v85[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton] + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_includeTopPadding) = 0;
  return v85;
}

double sub_100524828(void *a1, double a2, double a3)
{
  v117 = a1;
  v6 = sub_10076749C();
  v106 = *(v6 - 8);
  v107 = v6;
  __chkstk_darwin(v6);
  v105 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007679DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v90 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076997C();
  v99 = *(v11 - 8);
  v100 = v11;
  __chkstk_darwin(v11);
  v98 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076443C();
  v114 = *(v13 - 8);
  v115 = v13;
  __chkstk_darwin(v13);
  v110 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v112 = &v87 - v16;
  v17 = sub_10076747C();
  v111 = *(v17 - 8);
  __chkstk_darwin(v17);
  v104 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v87 - v20;
  v22 = sub_10000A5D4(&unk_100957F90, qword_1007A9D70);
  __chkstk_darwin(v22 - 8);
  v88 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v87 - v25;
  v27 = *&v3[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView];
  v28 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v29 = *(v27 + v28);
  v30 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v9 + 16))(v26, v27 + v30, v8);
  v91 = v9;
  v92 = v8;
  v31 = *(v9 + 56);
  v108 = v26;
  v31(v26, 0, 1, v8);
  v32 = *&v3[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchTagsRibbonView];
  v33 = *(v32 + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_metadataRibbonItemModels);
  v89 = *(v32 + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_shouldEvenlyDistribute);
  v109 = v33;

  v116 = v29;

  [v3 layoutMargins];
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v34 = sub_10000A61C(v17, qword_1009A0690);
  v101 = *(v111 + 16);
  v102 = v111 + 16;
  v101(v21, v34, v17);
  v35 = v117;
  v36 = sub_10077071C();
  v113 = v17;
  if (v36)
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v37 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v37 = qword_100944CA0;
  }

  v38 = v115;
  v39 = sub_10000A61C(v115, v37);
  v40 = v114;
  v41 = v110;
  (*(v114 + 16))(v110, v39, v38);
  (*(v40 + 32))(v112, v41, v38);
  v42 = [v35 preferredContentSizeCategory];
  sub_10077084C();

  sub_1007643EC();
  sub_10076441C();
  sub_10076746C();
  v110 = v21;
  sub_10076745C();
  v97 = sub_10076DDDC();
  swift_allocObject();
  v103 = sub_10076DDBC();
  v43 = objc_opt_self();
  v95 = v43;
  v44 = [v43 preferredFontForTextStyle:UIFontTextStyleBody];
  v45 = sub_10076C04C();
  v154[3] = v45;
  v46 = sub_100526680(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v154[4] = v46;
  v47 = sub_10000DB7C(v154);
  v48 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v49 = *(v45 - 8);
  v96 = *(v49 + 104);
  v50 = v49 + 104;
  v93 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v96(v47, enum case for Feature.measurement_with_labelplaceholder(_:), v45);
  v94 = v50;
  sub_10076C90C();
  sub_10000CD74(v154);
  v51 = v98;
  sub_10076996C();
  sub_10076994C();
  v52 = v100;
  v99 = *(v99 + 8);
  (v99)(v51, v100);
  v53 = [v43 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v153[3] = v45;
  v153[4] = v46;
  v54 = sub_10000DB7C(v153);
  v55 = v48;
  v56 = v96;
  v96(v54, v55, v45);
  sub_10076C90C();
  sub_10000CD74(v153);
  sub_10076996C();
  sub_10076994C();
  v57 = v99;
  (v99)(v51, v52);
  v58 = [v95 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v152[3] = v45;
  v152[4] = v46;
  v59 = sub_10000DB7C(v152);
  v56(v59, v93, v45);
  sub_10076C90C();
  sub_10000CD74(v152);
  sub_10076996C();
  sub_10076994C();
  v57(v51, v52);
  v60 = v116;
  LODWORD(v100) = sub_10001D420() & (v60 != 0);
  if (v100 == 1)
  {
    v61 = v97;
    v62 = objc_allocWithZone(sub_10076DEDC());
    v63 = v117;
    v64 = sub_10076DECC();
    v65 = v88;
    sub_10047C764(v108, v88);
    v67 = v91;
    v66 = v92;
    v68 = *(v91 + 48);
    if (v68(v65, 1, v92) == 1)
    {
      v69 = v90;
      _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
      if (v68(v65, 1, v66) != 1)
      {
        sub_100526618(v65);
      }
    }

    else
    {
      v69 = v90;
      (*(v67 + 32))(v90, v65, v66);
    }

    v71 = v64;
    sub_10001A588(v116, v69, v71, a2, a3);

    (*(v67 + 8))(v69, v66);
    swift_allocObject();
    v70 = sub_10076DDAC();
  }

  else
  {
    v61 = v97;
    swift_allocObject();
    v70 = sub_10076DDBC();
  }

  v72 = v70;

  v73 = v109;
  if ((sub_10001D420() & (v73 != 0)) == 1)
  {
    v74.n128_f64[0] = a2;
    sub_1004EF9EC(v73, v89, v74, a3);
    swift_allocObject();
    v75 = sub_10076DDAC();
  }

  else
  {
    swift_allocObject();
    v75 = sub_10076DDBC();
  }

  v76 = v75;
  v101(v104, v110, v113);
  v151 = &protocol witness table for LayoutViewPlaceholder;
  v150 = v61;
  v149 = v103;
  v148 = 0;
  *&v146[40] = 0u;
  v147 = 0u;
  sub_10000A570(v154, v146);
  sub_10000A570(v153, &v145);
  v144 = 0;
  v142 = 0u;
  v143 = 0u;
  v141 = 0;
  v139 = 0u;
  v140 = 0u;

  v77 = sub_10076DDCC();
  v138 = &protocol witness table for LayoutViewPlaceholder;
  v137 = v61;
  v136 = v77;
  v135 = 0;
  v133 = 0u;
  v134 = 0u;
  v132 = 0;
  v130 = 0u;
  v131 = 0u;
  v129 = 0;
  v127 = 0u;
  v128 = 0u;
  v126 = 0;
  v125 = 0u;
  *&v124[40] = 0u;
  sub_10000A570(v152, v124);
  v122 = v61;
  v123 = &protocol witness table for LayoutViewPlaceholder;
  v120 = &protocol witness table for LayoutViewPlaceholder;
  v121 = v72;
  v119 = v61;
  v118 = v76;
  v78 = v105;
  sub_10076748C();
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1007841E0;
  v80 = v117;
  *(v79 + 32) = v117;
  v81 = v80;
  v82 = sub_10076DEEC();
  sub_100526680(&unk_100958A50, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v83 = v107;
  sub_10076D2AC();
  v85 = v84;

  (*(v106 + 8))(v78, v83);
  sub_10000CD74(v152);
  sub_10000CD74(v153);
  sub_10000CD74(v154);
  (*(v114 + 8))(v112, v115);
  (*(v111 + 8))(v110, v113);
  sub_100526618(v108);
  return v85;
}

uint64_t sub_1005255EC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v78 = *(v3 - 8);
  v79 = v3;
  __chkstk_darwin(v3);
  v76 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076747C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076749C();
  v74 = *(v9 - 8);
  v75 = v9;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v73 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130.receiver = v1;
  v130.super_class = ObjectType;
  v77 = ObjectType;
  objc_msgSendSuper2(&v130, "layoutSubviews", v10);
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v12 = sub_10000A61C(v5, qword_1009A0690);
  (*(v6 + 16))(v8, v12, v5);
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton];
  type metadata accessor for BaseLockupView();
  sub_10076422C();
  v14 = &v13[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
  if (v13[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v15 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000A570(&v13[v15], v127);
    sub_10000CF78(v127, v128);
    sub_100767A2C();
    v17 = v16;
    v19 = v18;
    sub_10000CD74(v127);
    *v14 = v17;
    *(v14 + 1) = v19;
    v14[16] = 0;
  }

  sub_10076746C();
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
  v21 = sub_10075FD2C();
  v129 = &protocol witness table for UIView;
  v128 = v21;
  v71 = v20;
  v127[0] = v20;
  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel];
  v70 = v22;
  if (v22)
  {
    v23 = sub_1007626BC();
    v24 = &protocol witness table for UILabel;
    v25 = v22;
  }

  else
  {
    v25 = 0;
    v23 = 0;
    v24 = 0;
    v123 = 0;
    v124 = 0;
  }

  v122 = v25;
  v125 = v23;
  v126 = v24;
  v26 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel];
  v27 = sub_1007626BC();
  v28 = v27;
  v121 = &protocol witness table for UILabel;
  v120 = v27;
  v119 = v26;
  v29 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];
  v118 = &protocol witness table for UILabel;
  v117 = v27;
  v67 = v29;
  v68 = v26;
  v116 = v29;
  v30 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel];
  if (v30)
  {
    v31 = &protocol witness table for UILabel;
    v32 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel];
    v33 = v27;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v31 = 0;
    v112 = 0;
    v113 = 0;
  }

  v111 = v32;
  v114 = v33;
  v115 = v31;
  v34 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel];
  v109 = v27;
  v110 = &protocol witness table for UILabel;
  v66 = v34;
  v108 = v34;
  v106 = type metadata accessor for OfferButton();
  v107 = &protocol witness table for UIView;
  v105 = v13;
  v35 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_userRatingView];
  v103 = type metadata accessor for RatingView();
  v104 = &protocol witness table for UIView;
  v101 = &protocol witness table for UILabel;
  v102 = v35;
  v36 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_ratingCountLabel];
  v100 = v28;
  v64 = v36;
  v65 = v35;
  v99 = v36;
  v37 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_editorsChoiceView];
  if (v37)
  {
    v38 = type metadata accessor for EditorsChoiceView();
    v39 = &protocol witness table for UIView;
    v40 = v37;
  }

  else
  {
    v40 = 0;
    v38 = 0;
    v39 = 0;
    v95 = 0;
    v96 = 0;
  }

  v94 = v40;
  v97 = v38;
  v98 = v39;
  v41 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton];
  v72 = v8;
  v69 = v13;
  v42 = 0;
  if (v41)
  {
    v42 = type metadata accessor for SearchAdTransparencyButton(0);
    v43 = &protocol witness table for UIView;
  }

  else
  {
    v43 = 0;
    v90 = 0;
    v91 = 0;
  }

  v88 = &protocol witness table for UILabel;
  v89 = v41;
  v92 = v42;
  v93 = v43;
  v44 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_descriptionLabel];
  v87 = v28;
  v86 = v44;
  v45 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView];
  v84 = type metadata accessor for MetadataRibbonView(0);
  v85 = &protocol witness table for UIView;
  v83 = v45;
  v46 = *&v1[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchTagsRibbonView];
  v81 = type metadata accessor for SearchTagsRibbonView(0);
  v82 = &protocol witness table for UIView;
  v80 = v46;
  v47 = v37;
  v48 = v41;
  v49 = v44;
  v50 = v45;
  v51 = v46;
  v52 = v71;
  v53 = v70;
  v54 = v68;
  v55 = v67;
  v56 = v30;
  v57 = v66;
  v58 = v69;
  v59 = v65;
  v60 = v64;
  MetadataRibbonView.hasContent.getter();
  sub_1004EEFC8();
  v61 = v73;
  sub_10076748C();
  sub_10076422C();
  v62 = v76;
  sub_10076743C();
  (*(v78 + 8))(v62, v79);
  return (*(v74 + 8))(v61, v75);
}

id sub_100525CA8(uint64_t a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v8 = *&v3[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton];
  if (v8)
  {
    v9 = v8;
    [v3 convertPoint:v9 toCoordinateSpace:{a2, a3}];
    v10 = [v9 pointInside:a1 withEvent:?];
    result = v8;
    if (v10)
    {
      return result;
    }
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
}

id sub_100525DFC(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_1009407F0 != -1)
    {
      swift_once();
    }

    v6 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
    sub_10000A61C(v6, qword_10095C660);
    v7 = v1;
    sub_10075FDCC();

    return sub_100770E7C();
  }

  return result;
}

double sub_10052600C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataTextSpace;
  v2 = sub_10076D9AC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_impressionsUpdateBlock);
  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_impressionsUpdateBlock + 8);

  return sub_1000167E0(v3, v4);
}

uint64_t type metadata accessor for SmallSearchLockupView(uint64_t a1)
{
  result = qword_10095C6B8;
  if (!qword_10095C6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10052625C(uint64_t a1)
{
  result = sub_10076D9AC();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_10052636C()
{
  swift_beginAccess();

  return result;
}

double sub_1005263B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_10052646C()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1, v1[1]);
  return v2;
}

double sub_1005264C8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6, v7);
}

uint64_t sub_100526588(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchTagsRibbonView(0);
  sub_100526680(&qword_10095C6D0, type metadata accessor for SearchTagsRibbonView, &unk_1007A85D8);
  return sub_10076A03C();
}

uint64_t sub_100526618(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100957F90, qword_1007A9D70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100526680(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for RoundedTitledButton(uint64_t a1)
{
  result = qword_10095C6E0;
  if (!qword_10095C6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100526714(uint64_t a1)
{
  result = sub_10076D9AC();
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

char *sub_1005267B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = [swift_getObjCClassFromMetadata() buttonWithType:1];
  v8 = qword_10095C6D8;
  swift_beginAccess();
  v9 = sub_10076D9AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 24);
  v12 = v7;
  v11(&v7[v8], a2, v9);
  swift_endAccess();
  v13 = sub_10076D3DC();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v6, a1, v13);
  (*(v14 + 56))(v6, 0, 1, v13);
  v15 = v12;
  sub_10076311C();

  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  sub_1000325F0();
  v16 = sub_100770DAC();
  [v15 _setBackgroundColor:v16];

  [v15 addTarget:v15 action:"didTapButton:" forControlEvents:64];
  v17 = sub_100770D6C();
  [v15 setTintColor:v17];

  (*(v10 + 8))(a2, v9);
  (*(v14 + 8))(a1, v13);
  return v15;
}

UIFontTextStyle sub_100526A50()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A0728);
  v1 = sub_10000A61C(v0, qword_1009A0728);
  *v1 = UIFontTextStyleSubheadline;
  *(v1 + 8) = 0;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleSubheadline;
}

uint64_t sub_100526B00()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009A0740);
  sub_10000A61C(v4, qword_1009A0740);
  if (qword_1009407F8 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A0728);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

double sub_100526CDC(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_10077164C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076D9AC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = a1;
  v21.super_class = ObjectType;
  v15 = a1;
  objc_msgSendSuper2(&v21, "sizeThatFits:", a2, a3);
  v17 = v16;
  v18 = qword_10095C6D8;
  swift_beginAccess();
  (*(v12 + 16))(v14, &v15[v18], v11);
  sub_10076D17C();
  sub_10076D40C();

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  return v17;
}

void sub_100526EEC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "layoutSubviews");
  [v1 bounds];
  [v1 _setCornerRadius:CGRectGetHeight(v3) * 0.5];
}

double sub_100526F68(char *a1)
{
  v1 = *&a1[qword_1009A0758];
  if (v1)
  {
    v2 = *&a1[qword_1009A0758 + 8];
    v3 = a1;
    v4 = sub_10001CE50(v1, v2);
    v1(v4);

    return sub_1000167E0(v1, v2);
  }

  return result;
}

id sub_100526FEC(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v9, "measurementsWithFitting:in:", a5, a2, a3);
}

id sub_100527054(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v11 = qword_10095C6D8;
  if (qword_100940800 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D9AC();
  v13 = sub_10000A61C(v12, qword_1009A0740);
  (*(*(v12 - 8) + 16))(&a1[v11], v13, v12);
  v14 = &a1[qword_1009A0758];
  *v14 = 0;
  *(v14 + 1) = 0;
  v16.receiver = a1;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, "initWithFrame:", a2, a3, a4, a5);
}

double sub_100527164()
{
  v1 = qword_10095C6D8;
  v2 = sub_10076D9AC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_1009A0758);
  v4 = *(v0 + qword_1009A0758 + 8);

  return sub_1000167E0(v3, v4);
}

double sub_1005271E0(uint64_t a1)
{
  v2 = qword_10095C6D8;
  v3 = sub_10076D9AC();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = *(a1 + qword_1009A0758);
  v5 = *(a1 + qword_1009A0758 + 8);

  return sub_1000167E0(v4, v5);
}

uint64_t sub_100527268(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005272B0(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

BOOL sub_100527318(uint64_t a1, double *a2)
{
  v2 = *(a1 + 8);
  v3 = a2[1];
  v4 = sub_10076FF9C();
  v6 = v5;
  if (v4 == sub_10076FF9C() && v6 == v7)
  {

    return v2 == v3;
  }

  v9 = sub_10077167C();

  result = 0;
  if (v9)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1005273CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_10076D8DC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D8AC();
  sub_10011E080(v2, &v15);
  if (*(&v16 + 1))
  {
    sub_100012498(&v15, v21);
    sub_1005277E4(v2, &v15);
    v8 = swift_allocObject();
    v9 = v18;
    v8[3] = v17;
    v8[4] = v9;
    v10 = v20;
    v8[5] = v19;
    v8[6] = v10;
    v11 = v16;
    v8[1] = v15;
    v8[2] = v11;
    sub_10076D89C();

    sub_10000CD74(v21);
  }

  else
  {
    sub_10017FE2C(&v15);
  }

  sub_10076D89C();
  a1[3] = v4;
  a1[4] = &protocol witness table for HorizontalStack;
  v12 = sub_10000DB7C(a1);
  return (*(v5 + 32))(v12, v7, v4);
}

double sub_100527584(uint64_t a1, double a2, double a3)
{
  sub_1005273CC(v6);
  sub_10000CF78(v6, v6[3]);
  sub_10076E0FC();
  v4 = ceil(v3);
  sub_100527790(v6);
  return v4;
}

uint64_t sub_100527628(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1005273CC(v6);
  sub_10000CF78(v6, v6[3]);
  sub_10076E0EC();
  return sub_100527790(v6);
}

uint64_t sub_1005276C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005278BC();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_100527720()
{
  result = qword_10095C730;
  if (!qword_10095C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095C730);
  }

  return result;
}

uint64_t sub_10052781C()
{
  if (*(v0 + 40))
  {
    sub_10000CD74((v0 + 16));
  }

  sub_10000CD74((v0 + 56));

  return _swift_deallocObject(v0, 112, 7);
}

unint64_t sub_1005278BC()
{
  result = qword_10095C738;
  if (!qword_10095C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095C738);
  }

  return result;
}

uint64_t sub_100527924(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v42 = a2;
  v5 = type metadata accessor for Accessory(0);
  v44 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = a3 >> 62;
  if (a3 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {
    v13 = a1 >> 62;
    if (a1 >> 62)
    {
      if (i != sub_10077158C())
      {
        return 0;
      }
    }

    else if (i != *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 0;
    }

    v31 = a1;
    if (v11)
    {
      break;
    }

    v14 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return 1;
    }

LABEL_9:
    v15 = 0;
    v39 = a3 & 0xFFFFFFFFFFFFFF8;
    v40 = a3 & 0xC000000000000001;
    v11 = v31 & 0xFFFFFFFFFFFFFF8;
    if (v31 < 0)
    {
      v16 = v31;
    }

    else
    {
      v16 = v31 & 0xFFFFFFFFFFFFFF8;
    }

    v32 = v16;
    v33 = v31 & 0xFFFFFFFFFFFFFF8;
    v37 = v31 & 0xC000000000000001;
    v38 = a3 + 32;
    v35 = a1 >> 62;
    v36 = v31 + 32;
    v30 = a3;
    v34 = v14;
    while (1)
    {
      if (v40)
      {
        v43 = sub_10077149C();
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v15 >= *(v39 + 16))
        {
          goto LABEL_48;
        }

        v43 = *(v38 + 8 * v15);

        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_47;
        }
      }

      if (v13)
      {
        v18 = sub_10077158C();
      }

      else
      {
        v18 = *(v11 + 16);
      }

      if (v15 == v18)
      {

        return 1;
      }

      v41 = v17;
      if (v37)
      {
        v19 = sub_10077149C();
      }

      else
      {
        if (v15 >= *(v11 + 16))
        {
          goto LABEL_49;
        }

        v19 = *(v36 + 8 * v15);
      }

      v20 = v42;
      a1 = v43;
      v21 = (*(v43 + 16))(v42);
      if (v21 != (*(v19 + 16))(v20) || (v22 = *(a1 + 32), v23 = *(v19 + 32), v11 = *(v22 + 16), v11 != *(v23 + 16)))
      {
LABEL_40:

        return 0;
      }

      if (v11 && v22 != v23)
      {
        break;
      }

LABEL_34:
      v15 = v41;
      v13 = v35;
      v11 = v33;
      if (v41 == v34)
      {
        return 1;
      }
    }

    a1 = 0;
    v24 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    a3 = v22 + v24;
    v25 = v23 + v24;
    while (a1 < *(v22 + 16))
    {
      v26 = *(v44 + 72) * a1;
      sub_10024DFF0(a3 + v26, v10);
      if (a1 >= *(v23 + 16))
      {
        goto LABEL_46;
      }

      sub_10024DFF0(v25 + v26, v7);
      v27 = sub_10052A9D0(v10, v7);
      sub_100036758(v7);
      sub_100036758(v10);
      if (!v27)
      {
        goto LABEL_40;
      }

      if (v11 == ++a1)
      {

        a3 = v30;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

  v14 = sub_10077158C();
  if (v14)
  {
    goto LABEL_9;
  }

  return 1;
}

void sub_100527CDC(uint64_t a1)
{
  v130 = a1;
  v1 = sub_10076F9AC();
  v128 = *(v1 - 8);
  v129 = v1;
  __chkstk_darwin(v1);
  v127 = &v120 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076BF6C();
  __chkstk_darwin(v3 - 8);
  v126 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_10076771C();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v125 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_10076048C();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_100945140, &unk_100787540);
  __chkstk_darwin(v7 - 8);
  v9 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v120 - v11;
  v13 = sub_10076D3DC();
  v131 = *(v13 - 8);
  v132 = v13;
  __chkstk_darwin(v13);
  v15 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v120 - v17;
  v19 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v19 - 8);
  v21 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v120 - v23;
  __chkstk_darwin(v25);
  v27 = &v120 - v26;
  __chkstk_darwin(v28);
  v30 = &v120 - v29;
  v31 = type metadata accessor for Accessory(0);
  __chkstk_darwin(v31);
  v33 = (&v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10024DFF0(v133, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        v87 = objc_allocWithZone(type metadata accessor for SearchButton(0));

        sub_10044E8CC(v88);
        return;
      }

      if (EnumCaseMultiPayload != 9)
      {
        v104 = v121;
        v105 = v120;
        v106 = v122;
        (*(v121 + 104))(v120, enum case for SystemImage.chevronForward(_:), v122);
        v107 = sub_10076046C();
        (*(v104 + 8))(v105, v106);
        v108 = [v107 imageWithRenderingMode:2];

        v109 = [objc_allocWithZone(UIImageView) initWithImage:v108];
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        v110 = sub_100770D4C();
        [v109 setTintColor:v110];

        return;
      }

      v47 = objc_opt_self();
      v48 = sub_10076FF6C();
      v49 = [v47 kitImageNamed:v48];

      if (!v49)
      {
        __break(1u);
        return;
      }

      v50 = [v49 imageWithRenderingMode:2];

      v51 = [v50 imageFlippedForRightToLeftLayoutDirection];
      v52 = [objc_allocWithZone(UIImageView) initWithImage:v51];
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      isa = sub_100770E4C(0.82098, 0.82153, 0.83748, 1.0).super.isa;
      [v52 setTintColor:isa];
    }

    else if (EnumCaseMultiPayload == 5)
    {
      v79 = v33[1];
      if (qword_100940A18 != -1)
      {
        swift_once();
      }

      v80 = v132;
      v81 = sub_10000A61C(v132, qword_1009A0C58);
      v82 = v131;
      (*(v131 + 16))(v21, v81, v80);
      (*(v82 + 56))(v21, 0, 1, v80);
      (*(v123 + 104))(v125, enum case for DirectionalTextAlignment.trailing(_:), v124);
      v83 = objc_allocWithZone(sub_1007626BC());
      v84 = sub_1007626AC();
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v85 = v84;
      v86 = sub_100770D1C();
      [v85 setTextColor:v86];

      if (v79)
      {
        v51 = sub_10076FF6C();
      }

      else
      {
        v51 = 0;
      }

      [v85 setText:v51];
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        v35 = v33[1];
        v36 = v33[2];
        sub_10075FD2C();
        v37 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        sub_10076BDBC();
        sub_10076BFCC();
        sub_10076BF7C();
        sub_10075FCCC();
        [v37 setContentMode:sub_10076BDBC()];
        sub_100764ADC();
        sub_10075FD0C();
        if (!sub_10076BE1C())
        {
          sub_100016F40(0, &qword_100942F10, UIColor_ptr);
          sub_100770D5C();
        }

        sub_10075FB8C();
        v38 = sub_10075FC6C();
        *(v39 + 16) = v35;
        *(v39 + 24) = v36;
        v38(&v134, 0);
        v40 = [objc_opt_self() clearColor];
        sub_10075FB8C();
        memset(&v134, 0, 32);
        memset(v135, 0, 32);
        v41 = v37;
        v42 = v127;
        sub_10076F97C();
        sub_10000CFBC(v135, &unk_1009434C0, &qword_100783F60);
        sub_10000CFBC(&v134, &unk_1009434C0, &qword_100783F60);
        sub_100770B9C();
        (*(v128 + 8))(v42, v129);
        sub_100760C4C();
        sub_10076F64C();
        sub_10076FC1C();
        sub_10052BE20(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        sub_100760B8C();

        return;
      }

      v51 = v33[2];
      v96 = v33[4];
      v97 = v33[6];
      v98 = [objc_opt_self() configurationWithFont:v51 scale:v33[3]];
      v99 = sub_10076FF6C();

      v100 = [objc_opt_self() systemImageNamed:v99 withConfiguration:v98];

      v101 = [objc_opt_self() buttonWithType:0];
      [v101 setPreferredSymbolConfiguration:v98 forImageInState:0];
      [v101 setImage:v100 forState:0];
      [v101 setTintColor:v96];
      v102 = v101;
      if (v97)
      {
        v103 = sub_10076FF6C();
      }

      else
      {
        v103 = 0;
      }

      [v101 setAccessibilityLabel:v103];
    }

LABEL_65:

    return;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v54 = v33[1];
      v55 = v33[2];

      v56 = [objc_allocWithZone(type metadata accessor for HeaderButton(0)) init];
      sub_1007641DC();

      v57 = v56;
      if (v54)
      {
        v58 = sub_10076FF6C();
      }

      else
      {
        v58 = 0;
      }

      [v56 setTitle:v58 forState:0];

      if (v55)
      {
        [v56 setTintColor:v55];

        return;
      }

      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v51 = sub_100770E1C();
      [v56 setTintColor:v51];

      goto LABEL_65;
    }

    v92 = v33[1];
    v93 = sub_10000A5D4(&qword_10095C8F0, &qword_1007AA088);
    sub_100023AD0(v33 + *(v93 + 48), v30, &unk_100943250, &unk_1007841D0);
    v94 = [objc_allocWithZone(type metadata accessor for HeaderButton(0)) init];
    sub_1007641DC();

    if (v92)
    {
      v95 = sub_10076FF6C();
    }

    else
    {
      v95 = 0;
    }

    v113 = v131;
    v112 = v132;
    v114 = v24;
    [v94 setTitle:v95 forState:0];

    sub_100016E2C(v30, v24, &unk_100943250, &unk_1007841D0);
    v115 = *(v113 + 48);
    if (v115(v24, 1, v112) == 1)
    {
      v116 = qword_100940A10;
      v117 = v94;
      if (v116 != -1)
      {
        swift_once();
      }

      v118 = sub_10000A61C(v112, qword_1009A0C40);
      (*(v113 + 16))(v27, v118, v112);
      if (v115(v114, 1, v112) != 1)
      {
        sub_10000CFBC(v114, &unk_100943250, &unk_1007841D0);
      }
    }

    else
    {
      (*(v113 + 32))(v27, v24, v112);
      v119 = v94;
    }

    (*(v113 + 56))(v27, 0, 1, v112);
    sub_10076311C();

    sub_10000CFBC(v30, &unk_100943250, &unk_1007841D0);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v59 = v18;
    v60 = v33[2];
    v61 = *(v33 + 3);
    type metadata accessor for HeaderButton(0);
    v62 = qword_10093F980;
    v63 = v60;
    if (v62 != -1)
    {
      swift_once();
    }

    v64 = v132;
    v65 = sub_10000A61C(v132, qword_10094C0D8);
    v66 = *(v131 + 16);
    v66(v18, v65, v64);
    v66(v15, v18, v64);
    v67 = sub_10076312C();
    *&v67[qword_10094C0F8] = v61;
    v68 = v67;
    v69 = [v68 traitCollection];
    v70 = sub_10077070C();

    v71 = v68;
    v72 = v71;
    if (v70)
    {
      v73 = v61;
    }

    else
    {
      v73 = 0.0;
    }

    if (v70)
    {
      v74 = 0.0;
    }

    else
    {
      v74 = v61;
    }

    if (v70)
    {
      v75 = -v61;
    }

    else
    {
      v75 = v61;
    }

    if ((v70 & 1) == 0)
    {
      v61 = -v61;
    }

    [v71 setContentEdgeInsets:{0.0, v74, 0.0, v73}];
    [v72 setImageEdgeInsets:{0.0, v61, 0.0, v75}];
    v76 = sub_10076FF6C();

    [v72 setTitle:v76 forState:0];

    [v72 setImage:v63 forState:0];
    CGAffineTransformMakeScale(&v134, -1.0, 1.0);
    [v72 setTransform:&v134];

    v77 = [v72 titleLabel];
    if (v77)
    {
      CGAffineTransformMakeScale(&v134, -1.0, 1.0);
      [v77 setTransform:&v134];
    }

    v78 = [v72 imageView];

    if (v78)
    {
      CGAffineTransformMakeScale(&v134, -1.0, 1.0);
      [v78 setTransform:&v134];

      (*(v131 + 8))(v59, v132);
    }

    else
    {
      (*(v131 + 8))(v59, v132);
    }

    v111 = v72;
    sub_1007641DC();
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v43 = *v33;
    v44 = sub_10000A5D4(&qword_1009453E8, &unk_100788D00);
    sub_100023AD0(v33 + *(v44 + 48), v12, &qword_100945140, &unk_100787540);
    sub_100016E2C(v12, v9, &qword_100945140, &unk_100787540);
    v45 = objc_allocWithZone(type metadata accessor for AccountButton(0));
    v46 = v130;

    sub_100070D70(v43, v9, v46);

    sub_10000CFBC(v12, &qword_100945140, &unk_100787540);
  }

  else
  {
    v89 = *v33;
    v90 = v33[1];
    v91 = objc_allocWithZone(type metadata accessor for CountBadgeView());
    sub_10026A064(1, v89, v90);
  }
}

void sub_100528FA8(void *a1)
{
  v2 = v1;
  v42 = a1;
  v3 = sub_10076DD3C();
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  __chkstk_darwin(v9);
  v10 = sub_10076DA7C();
  v40 = *(v10 - 8);
  v41 = v10;
  __chkstk_darwin(v10);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076048C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Accessory(0);
  __chkstk_darwin(v16);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = v2;
  sub_10024DFF0(v2, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 8)
  {
    if (EnumCaseMultiPayload == 10)
    {
      (*(v13 + 104))(v15, enum case for SystemImage.chevronForward(_:), v12);
      v36 = sub_10076046C();
      (*(v13 + 8))(v15, v12);
      [v36 size];

      return;
    }

    if (EnumCaseMultiPayload != 9)
    {
      goto LABEL_11;
    }

    v28 = objc_opt_self();
    v29 = sub_10076FF6C();
    v30 = [v28 kitImageNamed:v29];

    if (!v30)
    {
      __break(1u);
      return;
    }

    [v30 size];
LABEL_15:

    return;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v33 = *v18;
    v34 = v18[1];
    v35 = objc_allocWithZone(type metadata accessor for CountBadgeView());
    v30 = sub_10026A064(1, v33, v34);
    [v30 sizeThatFits:{0.0, 0.0}];
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 5)
  {
    sub_10076DD2C();
    if (qword_100940A18 != -1)
    {
      swift_once();
    }

    v20 = sub_10076D3DC();
    sub_10000A61C(v20, qword_1009A0C58);
    sub_10076DCFC();
    v21 = *(v37 + 8);
    v21(v5, v3);
    sub_10076DD1C();
    v21(v8, v3);
    sub_10076DA5C();
    v22 = v38;
    sub_10076DA9C();
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1007841E0;
    v24 = v42;
    *(v23 + 32) = v42;
    v25 = v24;
    v26 = sub_10076DEEC();
    v27 = v41;
    sub_10076D2AC();

    (*(v40 + 8))(v22, v27);
    return;
  }

LABEL_11:
  if (qword_1009412D8 != -1)
  {
    swift_once();
  }

  v31 = sub_10076FD4C();
  sub_10000A61C(v31, qword_1009A25D0);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783C60;
  sub_10076F27C();
  v43[3] = v16;
  v32 = sub_10000DB7C(v43);
  sub_10024DFF0(v39, v32);
  sub_10076F30C();
  sub_10000CFBC(v43, &unk_1009434C0, &qword_100783F60);
  sub_10076F27C();
  sub_10076FBDC();

  sub_100036758(v18);
}

void sub_100529668(uint64_t a1)
{
  v56 = a1;
  v1 = sub_10075F37C();
  v54 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&qword_100945140, &unk_100787540);
  __chkstk_darwin(v4 - 8);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  v10 = sub_10076D3DC();
  v53 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v19 = type metadata accessor for Accessory(0);
  __chkstk_darwin(v19);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10024DFF0(v55, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        sub_10077176C(4uLL);
      }

      else if (EnumCaseMultiPayload == 9)
      {
        sub_10077176C(5uLL);
      }

      else
      {
        sub_10077176C(6uLL);
      }

      return;
    }

    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v23 = *v21;
        v24 = *(v21 + 1);
        v25 = *(v21 + 2);
        sub_10077176C(9uLL);
        v57 = v23;
        sub_10076C02C();
        sub_10052BE20(&qword_10094E848, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
        sub_10076FEBC();
        if (v24 == 0.0)
        {
          v26 = 0.0;
        }

        else
        {
          v26 = v24;
        }

        sub_10077178C(*&v26);
        if (v25 == 0.0)
        {
          v27 = 0.0;
        }

        else
        {
          v27 = v25;
        }

        sub_10077178C(*&v27);

        return;
      }

      v43 = *(v21 + 2);
      v44 = *(v21 + 3);
      v45 = *(v21 + 4);
      v46 = *(v21 + 6);
      sub_10077176C(0xAuLL);
      sub_10077008C();

      sub_100770EFC();
      sub_10077176C(v44);
      if (v45)
      {
        sub_10077177C(1u);
        v47 = v45;
        sub_100770EFC();

        if (v46)
        {
LABEL_37:
          sub_10077177C(1u);
          sub_10077008C();

LABEL_53:

          return;
        }
      }

      else
      {
        sub_10077177C(0);
        if (v46)
        {
          goto LABEL_37;
        }
      }

      sub_10077177C(0);
      goto LABEL_53;
    }

    v39 = *(v21 + 1);
    sub_10077176C(8uLL);
    if (v39)
    {
LABEL_32:
      sub_10077177C(1u);
      sub_10077008C();

      return;
    }

LABEL_41:
    sub_10077177C(0);
    return;
  }

  v52 = v15;
  v55 = v12;
  v28 = v54;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v41 = *(v21 + 1);
      v42 = sub_10000A5D4(&qword_10095C8F0, &qword_1007AA088);
      sub_100023AD0(&v21[*(v42 + 48)], v18, &unk_100943250, &unk_1007841D0);
      sub_10077176C(1uLL);
      if (v41)
      {
        sub_10077177C(1u);
        sub_10077008C();
      }

      else
      {
        sub_10077177C(0);
      }

      v48 = v10;
      v50 = v52;
      v49 = v53;
      v51 = v55;
      sub_100016E2C(v18, v52, &unk_100943250, &unk_1007841D0);
      if ((*(v49 + 48))(v50, 1, v48) == 1)
      {
        sub_10077177C(0);
      }

      else
      {
        (*(v49 + 32))(v51, v50, v48);
        sub_10077177C(1u);
        sub_10052BE20(&qword_10095C928, &type metadata accessor for FontUseCase, &protocol conformance descriptor for FontUseCase);
        sub_10076FEBC();
        (*(v49 + 8))(v51, v48);
      }

      sub_10000CFBC(v18, &unk_100943250, &unk_1007841D0);
      return;
    }

    v32 = *(v21 + 1);
    v33 = *(v21 + 2);
    v34 = *(v21 + 4);
    sub_10077176C(0);
    if (v32)
    {
      sub_10077177C(1u);
      sub_10077008C();

      if (v33)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_10077177C(0);
      if (v33)
      {
LABEL_23:
        sub_10077177C(1u);
        v35 = v33;
        sub_100770EFC();

        if (v34)
        {
LABEL_24:
          sub_10077177C(1u);
          sub_10077008C();

          return;
        }

LABEL_45:
        sub_10077177C(0);

        return;
      }
    }

    sub_10077177C(0);
    if (v34)
    {
      goto LABEL_24;
    }

    goto LABEL_45;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v36 = *(v21 + 2);
    v37 = *(v21 + 3);
    sub_10077176C(2uLL);
    sub_10077008C();

    sub_100770EFC();
    v38 = 0.0;
    if (v37 != 0.0)
    {
      v38 = v37;
    }

    sub_10077178C(*&v38);
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      v40 = *(v21 + 1);
      sub_10077176C(7uLL);
      if (v40)
      {
        goto LABEL_32;
      }

      goto LABEL_41;
    }

    v29 = v9;
    v30 = *v21;
    v31 = sub_10000A5D4(&qword_1009453E8, &unk_100788D00);
    sub_100023AD0(&v21[*(v31 + 48)], v29, &qword_100945140, &unk_100787540);
    sub_10077176C(3uLL);
    sub_10077177C(v30);
    sub_100016E2C(v29, v6, &qword_100945140, &unk_100787540);
    if ((*(v28 + 48))(v6, 1, v1) == 1)
    {
      sub_10077177C(0);
    }

    else
    {
      (*(v28 + 32))(v3, v6, v1);
      sub_10077177C(1u);
      sub_10052BE20(&qword_10095C920, &type metadata accessor for StoreTab, &protocol conformance descriptor for StoreTab);
      sub_10076FEBC();
      (*(v28 + 8))(v3, v1);
    }

    sub_10000CFBC(v29, &qword_100945140, &unk_100787540);
  }
}

Swift::Int sub_100529F4C()
{
  sub_10077175C();
  sub_100529668(v1);
  return sub_1007717AC();
}

Swift::Int sub_100529F90(uint64_t a1)
{
  sub_10077175C();
  sub_100529668(v2);
  return sub_1007717AC();
}

void *sub_100529FCC(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for Accessory(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v10 = (v42 - v9);
  v11 = *(v1 + 32);
  v12 = *(v11 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    return v13;
  }

  v42[1] = v8;
  v45 = _swiftEmptyArrayStorage;
  sub_1007714EC();
  v14 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v15 = *(v4 + 72);
  while (1)
  {
    sub_10024DFF0(v14, v10);
    swift_beginAccess();
    v18 = *(v2 + 40);
    if (*(v18 + 16))
    {
      v19 = sub_100610020(v10);
      if (v20)
      {
        v21 = *(*(v18 + 56) + 8 * v19);
        swift_endAccess();
        v22 = v21;
        goto LABEL_5;
      }
    }

    swift_endAccess();
    sub_100527CDC(v43);
    v24 = v23;
    sub_10024DFF0(v10, v6);
    swift_beginAccess();
    v25 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *(v2 + 40);
    v27 = v44;
    *(v2 + 40) = 0x8000000000000000;
    v28 = sub_100610020(v6);
    v30 = v27[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      break;
    }

    v34 = v29;
    if (v27[3] < v33)
    {
      sub_100246940(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_100610020(v6);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_23;
      }

LABEL_14:
      v36 = v44;
      if ((v34 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_3;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v40 = v28;
    sub_10024BC64();
    v28 = v40;
    v36 = v44;
    if ((v34 & 1) == 0)
    {
LABEL_15:
      v36[(v28 >> 6) + 8] |= 1 << v28;
      v37 = v28;
      sub_10024DFF0(v6, v36[6] + v28 * v15);
      *(v36[7] + 8 * v37) = v25;
      v38 = v36[2];
      v32 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v32)
      {
        goto LABEL_22;
      }

      v36[2] = v39;
      goto LABEL_4;
    }

LABEL_3:
    v16 = v36[7];
    v17 = *(v16 + 8 * v28);
    *(v16 + 8 * v28) = v25;

LABEL_4:
    sub_100036758(v6);
    *(v2 + 40) = v36;
    swift_endAccess();
LABEL_5:
    sub_100036758(v10);
    sub_1007714CC();
    sub_1007714FC();
    sub_10077150C();
    sub_1007714DC();
    v14 += v15;
    if (!--v12)
    {
      return v45;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1007716DC();
  __break(1u);
  return result;
}

uint64_t sub_10052A2E8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (sub_1007706EC())
  {
    return a2;
  }

  else
  {
    return a3;
  }
}

uint64_t sub_10052A324()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Accessory(uint64_t a1)
{
  result = qword_10095C868;
  if (!qword_10095C868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10052A3EC(uint64_t a1)
{
  sub_10052A4E8(319);
  if (v1 <= 0x3F)
  {
    sub_10052A578(319);
    if (v2 <= 0x3F)
    {
      sub_10052A604(319);
      if (v3 <= 0x3F)
      {
        sub_10052A688(319);
        if (v4 <= 0x3F)
        {
          sub_10052A700(319, &qword_10095C898);
          if (v5 <= 0x3F)
          {
            sub_10052A700(319, &qword_10095C8A0);
            if (v7 <= 0x3F)
            {
              sub_10052A748(319, v6);
              if (v8 <= 0x3F)
              {
                sub_10052A7BC(319);
                if (v9 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10052A4E8(uint64_t a1)
{
  if (!qword_10095C878)
  {
    sub_10000CE78(&unk_100943470, &qword_10078C740);
    sub_10000CE78(&qword_100946798, &qword_1007890C0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_10095C878);
    }
  }
}

void sub_10052A578(uint64_t a1)
{
  if (!qword_10095C880)
  {
    sub_10000CE78(&unk_100943470, &qword_10078C740);
    sub_10000CE78(&unk_100943250, &unk_1007841D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10095C880);
    }
  }
}

void sub_10052A604(uint64_t a1)
{
  if (!qword_10095C888)
  {
    sub_100016F40(255, &qword_10094F610, UIImage_ptr);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_10095C888);
    }
  }
}

void sub_10052A688(uint64_t a1)
{
  if (!qword_10095C890)
  {
    sub_10000CE78(&qword_100945140, &unk_100787540);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10095C890);
    }
  }
}

void sub_10052A700(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1001962D4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_10052A748(uint64_t a1, __n128 a2)
{
  if (!qword_10095C8A8)
  {
    sub_10076C02C();
    type metadata accessor for CGSize(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_10095C8A8);
    }
  }
}

void sub_10052A7BC(uint64_t a1)
{
  if (!qword_10095C8B0)
  {
    __chkstk_darwin(a1);
    sub_100016F40(255, &qword_100942F00, UIFont_ptr);
    type metadata accessor for SymbolScale(255);
    sub_10000CE78(&qword_100946798, &qword_1007890C0);
    sub_10000CE78(&unk_100943470, &qword_10078C740);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_10095C8B0);
    }
  }
}

unint64_t sub_10052A97C()
{
  result = qword_10095C8E8;
  if (!qword_10095C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095C8E8);
  }

  return result;
}

BOOL sub_10052A9D0(uint64_t a1, double *a2)
{
  v187 = a1;
  v188 = a2;
  v175 = sub_10075F37C();
  v186 = *(v175 - 8);
  __chkstk_darwin(v175);
  v170 = &v169 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_10000A5D4(&qword_10095C8F8, &qword_1007AA090);
  __chkstk_darwin(v185);
  v184 = &v169 - v3;
  v4 = sub_10000A5D4(&qword_100945140, &unk_100787540);
  __chkstk_darwin(v4 - 8);
  v172 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v179 = &v169 - v7;
  __chkstk_darwin(v8);
  v180 = &v169 - v9;
  v10 = sub_10076D3DC();
  v173 = *(v10 - 8);
  v174 = v10;
  __chkstk_darwin(v10);
  v177 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_10000A5D4(&qword_10095C900, &qword_1007AA098);
  __chkstk_darwin(v176);
  v183 = &v169 - v12;
  v13 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v13 - 8);
  v171 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v178 = &v169 - v16;
  __chkstk_darwin(v17);
  v182 = &v169 - v18;
  v19 = type metadata accessor for Accessory(0);
  __chkstk_darwin(v19);
  v21 = (&v169 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v181 = &v169 - v23;
  __chkstk_darwin(v24);
  v26 = (&v169 - v25);
  __chkstk_darwin(v27);
  v29 = (&v169 - v28);
  __chkstk_darwin(v30);
  v32 = &v169 - v31;
  __chkstk_darwin(v33);
  v35 = &v169 - v34;
  __chkstk_darwin(v36);
  v38 = (&v169 - v37);
  __chkstk_darwin(v39);
  v41 = (&v169 - v40);
  v42 = sub_10000A5D4(&qword_10095C908, qword_1007AA0A0);
  __chkstk_darwin(v42 - 8);
  v44 = &v169 - v43;
  v46 = (&v169 + *(v45 + 56) - v43);
  sub_10024DFF0(v187, &v169 - v43);
  v47 = v188;
  v188 = v46;
  sub_10024DFF0(v47, v46);
  v189 = v44;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v58 = v32;
    v60 = v185;
    v59 = v186;
    v61 = v182;
    v62 = v183;
    v63 = v184;
    if (EnumCaseMultiPayload > 1)
    {
      v64 = v189;
      if (EnumCaseMultiPayload == 2)
      {
        sub_10024DFF0(v189, v35);
        v85 = *v35;
        v84 = *(v35 + 1);
        v86 = *(v35 + 2);
        v87 = *(v35 + 3);
        v88 = v188;
        if (swift_getEnumCaseMultiPayload() != 2)
        {

          goto LABEL_61;
        }

        v89 = *(v88 + 2);
        v90 = v88[3];
        if (v85 == *v88 && v84 == *(v88 + 1))
        {
        }

        else
        {
          v129 = sub_10077167C();

          if ((v129 & 1) == 0)
          {

            goto LABEL_98;
          }
        }

        sub_100016F40(0, &qword_10094D040, NSObject_ptr);
        v130 = sub_100770EEC();

        if (v130)
        {
          v56 = v87 == v90;
          v57 = v64;
LABEL_73:
          sub_100036758(v57);
          return v56;
        }

        goto LABEL_98;
      }

      v65 = v188;
      if (EnumCaseMultiPayload == 3)
      {
        v66 = v58;
        sub_10024DFF0(v189, v58);
        v67 = *(sub_10000A5D4(&qword_1009453E8, &unk_100788D00) + 48);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          sub_10000CFBC(&v66[v67], &qword_100945140, &unk_100787540);
          goto LABEL_61;
        }

        v68 = *v66;
        v69 = *v65;
        v70 = &v66[v67];
        v71 = v180;
        sub_100023AD0(v70, v180, &qword_100945140, &unk_100787540);
        v72 = v65 + v67;
        v73 = v179;
        sub_100023AD0(v72, v179, &qword_100945140, &unk_100787540);
        if (v68 == v69)
        {
          v131 = *(v60 + 48);
          v132 = v63;
          sub_100016E2C(v71, v63, &qword_100945140, &unk_100787540);
          v133 = v131;
          sub_100016E2C(v73, v132 + v131, &qword_100945140, &unk_100787540);
          v134 = v59;
          v135 = *(v59 + 48);
          v136 = v175;
          if (v135(v132, 1, v175) == 1)
          {
            sub_10000CFBC(v73, &qword_100945140, &unk_100787540);
            sub_10000CFBC(v71, &qword_100945140, &unk_100787540);
            if (v135(v132 + v133, 1, v136) == 1)
            {
              sub_10000CFBC(v132, &qword_100945140, &unk_100787540);
              goto LABEL_116;
            }
          }

          else
          {
            v145 = v172;
            sub_100016E2C(v132, v172, &qword_100945140, &unk_100787540);
            if (v135(v132 + v133, 1, v136) != 1)
            {
              v158 = v132 + v133;
              v159 = v145;
              v160 = v170;
              (*(v134 + 32))(v170, v158, v136);
              sub_10052BE20(&qword_10095C910, &type metadata accessor for StoreTab, &protocol conformance descriptor for StoreTab);
              v161 = sub_10076FF1C();
              v162 = *(v134 + 8);
              v162(v160, v136);
              sub_10000CFBC(v179, &qword_100945140, &unk_100787540);
              sub_10000CFBC(v180, &qword_100945140, &unk_100787540);
              v162(v159, v136);
              sub_10000CFBC(v132, &qword_100945140, &unk_100787540);
              if (v161)
              {
                goto LABEL_116;
              }

              goto LABEL_98;
            }

            sub_10000CFBC(v179, &qword_100945140, &unk_100787540);
            sub_10000CFBC(v180, &qword_100945140, &unk_100787540);
            (*(v134 + 8))(v145, v136);
          }

          v75 = &qword_10095C8F8;
          v76 = &qword_1007AA090;
          v74 = v132;
        }

        else
        {
          sub_10000CFBC(v73, &qword_100945140, &unk_100787540);
          v74 = v71;
          v75 = &qword_100945140;
          v76 = &unk_100787540;
        }

        sub_10000CFBC(v74, v75, v76);
        goto LABEL_98;
      }

      sub_10024DFF0(v189, v29);
      v96 = *v29;
      v95 = v29[1];
      v97 = swift_getEnumCaseMultiPayload();
      if (v97 == 4)
      {
        v92 = *(v65 + 1);
        if (v95)
        {
          if (v92)
          {
            v93 = *v65;
            goto LABEL_40;
          }

LABEL_64:

          goto LABEL_98;
        }

LABEL_63:
        if (!v92)
        {
          goto LABEL_116;
        }

        goto LABEL_64;
      }

LABEL_43:

      goto LABEL_61;
    }

    v77 = v189;
    if (!EnumCaseMultiPayload)
    {
      sub_10024DFF0(v189, v41);
      v79 = *v41;
      v78 = v41[1];
      v81 = v41[2];
      v80 = v41[3];
      v82 = v41[4];
      v83 = v188;
      if (swift_getEnumCaseMultiPayload())
      {
        v64 = v77;

        goto LABEL_61;
      }

      v126 = *(v83 + 1);
      v125 = *(v83 + 2);
      v128 = *(v83 + 3);
      v127 = *(v83 + 4);
      if (v78)
      {
        if (v126)
        {
          if (v79 == *v188 && v78 == v126)
          {

            goto LABEL_110;
          }

          v154 = sub_10077167C();

          if (v154)
          {
LABEL_110:
            if (v81)
            {
              if (!v125)
              {

                goto LABEL_128;
              }

              sub_100016F40(0, &qword_100942F10, UIColor_ptr);
              v155 = v81;
              v156 = v125;
              v157 = sub_100770EEC();

              if ((v157 & 1) == 0)
              {

LABEL_128:

                goto LABEL_142;
              }
            }

            else if (v125)
            {

              goto LABEL_143;
            }

            if (v82)
            {
              if (!v127)
              {

                goto LABEL_142;
              }

              if (v80 == v128 && v82 == v127)
              {

                v163 = v189;
                goto LABEL_117;
              }

              v167 = sub_10077167C();

              if ((v167 & 1) == 0)
              {
                goto LABEL_143;
              }
            }

            else
            {

              if (v127)
              {
                goto LABEL_142;
              }
            }

            v163 = v189;
            goto LABEL_117;
          }
        }

        else
        {
        }

        goto LABEL_143;
      }

      if (v126)
      {

LABEL_142:

        goto LABEL_143;
      }

      goto LABEL_110;
    }

    sub_10024DFF0(v189, v38);
    v99 = *v38;
    v98 = v38[1];
    v100 = *(sub_10000A5D4(&qword_10095C8F0, &qword_1007AA088) + 48);
    v101 = v188;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_10000CFBC(v38 + v100, &unk_100943250, &unk_1007841D0);

      v64 = v189;
      goto LABEL_61;
    }

    v102 = v101[1];
    v187 = *v101;
    sub_100023AD0(v38 + v100, v61, &unk_100943250, &unk_1007841D0);
    v103 = v178;
    sub_100023AD0(v101 + v100, v178, &unk_100943250, &unk_1007841D0);
    if (v98)
    {
      if (v102)
      {
        v104 = v62;
        if (v99 == v187 && v98 == v102)
        {

          v105 = v176;
          v106 = v177;
          goto LABEL_101;
        }

        v146 = sub_10077167C();

        v105 = v176;
        v106 = v177;
        if (v146)
        {
LABEL_101:
          v147 = *(v105 + 48);
          sub_100016E2C(v61, v104, &unk_100943250, &unk_1007841D0);
          sub_100016E2C(v103, v104 + v147, &unk_100943250, &unk_1007841D0);
          v148 = v173;
          v149 = v174;
          v150 = *(v173 + 48);
          if (v150(v104, 1, v174) == 1)
          {
            sub_10000CFBC(v103, &unk_100943250, &unk_1007841D0);
            sub_10000CFBC(v61, &unk_100943250, &unk_1007841D0);
            v151 = v150(v104 + v147, 1, v149);
            v152 = v189;
            if (v151 == 1)
            {
              sub_10000CFBC(v104, &unk_100943250, &unk_1007841D0);
LABEL_126:
              v163 = v152;
              goto LABEL_117;
            }
          }

          else
          {
            v153 = v171;
            sub_100016E2C(v104, v171, &unk_100943250, &unk_1007841D0);
            if (v150(v104 + v147, 1, v149) != 1)
            {
              (*(v148 + 32))(v106, v104 + v147, v149);
              sub_10052BE20(&qword_10095C918, &type metadata accessor for FontUseCase, &protocol conformance descriptor for FontUseCase);
              v164 = v148;
              v165 = sub_10076FF1C();
              v166 = *(v164 + 8);
              v166(v106, v149);
              sub_10000CFBC(v178, &unk_100943250, &unk_1007841D0);
              sub_10000CFBC(v61, &unk_100943250, &unk_1007841D0);
              v166(v153, v149);
              sub_10000CFBC(v104, &unk_100943250, &unk_1007841D0);
              v152 = v189;
              if (v165)
              {
                goto LABEL_126;
              }

LABEL_107:
              sub_100036758(v152);
              return 0;
            }

            sub_10000CFBC(v178, &unk_100943250, &unk_1007841D0);
            sub_10000CFBC(v61, &unk_100943250, &unk_1007841D0);
            (*(v148 + 8))(v153, v149);
            v152 = v189;
          }

          sub_10000CFBC(v104, &qword_10095C900, &qword_1007AA098);
          goto LABEL_107;
        }

LABEL_90:
        sub_10000CFBC(v103, &unk_100943250, &unk_1007841D0);
        sub_10000CFBC(v61, &unk_100943250, &unk_1007841D0);
        goto LABEL_143;
      }
    }

    else
    {
      v104 = v62;
      v105 = v176;
      v106 = v177;
      if (!v102)
      {
        goto LABEL_101;
      }
    }

    goto LABEL_90;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      v94 = swift_getEnumCaseMultiPayload();
      v64 = v189;
      if (v94 != 8)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v64 = v189;
      if (EnumCaseMultiPayload == 9)
      {
        if (swift_getEnumCaseMultiPayload() != 9)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v123 = swift_getEnumCaseMultiPayload();
        if (v123 != 10)
        {
          goto LABEL_61;
        }
      }
    }

    goto LABEL_116;
  }

  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v49 = v181;
      sub_10024DFF0(v189, v181);
      v51 = *(v49 + 8);
      v50 = *(v49 + 16);
      v52 = v188;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v54 = v52[1];
        v53 = v52[2];
        sub_10076C02C();
        v55 = sub_10076BE5C();

        if (v55)
        {
          v56 = v50 == v53 && v51 == v54;
          v57 = v189;
          goto LABEL_73;
        }

        goto LABEL_143;
      }

      v64 = v189;
      goto LABEL_61;
    }

    v107 = v189;
    sub_10024DFF0(v189, v21);
    v108 = *v21;
    v109 = v21[1];
    v110 = v21[2];
    v111 = v21[3];
    v112 = v21[4];
    v113 = v21[5];
    v114 = v21[6];
    v115 = v188;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v116 = v114;
      v187 = v113;
      v117 = *v115;
      v118 = *(v115 + 1);
      v119 = v115;
      v121 = *(v115 + 2);
      v120 = *(v115 + 3);
      v122 = *(v119 + 4);
      v186 = *(v119 + 5);
      v188 = *(v119 + 6);
      if (v108 == v117 && v109 == v118)
      {

LABEL_78:
        sub_100016F40(0, &qword_10094D040, NSObject_ptr);
        v138 = sub_100770EEC();
        v139 = v189;
        if ((v138 & 1) != 0 && v111 == v120)
        {
          if (v112)
          {
            if (!v122)
            {

              goto LABEL_137;
            }

            sub_100016F40(0, &qword_100942F10, UIColor_ptr);
            v140 = v112;
            v141 = v122;
            v142 = v122;
            v143 = sub_100770EEC();

            if ((v143 & 1) == 0)
            {

LABEL_137:

LABEL_138:

              goto LABEL_85;
            }

LABEL_131:
            if (v116)
            {
              if (!v188)
              {

                goto LABEL_138;
              }

              if (v187 == v186 && v116 == v188)
              {

                v163 = v139;
                goto LABEL_117;
              }

              v168 = sub_10077167C();

              if ((v168 & 1) == 0)
              {
                goto LABEL_85;
              }
            }

            else
            {

              if (v188)
              {
                goto LABEL_138;
              }
            }

            v163 = v139;
            goto LABEL_117;
          }

          v141 = v122;
          if (!v122)
          {
            goto LABEL_131;
          }
        }

        else
        {
        }

LABEL_85:
        sub_100036758(v139);
        return 0;
      }

      v137 = sub_10077167C();

      if (v137)
      {
        goto LABEL_78;
      }

LABEL_143:
      sub_100036758(v189);
      return 0;
    }

    v64 = v107;
LABEL_61:
    sub_10000CFBC(v64, &qword_10095C908, qword_1007AA0A0);
    return 0;
  }

  v64 = v189;
  sub_10024DFF0(v189, v26);
  v96 = *v26;
  v95 = v26[1];
  v91 = v188;
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    goto LABEL_43;
  }

  v92 = *(v91 + 1);
  if (!v95)
  {
    goto LABEL_63;
  }

  if (!v92)
  {
    goto LABEL_64;
  }

  v93 = *v91;
LABEL_40:
  if (v96 != v93 || v95 != v92)
  {
    v144 = sub_10077167C();

    if (v144)
    {
      goto LABEL_116;
    }

LABEL_98:
    sub_100036758(v64);
    return 0;
  }

LABEL_116:
  v163 = v64;
LABEL_117:
  sub_100036758(v163);
  return 1;
}

uint64_t sub_10052BE20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10052BE68(uint64_t a1)
{
  v1 = sub_10075EBAC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076B96C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10075F19C())
  {
    sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
    sub_10076F64C();
    sub_10076FC1C();
    v12 = v1;
    swift_getObjectType();
    sub_10075F1DC();
    sub_10076BB7C();

    sub_10075EE2C();
    (*(v6 + 8))(v8, v5);
    swift_getObjectType();
    sub_10075F1DC();
    sub_10076BA7C();

    sub_10075ED2C();
    v9 = sub_10075EB5C();
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

id sub_10052C0C8(char *a1, char a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v10 = sub_10000A5D4(&qword_100943190, qword_100798490);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &v27 - v12;
  if ((a2 & 1) == 0)
  {
    v28 = a4;
    [a1 frame];
    [v5 setFrame:?];
    v14 = *&v5[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingImageView];
    v15 = *&a1[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingImageView];
    [v15 frame];
    [v14 setFrame:?];
    [v14 setHidden:{objc_msgSend(v15, "isHidden")}];
    v16 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_10003267C(&v15[v16], v13);
    v17 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_1003EAED8(v13, v14 + v17);
    swift_endAccess();
    v18 = [*&v15[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView] image];
    if (v18)
    {
      v19 = &v15[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize];
      if ((v15[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize + 16] & 1) != 0 || (v20 = *&v15[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkLayoutWithMetrics]) == 0)
      {
      }

      else
      {
        v21 = *v19;
        v27 = v19[1];
        v22 = v18;

        v23 = v22;
        sub_1003955EC(v22, v21, v27, 0, v20, a3, v28);
      }
    }

    v24 = *&v5[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingVideoView];
    v25 = *&a1[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingVideoView];
    [v25 frame];
    [v24 setFrame:?];
    [v24 setHidden:{objc_msgSend(v25, "isHidden")}];
  }

  return [v5 setHidden:{objc_msgSend(a1, "isHidden", v11)}];
}

char *sub_10052C358(char *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_sourceView] = a1;
  v5 = *&a1[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView];
  v6 = type metadata accessor for RevealingImageMirrorView(0);
  v21.receiver = objc_allocWithZone(v6);
  v21.super_class = v6;
  v7 = a1;
  v8 = v5;
  v9 = objc_msgSendSuper2(&v21, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  if (qword_10093F488 != -1)
  {
    swift_once();
  }

  v20[4] = *&byte_10099C930[64];
  v20[5] = *&byte_10099C930[80];
  v20[6] = *&byte_10099C930[96];
  v20[7] = *&byte_10099C930[112];
  v20[0] = *byte_10099C930;
  v20[1] = *&byte_10099C930[16];
  v20[2] = *&byte_10099C930[32];
  v20[3] = *&byte_10099C930[48];
  [v10 setTransform:v20];

  v11 = &v8[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_mirrorDelegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v11 + 1) = &off_100884870;
  swift_unknownObjectWeakAssign();
  sub_100394AF0(Strong);

  *&v2[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingImageView] = v9;
  v13 = *&v7[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView];
  v14 = objc_allocWithZone(type metadata accessor for RevealingVideoMirrorView(0));
  *&v2[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingVideoView] = sub_1006C4F8C(v13);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = *&v15[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingImageView];
  v17 = v15;
  [v17 addSubview:v16];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingVideoView]];
  [v17 setClipsToBounds:1];

  return v17;
}

id sub_10052C608()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingImageView];
  [v0 bounds];
  MidX = CGRectGetMidX(v14);
  v3 = OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_sourceView;
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_sourceView] frame];
  v4 = MidX - CGRectGetWidth(v15) * 0.5;
  [v0 bounds];
  MinX = CGRectGetMinX(v16);
  [*&v0[v3] frame];
  Width = CGRectGetWidth(v17);
  [*&v0[v3] frame];
  [v1 setFrame:{v4, MinX, Width, CGRectGetHeight(v18)}];
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension24StoryCardMediaMirrorView_revealingVideoView];
  [v0 bounds];
  v8 = CGRectGetMidX(v19);
  [*&v0[v3] frame];
  v9 = v8 - CGRectGetWidth(v20) * 0.5;
  [v0 bounds];
  v10 = CGRectGetMinX(v21);
  [*&v0[v3] frame];
  v11 = CGRectGetWidth(v22);
  [*&v0[v3] frame];
  return [v7 setFrame:{v9, v10, v11, CGRectGetHeight(v23)}];
}

uint64_t sub_10052C890(uint64_t a1, char a2)
{
  v63 = a1;
  v66 = sub_10000A5D4(&qword_10095B618, qword_1007A9118);
  v73 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = v51 - v3;
  v4 = sub_10000A5D4(&qword_100942900, &unk_10078A660);
  __chkstk_darwin(v4 - 8);
  v70 = v51 - v5;
  v74 = sub_10076C2DC();
  v6 = *(v74 - 8);
  __chkstk_darwin(v74);
  v8 = (v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  __chkstk_darwin(v9 - 8);
  v69 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v51 - v12;
  __chkstk_darwin(v14);
  v16 = v51 - v15;
  __chkstk_darwin(v17);
  v19 = v51 - v18;
  if (a2)
  {
    v20 = 1.1;
  }

  else
  {
    v20 = 1.0;
  }

  sub_10000A5D4(&qword_100942910, &unk_10078A670);
  v21 = *(sub_10076C20C() - 8);
  v72 = *(v21 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v58 = v23;
  *(v23 + 16) = xmmword_1007844F0;
  v24 = v23 + v22;
  v77 = *&v20;
  sub_10001E290();
  sub_10076C29C();
  v77 = 0x4020000000000000;
  v75 = 0x4030000000000000;
  sub_10076C27C();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #16.0 }

  *v8 = _Q0;
  v67 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v30 = *(v6 + 104);
  v68 = v6 + 104;
  v71 = v30;
  (v30)(v8);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  LOBYTE(v77) = 0;
  sub_10076C29C();
  v77 = 0;
  sub_10076C29C();
  v65 = v24;
  v51[1] = v19;
  v64 = v16;
  v59 = v13;
  sub_10076C1CC();
  v77 = *&v20;
  sub_10076C29C();
  v77 = 0x4024000000000000;
  v75 = 0x4034000000000000;
  sub_10076C27C();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #20.0 }

  v34 = v8;
  *v8 = _Q0;
  v35 = v8;
  v36 = v67;
  v37 = v71;
  v71(v35, v67, v74);
  LOBYTE(v77) = 0;
  sub_10076C29C();
  v77 = 0;
  sub_10076C29C();
  v38 = v72;
  top = UIEdgeInsetsZero.top;
  v55 = left;
  v56 = bottom;
  sub_10076C1CC();
  v61 = 2 * v38;
  v77 = *&v20;
  sub_10076C29C();
  v77 = 0x4034000000000000;
  sub_10076C29C();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  sub_10076C27C();
  v54 = vdupq_n_s64(0x4041000000000000uLL);
  *v34 = v54;
  v37(v34, v36, v74);
  LOBYTE(v77) = 0;
  sub_10076C29C();
  v77 = 0;
  sub_10076C29C();
  v39 = v61;
  v40 = v34;
  sub_10076C1CC();
  v79 = 0x4000000000000000;
  v53 = v39 + v72;
  v77 = 0x3FF8000000000000;
  v78 = 0;
  v75 = *&v20;
  v76 = 0;
  v61 = sub_10050BAC4();
  v41 = v62;
  sub_10076757C();
  v42 = v66;
  sub_10076758C();
  v43 = *(v73 + 8);
  v73 += 8;
  v60 = v43;
  v43(v41, v42);
  v75 = v77;
  sub_10076C29C();
  v77 = 0x4034000000000000;
  sub_10076C29C();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  sub_10076C27C();
  *v40 = v54;
  v52 = v40;
  v44 = v74;
  v71(v40, v67, v74);
  sub_1007704BC();
  LOBYTE(v77) = 0;
  sub_10076C29C();
  v77 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v79 = 0x4000000000000000;
  v53 = 4 * v72;
  v77 = 0x3FF8000000000000;
  v78 = 0;
  v75 = *&v20;
  v76 = 0;
  v45 = v62;
  sub_10076757C();
  v46 = v66;
  sub_10076758C();
  v60(v45, v46);
  v75 = v77;
  sub_10076C29C();
  v77 = 0x4038000000000000;
  sub_10076C29C();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  sub_10076C27C();
  v54 = vdupq_n_s64(0x404A000000000000uLL);
  v47 = v52;
  *v52 = v54;
  v71(v47, v67, v44);
  LOBYTE(v77) = 0;
  sub_10076C29C();
  v77 = 0;
  sub_10076C29C();
  v48 = v53;
  sub_10076C1CC();
  v79 = 0x4004000000000000;
  v72 += v48;
  v77 = 0x4000000000000000;
  v78 = 0;
  v75 = 0x3FF8000000000000;
  v76 = 0;
  sub_10076757C();
  v49 = v66;
  sub_10076758C();
  v60(v45, v49);
  v75 = v77;
  sub_10076C29C();
  v77 = 0x4038000000000000;
  sub_10076C29C();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  sub_10076C27C();
  *v47 = v54;
  v71(v47, v67, v74);
  LOBYTE(v77) = 0;
  sub_10076C29C();
  v77 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  return v58;
}

uint64_t sub_10052D554(uint64_t a1)
{
  v51 = a1;
  v50 = sub_10000A5D4(&qword_10095B618, qword_1007A9118);
  v56.i64[0] = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = v41 - v1;
  v2 = sub_10000A5D4(&qword_100942900, &unk_10078A660);
  __chkstk_darwin(v2 - 8);
  v4 = v41 - v3;
  v59 = sub_10076C2DC();
  v62 = *(v59 - 8);
  __chkstk_darwin(v59);
  v6 = (v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  __chkstk_darwin(v7 - 8);
  v61 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v12 = v41 - v11;
  __chkstk_darwin(v13);
  v57 = v41 - v14;
  sub_10000A5D4(&qword_100942910, &unk_10078A670);
  v15 = *(sub_10076C20C() - 8);
  v55 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v48 = v17;
  *(v17 + 16) = xmmword_1007844F0;
  v18 = v17 + v16;
  v65 = 0x3FF0000000000000;
  sub_10001E290();
  sub_10076C29C();
  v65 = 0x4020000000000000;
  v63 = 0x4030000000000000;
  sub_10076C27C();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v58 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v62 + 104);
  v62 += 104;
  v60 = v24;
  v25 = v59;
  (v24)(v6);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v65) = 0;
  sub_10076C29C();
  v65 = 0;
  sub_10076C29C();
  v54 = v18;
  v52 = v12;
  sub_10076C1CC();
  v65 = 0x3FF0000000000000;
  sub_10076C29C();
  v65 = 0x4024000000000000;
  v63 = 0x4034000000000000;
  sub_10076C27C();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #20.0 }

  v49 = v6;
  *v6 = _Q0;
  v28 = v58;
  v29 = v60;
  v60(v6, v58, v25);
  LOBYTE(v65) = 0;
  v53 = v4;
  sub_10076C29C();
  v65 = 0;
  sub_10076C29C();
  v30 = v55;
  top = UIEdgeInsetsZero.top;
  v46 = left;
  v31 = v49;
  sub_10076C1CC();
  v44 = 2 * v30;
  v65 = 0x3FF0000000000000;
  sub_10076C29C();
  v65 = 0x4034000000000000;
  sub_10076C29C();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  sub_10076C27C();
  v42 = vdupq_n_s64(0x4041000000000000uLL);
  *v31 = v42;
  v29(v31, v28, v59);
  LOBYTE(v65) = 0;
  sub_10076C29C();
  v65 = 0;
  sub_10076C29C();
  v32 = v44;
  sub_10076C1CC();
  v67 = 0x4000000000000000;
  v33 = v55;
  v41[1] = v32 + v55;
  v65 = 0;
  v66 = 1;
  v63 = 0x3FF0000000000000;
  v64 = 0;
  v44 = sub_10050BAC4();
  v34 = v47;
  sub_10076757C();
  v35 = v50;
  sub_10076758C();
  v36 = *(v56.i64[0] + 8);
  v56.i64[0] += 8;
  v43 = v36;
  v36(v34, v35);
  v63 = v65;
  sub_10076C29C();
  v65 = 0x4034000000000000;
  sub_10076C29C();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  sub_10076C27C();
  v37 = v49;
  *v49 = v42;
  v60(v37, v58, v59);
  sub_1007704BC();
  LOBYTE(v65) = 0;
  sub_10076C29C();
  v65 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v67 = 0x4000000000000000;
  v42.i64[0] = 4 * v33;
  v65 = 0;
  v66 = 1;
  v63 = 0x3FF0000000000000;
  v64 = 0;
  sub_10076757C();
  v38 = v50;
  sub_10076758C();
  v43(v34, v38);
  v63 = v65;
  sub_10076C29C();
  v65 = 0x4038000000000000;
  sub_10076C29C();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  sub_10076C27C();
  v56 = vdupq_n_s64(0x404A000000000000uLL);
  *v37 = v56;
  v39 = v59;
  v60(v37, v58, v59);
  LOBYTE(v65) = 0;
  sub_10076C29C();
  v65 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v65 = 0x4000000000000000;
  sub_10076C29C();
  v65 = 0x4038000000000000;
  sub_10076C29C();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  sub_10076C27C();
  *v37 = v56;
  v60(v37, v58, v39);
  LOBYTE(v65) = 0;
  sub_10076C29C();
  v65 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  return v48;
}

double sub_10052E1C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076C38C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075F1FC();
  sub_10052E580(&qword_100948270, &type metadata accessor for AppEvent, &protocol conformance descriptor for AppPromotion);
  sub_10076332C();
  v7 = v19;
  if (!v19)
  {
    return 0.0;
  }

  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v9 = v8;
  v11 = v10;
  (*(v4 + 8))(v6, v3);
  v12 = sub_100630CB4();
  v13 = type metadata accessor for AppEventView(0);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_10069CFD8(v9, v11, v7, v12, a2, v13, ObjectType);
  v16 = v15;
  swift_unknownObjectRelease_n();

  return v16;
}

double sub_10052E3A8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_10076C38C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v8 = v7;
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  v11 = sub_100630CB4();
  v12 = type metadata accessor for AppEventView(0);
  sub_1007600FC();
  v13 = sub_1007600CC();
  v15 = v14;
  v16 = sub_1007600AC();
  v18 = v17;
  v19 = sub_1007600DC();
  v21 = v20;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_10069D1E0(v13, v15, v16, v18, v19, v21, v2, v11, v8, v10, v12, ObjectType);
  v24 = v23;

  swift_unknownObjectRelease_n();
  return v24;
}

uint64_t sub_10052E580(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10052E5CC()
{
  result = qword_100950A28;
  if (!qword_100950A28)
  {
    type metadata accessor for VideoCardCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950A28);
  }

  return result;
}

double sub_10052E624()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C2FC();
  v5 = v4;
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  if (qword_10093F650 != -1)
  {
    swift_once();
  }

  v8 = sub_10076462C();
  v9 = type metadata accessor for VideoCardView(0);
  ObjectType = swift_getObjectType();
  sub_1000C31A8(v5, v7, &qword_10099CD08, v8, v9, ObjectType);
  v12 = v11;
  swift_unknownObjectRelease();
  return v12;
}

double sub_10052E790()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076469C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007632FC();
  sub_10076460C();
  sub_10076C2FC();
  v9 = v8;
  v11 = v10;
  (*(v1 + 8))(v3, v0);
  if (qword_10093F650 != -1)
  {
    swift_once();
  }

  v12 = sub_10076462C();
  v13 = type metadata accessor for VideoCardView(0);
  ObjectType = swift_getObjectType();
  sub_1000C31A8(v9, v11, &qword_10099CD08, v12, v13, ObjectType);
  v16 = v15;
  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v4);
  return v16;
}

uint64_t sub_10052E9A0(uint64_t a1)
{
  result = swift_checkMetadataState();
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

id sub_10052EAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MetricsViewController(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v29.receiver = v4;
  v29.super_class = v5;
  objc_msgSendSuper2(&v29, "viewDidLoad");
  v6 = *(v4 + *((swift_isaMask & *v4) + 0x68));
  [v4 addChildViewController:v6];
  result = [v6 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  result = [v4 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = result;
  result = [v6 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = result;
  [v9 addSubview:result];

  result = [v6 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v11 = result;
  v12 = [result superview];
  if (v12)
  {
    v13 = v12;
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = objc_opt_self();
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100786040;
    v16 = [v11 leftAnchor];
    v17 = [v13 leftAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    *(v15 + 32) = v18;
    v19 = [v11 rightAnchor];
    v20 = [v13 rightAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    *(v15 + 40) = v21;
    v22 = [v11 topAnchor];
    v23 = [v13 topAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];

    *(v15 + 48) = v24;
    v25 = [v11 bottomAnchor];
    v26 = [v13 bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];

    *(v15 + 56) = v27;
    sub_10052F0E0();
    isa = sub_1007701AC().super.isa;

    [v14 activateConstraints:isa];
  }

  return [v6 didMoveToParentViewController:v4];
}

void sub_10052EE60(void *a1)
{
  v4 = a1;
  sub_10052EAAC(v4, v1, v2, v3);
}

void sub_10052EEA8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_10052F0B0();
}

id sub_10052EF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MetricsViewController(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_10052EF88(char *a1)
{
  (*(*(*((swift_isaMask & *a1) + 0x50) - 8) + 8))(&a1[*((swift_isaMask & *a1) + 0x60)]);
  v2 = *&a1[*((swift_isaMask & *a1) + 0x68)];
}

unint64_t sub_10052F0E0()
{
  result = qword_100945D78;
  if (!qword_100945D78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100945D78);
  }

  return result;
}

uint64_t sub_10052F12C(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 16) == 1)
  {
    v6 = result;
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    swift_beginAccess();
    v8 = *(v6 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 24) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_10049E878(0, v8[2] + 1, 1, v8);
      *(v6 + 24) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_10049E878((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_1000349FC;
    v12[5] = v7;
    *(v6 + 24) = v8;
    return swift_endAccess();
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

double sub_10052F24C()
{
  v1 = sub_10076F08C();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076F0CC();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 32);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10052FA88;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_100899228;
  v8 = _Block_copy(aBlock);

  sub_10076F0AC();
  v13 = _swiftEmptyArrayStorage;
  sub_1001F0EF0(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
  sub_100048C98(&qword_100945170, &unk_10094E1C0, &qword_100785D50);
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);

  return result;
}

double sub_10052F520(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 16) == 1)
    {
      *(Strong + 16) = 0;
      v3 = Strong;
      swift_beginAccess();
      v4 = *(v3 + 24);
      v5 = *(v4 + 16);
      if (v5)
      {

        v6 = v4 + 40;
        do
        {
          v7 = *(v6 - 8);

          v7(v8);

          v6 += 16;
          --v5;
        }

        while (v5);

        v9 = v3;
      }

      else
      {
        v9 = v3;
      }

      *(v9 + 24) = _swiftEmptyArrayStorage;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10052F618()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10052F67C()
{
  v9 = sub_10077067C();
  v1 = *(v9 - 8);
  __chkstk_darwin(v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10077063C();
  __chkstk_darwin(v4);
  v5 = sub_10076F0CC();
  __chkstk_darwin(v5 - 8);
  *(v0 + 16) = 0;
  *(v0 + 24) = _swiftEmptyArrayStorage;
  v6 = sub_100085204();
  v8[0] = "isScrollingAccessQueue";
  v8[1] = v6;
  sub_10076F0AC();
  v10 = _swiftEmptyArrayStorage;
  sub_1001F0EF0(&qword_10094D780, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000A5D4(&qword_10094D788, &qword_10079D930);
  sub_100048C98(&qword_10094D790, &qword_10094D788, &qword_10079D930);
  sub_1007712CC();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  *(v0 + 32) = sub_1007706AC();
  return v0;
}

double sub_10052F8DC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_10052F24C();
  }

  return result;
}

void sub_10052F8E8()
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_10052FA1C;
  *(v2 + 24) = v0;
  v4[4] = sub_1000349FC;
  v4[5] = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1001C5148;
  v4[3] = &unk_1008991D8;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

double sub_10052FA38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10052FA50()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10052FA90()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_10052FAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
    sub_10076F5AC();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v7, 1, v10) == 1)
    {

      return sub_10000CFBC(v7, &unk_100943200, &unk_100785840);
    }

    else
    {
      sub_100263BF0(a3, 1, a2, v7);

      return (*(v11 + 8))(v7, v10);
    }
  }

  return result;
}

void sub_10052FC50(uint64_t a1, char a2, Swift::Bool a3)
{
  v4 = v3;
  v17.value.super.isa = 0;
  v17.is_nil = 0;
  sub_10075FCEC(v17, a3);
  sub_10075FD2C();
  sub_100532590(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_100760BFC();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = qword_1009602D0;
    v7 = Strong;
    v8 = [*(Strong + qword_1009602D0) layer];
    [v8 removeAllAnimations];

    [*&v7[v6] setImage:0];
    type metadata accessor for VideoView(0);
    sub_100532590(&unk_100942840, type metadata accessor for VideoView, &unk_1007B40F8);
    sub_100760BFC();
  }

  v9 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupView);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
    v11 = *&v9[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
    v12 = v9;
    v13 = v11;
    v18.value.super.isa = 0;
    v18.is_nil = 0;
    sub_10075FCEC(v18, v14);

    v15 = *&v9[v10];
    sub_100760BFC();
  }
}

double sub_10052FE70(uint64_t *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = *a1;
  ObjectType = swift_getObjectType();

  return sub_100530A94(a2, a3, v13, a8, a6, v8, ObjectType);
}

double sub_10052FF80(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, double a9, double a10, uint64_t a11, int *a12)
{
  v82 = a5;
  v83 = a6;
  v92 = a3;
  v77 = a1;
  v78 = a2;
  v86 = type metadata accessor for AppEventCardLayout.Metrics(0);
  __chkstk_darwin(v86);
  v80 = v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for AppEventCardLayout(0);
  __chkstk_darwin(v87);
  v81 = (v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_10076997C();
  v74 = *(v18 - 8);
  __chkstk_darwin(v18);
  v79 = v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v76 = v72 - v21;
  __chkstk_darwin(v22);
  v72[0] = v72 - v23;
  v24 = sub_10076DDDC();
  swift_allocObject();
  v99 = sub_10076DDBC();
  swift_allocObject();
  v98 = sub_10076DDBC();
  swift_allocObject();
  v97 = sub_10076DDBC();
  swift_allocObject();
  v96 = sub_10076DDBC();
  swift_allocObject();
  v102 = sub_10076DDBC();
  swift_allocObject();
  v95 = sub_10076DDBC();
  swift_allocObject();
  v94 = sub_10076DDBC();
  swift_allocObject();
  v101 = sub_10076DDBC();
  v25 = [a8 traitCollection];
  sub_10076E20C();

  swift_allocObject();
  v85 = sub_10076DDBC();
  v26 = 0;
  v27 = 0;
  if (a7)
  {
    swift_allocObject();
    v27 = sub_10076DDBC();
    swift_allocObject();
    v26 = sub_10076DDBC();
  }

  v93 = v26;
  v84 = v27;
  v28 = [a8 traitCollection];
  v29 = [v28 preferredContentSizeCategory];
  v30 = sub_10077087C();

  v100 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_1009410E0 != -1)
  {
    swift_once();
  }

  v91 = sub_10076D3DC();
  sub_10000A61C(v91, qword_1009A2098);
  v31 = a8;
  v32 = [a8 traitCollection];
  v33 = sub_100770B3C();

  v73 = v30;
  v34 = sub_10076C04C();
  v124[3] = v34;
  v90 = sub_100532590(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v124[4] = v90;
  v35 = sub_10000DB7C(v124);
  v36 = *(*(v34 - 8) + 104);
  v89 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v88 = v36;
  v36(v35);
  sub_10076C90C();
  sub_10000CD74(v124);

  v37 = v33;
  v72[1] = ~v30;
  v38 = v72[0];
  v75 = v37;
  sub_10076996C();
  sub_10076994C();
  v39 = *(v74 + 1);
  v39(v38, v18);
  if (qword_1009410E8 != -1)
  {
    swift_once();
  }

  v74 = a12;
  sub_10000A61C(v91, qword_1009A20B0);
  v40 = [v31 traitCollection];
  v41 = sub_100770B3C();

  v123[3] = v34;
  v123[4] = v90;
  v42 = sub_10000DB7C(v123);
  v88(v42, v89, v34);
  sub_10076C90C();
  sub_10000CD74(v123);
  v92 = v31;

  v43 = v41;
  v44 = v76;
  v78 = v43;
  sub_10076996C();
  sub_10076994C();
  v39(v44, v18);
  if (qword_1009410F0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v91, qword_1009A20C8);
  v45 = [v92 traitCollection];
  v46 = sub_100770B3C();

  v122[3] = v34;
  v122[4] = v90;
  v47 = sub_10000DB7C(v122);
  v88(v47, v89, v34);
  sub_10076C90C();
  sub_10000CD74(v122);

  v48 = v46;
  v49 = v79;
  v100 = v48;
  sub_10076996C();
  sub_10076994C();
  v39(v49, v18);
  if (qword_10093F850 != -1)
  {
    swift_once();
  }

  v50 = sub_10000A61C(v86, qword_10099D2B0);
  v51 = v80;
  sub_10015B0D4(v50, v80);
  v121 = &protocol witness table for LayoutViewPlaceholder;
  v120 = v24;
  *&v119 = v99;
  v118 = &protocol witness table for LayoutViewPlaceholder;
  v117 = v24;
  v115 = &protocol witness table for LayoutViewPlaceholder;
  *&v116 = v98;
  v114 = v24;
  v112 = &protocol witness table for LayoutViewPlaceholder;
  *&v113 = v97;
  v111 = v24;
  v109 = &protocol witness table for LayoutViewPlaceholder;
  *&v110 = v96;
  v108 = v24;
  *&v107 = v102;
  sub_10000A570(v124, v106);
  sub_10000A570(v123, v105);
  sub_10000A570(v122, v103);
  v52 = v84;
  if (v84)
  {
    v53 = v24;
  }

  else
  {
    v53 = 0;
  }

  if (v84)
  {
    v54 = &protocol witness table for LayoutViewPlaceholder;
  }

  else
  {
    v54 = 0;
  }

  v90 = v54;
  v91 = v53;
  v55 = v93;
  if (v93)
  {
    v56 = &protocol witness table for LayoutViewPlaceholder;
  }

  else
  {
    v56 = 0;
  }

  if (v93)
  {
    v57 = v24;
  }

  else
  {
    v57 = 0;
  }

  v58 = v81;
  sub_10015B138(v51, v81);
  v59 = v87;
  sub_100012498(&v119, v58 + *(v87 + 20));
  sub_100012498(&v116, v58 + v59[6]);
  sub_100012498(&v113, v58 + v59[7]);
  sub_100012498(&v110, v58 + v59[8]);
  sub_100012498(&v107, v58 + v59[9]);
  v60 = (v58 + v59[10]);
  v61 = v94;
  *v60 = v95;
  v60[3] = v24;
  v60[4] = &protocol witness table for LayoutViewPlaceholder;
  v62 = (v58 + v59[11]);
  *v62 = v61;
  v62[3] = v24;
  v62[4] = &protocol witness table for LayoutViewPlaceholder;
  v63 = (v58 + v59[12]);
  *v63 = v101;
  v63[3] = v24;
  v63[4] = &protocol witness table for LayoutViewPlaceholder;
  sub_100012498(v106, v58 + v59[13]);
  sub_100012498(v105, v58 + v59[14]);
  v64 = v58 + v59[15];
  v65 = v103[1];
  *v64 = v103[0];
  *(v64 + 1) = v65;
  *(v64 + 4) = v104;
  v66 = (v58 + v59[16]);
  *v66 = v85;
  v66[3] = v24;
  v66[4] = &protocol witness table for LayoutViewPlaceholder;
  v67 = (v58 + v59[17]);
  *v67 = v52;
  v67[1] = 0;
  v68 = v90;
  v69 = v91;
  v67[2] = 0;
  v67[3] = v69;
  v67[4] = v68;
  v70 = (v58 + v59[18]);
  *v70 = v55;
  v70[1] = 0;
  v70[2] = 0;
  v70[3] = v57;
  v70[4] = v56;

  sub_1006061E0(v92, v58, v74, a9, a10);

  sub_10001D3B8(v58);
  sub_10000CD74(v122);
  sub_10000CD74(v123);
  sub_10000CD74(v124);
  return a9;
}

double sub_100530A94(double a1, double a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int *a7)
{
  v12 = sub_10075F1BC();
  v14 = v13;
  v15 = sub_10075F1AC();
  v17 = v16;
  v18 = sub_10075F1EC();
  v20 = v19;
  v21 = sub_10052BE68(a5);
  v22 = sub_10052FF80(v12, v14, v15, v17, v18, v20, v21 & 1, a4, a1, a2, a6, a7);

  return v22;
}

double sub_100530B80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v172 = a2;
  v5 = sub_10076F68C();
  v170 = *(v5 - 8);
  v171 = v5;
  __chkstk_darwin(v5);
  v169 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_10094C030, &unk_10078D680);
  __chkstk_darwin(v7 - 8);
  v166 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v165 = &v147 - v10;
  v11 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v11 - 8);
  v163 = &v147 - v12;
  v13 = sub_1007611EC();
  __chkstk_darwin(v13 - 8);
  v161 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v160 = &v147 - v16;
  v17 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v17 - 8);
  v159 = &v147 - v18;
  v157 = sub_10076121C();
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v158 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_10076481C();
  v162 = *(v164 - 8);
  __chkstk_darwin(v164);
  v168 = &v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v21 - 8);
  v148 = &v147 - v22;
  v23 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v23 - 8);
  v150 = &v147 - v24;
  v25 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v25 - 8);
  v154 = &v147 - v26;
  v27 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v27 - 8);
  v151 = &v147 - v28;
  v29 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v29 - 8);
  v152 = &v147 - v30;
  v31 = sub_10000A5D4(&unk_100945550, &unk_10078A040);
  __chkstk_darwin(v31 - 8);
  v33 = &v147 - v32;
  v34 = sub_10076A3AC();
  v149 = *(v34 - 8);
  __chkstk_darwin(v34);
  v36 = &v147 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v37 - 8);
  v153 = &v147 - v38;
  v39 = sub_10076361C();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v147 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10075F1AC();
  sub_10015818C(v43, v44);
  v45 = sub_10075F1BC();
  sub_100158198(v45, v46);
  v47 = sub_10075F1EC();
  sub_100158300(v47, v48);
  v49 = *&v2[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_mediaContentView];
  sub_10075F16C();
  v50 = sub_1007635FC();
  v51 = v39;
  v52 = v172;
  (*(v40 + 8))(v42, v51);
  v155 = v49;
  [v49 setOverrideUserInterfaceStyle:v50];
  sub_100157B38();
  v173 = a1;
  v53 = sub_10052BE68(v52);
  v167 = v3;
  if (v53)
  {
    v54 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupContainerView;
    if (!*&v3[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupContainerView])
    {
      v55 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      sub_10015AEE8();
      v56 = *&v3[v54];
      *&v3[v54] = v55;
      v57 = v55;

      sub_100158884();
    }

    v58 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupView;
    if (!*&v3[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupView])
    {
      v59 = [objc_allocWithZone(type metadata accessor for SmallLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v60 = *&v3[v58];
      if (v60)
      {
        [v60 removeFromSuperview];
        v61 = *&v3[v58];
      }

      else
      {
        v61 = 0;
      }

      *&v3[v58] = v59;
      v70 = v59;

      sub_100158A4C();
    }

    v71 = *&v3[v54];
    if (v71)
    {
      [v71 setHidden:0];
    }

    v72 = *&v3[v58];
    if (v72)
    {
      [v72 setHidden:0];
      v73 = *&v3[v58];
      if (v73)
      {
        v147 = v58;
        v74 = v73;
        v75 = sub_10075F1DC();
        v76 = v149;
        v77 = *(v149 + 104);
        v77(v36, enum case for OfferButtonPresenterViewAlignment.right(_:), v34);
        v77(v33, enum case for OfferButtonPresenterViewAlignment.left(_:), v34);
        (*(v76 + 56))(v33, 0, 1, v34);
        sub_100532590(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
        v78 = v153;
        sub_10076759C();
        v79 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
        (*(*(v79 - 8) + 56))(v78, 0, 1, v79);
        v80 = sub_10075F78C();
        v81 = v152;
        (*(*(v80 - 8) + 56))(v152, 1, 1, v80);
        v82 = sub_1007628DC();
        v83 = v151;
        (*(*(v82 - 8) + 56))(v151, 1, 1, v82);
        v84 = sub_10000A5D4(&unk_100946750, qword_100787A30);
        v85 = v154;
        (*(*(v84 - 8) + 56))(v154, 1, 1, v84);
        v86 = sub_10076C54C();
        v87 = v150;
        (*(*(v86 - 8) + 56))(v150, 1, 1, v86);
        v149 = v75;
        sub_1004D0A60(v75, v74, v78, v172, 0, 0, v81, v83, v87, v85);
        sub_10000CFBC(v87, &unk_100949290, &unk_10078BBF0);
        v74[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 1;
        sub_10026202C();
        [v74 setNeedsLayout];
        v88 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel;
        v89 = *&v74[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel];
        if (v89)
        {
          [v89 setHidden:1];
          v90 = *&v74[v88];
          if (v90)
          {
            [v90 setText:0];
          }
        }

        v91 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel;
        v92 = *&v74[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel];
        if (v92)
        {
          if (([v92 isHidden] & 1) == 0)
          {
            v93 = *&v74[v91];
            if (v93)
            {
              if ([v93 hasContent])
              {
                v94 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel;
                [*&v74[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] setHidden:1];
                [*&v74[v94] setText:0];
              }
            }
          }
        }

        v95 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel;
        if ([*&v74[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel] isHidden] || !objc_msgSend(*&v74[v95], "hasContent"))
        {

          sub_10000CFBC(v154, &qword_10094F730, qword_10078A050);
          sub_10000CFBC(v83, &unk_1009492A0, &unk_10078BC00);
          sub_10000CFBC(v81, &unk_10094D210, &qword_10078DE20);
          sub_10000CFBC(v153, &unk_100946760, &unk_100787A20);
        }

        else
        {
          v96 = *&v74[v91];
          if (v96)
          {
            [v96 setHidden:1];
            v97 = *&v74[v91];
            if (v97)
            {
              [v97 setText:0];
            }
          }

          v98 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel;
          [*&v74[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] setHidden:1];
          [*&v74[v98] setText:0];

          sub_10000CFBC(v154, &qword_10094F730, qword_10078A050);
          sub_10000CFBC(v83, &unk_1009492A0, &unk_10078BC00);
          sub_10000CFBC(v81, &unk_10094D210, &qword_10078DE20);
          sub_10000CFBC(v153, &unk_100946760, &unk_100787A20);
        }

        v99 = *&v3[v147];
        if (v99)
        {
          v100 = *(v99 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel);
          if (!v100)
          {
            goto LABEL_37;
          }

          v101 = qword_100940AD8;
          v102 = v100;
          if (v101 != -1)
          {
            swift_once();
          }

          v103 = sub_10076D3DC();
          v104 = sub_10000A61C(v103, qword_1009A0E98);
          v105 = *(v103 - 8);
          v106 = v148;
          (*(v105 + 16))(v148, v104, v103);
          (*(v105 + 56))(v106, 0, 1, v103);
          sub_1007625DC();

          v99 = *&v3[v147];
          if (v99)
          {
LABEL_37:
            v107 = *(v99 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
            if (v107)
            {
              v108 = qword_100940AF0;
              v109 = v107;
              if (v108 != -1)
              {
                swift_once();
              }

              v110 = sub_10076D3DC();
              v111 = sub_10000A61C(v110, qword_1009A0EE0);
              v112 = *(v110 - 8);
              v113 = v148;
              (*(v112 + 16))(v148, v111, v110);
              (*(v112 + 56))(v113, 0, 1, v110);
              sub_1007625DC();
            }
          }
        }
      }
    }

    sub_10075F1DC();
    v114 = sub_10076B9FC();

    if (v114)
    {
      v115 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v116 = swift_allocObject();
      v52 = v172;
      v116[2] = v115;
      v116[3] = v52;
      v116[4] = v114;
      v114 = swift_allocObject();
      *(v114 + 16) = sub_100532658;
      *(v114 + 24) = v116;

      v117 = sub_100098284;
    }

    else
    {
      v117 = 0;
      v52 = v172;
    }

    v118 = v3;
    v66 = v168;
    v119 = &v118[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupViewTappedAction];
    v68 = *&v118[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupViewTappedAction];
    v69 = *&v118[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupViewTappedAction + 8];
    *v119 = v117;
    v119[1] = v114;
  }

  else
  {
    v62 = OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupView;
    v63 = *&v3[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupView];
    if (v63)
    {
      [v63 removeFromSuperview];
      v64 = *&v3[v62];
    }

    else
    {
      v64 = 0;
    }

    v65 = v3;
    v66 = v168;
    *&v65[v62] = 0;

    sub_100158A4C();
    v67 = &v65[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupViewTappedAction];
    v68 = *&v65[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupViewTappedAction];
    v69 = *&v65[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupViewTappedAction + 8];
    *v67 = 0;
    *(v67 + 1) = 0;
  }

  sub_1000167E0(v68, v69);
  if (sub_10075F12C())
  {
    (*(v156 + 104))(v158, enum case for VideoFillMode.scaleAspectFill(_:), v157);
    sub_10076B84C();
    sub_10076BEFC();
    v120 = v159;
    sub_10076D3AC();

    v121 = sub_10076D39C();
    (*(*(v121 - 8) + 56))(v120, 0, 1, v121);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    v122 = v174[0];
    sub_10076B7CC();
    v123 = v163;
    sub_10076B85C();
    v124 = sub_10075DB7C();
    (*(*(v124 - 8) + 56))(v123, 0, 1, v124);
    v125 = v165;
    sub_10076B81C();
    v126 = v166;
    sub_10076B80C();
    type metadata accessor for VideoView(0);
    sub_100532590(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    v172 = v122;
    v127 = sub_100762EEC();
    v128 = v66;
    sub_10000CFBC(v126, &unk_10094C030, &unk_10078D680);
    sub_10000CFBC(v125, &unk_10094C030, &unk_10078D680);
    sub_10000CFBC(v123, &unk_1009435D0, &qword_100785850);
    sub_10000CFBC(v174, &qword_100943310, &unk_100784150);
    v129 = v167;
    sub_10015ADA4();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v131 = Strong;
      [v155 insertSubview:Strong aboveSubview:*&v129[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView]];
      [v129 setNeedsLayout];

      (*(v162 + 8))(v128, v164);
    }

    else
    {
      (*(v162 + 8))(v128, v164);
    }
  }

  else
  {
    v129 = v167;
    sub_10015ADA4();
    swift_unknownObjectWeakAssign();
    v132 = swift_unknownObjectWeakLoadStrong();
    if (v132)
    {
      v133 = v132;
      [v155 insertSubview:v132 aboveSubview:*&v129[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView]];
      [v129 setNeedsLayout];
    }
  }

  sub_100767C9C();
  sub_10076F64C();
  sub_10076FC1C();
  v134 = v174[0];

  v135 = sub_10075F17C();
  type metadata accessor for NotifyMeButtonPresenter(0);
  v136 = swift_allocObject();
  v137 = v136 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_view;
  *(v136 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v136 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v136 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v137 + 8) = &off_10088A018;
  swift_unknownObjectWeakAssign();
  *(v136 + 16) = v134;
  *(v136 + 24) = v135;

  v138 = v169;
  v139 = v171;
  sub_10076FC1C();
  (*(v170 + 32))(v136 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_metricsPipeline, v138, v139);
  *(v136 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_objectGraph) = v52;
  sub_10076148C();

  v140 = sub_10076FC1C();
  *(v136 + OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_bag) = v174[5];
  sub_10074F1BC(v140, v141);
  sub_10074F8C8(v142, v143);
  v144 = [objc_opt_self() defaultCenter];

  v145 = sub_100767C0C();
  [v144 addObserver:v136 selector:"userNotificationsDidChangeNotification:" name:v145 object:0];

  sub_10015A064(v136);
  v129[OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_includeBorderInDarkMode] = sub_10075F18C() & 1;
  sub_100157B38();

  return result;
}

void *sub_1005321BC(double a1, uint64_t a2, void *a3)
{
  v4 = sub_10076BEDC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _swiftEmptyArrayStorage;
  if (qword_10093F850 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_10000A61C(v8, qword_10099D2B0);
  sub_10076D36C();
  if (sub_10075F12C())
  {
    sub_10076B84C();
  }

  else if (!sub_10075F14C())
  {
    v9 = _swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  sub_10076BEEC();
  sub_10076BE9C();
  (*(v5 + 8))(v7, v4);
  sub_10076BFCC();

  sub_10077019C();
  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();

  v9 = v17;
LABEL_9:
  sub_10075F1DC();
  v10 = sub_10076BB9C();

  if (v10)
  {
    v11 = [a3 traitCollection];
    v12 = sub_10077071C();

    if (v12)
    {
      if (qword_10093F848 != -1)
      {
        swift_once();
      }

      v13 = qword_10099D298;
    }

    else
    {
      if (qword_10093F840 != -1)
      {
        swift_once();
      }

      v13 = qword_10099D280;
    }

    v14 = sub_100763ADC();
    sub_10000A61C(v14, v13);
    sub_1007639AC();
    sub_10076BEEC();
    sub_10076BE9C();
    (*(v5 + 8))(v7, v4);
    sub_10076BFCC();

    sub_10077019C();
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    return v17;
  }

  else
  {
  }

  return v9;
}

uint64_t sub_100532590(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005325D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100532610()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100532664()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10053269C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = sub_100763ADC();
  v45 = *(v11 - 1);
  v46 = v11;
  __chkstk_darwin(v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076BF6C();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10076BEDC();
  v48 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51[3] = a4;
  v51[4] = a5;
  v18 = sub_10000DB7C(v51);
  (*(*(a4 - 8) + 16))(v18, a1, a4);
  sub_10000A570(v51, v50);
  sub_10000A5D4(&unk_100942830, &qword_100782680);
  sub_10075F1FC();
  if (!swift_dynamicCast())
  {
    return sub_10000CD74(v51);
  }

  v19 = v49;
  if (qword_10093F850 != -1)
  {
    swift_once();
  }

  v47 = v15;
  v44 = a2;
  v20 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_10000A61C(v20, qword_10099D2B0);
  sub_10076D36C();
  v21 = sub_10075F12C();
  v43 = v19;
  if (v21)
  {
    sub_10076B84C();

    v22 = v48;
LABEL_8:
    sub_10076BEEC();
    sub_10076BE9C();
    (*(v22 + 8))(v17, v47);
    sub_10076BFCC();
    v24 = *(a3 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_artworkView);
    sub_10076BF7C();
    sub_10075FCCC();
    [v24 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      sub_100770D5C();
    }

    sub_10075FB8C();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      type metadata accessor for VideoView(0);
      sub_100532590(&unk_100942840, type metadata accessor for VideoView, &unk_1007B40F8);
      sub_100760B8C();
    }

    else
    {
      sub_10075FD2C();
      sub_100532590(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_100760B8C();
    }

    v22 = v48;
    goto LABEL_14;
  }

  v23 = sub_10075F14C();
  v22 = v48;
  if (v23)
  {

    goto LABEL_8;
  }

LABEL_14:
  v27 = *(a3 + OBJC_IVAR____TtC20ProductPageExtension16AppEventCardView_lockupView);
  if (v27)
  {
    v28 = v27;
    sub_10075F1DC();
    v29 = sub_10076BB9C();

    if (v29)
    {
      v30 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
      swift_beginAccess();
      v32 = v45;
      v31 = v46;
      (*(v45 + 16))(v13, &v28[v30], v46);
      sub_1007639AC();
      (*(v32 + 8))(v13, v31);
      sub_10076BEEC();
      sub_10076BE9C();
      v45 = *(v22 + 8);
      (v45)(v17, v47);
      v33 = sub_10076BFCC();
      v42 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
      v34 = *&v28[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
      v46 = v28;
      v35 = v34;
      sub_10076BF7C();
      sub_10075FCCC();
      [v35 setContentMode:sub_10076BDBC()];
      v48 = v33;
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        sub_100770D5C();
      }

      sub_10075FB8C();

      v36 = v42;
      v37 = *&v28[v42];
      sub_10076BEEC();
      v38 = sub_10076BE9C();
      (v45)(v17, v47);
      [v37 setContentMode:v38];

      v28 = *&v28[v36];
      v39 = v46;

      sub_10075FD2C();
      sub_100532590(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_100760B8C();
    }
  }

  else
  {
  }

  return sub_10000CD74(v51);
}