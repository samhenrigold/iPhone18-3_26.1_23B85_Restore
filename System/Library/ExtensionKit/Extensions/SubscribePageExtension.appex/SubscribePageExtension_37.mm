uint64_t sub_10042E858()
{
  v1 = v0;
  v67 = sub_100751374();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UpdatesLockupCollectionViewCell(0);
  v73.receiver = v0;
  v73.super_class = v7;
  objc_msgSendSuper2(&v73, "layoutSubviews");
  v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_lockupView];
  sub_1007477B4();
  [v8 sizeThatFits:{v9, v10}];
  v12 = v11;
  sub_1007477B4();
  MinX = CGRectGetMinX(v74);
  sub_1007477B4();
  MinY = CGRectGetMinY(v75);
  sub_1007477B4();
  Width = CGRectGetWidth(v76);
  [v8 setFrame:{MinX, MinY, Width, v12}];
  if (qword_100920C10 != -1)
  {
    swift_once();
  }

  sub_10000C824(qword_1009802C0, v71);
  sub_1007477B4();
  Height = CGRectGetHeight(v77);
  v78.origin.x = MinX;
  v78.origin.y = MinY;
  v78.size.width = Width;
  v78.size.height = v12;
  v17 = CGRectGetHeight(v78);
  v18 = v72;
  sub_10000C888(v71, v72);
  sub_100536120(v18);
  sub_100750564();
  v20 = v19;
  v21 = v4 + 8;
  v22 = *(v4 + 8);
  v70 = v21;
  v22(v6, v3);
  v23 = Height - (v17 + v20);
  v24 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_versionMetadata];
  sub_1007477B4();
  v69 = v24;
  [v24 sizeThatFits:{v25, v26}];
  v28 = v27;
  v29 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_expandableTextView];
  v68 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed;
  if ((v29[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed] & 1) == 0)
  {
    v30 = v72;
    sub_10000C888(v71, v72);
    sub_100536120(v30);
    sub_100750564();
    v32 = v31;
    v22(v6, v3);
    v23 = v23 - (v28 + v32);
  }

  sub_1007477B4();
  [v29 measurementsWithFitting:v1 in:{CGRectGetWidth(v79), v23}];
  v34 = v33;
  sub_1007477B4();
  v35 = CGRectGetMinX(v80);
  v81.origin.x = MinX;
  v81.origin.y = MinY;
  v81.size.width = Width;
  v81.size.height = v12;
  MaxY = CGRectGetMaxY(v81);
  v37 = v72;
  sub_10000C888(v71, v72);
  sub_100536120(v37);
  sub_100750564();
  v39 = v38;
  v22(v6, v3);
  sub_1007477B4();
  [v29 setFrame:{v35, MaxY + v39, CGRectGetWidth(v82), v34}];
  [v29 frame];
  v40 = CGRectGetMinX(v83);
  [v29 frame];
  v41 = CGRectGetMaxY(v84);
  v42 = v72;
  sub_10000C888(v71, v72);
  sub_100536120(v42);
  sub_100750564();
  v44 = v43;
  v22(v6, v3);
  sub_1007477B4();
  v45 = CGRectGetWidth(v85);
  v46 = v69;
  [v69 setFrame:{v40, v41 + v44, v45, v28}];
  v47 = 1.0;
  if (v29[v68])
  {
    v47 = 0.0;
  }

  [v46 setAlpha:v47];
  v48 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_separatorView];
  if (v48)
  {
    v49 = v48;
    sub_1007477B4();
    CGRectGetMinX(v86);
    [v1 bounds];
    CGRectGetMinY(v87);
    sub_1007477B4();
    CGRectGetWidth(v88);
    [v1 bounds];
    CGRectGetHeight(v89);
    v50 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
    swift_beginAccess();
    v51 = v66;
    v52 = &v49[v50];
    v53 = v65;
    v54 = v67;
    (*(v66 + 16))(v65, v52, v67);
    sub_100751324();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    (*(v51 + 8))(v53, v54);
    [v49 setFrame:{v56, v58, v60, v62}];
  }

  return sub_10000C620(v71);
}

id sub_10042EF28()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_100926DC0, &unk_1007C0DC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for UpdatesLockupCollectionViewCell(0);
  v13.receiver = v0;
  v13.super_class = v5;
  objc_msgSendSuper2(&v13, "prepareForReuse");
  v6 = *(*&v0[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  sub_100743384(v14, v7);

  v8 = sub_10074F164();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
  swift_beginAccess();
  sub_10043084C(v4, &v1[v9]);
  swift_endAccess();
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_expandableTextView];
  sub_10025FCF0(0, 0);
  [v10 setNeedsLayout];
  return [*&v1[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_versionMetadata] setText:0];
}

double sub_10042F0F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000C518(&qword_100926DC0, &unk_1007C0DC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25[-1] - v7;
  v9 = sub_10074F314();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10074F284();
  v11 = *(v10 - 8);
  *&result = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v25[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v24 = a2;

    sub_10074F294();
    v15 = sub_10074F254();
    (*(v11 + 8))(v14, v10);
    if (qword_100920548 != -1)
    {
      swift_once();
    }

    v16 = sub_100747064();
    sub_10000D0FC(v16, qword_10097E3A8);
    sub_100746F34();
    sub_10074F374();
    v17 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_lockupView);
    v18 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
    v19 = *(v17 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    sub_10074F324();
    sub_100743364();
    [v19 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_10000D198();
      sub_100753E34();
    }

    sub_100743224();

    [*(v17 + v18) setContentMode:v15];
    sub_10074F3C4();
    v20 = sub_10074F164();
    (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
    v21 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
    swift_beginAccess();
    sub_10043084C(v8, v3 + v21);
    swift_endAccess();
    sub_1007442C4();
    v22 = *(v17 + v18);
    sub_1007433C4();
    v23 = v22;
    sub_100744244();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1007441F4();

    sub_10000C8CC(v25, &unk_1009276E0, &unk_1007A5C70);
  }

  return result;
}

void sub_10042F4C0(objc_class *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a2;
  v7 = sub_10000C518(&qword_100926DC0, &unk_1007C0DC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v16 = sub_10074F164();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v40 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v36 - v20;
  sub_100171C7C(a3, v15);
  v22 = *(v17 + 48);
  if (v22(v15, 1, v16) == 1)
  {
    v12 = v15;
  }

  else
  {
    v39 = a1;
    v38 = *(v17 + 32);
    v38(v21, v15, v16);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v37 = v9;
      v24 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
      v25 = Strong;
      swift_beginAccess();
      sub_100171C7C(v25 + v24, v12);

      if (v22(v12, 1, v16) != 1)
      {
        v33 = v40;
        v38(v40, v12, v16);
        sub_1004308FC(&qword_100926DC8, &type metadata accessor for Artwork.URLTemplate, &protocol conformance descriptor for Artwork.URLTemplate);
        v34 = sub_100753014();
        v35 = *(v17 + 8);
        v35(v33, v16);
        v35(v21, v16);
        v9 = v37;
        a1 = v39;
        if ((v34 & 1) == 0)
        {
          return;
        }

        goto LABEL_9;
      }

      (*(v17 + 8))(v21, v16);
      v9 = v37;
    }

    else
    {
      (*(v17 + 8))(v21, v16);
      (*(v17 + 56))(v12, 1, 1, v16);
    }

    a1 = v39;
  }

  sub_10000C8CC(v12, &qword_100926DC0, &unk_1007C0DC0);
LABEL_9:
  swift_beginAccess();
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    v28 = *(*(v26 + OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);

    v42.is_nil = (v41 & 1) == 0;
    v42.value.super.isa = a1;
    sub_1007432F4(v42, v29);
  }

  swift_beginAccess();
  v30 = swift_unknownObjectWeakLoadStrong();
  if (v30)
  {
    v31 = v30;
    (*(v17 + 56))(v9, 1, 1, v16);
    v32 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
    swift_beginAccess();
    sub_10043084C(v9, v31 + v32);
    swift_endAccess();
  }
}

double sub_10042F924(double a1, double a2)
{
  v3 = v2;
  v6 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v6 - 8);
  v8 = &v82 - v7;
  v85 = sub_1007479B4();
  v9 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v84 = &v82 - v12;
  v13 = sub_100747064();
  v95 = *(v13 - 8);
  v96 = v13;
  __chkstk_darwin(v13);
  v97 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_100754724();
  v89 = *(v94 - 8);
  *&v15 = __chkstk_darwin(v94).n128_u64[0];
  v93 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_expandableTextView];
  v18 = [*(v17 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel) attributedText];
  v19 = *(v17 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed);
  v90 = v3[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_hasSeparator];
  v20 = [*&v3[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_versionMetadata] text];
  if (v20)
  {
    v21 = v20;
    v87 = sub_100753094();
    v91 = v22;
  }

  else
  {
    v87 = 0;
    v91 = 0;
  }

  [v3 layoutMargins];
  v27 = v26;
  if (v19)
  {
    v28 = 2;
  }

  else
  {
    v28 = 0;
  }

  v92 = v18;
  v86 = v24;
  if (v18)
  {
    v29 = v23;
    if (a2 >= a1)
    {
      v30 = a1;
    }

    else
    {
      v30 = a2;
    }

    v31 = a1;
    if (v30 != 0.0)
    {
      v32 = v24;
      v33 = v25;
      v34 = v18;
      v35 = [v3 traitCollection];
      v36 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v37 = objc_allocWithZone(v36);
      v38 = &v37[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_layoutMargins];
      *v38 = v29;
      *(v38 + 1) = v32;
      *(v38 + 2) = v33;
      *(v38 + 3) = v27;
      *&v37[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_numberOfLines] = v28;
      v39 = &v37[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_fittingSize];
      *v39 = a1;
      v39[1] = a2;
      *&v37[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_traitCollection] = v35;
      *&v37[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_attributedText] = v34;
      v99.receiver = v37;
      v99.super_class = v36;
      v40 = objc_msgSendSuper2(&v99, "init");
      if (qword_1009206A8 != -1)
      {
        swift_once();
      }

      v41 = qword_10092F470;
      v42 = [qword_10092F470 objectForKey:v40];
      if (v42)
      {
        v43 = v42;

        v31 = *&v43[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2410CacheValue_measurements];
      }

      else
      {
        v88 = v41;
        v44 = qword_1009206A0;
        v43 = v34;
        if (v44 != -1)
        {
          swift_once();
        }

        v45 = sub_100750534();
        v46 = sub_10000D0FC(v45, qword_10092F458);
        v47 = *(v45 - 8);
        (*(v47 + 16))(v8, v46, v45);
        (*(v47 + 56))(v8, 0, 1, v45);
        sub_100750964();
        sub_100750984();
        sub_100750974();
        v49 = v48;
        v51 = v50;
        v53 = v52;

        sub_10000C8CC(v8, &unk_100928A40, qword_1007A6630);
        v54 = type metadata accessor for ExpandableTextView.CacheValue();
        v55 = objc_allocWithZone(v54);
        v56 = &v55[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2410CacheValue_measurements];
        *v56 = a1;
        v56[1] = v29 + v33 + v49;
        *(v56 + 2) = v51;
        *(v56 + 3) = v53;
        v98.receiver = v55;
        v98.super_class = v54;
        v57 = objc_msgSendSuper2(&v98, "init");
        [v88 setObject:v57 forKey:v40];

        v31 = a1;
      }
    }
  }

  else
  {
    v31 = a1;
  }

  if (qword_100920C10 != -1)
  {
    swift_once();
  }

  LODWORD(v88) = v19;
  v58 = qword_1009802D8;
  sub_10000C888(qword_1009802C0, qword_1009802D8);
  v59 = v93;
  sub_100536120(v58);
  sub_100750564();
  v60 = *(v89 + 8);
  v60(v59, v94);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v61 = v96;
  v62 = sub_10000D0FC(v96, qword_10097E3A8);
  v63 = [v3 traitCollection];
  (*(v95 + 16))(v97, v62, v61);
  v64 = sub_100746FD4();
  if ((v66 & 1) == 0 && ((v64 | v65) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_100753804())
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v67 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v67 = qword_10093FF58;
    }

    v68 = v85;
    v69 = sub_10000D0FC(v85, v67);
    v70 = v83;
    (*(v9 + 16))(v83, v69, v68);
    v71 = v84;
    (*(v9 + 32))(v84, v70, v68);
    sub_100747964();
    sub_100747994();
    sub_100746FE4();
    (*(v9 + 8))(v71, v68);
  }

  v72 = v97;
  sub_100746F14();

  (*(v95 + 8))(v72, v96);
  if ((v91 == 0) | v88 & 1)
  {
    v73 = v92;
  }

  else
  {
    v74 = qword_1009802D8;
    sub_10000C888(qword_1009802C0, qword_1009802D8);
    v75 = v93;
    sub_100536120(v74);
    sub_100750564();
    v60(v75, v94);
    v73 = v92;
    if (qword_100920FE8 != -1)
    {
      swift_once();
    }

    v76 = sub_100750534();
    sub_10000D0FC(v76, qword_100980CF0);
    v77 = sub_10074F3F4();
    v100[3] = v77;
    v100[4] = sub_1004308FC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v78 = sub_10000D134(v100);
    (*(*(v77 - 8) + 104))(v78, enum case for Feature.measurement_with_labelplaceholder(_:), v77);
    sub_10074FC74();
    sub_10000C620(v100);
    sub_10074CCB4();
  }

  if (v90)
  {
    if (qword_100920C08 != -1)
    {
      swift_once();
    }

    v79 = sub_100751374();
    sub_10000D0FC(v79, qword_1009802A8);
    sub_100753BD4();
    v31 = v80;
  }

  return v31;
}

id sub_1004304D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpdatesLockupCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for UpdatesLockupCollectionViewCell(uint64_t a1)
{
  result = qword_100937E50;
  if (!qword_100937E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004305DC(uint64_t a1, __n128 a2)
{
  sub_100430694(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100430694(uint64_t a1, __n128 a2)
{
  if (!qword_100937E60)
  {
    sub_10074F164();
    v2 = sub_100754284();
    if (!v3)
    {
      atomic_store(v2, &qword_100937E60);
    }
  }
}

double sub_10043070C()
{
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v0 = sub_100747064();
  sub_10000D0FC(v0, qword_10097E3A8);
  sub_100746F34();
  return result;
}

void sub_100430788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013AE68(a1, a2, a3, WitnessTable);
}

uint64_t sub_1004307F4(uint64_t a1)
{
  result = sub_1004308FC(&qword_100937E68, type metadata accessor for UpdatesLockupCollectionViewCell, &unk_1007C0D60);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10043084C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100926DC0, &unk_1007C0DC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004308BC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004308FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100430944()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_expandableTextView;
  sub_10000D198();
  v10 = sub_100753E54();
  v11 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *(v1 + v9) = sub_10025F574(v10, 0.0, 0.0, 0.0, 0.0);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_versionMetadata;
  if (qword_100920FE8 != -1)
  {
    swift_once();
  }

  v13 = sub_100750534();
  v14 = sub_10000D0FC(v13, qword_100980CF0);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v8, v14, v13);
  (*(v15 + 56))(v8, 0, 1, v13);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v16 = objc_allocWithZone(sub_100745C84());
  *(v1 + v12) = sub_100745C74();
  v17 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_lockupView;
  *(v1 + v17) = [objc_allocWithZone(type metadata accessor for SmallLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_hasSeparator) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_separatorView) = 0;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
  v19 = sub_10074F164();
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  sub_100754644();
  __break(1u);
}

void *sub_100430C6C(void *result, double a2)
{
  if (*(v2 + 32) != a2)
  {
    *(v2 + 32) = a2;
    v3 = result;
    [result _systemContentInset];
    v5 = v4;
    [v3 contentOffset];
    v7 = v6;
    v8 = [v3 contentInset];
    v9.n128_f64[0] = fmin((v5 + v7 + v9.n128_f64[0] - *(v2 + 32)) / *(v2 + 40), 1.0);
    if (v9.n128_f64[0] < 0.0)
    {
      v9.n128_f64[0] = 0.0;
    }

    return (*(v2 + 16))(v8, v9);
  }

  return result;
}

uint64_t sub_100430D0C(void *a1)
{
  [a1 _systemContentInset];
  v4 = v3;
  [a1 contentOffset];
  v6 = v5;
  v7 = [a1 contentInset];
  v8.n128_f64[0] = fmin((v4 + v6 + v8.n128_f64[0] - *(v1 + 32)) / *(v1 + 40), 1.0);
  if (v8.n128_f64[0] < 0.0)
  {
    v8.n128_f64[0] = 0.0;
  }

  return (*(v1 + 16))(v7, v8);
}

uint64_t sub_100430D9C()
{

  return swift_deallocClassInstance();
}

CGFloat sub_100430DFC()
{
  CGAffineTransformMakeScale(&v2, 1.0, -1.0);
  *&v1.a = *&v2.m11;
  *&v1.c = *&v2.m13;
  *&v1.tx = *&v2.m21;
  CATransform3DMakeAffineTransform(&v2, &v1);
  *byte_1009802F0 = v2;
  return v2.m21;
}

uint64_t type metadata accessor for RevealingImageMirrorView(uint64_t a1)
{
  result = qword_100937F48;
  if (!qword_100937F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_100430F74(__n128 a1)
{
  v1 = sub_1007486F4();
  __chkstk_darwin(v1 - 8);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100748714();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074F704();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  (*(v9 + 8))(v11, v8);
  v12 = sub_10007DC04();
  sub_10011F99C(v12, v3);
  swift_getObjectType();
  v13 = swift_unknownObjectRetain();
  sub_100120D24(v13);
  swift_unknownObjectRelease();
  v14 = sub_100750F34();
  swift_allocObject();
  v15 = sub_100750F14();
  v20[10] = v14;
  v20[11] = &protocol witness table for LayoutViewPlaceholder;
  v20[7] = v15;
  swift_allocObject();
  v16 = sub_100750F14();
  v20[5] = v14;
  v20[6] = &protocol witness table for LayoutViewPlaceholder;
  v20[2] = v16;
  sub_100748704();
  swift_getKeyPath();
  sub_100746914();

  sub_1004312C4(&qword_10092EDE0, &type metadata accessor for SmallBreakoutLayout, &protocol conformance descriptor for SmallBreakoutLayout);
  sub_100750404();
  v18 = v17;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v4);
  return v18;
}

uint64_t sub_1004312C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10043130C(uint64_t a1)
{
  v2 = sub_100741494();
  v24 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007A5CF0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007A7210;
  type metadata accessor for ActionDebugSetting();
  v7 = swift_allocObject();
  *(v7 + 56) = 0x6574616C756D6953;
  *(v7 + 64) = 0xEF65676E61684320;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = sub_100431630;
  *(v7 + 112) = 0;
  sub_100741484();
  v8 = sub_100741464();
  v10 = v9;
  v11 = *(v3 + 8);
  v11(v5, v2);
  v26 = v8;
  v27 = v10;
  sub_1007544E4();
  *(v6 + 32) = v7;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  type metadata accessor for NavigationActionDebugSetting();
  v14 = swift_allocObject();
  v14[7] = 0x6C6C412077656956;
  v14[8] = 0xE800000000000000;
  v14[10] = 0;
  v14[11] = 0;
  v14[9] = 0;
  v14[12] = sub_100432B04;
  v14[13] = v13;

  sub_100741484();
  v15 = sub_100741464();
  v17 = v16;

  v18 = v24;
  v11(v5, v24);
  v26 = v15;
  v27 = v17;
  sub_1007544E4();

  *(v6 + 40) = v14;
  type metadata accessor for DebugSection();
  v19 = swift_allocObject();
  sub_100741484();
  v20 = sub_100741464();
  v22 = v21;
  v11(v5, v18);
  v19[2] = v20;
  v19[3] = v22;
  v19[4] = 0;
  v19[5] = 0xE000000000000000;
  v19[6] = v6;
  result = v25;
  *(v25 + 32) = v19;
  return result;
}

void sub_100431630()
{
  v0 = [objc_opt_self() defaultCenter];
  [v0 postNotificationName:ASDAppCapabilitiesDidChangeNotification object:0];
}

void sub_1004316A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100432B0C(a3);
  }
}

uint64_t sub_1004316FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v118 = a2;
  v3 = sub_100752614();
  __chkstk_darwin(v3 - 8);
  v129 = v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_100741494();
  v130 = *(v128 - 8);
  __chkstk_darwin(v128);
  v127 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100748FA4();
  __chkstk_darwin(v6 - 8);
  v117 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_10074EA34();
  v113 = *(v115 - 8);
  __chkstk_darwin(v115);
  v116 = v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_10074EAB4();
  __chkstk_darwin(v111);
  v114 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1007457B4();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v112 = v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10074DBC4();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v110 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10074C7B4();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v124 = v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v13 - 8);
  v120 = v96 - v14;
  v15 = sub_10000C518(&unk_100928740, &qword_1007AC280);
  __chkstk_darwin(v15 - 8);
  v123 = v96 - v16;
  v17 = sub_10000C518(&qword_10092F318, &unk_1007C3860);
  __chkstk_darwin(v17 - 8);
  v122 = v96 - v18;
  v19 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v19 - 8);
  v105 = v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v121 = v96 - v22;
  v23 = sub_1007439C4();
  __chkstk_darwin(v23 - 8);
  v99 = v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000C518(&qword_1009245A0, &qword_1007A7A50);
  __chkstk_darwin(v25 - 8);
  v97 = v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v98 = v96 - v28;
  v29 = sub_10000C518(&qword_10092F320, &unk_1007B5270);
  __chkstk_darwin(v29 - 8);
  v31 = v96 - v30;
  v32 = sub_10000C518(&unk_100933370, &unk_1007A8CE0);
  __chkstk_darwin(v32 - 8);
  v34 = v96 - v33;
  v35 = sub_10074E984();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = *a1;
  v39 = a1[1];
  v141 = 0;
  v139 = 0u;
  v140 = 0u;
  v40 = *(v36 + 104);
  v100 = v96 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40();
  v41 = *(v36 + 56);
  v101 = v34;
  v41(v34, 1, 1, v35);
  v42 = sub_100743AA4();
  v43 = *(*(v42 - 8) + 56);
  v102 = v31;
  v43(v31, 1, 1, v42);
  *&v133 = 0;
  *(&v133 + 1) = 0xE000000000000000;
  sub_100754534(26);

  *&v133 = 0xD000000000000018;
  *(&v133 + 1) = 0x800000010077C320;
  v44 = objc_opt_self();
  v45 = sub_100753064();
  v46 = [v44 isCapableOfAction:0 capability:v45];

  if (v46)
  {
    v47._countAndFlagsBits = 7562585;
  }

  else
  {
    v47._countAndFlagsBits = 28494;
  }

  if (v46)
  {
    v48 = 0xE300000000000000;
  }

  else
  {
    v48 = 0xE200000000000000;
  }

  v47._object = v48;
  sub_1007531B4(v47);

  v136 = v133;
  *&v133 = 0x203A6E65704FLL;
  *(&v133 + 1) = 0xE600000000000000;
  v49 = sub_100753064();
  v50 = [v44 isCapableOfAction:3 capability:v49];

  if (v50)
  {
    v51._countAndFlagsBits = 7562585;
  }

  else
  {
    v51._countAndFlagsBits = 28494;
  }

  if (v50)
  {
    v52 = 0xE300000000000000;
  }

  else
  {
    v52 = 0xE200000000000000;
  }

  v51._object = v52;
  sub_1007531B4(v51);

  v96[1] = v133;
  v137 = v133;
  v96[0] = *(&v133 + 1);
  *&v133 = 0x203A657461647055;
  *(&v133 + 1) = 0xE800000000000000;
  v96[5] = v38;
  v96[4] = v39;
  v53 = sub_100753064();
  v54 = [v44 isCapableOfAction:1 capability:v53];

  if (v54)
  {
    v55._countAndFlagsBits = 7562585;
  }

  else
  {
    v55._countAndFlagsBits = 28494;
  }

  v56 = v120;
  if (v54)
  {
    v57 = 0xE300000000000000;
  }

  else
  {
    v57 = 0xE200000000000000;
  }

  v55._object = v57;
  sub_1007531B4(v55);

  v96[3] = v133;
  v138 = v133;
  v96[2] = *(&v133 + 1);
  v142 = _swiftEmptyArrayStorage;
  sub_10001E5F4(0, 3, 0);
  v58 = v142;

  v59 = v127;
  sub_100741484();
  v60 = sub_100741464();
  v62 = v61;
  v63 = *(v130 + 8);
  v130 += 8;
  v119 = v63;
  v63(v59, v128);
  v131 = v60;
  v132 = v62;
  sub_1007544E4();
  sub_1007525F4();
  v64 = sub_100752914();
  v65 = *(v64 - 8);
  v126 = *(v65 + 56);
  v125 = v65 + 56;
  v126(v56, 1, 1, v64);
  v66 = sub_10074ECD4();
  swift_allocObject();
  v67 = sub_10074EC94();
  v142 = v58;
  v69 = v58[2];
  v68 = v58[3];
  if (v69 >= v68 >> 1)
  {
    sub_10001E5F4((v68 > 1), v69 + 1, 1);
    v58 = v142;
  }

  v134 = v66;
  v70 = sub_10025AD1C(&qword_100928558, &type metadata accessor for Action, &protocol conformance descriptor for Action);
  v135 = v70;
  *&v133 = v67;
  v58[2] = v69 + 1;
  sub_100012160(&v133, &v58[5 * v69 + 4]);

  v71 = v127;
  sub_100741484();
  v72 = sub_100741464();
  v74 = v73;
  v119(v71, v128);
  v131 = v72;
  v132 = v74;
  sub_1007544E4();
  sub_1007525F4();
  v126(v56, 1, 1, v64);
  swift_allocObject();
  v75 = sub_10074EC94();
  v142 = v58;
  v77 = v58[2];
  v76 = v58[3];
  v78 = v56;
  if (v77 >= v76 >> 1)
  {
    v94 = v75;
    sub_10001E5F4((v76 > 1), v77 + 1, 1);
    v75 = v94;
    v78 = v56;
    v58 = v142;
  }

  v134 = v66;
  v135 = v70;
  *&v133 = v75;
  v58[2] = v77 + 1;
  sub_100012160(&v133, &v58[5 * v77 + 4]);

  v79 = v127;
  sub_100741484();
  v80 = sub_100741464();
  v82 = v81;
  v119(v79, v128);
  v131 = v80;
  v132 = v82;
  sub_1007544E4();
  sub_1007525F4();
  v126(v78, 1, 1, v64);
  swift_allocObject();
  v83 = sub_10074EC94();
  v142 = v58;
  v84 = v78;
  v86 = v58[2];
  v85 = v58[3];
  if (v86 >= v85 >> 1)
  {
    v95 = v83;
    sub_10001E5F4((v85 > 1), v86 + 1, 1);
    v83 = v95;
    v58 = v142;
  }

  v134 = v66;
  v135 = v70;
  *&v133 = v83;
  v58[2] = v86 + 1;
  sub_100012160(&v133, &v58[5 * v86 + 4]);
  swift_arrayDestroy();
  v87 = sub_100743914();
  v88 = *(*(v87 - 8) + 56);
  v88(v98, 1, 1, v87);
  v88(v97, 1, 1, v87);

  sub_100743954();
  sub_100743A94();
  swift_allocObject();
  v130 = sub_100743A64();
  v89 = sub_100741264();
  v90 = *(*(v89 - 8) + 56);
  v90(v121, 1, 1, v89);
  v91 = sub_100746384();
  (*(*(v91 - 8) + 56))(v122, 1, 1, v91);
  v92 = sub_100741454();
  (*(*(v92 - 8) + 56))(v123, 1, 1, v92);
  v126(v84, 1, 1, v64);
  v90(v105, 1, 1, v89);
  (*(v103 + 104))(v124, enum case for IncompleteShelfFetchStrategy.onPageLoad(_:), v104);
  (*(v106 + 104))(v110, enum case for ShelfHorizontalScrollTargetBehavior.viewAligned(_:), v107);
  (*(v108 + 104))(v112, enum case for ShelfBackground.none(_:), v109);
  sub_10000C518(&qword_10092F328, qword_1007B5280);
  swift_allocObject();
  sub_1007522E4();
  *&v133 = _swiftEmptyArrayStorage;
  sub_10025AD1C(&unk_100925360, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  sub_10000C518(&qword_10092F330, qword_1007C0FD0);
  sub_10025AD64();
  sub_1007543A4();
  (*(v113 + 104))(v116, enum case for Shelf.ContentsMetadata.none(_:), v115);
  sub_100748F94();
  sub_10074EB84();
  swift_allocObject();
  result = sub_10074EB04();
  *v118 = result;
  return result;
}

id sub_100432A34(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppCapabilitiesSettings();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100432A8C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100432AC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100432B0C(uint64_t a1)
{
  v46 = a1;
  v1 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  v47 = *(v1 - 8);
  v48 = v1;
  __chkstk_darwin(v1);
  v45 = &v33 - v2;
  v3 = sub_10000C518(&qword_10092F310, &qword_1007B5268);
  __chkstk_darwin(v3 - 8);
  v44 = &v33 - v4;
  v5 = sub_1007524F4();
  __chkstk_darwin(v5 - 8);
  v43 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100742CF4();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v42 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1007493D4();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10074A304();
  v9 = *(v34 - 8);
  __chkstk_darwin(v34);
  v38 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100752614();
  __chkstk_darwin(v11 - 8);
  v35 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&qword_10092C1F0, &unk_1007A8F60);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v16 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v16 - 8);
  v18 = &v33 - v17;
  v19 = sub_10074F4D4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v49 = _swiftEmptyArrayStorage;
  sub_1007545C4();
  *&v51 = 0xD00000000000001ELL;
  *(&v51 + 1) = "Size Class 6 (Full Width)";

  sub_1004316FC(&v51, v54);

  sub_1007545A4();
  sub_1007545D4();
  sub_1007545E4();
  sub_1007545B4();
  *&v51 = 0xD00000000000001CLL;
  *(&v51 + 1) = "uses-non-webkit-browser-engine";

  sub_1004316FC(&v51, v54);

  sub_1007545A4();
  sub_1007545D4();
  sub_1007545E4();
  sub_1007545B4();
  swift_arrayDestroy();
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  (*(v20 + 104))(v22, enum case for FlowPage.page(_:), v19);
  v23 = sub_100741264();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  v24 = sub_100743FE4();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  v49 = 0u;
  v50 = 0u;
  sub_1007525F4();
  (*(v9 + 104))(v38, enum case for FlowPresentationContext.infer(_:), v34);
  (*(v36 + 104))(v40, enum case for FlowAnimationBehavior.infer(_:), v37);
  (*(v39 + 104))(v42, enum case for FlowOrigin.inapp(_:), v41);
  sub_100752B44();
  sub_100742CD4();
  swift_allocObject();
  v25 = sub_100742C84();
  v51 = 0u;
  v52 = 0u;
  sub_1007524E4();
  v26 = sub_1007524B4();
  (*(*(v26 - 8) + 56))(v44, 1, 1, v26);
  v27 = sub_100743684();
  swift_allocObject();
  v28 = sub_100743674();
  *(&v52 + 1) = v27;
  *&v51 = v28;
  sub_100742C24();
  sub_1000277BC(&v51);
  sub_100752764();
  v30 = v45;
  v29 = v46;
  v31 = v48;
  sub_100752D34();
  sub_1003C1424(v25, 1, v29, v30);

  return (*(v47 + 8))(v30, v31);
}

uint64_t sub_10043334C(uint64_t a1)
{
  switch(a1)
  {
    case 0:
    case 1:
    case 8:
      v1 = type metadata accessor for StoryCardCollectionViewCell(0);
      v2 = &unk_100932FB8;
      v3 = type metadata accessor for StoryCardCollectionViewCell;
      break;
    case 2:
      v1 = type metadata accessor for ListTodayCardCollectionViewCell(0);
      v2 = &unk_1009295A0;
      v3 = type metadata accessor for ListTodayCardCollectionViewCell;
      break;
    case 3:
    case 6:
      v1 = type metadata accessor for MultiAppFallbackCardCollectionViewCell(0);
      v2 = &unk_100937FB0;
      v3 = type metadata accessor for MultiAppFallbackCardCollectionViewCell;
      break;
    case 4:
      v1 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell(0);
      v2 = &unk_100937FC8;
      v3 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell;
      break;
    case 5:
      v1 = type metadata accessor for RiverTodayCardCollectionViewCell(0);
      v2 = &unk_100937FC0;
      v3 = type metadata accessor for RiverTodayCardCollectionViewCell;
      break;
    case 7:
      v1 = type metadata accessor for GridTodayCardCollectionViewCell(0);
      v2 = &unk_100937FB8;
      v3 = type metadata accessor for GridTodayCardCollectionViewCell;
      break;
    case 10:
      v1 = type metadata accessor for AppEventTodayCardCollectionViewCell(0);
      v2 = &unk_100937FA8;
      v3 = type metadata accessor for AppEventTodayCardCollectionViewCell;
      break;
    case 11:
      v1 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell(0);
      v2 = &unk_100937FA0;
      v3 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell;
      break;
    case 12:
      v1 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell(0);
      v2 = &unk_100937F98;
      v3 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell;
      break;
    case 13:
      v1 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell(0);
      v2 = &unk_100937F90;
      v3 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell;
      break;
    default:
      sub_100754644();
      __break(1u);
      JUMPOUT(0x100433580);
  }

  sub_1004335B8(v2, v3);
  return v1;
}

uint64_t sub_1004335B8(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)()
{
  v0 = sub_100747C14();
  __chkstk_darwin(v0 - 8);
  sub_100746884();
  if (qword_100920C20 != -1)
  {
    swift_once();
  }

  return sub_10074F6A4();
}

uint64_t sub_1004336F0()
{
  v0 = sub_10000C518(&qword_100923E88, &unk_1007AF240);
  __chkstk_darwin(v0 - 8);
  v2 = &v42 - v1;
  v53 = sub_10074F654();
  v3 = *(v53 - 8);
  __chkstk_darwin(v53);
  v5 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10000C518(&qword_100923230, &qword_1007BF500);
  __chkstk_darwin(v6 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  __chkstk_darwin(v12);
  v56 = &v42 - v13;
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  sub_10000C518(&qword_100923E90, &unk_1007AF250);
  v17 = *(sub_10074F584() - 8);
  v54 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v47 = v19;
  *(v19 + 16) = xmmword_1007A7250;
  v20 = v19 + v18;
  v58 = 0x3FF0000000000000;
  sub_10001CC10();
  sub_10074F614();
  v58 = 0;
  sub_10074F614();
  v58 = 0x4048000000000000;
  v21 = v11;
  sub_10074F614();
  __asm { FMOV            V0.2D, #16.0 }

  *v5 = _Q0;
  v57 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v27 = *(v3 + 104);
  v48 = v3 + 104;
  v28 = v53;
  v27(v5);
  v51 = v27;
  left = UIEdgeInsetsZero.left;
  LOBYTE(v58) = 0;
  sub_10074F614();
  v58 = 0;
  v50 = v8;
  sub_10074F614();
  v52 = v20;
  v55 = v16;
  sub_10074F544();
  v58 = 0x3FF0000000000000;
  sub_10074F614();
  v58 = 0;
  sub_10074F614();
  v58 = 0x4048000000000000;
  sub_10074F614();
  __asm { FMOV            V0.2D, #20.0 }

  *v5 = _Q0;
  (v27)(v5, v57, v28);
  LOBYTE(v58) = 0;
  v49 = v2;
  sub_10074F614();
  v58 = 0;
  sub_10074F614();
  v31 = v54;
  top = UIEdgeInsetsZero.top;
  v46 = left;
  v42 = v21;
  sub_10074F544();
  v43 = 2 * v31;
  v58 = 0x3FF0000000000000;
  sub_10074F614();
  v58 = 0;
  sub_10074F614();
  v58 = 0x4048000000000000;
  sub_10074F614();
  v44 = vdupq_n_s64(0x4041000000000000uLL);
  v32 = v5;
  *v5 = v44;
  v33 = v53;
  v34 = v51;
  (v51)(v5, v57, v53);
  LOBYTE(v58) = 0;
  sub_10074F614();
  v58 = 0;
  sub_10074F614();
  v35 = v43;
  v36 = v32;
  sub_10074F544();
  v37 = v54;
  v43 = v35 + v54;
  v58 = 0x4000000000000000;
  sub_10074F614();
  v58 = 0x4044000000000000;
  sub_10074F614();
  v58 = 0x4044000000000000;
  sub_10074F614();
  *v36 = v44;
  v38 = v57;
  (v34)(v36, v57, v33);
  sub_1007535A4();
  LOBYTE(v58) = 0;
  sub_10074F614();
  v58 = 0;
  sub_10074F614();
  sub_10074F544();
  v43 = 4 * v37;
  v58 = 0x4000000000000000;
  sub_10074F614();
  v58 = 0x4044000000000000;
  sub_10074F614();
  v58 = 0x4044000000000000;
  sub_10074F614();
  v44 = vdupq_n_s64(0x404A000000000000uLL);
  *v36 = v44;
  v39 = v53;
  (v51)(v36, v38, v53);
  LOBYTE(v58) = 0;
  sub_10074F614();
  v58 = 0;
  sub_10074F614();
  v40 = v43;
  sub_10074F544();
  v54 += v40;
  v58 = 0x4000000000000000;
  sub_10074F614();
  v58 = 0x4044000000000000;
  sub_10074F614();
  v58 = 0x4044000000000000;
  sub_10074F614();
  *v36 = v44;
  (v51)(v36, v57, v39);
  LOBYTE(v58) = 0;
  sub_10074F614();
  v58 = 0;
  sub_10074F614();
  result = sub_10074F544();
  qword_100980370 = v47;
  return result;
}

uint64_t sub_1004340AC()
{
  v0 = sub_10000C518(&qword_100923E88, &unk_1007AF240);
  __chkstk_darwin(v0 - 8);
  v2 = v16 - v1;
  v3 = sub_10074F654();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10000C518(&qword_100923230, &qword_1007BF500);
  __chkstk_darwin(v4 - 8);
  v16[3] = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  v10 = v16 - v9;
  sub_10000C518(&qword_100923E90, &unk_1007AF250);
  v11 = *(sub_10074F584() - 8);
  v18 = *(v11 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  v17 = v13;
  *(v13 + 16) = xmmword_1007A7250;
  v19 = v13 + v12;
  v20 = 0x3FF0000000000000;
  sub_10001CC10();
  sub_10074F614();
  v20 = 0;
  sub_10074F614();
  v20 = 0x4048000000000000;
  sub_10074F614();
  sub_10074F644();
  left = UIEdgeInsetsZero.left;
  LOBYTE(v20) = 0;
  sub_10074F614();
  v20 = 0;
  sub_10074F614();
  sub_10074F544();
  v20 = 0x3FF0000000000000;
  sub_10074F614();
  v20 = 0;
  sub_10074F614();
  v20 = 0x4048000000000000;
  sub_10074F614();
  sub_10074F644();
  LOBYTE(v20) = 0;
  sub_10074F614();
  v20 = 0;
  sub_10074F614();
  *&v16[4] = left;
  v16[5] = *&UIEdgeInsetsZero.top;
  sub_10074F544();
  v20 = 0x3FF0000000000000;
  sub_10074F614();
  v20 = 0;
  sub_10074F614();
  v20 = 0x4048000000000000;
  sub_10074F614();
  sub_10074F644();
  LOBYTE(v20) = 0;
  v16[2] = v2;
  sub_10074F614();
  v20 = 0;
  sub_10074F614();
  sub_10074F544();
  v20 = 0x4000000000000000;
  sub_10074F614();
  v20 = 0x4044000000000000;
  sub_10074F614();
  v20 = 0x4044000000000000;
  sub_10074F614();
  sub_10074F644();
  sub_1007535A4();
  LOBYTE(v20) = 0;
  sub_10074F614();
  v20 = 0;
  sub_10074F614();
  v16[1] = v10;
  sub_10074F544();
  v20 = 0x4000000000000000;
  sub_10074F614();
  v20 = 0x4044000000000000;
  sub_10074F614();
  v20 = 0x4044000000000000;
  sub_10074F614();
  sub_10074F644();
  LOBYTE(v20) = 0;
  sub_10074F614();
  v20 = 0;
  sub_10074F614();
  sub_10074F544();
  v20 = 0x4000000000000000;
  sub_10074F614();
  v20 = 0x4044000000000000;
  sub_10074F614();
  v20 = 0x4044000000000000;
  sub_10074F614();
  sub_10074F644();
  LOBYTE(v20) = 0;
  sub_10074F614();
  v20 = 0;
  sub_10074F614();
  result = sub_10074F544();
  qword_100980378 = v17;
  return result;
}

uint64_t sub_1004348E8@<X0>(uint64_t (*a1)(void)@<X1>, double *a2@<X8>)
{
  v4 = sub_10074F704();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100747B74();
  if (result)
  {
    if (a1())
    {
      if (qword_100921728 != -1)
      {
        swift_once();
      }

      v9 = sub_100750B04();
      v10 = sub_10000D0FC(v9, qword_1009820F8);
      *(a2 + 3) = v9;
      *(a2 + 4) = &protocol witness table for StaticDimension;
      v11 = sub_10000D134(a2);
      v12 = *(*(v9 - 8) + 16);

      return v12(v11, v10, v9);
    }

    else
    {
      sub_100747B84();
      sub_10074F5B4();
      v14 = v13;
      result = (*(v5 + 8))(v7, v4);
      *(a2 + 3) = &type metadata for CGFloat;
      *(a2 + 4) = &protocol witness table for CGFloat;
      *a2 = v14;
    }
  }

  else
  {
    *(a2 + 3) = &type metadata for Double;
    *(a2 + 4) = &protocol witness table for Double;
    *a2 = 0.0;
  }

  return result;
}

uint64_t sub_100434AF4@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100921718 != -1)
  {
    swift_once();
  }

  v2 = sub_100750B04();
  v3 = sub_10000D0FC(v2, qword_1009820C8);
  a1[3] = v2;
  a1[4] = &protocol witness table for StaticDimension;
  v4 = sub_10000D134(a1);
  v5 = *(*(v2 - 8) + 16);

  return v5(v4, v3, v2);
}

double sub_100434BB8@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a3;
  v8 = sub_1007469A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeparatorSupplementaryView(0);
  if (sub_1007539E4())
  {

    v12 = sub_1007539D4();
    v20[1] = v13;
    v20[2] = v12;
    v14 = swift_allocObject();
    v20[0] = a4;
    v15 = v14;
    swift_weakInit();
    (*(v9 + 16))(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v8);
    v16 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v21 = a1;
    v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    (*(v9 + 32))(v18 + v16, v11, v8);
    *(v18 + v17) = v20[0];
    *(a5 + 24) = sub_10000C518(&qword_100934200, &unk_1007C8920);
    *(a5 + 32) = sub_10036B194();
    sub_10000D134(a5);

    sub_10074D744();
  }

  else
  {
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

void *sub_100434DF4(uint64_t a1, uint64_t a2)
{
  v2 = sub_10055BE28(a1, a2);
  sub_1004A0098(v2, v3);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_100434E3C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100434E74()
{
  v1 = sub_1007469A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_100434F4C(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

char *sub_100434FE4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = *v4;
  v12 = swift_isaMask;
  v13 = qword_100980380;
  v14 = sub_1007469A4();
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v15 = qword_100980388;
  *&v5[v15] = (*(*((v12 & v11) + 0x58) + 72))(0.0, 0.0, 0.0, 0.0);
  v24.receiver = v5;
  v24.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v20 = v16;
  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v21 = [v20 contentView];
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v22 = [v20 contentView];
  [v22 addSubview:*&v20[qword_100980388]];

  return v20;
}

uint64_t sub_100435220@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_100980380;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_100435278(uint64_t a1)
{
  v3 = qword_100980380;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

id sub_100435338()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "layoutSubviews");
  v1 = *&v0[qword_100980388];
  [v0 bounds];
  return [v1 setFrame:?];
}

void sub_1004353A4(void *a1)
{
  v1 = a1;
  sub_100435338();
}

void sub_1004353EC(double a1, double a2)
{
  type metadata accessor for ScrollablePillView(0);
  swift_dynamicCastClass();
  sub_100750B24();
}

double sub_100435450(void *a1, double a2, double a3)
{
  v5 = a1;
  sub_1004353EC(a2, a3);
  v7 = v6;

  return v7;
}

uint64_t sub_1004354A4()
{
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = swift_isaMask;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, "prepareForReuse");
  return (*(*((v3 & v2) + 0x58) + 88))(*((v3 & v2) + 0x50));
}

void sub_100435548(void *a1)
{
  v1 = a1;
  sub_1004354A4();
}

id sub_100435590(void *a1)
{
  v1 = a1;
  v2 = sub_1004355D4();

  return v2;
}

uint64_t sub_1004357C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100747524();
  v4 = __chkstk_darwin(v3);
  (*(v6 + 104))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.bottom(_:), v4);
  sub_100747534();
  v7 = sub_100747564();
  return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
}

void sub_100435934(uint64_t a1)
{
  sub_100027FAC(a1 + qword_100980380);
  v2 = *(a1 + qword_100980388);
}

void sub_1004359C0()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = qword_100980380;
  v5 = sub_1007469A4();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = qword_100980388;
  *(v1 + v6) = (*(*((v3 & v2) + 0x58) + 72))(0.0, 0.0, 0.0, 0.0);
  sub_100754644();
  __break(1u);
}

id sub_100435ADC(uint64_t a1, __int16 a2, char a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v7 = HIBYTE(a2);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isReviewExpanded;
  v5[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isReviewExpanded] = a2 & 1;
  sub_1002F8264();
  v147 = OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isResponseExpanded;
  v5[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isResponseExpanded] = v7 & 1;
  sub_1002F8340();
  v9 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_titleLabel];
  v10 = [v9 text];
  if (v10)
  {
    v11 = v10;
    v12 = sub_100753094();
    v14 = v13;

    v15 = sub_10074F024();
    if (!v15)
    {
      if (!v14)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v15 = sub_10074F024();
    if (!v15)
    {
      goto LABEL_22;
    }

    v14 = 0;
    v12 = 0;
  }

  v16 = v15;
  v17 = sub_1007481C4();
  v19 = v18;

  if (!v14)
  {
    if (!v19)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if (!v19)
  {
LABEL_17:

LABEL_18:
    v22 = sub_10074F024();
    if (v22)
    {
      v23 = v22;
      v24 = sub_100748174();
    }

    else
    {
      v24 = 0;
    }

    [v9 setAttributedText:v24];

    goto LABEL_22;
  }

  if (v12 == v17 && v14 == v19)
  {

    goto LABEL_22;
  }

  v21 = sub_100754754();

  if ((v21 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_22:
  v25 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_dateLabel];
  v26 = [v25 text];
  if (!v26)
  {
    sub_10074F054();
LABEL_32:
    if (!v32)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  v27 = v26;
  v28 = sub_100753094();
  v30 = v29;

  v31 = sub_10074F054();
  if (!v30)
  {
    goto LABEL_32;
  }

  if (!v32)
  {
LABEL_33:

LABEL_34:
    sub_10074F054();
    if (v35)
    {
      v36 = sub_100753064();
    }

    else
    {
      v36 = 0;
    }

    [v25 setText:v36];

    goto LABEL_38;
  }

  if (v28 == v31 && v32 == v30)
  {

    goto LABEL_38;
  }

  v34 = sub_100754754();

  if ((v34 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_38:
  v37 = sub_10074F034();
  sub_1004FA340(v37);
  v38 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_authorLabel];
  v39 = [v38 text];
  if (v39)
  {
    v40 = v39;
    v41 = sub_100753094();
    v43 = v42;

    v44 = sub_10074EFF4();
    if (!v44)
    {
      if (!v43)
      {
        goto LABEL_56;
      }

      goto LABEL_51;
    }
  }

  else
  {
    v44 = sub_10074EFF4();
    if (!v44)
    {
      goto LABEL_56;
    }

    v43 = 0;
    v41 = 0;
  }

  v45 = v44;
  v46 = sub_1007481C4();
  v48 = v47;

  if (!v43)
  {
    if (!v48)
    {
      goto LABEL_56;
    }

    goto LABEL_51;
  }

  if (!v48)
  {
LABEL_51:

LABEL_52:
    v49 = sub_10074EFF4();
    if (v49)
    {
      v50 = v49;
      v51 = sub_100748174();
    }

    else
    {
      v51 = 0;
    }

    [v38 setAttributedText:v51];

    goto LABEL_56;
  }

  if (v41 == v46 && v43 == v48)
  {

    goto LABEL_56;
  }

  v85 = sub_100754754();

  if ((v85 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_56:
  v52 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_dateAuthorLabel];
  v53 = [v52 text];
  if (v53)
  {
    v54 = v53;
    v55 = sub_100753094();
    v57 = v56;

    v58 = sub_10074F004();
    if (!v58)
    {
      if (!v57)
      {
        goto LABEL_74;
      }

      goto LABEL_69;
    }
  }

  else
  {
    v58 = sub_10074F004();
    if (!v58)
    {
      goto LABEL_74;
    }

    v57 = 0;
    v55 = 0;
  }

  v59 = v58;
  v60 = sub_1007481C4();
  v62 = v61;

  if (!v57)
  {
    if (!v62)
    {
      goto LABEL_74;
    }

    goto LABEL_69;
  }

  if (!v62)
  {
LABEL_69:

LABEL_70:
    v63 = sub_10074F004();
    if (v63)
    {
      v64 = v63;
      v65 = sub_100748174();
    }

    else
    {
      v65 = 0;
    }

    [v52 setAttributedText:v65];

    goto LABEL_74;
  }

  if (v55 == v60 && v57 == v62)
  {

    goto LABEL_74;
  }

  v86 = sub_100754754();

  if ((v86 & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_74:
  v66 = sub_10074F044();
  if (!v66)
  {
    goto LABEL_109;
  }

  v67 = v66;
  v68 = sub_100748174();

  sub_100753864();
  v69 = sub_1007481E4();
  sub_100748184();
  v70 = objc_allocWithZone(v69);
  v71 = sub_1007481F4();
  v72 = *(*&v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_bodyLabel] + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_languageAwareString);
  if (v6[v8] != 1)
  {
    if (v72)
    {
      v78 = v72;
      v79 = sub_1007481C4();
      v81 = v80;

      v82 = sub_1007481C4();
      if (v81)
      {
        if (v79 == v82 && v81 == v83)
        {
          goto LABEL_97;
        }

        v84 = sub_100754754();

        if (v84)
        {
          goto LABEL_108;
        }

LABEL_100:
        v91 = v71;
        sub_1002616E0(v71);

LABEL_106:
        goto LABEL_109;
      }
    }

    else
    {
      sub_1007481C4();
    }

    goto LABEL_100;
  }

  if (v72)
  {
    v73 = v72;
    v74 = sub_1007481C4();
    v76 = v75;

    v77 = sub_10074F044();
    if (!v77)
    {
      if (v76)
      {
        goto LABEL_104;
      }

      goto LABEL_108;
    }

    v145 = v74;
  }

  else
  {
    v77 = sub_10074F044();
    if (!v77)
    {
      goto LABEL_108;
    }

    v76 = 0;
    v145 = 0;
  }

  v87 = v77;
  v88 = sub_1007481C4();
  v90 = v89;

  if (v76)
  {
    if (v90)
    {
      if (v145 == v88 && v76 == v90)
      {
LABEL_97:

        goto LABEL_109;
      }

      v92 = sub_100754754();

      if (v92)
      {
        goto LABEL_108;
      }

      goto LABEL_105;
    }

LABEL_104:

LABEL_105:
    v91 = sub_10074F044();
    sub_1002616E0(v91);

    goto LABEL_106;
  }

  if (v90)
  {
    goto LABEL_104;
  }

LABEL_108:

LABEL_109:
  if (!sub_10074F064())
  {
LABEL_118:
    v105 = v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_hasResponse];
    v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_hasResponse] = 0;
    sub_1002F8110(v105);
    [*&v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseDateLabel] setText:0];
    sub_10025FCF0(0, 0);
    goto LABEL_119;
  }

  v93 = sub_10074F744();
  if (!v93)
  {

    goto LABEL_118;
  }

  v94 = v93;
  v95 = sub_100748174();

  v96 = v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_hasResponse];
  v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_hasResponse] = 1;
  sub_1002F8110(v96);
  v97 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseDateLabel];
  v98 = [v97 text];
  if (!v98)
  {
    sub_10074F754();
LABEL_127:
    if (!v104)
    {
      goto LABEL_133;
    }

    goto LABEL_128;
  }

  v99 = v98;
  v100 = sub_100753094();
  v102 = v101;

  v103 = sub_10074F754();
  if (!v102)
  {
    goto LABEL_127;
  }

  if (!v104)
  {
LABEL_128:

LABEL_129:
    sub_10074F754();
    if (v118)
    {
      v119 = sub_100753064();
    }

    else
    {
      v119 = 0;
    }

    [v97 setText:v119];

    goto LABEL_133;
  }

  if (v100 == v103 && v104 == v102)
  {

    goto LABEL_133;
  }

  v141 = sub_100754754();

  if ((v141 & 1) == 0)
  {
    goto LABEL_129;
  }

LABEL_133:
  sub_100753864();
  v120 = sub_1007481E4();
  sub_100748184();
  v121 = objc_allocWithZone(v120);
  v122 = sub_1007481F4();
  v123 = *(*&v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_responseBodyLabel] + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_languageAwareString);
  if (v6[v147] != 1)
  {
    if (v123)
    {
      v130 = v123;
      v131 = sub_1007481C4();
      v133 = v132;

      v134 = sub_1007481C4();
      if (v133)
      {
        if (v131 == v134 && v133 == v135)
        {

          goto LABEL_119;
        }

        v142 = sub_100754754();

        if (v142)
        {
          goto LABEL_164;
        }

LABEL_151:
        v140 = v122;
        sub_1002616E0(v122);

        goto LABEL_119;
      }
    }

    else
    {
      sub_1007481C4();
    }

    goto LABEL_151;
  }

  if (v123)
  {
    v124 = v123;
    v125 = sub_1007481C4();
    v127 = v126;

    v128 = sub_10074F744();
    if (!v128)
    {
      if (v127)
      {
        goto LABEL_161;
      }

      goto LABEL_164;
    }

    v129 = v128;
    v148 = v95;
  }

  else
  {
    v136 = sub_10074F744();
    if (!v136)
    {
      goto LABEL_164;
    }

    v129 = v136;
    v148 = v95;
    v127 = 0;
    v125 = 0;
  }

  v137 = sub_1007481C4();
  v139 = v138;

  if (v127)
  {
    if (v139)
    {
      if (v125 == v137 && v127 == v139)
      {

        goto LABEL_119;
      }

      v144 = sub_100754754();

      v95 = v148;
      if (v144)
      {
        goto LABEL_164;
      }

LABEL_162:
      v143 = sub_10074F744();
      sub_1002616E0(v143);

      goto LABEL_119;
    }

    v95 = v148;
LABEL_161:

    goto LABEL_162;
  }

  v95 = v148;
  if (v139)
  {
    goto LABEL_161;
  }

LABEL_164:

LABEL_119:
  v106 = sub_10074EFE4();
  if (v106)
  {
    v107 = v106;
    v108 = [a4 traitCollection];
    v109 = [v108 horizontalSizeClass];

    if (v109 == 1)
    {
      v110 = swift_allocObject();
      *(v110 + 16) = a5;
      *(v110 + 24) = v107;
      v111 = &v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreReviewTapHandler];
      v112 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreReviewTapHandler];
      v113 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreReviewTapHandler + 8];
      *v111 = sub_1004380BC;
      v111[1] = v110;

      sub_1000164A8(v112, v113);
      v114 = &v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreResponseTapHandler];
      v115 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreResponseTapHandler];
      v116 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreResponseTapHandler + 8];
      *v114 = sub_1004380BC;
      v114[1] = v110;
      sub_1000164A8(v115, v116);
    }

    else
    {
    }
  }

  v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_isFlowPreviewingDestination] = a3 & 1;
  sub_1002F77C8();

  return [v6 setNeedsLayout];
}

uint64_t sub_100436780(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  sub_1007526C4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_100052F00(v6);
  }

  sub_1003C0E00(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

double sub_1004368B8(uint64_t a1, int a2, int a3, void *a4, double a5)
{
  v159 = a4;
  v152 = a3;
  v165 = a2;
  v6 = sub_10000C518(&unk_100938110, &unk_1007B9190);
  v161 = *(v6 - 8);
  v162 = v6;
  __chkstk_darwin(v6);
  v160 = v144 - v7;
  v8 = sub_10074B5F4();
  v153 = *(v8 - 8);
  v154 = v8;
  __chkstk_darwin(v8);
  v155 = v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074B614();
  v11 = *(v10 - 8);
  v157 = v10;
  v158 = v11;
  __chkstk_darwin(v10);
  v156 = v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100750BD4();
  v163 = *(v13 - 8);
  v164 = v13;
  __chkstk_darwin(v13);
  v171 = v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v181 = v144 - v16;
  __chkstk_darwin(v17);
  v182 = v144 - v18;
  __chkstk_darwin(v19);
  v183 = v144 - v20;
  __chkstk_darwin(v21);
  v184 = v144 - v22;
  __chkstk_darwin(v23);
  v180 = v144 - v24;
  __chkstk_darwin(v25);
  v185 = v144 - v26;
  __chkstk_darwin(v27);
  v174 = v144 - v28;
  v29 = sub_100750E94();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v150 = v144 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v151 = v144 - v33;
  __chkstk_darwin(v34);
  v36 = v144 - v35;
  __chkstk_darwin(v37);
  v179 = v144 - v38;
  __chkstk_darwin(v39);
  v147 = v144 - v40;
  __chkstk_darwin(v41);
  v148 = v144 - v42;
  __chkstk_darwin(v43);
  v170 = v144 - v44;
  __chkstk_darwin(v45);
  v145 = v144 - v46;
  __chkstk_darwin(v47);
  v146 = v144 - v48;
  __chkstk_darwin(v49);
  v176 = v144 - v50;
  __chkstk_darwin(v51);
  v177 = v144 - v52;
  __chkstk_darwin(v53);
  v178 = v144 - v54;
  __chkstk_darwin(v55);
  v186 = v144 - v56;
  __chkstk_darwin(v57);
  v59 = v144 - v58;
  __chkstk_darwin(v60);
  v169 = v144 - v61;
  __chkstk_darwin(v62);
  v64 = v144 - v63;
  __chkstk_darwin(v65);
  v67 = v144 - v66;
  __chkstk_darwin(v68);
  v70 = v144 - v69;
  __chkstk_darwin(v71);
  v175 = v144 - v72;
  v73 = sub_10074F064();
  if (v73)
  {
  }

  v166 = v73;
  v172 = v59;
  v188 = a1;
  v168 = v36;
  sub_100750E84();
  if (qword_100921108 != -1)
  {
    swift_once();
  }

  v189 = sub_100750534();
  sub_10000D0FC(v189, qword_100981050);
  sub_100750E54();
  v74 = v30;
  v76 = v30 + 8;
  v75 = *(v30 + 8);
  v75(v64, v29);
  v77 = v29;
  v78 = v165;
  v144[3] = ~v165;
  sub_100750E74();
  v75(v67, v77);
  v79 = (v78 & 1) == 0;
  v80 = v77;
  if (v79)
  {
    v81 = 4;
  }

  else
  {
    v81 = 0;
  }

  v144[2] = v81;
  sub_100750E64();
  v191 = v76;
  v75(v70, v77);
  v82 = sub_10074F024();
  if (v82)
  {
    v83 = v82;
    sub_1007481C4();
  }

  v173 = v75;
  v84 = *(v74 + 16);
  v187 = v74 + 16;
  v190 = v84;
  v84(v64, v175, v77);
  sub_100750BB4();
  sub_100750BF4();
  v149 = sub_100750F34();
  swift_allocObject();
  v167 = sub_100750EF4();
  v85 = v186;
  sub_100750E84();
  if (qword_100921120 != -1)
  {
    swift_once();
  }

  v86 = sub_10000D0FC(v189, qword_100981098);
  v87 = v172;
  v144[1] = v86;
  sub_100750E54();
  v88 = v173;
  v173(v85, v80);
  sub_100750E74();
  v88(v87, v80);
  v89 = v169;
  sub_100750E64();
  v88(v64, v80);
  sub_10074F054();
  v90 = v89;
  v91 = v190;
  v190(v64, v90, v80);
  sub_100750BB4();
  v92 = v186;
  sub_100750BF4();
  sub_100750E84();
  if (qword_100921128 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v189, qword_1009810B0);
  sub_100750E54();
  v88(v92, v80);
  sub_100750E74();
  v88(v87, v80);
  sub_100750E64();
  v88(v64, v80);
  v93 = sub_10074EFF4();
  if (v93)
  {
    v94 = v93;
    sub_1007481C4();

    v91 = v190;
  }

  v91(v64, v178, v80);
  sub_100750BB4();
  sub_100750BF4();
  v95 = v186;
  sub_100750E84();
  if (qword_100921130 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v189, qword_1009810C8);
  v96 = v172;
  sub_100750E54();
  v88(v95, v80);
  sub_100750E74();
  v88(v96, v80);
  sub_100750E64();
  v88(v64, v80);
  v97 = sub_10074F004();
  if (v97)
  {
    v98 = v97;
    sub_1007481C4();

    v190(v64, v177, v80);
  }

  else
  {
    v91(v64, v177, v80);
  }

  sub_100750BB4();
  sub_100750BF4();
  sub_100750E84();
  if (qword_100921118 != -1)
  {
    swift_once();
  }

  v99 = sub_10000D0FC(v189, qword_100981080);
  v100 = v145;
  v144[0] = v99;
  sub_100750E54();
  v88(v64, v80);
  v101 = v146;
  sub_100750E74();
  v88(v100, v80);
  sub_100750E64();
  v88(v101, v80);
  v102 = sub_10074F044();
  if (v102)
  {
    v103 = v102;
    sub_1007481C4();
  }

  v104 = v190;
  v190(v64, v176, v80);
  sub_100750BB4();
  sub_100750BF4();
  sub_100750E84();
  v105 = v189;
  if (qword_100921110 != -1)
  {
    v143 = v189;
    swift_once();
    v105 = v143;
  }

  sub_10000D0FC(v105, qword_100981068);
  v106 = v147;
  sub_100750E54();
  v107 = v173;
  v173(v64, v80);
  v108 = v148;
  sub_100750E74();
  v107(v106, v80);
  v109 = v170;
  sub_100750E64();
  v107(v108, v80);
  v201._object = 0x80000001007766B0;
  v201._countAndFlagsBits = 0xD000000000000012;
  v202._countAndFlagsBits = 0;
  v202._object = 0xE000000000000000;
  sub_1007458B4(v201, v202);
  v104(v64, v109, v80);
  sub_100750BB4();
  sub_100750BF4();
  v110 = v186;
  sub_100750E84();
  v111 = v172;
  sub_100750E54();
  v107(v110, v80);
  sub_100750E74();
  v107(v111, v80);
  sub_100750E64();
  v107(v64, v80);
  v112 = sub_10074F064();
  v113 = v171;
  if (v112)
  {
    sub_10074F754();
  }

  v190(v64, v179, v80);
  sub_100750BB4();
  sub_100750BF4();
  sub_100750E84();
  v114 = v150;
  sub_100750E54();
  v107(v64, v80);
  v115 = v151;
  sub_100750E74();
  v107(v114, v80);
  v116 = v168;
  sub_100750E64();
  v107(v115, v80);
  if (sub_10074F064())
  {
    v117 = sub_10074F744();

    if (v117)
    {
      sub_1007481C4();
    }
  }

  v190(v64, v116, v80);
  sub_100750BB4();
  sub_100750BF4();
  v118 = v113;
  if (qword_100920868 != -1)
  {
    swift_once();
  }

  v119 = v154;
  v120 = sub_10000D0FC(v154, qword_10097F818);
  (*(v153 + 16))(v155, v120, v119);
  v121 = v164;
  v200[3] = v164;
  v200[4] = &protocol witness table for LabelPlaceholder;
  v122 = sub_10000D134(v200);
  v123 = v163;
  v124 = *(v163 + 16);
  v124(v122, v174, v121);
  v199[3] = v121;
  v199[4] = &protocol witness table for LabelPlaceholder;
  v125 = sub_10000D134(v199);
  v124(v125, v185, v121);
  v198[3] = v121;
  v198[4] = &protocol witness table for LabelPlaceholder;
  v126 = sub_10000D134(v198);
  v124(v126, v180, v121);
  v197[3] = v121;
  v197[4] = &protocol witness table for LabelPlaceholder;
  v127 = sub_10000D134(v197);
  v124(v127, v184, v121);
  v196[3] = v121;
  v196[4] = &protocol witness table for LabelPlaceholder;
  v128 = sub_10000D134(v196);
  v124(v128, v183, v121);
  v195[3] = v121;
  v195[4] = &protocol witness table for LabelPlaceholder;
  v129 = sub_10000D134(v195);
  v124(v129, v182, v121);
  v194[3] = v121;
  v194[4] = &protocol witness table for LabelPlaceholder;
  v130 = sub_10000D134(v194);
  v124(v130, v181, v121);
  v193[3] = v121;
  v193[4] = &protocol witness table for LabelPlaceholder;
  v131 = sub_10000D134(v193);
  v124(v131, v118, v121);
  v192 = v167;
  sub_100750434();
  v132 = v156;
  sub_10074B604();
  v133 = [v159 traitCollection];
  sub_1002F8C3C(v134);
  v135 = v160;
  v136 = v157;
  sub_100750594();
  swift_getOpaqueTypeConformance2();
  v137 = v162;
  sub_100751254();
  v139 = v138;

  (*(v161 + 8))(v135, v137);
  (*(v158 + 8))(v132, v136);
  v140 = *(v123 + 8);
  v140(v171, v121);
  v141 = v173;
  v173(v168, v80);
  v140(v181, v121);
  v141(v179, v80);
  v140(v182, v121);
  v141(v170, v80);
  v140(v183, v121);
  v141(v176, v80);
  v140(v184, v121);
  v141(v177, v80);
  v140(v180, v121);
  v141(v178, v80);
  v140(v185, v121);
  v141(v169, v80);
  v140(v174, v121);
  v141(v175, v80);
  return v139;
}

double sub_100437CBC(void *a1)
{
  v2 = sub_100743B04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920880 != -1)
  {
    swift_once();
  }

  v6 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  sub_10000D0FC(v6, qword_10097F840);
  v31 = a1;
  sub_100743464();
  v7 = v32;
  v9 = [a1 traitCollection];
  if (qword_100920878 != -1)
  {
    swift_once();
  }

  v33.is_nil = qword_10097F838;
  v33.value._rawValue = 0;
  isa = sub_1007537C4(v33, v8).super.isa;
  v29 = isa;

  v30 = UIFontTextStyleCaption2;
  v11 = objc_opt_self();
  v12 = [v11 configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  v13 = v3;
  v14 = *(v3 + 104);
  v14(v5, enum case for SystemImage.star(_:), v2);
  v15 = [v12 configurationWithTraitCollection:isa];
  v16 = sub_100743AE4();

  v17 = *(v13 + 8);
  v17(v5, v2);
  [v16 contentInsets];
  v19 = v18;
  [v16 contentInsets];
  v21 = v19 + v20;
  [v16 size];
  v23 = v22 - v21;
  [v16 contentInsets];
  [v16 contentInsets];
  [v16 size];

  v24 = [v11 configurationWithTextStyle:v30 scale:1];
  v14(v5, enum case for SystemImage.starFill(_:), v2);
  v25 = v29;
  v26 = [v24 configurationWithTraitCollection:v29];
  v27 = sub_100743AE4();

  v17(v5, v2);
  sub_100753F34();
  [v27 contentInsets];

  return v7 * 4.0 + v23 * 5.0;
}

uint64_t sub_10043807C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1004380C4()
{
  v0 = sub_10000C518(&qword_1009381D8, qword_1007C1308);
  sub_100039C50(v0, qword_100938120);
  sub_10000D0FC(v0, qword_100938120);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  type metadata accessor for UIRectEdge(0);
  return sub_100743474();
}

void sub_100438168(void *a1, void *a2, char a3)
{
  v61 = a1;
  v62 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_100752AC4();
  v59 = *(v6 - 8);
  *&v60 = v6;
  __chkstk_darwin(v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&qword_100932560, qword_1007A7BB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v58 - v10;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissTapGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_transitioningViewProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_disableDismissGestures] = 0;
  v12 = &v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_interactiveDismissal];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissCompleted] = 0;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_scrollDismissInitialTranslationY] = 0;
  v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_isScrollDismissActive] = 0;
  v13 = [objc_opt_self() effectWithBlurRadius:50.0];
  v14 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v13];

  *&v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayBlurView] = v14;
  v15 = [objc_allocWithZone(UIView) init];
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayTintView] = v15;
  sub_100743034();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_shadowView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for TransitioningPresentedContainerView();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_presentedContainerView;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_presentedContainerView] = v16;
  v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_shouldUseReducedMotionTransition] = a3;
  v18 = sub_10074F3E4();
  *(&v66 + 1) = v18;
  v67 = sub_1002968B4();
  v19 = sub_10000D134(&v65);
  (*(*(v18 - 8) + 104))(v19, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v18);
  LOBYTE(v18) = sub_10074FC74();
  sub_10000C620(&v65);
  if ((v18 & 1) == 0)
  {
    [*&v3[v17] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  v64.receiver = v3;
  v64.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v64, "initWithPresentedViewController:presentingViewController:", v61, v62);
  v21 = objc_allocWithZone(UITapGestureRecognizer);
  v22 = v20;
  v23 = [v21 initWithTarget:v22 action:"dismissTapDidChange:"];
  v24 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissTapGestureRecognizer];
  *&v22[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissTapGestureRecognizer] = v23;
  v25 = v23;

  if (!v25)
  {
    __break(1u);
    goto LABEL_12;
  }

  v26 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayBlurView];
  [v26 addGestureRecognizer:v25];

  v27 = OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayTintView;
  [*&v22[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayTintView] setUserInteractionEnabled:0];
  v28 = *&v22[v27];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 blackColor];
  [v30 setBackgroundColor:v31];

  [*&v22[v27] setAlpha:0.0];
  v32 = [objc_allocWithZone(UIScreenEdgePanGestureRecognizer) initWithTarget:v22 action:"edgePanDidChange:"];
  v33 = OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer;
  v34 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
  *&v22[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer] = v32;
  v35 = v32;

  if (!v35)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  if (qword_100920C30 != -1)
  {
    swift_once();
  }

  v36 = sub_10000C518(&qword_1009381D8, qword_1007C1308);
  sub_10000D0FC(v36, qword_100938120);
  v63 = v22;
  v37 = v22;
  sub_100743464();

  [v35 setEdges:v65];
  if (!*&v22[v33])
  {
    goto LABEL_13;
  }

  v38 = OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_presentedContainerView;
  [*&v37[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_presentedContainerView] addGestureRecognizer:?];
  v39 = OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_shadowView;
  v40 = qword_100920470;
  v41 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_shadowView];
  if (v40 != -1)
  {
    swift_once();
  }

  v42 = sub_10074F0C4();
  v43 = sub_10000D0FC(v42, qword_10097E110);
  v44 = *(v42 - 8);
  (*(v44 + 16))(v11, v43, v42);
  (*(v44 + 56))(v11, 0, 1, v42);
  sub_100743014();

  v45 = [*&v37[v39] layer];
  [v45 setMaskedCorners:3];

  [*&v37[v39] _setContinuousCornerRadius:20.0];
  [*&v37[v39] setAutoresizingMask:18];
  v46 = *&v37[v39];
  sub_100742FF4();

  [*&v37[v38] setClipsToBounds:0];
  v47 = *&v37[v38];
  v48 = *&v37[v39];
  [v47 bounds];
  [v48 setFrame:?];

  [*&v37[v38] addSubview:*&v37[v39]];
  v49 = *&v37[v38];
  v65 = 0u;
  v66 = 0u;
  v50 = v49;
  sub_100752A84();
  sub_10000C8CC(&v65, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  (*(v59 + 8))(v8, v60);
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v51 = swift_allocObject();
  v60 = xmmword_1007A5A00;
  *(v51 + 16) = xmmword_1007A5A00;
  *(v51 + 32) = sub_100751544();
  *(v51 + 40) = &protocol witness table for UITraitLayoutDirection;
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  *(v53 + 16) = v52;
  *(v53 + 24) = ObjectType;
  v54 = v37;
  sub_100753A34();
  swift_unknownObjectRelease();

  v55 = swift_allocObject();
  *(v55 + 16) = v60;
  *(v55 + 32) = sub_1007516F4();
  *(v55 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = ObjectType;
  sub_100753A34();

  swift_unknownObjectRelease();
}

void sub_100438A2C(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong traitCollection];
    v7 = [v6 layoutDirection];

    if (v7 == [a2 layoutDirection])
    {
    }

    else
    {
      v8 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
      if (v8)
      {
        v9 = qword_100920C30;
        v10 = v8;
        if (v9 != -1)
        {
          swift_once();
        }

        v11 = sub_10000C518(&qword_1009381D8, qword_1007C1308);
        sub_10000D0FC(v11, qword_100938120);
        v12 = v5;
        sub_100743464();

        [v10 setEdges:v13];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_100438B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10043B9C0();
  }
}

void sub_100438BDC(char a1)
{
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_disableDismissGestures] == (a1 & 1))
  {
    return;
  }

  v2 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissTapGestureRecognizer];
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_disableDismissGestures])
  {
    if (v2)
    {
      [v2 setEnabled:0];
      v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
      if (v3)
      {
        [v3 setEnabled:0];
        v4 = &v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_interactiveDismissal];
        swift_beginAccess();
        if (*(v4 + 24))
        {
          sub_10000C824(v4, &v11);
          v5 = *(&v12 + 1);
          v6 = v13;
          sub_10000C888(&v11, *(&v12 + 1));
          (*(v6 + 32))(v5, v6);
          sub_10000C620(&v11);
        }

        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        swift_beginAccess();
        sub_10043B870(&v11, v4);
        swift_endAccess();
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v2)
  {
    goto LABEL_15;
  }

  [v2 setEnabled:1];
  v7 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
  if (!v7)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v10 = v7;
  v8 = [v1 traitCollection];
  v9 = [v8 horizontalSizeClass];

  [v10 setEnabled:v9 != 2];
}

void sub_100438E1C()
{
  v1 = sub_10074F6E4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v35 - v6;
  v8 = sub_10074F704();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v0 containerView];
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v37 = v9;
  v15 = [v0 traitCollection];
  v16 = [v15 horizontalSizeClass];

  if (v16 != 2)
  {
    [v14 bounds];

    return;
  }

  v36 = v8;
  (*(v2 + 104))(v7, enum case for PageGrid.Direction.vertical(_:), v1);
  v17 = [v0 presentingViewController];
  v18 = [v17 view];

  if (!v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  [v18 bounds];
  v20 = v19;
  v22 = v21;

  v23 = [v0 presentingViewController];
  v24 = [v23 view];

  if (!v24)
  {
LABEL_17:
    __break(1u);
    return;
  }

  [v24 safeAreaInsets];

  (*(v2 + 16))(v4, v7, v1);
  v25 = v36;
  if (qword_100920060 != -1)
  {
    swift_once();
  }

  sub_10074F6B4();
  (*(v2 + 8))(v7, v1);
  v26 = [v0 presentingViewController];
  v27 = [v26 traitCollection];

  sub_10074F5C4();
  v29 = v28;
  LOBYTE(v26) = sub_1007537E4();

  if (v26)
  {
    if (v29 + -160.0 <= 672.0)
    {
      v29 = v29 + -160.0;
    }

    else
    {
      v29 = 672.0;
    }

    if (v29 < 533.0)
    {
      v29 = 533.0;
    }
  }

  [v14 bounds];
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  v34 = CGRectGetMidX(v38) + v29 * -0.5;
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  CGRectGetMinY(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  CGRectGetHeight(v40);

  sub_10043BBC0(v34);
  (*(v37 + 8))(v12, v25);
}

void *sub_100439330()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      v2 = sub_1000B83FC();
      swift_unknownObjectRelease();

      return v2;
    }

    swift_unknownObjectRelease();
  }

  return _swiftEmptyArrayStorage;
}

void sub_1004393B4(void *a1, void *a2)
{
  v3 = v2;
  v18.receiver = v3;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v6 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissSwipeGestureRecognizer];
  if (v6)
  {
    v7 = v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_disableDismissGestures];
    v8 = v6;
    v9 = (v7 & 1) == 0 && [a1 horizontalSizeClass] != 2;
    [v8 setEnabled:v9];

    v10 = [v3 containerView];
    if (v10)
    {
      v11 = v10;
      v12 = swift_allocObject();
      v12[2] = v3;
      v12[3] = a1;
      v12[4] = v11;
      v17[4] = sub_10043BC88;
      v17[5] = v12;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 1107296256;
      v17[2] = sub_1003ED3AC;
      v17[3] = &unk_100875F30;
      v13 = _Block_copy(v17);
      v14 = v3;
      v15 = a1;
      v16 = v11;

      [a2 animateAlongsideTransition:v13 completion:0];
      _Block_release(v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100439558(int a1, char *a2, void *a3, void *a4)
{
  v7 = [a2 presentedViewController];
  v18 = [v7 view];

  if ([a3 horizontalSizeClass] == 2)
  {
    if (v18)
    {
      v8 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_shadowView];
      v9 = v18;
      [v8 _continuousCornerRadius];
      [v9 _setContinuousCornerRadius:?];
    }
  }

  else if (v18)
  {
    [v18 _setContinuousCornerRadius:0.0];
  }

  [a4 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [*&a2[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayBlurView] setFrame:?];
  [*&a2[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayTintView] setFrame:{v11, v13, v15, v17}];
}

void sub_100439744(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  *(*&v3[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_presentedContainerView] + OBJC_IVAR____TtC22SubscribePageExtension35TransitioningPresentedContainerView_hidesInsertedSubviews) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = sub_10043BC1C;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1003ED3AC;
  v10[3] = &unk_100875EE0;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

void sub_1004398F8()
{
  v1 = [v0 containerView];
  if (v1)
  {
    v10 = v1;
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayBlurView] setFrame:?];
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayTintView] setFrame:{v3, v5, v7, v9}];
    sub_100438E1C();
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_presentedContainerView] setFrame:?];
  }
}

void sub_100439A40()
{
  v1 = v0;
  v2 = [v0 containerView];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayBlurView];
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayBlurView] setFrame:?];
    v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayTintView];
    [v13 setFrame:{v5, v7, v9, v11}];
    [v3 addSubview:v13];
    [v3 addSubview:v12];
    v14 = [v1 presentedViewController];
    v15 = [v14 view];

    if (v15)
    {
      v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_presentedContainerView];
      [v16 bounds];
      [v15 setFrame:?];
      [v15 setAutoresizingMask:18];
      [v16 addSubview:v15];
    }

    v17 = v13;
    v18 = v12;
    v19 = [v1 presentedViewController];
    v20 = [v19 view];

    if (v20)
    {
      v21 = &v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_transitioningViewProvider];
      Strong = swift_unknownObjectWeakLoadStrong();
      v23 = *(v21 + 1);
      v24 = [v1 traitCollection];
      v25 = v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_shouldUseReducedMotionTransition];
      type metadata accessor for TodayTransitionCompanionAnimations();
      v26 = swift_allocObject();
      *(v26 + 88) = 0;
      swift_unknownObjectWeakInit();
      *(v26 + 104) = 0;
      *(v26 + 112) = 0;
      *(v26 + 32) = v17;
      *(v26 + 40) = v18;
      *(v26 + 56) = v20;
      if (Strong)
      {
        v27 = swift_unknownObjectWeakLoadStrong();
        if (v27)
        {
          v28 = v27;
          swift_unknownObjectRetain();
          v29 = sub_1000B83FC();
          swift_unknownObjectRelease();
        }

        else
        {
          v29 = _swiftEmptyArrayStorage;
        }

        *(v26 + 64) = v29;
        v31 = swift_unknownObjectWeakLoadStrong();
        if (v31)
        {
          v32 = v31;
          v33 = [v31 collectionView];
        }

        else
        {
          v33 = 0;
        }

        *(v26 + 48) = v33;
        swift_unknownObjectRetain();
        v34 = sub_100192D68();
        swift_unknownObjectRelease();
        *(v26 + 16) = v34;
        swift_unknownObjectRetain();
        v30 = sub_100192DEC();
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = 0;
        *(v26 + 64) = _swiftEmptyArrayStorage;
        *(v26 + 48) = 0;
        *(v26 + 16) = 0;
      }

      *(v26 + 24) = v30;
      *(v26 + 88) = v23;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      *(v26 + 96) = v24;
      *(v26 + 72) = v25;
      v35 = objc_opt_self();
      v36 = swift_allocObject();
      *(v36 + 16) = sub_10043BB74;
      *(v36 + 24) = v26;
      v46 = sub_1000C0C28;
      v47 = v36;
      v42 = _NSConcreteStackBlock;
      v43 = 1107296256;
      v44 = sub_10011B528;
      v45 = &unk_100875E40;
      v37 = _Block_copy(&v42);

      [v35 performWithoutAnimation:v37];
      _Block_release(v37);
      LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

      if ((v35 & 1) == 0)
      {
        v38 = [v1 presentedViewController];
        v39 = [v38 transitionCoordinator];

        if (v39)
        {
          v46 = sub_10043BB8C;
          v47 = v26;
          v42 = _NSConcreteStackBlock;
          v43 = 1107296256;
          v44 = sub_1003ED3AC;
          v45 = &unk_100875E68;
          v40 = _Block_copy(&v42);

          v46 = sub_10043BB90;
          v47 = v26;
          v42 = _NSConcreteStackBlock;
          v43 = 1107296256;
          v44 = sub_1003ED3AC;
          v45 = &unk_100875E90;
          v41 = _Block_copy(&v42);

          [v39 animateAlongsideTransition:v40 completion:v41];

          _Block_release(v41);
          _Block_release(v40);
          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_10043A050(char a1)
{
  if (a1)
  {
    v2 = [v1 presentedViewController];
    v3 = [v2 isViewLoaded];

    if (!v3)
    {
      return;
    }

    v4 = [v1 presentedViewController];
    v7 = [v4 contentScrollView];

    sub_10043BAA0(&selRef_removeTarget_action_, &selRef__removeScrollViewScrollObserver_);
    swift_unknownObjectWeakAssign();
    sub_10043BAA0(&selRef_addTarget_action_, &selRef__addScrollViewScrollObserver_);
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayBlurView] removeFromSuperview];
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayTintView] removeFromSuperview];
    v5 = [v1 presentedViewController];
    v7 = [v5 view];

    if (!v7)
    {
      return;
    }

    [v7 setClipsToBounds:0];
    v6 = [v7 layer];
    [v6 setMaskedCorners:15];

    [v7 _setContinuousCornerRadius:0.0];
  }
}

void sub_10043A268()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayBlurView];
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_overlayTintView];
  v4 = v2;
  v5 = [v1 presentedViewController];
  v6 = [v5 view];

  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = &v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_transitioningViewProvider];
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 1);
  v10 = [v1 traitCollection];
  v11 = v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_shouldUseReducedMotionTransition];
  type metadata accessor for TodayTransitionCompanionAnimations();
  v12 = swift_allocObject();
  *(v12 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 32) = v3;
  *(v12 + 40) = v4;
  *(v12 + 56) = v6;
  if (Strong)
  {
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      swift_unknownObjectRetain();
      v15 = sub_1000B83FC();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    *(v12 + 64) = v15;
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = [v17 collectionView];
    }

    else
    {
      v19 = 0;
    }

    *(v12 + 48) = v19;
    swift_unknownObjectRetain();
    v20 = sub_100192D68();
    swift_unknownObjectRelease();
    *(v12 + 16) = v20;
    swift_unknownObjectRetain();
    v16 = sub_100192DEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
    *(v12 + 64) = _swiftEmptyArrayStorage;
    *(v12 + 48) = 0;
    *(v12 + 16) = 0;
  }

  *(v12 + 24) = v16;
  *(v12 + 88) = v9;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v12 + 96) = v10;
  *(v12 + 72) = v11;
  v21 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_10043B928;
  *(v22 + 24) = v12;
  v34 = sub_100045E0C;
  v35 = v22;
  v30 = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_10011B528;
  v33 = &unk_100875D78;
  v23 = _Block_copy(&v30);

  [v21 performWithoutAnimation:v23];
  _Block_release(v23);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v24 = [v1 presentedViewController];
  v25 = [v24 transitionCoordinator];

  if (v25)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = v12;
    *(v26 + 24) = v1;
    v34 = sub_10043B988;
    v35 = v26;
    v30 = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_1003ED3AC;
    v33 = &unk_100875DC8;
    v27 = _Block_copy(&v30);

    v28 = v1;

    v34 = sub_10043B990;
    v35 = v12;
    v30 = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_1003ED3AC;
    v33 = &unk_100875DF0;
    v29 = _Block_copy(&v30);

    [v25 animateAlongsideTransition:v27 completion:v29];

    _Block_release(v29);
    _Block_release(v27);
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_10043A728(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 presentedViewController];
  [v3 setNeedsStatusBarAppearanceUpdate];
}

double sub_10043A794(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a3(a1);
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v6 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_100754574();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_13;
      }

LABEL_9:
      v9 = *(v7 + 48);
      if (v9)
      {
        v10 = *(v7 + 56);

        v9(v11);

        sub_1000164A8(v9, v10);
      }

      else
      {
      }

      ++v6;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v7 = *(v4 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return result;
}

void sub_10043AA20(void *a1)
{
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_presentedContainerView] frame];
  v3 = CGRectGetWidth(v30) * 0.28;
  [a1 translationInView:0];
  v5 = fabs(v4);
  if (v5 >= v3)
  {
    v5 = v3;
  }

  v6 = v5 / v3;
  v7 = [a1 state];
  if (v7 > 2)
  {
    if ((v7 - 4) >= 2)
    {
      if (v7 != 3)
      {
        return;
      }

      if (v6 == 1.0)
      {
LABEL_16:
        v11 = [v1 presentedViewController];
        [v11 dismissViewControllerAnimated:1 completion:0];

        v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissCompleted] = 1;
        return;
      }
    }

    goto LABEL_10;
  }

  switch(v7)
  {
    case 0:
LABEL_10:
      if (v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissCompleted])
      {
        return;
      }

      v8 = &v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v8 + 24))
      {
        sub_10000C824(v8, &v27);
        v9 = *(&v28 + 1);
        v10 = v29;
        sub_10000C888(&v27, *(&v28 + 1));
        (v10[4])(v9, v10);
        sub_10000C620(&v27);
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      swift_beginAccess();
      sub_10043B870(&v27, v8);
      goto LABEL_21;
    case 1:
      sub_10000C518(&unk_1009231A0, qword_1007A5810);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1007A7210;
      v13 = [v1 presentedViewController];
      v14 = [v13 view];

      if (!v14)
      {
        __break(1u);
        return;
      }

      v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_shadowView];
      *(v12 + 32) = v14;
      *(v12 + 40) = v15;
      v16 = v15;
      v17 = v1;
      v18 = sub_100439330();
      if (v18 >> 62)
      {
        sub_100009D34();
        v19 = sub_100754654();
      }

      else
      {

        sub_100754764();
        sub_100009D34();
        v19 = v18;
      }

      v20 = v17;
      v21 = [v17 traitCollection];
      *(&v28 + 1) = &type metadata for ScaleDownInteractiveDismissal;
      v29 = &off_1008674B0;
      v22 = swift_allocObject();
      *&v27 = v22;
      *(v22 + 16) = v12;
      *(v22 + 24) = v19;
      *(v22 + 32) = v21;
      *(v22 + 40) = 1;
      *(v22 + 48) = 0x3FEA3D70A3D70A3DLL;
      v23 = OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_interactiveDismissal;
      swift_beginAccess();
      sub_10043B870(&v27, v20 + v23);
LABEL_21:
      swift_endAccess();
      return;
    case 2:
      if (v6 == 1.0)
      {
        goto LABEL_16;
      }

      v24 = &v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v24 + 24))
      {
        sub_10000C824(v24, &v27);
        v25 = *(&v28 + 1);
        v26 = v29;
        sub_10000C888(&v27, *(&v28 + 1));
        (v26[2])(v25, v26, v6);
        sub_10000C620(&v27);
      }

      break;
  }
}

void sub_10043AE80(void *a1)
{
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_disableDismissGestures])
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v52 = Strong;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_isScrollDismissActive;
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_isScrollDismissActive] != 1)
  {
    if ([a1 state] != 1 && objc_msgSend(a1, "state") != 2)
    {
      goto LABEL_36;
    }

    [v52 contentOffset];
    v14 = v13;
    [v52 adjustedContentInset];
    if (v14 + v15 > 0.0)
    {
      goto LABEL_36;
    }

    [a1 velocityInView:v52];
    if (v16 <= 0.0)
    {
      goto LABEL_36;
    }

    [v52 adjustedContentInset];
    [v52 contentOffset];
    [v52 setContentOffset:?];
    v17 = [v1 traitCollection];
    v18 = [v17 horizontalSizeClass];

    if (v18 == 1)
    {
      sub_10000C518(&unk_1009231A0, qword_1007A5810);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1007A7210;
      v20 = [v1 presentedViewController];
      v21 = [v20 view];

      if (v21)
      {
        v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_shadowView];
        *(v19 + 32) = v21;
        *(v19 + 40) = v22;
        v23 = v22;
        v24 = sub_100439330();
        if (v24 >> 62)
        {
          sub_100009D34();
          v25 = sub_100754654();
        }

        else
        {

          sub_100754764();
          sub_100009D34();
          v25 = v24;
        }

        v26 = [v1 traitCollection];
        *(&v54 + 1) = &type metadata for ScaleDownInteractiveDismissal;
        v55 = &off_1008674B0;
        v27 = swift_allocObject();
        *&v53 = v27;
        *(v27 + 16) = v19;
        *(v27 + 24) = v25;
        *(v27 + 32) = v26;
        *(v27 + 40) = 1;
        *(v27 + 48) = 0x3FEA3D70A3D70A3DLL;
        v28 = OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_interactiveDismissal;
        swift_beginAccess();
        v29 = &v1[v28];
LABEL_43:
        sub_10043B870(&v53, v29);
        swift_endAccess();
        v45 = swift_unknownObjectWeakLoadStrong();
        if (v45)
        {
          v46 = v45;
          [v45 setShowsVerticalScrollIndicator:0];
        }

        [a1 translationInView:0];
        v48 = v47;

        *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_scrollDismissInitialTranslationY] = v48;
        v1[v4] = 1;
        return;
      }

      __break(1u);
    }

    else
    {
      sub_10000C518(&unk_1009231A0, qword_1007A5810);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1007A7210;
      v37 = [v1 presentedViewController];
      v38 = [v37 view];

      if (v38)
      {
        v39 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_shadowView];
        *(v36 + 32) = v38;
        *(v36 + 40) = v39;
        v40 = v39;
        v41 = v1;
        v42 = sub_100439330();
        if (v42 >> 62)
        {
          sub_100009D34();
          v43 = sub_100754654();
        }

        else
        {

          sub_100754764();
          sub_100009D34();
          v43 = v42;
        }

        *(&v54 + 1) = &type metadata for PullDownInteractiveDismissal;
        v55 = &off_1008674D8;
        *&v53 = v36;
        *(&v53 + 1) = v43;
        *&v54 = 0x3FB1EB851EB851ECLL;
        v44 = OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_interactiveDismissal;
        v1 = v41;
        swift_beginAccess();
        v29 = &v41[v44];
        goto LABEL_43;
      }
    }

    __break(1u);
    return;
  }

  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_presentedContainerView] frame];
  v5 = CGRectGetHeight(v57) * 0.18;
  [a1 translationInView:0];
  v7 = v6 - *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_scrollDismissInitialTranslationY];
  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6 - *&v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_scrollDismissInitialTranslationY];
  }

  v9 = 0.0;
  if (v5 <= 0.0)
  {
    v9 = v5;
  }

  if (v7 < 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10 / v5;
  v12 = [a1 state];
  if (v12 > 2)
  {
    if ((v12 - 4) >= 2)
    {
      if (v12 != 3)
      {
        goto LABEL_36;
      }

      if (v11 == 1.0)
      {
LABEL_35:
        v35 = [v1 presentedViewController];
        [v35 dismissViewControllerAnimated:1 completion:0];

        v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissCompleted] = 1;
        return;
      }
    }
  }

  else if (v12)
  {
    if (v12 == 2)
    {
      if (v11 == 1.0)
      {
        goto LABEL_35;
      }

      v49 = &v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v49 + 24))
      {
        sub_10000C824(v49, &v53);
        v50 = *(&v54 + 1);
        v51 = v55;
        sub_10000C888(&v53, *(&v54 + 1));
        (v51[2])(v50, v51, v11);

        sub_10000C620(&v53);
        return;
      }

LABEL_38:

      return;
    }

LABEL_36:

    goto LABEL_38;
  }

  if (v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_dismissCompleted])
  {
    goto LABEL_36;
  }

  v30 = &v1[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_interactiveDismissal];
  swift_beginAccess();
  if (*(v30 + 24))
  {
    sub_10000C824(v30, &v53);
    v31 = *(&v54 + 1);
    v32 = v55;
    sub_10000C888(&v53, *(&v54 + 1));
    (v32[4])(v31, v32);
    sub_10000C620(&v53);
  }

  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  swift_beginAccess();
  sub_10043B870(&v53, v30);
  swift_endAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v34 = v33;
    [v33 setShowsVerticalScrollIndicator:1];
  }

  v1[v4] = 0;
}

void sub_10043B6E0(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_disableDismissGestures);
    v4[OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_disableDismissGestures] = v2;
    sub_100438BDC(v5);
  }
}

uint64_t sub_10043B870(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_1009381D0, &qword_1007C1300);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10043B8E0()
{

  return _swift_deallocObject(v0, 56, 7);
}

double sub_10043B930(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10043B948()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10043B9C0()
{
  v1 = [v0 traitCollection];
  if ([v1 userInterfaceIdiom] == 1)
  {
    v2 = 32.0;
  }

  else
  {
    [v1 displayCornerRadius];
    v2 = v3;
  }

  v4 = [v0 presentedViewController];
  v5 = [v4 view];

  [v5 _setContinuousCornerRadius:v2];
}

void sub_10043BAA0(SEL *a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong panGestureRecognizer];

    [v7 *a1];
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 *a2];
  }
}

uint64_t sub_10043BBE4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10043BC40()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10043BC94()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10043BCCC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t *sub_10043BD54(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4 + *((swift_isaMask & *v4) + 0x60);
  v26 = *(a1 + 1);
  v27 = *(a1 + 24);
  v8 = *(a1 + 1);
  v25 = *(a1 + 2);
  v7 = v25;
  v9 = a1[6];
  v10 = *(a1 + 1);
  *v6 = *a1;
  *(v6 + 1) = v8;
  *(v6 + 2) = v7;
  *(v6 + 6) = v9;
  v20 = *a1;
  v21 = v10;
  v22 = *(a1 + 2);
  v23 = a1[6];
  v24 = v9;
  objc_allocWithZone(sub_10000C518(&qword_100938210, &qword_1007C1348));

  sub_1000C0664(&v25, v19);
  sub_100016B4C(&v26, v19, &qword_100938218, qword_1007C1350);
  sub_100016B4C(&v24, v19, &qword_1009273A0, &qword_1007AA9D0);
  *(v4 + *((swift_isaMask & *v4) + 0x68)) = sub_100751D54();
  v18.receiver = v4;
  v18.super_class = sub_10000C518(&qword_100938208, &qword_1007C1340);
  v11 = objc_msgSendSuper2(&v18, "initWithNibName:bundle:", 0, 0);
  v12 = [v11 navigationItem];
  if (a3)
  {
    v13 = sub_100753064();
  }

  else
  {
    v13 = 0;
  }

  [v12 setTitle:v13];

  v14 = [v11 navigationItem];
  sub_100016C60(0, &qword_100925250, UIBarButtonItem_ptr);
  isa = sub_100753294().super.isa;

  [v14 setRightBarButtonItems:isa];

  v16 = [v11 navigationItem];
  [v16 setLargeTitleDisplayMode:2];

  return v11;
}

void *sub_10043BFDC(uint64_t a1)
{
  v2 = sub_100741494();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074B3D4();
  sub_100752754();
  if (!v36)
  {
    return _swiftEmptyArrayStorage;
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  v6 = v36;

  sub_100752074();
  v30 = v36;
  v7 = v37;
  v33 = sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v8 = swift_allocObject();
  v32 = xmmword_1007A5CF0;
  *(v8 + 16) = xmmword_1007A5CF0;
  sub_100016C60(0, &qword_100925250, UIBarButtonItem_ptr);
  sub_100016C60(0, &qword_100929CC0, UIAction_ptr);
  swift_allocObject();
  v31 = v6;
  swift_weakInit();
  v41.value.super.super.isa = sub_100753FF4();
  v41.is_nil = 0;
  *(v8 + 32) = sub_100753634(UIBarButtonSystemItemTrash, v41, v42);
  *&v36 = v6;
  *(&v36 + 1) = sub_1000D3CDC;
  v37 = 0;
  v38 = 0;
  v39 = v30;
  v40 = v7;
  v9 = objc_allocWithZone(sub_10000C518(&qword_100938208, &qword_1007C1340));
  v10 = sub_10043BD54(&v36, 0x7363697274654DLL, 0xE700000000000000, v8);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  type metadata accessor for NavigationActionDebugSetting();
  v12 = swift_allocObject();
  v12[7] = 0xD000000000000013;
  v12[8] = 0x800000010077C720;
  v12[10] = 0;
  v12[11] = 0;
  v12[9] = 0;
  v12[12] = sub_10043CBD8;
  v12[13] = v11;

  *&v30 = v10;

  sub_100741484();
  v13 = sub_100741464();
  v15 = v14;
  v16 = *(v3 + 8);
  v29 = v2;
  v16(v5, v2);
  v34 = v13;
  v35 = v15;
  sub_1007544E4();

  type metadata accessor for BoolUserDefaultsDebugSetting();
  v17 = swift_allocObject();
  *(v17 + 56) = 0xD00000000000001ALL;
  *(v17 + 64) = 0x800000010077C740;
  *(v17 + 72) = 0;
  *(v17 + 80) = 0xD000000000000018;
  *(v17 + 88) = 0x800000010077C760;
  *(v17 + 96) = 0;
  sub_100741484();
  v18 = sub_100741464();
  v20 = v19;
  v16(v5, v2);
  v34 = v18;
  v35 = v20;
  sub_1007544E4();
  v21 = swift_allocObject();
  *(v21 + 16) = v32;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007A7210;
  *(v22 + 32) = v12;
  *(v22 + 40) = v17;
  type metadata accessor for DebugSection();
  v23 = swift_allocObject();
  sub_100741484();
  v24 = sub_100741464();
  v26 = v25;

  v16(v5, v29);
  v23[2] = v24;
  v23[3] = v26;
  v23[4] = 0;
  v23[5] = 0xE000000000000000;
  v23[6] = v22;
  *(v21 + 32) = v23;

  return v21;
}

double sub_10043C4A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10074B3B4();
  }

  return result;
}

uint64_t sub_10043C500(uint64_t a1, uint64_t a2, void *a3)
{
  v39 = a3;
  v4 = sub_100742CF4();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v42 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007493D4();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v36 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10074A304();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100752614();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10000C518(&qword_10092C1F0, &unk_1007A8F60);
  __chkstk_darwin(v10 - 8);
  v12 = v32 - v11;
  v13 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v13 - 8);
  v15 = v32 - v14;
  v16 = sub_10074F4D4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v20 - 8);
  v22 = v32 - v21;
  v23 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  v43 = a2;
  sub_1007526C4();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_100052F00(v22);
  }

  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v26 = *(v17 + 104);
  v32[2] = v19;
  v26(v19, enum case for FlowPage.viewController(_:), v16);
  v27 = sub_100741264();
  v28 = *(*(v27 - 8) + 56);
  v32[1] = v15;
  v28(v15, 1, 1, v27);
  v29 = sub_100743FE4();
  (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
  v45 = sub_10000C518(&qword_100938208, &qword_1007C1340);
  v44 = v39;
  v30 = v39;
  sub_1007525F4();
  (*(v33 + 104))(v34, enum case for FlowPresentationContext.push(_:), v35);
  (*(v37 + 104))(v36, enum case for FlowAnimationBehavior.infer(_:), v38);
  (*(v40 + 104))(v42, enum case for FlowOrigin.inapp(_:), v41);
  sub_100752B44();
  sub_100742CD4();
  swift_allocObject();
  v31 = sub_100742C84();
  sub_1003C1424(v31, 1, v43, v22);

  return (*(v24 + 8))(v22, v23);
}

id sub_10043CB00(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MetricsSettings();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10043CB58()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10043CB98()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10043CBF4()
{
  result = qword_100938220;
  if (!qword_100938220)
  {
    sub_100746354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100938220);
  }

  return result;
}

uint64_t sub_10043CC54(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v28 = a1;
  v30 = sub_100742CF4();
  v2 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1007493D4();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074A304();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100752614();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10000C518(&qword_10092C1F0, &unk_1007A8F60);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v15 - 8);
  v17 = &v26 - v16;
  v18 = sub_10074F4D4();
  __chkstk_darwin(v18);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  (*(v20 + 104))(&v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.shareSheet(_:));
  v21 = sub_100741264();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  v22 = sub_100743FE4();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v33 = sub_100746354();
  v32 = v28;

  sub_1007525F4();
  (*(v8 + 104))(v10, enum case for FlowPresentationContext.infer(_:), v7);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.infer(_:), v27);
  (*(v2 + 104))(v29, enum case for FlowOrigin.inapp(_:), v30);
  sub_100752B44();
  sub_100742CD4();
  swift_allocObject();
  v23 = sub_100742C84();
  v24 = sub_10052AD94(v23, 1, v31);

  return v24;
}

uint64_t sub_10043D124(void *a1)
{
  if (a1)
  {
    v2 = [a1 superview];
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 contentView];
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      sub_100016C60(0, &qword_100922300, UIView_ptr);
      v5 = sub_100753FC4();
    }

    else
    {
      v5 = 0;
    }

    v4 = v2;
  }

  else
  {
    if (!v3)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
  }

  return v5 & 1;
}

void sub_10043D1E8(void *a1)
{
  sub_10043E964();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];

    [v1 setNeedsLayout];
  }
}

void (*sub_10043D298(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10043D2EC;
}

void sub_10043D2EC(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_10043E964();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [v2 contentView];
      [v6 addSubview:v5];

      [v2 setNeedsLayout];
    }

    v9 = v3;
  }

  else
  {
    v9 = *a1;
    sub_10043E964();
    swift_unknownObjectWeakAssign();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_8;
    }

    v3 = v7;
    v8 = [v2 contentView];
    [v8 addSubview:v3];

    [v2 setNeedsLayout];
  }

LABEL_8:
}

char *sub_10043D414(double a1, double a2, double a3, double a4)
{
  v9 = sub_100752AC4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_itemLayoutContext;
  v14 = sub_1007469A4();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v4[OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_shouldForcePortrait] = 0;
  v15 = &v4[OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_artworkDisplaySize];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  sub_100747CD4();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView] = [objc_allocWithZone(type metadata accessor for BorderedScreenshotView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = type metadata accessor for ProductMediaItemCollectionViewCell(0);
  v30.receiver = v4;
  v30.super_class = v16;
  v17 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v18 = OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView;
  v19 = *&v17[OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v23 = v17;
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v24 = *(*&v17[v18] + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  v25 = v24;
  sub_100752A74();
  sub_10000C8CC(v28, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(v29, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  (*(v10 + 8))(v12, v9);
  v26 = [v23 contentView];
  [v26 addSubview:*&v17[v18]];

  return v23;
}

id sub_10043D818()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for ProductMediaItemCollectionViewCell(0);
  objc_msgSendSuper2(&v15, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView];
  v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
  v16.value.super.isa = 0;
  v16.is_nil = 0;
  sub_100743384(v16, v4);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + qword_10093CB50);

    v8 = [v7 layer];
    [v8 removeAllAnimations];

    [v7 setImage:0];
  }

  sub_10043E964();
  swift_unknownObjectWeakAssign();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = [v1 contentView];
    [v11 addSubview:v10];

    [v1 setNeedsLayout];
  }

  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_platform) = 0;

  v12 = sub_10028864C();
  v13 = &v1[OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_artworkDisplaySize];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  return [v1 setNeedsLayout];
}

void sub_10043DA0C()
{
  v1 = v0;
  v2 = sub_1007504F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProductMediaItemCollectionViewCell(0);
  v47.receiver = v1;
  v47.super_class = v6;
  objc_msgSendSuper2(&v47, "layoutSubviews");
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_artworkDisplaySize + 16])
  {
    v7 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView];
    v8 = [v1 contentView];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [v7 setFrame:{v10, v12, v14, v16}];
  }

  else
  {
    sub_100750504();
    v17 = [v1 contentView];
    [v17 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;

    sub_1007504C4();
    v24 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView];
    [v24 setFrame:{v19, v21, v23, v25}];
    v26 = [v1 contentView];
    [v26 bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v48.origin.x = v28;
    v48.origin.y = v30;
    v48.size.width = v32;
    v48.size.height = v34;
    MidX = CGRectGetMidX(v48);
    v49.origin.x = v28;
    v49.origin.y = v30;
    v49.size.width = v32;
    v49.size.height = v34;
    [v24 setCenter:{MidX, CGRectGetMidY(v49)}];
    (*(v3 + 8))(v5, v2);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v38 = [v1 contentView];
    [v38 bounds];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    [v37 setFrame:{v40, v42, v44, v46}];
  }
}

void sub_10043DD30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_shouldForcePortrait);
      v9 = a1;
      v10 = v9;
      if (v8 == 1 && ([v9 size], v12 = v11, objc_msgSend(v10, "size"), v13 < v12) && (v14 = objc_msgSend(v10, "CGImage")) != 0)
      {
        v15 = v14;
        [v10 scale];
        v17 = [objc_allocWithZone(UIImage) initWithCGImage:v15 scale:2 orientation:v16];

        v18 = v17;
      }

      else
      {
        v18 = v10;
      }

      v19 = *(*&v7[OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView] + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
      v20 = v18;
      v21 = v19;
      v23.value.super.isa = v18;
      v23.is_nil = 1;
      sub_1007432F4(v23, v22);
    }
  }
}

id sub_10043DEA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductMediaItemCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductMediaItemCollectionViewCell(uint64_t a1)
{
  result = qword_100938250;
  if (!qword_100938250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10043DFDC(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    sub_100747D94();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t (*sub_10043E0EC(uint64_t **a1))()
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
  v2[4] = sub_10043D298(v2);
  return sub_1000181A8;
}

uint64_t sub_10043E15C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10043E1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10043E21C(uint64_t *a1, uint64_t a2))()
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

uint64_t sub_10043E34C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10043E3DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v6 - 8);
  v8 = v25 - v7;
  v9 = sub_100747D94();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007504F4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C824(a1, v26);
  sub_10000C518(&unk_100923100, &unk_1007A5F30);
  sub_100746024();
  if (swift_dynamicCast())
  {
    v25[2] = v25[3];
    v17 = sub_100746014();
    if (v17)
    {
      v18 = v17;
      v25[1] = a2;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v20 = Strong;
        v25[0] = v18;
        v21 = qword_100982288;
        swift_beginAccess();
        (*(v10 + 16))(v12, &v20[v21], v9);
        sub_100747CE4();
        (*(v10 + 8))(v12, v9);
        if ((*(v14 + 48))(v8, 1, v13) != 1)
        {
          (*(v14 + 32))(v16, v8, v13);
          v23 = [v3 contentView];
          [v23 bounds];

          sub_100750464();
          sub_10074EC14();
          sub_10074F374();

          type metadata accessor for VideoView(0);
          sub_10043E34C(&unk_100923110, type metadata accessor for VideoView, &unk_1007BAFA8);
          sub_100744204();

          (*(v14 + 8))(v16, v13);
          return;
        }

        sub_10000C8CC(v8, &unk_1009281D0, qword_1007A82B0);
      }

      else
      {
      }
    }

    if (sub_100746004())
    {
      if ((*(v3 + OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_shouldForcePortrait) & 1) != 0 && (sub_10074F114() & 1) == 0)
      {
        v24 = [v3 contentView];
        [v24 bounds];

        v22 = [v3 contentView];
        [v22 bounds];
      }

      else
      {
        v22 = [v3 contentView];
        [v22 bounds];
      }

      sub_10074F374();
      v27 = 0;
      memset(v26, 0, sizeof(v26));
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_1007441F4();

      sub_10000C8CC(v26, &unk_1009276E0, &unk_1007A5C70);
    }
  }
}

void sub_10043E964()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_10043E34C(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
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

char *sub_10043EA34(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
  sub_1007433C4();
  sub_10043E34C(&qword_100926DB8, &type metadata accessor for ArtworkView, &protocol conformance descriptor for NSObject);
  v4 = v3;
  sub_1007544E4();
  sub_100744264();
  sub_100016994(v9);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *&result[qword_10093CB50];

    sub_100016C60(0, &qword_10092BFC0, UIImageView_ptr);
    sub_1003EB7E4();
    v8 = v7;
    sub_1007544E4();
    sub_100744264();

    return sub_100016994(v9);
  }

  return result;
}

uint64_t sub_10043EB94()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10043EC80()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_epicHeaderView;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_epicHeaderView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_epicHeaderView];
  }

  else
  {
    v4 = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = [v0 contentView];
    [v5 insertSubview:v4 aboveSubview:*&v0[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_mediaViewContainer]];

    v6 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

double sub_10043ED80()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitleView];
  v2 = [v1 text];
  if (!v2)
  {
    v9 = &v0[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitle + 8];
    v8 = *v9;
LABEL_11:
    if (!v8)
    {
      return result;
    }

LABEL_12:
    if (*v9)
    {
LABEL_13:

      v12 = sub_100753064();

LABEL_17:
      [v1 setText:v12];

      [v0 setNeedsLayout];
      return result;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  v4 = v2;
  v5 = sub_100753094();
  v7 = v6;

  v9 = &v0[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitle + 8];
  v8 = *v9;
  if (!v7)
  {
    goto LABEL_11;
  }

  if (!v8)
  {

    if (*v9)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if (v5 != *&v0[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitle] || v8 != v7)
  {
    v11 = sub_100754754();

    if (v11)
    {
      return result;
    }

    goto LABEL_12;
  }

  return result;
}

id sub_10043EF04()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v31 - v8;
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerText + 8])
  {
    v10 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerLabel;
    v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerLabel];
    v12 = &selRef_viewSafeAreaInsetsDidChange;
    if (v11)
    {
    }

    else
    {
      v14 = qword_100920FB8;

      if (v14 != -1)
      {
        swift_once();
      }

      v15 = sub_100750534();
      v16 = sub_10000D0FC(v15, qword_100980C60);
      v17 = *(v15 - 8);
      (*(v17 + 16))(v9, v16, v15);
      (*(v17 + 56))(v9, 0, 1, v15);
      (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
      v18 = objc_allocWithZone(sub_100745C84());
      v19 = sub_100745C74();
      v20 = sub_100753064();
      [v19 setText:v20];

      v21 = qword_10091FE48;
      v22 = v19;
      if (v21 != -1)
      {
        swift_once();
      }

      [v22 setTextColor:qword_10097CAE8];

      [v22 setTextAlignment:1];
      [v22 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
      v23 = v22;
      sub_10043F3AC(v22);
      v12 = &selRef_viewSafeAreaInsetsDidChange;
      v24 = [v1 contentView];
      [v24 addSubview:v23];

      v11 = *&v1[v10];
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v25 = [v11 layer];
    v26 = [v1 v12[482]];
    [v26 overrideUserInterfaceStyle];

    sub_100753094();
    v27 = sub_100753064();

    [v25 setCompositingFilter:v27];

    v28 = *&v1[v10];
    if (v28)
    {
      v29 = v28;
      v30 = sub_100753064();

      [v29 setText:v30];

      result = *&v1[v10];
      if (!result)
      {
        return result;
      }

      return [result setHidden:0];
    }

LABEL_17:

    result = *&v1[v10];
    if (!result)
    {
      return result;
    }

    return [result setHidden:0];
  }

  result = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerLabel];
  if (result)
  {

    return [result setHidden:{1, v7}];
  }

  return result;
}

void sub_10043F3AC(void *a1)
{
  v3 = sub_100752AC4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerLabel;
  v8 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerLabel);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerLabel) = a1;
  v13 = a1;

  v9 = *(v1 + v7);
  if (v9)
  {
    memset(v15, 0, sizeof(v15));
    memset(v14, 0, sizeof(v14));
    v10 = v9;
    sub_100752A74();
    sub_10000C8CC(v14, &unk_100923520, &qword_1007A5A70);
    sub_10000C8CC(v15, &unk_100923520, &qword_1007A5A70);
    sub_100753C74();

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v11 = v13;
  }
}

void (*sub_10043F554(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_mediaViewContainer);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
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
  return sub_10043F5F0;
}

void sub_10043F5F0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*(a1 + 8) + *(a1 + 16));
  if (a2)
  {
    if (v2)
    {
      sub_100441260(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
      v5 = v2;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_100016C60(0, &qword_100922300, UIView_ptr);
        v8 = v3;
        v9 = sub_100753FC4();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v15 = *&v3[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
    *&v3[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = v2;
    v16 = v2;
    sub_10057A514(v15);

    v17 = *a1;
  }

  else
  {
    if (v2)
    {
      sub_100441260(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
      v10 = v2;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        sub_100016C60(0, &qword_100922300, UIView_ptr);
        v13 = v3;
        v14 = sub_100753FC4();

        if (v14)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v19 = *&v3[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
    *&v3[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = v2;
    v18 = v2;
    sub_10057A514(v19);

    v17 = v19;
  }
}

char *sub_10043F838(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_100752AC4();
  v89 = *(v10 - 8);
  v90 = v10;
  __chkstk_darwin(v10);
  v88 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10074AB44();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v13 - 8);
  v15 = &v83 - v14;
  v16 = sub_1007441C4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000C518(&qword_10093F5C0, &qword_1007A9CD0);
  __chkstk_darwin(v20 - 8);
  v22 = &v83 - v21;
  v23 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_itemLayoutContext;
  v24 = sub_1007469A4();
  (*(*(v24 - 8) + 56))(&v5[v23], 1, 1, v24);
  v25 = &v5[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitle];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v5[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerText];
  *v26 = 0;
  *(v26 + 1) = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_video] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_epicHeadingArtwork] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_artwork] = 0;
  v27 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_headingView;
  v28 = enum case for Wordmark.arcade(_:);
  v29 = sub_10074F7B4();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v22, v28, v29);
  (*(v30 + 56))(v22, 0, 1, v29);
  (*(v17 + 104))(v19, enum case for WordmarkView.Alignment.leading(_:), v16);
  *(&v97 + 1) = &type metadata for Double;
  v98 = &protocol witness table for Double;
  *&v96 = 0x4028000000000000;
  v31 = objc_allocWithZone(sub_1007441E4());
  *&v5[v27] = sub_1007441B4();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_epicHeaderView] = 0;
  v32 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitleView;
  if (qword_100920FB0 != -1)
  {
    swift_once();
  }

  v33 = sub_100750534();
  v34 = sub_10000D0FC(v33, qword_100980C48);
  v35 = *(v33 - 8);
  (*(v35 + 16))(v15, v34, v33);
  (*(v35 + 56))(v15, 0, 1, v33);
  (*(v84 + 104))(v85, enum case for DirectionalTextAlignment.none(_:), v86);
  v36 = objc_allocWithZone(sub_100745C84());
  *&v5[v32] = sub_100745C74();
  v37 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_offerButton;
  v38 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v37] = sub_100154454(0);
  v39 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_artworkView;
  sub_1007433C4();
  *&v5[v39] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerLabel] = 0;
  v40 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_gradientView;
  *&v5[v40] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v41 = type metadata accessor for MediaView();
  v42 = objc_allocWithZone(v41);
  *&v42[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionView] = 0;
  *&v42[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionAmount] = 0;
  v42[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_isRubberbanding] = 0;
  *&v42[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v42[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionOffset] = 0;
  v43 = type metadata accessor for UberContentContainer();
  v44 = objc_allocWithZone(v43);
  *&v44[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = 0;
  *&v44[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY] = 0;
  v45 = &v44[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_prominentPlayButtonCenterYOverride];
  *v45 = 0;
  v45[8] = 1;
  v46 = &v44[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_systemBackgroundExtensionOutsets];
  *v46 = 0u;
  *(v46 + 1) = 0u;
  v46[32] = 1;
  *&v44[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_backgroundExtensionView] = 0;
  v95.receiver = v44;
  v95.super_class = v43;
  v47 = objc_msgSendSuper2(&v95, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v48 = v47;
  if (*&v47[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_backgroundExtensionView])
  {
    [v47 addSubview:?];
  }

  v49 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_mediaViewContainer;
  *&v42[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer] = v48;
  v94.receiver = v42;
  v94.super_class = v41;
  v50 = objc_msgSendSuper2(&v94, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v50 setClipsToBounds:1];
  [v50 addSubview:*&v50[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer]];

  *&v5[v49] = v50;
  v93.receiver = v5;
  v93.super_class = ObjectType;
  v51 = objc_msgSendSuper2(&v93, "initWithFrame:", a1, a2, a3, a4);
  v52 = [v51 contentView];
  [v52 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v53 = [v51 contentView];
  [v53 _setCornerRadius:20.0];

  v54 = [v51 contentView];
  [v54 setClipsToBounds:1];

  v55 = [v51 contentView];
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v56 = sub_100753E34();
  [v55 setBackgroundColor:v56];

  v57 = [v51 contentView];
  v58 = [v57 layer];

  [v58 setAllowsGroupBlending:0];
  v59 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_gradientView;
  v60 = *&v51[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_gradientView];
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1007A7210;
  v62 = objc_allocWithZone(UIColor);
  v63 = v60;
  *(v61 + 32) = [v62 initWithWhite:0.0 alpha:0.0];
  *(v61 + 40) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.15];
  *&v63[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = v61;

  sub_100037ED0();

  v64 = [v51 contentView];
  [v64 addSubview:*&v51[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_mediaViewContainer]];

  v65 = [v51 contentView];
  [v65 addSubview:*&v51[v59]];

  v66 = [v51 contentView];
  [v66 addSubview:*&v51[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_offerButton]];

  v67 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitleView;
  v68 = *&v51[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitleView];
  v69 = sub_100753DD4();
  [v68 setTextColor:v69];

  [*&v51[v67] setTextAlignment:1];
  [*&v51[v67] setHidden:1];
  v70 = [v51 contentView];
  [v70 addSubview:*&v51[v67]];

  v71 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_headingView;
  v72 = *&v51[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_headingView];
  v73 = sub_100753DD4();
  [v72 setTintColor:v73];

  v74 = *&v51[v71];
  v96 = 0u;
  v97 = 0u;
  v91 = 0u;
  v92 = 0u;
  v75 = v74;
  v76 = v88;
  sub_100752A74();
  sub_10000C8CC(&v91, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v96, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  v77 = v90;
  v78 = *(v89 + 8);
  v78(v76, v90);
  v79 = [v51 contentView];

  [v79 addSubview:*&v51[v71]];
  v80 = *&v51[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_artworkView];
  v96 = 0u;
  v97 = 0u;
  v91 = 0u;
  v92 = 0u;
  v81 = v80;
  sub_100752A74();
  sub_10000C8CC(&v91, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(&v96, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  v78(v76, v77);
  return v51;
}

uint64_t sub_100440490()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v38 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100747A14();
  __chkstk_darwin(v5 - 8);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100747A34();
  v42 = *(v8 - 8);
  v43 = v8;
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v41 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69.receiver = v1;
  v69.super_class = ObjectType;
  objc_msgSendSuper2(&v69, "layoutSubviews", v9);
  [v1 bounds];
  v37[1] = v7;
  sub_10043EBD4(v11, v12);
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_gradientView];
  v67 = type metadata accessor for GradientView();
  v68 = &protocol witness table for UIView;
  v66 = v13;
  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_mediaViewContainer];
  v64 = type metadata accessor for MediaView();
  v65 = &protocol witness table for UIView;
  v63 = v14;
  v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_headingView];
  v61 = sub_1007441E4();
  v62 = &protocol witness table for UIView;
  v60 = v15;
  v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_epicHeaderView];
  if (v16)
  {
    v17 = sub_1007433C4();
    v18 = &protocol witness table for UIView;
    v19 = v16;
  }

  else
  {
    v19 = 0;
    v17 = 0;
    v18 = 0;
    v56 = 0;
    v57 = 0;
  }

  v55 = v19;
  v58 = v17;
  v59 = v18;
  v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitleView];
  v21 = sub_100745C84();
  v53 = v21;
  v54 = &protocol witness table for UILabel;
  v52 = v20;
  v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_offerButton];
  v50 = type metadata accessor for OfferButton();
  v51 = &protocol witness table for UIView;
  v49 = v22;
  v23 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerLabel];
  if (v23)
  {
    v24 = &protocol witness table for UIView;
  }

  else
  {
    v21 = 0;
    v24 = 0;
    v45 = 0;
    v46 = 0;
  }

  v44 = v23;
  v47 = v21;
  v48 = v24;
  v25 = v16;
  v26 = v20;
  v27 = v22;
  v28 = v23;
  v13;
  v29 = v14;
  v30 = v15;
  v31 = v41;
  sub_100747A24();
  v32 = [v1 contentView];
  [v32 bounds];

  v33 = v38;
  sub_1007479E4();
  (*(v39 + 8))(v33, v40);
  sub_10000C518(&unk_10092F780, &qword_1007A6320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A6580;
  [v1 bounds];
  v35 = CGRectGetHeight(v70) + -88.0;
  [v1 bounds];
  *(inited + 32) = v35 / CGRectGetHeight(v71);
  *(inited + 40) = 0x3FF0000000000000;
  sub_100037D2C(inited);
  return (*(v42 + 8))(v31, v43);
}

id sub_10044090C()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "prepareForReuse");
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_artwork] = 0;

  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_artworkView];
  sub_100743344();

  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_mediaViewContainer];
  v4 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
  v5 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
  v6 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  *(v5 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) = 0;
  sub_10057A514(v6);

  sub_1005791C8();
  v7 = *(v3 + v4);
  v8 = *(v7 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  *(v7 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) = 0;
  sub_10057A514(v8);

  *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_video] = 0;

  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_epicHeaderView];
  if (v9)
  {
    v10 = v9;
    sub_100743344();
  }

  *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_epicHeadingArtwork] = 0;

  v11 = &v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitle];
  *v11 = 0;
  *(v11 + 1) = 0;

  v12 = sub_10043ED80();
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitleView];
  [v13 setHidden:{1, v12}];
  [v13 setText:0];
  v14 = &v1[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerText];
  *v14 = 0;
  *(v14 + 1) = 0;

  return sub_10043EF04();
}

uint64_t type metadata accessor for PosterLockupCollectionViewCell(uint64_t a1)
{
  result = qword_1009382B0;
  if (!qword_1009382B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100440D2C(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100440DF0()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_mediaViewContainer) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
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

void sub_100440E60(void *a1)
{
  sub_10057AF88(a1);
}

uint64_t (*sub_100440EB8(uint64_t **a1))()
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
  v2[4] = sub_10043F554(v2);
  return sub_1000181A8;
}

uint64_t sub_100440F28()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100441260(&qword_1009382D0, type metadata accessor for PosterLockupCollectionViewCell, &unk_1007C1650);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_100440F9C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100441260(&qword_1009382D0, type metadata accessor for PosterLockupCollectionViewCell, &unk_1007C1650);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_100441028(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_100441260(&qword_1009382D0, type metadata accessor for PosterLockupCollectionViewCell, &unk_1007C1650);
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_1004410E4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  v6 = v5;
  v7 = sub_100753FC4();

  return v7 & 1;
}

uint64_t sub_100441260(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1004412A8()
{
  v1 = v0;
  v43 = sub_10074AB44();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v3 - 8);
  v5 = &v41 - v4;
  v6 = sub_1007441C4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&qword_10093F5C0, &qword_1007A9CD0);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_itemLayoutContext;
  v14 = sub_1007469A4();
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitle);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerText);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_video) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_epicHeadingArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_artwork) = 0;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_headingView;
  v18 = enum case for Wordmark.arcade(_:);
  v19 = sub_10074F7B4();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v12, v18, v19);
  (*(v20 + 56))(v12, 0, 1, v19);
  (*(v7 + 104))(v9, enum case for WordmarkView.Alignment.leading(_:), v6);
  v47 = &type metadata for Double;
  v48 = &protocol witness table for Double;
  v46 = 0x4028000000000000;
  v21 = objc_allocWithZone(sub_1007441E4());
  *(v1 + v17) = sub_1007441B4();
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_epicHeaderView) = 0;
  v22 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitleView;
  if (qword_100920FB0 != -1)
  {
    swift_once();
  }

  v23 = sub_100750534();
  v24 = sub_10000D0FC(v23, qword_100980C48);
  v25 = *(v23 - 8);
  (*(v25 + 16))(v5, v24, v23);
  (*(v25 + 56))(v5, 0, 1, v23);
  (*(v41 + 104))(v42, enum case for DirectionalTextAlignment.none(_:), v43);
  v26 = objc_allocWithZone(sub_100745C84());
  *(v1 + v22) = sub_100745C74();
  v27 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_offerButton;
  v28 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v27) = sub_100154454(0);
  v29 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_artworkView;
  sub_1007433C4();
  *(v1 + v29) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerLabel) = 0;
  v30 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_gradientView;
  *(v1 + v30) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v31 = type metadata accessor for MediaView();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionView] = 0;
  *&v32[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionAmount] = 0;
  v32[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_isRubberbanding] = 0;
  *&v32[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v32[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionOffset] = 0;
  v33 = type metadata accessor for UberContentContainer();
  v34 = objc_allocWithZone(v33);
  *&v34[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = 0;
  *&v34[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY] = 0;
  v35 = &v34[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_prominentPlayButtonCenterYOverride];
  *v35 = 0;
  v35[8] = 1;
  v36 = &v34[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_systemBackgroundExtensionOutsets];
  *v36 = 0u;
  *(v36 + 1) = 0u;
  v36[32] = 1;
  *&v34[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_backgroundExtensionView] = 0;
  v45.receiver = v34;
  v45.super_class = v33;
  v37 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v38 = v37;
  if (*&v37[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_backgroundExtensionView])
  {
    [v37 addSubview:?];
  }

  v39 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_mediaViewContainer;
  *&v32[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer] = v38;
  v44.receiver = v32;
  v44.super_class = v31;
  v40 = objc_msgSendSuper2(&v44, "initWithFrame:", 0.0, 0.0, 0.0, 0.0, v41);
  [v40 setClipsToBounds:1];
  [v40 addSubview:*&v40[OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer]];

  *(v1 + v39) = v40;
  sub_100754644();
  __break(1u);
}

uint64_t sub_100441944()
{
  sub_10000C518(&unk_100939A90, qword_1007B3AA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A79C0;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNull) init];
  *(inited + 56) = 0x6E6564646968;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNull) init];
  *(inited + 80) = 0x49726564724F6E6FLL;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = [objc_allocWithZone(NSNull) init];
  *(inited + 104) = 0x4F726564724F6E6FLL;
  *(inited + 112) = 0xEA00000000007475;
  *(inited + 120) = [objc_allocWithZone(NSNull) init];
  *(inited + 128) = 0x726579616C627573;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = [objc_allocWithZone(NSNull) init];
  *(inited + 152) = 0x73746E65746E6F63;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = [objc_allocWithZone(NSNull) init];
  *(inited + 176) = 0x73646E756F62;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = [objc_allocWithZone(NSNull) init];
  v1 = sub_100413A3C(inited);
  swift_setDeallocating();
  sub_10000C518(&qword_10092E6D0, &unk_1007C3D30);
  result = swift_arrayDestroy();
  qword_1009382D8 = v1;
  return result;
}

void sub_100441B58(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007A7210;
  v8 = objc_opt_self();
  v9 = [v8 blackColor];
  v10 = [v9 colorWithAlphaComponent:a1];

  v11 = [v10 CGColor];
  *(v7 + 32) = v11;
  v12 = [v8 blackColor];
  v13 = [v12 colorWithAlphaComponent:a2];

  v14 = [v13 CGColor];
  *(v7 + 40) = v14;
  *a4 = v7;
}

char *sub_100441C94(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_gradient;
  *&v4[v9] = [objc_allocWithZone(CAGradientLayer) init];
  v4[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsTopGradient] = 1;
  v4[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsBottomGradient] = 1;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for HeroGradientView();
  v10 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v10;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v14 setUserInteractionEnabled:0];
  v15 = OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_gradient;
  [*&v14[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_gradient] setAnchorPoint:{0.0, 0.0}];
  v16 = qword_100920C38;
  v17 = *&v14[v15];
  if (v16 != -1)
  {
    swift_once();
  }

  sub_10000C518(&qword_100939AA0, qword_1007C4530);
  isa = sub_100752F34().super.isa;
  [v17 setActions:isa];

  v19 = [v14 layer];
  [v19 addSublayer:*&v14[v15]];

  sub_100441FD8();
  return v14;
}

id sub_100441FD8()
{
  if ((v0[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsTopGradient] & 1) != 0 || v0[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsBottomGradient] == 1)
  {
    v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_gradient];
    [v1 setHidden:0];
    [v0 bounds];
    sub_100442148(v2, v3);
    v5 = v4;
    sub_10014D2B8();

    isa = sub_100753294().super.isa;

    [v1 setLocations:isa];

    sub_1001578EC(v5);

    v7 = sub_100753294().super.isa;

    [v1 setColors:v7];

    v8 = "setNeedsDisplay";
    v9 = v1;
  }

  else
  {
    v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_gradient];
    v8 = "setHidden:";
  }

  return [v9 v8];
}

uint64_t sub_100442148(double a1, double a2)
{
  v3 = v2;
  v4 = 174.0 / a2;
  v5 = [objc_allocWithZone(NSNumber) initWithDouble:174.0 / a2];
  v6 = [objc_allocWithZone(NSNumber) initWithDouble:1.0 - v4];
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007A5CF0;
  sub_10014D2B8();
  *(v7 + 32) = sub_100753F94(0.0);
  v22 = v7;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsTopGradient;
  if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsTopGradient) == 1)
  {
    v9 = v5;
    sub_100753284();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
    if (qword_100920C40 != -1)
    {
      swift_once();
    }

    sub_1004A00E0(v10, v11);
    if ((*(v2 + OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsBottomGradient) & 1) == 0)
    {
      v12 = [objc_opt_self() blackColor];
      v13 = [v12 colorWithAlphaComponent:0.0];

      v14 = [v13 CGColor];
      sub_100753284();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();
    }
  }

  if (*(v3 + OBJC_IVAR____TtC22SubscribePageExtension16HeroGradientView_wantsBottomGradient) == 1)
  {
    v15 = v6;
    sub_100753284();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
    if ((*(v3 + v8) & 1) == 0)
    {
      v16 = [objc_opt_self() blackColor];
      v17 = [v16 colorWithAlphaComponent:0.0];

      v18 = [v17 CGColor];
      sub_100753284();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();
    }

    if (qword_100920C48 != -1)
    {
      swift_once();
    }

    sub_1004A00E0(v19, v20);
  }

  sub_100753F94(1.0);
  sub_100753284();
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();

  return v22;
}

id sub_10044258C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HeroGradientView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1004425F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v7 = sub_10000C518(&qword_100933090, &unk_1007B1B00);
  __chkstk_darwin(v7 - 8);
  v9 = &ObjectType - v8;
  v10 = sub_10000C518(&qword_100932470, &unk_1007A5A90);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &ObjectType - v12;
  if (a1)
  {
    v14 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_writeReviewButton];
    v15 = qword_100920CE0;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = qword_100980560;
    v17 = sub_10074ECB4();
    sub_1004928FC(v16, v17, v18, v19);

    v20 = sub_1007541F4();
    (*(*(v20 - 8) + 56))(v13, 0, 1, v20);
    sub_100754224();
    [v14 setHidden:{0, ObjectType}];
    v36 = a1;
    sub_10074ECD4();
    sub_100752764();
    sub_100442A94(v21);
    sub_100752684();

    v22 = sub_10000C518(&unk_100933080, &unk_1007B1AB0);
    (*(*(v22 - 8) + 56))(v9, 0, 1, v22);
    v23 = OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_writeReviewAction;
    swift_beginAccess();
    sub_100195594(v9, &v4[v23]);
    swift_endAccess();
  }

  else
  {
    [*&v3[OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_writeReviewButton] setHidden:{1, v11, ObjectType}];
  }

  if (a2)
  {
    v24 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_supportButton];
    v25 = qword_100920CE8;

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = qword_100980568;
    v27 = sub_10074ECB4();
    sub_1004928FC(v26, v27, v28, v29);

    v30 = sub_1007541F4();
    (*(*(v30 - 8) + 56))(v13, 0, 1, v30);
    sub_100754224();
    [v24 setHidden:0];
    v36 = a2;
    sub_10074ECD4();
    sub_100752764();
    sub_100442A94(v31);
    sub_100752684();

    v32 = sub_10000C518(&unk_100933080, &unk_1007B1AB0);
    (*(*(v32 - 8) + 56))(v9, 0, 1, v32);
    v33 = OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_supportAction;
    swift_beginAccess();
    sub_100195594(v9, &v4[v33]);
    swift_endAccess();
  }

  else
  {
    [*&v4[OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_supportButton] setHidden:1];
  }

  return [v4 setNeedsLayout];
}

unint64_t sub_100442A94(__n128 a1)
{
  result = qword_100928558;
  if (!qword_100928558)
  {
    sub_10074ECD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100928558);
  }

  return result;
}

void sub_100442AEC(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_10000C518(&qword_100932560, qword_1007A7BB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_dismissTapGestureRecognizer] = 0;
  v10 = &v3[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_interactiveDismissal];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_scrollDismissInitialTranslationY] = 0;
  v3[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_isScrollDismissActive] = 0;
  v11 = [objc_opt_self() effectWithStyle:4];
  v12 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];

  *&v3[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_overlayView] = v12;
  sub_100743034();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_shadowView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for TransitioningPresentedContainerView();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_presentedContainerView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31.receiver = v3;
  v31.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v31, "initWithPresentedViewController:presentingViewController:", a1, a2);
  v14 = objc_allocWithZone(UITapGestureRecognizer);
  v15 = v13;
  v16 = [v14 initWithTarget:v15 action:"dismissTapDidChange:"];
  v17 = *&v15[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_dismissTapGestureRecognizer];
  *&v15[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_dismissTapGestureRecognizer] = v16;
  v18 = v16;

  if (v18)
  {
    v19 = *&v15[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_overlayView];
    [v19 addGestureRecognizer:v18];

    v20 = OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_shadowView;
    v21 = qword_100920470;
    v22 = *&v15[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_shadowView];
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = sub_10074F0C4();
    v24 = sub_10000D0FC(v23, qword_10097E110);
    v25 = *(v23 - 8);
    (*(v25 + 16))(v9, v24, v23);
    (*(v25 + 56))(v9, 0, 1, v23);
    sub_100743014();

    v26 = [*&v15[v20] layer];
    [v26 setMaskedCorners:3];

    [*&v15[v20] _setContinuousCornerRadius:20.0];
    [*&v15[v20] setAutoresizingMask:18];
    v27 = *&v15[v20];
    sub_100742FF4();

    v28 = OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_presentedContainerView;
    [*&v15[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_presentedContainerView] setClipsToBounds:0];
    v29 = *&v15[v28];
    v30 = *&v15[v20];
    [v29 bounds];
    [v30 setFrame:?];

    [*&v15[v28] addSubview:*&v15[v20]];
  }

  else
  {
    __break(1u);
  }
}

void sub_100442F98()
{
  v1 = v0;
  v2 = sub_10074F6E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v54 - v7;
  v9 = sub_10074F704();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v1 containerView];
  if (!v14)
  {
    return;
  }

  v15 = v14;
  v57 = v10;
  v16 = [v1 traitCollection];
  v17 = [v16 horizontalSizeClass];

  if (v17 != 2)
  {
    v50 = [v1 presentingViewController];
    v51 = [v50 view];

    if (v51)
    {
      [v51 bounds];

      return;
    }

    goto LABEL_23;
  }

  v55 = v13;
  v56 = v9;
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2);
  v18 = [v1 presentingViewController];
  v19 = [v18 view];

  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v19 bounds];
  v21 = v20;
  v23 = v22;

  v24 = [v1 presentingViewController];
  v25 = [v24 view];

  if (!v25)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v54[1] = v21;
  v54[2] = v23;
  [v25 safeAreaInsets];

  (*(v3 + 16))(v5, v8, v2);
  v26 = v55;
  if (qword_1009207D8 != -1)
  {
    swift_once();
  }

  sub_10074F6B4();
  (*(v3 + 8))(v8, v2);
  v27 = [v1 presentingViewController];
  v28 = [v27 traitCollection];

  sub_10074F5C4();
  sub_1007537E4();

  [v15 safeAreaInsets];
  v31 = fmax(v30, 44.0);
  if (v29 < 0.0)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v29;
  }

  [v15 bounds];
  v58.origin.x = sub_10010FD98(v33, v34, v35, v36, v31, v32);
  CGRectGetHeight(v58);
  sub_100753AC4();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = [v1 presentedViewController];
  type metadata accessor for ComponentViewOverflowViewController();
  v46 = swift_dynamicCastClass();
  v47 = v57;
  if (v46)
  {
    sub_1005153A8(v42, v44);
    v49 = v48;
  }

  else
  {

    v52 = [v1 presentedViewController];
    type metadata accessor for ProductPageReviewsOverflowViewController(0);
    if (swift_dynamicCastClass())
    {
      v49 = sub_10065EF24();
    }

    else
    {

      v49 = v44;
    }
  }

  v53 = v56;
  v59.origin.x = v38;
  v59.origin.y = v40;
  v59.size.width = v42;
  v59.size.height = v44;
  if (CGRectGetHeight(v59) >= v49)
  {
    sub_100753AC4();
  }

  else
  {
    [v15 safeAreaInsets];

    sub_10010FD98(v38, v40, v42, v44, 0.0, 0.0);
  }

  (*(v47 + 8))(v26, v53);
}

void sub_10044364C(uint64_t a1, void *a2)
{
  v12.receiver = v2;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v5 = [v2 containerView];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = v6;
    v11[4] = sub_100445164;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1003ED3AC;
    v11[3] = &unk_100876180;
    v8 = _Block_copy(v11);
    v9 = v2;
    v10 = v6;

    [a2 animateAlongsideTransition:v8 completion:0];
    _Block_release(v8);
  }
}

void sub_100443784(int a1, char *a2, void *a3)
{
  v5 = [a2 presentedViewController];
  v10 = [v5 view];

  v6 = [a2 traitCollection];
  v7 = [v6 horizontalSizeClass];

  if (v7 == 2)
  {
    if (v10)
    {
      v8 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_shadowView];
      v9 = v10;
      [v8 _continuousCornerRadius];
      [v9 _setContinuousCornerRadius:?];
    }
  }

  else if (v10)
  {
    [v10 _setContinuousCornerRadius:0.0];
  }

  [a3 bounds];
  [*&a2[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_overlayView] setFrame:?];
}

void sub_100443948(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  *(*&v3[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_presentedContainerView] + OBJC_IVAR____TtC22SubscribePageExtension35TransitioningPresentedContainerView_hidesInsertedSubviews) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = sub_100445100;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1003ED3AC;
  v10[3] = &unk_100876130;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

void sub_100443AFC()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "containerViewWillLayoutSubviews");
  v2 = [v0 containerView];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_overlayView] setFrame:?];
    v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_presentedContainerView];
    sub_100442F98();
    [v4 setFrame:?];
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [v0 containerView];
    if (!v13)
    {
LABEL_12:

      return;
    }

    v14 = v13;
    v29.origin.x = 0.0;
    v29.origin.y = 0.0;
    v29.size.width = 0.0;
    v29.size.height = 0.0;
    v25.origin.x = v6;
    v25.origin.y = v8;
    v25.size.width = v10;
    v25.size.height = v12;
    if (CGRectEqualToRect(v25, v29) || ([v14 bounds], v30.origin.x = 0.0, v30.origin.y = 0.0, v30.size.width = 0.0, v30.size.height = 0.0, CGRectEqualToRect(v26, v30)))
    {
LABEL_11:

      v3 = v14;
      goto LABEL_12;
    }

    [v14 bounds];
    MaxY = CGRectGetMaxY(v27);
    [v14 safeAreaInsets];
    v17 = MaxY - v16;
    v28.origin.x = v6;
    v28.origin.y = v8;
    v28.size.width = v10;
    v28.size.height = v12;
    v18 = CGRectGetMaxY(v28);
    v19 = [v1 presentedViewController];
    v20 = [v19 view];

    if (v17 >= v18)
    {
      if (v20)
      {
        v21 = [v20 layer];
        v22 = 15;
        goto LABEL_10;
      }
    }

    else
    {
      if (v20)
      {
        v21 = [v20 layer];
        v22 = 3;
LABEL_10:
        v23 = v21;

        [v23 setMaskedCorners:v22];
        v3 = v14;
        v14 = v23;
        goto LABEL_11;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_100443DB0()
{
  v1 = [v0 containerView];
  if (v1)
  {
    v17 = v1;
    [v1 bounds];
    v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_overlayView];
    [v2 setFrame:?];
    [v17 addSubview:v2];
    v3 = [v0 presentedViewController];
    v4 = [v3 view];

    if (v4)
    {
      [v4 setClipsToBounds:1];
      [v4 setAutoresizingMask:18];
      v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_presentedContainerView];
      [v5 bounds];
      [v4 setFrame:?];
      v6 = [v4 layer];
      v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_shadowView];
      v8 = [v7 layer];
      v9 = [v8 maskedCorners];

      [v6 setMaskedCorners:v9];
      [v7 _cornerRadius];
      [v4 _setCornerRadius:?];
      [v5 addSubview:v4];
      v10 = [v0 presentedViewController];
      v11 = [v10 contentScrollView];

      sub_10044502C(&selRef_removeTarget_action_, &selRef__removeScrollViewScrollObserver_);
      swift_unknownObjectWeakAssign();
      sub_10044502C(&selRef_addTarget_action_, &selRef__addScrollViewScrollObserver_);
    }

    v12 = [v0 presentedViewController];
    v13 = [v12 transitionCoordinator];

    [v2 setAlpha:0.0];
    if (v13)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v0;
      aBlock[4] = sub_100445024;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003ED3AC;
      aBlock[3] = &unk_1008760E0;
      v15 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v16 = v0;

      [v13 animateAlongsideTransition:v15 completion:0];

      swift_unknownObjectRelease();
      _Block_release(v15);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_100444138(uint64_t a1, char *a2)
{
  [*&a2[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_overlayView] setAlpha:1.0];
  v3 = [a2 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 1)
  {
    v5 = [a2 presentedViewController];
    v6 = [v5 view];

    if (v6)
    {
      [v6 _setCornerRadius:0.0];
    }
  }
}

void sub_100444280(char a1)
{
  if ((a1 & 1) == 0)
  {
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_overlayView] removeFromSuperview];
    v2 = [v1 presentedViewController];
    v4 = [v2 view];

    if (v4)
    {
      [v4 setClipsToBounds:0];
      v3 = [v4 layer];
      [v3 setMaskedCorners:15];

      [v4 _setCornerRadius:0.0];
    }
  }
}

double sub_1004443D0()
{
  v1 = [v0 presentedViewController];
  v2 = [v1 transitionCoordinator];

  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v7[4] = sub_100445004;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_1003ED3AC;
    v7[3] = &unk_100876090;
    v5 = _Block_copy(v7);
    swift_unknownObjectRetain();
    v6 = v0;

    [v2 animateAlongsideTransition:v5 completion:0];
    swift_unknownObjectRelease();
    _Block_release(v5);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1004444FC(uint64_t a1, char *a2)
{
  [*&a2[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_overlayView] setAlpha:0.0];
  v3 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_shadowView];
  [v3 setAlpha:0.0];
  v4 = [a2 presentedViewController];
  v5 = [v4 view];

  if (v5)
  {
    [v3 _cornerRadius];
    [v5 _setCornerRadius:?];
  }

  v6 = [a2 presentedViewController];
  v7 = [v6 view];

  if (v7)
  {
    v8 = [v7 layer];

    [v8 setMaskedCorners:15];
  }

  v9 = [a2 presentedViewController];
  [v9 setNeedsStatusBarAppearanceUpdate];
}

uint64_t sub_1004446D8()
{
  v6 = [v0 presentedViewController];
  sub_100032B70();
  sub_10000C518(&qword_1009383A0, &qword_1007C1760);
  if (swift_dynamicCast())
  {
    sub_100012160(v4, v7);
    v1 = v8;
    v2 = v9;
    sub_10000C888(v7, v8);
    (*(v2 + 8))(v1, v2);
    return sub_10000C620(v7);
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    return sub_10000C8CC(v4, &qword_1009383A8, qword_1007C1768);
  }
}

uint64_t sub_1004447C8()
{
  v6 = [v0 presentedViewController];
  sub_100032B70();
  sub_10000C518(&qword_1009383A0, &qword_1007C1760);
  if (swift_dynamicCast())
  {
    sub_100012160(v4, v7);
    v1 = v8;
    v2 = v9;
    sub_10000C888(v7, v8);
    (*(v2 + 16))(v1, v2);
    return sub_10000C620(v7);
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    return sub_10000C8CC(v4, &qword_1009383A8, qword_1007C1768);
  }
}

void sub_100444954(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    v4 = OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_isScrollDismissActive;
    if (v1[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_isScrollDismissActive] == 1)
    {
      [*&v1[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_presentedContainerView] frame];
      v5 = CGRectGetHeight(v38) * 0.14;
      [a1 translationInView:0];
      v7 = v6 - *&v1[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_scrollDismissInitialTranslationY];
      if (v7 >= v5)
      {
        v8 = v5;
      }

      else
      {
        v8 = v6 - *&v1[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_scrollDismissInitialTranslationY];
      }

      v9 = 0.0;
      if (v5 <= 0.0)
      {
        v9 = v5;
      }

      if (v7 < 0.0)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      v11 = v10 / v5;
      v12 = [a1 state];
      if (v12 > 2)
      {
        if ((v12 - 4) >= 2)
        {
          if (v12 != 3)
          {
            goto LABEL_27;
          }

          if (v11 == 1.0)
          {
            v32 = [v1 presentedViewController];
            [v32 dismissViewControllerAnimated:1 completion:0];

            goto LABEL_27;
          }
        }
      }

      else if (v12)
      {
        if (v12 == 2)
        {
          v13 = &v1[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_interactiveDismissal];
          swift_beginAccess();
          if (*(v13 + 24))
          {
            sub_10000C824(v13, &v34);
            v14 = *(&v35 + 1);
            v15 = v36;
            sub_10000C888(&v34, *(&v35 + 1));
            (v15[2])(v14, v15, v11);

            sub_10000C620(&v34);
            return;
          }

          goto LABEL_29;
        }

LABEL_27:

LABEL_29:

        return;
      }

      v29 = &v1[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v29 + 24))
      {
        sub_10000C824(v29, &v34);
        v30 = *(&v35 + 1);
        v31 = v36;
        sub_10000C888(&v34, *(&v35 + 1));
        (v31[4])(v30, v31);

        sub_10000C620(&v34);
      }

      else
      {
      }

      v36 = 0;
      v34 = 0u;
      v35 = 0u;
      swift_beginAccess();
      sub_10043B870(&v34, v29);
      swift_endAccess();
      v1[v4] = 0;
    }

    else
    {
      if ([a1 state] != 1)
      {
        goto LABEL_27;
      }

      v16 = [v1 traitCollection];
      v17 = [v16 horizontalSizeClass];

      if (v17 != 2)
      {
        goto LABEL_27;
      }

      [v33 contentOffset];
      v19 = v18;
      [v33 adjustedContentInset];
      if (v19 + v20 > 0.0)
      {
        goto LABEL_27;
      }

      [v33 adjustedContentInset];
      [v33 contentOffset];
      [v33 setContentOffset:?];
      sub_10000C518(&unk_1009231A0, qword_1007A5810);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1007A7210;
      v22 = [v1 presentedViewController];
      v23 = [v22 view];

      if (v23)
      {
        v24 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_shadowView];
        *(v21 + 32) = v23;
        *(v21 + 40) = v24;
        v36 = &off_1008674D8;
        *&v34 = v21;
        *(&v34 + 1) = _swiftEmptyArrayStorage;
        *&v35 = 0x3FB1EB851EB851ECLL;
        *(&v35 + 1) = &type metadata for PullDownInteractiveDismissal;
        v25 = OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_interactiveDismissal;
        swift_beginAccess();
        v26 = v24;
        sub_10043B870(&v34, &v1[v25]);
        swift_endAccess();
        [a1 translationInView:0];
        v28 = v27;

        *&v1[OBJC_IVAR____TtC22SubscribePageExtension43ComponentViewOverflowPresentationController_scrollDismissInitialTranslationY] = v28;
        v1[v4] = 1;
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_100444FCC()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10044500C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_10044502C(SEL *a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong panGestureRecognizer];

    [v7 *a1];
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 *a2];
  }
}

uint64_t sub_100445124()
{

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_10044518C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_100750534();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension24SearchResultsMessageView_primaryLabel;
  if (qword_100921360 != -1)
  {
    swift_once();
  }

  v15 = sub_10000D0FC(v10, qword_100981758);
  v16 = *(v11 + 16);
  v16(v13, v15, v10);
  v17 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v18 = objc_allocWithZone(v17);
  *&v4[v14] = sub_10004DA8C(v13, 0, 0, 0);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension24SearchResultsMessageView_secondaryLabel;
  if (qword_100921368 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v10, qword_100981770);
  v16(v13, v20, v10);
  v21 = objc_allocWithZone(v17);
  *&v4[v19] = sub_10004DA8C(v13, 0, 0, 0);
  v35.receiver = v4;
  v35.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v27 = OBJC_IVAR____TtC22SubscribePageExtension24SearchResultsMessageView_primaryLabel;
  v28 = *&v26[OBJC_IVAR____TtC22SubscribePageExtension24SearchResultsMessageView_primaryLabel];
  sub_10000D198();
  v29 = v28;
  v30 = sub_100753DF4();
  [v29 setTextColor:v30];

  [v26 addSubview:*&v26[v27]];
  v31 = OBJC_IVAR____TtC22SubscribePageExtension24SearchResultsMessageView_secondaryLabel;
  v32 = *&v26[OBJC_IVAR____TtC22SubscribePageExtension24SearchResultsMessageView_secondaryLabel];
  v33 = sub_100753DF4();
  [v32 setTextColor:v33];

  [v26 addSubview:*&v26[v31]];
  return v26;
}

uint64_t sub_1004454D4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "layoutSubviews", v5);
  v8 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24SearchResultsMessageView_primaryLabel];
  v15 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v16 = &protocol witness table for UILabel;
  v13[4] = &protocol witness table for UILabel;
  v14[0] = v8;
  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24SearchResultsMessageView_secondaryLabel];
  v13[3] = v15;
  v13[0] = v9;
  v10 = v8;
  v11 = v9;
  sub_100445664(v14, v13, v17);
  sub_10000C620(v13);
  sub_10000C620(v14);
  sub_10000C888(v17, v17[3]);
  sub_1007477B4();
  sub_100751124();
  (*(v4 + 8))(v7, v3);
  return sub_10000C620(v17);
}

double sub_100445664@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v91 = a2;
  v94 = a3;
  v90 = sub_100748884();
  v5 = *(v90 - 8);
  __chkstk_darwin(v90);
  v103 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_100750304();
  v114 = *(v111 - 8);
  __chkstk_darwin(v111);
  v102 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007488A4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007488C4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_10092C0B8, &unk_1007B0A80);
  v16 = *(sub_1007488D4() - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v92 = *(v16 + 72);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1007A5620;
  v93 = v18;
  v107 = v18 + v17;
  v20 = a1[3];
  v19 = a1[4];
  v21 = sub_10000C888(a1, v20);
  v123 = v20;
  v22 = *(v19 + 8);
  v23 = v13;
  v24 = v15;
  v124 = v22;
  v25 = sub_10000D134(&v122);
  (*(*(v20 - 8) + 16))(v25, v21, v20);
  v26 = *(v23 + 104);
  v110 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v112 = v12;
  v109 = v23 + 104;
  v108 = v26;
  v26(v15);
  v113 = v9;
  v27 = v9 + 104;
  v28 = *(v9 + 104);
  v29 = v11;
  v106 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v89 = v8;
  v105 = v27;
  v104 = v28;
  v28(v11);
  if (qword_100921360 != -1)
  {
    swift_once();
  }

  v30 = sub_100750534();
  v31 = sub_10000D0FC(v30, qword_100981758);
  v32 = *(v30 - 8);
  v33 = v102;
  v87 = *(v32 + 16);
  v86 = v32 + 16;
  v87(v102, v31, v30);
  v34 = v114;
  v35 = *(v114 + 104);
  v85 = enum case for FontSource.useCase(_:);
  v36 = v111;
  v84 = v114 + 104;
  v83 = v35;
  v35(v33);
  v82 = sub_100750B04();
  v120 = v82;
  v121 = &protocol witness table for StaticDimension;
  sub_10000D134(&v119);
  *(&v117 + 1) = v36;
  v118 = &protocol witness table for FontSource;
  v37 = sub_10000D134(&v116);
  v38 = *(v34 + 16);
  v81 = v34 + 16;
  v80 = v38;
  v38(v37, v33, v36);
  sub_100750B14();
  v39 = *(v34 + 8);
  v114 = v34 + 8;
  v79 = v39;
  v39(v33, v36);
  v118 = 0;
  v116 = 0u;
  v117 = 0u;
  v40 = sub_10000C518(&unk_100931370, &unk_1007B2560);
  v41 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v42 = v41 + *(v5 + 72);
  v76 = *(v5 + 80);
  v77 = v40;
  v75 = v42;
  v43 = swift_allocObject();
  v74 = xmmword_1007A5A00;
  *(v43 + 16) = xmmword_1007A5A00;
  v78 = v41;
  sub_100748864();
  v115 = v43;
  v44 = sub_1001C5D68(&qword_10092C0C0, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for _VerticalFlowLayout.ExclusionCondition);
  v45 = sub_10000C518(&unk_100931380, &unk_1007B0A90);
  v46 = sub_1001C4F00();
  v47 = v103;
  v99 = v45;
  v97 = v46;
  v48 = v90;
  v101 = v44;
  sub_1007543A4();
  sub_1007488B4();
  v49 = *(v5 + 8);
  v95 = v5 + 8;
  v100 = v49;
  v49(v47, v48);
  sub_1000F4268(&v116);
  v50 = v113 + 8;
  v51 = v89;
  v98 = *(v113 + 8);
  v98(v29, v89);
  v52 = *(v23 + 8);
  v53 = v23 + 8;
  v54 = v112;
  v96 = v52;
  v88 = v53;
  v52(v24, v112);
  sub_10000C620(&v119);
  sub_10000C620(&v122);
  v55 = v48;
  v56 = v24;
  v57 = v91[3];
  v58 = v91[4];
  v59 = sub_10000C888(v91, v57);
  v123 = v57;
  v124 = *(v58 + 8);
  v60 = sub_10000D134(&v122);
  (*(*(v57 - 8) + 16))(v60, v59, v57);
  v108(v56, v110, v54);
  v104(v29, v106, v51);
  v61 = v29;
  if (qword_100921368 != -1)
  {
    swift_once();
  }

  v62 = sub_10000D0FC(v30, qword_100981770);
  v63 = v102;
  v87(v102, v62, v30);
  v64 = v111;
  v83(v63, v85, v111);
  v120 = v82;
  v121 = &protocol witness table for StaticDimension;
  sub_10000D134(&v119);
  *(&v117 + 1) = v64;
  v118 = &protocol witness table for FontSource;
  v65 = sub_10000D134(&v116);
  v80(v65, v63, v64);
  sub_100750B14();
  v79(v63, v64);
  v118 = 0;
  v116 = 0u;
  v117 = 0u;
  v66 = swift_allocObject();
  *(v66 + 16) = v74;
  sub_100748864();
  v115 = v66;
  v67 = v103;
  sub_1007543A4();
  sub_1007488B4();
  v100(v67, v55);
  sub_1000F4268(&v116);
  v98(v61, v51);
  v68 = v112;
  v113 = v50;
  v96(v56, v112);
  sub_10000C620(&v119);
  sub_10000C620(&v122);
  v69 = sub_100750F34();
  swift_allocObject();
  v70 = sub_100750F14();
  v123 = v69;
  v124 = &protocol witness table for LayoutViewPlaceholder;
  v122 = v70;
  v104(v61, v106, v51);
  v120 = &type metadata for CGFloat;
  v121 = &protocol witness table for CGFloat;
  v118 = 0;
  v119 = 0x4032000000000000;
  v116 = 0u;
  v117 = 0u;
  v115 = _swiftEmptyArrayStorage;
  sub_1007543A4();
  v108(v56, v110, v68);
  sub_1007488B4();
  v96(v56, v68);
  v100(v67, v55);
  sub_1000F4268(&v116);
  v98(v61, v51);
  sub_10000C620(&v119);
  sub_10000C620(&v122);
  v71 = sub_1007488F4();
  v72 = v94;
  v94[3] = v71;
  v72[4] = sub_1001C5D68(&qword_10092C0D0, &type metadata accessor for _VerticalFlowLayout, &protocol conformance descriptor for _VerticalFlowLayout);
  v72[5] = sub_1001C5D68(&qword_10092C0D8, &type metadata accessor for _VerticalFlowLayout, &protocol conformance descriptor for _VerticalFlowLayout);
  sub_10000D134(v72);
  sub_100748894();
  return result;
}

double sub_100446380(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();
  v4 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension24SearchResultsMessageView_primaryLabel);
  v13 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v14 = &protocol witness table for UILabel;
  v11[4] = &protocol witness table for UILabel;
  v12[0] = v4;
  v5 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension24SearchResultsMessageView_secondaryLabel);
  v11[3] = v13;
  v11[0] = v5;
  v6 = v4;
  v7 = v5;
  sub_100445664(v12, v11, v15);
  sub_10000C620(v11);
  sub_10000C620(v12);
  sub_10000C888(v15, v15[3]);
  sub_100750404();
  v9 = v8;
  sub_10000C620(v15);
  return v9;
}

void sub_100446588()
{
  v1 = sub_100750534();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC22SubscribePageExtension24SearchResultsMessageView_primaryLabel;
  if (qword_100921360 != -1)
  {
    swift_once();
  }

  v6 = sub_10000D0FC(v1, qword_100981758);
  v7 = *(v2 + 16);
  v7(v4, v6, v1);
  v8 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v9 = objc_allocWithZone(v8);
  *(v0 + v5) = sub_10004DA8C(v4, 0, 0, 0);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension24SearchResultsMessageView_secondaryLabel;
  if (qword_100921368 != -1)
  {
    swift_once();
  }

  v11 = sub_10000D0FC(v1, qword_100981770);
  v7(v4, v11, v1);
  v12 = objc_allocWithZone(v8);
  *(v0 + v10) = sub_10004DA8C(v4, 0, 0, 0);
  sub_100754644();
  __break(1u);
}

void *sub_100446780(uint64_t a1, int a2)
{
  v5 = sub_1007504F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100744FF4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = _swiftEmptyArrayStorage;
  sub_100745004();
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 != enum case for ShareSheetData.Metadata.article(_:))
  {
    LODWORD(v113) = a2;
    v46 = a1;
    if (v13 == enum case for ShareSheetData.Metadata.product(_:))
    {
      v114 = v6;
      v115 = v5;
      (*(v10 + 96))(v12, v9);
      v47 = *v12;
      sub_10000C518(&unk_10093E480, qword_1007BEDF0);
      inited = swift_initStackObject();
      v110 = xmmword_1007A5A00;
      *(inited + 16) = xmmword_1007A5A00;
      v49 = UIActivityTypeSaveToNotes;
      *(inited + 32) = UIActivityTypeSaveToNotes;
      v50 = v49;
      sub_1001A92FC(inited);
      v52 = v51;
      swift_setDeallocating();
      sub_1004478D4(inited + 32);
      v53 = objc_allocWithZone(type metadata accessor for URLActivityItemProvider());

      v54 = sub_10055E148(v2, a1, v52);
      sub_100753284();
      if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      v111 = v54;
      sub_100753344();
      v112 = v47;
      v55 = sub_10074B7C4();
      v56 = swift_initStackObject();
      *(v56 + 16) = v110;
      *(v56 + 32) = v50;
      v57 = v56 + 32;
      sub_1001A92FC(v56);
      v59 = v58;
      swift_setDeallocating();
      sub_1004478D4(v57);
      v60 = type metadata accessor for ArtworkActivityItemProvider();
      v61 = objc_allocWithZone(v60);
      v62 = OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_imageBox;
      v121 = 0;
      sub_10000C518(&qword_1009383E8, qword_1007C17C0);
      swift_allocObject();
      *&v61[v62] = sub_10074E044();
      *&v61[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artwork] = v55;
      *&v61[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artworkLoader] = v46;

      sub_10074F2A4();
      sub_100750504();
      sub_1007504E4();
      (*(v114 + 8))(v8, v115);
      sub_10074F2A4();
      sub_100753B74();
      *&v61[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artworkConfig] = sub_10074F374();
      if (qword_100921E00 != -1)
      {
        swift_once();
      }

      v63 = qword_100947648;

      sub_1004477E4(v59, v63);
      *&v61[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_excludedActivityTypes] = v64;
      v61[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = v113 & 1;
      v65 = [objc_allocWithZone(UIImage) init];
      v119.receiver = v61;
      v119.super_class = v60;
      v66 = objc_msgSendSuper2(&v119, "initWithPlaceholderItem:", v65);

      sub_10000C518(&unk_1009231A0, qword_1007A5810);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1007A5CF0;
      *(v67 + 32) = *&v66[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artworkConfig];
      v68 = v66;

      v69._rawValue = v67;
      sub_100744224(v69);

      v70 = v68;
      sub_100753284();
      if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();
      v28 = v123;
      v71 = sub_10074B784();
      v72 = v111;
      if (!v71)
      {

        return v28;
      }

      v73 = v71;
      v74 = type metadata accessor for NotesMetadataActivityItemProvider();
      v75 = objc_allocWithZone(v74);
      *&v75[OBJC_IVAR____TtC22SubscribePageExtension33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata] = xmmword_1007C17B0;
      *&v75[OBJC_IVAR____TtC22SubscribePageExtension33NotesMetadataActivityItemProvider_metadata] = v73;

      v76 = sub_100753064();
      v118.receiver = v75;
      v118.super_class = v74;
      v77 = objc_msgSendSuper2(&v118, "initWithPlaceholderItem:", v76);

      v78 = v77;
      sub_100753284();
      if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();

      goto LABEL_38;
    }

    if (v13 != enum case for ShareSheetData.Metadata.appEvent(_:))
    {
      (*(v10 + 8))(v12, v9);
      return _swiftEmptyArrayStorage;
    }

    v115 = v5;
    (*(v10 + 96))(v12, v9);
    v79 = *v12;
    v80 = objc_allocWithZone(type metadata accessor for URLActivityItemProvider());

    v81 = sub_10055E148(v2, a1, _swiftEmptySetSingleton);
    sub_100753284();
    if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    v113 = v81;
    v114 = v6;
    sub_100753344();
    v82 = sub_100741824();
    v84 = v83;
    v85 = type metadata accessor for TextActivityItemProvider();
    v86 = objc_allocWithZone(v85);
    v87 = &v86[OBJC_IVAR____TtC22SubscribePageExtension24TextActivityItemProvider_text];
    *v87 = v82;
    v87[1] = v84;
    v88 = qword_100920B88;

    if (v88 != -1)
    {
      swift_once();
    }

    v89 = qword_1009366B8;

    sub_1004477E4(_swiftEmptySetSingleton, v89);
    *&v86[OBJC_IVAR____TtC22SubscribePageExtension24TextActivityItemProvider_excludedActivityTypes] = v90;
    v91 = sub_100753064();

    v122.receiver = v86;
    v122.super_class = v85;
    v92 = objc_msgSendSuper2(&v122, "initWithPlaceholderItem:", v91);

    v27 = v92;
    sub_100753284();
    if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
    v28 = v123;
    v93 = sub_100741834();
    if (v93)
    {
      v94 = v93;
      v112 = v79;
      sub_10000C518(&unk_10093E480, qword_1007BEDF0);
      v95 = swift_initStackObject();
      *(v95 + 16) = xmmword_1007A5A00;
      v96 = UIActivityTypeSaveToNotes;
      *(v95 + 32) = UIActivityTypeSaveToNotes;
      v97 = v96;
      sub_1001A92FC(v95);
      v111 = v98;
      swift_setDeallocating();
      sub_1004478D4(v95 + 32);
      v99 = type metadata accessor for ArtworkActivityItemProvider();
      v100 = objc_allocWithZone(v99);
      v101 = OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_imageBox;
      v121 = 0;
      sub_10000C518(&qword_1009383E8, qword_1007C17C0);
      swift_allocObject();

      *&v100[v101] = sub_10074E044();
      *&v100[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artwork] = v94;
      *&v100[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artworkLoader] = a1;

      sub_10074F2A4();
      sub_100750504();
      sub_1007504E4();
      (*(v114 + 8))(v8, v115);
      sub_10074F2A4();
      sub_100753B74();
      *&v100[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artworkConfig] = sub_10074F374();
      if (qword_100921E00 != -1)
      {
        swift_once();
      }

      v102 = qword_100947648;

      sub_1004477E4(v111, v102);
      *&v100[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_excludedActivityTypes] = v103;
      v100[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = 0;
      v104 = [objc_allocWithZone(UIImage) init];
      v120.receiver = v100;
      v120.super_class = v99;
      v105 = objc_msgSendSuper2(&v120, "initWithPlaceholderItem:", v104);

      sub_10000C518(&unk_1009231A0, qword_1007A5810);
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_1007A5CF0;
      *(v106 + 32) = *&v105[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artworkConfig];
      v107 = v105;

      v108._rawValue = v106;
      sub_100744224(v108);

      v45 = v107;
      sub_100753284();
      if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      goto LABEL_37;
    }

LABEL_39:

    return v28;
  }

  v115 = v5;
  (*(v10 + 96))(v12, v9);
  v14 = objc_allocWithZone(type metadata accessor for URLActivityItemProvider());

  v15 = sub_10055E148(v2, a1, _swiftEmptySetSingleton);
  sub_100753284();
  if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  v113 = v15;
  v114 = v6;
  sub_100753344();
  v16 = sub_10074B744();
  v18 = v17;
  v19 = type metadata accessor for TextActivityItemProvider();
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR____TtC22SubscribePageExtension24TextActivityItemProvider_text];
  *v21 = v16;
  v21[1] = v18;
  v22 = qword_100920B88;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_1009366B8;

  sub_1004477E4(_swiftEmptySetSingleton, v23);
  *&v20[OBJC_IVAR____TtC22SubscribePageExtension24TextActivityItemProvider_excludedActivityTypes] = v24;
  v25 = sub_100753064();

  v117.receiver = v20;
  v117.super_class = v19;
  v26 = objc_msgSendSuper2(&v117, "initWithPlaceholderItem:", v25);

  v27 = v26;
  sub_100753284();
  if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
  v28 = v123;
  v29 = sub_10074B754();
  if (!v29)
  {
    goto LABEL_39;
  }

  v30 = v29;
  sub_10000C518(&unk_10093E480, qword_1007BEDF0);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1007A5A00;
  v32 = UIActivityTypeSaveToNotes;
  *(v31 + 32) = UIActivityTypeSaveToNotes;
  v33 = v32;
  sub_1001A92FC(v31);
  v112 = v34;
  swift_setDeallocating();
  sub_1004478D4(v31 + 32);
  v35 = type metadata accessor for ArtworkActivityItemProvider();
  v36 = objc_allocWithZone(v35);
  v37 = OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_imageBox;
  v121 = 0;
  sub_10000C518(&qword_1009383E8, qword_1007C17C0);
  swift_allocObject();

  *&v36[v37] = sub_10074E044();
  *&v36[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artwork] = v30;
  *&v36[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artworkLoader] = a1;

  sub_10074F2A4();
  sub_100750504();
  sub_1007504E4();
  (*(v114 + 8))(v8, v115);
  sub_10074F2A4();
  sub_100753B74();
  *&v36[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artworkConfig] = sub_10074F374();
  if (qword_100921E00 != -1)
  {
    swift_once();
  }

  v38 = qword_100947648;

  sub_1004477E4(v112, v38);
  *&v36[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_excludedActivityTypes] = v39;
  v36[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_enablePrerenderedIconArtwork] = 0;
  v40 = [objc_allocWithZone(UIImage) init];
  v116.receiver = v36;
  v116.super_class = v35;
  v41 = objc_msgSendSuper2(&v116, "initWithPlaceholderItem:", v40);

  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1007A5CF0;
  *(v42 + 32) = *&v41[OBJC_IVAR____TtC22SubscribePageExtension27ArtworkActivityItemProvider_artworkConfig];
  v43 = v41;

  v44._rawValue = v42;
  sub_100744224(v44);

  v45 = v43;
  sub_100753284();
  if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

LABEL_37:
  sub_100753344();

LABEL_38:

  return v123;
}

void sub_1004477E4(uint64_t a1, void *a2)
{
  v3 = 0;
  v11[1] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    sub_1001A717C(v11, *(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1004478D4(uint64_t a1)
{
  type metadata accessor for ActivityType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100447930()
{
  v0 = sub_10000C518(&unk_100947360, &qword_1007C3EF0);
  sub_100039C50(v0, qword_100980418);
  sub_10000D0FC(v0, qword_100980418);
  return sub_100752664();
}

char *sub_1004479A8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  sub_100752854();
  sub_100752824();
  if (qword_100920C50 != -1)
  {
    swift_once();
  }

  v10 = sub_10000C518(&unk_100947360, &qword_1007C3EF0);
  sub_10000D0FC(v10, qword_100980418);
  sub_100752534();

  if (v25 == 2 || (v25 & 1) == 0)
  {
    v11 = type metadata accessor for SemiLightMaterialView();
  }

  else
  {
    v11 = type metadata accessor for AccessoryDarkMaterialView();
  }

  v12 = [objc_allocWithZone(v11) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_materialView] = v12;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_topBackgroundView;
  type metadata accessor for InteractiveBackgroundContentView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v5[v13] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_bottomBackgroundView;
  *&v5[v15] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_currentState;
  v17 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v17 - 8) + 56))(&v5[v16], 1, 1, v17);
  v24.receiver = v5;
  v24.super_class = type metadata accessor for InteractiveSectionBackgroundView(0);
  v18 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v19 = v18;
  v20 = sub_100753E04();
  [v19 setBackgroundColor:v20];

  v21 = OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_bottomBackgroundView;
  [*&v19[OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_bottomBackgroundView] setBackgroundColor:0];
  [v19 addSubview:*&v19[v21]];
  v22 = OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_topBackgroundView;
  [*&v19[OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_topBackgroundView] setBackgroundColor:0];
  [*&v19[v22] setAlpha:1.0];
  [v19 addSubview:*&v19[v22]];
  [v19 addSubview:*&v19[OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_materialView]];

  return v19;
}

id sub_100447CA4()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for InteractiveSectionBackgroundView(0);
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_materialView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_topBackgroundView];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_bottomBackgroundView];
  [v0 bounds];
  return [v3 setFrame:?];
}

uint64_t sub_100447DA8()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100924290, &qword_1007AC8E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for InteractiveSectionBackgroundView(0);
  v10.receiver = v0;
  v10.super_class = v5;
  objc_msgSendSuper2(&v10, "prepareForReuse");
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_topBackgroundView] setBackgroundColor:0];
  sub_100743344();
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_bottomBackgroundView] setBackgroundColor:0];
  sub_100743344();
  v6 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_currentState;
  swift_beginAccess();
  sub_100117B24(v4, &v1[v7]);
  return swift_endAccess();
}

uint64_t sub_100447F60(uint64_t a1, uint64_t a2)
{
  v137 = a1;
  v114 = sub_1007504F4();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = &v108 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1007457B4();
  v131 = *(v3 - 8);
  __chkstk_darwin(v3);
  v115 = (&v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v116 = (&v108 - v6);
  __chkstk_darwin(v7);
  v111 = &v108 - v8;
  v132 = sub_10000C518(&qword_100932568, qword_1007B97E8);
  __chkstk_darwin(v132);
  v129 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v108 - v11;
  v13 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&unk_100924290, &qword_1007AC8E0);
  __chkstk_darwin(v17 - 8);
  v124 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v123 = &v108 - v20;
  __chkstk_darwin(v21);
  v23 = &v108 - v22;
  v24 = sub_10000C518(&qword_1009245B0, &qword_1007A7AA0);
  __chkstk_darwin(v24 - 8);
  v110 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v128 = &v108 - v27;
  __chkstk_darwin(v28);
  v127 = &v108 - v29;
  __chkstk_darwin(v30);
  v109 = &v108 - v31;
  __chkstk_darwin(v32);
  v34 = &v108 - v33;
  __chkstk_darwin(v35);
  v37 = &v108 - v36;
  sub_1007442C4();
  sub_100752764();
  v38 = v138;
  sub_100752D34();
  v130 = v139;
  v39 = OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_currentState;
  swift_beginAccess();
  v133 = v39;
  sub_100016B4C(&v38[v39], v23, &unk_100924290, &qword_1007AC8E0);
  v125 = v14;
  v40 = *(v14 + 48);
  v135 = v13;
  v120 = v14 + 48;
  v119 = v40;
  v41 = v40(v23, 1, v13);
  v126 = v16;
  if (v41)
  {
    sub_10000C8CC(v23, &unk_100924290, &qword_1007AC8E0);
    v42 = v131;
    v43 = *(v131 + 56);
    v44 = (v131 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v43(v37, 1, 1, v3);
    v45 = *(v42 + 16);
    v46 = (v42 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  else
  {
    sub_100052C34(v23, v16);
    sub_10000C8CC(v23, &unk_100924290, &qword_1007AC8E0);
    v42 = v131;
    v45 = *(v131 + 16);
    v46 = (v131 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v45(v37, v16, v3);
    sub_100052BD8(v16);
    v43 = *(v42 + 56);
    v44 = (v42 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v43(v37, 0, 1, v3);
  }

  v134 = v45;
  v136 = v46;
  v45(v34, v137, v3);
  v122 = v43;
  v121 = v44;
  v43(v34, 0, 1, v3);
  v47 = *(v132 + 48);
  sub_100016B4C(v37, v12, &qword_1009245B0, &qword_1007A7AA0);
  sub_100016B4C(v34, &v12[v47], &qword_1009245B0, &qword_1007A7AA0);
  v48 = v42;
  v49 = *(v42 + 48);
  v50 = v49(v12, 1, v3);
  v118 = v49;
  v117 = v42 + 48;
  if (v50 == 1)
  {
    sub_10000C8CC(v34, &qword_1009245B0, &qword_1007A7AA0);
    sub_10000C8CC(v37, &qword_1009245B0, &qword_1007A7AA0);
    v51 = v42;
    if (v49(&v12[v47], 1, v3) == 1)
    {
      sub_10000C8CC(v12, &qword_1009245B0, &qword_1007A7AA0);
      v52 = v128;
      v53 = v129;
      v54 = v126;
      v55 = v127;
      v56 = v134;
      v57 = v135;
      goto LABEL_18;
    }
  }

  else
  {
    v108 = v37;
    v58 = v109;
    sub_100016B4C(v12, v109, &qword_1009245B0, &qword_1007A7AA0);
    if (v49(&v12[v47], 1, v3) != 1)
    {
      v70 = v42;
      v71 = v111;
      (*(v42 + 32))(v111, &v12[v47], v3);
      sub_10044A17C(&qword_100940610, &type metadata accessor for ShelfBackground, &protocol conformance descriptor for ShelfBackground);
      v72 = sub_100753014();
      v73 = *(v48 + 8);
      v73(v71, v3);
      sub_10000C8CC(v34, &qword_1009245B0, &qword_1007A7AA0);
      sub_10000C8CC(v108, &qword_1009245B0, &qword_1007A7AA0);
      v73(v58, v3);
      v51 = v70;
      v57 = v135;
      sub_10000C8CC(v12, &qword_1009245B0, &qword_1007A7AA0);
      v52 = v128;
      v53 = v129;
      v54 = v126;
      v55 = v127;
      v56 = v134;
      if (v72)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    sub_10000C8CC(v34, &qword_1009245B0, &qword_1007A7AA0);
    sub_10000C8CC(v108, &qword_1009245B0, &qword_1007A7AA0);
    v51 = v42;
    (*(v42 + 8))(v58, v3);
  }

  sub_10000C8CC(v12, &qword_100932568, qword_1007B97E8);
  v52 = v128;
  v53 = v129;
  v55 = v127;
  v56 = v134;
LABEL_10:
  v59 = *&v138[OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_topBackgroundView];
  v60 = v116;
  v56(v116, v137, v3);
  v61 = (*(v51 + 88))(v60, v3);
  if (v61 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v51 + 96))(v60, v3);
    v62 = *(sub_10000C518(&qword_100940630, &qword_1007C18F0) + 48);
    type metadata accessor for InteractiveBackgroundContentView();
    sub_10044A17C(&unk_1009384D0, type metadata accessor for InteractiveBackgroundContentView, "ݧ\t");
    sub_100744274();
    sub_100743344();
    [v138 frame];
    v63 = v112;
    sub_100750504();
    sub_100750474();
    (*(v113 + 8))(v63, v114);
    sub_10074F374();
    v64 = sub_10074F1E4();
    [v59 setBackgroundColor:v64];

    v57 = v135;
    v55 = v127;
    v52 = v128;
    sub_100744204();
    v54 = v126;
    v56 = v134;

    v53 = v129;

    v65 = sub_100748E34();
    (*(*(v65 - 8) + 8))(v116 + v62, v65);
  }

  else
  {
    if (v61 == enum case for ShelfBackground.color(_:))
    {
      (*(v51 + 96))(v60, v3);
      v66 = *v60;
      v67 = *(sub_10000C518(&unk_100930940, qword_1007A9000) + 48);
      sub_100743344();
      [v59 setBackgroundColor:v66];

      v56 = v134;
      v68 = sub_100748E34();
      v69 = v60 + v67;
      v57 = v135;
      v52 = v128;
      (*(*(v68 - 8) + 8))(v69, v68);
    }

    else
    {
      v74 = v60;
      sub_100743344();
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      v75 = sub_100753E04();
      [v59 setBackgroundColor:v75];

      v76 = v74;
      v57 = v135;
      (*(v51 + 8))(v76, v3);
    }

    v54 = v126;
  }

LABEL_18:
  v77 = v123;
  sub_100016B4C(&v138[v133], v123, &unk_100924290, &qword_1007AC8E0);
  if (v119(v77, 1, v57))
  {
    sub_10000C8CC(v77, &unk_100924290, &qword_1007AC8E0);
    v78 = 1;
  }

  else
  {
    sub_100052C34(v77, v54);
    sub_10000C8CC(v77, &unk_100924290, &qword_1007AC8E0);
    v56(v55, v54 + *(v57 + 28), v3);
    sub_100052BD8(v54);
    v78 = 0;
  }

  v79 = v122;
  v122(v55, v78, 1, v3);
  v128 = *(v57 + 28);
  v56(v52, v137 + v128, v3);
  v79(v52, 0, 1, v3);
  v80 = *(v132 + 48);
  sub_100016B4C(v55, v53, &qword_1009245B0, &qword_1007A7AA0);
  sub_100016B4C(v52, v53 + v80, &qword_1009245B0, &qword_1007A7AA0);
  v81 = v118;
  if (v118(v53, 1, v3) == 1)
  {
    sub_10000C8CC(v52, &qword_1009245B0, &qword_1007A7AA0);
    sub_10000C8CC(v55, &qword_1009245B0, &qword_1007A7AA0);
    v82 = v81(v53 + v80, 1, v3);
    v83 = v131;
    if (v82 == 1)
    {
      sub_10000C8CC(v53, &qword_1009245B0, &qword_1007A7AA0);
      goto LABEL_35;
    }
  }

  else
  {
    v84 = v110;
    sub_100016B4C(v53, v110, &qword_1009245B0, &qword_1007A7AA0);
    if (v81(v53 + v80, 1, v3) != 1)
    {
      v83 = v131;
      v95 = v53 + v80;
      v96 = v111;
      (*(v131 + 32))(v111, v95, v3);
      sub_10044A17C(&qword_100940610, &type metadata accessor for ShelfBackground, &protocol conformance descriptor for ShelfBackground);
      v97 = v55;
      v98 = sub_100753014();
      v99 = *(v83 + 8);
      v99(v96, v3);
      sub_10000C8CC(v52, &qword_1009245B0, &qword_1007A7AA0);
      sub_10000C8CC(v97, &qword_1009245B0, &qword_1007A7AA0);
      v99(v84, v3);
      sub_10000C8CC(v129, &qword_1009245B0, &qword_1007A7AA0);
      v85 = v115;
      if (v98)
      {
        goto LABEL_35;
      }

      goto LABEL_27;
    }

    sub_10000C8CC(v52, &qword_1009245B0, &qword_1007A7AA0);
    sub_10000C8CC(v55, &qword_1009245B0, &qword_1007A7AA0);
    v83 = v131;
    (*(v131 + 8))(v84, v3);
  }

  sub_10000C8CC(v53, &qword_100932568, qword_1007B97E8);
  v85 = v115;
LABEL_27:
  v86 = *&v138[OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_bottomBackgroundView];
  v134(v85, (v137 + v128), v3);
  v87 = (*(v83 + 88))(v85, v3);
  if (v87 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v83 + 96))(v85, v3);
    v88 = *(sub_10000C518(&qword_100940630, &qword_1007C18F0) + 48);
    type metadata accessor for InteractiveBackgroundContentView();
    sub_10044A17C(&unk_1009384D0, type metadata accessor for InteractiveBackgroundContentView, "ݧ\t");
    sub_100744274();
    sub_100743344();
    [v138 frame];
    v89 = v112;
    sub_100750504();
    sub_100750474();
    (*(v113 + 8))(v89, v114);
    sub_10074F374();
    v90 = sub_10074F1E4();
    [v86 setBackgroundColor:v90];

    sub_100744204();

    v91 = sub_100748E34();
    (*(*(v91 - 8) + 8))(v85 + v88, v91);
  }

  else if (v87 == enum case for ShelfBackground.color(_:))
  {
    (*(v83 + 96))(v85, v3);
    v92 = *v85;
    v93 = *(sub_10000C518(&unk_100930940, qword_1007A9000) + 48);
    sub_100743344();
    [v86 setBackgroundColor:v92];

    v94 = sub_100748E34();
    (*(*(v94 - 8) + 8))(v85 + v93, v94);
  }

  else
  {
    sub_100743344();
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v100 = sub_100753E04();
    [v86 setBackgroundColor:v100];

    (*(v83 + 8))(v85, v3);
  }

LABEL_35:
  v101 = v137;
  v102 = v138;
  v103 = v135;
  [*&v138[OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_topBackgroundView] setAlpha:*(v137 + *(v135 + 20))];

  v104 = v101;
  v105 = v124;
  sub_100052C34(v104, v124);
  (*(v125 + 56))(v105, 0, 1, v103);
  v106 = v133;
  swift_beginAccess();
  sub_100117B24(v105, &v102[v106]);
  return swift_endAccess();
}

uint64_t type metadata accessor for InteractiveSectionBackgroundView(uint64_t a1)
{
  result = qword_100938430;
  if (!qword_100938430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004493DC(uint64_t a1)
{
  sub_1000501F0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100449480@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_currentState;
  swift_beginAccess();
  return sub_100016B4C(v3 + v4, a1, &unk_100924290, &qword_1007AC8E0);
}

char *sub_100449510(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtensionP33_8DA30027F2CC80FAC5FE2DBE0813F10F32InteractiveBackgroundContentView_artworkView;
  sub_1007433C4();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for InteractiveBackgroundContentView();
  v10 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC22SubscribePageExtensionP33_8DA30027F2CC80FAC5FE2DBE0813F10F32InteractiveBackgroundContentView_artworkView;
  v12 = *&v10[OBJC_IVAR____TtC22SubscribePageExtensionP33_8DA30027F2CC80FAC5FE2DBE0813F10F32InteractiveBackgroundContentView_artworkView];
  v13 = v10;
  [v12 setContentMode:4];
  v14 = [*&v10[v11] layer];
  CGAffineTransformMakeScale(&v16, 3.0, 3.0);
  [v14 setAffineTransform:&v16];

  [v13 addSubview:*&v10[v11]];
  return v13;
}

void (*sub_100449904(uint64_t *a1, __n128 a2))(id *a1, char a2)
{
  a1[1] = *(v2 + OBJC_IVAR____TtC22SubscribePageExtensionP33_8DA30027F2CC80FAC5FE2DBE0813F10F32InteractiveBackgroundContentView_artworkView);
  *a1 = sub_100743334();
  return sub_100449958;
}

void sub_100449958(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    sub_100743344();
  }

  else
  {
    sub_100743344();
  }
}

id sub_1004499EC()
{
  v1 = [objc_opt_self() effectWithBlurRadius:90.0];
  v19.receiver = v0;
  v19.super_class = type metadata accessor for SemiLightMaterialView();
  v2 = objc_msgSendSuper2(&v19, "initWithEffect:", v1);

  v3 = kCAFilterColorSaturate;
  v4 = objc_allocWithZone(CAFilter);
  v5 = v2;
  v6 = [v4 initWithType:v3];
  isa = sub_10074FC14().super.super.isa;
  [v6 setValue:isa forKey:kCAFilterInputAmount];

  v8 = [v5 layer];
  sub_10000C518(&unk_1009259C0, &unk_1007A9270);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007A5A00;
  *(v9 + 56) = sub_100016C60(0, &qword_1009384C8, CAFilter_ptr);
  *(v9 + 32) = v6;
  v10 = v6;
  v11 = sub_100753294().super.isa;

  [v8 setFilters:v11];

  v12 = [v5 layer];
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v13 = sub_100753F24(1.0, 1.0, 1.0, 0.4).super.isa;
  v14 = [(objc_class *)v13 CGColor];

  [v12 setBackgroundColor:v14];
  v15 = [v5 layer];

  v16 = [v15 mask];
  LODWORD(v17) = 1.0;
  [v16 setOpacity:v17];

  return v5;
}

id sub_100449D6C()
{
  v1 = [objc_opt_self() effectWithBlurRadius:90.0];
  v19.receiver = v0;
  v19.super_class = type metadata accessor for AccessoryDarkMaterialView();
  v2 = objc_msgSendSuper2(&v19, "initWithEffect:", v1);

  v3 = kCAFilterColorSaturate;
  v4 = objc_allocWithZone(CAFilter);
  v5 = v2;
  v6 = [v4 initWithType:v3];
  isa = sub_10074FC14().super.super.isa;
  [v6 setValue:isa forKey:kCAFilterInputAmount];

  v8 = [v5 layer];
  sub_10000C518(&unk_1009259C0, &unk_1007A9270);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007A5A00;
  *(v9 + 56) = sub_100016C60(0, &qword_1009384C8, CAFilter_ptr);
  *(v9 + 32) = v6;
  v10 = v6;
  v11 = sub_100753294().super.isa;

  [v8 setFilters:v11];

  v12 = [v5 layer];
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v13 = sub_100753F24(0.58824, 0.58824, 0.58824, 0.15).super.isa;
  v14 = [(objc_class *)v13 CGColor];

  [v12 setBackgroundColor:v14];
  v15 = [v5 layer];

  v16 = [v15 mask];
  if (v16)
  {
    LODWORD(v17) = 1.0;
    [v16 setOpacity:v17];
  }

  return v5;
}

id sub_10044A0D0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10044A17C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10044A1C4()
{
  v1 = v0;
  sub_100752854();
  sub_100752824();
  if (qword_100920C50 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C518(&unk_100947360, &qword_1007C3EF0);
  sub_10000D0FC(v2, qword_100980418);
  sub_100752534();

  if (v11 == 2 || (v11 & 1) == 0)
  {
    v3 = type metadata accessor for SemiLightMaterialView();
  }

  else
  {
    v3 = type metadata accessor for AccessoryDarkMaterialView();
  }

  v4 = [objc_allocWithZone(v3) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_materialView) = v4;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_topBackgroundView;
  type metadata accessor for InteractiveBackgroundContentView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v5) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_bottomBackgroundView;
  *(v1 + v7) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v8 = OBJC_IVAR____TtC22SubscribePageExtension32InteractiveSectionBackgroundView_currentState;
  v9 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  result = sub_100754644();
  __break(1u);
  return result;
}

uint64_t sub_10044A380(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = *v5;
  Width = CGRectGetWidth(*&a2);
  v13 = Width;
  if (v11 == 1)
  {
    v53.origin.x = a2;
    v53.origin.y = a3;
    v53.size.width = a4;
    v53.size.height = a5;
    CGRectGetWidth(v53);
    v14 = *(v5 + 9);
  }

  else
  {
    v13 = Width * 0.5;
    v54.origin.x = a2;
    v54.origin.y = a3;
    v54.size.width = a4;
    v54.size.height = a5;
    v15 = CGRectGetWidth(v54);
    v55.origin.x = a2;
    v55.origin.y = a3;
    v55.size.width = a4;
    v55.size.height = a5;
    Height = CGRectGetHeight(v55);
    if (Height >= v15)
    {
      v14 = v15;
    }

    else
    {
      v14 = Height;
    }
  }

  sub_10000C888(v5 + 10, *(v5 + 13));
  v43 = v14;
  sub_100753AA4();
  sub_100751244();
  v17 = *(v5 + 2);
  v18 = *(v5 + 6);
  if (v11)
  {
    v19 = *(v5 + 2);
  }

  else
  {
    v19 = *(v5 + 6);
  }

  v38 = v19;
  v44 = v13;
  v56.origin.x = a2;
  v56.origin.y = a3;
  v56.size.width = a4;
  v56.size.height = a5;
  CGRectGetHeight(v56);
  sub_10000C888(v5 + 15, *(v5 + 18));
  sub_100751254();
  v21 = v20;
  v40 = v22;
  v41 = v17;
  if (v11)
  {
    v23 = *(v5 + 1);
    v37 = v23;
  }

  else
  {
    v37 = *(v5 + 1);
    v23 = *(v5 + 5);
    v17 = v18;
  }

  sub_10000C888(v5 + 15, *(v5 + 18));
  v39 = v23;
  v36 = v21;
  sub_100753AA4();
  sub_100751244();
  v57.origin.x = a2;
  v57.origin.y = a3;
  v57.size.width = a4;
  v57.size.height = a5;
  CGRectGetWidth(v57);
  v58.origin.x = 0.0;
  v58.origin.y = 0.0;
  v58.size.width = v44;
  v58.size.height = v43;
  CGRectGetHeight(v58);
  v35 = v17;
  if (v11)
  {
    v59.origin.x = a2;
    v59.origin.y = a3;
    v59.size.width = a4;
    v59.size.height = a5;
    v24 = v41;
    CGRectGetWidth(v59);
  }

  else
  {
    v60.origin.x = 0.0;
    v60.origin.y = 0.0;
    v60.size.width = v44;
    v60.size.height = v43;
    CGRectGetMaxX(v60);
    v24 = v41;
  }

  v25 = v5[2] | v11 ^ 1;
  sub_10000C888(v5 + 25, *(v5 + 28));
  sub_100750434();
  sub_10000C888(v51, v52);
  sub_100753AA4();
  sub_100751244();
  sub_10000C620(v51);
  v61.origin.x = a2;
  v61.origin.y = a3;
  v42 = a4;
  v61.size.width = a4;
  v61.size.height = a5;
  CGRectGetHeight(v61);
  sub_10000C888(v5 + 20, *(v5 + 23));
  sub_100751254();
  v27 = v26;
  v29 = v28;
  v30 = v24;
  v31 = v37;
  if (v25 == 1)
  {
    v62.origin.x = 0.0;
    v62.origin.y = 0.0;
    v62.size.height = v43;
    v62.size.width = v44;
    MaxY = CGRectGetMaxY(v62);
    v33 = 56;
    if (v11)
    {
      v33 = 24;
    }

    v31 = MaxY - *&v5[v33] - v29;
    v30 = v38;
  }

  sub_10000C888(v5 + 20, *(v5 + 23));
  sub_100753AA4();
  sub_100751244();
  if (v11)
  {
    type metadata accessor for TodayListCardLockupContainer();
    sub_10013F6DC(*(v5 + 35), a1);
  }

  v63.origin.x = 0.0;
  v63.origin.y = 0.0;
  v63.size.height = v43;
  v63.size.width = v44;
  CGRectGetMaxY(v63);
  v64.origin.x = v30;
  v64.origin.y = v31;
  v64.size.width = v27;
  v64.size.height = v29;
  CGRectGetMaxY(v64);
  v65.origin.x = a2;
  v65.origin.y = a3;
  v65.size.width = v42;
  v65.size.height = a5;
  CGRectGetWidth(v65);
  sub_10000C888(v5 + 30, *(v5 + 33));
  sub_100750434();
  sub_10000C888(v51, v52);
  sub_100753AA4();
  sub_100751244();
  sub_10000C620(v51);
  sub_1000746BC((v5 + 328), &v49);
  if (v50)
  {
    sub_100012160(&v49, v51);
    sub_1000746BC((v5 + 288), &v47);
    if (v48)
    {
      sub_100012160(&v47, &v49);
      sub_1000746BC((v5 + 368), &v45);
      if (v46)
      {
        sub_100012160(&v45, &v47);
        sub_10000C888(v51, v52);
        sub_100751254();
        v66.origin.y = a3;
        v66.origin.x = a2;
        v66.size.width = v42;
        v66.size.height = a5;
        CGRectGetHeight(v66);
        v67.origin.x = v35;
        v67.origin.y = v39;
        v67.size.width = v36;
        v67.size.height = v40;
        CGRectGetMaxY(v67);
        v68.origin.x = v35;
        v68.origin.y = v39;
        v68.size.width = v36;
        v68.size.height = v40;
        CGRectGetMaxY(v68);
        sub_10000C888(&v49, v50);
        sub_100753AA4();
        sub_100751244();
        sub_10000C888(v51, v52);
        sub_100751244();
        sub_10000C888(&v47, v48);
        sub_100753AA4();
        sub_100751244();
        sub_10000C620(&v47);
        sub_10000C620(&v49);
        return sub_10000C620(v51);
      }

      sub_10007485C(&v45);
      sub_10000C620(&v49);
    }

    else
    {
      sub_10007485C(&v47);
    }

    sub_10000C620(v51);
  }

  else
  {
    sub_10007485C(&v49);
  }

  sub_1000746BC((v5 + 288), v51);
  if (v52)
  {
    sub_10000C888(v51, v52);
    sub_100751244();
    sub_10000C620(v51);
  }

  else
  {
    sub_10007485C(v51);
  }

  sub_1000746BC((v5 + 328), v51);
  if (v52)
  {
    sub_10000C888(v51, v52);
    sub_100751244();
    sub_10000C620(v51);
  }

  else
  {
    sub_10007485C(v51);
  }

  sub_1000746BC((v5 + 288), v51);
  if (v52)
  {
    sub_10000C888(v51, v52);
    sub_100751244();
    return sub_10000C620(v51);
  }

  return sub_10007485C(v51);
}

uint64_t sub_10044ABF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 408))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10044AC3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 408) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 408) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10044ACF8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10044AD14(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[80])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10044AD68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

double sub_10044AE18(void *a1)
{
  v2 = sub_100743B04();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 traitCollection];
  if (qword_1009218A0 != -1)
  {
    swift_once();
  }

  v29.is_nil = qword_1009825D8;
  v29.value._rawValue = 0;
  isa = sub_1007537C4(v29, v7).super.isa;
  v27 = isa;

  v28 = UIFontTextStyleHeadline;
  v10 = objc_opt_self();
  v11 = [v10 configurationWithTextStyle:UIFontTextStyleHeadline scale:2];
  v12 = *(v3 + 104);
  v12(v6, enum case for SystemImage.star(_:), v2);
  v13 = [v11 configurationWithTraitCollection:isa];
  v14 = sub_100743AE4();

  v15 = *(v3 + 8);
  v15(v6, v2);
  [v14 contentInsets];
  v17 = v16;
  [v14 contentInsets];
  v19 = v17 + v18;
  [v14 size];
  v21 = v20 - v19;
  [v14 contentInsets];
  [v14 contentInsets];
  [v14 size];

  v22 = [v10 configurationWithTextStyle:v28 scale:2];
  v12(v6, enum case for SystemImage.starFill(_:), v2);
  v23 = v27;
  v24 = [v22 configurationWithTraitCollection:v27];
  v25 = sub_100743AE4();

  v15(v6, v2);
  sub_100753F34();
  [v25 contentInsets];

  return v21 * 5.0 + 24.0;
}

id sub_10044B15C(void *a1)
{
  if (qword_100921898 != -1)
  {
    swift_once();
  }

  v2 = qword_1009825D0;
  if (sub_100753944())
  {
    v3 = v2;
  }

  else
  {
    v3 = a1;
  }

  return v3;
}

double sub_10044B1D8(void *a1, double a2)
{
  v3 = [a1 traitCollection];
  v4 = sub_100072194(v3, a2);

  return v4;
}

double sub_10044B250(uint64_t a1, void *a2, int a3, double a4, double a5)
{
  v96 = a3;
  v102 = a2;
  v8 = sub_1007511D4();
  v98 = *(v8 - 8);
  v99 = v8;
  __chkstk_darwin(v8);
  v97 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100750954();
  v93 = *(v10 - 8);
  v94 = v10;
  __chkstk_darwin(v10);
  v92 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v83 = v79 - v13;
  v14 = sub_100750304();
  v90 = *(v14 - 8);
  v91 = v14;
  __chkstk_darwin(v14);
  v89 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100750534();
  v87 = *(v16 - 8);
  v88 = v16;
  __chkstk_darwin(v16);
  v85 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_100750E94();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v19 = v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v79 - v21;
  v23 = sub_100750BD4();
  v95 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v79 - v27;
  __chkstk_darwin(v29);
  v31 = v79 - v30;
  v32 = sub_10074F464();
  if (v33)
  {
    v34 = v32;
    v35 = v33;
    type metadata accessor for ProductNoRatingsView();
    v36 = v102;
    swift_getObjectType();
    v37 = sub_1000FB270(v34, v35, v36, a4, a5);
  }

  else
  {
    v79[0] = v19;
    v79[1] = v22;
    v101 = v31;
    v82 = v25;
    sub_10074F454();
    v39 = v38;
    v40 = objc_allocWithZone(NSNumber);
    LODWORD(v41) = v39;
    v110.value.super.super.isa = [v40 initWithFloat:v41];
    isa = v110.value.super.super.isa;
    v110.is_nil = 1;
    sub_10074B984(v110, v43);
    v45 = v44;

    v81 = v23;
    v100 = v28;
    v79[2] = a1;
    if (!v45)
    {
      sub_10074F454();
      sub_100753464();
    }

    sub_10000C518(&unk_100929CA0, &qword_1007A6610);
    inited = swift_initStackObject();
    *(inited + 32) = NSKernAttributeName;
    *(inited + 16) = xmmword_1007A5A00;
    *(inited + 64) = &type metadata for CGFloat;
    *(inited + 40) = 0xC010000000000000;
    v47 = NSKernAttributeName;
    sub_100413A18(inited);
    swift_setDeallocating();
    sub_100168AA4(inited + 32);
    v48 = objc_allocWithZone(NSAttributedString);
    v49 = sub_100753064();

    type metadata accessor for Key(0);
    sub_10044C078(&qword_1009276F0, type metadata accessor for Key, &unk_1007A543C);
    v50 = sub_100752F34().super.isa;

    v51 = [v48 initWithString:v49 attributes:v50];

    v80 = v51;
    v52 = v79[0];
    sub_100750E84();
    if (qword_100921890 != -1)
    {
      swift_once();
    }

    v53 = sub_10000C518(&qword_100923C40, &qword_1007B5CB0);
    sub_10000D0FC(v53, qword_1009825B8);
    v105[0] = [v102 snapshotPageTraitEnvironment];
    v54 = v85;
    sub_100743464();
    swift_unknownObjectRelease();
    sub_100750E54();
    v56 = v87;
    v55 = v88;
    (*(v87 + 8))(v54, v88);
    (*(v84 + 8))(v52, v86);
    sub_100750BB4();
    sub_100750C14();
    v85 = sub_100750F34();
    swift_allocObject();
    v86 = sub_100750EF4();
    v57 = v92;
    if (qword_1009210F0 != -1)
    {
      swift_once();
    }

    v58 = sub_10000D0FC(v55, qword_100981008);
    v59 = v89;
    (*(v56 + 16))(v89, v58, v55);
    v61 = v90;
    v60 = v91;
    (*(v90 + 104))(v59, enum case for FontSource.useCase(_:), v91);
    v62 = sub_1007502E4();
    (*(v61 + 8))(v59, v60);
    v111._object = 0x800000010077CE70;
    v111._countAndFlagsBits = 0xD000000000000012;
    v113._countAndFlagsBits = 0;
    v113._object = 0xE000000000000000;
    sub_10074B194(v111, 5, v113);
    sub_100750944();
    sub_100750934();
    v63 = v94;
    v64 = v93[1];
    v64(v57, v94);
    sub_100750BB4();
    sub_100750BE4();
    v65 = sub_10074F434();
    v112._countAndFlagsBits = 0xD000000000000013;
    v112._object = 0x800000010076D9F0;
    v114._countAndFlagsBits = 0;
    v114._object = 0xE000000000000000;
    sub_10074B194(v112, v65, v114);
    sub_100750944();
    v93 = v62;
    sub_100750934();
    v64(v57, v63);
    sub_100750BB4();
    sub_100750BE4();
    swift_allocObject();
    v94 = sub_100750EF4();
    v66 = v95;
    if (qword_100921888 != -1)
    {
      swift_once();
    }

    sub_10004B858(&xmmword_1009824D8, v105);
    v67 = v81;
    v106[3] = v81;
    v106[4] = &protocol witness table for LabelPlaceholder;
    v68 = sub_10000D134(v106);
    v69 = *(v66 + 16);
    v69(v68, v101, v67);
    v104 = v86;
    sub_100750434();
    v107[3] = v67;
    v107[4] = &protocol witness table for LabelPlaceholder;
    v70 = sub_10000D134(v107);
    v69(v70, v100, v67);
    v108[3] = v67;
    v108[4] = &protocol witness table for LabelPlaceholder;
    v71 = sub_10000D134(v108);
    v72 = v82;
    v69(v71, v82, v67);
    v103 = v94;
    sub_100750434();
    v109 = v96 & 1;
    v73 = [v102 traitCollection];
    v74 = v97;
    sub_10004ADF0();
    v75 = v99;
    sub_100751254();
    v37 = v76;

    (*(v98 + 8))(v74, v75);
    sub_10044C0C0(v105);
    v77 = *(v66 + 8);
    v77(v72, v67);
    v77(v100, v67);
    v77(v101, v67);
  }

  return v37;
}

double sub_10044BD70()
{
  v0 = sub_10074EAB4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  v7 = sub_10074F704();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074F474();
  sub_10044C078(&qword_1009384E8, &type metadata accessor for Ratings, &protocol conformance descriptor for ProductRatingsAndReviewsComponent);
  sub_1007468B4();
  if (!v22)
  {
    return 0.0;
  }

  v21 = v22;
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  v12 = v11;
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  v15 = sub_10007DC04();
  swift_getKeyPath();
  sub_100746914();

  sub_10074EA54();
  sub_10044C078(&unk_100925360, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v16 = sub_100754324();
  v17 = *(v1 + 8);
  v17(v3, v0);
  v17(v6, v0);
  sub_10044B250(v21, v15, v16 & 1, v12, v14);
  v19 = v18;
  swift_unknownObjectRelease();

  return v19;
}

uint64_t sub_10044C078(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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