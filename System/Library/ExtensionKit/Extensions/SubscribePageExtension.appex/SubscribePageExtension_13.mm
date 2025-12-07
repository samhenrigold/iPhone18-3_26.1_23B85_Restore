double sub_10017154C()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtwork];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkView];
    if (v2)
    {
      swift_retain_n();
      v7 = v2;
      v3 = [v0 traitCollection];
      sub_1000EAD9C(v1);
      v5 = v4;

      if (v5)
      {
      }

      else
      {
        sub_10074F364();
        sub_1007442C4();
        sub_1007433C4();
        sub_100744244();
        swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_1007441F4();

        sub_10000C8CC(v8, &unk_1009276E0, &unk_1007A5C70);
      }
    }
  }

  return result;
}

void sub_100171714(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10000C518(&qword_100926DC0, &unk_1007C0DC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_10074F164();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  sub_100171C7C(a3, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000C8CC(v9, &qword_100926DC0, &unk_1007C0DC0);
  }

  else
  {
    v32 = a1;
    v20 = *(v11 + 32);
    v20(v19, v9, v10);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v22 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtwork), v23 = Strong, , v23, v22))
    {
      sub_10074F3C4();

      v20(v16, v13, v10);
      sub_100171CEC(&qword_100926DC8, &type metadata accessor for Artwork.URLTemplate, &protocol conformance descriptor for Artwork.URLTemplate);
      v24 = sub_100753014();
      v25 = *(v11 + 8);
      v25(v16, v10);
      v25(v19, v10);
      a1 = v32;
      if ((v24 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      (*(v11 + 8))(v19, v10);
      a1 = v32;
    }
  }

  if (a1)
  {
    a1 = [a1 imageWithRenderingMode:2];
  }

  swift_beginAccess();
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = *(v26 + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkView);
    v28 = v26;
    v29 = v27;

    if (v27)
    {
      v33.value.super.isa = a1;
      v33.is_nil = 0;
      sub_100743384(v33, v30);
    }
  }
}

void sub_100171A68(uint64_t *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = *a1;
  if (sub_10074ED64())
  {

    v9 = 15.0;
  }

  else
  {
    v9 = 22.0;
  }

  sub_10074ED54();
  sub_10000C518(&unk_10092BC50, &unk_1007A6330);
  v10 = sub_1007532D4();

  v11 = 15.0;
  if ((v10 & 1) == 0)
  {
    v11 = v9;
  }

  v12 = 9.0;
  if (v10)
  {
    v12 = 12.0;
  }

  *&v13 = v12;
  *(&v13 + 1) = 0x402E000000000000;
  v14 = v12;
  v15 = xmmword_1007AB890;
  v16 = v9;
  v17 = 0x4022000000000000;
  v18 = v11;
  v19 = xmmword_1007AB770;
  v20 = xmmword_1007AB780;
  sub_1000EAEE0(v8, &v13, a7);
}

uint64_t sub_100171C3C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100171C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100926DC0, &unk_1007C0DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100171CEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100171DE8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1007417F4();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v5 collectionView];
  if (!v15)
  {
    goto LABEL_17;
  }

  v16 = v15;
  v17 = &selRef_viewSafeAreaInsetsDidChange;
  [v16 bounds];
  v18 = [v5 layoutAttributesForElementsInRect:?];
  if (!v18 || ((v19 = v18, sub_1000E5AA4(), v20 = sub_1007532A4(), v19, v20 >> 62) ? (v21 = sub_100754664()) : (v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v21))
  {

LABEL_17:
    v52 = type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout();
    v57.receiver = v5;
    v57.super_class = v52;
    objc_msgSendSuper2(&v57, "targetContentOffsetForProposedContentOffset:withScrollingVelocity:", a1, a2, a3, a4);
    return;
  }

  v22 = type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout();
  v56.receiver = v5;
  v56.super_class = v22;
  objc_msgSendSuper2(&v56, "targetContentOffsetForProposedContentOffset:withScrollingVelocity:", a1, a2, a3, a4);
  [v16 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v58.origin.x = v24;
  v58.origin.y = v26;
  v58.size.width = v28;
  v58.size.height = v30;
  Width = CGRectGetWidth(v58);
  [v5 collectionViewContentSize];
  if (a1 <= 0.0 || floor(v32) <= Width + a1)
  {
LABEL_15:

    return;
  }

  v33 = [v16 numberOfItemsInSection:0];
  if ((v33 & 0x8000000000000000) == 0)
  {
    if (v33)
    {
      v53 = a3;
      v34 = 0;
      v54 = (v11 + 8);
      v35 = 0.0;
      v55 = xmmword_1007A6580;
      do
      {
        v37 = v33;
        v38 = v17;
        sub_10000C518(&qword_1009253E0, &qword_1007A6970);
        v39 = swift_allocObject();
        *(v39 + 16) = v55;
        *(v39 + 32) = 0;
        *(v39 + 40) = v34;
        sub_1007416F4();
        isa = sub_100741704().super.isa;
        (*v54)(v14, v10);
        v41 = [v5 layoutAttributesForItemAtIndexPath:isa];

        if (!v41)
        {
          break;
        }

        v17 = v38;
        [v41 v38[472]];
        v43 = v42;
        v45 = v44;
        v47 = v46;
        v49 = v48;

        v59.origin.x = v43;
        v59.origin.y = v45;
        v59.size.width = v47;
        v59.size.height = v49;
        v50 = CGRectGetWidth(v59);
        [v5 minimumLineSpacing];
        if (v35 < a1 && v35 + v50 + v51 > a1)
        {
          break;
        }

        ++v34;
        [v5 minimumLineSpacing];
        v35 = v35 + v50 + v36;
        v33 = v37;
      }

      while (v37 != v34);
    }

    goto LABEL_15;
  }

  __break(1u);
}

id sub_100172264(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001722CC(uint64_t a1, void *a2, uint64_t a3)
{
  v124 = a3;
  v126 = a2;
  v119 = sub_1007493D4();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_10074A304();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_10092C1F0, &unk_1007A8F60);
  __chkstk_darwin(v6 - 8);
  v112 = &v106 - v7;
  v122 = sub_100752624();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v9 - 8);
  v107 = &v106 - v10;
  v11 = type metadata accessor for FlowPresentationHints(0);
  __chkstk_darwin(v11);
  v13 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100925750, &unk_1007A7C60);
  __chkstk_darwin(v14 - 8);
  v110 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v106 - v17;
  v19 = type metadata accessor for FlowDestination(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v111 = (&v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v24 = (&v106 - v23);
  __chkstk_darwin(v25);
  v27 = &v106 - v26;
  v108 = sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  v123 = sub_100752DE4();

  sub_10074EC44();
  sub_1001362FC(a1, &aBlock, v18);
  v28 = *(v20 + 48);
  v29 = v28(v18, 1, v19);
  v109 = v28;
  if (v29 == 1)
  {
    v30 = v27;
    swift_storeEnumTagMultiPayload();
    if (v28(v18, 1, v19) != 1)
    {
      sub_10000C8CC(v18, &unk_100925750, &unk_1007A7C60);
    }
  }

  else
  {
    v30 = v27;
    sub_100068B98(v18, v27);
  }

  sub_100742C54();
  v31 = *(v11 + 20);
  v125 = v13;
  v116 = v31;
  sub_100742C44();
  v32 = v126;
  v33 = [v126 presentedViewController];
  if (!v33)
  {
    goto LABEL_8;
  }

  v34 = v33;
  if ([v33 isBeingDismissed])
  {

LABEL_8:
    v35 = v32;
    goto LABEL_9;
  }

  v127 = v34;
  sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
  v48 = v34;
  sub_10000C518(&qword_100923948, &qword_1007A6B78);
  if (swift_dynamicCast())
  {
    v106 = v48;
    sub_100032CCC(v128, &aBlock);
    v49 = v30;
    v50 = *(&v131 + 1);
    v51 = v132;
    sub_10000C888(&aBlock, *(&v131 + 1));
    if ((*(v51 + 8))(v49, v50, v51))
    {
      sub_100068C18(v49, v24);
      v52 = v49;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v53 = v125;
        v54 = v123;
        v55 = v106;
        if (*v24)
        {
          v56 = sub_10000C518(&unk_100923210, &unk_1007A5C60);

          v57 = v107;
          v58 = v124;
          sub_1007526C4();
          v59 = *(v56 - 8);
          if ((*(v59 + 48))(v57, 1, v56) == 1)
          {

            sub_100068C7C(v53, type metadata accessor for FlowPresentationHints);
            sub_100068C7C(v52, type metadata accessor for FlowDestination);
            sub_10000C8CC(v57, &unk_100923960, &qword_1007A6240);
LABEL_61:
            sub_10000C620(&aBlock);
            return v54;
          }

          sub_1003C1388(v105, 1, v58, v57);

          (*(v59 + 8))(v57, v56);
          sub_100752D54();

LABEL_60:
          sub_100068C7C(v53, type metadata accessor for FlowPresentationHints);
          sub_100068C7C(v52, type metadata accessor for FlowDestination);
          goto LABEL_61;
        }
      }

      else
      {
        sub_100068C7C(v24, type metadata accessor for FlowDestination);
        v53 = v125;
        v54 = v123;
        v55 = v106;
      }

      v102 = v121;
      v103 = v120;
      v104 = v122;
      (*(v121 + 104))(v120, enum case for ActionOutcome.performed(_:), v122);
      sub_100752DB4();

      (*(v102 + 8))(v103, v104);
      goto LABEL_60;
    }

    sub_10000C620(&aBlock);
    v30 = v49;
    v80 = v124;
    v48 = v106;
  }

  else
  {
    v129 = 0;
    memset(v128, 0, sizeof(v128));
    sub_10000C8CC(v128, &unk_100923950, &unk_1007A6B80);
    v80 = v124;
  }

  sub_100744AC4();
  sub_100752764();
  sub_100752D34();
  if (sub_100173584(v48, v30, aBlock))
  {
    v95 = swift_allocObject();
    v95[2] = a1;
    v95[3] = v32;
    v96 = v123;
    v95[4] = v80;
    v95[5] = v96;
    *&v132 = sub_100173800;
    *(&v132 + 1) = v95;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v131 = sub_1000CF7B0;
    *(&v131 + 1) = &unk_100869D58;
    v97 = _Block_copy(&aBlock);
    v54 = v96;

    v98 = v32;

    [v48 dismissViewControllerAnimated:1 completion:v97];
    _Block_release(v97);

    v93 = v125;
    goto LABEL_48;
  }

  v99 = v48;
  v100 = v32;
  v101 = [v100 presentedViewController];
  if (v101)
  {
    do
    {
      v35 = v101;

      v101 = [v35 presentedViewController];
      v100 = v35;
    }

    while (v101);
  }

  else
  {
    v35 = v100;
  }

LABEL_9:
  v36 = [v32 traitCollection];
  v37 = sub_100618AD8();

  v38 = v125;
  if (v37)
  {
    v39 = [v32 traitCollection];
    v40 = sub_100477ADC(a1, v39, v124);

    if (v40)
    {
      v41 = v40;
      goto LABEL_26;
    }
  }

  else
  {
    v42 = sub_1003787A4(v32);
    if (!v42 || (*&v128[0] = v42, sub_100016C60(0, &qword_100924658, UINavigationController_ptr), sub_10000C518(&qword_100924660, &qword_1007A7C70), (swift_dynamicCast() & 1) == 0))
    {
      *&v132 = 0;
      aBlock = 0u;
      v131 = 0u;
    }

    v43 = v30;
    v44 = [v32 traitCollection];

    sub_10074EC44();
    v45 = v110;
    sub_1001362FC(a1, v128, v110);
    v46 = v109;
    if (v109(v45, 1, v19) == 1)
    {
      v47 = v111;
      swift_storeEnumTagMultiPayload();
      if (v46(v45, 1, v19) != 1)
      {
        sub_10000C8CC(v45, &unk_100925750, &unk_1007A7C60);
      }
    }

    else
    {
      v47 = v111;
      sub_100068B98(v45, v111);
    }

    v60 = sub_100742C14();
    v62 = v61;
    v63 = v112;
    sub_100742C34();
    v40 = sub_100470520(v47, v44, v60, v62, v63, &aBlock, v124, 1);

    sub_10000C8CC(v63, &qword_10092C1F0, &unk_1007A8F60);
    sub_100068C7C(v47, type metadata accessor for FlowDestination);
    v41 = v40;
    sub_10000C8CC(&aBlock, &unk_100925760, &unk_1007A8F70);
    v30 = v43;
    v38 = v125;
    if (v40)
    {
LABEL_26:
      v54 = v123;
      v64 = [v126 traitCollection];
      v65 = v113;
      sub_1006C1C84(v113);

      v66 = sub_10074A2F4();
      v68 = v67;
      (*(v114 + 8))(v65, v115);
      if ((v68 & 1) == 0)
      {
        [v41 setModalPresentationStyle:v66];
      }

      aBlock = xmmword_100931310;
      v131 = xmmword_100931320;
      v132 = xmmword_100931330;
      v133 = xmmword_100931340;
      v134 = xmmword_100931350;
      v69 = qword_100931360;
      v135 = qword_100931360;
      v70 = BYTE8(xmmword_100931330);
      if (BYTE8(xmmword_100931330) != 255)
      {
        v71 = aBlock;
        v73 = v131;
        v72 = *&v132;
        v74 = v133;
        v75 = v134;
        v76 = aBlock;
        v77 = [v41 popoverPresentationController];
        if (v77)
        {
          v78 = v77;
          if (v70)
          {
            sub_100173514(&aBlock, v128);
            v79 = v78;
            [v79 setSourceView:v71];
            [v79 setSourceRect:{*(&v71 + 1), v73, v72}];
            sub_10000C8CC(&aBlock, &unk_1009308C0, &unk_1007A8BB0);
          }

          else
          {
            [v77 setBarButtonItem:v71];
          }

          [v78 setPopoverLayoutMargins:{v74, v75}];
          [v78 setPermittedArrowDirections:v69];
        }

        else
        {
          if (qword_100921EE0 != -1)
          {
            swift_once();
          }

          v81 = sub_100752E44();
          sub_10000D0FC(v81, qword_100983318);
          sub_10000C518(&qword_100923930, &qword_1007A6B60);
          sub_100752454();
          *(swift_allocObject() + 16) = xmmword_1007A5A00;
          sub_1007523A4();
          sub_100752D14();
        }

        sub_10000C8CC(&aBlock, &unk_1009308C0, &unk_1007A8BB0);
      }

      v82 = v118;
      v83 = v117;
      v84 = v119;
      (*(v118 + 16))(v117, v38 + v116, v119);
      v85 = (*(v82 + 88))(v83, v84);
      if (v85 == enum case for FlowAnimationBehavior.infer(_:))
      {
        goto LABEL_41;
      }

      if (v85 != enum case for FlowAnimationBehavior.never(_:))
      {
        if (v85 == enum case for FlowAnimationBehavior.always(_:))
        {
LABEL_41:
          v86 = 1;
LABEL_46:
          v87 = objc_allocWithZone(type metadata accessor for PresentationContextViewController());
          v88 = v41;
          v89 = sub_1000C3C60(v88, v86);

          [v35 presentViewController:v89 animated:0 completion:0];
          v90 = v121;
          v91 = v120;
          v92 = v122;
          (*(v121 + 104))(v120, enum case for ActionOutcome.performed(_:), v122);
          sub_100752DB4();

          (*(v90 + 8))(v91, v92);
          goto LABEL_47;
        }

        (*(v82 + 8))(v83, v84);
      }

      v86 = 0;
      goto LABEL_46;
    }
  }

  (*(v121 + 104))(v120, enum case for ActionOutcome.unsupported(_:), v122);
  v54 = sub_100752D84();

LABEL_47:
  v93 = v38;
LABEL_48:
  sub_100068C7C(v93, type metadata accessor for FlowPresentationHints);
  sub_100068C7C(v30, type metadata accessor for FlowDestination);
  return v54;
}

uint64_t sub_100173514(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_1009308C0, &unk_1007A8BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100173584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068C18(a2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 39)
  {
    if (EnumCaseMultiPayload != 40 && EnumCaseMultiPayload != 41 && EnumCaseMultiPayload != 42)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 10)
  {

    v15 = *(sub_10000C518(&qword_100938DF0, &qword_1007A7C78) + 64);
    v16 = sub_1007462F4();
    (*(*(v16 - 8) + 8))(&v9[v15], v16);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 19)
  {
LABEL_9:
    sub_100068C7C(v9, type metadata accessor for FlowDestination);
LABEL_10:
    v13 = 0;
    return v13 & 1;
  }

  if (EnumCaseMultiPayload != 28)
  {
LABEL_13:
    sub_100068C7C(v9, type metadata accessor for FlowDestination);
    v13 = 1;
    return v13 & 1;
  }

  sub_1000498A8(v9, v6);
  type metadata accessor for ArticleContainerViewController();
  v11 = swift_dynamicCastClass() == 0;
  v12 = sub_10074C4A4();
  sub_10000C8CC(v6, &unk_100923970, &qword_1007A6B90);
  v13 = v11 | v12 ^ 1;
  return v13 & 1;
}

uint64_t sub_1001737B0()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_100173800()
{
  sub_1001722CC(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_100752D54();

  return result;
}

double sub_100173848(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1001738EC(void *a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if (a2[2])
  {

    swift_unknownObjectRelease();
    v12 = 0;
    v8 = 0;
LABEL_3:
    v10 = 0;
LABEL_10:
    v9 = 0;
LABEL_11:
    v7 = 0;
LABEL_12:
    v14 = 0uLL;
    v15 = 0uLL;
    goto LABEL_13;
  }

  if (!a3)
  {

    swift_unknownObjectRelease();
    v12 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  if (!a4)
  {

    swift_unknownObjectRelease();
    v12 = 0;
    v8 = 0;
    v10 = 0;
    goto LABEL_11;
  }

  if (!a5)
  {

    swift_unknownObjectRelease();
    v12 = 0;
    goto LABEL_3;
  }

  if (!a6)
  {

    v12 = 0;
    v8 = 0;
    v10 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  v14 = *a2;
  v15 = a2[1];
  v12 = a1;
LABEL_13:
  *a7 = v12;
  *(a7 + 8) = v8;
  *(a7 + 16) = v14;
  *(a7 + 32) = v15;
  *(a7 + 48) = v10;
  *(a7 + 56) = v9;
  *(a7 + 64) = v7;
}

__n128 sub_100173A80@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + qword_10092A2E8 + 32);
  result = *(v1 + qword_10092A2E8);
  v4 = *(v1 + qword_10092A2E8 + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

double sub_100173AA0(uint64_t a1)
{
  *(v1 + qword_10092A2F8) = a1;
  swift_unknownObjectRelease();
  return result;
}

__n128 sub_100173AB8@<Q0>(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *(v1 + qword_10092A2E8 + 32);
  v5 = *(v1 + qword_10092A2E8 + 16);
  v12[0] = *(v1 + qword_10092A2E8);
  v12[1] = v5;
  v13 = v4;
  v6 = swift_unknownObjectWeakLoadStrong();
  v7 = swift_unknownObjectWeakLoadStrong();
  v8 = swift_unknownObjectWeakLoadStrong();
  v9 = *(v1 + qword_10092A2F8);
  swift_unknownObjectRetain();
  sub_1001738EC(Strong, v12, v6, v7, v8, v9, v14);
  v10 = v14[3];
  *(a1 + 32) = v14[2];
  *(a1 + 48) = v10;
  *(a1 + 64) = v15;
  result = v14[1];
  *a1 = v14[0];
  *(a1 + 16) = result;
  return result;
}

void *sub_100173BB0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = sub_1001748A0(v8, v9);

  return v12;
}

id sub_100173C3C()
{
  sub_100174948();
  v0 = swift_unknownObjectRetain();

  return v0;
}

id sub_100173C74()
{
  LinkPresentationProvider.deinit();
  v0 = swift_unknownObjectRetain();

  return v0;
}

uint64_t sub_100173CD4(uint64_t a1)
{
  v2 = swift_isaMask & *v1;
  *(v1 + qword_10092A2F8) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (*(v1 + qword_10092A308))
  {
    sub_100173AB8(v10);
    type metadata accessor for FullScreenTransitionContext(255, *(v2 + 80), *(v2 + 88), v3);
  }

  else
  {
    *&v5 = sub_100173AB8(v10).n128_u64[0];
    v6 = *(v2 + 80);
    v7 = *(v2 + 88);
    if (v10[0])
    {
      [v10[8] completeTransition:{0, v5}];
    }

    type metadata accessor for FullScreenTransitionContext(255, v6, v7, v4);
  }

  v8 = sub_100754284();
  return (*(*(v8 - 8) + 8))(v10, v8);
}

void sub_100173E0C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  sub_100173CD4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_100173EAC(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + qword_10092A310;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  return result;
}

void sub_100173EC8(void *a1)
{
  v3 = swift_isaMask & *v1;
  v4 = [a1 view];
  [a1 translationInView:v4];
  v6 = v5;
  v8 = v7;

  if ([a1 state] == 1)
  {
    v9 = (v1 + qword_10092A310);
    *v9 = v6;
    v9[1] = v8;
    *(v9 + 16) = 0;
    *(v1 + qword_10092A308) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      [Strong dismissViewControllerAnimated:1 completion:0];
    }
  }

  v12 = (v1 + qword_10092A310);
  if ((*(v1 + qword_10092A310 + 16) & 1) == 0 && *(v1 + qword_10092A2F8))
  {
    v13 = *v12;
    v62 = v12[1];
    v14 = [swift_unknownObjectRetain() containerView];
    [v14 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v71.origin.x = v16;
    v71.origin.y = v18;
    v71.size.width = v20;
    v71.size.height = v22;
    MidX = CGRectGetMidX(v71);
    v72.origin.x = v16;
    v72.origin.y = v18;
    v72.size.width = v20;
    v72.size.height = v22;
    MidY = CGRectGetMidY(v72);
    v25 = v8 - v62;
    v26 = v6 - v13 + MidX;
    v27 = v25 + MidY;
    v28 = [a1 state];
    if (v28 != 3)
    {
      if (v28 == 2)
      {
        hypot(MidX - v26, MidY - v27);
        v30 = swift_unknownObjectUnownedLoadStrong();
        [v30 setCenter:{v26, v27}];

        sub_10000C518(&unk_1009259C0, &unk_1007A9270);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1007A5A00;
        aBlock = sub_100753434();
        v64 = v32;
        v70._countAndFlagsBits = 0x656C706D6F632025;
        v70._object = 0xEA00000000006574;
        sub_1007531B4(v70);
        v33 = aBlock;
        v34 = v64;
        *(v31 + 56) = &type metadata for String;
        *(v31 + 32) = v33;
        *(v31 + 40) = v34;
        sub_100754814();
      }

      type metadata accessor for FullScreenTransitionContext(255, *(v3 + 80), *(v3 + 88), v29);
      v35 = sub_100754284();
      (*(*(v35 - 8) + 8))(v69, v35);
      swift_unknownObjectRelease();
      return;
    }

    v36 = [a1 view];
    [a1 velocityInView:v36];
    v38 = v37;
    v40 = v39;

    v41 = hypot(v38, v40) / 500.0;
    v42 = fabs(v38);
    v43 = fabs(v40);
    v44 = v42 * v41;
    v45 = v43 * v41;
    if (v44 > v45)
    {
      v45 = v44;
    }

    if (v45 > 50.0)
    {
      v45 = 50.0;
    }

    if (v38 == 0.0 && v40 == 0.0)
    {
      v46 = 0.0;
      if (v43 >= v42)
      {
LABEL_17:
        v47 = v45;
        v45 = v45 * v46;
LABEL_26:
        if (v45 > v47)
        {
          v50 = v45;
        }

        else
        {
          v50 = v47;
        }

        v51 = v50 / 50.0 * 0.2;
        v52 = v26 + v45;
        v53 = v27 + v47;
        v54 = objc_opt_self();
        v55 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v56 = swift_allocObject();
        v57 = *(v3 + 80);
        *(v56 + 16) = v57;
        v58 = *(v3 + 88);
        *(v56 + 24) = v58;
        *(v56 + 32) = v55;
        *(v56 + 40) = v52;
        *(v56 + 48) = v53;
        v67 = sub_100174878;
        v68 = v56;
        aBlock = _NSConcreteStackBlock;
        v64 = 1107296256;
        v65 = sub_1000CF7B0;
        v66 = &unk_100869F18;
        v59 = _Block_copy(&aBlock);

        [v54 animateWithDuration:0x20000 delay:v59 options:0 animations:v51 completion:0.0];
        swift_unknownObjectRelease();
        _Block_release(v59);
        type metadata accessor for FullScreenTransitionContext(255, v57, v58, v60);
        v61 = sub_100754284();
        (*(*(v61 - 8) + 8))(v69, v61);
        return;
      }
    }

    else
    {
      if (v42 > v43)
      {
        v48 = v42;
      }

      else
      {
        v48 = v43;
      }

      v49 = v43 < v42;
      if (v43 < v42)
      {
        v42 = v43;
      }

      v46 = v42 / v48;
      if (!v49)
      {
        goto LABEL_17;
      }
    }

    v47 = v45 * v46;
    goto LABEL_26;
  }
}

void sub_100174438(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_unknownObjectUnownedLoadStrong();

    [v7 setCenter:{a2, a3}];
  }
}

void sub_1001744C8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100173EC8(v4);
}

id sub_100174570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FullScreenTransitionManager(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

double sub_1001745E0(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectUnownedDestroy();

  swift_unknownObjectRelease();
  return result;
}

unint64_t sub_100174698()
{
  result = qword_10092A3F8[0];
  if (!qword_10092A3F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10092A3F8);
  }

  return result;
}

void sub_1001746EC(SEL *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = [Strong view];

  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!*(v1 + qword_10092A2F0))
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v5 *a1];
}

void sub_1001747A4(uint64_t a1)
{
  sub_1001746EC(&selRef_removeGestureRecognizer_);
  swift_unknownObjectWeakAssign();
  sub_1001746EC(&selRef_addGestureRecognizer_);
}

uint64_t sub_100174808()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100174840()
{

  return _swift_deallocObject(v0, 56, 7);
}

double sub_100174888(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void *sub_1001748A0(void *a1, uint64_t a2)
{
  v4 = swift_dynamicCastUnknownClass();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  swift_unknownObjectWeakAssign();
  v6 = a1;
  sub_1001747A4(v5);

  *(v2 + qword_10092A2D8) = 1;
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_100174948()
{
  result = v0;
  *(v0 + qword_10092A2D8) = 0;
  return result;
}

uint64_t sub_1001749A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1001749E0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100174A04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100174A4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100174B08(double a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v6 = sub_100750304();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_100750B04();
  sub_100039C50(v10, a3);
  sub_10000D0FC(v10, a3);
  v11 = *a4;
  *v9 = v11;
  (*(v7 + 104))(v9, enum case for FontSource.textStyle(_:), v6);
  v16[3] = v6;
  v16[4] = &protocol witness table for FontSource;
  v12 = sub_10000D134(v16);
  (*(v7 + 16))(v12, v9, v6);
  v13 = v11;
  sub_100750B14();
  return (*(v7 + 8))(v9, v6);
}

char *sub_100174C78(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v9 - 8);
  v11 = (&v66 - v10);
  v12 = sub_10074A3F4();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10074A454();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10074A374();
  v18 = __chkstk_darwin(v17);
  (*(v20 + 104))(&v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v18);
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v13);
  sub_10074A3E4();
  sub_10074A384();
  v21 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_badgeLabel;
  sub_100745C84();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v21] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v23 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_titleLabel;
  *&v4[v23] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v24 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_callToActionLabel;
  *&v4[v24] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_tapGestureRecognizer;
  *&v4[v25] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v26 = &v4[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_selectionHandler];
  v27 = type metadata accessor for CarouselItemTextOverlay(0);
  *v26 = 0;
  *(v26 + 1) = 0;
  v70.receiver = v4;
  v70.super_class = v27;
  v28 = objc_msgSendSuper2(&v70, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v32 = v28;
  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v32 setOverrideUserInterfaceStyle:2];
  [v32 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v33 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_badgeLabel;
  v34 = qword_1009215A0;
  v35 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_badgeLabel];
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = sub_100750534();
  v37 = sub_10000D0FC(v36, qword_100981E18);
  v38 = *(v36 - 8);
  v39 = *(v38 + 16);
  v39(v11, v37, v36);
  v68 = *(v38 + 56);
  v68(v11, 0, 1, v36);
  sub_100745BA4();

  [*&v32[v33] setNumberOfLines:1];
  v40 = *&v32[v33];
  v41 = objc_opt_self();
  v42 = v40;
  v67 = v41;
  v43 = [v41 secondaryLabelColor];
  v44 = v33;
  v45 = v43;
  [v42 setTextColor:v43];

  v69 = v44;
  v46 = [*&v32[v44] layer];
  [v46 setCompositingFilter:kCAFilterPlusL];

  v47 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_titleLabel;
  v48 = qword_1009215B0;
  v49 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_titleLabel];
  if (v48 != -1)
  {
    swift_once();
  }

  v50 = sub_10000D0FC(v36, qword_100981E48);
  v39(v11, v50, v36);
  v51 = v68;
  v68(v11, 0, 1, v36);
  sub_100745BA4();

  [*&v32[v47] setNumberOfLines:2];
  v52 = *&v32[v47];
  v66 = v47;
  v53 = v67;
  v54 = [v67 labelColor];
  [v52 setTextColor:v54];

  v55 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_callToActionLabel;
  v56 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_callToActionLabel];
  *v11 = UIFontTextStyleFootnote;
  v11[1] = UIFontWeightBold;
  (*(v38 + 104))(v11, enum case for FontUseCase.preferredFontDerivative(_:), v36);
  v51(v11, 0, 1, v36);
  v57 = v56;
  v58 = UIFontTextStyleFootnote;
  sub_100745BA4();

  [*&v32[v55] setNumberOfLines:1];
  v59 = *&v32[v55];
  v60 = [v53 labelColor];
  [v59 setTextColor:v60];

  v61 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_tapGestureRecognizer;
  [*&v32[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_tapGestureRecognizer] setEnabled:0];
  v62 = *&v32[v61];
  v63 = v32;
  [v62 addTarget:v63 action:"handleSelection:"];
  v64 = *&v32[v61];
  [v64 setDelegate:v63];

  [v63 addGestureRecognizer:*&v32[v61]];
  [v63 addSubview:*&v32[v69]];
  [v63 addSubview:*&v32[v66]];
  [v63 addSubview:*&v32[v55]];
  sub_1001761EC();

  return v63;
}

uint64_t sub_1001755C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  ObjectType = swift_getObjectType();
  v58 = sub_1007507B4();
  v60 = *(v58 - 8);
  __chkstk_darwin(v58);
  v4 = &v52[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v54 = &v52[-v6];
  __chkstk_darwin(v7);
  v55 = &v52[-v8];
  __chkstk_darwin(v9);
  v56 = &v52[-v10];
  v11 = sub_10074A374();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v52[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v52[-v16];
  v18 = sub_10074A464();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v52[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v19 + 16))(v21, &v2[v22], v18);
  sub_10074A394();
  (*(v19 + 8))(v21, v18);
  v23.n128_f64[0] = (*(v12 + 104))(v14, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v11);
  sub_100176F44(v23);
  sub_100753274();
  sub_100753274();
  if (v61 == v64)
  {
    v53 = 1;
  }

  else
  {
    v53 = sub_100754754();
  }

  v24 = *(v12 + 8);
  v24(v14, v11);
  v24(v17, v11);

  sub_100750794();
  v25 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_badgeLabel];
  v26 = sub_100745C84();
  v62 = v26;
  v63 = &protocol witness table for UILabel;
  *&v61 = v25;
  v27 = swift_allocObject();
  v28 = v4;
  v29 = ObjectType;
  *(v27 + 16) = v2;
  *(v27 + 24) = v29;
  v30 = v25;
  v31 = v2;
  v32 = v54;
  sub_1007507A4();

  v33 = *(v60 + 8);
  v34 = v58;
  v33(v28, v58);
  sub_10000C620(&v61);
  v35 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_titleLabel];
  v62 = v26;
  v63 = &protocol witness table for UILabel;
  *&v61 = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = v31;
  *(v36 + 24) = v29;
  v37 = v31;
  v38 = v35;
  v39 = v55;
  sub_1007507A4();

  v33(v32, v34);
  sub_10000C620(&v61);
  v40 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_callToActionLabel];
  v62 = v26;
  v63 = &protocol witness table for UILabel;
  *&v61 = v40;
  v41 = swift_allocObject();
  v42 = ObjectType;
  *(v41 + 16) = v37;
  *(v41 + 24) = v42;
  v43 = v37;
  v44 = v40;
  v45 = v56;
  sub_1007507A4();

  v33(v39, v34);
  sub_10000C620(&v61);
  if (v53)
  {
    v62 = v34;
    v63 = &protocol witness table for VerticalStack;
    v46 = sub_10000D134(&v61);
    (*(v60 + 16))(v46, v45, v34);
    sub_1007510D4();
    v47 = sub_100751104();
    v48 = v57;
    v57[3] = v47;
    v48[4] = &protocol witness table for Center;
    sub_10000D134(v48);
    sub_100751114();
    return (v33)(v45, v34);
  }

  else
  {
    v50 = v57;
    v57[3] = v34;
    v50[4] = &protocol witness table for VerticalStack;
    v51 = sub_10000D134(v50);
    return (*(v60 + 32))(v51, v45, v34);
  }
}

uint64_t sub_100175BD4(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v23 = a7;
  v24 = a6;
  v9 = sub_10074A374();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074A464();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v14 + 16))(v16, a3 + v17, v13);
  sub_10074A394();
  (*(v14 + 8))(v16, v13);
  sub_10074A354();
  (*(v10 + 8))(v12, v9);
  sub_100750744();
  v18 = sub_100750764();
  sub_100750784();
  sub_100750784();
  if (sub_100750784() != v18)
  {
    sub_100750784();
  }

  sub_100750734();
  if (*a5 != -1)
  {
    swift_once();
  }

  v19 = sub_100750B04();
  v20 = sub_10000D0FC(v19, v24);
  v25[3] = v19;
  v25[4] = &protocol witness table for StaticDimension;
  v21 = sub_10000D134(v25);
  (*(*(v19 - 8) + 16))(v21, v20, v19);
  return sub_100750714();
}

uint64_t sub_100175E6C(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10074A374();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074A464();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v9 + 16))(v11, a3 + v12, v8);
  sub_10074A394();
  (*(v9 + 8))(v11, v8);
  sub_10074A354();
  (*(v5 + 8))(v7, v4);
  sub_100750744();
  sub_10000C518(&unk_10093D7F0, qword_1007AED00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A6580;
  v14 = sub_100750764();
  *(inited + 32) = v14;
  v15 = sub_100750774();
  *(inited + 40) = v15;
  sub_100750784();
  sub_100750784();
  if (sub_100750784() != v14)
  {
    sub_100750784();
  }

  sub_100750784();
  if (sub_100750784() != v15)
  {
    sub_100750784();
  }

  sub_100750734();
  if (qword_100920400 != -1)
  {
    swift_once();
  }

  v16 = sub_100750B04();
  v17 = sub_10000D0FC(v16, qword_10092A4C0);
  v24 = v16;
  v25 = &protocol witness table for StaticDimension;
  v18 = sub_10000D134(v23);
  v19 = *(*(v16 - 8) + 16);
  v19(v18, v17, v16);
  sub_100750714();
  if (qword_100920408 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v16, qword_10092A4D8);
  v24 = v16;
  v25 = &protocol witness table for StaticDimension;
  v21 = sub_10000D134(v23);
  v19(v21, v20, v16);
  return sub_100750724();
}

id sub_1001761EC()
{
  v1 = v0;
  v47 = sub_10074A3F4();
  v55 = *(v47 - 8);
  __chkstk_darwin(v47);
  v50 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v48 = &v45 - v4;
  __chkstk_darwin(v5);
  v45 = &v45 - v6;
  v7 = sub_10074A374();
  v53 = *(v7 - 8);
  v54 = v7;
  __chkstk_darwin(v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074A464();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v49 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v46 = &v45 - v14;
  __chkstk_darwin(v15);
  v52 = &v45 - v16;
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  v21 = *(v11 + 16);
  (v21)(v19, &v0[v20], v10);
  sub_10074A394();
  v22 = *(v11 + 8);
  v22(v19, v10);
  v23 = [v0 traitCollection];
  v24 = sub_10074A364();

  v53[1](v9, v54);
  v25 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_badgeLabel];
  v51 = v24;
  [v25 setTextAlignment:v24];
  v53 = v21;
  v54 = v20;
  v26 = &v1[v20];
  v27 = v1;
  v28 = v52;
  (v21)(v52, v26, v10);
  v29 = v45;
  sub_10074A404();
  v30 = v28;
  v31 = v10;
  v52 = (v11 + 8);
  v22(v30, v10);
  v32 = sub_10074A3C4();
  v33 = *(v55 + 8);
  v34 = v47;
  v55 += 8;
  v33(v29, v47);
  if (!v32)
  {
    v32 = [objc_opt_self() secondaryLabelColor];
  }

  [v25 setTextColor:v32];

  v35 = *&v27[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_titleLabel];
  [v35 setTextAlignment:v51];
  v36 = v46;
  v37 = v31;
  (v53)(v46, &v27[v54], v31);
  v38 = v48;
  sub_10074A404();
  v22(v36, v37);
  v39 = sub_10074A3D4();
  v33(v38, v34);
  if (!v39)
  {
    v39 = [objc_opt_self() labelColor];
  }

  [v35 setTextColor:v39];

  v40 = *&v27[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_callToActionLabel];
  [v40 setTextAlignment:v51];
  v41 = v49;
  (v53)(v49, &v27[v54], v37);
  v42 = v50;
  sub_10074A404();
  v22(v41, v37);
  v43 = sub_10074A3B4();
  v33(v42, v34);
  if (!v43)
  {
    v43 = [objc_opt_self() labelColor];
  }

  [v40 setTextColor:v43];

  return [v27 setNeedsLayout];
}

id sub_100176840()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselItemTextOverlay(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CarouselItemTextOverlay(uint64_t a1)
{
  result = qword_10092A540;
  if (!qword_10092A540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10017698C(uint64_t a1)
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

double sub_100176A38(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_selectionHandler);
  v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_selectionHandler);
  v7 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_selectionHandler + 8);
  *v5 = a1;
  v5[1] = a2;
  sub_10001B5AC(a1, a2);
  sub_10001B5AC(a1, a2);
  v8 = sub_1000164A8(v6, v7);
  v9 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_tapGestureRecognizer);
  if (a1)
  {
    v8 = sub_1000164A8(a1, a2);
  }

  [v9 setEnabled:{a1 != 0, v8}];

  return sub_1000164A8(a1, a2);
}

id sub_100176AEC(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    v5 = objc_allocWithZone(NSMutableAttributedString);
    v6 = sub_100753064();
    v3 = [v5 initWithString:v6];

    v7 = [objc_opt_self() configurationWithScale:1];
    v8 = sub_100753064();
    v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

    if (v9)
    {
      v10 = [objc_opt_self() textAttachmentWithImage:v9];
      v11 = objc_allocWithZone(NSAttributedString);
      v12 = sub_100753064();
      v13 = [v11 initWithString:v12];

      if (a3)
      {
        [v3 insertAttributedString:v13 atIndex:0];

        v14 = [objc_opt_self() attributedStringWithAttachment:v10];
        [v3 insertAttributedString:v14 atIndex:0];
      }

      else
      {
        [v3 appendAttributedString:v13];

        v14 = [objc_opt_self() attributedStringWithAttachment:v10];
        [v3 appendAttributedString:v14];
      }
    }
  }

  return v3;
}

id sub_100176D1C()
{
  v1 = v0;
  v2 = sub_10074A464();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074A474();
  v6 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v3 + 24))(&v1[v6], v5, v2);
  swift_endAccess();
  sub_1001761EC();
  (*(v3 + 8))(v5, v2);
  v7 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_badgeLabel];
  sub_10074A4D4();
  if (v8)
  {
    v9 = sub_100753064();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];

  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_titleLabel];
  sub_10074A4E4();
  if (v11)
  {
    v12 = sub_100753064();
  }

  else
  {
    v12 = 0;
  }

  [v10 setText:v12];

  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_callToActionLabel];
  v14 = sub_10074A4A4();
  v16 = sub_100176AEC(v14, v15, [v1 effectiveUserInterfaceLayoutDirection]);

  [v13 setAttributedText:v16];

  return [v1 setNeedsLayout];
}

unint64_t sub_100176F44(__n128 a1)
{
  result = qword_10092A550;
  if (!qword_10092A550)
  {
    sub_10074A374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092A550);
  }

  return result;
}

uint64_t sub_100176F9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100177054()
{
  v1 = sub_10074A3F4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10074A454();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074A374();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 104))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v7);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  sub_10074A3E4();
  sub_10074A384();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_badgeLabel;
  sub_100745C84();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v10) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_titleLabel;
  *(v0 + v12) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_callToActionLabel;
  *(v0 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_tapGestureRecognizer;
  *(v0 + v14) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v15 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_selectionHandler);
  *v15 = 0;
  v15[1] = 0;
  sub_100754644();
  __break(1u);
}

void sub_100177300(void *a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = [v3 collectionView];
  if (v7)
  {
    v8 = v7;
    if ([v7 numberOfSections] >= 1)
    {
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11[4] = sub_10017C388;
      v11[5] = v9;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 1107296256;
      v11[2] = sub_1003ED3AC;
      v11[3] = &unk_10086A188;
      v10 = _Block_copy(v11);

      [a1 animateAlongsideTransition:v10 completion:0];
      _Block_release(v10);
    }
  }
}

void sub_100177454(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10017C390;
  *(v4 + 24) = a2;
  v6[4] = sub_1000C0C28;
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10011B528;
  v6[3] = &unk_10086A1D8;
  v5 = _Block_copy(v6);

  [v3 performWithoutAnimation:v5];
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

void sub_1001775A0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1001775F4();
  }
}

id sub_1001775F4()
{
  v1 = v0;
  v2 = sub_1007417F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100923C00, qword_1007AB3D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  __chkstk_darwin(v12);
  v14 = &v20 - v13;
  v15.n128_f64[0] = sub_100177CC8();
  if (**&v0[qword_100930140] == &off_100948040)
  {
    sub_10072F12C(v14);
  }

  else
  {
    (*(v3 + 56))(v14, 1, 1, v2, v15);
  }

  v16 = qword_10092A560;
  swift_beginAccess();
  sub_10003E1A0(v14, &v0[v16]);
  result = swift_endAccess();
  if (v0[qword_10092A558] == 1)
  {
    sub_100016B4C(&v0[v16], v11, &unk_100923C00, qword_1007AB3D0);
    if ((*(v3 + 48))(v11, 1, v2) == 1)
    {
      return sub_10000C8CC(v11, &unk_100923C00, qword_1007AB3D0);
    }

    else
    {
      (*(v3 + 32))(v5, v11, v2);
      result = [v0 collectionView];
      if (result)
      {
        v18 = result;
        isa = sub_100741704().super.isa;
        [v18 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:1];

        (*(v3 + 8))(v5, v2);
        (*(v3 + 56))(v8, 1, 1, v2);
        swift_beginAccess();
        sub_10003E1A0(v8, &v1[v16]);
        return swift_endAccess();
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_10017793C(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_100177300(a5, a2, a3);
  swift_unknownObjectRelease();
}

id sub_1001779BC(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10000C518(&unk_100923C00, qword_1007AB3D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v20[-v9];
  v11 = sub_1007417F4();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewDidAppear:", a1 & 1, v13);
  if ((*(v2 + qword_10092A558) & 1) == 0)
  {
    *(v2 + qword_10092A558) = 1;
  }

  v16 = qword_10092A560;
  swift_beginAccess();
  sub_100016B4C(v2 + v16, v10, &unk_100923C00, qword_1007AB3D0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10000C8CC(v10, &unk_100923C00, qword_1007AB3D0);
  }

  (*(v12 + 32))(v15, v10, v11);
  result = [v2 collectionView];
  if (result)
  {
    v18 = result;
    isa = sub_100741704().super.isa;
    [v18 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:1];

    (*(v12 + 8))(v15, v11);
    (*(v12 + 56))(v7, 1, 1, v11);
    swift_beginAccess();
    sub_10003E1A0(v7, v2 + v16);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100177C74(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1001779BC(a3);
}

double sub_100177CC8()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_10092AB88, qword_1007B6E20);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = *&v0[qword_100930140];
  sub_100748BA4();
  sub_10017C300(&unk_100935940, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
  sub_1007450A4();
  sub_100752AE4();
  if (*(v5 + 112))
  {

    sub_100749574();
  }

  v6 = &stru_1008F2000;
  v7 = [v0 collectionView];
  [v7 reloadData];

  sub_10017C300(&qword_10092ABA8, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BasePresenter);
  if (sub_100748C04())
  {
    sub_100746BF4();
  }

  v8 = [v1 collectionView];
  v9 = &stru_1008F2000;
  if (v8)
  {
    v10 = v8;
    v11 = [v8 collectionViewLayout];

    if (v11)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v12;
        v14 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v15 = (v13 + OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver);
        v16 = *(v13 + OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver);
        v17 = v15[1];
        *v15 = sub_10017C348;
        v15[1] = v14;

        v18 = v17;
        v9 = &stru_1008F2000;
        sub_1000164A8(v16, v18);

        v6 = &stru_1008F2000;
      }

      else
      {
      }
    }
  }

  v19 = [v1 v6[40].name];
  if (v19 && (v20 = v19, v21 = [v19 v9[147].name], v20, v21))
  {
    type metadata accessor for BaseCollectionCompositionalLayout();
    v22 = swift_dynamicCastClass();
    if (!v22)
    {
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_1007416B4();
  (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
  sub_10017BB74(v4);

  sub_10000C8CC(v4, &qword_10092AB88, qword_1007B6E20);
  sub_100748BF4();

  return result;
}

double sub_100178024(void *a1)
{
  v1 = a1;
  sub_100178080();
  v3 = v2;

  return v3;
}

void sub_100178080()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  [v0 pageContainerSize];
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = sub_1007537B4();

  if ((v6 & 1) != 0 && v4 > 672.0)
  {
    sub_1004C4774();
  }

  else
  {
    v7.receiver = v1;
    v7.super_class = ObjectType;
    objc_msgSendSuper2(&v7, "pageMarginInsets");
  }
}

uint64_t type metadata accessor for PrivacyDetailViewController(uint64_t a1)
{
  result = qword_10092A590;
  if (!qword_10092A590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100178214(uint64_t a1)
{
  sub_10003DEB8(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1001782B0(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t))
{
  v4 = v3;
  v63 = a3;
  v7 = sub_10074E984();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v55 - v12;
  __chkstk_darwin(v14);
  v16 = v55 - v15;
  __chkstk_darwin(v17);
  v19 = v55 - v18;
  sub_10074E994();
  v20 = sub_10034E47C();
  if (!v20)
  {
LABEL_67:
    (*(v8 + 8))(v19, v7);
    return;
  }

  v57 = v13;
  v58 = v10;
  v60 = v21;
  v61 = v20;
  sub_100748BA4();
  sub_10017C300(&unk_100935940, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
  if (sub_100745064())
  {
    v62 = v8;
    if (sub_1007450A4() <= a2 || (sub_100745054() & 1) != 0)
    {
      v56 = 0;
    }

    else
    {
      v22 = sub_100745094();
      if (sub_1003C9404(a2))
      {
        v23 = 1;
      }

      else
      {
        v23 = v22;
      }

      v56 = v23;
    }

    v8 = v62;
  }

  else
  {
    v56 = 0;
  }

  v62 = a1;
  v24 = sub_10074E9C4();
  v25 = *(v8 + 16);
  v25(v16, v19, v7);
  v59 = *(v8 + 88);
  v26 = v59(v16, v7);
  if (v26 == enum case for Shelf.ContentType.smallLockup(_:) || v26 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_17;
  }

  if (v26 == enum case for Shelf.ContentType.largeLockup(_:))
  {
LABEL_19:
    v28 = 1;
    goto LABEL_20;
  }

  v49 = v26 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v26 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v49 || v26 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_17;
  }

  if (v26 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    goto LABEL_19;
  }

  if (v26 == enum case for Shelf.ContentType.editorialCard(_:) || v26 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_17;
  }

  v28 = 1;
  if (v26 == enum case for Shelf.ContentType.brick(_:) || v26 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    goto LABEL_20;
  }

  if (v26 == enum case for Shelf.ContentType.reviews(_:) || v26 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v26 == enum case for Shelf.ContentType.framedVideo(_:) || v26 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v26 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v26 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_17;
  }

  if (v26 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    goto LABEL_20;
  }

  if (v26 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v26 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v26 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v26 == enum case for Shelf.ContentType.posterLockup(_:) || v26 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
LABEL_17:
    v28 = v24;
    goto LABEL_20;
  }

  if (v26 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v28 = v24;
    if (v26 != enum case for Shelf.ContentType.appPromotion(_:))
    {
      (*(v8 + 8))(v16, v7);
      v28 = 0;
    }
  }

LABEL_20:
  v29 = *&v4[qword_100930140];
  v30 = v63;
  [v63 bounds];
  [v30 safeAreaInsets];
  sub_100753BA4();
  v32 = v31.n128_f64[0];
  v34 = v33;
  if ((v28 & 1) != 0 || (v63 = v25, (v35 = sub_10034E47C()) == 0) || (v37 = v35, v38 = v36, [v4 pageMarginInsets], v40 = (*(v38 + 32))(0, v4, v37, v38, v39), v32 = v32 - (v40 + v41), v42 = objc_msgSend(v4, "traitCollection"), v43 = *v29, v55[0] = *(*v29 + 696), v55[1] = v43 + 696, LOBYTE(v37) = (v55[0])(v19, v42), v42, (v37 & 1) == 0))
  {
LABEL_64:
    v31.n128_u64[0] = 0;
    if (v32 > 0.0)
    {
      v31.n128_f64[0] = v32;
    }

    (*(v60 + 24))(v62, v28 & 1, v4, *&v4[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_artworkLoader], v31, v34);
    goto LABEL_67;
  }

  v44 = v57;
  v63(v57, v19, v7);
  v45 = v59(v44, v7);
  v46 = 0;
  if (v45 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v45 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    (*(v8 + 8))(v57, v7);
    v47 = [v4 traitCollection];
    v48 = (v55[0])(v19, v47);

    if (v48)
    {
      v46 = sub_10017B12C(v56, v4, v19);
    }

    else
    {
      v46 = 1;
    }
  }

  v51 = v58;
  v63(v58, v19, v7);
  v52 = v59(v51, v7);
  if (v52 == enum case for Shelf.ContentType.annotation(_:) || v52 == enum case for Shelf.ContentType.productCapability(_:) || v52 == enum case for Shelf.ContentType.productPageLink(_:) || v52 == enum case for Shelf.ContentType.privacyType(_:))
  {
    if (!__OFSUB__(v46, 1))
    {
      v54 = v32 + (v46 - 1) * -30.0;
      goto LABEL_63;
    }

    __break(1u);
  }

  else
  {
    v53 = (*(v8 + 8))(v58, v7);
    v31.n128_f64[0] = sub_10016D1E4(v53);
    if (!__OFSUB__(v46, 1))
    {
      v54 = v32 - v31.n128_f64[0] * (v46 - 1);
LABEL_63:
      v32 = v54 / v46;
      goto LABEL_64;
    }
  }

  __break(1u);
}

void *sub_100178ABC()
{
  v1 = sub_1007457B4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v5);
  v8 = (&v34 - v7);
  v9 = _swiftEmptyArrayStorage;
  v35 = _swiftEmptyArrayStorage;
  v10 = *(v0 + qword_100930140);
  v11 = (*((swift_isaMask & *v0) + 0x4D8))(v6);
  v12 = sub_10017C0B8(v11);
  if (v12)
  {
    v13 = v12;
    sub_100753284();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v9 = v35;
  }

  v14 = sub_10017B670(v0, v10);
  if (v14)
  {
    v15 = v14;
    sub_100753284();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v9 = v35;
  }

  sub_100748BA4();
  sub_10017C300(&unk_100935940, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
  if (sub_1007450A4() < 1)
  {
    goto LABEL_14;
  }

  sub_100745074();
  if ((*(v2 + 88))(v8, v1) != enum case for ShelfBackground.color(_:))
  {
    (*(v2 + 8))(v8, v1);
    goto LABEL_14;
  }

  (*(v2 + 96))(v8, v1);

  v16 = *(sub_10000C518(&unk_100930940, qword_1007A9000) + 48);
  v17 = sub_100748E34();
  (*(*(v17 - 8) + 8))(v8 + v16, v17);
  v18 = objc_opt_self();
  v19 = [v18 fractionalWidthDimension:1.0];
  v20 = [v18 absoluteDimension:2000.0];
  v21 = [objc_opt_self() sizeWithWidthDimension:v19 heightDimension:v20];

  v22 = sub_100753064();
  v23 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v21 elementKind:v22 alignment:1 absoluteOffset:{0.0, -2000.0}];

  [v23 setExtendsBoundary:0];
  v8 = v23;
  sub_100753284();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    sub_100753344();

    v9 = v35;
LABEL_14:
    if (sub_1007450A4() < 1)
    {
      break;
    }

    if (!__OFSUB__(sub_1007450A4(), 1))
    {
      sub_100745074();
      if ((*(v2 + 88))(v4, v1) == enum case for ShelfBackground.color(_:))
      {
        (*(v2 + 96))(v4, v1);

        v24 = *(sub_10000C518(&unk_100930940, qword_1007A9000) + 48);
        v25 = sub_100748E34();
        (*(*(v25 - 8) + 8))(v4 + v24, v25);
        v26 = objc_opt_self();
        v27 = [v26 fractionalWidthDimension:1.0];
        v28 = [v26 absoluteDimension:2000.0];
        v29 = [objc_opt_self() sizeWithWidthDimension:v27 heightDimension:v28];

        v30 = sub_100753064();
        v31 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v29 elementKind:v30 alignment:5 absoluteOffset:{0.0, 2000.0}];

        [v31 setExtendsBoundary:0];
        v32 = v31;
        sub_100753284();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();

        return v35;
      }

      else
      {
        (*(v2 + 8))(v4, v1);
      }

      return v9;
    }

    __break(1u);
LABEL_23:
    sub_100753304();
  }

  return v9;
}

void sub_1001791D4()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v9 = [v1 collectionViewLayout];

    if (v9)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = v3;
        v5 = v9;
        v6 = [v4 configuration];
        sub_100016C60(0, &unk_100930230, UICollectionViewCompositionalLayoutConfiguration_ptr);
        v7 = sub_100754244();

        sub_100178ABC();
        sub_100016C60(0, &qword_10092E460, NSCollectionLayoutBoundarySupplementaryItem_ptr);
        isa = sub_100753294().super.isa;

        [v7 setBoundarySupplementaryItems:isa];

        [v4 setConfiguration:v7];
      }
    }
  }
}

void sub_100179358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = sub_1007417F4();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007416B4();
  v55 = *(v9 - 8);
  v56 = v9;
  __chkstk_darwin(v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_10092AB88, qword_1007B6E20);
  *&v13 = __chkstk_darwin(v12 - 8).n128_u64[0];
  v54 = &v46 - v14;
  v15 = [v3 collectionView];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 collectionViewLayout];

    [v17 invalidateLayout];
  }

  v53 = *&v4[qword_100930140];
  v18 = [v4 collectionView];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 collectionViewLayout];

    if (v20)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        goto LABEL_8;
      }
    }

    v18 = 0;
  }

LABEL_8:
  v52 = v18;
  v21 = *(a1 + 16);
  v22 = _swiftEmptyArrayStorage;
  if (v21)
  {
    v47 = v11;
    v48 = a2;
    v49 = a3;
    v50 = v4;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10001E5D4(0, v21, 0);
    v22 = aBlock[0];
    v23 = v57 + 16;
    v57 = *(v57 + 16);
    v24 = *(v23 + 64);
    v51 = a1;
    v25 = a1 + ((v24 + 32) & ~v24);
    v26 = *(v23 + 56);
    v27 = (v23 - 8);
    do
    {
      v28 = v58;
      v29 = v59;
      (v57)(v58, v25, v59);
      v30 = sub_100741784();
      (*v27)(v28, v29);
      aBlock[0] = v22;
      v32 = v22[2];
      v31 = v22[3];
      if (v32 >= v31 >> 1)
      {
        sub_10001E5D4((v31 > 1), v32 + 1, 1);
        v22 = aBlock[0];
      }

      v22[2] = v32 + 1;
      v22[v32 + 4] = v30;
      v25 += v26;
      --v21;
    }

    while (v21);
    v4 = v50;
    a1 = v51;
    a2 = v48;
    a3 = v49;
    v11 = v47;
  }

  sub_10017C300(&qword_100930200, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  v33 = v56;
  sub_100754394();
  v34 = v22[2];
  v35 = v11;
  if (v34)
  {
    v36 = v22 + 4;
    do
    {
      v37 = *v36++;
      aBlock[6] = v37;
      sub_100754344();
      --v34;
    }

    while (v34);
  }

  v39 = v54;
  v38 = v55;
  (*(v55 + 32))(v54, v35, v33);
  (*(v38 + 56))(v39, 0, 1, v33);
  sub_10017BB74(v39);

  sub_10000C8CC(v39, &qword_10092AB88, qword_1007B6E20);
  v40 = [v4 collectionView];
  if (v40)
  {
    v41 = v40;
    v42 = swift_allocObject();
    v42[2] = a2;
    v42[3] = a3;
    v42[4] = v4;
    v42[5] = a1;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_10017BFF8;
    *(v43 + 24) = v42;
    aBlock[4] = sub_100045E0C;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10011B528;
    aBlock[3] = &unk_10086A098;
    v44 = _Block_copy(aBlock);
    v45 = v4;

    [v41 performBatchUpdates:v44 completion:0];
    _Block_release(v44);
  }
}

double sub_1001798B4(uint64_t a1)
{
  if (qword_100921ED8 != -1)
  {
    swift_once();
  }

  v2 = sub_100752E44();
  sub_10000D0FC(v2, qword_100983300);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5620;
  v8 = sub_10000C518(&qword_10092AB98, qword_1007AEE08);
  v7[0] = v1;
  v3 = v1;
  sub_100752424();
  sub_10000C8CC(v7, &unk_100923520, &qword_1007A5A70);
  sub_1007523A4();
  swift_getErrorValue();
  v8 = v6;
  v4 = sub_10000D134(v7);
  (*(*(v6 - 8) + 16))(v4);
  sub_100752444();
  sub_10000C8CC(v7, &unk_100923520, &qword_1007A5A70);
  sub_100752D04();

  return result;
}

void sub_100179AE4()
{
  v1 = *&v0[qword_100930140];

  *(v1 + 80) = 1;

  sub_1001791D4();
}

void sub_100179B44()
{
  v1 = [v0 collectionView];
  sub_10017A020(v1);

  sub_1001791D4();
}

void sub_100179C8C(uint64_t a1)
{
  v12 = [v1 collectionView];
  if (v12)
  {
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    if (v5)
    {
      while (1)
      {
        v8 = v7;
LABEL_10:
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = *(*(a1 + 48) + ((v8 << 9) | (8 * v9)));
        sub_100748BA4();
        sub_10017C300(&unk_100935940, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
        v11 = sub_100745154();
        sub_1001782B0(v11, v10, v12);

        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return;
      }

      if (v8 >= v6)
      {
        break;
      }

      v5 = *(a1 + 56 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        goto LABEL_10;
      }
    }
  }
}

double sub_100179E44(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_100725158();
    sub_100179C8C(v4);
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v7 = v5;

    sub_100748BA4();
    sub_10017C300(&qword_10092ABA8, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BasePresenter);
    v8 = sub_100748C04();

    if (v8)
    {
      sub_100746BF4();
    }
  }

  return result;
}

void sub_100179F68(void (*a1)(void), uint64_t a2, void *a3, uint64_t a4)
{
  a1();
  v5 = [a3 collectionView];
  if (v5)
  {
    v6 = v5;
    sub_1007417F4();
    isa = sub_100753294().super.isa;
    [v6 deleteItemsAtIndexPaths:isa];
  }
}

void sub_10017A020(void *a1)
{
  v3 = sub_1007416B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  *(v1 + 80) = 0;
  if (a1)
  {
    v28 = a1;
    v13 = [v28 numberOfSections];
    sub_100748BA4();
    sub_10017C300(&unk_100935940, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
    v14 = sub_1007450A4();
    if (v13 < v14)
    {
      v15 = v14;
      if (__OFSUB__(v14, v13))
      {
        __break(1u);
        goto LABEL_13;
      }

      if (v14 - v13 >= 1)
      {
        v27 = v4;
        sub_10017C300(&qword_100930200, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
        sub_100754394();
        do
        {
          aBlock[6] = v13;
          sub_100754344();
          ++v13;
        }

        while (v15 != v13);
        v16 = v27;
        v17 = *(v27 + 32);
        v17(v12, v9, v3);
        v18 = objc_opt_self();
        (*(v16 + 16))(v6, v12, v3);
        v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = v28;
        v17((v20 + v19), v6, v3);
        v21 = swift_allocObject();
        *(v21 + 16) = sub_10017C29C;
        *(v21 + 24) = v20;
        aBlock[4] = sub_1000C0C28;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10011B528;
        aBlock[3] = &unk_10086A110;
        v22 = _Block_copy(aBlock);
        v23 = v28;

        [v18 performWithoutAnimation:v22];
        _Block_release(v22);

        (*(v16 + 8))(v12, v3);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    v25 = v28;
  }
}

uint64_t sub_10017A41C(uint64_t a1, uint64_t a2)
{
  v45 = sub_10000C518(&qword_100930BC0, &qword_1007C6B40);
  v41 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v33[-v3];
  v4 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v4 - 8);
  v43 = &v33[-v5];
  v48 = sub_100752914();
  v6 = *(v48 - 8);
  __chkstk_darwin(v48);
  v39 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v38 = &v33[-v9];
  v10 = sub_100741654();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v47 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10000C518(&unk_100940650, &unk_1007AEDF8);
  __chkstk_darwin(v13);
  v15 = &v33[-v14];
  sub_100741664();
  swift_beginAccess();
  sub_1007416B4();
  sub_10017C300(&qword_10092AB90, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  v46 = (v11 + 8);
  v36 = v6 + 16;
  v35 = v6 + 32;
  v34 = (v6 + 8);
  v42 = (v6 + 56);
  v40 = v6;
  ++v41;
  v37 = v10;
  while (1)
  {
    v18 = v47;
    sub_1007534F4();
    sub_10017C300(&unk_100940660, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
    v19 = sub_100753014();
    (*v46)(v18, v10);
    if (v19)
    {
      break;
    }

    v20 = sub_100753514();
    v22 = *v21;
    v20(v49, 0);
    sub_100753504();
    v23 = *(a2 + 56);
    if (*(v23 + 16))
    {
      v24 = sub_100412104(v22);
      if (v25)
      {
        v26 = v39;
        v27 = v40;
        v28 = *(v23 + 56) + *(v40 + 72) * v24;
        v29 = v48;
        (*(v40 + 16))(v39, v28, v48);
        v30 = *(v27 + 32);
        v31 = v38;
        v30(v38, v26, v29);
        if (*(a2 + 112))
        {

          sub_100749564();
        }

        (*v34)(v31, v48);
        v10 = v37;
      }
    }

    v16 = v43;
    (*v42)(v43, 1, 1, v48);
    swift_beginAccess();
    sub_10025B470(v16, v22);
    swift_endAccess();
    v50 = v22;
    sub_1007544E4();
    v17 = v44;
    sub_100752EE4();
    sub_100752AD4();
    (*v41)(v17, v45);
  }

  return sub_10000C8CC(v15, &unk_100940650, &unk_1007AEDF8);
}

uint64_t sub_10017A9B4(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v21 = sub_10000C518(&qword_100930BC0, &qword_1007C6B40);
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v20 = &v19 - v3;
  v23 = sub_100741654();
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_100940650, &unk_1007AEDF8);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  sub_100741664();
  sub_1007416B4();
  sub_10017C300(&qword_10092AB90, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  v10 = (v4 + 8);
  for (i = (v2 + 8); ; (*i)(v17, v21))
  {
    sub_1007534F4();
    sub_10017C300(&unk_100940660, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
    v12 = v23;
    v13 = sub_100753014();
    (*v10)(v6, v12);
    if (v13)
    {
      break;
    }

    v14 = sub_100753514();
    v16 = *v15;
    v14(v24, 0);
    sub_100753504();
    v24[6] = v16;
    sub_1007544E4();
    v17 = v20;
    sub_100752EE4();
    sub_100752AD4();
  }

  return sub_10000C8CC(v9, &unk_100940650, &unk_1007AEDF8);
}

uint64_t sub_10017ACF8()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = sub_100752914();
  v40 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v11 = *(v0 + 16);
  v12 = sub_100748BA4();
  v44 = sub_10017C300(&unk_100935940, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
  result = sub_1007450A4();
  if (result < 0)
  {
    goto LABEL_21;
  }

  if (result)
  {
    v14 = 0;
    v42 = result;
    v43 = (v40 + 48);
    v41 = (v40 + 32);
    v38 = v4;
    v39 = (v40 + 16);
    v33 = v40 + 40;
    v34 = (v40 + 8);
    v36 = v11;
    v37 = v10;
    v35 = v12;
    do
    {
      sub_100745154();
      sub_10074EAC4();
      if ((*v43)(v4, 1, v5) == 1)
      {

        sub_10000C8CC(v4, &unk_100925380, qword_1007A8E40);
      }

      else
      {
        v15 = *v41;
        (*v41)(v10, v4, v5);
        swift_beginAccess();
        v16 = v7;
        v17 = v5;
        (*v39)(v7, v10, v5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = *(v1 + 56);
        v19 = v45;
        v20 = v1;
        *(v1 + 56) = 0x8000000000000000;
        v22 = sub_100412104(v14);
        v23 = v19[2];
        v24 = (v21 & 1) == 0;
        v25 = v23 + v24;
        if (__OFADD__(v23, v24))
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          result = sub_1007547B4();
          __break(1u);
          return result;
        }

        v26 = v21;
        if (v19[3] >= v25)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100675E4C();
          }
        }

        else
        {
          sub_100671DD0(v25, isUniquelyReferenced_nonNull_native);
          v27 = sub_100412104(v14);
          if ((v26 & 1) != (v28 & 1))
          {
            goto LABEL_22;
          }

          v22 = v27;
        }

        v7 = v16;
        v29 = v45;
        if (v26)
        {
          v5 = v17;
          (*(v40 + 40))(v45[7] + *(v40 + 72) * v22, v16, v17);
        }

        else
        {
          v45[(v22 >> 6) + 8] |= 1 << v22;
          *(v29[6] + 8 * v22) = v14;
          v5 = v17;
          v15((v29[7] + *(v40 + 72) * v22), v16, v17);
          v30 = v29[2];
          v31 = __OFADD__(v30, 1);
          v32 = v30 + 1;
          if (v31)
          {
            goto LABEL_20;
          }

          v29[2] = v32;
        }

        v1 = v20;
        *(v20 + 56) = v29;

        swift_endAccess();

        v10 = v37;
        (*v34)(v37, v5);
        v4 = v38;
      }

      ++v14;
      result = v42;
    }

    while (v42 != v14);
  }

  return result;
}

uint64_t sub_10017B12C(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = a2;
  v5 = sub_10074E984();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = v6[2];
  v13(&v29 - v11, a3, v5, v10);
  v14 = v6[11];
  v15 = v14(v12, v5);
  result = 1;
  if (v15 != enum case for Shelf.ContentType.artwork(_:) && v15 != enum case for Shelf.ContentType.ribbonBar(_:) && v15 != enum case for Shelf.ContentType.ribbonFlow(_:) && v15 != enum case for Shelf.ContentType.paragraph(_:) && v15 != enum case for Shelf.ContentType.footnote(_:) && v15 != enum case for Shelf.ContentType.titledParagraph(_:) && v15 != enum case for Shelf.ContentType.reviewsContainer(_:) && v15 != enum case for Shelf.ContentType.reviewSummary(_:) && v15 != enum case for Shelf.ContentType.editorialLink(_:) && v15 != enum case for Shelf.ContentType.quote(_:) && v15 != enum case for Shelf.ContentType.framedArtwork(_:) && v15 != enum case for Shelf.ContentType.screenshots(_:) && v15 != enum case for Shelf.ContentType.appShowcase(_:) && v15 != enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) && v15 != enum case for Shelf.ContentType.linkableText(_:) && v15 != enum case for Shelf.ContentType.framedVideo(_:) && v15 != enum case for Shelf.ContentType.productDescription(_:) && v15 != enum case for Shelf.ContentType.banner(_:) && v15 != enum case for Shelf.ContentType.roundedButton(_:) && v15 != enum case for Shelf.ContentType.titledButtonStack(_:) && v15 != enum case for Shelf.ContentType.smallStoryCard(_:) && v15 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v15 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v15 != enum case for Shelf.ContentType.upsellBreakout(_:) && v15 != enum case for Shelf.ContentType.smallBreakout(_:) && v15 != enum case for Shelf.ContentType.arcadeFooter(_:) && v15 != enum case for Shelf.ContentType.editorialQuote(_:) && v15 != enum case for Shelf.ContentType.gameCenterReengagement(_:) && v15 != enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) && v15 != enum case for Shelf.ContentType.preorderDisclaimer(_:) && v15 != enum case for Shelf.ContentType.privacyHeader(_:) && v15 != enum case for Shelf.ContentType.privacyFooter(_:) && v15 != enum case for Shelf.ContentType.privacyCategory(_:) && v15 != enum case for Shelf.ContentType.privacyDefinition(_:) && v15 != enum case for Shelf.ContentType.heroCarousel(_:) && v15 != enum case for Shelf.ContentType.unifiedMessage(_:))
  {
    v29 = a1;
    v17 = v6[1];
    v17(v12, v5);
    (v13)(v8, a3, v5);
    v18 = v14(v8, v5);
    if (v18 != enum case for Shelf.ContentType.annotation(_:) && v18 != enum case for Shelf.ContentType.productCapability(_:) && v18 != enum case for Shelf.ContentType.productPageLink(_:))
    {
      if (v18 == enum case for Shelf.ContentType.privacyType(_:))
      {
        v19 = v30;
        [v30 pageContainerSize];
        v21 = v20;
        JUScreenClassGetPortraitWidth();
        if (v21 >= v22)
        {
          [v19 pageContainerSize];
          v24 = v23;
          [v19 pageContainerSize];
          if (v24 >= v25)
          {
            if (v29 <= 2)
            {
              return 2;
            }

            else
            {
              return 3;
            }
          }
        }
      }

      else
      {
        v17(v8, v5);
      }

      return 2;
    }

    [v30 pageContainerSize];
    v27 = v26;
    JUScreenClassGetPortraitWidth();
    if (v28 > v27)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

id sub_10017B670(void *a1, uint64_t a2)
{
  if (*(a2 + 80) != 1)
  {
    return 0;
  }

  v2 = [a1 traitCollection];
  if (qword_100921718 != -1)
  {
    swift_once();
  }

  v3 = sub_100750B04();
  sub_10000D0FC(v3, qword_1009820C8);
  sub_100751034();
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007A5CF0;
  *(v4 + 32) = v2;
  v5 = v2;
  v6 = sub_100751044();
  sub_100750544();
  v8 = v7;

  v9 = objc_opt_self();
  v10 = [v9 fractionalWidthDimension:1.0];
  v11 = [v9 absoluteDimension:v8];
  v12 = [objc_opt_self() sizeWithWidthDimension:v10 heightDimension:v11];

  v13 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v12 elementKind:UICollectionElementKindSectionFooter alignment:5];
  return v13;
}

void sub_10017B858(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100752AC4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10092A558) = 0;
  v10 = qword_10092A560;
  v11 = sub_1007417F4();
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  type metadata accessor for PrivacyDetailDataSource(0);
  swift_allocObject();
  swift_retain_n();
  v12 = sub_100478468();

  v13 = sub_10046EA4C(a1, v12, a2);
  sub_10017C300(&qword_10092ABA0, type metadata accessor for PrivacyDetailViewController, &unk_1007AEDA0);
  v14 = v13;

  v15 = v14;
  sub_10074AB24();
  v15[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle] = 1;
  v16 = *&v15[OBJC_IVAR____TtC22SubscribePageExtension30UberedCollectionViewController_uber];
  v17 = [v15 navigationItem];
  v18 = v17;
  if (v16)
  {
    v19 = 2;
  }

  else
  {
    v19 = 3;
  }

  [v17 setLargeTitleDisplayMode:v19];

  v20 = v15;
  sub_10074AB34();
  v22 = v21;

  if (v22)
  {
    v23 = sub_100753064();
  }

  else
  {
    v23 = 0;
  }

  [v20 setTitle:v23];

  v24 = [v20 view];
  if (v24)
  {
    memset(v25, 0, sizeof(v25));
    sub_100752A84();
    sub_10000C8CC(v25, &unk_100923520, &qword_1007A5A70);
    sub_100753C74();

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10017BB74(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C518(&qword_10092AB88, qword_1007B6E20);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v10 = sub_1007416B4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v23 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v21 - v14;
  v24 = a1;
  sub_100016B4C(a1, v9, &qword_10092AB88, qword_1007B6E20);
  v16 = *(v11 + 48);
  if (v16(v9, 1, v10) == 1)
  {
    sub_10000C8CC(v9, &qword_10092AB88, qword_1007B6E20);
    if (v2[14])
    {

      sub_100749574();
    }

    swift_beginAccess();
    v2[7] = _swiftEmptyDictionarySingleton;
  }

  else
  {
    v17 = (*(v11 + 32))(v15, v9, v10);
    v21[1] = v21;
    v26[0] = v2[3];
    __chkstk_darwin(v17);
    v22 = v16;
    v21[-2] = v15;
    v21[-1] = v2;

    sub_10000C518(&qword_100925350, &qword_1007AEDF0);
    v21[0] = 0;
    sub_10017C038();
    v16 = v22;
    sub_100752474();

    (*(v11 + 8))(v15, v10);
  }

  sub_10017ACF8();
  sub_100016B4C(v24, v6, &qword_10092AB88, qword_1007B6E20);
  if (v16(v6, 1, v10) == 1)
  {
    return sub_10000C8CC(v6, &qword_10092AB88, qword_1007B6E20);
  }

  v19 = v23;
  v20 = (*(v11 + 32))(v23, v6, v10);
  v25 = v2[3];
  __chkstk_darwin(v20);
  v21[-2] = v19;
  v21[-1] = v2;

  sub_10000C518(&qword_100925350, &qword_1007AEDF0);
  sub_10017C038();
  sub_100752474();

  return (*(v11 + 8))(v19, v10);
}

uint64_t sub_10017BFB8()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_10017C004(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_10017C038()
{
  result = qword_100925358;
  if (!qword_100925358)
  {
    sub_10000C724(&qword_100925350, &qword_1007AEDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100925358);
  }

  return result;
}

id sub_10017C0B8(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  v2 = objc_opt_self();
  v3 = [v2 fractionalWidthDimension:1.0];
  v4 = [v2 absoluteDimension:a1];
  v5 = [objc_opt_self() sizeWithWidthDimension:v3 heightDimension:v4];

  v6 = sub_100753064();
  v7 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v5 elementKind:v6 alignment:1];

  return v7;
}

uint64_t sub_10017C1D8()
{
  v1 = sub_1007416B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10017C29C()
{
  v1 = *(sub_1007416B4() - 8);
  v2 = ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);

  sub_1005D65C4(v3, v2);
}

uint64_t sub_10017C300(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10017C350()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10017C5B8()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v2 = [v0 contentView];
  sub_100009D34();
  sub_1007477B4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32ProductRatingsCollectionViewCell_productRatingView];
  if (v11)
  {
    [v11 setFrame:{v4, v6, v8, v10}];
  }

  result = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32ProductRatingsCollectionViewCell_productNoRatingsView];
  if (result)
  {
    return [result setFrame:{v4, v6, v8, v10}];
  }

  return result;
}

void sub_10017C6E4(double a1, double a2)
{
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32ProductRatingsCollectionViewCell_productNoRatingsView];
  if (v3)
  {
    [*(v3 + OBJC_IVAR____TtC22SubscribePageExtension20ProductNoRatingsView_statusLabel) measurementsWithFitting:v2 in:{a1, a2}];
  }

  else
  {
    v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32ProductRatingsCollectionViewCell_productRatingView];
    if (v4)
    {
      v5 = v4;
      v6 = [v2 traitCollection];
      sub_100750B44();
    }
  }
}

id sub_10017C808(uint64_t a1, char a2)
{
  v3 = v2;
  sub_10074F464();
  if (v6)
  {
    v7 = OBJC_IVAR____TtC22SubscribePageExtension32ProductRatingsCollectionViewCell_productNoRatingsView;
    v8 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32ProductRatingsCollectionViewCell_productNoRatingsView];
    if (v8)
    {
      v9 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32ProductRatingsCollectionViewCell_productNoRatingsView];
    }

    else
    {
      v12 = [objc_allocWithZone(type metadata accessor for ProductNoRatingsView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v13 = [v2 contentView];
      [v13 addSubview:v12];

      v14 = *&v2[v7];
      *&v2[v7] = v12;
      v9 = v12;

      v8 = 0;
    }

    v15 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension20ProductNoRatingsView_statusLabel];
    v16 = v8;
    v17 = sub_100753064();

    [v15 setText:v17];

    [v9 setNeedsLayout];
  }

  else
  {
    v10 = OBJC_IVAR____TtC22SubscribePageExtension32ProductRatingsCollectionViewCell_productRatingView;
    v11 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32ProductRatingsCollectionViewCell_productRatingView];
    if (v11)
    {
      v9 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32ProductRatingsCollectionViewCell_productRatingView];
    }

    else
    {
      v18 = [objc_allocWithZone(type metadata accessor for ProductRatingsView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v19 = [v3 contentView];
      [v19 addSubview:v18];

      v20 = *&v3[v10];
      *&v3[v10] = v18;
      v9 = v18;

      v11 = 0;
    }

    v21 = v11;
    sub_1001685D0(a1, a2 & 1);
  }

  return [v3 setNeedsLayout];
}

uint64_t type metadata accessor for ProductRatingsCollectionViewCell(uint64_t a1)
{
  result = qword_10092ABE8;
  if (!qword_10092ABE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10017CAAC(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_10017CB48()
{
  v1 = v0;
  v2 = sub_10074A8A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074A8C4();
  v71 = *(v6 - 8);
  v72 = v6;
  __chkstk_darwin(v6);
  v70 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920410 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v2, qword_10097E010);
  (*(v3 + 16))(v5, v8, v2);
  v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton);
  type metadata accessor for BaseLockupView();
  sub_1007477B4();
  v10 = &v9[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize];
  if (v9[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v11 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000C824(&v9[v11], v120);
    sub_10000C888(v120, v121);
    sub_10074AE54();
    v13 = v12;
    v15 = v14;
    sub_10000C620(v120);
    *v10 = v13;
    *(v10 + 1) = v15;
    v10[16] = 0;
  }

  sub_10074A894();
  v16 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  v17 = sub_1007433C4();
  v122 = &protocol witness table for UIView;
  v121 = v17;
  v67 = v16;
  v120[0] = v16;
  v18 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel);
  v66 = v18;
  if (v18)
  {
    v19 = sub_100745C84();
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
  v22 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel);
  v23 = sub_100745C84();
  v24 = v23;
  v114 = &protocol witness table for UILabel;
  v113 = v23;
  v112 = v22;
  v25 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
  v111 = &protocol witness table for UILabel;
  v110 = v23;
  v64 = v25;
  v65 = v22;
  v109 = v25;
  v26 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
  if (v26)
  {
    v27 = &protocol witness table for UILabel;
    v28 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
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
  v30 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel);
  v102 = v23;
  v103 = &protocol witness table for UILabel;
  v63 = v30;
  v101 = v30;
  v99 = type metadata accessor for OfferButton();
  v100 = &protocol witness table for UIView;
  v98 = v9;
  v31 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_userRatingView);
  v96 = type metadata accessor for RatingView();
  v97 = &protocol witness table for UIView;
  v94 = &protocol witness table for UILabel;
  v95 = v31;
  v32 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel);
  v93 = v24;
  v61 = v32;
  v62 = v31;
  v92 = v32;
  v33 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_editorsChoiceView);
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
  v37 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchAdTransparencyButton);
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
  v40 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_descriptionLabel);
  v80 = v24;
  v79 = v40;
  v41 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView);
  v77 = type metadata accessor for MetadataRibbonView(0);
  v78 = &protocol witness table for UIView;
  v76 = v41;
  v42 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchTagsRibbonView);
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
  sub_100076CBC();
  v56 = v70;
  sub_10074A8B4();
  sub_100180FDC(&unk_10092AC80, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v57 = v72;
  sub_100750404();
  v59 = v58;
  (*(v71 + 8))(v56, v57);
  return v59;
}

id sub_10017D15C()
{
  v1 = v0;
  v2 = sub_10074AE04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20.value.super.isa = 0;
  v20.is_nil = 0;
  sub_100743384(v20, v6);
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_descriptionLabel];
  v8 = [v7 superview];
  if (!v8 || (v9 = v8, sub_100016C60(0, &qword_100922300, UIView_ptr), v10 = v0, v11 = sub_100753FC4(), v9, v10, (v11 & 1) == 0))
  {
    [v1 addSubview:v7];
  }

  [v7 setHidden:1];
  [v7 setText:0];
  [v1 setNeedsLayout];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchAdTransparencyButton;
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchAdTransparencyButton];
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

  v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includesMetadataInformationInLockup] = 0;
  v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView];
  v16 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  *&v15[v16] = _swiftEmptyArrayStorage;

  sub_100264DD4(_swiftEmptyArrayStorage);
  _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
  v17 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v3 + 24))(&v15[v17], v5, v2);
  swift_endAccess();
  [v15 setNeedsLayout];
  (*(v3 + 8))(v5, v2);
  *(*&v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchTagsRibbonView] + OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_metadataRibbonItemModels) = _swiftEmptyArrayStorage;

  return sub_10007585C(_swiftEmptyArrayStorage);
}

uint64_t sub_10017D40C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_impressionsCalculator;
  swift_beginAccess();
  if (*(v1 + v2))
  {

    sub_100749574();
  }

  *(v1 + v2) = 0;

  v3 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_1000164A8(v4, v5);
  type metadata accessor for SearchTagsRibbonView(0);
  sub_100180FDC(&qword_1009393D0, type metadata accessor for SearchTagsRibbonView, &unk_1007A8608);
  return sub_10074D3B4();
}

void sub_10017D514(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchAdTransparencyButton;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchAdTransparencyButton];
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

uint64_t sub_10017D5BC()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10074A8A4();
  sub_100039C50(v4, qword_10097E010);
  v46 = sub_10000D0FC(v4, qword_10097E010);
  v96 = &type metadata for Double;
  v97 = &protocol witness table for Double;
  v95 = 0x4024000000000000;
  if (qword_100920ED0 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_1009809C0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  v7 = v1[13];
  v7(v3, enum case for FontSource.useCase(_:), v0);
  v50 = v7;
  v93 = sub_100750B04();
  v94 = &protocol witness table for StaticDimension;
  v8 = v93;
  v47 = v93;
  sub_10000D134(v92);
  v90 = v0;
  v91 = &protocol witness table for FontSource;
  v9 = sub_10000D134(v89);
  v52 = v1[2];
  v52(v9, v3, v0);
  v48 = v1 + 2;
  sub_100750B14();
  v10 = v1[1];
  v10(v3, v0);
  v53 = v1 + 1;
  *v3 = UIFontTextStyleBody;
  v49 = enum case for FontSource.textStyle(_:);
  v54 = v1 + 13;
  (v7)(v3);
  v90 = v8;
  v91 = &protocol witness table for StaticDimension;
  sub_10000D134(v89);
  v87 = v0;
  v88 = &protocol witness table for FontSource;
  v11 = sub_10000D134(v86);
  v12 = v52;
  v52(v11, v3, v0);
  v13 = UIFontTextStyleBody;
  sub_100750B14();
  v10(v3, v0);
  *v3 = v13;
  v14 = v49;
  v15 = v50;
  v50(v3, v49, v0);
  v87 = v47;
  v88 = &protocol witness table for StaticDimension;
  sub_10000D134(v86);
  v84 = v0;
  v85 = &protocol witness table for FontSource;
  v16 = sub_10000D134(v83);
  v12(v16, v3, v0);
  v17 = v13;
  sub_100750B14();
  v10(v3, v0);
  v51 = v10;
  *v3 = v17;
  v15(v3, v14, v0);
  v18 = v47;
  v84 = v47;
  v85 = &protocol witness table for StaticDimension;
  sub_10000D134(v83);
  v81 = v0;
  v82 = &protocol witness table for FontSource;
  v19 = sub_10000D134(v80);
  v20 = v52;
  v52(v19, v3, v0);
  v21 = v17;
  sub_100750B14();
  v10(v3, v0);
  *v3 = v21;
  v50(v3, v49, v0);
  v81 = v18;
  v82 = &protocol witness table for StaticDimension;
  sub_10000D134(v80);
  v78 = v0;
  v79 = &protocol witness table for FontSource;
  v22 = sub_10000D134(v77);
  v20(v22, v3, v0);
  v23 = v21;
  sub_100750B14();
  v51(v3, v0);
  *v3 = UIFontTextStyleFootnote;
  v24 = v49;
  v25 = v50;
  v50(v3, v49, v0);
  v26 = v18;
  v78 = v18;
  v79 = &protocol witness table for StaticDimension;
  sub_10000D134(v77);
  v75 = v0;
  v76 = &protocol witness table for FontSource;
  v27 = sub_10000D134(v74);
  v28 = v52;
  v52(v27, v3, v0);
  v29 = UIFontTextStyleFootnote;
  sub_100750B14();
  v30 = v51;
  v51(v3, v0);
  *v3 = v29;
  v25(v3, v24, v0);
  v75 = v26;
  v76 = &protocol witness table for StaticDimension;
  sub_10000D134(v74);
  v72 = v0;
  v73 = &protocol witness table for FontSource;
  v31 = sub_10000D134(v71);
  v28(v31, v3, v0);
  v32 = v29;
  sub_100750B14();
  v30(v3, v0);
  *v3 = v32;
  v33 = v49;
  v34 = v50;
  v50(v3, v49, v0);
  v72 = v26;
  v73 = &protocol witness table for StaticDimension;
  sub_10000D134(v71);
  v69 = v0;
  v70 = &protocol witness table for FontSource;
  v35 = sub_10000D134(v68);
  v52(v35, v3, v0);
  v36 = v32;
  sub_100750B14();
  v51(v3, v0);
  *v3 = v36;
  v34(v3, v33, v0);
  v69 = v26;
  v70 = &protocol witness table for StaticDimension;
  sub_10000D134(v68);
  v66 = v0;
  v67 = &protocol witness table for FontSource;
  v37 = sub_10000D134(v65);
  v38 = v52;
  v52(v37, v3, v0);
  v39 = v36;
  sub_100750B14();
  v40 = v51;
  v51(v3, v0);
  *v3 = v39;
  v34(v3, v33, v0);
  v66 = v26;
  v67 = &protocol witness table for StaticDimension;
  sub_10000D134(v65);
  v63 = v0;
  v64 = &protocol witness table for FontSource;
  v41 = sub_10000D134(v62);
  v38(v41, v3, v0);
  v42 = v39;
  sub_100750B14();
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
  sub_10000D134(v61);
  v59 = v0;
  v60 = &protocol witness table for FontSource;
  v43 = sub_10000D134(v58);
  v52(v43, v3, v0);
  v44 = v42;
  sub_100750B14();
  v51(v3, v0);
  v59 = &type metadata for Double;
  v60 = &protocol witness table for Double;
  v57 = &protocol witness table for Double;
  v58[0] = 0x4040000000000000;
  v56 = &type metadata for Double;
  v55 = 0x4024000000000000;
  return sub_10074A874();
}

uint64_t sub_10017DF50()
{
  v0 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
  sub_100039C50(v0, qword_10092AC00);
  sub_10000D0FC(v0, qword_10092AC00);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  type metadata accessor for NSTextAlignment(0);
  return sub_100743474();
}

void sub_10017DFEC(char a1)
{
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeEditorsChoice] != (a1 & 1))
  {
    v2 = v1;
    if (v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeEditorsChoice])
    {
      v3 = v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_useAdsLocale];
      v4 = objc_allocWithZone(type metadata accessor for EditorsChoiceView());
      v5 = sub_1006BACE0(2, 0, 0, v3, 0);
      v6 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_editorsChoiceView;
      v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_editorsChoiceView];
      *&v2[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_editorsChoiceView] = v5;

      v8 = *&v2[v6];
      if (!v8 || (sub_100016C60(0, &qword_100923500, UIColor_ptr), v9 = v8, v10 = sub_100753DF4(), [v9 setTintColor:v10], v9, v10, !*&v2[v6]))
      {
        __break(1u);
        return;
      }

      [v2 addSubview:?];
    }

    else
    {
      v11 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_editorsChoiceView;
      v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_editorsChoiceView];
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

void sub_10017E148()
{
  v1 = sub_10074AE04();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_isDisplayingSearchAd;
  v7 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_isDisplayingSearchAd);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_isInsideSearchAd;
  swift_beginAccess();
  v5[v8] = v7;
  if (v7 == 1)
  {
    _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
    v9 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metrics;
    swift_beginAccess();
    (*(v2 + 24))(&v5[v9], v4, v1);
    swift_endAccess();
    [v5 setNeedsLayout];
    (*(v2 + 8))(v4, v1);
  }

  *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchTagsRibbonView) + OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_isInsideSearchAd) = *(v0 + v6);
}

char *sub_10017E2D8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v101 = sub_10074AB44();
  v103 = *(v101 - 1);
  __chkstk_darwin(v101);
  v11 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v12 - 8);
  v14 = &v94 - v13;
  v15 = sub_100750304();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRegularMargin] = 0x4024000000000000;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataSmallMargin] = 0x401C000000000000;
  if (qword_100921468 != -1)
  {
    swift_once();
  }

  v98 = v11;
  v19 = sub_100750534();
  v20 = sub_10000D0FC(v19, qword_100981A70);
  v100 = *(v19 - 8);
  v102 = *(v100 + 16);
  v104 = v100 + 16;
  v102(v18, v20, v19);
  (*(v16 + 104))(v18, enum case for FontSource.useCase(_:), v15);
  v109 = v15;
  v110 = &protocol witness table for FontSource;
  v21 = sub_10000D134(v108);
  (*(v16 + 16))(v21, v18, v15);
  sub_100750B14();
  (*(v16 + 8))(v18, v15);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_regularWidthColumnSpacing] = 0x4040000000000000;
  v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeRatings] = 0;
  v22 = type metadata accessor for RatingView();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_rating] = 0;
  *&v23[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarColor] = 0;
  v24 = &v23[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starPadding];
  *v24 = 0;
  v24[8] = 1;
  *&v23[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_maxNumberOfStars] = 5;
  if (qword_100921700 != -1)
  {
    swift_once();
  }

  v25 = qword_10093B668;
  *&v23[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starColor] = qword_10093B668;
  v23[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starSize] = 3;
  *v24 = 0;
  v24[8] = 1;
  v23[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_useCase] = 0;
  v26 = type metadata accessor for StarRow();
  v27 = objc_allocWithZone(v26);
  v28 = v25;
  *&v23[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView] = sub_1004FC838(5, 1, 3, 0, 1, 0, 0);
  v23[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_fillEmptyStars] = 0;
  v29 = objc_allocWithZone(v26);
  *&v23[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarRowView] = sub_1004FC838(5, 0, 3, 0, 1, 0, 0);
  v107.receiver = v23;
  v107.super_class = v22;
  v30 = objc_msgSendSuper2(&v107, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1004FA474();
  v31 = OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView;
  v32 = *&v30[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView];
  v33 = *&v32[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_currentRating];
  *&v32[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_currentRating] = *&v30[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_rating];
  v34 = v32;
  sub_1004FAF60(v33);

  if (*&v30[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarRowView])
  {
    [v30 addSubview:?];
  }

  v35 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_userRatingView;
  [v30 addSubview:*&v30[v31]];

  *&v5[v35] = v30;
  v36 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel;
  v37 = v103;
  if (qword_100921318 != -1)
  {
    swift_once();
  }

  v38 = sub_10000D0FC(v19, qword_100981680);
  v102(v14, v38, v19);
  v39 = *(v100 + 56);
  v39(v14, 0, 1, v19);
  v40 = *(v37 + 104);
  v103 = v37 + 104;
  v41 = v98;
  LODWORD(v100) = enum case for DirectionalTextAlignment.none(_:);
  v97 = v40;
  v40(v98);
  v42 = sub_100745C84();
  v43 = objc_allocWithZone(v42);
  *&v5[v36] = sub_100745C74();
  v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_useAdsLocale] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeEditorsChoice] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_editorsChoiceView] = 0;
  v44 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView;
  *&v5[v44] = [objc_allocWithZone(type metadata accessor for MetadataRibbonView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v45 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchTagsRibbonView;
  *&v5[v45] = [objc_allocWithZone(type metadata accessor for SearchTagsRibbonView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchAdTransparencyButton] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_isDisplayingSearchAd] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includesMetadataInformationInLockup] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_shouldEvenlyDistribute] = 2;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_impressionsCalculator] = 0;
  v46 = &v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_impressionsUpdateBlock];
  *v46 = 0;
  v46[1] = 0;
  if (qword_100921310 != -1)
  {
    swift_once();
  }

  v47 = sub_10000D0FC(v19, qword_100981668);
  v48 = v102;
  v102(v14, v47, v19);
  v95 = v19;
  v96 = v39;
  v39(v14, 0, 1, v19);
  v97(v41, v100, v101);
  v49 = objc_allocWithZone(v42);
  v50 = &OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_selectionHandler;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_descriptionLabel] = sub_100745C74();
  v106.receiver = v5;
  v106.super_class = ObjectType;
  v51 = objc_msgSendSuper2(&v106, "initWithFrame:", a1, a2, a3, a4);
  v52 = sub_10074F3F4();
  v109 = v52;
  v53 = sub_100180FDC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v110 = v53;
  v54 = sub_10000D134(v108);
  v55 = *(v52 - 8);
  v56 = *(v55 + 104);
  LODWORD(v103) = enum case for Feature.search_tags(_:);
  ObjectType = v52;
  v100 = v55 + 104;
  v101 = v56;
  (v56)(v54);
  LOBYTE(v52) = sub_10074FC74();
  sub_10000C620(v108);
  v57 = v48;
  if (v52)
  {
    v98 = v53;
    v58 = v51;
    if (qword_100920EF0 != -1)
    {
      swift_once();
    }

    v59 = v95;
    v60 = sub_10000D0FC(v95, qword_100980A20);
    v48(v14, v60, v59);
    v61 = v14;
    v62 = v14;
    v63 = v96;
    v96(v61, 0, 1, v59);
    sub_100745BA4();
    v64 = qword_100920F00;
    v65 = *&v58[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel];
    if (v64 != -1)
    {
      swift_once();
    }

    v66 = sub_10000D0FC(v59, qword_100980A50);
    v57(v62, v66, v59);
    v63(v62, 0, 1, v59);
    sub_100745BA4();

    v67 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel;
    v68 = *&v58[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel];
    sub_1007509A4();
    if (qword_100920218 != -1)
    {
      swift_once();
    }

    v69 = sub_10074A584();
    v70 = sub_10000D0FC(v69, qword_10097DA08);
    v109 = v69;
    v110 = sub_100180FDC(&qword_100934700, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
    v71 = sub_10000D134(v108);
    (*(*(v69 - 8) + 16))(v71, v70, v69);
    sub_100745BC4();

    v72 = *&v58[v67];
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v73 = v72;
    v74 = sub_100753DF4();
    [v73 setTextColor:v74];

    [*&v58[v67] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
    v75 = v98;
    v50 = &OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_selectionHandler;
  }

  else
  {
    v76 = *&v51[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel];
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v77 = v76;
    v78 = sub_100753DE4();
    [v77 setTextColor:v78];

    v75 = v53;
    v58 = v51;
  }

  v79 = v50[12];
  v80 = *&v58[v79];
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v81 = v80;
  v82 = sub_100753DF4();
  [v81 setTextColor:v82];

  [*&v58[v79] setUserInteractionEnabled:0];
  v83 = v103;
  if (qword_100920418 != -1)
  {
    swift_once();
  }

  v84 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
  sub_10000D0FC(v84, qword_10092AC00);
  v105 = v58;
  v85 = v58;
  sub_100743464();

  sub_100753F54();
  [v85 addSubview:*&v85[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_userRatingView]];
  v86 = ObjectType;
  v109 = ObjectType;
  v110 = v75;
  v87 = sub_10000D134(v108);
  v88 = v101;
  v101(v87, v83, v86);
  v89 = sub_10074FC74();
  sub_10000C620(v108);
  if (v89)
  {
    [v85 addSubview:*&v85[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel]];
  }

  v109 = v86;
  v110 = v75;
  v90 = sub_10000D134(v108);
  v88(v90, v83, v86);
  v91 = sub_10074FC74();
  sub_10000C620(v108);
  v92 = &OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchTagsRibbonView;
  if ((v91 & 1) == 0)
  {
    v92 = &OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView;
  }

  [v85 addSubview:*&v85[*v92]];
  *(*&v85[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton] + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_includeTopPadding) = 0;
  return v85;
}

double sub_10017F114(void *a1, double a2, double a3)
{
  v116 = a1;
  v6 = sub_10074A8C4();
  v105 = *(v6 - 8);
  v106 = v6;
  __chkstk_darwin(v6);
  v104 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074AE04();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v89 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074CD14();
  v98 = *(v11 - 8);
  v99 = v11;
  __chkstk_darwin(v11);
  v97 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007479B4();
  v113 = *(v13 - 8);
  v114 = v13;
  __chkstk_darwin(v13);
  v109 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v111 = &v86 - v16;
  v17 = sub_10074A8A4();
  v110 = *(v17 - 8);
  __chkstk_darwin(v17);
  v103 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v86 - v20;
  v22 = sub_10000C518(&unk_1009393C0, &qword_1007AEFB0);
  __chkstk_darwin(v22 - 8);
  v87 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v86 - v25;
  v27 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView];
  v28 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v29 = *(v27 + v28);
  v30 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v9 + 16))(v26, v27 + v30, v8);
  v90 = v9;
  v91 = v8;
  v31 = *(v9 + 56);
  v107 = v26;
  v31(v26, 0, 1, v8);
  v32 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchTagsRibbonView];
  v33 = *(v32 + OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_metadataRibbonItemModels);
  v88 = *(v32 + OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_shouldEvenlyDistribute);
  v108 = v33;

  v115 = v29;

  [v3 layoutMargins];
  if (qword_100920410 != -1)
  {
    swift_once();
  }

  v34 = sub_10000D0FC(v17, qword_10097E010);
  v100 = *(v110 + 16);
  v101 = v110 + 16;
  v100(v21, v34, v17);
  v35 = v116;
  v36 = sub_100753804();
  v112 = v17;
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

  v38 = v114;
  v39 = sub_10000D0FC(v114, v37);
  v40 = v113;
  v41 = v109;
  (*(v113 + 16))(v109, v39, v38);
  (*(v40 + 32))(v111, v41, v38);
  v42 = [v35 preferredContentSizeCategory];
  sub_100753924();

  sub_100747964();
  sub_100747994();
  sub_10074A894();
  v109 = v21;
  sub_10074A884();
  v96 = sub_100750F34();
  swift_allocObject();
  v102 = sub_100750F14();
  v43 = objc_opt_self();
  v94 = v43;
  v44 = [v43 preferredFontForTextStyle:UIFontTextStyleBody];
  v45 = sub_10074F3F4();
  v153[3] = v45;
  v46 = sub_100180FDC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v153[4] = v46;
  v47 = sub_10000D134(v153);
  v48 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v49 = *(v45 - 8);
  v95 = *(v49 + 104);
  v50 = v49 + 104;
  v92 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v95(v47, enum case for Feature.measurement_with_labelplaceholder(_:), v45);
  v93 = v50;
  sub_10074FC74();
  sub_10000C620(v153);
  v51 = v97;
  sub_10074CD04();
  sub_10074CCE4();
  v52 = v99;
  v98 = *(v98 + 8);
  (v98)(v51, v99);
  v53 = [v43 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v152[3] = v45;
  v152[4] = v46;
  v54 = sub_10000D134(v152);
  v55 = v48;
  v56 = v95;
  v95(v54, v55, v45);
  sub_10074FC74();
  sub_10000C620(v152);
  sub_10074CD04();
  sub_10074CCE4();
  v57 = v98;
  (v98)(v51, v52);
  v58 = [v94 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v151[3] = v45;
  v151[4] = v46;
  v59 = sub_10000D134(v151);
  v56(v59, v92, v45);
  sub_10074FC74();
  sub_10000C620(v151);
  sub_10074CD04();
  sub_10074CCE4();
  v57(v51, v52);
  v60 = v115;
  LODWORD(v99) = sub_10001BB7C() & (v60 != 0);
  if (v99 == 1)
  {
    v61 = v96;
    v62 = objc_allocWithZone(sub_100751034());
    v63 = v116;
    v64 = sub_100751024();
    v65 = v87;
    sub_100180F6C(v107, v87);
    v67 = v90;
    v66 = v91;
    v68 = *(v90 + 48);
    if (v68(v65, 1, v91) == 1)
    {
      v69 = v89;
      _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
      if (v68(v65, 1, v66) != 1)
      {
        sub_100180F04(v65);
      }
    }

    else
    {
      v69 = v89;
      (*(v67 + 32))(v89, v65, v66);
    }

    v71 = v64;
    sub_100018CE4(v115, v69, v71, a2, a3);

    (*(v67 + 8))(v69, v66);
    swift_allocObject();
    v70 = sub_100750F04();
  }

  else
  {
    v61 = v96;
    swift_allocObject();
    v70 = sub_100750F14();
  }

  v72 = v70;

  v73 = v108;
  if ((sub_10001BB7C() & (v73 != 0)) == 1)
  {
    sub_100077794(v73, v88, a2, a3);
    swift_allocObject();
    v74 = sub_100750F04();
  }

  else
  {
    swift_allocObject();
    v74 = sub_100750F14();
  }

  v75 = v74;
  v100(v103, v109, v112);
  v150 = &protocol witness table for LayoutViewPlaceholder;
  v149 = v61;
  v148 = v102;
  v147 = 0;
  *&v145[40] = 0u;
  v146 = 0u;
  sub_10000C824(v153, v145);
  sub_10000C824(v152, &v144);
  v143 = 0;
  v141 = 0u;
  v142 = 0u;
  v140 = 0;
  v138 = 0u;
  v139 = 0u;

  v76 = sub_100750F24();
  v137 = &protocol witness table for LayoutViewPlaceholder;
  v136 = v61;
  v135 = v76;
  v134 = 0;
  v132 = 0u;
  v133 = 0u;
  v131 = 0;
  v129 = 0u;
  v130 = 0u;
  v128 = 0;
  v126 = 0u;
  v127 = 0u;
  v125 = 0;
  v124 = 0u;
  *&v123[40] = 0u;
  sub_10000C824(v151, v123);
  v121 = v61;
  v122 = &protocol witness table for LayoutViewPlaceholder;
  v119 = &protocol witness table for LayoutViewPlaceholder;
  v120 = v72;
  v118 = v61;
  v117 = v75;
  v77 = v104;
  sub_10074A8B4();
  sub_100751034();
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1007A5CF0;
  v79 = v116;
  *(v78 + 32) = v116;
  v80 = v79;
  v81 = sub_100751044();
  sub_100180FDC(&unk_10092AC80, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v82 = v106;
  sub_100750404();
  v84 = v83;

  (*(v105 + 8))(v77, v82);
  sub_10000C620(v151);
  sub_10000C620(v152);
  sub_10000C620(v153);
  (*(v113 + 8))(v111, v114);
  (*(v110 + 8))(v109, v112);
  sub_100180F04(v107);
  return v84;
}

uint64_t sub_10017FED8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v78 = *(v3 - 8);
  v79 = v3;
  __chkstk_darwin(v3);
  v76 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074A8A4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074A8C4();
  v74 = *(v9 - 8);
  v75 = v9;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v73 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130.receiver = v1;
  v130.super_class = ObjectType;
  v77 = ObjectType;
  objc_msgSendSuper2(&v130, "layoutSubviews", v10);
  if (qword_100920410 != -1)
  {
    swift_once();
  }

  v12 = sub_10000D0FC(v5, qword_10097E010);
  (*(v6 + 16))(v8, v12, v5);
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton];
  type metadata accessor for BaseLockupView();
  sub_1007477B4();
  v14 = &v13[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize];
  if (v13[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v15 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000C824(&v13[v15], v127);
    sub_10000C888(v127, v128);
    sub_10074AE54();
    v17 = v16;
    v19 = v18;
    sub_10000C620(v127);
    *v14 = v17;
    *(v14 + 1) = v19;
    v14[16] = 0;
  }

  sub_10074A894();
  v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView];
  v21 = sub_1007433C4();
  v129 = &protocol witness table for UIView;
  v128 = v21;
  v71 = v20;
  v127[0] = v20;
  v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel];
  v70 = v22;
  if (v22)
  {
    v23 = sub_100745C84();
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
  v26 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel];
  v27 = sub_100745C84();
  v28 = v27;
  v121 = &protocol witness table for UILabel;
  v120 = v27;
  v119 = v26;
  v29 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel];
  v118 = &protocol witness table for UILabel;
  v117 = v27;
  v67 = v29;
  v68 = v26;
  v116 = v29;
  v30 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel];
  if (v30)
  {
    v31 = &protocol witness table for UILabel;
    v32 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel];
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
  v34 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel];
  v109 = v27;
  v110 = &protocol witness table for UILabel;
  v66 = v34;
  v108 = v34;
  v106 = type metadata accessor for OfferButton();
  v107 = &protocol witness table for UIView;
  v105 = v13;
  v35 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_userRatingView];
  v103 = type metadata accessor for RatingView();
  v104 = &protocol witness table for UIView;
  v101 = &protocol witness table for UILabel;
  v102 = v35;
  v36 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel];
  v100 = v28;
  v64 = v36;
  v65 = v35;
  v99 = v36;
  v37 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_editorsChoiceView];
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
  v41 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchAdTransparencyButton];
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
  v44 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_descriptionLabel];
  v87 = v28;
  v86 = v44;
  v45 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView];
  v84 = type metadata accessor for MetadataRibbonView(0);
  v85 = &protocol witness table for UIView;
  v83 = v45;
  v46 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchTagsRibbonView];
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
  sub_100076CBC();
  v61 = v73;
  sub_10074A8B4();
  sub_1007477B4();
  v62 = v76;
  sub_10074A864();
  (*(v78 + 8))(v62, v79);
  return (*(v74 + 8))(v61, v75);
}

id sub_100180594(uint64_t a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v8 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchAdTransparencyButton];
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

id sub_1001806E8(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_100920418 != -1)
    {
      swift_once();
    }

    v6 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
    sub_10000D0FC(v6, qword_10092AC00);
    v7 = v1;
    sub_100743464();

    return sub_100753F54();
  }

  return result;
}

double sub_1001808F8()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataTextSpace;
  v2 = sub_100750B04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_impressionsUpdateBlock);
  v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_impressionsUpdateBlock + 8);

  return sub_1000164A8(v3, v4);
}

uint64_t type metadata accessor for SmallSearchLockupView(uint64_t a1)
{
  result = qword_10092AC58;
  if (!qword_10092AC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100180B48(uint64_t a1)
{
  result = sub_100750B04();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_100180C58()
{
  swift_beginAccess();

  return result;
}

double sub_100180CA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_100180D58()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1, v1[1]);
  return v2;
}

double sub_100180DB4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6, v7);
}

uint64_t sub_100180E74(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchTagsRibbonView(0);
  sub_100180FDC(&qword_1009393D0, type metadata accessor for SearchTagsRibbonView, &unk_1007A8608);
  return sub_10074D3C4();
}

uint64_t sub_100180F04(uint64_t a1)
{
  v2 = sub_10000C518(&unk_1009393C0, &qword_1007AEFB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100180F6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_1009393C0, &qword_1007AEFB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100180FDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 IconArtworkGridLayout.init(metrics:icons:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v3;
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 73) = *(a1 + 73);
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 96) = a2;
  return result;
}

uint64_t IconArtworkGridLayout.Metrics.init(iconSize:interItemSpacing:horizontalOffsetPercentage:rotation:preferredGridSize:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *a5 = a6;
  *(a5 + 8) = a7;
  result = sub_100012160(a1, a5 + 16);
  *(a5 + 56) = a8;
  *(a5 + 64) = a9;
  *(a5 + 72) = a2;
  *(a5 + 80) = a3;
  *(a5 + 88) = a4 & 1;
  return result;
}

uint64_t LargeGameCenterPlayerLayout.Metrics.aliasTopSpace.setter(__int128 *a1)
{
  sub_10000C620((v1 + 16));

  return sub_100012160(a1, v1 + 16);
}

uint64_t IconArtworkGridLayout.Metrics.preferredGridSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 72) = result;
  *(v3 + 80) = a2;
  *(v3 + 88) = a3 & 1;
  return result;
}

uint64_t static IconArtworkGridLayout.totalNumberOfIcons(fitting:using:in:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v11.n128_f64[0] = a3;
  v12.n128_f64[0] = a4;

  return sub_1001814DC(a1, a2, ObjectType, v11, v12, v9, v10);
}

char *static IconArtworkGridLayout.iconFrames(relativeTo:using:in:)(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  swift_getObjectType();

  return sub_100181518(a1, a2, a3, a4, a5, a6);
}

uint64_t IconArtworkGridLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  swift_getObjectType();
  result = sub_100181518(v5, a1, a2, a3, a4, a5);
  v12 = result;
  v13 = *(v5 + 96);
  v14 = *(v13 + 16);
  if (!v14)
  {

    return sub_100750314();
  }

  v15 = 0;
  v16 = *(result + 16);
  v17 = v13 + 32;
  for (i = result + 56; ; i += 32)
  {
    if (v15 >= v16)
    {
      goto LABEL_3;
    }

    if (v15 >= *(v13 + 16))
    {
      break;
    }

    sub_10000C824(v17, v19);
    result = sub_10000C888(v19, v19[3]);
    if (v15 >= *(v12 + 16))
    {
      goto LABEL_12;
    }

    sub_100750394();
    result = sub_10000C620(v19);
LABEL_3:
    ++v15;
    v17 += 40;
    if (v14 == v15)
    {

      return sub_100750314();
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1001814DC(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v7 = *(sub_100181518(a1, a2, 0.0, 0.0, a4.n128_f64[0], a5.n128_f64[0]) + 2);

  return v7;
}

char *sub_100181518(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = sub_100754724();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v178 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = *(a1 + 64);
  CGAffineTransformMakeRotation(&v208, v184);
  v209.origin.x = a5 * -0.5;
  v209.origin.y = a6 * -0.5;
  v209.size.width = a5;
  v209.size.height = a6;
  v210 = CGRectApplyAffineTransform(v209, &v208);
  x = v210.origin.x;
  y = v210.origin.y;
  width = v210.size.width;
  v206 = v210.size.width;
  height = v210.size.height;
  v202 = v210.size.height;
  MinX = CGRectGetMinX(v210);
  v197 = a3;
  v211.origin.x = a3;
  v198 = a4;
  v211.origin.y = a4;
  v211.size.width = a5;
  v211.size.height = a6;
  v199 = a6;
  v205 = MinX + CGRectGetMidX(v211);
  v212.origin.x = x;
  v212.origin.y = y;
  v212.size.width = width;
  v212.size.height = height;
  MinY = CGRectGetMinY(v212);
  v213.origin.x = a3;
  v213.origin.y = a4;
  v213.size.width = a5;
  v20 = a5;
  v213.size.height = a6;
  v204 = MinY + CGRectGetMidY(v213);
  v22 = *a1;
  v21 = *(a1 + 8);
  CGAffineTransformMakeRotation(&v208, v184);
  v214.origin.x = v22 * -0.5;
  v214.origin.y = v21 * -0.5;
  v214.size.width = v22;
  v214.size.height = v21;
  v196 = v21;
  v215 = CGRectApplyAffineTransform(v214, &v208);
  v23 = v215.origin.x;
  v24 = v215.origin.y;
  v25 = v215.size.width;
  v26 = v215.size.height;
  v27 = CGRectGetMinX(v215);
  v216.origin.x = 0.0;
  v216.origin.y = 0.0;
  v216.size.width = v22;
  v216.size.height = v21;
  v201 = v27 + CGRectGetMidX(v216);
  v217.origin.x = v23;
  v217.origin.y = v24;
  v217.size.width = v25;
  v217.size.height = v26;
  v28 = CGRectGetMinY(v217);
  v218.origin.x = 0.0;
  v218.origin.y = 0.0;
  v218.size.width = v22;
  v218.size.height = v21;
  v203 = v28 + CGRectGetMidY(v218);
  v29 = *(a1 + 40);
  sub_10000C888((a1 + 16), v29);
  sub_100536120(v29);
  sub_100750564();
  v31 = v30;
  v191 = v30;
  (*(v12 + 8))(v14, v11);
  v32 = *(a1 + 56);
  v194 = v22;
  v33 = v22 + v31;
  v34 = floor(v33 * v32);
  v35 = v197;
  v219.origin.x = v197;
  v36 = v198;
  v219.origin.y = v198;
  v219.size.width = v20;
  v37 = v199;
  v219.size.height = v199;
  MidX = CGRectGetMidX(v219);
  v220.origin.x = v35;
  v220.origin.y = v36;
  v195 = v20;
  v220.size.width = v20;
  v220.size.height = v37;
  MidY = CGRectGetMidY(v220);
  v38 = v184;
  v39 = __sincos_stret(v184);
  v190 = v39.__cosval * v33;
  v189 = v39.__sinval * v33;
  v40 = __sincos_stret(v38 + 3.14159265);
  v193 = v40.__cosval * v33;
  v192 = v40.__sinval * v33;
  v181 = v39.__cosval * v34;
  v180 = v39.__sinval * v34;
  v41 = __sincos_stret(v38 + 1.57079633);
  sinval = v41.__sinval;
  cosval = v41.__cosval;
  v42 = v196 + v191;
  v43 = v201;
  v221.origin.x = v201;
  v44 = v203;
  v221.origin.y = v203;
  v221.size.width = v25;
  v221.size.height = v26;
  v45 = MidX + CGRectGetMidX(v221);
  v222.origin.x = v43;
  v222.origin.y = v44;
  v222.size.width = v25;
  v222.size.height = v26;
  v46 = v45 + CGRectGetWidth(v222) * -0.5;
  v223.origin.x = v43;
  v223.origin.y = v44;
  v223.size.width = v25;
  v223.size.height = v26;
  v47 = MidY + CGRectGetMidY(v223);
  v224.origin.x = v43;
  v224.origin.y = v44;
  v224.size.width = v25;
  v224.size.height = v26;
  v225.origin.y = v47 + CGRectGetHeight(v224) * -0.5;
  v301.origin.x = v205;
  v301.size.width = v206;
  v225.origin.x = v46;
  v301.origin.y = v204;
  v225.size.width = v25;
  v225.size.height = v26;
  v301.size.height = v202;
  v48 = CGRectIntersectsRect(v225, v301);
  v179 = v42;
  MinX = v25;
  v200 = v26;
  if (v48)
  {
    v186 = cosval * v42 + v181;
    v185 = sinval * v42 + v180;
    v49 = _swiftEmptyArrayStorage;
    v50 = 0.5;
    v51 = MidX;
    v52 = MidY;
    v53 = v202;
    v54 = v203;
    v55 = v201;
    do
    {
      cosval = v51;
      v231.origin.x = v55;
      v231.origin.y = v54;
      v231.size.width = v25;
      v231.size.height = v26;
      v58 = v51 + CGRectGetMidX(v231);
      v232.origin.x = v55;
      v232.origin.y = v54;
      v232.size.width = v25;
      v232.size.height = v26;
      v59 = v58 - CGRectGetWidth(v232) * v50;
      v233.origin.x = v55;
      v233.origin.y = v54;
      v233.size.width = v25;
      v233.size.height = v26;
      v191 = v52 + CGRectGetMidY(v233);
      v234.origin.x = v55;
      v234.origin.y = v54;
      v234.size.width = v25;
      v234.size.height = v26;
      v60 = v191 - CGRectGetHeight(v234) * v50;
      v235.origin.x = v59;
      v235.origin.y = v60;
      v235.size.width = v25;
      v235.size.height = v26;
      v303.origin.y = v204;
      v303.origin.x = v205;
      v303.size.width = v206;
      v303.size.height = v53;
      v61 = CGRectIntersectsRect(v235, v303);
      sinval = v52;
      if (v61)
      {
        v191 = cosval;
        v62 = v52;
        do
        {
          v241.origin.x = v59;
          v241.origin.y = v60;
          v241.size.width = v25;
          v241.size.height = v26;
          v305.origin.x = v197;
          v305.origin.y = v198;
          v305.size.width = v195;
          v305.size.height = v199;
          if (CGRectIntersectsRect(v241, v305))
          {
            v242.origin.x = 0.0;
            v242.origin.y = 0.0;
            v72 = v194;
            v242.size.width = v194;
            v73 = v196;
            v242.size.height = v196;
            v74 = CGRectGetMidX(v242);
            v243.origin.x = 0.0;
            v243.origin.y = 0.0;
            v243.size.width = v72;
            v243.size.height = v73;
            v75 = CGRectGetWidth(v243);
            v244.origin.x = 0.0;
            v244.origin.y = 0.0;
            v244.size.width = v72;
            v244.size.height = v73;
            v76 = CGRectGetMidY(v244);
            v245.origin.x = 0.0;
            v245.origin.y = 0.0;
            v245.size.width = v72;
            v245.size.height = v73;
            v77 = CGRectGetHeight(v245);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v49 = sub_100254AF0(0, *(v49 + 2) + 1, 1, v49);
            }

            v79 = *(v49 + 2);
            v78 = *(v49 + 3);
            v64 = v191;
            if (v79 >= v78 >> 1)
            {
              v49 = sub_100254AF0((v78 > 1), v79 + 1, 1, v49);
            }

            v63 = 0.5;
            *(v49 + 2) = v79 + 1;
            v80 = &v49[32 * v79];
            v80[4] = v64 + v74 - v75 * 0.5;
            v80[5] = v62 + v76 - v77 * 0.5;
            v81 = v196;
            v80[6] = v194;
            v80[7] = v81;
          }

          else
          {
            v63 = 0.5;
            v64 = v191;
          }

          v65 = v190 + v64;
          v62 = v189 + v62;
          v26 = v200;
          v66 = v201;
          v236.origin.x = v201;
          v67 = v203;
          v236.origin.y = v203;
          v25 = MinX;
          v236.size.width = MinX;
          v236.size.height = v200;
          v68 = CGRectGetMidX(v236);
          v191 = v65;
          v69 = v65 + v68;
          v237.origin.x = v66;
          v237.origin.y = v67;
          v237.size.width = v25;
          v237.size.height = v26;
          v59 = v69 - CGRectGetWidth(v237) * v63;
          v238.origin.x = v66;
          v238.origin.y = v67;
          v238.size.width = v25;
          v238.size.height = v26;
          v70 = v62 + CGRectGetMidY(v238);
          v239.origin.x = v66;
          v239.origin.y = v67;
          v239.size.width = v25;
          v239.size.height = v26;
          v60 = v70 - CGRectGetHeight(v239) * v63;
          v240.origin.x = v59;
          v240.origin.y = v60;
          v240.size.width = v25;
          v240.size.height = v26;
          v304.origin.y = v204;
          v304.origin.x = v205;
          v304.size.width = v206;
          v304.size.height = v202;
          v71 = CGRectIntersectsRect(v240, v304);
          v52 = sinval;
        }

        while (v71);
      }

      v82 = v193 + cosval;
      v83 = v192 + v52;
      v246.size.height = v200;
      v84 = v201;
      v246.origin.x = v201;
      v85 = v203;
      v246.origin.y = v203;
      v246.size.width = v25;
      v86 = v82 + CGRectGetMidX(v246);
      v247.origin.x = v84;
      v247.origin.y = v85;
      v247.size.width = v25;
      v247.size.height = v200;
      v87 = v86 - CGRectGetWidth(v247) * 0.5;
      v248.origin.x = v84;
      v248.origin.y = v85;
      v248.size.width = v25;
      v248.size.height = v200;
      v88 = v83 + CGRectGetMidY(v248);
      v249.origin.x = v84;
      v249.origin.y = v85;
      v26 = v200;
      v249.size.width = v25;
      v249.size.height = v200;
      v89 = v88 - CGRectGetHeight(v249) * 0.5;
      v250.origin.x = v87;
      v250.origin.y = v89;
      v250.size.width = v25;
      v250.size.height = v26;
      v306.origin.y = v204;
      v306.origin.x = v205;
      v306.size.width = v206;
      v306.size.height = v202;
      if (CGRectIntersectsRect(v250, v306))
      {
        do
        {
          v256.origin.x = v87;
          v256.origin.y = v89;
          v256.size.width = v25;
          v256.size.height = v26;
          v308.origin.x = v197;
          v308.origin.y = v198;
          v308.size.width = v195;
          v308.size.height = v199;
          if (CGRectIntersectsRect(v256, v308))
          {
            v257.origin.x = 0.0;
            v257.origin.y = 0.0;
            v96 = v194;
            v257.size.width = v194;
            v97 = v196;
            v257.size.height = v196;
            v98 = CGRectGetMidX(v257);
            v258.origin.x = 0.0;
            v258.origin.y = 0.0;
            v258.size.width = v96;
            v258.size.height = v97;
            v99 = CGRectGetWidth(v258);
            v259.origin.x = 0.0;
            v259.origin.y = 0.0;
            v259.size.width = v96;
            v259.size.height = v97;
            v191 = CGRectGetMidY(v259);
            v260.origin.x = 0.0;
            v260.origin.y = 0.0;
            v260.size.width = v96;
            v260.size.height = v97;
            v100 = CGRectGetHeight(v260);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v49 = sub_100254AF0(0, *(v49 + 2) + 1, 1, v49);
            }

            v102 = *(v49 + 2);
            v101 = *(v49 + 3);
            if (v102 >= v101 >> 1)
            {
              v49 = sub_100254AF0((v101 > 1), v102 + 1, 1, v49);
            }

            v90 = 0.5;
            v103 = v83 + v191 - v100 * 0.5;
            *(v49 + 2) = v102 + 1;
            v104 = &v49[32 * v102];
            v104[4] = v82 + v98 - v99 * 0.5;
            v104[5] = v103;
            v105 = v196;
            v104[6] = v194;
            v104[7] = v105;
          }

          else
          {
            v90 = 0.5;
          }

          v82 = v193 + v82;
          v83 = v192 + v83;
          v91 = v201;
          v251.origin.x = v201;
          v92 = v203;
          v251.origin.y = v203;
          v251.size.width = v25;
          v93 = v200;
          v251.size.height = v200;
          v94 = v82 + CGRectGetMidX(v251);
          v252.origin.x = v91;
          v252.origin.y = v92;
          v252.size.width = MinX;
          v252.size.height = v93;
          v87 = v94 - CGRectGetWidth(v252) * v90;
          v253.origin.x = v91;
          v253.origin.y = v92;
          v253.size.width = MinX;
          v253.size.height = v93;
          v95 = v83 + CGRectGetMidY(v253);
          v254.origin.x = v91;
          v254.origin.y = v92;
          v26 = v93;
          v25 = MinX;
          v254.size.width = MinX;
          v254.size.height = v26;
          v89 = v95 - CGRectGetHeight(v254) * v90;
          v255.origin.x = v87;
          v255.origin.y = v89;
          v255.size.width = v25;
          v255.size.height = v26;
          v307.origin.y = v204;
          v307.origin.x = v205;
          v307.size.width = v206;
          v307.size.height = v202;
        }

        while (CGRectIntersectsRect(v255, v307));
      }

      v51 = v186 + cosval;
      v52 = v185 + sinval;
      v55 = v201;
      v226.origin.x = v201;
      v54 = v203;
      v226.origin.y = v203;
      v226.size.width = v25;
      v226.size.height = v26;
      v56 = v51 + CGRectGetMidX(v226);
      v227.origin.x = v55;
      v227.origin.y = v54;
      v227.size.width = v25;
      v227.size.height = v26;
      v50 = 0.5;
      v191 = v56 - CGRectGetWidth(v227) * 0.5;
      v228.origin.x = v55;
      v228.origin.y = v54;
      v228.size.width = v25;
      v228.size.height = v26;
      v57 = v52 + CGRectGetMidY(v228);
      v229.origin.x = v55;
      v229.origin.y = v54;
      v229.size.width = v25;
      v229.size.height = v26;
      v230.origin.y = v57 - CGRectGetHeight(v229) * 0.5;
      v230.origin.x = v191;
      v230.size.width = v25;
      v230.size.height = v26;
      v302.origin.y = v204;
      v302.origin.x = v205;
      v302.size.width = v206;
      v53 = v202;
      v302.size.height = v202;
    }

    while (CGRectIntersectsRect(v230, v302));
  }

  else
  {
    v49 = _swiftEmptyArrayStorage;
    v54 = v203;
    v55 = v201;
  }

  v106 = __sincos_stret(v184 + -1.57079633);
  v186 = v106.__cosval * v179 - v181;
  v107 = MidX + v186;
  v185 = v106.__sinval * v179 - v180;
  v108 = MidY + v185;
  v261.origin.x = v55;
  v261.origin.y = v54;
  v261.size.width = v25;
  v261.size.height = v26;
  v109 = CGRectGetMidX(v261);
  sinval = v107;
  v110 = v107 + v109;
  v262.origin.x = v55;
  v262.origin.y = v54;
  v262.size.width = v25;
  v262.size.height = v26;
  v111 = v55;
  v112 = v110 - CGRectGetWidth(v262) * 0.5;
  v263.origin.x = v111;
  v263.origin.y = v54;
  v263.size.width = v25;
  v263.size.height = v26;
  v113 = CGRectGetMidY(v263);
  cosval = v108;
  v114 = v108 + v113;
  v264.origin.x = v111;
  v264.origin.y = v54;
  v264.size.width = v25;
  v264.size.height = v26;
  v265.origin.y = v114 - CGRectGetHeight(v264) * 0.5;
  v309.size.height = v202;
  v265.origin.x = v112;
  v265.size.width = v25;
  v265.size.height = v26;
  v309.origin.y = v204;
  v309.origin.x = v205;
  v309.size.width = v206;
  if (CGRectIntersectsRect(v265, v309))
  {
    v115 = sinval;
    v116 = cosval;
    v117 = v201;
    do
    {
      v271.origin.x = v117;
      v271.origin.y = v54;
      v271.size.width = v25;
      v271.size.height = v26;
      v121 = v115 + CGRectGetMidX(v271);
      v272.origin.x = v117;
      v272.origin.y = v54;
      v272.size.width = v25;
      v272.size.height = v26;
      v122 = v121 - CGRectGetWidth(v272) * 0.5;
      v273.origin.x = v117;
      v273.origin.y = v54;
      v273.size.width = v25;
      v273.size.height = v26;
      v123 = v116 + CGRectGetMidY(v273);
      v274.origin.x = v117;
      v274.origin.y = v54;
      v274.size.width = v25;
      v274.size.height = v26;
      v124 = v123 - CGRectGetHeight(v274) * 0.5;
      v275.origin.x = v122;
      v275.origin.y = v124;
      v275.size.width = v25;
      v275.size.height = v26;
      v311.origin.y = v204;
      v311.origin.x = v205;
      v311.size.width = v206;
      v311.size.height = v202;
      v125 = CGRectIntersectsRect(v275, v311);
      sinval = v115;
      cosval = v116;
      if (v125)
      {
        v191 = v115;
        do
        {
          v281.origin.x = v122;
          v281.origin.y = v124;
          v281.size.width = v25;
          v281.size.height = v26;
          v313.origin.x = v197;
          v313.origin.y = v198;
          v313.size.width = v195;
          v313.size.height = v199;
          if (CGRectIntersectsRect(v281, v313))
          {
            v282.origin.x = 0.0;
            v282.origin.y = 0.0;
            v134 = v194;
            v282.size.width = v194;
            v135 = v196;
            v282.size.height = v196;
            v136 = CGRectGetMidX(v282);
            v283.origin.x = 0.0;
            v283.origin.y = 0.0;
            v283.size.width = v134;
            v283.size.height = v135;
            v137 = CGRectGetWidth(v283);
            v284.origin.x = 0.0;
            v284.origin.y = 0.0;
            v284.size.width = v134;
            v284.size.height = v135;
            v138 = CGRectGetMidY(v284);
            v285.origin.x = 0.0;
            v285.origin.y = 0.0;
            v285.size.width = v134;
            v285.size.height = v135;
            v139 = CGRectGetHeight(v285);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v49 = sub_100254AF0(0, *(v49 + 2) + 1, 1, v49);
            }

            v141 = *(v49 + 2);
            v140 = *(v49 + 3);
            v142 = 0.5;
            v127 = v191;
            if (v141 >= v140 >> 1)
            {
              v147 = sub_100254AF0((v140 > 1), v141 + 1, 1, v49);
              v142 = 0.5;
              v49 = v147;
            }

            v143 = v127 + v136 - v137 * v142;
            v144 = v116 + v138;
            v126 = 0.5;
            *(v49 + 2) = v141 + 1;
            v145 = &v49[32 * v141];
            v145[4] = v143;
            v145[5] = v144 - v139 * 0.5;
            v146 = v196;
            v145[6] = v194;
            v145[7] = v146;
          }

          else
          {
            v126 = 0.5;
            v127 = v191;
          }

          v128 = v190 + v127;
          v116 = v189 + v116;
          v26 = v200;
          v129 = v201;
          v276.origin.x = v201;
          v130 = v203;
          v276.origin.y = v203;
          v25 = MinX;
          v276.size.width = MinX;
          v276.size.height = v200;
          v131 = CGRectGetMidX(v276);
          v191 = v128;
          v132 = v128 + v131;
          v277.origin.x = v129;
          v277.origin.y = v130;
          v277.size.width = v25;
          v277.size.height = v26;
          v122 = v132 - CGRectGetWidth(v277) * v126;
          v278.origin.x = v129;
          v278.origin.y = v130;
          v278.size.width = v25;
          v278.size.height = v26;
          v133 = v116 + CGRectGetMidY(v278);
          v279.origin.x = v129;
          v279.origin.y = v130;
          v279.size.width = v25;
          v279.size.height = v26;
          v124 = v133 - CGRectGetHeight(v279) * v126;
          v280.origin.x = v122;
          v280.origin.y = v124;
          v280.size.width = v25;
          v280.size.height = v26;
          v312.origin.y = v204;
          v312.origin.x = v205;
          v312.size.width = v206;
          v312.size.height = v202;
        }

        while (CGRectIntersectsRect(v280, v312));
      }

      v148 = v193 + sinval;
      v149 = v192 + cosval;
      v150 = v201;
      v286.origin.x = v201;
      v286.origin.y = v203;
      v286.size.width = v25;
      v286.size.height = v26;
      v151 = CGRectGetMidX(v286);
      v191 = v148;
      v152 = v148 + v151;
      v287.origin.x = v150;
      v287.origin.y = v203;
      v287.size.width = v25;
      v287.size.height = v26;
      v153 = v152 - CGRectGetWidth(v287) * 0.5;
      v288.origin.x = v150;
      v288.origin.y = v203;
      v288.size.width = v25;
      v288.size.height = v26;
      v154 = v149 + CGRectGetMidY(v288);
      v289.origin.x = v150;
      v54 = v203;
      v289.origin.y = v203;
      v289.size.width = v25;
      v289.size.height = v26;
      v155 = v154 - CGRectGetHeight(v289) * 0.5;
      v290.origin.x = v153;
      v290.origin.y = v155;
      v290.size.width = v25;
      v290.size.height = v26;
      v314.origin.y = v204;
      v314.origin.x = v205;
      v314.size.width = v206;
      v314.size.height = v202;
      if (CGRectIntersectsRect(v290, v314))
      {
        do
        {
          v296.origin.x = v153;
          v296.origin.y = v155;
          v296.size.width = v25;
          v296.size.height = v26;
          v316.origin.x = v197;
          v316.origin.y = v198;
          v316.size.width = v195;
          v316.size.height = v199;
          if (CGRectIntersectsRect(v296, v316))
          {
            v297.origin.x = 0.0;
            v297.origin.y = 0.0;
            v163 = v194;
            v297.size.width = v194;
            v164 = v196;
            v297.size.height = v196;
            v165 = CGRectGetMidX(v297);
            v298.origin.x = 0.0;
            v298.origin.y = 0.0;
            v298.size.width = v163;
            v298.size.height = v164;
            v166 = CGRectGetWidth(v298);
            v299.origin.x = 0.0;
            v299.origin.y = 0.0;
            v299.size.width = v163;
            v299.size.height = v164;
            v167 = CGRectGetMidY(v299);
            v300.origin.x = 0.0;
            v300.origin.y = 0.0;
            v300.size.width = v163;
            v300.size.height = v164;
            v168 = CGRectGetHeight(v300);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v49 = sub_100254AF0(0, *(v49 + 2) + 1, 1, v49);
            }

            v170 = *(v49 + 2);
            v169 = *(v49 + 3);
            v171 = 0.5;
            v157 = v191;
            if (v170 >= v169 >> 1)
            {
              v176 = sub_100254AF0((v169 > 1), v170 + 1, 1, v49);
              v171 = 0.5;
              v49 = v176;
            }

            v172 = v157 + v165 - v166 * v171;
            v173 = v149 + v167;
            v156 = 0.5;
            *(v49 + 2) = v170 + 1;
            v174 = &v49[32 * v170];
            v174[4] = v172;
            v174[5] = v173 - v168 * 0.5;
            v175 = v196;
            v174[6] = v194;
            v174[7] = v175;
          }

          else
          {
            v156 = 0.5;
            v157 = v191;
          }

          v158 = v193 + v157;
          v149 = v192 + v149;
          v26 = v200;
          v159 = v201;
          v291.origin.x = v201;
          v54 = v203;
          v291.origin.y = v203;
          v25 = MinX;
          v291.size.width = MinX;
          v291.size.height = v200;
          v160 = CGRectGetMidX(v291);
          v191 = v158;
          v161 = v158 + v160;
          v292.origin.x = v159;
          v292.origin.y = v54;
          v292.size.width = v25;
          v292.size.height = v26;
          v153 = v161 - CGRectGetWidth(v292) * v156;
          v293.origin.x = v159;
          v293.origin.y = v54;
          v293.size.width = v25;
          v293.size.height = v26;
          v162 = v149 + CGRectGetMidY(v293);
          v294.origin.x = v159;
          v294.origin.y = v54;
          v294.size.width = v25;
          v294.size.height = v26;
          v155 = v162 - CGRectGetHeight(v294) * v156;
          v295.origin.x = v153;
          v295.origin.y = v155;
          v295.size.width = v25;
          v295.size.height = v26;
          v315.origin.y = v204;
          v315.origin.x = v205;
          v315.size.width = v206;
          v315.size.height = v202;
        }

        while (CGRectIntersectsRect(v295, v315));
      }

      v115 = v186 + sinval;
      v116 = v185 + cosval;
      v117 = v201;
      v266.origin.x = v201;
      v266.origin.y = v54;
      v266.size.width = v25;
      v266.size.height = v26;
      v118 = v115 + CGRectGetMidX(v266);
      v267.origin.x = v117;
      v267.origin.y = v54;
      v267.size.width = v25;
      v267.size.height = v26;
      v119 = v118 - CGRectGetWidth(v267) * 0.5;
      v268.origin.x = v117;
      v268.origin.y = v54;
      v268.size.width = v25;
      v268.size.height = v26;
      v120 = v116 + CGRectGetMidY(v268);
      v269.origin.x = v117;
      v269.origin.y = v54;
      v269.size.width = v25;
      v269.size.height = v26;
      v270.origin.y = v120 - CGRectGetHeight(v269) * 0.5;
      v270.origin.x = v119;
      v270.size.width = v25;
      v270.size.height = v26;
      v310.origin.y = v204;
      v310.origin.x = v205;
      v310.size.width = v206;
      v310.size.height = v202;
    }

    while (CGRectIntersectsRect(v270, v310));
  }

  return v49;
}

__n128 sub_100182828(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100182854(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10018289C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100182904(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100182928(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100182970(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001829E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a13@<D6>, double a14@<D7>, double a15, double a16)
{
  v44 = a5;
  v45 = a4;
  v50 = a3;
  v51 = a6;
  v52 = a13;
  v53 = a14;
  v48 = a1;
  v17 = sub_10074E984();
  v54 = *(v17 - 8);
  __chkstk_darwin(v17);
  v47 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10074F6E4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v43 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v42 - v23;
  v25 = sub_10000C518(&qword_100923228, &unk_1007AB120);
  __chkstk_darwin(v25);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v42 - v29;
  sub_100016B4C(a2, &v42 - v29, &unk_10093D6E0, &unk_1007A6080);
  sub_100016B4C(v50, &v30[*(v25 + 48)], &unk_10093D6E0, &unk_1007A6080);
  swift_getKeyPath();
  sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  sub_1007525B4();

  v31 = *(v20 + 104);
  v32 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v56)
  {
    v32 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v33 = *v32;
  v49 = v24;
  v50 = v19;
  v34 = v19;
  v35 = v47;
  v31(v24, v33, v34);
  swift_getKeyPath();
  sub_1007525B4();

  v36 = *(v54 + 88);
  v46 = v17;
  v37 = v36(v35, v17);
  if (v37 == enum case for Shelf.ContentType.accessibilityFeatures(_:) || v37 == enum case for Shelf.ContentType.accessibilityParagraph(_:))
  {
    v41 = v49;
    v40 = v50;
    (*(v20 + 16))(v43, v49, v50);
    sub_100183368();
    sub_10074F6B4();
    (*(v20 + 8))(v41, v40);
    return sub_10000C8CC(v30, &qword_100923228, &unk_1007AB120);
  }

  else
  {
    v55 = v44;
    sub_100016B4C(v30, v27, &qword_100923228, &unk_1007AB120);
    v38 = *(v25 + 48);
    sub_1000E1F2C();
    sub_100745684();
    (*(v20 + 8))(v49, v50);
    sub_10000C8CC(v30, &qword_100923228, &unk_1007AB120);
    sub_10000C8CC(&v27[v38], &unk_10093D6E0, &unk_1007A6080);
    sub_10000C8CC(v27, &unk_10093D6E0, &unk_1007A6080);
    return (*(v54 + 8))(v35, v46);
  }
}

uint64_t sub_100182EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_10018330C();

  return sub_100745684();
}

uint64_t sub_100182FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_10018330C();

  return sub_100745674();
}

uint64_t sub_1001830B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100183CA0();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_10018310C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a12@<D6>, double a13@<D7>, double a14, double a15)
{
  v28[4] = a4;
  *&v28[2] = a12;
  *&v28[3] = a13;
  v28[0] = a5;
  v28[1] = a1;
  v18 = sub_10000C518(&qword_100923228, &unk_1007AB120);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v28 - v23;
  v25 = *v15;
  sub_100016B4C(a2, v28 - v23, &unk_10093D6E0, &unk_1007A6080);
  sub_100016B4C(a3, &v24[*(v19 + 56)], &unk_10093D6E0, &unk_1007A6080);
  v28[5] = v25;
  sub_100016B4C(v24, v21, &qword_100923228, &unk_1007AB120);
  v26 = *(v19 + 56);
  sub_1000E1F2C();

  sub_100745674();
  sub_10000C8CC(v24, &qword_100923228, &unk_1007AB120);

  sub_10000C8CC(&v21[v26], &unk_10093D6E0, &unk_1007A6080);
  return sub_10000C8CC(v21, &unk_10093D6E0, &unk_1007A6080);
}

unint64_t sub_10018330C()
{
  result = qword_10092AC98;
  if (!qword_10092AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092AC98);
  }

  return result;
}

uint64_t sub_100183368()
{
  v0 = sub_10000C518(&qword_100923E88, &unk_1007AF240);
  __chkstk_darwin(v0 - 8);
  v34 = &v31 - v1;
  v39 = sub_10074F654();
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = (&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000C518(&qword_100923230, &qword_1007BF500);
  __chkstk_darwin(v5 - 8);
  v43 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  sub_10000C518(&qword_100923E90, &unk_1007AF250);
  v16 = *(sub_10074F584() - 8);
  v40 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v32 = v18;
  *(v18 + 16) = xmmword_1007A7250;
  v19 = v18 + v17;
  v45 = 0x3FF0000000000000;
  sub_10001CC10();
  sub_10074F614();
  v44 = 0x4030000000000000;
  v45 = 0x4020000000000000;
  sub_10074F5F4();
  v45 = 0x4034000000000000;
  sub_10074F614();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v35 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v42 = *(v2 + 104);
  v38 = v2 + 104;
  v42(v4);
  LOBYTE(v45) = 0;
  sub_10074F614();
  v45 = 0;
  sub_10074F614();
  v37 = v19;
  v41 = v15;
  sub_10074F544();
  v45 = 0x3FF0000000000000;
  sub_10074F614();
  v44 = 0x4034000000000000;
  v45 = 0x4024000000000000;
  sub_10074F5F4();
  v45 = 0x4034000000000000;
  sub_10074F614();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  (v42)(v4, v35, v39);
  LOBYTE(v45) = 0;
  sub_10074F614();
  v45 = 0;
  sub_10074F614();
  v26 = v40;
  v36 = v12;
  sub_10074F544();
  v31 = 2 * v26;
  v45 = 0x3FF0000000000000;
  sub_10074F614();
  v45 = 0x4034000000000000;
  sub_10074F614();
  v45 = 0x4034000000000000;
  sub_10074F614();
  *v4 = vdupq_n_s64(0x4041000000000000uLL);
  (v42)(v4, v35, v39);
  LOBYTE(v45) = 0;
  sub_10074F614();
  v45 = 0;
  sub_10074F614();
  v33 = v9;
  sub_10074F544();
  v27 = v40;
  v45 = 0x3FF0000000000000;
  sub_10074F614();
  v45 = 0x4034000000000000;
  sub_10074F614();
  v45 = 0x4034000000000000;
  sub_10074F614();
  v35 = enum case for PageGrid.HorizontalMargins.readableContentGuide(_:);
  v28 = v42;
  v42(v4);
  LOBYTE(v45) = 0;
  sub_10074F614();
  v45 = 0;
  sub_10074F614();
  sub_10074F544();
  v31 = 4 * v27;
  v45 = 0x3FF0000000000000;
  sub_10074F614();
  v45 = 0x4038000000000000;
  sub_10074F614();
  v45 = 0x4034000000000000;
  sub_10074F614();
  v29 = v39;
  v28(v4, v35, v39);
  LOBYTE(v45) = 0;
  sub_10074F614();
  v45 = 0;
  sub_10074F614();
  sub_10074F544();
  v45 = 0x3FF0000000000000;
  sub_10074F614();
  v45 = 0x4038000000000000;
  sub_10074F614();
  v45 = 0x4034000000000000;
  sub_10074F614();
  (v42)(v4, v35, v29);
  LOBYTE(v45) = 0;
  sub_10074F614();
  v45 = 0;
  sub_10074F614();
  sub_10074F544();
  return v32;
}

unint64_t sub_100183CA0()
{
  result = qword_10092ACA0;
  if (!qword_10092ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092ACA0);
  }

  return result;
}

void sub_100183CF4(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    v3 = *(v1 + 32);
    if (v3 >> 62)
    {
      if (sub_100754664() <= a1)
      {
        return;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
      return;
    }

    swift_beginAccess();
    v4 = *(v1 + 32);
    if ((v4 & 0xC000000000000001) != 0)
    {
      sub_100754574();
      goto LABEL_7;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {

LABEL_7:
      swift_endAccess();
      return;
    }

    __break(1u);
  }
}

uint64_t sub_100183DD0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100752AC4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  v13 = sub_10074F314();
  __chkstk_darwin(v13 - 8);
  result = sub_10074EF24();
  if (result)
  {
    v17 = a2;
    swift_beginAccess();
    [a3 contentMode];
    sub_10074F374();
    sub_10074F324();
    sub_100743364();
    [a3 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_10000D198();
      sub_100753E34();
    }

    sub_100743224();
    if (*(v3 + 16))
    {
      sub_1007433C4();
      sub_10004D658();

      sub_100744204();
    }

    v19 = 0u;
    v20 = 0u;
    memset(v18, 0, sizeof(v18));
    sub_100752A74();
    sub_1000277BC(v18);
    sub_1000277BC(&v19);
    *(&v20 + 1) = &type metadata for Int;
    *&v19 = v17;
    sub_100752AA4();
    v15 = *(v7 + 8);
    v15(v9, v6);
    sub_1000277BC(&v19);
    sub_100753C74();

    return (v15)(v12, v6);
  }

  return result;
}

uint64_t sub_1001840C4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100184130()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    return sub_100754664();
  }

  else
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_1001841BC(double a1, double a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_100184250@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for RiverRowLayoutStyle.icons(_:);
  v3 = sub_100748634();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1001842EC()
{
  v0 = sub_10000C518(&qword_100932560, qword_1007A7BB0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  sub_1007433C4();
  v3 = sub_1007431D4();
  if (qword_1009204E8 != -1)
  {
    swift_once();
  }

  v4 = sub_10074F0C4();
  v5 = sub_10000D0FC(v4, qword_10097E278);
  v6 = *(v4 - 8);
  (*(v6 + 16))(v2, v5, v4);
  (*(v6 + 56))(v2, 0, 1, v4);
  sub_100743374();
  return v3;
}

double sub_100184438(uint64_t a1)
{
  sub_100743344();
  if (*(v1 + 16))
  {
    sub_1007433C4();
    sub_10004D658();

    sub_100744274();
  }

  return result;
}

uint64_t sub_1001844D4(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v44 = sub_10000C518(&qword_10092ADC0, &unk_1007AF448);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = &v35 - v3;
  v45 = sub_100747EA4();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v41 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  __chkstk_darwin(v5 - 8);
  v36 = &v35 - v6;
  v47 = sub_10000C518(&qword_10092ADC8, &qword_1007AF458);
  v38 = *(v47 - 8);
  __chkstk_darwin(v47);
  v37 = &v35 - v7;
  v8 = sub_10000C518(&qword_10092ADB0, &unk_1007AF400);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_10000C518(&unk_100930810, &unk_1007B7670);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - v13;
  v15 = sub_100742BB4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v35 - v20;
  sub_100746944();
  sub_1007525C4();
  (*(v12 + 8))(v14, v11);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  v22 = swift_dynamicCast();
  v23 = *(v16 + 56);
  if (v22)
  {
    v23(v10, 0, 1, v15);
    (*(v16 + 32))(v21, v10, v15);
    v24 = a1;
    sub_100746964();
    v25 = v37;
    sub_100752EB4();
    v26 = v46;
    sub_100185ADC();

    sub_100752E84();
    sub_100747EC4();

    (*(v16 + 16))(v18, v21, v15);
    v27 = v39;

    v28 = v41;
    v29 = sub_100747E84();
    v36 = &v35;
    __chkstk_darwin(v29);
    *(&v35 - 4) = v28;
    *(&v35 - 3) = v26;
    *(&v35 - 2) = v24;
    __chkstk_darwin(v30);
    *(&v35 - 4) = sub_100185B34;
    *(&v35 - 3) = v31;
    *(&v35 - 2) = v27;
    *(&v35 - 1) = v26;
    sub_10000C518(&qword_10092ADD0, &qword_1007AF460);
    sub_100185B4C();
    v32 = v40;
    sub_100751DF4();
    sub_100751E54();
    v33 = v44;
    v48[3] = v44;
    v48[4] = sub_10002DDC8(&qword_10092AE18, &qword_10092ADC0, &unk_1007AF448, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10000D134(v48);
    sub_100751DE4();
    (*(v42 + 8))(v32, v33);
    sub_1007538E4();
    (*(v38 + 8))(v25, v47);
    (*(v16 + 8))(v21, v15);
    return (*(v43 + 8))(v28, v45);
  }

  else
  {
    v23(v10, 1, 1, v15);
    return sub_100185A2C(v10);
  }
}

uint64_t sub_100184B84(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = sub_100747EA4();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);

  sub_100744BC4();
  sub_10000C518(&qword_10092AE00, &qword_1007AF480);
  return sub_100746934();
}

uint64_t type metadata accessor for AnnotationCollectionViewHostingCell(uint64_t a1)
{
  result = qword_10092AD90;
  if (!qword_10092AD90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100184F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v46 = a3;
  v4 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  __chkstk_darwin(v4 - 8);
  v38 = &v36 - v5;
  v6 = sub_10000C518(&qword_10092ADA8, &qword_1007AF3F8);
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin(v6);
  v40 = &v36 - v7;
  v8 = sub_100747EA4();
  v44 = *(v8 - 8);
  v45 = v8;
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&qword_10092ADB0, &unk_1007AF400);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - v12;
  v14 = sub_10000C518(&unk_100930810, &unk_1007B7670);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  v18 = sub_100742BB4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v36 - v23;
  v39 = a1;
  sub_100746944();
  sub_1007525C4();
  (*(v15 + 8))(v17, v14);
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  v25 = swift_dynamicCast();
  v26 = *(v19 + 56);
  if (v25)
  {
    v26(v13, 0, 1, v18);
    (*(v19 + 32))(v24, v13, v18);
    v27 = *(v19 + 16);
    v37 = v24;
    v27(v21, v24, v18);

    sub_100747E84();
    v28 = v10;
    if (sub_100747E94() & 1) != 0 || (, sub_100747EB4(), , v29 = sub_100745894(), , (v29))
    {
      sub_1007468F4();
      v30 = v40;
      sub_100752994();
      sub_100185ADC();
      v31 = v42;
      sub_100752954();

      sub_100747EC4();

      sub_10000C518(&qword_10092A068, &qword_1007AE538);
      sub_10074DCB4();
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1007A6580;
      sub_10074DCA4();
      sub_10074DC94();
      v47 = v32;
      sub_100185A94(&qword_10092A070, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
      sub_10000C518(&qword_10092A078, &qword_1007AF410);
      sub_10002DDC8(&qword_10092A080, &qword_10092A078, &qword_1007AF410, &protocol conformance descriptor for [A]);
      sub_1007543A4();
      (*(v41 + 8))(v30, v31);
    }

    else
    {
      sub_10000C518(&qword_10092A068, &qword_1007AE538);
      sub_10074DCB4();
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1007A6580;
      sub_10074DCA4();
      sub_10074DC94();
      v47 = v35;
      sub_100185A94(&qword_10092A070, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
      sub_10000C518(&qword_10092A078, &qword_1007AF410);
      sub_10002DDC8(&qword_10092A080, &qword_10092A078, &qword_1007AF410, &protocol conformance descriptor for [A]);
      sub_1007543A4();
    }

    (*(v44 + 8))(v28, v45);
    return (*(v19 + 8))(v37, v18);
  }

  else
  {
    v26(v13, 1, 1, v18);
    sub_100185A2C(v13);
    sub_10000C518(&qword_10092A068, &qword_1007AE538);
    sub_10074DCB4();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1007A6580;
    sub_10074DCA4();
    sub_10074DC94();
    v47 = v33;
    sub_100185A94(&qword_10092A070, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
    sub_10000C518(&qword_10092A078, &qword_1007AF410);
    sub_10002DDC8(&qword_10092A080, &qword_10092A078, &qword_1007AF410, &protocol conformance descriptor for [A]);
    return sub_1007543A4();
  }
}

uint64_t sub_10018584C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1001859D4(uint64_t a1)
{
  result = sub_100185A94(&qword_10092ADA0, type metadata accessor for AnnotationCollectionViewHostingCell, &unk_1007AF3AC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100185A2C(uint64_t a1)
{
  v2 = sub_10000C518(&qword_10092ADB0, &unk_1007AF400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100185A94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100185ADC()
{
  result = qword_10092ADB8;
  if (!qword_10092ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092ADB8);
  }

  return result;
}

unint64_t sub_100185B4C()
{
  result = qword_10092ADD8;
  if (!qword_10092ADD8)
  {
    sub_10000C724(&qword_10092ADD0, &qword_1007AF460);
    sub_100185C04();
    sub_10002DDC8(&qword_100924AD8, &unk_100933360, &qword_1007A8530, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092ADD8);
  }

  return result;
}

unint64_t sub_100185C04()
{
  result = qword_10092ADE0;
  if (!qword_10092ADE0)
  {
    sub_10000C724(&qword_10092ADE8, &qword_1007AF468);
    sub_10000C724(&qword_10092ADF0, &qword_1007AF470);
    sub_10000C724(&qword_10092ADF8, &qword_1007AF478);
    sub_100752764();
    sub_10000C724(&qword_10092AE00, &qword_1007AF480);
    sub_10002DDC8(&qword_10092AE08, &qword_10092AE00, &qword_1007AF480, &protocol conformance descriptor for IDView<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10002DDC8(&qword_10092AE10, &unk_100933350, qword_1007BA4A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092ADE0);
  }

  return result;
}

unint64_t sub_100185DD8()
{
  result = qword_10092AE20;
  if (!qword_10092AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092AE20);
  }

  return result;
}

unint64_t sub_100185E30()
{
  result = qword_10092AE28;
  if (!qword_10092AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092AE28);
  }

  return result;
}

uint64_t sub_100185E88(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_100185EC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10074E9C4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100185EF0(uint64_t a1, uint64_t a2, objc_class *a3, char a4)
{
  v43 = a1;
  v44 = sub_100750304();
  v7 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007410D4();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10000C518(&qword_100923030, &unk_1007B17C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_100754074();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a3;
  if (a4)
  {
    sub_100754164();
  }

  else
  {
    sub_1007541A4();
    v17 = [(objc_class *)a3 userInterfaceStyle];
    v18 = objc_opt_self();
    v19 = &selRef_systemGray3Color;
    if (v17 != 2)
    {
      v19 = &selRef_systemGray5Color;
    }

    v20 = [v18 *v19];
    v21 = sub_100754034();
    v40 = v13;
    v22 = v7;
    v23 = a3;
    v24 = v21;
    sub_100751584();
    v24(v45, 0);
    v25 = v23;
    v7 = v22;
    v13 = v40;
    [(objc_class *)v25 displayScale];
    v26 = sub_100754034();
    sub_100751594();
    v26(v45, 0);
  }

  (*(v14 + 104))(v16, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v13);
  sub_100754084();
  sub_100754104();
  if (a2)
  {
    sub_10000C518(&unk_100929CA0, &qword_1007A6610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A5A00;
    *(inited + 32) = NSFontAttributeName;
    v28 = qword_100921370;

    v29 = NSFontAttributeName;
    if (v28 != -1)
    {
      swift_once();
    }

    v30 = sub_100750534();
    v31 = sub_10000D0FC(v30, qword_100981788);
    v32 = v41;
    (*(*(v30 - 8) + 16))(v41, v31, v30);
    v33 = v44;
    (*(v7 + 104))(v32, enum case for FontSource.useCase(_:), v44);
    v34.super.isa = v42;
    isa = sub_1007502F4(v34).super.isa;
    (*(v7 + 8))(v32, v33);
    *(inited + 64) = sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
    *(inited + 40) = isa;
    sub_100413A18(inited);
    swift_setDeallocating();
    sub_10000C8CC(inited + 32, &unk_100923510, &unk_1007A6620);
    sub_1007410F4();
    sub_100741094();
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = sub_100741084();
  (*(*(v37 - 8) + 56))(v12, v36, 1, v37);
  return sub_1007540F4();
}

NSString sub_10018640C()
{
  result = sub_100753064();
  qword_10092AE30 = result;
  return result;
}

uint64_t sub_10018644C()
{
  v0 = sub_10000C518(&qword_10092AF00, &qword_1007AF6A0);
  __chkstk_darwin(v0);
  v1 = sub_10000C518(&qword_10092AEF8, qword_1007B4CB0);
  sub_100039C50(v1, qword_10092AE38);
  sub_10000D0FC(v1, qword_10092AE38);
  sub_100016C60(0, &qword_10093B420, UIButton_ptr);
  sub_100750624();
  sub_10002DDC8(&qword_10092AF08, &qword_10092AF00, &qword_1007AF6A0, &protocol conformance descriptor for ViewRecycler<A>);
  return sub_1007512E4();
}

uint64_t sub_100186570()
{
  v0 = sub_100752E44();
  sub_100039C50(v0, qword_10092AE50);
  v1 = sub_10000D0FC(v0, qword_10092AE50);
  if (qword_100921EE8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D0FC(v0, qword_100983330);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_100186638(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1007467A4();
    sub_10052AB60(v5, 1, v4);
  }

  return result;
}

void sub_1001866C0(uint64_t a1, char a2, uint64_t a3, objc_class *a4)
{
  v6 = sub_100751504();
  __chkstk_darwin(v6);
  v7 = sub_10000C518(&qword_100932470, &unk_1007A5A90);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_1007467B4();
  sub_100185EF0(v10, v11, a4, a2 & 1);

  v12 = sub_1007541F4();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  sub_100754224();
  v13 = [(objc_class *)a4 preferredContentSizeCategory];
  v14 = sub_1004E9630(v13);
  v15 = v14;

  if (v14)
  {
    v16 = v15;
    sub_100753CE4();
    sub_1007514D4();
    sub_100753CF4();
  }

  else
  {
    sub_1007519E4();
    sub_100753CE4();
    sub_1007514F4();
    sub_100753CF4();
  }
}

char *sub_1001868B8(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_topSeparator;
  v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = objc_opt_self();
  v12 = [v11 separatorColor];
  [v10 setBackgroundColor:v12];

  *&v4[v9] = v10;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_title;
  *&v4[v13] = [objc_allocWithZone(UILabel) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_pills] = _swiftEmptyArrayStorage;
  v14 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_bottomSeparator;
  v15 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = [v11 separatorColor];
  [v15 setBackgroundColor:v16];

  *&v4[v14] = v15;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_guidedSearchResult] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_impressionsCalculator] = 0;
  v17 = &v4[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_impressionsUpdateBlock];
  v18 = type metadata accessor for GuidedSearchResultContentView();
  *v17 = 0;
  *(v17 + 1) = 0;
  v29.receiver = v4;
  v29.super_class = v18;
  v19 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  v20 = *&v19[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_topSeparator];
  v21 = v19;
  [v21 addSubview:v20];
  v22 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_title;
  [v21 addSubview:*&v21[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_title]];
  [v21 addSubview:*&v21[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_bottomSeparator]];
  v23 = *&v21[v22];
  v24 = objc_opt_self();
  v25 = v23;
  result = [v24 _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
  if (result)
  {
    v27 = result;
    [v25 setFont:result];

    [*&v21[v22] setNumberOfLines:0];
    sub_10000C518(&unk_1009249D0, qword_1007A7B10);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1007A6580;
    *(v28 + 32) = sub_1007519E4();
    *(v28 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    *(v28 + 48) = sub_100751554();
    *(v28 + 56) = &protocol witness table for UITraitLegibilityWeight;
    sub_100753D44();

    swift_unknownObjectRelease();

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100186C34()
{
  v1 = v0;
  v2 = sub_1007521E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100752224();
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_pills;
  swift_beginAccess();
  *(v9 + 16) = *&v1[v10];
  v11 = objc_opt_self();

  if ([v11 isMainThread])
  {
    swift_beginAccess();
    sub_10018A124((v9 + 16), 0x74696E696564, 0xE600000000000000, v12);
    swift_endAccess();
  }

  else
  {
    sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
    v20 = sub_100753774();
    aBlock[4] = sub_10018A978;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = &unk_10086A5C8;
    v19 = _Block_copy(aBlock);

    sub_100752204();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10018A980(&qword_1009236B0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v18 = v6;
    sub_10000C518(&unk_10092F750, &qword_1007A6920);
    sub_10002DDC8(&qword_1009236C0, &unk_10092F750, &qword_1007A6920, &protocol conformance descriptor for [A]);
    sub_1007543A4();
    v14 = v19;
    v13 = v20;
    sub_100753784();
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    (*(v21 + 8))(v8, v18);
  }

  v15 = type metadata accessor for GuidedSearchResultContentView();
  v22.receiver = v1;
  v22.super_class = v15;
  return objc_msgSendSuper2(&v22, "dealloc");
}

uint64_t sub_100186FFC(uint64_t a1)
{
  swift_beginAccess();
  sub_10018A124((a1 + 16), 0x74696E696564, 0xE600000000000000, v2);
  return swift_endAccess();
}

void sub_100187120(__n128 a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v58 = sub_100752294();
  v4 = *(v58 - 8);
  __chkstk_darwin(v58);
  v6 = (v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1007476D4();
  sub_10018A980(&qword_10092AF10, 255, &type metadata accessor for GuidedSearchResult, &protocol conformance descriptor for SearchResult);
  sub_1007468B4();
  v7 = aBlock[0];
  if (aBlock[0])
  {
    v48 = v4;
    *&v3[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_guidedSearchResult] = aBlock[0];

    v8 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_title];
    sub_1007476B4();
    v59 = v3;
    if (v9)
    {
      v10 = sub_100753064();
    }

    else
    {
      v10 = 0;
    }

    [v8 setText:v10];

    v11 = sub_1007476C4();
    v46 = byte_10092F2E0;
    swift_getKeyPath();
    sub_100746914();

    v56 = v67;
    v12 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_pills;
    v13 = v59;
    swift_beginAccess();
    v44 = v12;
    sub_10018A124(&v13[v12], 0xD000000000000017, 0x800000010076E960, v14);
    if (qword_100920430 != -1)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v15 = sub_100752E44();
      sub_10000D0FC(v15, qword_10092AE50);
      sub_10000C518(&qword_100923930, &qword_1007A6B60);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007AB1A0;
      v62 = sub_10000C518(&qword_10092AEF0, &qword_1007AF698);
      aBlock[0] = &type metadata for GuidedSearchTokenPill;
      sub_100752424();
      sub_10000C8CC(aBlock, &unk_100923520, &qword_1007A5A70);
      sub_1007523A4();
      if (v11 >> 62)
      {
        v16 = sub_100754664();
      }

      else
      {
        v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v62 = &type metadata for Int;
      aBlock[0] = v16;
      sub_100752424();
      sub_10000C8CC(aBlock, &unk_100923520, &qword_1007A5A70);
      sub_1007523A4();
      if (qword_100920428 != -1)
      {
        swift_once();
      }

      v17 = sub_10000C518(&qword_10092AEF8, qword_1007B4CB0);
      v18 = sub_10000D0FC(v17, qword_10092AE38);
      swift_beginAccess();
      v62 = v17;
      v19 = sub_10000D134(aBlock);
      v20 = *(*(v17 - 8) + 16);
      v53 = v18;
      v54 = v17;
      v20(v19, v18, v17);
      sub_100752424();
      sub_10000C8CC(aBlock, &unk_100923520, &qword_1007A5A70);
      sub_100752CE4();

      if (!v16)
      {
        break;
      }

      v21 = v16;
      v66 = _swiftEmptyArrayStorage;
      sub_1007545C4();
      if (v16 < 0)
      {
        __break(1u);
        return;
      }

      v43[1] = v7;
      v52 = sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
      v47 = sub_100016C60(0, &qword_100929CC0, UIAction_ptr);
      v22 = 0;
      v55 = v11;
      v51 = v11 & 0xC000000000000001;
      v50 = enum case for DispatchPredicate.onQueue(_:);
      v49 = (v48 + 13);
      ++v48;
      v46 &= 1u;
      v45 = &v61;
      while (1)
      {
        if (v51)
        {
          v23 = sub_100754574();
        }

        else
        {
          v23 = *(v55 + 8 * v22 + 32);
        }

        *v6 = sub_100753774();
        v24 = v58;
        (*v49)(v6, v50, v58);
        v25 = sub_1007522C4();
        (*v48)(v6, v24);
        if ((v25 & 1) == 0)
        {
          break;
        }

        v11 = v21;
        if (qword_100920420 != -1)
        {
          swift_once();
        }

        v26 = qword_10092AE30;
        v27 = swift_allocObject();
        swift_weakInit();
        v28 = swift_allocObject();
        *(v28 + 16) = v27;
        *(v28 + 24) = v23;
        v29 = v26;

        v7 = sub_100753FF4();
        swift_beginAccess();
        sub_1007512C4();
        swift_endAccess();
        v30 = v65;
        if (v65)
        {
          [v65 removeActionForIdentifier:v29 forControlEvents:0x2000];
          [v30 addAction:v7 forControlEvents:0x2000];
          v31 = v30;
        }

        else
        {
          sub_100016C60(0, &qword_10093B420, UIButton_ptr);
          v32 = v7;
          v68.value.super.super.isa = v7;
          v31 = sub_100754234(UIButtonTypeSystem, v68).super.super.super.super.isa;
          v30 = 0;
        }

        v33 = swift_allocObject();
        *(v33 + 16) = v46;
        v34 = v56;
        *(v33 + 24) = v23;
        *(v33 + 32) = v34;
        v63 = sub_10018A778;
        v64 = v33;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v61 = sub_1001A67C4;
        v62 = &unk_10086A578;
        v35 = _Block_copy(aBlock);

        v36 = v34;
        v37 = v30;

        [(objc_class *)v31 setConfigurationUpdateHandler:v35];

        _Block_release(v35);
        v38 = [(objc_class *)v31 superview];
        v39 = v59;
        if (!v38 || (v7 = v38, sub_100016C60(0, &qword_100922300, UIView_ptr), v40 = v39, v41 = sub_100753FC4(), v7, v40, (v41 & 1) == 0))
        {
          [v39 addSubview:v31];
        }

        ++v22;
        sub_1007545A4();
        sub_1007545D4();
        sub_1007545E4();
        sub_1007545B4();
        v21 = v11;
        if (v11 == v22)
        {

          v42 = v66;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_32:
      swift_once();
    }

    v42 = _swiftEmptyArrayStorage;
    v39 = v59;
LABEL_29:
    *&v39[v44] = v42;
    swift_endAccess();

    [v39 setNeedsLayout];
  }
}

void sub_100187B40(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v5 = sub_100752914();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_guidedSearchResult);
    if (v11 && (swift_beginAccess(), (v12 = swift_weakLoadStrong()) != 0))
    {
      v13 = v12;
      v14 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_pills;
      swift_beginAccess();
      v15 = *&v10[v14];

      v51 = sub_1007476C4();
      v42 = v10;
      v40 = v11;
      if (v15 >> 62)
      {
        goto LABEL_36;
      }

      for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
      {
        v49 = v15 & 0xFFFFFFFFFFFFFF8;
        v50 = v15 & 0xC000000000000001;
        v17 = v51 & 0xFFFFFFFFFFFFFF8;
        v52 = v51 & 0xFFFFFFFFFFFFFF8;
        if (v51 < 0)
        {
          v17 = v51;
        }

        v39 = v17;
        v47 = v51 & 0xC000000000000001;
        v45 = (v6 + 48);
        v44 = (v6 + 32);
        v43 = (v6 + 8);
        v18 = 4;
        v48 = v51 >> 62;
        v46 = i;
        v41 = v4;
        while (1)
        {
          v19 = v18 - 4;
          if (v50)
          {
            v20 = sub_100754574();
          }

          else
          {
            if (v19 >= *(v49 + 16))
            {
              goto LABEL_34;
            }

            v20 = *(v15 + 8 * v18);
          }

          v21 = v20;
          v22 = v18 - 3;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v48)
          {
            if (v19 == sub_100754664())
            {
LABEL_30:

              goto LABEL_31;
            }
          }

          else if (v19 == *(v52 + 16))
          {
            goto LABEL_30;
          }

          if (v47)
          {
            v6 = sub_100754574();
          }

          else
          {
            if (v19 >= *(v52 + 16))
            {
              goto LABEL_35;
            }

            v6 = *(v51 + 8 * v18);
          }

          sub_1007467C4();
          if ((*v45)(v4, 1, v5) == 1)
          {

            sub_10000C8CC(v4, &unk_100925380, qword_1007A8E40);
          }

          else
          {
            (*v44)(v8, v4, v5);
            v23 = v21;
            if ([v23 isHidden])
            {
            }

            else
            {
              [v23 frame];
              v25 = v24;
              v27 = v26;
              v29 = v28;
              v31 = v30;

              v32 = v13;
              v33 = v15;
              v34 = v5;
              v35 = v8;
              v36 = v42;
              v37 = [v42 superview];
              v38 = v36;
              v8 = v35;
              v5 = v34;
              v15 = v33;
              v13 = v32;
              v4 = v41;
              [v38 convertRect:v37 toView:{v25, v27, v29, v31}];

              sub_100749544();
            }

            (*v43)(v8, v5);
          }

          ++v18;
          if (v22 == v46)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        ;
      }

LABEL_31:
    }

    else
    {
    }
  }
}

void sub_10018803C(uint64_t a1)
{
  v2 = v1;
  v60.receiver = v1;
  v60.super_class = type metadata accessor for GuidedSearchResultContentView();
  objc_msgSendSuper2(&v60, "layoutSubviews");
  sub_1007477B4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [v1 traitCollection];
  [v11 displayScale];
  if (v12 != 3.0)
  {

    goto LABEL_5;
  }

  v13 = sub_100753804();

  if (v13)
  {
LABEL_5:
    v14 = 1.0;
    goto LABEL_6;
  }

  v14 = 0.666666667;
LABEL_6:
  [v2 effectiveUserInterfaceLayoutDirection];
  v15 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_topSeparator];
  v61.origin.x = v4;
  v61.origin.y = v6;
  v61.size.width = v8;
  v61.size.height = v10;
  MinX = CGRectGetMinX(v61);
  v62.origin.x = v4;
  v62.origin.y = v6;
  v62.size.width = v8;
  v62.size.height = v10;
  v59 = v14;
  [v15 setFrame:{MinX, 0.0, CGRectGetWidth(v62), v14}];
  v17 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_title];
  v63.origin.x = v4;
  v63.origin.y = v6;
  v63.size.width = v8;
  v63.size.height = v10;
  CGRectGetMinX(v63);
  [v15 frame];
  CGRectGetMaxY(v64);
  [v17 sizeThatFits:{v8, v10}];
  [v2 bounds];
  sub_100753AB4();
  [v17 setFrame:?];
  v65.origin.x = v4;
  v65.origin.y = v6;
  v65.size.width = v8;
  v65.size.height = v10;
  v18 = CGRectGetMinX(v65);
  [v17 frame];
  MaxY = CGRectGetMaxY(v66);
  [v2 bounds];
  v20 = CGRectGetMaxY(v67);
  v21 = [v2 traitCollection];
  v22 = [v21 preferredContentSizeCategory];
  v23 = sub_100753094();
  v25 = v24;
  if (v23 == sub_100753094() && v25 == v26)
  {

    goto LABEL_10;
  }

  v27 = sub_100754754();

  if (v27)
  {
LABEL_10:
    v28 = sub_100753964();

    if (v28)
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v30 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_pills;
    swift_beginAccess();
    v31 = *&v2[v30];
    if (v31 >> 62)
    {
LABEL_39:
      v32 = sub_100754664();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = v32 != 0;
    v68.origin.x = v4;
    v68.origin.y = v6;
    v68.size.width = v8;
    v68.size.height = v10;
    Width = CGRectGetWidth(v68);
    v35 = *&v2[v30];
    v58 = v2;
    if (v35 >> 62)
    {
      v36 = sub_100754664();
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v36)
    {
      goto LABEL_36;
    }

    v37 = 0;
    v52 = v20 - v59 + -12.0;
    v53 = MaxY + 16.0;
    v2 = (v35 & 0xC000000000000001);
    v20 = 1.79769313e308;
    while (2)
    {
      v30 = v33;
      while (2)
      {
        v38 = v37;
        while (1)
        {
          if (v2)
          {
            v39 = sub_100754574();
          }

          else
          {
            if (v38 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_38;
            }

            v39 = *(v35 + 8 * v38 + 32);
          }

          v40 = v39;
          v37 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          if (v29 >= v30)
          {
            break;
          }

          [v39 setHidden:1];

          ++v38;
          if (v37 == v36)
          {
            goto LABEL_36;
          }
        }

        v54 = v20;
        v55 = Width;
        [v39 sizeThatFits:{Width, v20}];
        v42 = v41;
        MaxY = v43;
        v44 = v18;
        v45 = v18 + v41;
        v69.size.width = v8;
        v56 = v6;
        v57 = v4;
        v69.origin.x = v4;
        v69.size.height = v10;
        v69.origin.y = v6;
        if (CGRectGetMaxX(v69) >= v45)
        {
          v33 = v30;
          v46 = v44;
          v47 = v53;
          v48 = 8.0;
        }

        else
        {
          v33 = v30 + 1;
          if (v29 <= v30)
          {
            [v40 setHidden:1];

            ++v30;
            v18 = v44;
            Width = v55;
            v20 = v54;
            if (v37 != v36)
            {
              continue;
            }

LABEL_36:

            v49 = *&v58[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_bottomSeparator];
            v72.origin.x = v4;
            v72.origin.y = v6;
            v72.size.width = v8;
            v72.size.height = v10;
            v50 = CGRectGetMinX(v72);
            [v58 bounds];
            v51 = CGRectGetMaxY(v73) - v59;
            v74.origin.x = v4;
            v74.origin.y = v6;
            v74.size.width = v8;
            v74.size.height = v10;
            [v49 setFrame:{v50, v51, CGRectGetWidth(v74), v59}];
            return;
          }

          v70.origin.y = v6;
          v70.origin.x = v4;
          v70.size.width = v8;
          v70.size.height = v10;
          v46 = CGRectGetMinX(v70);
          v48 = 8.0;
          v47 = v53 + MaxY + 8.0;
        }

        break;
      }

      [v58 bounds];
      v53 = v47;
      sub_100753AB4();
      [v40 setFrame:?];
      v18 = v42 + v48 + v46;
      [v40 frame];
      [v40 setHidden:v52 < CGRectGetMaxY(v71)];

      Width = v55;
      v6 = v56;
      v4 = v57;
      v20 = v54;
      if (v37 != v36)
      {
        continue;
      }

      goto LABEL_36;
    }
  }

  __break(1u);
}

id sub_1001886CC()
{
  v0 = [objc_allocWithZone(UILabel) init];
  result = [v0 setNumberOfLines:0];
  qword_10092AE68 = v0;
  return result;
}

id sub_10018871C()
{
  result = [objc_opt_self() buttonWithType:1];
  qword_10092AE70 = result;
  return result;
}

uint64_t sub_10018875C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1001887A0()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_guidedSearchResult) = 0;

  [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_title) setText:0];
  v1 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_pills;
  swift_beginAccess();
  sub_10018A124((v0 + v1), 0x4665726170657270, 0xEF6573756552726FLL, v2);
  return swift_endAccess();
}

double sub_100188844()
{
  swift_beginAccess();

  return result;
}

double sub_10018888C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_100188944()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1, v1[1]);
  return v2;
}

double sub_1001889A0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6, v7);
}

void (*sub_100188A60(uint64_t a1, uint64_t a2))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return sub_10018A6EC;
}

uint64_t sub_100188B4C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_10018A980(&qword_10092AEE0, a2, type metadata accessor for GuidedSearchResultContentView, &unk_1007AF5AC);
  result = sub_10018A980(&qword_10092AEE8, v3, type metadata accessor for GuidedSearchResultContentView, &unk_1007AF5DC);
  *(a1 + 16) = result;
  return result;
}

id sub_100188BD0(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_title];
  result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
  if (result)
  {
    v4 = result;
    [v2 setFont:result];

    return [a1 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100188C74(uint64_t a1, char a2, char *a3, double a4, double a5)
{
  LOBYTE(v6) = a2;
  v89 = sub_100750304();
  v10 = *(v89 - 8);
  __chkstk_darwin(v89);
  v88 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007410D4();
  __chkstk_darwin(v12 - 8);
  v87 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&qword_100923030, &unk_1007B17C0);
  __chkstk_darwin(v14 - 8);
  v86 = &v79 - v15;
  v16 = sub_10000C518(&qword_100932470, &unk_1007A5A90);
  __chkstk_darwin(v16 - 8);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v79 - v20;
  if (qword_100920440 != -1)
  {
LABEL_45:
    swift_once();
  }

  v22 = qword_10092AE70;
  v90 = a3;
  sub_100185EF0(0, 0, a3, v6 & 1);
  v23 = sub_1007541F4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v97 = v23;
  v25(v21, 0, 1);
  sub_100754224();
  sub_10000C518(&qword_10092AF18, &unk_1007B4F50);
  v26 = swift_allocObject();
  v81 = xmmword_1007A5A00;
  *(v26 + 16) = xmmword_1007A5A00;
  *(v26 + 32) = _swiftEmptyArrayStorage;
  v27 = *(a1 + 16);
  if (v27)
  {
    v91 = v21;
    v21 = 0;
    v96 = (v24 + 48);
    v85 = (v10 + 13);
    v84 = NSFontAttributeName;
    v83 = (v10 + 1);
    v82 = enum case for FontSource.useCase(_:);
    v28 = a1 + 40;
    v98 = v22;
    v94 = v18;
    v95 = v27;
    v80 = a1 + 40;
    do
    {
      v29 = (v26 + 24);
      a3 = v21;
      v30 = a4;
      v6 = (v28 + 16 * v21);
      v93 = v26;
      while (1)
      {
        if (a3 >= v27)
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v21 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          goto LABEL_41;
        }

        v31 = *(v6 - 1);
        a1 = *v6;

        sub_100754214();
        v32 = (*v96)(v18, 1, v97);
        v99 = a3 + 1;
        if (v32)
        {
          v33 = v18;
          v10 = &qword_100932470;
          v21 = v29;
          v34 = v26;
          v35 = v18;
          v18 = &unk_1007A5A90;
          sub_100016B4C(v33, v91, &qword_100932470, &unk_1007A5A90);
          sub_100754224();
          v36 = v35;
          v26 = v34;
          v29 = v21;
          sub_10000C8CC(v36, &qword_100932470, &unk_1007A5A90);
        }

        else
        {
          v92 = v31;
          v37 = v84;
          v102[0] = v84;
          v38 = qword_100921370;

          v39 = v37;
          if (v38 != -1)
          {
            swift_once();
          }

          v40 = sub_100750534();
          v41 = sub_10000D0FC(v40, qword_100981788);
          v42 = v88;
          (*(*(v40 - 8) + 16))(v88, v41, v40);
          v43 = v89;
          (*v85)(v42, v82, v89);
          v44.super.isa = v90;
          isa = sub_1007502F4(v44).super.isa;
          (*v83)(v42, v43);
          v102[4] = sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
          v102[1] = isa;
          sub_10000C518(&unk_10092AF20, &unk_1007D1010);
          v46 = sub_1007546B4();

          sub_100016B4C(v102, &v100, &unk_100923510, &unk_1007A6620);
          v10 = v100;
          v47 = sub_100415ADC();
          if (v48)
          {
            goto LABEL_43;
          }

          v46[(v47 >> 6) + 8] |= 1 << v47;
          *(v46[6] + 8 * v47) = v10;
          sub_10000C610(&v101, (v46[7] + 32 * v47));
          v49 = v46[2];
          v50 = __OFADD__(v49, 1);
          v51 = v49 + 1;
          if (v50)
          {
            goto LABEL_44;
          }

          v46[2] = v51;

          sub_10000C8CC(v102, &unk_100923510, &unk_1007A6620);
          sub_1007410F4();
          v52 = v86;
          sub_100741094();
          v53 = sub_100741084();
          (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
          sub_1007540F4();
          v22 = v98;
          sub_100754224();
        }

        [v22 sizeThatFits:{a5, 1.79769313e308}];
        v55 = v54;
        v57 = v56;
        if (v30 + v54 > a5)
        {
          break;
        }

        v10 = *(v26 + 16);
        if (!v10)
        {
          goto LABEL_42;
        }

        v58 = *&v29[8 * v10];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v29[8 * v10] = v58;
        v18 = v94;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v58 = sub_100255BE0(0, *(v58 + 2) + 1, 1, v58);
          *&v29[8 * v10] = v58;
        }

        v61 = *(v58 + 2);
        v60 = *(v58 + 3);
        if (v61 >= v60 >> 1)
        {
          *&v29[8 * v10] = sub_100255BE0((v60 > 1), v61 + 1, 1, v58);
        }

        v30 = v30 + v55 + 8.0;

        v62 = *&v29[8 * v10];
        *(v62 + 16) = v61 + 1;
        v63 = v62 + 16 * v61;
        *(v63 + 32) = v55;
        *(v63 + 40) = v57;
        ++a3;
        v6 += 2;
        v27 = v95;
        v26 = v93;
        v22 = v98;
        if (v99 == v95)
        {
          goto LABEL_25;
        }
      }

      sub_10000C518(&qword_100923320, &unk_1007AF770);
      v64 = swift_allocObject();
      *(v64 + 16) = v81;
      *(v64 + 32) = v55;
      *(v64 + 40) = v57;
      v66 = *(v26 + 16);
      v65 = *(v26 + 24);
      if (v66 >= v65 >> 1)
      {
        v26 = sub_100255CE4((v65 > 1), v66 + 1, 1, v26);
      }

      v18 = v94;
      v21 = v99;

      *(v26 + 16) = v66 + 1;
      *(v26 + 8 * v66 + 32) = v64;
      v27 = v95;
      v28 = v80;
    }

    while (v21 != v95);
  }

LABEL_25:
  v67 = [(objc_class *)v90 preferredContentSizeCategory];
  v68 = sub_100753094();
  v70 = v69;
  if (v68 == sub_100753094() && v70 == v71)
  {
  }

  else
  {
    v72 = sub_100754754();

    if ((v72 & 1) == 0)
    {
      __break(1u);
      return;
    }
  }

  v73 = sub_100753964();

  v74 = 2;
  if (v73)
  {
    v74 = 3;
  }

  if (*(v26 + 16) >= v74)
  {
    v75 = v74;
  }

  else
  {
    v75 = *(v26 + 16);
  }

  sub_100754774();
  swift_unknownObjectRetain_n();
  v76 = swift_dynamicCastClass();
  if (!v76)
  {
    swift_unknownObjectRelease();
    v76 = _swiftEmptyArrayStorage;
  }

  v77 = v76[2];

  if (v77 == v75)
  {
    v78 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v78)
    {
      return;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1006316A8(v26, v26 + 32, 0, (2 * v75) | 1);
  }

  swift_unknownObjectRelease();
}

void sub_100189674(uint64_t a1, char a2, char *a3, double a4)
{
  sub_100188C74(a1, a2 & 1, a3, 0.0, a4);
  v5 = v4;
  v6 = *(v4 + 16);
  if (!v6)
  {
LABEL_20:

    return;
  }

  v7 = 0;
  v20 = v4 + 32;
  v8 = -8.0;
  while (v7 < *(v5 + 16))
  {
    v9 = *(v20 + 8 * v7);
    v10 = *(v9 + 16);
    if (v10)
    {

      sub_10001E46C(0, v10, 0);
      v11 = _swiftEmptyArrayStorage;
      v12 = _swiftEmptyArrayStorage[2];
      v13 = (v9 + 40);
      do
      {
        v14 = *v13;
        v21 = v11;
        v15 = *(v11 + 3);
        v16 = v12 + 1;
        if (v12 >= v15 >> 1)
        {
          sub_10001E46C((v15 > 1), v12 + 1, 1);
          v11 = v21;
        }

        *(v11 + 2) = v16;
        v11[v12 + 4] = v14;
        v13 += 2;
        ++v12;
        --v10;
      }

      while (v10);
LABEL_13:
      v17 = v11[4];
      v18 = v16 - 1;
      if (v16 != 1)
      {
        v19 = 5;
        do
        {
          if (v17 < v11[v19])
          {
            v17 = v11[v19];
          }

          ++v19;
          --v18;
        }

        while (v18);
      }

      goto LABEL_4;
    }

    v16 = _swiftEmptyArrayStorage[2];

    v11 = _swiftEmptyArrayStorage;
    if (v16)
    {
      goto LABEL_13;
    }

    v17 = 0.0;
LABEL_4:
    ++v7;
    v8 = v8 + v17 + 8.0;
    if (v7 == v6)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

id sub_100189840(void *a1)
{
  v1 = sub_100745644();
  v66 = *(v1 - 8);
  v67 = v1;
  __chkstk_darwin(v1);
  v65 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v59 - v5;
  v64 = sub_10074F6E4();
  v7 = *(v64 - 8);
  __chkstk_darwin(v64);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v59 - v11;
  v13 = sub_10074F704();
  v60 = *(v13 - 8);
  v61 = v13;
  __chkstk_darwin(v13);
  v68 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v59 - v16;
  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  v18 = v6;
  v19 = v64;
  (*(v4 + 8))(v18, v3);
  v20 = v17;
  v21 = v65;
  v22 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v71)
  {
    v22 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v7 + 104))(v12, *v22, v19);
  sub_10074F5C4();
  v63 = v23;
  sub_10074F5E4();
  v62 = v24;
  sub_10074F5D4();
  swift_getKeyPath();
  sub_100746914();

  sub_100745604();
  (*(v7 + 16))(v9, v12, v19);
  if (qword_100920C20 != -1)
  {
    swift_once();
  }

  v25 = v68;
  sub_10074F6B4();
  (*(v66 + 8))(v21, v67);
  (*(v7 + 8))(v12, v19);
  sub_1007476D4();
  sub_10018A980(&qword_10092AF10, 255, &type metadata accessor for GuidedSearchResult, &protocol conformance descriptor for SearchResult);
  sub_1007468B4();
  v26 = v71;
  swift_getKeyPath();
  sub_100746914();

  v27 = v70;
  [v70 displayScale];
  if (v28 == 3.0)
  {
    v29 = sub_100753804();

    if ((v29 & 1) == 0)
    {
      v30 = 0.666666667;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v30 = 1.0;
LABEL_10:
  sub_10074F674();
  sub_10074F664();
  sub_100753BA4();
  v32 = v31;
  swift_getKeyPath();
  sub_100746914();

  v33 = v70;
  if (v26)
  {
    LODWORD(v67) = byte_10092F2E0;
    v34 = v30 + 20.0;

    v35 = sub_1007476B4();
    v59 = v20;
    if (!v36)
    {
      goto LABEL_20;
    }

    v37 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v37 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (!v37)
    {

      goto LABEL_20;
    }

    if (qword_100920438 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v38 = qword_10092AE68;
      result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
      if (!result)
      {
        break;
      }

      v40 = result;
      [v38 setFont:result];

      v41 = sub_100753064();
      [v38 setText:v41];

      [v38 sizeThatFits:{v32, 1.79769313e308}];
      v43 = v42;

      v34 = v34 + v43 + 16.0;
LABEL_20:
      v46 = sub_1007476C4();
      v47 = v46;
      if (v46 >> 62)
      {
        v48 = sub_100754664();
        if (!v48)
        {
LABEL_32:

          v50 = _swiftEmptyArrayStorage;
LABEL_33:
          sub_100189674(v50, v67 & 1, v33, v32);

          v57 = v61;
          v58 = *(v60 + 8);
          v58(v68, v61);
          return (v58)(v59, v57);
        }
      }

      else
      {
        v48 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v48)
        {
          goto LABEL_32;
        }
      }

      v69 = _swiftEmptyArrayStorage;
      sub_10001E1E8(0, v48 & ~(v48 >> 63), 0);
      if ((v48 & 0x8000000000000000) == 0)
      {
        v65 = v33;
        v66 = v26;
        v49 = 0;
        v50 = v69;
        do
        {
          if ((v47 & 0xC000000000000001) != 0)
          {
            sub_100754574();
          }

          else
          {
          }

          v51 = sub_1007467B4();
          v53 = v52;

          v69 = v50;
          v55 = v50[2];
          v54 = v50[3];
          if (v55 >= v54 >> 1)
          {
            sub_10001E1E8((v54 > 1), v55 + 1, 1);
            v50 = v69;
          }

          ++v49;
          v50[2] = v55 + 1;
          v56 = &v50[2 * v55];
          v56[4] = v51;
          v56[5] = v53;
        }

        while (v48 != v49);

        v33 = v65;
        goto LABEL_33;
      }

      __break(1u);
LABEL_35:
      swift_once();
    }

    __break(1u);
  }

  else
  {

    v44 = v61;
    v45 = *(v60 + 8);
    v45(v25, v61);
    return (v45)(v20, v44);
  }

  return result;
}

void sub_10018A124(unint64_t *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = sub_100752294();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  *v10 = sub_100753774();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = sub_1007522C4();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v27 = a2;
    if (qword_100920430 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = sub_100752E44();
  sub_10000D0FC(v12, qword_10092AE50);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007AB1A0;
  v31 = sub_10000C518(&qword_10092AEF0, &qword_1007AF698);
  v30[0] = &type metadata for GuidedSearchTokenPill;
  sub_100752424();
  sub_10000C8CC(v30, &unk_100923520, &qword_1007A5A70);
  sub_1007523A4();
  v13 = *a1;
  v28 = *a1 >> 62;
  v26 = a1;
  if (v28)
  {
    v14 = sub_100754664();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = &type metadata for Int;
  v30[0] = v14;
  sub_100752424();
  sub_10000C8CC(v30, &unk_100923520, &qword_1007A5A70);
  sub_1007523A4();
  v31 = &type metadata for String;
  v30[0] = v27;
  v30[1] = a3;

  sub_100752424();
  sub_10000C8CC(v30, &unk_100923520, &qword_1007A5A70);
  sub_100752CE4();

  if (v28)
  {
    v15 = sub_100754664();
    if (!v15)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_17;
    }
  }

  if (v15 < 1)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    v24 = sub_100754664();
    if ((v24 & 0x8000000000000000) == 0)
    {
LABEL_35:
      v21 = v24;
      goto LABEL_21;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v16 = 0;
  do
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = sub_100754574();
    }

    else
    {
      v17 = *(v13 + 8 * v16 + 32);
    }

    v18 = v17;
    if (qword_100920428 != -1)
    {
      swift_once();
    }

    ++v16;
    v19 = sub_10000C518(&qword_10092AEF8, qword_1007B4CB0);
    sub_10000D0FC(v19, qword_10092AE38);
    v29 = v18;
    swift_beginAccess();
    sub_1007512D4();
    swift_endAccess();
  }

  while (v15 != v16);
LABEL_17:
  v20 = v26;
  if (!v28 && (swift_isUniquelyReferenced_nonNull_bridgeObject() & 1) != 0)
  {
    if (!(*v20 >> 62))
    {
      v21 = *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_21:
      sub_10015DAC8(0, v21);
      return;
    }

    goto LABEL_32;
  }

  if (*v20 >> 62)
  {
    v23 = sub_100754664();
    v24 = sub_100754664();
    if (v24 < 0)
    {
      goto LABEL_34;
    }

    v25 = sub_100754664();
    if (v23 < 0 || v25 < v23)
    {
      __break(1u);
      goto LABEL_31;
    }
  }

  v22 = sub_100632C90();

  *v20 = v22;
}

uint64_t sub_10018A678()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10018A6B0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10018A6FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10074E9C4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10018A738()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_10018A784(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_10018A79C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_topSeparator;
  v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = objc_opt_self();
  v4 = [v3 separatorColor];
  [v2 setBackgroundColor:v4];

  *(v0 + v1) = v2;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_title;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_pills) = _swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_bottomSeparator;
  v7 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = [v3 separatorColor];
  [v7 setBackgroundColor:v8];

  *(v0 + v6) = v7;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_guidedSearchResult) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_impressionsCalculator) = 0;
  v9 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension29GuidedSearchResultContentView_impressionsUpdateBlock);
  *v9 = 0;
  v9[1] = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_10018A940()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10018A980(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10018A9EC()
{
  v0 = sub_100747064();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039C50(v4, qword_10097E0A8);
  sub_10000D0FC(v0, qword_10097E0A8);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_10097E3A8);
  (*(v1 + 16))(v3, v5, v0);
  sub_10074F4B4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10018AB50(uint64_t a1)
{
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746F44();
  v46 = a1;
  sub_100746F84();
  if (qword_100920F68 != -1)
  {
    swift_once();
  }

  v6 = sub_100750534();
  v7 = sub_10000D0FC(v6, qword_100980B88);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v5, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v3[13];
  v51 = v3 + 13;
  v53 = v12;
  v12(v5, enum case for FontSource.useCase(_:), v2);
  v50 = sub_100750B04();
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v13 = sub_10000D134(v54);
  v14 = v3 + 2;
  v44 = v3[2];
  v44(v13, v5, v2);
  sub_100750B14();
  v15 = v3[1];
  v47 = v3 + 1;
  v49 = v15;
  v15(v5, v2);
  sub_100746F64();
  if (qword_100920F70 != -1)
  {
    swift_once();
  }

  v42 = sub_10000D0FC(v6, qword_100980BA0);
  v9(v5, v42, v6);
  v53(v5, v11, v2);
  v45 = v6;
  v16 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v52 = v10;
  v48 = v9;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v17 = sub_10000D134(v54);
  v44(v17, v5, v2);
  sub_100750B14();
  v49(v5, v2);
  sub_100747034();
  v18 = v42;
  v48(v5, v42, v6);
  HIDWORD(v41) = v11;
  v43 = v14;
  v19 = v53;
  v53(v5, v11, v2);
  v58 = v16;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v20 = sub_10000D134(v54);
  v21 = v44;
  v44(v20, v5, v2);
  sub_100750B14();
  v22 = v49;
  v49(v5, v2);
  sub_100747004();
  v23 = v18;
  v24 = v45;
  v48(v5, v23, v45);
  v19(v5, v11, v2);
  v25 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v26 = sub_10000D134(v54);
  v21(v26, v5, v2);
  sub_100750B14();
  v22(v5, v2);
  sub_100746FF4();
  v48(v5, v42, v24);
  v27 = HIDWORD(v41);
  v53(v5, HIDWORD(v41), v2);
  v58 = v25;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v28 = sub_10000D134(v54);
  v21(v28, v5, v2);
  sub_100750B14();
  v22(v5, v2);
  sub_100747054();
  if (qword_100920F80 != -1)
  {
    swift_once();
  }

  v29 = v45;
  v30 = sub_10000D0FC(v45, qword_100980BD0);
  v31 = v48;
  v48(v5, v30, v29);
  v53(v5, v27, v2);
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v32 = sub_10000D134(v54);
  v21(v32, v5, v2);
  sub_100750B14();
  v49(v5, v2);
  sub_100747044();
  if (qword_100920F78 != -1)
  {
    swift_once();
  }

  v33 = sub_10000D0FC(v29, qword_100980BB8);
  v31(v5, v33, v29);
  v53(v5, v27, v2);
  v34 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v35 = v31;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v36 = sub_10000D134(v54);
  v37 = v44;
  v44(v36, v5, v2);
  sub_100750B14();
  v38 = v49;
  v49(v5, v2);
  sub_100746FC4();
  sub_100746FA4();
  v35(v5, v33, v45);
  v53(v5, HIDWORD(v41), v2);
  v58 = v34;
  v59 = &protocol witness table for StaticDimension;
  sub_10000D134(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v39 = sub_10000D134(v54);
  v37(v39, v5, v2);
  sub_100750B14();
  v38(v5, v2);
  return sub_100746FB4();
}

uint64_t sub_10018B3A4()
{
  v0 = sub_100747064();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039C50(v4, qword_10097E0C0);
  sub_10000D0FC(v0, qword_10097E0C0);
  if (qword_100920448 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_10097E0A8);
  (*(v1 + 16))(v3, v5, v0);
  sub_10074F4B4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10018B538()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_1007504F4();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_100039C50(v6, qword_10097E0D8);
  v28 = v6;
  v31 = sub_10000D0FC(v6, qword_10097E0D8);
  v56 = &type metadata for Double;
  v57 = &protocol witness table for Double;
  *&v55 = 0x4030000000000000;
  v29 = v5;
  sub_100750504();
  v53 = &type metadata for Double;
  v54 = &protocol witness table for Double;
  *&v52 = 0x4024000000000000;
  if (qword_100921570 != -1)
  {
    swift_once();
  }

  v7 = sub_100750534();
  v8 = sub_10000D0FC(v7, qword_100981D88);
  v38 = *(*(v7 - 8) + 16);
  v38(v3, v8, v7);
  v9 = enum case for FontSource.useCase(_:);
  v35 = v1[13];
  v35(v3, enum case for FontSource.useCase(_:), v0);
  v34 = sub_100750B04();
  v50 = v34;
  v51 = &protocol witness table for StaticDimension;
  sub_10000D134(&v49);
  v47 = v0;
  v48 = &protocol witness table for FontSource;
  v10 = sub_10000D134(&v46);
  v11 = v1[2];
  v37 = v1 + 2;
  v33 = v11;
  v11(v10, v3, v0);
  sub_100750B14();
  v13 = v1[1];
  v12 = v1 + 1;
  v36 = v13;
  v13(v3, v0);
  if (qword_100921578 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v7, qword_100981DA0);
  v38(v3, v14, v7);
  v35(v3, v9, v0);
  v47 = v34;
  v48 = &protocol witness table for StaticDimension;
  sub_10000D134(&v46);
  v44 = v0;
  v45 = &protocol witness table for FontSource;
  v15 = sub_10000D134(&v43);
  v33(v15, v3, v0);
  sub_100750B14();
  v36(v3, v0);
  v27 = v12;
  if (qword_100921580 != -1)
  {
    swift_once();
  }

  v26 = sub_10000D0FC(v7, qword_100981DB8);
  v38(v3, v26, v7);
  v25 = v9;
  v16 = v35;
  v35(v3, v9, v0);
  v17 = v34;
  v44 = v34;
  v45 = &protocol witness table for StaticDimension;
  sub_10000D134(&v43);
  v41 = v0;
  v42 = &protocol witness table for FontSource;
  v18 = sub_10000D134(&v40);
  v19 = v33;
  v33(v18, v3, v0);
  sub_100750B14();
  v36(v3, v0);
  v38(v3, v26, v7);
  v16(v3, v25, v0);
  v41 = v17;
  v42 = &protocol witness table for StaticDimension;
  sub_10000D134(&v40);
  v39[3] = v0;
  v39[4] = &protocol witness table for FontSource;
  v20 = sub_10000D134(v39);
  v19(v20, v3, v0);
  sub_100750B14();
  v36(v3, v0);
  v21 = v31;
  sub_100012160(&v55, v31);
  v22 = v28;
  (*(v30 + 32))(v21 + v28[5], v29, v32);
  sub_100012160(&v52, v21 + v22[6]);
  sub_100012160(&v49, v21 + v22[7]);
  sub_100012160(&v46, v21 + v22[8]);
  sub_100012160(&v43, v21 + v22[9]);
  return sub_100012160(&v40, v21 + v22[10]);
}

Class sub_10018BB30()
{
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  result = sub_100753EC4(v3, v2).super.isa;
  qword_10097E0F0 = result;
  return result;
}

id sub_10018BBC4()
{
  v1 = v0;
  v2 = sub_100747064();
  v78 = *(v2 - 8);
  v79 = v2;
  __chkstk_darwin(v2);
  v77 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100751344();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100751374();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v1 traitCollection];
  v14 = [v13 preferredContentSizeCategory];
  v15 = sub_100753954();

  v16 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_gradientBlurView;
  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_gradientBlurView];
  if (v15)
  {
    v73 = v5;
    v74 = v12;
    v75 = v9;
    v76 = v8;
    if (v17)
    {
      [v17 setHidden:1];
    }

    v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_titleLabel];
    [v18 setNumberOfLines:{0, v73}];
    v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_contentView];
    [v19 addSubview:v18];
    v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_kindLabel];
    [v20 setNumberOfLines:0];
    v21 = [v20 layer];
    [v21 setCompositingFilter:0];

    [v19 addSubview:v20];
    v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_subtitleLabel];
    if (v22)
    {
      v23 = v22;
      [v23 setNumberOfLines:0];
      v24 = [v23 layer];
      [v24 setCompositingFilter:0];

      [v19 addSubview:v23];
    }

    v25 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_separatorView;
    v26 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_separatorView];
    if (v26 || (((*(v73 + 104))(v7, enum case for Separator.Position.top(_:), v4), v80[3] = sub_1007507D4(), v80[4] = &protocol witness table for ZeroDimension, sub_10000D134(v80), sub_1007507C4(), v27 = v74, sub_100751354(), v28 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}], v29 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator, swift_beginAccess(), v30 = *(v75 + 40), v31 = v28, v30(&v28[v29], v27, v76), swift_endAccess(), v31, (v32 = *&v1[v25]) == 0) ? (v33 = 0) : (objc_msgSend(v32, "removeFromSuperview"), v33 = *&v1[v25]), *&v1[v25] = v31, v54 = v31, v33, objc_msgSend(v19, "addSubview:", v54), v54, objc_msgSend(v1, "setNeedsLayout"), v54, (v26 = *&v1[v25]) != 0))
    {
      [v26 setHidden:0];
    }

    v55 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView;
    v56 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView];
    if (v56)
    {
      v57 = qword_100920450;
      v58 = v56;
      if (v57 != -1)
      {
        swift_once();
      }

      v59 = v79;
      v60 = sub_10000D0FC(v79, qword_10097E0C0);
      v62 = v77;
      v61 = v78;
      (*(v78 + 16))(v77, v60, v59);
      v63 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v61 + 24))(&v58[v63], v62, v59);
      swift_endAccess();
      [v58 setNeedsLayout];

      (*(v61 + 8))(v62, v59);
      v64 = *&v1[v55];
      if (v64)
      {
        [v64 setLayoutMargins:{16.0, 0.0, 16.0, 0.0}];
      }
    }
  }

  else
  {
    if (v17)
    {
      goto LABEL_10;
    }

    v50 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView());
    v51 = sub_10016AB14(0);
    v52 = *&v1[v16];
    if (v52)
    {
      [v52 removeFromSuperview];
      v53 = *&v1[v16];
    }

    else
    {
      v53 = 0;
    }

    *&v1[v16] = v51;
    v66 = v51;

    v67 = *&v1[v16];
    if (v67)
    {
      v68 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView];
      v69 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_notifyMeButton];
      if (v69)
      {
        v70 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_notifyMeButton];
      }

      else
      {
        v70 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_titleLabel];
        v69 = 0;
      }

      v71 = v69;
      [v68 insertSubview:v67 belowSubview:v70];
    }

    [v1 setNeedsLayout];

    v72 = *&v1[v16];
    if (v72)
    {
      [v72 setUserInteractionEnabled:0];
      v17 = *&v1[v16];
      if (v17)
      {
LABEL_10:
        [v17 setHidden:0];
      }
    }

    v34 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_titleLabel];
    [v34 setNumberOfLines:1];
    v35 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView];
    [v35 addSubview:v34];
    v36 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_kindLabel];
    [v36 setNumberOfLines:1];
    [v35 addSubview:v36];
    v37 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_subtitleLabel];
    if (v37)
    {
      v38 = v37;
      [v38 setNumberOfLines:2];
      [v35 addSubview:v38];
    }

    v39 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_separatorView];
    if (v39)
    {
      [v39 setHidden:1];
    }

    v40 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView;
    v41 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView];
    if (v41)
    {
      v42 = qword_100920448;
      v43 = v41;
      if (v42 != -1)
      {
        swift_once();
      }

      v44 = v79;
      v45 = sub_10000D0FC(v79, qword_10097E0A8);
      v47 = v77;
      v46 = v78;
      (*(v78 + 16))(v77, v45, v44);
      v48 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v46 + 24))(&v43[v48], v47, v44);
      swift_endAccess();
      [v43 setNeedsLayout];

      (*(v46 + 8))(v47, v44);
      v49 = *&v1[v40];
      if (v49)
      {
        [v49 setLayoutMargins:{4.0, 0.0, 4.0, 0.0}];
      }
    }

    sub_10018C450();
  }

  return [v1 setNeedsLayout];
}

id sub_10018C450()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_shadowView];
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  [v1 setHidden:v3 == 2];
  v4 = [v0 traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  LOBYTE(v3) = sub_100753954();

  if ((v3 & 1) == 0)
  {
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView] overrideUserInterfaceStyle];
    sub_100753094();
    v6 = sub_100753064();

    v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_subtitleLabel];
    if (v7)
    {
      v8 = [v7 layer];
      [v8 setCompositingFilter:v6];
    }

    v9 = [*&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_kindLabel] layer];
    [v9 setCompositingFilter:v6];
  }

  if (v0[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_includeBorderInDarkMode] == 1)
  {
    v10 = [v0 traitCollection];
    v11 = [v10 userInterfaceStyle];

    v12 = v11 != 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_borderView];

  return [v13 setHidden:v12];
}

double sub_10018C650(void *a1, void *a2)
{
  v3 = [a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = [a2 preferredContentSizeCategory];
  v6 = sub_100753094();
  v8 = v7;
  if (v6 == sub_100753094() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_100754754();

    if ((v11 & 1) == 0)
    {
      sub_10018BBC4();
    }
  }

  return result;
}