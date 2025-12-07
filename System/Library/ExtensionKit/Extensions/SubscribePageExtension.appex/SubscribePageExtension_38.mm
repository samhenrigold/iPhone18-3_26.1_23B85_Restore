BOOL sub_10044C114(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(a1);
  v2 = sub_100753114();

  return (v2 & 1) == 0;
}

double sub_10044C160(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_100743854();
  v10 = sub_100743844();
  v11 = sub_10030E050(v9, v10, a7, 0.0, 0.0, a2);

  return v11;
}

uint64_t sub_10044C288(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10044C2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = sub_1007504F4();
  v11 = *(v75 - 8);
  __chkstk_darwin(v75);
  v86 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v84 = &v69 - v14;
  v15 = sub_100743844();
  v87 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_platform;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_platform] = v15;

  v16 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_flowLayout];
  ObjectType = swift_getObjectType();
  [a5 pageMarginInsets];
  [v16 setSectionInset:?];
  v17 = [a5 snapshotPageTraitEnvironment];
  v83 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_pageTraits;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_pageTraits] = v17;
  swift_unknownObjectRelease();
  v18 = sub_100743854();
  v19 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_artwork];
  v72 = OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_artwork;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_artwork] = v18;

  v21 = sub_10011CDA8(v20, v19);

  v22 = &off_100932000;
  v23 = &stru_1008F2000;
  if ((v21 & 1) == 0)
  {
    [*&v5[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_collectionView] reloadData];
  }

  v24 = sub_100743854();
  v25 = v24;
  if (v24 >> 62)
  {
    goto LABEL_58;
  }

  v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v27 = v75;
  v28 = v84;
  if (v26)
  {
    v79 = v26;
    v29 = 0;
    v80 = sub_100743864();
    v81 = v25 & 0xC000000000000001;
    v74 = v25 & 0xFFFFFFFFFFFFFF8;
    v76 = v25;
    v73 = v25 + 32;
    v77 = (v11 + 2);
    v78 = (v11 + 1);
    v11 = _swiftEmptyArrayStorage;
    v70 = a5;
    v69 = v10;
    v71 = v6;
    while (1)
    {
      if (v81)
      {
        v23 = sub_100754574();
        v30 = __OFADD__(v29++, 1);
        if (v30)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v29 >= *(v74 + 16))
        {
          goto LABEL_57;
        }

        v23 = *(v73 + 8 * v29);

        v30 = __OFADD__(v29++, 1);
        if (v30)
        {
          goto LABEL_56;
        }
      }

      sub_10074F2A4();
      sub_100750504();
      v25 = *&v6[v87];
      v85 = v23;
      if (v25)
      {

        v31 = sub_1007444C4();

        if (v31)
        {
          v32 = *&v6[v72];
          v6 = (v32 & 0xFFFFFFFFFFFFFF8);
          if (v32 >> 62)
          {
            v22 = sub_100754664();
          }

          else
          {
            v22 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v10 = (v32 & 0xC000000000000001);

          v33 = 0;
          while (1)
          {
            v23 = v22 != v33;
            if (v22 == v33)
            {
LABEL_28:

              v6 = v71;
              a5 = v70;
              v10 = v69;
              v27 = v75;
              v28 = v84;
              goto LABEL_29;
            }

            if (v10)
            {
              v25 = sub_100754574();
              if (__OFADD__(v33, 1))
              {
                goto LABEL_54;
              }
            }

            else
            {
              if (v33 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_55;
              }

              v25 = *(v32 + 8 * v33 + 32);

              if (__OFADD__(v33, 1))
              {
LABEL_54:
                __break(1u);
LABEL_55:
                __break(1u);
LABEL_56:
                __break(1u);
LABEL_57:
                __break(1u);
LABEL_58:
                v26 = sub_100754664();
                goto LABEL_5;
              }
            }

            a5 = sub_10074F114();

            ++v33;
            if (a5)
            {
              goto LABEL_28;
            }
          }
        }
      }

      LOBYTE(v23) = 0;
LABEL_29:

      sub_1002898DC(v34, v10, v35);

      v36 = v10[8];
      v37 = v10[10];
      sub_100024440(v10);
      result = *&v6[v83];
      if (!result)
      {
        break;
      }

      [result pageContainerSize];
      [v6 bounds];
      v40 = v39;
      if (v23)
      {
        if (sub_100750444())
        {
          (*v77)(v86, v28, v27);
        }

        else
        {
          sub_100750484();
        }

        v41 = 1;
      }

      else
      {
        (*v77)(v86, v28, v27);
        v41 = sub_100750444();
      }

      v42 = [a5 traitCollection];
      v43 = sub_1007537B4();

      if (v43)
      {
        [a5 pageMarginInsets];
        v45 = v44;
        [a5 pageMarginInsets];
        v47 = v45 + v46;
        PageTraitEnvironment.pageColumnMargin.getter();
        v49 = v40 - (v47 + v48 + v48);
        v50 = v48 * 0.0;
        v51 = v49 * 0.333333333;
      }

      else
      {
        if (v41)
        {
          v52 = 2.0;
        }

        else
        {
          v52 = 1.0;
        }

        if (v41)
        {
          v53 = 3.0;
        }

        else
        {
          v53 = 1.0;
        }

        [a5 pageMarginInsets];
        v55 = v54;
        [a5 pageMarginInsets];
        v57 = v55 + v56;
        PageTraitEnvironment.pageColumnMargin.getter();
        v59 = v40 - (v57 + (v53 + -1.0) * v58);
        v50 = (v52 + -1.0) * v58;
        v51 = v52 / v53 * v59;
      }

      v60 = v50 + v51;
      v61 = [a5 traitCollection];
      sub_1007537B4();

      v62 = v86;
      sub_1007504C4();
      v63 = v60 - (v36 + v37);
      sub_1007504C4();
      v65 = v64;
      v22 = v78;
      v66 = *v78;
      (*v78)(v62, v27);
      v28 = v84;
      v66(v84, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100254FF4(0, v11[2] + 1, 1, v11);
      }

      v23 = v11[2];
      v67 = v11[3];
      v25 = v23 + 1;
      if (v23 >= v67 >> 1)
      {
        v11 = sub_100254FF4((v67 > 1), v23 + 1, 1, v11);
      }

      v11[2] = v25;
      v68 = &v11[3 * v23];
      *(v68 + 4) = v85;
      v68[5] = v63;
      *(v68 + 6) = v65;
      if (v29 == v79)
      {

        v23 = 0x1008F2000;
        v22 = &off_100932000;
        goto LABEL_53;
      }
    }

    __break(1u);
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
LABEL_53:
    *&v6[OBJC_IVAR____TtC22SubscribePageExtension33ScreenshotShelfCollectionViewCell_sizedArtwork] = v11;

    return [*(v22[199] + v6) *(v23 + 664)];
  }

  return result;
}

unint64_t sub_10044CA58()
{
  result = qword_100938538;
  if (!qword_100938538)
  {
    sub_1007438F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938538);
  }

  return result;
}

void sub_10044CAB0(uint64_t a1, uint64_t a2)
{
  v91 = sub_100742CF4();
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v92 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1007493D4();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v90 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10074A304();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v88 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100752614();
  __chkstk_darwin(v7 - 8);
  v85 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&qword_10092C1F0, &unk_1007A8F60);
  __chkstk_darwin(v9 - 8);
  v84 = &v78 - v10;
  v11 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v11 - 8);
  v81 = &v78 - v12;
  v79 = sub_10074F4D4();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v80 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100746374();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007438B4();
  v18 = sub_100746364();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    sub_10074ECB4();
    v20 = v19;
    sub_1007438D4();
    v22 = v21;
    if (v20)
    {
      v23 = sub_100753064();

      if (!v22)
      {
        goto LABEL_8;
      }

LABEL_6:
      v25 = sub_100753064();

      goto LABEL_9;
    }

    v23 = 0;
    if (v21)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1007438D4();
    v23 = 0;
    if (v24)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  v25 = 0;
LABEL_9:
  v26 = [objc_opt_self() alertControllerWithTitle:v23 message:v25 preferredStyle:0];

  v96 = v26;
  [v26 setModalPresentationStyle:7];
  v27 = sub_1007438C4();
  v28 = v27;
  if (v27 >> 62)
  {
LABEL_46:
    v29 = sub_100754664();
    if (v29)
    {
      goto LABEL_11;
    }

LABEL_47:

    if (sub_1007438A4())
    {
      sub_100743884();
      if (!v71)
      {
        v110._countAndFlagsBits = 0x432E6E6F69746341;
        v110._object = 0xED00006C65636E61;
        v111._countAndFlagsBits = 0;
        v111._object = 0xE000000000000000;
        sub_1007458B4(v110, v111);
      }

      v72 = sub_100753064();

      v73 = [objc_opt_self() actionWithTitle:v72 style:1 handler:0];

      v74 = v96;
      [v96 addAction:v73];
      [v74 setPreferredAction:v73];
    }

    v108 = 0;
    aBlock = 0u;
    v107 = 0u;
    (*(v78 + 104))(v80, enum case for FlowPage.viewController(_:), v79);
    v75 = sub_100741264();
    (*(*(v75 - 8) + 56))(v81, 1, 1, v75);
    v76 = sub_100743FE4();
    (*(*(v76 - 8) + 56))(v84, 1, 1, v76);
    v105 = sub_10044D908();
    v104 = v96;
    v103 = v96;
    sub_1007525F4();
    (*(v82 + 104))(v88, enum case for FlowPresentationContext.infer(_:), v83);
    (*(v86 + 104))(v90, enum case for FlowAnimationBehavior.infer(_:), v87);
    (*(v89 + 104))(v92, enum case for FlowOrigin.inapp(_:), v91);
    sub_100752B44();
    sub_100742CD4();
    swift_allocObject();
    v77 = sub_100742C84();
    sub_10052AD94(v77, 1, a2);

    return;
  }

  v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
    goto LABEL_47;
  }

LABEL_11:
  v30 = 0;
  v98 = v28 & 0xFFFFFFFFFFFFFF8;
  v99 = v28 & 0xC000000000000001;
  v97 = &v107;
  v93 = "Rating.Max.Caption";
  v95 = v28;
  v94 = v29;
  while (1)
  {
    if (v99)
    {
      v31 = sub_100754574();
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v30 >= *(v98 + 16))
      {
        goto LABEL_45;
      }

      v31 = *(v28 + 8 * v30 + 32);

      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }
    }

    v33 = v30 != sub_100743874();
    v35 = ((v34 | v33) & 1) == 0;
    v36 = 2;
    if (!v35)
    {
      v36 = 0;
    }

    v101 = v36;
    v37 = swift_allocObject();
    *(v37 + 16) = v31;
    *(v37 + 24) = a2;

    v38 = sub_1007438E4();
    v102 = v32;
    v103 = v31;
    if ((v38 & 1) == 0)
    {
      sub_10074ECB4();
      if (v47)
      {

        v48 = sub_100753064();
      }

      else
      {

        v48 = 0;
      }

      v108 = sub_10044D8C0;
      v109 = v37;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v107 = sub_10073EFC4;
      *(&v107 + 1) = &unk_1008763A0;
      v55 = _Block_copy(&aBlock);

      v56 = [objc_opt_self() actionWithTitle:v48 style:v101 handler:v55];
      goto LABEL_40;
    }

    v39 = sub_100743894();
    if ((v40 & 1) == 0 && v30 == v39)
    {
      v41 = objc_opt_self();
      v42 = sub_100753064();
      v43 = [v41 kitImageNamed:v42];

      if (!v43)
      {
        goto LABEL_53;
      }

      v44 = [v43 imageWithRenderingMode:2];

      v45 = [v44 _imageThatSuppressesAccessibilityHairlineThickening];
      goto LABEL_23;
    }

    v49 = sub_10074ECC4();
    if (!v49)
    {
      goto LABEL_35;
    }

    v50 = v49;
    if ((sub_10074F1C4() & 1) == 0)
    {
      if (sub_10074F1D4())
      {
        v45 = sub_100743AC4();

LABEL_23:
        v100 = v45;
        v46 = v45;
        goto LABEL_38;
      }

LABEL_35:
      v100 = 0;
      goto LABEL_38;
    }

    v52 = sub_10056028C(v51, v50, 0);
    if (v52)
    {
      v53 = v52;
      v54 = [v52 imageWithRenderingMode:2];

      v100 = [v54 _imageThatSuppressesAccessibilityHairlineThickening];
    }

    else
    {

      v100 = 0;
    }

    v57 = v100;
LABEL_38:
    v58 = a1;
    v59 = a2;
    v60 = [objc_allocWithZone(UIViewController) init];
    v61 = sub_10074ECB4();
    v63 = v62;
    v64 = objc_allocWithZone(type metadata accessor for AlertActionTrailingImageView());
    v65 = sub_100507CD0(v61, v63, v100);
    [v60 setView:v65];

    v66 = [v60 view];
    if (!v66)
    {
      break;
    }

    v67 = v66;
    [v66 intrinsicContentSize];
    v69 = v68;

    [v60 setPreferredContentSize:{0.0, v69}];
    v70 = objc_opt_self();
    v108 = sub_10044D8C0;
    v109 = v37;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v107 = sub_10044D80C;
    *(&v107 + 1) = &unk_1008763C8;
    v55 = _Block_copy(&aBlock);
    v48 = v60;

    v56 = [v70 _actionWithContentViewController:v48 style:v101 handler:v55];

    a2 = v59;
    a1 = v58;
    v28 = v95;
    v29 = v94;
LABEL_40:
    _Block_release(v55);

    if (v56)
    {
      [v96 addAction:v56];
    }

    ++v30;
    if (v102 == v29)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
}

void sub_10044D80C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10044D880()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_10044D8C0()
{
  sub_10052AB60(*(v0 + 16), 1, *(v0 + 24));

  return result;
}

double sub_10044D8F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_10044D908()
{
  result = qword_100938540;
  if (!qword_100938540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100938540);
  }

  return result;
}

double sub_10044D95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a2;
  v9 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  sub_10074FB64();
  sub_10074E184();
  if (swift_dynamicCastClass())
  {
    v12 = sub_10044DE78();
    v13 = sub_10074E174();
    sub_10006AF98(v13, a4);

    v14 = sub_10074F704();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v11, a3, v14);
    (*(v15 + 56))(v11, 0, 1, v14);
    v16 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_100037710(v11, v5 + v16);
    swift_endAccess();
    sub_1005F3E54(v8);
    v17 = [v5 backgroundView];
    if (v17)
    {
      v18 = v17;
      v19 = sub_10074FA74();
      if (!v19)
      {
        sub_10000D198();
        v19 = sub_100753E64();
      }

      v20 = v19;
      [v18 setBackgroundColor:v19];
    }

    [v5 setNeedsLayout];
  }

  else
  {
  }

  return result;
}

double sub_10044DBF0(uint64_t a1, uint64_t a2)
{
  sub_10000C824(a1, v6);
  sub_10000C518(&unk_100923100, &unk_1007A5F30);
  sub_10074FBB4();
  if (swift_dynamicCast())
  {
    sub_10074FB64();

    sub_10074E184();
    if (swift_dynamicCastClass())
    {
      v4 = sub_10044DE78();
      v5 = sub_10074E174();
      sub_10044E928(v5, a2, v4);
    }

    else
    {
    }
  }

  return result;
}

void sub_10044DCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_10044DE78();
  v4 = OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView;
  v5 = *(*&v3[OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_100743344();

  v6 = *(*&v3[v4] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_1007433C4();
  sub_10004D658();
  v7 = v6;
  sub_100744274();
}

void (*sub_10044DDB0(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_weakInit();
  sub_10000C824(a1, v7);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_100012160(v7, v5 + 32);
  return sub_10044E91C;
}

id sub_10044DE78()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = v0;
    v6 = (*(ObjectType + 712))();
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *sub_10044DEF8(double a1, double a2, double a3, double a4)
{
  v9 = sub_100752AC4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell_isAnimationEnabled] = 1;
  v13 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell(0);
  v21.receiver = v4;
  v21.super_class = v13;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setClipsToBounds:1];

  v16 = sub_10044DE78();
  [v16 setClipsToBounds:1];

  v17 = [v14 contentView];
  [v17 addSubview:*&v14[OBJC_IVAR____TtC22SubscribePageExtension66MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithScreenshotsBackgroundView]];

  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  sub_100752A74();
  sub_10000C8CC(v19, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(v20, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  (*(v10 + 8))(v12, v9);
  return v14;
}

id sub_10044E158()
{
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double sub_10044E218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  sub_10006D514(a4, a5);
  return v7;
}

void sub_10044E424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_100752914();
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
      sub_10000C824(a3, v14);
      sub_10000C518(&qword_1009242A0, &qword_1007A6400);
      sub_10074FBB4();
      if (swift_dynamicCast())
      {
        sub_10074FB64();

        sub_1007451E4();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10000C8CC(v6, &unk_100925380, qword_1007A8E40);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          sub_100749544();

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

id sub_10044E6C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_100938580;
  if (!qword_100938580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10044E7B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10044DE78();
  sub_1002EF4D8(a1, a2);
}

uint64_t sub_10044E81C()
{
  v0 = sub_10044DE78();
  v1 = *(*&v0[OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_isDisplayingSearchAd);

  return v1;
}

uint64_t sub_10044E864()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10044E89C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10044E8D4()
{

  sub_10000C620((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10044E928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v12[3] = sub_10074DFB4();
  v12[4] = &protocol witness table for MediumAdLockupWithScreenshotsBackground;
  v12[0] = a1;
  sub_10000C824(v12, &v11);

  sub_10000C518(&unk_100923100, &unk_1007A5F30);
  if (swift_dynamicCast())
  {
    sub_10074DFA4();
    v6 = sub_10074EF24();

    if (v6)
    {
      (*(ObjectType + 168))(&v11, v7);
      sub_100055D54(&v11);
      sub_10074F374();
      v8 = *(*(a3 + OBJC_IVAR____TtC22SubscribePageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
      sub_1007433C4();
      sub_10004D658();
      v9 = v8;
      sub_100744204();
    }

    else
    {
    }
  }

  return sub_10000C620(v12);
}

uint64_t sub_10044EAD4()
{
  v0 = sub_100752E24();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100752E44();
  sub_100039C50(v4, qword_100980438);
  sub_10000D0FC(v4, qword_100980438);
  if (qword_100921EC8 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_1009832D0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_100752E34();
}

id sub_10044ED8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension24UpsellGridViewController_gridView];
  v7 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension24UpsellGridViewController_artworkLoader];
  result = [v3 view];
  if (result)
  {
    v9 = result;
    [result bounds];
    v11 = v10;
    v13 = v12;

    *(v6 + OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_primaryIcon) = a1;

    v14 = OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_remainingIcons;
    swift_beginAccess();
    *(v6 + v14) = a2;

    *(v6 + OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_artworkLoader) = v7;

    return sub_100456C70(v11, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_10044EF68(uint64_t a1)
{
  if (qword_100920C58 != -1)
  {
    swift_once();
  }

  v1 = sub_100752E44();
  sub_10000D0FC(v1, qword_100980438);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  swift_getErrorValue();
  v5[3] = v4;
  v2 = sub_10000D134(v5);
  (*(*(v4 - 8) + 16))(v2);
  sub_100752424();
  sub_1000277BC(v5);
  sub_100752D04();

  return result;
}

uint64_t sub_10044F18C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UpsellGridViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10044F1CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4();
  (*(a2 + 80))(0, 0, v5, v6, a1, a2);
  swift_unknownObjectRelease();
  if ((*(a2 + 56))(a1, a2))
  {
    v7 = (v4)(a1, a2);
    v9 = v8;
    v10 = (*(a2 + 8))(a1, a2);
    sub_1006CE2EC(v7, v9, v10, v11 & 1);

    swift_unknownObjectRelease();
  }

  (*(a2 + 16))(0, 1, a1, a2);
  (*(a2 + 40))(0, 0, a1, a2);
  v12 = *(a2 + 64);

  return v12(0, a1, a2);
}

double sub_10044F358(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v47 = a4;
  v45 = a3;
  v44 = a2;
  v10 = sub_10074FB54();
  v46 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074A2E4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074FAE4();
  v17 = sub_10074A2A4();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    v19 = sub_10074FBA4();
    if (v19)
    {
      v20 = v19;
      type metadata accessor for TodayCardOverlayReusePool();
      sub_100752754();
      v43 = v49[0];
      if (v49[0])
      {
        v41 = v10;
        (*(a6 + 8))(a5, a6);
        v22 = v21;
        sub_1007463A4();
        if ((v22 & 1) != 0 || (v23 = sub_100746394(), v23 != sub_100746394()))
        {
          v24 = sub_1007463A4();
          sub_1006CE170(v24);
          v26 = v25;
          ObjectType = v20;
          v27 = a5;
          v29 = v28;
          v30 = *(a6 + 32);
          swift_unknownObjectRetain();
          v31 = v30(v27, a6);
          (*(a6 + 80))(v26, v29, v31, v32, v27, a6);
          swift_unknownObjectRelease();
          v33 = sub_1007463A4();
          (*(a6 + 16))(v33, 0, v27, a6);
          v34 = v29;
          a5 = v27;
          v20 = ObjectType;
          (*(a6 + 40))(v26, v34, a5, a6);
          swift_unknownObjectRelease();
        }

        v35 = *(a6 + 64);

        v35(v36, a5, a6);
        if ((*(a6 + 32))(a5, a6))
        {
          v38 = v37;
          ObjectType = swift_getObjectType();
          v49[3] = sub_1007463B4();
          v49[4] = sub_100295B84();
          v49[0] = v20;

          sub_10074FB74();
          sub_1007442C4();
          sub_100752764();
          v39 = v47;
          sub_100752D34();
          (*(v38 + 112))(v49, v39, v44, v12, v45, v48, ObjectType, v38);
          swift_unknownObjectRelease();

          (*(v46 + 8))(v12, v41);
          sub_10000C620(v49);
        }

        (*(a6 + 88))(a5, a6);
        [v7 setNeedsLayout];
      }
    }
  }

  return result;
}

uint64_t sub_10044F7B0(uint64_t a1, char a2)
{
  v63 = a1;
  v66 = sub_10000C518(&qword_1009385E8, qword_1007C1E08);
  v73 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = v51 - v3;
  v4 = sub_10000C518(&qword_100923E88, &unk_1007AF240);
  __chkstk_darwin(v4 - 8);
  v70 = v51 - v5;
  v74 = sub_10074F654();
  v6 = *(v74 - 8);
  __chkstk_darwin(v74);
  v8 = (v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10000C518(&qword_100923230, &qword_1007BF500);
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

  sub_10000C518(&qword_100923E90, &unk_1007AF250);
  v21 = *(sub_10074F584() - 8);
  v72 = *(v21 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v58 = v23;
  *(v23 + 16) = xmmword_1007A7250;
  v24 = v23 + v22;
  v77 = *&v20;
  sub_10001CC10();
  sub_10074F614();
  v77 = 0x4020000000000000;
  v75 = 0x4030000000000000;
  sub_10074F5F4();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  sub_10074F5F4();
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
  sub_10074F614();
  v77 = 0;
  sub_10074F614();
  v65 = v24;
  v51[1] = v19;
  v64 = v16;
  v59 = v13;
  sub_10074F544();
  v77 = *&v20;
  sub_10074F614();
  v77 = 0x4024000000000000;
  v75 = 0x4034000000000000;
  sub_10074F5F4();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  sub_10074F5F4();
  __asm { FMOV            V0.2D, #20.0 }

  v34 = v8;
  *v8 = _Q0;
  v35 = v8;
  v36 = v67;
  v37 = v71;
  v71(v35, v67, v74);
  LOBYTE(v77) = 0;
  sub_10074F614();
  v77 = 0;
  sub_10074F614();
  v38 = v72;
  top = UIEdgeInsetsZero.top;
  v55 = left;
  v56 = bottom;
  sub_10074F544();
  v61 = 2 * v38;
  v77 = *&v20;
  sub_10074F614();
  v77 = 0x4034000000000000;
  sub_10074F614();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  sub_10074F5F4();
  v54 = vdupq_n_s64(0x4041000000000000uLL);
  *v34 = v54;
  v37(v34, v36, v74);
  LOBYTE(v77) = 0;
  sub_10074F614();
  v77 = 0;
  sub_10074F614();
  v39 = v61;
  v40 = v34;
  sub_10074F544();
  v79 = 0x4000000000000000;
  v53 = v39 + v72;
  v77 = 0x3FF8000000000000;
  v78 = 0;
  v75 = *&v20;
  v76 = 0;
  v61 = sub_100450474();
  v41 = v62;
  sub_10074A9A4();
  v42 = v66;
  sub_10074A9B4();
  v43 = *(v73 + 8);
  v73 += 8;
  v60 = v43;
  v43(v41, v42);
  v75 = v77;
  sub_10074F614();
  v77 = 0x4034000000000000;
  sub_10074F614();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  sub_10074F5F4();
  *v40 = v54;
  v52 = v40;
  v44 = v74;
  v71(v40, v67, v74);
  sub_1007535A4();
  LOBYTE(v77) = 0;
  sub_10074F614();
  v77 = 0;
  sub_10074F614();
  sub_10074F544();
  v79 = 0x4000000000000000;
  v53 = 4 * v72;
  v77 = 0x3FF8000000000000;
  v78 = 0;
  v75 = *&v20;
  v76 = 0;
  v45 = v62;
  sub_10074A9A4();
  v46 = v66;
  sub_10074A9B4();
  v60(v45, v46);
  v75 = v77;
  sub_10074F614();
  v77 = 0x4038000000000000;
  sub_10074F614();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  sub_10074F5F4();
  v54 = vdupq_n_s64(0x404A000000000000uLL);
  v47 = v52;
  *v52 = v54;
  v71(v47, v67, v44);
  LOBYTE(v77) = 0;
  sub_10074F614();
  v77 = 0;
  sub_10074F614();
  v48 = v53;
  sub_10074F544();
  v79 = 0x4004000000000000;
  v72 += v48;
  v77 = 0x4000000000000000;
  v78 = 0;
  v75 = 0x3FF8000000000000;
  v76 = 0;
  sub_10074A9A4();
  v49 = v66;
  sub_10074A9B4();
  v60(v45, v49);
  v75 = v77;
  sub_10074F614();
  v77 = 0x4038000000000000;
  sub_10074F614();
  v77 = 0x4030000000000000;
  v75 = 0x4034000000000000;
  sub_10074F5F4();
  *v47 = v54;
  v71(v47, v67, v74);
  LOBYTE(v77) = 0;
  sub_10074F614();
  v77 = 0;
  sub_10074F614();
  sub_10074F544();
  return v58;
}

unint64_t sub_100450474()
{
  result = qword_1009385F0;
  if (!qword_1009385F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009385F0);
  }

  return result;
}

uint64_t sub_1004504C8(uint64_t a1)
{
  v51 = a1;
  v50 = sub_10000C518(&qword_1009385E8, qword_1007C1E08);
  v56.i64[0] = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = v41 - v1;
  v2 = sub_10000C518(&qword_100923E88, &unk_1007AF240);
  __chkstk_darwin(v2 - 8);
  v4 = v41 - v3;
  v59 = sub_10074F654();
  v62 = *(v59 - 8);
  __chkstk_darwin(v59);
  v6 = (v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000C518(&qword_100923230, &qword_1007BF500);
  __chkstk_darwin(v7 - 8);
  v61 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v12 = v41 - v11;
  __chkstk_darwin(v13);
  v57 = v41 - v14;
  sub_10000C518(&qword_100923E90, &unk_1007AF250);
  v15 = *(sub_10074F584() - 8);
  v55 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v48 = v17;
  *(v17 + 16) = xmmword_1007A7250;
  v18 = v17 + v16;
  v65 = 0x3FF0000000000000;
  sub_10001CC10();
  sub_10074F614();
  v65 = 0x4020000000000000;
  v63 = 0x4030000000000000;
  sub_10074F5F4();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  sub_10074F5F4();
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
  sub_10074F614();
  v65 = 0;
  sub_10074F614();
  v54 = v18;
  v52 = v12;
  sub_10074F544();
  v65 = 0x3FF0000000000000;
  sub_10074F614();
  v65 = 0x4024000000000000;
  v63 = 0x4034000000000000;
  sub_10074F5F4();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  sub_10074F5F4();
  __asm { FMOV            V0.2D, #20.0 }

  v49 = v6;
  *v6 = _Q0;
  v28 = v58;
  v29 = v60;
  v60(v6, v58, v25);
  LOBYTE(v65) = 0;
  v53 = v4;
  sub_10074F614();
  v65 = 0;
  sub_10074F614();
  v30 = v55;
  top = UIEdgeInsetsZero.top;
  v46 = left;
  v31 = v49;
  sub_10074F544();
  v44 = 2 * v30;
  v65 = 0x3FF0000000000000;
  sub_10074F614();
  v65 = 0x4034000000000000;
  sub_10074F614();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  sub_10074F5F4();
  v42 = vdupq_n_s64(0x4041000000000000uLL);
  *v31 = v42;
  v29(v31, v28, v59);
  LOBYTE(v65) = 0;
  sub_10074F614();
  v65 = 0;
  sub_10074F614();
  v32 = v44;
  sub_10074F544();
  v67 = 0x4000000000000000;
  v33 = v55;
  v41[1] = v32 + v55;
  v65 = 0;
  v66 = 1;
  v63 = 0x3FF0000000000000;
  v64 = 0;
  v44 = sub_100450474();
  v34 = v47;
  sub_10074A9A4();
  v35 = v50;
  sub_10074A9B4();
  v36 = *(v56.i64[0] + 8);
  v56.i64[0] += 8;
  v43 = v36;
  v36(v34, v35);
  v63 = v65;
  sub_10074F614();
  v65 = 0x4034000000000000;
  sub_10074F614();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  sub_10074F5F4();
  v37 = v49;
  *v49 = v42;
  v60(v37, v58, v59);
  sub_1007535A4();
  LOBYTE(v65) = 0;
  sub_10074F614();
  v65 = 0;
  sub_10074F614();
  sub_10074F544();
  v67 = 0x4000000000000000;
  v42.i64[0] = 4 * v33;
  v65 = 0;
  v66 = 1;
  v63 = 0x3FF0000000000000;
  v64 = 0;
  sub_10074A9A4();
  v38 = v50;
  sub_10074A9B4();
  v43(v34, v38);
  v63 = v65;
  sub_10074F614();
  v65 = 0x4038000000000000;
  sub_10074F614();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  sub_10074F5F4();
  v56 = vdupq_n_s64(0x404A000000000000uLL);
  *v37 = v56;
  v39 = v59;
  v60(v37, v58, v59);
  LOBYTE(v65) = 0;
  sub_10074F614();
  v65 = 0;
  sub_10074F614();
  sub_10074F544();
  v65 = 0x4000000000000000;
  sub_10074F614();
  v65 = 0x4038000000000000;
  sub_10074F614();
  v65 = 0x4030000000000000;
  v63 = 0x4034000000000000;
  sub_10074F5F4();
  *v37 = v56;
  v60(v37, v58, v39);
  LOBYTE(v65) = 0;
  sub_10074F614();
  v65 = 0;
  sub_10074F614();
  sub_10074F544();
  return v48;
}

char *sub_1004510EC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_style;
  v11 = sub_10074F314();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_image] = 0;
  v12 = [objc_allocWithZone(CALayer) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_imageLayer] = v12;
  v13 = [objc_allocWithZone(CAGradientLayer) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_gradientLayer] = v13;
  v33.receiver = v4;
  v33.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  [v14 setClipsToBounds:1];
  v15 = OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_imageLayer;
  [*&v14[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_imageLayer] setMasksToBounds:1];
  LODWORD(v16) = 1053609165;
  [*&v14[v15] setOpacity:v16];
  v17 = *&v14[v15];
  CATransform3DMakeRotation(&v32, -0.523598776, 0.0, 0.0, 1.0);
  [v17 setTransform:&v32];

  v18 = [v14 layer];
  [v18 addSublayer:*&v14[v15]];

  v19 = OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_gradientLayer;
  v20 = *&v14[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_gradientLayer];
  sub_10000C518(&unk_1009259C0, &unk_1007A9270);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007A6580;
  sub_10000D198();
  v22 = v20;
  isa = sub_100753F24(0.0, 0.0, 0.0, 0.0).super.isa;
  v24 = [(objc_class *)isa CGColor];

  type metadata accessor for CGColor(0);
  v26 = v25;
  *(v21 + 56) = v25;
  *(v21 + 32) = v24;
  v27 = sub_100753F24(0.47451, 0.47451, 0.47451, 0.5).super.isa;
  v28 = [(objc_class *)v27 CGColor];

  *(v21 + 88) = v26;
  *(v21 + 64) = v28;
  v29 = sub_100753294().super.isa;

  [v22 setColors:v29];

  [*&v14[v19] setStartPoint:{0.5, 0.0}];
  [*&v14[v19] setEndPoint:{0.5, 1.0}];
  v30 = [v14 layer];

  [v30 addSublayer:*&v14[v19]];
  return v14;
}

id sub_100451530()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_imageLayer];
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_image];
  if (v2 && (v3 = [v2 CGImage]) != 0)
  {
    v6 = v3;
    type metadata accessor for CGImage(0);
    v4 = sub_100754734();
  }

  else
  {
    v4 = 0;
  }

  [v1 setContents:v4];
  swift_unknownObjectRelease();
  return [v0 setNeedsLayout];
}

id sub_1004515E8()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100743584();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = sub_10000C518(&qword_10092BBD8, &unk_1007C1E70);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_10074F314();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33.receiver = v0;
  v33.super_class = ObjectType;
  objc_msgSendSuper2(&v33, "layoutSubviews", v14);
  [v0 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_gradientLayer] setFrame:?];
  if (!*&v0[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_image])
  {
    return [*&v0[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_imageLayer] setFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  v25 = objc_opt_self();
  [v25 begin];
  v32 = v25;
  [v25 setDisableActions:1];
  v26 = OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_style;
  swift_beginAccess();
  sub_100451C9C(&v0[v26], v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100451D0C(v11);
    v27 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_imageLayer];
    [v27 setContinuousCorners:0];
    [v27 setCornerRadius:0.0];
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v27 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38BrandedAppTodayCardNoArtBackgroundView_imageLayer];
    sub_10074F2B4();
    (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
    v29 = sub_100743574();
    v30 = *(v3 + 8);
    v30(v5, v2);
    v30(v8, v2);
    [v27 setContinuousCorners:v29 & 1];
    sub_10074F2E4();
    [v27 setCornerRadius:?];
    (*(v13 + 8))(v16, v12);
  }

  [v27 setBounds:{0.0, 0.0, 230.0, 230.0}];
  v34.origin.x = v18;
  v34.origin.y = v20;
  v34.size.width = v22;
  v34.size.height = v24;
  v31 = CGRectGetMaxX(v34) + -115.0 + 79.0;
  v35.origin.x = v18;
  v35.origin.y = v20;
  v35.size.width = v22;
  v35.size.height = v24;
  [v27 setPosition:{v31, CGRectGetMinY(v35) + 115.0 + 13.0}];
  return [v32 commit];
}

uint64_t type metadata accessor for BrandedAppTodayCardNoArtBackgroundView(uint64_t a1)
{
  result = qword_100938630;
  if (!qword_100938630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100451B9C(uint64_t a1)
{
  sub_100451C44(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100451C44(uint64_t a1)
{
  if (!qword_100938640)
  {
    sub_10074F314();
    v1 = sub_100754284();
    if (!v2)
    {
      atomic_store(v1, &qword_100938640);
    }
  }
}

uint64_t sub_100451C9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10092BBD8, &unk_1007C1E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100451D0C(uint64_t a1)
{
  v2 = sub_10000C518(&qword_10092BBD8, &unk_1007C1E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100451D74()
{
  v0 = sub_10000C518(&qword_100938720, &unk_1007C1F10);
  sub_100039C50(v0, qword_100938648);
  sub_10000D0FC(v0, qword_100938648);
  sub_10000C518(&qword_100938738, &qword_1007C1F20);
  return sub_100752664();
}

uint64_t sub_100451E00()
{
  v0 = sub_10000C518(&qword_100938718, &unk_1007D8CB0);
  sub_100039C50(v0, qword_100938660);
  sub_10000D0FC(v0, qword_100938660);
  return sub_100752664();
}

uint64_t sub_100451E78()
{
  v0 = sub_10000C518(&unk_100947360, &qword_1007C3EF0);
  sub_100039C50(v0, qword_100938678);
  sub_10000D0FC(v0, qword_100938678);
  return sub_100752664();
}

uint64_t sub_100451EF8()
{
  v0 = sub_10000C518(&unk_100947360, &qword_1007C3EF0);
  sub_100039C50(v0, qword_100938690);
  sub_10000D0FC(v0, qword_100938690);
  return sub_100752664();
}

uint64_t sub_100451F70()
{
  v0 = sub_10000C518(&unk_100947360, &qword_1007C3EF0);
  sub_100039C50(v0, qword_1009386A8);
  sub_10000D0FC(v0, qword_1009386A8);
  return sub_100752664();
}

uint64_t sub_100451FE8()
{
  v0 = sub_10000C518(&qword_100938718, &unk_1007D8CB0);
  sub_100039C50(v0, qword_1009386C0);
  sub_10000D0FC(v0, qword_1009386C0);
  return sub_100752664();
}

uint64_t sub_100452060()
{
  v0 = sub_10000C518(&qword_100938718, &unk_1007D8CB0);
  sub_100039C50(v0, qword_1009386D8);
  sub_10000D0FC(v0, qword_1009386D8);
  return sub_100752664();
}

uint64_t sub_1004520D8()
{
  ObjectType = swift_getObjectType();
  v0 = sub_100741494();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v89 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&qword_100938718, &unk_1007D8CB0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v89 - v6;
  sub_100752854();
  sub_100752844();
  if (qword_100920C60 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v8 = sub_10000C518(&qword_100938720, &unk_1007C1F10);
    sub_10000D0FC(v8, qword_100938648);
    v9 = sub_100752514();
    v11 = v10;

    v12 = swift_getObjectType();
    if (qword_100920C90 != -1)
    {
      swift_once();
    }

    v94 = v3;
    v98 = v1;
    v13 = sub_10000D0FC(v4, qword_1009386D8);
    v14 = *(v5 + 16);
    v93 = v4;
    v14(v7, v13, v4);
    v102 = xmmword_1007C1E80;
    v97 = v12;
    sub_100752544();
    *&v102 = sub_100741534();

    sub_1004537F4(&v102);
    v89[3] = v13;
    v1 = 0xED00006449656C61;

    v15 = sub_100158474(v102);

    *&v102 = &off_1008615F8;
    sub_1004A02FC(v15);
    v5 = v102;
    v4 = *(v102 + 16);
    v96 = v0;
    if (!v4)
    {
      break;
    }

    v100 = _swiftEmptyArrayStorage;
    sub_1007545C4();
    v3 = 0;
    while (v3 < *(v5 + 16))
    {
      v102 = *(v5 + 16 * v3 + 32);

      v7 = 0xED00006449656C61;
      sub_1004530F0(&v102, v9, v11, ObjectType, v105);

      ++v3;
      v0 = v105[0];
      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      if (v4 == v3)
      {

        v16 = v100;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_10:
  v92 = sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_1007C1E90;
  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  *(v17 + 24) = v11;
  strcpy((v17 + 32), "unsetLocaleId");
  *(v17 + 46) = -4864;
  *(v17 + 48) = ObjectType;
  v89[2] = type metadata accessor for MenuDebugSetting();
  v18 = swift_allocObject();
  v18[7] = 0xD000000000000011;
  v18[8] = 0x800000010077D100;
  v18[9] = v16;
  v18[10] = sub_1004538A0;
  v18[11] = v17;
  swift_unknownObjectRetain();

  v19 = v94;
  sub_100741484();
  v20 = sub_100741464();
  v21 = v11;
  v23 = v22;
  v24 = *(v98 + 8);
  v98 += 8;
  v95 = v24;
  v24(v19, v96);
  *&v102 = v20;
  *(&v102 + 1) = v23;
  sub_1007544E4();
  if (qword_100920C68 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v93, qword_100938660);
  sub_100752534();
  v26 = *(&v102 + 1);
  v25 = v102;
  if (!*(&v102 + 1))
  {
    v25 = 0x636F4C7465736E75;
    v26 = 0xED00006449656C61;
  }

  v100 = v25;
  v101 = v26;
  v27 = sub_1007544E4();
  __chkstk_darwin(v27);
  v88 = &v102;

  sub_100618DA4(sub_1002595C4, &v89[-4], v16);
  v89[1] = 0;

  sub_100416858(&v102);
  v28 = v91;
  *(v91 + 32) = v18;
  v29 = type metadata accessor for DebugSetting();
  if (qword_100920C70 != -1)
  {
    swift_once();
  }

  v30 = sub_10000C518(&unk_100947360, &qword_1007C3EF0);
  v31 = sub_10000D0FC(v30, qword_100938678);
  swift_unknownObjectRetain();
  v32 = sub_10038A5A0(0x72656D6165726353, 0xED000065646F4D20, 0xD000000000000025, 0x800000010077D120, v31, v9, 0, v29, v97, v21);
  swift_unknownObjectRelease();
  v28[5] = v32;
  v90 = v29;
  v33 = v96;
  v34 = v21;
  v35 = v94;
  if (qword_100920C78 != -1)
  {
    swift_once();
  }

  v36 = sub_10000D0FC(v30, qword_100938690);
  swift_unknownObjectRetain();
  v37 = sub_10038A5A0(0xD000000000000011, 0x800000010077D150, 0xD00000000000002CLL, 0x800000010077D170, v36, v9, 1, v90, v97, v34);
  swift_unknownObjectRelease();
  v28[6] = v37;
  v89[0] = type metadata accessor for InfoDebugSetting();
  v38 = swift_allocObject();
  v38[7] = 0xD000000000000013;
  v38[8] = 0x800000010077D1A0;
  v38[9] = 0xD00000000000001CLL;
  v38[10] = 0x800000010077D1C0;
  sub_100741484();
  v39 = sub_100741464();
  v41 = v40;
  v95(v35, v33);
  *&v102 = v39;
  *(&v102 + 1) = v41;
  sub_1007544E4();
  v28[7] = v38;
  v42 = v28;
  if (qword_100920C80 != -1)
  {
    swift_once();
  }

  v43 = sub_10000D0FC(v30, qword_1009386A8);
  swift_unknownObjectRetain();
  v44 = sub_10038A5A0(0xD000000000000012, 0x800000010077D1E0, 0xD000000000000030, 0x800000010077D200, v43, v9, 0, v90, v97, v34);
  swift_unknownObjectRelease();
  v42[8] = v44;
  v45 = v34;
  v90 = 0x800000010077D240;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1007AC000;
  v100 = 1701736302;
  v101 = 0xE400000000000000;
  sub_1007544E4();
  v47 = swift_allocObject();
  v47[2] = v9;
  v47[3] = v34;
  v48 = ObjectType;
  v47[4] = ObjectType;
  type metadata accessor for MenuItemDebugSetting();
  v49 = swift_allocObject();
  *(v49 + 72) = 0;
  *(v49 + 56) = 1701736270;
  *(v49 + 64) = 0xE400000000000000;
  *(v49 + 80) = sub_10045427C;
  *(v49 + 88) = v47;
  v50 = v103;
  *(v49 + 16) = v102;
  *(v49 + 32) = v50;
  *(v49 + 48) = v104;
  *(v46 + 32) = v49;
  v100 = 0x646E616D65446E6FLL;
  v101 = 0xE800000000000000;
  swift_unknownObjectRetain();
  sub_1007544E4();
  v51 = swift_allocObject();
  v51[2] = v9;
  v51[3] = v45;
  v51[4] = v48;
  v52 = swift_allocObject();
  *(v52 + 72) = 0;
  *(v52 + 56) = 0x6E616D6544206E4FLL;
  *(v52 + 64) = 0xE900000000000064;
  *(v52 + 80) = sub_1004542A4;
  *(v52 + 88) = v51;
  v53 = v103;
  *(v52 + 16) = v102;
  *(v52 + 32) = v53;
  *(v52 + 48) = v104;
  *(v46 + 40) = v52;
  v100 = 0x74726174536E6FLL;
  v101 = 0xE700000000000000;
  swift_unknownObjectRetain();
  sub_1007544E4();
  v54 = swift_allocObject();
  v54[2] = v9;
  v54[3] = v45;
  v54[4] = v48;
  v55 = swift_allocObject();
  *(v55 + 72) = 0;
  *(v55 + 56) = 0x7472617453206E4FLL;
  *(v55 + 64) = 0xE800000000000000;
  *(v55 + 80) = sub_100454304;
  *(v55 + 88) = v54;
  v56 = v103;
  *(v55 + 16) = v102;
  *(v55 + 32) = v56;
  *(v55 + 48) = v104;
  *(v46 + 48) = v55;
  v57 = swift_allocObject();
  v57[2] = v9;
  v57[3] = v45;
  v57[4] = v48;
  v58 = swift_allocObject();
  v59 = v90;
  v58[7] = 0xD00000000000001ALL;
  v58[8] = v59;
  v58[9] = v46;
  v58[10] = sub_10045432C;
  v58[11] = v57;
  swift_unknownObjectRetain_n();

  sub_100741484();
  v60 = sub_100741464();
  v62 = v61;
  v95(v35, v96);
  *&v102 = v60;
  *(&v102 + 1) = v62;
  sub_1007544E4();
  if (qword_100920C88 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v93, qword_1009386C0);
  sub_100752534();
  v64 = *(&v102 + 1);
  v63 = v102;
  if (!*(&v102 + 1))
  {
    v63 = 0x74726174536E6FLL;
    v64 = 0xE700000000000000;
  }

  v100 = v63;
  v101 = v64;
  v65 = sub_1007544E4();
  __chkstk_darwin(v65);
  v88 = &v102;

  sub_100618DA4(sub_10025ADCC, &v89[-4], v46);

  sub_100416858(&v102);
  v66 = v91;
  *(v91 + 72) = v58;
  sub_100752534();
  v67 = v102;
  v68 = swift_allocObject();
  *(v68 + 56) = 0xD000000000000016;
  *(v68 + 64) = 0x800000010077D260;
  *(v68 + 72) = v67;

  sub_100741484();
  v69 = sub_100741464();
  v71 = v70;
  v73 = v95;
  v72 = v96;
  v95(v35, v96);
  v100 = v69;
  v101 = v71;
  sub_1007544E4();

  v66[10] = v68;
  type metadata accessor for ActionDebugSetting();
  v74 = swift_allocObject();
  strcpy((v74 + 56), "Apply Settings");
  *(v74 + 71) = -18;
  *(v74 + 72) = 0u;
  *(v74 + 88) = 0u;
  *(v74 + 104) = sub_10045376C;
  *(v74 + 112) = 0;
  sub_100741484();
  v75 = sub_100741464();
  v77 = v76;
  v73(v35, v72);
  *&v102 = v75;
  *(&v102 + 1) = v77;
  sub_1007544E4();
  v66[11] = v74;
  v78 = swift_allocObject();
  strcpy((v78 + 56), "Reset Settings");
  *(v78 + 71) = -18;
  *(v78 + 72) = 0u;
  *(v78 + 88) = 0u;
  *(v78 + 104) = sub_100454338;
  *(v78 + 112) = 0;
  sub_100741484();
  v79 = sub_100741464();
  v81 = v80;
  v73(v35, v72);
  *&v102 = v79;
  *(&v102 + 1) = v81;
  sub_1007544E4();
  v66[12] = v78;
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1007A5CF0;
  type metadata accessor for DebugSection();
  v83 = swift_allocObject();
  sub_100741484();
  v84 = sub_100741464();
  v86 = v85;
  v73(v35, v72);
  v83[2] = v84;
  v83[3] = v86;
  v83[4] = 0;
  v83[5] = 0xE000000000000000;
  v83[6] = v66;
  *(v82 + 32) = v83;
  swift_unknownObjectRelease();
  return v82;
}

uint64_t sub_1004530F0@<X0>(uint64_t *a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v10 = *a1;
  v11 = a1[1];
  if (v11)
  {
    v12 = a1[1];
    v13 = *a1;
  }

  else
  {

    v13 = 0x74655320746F4ELL;
    v12 = 0xE700000000000000;
  }

  sub_1007544E4();
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = v11;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  type metadata accessor for MenuItemDebugSetting();
  v15 = swift_allocObject();
  *(v15 + 72) = 0;
  *(v15 + 56) = v13;
  *(v15 + 64) = v12;
  *(v15 + 80) = sub_1004544C0;
  *(v15 + 88) = v14;
  *(v15 + 16) = v18;
  *(v15 + 32) = v19;
  *(v15 + 48) = v20;
  *a7 = v15;
  swift_bridgeObjectRetain_n();
  return swift_unknownObjectRetain();
}

uint64_t sub_100453238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000C518(&qword_100938718, &unk_1007D8CB0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-1] - v8;
  swift_getObjectType();
  if (a2)
  {
    if (qword_100920C68 != -1)
    {
      swift_once();
    }

    v10 = sub_10000D0FC(v6, qword_100938660);
    (*(v7 + 16))(v9, v10, v6);
    v15[0] = a1;
    v15[1] = a2;

    return sub_100752544();
  }

  else
  {
    if (qword_100920C68 != -1)
    {
      swift_once();
    }

    v12 = sub_10000D0FC(v6, qword_100938660);
    v15[3] = v6;
    v15[4] = sub_1004544D0(&qword_100938730, &qword_100938718, &unk_1007D8CB0);
    v13 = sub_10000D134(v15);
    (*(v7 + 16))(v13, v12, v6);
    sub_100752504();
    return sub_10000C620(v15);
  }
}

void *sub_100453438()
{
  swift_getObjectType();
  if (qword_100920C68 != -1)
  {
    swift_once();
  }

  v4 = sub_10000C518(&qword_100938718, &unk_1007D8CB0);
  sub_10000D0FC(v4, qword_100938660);
  sub_100752534();
  if (!v6)
  {
  }

  return sub_1007544E4();
}

uint64_t sub_10045352C(__n128 a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a1;
  v3 = sub_10000C518(&qword_100938718, &unk_1007D8CB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  swift_getObjectType();
  if (qword_100920C88 != -1)
  {
    swift_once();
  }

  v7 = sub_10000D0FC(v3, qword_1009386C0);
  (*(v4 + 16))(v6, v7, v3);
  v9[1] = v9[0];
  return sub_100752544();
}

void *sub_100453678()
{
  swift_getObjectType();
  if (qword_100920C88 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C518(&qword_100938718, &unk_1007D8CB0);
  sub_10000D0FC(v2, qword_1009386C0);
  sub_100752534();
  return sub_1007544E4();
}

void sub_10045376C()
{
  v0 = [objc_opt_self() sharedCoordinator];
  [v0 notify];
}

void sub_1004537F4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000518F0(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_1004538B0(v4);
  *a1 = v2;
}

uint64_t sub_100453860()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

void sub_1004538B0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_100754704(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_100753324();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_100453A78(v7, v8, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1004539A8(0, v2, 1, a1);
  }
}

uint64_t sub_1004539A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_100754754(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100453A78(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v8 = sub_10005171C(v8);
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_100454054((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_100754754();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (v14[1] == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else if ((v13 ^ sub_100754754()))
          {
            goto LABEL_23;
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1002558E0(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_1002558E0((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_100454054((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10005171C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        sub_100051690(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (sub_100754754() & 1) == 0)
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t sub_100454054(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_100754754() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_100754754() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1004542CC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100454338()
{
  sub_100752854();
  sub_100752844();
  if (qword_100920C60 != -1)
  {
    swift_once();
  }

  v0 = sub_10000C518(&qword_100938720, &unk_1007C1F10);
  v1 = sub_10000D0FC(v0, qword_100938648);
  v4[3] = v0;
  v4[4] = sub_1004544D0(&qword_100938728, &qword_100938720, &unk_1007C1F10);
  v2 = sub_10000D134(v4);
  (*(*(v0 - 8) + 16))(v2, v1, v0);
  sub_100752834();

  sub_10000C620(v4);
  v3 = [objc_opt_self() sharedCoordinator];
  [v3 notify];
}

uint64_t sub_100454480()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1004544D0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000C724(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_10045457C(uint64_t a1, void *a2, double a3, double a4)
{
  v120 = sub_100754724();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_100750D04();
  v116 = *(v118 - 8);
  __chkstk_darwin(v118);
  v115 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_100750CF4();
  v9 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_100750CB4();
  v11 = *(v123 - 8);
  __chkstk_darwin(v123);
  v111 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_100750CC4();
  v127 = *(v114 - 8);
  __chkstk_darwin(v114);
  v113 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_100750C64();
  v14 = *(v112 - 8);
  __chkstk_darwin(v112);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10074CD14();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = a1;
  v21 = sub_100038D38();
  if (qword_100921230 != -1)
  {
    swift_once();
  }

  v100 = sub_100750534();
  sub_10000D0FC(v100, qword_1009813C8);
  v124 = a2;
  v22 = [a2 traitCollection];
  v102 = v21;
  sub_100753C14();

  v23 = sub_10074F3F4();
  v137 = v23;
  v99 = sub_100455568(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v138 = v99;
  v24 = sub_10000D134(&v136);
  v25 = *(v23 - 8);
  v26 = *(v25 + 104);
  v98 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v101 = v23;
  v97 = v26;
  v96 = v25 + 104;
  v26(v24);
  sub_10074FC74();
  sub_10000C620(&v136);
  sub_10074CD04();
  sub_10074CCE4();
  v27 = *(v18 + 8);
  v104 = v20;
  v106 = v17;
  v105 = v18 + 8;
  v95 = v27;
  v27(v20, v17);
  sub_10000C518(&unk_100923060, qword_1007A5CA0);
  v28 = *(v9 + 72);
  v109 = v9;
  v122 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v103 = v28;
  v125 = swift_allocObject();
  v121 = xmmword_1007A5A00;
  *(v125 + 1) = xmmword_1007A5A00;
  v29 = v137;
  v30 = v138;
  v31 = sub_10000C888(&v136, v137);
  v134 = v29;
  v135 = *(v30 + 8);
  v32 = sub_10000D134(&v133);
  (*(*(v29 - 8) + 16))(v32, v31, v29);
  v131 = &type metadata for Double;
  v132 = &protocol witness table for Double;
  v130 = 0;
  v33 = *(v14 + 104);
  v34 = v16;
  v93 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v35 = v112;
  v94 = v14 + 104;
  v92 = v33;
  v33(v16);
  v36 = v127;
  v37 = *(v127 + 104);
  v38 = v113;
  v90 = enum case for VerticalFlowLayout.HorizontalPlacement.center(_:);
  v39 = v114;
  v91 = v127 + 104;
  v89 = v37;
  v37(v113);
  v40 = sub_10000C518(&unk_100944F30, &unk_1007ABDD0);
  v41 = *(v11 + 72);
  v42 = v11;
  v43 = *(v11 + 80);
  v44 = (v43 + 32) & ~v43;
  v86 = v43;
  v87 = v40;
  v85 = v44 + v41;
  v45 = swift_allocObject();
  *(v45 + 16) = v121;
  v88 = v44;
  sub_100750C84();
  v129[0] = v45;
  v46 = sub_100455568(&qword_100923050, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
  v47 = sub_10000C518(&unk_100944F40, &unk_1007A5C90);
  v48 = sub_100016BFC();
  v49 = v111;
  v83 = v47;
  v82 = v48;
  v50 = v123;
  v84 = v46;
  sub_1007543A4();
  v51 = v126;
  sub_100750CE4();
  v52 = *(v42 + 8);
  v107 = v42 + 8;
  v81 = v52;
  v52(v49, v50);
  v53 = *(v36 + 8);
  v127 = v36 + 8;
  v53(v38, v39);
  v80 = *(v14 + 8);
  v80(v34, v35);
  sub_1000F4268(&v130);
  sub_10000C620(&v133);
  if (*(v51 + 176) == 1)
  {
    v54 = v39;
    v55 = v53;
    v56 = v34;
    if (qword_100921238 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v100, qword_1009813E0);
    v57 = [v124 traitCollection];
    sub_100753C14();

    v58 = v101;
    v134 = v101;
    v135 = v99;
    v59 = sub_10000D134(&v133);
    v97(v59, v98, v58);
    sub_10074FC74();
    sub_10000C620(&v133);
    v60 = v104;
    sub_10074CD04();
    sub_10074CCE4();
    v95(v60, v106);
    v61 = v134;
    v62 = v135;
    v63 = sub_10000C888(&v133, v134);
    v131 = v61;
    v132 = *(v62 + 8);
    v64 = sub_10000D134(&v130);
    (*(*(v61 - 8) + 16))(v64, v63, v61);
    v129[4] = &protocol witness table for Double;
    v129[3] = &type metadata for Double;
    v129[0] = 0;
    v92(v56, v93, v35);
    v89(v38, v90, v54);
    v65 = swift_allocObject();
    *(v65 + 16) = v121;
    sub_100750C84();
    v128 = v65;
    v66 = v49;
    v67 = v123;
    sub_1007543A4();
    v68 = v126;
    v69 = v35;
    v70 = v108;
    sub_100750CE4();
    v81(v66, v67);
    v55(v38, v54);
    v80(v56, v69);
    sub_1000F4268(v129);
    sub_10000C620(&v130);
    v71 = v125;
    v73 = v125[2];
    v72 = v125[3];
    if (v73 >= v72 >> 1)
    {
      v71 = sub_100254A58((v72 > 1), v73 + 1, 1, v125);
    }

    *(v71 + 2) = v73 + 1;
    (*(v109 + 32))(&v71[v122 + v73 * v103], v70, v110);
    sub_10000C620(&v133);
  }

  else
  {
    v68 = v126;
  }

  v74 = v115;
  sub_100750CD4();
  v75 = v118;
  sub_100750404();
  v76 = *(v68 + 120);
  sub_10000C888((v68 + 96), v76);
  v77 = v117;
  sub_100536120(v76);
  sub_100750564();
  (*(v119 + 8))(v77, v120);
  (*(v116 + 8))(v74, v75);
  sub_10000C620(&v136);
  return a3;
}

double sub_100455390()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  sub_10074F674();
  v5 = v4;
  v7 = v6;
  v8 = *(v1 + 8);
  v8(v3, v0);
  if (qword_100921EC0 != -1)
  {
    swift_once();
  }

  sub_100747B84();
  sub_10074F5C4();
  v10 = v9;
  v8(v3, v0);
  v11 = sub_100747B94();
  v12 = type metadata accessor for SnapshotPageTraitEnvironment();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v14 = v10;
  *(v14 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v13[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v11;
  v19.receiver = v13;
  v19.super_class = v12;
  v15 = objc_msgSendSuper2(&v19, "init");
  sub_10045457C(&xmmword_1009831F0, v15, v5, v7);
  v17 = v16;

  return v17;
}

uint64_t sub_100455568(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1004555B0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  v11 = sub_1007469A4();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView;
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[OBJC_IVAR____TtC22SubscribePageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_isAnimationEnabled] = 1;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator] = 0;
  v13 = &v4[OBJC_IVAR____TtC22SubscribePageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock];
  *v13 = 0;
  v13[1] = 0;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setClipsToBounds:1];

  v16 = OBJC_IVAR____TtC22SubscribePageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView;
  [*&v14[OBJC_IVAR____TtC22SubscribePageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView] setClipsToBounds:1];
  v17 = [v14 contentView];

  [v17 addSubview:*&v14[v16]];
  return v14;
}

void sub_1004558A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_100752914();
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
      sub_10000C824(a3, v14);
      sub_10000C518(&qword_1009242A0, &qword_1007A6400);
      sub_10074DFB4();
      if (swift_dynamicCast())
      {
        sub_10074DFA4();

        sub_10074EE94();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10000C8CC(v6, &unk_100925380, qword_1007A8E40);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          sub_100749544();

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
  result = qword_100938780;
  if (!qword_100938780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100455C10(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100455CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1004562F8(&unk_100938790, type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell, &unk_1007C20C0);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100455D64@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_100455DBC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

double sub_100455E7C()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = OBJC_IVAR____TtC22SubscribePageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *&v0[v1] = 0;

  return result;
}

double sub_100455EE4(uint64_t a1, uint64_t a2)
{
  sub_10074DFB4();
  sub_1004562F8(&qword_100924848, &type metadata accessor for MediumAdLockupWithScreenshotsBackground, &protocol conformance descriptor for MediumAdLockupWithScreenshotsBackground);
  sub_1007468B4();
  if (v5)
  {
    sub_10006AF98(v5, a2);
    [v2 setNeedsLayout];
  }

  return result;
}

double sub_100455FA8()
{
  swift_beginAccess();

  return result;
}

double sub_100455FF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1004560A8()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1, v1[1]);
  return v2;
}

double sub_100456104(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6, v7);
}

void (*sub_1004561C4(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_weakInit();
  sub_10000C824(a1, v7);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_100012160(v7, v5 + 32);
  return sub_1004563F8;
}

uint64_t sub_1004562F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100456340()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100456378()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004563B0()
{

  sub_10000C620((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

void sub_100456404()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  v2 = sub_1007469A4();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView;
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_isAnimationEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator) = 0;
  v4 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock);
  *v4 = 0;
  v4[1] = 0;
  sub_100754644();
  __break(1u);
}

void sub_100456504()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_100754664())
  {
    if (sub_100754664())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      sub_100754574();
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_100754664();
LABEL_13:
      if (v3)
      {
        sub_10015C2EC(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1004565DC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_primaryIcon) = a1;

  v10 = OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_remainingIcons;
  swift_beginAccess();
  *(v5 + v10) = a2;

  *(v5 + OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_artworkLoader) = a3;

  return sub_100456C70(a4, a5);
}

id sub_1004566A0(char a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_primaryIcon] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_remainingIcons] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_artworkLoader] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_impressionsCalculator] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_iconViews] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_amsImpressionItems] = _swiftEmptyArrayStorage;
  v1[OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_isCompactSheet] = a1;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v8 = v4;
  [v8 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v8 setClipsToBounds:1];

  return v8;
}

uint64_t sub_1004567E8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v36 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100746474();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100746434();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v30[-v15];
  v37.receiver = v1;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, "layoutSubviews", v14);
  [v1 bounds];
  width = v38.size.width;
  height = v38.size.height;
  result = CGRectIsEmpty(v38);
  if ((result & 1) == 0)
  {
    v20 = OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_iconViews;
    swift_beginAccess();
    v21 = *&v1[v20];
    if (!(v21 >> 62))
    {
      result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }

LABEL_4:
      v33 = v3;
      v22 = objc_opt_self();
      v31 = [v22 areAnimationsEnabled];
      v32 = v22;
      [v22 setAnimationsEnabled:0];
      v23 = [v1 traitCollection];
      v24 = sub_1007537D4();

      if (v24)
      {
        v25 = [v1 window];
        if (v25)
        {
          v26 = v25;
          [v25 frame];
          CGRectGetWidth(v39);
        }
      }

      sub_100746424();
      v27 = sub_100746454();
      v28 = *&v1[v20];
      if (v28 >> 62)
      {
        if (sub_100754664() == v27)
        {
          goto LABEL_10;
        }
      }

      else if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) == v27)
      {
LABEL_10:
        (*(v10 + 16))(v12, v16, v9);

        sub_100157E3C(v29);

        sub_100746444();
        sub_100746414();
        (*(v36 + 8))(v5, v33);
        (*(v34 + 8))(v8, v35);
        (*(v10 + 8))(v16, v9);
        return [v32 setAnimationsEnabled:v31];
      }

      sub_100456C70(width, height);
      goto LABEL_10;
    }

    result = sub_100754664();
    if (result)
    {
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t sub_100456C70(double a1, double a2)
{
  v4 = v2;
  v7 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v7 - 8);
  v75 = &v65 - v8;
  v9 = sub_100746434();
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  __chkstk_darwin(v11);
  v14 = &v65 - v13;
  result = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_artworkLoader];
  if (!result)
  {
    return result;
  }

  v70 = v12;
  v73 = result;

  v16 = &selRef_initWithTitle_style_target_action_;
  v17 = [v2 traitCollection];
  v18 = sub_1007537D4();

  v19 = &stru_1008F2000;
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

  sub_100746424();
  sub_100746404();
  v22 = *(v10 + 8);
  v68 = v10 + 8;
  v67 = v22;
  v22(v14, v9);
  v80 = _swiftEmptyArrayStorage;
  v81 = _swiftEmptyArrayStorage;
  v79 = _swiftEmptyArrayStorage;
  v23 = OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_iconViews;
  swift_beginAccess();
  v24 = *&v23[v4];
  if (v24 >> 62)
  {
    if (sub_100754664())
    {
      goto LABEL_7;
    }
  }

  else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    sub_100456504();
    goto LABEL_10;
  }

  sub_1007433C4();
  v25 = sub_1007431D4();
LABEL_10:
  v26 = v25;
  swift_endAccess();
  v27 = v26;
  sub_100753284();
  if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_93:
    sub_100753304();
  }

  v71 = v27;
  sub_100753344();
  v77 = v79;
  v78 = v23;
  if (!*(v4 + OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_primaryIcon))
  {
    v29 = _swiftEmptyArrayStorage;
    v74 = _swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  swift_retain_n();
  sub_100753284();
  if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
  v74 = v81;
  v28 = v75;
  sub_1007494F4();
  v3 = sub_100458210(v28);
  sub_10045862C(v28);
  if (!v3)
  {
    v29 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v23 = [objc_allocWithZone(AMSUIDynamicImpressionItem) initWithFrame:v3 impressionMetrics:{0.0, 0.0, a1, a2}];
  sub_100753284();
  if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_110;
  }

  while (1)
  {
    sub_100753344();

    v29 = v80;
LABEL_19:
    sub_100749504();
    sub_10074F364();

    sub_1007433C4();
    sub_10004D658();
    sub_100744204();

    v23 = v78;
LABEL_20:
    [v4 bounds];
    v30 = [v4 *(v16 + 1032)];
    v31 = sub_1007537D4();

    if (v31)
    {
      v32 = [v4 v19[117].attr];
      if (v32)
      {
        v33 = v32;
        [v32 frame];
        CGRectGetWidth(v83);
      }
    }

    v16 = v70;
    sub_100746424();
    v34 = sub_100746464();
    v35 = *(v34 + 16);
    v19 = v73;
    v69 = v34;
    if (v35 >= 2)
    {
      break;
    }

LABEL_76:
    sub_100457BF4(v74, a1, a2);

    *(v4 + OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_amsImpressionItems) = v29;

    v51 = v77;
    if (v77 >> 62)
    {
      v58 = sub_100754664();
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
        v56 = sub_100754574();
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
      v64 = sub_100754664();
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
          v62 = sub_100754574();
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
    sub_100753304();
  }

  v72 = v29;
  v66 = v9;
  v36 = OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_remainingIcons;
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
    sub_1007433C4();
    v27 = sub_1007431D4();
    v23 = v78;
LABEL_53:
    swift_endAccess();
    v3 = v27;
    sub_100753284();
    if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v27 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_100753304();
    }

    sub_100753344();
    v77 = v79;
    v43 = *(v4 + v36);
    if (v43 >> 62)
    {
      if (!sub_100754664())
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
      v45 = sub_100754664();
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
      v27 = sub_100754574();
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

    sub_100753284();
    if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
    v74 = v81;
    v48 = v75;
    sub_1007494F4();
    v49 = sub_100458210(v48);
    sub_10045862C(v48);
    if (v49)
    {
      v50 = [objc_allocWithZone(AMSUIDynamicImpressionItem) initWithFrame:v49 impressionMetrics:{0.0, 0.0, v37, v38}];
      sub_100753284();
      if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();

      v72 = v80;
      v19 = v73;
    }

    sub_100749504();
    sub_10074F364();

    sub_1007433C4();
    sub_10004D658();
    sub_100744204();

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

  if (!sub_100754664())
  {
    goto LABEL_52;
  }

  result = sub_100754664();
  if (result)
  {
    result = sub_100754664();
    if (!result)
    {
      goto LABEL_112;
    }

LABEL_29:
    if ((v3 & 0xC000000000000001) != 0)
    {
      v39 = sub_100754574();
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
      if (!sub_100754664())
      {
        goto LABEL_91;
      }

      if (sub_100754664() < 1)
      {
        goto LABEL_92;
      }

      v40 = sub_100754664();
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
          sub_10015C1EC(0, 1, 0);
          *&v23[v4] = v3;
          goto LABEL_53;
        }

LABEL_44:
        v23 = v78;
LABEL_46:
        v3 = sub_100754584();
        *&v23[v4] = v3;
        goto LABEL_47;
      }
    }

    else if (!v23)
    {
      goto LABEL_44;
    }

    sub_100754664();
    v23 = v78;
    goto LABEL_46;
  }

  __break(1u);
LABEL_112:
  __break(1u);
  return result;
}

double sub_100457910(uint64_t a1, __n128 a2, double a3)
{
  v4 = v3;
  v5 = sub_100746434();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100746474();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v3 bounds];
  v11 = [v3 traitCollection];
  v12 = sub_1007537D4();

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

  sub_100746424();
  swift_beginAccess();

  sub_100157E3C(v15);

  sub_100746444();
  sub_1007463F4();
  v17 = v16;
  (*(v7 + 8))(v10, v6);
  return v17;
}

void sub_100457BF4(unint64_t a1, double a2, double a3)
{
  v5 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_100752914();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_impressionsCalculator))
  {
    if (a1 >> 62)
    {
      v12 = sub_100754664();
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
          sub_100754574();
        }

        else
        {
        }

        sub_1007494F4();
        if ((*v13)(v7, 1, v8) == 1)
        {

          sub_10045862C(v7);
        }

        else
        {
          (*v17)(v11, v7, v8);
          sub_100749544();

          (*v14)(v11, v8);
        }
      }
    }
  }
}

void sub_100457FC4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000C518(&qword_100936D70, &qword_1007C0258);
    v2 = sub_1007546B4();
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
        sub_10000C5B4(*(a1 + 56) + 32 * v11, v27);
        *&v26 = v13;
        *(&v26 + 1) = v14;
        v24 = v26;
        v25[0] = v27[0];
        v25[1] = v27[1];
        v15 = v26;
        sub_10000C610(v25, &v22);

        sub_10000C518(&qword_10092DCF0, &unk_1007B2380);
        swift_dynamicCast();
        v16 = v23;
        v17 = sub_1003861D0(v15, *(&v15 + 1));
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

id sub_100458210(uint64_t a1)
{
  v2 = sub_1007528E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v34 - v7;
  __chkstk_darwin(v9);
  v11 = v34 - v10;
  v12 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v12 - 8);
  v14 = v34 - v13;
  v15 = sub_100752914();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10020870C(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10045862C(v14);
    return 0;
  }

  else
  {
    v20 = *(v16 + 32);
    v35 = v15;
    v20(v18, v14, v15);
    sub_1007528F4();
    v34[1] = sub_1007528C4();
    v22 = v21;
    v23 = *(v3 + 8);
    v23(v11, v2);
    sub_1007528F4();
    v34[2] = sub_1007528D4();
    v23(v8, v2);
    sub_1007528F4();
    v24 = sub_1007528B4();
    v23(v5, v2);
    if (v22)
    {
      v25 = sub_100753064();
    }

    else
    {
      v25 = 0;
    }

    v26 = objc_allocWithZone(AMSUIDynamicImpressionMetricsIdentifier);
    v27 = sub_100753064();

    v28 = [v26 initWithParent:v25 element:v27 index:v24];

    v29 = sub_100752904();
    sub_100457FC4(v29);

    sub_10041542C(_swiftEmptyArrayStorage);
    v30 = objc_allocWithZone(AMSUIDynamicImpressionMetrics);
    sub_10000C518(&qword_10092DCF0, &unk_1007B2380);
    isa = sub_100752F34().super.isa;

    v32 = sub_100752F34().super.isa;

    v33 = [v30 initWithIdentifier:v28 fields:isa custom:v32];

    (*(v16 + 8))(v18, v35);
    return v33;
  }
}

uint64_t sub_10045862C(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100458694()
{
  result = qword_100938800;
  if (!qword_100938800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100938800);
  }

  return result;
}

void sub_1004586E0()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_primaryIcon) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_remainingIcons) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_artworkLoader) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_impressionsCalculator) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_iconViews) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_amsImpressionItems) = _swiftEmptyArrayStorage;
  sub_100754644();
  __break(1u);
}

void sub_1004587F4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_100754724();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PlusView();
  v30.receiver = v4;
  v30.super_class = v14;
  objc_msgSendSuper2(&v30, "drawRect:", a1, a2, a3, a4);
  v15 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension8PlusView_plusColor];
  if (v15)
  {
    v16 = v15;
    v17 = UIGraphicsGetCurrentContext();
    v18 = v17;
    if (v17)
    {
      CGContextBeginPath(v17);
      v19 = v18;
      v20 = [v16 CGColor];
      CGContextSetStrokeColorWithColor(v19, v20);
    }

    v29 = v16;
    v31.origin.x = a1;
    v31.origin.y = a2;
    v31.size.width = a3;
    v31.size.height = a4;
    CGRectGetMinX(v31);
    v32.origin.x = a1;
    v32.origin.y = a2;
    v32.size.width = a3;
    v32.size.height = a4;
    CGRectGetMidY(v32);
    v21 = enum case for FloatingPointRoundingRule.down(_:);
    v22 = *(v11 + 104);
    v22(v13, enum case for FloatingPointRoundingRule.down(_:), v10);
    sub_100753D84();
    v23 = *(v11 + 8);
    v23(v13, v10);
    v33.origin.x = a1;
    v33.origin.y = a2;
    v33.size.width = a3;
    v33.size.height = a4;
    CGRectGetMaxX(v33);
    v22(v13, v21, v10);
    sub_100753D84();
    v23(v13, v10);
    if (v18)
    {
      CGContextSetLineWidth(v18, *&v5[OBJC_IVAR____TtC22SubscribePageExtension8PlusView_lineThickness]);
      v24 = v18;
      sub_100753554();

      v25 = v24;
      sub_100753574();
    }

    v34.origin.x = a1;
    v34.origin.y = a2;
    v34.size.width = a3;
    v34.size.height = a4;
    CGRectGetMidX(v34);
    v35.origin.x = a1;
    v35.origin.y = a2;
    v35.size.width = a3;
    v35.size.height = a4;
    CGRectGetMinY(v35);
    v22(v13, v21, v10);
    sub_100753D84();
    v23(v13, v10);
    v36.origin.x = a1;
    v36.origin.y = a2;
    v36.size.width = a3;
    v36.size.height = a4;
    CGRectGetMidX(v36);
    v37.origin.x = a1;
    v37.origin.y = a2;
    v37.size.width = a3;
    v37.size.height = a4;
    CGRectGetMaxY(v37);
    v22(v13, v21, v10);
    sub_100753D84();
    v23(v13, v10);
    if (v18)
    {
      CGContextSetLineWidth(v18, *&v5[OBJC_IVAR____TtC22SubscribePageExtension8PlusView_lineThickness]);
      v26 = v18;
      sub_100753554();

      v27 = v26;
      sub_100753574();

      CGContextStrokePath(v27);
    }
  }
}

id sub_100458C98(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlusView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100458D00(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = sub_100751284();
  v35 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&qword_1009389E0, qword_1007C22A8);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_100750644();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  __chkstk_darwin(v19);
  v21 = &v28 - v20;
  sub_1007506E4();
  sub_10045C638(&qword_100938A18, &type metadata accessor for DisjointStack, &protocol conformance descriptor for DisjointStack);
  v34 = a1;
  sub_100750A74();
  v28 = v21;
  v29 = v13;
  (*(v13 + 16))(v15, v21, v12);
  sub_10045C638(&qword_100938A20, &type metadata accessor for DisjointStack.Placements, &protocol conformance descriptor for DisjointStack.Placements);
  sub_100753254();
  sub_10045C638(&qword_100938A28, &type metadata accessor for DisjointStack.Placements, &protocol conformance descriptor for DisjointStack.Placements);
  sub_1007542A4();
  v22 = v35;
  v23 = v35 + 48;
  v24 = *(v35 + 48);
  if (v24(v11, 1, v6) != 1)
  {
    v25 = *(v22 + 32);
    v35 = v22 + 32;
    v30 = (v22 + 8);
    v31 = v25;
    v32 = v11;
    v33 = v23;
    do
    {
      v31(v8, v11, v6);
      sub_100751264();
      sub_10000C888(v36, v36[3]);
      sub_100751274();
      [v34 layoutDirection];
      sub_100753B34();
      v11 = v32;
      sub_100751244();
      (*v30)(v8, v6);
      sub_10000C620(v36);
      sub_1007542A4();
    }

    while (v24(v11, 1, v6) != 1);
  }

  v26 = *(v29 + 8);
  v26(v18, v12);
  return (v26)(v28, v12);
}

uint64_t sub_1004591A8(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = sub_100751284();
  v35 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&qword_1009389E0, qword_1007C22A8);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_1007506F4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  __chkstk_darwin(v19);
  v21 = &v28 - v20;
  sub_1007507B4();
  sub_10045C638(&qword_1009389E8, &type metadata accessor for VerticalStack, &protocol conformance descriptor for VerticalStack);
  v34 = a1;
  sub_100750A74();
  v28 = v21;
  v29 = v13;
  (*(v13 + 16))(v15, v21, v12);
  sub_10045C638(&qword_1009389F0, &type metadata accessor for VerticalStack.Placements, &protocol conformance descriptor for VerticalStack.Placements);
  sub_100753254();
  sub_10045C638(&qword_1009389F8, &type metadata accessor for VerticalStack.Placements, &protocol conformance descriptor for VerticalStack.Placements);
  sub_1007542A4();
  v22 = v35;
  v23 = v35 + 48;
  v24 = *(v35 + 48);
  if (v24(v11, 1, v6) != 1)
  {
    v25 = *(v22 + 32);
    v35 = v22 + 32;
    v30 = (v22 + 8);
    v31 = v25;
    v32 = v11;
    v33 = v23;
    do
    {
      v31(v8, v11, v6);
      sub_100751264();
      sub_10000C888(v36, v36[3]);
      sub_100751274();
      [v34 layoutDirection];
      sub_100753B34();
      v11 = v32;
      sub_100751244();
      (*v30)(v8, v6);
      sub_10000C620(v36);
      sub_1007542A4();
    }

    while (v24(v11, 1, v6) != 1);
  }

  v26 = *(v29 + 8);
  v26(v18, v12);
  return (v26)(v28, v12);
}

uint64_t sub_100459650()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_100938840);
  sub_10000D0FC(v4, qword_100938840);
  if (qword_1009215A0 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100981E18);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100459828()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_100938858);
  sub_10000D0FC(v4, qword_100938858);
  if (qword_1009215A8 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100981E30);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004599FC()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_100938870);
  sub_10000D0FC(v4, qword_100938870);
  if (qword_1009215B8 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100981E60);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100459BD0()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_100938888);
  sub_10000D0FC(v4, qword_100938888);
  if (qword_1009215B8 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100981E60);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

void sub_100459DA4(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v9 - 8);
  v11 = &v83 - v10;
  v12 = sub_10074A3F4();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10074A454();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10074A374();
  v18 = __chkstk_darwin(v17);
  (*(v20 + 104))(&v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v18);
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v13);
  sub_10074A3E4();
  sub_10074A384();
  v21 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_materialBackground;
  *&v4[v21] = [objc_allocWithZone(UIVisualEffectView) init];
  v22 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_collectionArtwork;
  type metadata accessor for CollectionLockupArtwork();
  *&v4[v22] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_badgeLabel;
  sub_100745C84();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v23] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_titleLabel;
  *&v4[v25] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v26 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_descriptionLabel;
  *&v4[v26] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v27 = sub_100753064();
  v28 = [objc_opt_self() systemImageNamed:v27];

  if (v28)
  {
    v29 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_chevronView;
    v30 = [objc_allocWithZone(UIImageView) initWithImage:v28];

    *&v4[v29] = v30;
    v31 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_tapGestureRecognizer;
    *&v4[v31] = [objc_allocWithZone(UITapGestureRecognizer) init];
    v32 = &v4[OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_selectionHandler];
    v33 = type metadata accessor for CarouselItemCollectionLockupOverlay(0);
    *v32 = 0;
    *(v32 + 1) = 0;
    v89.receiver = v4;
    v89.super_class = v33;
    v34 = objc_msgSendSuper2(&v89, "initWithFrame:", a1, a2, a3, a4);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v38 = v34;
    [v38 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
    [v38 setOverrideUserInterfaceStyle:2];
    [v38 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    v86 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_materialBackground;
    v39 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_materialBackground];
    sub_1006F3F14(26.0);

    v40 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_badgeLabel;
    v41 = qword_1009215A0;
    v42 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_badgeLabel];
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = sub_100750534();
    v44 = sub_10000D0FC(v43, qword_100981E18);
    v45 = *(v43 - 8);
    v46 = *(v45 + 16);
    v46(v11, v44, v43);
    v47 = *(v45 + 56);
    v47(v11, 0, 1, v43);
    sub_100745BA4();

    [*&v38[v40] setNumberOfLines:1];
    v48 = *&v38[v40];
    v49 = objc_opt_self();
    v50 = v48;
    v88 = v49;
    v51 = [v49 secondaryLabelColor];
    v52 = v40;
    v53 = v51;
    [v50 setTextColor:v51];

    v87 = v52;
    v54 = [*&v38[v52] layer];
    v85 = kCAFilterPlusL;
    [v54 setCompositingFilter:?];

    v55 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_titleLabel;
    v56 = qword_1009215A8;
    v57 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_titleLabel];
    if (v56 != -1)
    {
      swift_once();
    }

    v58 = sub_10000D0FC(v43, qword_100981E30);
    v46(v11, v58, v43);
    v47(v11, 0, 1, v43);
    sub_100745BA4();

    [*&v38[v55] setNumberOfLines:1];
    v59 = *&v38[v55];
    v60 = [v88 labelColor];
    [v59 setTextColor:v60];

    v61 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_descriptionLabel;
    v62 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_descriptionLabel];
    v84 = v55;
    v63 = qword_1009215B8;
    v64 = v62;
    if (v63 != -1)
    {
      swift_once();
    }

    v65 = sub_10000D0FC(v43, qword_100981E60);
    v46(v11, v65, v43);
    v47(v11, 0, 1, v43);
    sub_100745BA4();

    [*&v38[v61] setNumberOfLines:1];
    v66 = *&v38[v61];
    v67 = v88;
    v68 = [v88 secondaryLabelColor];
    [v66 setTextColor:v68];

    v69 = [*&v38[v61] layer];
    v70 = v85;
    [v69 setCompositingFilter:v85];

    v71 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_chevronView;
    v72 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_chevronView];
    v73 = objc_opt_self();
    v74 = v72;
    v75 = [v73 configurationWithTextStyle:UIFontTextStyleBody];
    [v74 setPreferredSymbolConfiguration:v75];

    v76 = *&v38[v71];
    v77 = [v67 secondaryLabelColor];
    [v76 setTintColor:v77];

    v78 = [*&v38[v71] layer];
    [v78 setCompositingFilter:v70];

    v79 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_tapGestureRecognizer;
    [*&v38[OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_tapGestureRecognizer] setEnabled:0];
    v80 = *&v38[v79];
    v81 = v38;
    [v80 addTarget:v81 action:"handleSelection:"];
    v82 = *&v38[v79];
    [v82 setDelegate:v81];

    [v81 addGestureRecognizer:*&v38[v79]];
    [v81 addSubview:*&v38[v86]];
    [v81 addSubview:*&v81[OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_collectionArtwork]];
    [v81 addSubview:*&v38[v87]];
    [v81 addSubview:*&v38[v84]];
    [v81 addSubview:*&v38[v61]];
    [v81 addSubview:*&v38[v71]];
    sub_10045B26C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10045A95C@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v75 = a1;
  v77 = a2;
  v68 = sub_100750F54();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v71 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v69 = &v61 - v6;
  v73 = sub_100750F84();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_100750A34();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v63 = &v61 - v10;
  __chkstk_darwin(v11);
  v64 = &v61 - v12;
  v13 = sub_1007507B4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v61 - v18;
  __chkstk_darwin(v20);
  v22 = &v61 - v21;
  __chkstk_darwin(v23);
  v25 = &v61 - v24;
  sub_100750794();
  v26 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_badgeLabel);
  v27 = sub_100745C84();
  v92 = v27;
  v93 = &protocol witness table for UILabel;
  v91 = v26;
  v28 = v26;
  sub_1007507A4();
  v74 = v14;
  v29 = *(v14 + 8);
  v29(v16, v13);
  sub_10000C620(&v91);
  v30 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_titleLabel);
  v92 = v27;
  v93 = &protocol witness table for UILabel;
  v91 = v30;
  v31 = v30;
  sub_1007507A4();
  v29(v19, v13);
  sub_10000C620(&v91);
  v32 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_descriptionLabel);
  v92 = v27;
  v93 = &protocol witness table for UILabel;
  v91 = v32;
  v33 = v32;
  v78 = v25;
  sub_1007507A4();
  v34 = v13;
  v76 = v29;
  v29(v22, v13);
  sub_10000C620(&v91);
  if (v75)
  {
    v35 = v62;
    sub_100750A04();
    v36 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_collectionArtwork);
    v92 = type metadata accessor for CollectionLockupArtwork();
    v93 = sub_10045C638(&qword_100938A10, type metadata accessor for CollectionLockupArtwork, &unk_1007A7578);
    v91 = v36;
    v37 = v36;
    v38 = v63;
    sub_100750A14();
    v39 = *(v65 + 8);
    v40 = v66;
    v39(v35, v66);
    sub_10000C620(&v91);
    v92 = v13;
    v93 = &protocol witness table for VerticalStack;
    v41 = sub_10000D134(&v91);
    (*(v74 + 16))(v41, v78, v13);
    v42 = v64;
    sub_100750A14();
    v39(v38, v40);
    sub_10000C620(&v91);
    v43 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_chevronView);
    v89 = sub_1001A28CC();
    v90 = &protocol witness table for UIImageView;
    v88 = v43;
    v92 = v40;
    v93 = &protocol witness table for HorizontalStack;
    sub_10000D134(&v91);
    v44 = v43;
    sub_100750A14();
    v39(v42, v40);
    sub_10000C620(&v88);
  }

  else
  {
    v45 = v74;
    (*(v74 + 16))(v22, v78, v13);
    v46 = type metadata accessor for TextLayout(0);
    v47 = swift_allocObject();
    (*(v45 + 32))(v47 + OBJC_IVAR____TtC22SubscribePageExtensionP33_04B5E2A62FC871564D6815F6F8FC541210TextLayout_textStack, v22, v13);
    v92 = v46;
    v93 = sub_10045C638(&qword_100938A08, type metadata accessor for TextLayout, &unk_1007C2264);
    v91 = v47;
    v48 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_collectionArtwork);
    v49 = type metadata accessor for CollectionLockupArtwork();
    v90 = &protocol witness table for UIView;
    v89 = v49;
    v88 = v48;
    v86 = &type metadata for CGFloat;
    v87 = &protocol witness table for CGFloat;
    v85 = 0x4024000000000000;
    v50 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
    v51 = *(v67 + 104);
    v52 = v68;
    v51(v69, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v68);
    v53 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_chevronView);
    v83 = sub_1001A28CC();
    v84 = &protocol witness table for UIView;
    v81 = &protocol witness table for CGFloat;
    v82 = v53;
    v80 = &type metadata for CGFloat;
    v79 = 0x4038000000000000;
    v51(v71, v50, v52);
    v54 = v48;
    v55 = v53;
    v56 = v70;
    sub_100750F74();
    sub_10045C638(&qword_100936F08, &type metadata accessor for FlankedHorizontalLayout, &protocol conformance descriptor for FlankedHorizontalLayout);
    v57 = v73;
    sub_100750434();
    (*(v72 + 8))(v56, v57);
  }

  sub_10000C824(&v91, &v88);
  v58 = sub_1007511A4();
  v59 = v77;
  v77[3] = v58;
  v59[4] = &protocol witness table for Margins;
  sub_10000D134(v59);
  sub_100751194();
  v76(v78, v34);
  return sub_10000C620(&v91);
}

id sub_10045B26C()
{
  v1 = v0;
  v2 = sub_10074A3F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  v11 = sub_10074A464();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v37 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  v18 = __chkstk_darwin(v17);
  v20 = &v34 - v19;
  v35 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_badgeLabel];
  v21 = *(v12 + 16);
  v42 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_displayOptions;
  v43 = v21;
  (v21)(&v34 - v19, &v1[OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_displayOptions], v11, v18);
  sub_10074A404();
  v36 = *(v12 + 8);
  v36(v20, v11);
  v22 = sub_10074A3C4();
  v23 = *(v3 + 8);
  v39 = v3 + 8;
  v40 = v2;
  v41 = v23;
  v23(v10, v2);
  if (!v22)
  {
    v22 = [objc_opt_self() secondaryLabelColor];
  }

  [v35 setTextColor:v22];

  v24 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_titleLabel];
  v43(v16, &v1[v42], v11);
  sub_10074A404();
  v25 = v16;
  v26 = v36;
  v36(v25, v11);
  v27 = sub_10074A3D4();
  v28 = v40;
  v41(v7, v40);
  if (!v27)
  {
    v27 = [objc_opt_self() labelColor];
  }

  [v24 setTextColor:v27];

  v29 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_descriptionLabel];
  v30 = v37;
  v43(v37, &v1[v42], v11);
  v31 = v38;
  sub_10074A404();
  v26(v30, v11);
  v32 = sub_10074A3A4();
  v41(v31, v28);
  if (!v32)
  {
    v32 = [objc_opt_self() secondaryLabelColor];
  }

  [v29 setTextColor:v32];

  return [v1 setNeedsLayout];
}

id sub_10045B728()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselItemCollectionLockupOverlay(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10045B878(uint64_t a1)
{
  result = sub_10074A464();
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

double sub_10045B92C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_selectionHandler);
  v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_selectionHandler);
  v7 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_selectionHandler + 8);
  *v5 = a1;
  v5[1] = a2;
  sub_10001B5AC(a1, a2);
  sub_10001B5AC(a1, a2);
  v8 = sub_1000164A8(v6, v7);
  v9 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_tapGestureRecognizer);
  if (a1)
  {
    v8 = sub_1000164A8(a1, a2);
  }

  [v9 setEnabled:{a1 != 0, v8}];

  return sub_1000164A8(a1, a2);
}

double sub_10045B9E0(__n128 a1, uint64_t a2, char *a3)
{
  v4 = sub_10074A484();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  sub_10004CF40(v5, a3);

  return result;
}

uint64_t sub_10045BA50()
{
  sub_1007433C4();
  sub_10045C638(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  sub_100744274();
  sub_100744274();
  sub_100744274();
  return sub_100744274();
}

uint64_t sub_10045BB48()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtensionP33_04B5E2A62FC871564D6815F6F8FC541210TextLayout_textStack;
  v2 = sub_1007507B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10045BC0C(uint64_t a1)
{
  result = sub_1007507B4();
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

uint64_t sub_10045BC9C(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = [a1 traitCollection];
  sub_1004591A8(v9, a2, a3, a4, a5);

  return sub_100750314();
}

double sub_10045BD48(void *a1, __n128 a2, double a3)
{
  v4 = sub_1007506F4();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  sub_100750F44();
  sub_1007507B4();
  sub_10045C638(&qword_1009389E8, &type metadata accessor for VerticalStack, &protocol conformance descriptor for VerticalStack);
  sub_100750A74();
  sub_10045C638(&qword_100938A00, &type metadata accessor for VerticalStack.Placements, &protocol conformance descriptor for VerticalStack.Placements);
  sub_100750C54();
  v11 = v10;

  (*(v5 + 8))(v8, v4);
  return v11;
}

uint64_t sub_10045BF88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_100750744();
  v6 = sub_100750764();
  sub_100750784();
  sub_100750784();
  if (sub_100750784() != v6)
  {
    sub_100750784();
  }

  sub_100750734();
  if (*a2 != -1)
  {
    swift_once();
  }

  v7 = sub_100750B04();
  v8 = sub_10000D0FC(v7, a3);
  v11[3] = v7;
  v11[4] = &protocol witness table for StaticDimension;
  v9 = sub_10000D134(v11);
  (*(*(v7 - 8) + 16))(v9, v8, v7);
  return sub_100750714();
}

uint64_t sub_10045C090()
{
  sub_100750744();
  sub_10000C518(&unk_10093D7F0, qword_1007AED00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A6580;
  v1 = sub_100750764();
  *(inited + 32) = v1;
  v2 = sub_100750774();
  *(inited + 40) = v2;
  sub_100750784();
  sub_100750784();
  if (sub_100750784() != v1)
  {
    sub_100750784();
  }

  sub_100750784();
  if (sub_100750784() != v2)
  {
    sub_100750784();
  }

  sub_100750734();
  if (qword_100920CA8 != -1)
  {
    swift_once();
  }

  v3 = sub_100750B04();
  v4 = sub_10000D0FC(v3, qword_100938870);
  v11 = v3;
  v12 = &protocol witness table for StaticDimension;
  v5 = sub_10000D134(v10);
  v6 = *(*(v3 - 8) + 16);
  v6(v5, v4, v3);
  sub_100750714();
  if (qword_100920CB0 != -1)
  {
    swift_once();
  }

  v7 = sub_10000D0FC(v3, qword_100938888);
  v11 = v3;
  v12 = &protocol witness table for StaticDimension;
  v8 = sub_10000D134(v10);
  v6(v8, v7, v3);
  return sub_100750724();
}

id sub_10045C2C4(uint64_t a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_badgeLabel];
  sub_10074A4D4();
  if (v4)
  {
    v5 = sub_100753064();
  }

  else
  {
    v5 = 0;
  }

  [v3 setText:v5];

  v6 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_titleLabel];
  sub_10074A4E4();
  if (v7)
  {
    v8 = sub_100753064();
  }

  else
  {
    v8 = 0;
  }

  [v6 setText:v8];

  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_descriptionLabel];
  sub_10074A494();
  if (v10)
  {
    v11 = sub_100753064();
  }

  else
  {
    v11 = 0;
  }

  [v9 setText:v11];

  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_collectionArtwork];
  v13 = sub_10074A484();
  if (!v13)
  {
    i = 0;
    goto LABEL_15;
  }

  if (v13 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {

LABEL_15:
    v15 = 4;
    if (i < 4)
    {
      v15 = i;
    }

    v16 = OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_iconCount;
    v17 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_iconCount];
    *&v12[OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_iconCount] = v15;
    v18 = &stru_1008F2000;
    if (v15 == v17)
    {
      break;
    }

    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A57A0;
    v20 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon1];
    *(inited + 32) = v20;
    v21 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon2];
    *(inited + 40) = v21;
    v22 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon3];
    *(inited + 48) = v22;
    v23 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension23CollectionLockupArtwork_icon4];
    *(inited + 56) = v23;
    v24 = inited & 0xC000000000000001;
    v25 = v20;
    v26 = v21;
    v27 = v22;
    v28 = v23;
    if ((inited & 0xC000000000000001) != 0)
    {
      v29 = sub_100754574();
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v29 = v25;
    }

    v30 = v29;
    [v29 setHidden:*&v12[v16] < 1];

    if (v24)
    {
      v31 = sub_100754574();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_32;
      }

      v31 = *(inited + 40);
    }

    v32 = v31;
    [v31 setHidden:*&v12[v16] < 2];

    if (v24)
    {
      v33 = sub_100754574();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_32;
      }

      v33 = *(inited + 48);
    }

    v34 = v33;
    [v33 setHidden:*&v12[v16] < 3];

    if (v24)
    {
      v35 = sub_100754574();
      goto LABEL_30;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v35 = *(inited + 56);
LABEL_30:
      v36 = v35;
      [v35 setHidden:*&v12[v16] < 4];

      swift_setDeallocating();
      swift_arrayDestroy();
      v18 = &stru_1008F2000;
      [v12 setNeedsLayout];
      return [v2 v18[51].attr];
    }

LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  return [v2 v18[51].attr];
}

uint64_t sub_10045C638(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10045C680()
{
  v1 = sub_10074A3F4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10074A454();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074A374();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 104))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v7);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  sub_10074A3E4();
  sub_10074A384();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_materialBackground;
  *(v0 + v10) = [objc_allocWithZone(UIVisualEffectView) init];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_collectionArtwork;
  type metadata accessor for CollectionLockupArtwork();
  *(v0 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_badgeLabel;
  sub_100745C84();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v12) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_titleLabel;
  *(v0 + v14) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_descriptionLabel;
  *(v0 + v15) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = sub_100753064();
  v17 = [objc_opt_self() systemImageNamed:v16];

  if (!v17)
  {
    __break(1u);
  }

  v18 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_chevronView;
  v19 = [objc_allocWithZone(UIImageView) initWithImage:v17];

  *(v0 + v18) = v19;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_tapGestureRecognizer;
  *(v0 + v20) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v21 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension35CarouselItemCollectionLockupOverlay_selectionHandler);
  *v21 = 0;
  v21[1] = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_10045C9F4()
{
  v0 = sub_100752E24();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100752E44();
  sub_100039C50(v4, qword_100938A30);
  sub_10000D0FC(v4, qword_100938A30);
  if (qword_100921EC8 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_1009832D0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_100752E34();
}

void sub_10045CB48(void **a1, void **a2, void *a3, uint64_t a4, __n128 a5)
{
  v36 = a4;
  v37 = a3;
  v7 = sub_100752CD4();
  __chkstk_darwin(v7 - 8);
  v34 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100748CA4();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100752E44();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920CB8 != -1)
  {
    swift_once();
  }

  v15 = sub_10000D0FC(v11, qword_100938A30);
  (*(v12 + 16))(v14, v15, v11);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A97A0;
  sub_1007523A4();
  v41 = sub_100016C60(0, &unk_100938B08, AMSEngagement_ptr);
  aBlock = a1;
  v16 = a1;
  sub_100752424();
  sub_1000277BC(&aBlock);
  sub_1007523A4();
  if (a2)
  {
    v17 = sub_100016C60(0, &qword_100938B20, AMSEngagementRequest_ptr);
    v18 = a2;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    v39 = 0;
    v40 = 0;
  }

  aBlock = v18;
  v41 = v17;
  v19 = a2;
  sub_100752424();
  sub_1000277BC(&aBlock);
  sub_100752CE4();

  (*(v12 + 8))(v14, v11);
  if (a2)
  {
    v20 = v37;
    v21 = v19;
    sub_100744AB4();
    sub_100752CA4();
    sub_100748C94();
    v22 = sub_100748C84();
    (*(v33 + 8))(v10, v35);
    [v21 setAnonymousMetrics:v22 & 1];
    v23 = v21;
    v24 = [objc_allocWithZone(AMSUIEngagementTaskViewController) initWithRequest:v23 bag:sub_100744AB4()];

    swift_unknownObjectRelease();
    v25 = [v24 canPresent];
    v26 = swift_allocObject();
    v26[2] = v23;
    v26[3] = v20;
    v27 = v36;
    v26[4] = v24;
    v26[5] = v27;
    v42 = sub_10045F734;
    v43 = v26;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_1005171C8;
    v41 = &unk_1008767C0;
    v28 = _Block_copy(&aBlock);
    v29 = v23;
    v30 = v20;
    v31 = v24;

    [v25 addFinishBlock:v28];
    _Block_release(v28);
  }
}

double sub_10045D06C(char a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = sub_100752404();
  __chkstk_darwin(v8 - 8);
  if (a1)
  {
    if (qword_100920CB8 != -1)
    {
      swift_once();
    }

    v9 = sub_100752E44();
    sub_10000D0FC(v9, qword_100938A30);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523F4();
    v21._countAndFlagsBits = 0xD000000000000040;
    v21._object = 0x800000010077D9E0;
    sub_1007523E4(v21);
    v19 = sub_100016C60(0, &qword_100938B20, AMSEngagementRequest_ptr);
    v18[0] = a3;
    v10 = a3;
    sub_1007523C4();
    sub_1000277BC(v18);
    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    sub_1007523E4(v22);
    sub_100752414();
    sub_100752CE4();

    v11 = *(a4 + OBJC_IVAR____TtC22SubscribePageExtension27JourneyDrivenOnboardingStep_engagementViewController);
    *(a4 + OBJC_IVAR____TtC22SubscribePageExtension27JourneyDrivenOnboardingStep_engagementViewController) = a5;

    v12 = a5;
  }

  else
  {
    if (qword_100920CB8 != -1)
    {
      swift_once();
    }

    v14 = sub_100752E44();
    sub_10000D0FC(v14, qword_100938A30);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523F4();
    v23._object = 0x800000010077D890;
    v23._countAndFlagsBits = 0xD000000000000016;
    sub_1007523E4(v23);
    v19 = sub_100016C60(0, &qword_100938B28, AMSUIEngagementTaskViewController_ptr);
    v18[0] = a5;
    v15 = a5;
    sub_1007523C4();
    sub_1000277BC(v18);
    v24._countAndFlagsBits = 0xD000000000000018;
    v24._object = 0x800000010077D990;
    sub_1007523E4(v24);
    v19 = sub_100016C60(0, &qword_100938B20, AMSEngagementRequest_ptr);
    v18[0] = a3;
    v16 = a3;
    sub_1007523C4();
    sub_1000277BC(v18);
    v25._countAndFlagsBits = 0xD000000000000023;
    v25._object = 0x800000010077D9B0;
    sub_1007523E4(v25);
    sub_100752414();
    sub_100752CE4();
  }

  return result;
}

void sub_10045D494(void **a1, void **a2, void **a3, uint64_t a4, void **a5, uint64_t a6, void *a7, uint64_t a8, __n128 a9)
{
  v44 = a8;
  v45 = a7;
  v47 = a5;
  v48 = a6;
  v49 = a4;
  v46 = a2;
  v11 = sub_100752CD4();
  __chkstk_darwin(v11 - 8);
  v42 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100748CA4();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100752E44();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920CB8 != -1)
  {
    swift_once();
  }

  v18 = sub_10000D0FC(v14, qword_100938A30);
  (*(v15 + 16))(v17, v18, v14);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007B3A60;
  sub_1007523A4();
  v53 = sub_100016C60(0, &unk_100938B08, AMSEngagement_ptr);
  aBlock = a1;
  v19 = a1;
  sub_100752424();
  sub_1000277BC(&aBlock);
  sub_1007523A4();
  v20 = v46;
  if (v46)
  {
    v21 = sub_100016C60(0, &qword_100938B20, AMSEngagementRequest_ptr);
    v22 = v20;
  }

  else
  {
    v22 = 0;
    v21 = 0;
    v51 = 0;
    v52 = 0;
  }

  aBlock = v22;
  v53 = v21;
  v38 = v20;
  sub_100752424();
  sub_1000277BC(&aBlock);
  sub_1007523A4();
  v53 = &type metadata for String;
  aBlock = a3;
  v39 = a3;
  v23 = v49;
  v51 = v49;

  sub_100752424();
  sub_1000277BC(&aBlock);
  sub_1007523A4();
  v53 = &type metadata for String;
  aBlock = v47;
  v51 = v48;

  sub_100752424();
  sub_1000277BC(&aBlock);
  sub_100752CE4();

  (*(v15 + 8))(v17, v14);
  if (v20)
  {
    v24 = v45;
    v25 = v38;
    sub_100744AB4();
    sub_100752CA4();
    v26 = v40;
    sub_100748C94();
    v27 = sub_100748C84();
    (*(v41 + 8))(v26, v43);
    [v25 setAnonymousMetrics:v27 & 1];
    v28 = v25;
    v29 = [objc_allocWithZone(AMSUIEngagementTaskViewController) initWithRequest:v28 bag:sub_100744AB4()];

    swift_unknownObjectRelease();
    v30 = [v29 canPresent];
    v31 = swift_allocObject();
    v32 = v39;
    v31[2] = v28;
    v31[3] = v32;
    v31[4] = v23;
    v31[5] = v24;
    v33 = v44;
    v31[6] = v29;
    v31[7] = v33;
    v54 = sub_10045F6CC;
    v55 = v31;
    aBlock = _NSConcreteStackBlock;
    v51 = 1107296256;
    v52 = sub_1005171C8;
    v53 = &unk_100876720;
    v34 = _Block_copy(&aBlock);
    v35 = v28;

    v36 = v24;
    v37 = v29;

    [v30 addFinishBlock:v34];
    _Block_release(v34);
  }
}

double sub_10045DA98(char a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_100752404();
  __chkstk_darwin(v12 - 8);
  if (a1)
  {
    if (qword_100920CB8 != -1)
    {
      swift_once();
    }

    v13 = sub_100752E44();
    sub_10000D0FC(v13, qword_100938A30);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523F4();
    v26._countAndFlagsBits = 0xD000000000000040;
    v26._object = 0x800000010077D900;
    sub_1007523E4(v26);
    v24 = sub_100016C60(0, &qword_100938B20, AMSEngagementRequest_ptr);
    v22 = a3;
    v14 = a3;
    sub_1007523C4();
    sub_1000277BC(&v22);
    v27._object = 0x800000010077D950;
    v27._countAndFlagsBits = 0xD000000000000010;
    sub_1007523E4(v27);
    v24 = &type metadata for String;
    v22 = a4;
    v23 = a5;

    sub_1007523C4();
    sub_1000277BC(&v22);
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    sub_1007523E4(v28);
    sub_100752414();
    sub_100752CE4();

    v15 = *(a6 + OBJC_IVAR____TtC22SubscribePageExtension27JourneyDrivenOnboardingStep_engagementViewController);
    *(a6 + OBJC_IVAR____TtC22SubscribePageExtension27JourneyDrivenOnboardingStep_engagementViewController) = a7;

    v16 = a7;
  }

  else
  {
    if (qword_100920CB8 != -1)
    {
      swift_once();
    }

    v18 = sub_100752E44();
    sub_10000D0FC(v18, qword_100938A30);
    sub_10000C518(&qword_100923930, &qword_1007A6B60);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523F4();
    v29._countAndFlagsBits = 0xD000000000000016;
    v29._object = 0x800000010077D890;
    sub_1007523E4(v29);
    v24 = sub_100016C60(0, &qword_100938B28, AMSUIEngagementTaskViewController_ptr);
    v22 = a7;
    v19 = a7;
    sub_1007523C4();
    sub_1000277BC(&v22);
    v30._countAndFlagsBits = 0xD000000000000018;
    v30._object = 0x800000010077D8B0;
    sub_1007523E4(v30);
    v24 = sub_100016C60(0, &qword_100938B20, AMSEngagementRequest_ptr);
    v22 = a3;
    v20 = a3;
    sub_1007523C4();
    sub_1000277BC(&v22);
    v31._countAndFlagsBits = 0x63616C70206E6920;
    v31._object = 0xEF203A746E656D65;
    sub_1007523E4(v31);
    v24 = &type metadata for String;
    v22 = a4;
    v23 = a5;

    sub_1007523C4();
    sub_1000277BC(&v22);
    v32._countAndFlagsBits = 0xD000000000000025;
    v32._object = 0x800000010077D8D0;
    sub_1007523E4(v32);
    sub_100752414();
    sub_100752CE4();
  }

  return result;
}

uint64_t sub_10045E02C(void *a1, void *a2)
{
  v4 = sub_100752E44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920CB8 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v4, qword_100938A30);
  (*(v5 + 16))(v7, v8, v4);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A97A0;
  sub_1007523A4();
  v15 = sub_100016C60(0, &unk_100938B08, AMSEngagement_ptr);
  v14[0] = a1;
  v9 = a1;
  sub_100752424();
  sub_1000277BC(v14);
  sub_1007523A4();
  if (a2)
  {
    v10 = sub_100016C60(0, &qword_100938B18, AMSDialogRequest_ptr);
    v11 = a2;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  v14[0] = v11;
  v15 = v10;
  v12 = a2;
  sub_100752424();
  sub_1000277BC(v14);
  sub_100752CE4();

  return (*(v5 + 8))(v7, v4);
}

void sub_10045E300(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, void *))
{
  v10 = _Block_copy(aBlock);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v11, a4);
  _Block_release(v10);
}

uint64_t sub_10045E3A4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a3;
  ObjectType = swift_getObjectType();
  v11 = sub_1007521E4();
  v29 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100752224();
  v14 = *(v28 - 8);
  __chkstk_darwin(v28);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  v27 = sub_100753774();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v18 = ObjectType;
  v17[4] = v26;
  v17[5] = a4;
  v17[6] = a5;
  v17[7] = a6;
  v17[8] = v18;
  aBlock[4] = sub_10045EC70;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_100876630;
  v19 = _Block_copy(aBlock);
  v20 = a2;

  v21 = a1;

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10045EC9C(&qword_1009236B0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750, &qword_1007A6920);
  sub_1000A8054();
  sub_1007543A4();
  v22 = v27;
  sub_100753784();
  _Block_release(v19);

  (*(v29 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v28);
}

uint64_t sub_10045E6B4(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v20 = a3;
  v9 = sub_100752E44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920CB8 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v9, qword_100938A30);
  (*(v10 + 16))(v12, v13, v9);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007B3A60;
  sub_1007523A4();
  v26 = sub_100016C60(0, &unk_100938B08, AMSEngagement_ptr);
  v23 = a1;
  v14 = a1;
  sub_100752424();
  sub_1000277BC(&v23);
  sub_1007523A4();
  if (a2)
  {
    v15 = sub_100016C60(0, &qword_100938B18, AMSDialogRequest_ptr);
    v16 = a2;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v24 = 0;
    v25 = 0;
  }

  v23 = v16;
  v26 = v15;
  v17 = a2;
  sub_100752424();
  sub_1000277BC(&v23);
  sub_1007523A4();
  v26 = &type metadata for String;
  v23 = v20;
  v24 = a4;

  sub_100752424();
  sub_1000277BC(&v23);
  sub_1007523A4();
  v26 = &type metadata for String;
  v23 = v21;
  v24 = v22;

  sub_100752424();
  sub_1000277BC(&v23);
  sub_100752CE4();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10045EC20()
{

  return _swift_deallocObject(v0, 72, 7);
}

double sub_10045EC84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10045EC9C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10045ECE4(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_1007521E4();
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100752224();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  v12 = sub_100753774();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v2;
  v13[5] = ObjectType;
  aBlock[4] = sub_10045F6E0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_100876770;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  v16 = v2;
  v17 = a1;

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10045EC9C(&qword_1009236B0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750, &qword_1007A6920);
  sub_1000A8054();
  sub_1007543A4();
  sub_100753784();
  _Block_release(v14);

  (*(v20 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v19);
}

uint64_t sub_10045EFD0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a3;
  v29 = a5;
  ObjectType = swift_getObjectType();
  v11 = sub_1007521E4();
  v33 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100752224();
  v31 = *(v14 - 8);
  v32 = v14;
  __chkstk_darwin(v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  v30 = sub_100753774();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v18 = v29;
  v17[4] = v28;
  v17[5] = a4;
  v17[6] = v18;
  v17[7] = a6;
  v19 = ObjectType;
  v17[8] = v6;
  v17[9] = v19;
  aBlock[4] = sub_10045F668;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_1008766D0;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  v22 = v6;
  v23 = a1;

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10045EC9C(&qword_1009236B0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750, &qword_1007A6920);
  sub_1000A8054();
  sub_1007543A4();
  v24 = v30;
  sub_100753784();
  _Block_release(v20);

  (*(v33 + 8))(v13, v11);
  return (*(v31 + 8))(v16, v32);
}

uint64_t sub_10045F2E4(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1007521E4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100752224();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  v12 = sub_100753774();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = ObjectType;
  aBlock[4] = sub_10045F604;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_100876680;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  v16 = a1;

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10045EC9C(&qword_1009236B0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750, &qword_1007A6920);
  sub_1000A8054();
  sub_1007543A4();
  sub_100753784();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v19);
}

uint64_t sub_10045F5C4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10045F610()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10045F67C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10045F6EC()
{

  return _swift_deallocObject(v0, 48, 7);
}

id sub_10045F76C(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_overlayView] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_sizeCategory] = 5;
  v4[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_isExpanded] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_originalSizeCategory] = 5;
  v4[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_isLayoutRequired] = 1;
  v4[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_isTransitioning] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for InfoLayerOverlayContainerView();
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007A5A00;
  *(v10 + 32) = sub_1007516F4();
  *(v10 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v11 = v9;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v11;
}

void sub_10045F99C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_overlayView;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_overlayView);
  if (v2)
  {
    v4[0] = 0x3FF0000000000000;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = 0x3FF0000000000000;
    v4[4] = 0;
    v4[5] = 0;
    [v2 setTransform:v4];
    v2 = *(v0 + v1);
  }

  [v2 removeFromSuperview];
  v3 = *(v0 + v1);
  *(v0 + v1) = 0;

  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_isLayoutRequired) = 1;
}

void sub_10045FA1C(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for InfoLayerOverlayContainerView();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_overlayView];
  if (v2)
  {
    v3 = v1[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_originalSizeCategory];
    v4 = v2;
    v5 = v4;
    if (v3 == 4)
    {
      sub_10045FB04(v4);
    }

    else
    {
      [v1 bounds];
      [v5 setFrame:?];
    }
  }
}

uint64_t sub_10045FB04(void *a1)
{
  v2 = v1;
  [v1 bounds];
  v5 = v4;
  [a1 bounds];
  v7 = v6;
  v9 = v8;
  v10 = objc_opt_self();
  [v10 setAnimationsEnabled:0];
  if (v5 == v7)
  {
    goto LABEL_2;
  }

  if (v7 < v5 && (v7 != 0.0 || v9 != 0.0))
  {
    goto LABEL_11;
  }

  if (v7 == 0.0 && v9 == 0.0)
  {
LABEL_2:
    [v2 bounds];
    [a1 setFrame:?];
LABEL_3:
    [v10 setAnimationsEnabled:1];
    v20.a = 1.0;
    v20.b = 0.0;
    v20.c = 0.0;
    v20.d = 1.0;
    v20.tx = 0.0;
    v20.ty = 0.0;
    return [a1 setTransform:&v20];
  }

  if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_isExpanded) == 1)
  {
LABEL_11:
    [v2 bounds];
    [a1 setFrame:?];
    [a1 transform];
    CGAffineTransformScale(&v19, &v20, v7 / v5, v7 / v5);
    v20 = v19;
    [a1 setTransform:&v20];
    goto LABEL_3;
  }

  CGAffineTransformMakeScale(&v20, v5 / v7, v5 / v7);
  v14 = *&v20.c;
  v15 = *&v20.a;
  tx = v20.tx;
  ty = v20.ty;
  [v10 setAnimationsEnabled:1];
  [a1 transform];
  v20.a = 1.0;
  v20.b = 0.0;
  v20.c = 0.0;
  v20.d = 1.0;
  v20.tx = 0.0;
  v20.ty = 0.0;
  result = sub_100753714();
  if (result)
  {
    v16[0] = v15;
    v16[1] = v14;
    v17 = tx;
    v18 = ty;
    return [a1 setTransform:v16];
  }

  return result;
}

void sub_10045FD28()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_overlayView];
  if (v1)
  {
    [v1 sizeThatFits:?];
  }

  else
  {
    v2 = [v0 traitCollection];
    if (qword_100920850 != -1)
    {
      swift_once();
    }

    sub_100230B00(v2, &xmmword_10097F3D0, 1);
    sub_100753804();
    sub_1007535D4();
    sub_100753804();
    sub_1007535D4();
  }
}

id sub_10045FE88(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for InfoLayerOverlayContainerView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10045FF0C()
{
  v0 = sub_100752CC4();
  sub_100039C50(v0, qword_100980480);
  sub_10000D0FC(v0, qword_100980480);
  return sub_100752CB4();
}

char *sub_10045FF78(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension28CondensedAppEventContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension28CondensedAppEventContentView_eventCardView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for CondensedAppEventCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension28CondensedAppEventContentView_interRowSpacing] = 0;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for CondensedAppEventContentView();
  v11 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC22SubscribePageExtension28CondensedAppEventContentView_lockupView]];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC22SubscribePageExtension28CondensedAppEventContentView_eventCardView]];

  return v15;
}

void sub_1004601C8()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for CondensedAppEventContentView();
  objc_msgSendSuper2(&v25, "layoutSubviews");
  sub_1007477B4();
  v3 = v2;
  v5 = v4;
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28CondensedAppEventContentView_lockupView];
  v7 = [v0 traitCollection];
  sub_100751034();
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007A5CF0;
  *(v8 + 32) = v7;
  v9 = v7;
  v10 = sub_100751044();
  [v6 measurementsWithFitting:v10 in:{v3, v5}];

  v11 = [v1 traitCollection];
  sub_100753AA4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [v6 setFrame:{v13, v15, v17, v19}];
  v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension28CondensedAppEventContentView_eventCardView];
  v21 = [v20 superview];
  if (v21)
  {
    v22 = v21;
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    v23 = v1;
    v24 = sub_100753FC4();

    if (v24)
    {
      sub_100460B9C();
      [v20 setBounds:{0.0, 0.0}];
      [v20 setCenter:sub_100460D68()];
    }
  }
}

double sub_10046045C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28CondensedAppEventContentView_lockupView);
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView];
  v20.value.super.isa = 0;
  v20.is_nil = 0;
  sub_100743384(v20, v4);

  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_descriptionLabel];
  v6 = [v5 superview];
  if (!v6 || (v7 = v6, sub_100016C60(0, &qword_100922300, UIView_ptr), v8 = v2, v9 = sub_100753FC4(), v7, v8, (v9 & 1) == 0))
  {
    [v2 addSubview:v5];
  }

  [v5 setHidden:1];
  [v5 setText:0];
  [v2 setNeedsLayout];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchAdTransparencyButton;
  v11 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchAdTransparencyButton];
  if (v11)
  {
    [v11 removeFromSuperview];
    v12 = *&v2[v10];
  }

  else
  {
    v12 = 0;
  }

  *&v2[v10] = 0;

  v13 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension28CondensedAppEventContentView_eventCardView);
  v21.value.super.isa = 0;
  v21.is_nil = 0;
  sub_100743384(v21, v14);
  [*(v13 + OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_titleLabel) setText:0];
  sub_1000C94C4(_swiftEmptyArrayStorage);
  v15 = (v13 + OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventViewTappedAction);
  v16 = *(v13 + OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventViewTappedAction);
  v17 = *(v13 + OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventViewTappedAction + 8);
  *v15 = 0;
  v15[1] = 0;

  return sub_1000164A8(v16, v17);
}

void sub_100460638(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10074F704();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100923200, &unk_1007A5C50);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  sub_100742574();
  sub_100463304(&qword_100923190, 255, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  sub_1007468B4();
  v13 = v31;
  if (v31)
  {
    v30 = a1;
    v14 = sub_100742564();
    v15 = sub_1007469A4();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    sub_100028DB0(v14, v12, a2);

    sub_10000C8CC(v12, &unk_100923200, &unk_1007A5C50);
    v16 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension28CondensedAppEventContentView_eventCardView];
    sub_100742554();
    v17 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_titleLabel];
    sub_100742874();
    v18 = sub_100753064();
    v29 = v6;
    v19 = v18;

    [v17 setText:v19];

    v20 = sub_100742814();
    [v16 setNeedsLayout];

    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 2) = v21;
    *(v22 + 3) = v13;
    *(v22 + 4) = a2;
    v23 = &v16[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventViewTappedAction];
    v24 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventViewTappedAction];
    v25 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventViewTappedAction + 8];
    *v23 = sub_1004635B4;
    v23[1] = v22;

    sub_1000164A8(v24, v25);

    swift_getKeyPath();
    sub_100746914();

    sub_10074F5B4();
    v27 = v26;
    (*(v7 + 8))(v9, v29);
    *&v3[OBJC_IVAR____TtC22SubscribePageExtension28CondensedAppEventContentView_interRowSpacing] = v27;
    [v3 setNeedsLayout];
  }
}

void sub_1004609DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100742554();
    v9 = sub_100742934();

    if (v9)
    {
      v10 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
      sub_1007526C4();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v6, 1, v10) == 1)
      {

        sub_10000C8CC(v6, &unk_100923960, &qword_1007A6240);
      }

      else
      {
        sub_1003C0E00(v9, 1, a3, v6);

        (*(v11 + 8))(v6, v10);
      }
    }

    else
    {
    }
  }
}

double sub_100460B9C()
{
  v1 = v0;
  v2 = sub_100741A74();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension28CondensedAppEventContentView_lockupView] frame];
  CGRectGetMaxY(v13);
  v7 = [v0 traitCollection];
  v8 = sub_100753804();

  if ((v8 & 1) == 0)
  {
    sub_100741A64();
    sub_100741A54();
    (*(v3 + 8))(v6, v2);
    sub_10000C888(v12, v12[3]);
    v9 = [v1 traitCollection];
    sub_100750574();

    sub_10000C620(v12);
  }

  type metadata accessor for CondensedAppEventContentView();
  sub_1007477B4();
  CGRectGetHeight(v14);
  sub_1007477B4();
  CGRectGetWidth(v15);
  return 0.0;
}

CGFloat sub_100460D68()
{
  v1 = v0;
  v2 = sub_100741A74();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension28CondensedAppEventContentView_lockupView] frame];
  CGRectGetMaxY(v13);
  v7 = [v0 traitCollection];
  v8 = sub_100753804();

  if ((v8 & 1) == 0)
  {
    sub_100741A64();
    sub_100741A54();
    (*(v3 + 8))(v6, v2);
    sub_10000C888(v12, v12[3]);
    v9 = [v1 traitCollection];
    sub_100750574();

    sub_10000C620(v12);
  }

  type metadata accessor for CondensedAppEventContentView();
  sub_1007477B4();
  CGRectGetHeight(v14);
  [v1 bounds];
  return CGRectGetWidth(v15) * 0.5;
}

id sub_100460F58(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CondensedAppEventContentView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10046105C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_100463304(&qword_100938BD8, a2, type metadata accessor for CondensedAppEventContentView, &unk_1007C23EC);
  result = sub_100463304(&unk_100938BE0, v3, type metadata accessor for CondensedAppEventContentView, &unk_1007C241C);
  *(a1 + 16) = result;
  return result;
}

void sub_1004610E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10074F314();
  __chkstk_darwin(v4 - 8);
  sub_10000C824(a1, v17);
  sub_10000C518(&unk_100923100, &unk_1007A5F30);
  sub_100742574();
  if (swift_dynamicCast())
  {
    sub_100742554();
    v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension28CondensedAppEventContentView_lockupView);
    v6 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
    v7 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    v18.value.super.isa = 0;
    v18.is_nil = 0;
    sub_100743384(v18, v8);

    v9 = *(v5 + v6);
    sub_1007433C4();
    sub_100463304(&qword_100925570, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v10 = v9;
    sub_100744274();

    v19.value.super.isa = 0;
    v19.is_nil = 0;
    sub_100743384(v19, v11);
    sub_100744274();
    sub_100742564();
    v12 = sub_10074EF24();

    if (v12)
    {
      v13 = qword_100920548;
      v14 = *(v5 + v6);
      if (v13 != -1)
      {
        swift_once();
      }

      v15 = sub_100747064();
      sub_10000D0FC(v15, qword_10097E3A8);
      sub_100746F34();
      [v14 contentMode];
      sub_10074F374();
      sub_10074F324();
      sub_100743364();
      [v14 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        sub_100753E34();
      }

      sub_100743224();
      v16 = *(v5 + v6);
      sub_100744204();
    }

    sub_10013AF64();
  }
}

double sub_10046143C(uint64_t a1)
{
  v2 = sub_100741A74();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v94[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10074A8C4();
  v122 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v94[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10074AE04();
  v126 = *(v9 - 8);
  v127 = v9;
  __chkstk_darwin(v9);
  v117 = &v94[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10074CD14();
  v119 = *(v11 - 8);
  v120 = v11;
  __chkstk_darwin(v11);
  v118 = &v94[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1007479B4();
  v130 = *(v13 - 8);
  v131 = v13;
  __chkstk_darwin(v13);
  v15 = &v94[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v129 = &v94[-v17];
  v135 = sub_10074A8A4();
  v128 = *(v135 - 8);
  __chkstk_darwin(v135);
  v121 = &v94[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v94[-v20];
  v22 = sub_10000C518(&unk_1009393C0, &qword_1007AEFB0);
  __chkstk_darwin(v22 - 8);
  v116 = &v94[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v133 = &v94[-v25];
  sub_100742574();
  sub_100463304(&qword_100923190, 255, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  sub_1007468B4();
  if (!v172[0])
  {
    return 0.0;
  }

  v132 = v21;
  v114 = v3;
  v109 = v172[0];
  v26 = sub_100742564();
  swift_getKeyPath();
  sub_100746914();

  v134 = v172[0];

  v27 = sub_10074EF34();
  v100 = v28;
  v101 = v27;
  v29 = sub_10074EFB4();
  v102 = v30;
  v103 = v29;
  v31 = sub_10074EED4();
  v125 = v26;

  if (v31 && (v32 = sub_100748644(), , v32))
  {
    v33 = sub_10074F764();
    v104 = v34;
    v105 = v33;
  }

  else
  {
    v104 = 0;
    v105 = 0;
  }

  v35 = v132;
  v124 = sub_100745DF4();
  (*(v126 + 56))(v133, 1, 1, v127);
  sub_100745E34();
  if (qword_100920410 != -1)
  {
    swift_once();
  }

  v36 = v135;
  v37 = sub_10000D0FC(v135, qword_10097E010);
  v106 = *(v128 + 16);
  v107 = v128 + 16;
  v106(v35, v37, v36);
  v38 = sub_100753804();
  v115 = v2;
  v112 = a1;
  v113 = v5;
  v110 = v8;
  v111 = v6;
  if (v38)
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v39 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v39 = qword_10093FF58;
  }

  v41 = v131;
  v42 = sub_10000D0FC(v131, v39);
  v43 = v130;
  (*(v130 + 16))(v15, v42, v41);
  (*(v43 + 32))(v129, v15, v41);
  v44 = [v134 preferredContentSizeCategory];
  sub_100753924();

  sub_100747964();
  sub_100747994();
  sub_10074A894();
  sub_10074A884();
  v99 = sub_100750F34();
  swift_allocObject();
  v108 = sub_100750F14();
  v45 = objc_opt_self();
  v97 = v45;
  v46 = [v45 preferredFontForTextStyle:UIFontTextStyleBody];
  v47 = sub_10074F3F4();
  v173 = v47;
  v123 = sub_100463304(&qword_10092AC70, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v174 = v123;
  v48 = sub_10000D134(v172);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v50 = *(v47 - 8);
  v98 = *(v50 + 104);
  v51 = v50 + 104;
  v95 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v98(v48, enum case for Feature.measurement_with_labelplaceholder(_:), v47);
  v96 = v51;
  sub_10074FC74();
  sub_10000C620(v172);
  v52 = v118;
  sub_10074CD04();
  sub_10074CCE4();
  v53 = v120;
  v54 = *(v119 + 8);
  v54(v52, v120);
  v55 = [v45 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v171[3] = v47;
  v171[4] = v123;
  v56 = sub_10000D134(v171);
  v57 = v49;
  v58 = v98;
  v98(v56, v57, v47);
  sub_10074FC74();
  sub_10000C620(v171);
  sub_10074CD04();
  sub_10074CCE4();
  v54(v52, v53);
  v59 = [v97 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v170[3] = v47;
  v170[4] = v123;
  v60 = sub_10000D134(v170);
  v58(v60, v95, v47);
  sub_10074FC74();
  sub_10000C620(v170);
  sub_10074CD04();
  sub_10074CCE4();
  v54(v52, v53);
  v61 = v124;
  LODWORD(v123) = sub_10001BB7C() & (v61 != 0);
  if (v123 == 1)
  {
    v62 = v99;
    v63 = objc_allocWithZone(sub_100751034());
    v64 = v134;
    v65 = sub_100751024();
    v66 = v116;
    sub_100180F6C(v133, v116);
    v68 = v126;
    v67 = v127;
    v69 = *(v126 + 48);
    if (v69(v66, 1, v127) == 1)
    {
      v70 = v117;
      _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
      if (v69(v66, 1, v67) != 1)
      {
        sub_10000C8CC(v66, &unk_1009393C0, &qword_1007AEFB0);
      }
    }

    else
    {
      v70 = v117;
      (*(v68 + 32))(v117, v66, v67);
    }

    v72 = v65;
    sub_100018CE4(v61, v70, v72, 0.0, 0.0);

    (*(v68 + 8))(v70, v67);
    swift_allocObject();
    v71 = sub_100750F04();
  }

  else
  {
    v62 = v99;
    swift_allocObject();
    v71 = sub_100750F14();
  }

  v73 = v71;
  v74 = v110;

  sub_10001BB7C();
  swift_allocObject();
  v75 = sub_100750F14();
  v106(v121, v132, v135);
  v169 = &protocol witness table for LayoutViewPlaceholder;
  v168 = v62;
  v167 = v108;
  v166 = 0;
  *&v164[40] = 0u;
  v165 = 0u;
  sub_10000C824(v172, v164);
  sub_10000C824(v171, &v163);
  v162 = 0;
  v160 = 0u;
  v161 = 0u;
  v159 = 0;
  v157 = 0u;
  v158 = 0u;

  v76 = sub_100750F24();
  v156 = &protocol witness table for LayoutViewPlaceholder;
  v155 = v62;
  v154 = v76;
  v153 = 0;
  v151 = 0u;
  v152 = 0u;
  v150 = 0;
  v148 = 0u;
  v149 = 0u;
  v147 = 0;
  v145 = 0u;
  v146 = 0u;
  v144 = 0;
  v143 = 0u;
  *&v142[40] = 0u;
  sub_10000C824(v170, v142);
  v140 = v62;
  v141 = &protocol witness table for LayoutViewPlaceholder;
  v138 = &protocol witness table for LayoutViewPlaceholder;
  v139 = v73;
  v137 = v62;
  v136 = v75;
  sub_10074A8B4();
  sub_100751034();
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1007A5CF0;
  v78 = v134;
  *(v77 + 32) = v134;
  v79 = v78;
  v80 = sub_100751044();
  sub_100463304(&unk_10092AC80, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v81 = v111;
  sub_100750404();
  v83 = v82;

  (*(v122 + 8))(v74, v81);
  sub_10000C620(v170);
  sub_10000C620(v171);
  sub_10000C620(v172);
  (*(v130 + 8))(v129, v131);
  (*(v128 + 8))(v132, v135);
  sub_10000C8CC(v133, &unk_1009393C0, &qword_1007AEFB0);
  swift_getKeyPath();
  sub_100746914();

  v84 = v172[0];
  if (sub_100753804())
  {
    v85 = sub_1006A3924();
  }

  else
  {
    v85 = sub_1006A4980();
  }

  v86 = v85;
  v88 = v114;
  v87 = v115;
  v89 = v113;

  v90 = v83 + v86;
  sub_100741A64();
  sub_100741A54();
  (*(v88 + 8))(v89, v87);
  sub_10000C888(v172, v173);
  sub_100750574();
  v92 = v91;

  v40 = v90 + v92;
  sub_10000C620(v172);
  return v40;
}

double sub_100462320()
{
  v0 = sub_100754724();
  v116 = *(v0 - 8);
  v117 = v0;
  __chkstk_darwin(v0);
  v115 = &v83 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100741A74();
  v113 = *(v2 - 8);
  v114 = v2;
  __chkstk_darwin(v2);
  v112 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074A8C4();
  v110 = *(v4 - 8);
  v111 = v4;
  __chkstk_darwin(v4);
  v109 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074AE04();
  v119 = *(v6 - 8);
  v120 = v6;
  __chkstk_darwin(v6);
  v85 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074CD14();
  v101 = *(v8 - 8);
  v102 = v8;
  __chkstk_darwin(v8);
  v100 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007479B4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v83 - v15;
  v17 = sub_10074A8A4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v103 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v125 = &v83 - v21;
  v22 = sub_10000C518(&unk_1009393C0, &qword_1007AEFB0);
  __chkstk_darwin(v22 - 8);
  v84 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v124 = &v83 - v25;
  swift_getKeyPath();
  sub_100746914();

  v122 = v162[0];
  v26 = sub_100742564();
  v27 = sub_10074EF34();
  v91 = v28;
  v92 = v27;
  v29 = sub_10074EFB4();
  v93 = v30;
  v94 = v29;
  if (sub_10074EED4() && (v31 = sub_100748644(), , v31))
  {
    v32 = sub_10074F764();
    v95 = v33;
    v96 = v32;
  }

  else
  {
    v95 = 0;
    v96 = 0;
  }

  v121 = sub_100745DF4();
  (*(v119 + 56))(v124, 1, 1, v120);
  sub_100745E34();
  v34 = [v122 traitCollection];
  if (qword_100920410 != -1)
  {
    swift_once();
  }

  v35 = sub_10000D0FC(v17, qword_10097E010);
  v97 = *(v18 + 16);
  v98 = v18 + 16;
  v97(v125, v35, v17);
  v36 = sub_100753804();
  v123 = v17;
  v104 = v26;
  v105 = v18;
  if (v36)
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v37 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v37 = qword_10093FF58;
  }

  v38 = sub_10000D0FC(v10, v37);
  (*(v11 + 16))(v13, v38, v10);
  v107 = v11;
  v108 = v10;
  (*(v11 + 32))(v16, v13, v10);
  v39 = [v34 preferredContentSizeCategory];
  sub_100753924();
  v118 = v34;

  sub_100747964();
  v106 = v16;
  sub_100747994();
  sub_10074A894();
  sub_10074A884();
  v90 = sub_100750F34();
  swift_allocObject();
  v99 = sub_100750F14();
  v40 = objc_opt_self();
  v88 = v40;
  v41 = [v40 preferredFontForTextStyle:UIFontTextStyleBody];
  v42 = sub_10074F3F4();
  v163 = v42;
  v43 = sub_100463304(&qword_10092AC70, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v164 = v43;
  v87 = v43;
  v44 = sub_10000D134(v162);
  v45 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v89 = *(*(v42 - 8) + 104);
  v86 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v89(v44, enum case for Feature.measurement_with_labelplaceholder(_:), v42);
  sub_10074FC74();
  sub_10000C620(v162);
  v46 = v100;
  sub_10074CD04();
  sub_10074CCE4();
  v47 = v102;
  v101 = *(v101 + 8);
  (v101)(v46, v102);
  v48 = [v40 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v161[3] = v42;
  v161[4] = v43;
  v49 = sub_10000D134(v161);
  v50 = v45;
  v51 = v89;
  v89(v49, v50, v42);
  sub_10074FC74();
  sub_10000C620(v161);
  sub_10074CD04();
  sub_10074CCE4();
  v52 = v101;
  (v101)(v46, v47);
  v53 = [v88 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v160[3] = v42;
  v160[4] = v87;
  v54 = sub_10000D134(v160);
  v51(v54, v86, v42);
  sub_10074FC74();
  sub_10000C620(v160);
  sub_10074CD04();
  sub_10074CCE4();
  v52(v46, v47);
  v55 = v121;
  if ((sub_10001BB7C() & (v55 != 0)) == 1)
  {
    v56 = v90;
    LODWORD(v102) = 1;
    v57 = objc_allocWithZone(sub_100751034());
    v58 = v118;
    v59 = sub_100751024();
    v60 = v84;
    sub_100180F6C(v124, v84);
    v62 = v119;
    v61 = v120;
    v63 = *(v119 + 48);
    if (v63(v60, 1, v120) == 1)
    {
      v64 = v85;
      _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
      if (v63(v60, 1, v61) != 1)
      {
        sub_10000C8CC(v60, &unk_1009393C0, &qword_1007AEFB0);
      }
    }

    else
    {
      v64 = v85;
      (*(v62 + 32))(v85, v60, v61);
    }

    v66 = v59;
    sub_100018CE4(v55, v64, v66, 0.0, 0.0);

    (*(v62 + 8))(v64, v61);
    swift_allocObject();
    v65 = sub_100750F04();
  }

  else
  {
    v56 = v90;
    swift_allocObject();
    v65 = sub_100750F14();
  }

  sub_10001BB7C();
  swift_allocObject();
  v67 = sub_100750F14();
  v97(v103, v125, v123);
  v159 = &protocol witness table for LayoutViewPlaceholder;
  v158 = v56;
  v157 = v99;
  v156 = 0;
  *&v154[40] = 0u;
  v155 = 0u;
  sub_10000C824(v162, v154);
  sub_10000C824(v161, &v153);
  v152 = 0;
  v150 = 0u;
  v151 = 0u;
  v149 = 0;
  v147 = 0u;
  v148 = 0u;

  v68 = sub_100750F24();
  v146 = &protocol witness table for LayoutViewPlaceholder;
  v145 = v56;
  v144 = v68;
  v143 = 0;
  v141 = 0u;
  v142 = 0u;
  v140 = 0;
  v138 = 0u;
  v139 = 0u;
  v137 = 0;
  v135 = 0u;
  v136 = 0u;
  v134 = 0;
  v133 = 0u;
  *&v132[40] = 0u;
  sub_10000C824(v160, v132);
  v130 = v56;
  v131 = &protocol witness table for LayoutViewPlaceholder;
  v128 = &protocol witness table for LayoutViewPlaceholder;
  v129 = v65;
  v127 = v56;
  v126 = v67;
  v69 = v109;
  sub_10074A8B4();
  sub_100751034();
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1007A5CF0;
  v71 = v118;
  *(v70 + 32) = v118;
  v72 = v71;
  v73 = sub_100751044();
  sub_100463304(&unk_10092AC80, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v74 = v111;
  sub_100750404();
  v76 = v75;

  (*(v110 + 8))(v69, v74);
  sub_10000C620(v160);
  sub_10000C620(v161);
  sub_10000C620(v162);
  (*(v107 + 8))(v106, v108);
  (*(v105 + 8))(v125, v123);
  sub_10000C8CC(v124, &unk_1009393C0, &qword_1007AEFB0);
  v77 = v112;
  sub_100741A64();
  sub_100741A54();
  (*(v113 + 8))(v77, v114);
  v78 = v163;
  sub_10000C888(v162, v163);
  v79 = v115;
  sub_100536120(v78);
  sub_100750564();
  v81 = v80;

  swift_unknownObjectRelease();
  (*(v116 + 8))(v79, v117);
  sub_10000C620(v162);
  return v76 + v81;
}

uint64_t sub_1004631F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28CondensedAppEventContentView_lockupView);
  v2 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  v9.value.super.isa = 0;
  v9.is_nil = 0;
  sub_100743384(v9, v4);

  v5 = *(v1 + v2);
  sub_1007433C4();
  sub_100463304(&qword_100925570, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v6 = v5;
  sub_100744274();

  v10.value.super.isa = 0;
  v10.is_nil = 0;
  sub_100743384(v10, v7);
  return sub_100744274();
}

uint64_t sub_100463304(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double sub_100463350()
{
  sub_100742574();
  sub_100463304(&qword_100923190, 255, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  sub_1007468B4();
  if (v6)
  {
    sub_100742564();
    v1 = sub_10074EF24();

    if (v1)
    {
      if (qword_100920548 != -1)
      {
        swift_once();
      }

      v2 = sub_100747064();
      sub_10000D0FC(v2, qword_10097E3A8);
      sub_100746F34();
      sub_10074F374();
      sub_100753284();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();
    }

    sub_100742554();
    sub_10007DC04();
    v3 = sub_10013B150();

    swift_unknownObjectRelease();
    sub_10049FCD8(v3, v4);
    v5._rawValue = _swiftEmptyArrayStorage;
    sub_100744224(v5);
  }

  return result;
}

uint64_t sub_100463534()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10046356C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004635C4(uint64_t a1)
{
  if (a1 != 2)
  {
    return 0;
  }

  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007A7210;
  v2 = objc_opt_self();
  *(v1 + 32) = [v2 clearColor];
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v3 = [v2 blackColor];
  v4 = [v3 colorWithAlphaComponent:0.06];

  v5.super.isa = [objc_allocWithZone(UIColor) initWithWhite:0.06667 alpha:1.0];
  v6.super.isa = v4;
  isa = sub_100753EC4(v6, v5).super.isa;
  result = v1;
  *(v1 + 40) = isa;
  return result;
}

unint64_t sub_1004636F4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100465F0C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_100463754()
{
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension26SearchCollectionViewLayout_backgroundCornerRadius] = 0;
  v1 = &v0[OBJC_IVAR____TtC22SubscribePageExtension26SearchCollectionViewLayout_pendingPrepareObserver];
  v2 = type metadata accessor for SearchCollectionViewLayout();
  *v1 = 0;
  *(v1 + 1) = 0;
  v10.receiver = v0;
  v10.super_class = v2;
  v3 = objc_msgSendSuper2(&v10, "init");
  type metadata accessor for SearchResultBackgroundView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = sub_100753064();
  [v5 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v6];

  type metadata accessor for SearchTransparencyView();
  v7 = swift_getObjCClassFromMetadata();
  sub_1007539C4();
  v8 = sub_100753064();

  [v5 registerClass:v7 forDecorationViewOfKind:v8];

  return v5;
}

double sub_100463940()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for SearchCollectionViewLayout();
  objc_msgSendSuper2(&v14, "collectionViewContentSize");
  v3 = v2;
  v4 = [v0 collectionView];
  if (v4)
  {
    v5 = v4;
    v6 = [v0 collectionView];
    if (v6 && (v7 = v6, v8 = [v6 delegate], v7, v8))
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v9 = sub_10074A074();
        if (v9)
        {
          v10 = v9;
          v11 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
          [*&v8[OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits] pageContainerSize];
          [*&v8[v11] pageMarginInsets];
          sub_100753BA4();
          sub_1000E0DC4(v12, 1.79769313e308, v10, v5);
        }

        swift_unknownObjectRelease();
        [v1 minimumLineSpacing];
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return v3;
}

void *sub_100463AFC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v77 = sub_10000C518(&qword_100938C30, &unk_1007C2580);
  __chkstk_darwin(v77);
  v8 = &v64 - v7;
  v9 = sub_1007417F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v64 - v14;
  v16 = sub_10000C518(&unk_100923C00, qword_1007AB3D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v64 - v20;
  __chkstk_darwin(v22);
  v78 = &v64 - v23;
  v24 = sub_1004645D8(a1);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = type metadata accessor for SearchCollectionViewLayout();
  v83.receiver = v4;
  v83.super_class = v31;
  result = objc_msgSendSuper2(&v83, "layoutAttributesForElementsInRect:", v24, v26, v28, v30);
  if (!result)
  {
    return result;
  }

  v33 = result;
  sub_100016C60(0, &qword_100923730, UICollectionViewLayoutAttributes_ptr);
  v69 = sub_1007532A4();

  v34 = [v5 collectionView];
  if (!v34)
  {
    return v69;
  }

  v35 = v34;
  v36 = [v34 delegate];

  if (!v36)
  {
    return v69;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    swift_unknownObjectRelease();
    return v69;
  }

  v68 = v18;
  v66 = v12;
  v76 = v10;
  v64 = v36;
  v37 = [*(v36 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
  [v37 horizontalSizeClass];

  v38 = 1;
  sub_10074A084();
  if ((v39 & 1) == 0)
  {
    sub_100741764();
    v38 = 0;
  }

  v75 = *(v76 + 56);
  v76 += 56;
  v75(v78, v38, 1, v9);
  v82 = _swiftEmptyArrayStorage;
  if (v69 >> 62)
  {
    v40 = sub_100754664();
  }

  else
  {
    v40 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = v64;
  if (v40)
  {
    v81 = v5;
    if (v40 >= 1)
    {
      v41 = 0;
      v42 = v69;
      v72 = v69 & 0xC000000000000001;
      v73 = "pendingPrepareObserver";
      v70 = (v10 + 48);
      v71 = (v10 + 16);
      v65 = (v10 + 32);
      v79 = (v10 + 8);
      v74 = v40;
      v67 = v15;
      while (1)
      {
        if (v72)
        {
          v43 = sub_100754574();
        }

        else
        {
          v43 = *(v42 + 8 * v41 + 32);
        }

        v80 = v43;
        v44 = [v43 indexPath];
        sub_100741744();

        v45 = sub_100753064();
        isa = sub_100741704().super.isa;
        v47 = [v81 layoutAttributesForDecorationViewOfKind:v45 atIndexPath:isa];

        if (v47)
        {
          v48 = v47;
          sub_100753284();
          if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100753304();
          }

          sub_100753344();
        }

        (*v71)(v21, v15, v9);
        v75(v21, 0, 1, v9);
        v49 = *(v77 + 48);
        sub_10003E0A0(v21, v8);
        sub_10003E0A0(v78, &v8[v49]);
        v50 = *v70;
        if ((*v70)(v8, 1, v9) == 1)
        {
          break;
        }

        v51 = v21;
        v52 = v68;
        sub_10003E0A0(v8, v68);
        if (v50(&v8[v49], 1, v9) == 1)
        {
          sub_10000C8CC(v51, &unk_100923C00, qword_1007AB3D0);
          v53 = v52;
          v21 = v51;
          (*v79)(v53, v9);
          v15 = v67;
          v42 = v69;
LABEL_24:
          sub_10000C8CC(v8, &qword_100938C30, &unk_1007C2580);
          goto LABEL_30;
        }

        v54 = v66;
        (*v65)(v66, &v8[v49], v9);
        sub_1000E5AF0();
        v55 = sub_100753014();
        v56 = *v79;
        (*v79)(v54, v9);
        sub_10000C8CC(v51, &unk_100923C00, qword_1007AB3D0);
        v57 = v52;
        v21 = v51;
        v56(v57, v9);
        sub_10000C8CC(v8, &unk_100923C00, qword_1007AB3D0);
        v15 = v67;
        v42 = v69;
        if (v55)
        {
          goto LABEL_26;
        }

LABEL_30:
        v62 = v80;
        sub_100464770(v80);
        sub_100753284();
        if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        ++v41;
        sub_100753344();

        (*v79)(v15, v9);
        if (v74 == v41)
        {
          v63 = v82;
          goto LABEL_37;
        }
      }

      sub_10000C8CC(v21, &unk_100923C00, qword_1007AB3D0);
      if (v50(&v8[v49], 1, v9) == 1)
      {
        sub_10000C8CC(v8, &unk_100923C00, qword_1007AB3D0);
LABEL_26:
        type metadata accessor for SearchTransparencyView();
        sub_1007539C4();
        v58 = sub_100753064();

        v59 = sub_100741704().super.isa;
        v60 = [v81 layoutAttributesForDecorationViewOfKind:v58 atIndexPath:v59];

        if (v60)
        {
          v61 = v60;
          sub_100753284();
          if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100753304();
          }

          sub_100753344();
        }

        goto LABEL_30;
      }

      goto LABEL_24;
    }

    __break(1u);
  }

  else
  {
    v63 = _swiftEmptyArrayStorage;
LABEL_37:
    swift_unknownObjectRelease();

    sub_10000C8CC(v78, &unk_100923C00, qword_1007AB3D0);
    return v63;
  }

  return result;
}

double sub_1004645D8(double a1)
{
  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 collectionView];
    if (v5 && (v6 = v5, v7 = [v5 delegate], v6, v7))
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v8 = sub_10074A074();
        if (v8)
        {
          v9 = v8;
          v10 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
          [*&v7[OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits] pageContainerSize];
          [*&v7[v10] pageMarginInsets];
          sub_100753BA4();
          sub_1000E0DC4(v11, 1.79769313e308, v9, v4);
        }

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return a1;
}

id sub_100464770(void *a1)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_1007417F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v35 - v12;
  v14 = [v1 collectionView];
  if (v14)
  {
    v15 = v14;
    v16 = [v1 collectionView];
    if (!v16 || (v17 = v16, v18 = [v16 delegate], v17, !v18))
    {
LABEL_14:

      goto LABEL_15;
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v35 = &protocol descriptor for UICollectionViewDelegateSearchLayout;
      v36 = v4;
      v37 = v3;
      v19 = [*&v18[OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits] traitCollection];
      [v19 horizontalSizeClass];

      sub_10074A084();
      if (v20)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        sub_100741764();
        swift_unknownObjectRelease();
        v22 = v36;
        v21 = v37;
        (*(v36 + 32))(v13, v9, v37);
        v23 = [v2 collectionView];
        if (v23 && (v24 = v23, v25 = [v23 delegate], v24, v25))
        {
          swift_getObjectType();
          if (!swift_conformsToProtocol2())
          {

            swift_unknownObjectRelease();
            (*(v22 + 8))(v13, v21);
            goto LABEL_15;
          }

          v26 = sub_10074A074();
          if (v26)
          {
            v27 = v26;
            v28 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
            [*&v25[OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits] pageContainerSize];
            [*&v25[v28] pageMarginInsets];
            sub_100753BA4();
            sub_1000E0DC4(v29, 1.79769313e308, v27, v15);
          }

          swift_unknownObjectRelease();
          v32 = [v38 indexPath];
          sub_100741744();

          LOBYTE(v32) = sub_100741714();
          v33 = *(v22 + 8);
          v33(v6, v21);
          if (v32)
          {
            sub_100016C60(0, &qword_100923730, UICollectionViewLayoutAttributes_ptr);
            v34 = sub_100754244();
            [v2 minimumLineSpacing];
            [v34 frame];
            [v34 setFrame:?];

            v33(v13, v21);
            return v34;
          }

          v33(v13, v21);
        }

        else
        {
          (*(v22 + 8))(v13, v21);
        }
      }

      goto LABEL_14;
    }

    swift_unknownObjectRelease();
  }

LABEL_15:
  v30 = v38;

  return v30;
}

char *sub_100464C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v129 = a2;
  v130 = a1;
  v6 = sub_1007417F4();
  v127 = *(v6 - 8);
  __chkstk_darwin(v6);
  v124 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_100938C30, &unk_1007C2580);
  __chkstk_darwin(v8);
  v10 = &v117 - v9;
  v11 = sub_10000C518(&unk_100923C00, qword_1007AB3D0);
  __chkstk_darwin(v11 - 8);
  v125 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v126 = &v117 - v14;
  __chkstk_darwin(v15);
  v128 = &v117 - v16;
  v17 = sub_100754724();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_100741704().super.isa;
  v22 = type metadata accessor for SearchCollectionViewLayout();
  v132.receiver = v4;
  v132.super_class = v22;
  v23 = objc_msgSendSuper2(&v132, "layoutAttributesForItemAtIndexPath:", isa);

  if (!v23)
  {
    return 0;
  }

  v123 = v10;
  v24 = [v4 collectionView];
  if (!v24)
  {
    goto LABEL_11;
  }

  v25 = v24;
  v26 = [v4 collectionView];
  if (!v26 || (v122 = v6, v27 = v26, v28 = [v26 delegate], v27, !v28))
  {

LABEL_11:
    return 0;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v120 = v28;
  v121 = v23;
  type metadata accessor for SearchCollectionLayoutAttributes();
  v29 = sub_100753064();
  v30 = sub_100741704().super.isa;
  v118 = [swift_getObjCClassFromMetadata() layoutAttributesForDecorationViewOfKind:v29 withIndexPath:v30];

  v31 = v25;
  v32 = [v31 traitCollection];
  v117 = [v32 horizontalSizeClass];

  v33 = [v31 traitCollection];
  v34 = [v33 userInterfaceIdiom];

  v119 = v31;
  if (v34)
  {
    if (qword_100921708 != -1)
    {
      swift_once();
    }

    v35 = sub_100750B04();
    sub_10000D0FC(v35, qword_100982098);
    v36 = [v31 traitCollection];

    sub_100751034();
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1007A5CF0;
    *(v37 + 32) = v36;
    v38 = v36;
    v39 = sub_100751044();
    sub_100750544();
    v41 = v40;
  }

  else
  {
    if (qword_100920CC8 != -1)
    {
      swift_once();
    }

    v43 = sub_100750B04();
    sub_10000D0FC(v43, qword_100980498);
    v44 = [v31 traitCollection];

    sub_1007502D4();
    sub_100750AD4();
    v41 = v45;

    (*(v18 + 8))(v20, v17);
  }

  v47 = v120;
  v46 = v121;
  v48 = v122;
  if (v130 != 0xD000000000000022 || 0x800000010077DC30 != v129)
  {
    v50 = sub_100754754();
    v49 = v119;
    if ((v50 & 1) != 0 && v117 == 1)
    {
      goto LABEL_23;
    }

    if (sub_100754754())
    {
      goto LABEL_28;
    }

    type metadata accessor for SearchTransparencyView();
    if (sub_1007539C4() == v130 && v73 == v129)
    {

      v74 = v128;
    }

    else
    {
      v80 = sub_100754754();

      v74 = v128;
      if ((v80 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v81 = v127;
    (*(v127 + 16))(v74, a3, v48);
    v82 = v48;
    v83 = *(v81 + 56);
    v84 = 1;
    v83(v74, 0, 1, v82);
    v129 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_presenter;
    v130 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits;
    v85 = [*&v47[OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_pageTraits] traitCollection];
    [v85 horizontalSizeClass];

    sub_10074A084();
    v86 = v126;
    if ((v87 & 1) == 0)
    {
      sub_100741764();
      v84 = 0;
    }

    v88 = v84;
    v89 = v122;
    v83(v86, v88, 1, v122);
    v90 = v89;
    v91 = *(v8 + 48);
    v92 = v128;
    v93 = v123;
    sub_10003E0A0(v128, v123);
    sub_10003E0A0(v86, v93 + v91);
    v94 = *(v127 + 48);
    if (v94(v93, 1, v89) == 1)
    {
      sub_10000C8CC(v86, &unk_100923C00, qword_1007AB3D0);
      sub_10000C8CC(v92, &unk_100923C00, qword_1007AB3D0);
      v95 = v94(v93 + v91, 1, v89);
      v97 = v120;
      v96 = v121;
      if (v95 == 1)
      {
        sub_10000C8CC(v93, &unk_100923C00, qword_1007AB3D0);
LABEL_59:
        v104 = v130;
        [*&v97[v130] pageMarginInsets];
        v106 = v105;
        v107 = v118;
        [v96 frame];
        MaxY = CGRectGetMaxY(v137);
        [v4 minimumLineSpacing];
        v110 = v109;
        v111 = sub_10074A074();
        if (v111)
        {
          v112 = v111;
          [*&v97[v104] pageContainerSize];
          [*&v97[v104] pageMarginInsets];
          sub_100753BA4();
          v114 = sub_1000E0DC4(v113, 1.79769313e308, v112, v49);
          v116 = v115;
        }

        else
        {
          v114 = 0.0;
          v116 = 0.0;
        }

        [v107 setFrame:{v106, MaxY + v110, v114, v116}];

        swift_unknownObjectRelease();
        return v107;
      }
    }

    else
    {
      v98 = v125;
      sub_10003E0A0(v93, v125);
      v99 = v94(v93 + v91, 1, v90);
      v97 = v120;
      if (v99 != 1)
      {
        v100 = v127;
        v101 = v93 + v91;
        v102 = v124;
        (*(v127 + 32))(v124, v101, v90);
        sub_1000E5AF0();
        LODWORD(v117) = sub_100753014();
        v103 = *(v100 + 8);
        v103(v102, v90);
        sub_10000C8CC(v86, &unk_100923C00, qword_1007AB3D0);
        sub_10000C8CC(v128, &unk_100923C00, qword_1007AB3D0);
        v103(v98, v90);
        v49 = v119;
        sub_10000C8CC(v93, &unk_100923C00, qword_1007AB3D0);
        v96 = v121;
        if (v117)
        {
          goto LABEL_59;
        }

LABEL_57:
        swift_unknownObjectRelease();

        goto LABEL_53;
      }

      sub_10000C8CC(v86, &unk_100923C00, qword_1007AB3D0);
      sub_10000C8CC(v128, &unk_100923C00, qword_1007AB3D0);
      (*(v127 + 8))(v98, v90);
      v96 = v121;
    }

    sub_10000C8CC(v93, &qword_100938C30, &unk_1007C2580);
    goto LABEL_57;
  }

  v49 = v119;
  if (v117 != 1)
  {
LABEL_28:
    v65 = sub_1000DBDB4(a3);
    if (v65)
    {
      v52 = v65;
      [v46 frame];
      v66 = CGRectGetWidth(v135) + 24.0;
      [v46 frame];
      v67 = v41 + v41 + CGRectGetHeight(v136);
      [v46 frame];
      v69 = v68 + -12.0;
      v71 = v70 - v41;
      v63 = v118;
      [v63 setFrame:{v69, v71, v66, v67}];
      *&v63[OBJC_IVAR____TtC22SubscribePageExtension32SearchCollectionLayoutAttributes_cornerRadius] = *&v4[OBJC_IVAR____TtC22SubscribePageExtension26SearchCollectionViewLayout_backgroundCornerRadius];
      if (v52 != 1)
      {
        if (v52 == 2)
        {
          v64 = 0;
          goto LABEL_40;
        }

LABEL_32:
        if (v52 != 3)
        {
          v131 = v52;
          result = sub_100754784();
          __break(1u);
          return result;
        }

        if (qword_1009207E0 != -1)
        {
          swift_once();
        }

        v64 = qword_10097EE60;
        v72 = qword_10097EE60;
        goto LABEL_40;
      }

LABEL_39:
      v64 = [objc_opt_self() secondarySystemBackgroundColor];
      goto LABEL_40;
    }

    goto LABEL_52;
  }

LABEL_23:
  v51 = sub_1000DBDB4(a3);
  if (!v51)
  {
LABEL_52:
    swift_unknownObjectRelease();

LABEL_53:
    return 0;
  }

  v52 = v51;
  [v46 frame];
  Width = CGRectGetWidth(v133);
  [v46 frame];
  v55 = Width + v54 + v54;
  [v46 frame];
  v56 = v41 + v41 + CGRectGetHeight(v134);
  [v46 frame];
  v58 = v57;
  v60 = v59;
  [v46 frame];
  v62 = v58 - v61;
  v63 = v118;
  [v63 setFrame:{v62, v60 - v41, v55, v56}];
  *&v63[OBJC_IVAR____TtC22SubscribePageExtension32SearchCollectionLayoutAttributes_cornerRadius] = 0;
  if (v52 == 1)
  {
    goto LABEL_39;
  }

  v64 = 0;
  if (v52 != 2)
  {
    goto LABEL_32;
  }

LABEL_40:
  v75 = *&v63[OBJC_IVAR____TtC22SubscribePageExtension32SearchCollectionLayoutAttributes_backgroundColor];
  *&v63[OBJC_IVAR____TtC22SubscribePageExtension32SearchCollectionLayoutAttributes_backgroundColor] = v64;

  v76 = v63;
  *&v63[OBJC_IVAR____TtC22SubscribePageExtension32SearchCollectionLayoutAttributes_backgroundGradientColors] = sub_1004635C4(v52);

  if (v52 >= 3)
  {
    if (qword_1009207E8 != -1)
    {
      swift_once();
    }

    v77 = qword_10097EE68;
    v78 = qword_10097EE68;
  }

  else
  {
    v77 = 0;
  }

  v79 = *&v76[OBJC_IVAR____TtC22SubscribePageExtension32SearchCollectionLayoutAttributes_borderColor];
  *&v76[OBJC_IVAR____TtC22SubscribePageExtension32SearchCollectionLayoutAttributes_borderColor] = v77;

  [v76 setZIndex:-1];
  swift_unknownObjectRelease();

  return v76;
}

double sub_100465B0C()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 delegate];

    if (v3)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        type metadata accessor for SearchResultsCollectionViewDelegate(0);
        v4 = swift_dynamicCastClass();
        if (v4)
        {
          v5 = v4;
          v6 = sub_100414E50(_swiftEmptyArrayStorage);
          v7 = OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_maxSizeForRowCache;
          swift_beginAccess();
          *(v5 + v7) = v6;

          *(v5 + OBJC_IVAR____TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate_isFirstItemFullWidth) = 2;
        }
      }

      swift_unknownObjectRelease();
    }
  }

  v14.receiver = v0;
  v14.super_class = type metadata accessor for SearchCollectionViewLayout();
  objc_msgSendSuper2(&v14, "prepareLayout");
  v8 = &v0[OBJC_IVAR____TtC22SubscribePageExtension26SearchCollectionViewLayout_pendingPrepareObserver];
  v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension26SearchCollectionViewLayout_pendingPrepareObserver];
  if (v9)
  {
    v10 = v8[1];

    v9(v0);
    sub_1000164A8(v9, v10);
    v11 = *v8;
  }

  else
  {
    v11 = 0;
  }

  v12 = v8[1];
  *v8 = 0;
  v8[1] = 0;
  return sub_1000164A8(v11, v12);
}

id sub_100465CCC(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchCollectionViewLayout();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100465D38()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_100980498);
  sub_10000D0FC(v4, qword_100980498);
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

unint64_t sub_100465EB8()
{
  result = qword_100938C38;
  if (!qword_100938C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938C38);
  }

  return result;
}

unint64_t sub_100465F0C(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

char *sub_100465F1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_100752314();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_100930660) = 0x409F400000000000;
  v8 = qword_100930668;
  sub_10074E704();
  swift_allocObject();
  *(v2 + v8) = sub_10074E6F4();
  v9 = qword_100930670;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_1007417F4();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_100930678;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_1007469A4();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_100930680) = 0;
  *(v3 + qword_100930688) = 0;
  sub_10074E504();
  *(v3 + qword_10097EE10) = 0;
  *(v3 + qword_10097EE28) = 0;
  *(v3 + qword_100930690) = 0;
  *(v3 + qword_100930698) = 0;
  *(v3 + qword_10097EE30) = 0;
  v17 = qword_10097EE38;
  v18 = objc_allocWithZone(sub_100749AF4());
  *(v3 + v17) = sub_100749AE4();
  v19 = qword_10097EE40;
  sub_10000C518(&qword_100938F30, &qword_1007C2790);
  swift_allocObject();
  *(v3 + v19) = sub_100749CC4();
  *(v3 + qword_10097EE48) = 1;
  *(v3 + qword_1009306A8) = 0;
  *(v3 + qword_10097EE50) = 0;
  v20 = qword_10097EE58;
  sub_100748A94();
  swift_allocObject();
  *(v3 + v20) = sub_100748A84();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10041342C(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_1007522F4();
  v22 = sub_100752724();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10097EE08) = v47;

  sub_10074B884();
  sub_1007495A4();

  sub_1007442C4();
  sub_1007526E4();
  *(v3 + qword_10097EE18) = v48[0];
  sub_10074CC94();
  sub_1007526E4();
  *(v3 + qword_10097EE20) = v48[0];
  sub_1007495B4();
  sub_100752754();
  sub_10074B544();
  swift_allocObject();
  *(v3 + qword_1009306A0) = sub_10074B554();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10062DFAC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10097EE40] = sub_100749CC4();

  sub_10074B184();
  sub_100752764();

  sub_100752D34();

  v29 = v48[0];
  sub_10074B154();

  sub_100748464();

  sub_100752D34();

  v30 = v48[0];
  sub_100748424();

  v48[3] = sub_10074D904();
  v48[4] = sub_1004783D0(&qword_100938F38, &type metadata accessor for SearchLandingDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004778CC(v48, &v27[v31]);
  swift_endAccess();
  sub_1004783D0(&qword_100938F40, &type metadata accessor for SearchLandingDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_100748C54();

  v32 = qword_10097EE38;
  v33 = *&v27[qword_10097EE38];

  sub_100752D34();

  sub_10074C4B4();
  swift_allocObject();
  sub_10074C4C4();
  sub_100749AD4();

  v34 = *&v27[v32];

  sub_100752D34();

  sub_100749F64();
  swift_allocObject();
  sub_100749F74();
  sub_100749AD4();

  v35 = *&v27[v32];
  sub_1004779DC(&qword_100938F48, &qword_100938F30, &qword_1007C2790);
  v36 = v35;

  sub_100749AD4();

  v37 = *&v27[v32];

  sub_100749AD4();

  v38 = *&v27[v32];
  v39 = qword_100930678;
  sub_1004783D0(&qword_100938F28, type metadata accessor for TodayCardCollectionElementsObserver, &unk_1007D0370);
  v40 = v38;

  sub_100749AD4();

  v41 = *&v27[qword_10097EE20];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_10074CC74();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10086F708;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_100466910(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_100752314();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_100930660) = 0x409F400000000000;
  v8 = qword_100930668;
  sub_10074E704();
  swift_allocObject();
  *(v2 + v8) = sub_10074E6F4();
  v9 = qword_100930670;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_1007417F4();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_100930678;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_1007469A4();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_100930680) = 0;
  *(v3 + qword_100930688) = 0;
  sub_10074E504();
  *(v3 + qword_10097EE10) = 0;
  *(v3 + qword_10097EE28) = 0;
  *(v3 + qword_100930690) = 0;
  *(v3 + qword_100930698) = 0;
  *(v3 + qword_10097EE30) = 0;
  v17 = qword_10097EE38;
  v18 = objc_allocWithZone(sub_100749AF4());
  *(v3 + v17) = sub_100749AE4();
  v19 = qword_10097EE40;
  sub_10000C518(&qword_100938F10, &unk_1007C2780);
  swift_allocObject();
  *(v3 + v19) = sub_100749CC4();
  *(v3 + qword_10097EE48) = 1;
  *(v3 + qword_1009306A8) = 0;
  *(v3 + qword_10097EE50) = 0;
  v20 = qword_10097EE58;
  sub_100748A94();
  swift_allocObject();
  *(v3 + v20) = sub_100748A84();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10041342C(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_1007522F4();
  v22 = sub_100752724();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10097EE08) = v47;

  sub_10074B884();
  sub_1007495A4();

  sub_1007442C4();
  sub_1007526E4();
  *(v3 + qword_10097EE18) = v48[0];
  sub_10074CC94();
  sub_1007526E4();
  *(v3 + qword_10097EE20) = v48[0];
  sub_1007495B4();
  sub_100752754();
  sub_10074B544();
  swift_allocObject();
  *(v3 + qword_1009306A0) = sub_10074B554();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10062DFAC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10097EE40] = sub_100749CC4();

  sub_10074B184();
  sub_100752764();

  sub_100752D34();

  v29 = v48[0];
  sub_10074B154();

  sub_100748464();

  sub_100752D34();

  v30 = v48[0];
  sub_100748424();

  v48[3] = sub_10074C964();
  v48[4] = sub_1004783D0(&qword_100938F18, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004778CC(v48, &v27[v31]);
  swift_endAccess();
  sub_1004783D0(&qword_100937510, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_100748C54();

  v32 = qword_10097EE38;
  v33 = *&v27[qword_10097EE38];

  sub_100752D34();

  sub_10074C4B4();
  swift_allocObject();
  sub_10074C4C4();
  sub_100749AD4();

  v34 = *&v27[v32];

  sub_100752D34();

  sub_100749F64();
  swift_allocObject();
  sub_100749F74();
  sub_100749AD4();

  v35 = *&v27[v32];
  sub_1004779DC(&qword_100938F20, &qword_100938F10, &unk_1007C2780);
  v36 = v35;

  sub_100749AD4();

  v37 = *&v27[v32];

  sub_100749AD4();

  v38 = *&v27[v32];
  v39 = qword_100930678;
  sub_1004783D0(&qword_100938F28, type metadata accessor for TodayCardCollectionElementsObserver, &unk_1007D0370);
  v40 = v38;

  sub_100749AD4();

  v41 = *&v27[qword_10097EE20];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_10074CC74();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10086F708;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_100467304(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_100752314();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_100930660) = 0x409F400000000000;
  v8 = qword_100930668;
  sub_10074E704();
  swift_allocObject();
  *(v2 + v8) = sub_10074E6F4();
  v9 = qword_100930670;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_1007417F4();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_100930678;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_1007469A4();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_100930680) = 0;
  *(v3 + qword_100930688) = 0;
  sub_10074E504();
  *(v3 + qword_10097EE10) = 0;
  *(v3 + qword_10097EE28) = 0;
  *(v3 + qword_100930690) = 0;
  *(v3 + qword_100930698) = 0;
  *(v3 + qword_10097EE30) = 0;
  v17 = qword_10097EE38;
  v18 = objc_allocWithZone(sub_100749AF4());
  *(v3 + v17) = sub_100749AE4();
  v19 = qword_10097EE40;
  sub_10000C518(&qword_100938F70, &qword_1007C27A0);
  swift_allocObject();
  *(v3 + v19) = sub_100749CC4();
  *(v3 + qword_10097EE48) = 1;
  *(v3 + qword_1009306A8) = 0;
  *(v3 + qword_10097EE50) = 0;
  v20 = qword_10097EE58;
  sub_100748A94();
  swift_allocObject();
  *(v3 + v20) = sub_100748A84();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10041342C(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_1007522F4();
  v22 = sub_100752724();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10097EE08) = v47;

  sub_10074B884();
  sub_1007495A4();

  sub_1007442C4();
  sub_1007526E4();
  *(v3 + qword_10097EE18) = v48[0];
  sub_10074CC94();
  sub_1007526E4();
  *(v3 + qword_10097EE20) = v48[0];
  sub_1007495B4();
  sub_100752754();
  sub_10074B544();
  swift_allocObject();
  *(v3 + qword_1009306A0) = sub_10074B554();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10062DFAC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10097EE40] = sub_100749CC4();

  sub_10074B184();
  sub_100752764();

  sub_100752D34();

  v29 = v48[0];
  sub_10074B154();

  sub_100748464();

  sub_100752D34();

  v30 = v48[0];
  sub_100748424();

  v48[3] = sub_10074E4D4();
  v48[4] = sub_1004783D0(&qword_100938F78, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004778CC(v48, &v27[v31]);
  swift_endAccess();
  sub_1004783D0(&qword_100938F80, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_100748C54();

  v32 = qword_10097EE38;
  v33 = *&v27[qword_10097EE38];

  sub_100752D34();

  sub_10074C4B4();
  swift_allocObject();
  sub_10074C4C4();
  sub_100749AD4();

  v34 = *&v27[v32];

  sub_100752D34();

  sub_100749F64();
  swift_allocObject();
  sub_100749F74();
  sub_100749AD4();

  v35 = *&v27[v32];
  sub_1004779DC(&qword_100938F88, &qword_100938F70, &qword_1007C27A0);
  v36 = v35;

  sub_100749AD4();

  v37 = *&v27[v32];

  sub_100749AD4();

  v38 = *&v27[v32];
  v39 = qword_100930678;
  sub_1004783D0(&qword_100938F28, type metadata accessor for TodayCardCollectionElementsObserver, &unk_1007D0370);
  v40 = v38;

  sub_100749AD4();

  v41 = *&v27[qword_10097EE20];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_10074CC74();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10086F708;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_100467CF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_100752314();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_100930660) = 0x409F400000000000;
  v8 = qword_100930668;
  sub_10074E704();
  swift_allocObject();
  *(v2 + v8) = sub_10074E6F4();
  v9 = qword_100930670;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_1007417F4();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_100930678;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_1007469A4();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_100930680) = 0;
  *(v3 + qword_100930688) = 0;
  sub_10074E504();
  *(v3 + qword_10097EE10) = 0;
  *(v3 + qword_10097EE28) = 0;
  *(v3 + qword_100930690) = 0;
  *(v3 + qword_100930698) = 0;
  *(v3 + qword_10097EE30) = 0;
  v17 = qword_10097EE38;
  v18 = objc_allocWithZone(sub_100749AF4());
  *(v3 + v17) = sub_100749AE4();
  v19 = qword_10097EE40;
  sub_10000C518(&qword_100938F90, &qword_1007C27A8);
  swift_allocObject();
  *(v3 + v19) = sub_100749CC4();
  *(v3 + qword_10097EE48) = 1;
  *(v3 + qword_1009306A8) = 0;
  *(v3 + qword_10097EE50) = 0;
  v20 = qword_10097EE58;
  sub_100748A94();
  swift_allocObject();
  *(v3 + v20) = sub_100748A84();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10041342C(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_1007522F4();
  v22 = sub_100752724();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10097EE08) = v47;

  sub_10074B884();
  sub_1007495A4();

  sub_1007442C4();
  sub_1007526E4();
  *(v3 + qword_10097EE18) = v48[0];
  sub_10074CC94();
  sub_1007526E4();
  *(v3 + qword_10097EE20) = v48[0];
  sub_1007495B4();
  sub_100752754();
  sub_10074B544();
  swift_allocObject();
  *(v3 + qword_1009306A0) = sub_10074B554();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10062DFAC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10097EE40] = sub_100749CC4();

  sub_10074B184();
  sub_100752764();

  sub_100752D34();

  v29 = v48[0];
  sub_10074B154();

  sub_100748464();

  sub_100752D34();

  v30 = v48[0];
  sub_100748424();

  v48[3] = sub_10074C0A4();
  v48[4] = sub_1004783D0(&qword_100938F98, &type metadata accessor for ArcadeDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004778CC(v48, &v27[v31]);
  swift_endAccess();
  sub_1004783D0(&qword_100938FA0, &type metadata accessor for ArcadeDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_100748C54();

  v32 = qword_10097EE38;
  v33 = *&v27[qword_10097EE38];

  sub_100752D34();

  sub_10074C4B4();
  swift_allocObject();
  sub_10074C4C4();
  sub_100749AD4();

  v34 = *&v27[v32];

  sub_100752D34();

  sub_100749F64();
  swift_allocObject();
  sub_100749F74();
  sub_100749AD4();

  v35 = *&v27[v32];
  sub_1004779DC(&qword_100938FA8, &qword_100938F90, &qword_1007C27A8);
  v36 = v35;

  sub_100749AD4();

  v37 = *&v27[v32];

  sub_100749AD4();

  v38 = *&v27[v32];
  v39 = qword_100930678;
  sub_1004783D0(&qword_100938F28, type metadata accessor for TodayCardCollectionElementsObserver, &unk_1007D0370);
  v40 = v38;

  sub_100749AD4();

  v41 = *&v27[qword_10097EE20];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_10074CC74();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10086F708;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_1004686EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_100752314();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_100930660) = 0x409F400000000000;
  v8 = qword_100930668;
  sub_10074E704();
  swift_allocObject();
  *(v2 + v8) = sub_10074E6F4();
  v9 = qword_100930670;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_1007417F4();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_100930678;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_1007469A4();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_100930680) = 0;
  *(v3 + qword_100930688) = 0;
  sub_10074E504();
  *(v3 + qword_10097EE10) = 0;
  *(v3 + qword_10097EE28) = 0;
  *(v3 + qword_100930690) = 0;
  *(v3 + qword_100930698) = 0;
  *(v3 + qword_10097EE30) = 0;
  v17 = qword_10097EE38;
  v18 = objc_allocWithZone(sub_100749AF4());
  *(v3 + v17) = sub_100749AE4();
  v19 = qword_10097EE40;
  sub_10000C518(&qword_100938FB0, &unk_1007C27B0);
  swift_allocObject();
  *(v3 + v19) = sub_100749CC4();
  *(v3 + qword_10097EE48) = 1;
  *(v3 + qword_1009306A8) = 0;
  *(v3 + qword_10097EE50) = 0;
  v20 = qword_10097EE58;
  sub_100748A94();
  swift_allocObject();
  *(v3 + v20) = sub_100748A84();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10041342C(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_1007522F4();
  v22 = sub_100752724();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10097EE08) = v47;

  sub_10074B884();
  sub_1007495A4();

  sub_1007442C4();
  sub_1007526E4();
  *(v3 + qword_10097EE18) = v48[0];
  sub_10074CC94();
  sub_1007526E4();
  *(v3 + qword_10097EE20) = v48[0];
  sub_1007495B4();
  sub_100752754();
  sub_10074B544();
  swift_allocObject();
  *(v3 + qword_1009306A0) = sub_10074B554();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10062DFAC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10097EE40] = sub_100749CC4();

  sub_10074B184();
  sub_100752764();

  sub_100752D34();

  v29 = v48[0];
  sub_10074B154();

  sub_100748464();

  sub_100752D34();

  v30 = v48[0];
  sub_100748424();

  v48[3] = sub_10074DEE4();
  v48[4] = sub_1004783D0(&qword_100938FB8, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004778CC(v48, &v27[v31]);
  swift_endAccess();
  sub_1004783D0(&qword_100938FC0, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_100748C54();

  v32 = qword_10097EE38;
  v33 = *&v27[qword_10097EE38];

  sub_100752D34();

  sub_10074C4B4();
  swift_allocObject();
  sub_10074C4C4();
  sub_100749AD4();

  v34 = *&v27[v32];

  sub_100752D34();

  sub_100749F64();
  swift_allocObject();
  sub_100749F74();
  sub_100749AD4();

  v35 = *&v27[v32];
  sub_1004779DC(&unk_100938FC8, &qword_100938FB0, &unk_1007C27B0);
  v36 = v35;

  sub_100749AD4();

  v37 = *&v27[v32];

  sub_100749AD4();

  v38 = *&v27[v32];
  v39 = qword_100930678;
  sub_1004783D0(&qword_100938F28, type metadata accessor for TodayCardCollectionElementsObserver, &unk_1007D0370);
  v40 = v38;

  sub_100749AD4();

  v41 = *&v27[qword_10097EE20];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_10074CC74();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10086F708;
  swift_unknownObjectWeakAssign();

  return v42;
}