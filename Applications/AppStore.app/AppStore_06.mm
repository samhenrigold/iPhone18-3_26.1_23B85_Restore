unint64_t sub_10009A098()
{
  result = qword_100970E80;
  if (!qword_100970E80)
  {
    type metadata accessor for ArtworkView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100970E80);
  }

  return result;
}

void sub_10009A0F0()
{
  *(v0 + OBJC_IVAR____TtC8AppStore19IconArtworkGridView_iconViews) = _swiftEmptyArrayStorage;
  v1 = OBJC_IVAR____TtC8AppStore19IconArtworkGridView_layoutMetrics;
  if (qword_10096CF68 != -1)
  {
    swift_once();
  }

  v2 = v0 + v1;
  v3 = qword_1009CDB90;
  v4 = xmmword_1009CDB80;
  *(v2 + 40) = &type metadata for CGFloat;
  *(v2 + 48) = &protocol witness table for CGFloat;
  *(v2 + 16) = v3;
  v5 = byte_1009CDBC8;
  v6 = *algn_1009CDB98;
  v7 = *&qword_1009CDBB8;
  *v2 = v4;
  *(v2 + 56) = v6;
  *(v2 + 72) = v7;
  *(v2 + 88) = v5;
  sub_10009A1F0(&xmmword_1009CDB80, v0 + OBJC_IVAR____TtC8AppStore19IconArtworkGridView_config);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

__n128 sub_10009A258(uint64_t a1)
{
  result = v1[2];
  *(a1 + 56) = result;
  *(a1 + 72) = 0;
  return result;
}

unint64_t sub_10009A268()
{
  result = qword_100972B18;
  if (!qword_100972B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100972B18);
  }

  return result;
}

double sub_10009A3AC()
{
  v0 = type metadata accessor for ShelfLayoutContext();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  v4 = sub_10009A4A0(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_10009A4A0(uint64_t a1)
{
  v2 = type metadata accessor for PageGrid();
  v60 = *(v2 - 8);
  v61 = v2;
  __chkstk_darwin(v2);
  v59 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MixedMediaLockupLayout.LockupPosition();
  v51 = *(v4 - 8);
  __chkstk_darwin(v4);
  v56 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v53 = &v50 - v7;
  __chkstk_darwin(v8);
  v10 = &v50 - v9;
  v11 = sub_10002849C(&unk_100973CA0, qword_1007B3BB8);
  __chkstk_darwin(v11 - 8);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  v58 = type metadata accessor for MixedMediaLockupLayout.Metrics();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Shelf.PresentationHints();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v50 - v23;
  ShelfLayoutContext.shelfPresentationHints.getter();
  static Shelf.PresentationHints.showSupplementaryText.getter();
  sub_10009AD18(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v63 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v25 = *(v19 + 8);
  v25(v21, v18);
  v25(v24, v18);
  v62 = a1;
  v26 = ShelfLayoutContext.traitEnvironment.getter();
  v27 = v51;
  (*(v51 + 56))(v16, 1, 1, v4);
  v54 = v16;
  v28 = v16;
  v29 = v27;
  sub_10009AD60(v28, v13);
  v30 = *(v27 + 48);
  if (v30(v13, 1, v4) == 1)
  {
    (*(v52 + 224))();
    v31 = v10;
    if (v30(v13, 1, v4) != 1)
    {
      sub_10009ADD0(v13);
    }
  }

  else
  {
    (*(v27 + 32))(v10, v13, v4);
    v31 = v10;
  }

  v32 = *(v29 + 16);
  v33 = v53;
  v32(v53, v31, v4);
  v34 = (*(v29 + 88))(v33, v4);
  v35 = v56;
  if (v34 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
  {
    if (qword_10096CFE8 != -1)
    {
      swift_once();
    }

    sub_10002C0AC(qword_1009CDDC0, v66);
  }

  else if (v34 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
  {
    if (qword_10096CFE0 != -1)
    {
      swift_once();
    }

    sub_10002C0AC(qword_1009CDD98, v66);
  }

  else
  {
    if (qword_10096CFE8 != -1)
    {
      swift_once();
    }

    sub_10002C0AC(qword_1009CDDC0, v66);
    (*(v29 + 8))(v33, v4);
  }

  v32(v35, v31, v4);
  sub_10002C0AC(v66, v65);
  sub_1000367E8();
  if (qword_10096E290 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for FontUseCase();
  sub_1000056A8(v36, qword_1009D1730);
  v37 = [v26 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for StaticDimension();
  v39 = sub_1000056A8(v38, qword_1009D2430);
  v64[3] = v38;
  v64[4] = &protocol witness table for StaticDimension;
  v40 = sub_1000056E0(v64);
  (*(*(v38 - 8) + 16))(v40, v39, v38);
  v41 = v55;
  MixedMediaLockupLayout.Metrics.init(lockupPosition:taglineNumberOfLines:taglineSpace:taglineFont:alwaysIncludeTaglineSpace:verticalSpacing:layoutMargins:)();
  swift_unknownObjectRelease();
  sub_100007000(v66);
  (*(v29 + 8))(v31, v4);
  sub_10009ADD0(v54);
  v42 = v59;
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v44 = v43;
  v46 = v45;
  (*(v60 + 8))(v42, v61);
  v47 = ShelfLayoutContext.traitEnvironment.getter();
  v48 = sub_10024A4A8(v41, v47, v44, v46);
  swift_unknownObjectRelease();
  (*(v57 + 8))(v41, v58);
  return v48;
}

uint64_t sub_10009AD18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10009AD60(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100973CA0, qword_1007B3BB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009ADD0(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100973CA0, qword_1007B3BB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009AE3C(uint64_t a1)
{
  v2 = type metadata accessor for PageFacets.Facet.Option();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PageFacets.Facet();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PageFacetsViewController.Item(0);
  __chkstk_darwin(v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A19E4(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(sub_10002849C(&qword_100972C60, &qword_1007B3D50) + 48);
    (*(v7 + 32))(v9, v12, v6);
    (*(v3 + 32))(v5, &v12[v13], v2);
    Hasher._combine(_:)(1uLL);
    sub_1000A1A48(&qword_100972C68, &type metadata accessor for PageFacets.Facet, &protocol conformance descriptor for PageFacets.Facet);
    dispatch thunk of Hashable.hash(into:)();
    sub_1000A1A48(&qword_100972C70, &type metadata accessor for PageFacets.Facet.Option, &protocol conformance descriptor for PageFacets.Facet.Option);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    Hasher._combine(_:)(0);
    sub_1000A1A48(&qword_100972C68, &type metadata accessor for PageFacets.Facet, &protocol conformance descriptor for PageFacets.Facet);
    dispatch thunk of Hashable.hash(into:)();
  }

  return (*(v7 + 8))(v9, v6);
}

Swift::Int sub_10009B178()
{
  Hasher.init(_seed:)();
  sub_10009AE3C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10009B1BC(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10009AE3C(v2);
  return Hasher._finalize()();
}

void sub_10009B1FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC8AppStore24PageFacetsViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v3, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_10009B2D0(uint64_t a1)
{
  v3 = type metadata accessor for PageFacets();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_10097CD30, &qword_1007B3D60);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_10002849C(&qword_100972CE8, &unk_1007B3DE8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v19 - v12;
  v14 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_pageFacets;
  swift_beginAccess();
  v15 = *(v11 + 56);
  sub_1000A2EFC(v1 + v14, v13);
  sub_1000A2EFC(a1, &v13[v15]);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) == 1)
  {
    if (v16(&v13[v15], 1, v3) == 1)
    {
      sub_10002B894(v13, &qword_10097CD30, &qword_1007B3D60);
      return;
    }

    goto LABEL_6;
  }

  sub_1000A2EFC(v13, v9);
  if (v16(&v13[v15], 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v3);
LABEL_6:
    sub_10002B894(v13, &qword_100972CE8, &unk_1007B3DE8);
LABEL_7:
    sub_10009B5EC();
    return;
  }

  (*(v4 + 32))(v6, &v13[v15], v3);
  sub_1000A1A48(&qword_100972CF0, &type metadata accessor for PageFacets, &protocol conformance descriptor for PageFacets);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v4 + 8);
  v18(v6, v3);
  v18(v9, v3);
  sub_10002B894(v13, &qword_10097CD30, &qword_1007B3D60);
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }
}

void sub_10009B5EC()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972CB0, &qword_1007B3D90);
  __chkstk_darwin(v2 - 8);
  v81 = &v66 - v3;
  v4 = type metadata accessor for PageFacetsViewController.Item(0);
  v99 = *(v4 - 8);
  v100 = v4;
  __chkstk_darwin(v4);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v97 = &v66 - v8;
  v9 = type metadata accessor for PageFacets.Facet();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PageFacets.FacetGroup();
  v85 = *(v13 - 8);
  __chkstk_darwin(v13);
  v82 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_10097CD30, &qword_1007B3D60);
  __chkstk_darwin(v15 - 8);
  v17 = &v66 - v16;
  v18 = type metadata accessor for PageFacets();
  v70 = *(v18 - 8);
  __chkstk_darwin(v18);
  v69 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10002849C(&qword_100972CB8, &qword_1007B3D98);
  v68 = *(v87 - 8);
  __chkstk_darwin(v87);
  v21 = &v66 - v20;
  sub_1000A1A48(&qword_100972CC0, &type metadata accessor for PageFacets.FacetGroup, &protocol conformance descriptor for PageFacets.FacetGroup);
  sub_1000A1A48(&qword_100972CC8, type metadata accessor for PageFacetsViewController.Item, &unk_1007B3D00);
  v86 = v21;
  v84 = v13;
  NSDiffableDataSourceSnapshot.init()();
  v22 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_pageFacets;
  swift_beginAccess();
  v23 = v1 + v22;
  v24 = v70;
  sub_1000A2EFC(v23, v17);
  if ((*(v24 + 48))(v17, 1, v18) == 1)
  {
    sub_10002B894(v17, &qword_10097CD30, &qword_1007B3D60);
    v25 = *(v1 + OBJC_IVAR____TtC8AppStore24PageFacetsViewController_diffableDataSource);
    if (v25)
    {
      v26 = v25;
      v27 = v86;
      dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

      (*(v68 + 8))(v27, v87);
      return;
    }

    goto LABEL_33;
  }

  v28 = *(v24 + 32);
  v67 = v18;
  v28(v69, v17, v18);
  v29 = PageFacets.facetGroups.getter();
  v80 = *(v29 + 16);
  if (v80)
  {
    v30 = 0;
    v79 = *(v85 + 80);
    v78 = (v79 + 32) & ~v79;
    v77 = v29 + v78;
    v76 = v85 + 16;
    v75 = v85 + 8;
    v98 = v10 + 16;
    v90 = (v10 + 8);
    v71 = (v85 + 56);
    v74 = xmmword_1007B10D0;
    v73 = v1;
    v88 = v10;
    v89 = v6;
    v96 = v12;
    v72 = v29;
    while (v30 < *(v29 + 16))
    {
      v33 = v84;
      v34 = *(v85 + 72);
      v83 = v30;
      v95 = *(v85 + 16);
      v35 = v82;
      v95(v82, v77 + v34 * v30, v84);
      sub_10002849C(&qword_100972CD0, &unk_1007B3DA0);
      v36 = v78;
      v37 = swift_allocObject();
      *(v37 + 16) = v74;
      v95((v37 + v36), v35, v33);
      NSDiffableDataSourceSnapshot.appendSections(_:)(v37);

      v38 = PageFacets.FacetGroup.facets.getter();
      (*(v85 + 8))(v35, v33);
      v94 = *(v38 + 16);
      if (v94)
      {
        v39 = 0;
        v92 = v38 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v40 = _swiftEmptyArrayStorage;
        v41 = v90;
        v93 = v38;
        while (v39 < *(v38 + 16))
        {
          v42 = *(v10 + 72);
          v95 = v39;
          v43 = *(v10 + 16);
          v43(v12, v92 + v42 * v39, v9);
          if (PageFacets.Facet.displayOptionsInline.getter())
          {
            v44 = PageFacets.Facet.options.getter();
            v45 = *(v44 + 16);
            if (v45)
            {
              v46 = v9;
              v47 = type metadata accessor for PageFacets.Facet.Option();
              v48 = *(v47 - 8);
              v49 = *(v48 + 80);
              v91 = v44;
              v50 = v44 + ((v49 + 32) & ~v49);
              v51 = *(v48 + 72);
              v52 = (v48 + 16);
              v53 = v97;
              do
              {
                v54 = *(sub_10002849C(&qword_100972C60, &qword_1007B3D50) + 48);
                v43(v53, v96, v46);
                (*v52)(v53 + v54, v50, v47);
                swift_storeEnumTagMultiPayload();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v40 = sub_1000344BC(0, v40[2] + 1, 1, v40);
                }

                v56 = v40[2];
                v55 = v40[3];
                if (v56 >= v55 >> 1)
                {
                  v40 = sub_1000344BC((v55 > 1), v56 + 1, 1, v40);
                }

                v40[2] = v56 + 1;
                v57 = v40 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v56;
                v53 = v97;
                sub_1000A2DF8(v97, v57);
                v50 += v51;
                --v45;
              }

              while (v45);

              v9 = v46;
              v10 = v88;
              v6 = v89;
              v12 = v96;
              v41 = v90;
            }

            else
            {
            }

            (*v41)(v12, v9);
          }

          else
          {
            v43(v6, v12, v9);
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v40 = sub_1000344BC(0, v40[2] + 1, 1, v40);
            }

            v59 = v40[2];
            v58 = v40[3];
            if (v59 >= v58 >> 1)
            {
              v40 = sub_1000344BC((v58 > 1), v59 + 1, 1, v40);
            }

            (*v41)(v12, v9);
            v40[2] = v59 + 1;
            sub_1000A2DF8(v6, v40 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v59);
          }

          v38 = v93;
          v39 = v95 + 1;
          if (v95 + 1 == v94)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        break;
      }

LABEL_6:

      v31 = v83 + 1;
      v32 = v81;
      (*v71)(v81, 1, 1, v84);
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
      v30 = v31;

      sub_10002B894(v32, &qword_100972CB0, &qword_1007B3D90);
      v1 = v73;
      v29 = v72;
      if (v31 == v80)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_29:

  v60 = *(v1 + OBJC_IVAR____TtC8AppStore24PageFacetsViewController_diffableDataSource);
  v61 = v67;
  v62 = v70;
  v63 = v69;
  if (v60)
  {
    v64 = v60;
    v65 = v86;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v62 + 8))(v63, v61);
    (*(v68 + 8))(v65, v87);
    return;
  }

LABEL_34:
  __break(1u);
}

void sub_10009C0C8()
{
  v1 = v0;
  v2 = type metadata accessor for PageFacets.FacetGroup();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972CB8, &qword_1007B3D98);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - v8;
  v10 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_diffableDataSource;
  v11 = *&v0[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_diffableDataSource];
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v11;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v13 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  v14 = *(v13 + 16);
  if (!v14)
  {

    v25 = *&v1[v10];
    if (v25)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v33 = v10;
  v34 = v1;
  v35 = v7;
  v36 = v13;
  v15 = v2;
  v17 = *(v3 + 16);
  v16 = v3 + 16;
  v37 = v17;
  v18 = v9;
  v19 = v13 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
  v20 = *(v16 + 56);
  v21 = v6;
  v22 = (v16 - 8);
  do
  {
    v37(v5, v19, v15);
    v23 = v16;
    v24 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
    (*v22)(v5, v15);
    NSDiffableDataSourceSnapshot.reloadItems(_:)(v24);
    v16 = v23;

    v19 += v20;
    --v14;
  }

  while (v14);

  v6 = v21;
  v1 = v34;
  v7 = v35;
  v9 = v18;
  v25 = *&v34[v33];
  if (!v25)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_6:
  v26 = v25;
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  v27 = &v1[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_preselectionContentOffset];
  if (v1[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_preselectionContentOffset + 16])
  {
    (*(v7 + 8))(v9, v6);
    return;
  }

  v29 = *v27;
  v28 = v27[1];
  v30 = [v1 collectionView];
  if (v30)
  {
    v31 = v30;
    [v30 setContentOffset:{v29, v28}];

    (*(v7 + 8))(v9, v6);
    *v27 = 0.0;
    v27[1] = 0.0;
    *(v27 + 16) = 1;
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_10009C3D0(uint64_t a1, uint64_t a2)
{
  v21.receiver = v2;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, "viewDidLoad");
  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = v3;
  v5 = objc_opt_self();
  v6 = [v5 systemBackgroundColor];
  [v4 setBackgroundColor:v6];

  v7 = [v2 collectionView];
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = v7;
  v9 = [v5 systemBackgroundColor];
  [v8 setBackgroundColor:v9];

  v10 = sub_10009C60C();
  v11 = *&v2[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_diffableDataSource];
  *&v2[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_diffableDataSource] = v10;

  v12 = [v2 collectionView];
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    v20[4] = sub_1000A2EF4;
    v20[5] = v14;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_1002E9BD4;
    v20[3] = &unk_1008B3098;
    v16 = _Block_copy(v20);

    v17 = [v15 initWithSectionProvider:v16];
    _Block_release(v16);

    [v13 setCollectionViewLayout:v17];

    sub_10009CA20(v18, v19);
    sub_10009B5EC();
    return;
  }

LABEL_7:
  __break(1u);
}

id sub_10009C60C()
{
  v27 = sub_10002849C(&qword_100972CF8, &qword_1007B3DF8);
  v1 = *(v27 - 8);
  __chkstk_darwin(v27);
  v23[1] = v2;
  v24 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v23 - v4;
  v25 = sub_10002849C(&qword_100972D00, &qword_1007B3E00);
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v25);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v23 - v10;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005744(0, &qword_100972D08, UICollectionViewListCell_ptr);
  type metadata accessor for PageFacetsViewController.Item(0);
  UICollectionView.CellRegistration.init(handler:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005744(0, &qword_100978E10, UICollectionViewCell_ptr);
  v26 = v5;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  result = [v0 collectionView];
  if (result)
  {
    v13 = v25;
    (*(v6 + 16))(v8, v11, v25);
    v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v15 = swift_allocObject();
    (*(v6 + 32))(v15 + v14, v8, v13);
    v16 = objc_allocWithZone(sub_10002849C(&qword_100972D10, &qword_1007B3E08));
    v17 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    v18 = v24;
    v19 = v26;
    v20 = v27;
    (*(v1 + 16))(v24, v26, v27);
    v21 = (*(v1 + 80) + 16) & ~*(v1 + 80);
    v22 = swift_allocObject();
    (*(v1 + 32))(v22 + v21, v18, v20);
    dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();
    (*(v1 + 8))(v19, v20);
    (*(v6 + 8))(v11, v13);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10009CA20(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v3 = sub_10002849C(&unk_100984570, &unk_1007C4640);
  v21 = *(v3 - 8);
  v22 = v3;
  __chkstk_darwin(v3);
  v20 = v17 - v4;
  v5 = sub_10002849C(&qword_10097CCE0, &unk_1007B3DB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  PageFacetsPresenter.onFacetStateDidChange.getter();
  v9 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v24 = v9;
  v25 = &protocol witness table for OS_dispatch_queue;
  v23[0] = v10;
  v17[1] = sub_10002849C(&unk_100984580, &unk_1007C4660);
  sub_100097060(&unk_10097CD10, &unk_100984580, &unk_1007C4660, &protocol conformance descriptor for AsyncEvent<A>);
  v18 = v2;
  EventEmitter.addObserver<A>(on:target:method:)();

  v11 = v6 + 8;
  v12 = *(v6 + 8);
  v17[0] = v11;
  v12(v8, v5);
  sub_100007000(v23);
  PageFacetsPresenter.onSelectedFacetOptionsChanged.getter();
  v13 = static OS_dispatch_queue.main.getter();
  v24 = v9;
  v25 = &protocol witness table for OS_dispatch_queue;
  v23[0] = v13;
  EventEmitter.addObserver<A>(on:target:method:)();

  v12(v8, v5);
  sub_100007000(v23);
  PageFacetsPresenter.onPerformPageFacetsChangeAction.getter();
  v14 = static OS_dispatch_queue.main.getter();
  v24 = v9;
  v25 = &protocol witness table for OS_dispatch_queue;
  v23[0] = v14;
  sub_10002849C(&qword_100984590, &unk_1007B3DC0);
  sub_100097060(&unk_10097CD20, &qword_100984590, &unk_1007B3DC0, &protocol conformance descriptor for SyncEvent<A>);
  v15 = v20;
  EventEmitter.addObserver<A>(on:target:method:)();

  (*(v21 + 8))(v15, v22);
  return sub_100007000(v23);
}

void sub_10009CE1C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v51 = a1;
  v3 = sub_10002849C(&qword_100972CB8, &qword_1007B3D98);
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3);
  v5 = &v46 - v4;
  v6 = type metadata accessor for PageFacets.FacetGroup();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v46 = &v46 - v10;
  v11 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UICollectionLayoutListConfiguration();
  v52 = *(v19 - 8);
  v53 = v19;
  v20 = __chkstk_darwin(v19);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v18, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v15, v20);
  UICollectionLayoutListConfiguration.init(appearance:)();
  (*(v12 + 104))(v14, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v11);
  UICollectionLayoutListConfiguration.headerMode.setter();
  sub_100005744(0, &unk_100990AB0, NSCollectionLayoutSection_ptr);
  v23 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_11:
    (*(v52 + 8))(v22, v53);
    return;
  }

  v25 = *(Strong + OBJC_IVAR____TtC8AppStore24PageFacetsViewController_diffableDataSource);
  v26 = Strong;
  v27 = v25;

  if (v25)
  {
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    v28 = v50;
    v29 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    (*(v49 + 8))(v5, v28);
    if ((v51 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v29 + 16) > v51)
    {
      v31 = v47;
      v30 = v48;
      (*(v47 + 16))(v8, v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v51, v48);

      v32 = v46;
      (*(v31 + 32))(v46, v8, v30);
      v33 = PageFacets.FacetGroup.title.getter();
      if (v34)
      {
        v35 = v33;
        v36 = v34;

        v37 = HIBYTE(v36) & 0xF;
        if ((v36 & 0x2000000000000000) == 0)
        {
          v37 = v35 & 0xFFFFFFFFFFFFLL;
        }

        if (v37)
        {
          v38 = objc_opt_self();
          v39 = [v38 fractionalWidthDimension:1.0];
          v40 = [v38 estimatedDimension:44.0];
          v41 = [objc_opt_self() sizeWithWidthDimension:v39 heightDimension:v40];

          v42 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v41 elementKind:UICollectionElementKindSectionHeader alignment:1];
          sub_10002849C(&qword_100973210, qword_1007B0BB0);
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_1007B0B70;
          *(v43 + 32) = v42;
          sub_100005744(0, &qword_10097F460, NSCollectionLayoutBoundarySupplementaryItem_ptr);
          v44 = v42;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v23 setBoundarySupplementaryItems:isa];
        }
      }

      (*(v31 + 8))(v32, v30);
      goto LABEL_11;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_10009D42C(void *a1, uint64_t a2, char *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_10009D4A4(a1, a2, a3);
  }
}

uint64_t sub_10009D4A4(void *a1, uint64_t a2, char *a3)
{
  v170 = a3;
  v174 = a1;
  v146 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for UICellAccessory.Placement();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v152 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v151 = &v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for PageFacets.Facet.DisplayType();
  v175 = *(v160 - 8);
  __chkstk_darwin(v160);
  v141 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v142 = &v137 - v8;
  __chkstk_darwin(v9);
  v148 = &v137 - v10;
  __chkstk_darwin(v11);
  v161 = &v137 - v12;
  __chkstk_darwin(v13);
  v159 = &v137 - v14;
  __chkstk_darwin(v15);
  v158 = &v137 - v16;
  v17 = sub_10002849C(&qword_100972C90, &unk_1007B3D70);
  __chkstk_darwin(v17 - 8);
  v163 = &v137 - v18;
  v140 = type metadata accessor for UICellAccessory.CheckmarkOptions();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v138 = (&v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v166 = type metadata accessor for UICellAccessory.DisplayedState();
  v162 = *(v166 - 8);
  __chkstk_darwin(v166);
  v155 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for PageFacets.Facet.Option();
  v157 = *(v168 - 8);
  __chkstk_darwin(v168);
  v22 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PageFacets.Facet();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v156 = (&v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v147 = &v137 - v27;
  __chkstk_darwin(v28);
  v30 = &v137 - v29;
  __chkstk_darwin(v31);
  v169 = &v137 - v32;
  v33 = type metadata accessor for PageFacetsViewController.Item(0);
  __chkstk_darwin(v33);
  v35 = &v137 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v137 - v37;
  __chkstk_darwin(v39);
  v41 = &v137 - v40;
  v42 = type metadata accessor for UIListContentConfiguration();
  v172 = *(v42 - 8);
  v173 = v42;
  __chkstk_darwin(v42);
  v143 = &v137 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v46 = &v137 - v45;
  static UIListContentConfiguration.cell()();
  sub_1000A19E4(v170, v41);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v171 = v24;
  if (EnumCaseMultiPayload != 1)
  {
    v165 = v46;
    v169 = v41;
    sub_1000A19E4(v41, v35);
    v69 = *(v24 + 16);
    v168 = v35;
    v164 = v23;
    v138 = v69;
    v69(v30, v35, v23);
    v70 = v158;
    PageFacets.Facet.displayType.getter();
    v71 = v175;
    v72 = v159;
    v73 = v160;
    v139 = *(v175 + 13);
    v157 = v175 + 104;
    (v139)(v159, enum case for PageFacets.Facet.DisplayType.toggle(_:), v160);
    v74 = sub_1000A1A48(&qword_100972CA0, &type metadata accessor for PageFacets.Facet.DisplayType, &protocol conformance descriptor for PageFacets.Facet.DisplayType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v140 = v74;
    dispatch thunk of RawRepresentable.rawValue.getter();
    v170 = v30;
    if (v178 == v176 && v179 == v177)
    {
      v75 = 1;
    }

    else
    {
      v75 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v76 = *(v71 + 8);
    v76(v72, v73);
    v175 = (v71 + 8);
    v159 = v76;
    v76(v70, v73);

    if (v75)
    {
      PageFacets.Facet.title.getter();
      UIListContentConfiguration.text.setter();
      sub_100005744(0, &qword_10097CD40, UIAction_ptr);
      v77 = swift_allocObject();
      v78 = v167;
      swift_unknownObjectWeakInit();
      v79 = v147;
      v80 = v164;
      v138(v147, v170, v164);
      v81 = v171;
      v82 = (*(v171 + 80) + 24) & ~*(v171 + 80);
      v83 = swift_allocObject();
      *(v83 + 16) = v77;
      v84 = v170;
      (*(v81 + 32))(v83 + v82, v79, v80);
      v85 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v86 = [objc_allocWithZone(UISwitch) initWithFrame:v85 primaryAction:{0.0, 0.0, 0.0, 0.0}];

      v87 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_selectedFacetOptions;
      swift_beginAccess();
      v88 = *(v78 + v87);
      v60 = v172;
      if (*(v88 + 16) && (v89 = sub_1003D7A9C(v84), (v90 & 1) != 0))
      {
        v91 = *(*(v88 + 56) + 8 * v89);
        swift_endAccess();
        v92 = *(v91 + 16) != 0;
      }

      else
      {
        swift_endAccess();
        v92 = 0;
      }

      v100 = v174;
      [v86 setOn:v92];
      sub_10002849C(&qword_100972CA8, &qword_1007E20E0);
      type metadata accessor for UICellAccessory();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      v101 = sub_10002849C(&qword_100972D18, &unk_1007B3E10);
      v102 = v152;
      v103 = &v152[*(v101 + 48)];
      (*(v162 + 104))(v152, enum case for UICellAccessory.DisplayedState.always(_:), v166);
      *v103 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v103[1] = 0;
      (*(v149 + 104))(v102, enum case for UICellAccessory.Placement.trailing(_:), v150);
      v104 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v104 - 8) + 56))(v163, 1, 1, v104);
      v105 = v86;
      v106 = v151;
      UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
      static UICellAccessory.customView(configuration:)();
      (*(v153 + 8))(v106, v154);
      UICollectionViewListCell.accessories.setter();
      v178 = 0x2D7465636166;
      v179 = 0xE600000000000000;
      v107 = v170;
      v108._countAndFlagsBits = PageFacets.Facet.id.getter();
      String.append(_:)(v108);

      v109 = String._bridgeToObjectiveC()();

      [v100 setAccessibilityIdentifier:v109];

      v110 = *(v81 + 8);
      v110(v107, v80);
      v110(v168, v80);
      v59 = v173;
      goto LABEL_25;
    }

    v93 = v170;
    v94 = v171;
    v95 = v164;
    v170 = *(v171 + 8);
    (v170)(v93, v164);
    v96 = v156;
    (*(v94 + 32))(v156, v168, v95);
    PageFacets.Facet.displayType.getter();
    v97 = v148;
    v98 = v139;
    (v139)(v148, enum case for PageFacets.Facet.DisplayType.singleSelection(_:), v73);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v60 = v172;
    if (v178 == v176 && v179 == v177)
    {
      v99 = v159;
      (v159)(v97, v73);
      v99(v161, v73);
    }

    else
    {
      v111 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v112 = v159;
      (v159)(v97, v73);
      v112(v161, v73);

      if (v111)
      {
        goto LABEL_22;
      }

      PageFacets.Facet.displayType.getter();
      v98(v141, enum case for PageFacets.Facet.DisplayType.multipleSelection(_:), v73);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v178 != v176 || v179 != v177)
      {
        v135 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v136 = v159;
        (v159)(v141, v73);
        v136(v142, v73);

        if ((v135 & 1) == 0)
        {
          (v170)(v96, v164);
          UICollectionViewListCell.accessories.setter();
          v59 = v173;
LABEL_25:
          v41 = v169;
          v46 = v165;
          goto LABEL_30;
        }

LABEL_22:
        v113 = v143;
        static UIListContentConfiguration.valueCell()();
        v114 = v165;
        v59 = v173;
        (*(v60 + 8))(v165, v173);
        (*(v60 + 32))(v114, v113, v59);
        PageFacets.Facet.title.getter();
        UIListContentConfiguration.text.setter();
        v115 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_selectedFacetOptions;
        v116 = v167;
        swift_beginAccess();
        v117 = *(v116 + v115);

        sub_10009F20C(v96, v117);

        UIListContentConfiguration.secondaryText.setter();
        sub_10002849C(&qword_100972CA8, &qword_1007E20E0);
        type metadata accessor for UICellAccessory();
        *(swift_allocObject() + 16) = xmmword_1007B10D0;
        v118 = v162;
        v119 = v155;
        v120 = v166;
        (*(v162 + 104))(v155, enum case for UICellAccessory.DisplayedState.always(_:), v166);
        v121 = type metadata accessor for UICellAccessory.LayoutDimension();
        (*(*(v121 - 8) + 56))(v163, 1, 1, v121);
        v122 = v144;
        UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
        static UICellAccessory.disclosureIndicator(displayed:options:)();
        v123 = v156;
        (*(v145 + 8))(v122, v146);
        (*(v118 + 8))(v119, v120);
        v124 = v174;
        UICollectionViewListCell.accessories.setter();
        v125 = PageFacets.Facet.metricsParameterName.getter();
        if (v126)
        {
          v178 = 0x2D7465636166;
          v179 = 0xE600000000000000;
          String.append(_:)(*&v125);

          v127 = String._bridgeToObjectiveC()();

          [v124 setAccessibilityIdentifier:v127];
        }

        (v170)(v123, v164);
        goto LABEL_25;
      }

      v134 = v159;
      (v159)(v141, v73);
      v134(v142, v73);
    }

    goto LABEL_22;
  }

  v48 = v174;
  sub_1000A19E4(v41, v38);
  v49 = *(sub_10002849C(&qword_100972C60, &qword_1007B3D50) + 48);
  v50 = v169;
  (*(v24 + 32))(v169, v38, v23);
  v51 = v157;
  (*(v157 + 4))(v22, &v38[v49], v168);
  v175 = v22;
  PageFacets.Facet.Option.title.getter();
  UIListContentConfiguration.text.setter();
  v52 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_selectedFacetOptions;
  v53 = v167;
  swift_beginAccess();
  v54 = *(v53 + v52);
  if (*(v54 + 16) && (v55 = sub_1003D7A9C(v50), (v56 & 1) != 0))
  {
    v164 = v23;
    v57 = *(*(v54 + 56) + 8 * v55);
    swift_endAccess();

    v58 = sub_10029615C(v175, v57);

    v60 = v172;
    v59 = v173;
    v61 = v48;
    if (v58)
    {
      sub_10002849C(&qword_100972CA8, &qword_1007E20E0);
      v62 = *(type metadata accessor for UICellAccessory() - 8);
      v170 = ((*(v62 + 80) + 32) & ~*(v62 + 80));
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      v63 = v162;
      v64 = *(v162 + 104);
      v165 = v46;
      v65 = v155;
      v64(v155, enum case for UICellAccessory.DisplayedState.always(_:), v166);
      v66 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v66 - 8) + 56))(v163, 1, 1, v66);
      v67 = v138;
      UICellAccessory.CheckmarkOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
      static UICellAccessory.checkmark(displayed:options:)();
      (*(v139 + 8))(v67, v140);
      v68 = v65;
      v46 = v165;
      (*(v63 + 8))(v68, v166);
    }

    v23 = v164;
  }

  else
  {
    swift_endAccess();
    v60 = v172;
    v59 = v173;
    v61 = v48;
  }

  UICollectionViewListCell.accessories.setter();
  v128 = v175;
  v129 = PageFacets.Facet.Option.metricsValue.getter();
  if (v130)
  {
    v178 = 0x2D7465636166;
    v179 = 0xE600000000000000;
    String.append(_:)(*&v129);

    v131 = String._bridgeToObjectiveC()();

    [v61 setAccessibilityIdentifier:v131];
  }

  (*(v51 + 1))(v128, v168);
  (*(v171 + 8))(v169, v23);
LABEL_30:
  sub_1000A244C(v41);
  v180 = v59;
  v181 = &protocol witness table for UIListContentConfiguration;
  v132 = sub_1000056E0(&v178);
  (*(v60 + 16))(v132, v46, v59);
  UICollectionViewCell.contentConfiguration.setter();
  return (*(v60 + 8))(v46, v59);
}

unint64_t sub_10009EB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v27 = a4;
  v5 = type metadata accessor for UIListContentConfiguration();
  v25 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100972CB8, &qword_1007B3D98);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for PageFacets.FacetGroup();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v24 = v5;
    v18 = *(result + OBJC_IVAR____TtC8AppStore24PageFacetsViewController_diffableDataSource);
    if (v18)
    {
      v19 = v18;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v20 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
      (*(v9 + 8))(v11, v8);
      result = IndexPath.subscript.getter();
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(v20 + 16))
      {
        (*(v13 + 16))(v15, v20 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * result, v12);

        static UIListContentConfiguration.groupedHeader()();
        PageFacets.FacetGroup.title.getter();
        UIListContentConfiguration.text.setter();
        v21 = v24;
        v28[3] = v24;
        v28[4] = &protocol witness table for UIListContentConfiguration;
        v22 = sub_1000056E0(v28);
        v23 = v25;
        (*(v25 + 16))(v22, v7, v21);
        UICollectionViewCell.contentConfiguration.setter();

        (*(v23 + 8))(v7, v21);
        return (*(v13 + 8))(v15, v12);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10009EE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10002849C(&qword_100972C80, &qword_1007B3D68);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  sub_1000A19E4(a3, &v11 - v6);
  v8 = type metadata accessor for PageFacetsViewController.Item(0);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_100005744(0, &qword_100972D08, UICollectionViewListCell_ptr);
  v9 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  sub_10002B894(v7, &qword_100972C80, &qword_1007B3D68);
  return v9;
}

void sub_10009EF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_10002849C(&qword_100972C98, &unk_1007E20D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    v9 = v8;
    if (v8)
    {
      v10 = [v8 collectionView];

      if (!v10)
      {
        __break(1u);
        return;
      }

      [v10 contentOffset];
      v22 = v11;
      v23 = v12;

      *&v13 = v22;
      *(&v13 + 1) = v23;
    }

    else
    {
      v13 = 0uLL;
    }

    v14 = &v7[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_preselectionContentOffset];
    *v14 = v13;
    v14[16] = v9 == 0;
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;

    v17 = PageFacets.Facet.options.getter();
    if (*(v17 + 16))
    {
      v18 = v17;
      v19 = type metadata accessor for PageFacets.Facet.Option();
      v20 = *(v19 - 8);
      (*(v20 + 16))(v5, v18 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v19);

      (*(v20 + 56))(v5, 0, 1, v19);
    }

    else
    {

      v21 = type metadata accessor for PageFacets.Facet.Option();
      (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    }

    PageFacetsPresenter.didSelect(option:in:)();

    sub_10002B894(v5, &qword_100972C98, &unk_1007E20D0);
  }
}

uint64_t sub_10009F20C(void (**a1)(char *, char *, uint64_t), uint64_t a2)
{
  v4 = type metadata accessor for PageFacets.Facet.Option();
  v63 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v57 - v8;
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  v13 = PageFacets.Facet.showsSelectedOptions.getter();
  result = 0;
  if (v13)
  {
    if (*(a2 + 16) && (v15 = sub_1003D7A9C(a1), (v16 & 1) != 0))
    {
      v17 = *(*(a2 + 56) + 8 * v15);
      v18 = *(v17 + 16);

      v19 = *(PageFacets.Facet.options.getter() + 16);

      if (v18 == v19)
      {

        v20._countAndFlagsBits = 0xD000000000000025;
        v20._object = 0x80000001007FFD90;
        v21._countAndFlagsBits = 0;
        v21._object = 0xE000000000000000;
        return localizedString(_:comment:)(v20, v21)._countAndFlagsBits;
      }

      else
      {
        v66 = v17;
        result = PageFacets.Facet.options.getter();
        v61 = *(result + 16);
        if (v61)
        {
          v58 = v6;
          v27 = 0;
          v28 = v66;
          v64 = (v66 + 56);
          v65 = v63 + 16;
          v29 = (v63 + 8);
          v59 = _swiftEmptyArrayStorage;
          v60 = result;
          v57 = (v63 + 32);
          while (v27 < *(result + 16))
          {
            v62 = (*(v63 + 80) + 32) & ~*(v63 + 80);
            v30 = *(v63 + 72);
            v31 = *(v63 + 16);
            v31(v12, result + v62 + v30 * v27, v4);
            if (*(v28 + 16) && (sub_1000A1A48(&qword_100972C70, &type metadata accessor for PageFacets.Facet.Option, &protocol conformance descriptor for PageFacets.Facet.Option), v32 = dispatch thunk of Hashable._rawHashValue(seed:)(), v28 = v66, v33 = -1 << *(v66 + 32), v34 = v32 & ~v33, ((*(v64 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
            {
              v35 = ~v33;
              while (1)
              {
                v31(v9, *(v28 + 48) + v34 * v30, v4);
                sub_1000A1A48(&qword_100972D20, &type metadata accessor for PageFacets.Facet.Option, &protocol conformance descriptor for PageFacets.Facet.Option);
                v36 = dispatch thunk of static Equatable.== infix(_:_:)();
                (*v29)(v9, v4);
                if (v36)
                {
                  break;
                }

                v34 = (v34 + 1) & v35;
                v28 = v66;
                if (((*(v64 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
                {
                  goto LABEL_11;
                }
              }

              v37 = *v57;
              (*v57)(v58, v12, v4);
              v38 = v59;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v40 = v38;
              v67 = v38;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_100144268(0, *(v38 + 2) + 1, 1);
                v40 = v67;
              }

              v28 = v66;
              v42 = *(v40 + 2);
              v41 = *(v40 + 3);
              if (v42 >= v41 >> 1)
              {
                sub_100144268((v41 > 1), v42 + 1, 1);
                v28 = v66;
                v40 = v67;
              }

              *(v40 + 2) = v42 + 1;
              v59 = v40;
              v37(&v40[v62 + v42 * v30], v58, v4);
            }

            else
            {
LABEL_11:
              (*v29)(v12, v4);
            }

            ++v27;
            result = v60;
            if (v27 == v61)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
        }

        else
        {
          v59 = _swiftEmptyArrayStorage;
LABEL_26:

          v43 = *(v59 + 2);
          if (v43)
          {
            v67 = _swiftEmptyArrayStorage;
            v44 = v59;
            sub_100144128(0, v43, 0);
            v45 = v67;
            v46 = *(v63 + 16);
            v47 = v44 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
            v65 = *(v63 + 72);
            v66 = v46;
            v63 += 16;
            v64 = (v63 - 8);
            do
            {
              (v66)(v9, v47, v4);
              v48 = PageFacets.Facet.Option.title.getter();
              v50 = v49;
              (*v64)(v9, v4);
              v67 = v45;
              v52 = *(v45 + 2);
              v51 = *(v45 + 3);
              if (v52 >= v51 >> 1)
              {
                sub_100144128((v51 > 1), v52 + 1, 1);
                v45 = v67;
              }

              *(v45 + 2) = v52 + 1;
              v53 = &v45[16 * v52];
              *(v53 + 4) = v48;
              *(v53 + 5) = v50;
              v47 += v65;
              --v43;
            }

            while (v43);
          }

          else
          {

            v45 = _swiftEmptyArrayStorage;
          }

          v67 = v45;
          v54._object = 0x80000001007FFD70;
          v54._countAndFlagsBits = 0xD00000000000001DLL;
          v55._countAndFlagsBits = 0;
          v55._object = 0xE000000000000000;
          localizedString(_:comment:)(v54, v55);
          sub_10002849C(&unk_100977380, &qword_1007BB880);
          sub_100097060(&qword_100973110, &unk_100977380, &qword_1007BB880, &protocol conformance descriptor for [A]);
          v56 = BidirectionalCollection<>.joined(separator:)();

          return v56;
        }
      }
    }

    else
    {
      v22 = PageFacets.Facet.options.getter();
      __chkstk_darwin(v22);
      *(&v57 - 2) = a1;
      v23 = sub_1004B23B8(sub_1000A32A4, (&v57 - 4), v22);

      if (*(v23 + 2))
      {
        v67 = v23;
        v24._object = 0x80000001007FFD70;
        v24._countAndFlagsBits = 0xD00000000000001DLL;
        v25._countAndFlagsBits = 0;
        v25._object = 0xE000000000000000;
        localizedString(_:comment:)(v24, v25);
        sub_10002849C(&unk_100977380, &qword_1007BB880);
        sub_100097060(&qword_100973110, &unk_100977380, &qword_1007BB880, &protocol conformance descriptor for [A]);
        v26 = BidirectionalCollection<>.joined(separator:)();

        return v26;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10009F968(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&qword_10097CD30, &qword_1007B3D60);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v11[-v7];
  PageFacetsPresenter.FacetsState.facets.getter();
  v9 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_pageFacets;
  swift_beginAccess();
  sub_1000A2EFC(a2 + v9, v5);
  swift_beginAccess();
  sub_1000A2FFC(v8, a2 + v9);
  swift_endAccess();
  sub_10009B2D0(v5);
  sub_10002B894(v5, &qword_10097CD30, &qword_1007B3D60);
  return sub_10002B894(v8, &qword_10097CD30, &qword_1007B3D60);
}

uint64_t (*sub_10009FAA0(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1000A2FF4;
}

void (*sub_10009FB04(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1000A2F7C;
}

void sub_10009FB68(uint64_t a1, uint64_t a2)
{
  v3 = PageFacetsPresenter.FacetsState.selectedFacetOptions.getter();
  v4 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_selectedFacetOptions;
  swift_beginAccess();
  v5 = *(a2 + v4);
  *(a2 + v4) = v3;

  sub_1000A1B0C(v6, v5);
  LOBYTE(v4) = v7;

  if ((v4 & 1) == 0)
  {
    sub_10009C0C8();
  }
}

uint64_t sub_10009FBF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = *(a2 + OBJC_IVAR____TtC8AppStore24PageFacetsViewController_objectGraph);
  v8 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    return sub_10002B894(v6, &unk_100972A00, &unk_1007B3130);
  }

  sub_1005F9AF4(a1, 1, v7, v6);

  return (*(v9 + 8))(v6, v8);
}

uint64_t (*sub_10009FD48(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000A2F6C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1000A2F74;
}

void sub_10009FDD8(void *a1, uint64_t a2)
{
  v163 = a2;
  v154 = a1;
  v147 = type metadata accessor for DispatchWorkItemFlags();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v144 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for DispatchQoS();
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v142 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for IndexPath();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v136 = v5;
  v137 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for DispatchTime();
  v141 = *(v150 - 8);
  __chkstk_darwin(v150);
  v135 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v140 = &v124 - v8;
  v9 = sub_10002849C(&qword_100972C90, &unk_1007B3D70);
  __chkstk_darwin(v9 - 8);
  v128 = &v124 - v10;
  v130 = type metadata accessor for UICellAccessory.CheckmarkOptions();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v126 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for UICellAccessory.DisplayedState();
  v125 = *(v127 - 8);
  __chkstk_darwin(v127);
  v124 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100972C98, &unk_1007E20D0);
  __chkstk_darwin(v13 - 8);
  v134 = &v124 - v14;
  v157 = type metadata accessor for PageFacets.Facet.DisplayType();
  v164 = *(v157 - 8);
  __chkstk_darwin(v157);
  v148 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v132 = &v124 - v17;
  __chkstk_darwin(v18);
  v20 = &v124 - v19;
  __chkstk_darwin(v21);
  v23 = &v124 - v22;
  __chkstk_darwin(v24);
  v131 = &v124 - v25;
  __chkstk_darwin(v26);
  v28 = &v124 - v27;
  __chkstk_darwin(v29);
  v152 = &v124 - v30;
  __chkstk_darwin(v31);
  v153 = &v124 - v32;
  __chkstk_darwin(v33);
  v35 = &v124 - v34;
  __chkstk_darwin(v36);
  v38 = &v124 - v37;
  v39 = type metadata accessor for PageFacets.Facet.Option();
  v155 = *(v39 - 8);
  v156 = v39;
  __chkstk_darwin(v39);
  v158 = &v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for PageFacets.Facet();
  v42 = *(v41 - 8);
  v161 = v41;
  v162 = v42;
  __chkstk_darwin(v41);
  v133 = &v124 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v151 = &v124 - v45;
  __chkstk_darwin(v46);
  v159 = &v124 - v47;
  v48 = sub_10002849C(&qword_100972C80, &qword_1007B3D68);
  __chkstk_darwin(v48 - 8);
  v50 = &v124 - v49;
  v51 = type metadata accessor for PageFacetsViewController.Item(0);
  v52 = *(v51 - 8);
  __chkstk_darwin(v51);
  v54 = &v124 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v160 = &v124 - v56;
  v149 = v2;
  v57 = *&v2[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_diffableDataSource];
  if (!v57)
  {
    __break(1u);
    return;
  }

  v58 = v57;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if ((*(v52 + 48))(v50, 1, v51) == 1)
  {
    sub_10002B894(v50, &qword_100972C80, &qword_1007B3D68);
    return;
  }

  v59 = v160;
  sub_1000A2DF8(v50, v160);
  sub_1000A19E4(v59, v54);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v162 + 32))(v151, v54, v161);
    PageFacets.Facet.displayType.getter();
    v64 = *(v164 + 104);
    v64(v20, enum case for PageFacets.Facet.DisplayType.singleSelection(_:), v157);
    sub_1000A1A48(&qword_100972CA0, &type metadata accessor for PageFacets.Facet.DisplayType, &protocol conformance descriptor for PageFacets.Facet.DisplayType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (aBlock == v171 && v166 == v172)
    {
      v65 = 1;
    }

    else
    {
      v65 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v77 = *(v164 + 8);
    v78 = v20;
    v79 = v157;
    v77(v78, v157);
    v77(v23, v79);

    v76 = v151;
    if ((v65 & 1) == 0)
    {
      v80 = v132;
      PageFacets.Facet.displayType.getter();
      v64(v148, enum case for PageFacets.Facet.DisplayType.multipleSelection(_:), v79);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (aBlock == v171 && v166 == v172)
      {
        v77(v148, v79);
        v77(v80, v79);
      }

      else
      {
        v92 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v77(v148, v79);
        v77(v80, v79);

        if ((v92 & 1) == 0)
        {
          goto LABEL_43;
        }
      }
    }

    v93 = v161;
    v94 = v133;
    (*(v162 + 16))(v133, v76, v161);
    v95 = v149;
    v96 = *&v149[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_facetsPresenter];
    v97 = v149[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_showDoneButton];
    v98 = objc_allocWithZone(type metadata accessor for PageFacetOptionsViewController(0));

    v99 = sub_10076F480(v94, v96, v97);

    *&v99[OBJC_IVAR____TtC8AppStore30PageFacetOptionsViewController_delegate + 8] = &off_1008B3010;
    swift_unknownObjectWeakAssign();
    v100 = [v95 navigationController];
    if (v100)
    {
      v101 = v100;
      [v100 pushViewController:v99 animated:1];

      v99 = v101;
    }

    (*(v162 + 8))(v76, v93);
    goto LABEL_48;
  }

  v148 = v28;
  v60 = *(sub_10002849C(&qword_100972C60, &qword_1007B3D50) + 48);
  (*(v162 + 32))(v159, v54, v161);
  (*(v155 + 32))(v158, &v54[v60], v156);
  PageFacets.Facet.displayType.getter();
  v61 = enum case for PageFacets.Facet.DisplayType.multipleSelection(_:);
  v62 = v157;
  v151 = *(v164 + 104);
  (v151)(v35, enum case for PageFacets.Facet.DisplayType.multipleSelection(_:), v157);
  sub_1000A1A48(&qword_100972CA0, &type metadata accessor for PageFacets.Facet.DisplayType, &protocol conformance descriptor for PageFacets.Facet.DisplayType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  LODWORD(v133) = v61;
  if (aBlock == v171 && v166 == v172)
  {
    v63 = 1;
  }

  else
  {
    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v66 = v164 + 8;
  v67 = *(v164 + 8);
  v67(v35, v62);
  v164 = v66;
  v67(v38, v62);

  v68 = v149;
  if ((v63 & 1) == 0)
  {
    v69 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_selectedFacetOptions;
    swift_beginAccess();
    v70 = *&v68[v69];
    if (*(v70 + 16) && (v71 = sub_1003D7A9C(v159), (v72 & 1) != 0))
    {
      v73 = *(*(v70 + 56) + 8 * v71);
      swift_endAccess();

      v74 = sub_10029615C(v158, v73);

      if (v74)
      {
        v75 = 0;
        v76 = v159;
        goto LABEL_24;
      }
    }

    else
    {
      swift_endAccess();
    }
  }

  [v154 contentOffset];
  v81 = &v68[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_preselectionContentOffset];
  *v81 = v82;
  *(v81 + 1) = v83;
  v81[16] = 0;
  v85 = v155;
  v84 = v156;
  v86 = v134;
  (*(v155 + 16))(v134, v158, v156);
  v75 = 1;
  (*(v85 + 56))(v86, 0, 1, v84);
  v76 = v159;
  PageFacetsPresenter.didSelect(option:in:)();
  sub_10002B894(v86, &qword_100972C98, &unk_1007E20D0);
LABEL_24:
  PageFacets.Facet.displayType.getter();
  (v151)(v152, enum case for PageFacets.Facet.DisplayType.singleSelection(_:), v62);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v171 && v166 == v172)
  {
    v67(v152, v62);
    v67(v153, v62);

LABEL_27:

    goto LABEL_29;
  }

  v87 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v67(v152, v62);
  v67(v153, v62);

  if (v87)
  {
    goto LABEL_29;
  }

  PageFacets.Facet.displayType.getter();
  v102 = v131;
  (v151)(v131, v133, v62);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v171 && v166 == v172)
  {
    v67(v102, v62);
    v67(v148, v62);

    goto LABEL_27;
  }

  v103 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v67(v102, v62);
  v67(v148, v62);

  if (v103)
  {
LABEL_29:
    v88 = v163;
    if (v75)
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v90 = [v154 cellForItemAtIndexPath:isa];

      if (v90)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v91 = *(UICollectionViewListCell.accessories.getter() + 16);

          if (!v91)
          {
            sub_10002849C(&qword_100972CA8, &qword_1007E20E0);
            type metadata accessor for UICellAccessory();
            *(swift_allocObject() + 16) = xmmword_1007B10D0;
            v104 = v125;
            v105 = v124;
            v106 = v127;
            (*(v125 + 104))(v124, enum case for UICellAccessory.DisplayedState.always(_:), v127);
            v107 = type metadata accessor for UICellAccessory.LayoutDimension();
            (*(*(v107 - 8) + 56))(v128, 1, 1, v107);
            v108 = v126;
            UICellAccessory.CheckmarkOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
            static UICellAccessory.checkmark(displayed:options:)();
            (*(v129 + 8))(v108, v130);
            (*(v104 + 8))(v105, v106);
          }

          UICollectionViewListCell.accessories.setter();
        }
      }
    }

    sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
    v109 = static OS_dispatch_queue.main.getter();
    v110 = v135;
    static DispatchTime.now()();
    v111 = v140;
    + infix(_:_:)();
    v164 = *(v141 + 8);
    (v164)(v110, v150);
    v112 = v138;
    v113 = v137;
    v114 = v88;
    v115 = v139;
    (*(v138 + 16))(v137, v114, v139);
    v116 = (*(v112 + 80) + 24) & ~*(v112 + 80);
    v117 = swift_allocObject();
    v118 = v154;
    *(v117 + 16) = v154;
    (*(v112 + 32))(v117 + v116, v113, v115);
    v169 = sub_1000A2E5C;
    v170 = v117;
    aBlock = _NSConcreteStackBlock;
    v166 = 1107296256;
    v167 = sub_100007A08;
    v168 = &unk_1008B3070;
    v119 = _Block_copy(&aBlock);
    v120 = v118;

    v121 = v142;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_1000A1A48(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
    sub_100097060(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80, &protocol conformance descriptor for [A]);
    v122 = v144;
    v123 = v147;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v119);

    (*(v146 + 8))(v122, v123);
    (*(v143 + 8))(v121, v145);
    (v164)(v111, v150);
    (*(v155 + 8))(v158, v156);
    (*(v162 + 8))(v159, v161);
    goto LABEL_48;
  }

  (*(v155 + 8))(v158, v156);
LABEL_43:
  (*(v162 + 8))(v76, v161);
LABEL_48:
  sub_1000A244C(v160);
}

uint64_t sub_1000A14F4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  sub_1000A29A8(v9);
  LOBYTE(a1) = v12;

  (*(v7 + 8))(v9, v6);
  return a1 & 1;
}

void sub_1000A1718(uint64_t a1)
{
  sub_1000A17EC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000A17EC(uint64_t a1)
{
  if (!qword_100972BA0)
  {
    type metadata accessor for PageFacets();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100972BA0);
    }
  }
}

void sub_1000A18B4(uint64_t a1)
{
  type metadata accessor for PageFacets.Facet();
  if (v1 <= 0x3F)
  {
    sub_1000A1928(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000A1928(uint64_t a1)
{
  if (!qword_100972C28)
  {
    type metadata accessor for PageFacets.Facet();
    type metadata accessor for PageFacets.Facet.Option();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100972C28);
    }
  }
}

uint64_t sub_1000A19E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageFacetsViewController.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A1A48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000A1A90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = PageFacets.Facet.defaultOptions.getter();
  v5 = sub_10029615C(a1, v4);

  if (v5)
  {
    result = PageFacets.Facet.Option.title.getter();
  }

  else
  {
    result = 0;
    v7 = 0;
  }

  *a2 = result;
  a2[1] = v7;
  return result;
}

void sub_1000A1B0C(uint64_t a1, uint64_t a2)
{
  v55 = type metadata accessor for PageFacets.Facet();
  v50 = *(v55 - 8);
  __chkstk_darwin(v55);
  v51 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v49 = v45 - v6;
  v7 = sub_10002849C(&qword_100972CD8, &qword_1007B3DD8);
  __chkstk_darwin(v7 - 8);
  v52 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v48 = v45 - v10;
    v12 = 0;
    v46 = a1;
    v15 = *(a1 + 64);
    v14 = a1 + 64;
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v19 = (v16 + 63) >> 6;
    v45[0] = v14;
    v45[1] = v50 + 16;
    v53 = (v50 + 32);
    v47 = (v50 + 8);
    while (v18)
    {
      v54 = (v18 - 1) & v18;
      v20 = __clz(__rbit64(v18)) | (v12 << 6);
LABEL_16:
      v25 = v46;
      v26 = v49;
      v27 = v50;
      v28 = v55;
      (*(v50 + 16))(v49, *(v46 + 48) + *(v50 + 72) * v20, v55, v11);
      v29 = *(*(v25 + 56) + 8 * v20);
      v30 = sub_10002849C(&qword_100972CE0, &qword_1007B3DE0);
      v31 = *(v30 + 48);
      v32 = *(v27 + 32);
      v33 = v52;
      v32(v52, v26, v28);
      *(v33 + v31) = v29;
      (*(*(v30 - 8) + 56))(v33, 0, 1, v30);

LABEL_17:
      v34 = v48;
      sub_1000A2F84(v33, v48);
      v35 = sub_10002849C(&qword_100972CE0, &qword_1007B3DE0);
      if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
      {
        return;
      }

      v36 = *(v35 + 48);
      v37 = v51;
      v38 = v55;
      (*v53)(v51, v34, v55);
      v39 = *(v34 + v36);
      sub_1003D7A9C(v37);
      LOBYTE(v36) = v40;
      (*v47)(v37, v38);
      if ((v36 & 1) == 0)
      {

        return;
      }

      sub_10076F0D0(v41, v39);
      v43 = v42;

      v18 = v54;
      if ((v43 & 1) == 0)
      {
        return;
      }
    }

    if (v19 <= v12 + 1)
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = v19;
    }

    v22 = v21 - 1;
    while (1)
    {
      v23 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v23 >= v19)
      {
        v44 = sub_10002849C(&qword_100972CE0, &qword_1007B3DE0);
        v33 = v52;
        (*(*(v44 - 8) + 56))(v52, 1, 1, v44);
        v54 = 0;
        v12 = v22;
        goto LABEL_17;
      }

      v24 = *(v45[0] + 8 * v23);
      ++v12;
      if (v24)
      {
        v54 = (v24 - 1) & v24;
        v20 = __clz(__rbit64(v24)) | (v23 << 6);
        v12 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1000A1F88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageFacets.Facet.Option();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v43 - v7;
  v8 = type metadata accessor for PageFacets.Facet();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v45 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for PageFacetsViewController.Item(0);
  __chkstk_darwin(v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  v20 = sub_10002849C(&qword_100972C78, &qword_1007B3D58);
  __chkstk_darwin(v20 - 8);
  v22 = &v43 - v21;
  v24 = &v43 + *(v23 + 56) - v21;
  sub_1000A19E4(a1, &v43 - v21);
  sub_1000A19E4(a2, v24);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000A19E4(v22, v19);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v9 + 32))(v13, v24, v8);
      v35 = static PageFacets.Facet.== infix(_:_:)();
      v39 = *(v9 + 8);
      v39(v13, v8);
      v39(v19, v8);
      goto LABEL_11;
    }

    v16 = v19;
    goto LABEL_8;
  }

  sub_1000A19E4(v22, v16);
  v25 = *(sub_10002849C(&qword_100972C60, &qword_1007B3D50) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v47 + 8))(&v16[v25], v48);
LABEL_8:
    (*(v9 + 8))(v16, v8);
    sub_10002B894(v22, &qword_100972C78, &qword_1007B3D58);
    goto LABEL_9;
  }

  (*(v9 + 32))(v45, v24, v8);
  v26 = v47;
  v27 = *(v47 + 32);
  v28 = v48;
  v27(v46, &v16[v25], v48);
  v29 = &v24[v25];
  v30 = v44;
  v27(v44, v29, v28);
  v31 = v45;
  v32 = static PageFacets.Facet.== infix(_:_:)();
  v33 = *(v9 + 8);
  v33(v16, v8);
  if (v32)
  {
    v34 = v46;
    v35 = static PageFacets.Facet.Option.== infix(_:_:)();
    v36 = *(v26 + 8);
    v37 = v30;
    v38 = v48;
    v36(v37, v48);
    v36(v34, v38);
    v33(v31, v8);
LABEL_11:
    sub_1000A244C(v22);
    return v35 & 1;
  }

  v41 = *(v26 + 8);
  v42 = v48;
  v41(v30, v48);
  v41(v46, v42);
  v33(v31, v8);
  sub_1000A244C(v22);
LABEL_9:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_1000A244C(uint64_t a1)
{
  v2 = type metadata accessor for PageFacetsViewController.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000A24A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a2;
  ObjectType = swift_getObjectType();
  v9 = sub_10002849C(&qword_10097CD30, &qword_1007B3D60);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  *&v4[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_pageFacets;
  v13 = type metadata accessor for PageFacets();
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_selectedFacetOptions;
  *&v4[v14] = sub_100398204(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_diffableDataSource] = 0;
  v15 = &v4[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_preselectionContentOffset];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  *&v4[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_facetsPresenter] = a1;
  *&v4[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_objectGraph] = a3;

  PageFacetsPresenter.pageFacets.getter();
  swift_beginAccess();
  sub_1000A2830(v11, &v4[v12]);
  swift_endAccess();

  v16 = PageFacetsPresenter.selectedFacetOptions.getter();

  swift_beginAccess();
  *&v4[v14] = v16;

  v4[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_showDoneButton] = v6;
  v17 = [objc_allocWithZone(UICollectionViewLayout) init];
  v27.receiver = v4;
  v27.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v27, "initWithCollectionViewLayout:", v17);

  if (v6)
  {
    v19 = [v18 navigationItem];
    sub_100005744(0, &qword_100983870, UIBarButtonItem_ptr);
    sub_100005744(0, &qword_10097CD40, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v28.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v28.is_nil = 0;
    isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v28, v29).super.super.isa;
    [v19 setRightBarButtonItem:isa];
  }

  v21 = [v18 navigationItem];
  v22._object = 0x80000001007FFD20;
  v22._countAndFlagsBits = 0xD000000000000019;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  localizedString(_:comment:)(v22, v23);
  v24 = String._bridgeToObjectiveC()();

  [v21 setTitle:v24];

  return v18;
}

uint64_t sub_1000A2830(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097CD30, &qword_1007B3D60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1000A28A8()
{
  *(v0 + OBJC_IVAR____TtC8AppStore24PageFacetsViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_pageFacets;
  v2 = type metadata accessor for PageFacets();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_selectedFacetOptions;
  *(v0 + v3) = sub_100398204(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC8AppStore24PageFacetsViewController_diffableDataSource) = 0;
  v4 = v0 + OBJC_IVAR____TtC8AppStore24PageFacetsViewController_preselectionContentOffset;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000A29A8(uint64_t a1)
{
  v2 = type metadata accessor for PageFacets.Facet.DisplayType();
  v31 = *(v2 - 8);
  __chkstk_darwin(v2);
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v30 - v5;
  v7 = type metadata accessor for PageFacets.Facet();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100972C80, &qword_1007B3D68);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for PageFacetsViewController.Item(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v30 - v18;
  v20 = *(v1 + OBJC_IVAR____TtC8AppStore24PageFacetsViewController_diffableDataSource);
  if (v20)
  {
    v21 = v20;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_10002B894(v12, &qword_100972C80, &qword_1007B3D68);
    }

    else
    {
      sub_1000A2DF8(v12, v19);
      sub_1000A19E4(v19, v16);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v23 = v32;
      v24 = (v32 + 8);
      if (EnumCaseMultiPayload == 1)
      {
        sub_1000A244C(v19);
        v25 = *(sub_10002849C(&qword_100972C60, &qword_1007B3D50) + 48);
        v26 = type metadata accessor for PageFacets.Facet.Option();
        (*(*(v26 - 8) + 8))(&v16[v25], v26);
        (*v24)(v16, v33);
      }

      else
      {
        (*(v32 + 32))(v9, v16, v33);
        PageFacets.Facet.displayType.getter();
        v28 = v30;
        v27 = v31;
        (*(v31 + 104))(v30, enum case for PageFacets.Facet.DisplayType.toggle(_:), v2);
        sub_1000A1A48(&qword_100972C88, &type metadata accessor for PageFacets.Facet.DisplayType, &protocol conformance descriptor for PageFacets.Facet.DisplayType);
        dispatch thunk of static Equatable.== infix(_:_:)();
        v29 = *(v27 + 8);
        v29(v28, v2);
        v29(v6, v2);
        (*(v23 + 8))(v9, v33);
        sub_1000A244C(v19);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000A2DF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageFacetsViewController.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000A2E5C()
{
  type metadata accessor for IndexPath();
  v1 = *(v0 + 16);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v1 deselectItemAtIndexPath:isa animated:1];
}

uint64_t sub_1000A2EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097CD30, &qword_1007B3D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A2F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100972CD8, &qword_1007B3DD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A2FFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097CD30, &qword_1007B3D60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A307C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_10002849C(&qword_100972D00, &qword_1007B3E00) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_10009EE34(a1, a2, a3, v8);
}

uint64_t sub_1000A3110(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10002849C(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_1000A3194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10002849C(&qword_100972CF8, &qword_1007B3DF8);
  sub_100005744(0, &qword_100978E10, UICollectionViewCell_ptr);
  return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
}

void sub_1000A3230(uint64_t a1)
{
  v3 = *(type metadata accessor for PageFacets.Facet() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_10009EF68(a1, v4, v5);
}

char *sub_1000A32D0(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v13 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView;
  v48[0] = sub_100113508;
  v48[1] = 0;
  v48[2] = sub_1005AB608;
  v48[3] = 0;
  v48[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v48[5] = 0;
  v48[6] = sub_100113508;
  v48[7] = 0;
  v48[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v48[9] = 0;
  v48[10] = sub_100287668;
  v48[11] = 0;
  v49 = 0x4000000000000000uLL;
  v50 = 0;
  v51 = 0x4018000000000000;
  v52 = 0;
  v53 = 1;
  v14 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView(0));
  *&v6[v13] = sub_100550DDC(v48, &v49);
  *&v6[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsArtworkFetchKey] = 0;
  v15 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView;
  v16 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
  *&v6[v15] = sub_1001DCC8C(&off_1008AF6C0);
  v17 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer;
  type metadata accessor for InfoLayerOverlayContainerView();
  *&v7[v17] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionMode] = 0;
  v18 = &v7[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionUpdateBlock];
  *v18 = 0;
  v18[1] = 0;
  v7[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory] = 7;
  v7[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_originalSizeCategory] = 7;
  v19 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_pageGrid;
  v20 = type metadata accessor for PageGrid();
  (*(*(v20 - 8) + 56))(&v7[v19], 1, 1, v20);
  v7[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_isTransitioning] = 0;
  v21 = &v7[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayKind];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v7[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay];
  *v22 = 0;
  v22[1] = 0;
  swift_weakInit();
  v7[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_isExpanded] = 0;
  *&v7[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_preferredGradientType] = 0;
  v47.receiver = v7;
  v47.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView;
  v25 = *&v23[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView];
  v26 = v23;
  v27 = v25;
  [v27 _setContinuousCornerRadius:20.0];
  v28 = [v27 layer];
  [v28 setMaskedCorners:12];

  [*&v27[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_effectsView] _setCornerRadius:1 continuous:12 maskedCorners:20.0];
  v29 = *&v26[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_preferredGradientType];
  if (v29)
  {
    v30 = *&v23[v24];
    v31 = *&v30[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientType];
    *&v30[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientType] = v29;
    v32 = v29;
    v33 = v30;
  }

  else
  {
    v34 = v26[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory];
    v33 = *&v23[v24];
    if (v34 == 6 && (v35 = [v26 traitCollection], v36 = UITraitCollection.prefersAccessibilityLayouts.getter(), v35, (v36 & 1) == 0))
    {
      v37 = &kCAGradientLayerRadial;
    }

    else
    {
      v37 = &kCAGradientLayerAxial;
    }

    v38 = *v37;
    v31 = *&v33[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientType];
    *&v33[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientType] = v38;
    v32 = v38;
  }

  sub_1001DD204();
  [v26 addSubview:*&v23[v24]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer]];
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1007B10D0;
  *(v39 + 32) = type metadata accessor for UITraitLayoutDirection();
  *(v39 + 40) = &protocol witness table for UITraitLayoutDirection;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1007B10D0;
  *(v40 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v40 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v41 = [v26 traitCollection];
  LOBYTE(v40) = UITraitCollection.prefersRightToLeftLayouts.getter();

  v42 = *&v23[v24];
  v43 = 0.13962634;
  if (v40)
  {
    v43 = -0.13962634;
  }

  v44 = *(v42 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_rotationAngle);
  *(v42 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_rotationAngle) = v43;
  if (v43 != v44)
  {
    sub_1001DD518();
  }

  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1007B10D0;
  *(v45 + 32) = type metadata accessor for UITraitLegibilityWeight();
  *(v45 + 40) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v26;
}

void sub_1000A3894(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *&v2[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView];
  v23.receiver = v3;
  v23.super_class = ObjectType;
  objc_msgSendSuper2(&v23, "_continuousCornerRadius");
  v7 = v6;
  [v5 _setContinuousCornerRadius:?];
  v8 = [v5 layer];
  [v8 setMaskedCorners:12];

  [*&v5[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_effectsView] _setCornerRadius:1 continuous:12 maskedCorners:v7];
  v9 = &v3[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay];
  if (*&v3[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay])
  {
    v10 = *(v9 + 1);
    v11 = swift_getObjectType();
    v12 = *(v10 + 16);
    swift_unknownObjectRetain();
    v13 = v12(v11, v10);
    swift_unknownObjectRelease();
    v22.receiver = v3;
    v22.super_class = ObjectType;
    objc_msgSendSuper2(&v22, "_continuousCornerRadius");
    [v13 _setContinuousCornerRadius:?];

    if (*v9)
    {
      v14 = *(v9 + 1);
      v15 = swift_getObjectType();
      v16 = *(v14 + 16);
      swift_unknownObjectRetain();
      v17 = v16(v15, v14);
      swift_unknownObjectRelease();
      v18 = [v17 layer];

      if (v3[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory] == 6)
      {
        v19 = [v3 traitCollection];
        v20 = UITraitCollection.prefersAccessibilityLayouts.getter();

        if (v20)
        {
          v21 = 12;
        }

        else
        {
          v21 = 15;
        }
      }

      else
      {
        v21 = 12;
      }

      [v18 setMaskedCorners:v21];
    }
  }
}

id sub_1000A3B10(id result)
{
  v2 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionMode;
  v3 = v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionMode];
  v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionMode] = result;
  if (v3 != result)
  {
    v4 = result != 1;
    if (result == 4)
    {
      v4 = 0;
    }

    v5 = *&v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView];
    v5[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_includeTopGradientFade] = v4;
    if (result == 1 || result == 4)
    {
      [*&v5[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientMaskView] removeFromSuperview];
    }

    else
    {
      [v5 insertSubview:*&v5[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientMaskView] aboveSubview:*&v5[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_effectsView]];
    }

    [v5 setHidden:v1[v2] == 4];

    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1000A3C18(uint64_t result)
{
  *(v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_originalSizeCategory) = result;
  if (result != 7)
  {
    *(*(v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer) + OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_originalSizeCategory) = result;
    v2 = *(v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView);
    *(v2 + qword_10098B7C0) = result;
    *(*(v2 + qword_10098B7C8) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = result;
    *(*(v2 + qword_10098B7D0) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = result;
    *(*(v2 + qword_10098B7E0) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = result;
  }

  return result;
}

void sub_1000A3CB0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer);
  v2 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_isTransitioning;
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_isTransitioning);
  v4 = OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isTransitioning;
  v1[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isTransitioning] = v3 & 1;
  [v1 setHidden:(v1[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_sizeCategory] == 4) & (v3 ^ 1u)];
  v1[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isLayoutRequired] = (v1[v4] & 1) == 0;
  [v1 setNeedsLayout];
  *(*(v0 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView) + qword_10098B800) = *(v0 + v2);
  sub_100551D80();
}

id sub_1000A3E28(uint64_t a1, __objc2_class_ro *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v169 = a4;
  v9 = a2;
  ObjectType = swift_getObjectType();
  v158 = type metadata accessor for EditorialDisplayOptions();
  v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v166 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TodayCard.Style();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v168 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v170 = &v138 - v15;
  __chkstk_darwin(v16);
  v162 = &v138 - v17;
  v18 = sub_10002849C(&qword_100972DB8, &unk_1007B3FE0);
  __chkstk_darwin(v18 - 8);
  v163 = &v138 - v19;
  v20 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  *&v21 = __chkstk_darwin(v20 - 8).n128_u64[0];
  v23 = &v138 - v22;
  v161 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory;
  v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory] = a2;
  v24 = *&v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer];
  v24[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_sizeCategory] = a2;
  v25 = a2;
  if (v9 == 4)
  {
    v26 = v24[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
  }

  else
  {
    v26 = 0;
  }

  [v24 setHidden:{v26 & 1, v21}];
  v27 = *&v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView];
  v27[qword_10098B7B8] = v25;
  sub_10055189C();
  v28 = type metadata accessor for PageGrid();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v23, a3, v28);
  (*(v29 + 56))(v23, 0, 1, v28);
  v30 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_pageGrid;
  swift_beginAccess();
  sub_1000A83AC(v23, &v5[v30]);
  swift_endAccess();
  v31 = a1;
  v32 = TodayCard.titleArtwork.getter();
  if (v32)
  {
    v33 = a1;
    v34 = v169;
    sub_1000A54A8(v32, v33, v25, a3, v169);

    v35 = a3;
    LODWORD(v36) = v25;
    goto LABEL_73;
  }

  v167 = v25;
  v159 = v27;
  v149 = a3;
  TodayCard.media.getter();
  v37 = TodayCardMedia.otdTextStyle.getter();

  v155 = v37;
  v151 = v11;
  v150 = v12;
  if (v37)
  {
    v38 = sub_100113508;
    if (v167 == 4)
    {
      v38 = sub_1000DB5A0;
    }

    v145 = v38;
    v146 = sub_1005AB608;
    v39 = sub_100113508;
    if (v167 == 4)
    {
      v39 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    }

    v147 = v39;
  }

  else if (v167 == 4)
  {
    v145 = sub_1000DB5A0;
    v146 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v147 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    v147 = sub_100113508;
    v146 = sub_1005AB608;
    v145 = sub_100113508;
  }

  v40 = TodayCard.heading.getter();
  v154 = v41;
  v144 = TodayCard.title.getter();
  v160 = v42;
  v141 = TodayCard.shortTitle.getter();
  v152 = v43;
  v44 = v163;
  TodayCard.titleCharacteristics.getter();
  v45 = type metadata accessor for StringCharacteristics();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  v46 = TodayCard.inlineDescription.getter();
  v156 = v47;
  TodayCard.style.getter();
  TodayCard.editorialDisplayOptions.getter();
  v48 = TodayCard.overlay.getter();
  v148 = v31;
  v143 = v46;
  if (!v48)
  {
    goto LABEL_22;
  }

  type metadata accessor for TodayCardLockupOverlay();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for TodayCardMarketingLockupOverlay();
    if (swift_dynamicCastClass())
    {
      TodayCardMarketingLockupOverlay.lockup.getter();
      goto LABEL_20;
    }

LABEL_22:
    v142 = 0;
    v153 = 0;
    goto LABEL_23;
  }

  TodayCardLockupOverlay.lockup.getter();
LABEL_20:
  v142 = Lockup.title.getter();
  v153 = v49;

LABEL_23:
  v50 = v167;
  v51 = v159;
  v159[qword_10098B7E8] = v155 & 1;
  v52 = *&v51[qword_10098B7D0];
  *(v52 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v53 = *&v51[qword_10098B7C8];
  sub_10006E7C4(v40, v154);
  v54 = EditorialDisplayOptions.showBadgeInSmallCards.getter();
  v55 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v56 = *&v53[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  if (v50 != 4 || (v54 & 1) != 0)
  {
    v57 = [v56 text];
    if (v57)
    {
      v58 = v57;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v59 = v159;
    v60 = static String.isNilOrEmpty(_:)();
    v61 = v60 & 1;

    if (v61 == [*&v53[v55] isHidden] || (v53[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v53[v55] setHidden:v61];
    }

    else
    {
      if ((v60 & 1) == 0)
      {
        [*&v53[v55] setAlpha:0.0];
        v62 = objc_opt_self();
        [v62 inheritedAnimationDuration];
        v64 = v63;
        v65 = swift_allocObject();
        *(v65 + 16) = v53;
        v175 = sub_1000A9214;
        v176 = v65;
        aBlock = _NSConcreteStackBlock;
        v172 = 1107296256;
        v140 = v60;
        v173 = sub_100007A08;
        v174 = &unk_1008B3418;
        v139 = _Block_copy(&aBlock);
        v66 = v53;

        v67 = swift_allocObject();
        *(v67 + 16) = v66;
        v175 = sub_1000A9220;
        v176 = v67;
        v59 = v159;
        aBlock = _NSConcreteStackBlock;
        v172 = 1107296256;
        v173 = sub_100504C5C;
        v174 = &unk_1008B3468;
        v68 = _Block_copy(&aBlock);
        v69 = v66;
        LOBYTE(v60) = v140;

        v70 = v62;
        v71 = v139;
        [v70 animateWithDuration:0 delay:v139 options:v68 animations:v64 completion:0.0];
        _Block_release(v68);
        _Block_release(v71);
      }

      [*&v53[v55] setHidden:v60 & 1];
      v53[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      [v53 setNeedsLayout];
    }
  }

  else
  {
    if (([v56 isHidden] & 1) != 0 || (v53[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v53[v55] setHidden:1];
    }

    else
    {
      [*&v53[v55] setHidden:1];
      v53[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      [v53 setNeedsLayout];
    }

    v59 = v159;
  }

  v72 = &v59[qword_10098B7F0];
  *v72 = v145;
  v72[1] = 0;
  v72[2] = v146;
  v72[3] = 0;
  v72[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v72[5] = 0;
  v72[6] = v147;
  v72[7] = 0;
  v72[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v72[9] = 0;
  v72[10] = sub_100287668;
  v72[11] = 0;

  sub_100551950();
  v73 = v156;
  v74 = v52;
  if (v160)
  {
    if (v155)
    {
      if (v167 != 4)
      {
        sub_100552D28(v163);
        v75 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
        [*(v52 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label) setAdjustsFontSizeToFitWidth:1];
        [*(v52 + v75) setMinimumScaleFactor:0.75];
        v76 = objc_allocWithZone(NSAttributedString);
        v77 = String._bridgeToObjectiveC()();
        type metadata accessor for Key(0);
        sub_1000A8C00(&qword_100976620, type metadata accessor for Key, &unk_1007B0934);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v79 = [v76 initWithString:v77 attributes:isa];

        v74 = v52;
        v80 = *(v52 + v75);
        v59 = v159;
        [v80 setAttributedText:v79];

        goto LABEL_53;
      }
    }

    else if (v167 != 4)
    {
      sub_10055321C();
      goto LABEL_45;
    }

    sub_1005531F8();
LABEL_45:
    LODWORD(v147) = v167 != 4;
    v81 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
    v82 = *(v52 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
    v83 = objc_allocWithZone(NSAttributedString);
    v84 = v82;
    v85 = String._bridgeToObjectiveC()();
    type metadata accessor for Key(0);
    sub_1000A8C00(&qword_100976620, type metadata accessor for Key, &unk_1007B0934);
    v86 = Dictionary._bridgeToObjectiveC()().super.isa;
    v74 = v52;

    v87 = [v83 initWithString:v85 attributes:v86];

    [v84 setAttributedText:v87];
    [*(v52 + v81) setAdjustsFontSizeToFitWidth:0];
    [*(v52 + v81) setMinimumScaleFactor:0.0];
    [*(v52 + v81) setAttributedText:0];
    if (v147 & 1 | ((v155 & 1) == 0) || !v153)
    {
      v59 = v159;
      v73 = v156;
      if (v152 && v159[qword_10098B7C0] == 4)
      {
        if (v167 == 4)
        {
          sub_10006E8BC(v144, v160, v141, v152);
        }

        else
        {
          sub_10006E8BC(v141, v152, v144, v160);
        }
      }

      else
      {
        sub_10006E7C4(v144, v160);
      }
    }

    else
    {
      sub_10006E7C4(v142, v153);
      v59 = v159;
      v73 = v156;
    }
  }

LABEL_53:
  v88 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v89 = *(v74 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v90 = [v89 text];
  if (v90 || (v90 = [*(v74 + v88) attributedText]) != 0)
  {

    v91 = 0;
  }

  else
  {
    v91 = 1;
  }

  v92 = v167;
  [v89 setHidden:v91];

  [v59 setNeedsLayout];
  v93 = *&v59[qword_10098B7D8];
  [v93 setImage:0];
  [v93 setHidden:1];
  if (v92 != 4 && (EditorialDisplayOptions.suppressTagline.getter() & 1) == 0 && v73)
  {
    v98 = HIBYTE(v73) & 0xF;
    if ((v73 & 0x2000000000000000) == 0)
    {
      v98 = v143 & 0xFFFFFFFFFFFFLL;
    }

    v97 = v98 == 0;
    v94 = *&v59[qword_10098B7E0];
    v95 = &v94[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    v96 = *&v94[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    goto LABEL_64;
  }

  v94 = *&v59[qword_10098B7E0];
  v95 = &v94[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  v96 = *&v94[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  if (v73)
  {
    v97 = 1;
LABEL_64:
    v99 = v96;
    v73 = String._bridgeToObjectiveC()();
    goto LABEL_66;
  }

  v99 = v96;
  v97 = 1;
LABEL_66:
  [v99 setText:v73];

  if (v97 == [*v95 isHidden] || (v94[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v95 setHidden:v97];
  }

  else
  {
    if (!v97)
    {
      [*v95 setAlpha:0.0];
      v100 = objc_opt_self();
      [v100 inheritedAnimationDuration];
      v102 = v101;
      v103 = swift_allocObject();
      *(v103 + 16) = v94;
      v175 = sub_1000A8B90;
      v176 = v103;
      aBlock = _NSConcreteStackBlock;
      v172 = 1107296256;
      v173 = sub_100007A08;
      v174 = &unk_1008B3378;
      v104 = _Block_copy(&aBlock);
      v105 = v94;

      v106 = swift_allocObject();
      *(v106 + 16) = v105;
      v175 = sub_1000A8B98;
      v176 = v106;
      v59 = v159;
      aBlock = _NSConcreteStackBlock;
      v172 = 1107296256;
      v173 = sub_100504C5C;
      v174 = &unk_1008B33C8;
      v107 = _Block_copy(&aBlock);
      v108 = v105;

      [v100 animateWithDuration:0 delay:v104 options:v107 animations:v102 completion:0.0];
      _Block_release(v107);
      _Block_release(v104);
    }

    [*v95 setHidden:v97];
    v94[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v94 setNeedsLayout];
  }

  v34 = v169;
  v11 = v151;
  v109 = v162;
  sub_100550798(v162, 1);
  [v59 setNeedsLayout];

  (*(v157 + 8))(v166, v158);
  v12 = v150;
  (*(v150 + 8))(v109, v11);
  sub_10002B894(v163, &qword_100972DB8, &unk_1007B3FE0);
  [v5 setNeedsLayout];
  v35 = v149;
  LODWORD(v36) = v167;
  v31 = v148;
LABEL_73:
  sub_1005D6674(v31, v35, v36, v34);
  v110 = v168;
  if (*&v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay])
  {
    v111 = v31;
    v112 = v12;
    v113 = v36;
    v36 = v11;
    v114 = *&v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay + 8];
    v115 = swift_getObjectType();
    v116 = *(v114 + 16);
    swift_unknownObjectRetain();
    v117 = v116(v115, v114);
    swift_unknownObjectRelease();
    v118 = [v117 layer];

    if (v5[v161] == 6)
    {
      v119 = v5;
      v120 = [v5 traitCollection];
      v121 = UITraitCollection.prefersAccessibilityLayouts.getter();

      if (v121)
      {
        v122 = 12;
      }

      else
      {
        v122 = 15;
      }
    }

    else
    {
      v119 = v5;
      v122 = 12;
    }

    [v118 setMaskedCorners:v122];

    v11 = v36;
    LOBYTE(v36) = v113;
    v12 = v112;
    v5 = v119;
    v31 = v111;
    v110 = v168;
  }

  v164 = v5;
  TodayCard.style.getter();
  (*(v12 + 104))(v110, enum case for TodayCard.Style.white(_:), v11);
  sub_1000A8C00(&qword_100972DC0, &type metadata accessor for TodayCard.Style, &protocol conformance descriptor for TodayCard.Style);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v123 = v110;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v177 && v172 == v178)
  {
    v124 = v31;
    v125 = 1;
  }

  else
  {
    v124 = v31;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v125 = 1;
    }

    else
    {
      v125 = 2;
    }
  }

  v126 = *(v12 + 8);
  v126(v123, v11);
  v126(v170, v11);

  v127 = v164;
  [v164 setOverrideUserInterfaceStyle:v125];
  v128 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v129 = swift_allocObject();
  swift_weakInit();
  v130 = swift_allocObject();
  *(v130 + 16) = v128;
  *(v130 + 24) = v129;
  *(v130 + 32) = v124;
  *(v130 + 40) = v36;
  *(v130 + 48) = ObjectType;
  v131 = &v127[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionUpdateBlock];
  v132 = *&v127[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionUpdateBlock];
  v133 = *&v127[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionUpdateBlock + 8];
  *v131 = sub_1000A8B7C;
  v131[1] = v130;

  sub_10001F63C(v132, v133);
  v134 = *v131;
  if (*v131)
  {
    v135 = v131[1];

    (v134)(v136);

    sub_10001F63C(v134, v135);
  }

  else
  {
  }

  return [v127 setNeedsLayout];
}

void sub_1000A54A8(uint64_t a1, uint64_t a2, __objc2_class_ro *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v65 = a5;
  v10 = a3;
  v11 = type metadata accessor for EditorialDisplayOptions();
  v62 = *(v11 - 8);
  v63 = v11;
  __chkstk_darwin(v11);
  v71 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for TodayCard.Style();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v70 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v58 - v16;
  if (v10 == 4)
  {
    v18 = 5;
  }

  else
  {
    v18 = a3;
  }

  v19 = [v6 traitCollection];
  sub_100467918(v18, a4, v19);
  sub_100699534(v18, v20);
  v66 = Artwork.config(_:mode:prefersLayeredImage:)();

  v21 = [v6 traitCollection];
  sub_100467918(a3, a4, v21);
  sub_100699534(a3, v22);
  v23 = Artwork.config(_:mode:prefersLayeredImage:)();

  v68 = v6;
  v24 = *&v6[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView];
  v25 = &v24[qword_10098B7B0];
  v26 = *&v24[qword_10098B7B0];
  v27 = *&v24[qword_10098B7B0 + 32];
  v28 = v24[qword_10098B7B0 + 40];
  v64 = v23;
  ArtworkLoaderConfig.size.getter();
  *v25 = v26;
  *(v25 + 1) = v29;
  *(v25 + 2) = v30;
  *(v25 + 3) = 0x402C000000000000;
  *(v25 + 4) = v27;
  v25[40] = v28;
  [v24 setNeedsLayout];
  v31 = qword_10098B7D8;
  v32 = [*&v24[qword_10098B7D8] image];
  v69 = TodayCard.inlineDescription.getter();
  v34 = v33;
  v59 = v17;
  TodayCard.style.getter();
  v67 = a2;
  TodayCard.editorialDisplayOptions.getter();
  v35 = qword_10098B7C8;
  [*(*&v24[qword_10098B7C8] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label) setText:0];
  v36 = qword_10098B7D0;
  [*(*&v24[qword_10098B7D0] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label) setText:0];
  v37 = *&v24[v31];
  v58 = v32;
  [v37 setImage:v32];
  v38 = qword_10098B7E0;
  v39 = *(*&v24[qword_10098B7E0] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v40 = v39;
  if (v34)
  {
    v41 = String._bridgeToObjectiveC()();
  }

  else
  {
    v41 = 0;
  }

  [v39 setText:v41];

  [*(*&v24[v35] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label) setHidden:1];
  [*(*&v24[v36] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label) setHidden:1];
  [*&v24[v31] setHidden:0];
  v42 = *(*&v24[v38] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v43 = v71;
  v44 = EditorialDisplayOptions.suppressTagline.getter();
  v45 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v45 = v69 & 0xFFFFFFFFFFFFLL;
  }

  v46 = v45 == 0;
  if (v44)
  {
    v46 = 1;
  }

  if (v34)
  {
    v47 = v46;
  }

  else
  {
    v47 = 1;
  }

  [v42 setHidden:v47];

  sub_100551950();
  v48 = v60;
  v49 = v61;
  (*(v60 + 104))(v70, enum case for TodayCard.Style.white(_:), v61);
  sub_1000A8C00(&qword_100972DC0, &type metadata accessor for TodayCard.Style, &protocol conformance descriptor for TodayCard.Style);
  v50 = v59;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v72[0] == v73 && v72[1] == v74)
  {
    v51 = 1;
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v51 = 1;
  }

  else
  {
    v51 = 2;
  }

  v52 = *(v48 + 8);
  v52(v70, v49);

  [v24 setOverrideUserInterfaceStyle:v51];
  sub_100551E70();
  [v24 setNeedsLayout];

  (*(v62 + 8))(v43, v63);
  v52(v50, v49);
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v53 = v68;
  v54 = v66;
  *&v68[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsArtworkFetchKey] = v66;

  v73 = v24;
  type metadata accessor for TodayCardLabelsView(0);
  sub_1000A8C00(&qword_100972DB0, type metadata accessor for TodayCardLabelsView, &protocol conformance descriptor for NSObject);
  v55 = v24;
  AnyHashable.init<A>(_:)();
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v57 = swift_allocObject();
  v57[2] = v56;
  v57[3] = v54;
  v57[4] = v67;

  ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

  sub_10002B894(v72, &qword_10096FB90, &qword_1007B2A50);

  [v53 setNeedsLayout];
}

double sub_1000A5C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = swift_weakLoadStrong();
    if (v7)
    {
      v8 = sub_1000A866C(a3, v7);
      sub_1000A3B10(v8);
      v9 = [v6 traitCollection];
      v10 = sub_1000A88D4(a3, v9);
      v12 = v11;

      v13 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView;
      v14 = *&v6[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView];
      sub_1001DC19C(a3, v10, v12);

      v15 = *&v6[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_preferredGradientType];
      if (v15)
      {
        v16 = *&v6[v13];
        v17 = *&v16[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientType];
        *&v16[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientType] = v15;
        v18 = v15;
        v19 = v16;
      }

      else
      {
        v20 = v6[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory];
        v19 = *&v6[v13];
        if (v20 == 6 && (v21 = [v6 traitCollection], v22 = UITraitCollection.prefersAccessibilityLayouts.getter(), v21, (v22 & 1) == 0))
        {
          v23 = &kCAGradientLayerRadial;
        }

        else
        {
          v23 = &kCAGradientLayerAxial;
        }

        v24 = *v23;
        v17 = *&v19[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientType];
        *&v19[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientType] = v24;
        v18 = v24;
      }

      sub_1001DD204();
      [v6 setNeedsLayout];
    }

    else
    {
    }
  }

  return result;
}

void sub_1000A5E10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for EditorialDisplayOptions();
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v53 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TodayCard.Style();
  v50 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = *(Strong + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsArtworkFetchKey);

    if (v19)
    {
      v58 = v19;
      v54 = a6;
      type metadata accessor for ArtworkLoaderConfig();
      sub_1000A8C00(&qword_100972DC8, &type metadata accessor for ArtworkLoaderConfig, &protocol conformance descriptor for ArtworkLoaderConfig);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v20)
      {
        if (a4)
        {
          v21 = 0;
        }

        else
        {
          v21 = a1;
        }

        swift_beginAccess();
        v22 = swift_unknownObjectWeakLoadStrong();
        v23 = &StringUserDefaultsDebugSetting;
        if (v22)
        {
          v24 = v22;
          v25 = *(v22 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView);

          v26 = TodayCard.inlineDescription.getter();
          v28 = v27;
          TodayCard.style.getter();
          v29 = v28;
          TodayCard.editorialDisplayOptions.getter();
          v48 = qword_10098B7C8;
          [*(*&v25[qword_10098B7C8] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label) setText:0];
          v47 = qword_10098B7D0;
          [*(*&v25[qword_10098B7D0] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label) setText:0];
          v30 = qword_10098B7D8;
          v31 = *&v25[qword_10098B7D8];
          v49 = v21;
          [v31 setImage:v21];
          v32 = qword_10098B7E0;
          v33 = *(*&v25[qword_10098B7E0] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
          v46 = v26;
          v34 = v33;
          if (v29)
          {
            v35 = v29;
            v29 = String._bridgeToObjectiveC()();
          }

          else
          {
            v35 = 0;
          }

          [v33 setText:{v29, v46}];

          [*(*&v25[v48] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label) setHidden:1];
          [*(*&v25[v47] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label) setHidden:1];
          [*&v25[v30] setHidden:0];
          v36 = *(*&v25[v32] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
          v37 = EditorialDisplayOptions.suppressTagline.getter();
          v38 = HIBYTE(v35) & 0xF;
          if ((v35 & 0x2000000000000000) == 0)
          {
            v38 = v46 & 0xFFFFFFFFFFFFLL;
          }

          v39 = v38 == 0;
          if (v37)
          {
            v39 = 1;
          }

          v48 = v35;
          if (v35)
          {
            v40 = v39;
          }

          else
          {
            v40 = 1;
          }

          [v36 setHidden:v40];

          sub_100551950();
          v41 = v50;
          (*(v50 + 104))(v13, enum case for TodayCard.Style.white(_:), v11);
          sub_1000A8C00(&qword_100972DC0, &type metadata accessor for TodayCard.Style, &protocol conformance descriptor for TodayCard.Style);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          if (v54 == v56 && v55 == v57)
          {
            v42 = 1;
          }

          else if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            v42 = 1;
          }

          else
          {
            v42 = 2;
          }

          v43 = *(v41 + 8);
          v43(v13, v11);

          [v25 setOverrideUserInterfaceStyle:v42];
          sub_100551E70();
          v23 = &StringUserDefaultsDebugSetting;
          [v25 setNeedsLayout];

          (*(v51 + 8))(v53, v52);
          v43(v16, v11);

          v21 = v49;
        }

        swift_beginAccess();
        v44 = swift_unknownObjectWeakLoadStrong();
        if (v44)
        {
          v45 = v44;
          [v44 v23[41].base_meths];
        }
      }
    }
  }
}

id sub_1000A63B4(unsigned __int8 *a1, char a2)
{
  v3 = v2;
  v6 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v29[-v8];
  v10 = a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory];
  v2[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory] = v10;
  if (v10 != 7)
  {
    v11 = *&v2[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer];
    v11[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_sizeCategory] = v10;
    if (v10 == 4)
    {
      v12 = v11[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
    }

    else
    {
      v12 = 0;
    }

    [v11 setHidden:{v12 & 1, v7}];
    *(*&v2[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView] + qword_10098B7B8) = v10;
    sub_10055189C();
  }

  v13 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_pageGrid;
  swift_beginAccess();
  sub_1000A833C(&a1[v13], v9);
  v14 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_pageGrid;
  swift_beginAccess();
  sub_1000A83AC(v9, &v3[v14]);
  swift_endAccess();
  sub_1005533F0(*&a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView]);
  v15 = *&a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay];
  if (v15 && *&v3[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay])
  {
    v16 = *&v3[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay + 8];
    v17 = *&a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay + 8];
    ObjectType = swift_getObjectType();
    v19 = *(v16 + 120);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v19(v15, v17, a2 & 1, ObjectType, v16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  sub_1000A3B10(a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionMode]);
  [v3 setOverrideUserInterfaceStyle:{objc_msgSend(a1, "overrideUserInterfaceStyle")}];
  v20 = *&v3[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView];
  v21 = *&a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView];
  v22 = *(v21 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_style);
  v23 = *(v21 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_style + 8);

  sub_1001DC428(v22, v23);
  v24 = OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_blurUserInterfaceStyle;
  *(v20 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_blurUserInterfaceStyle) = *(v21 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_blurUserInterfaceStyle);
  v25 = OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_effectsView;
  v26 = *(v20 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_effectsView);

  sub_100005744(0, &qword_10097FB70, UIVisualEffect_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v26 setBackgroundEffects:isa];

  [*(v20 + v25) setOverrideUserInterfaceStyle:*(v20 + v24)];
  return [v3 setNeedsLayout];
}

id sub_1000A66D4()
{
  v1 = v0;
  sub_1003CC15C();
  [*(*(v0 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView) + qword_10098B7D8) setImage:0];
  sub_10006EAAC();
  sub_10006EAAC();
  sub_10006EAAC();
  *(v0 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsArtworkFetchKey) = 0;

  *(v0 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_originalSizeCategory) = 7;
  v2 = (v0 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionUpdateBlock);
  v3 = *v2;
  v4 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  sub_10001F63C(v3, v4);
  v5 = *v2;
  if (*v2)
  {
    v6 = v2[1];

    v5(v7);
    sub_10001F63C(v5, v6);
  }

  v8 = *(v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer);
  sub_1006865EC();
  v8[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isLayoutRequired] = 1;
  v8[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_sizeCategory] = 5;
  result = [v8 setHidden:0];
  v8[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_originalSizeCategory] = 5;
  return result;
}

uint64_t sub_1000A6820(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26.receiver = v2;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, "layoutSubviews");
  v4 = [v2 traitCollection];
  v5 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory;
  sub_1000A805C(v4, v3[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory], &v27);
  v6 = v30;

  v7 = *&v3[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView];
  v8 = *&v3[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer];
  v9 = *&v3[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayKind];
  v10 = v3[v5];
  v11 = v3[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayKind + 8];
  v12 = v3[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_originalSizeCategory];
  v13 = v3[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_isExpanded];
  v36[0] = v27;
  v36[1] = v28;
  v36[2] = v29;
  *&v37 = v6;
  *(&v37 + 1) = v7;
  *v38 = v8;
  *&v38[8] = v9;
  v38[16] = v11;
  v38[17] = v10;
  v38[18] = v12;
  v38[19] = v13;
  v38[20] = 0;
  v31 = v27;
  v32 = v28;
  *(v35 + 13) = *&v38[13];
  v34 = v37;
  v35[0] = *v38;
  v33 = v29;
  v14 = v7;
  v15 = v8;
  [v3 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [v3 traitCollection];
  sub_1006D05F8(v24, v17, v19, v21, v23);

  sub_1000A69C4();
  return sub_1000A8C48(v36);
}

void sub_1000A69C4()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v2 - 8);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v70 - v6;
  v8 = type metadata accessor for PageGrid();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v70 - v14;
  v16 = v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionMode];
  if (v16 > 1)
  {
    if (v16 != 2)
    {
      if (v16 != 3)
      {
        return;
      }

      v17 = v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory];
      v18 = 0.0;
      if (v17 != 7)
      {
        v19 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_pageGrid;
        swift_beginAccess();
        sub_1000A833C(&v1[v19], v4);
        if ((*(v9 + 48))(v4, 1, v8) == 1)
        {
          sub_10002B894(v4, &qword_10097DBD0, &qword_1007BC750);
        }

        else
        {
          (*(v9 + 32))(v11, v4, v8);
          v55 = [v1 traitCollection];
          v73.is_nil = UIContentSizeCategoryExtraExtraExtraLarge;
          v73.value._rawValue = 0;
          isa = UITraitCollection.clampingContentSizeCategory(min:max:)(v73, v75).super.isa;

          sub_1004674A4(v17, v11, isa);
          v18 = v57;

          (*(v9 + 8))(v11, v8);
        }
      }

      v58 = [v1 traitCollection];
      if (qword_10096EFE0 != -1)
      {
        swift_once();
      }

      v59 = sub_1002D2EF4(v58, &xmmword_1009D3ED0, 1);
      UITraitCollection.prefersAccessibilityLayouts.getter();
      static UIEdgeInsets.vertical(top:bottom:)();
      v61 = v60;
      UITraitCollection.prefersAccessibilityLayouts.getter();
      static UIEdgeInsets.vertical(top:bottom:)();
      v63 = v62;

      [v1 bounds];
      v64 = CGRectGetMaxY(v81) - (v59 + v61 + v63);
      v65 = *&v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView];
      [v65 frame];
      if (v64 >= CGRectGetMinY(v82))
      {
        [v65 frame];
        MinY = CGRectGetMinY(v83);
        v64 = MinY + sub_1005502C4();
      }

      if (v18 >= v64)
      {
        v47 = v64;
      }

      else
      {
        v47 = v18;
      }

      goto LABEL_40;
    }

LABEL_8:
    [*&v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView] frame];
    v20 = CGRectGetMinY(v76);
    v21 = v20 + sub_1005502C4();
    [v1 bounds];
    MaxY = CGRectGetMaxY(v77);
    if (*&v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_preferredGradientType])
    {
      v23 = MaxY;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
      if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
      {

LABEL_15:
        if (v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory] == 6)
        {
          v37 = v23 + -75.0;
          v38 = [v1 traitCollection];
          v39 = UITraitCollection.prefersAccessibilityLayouts.getter();

          if ((v39 & 1) == 0)
          {
            v21 = v37;
          }
        }

        goto LABEL_18;
      }

      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v36)
      {
        goto LABEL_15;
      }
    }

LABEL_18:
    v40 = v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory];
    v41 = 0.0;
    if (v40 != 7)
    {
      v42 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_pageGrid;
      swift_beginAccess();
      sub_1000A833C(&v1[v42], v7);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        sub_10002B894(v7, &qword_10097DBD0, &qword_1007BC750);
      }

      else
      {
        (*(v9 + 32))(v15, v7, v8);
        v43 = [v1 traitCollection];
        v72.is_nil = UIContentSizeCategoryExtraExtraExtraLarge;
        v72.value._rawValue = 0;
        v44 = UITraitCollection.clampingContentSizeCategory(min:max:)(v72, v74).super.isa;

        sub_1004674A4(v40, v15, v44);
        v41 = v45;

        (*(v9 + 8))(v15, v8);
      }
    }

    if (v41 < v21 && v16 == 2)
    {
      v47 = v41;
    }

    else
    {
      v47 = v21;
    }

LABEL_40:
    sub_1000A8C9C(v1, v47);
    return;
  }

  if (!v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionMode])
  {
    goto LABEL_8;
  }

  if (*&v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay])
  {
    [*&v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer] frame];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
  }

  else
  {
    v29 = 0.0;
    v31 = 0.0;
    v33 = 0.0;
    v35 = 0.0;
  }

  v48 = *&v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView];
  [v1 bounds];
  MinX = CGRectGetMinX(v78);
  v79.origin.x = v29;
  v79.origin.y = v31;
  v79.size.width = v33;
  v79.size.height = v35;
  v50 = CGRectGetMinY(v79);
  v51 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory;
  if (v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory] == 6 && (v52 = [v1 traitCollection], v53 = UITraitCollection.prefersAccessibilityLayouts.getter(), v52, (v53 & 1) == 0))
  {
    Width = 570.0;
  }

  else
  {
    v80.origin.x = v29;
    v80.origin.y = v31;
    v80.size.width = v33;
    v80.size.height = v35;
    Width = CGRectGetWidth(v80);
  }

  if (v1[v51] == 6 && (v67 = [v1 traitCollection], v68 = UITraitCollection.prefersAccessibilityLayouts.getter(), v67, (v68 & 1) == 0))
  {
    Height = 325.0;
  }

  else
  {
    v84.origin.x = v29;
    v84.origin.y = v31;
    v84.size.width = v33;
    v84.size.height = v35;
    Height = CGRectGetHeight(v84);
  }

  [v48 setFrame:{MinX, v50, Width, Height}];
}

id sub_1000A71C4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (*&v4[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay])
  {
    v5 = v4;
    v9 = *&v4[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay + 8];
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 16);
    swift_unknownObjectRetain();
    v12 = v11(ObjectType, v9);
    swift_unknownObjectRelease();
    [v5 convertPoint:v12 toCoordinateSpace:{a3, a4}];
    v14 = v13;
    v16 = v15;
    if ([v12 pointInside:a1 withEvent:?])
    {
      v17 = [v12 hitTest:a1 withEvent:{v14, v16}];

      return v17;
    }
  }

  return 0;
}

uint64_t sub_1000A735C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay))
  {
    v4 = *(v2 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 128);
    swift_unknownObjectRetain();
    v6(a1, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  *(v2 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsArtworkFetchKey) = 0;

  v7 = *(v2 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView);
  type metadata accessor for TodayCardLabelsView(0);
  sub_1000A8C00(&qword_100972DB0, type metadata accessor for TodayCardLabelsView, &protocol conformance descriptor for NSObject);
  v8 = v7;
  AnyHashable.init<A>(_:)();
  ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
  return sub_10003D614(v10);
}

uint64_t type metadata accessor for TodayCardInfoLayerView(uint64_t a1)
{
  result = qword_100972D98;
  if (!qword_100972D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A76C8(uint64_t a1)
{
  sub_1000A77BC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000A77BC(uint64_t a1)
{
  if (!qword_100977370)
  {
    type metadata accessor for PageGrid();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100977370);
    }
  }
}

uint64_t getEnumTagSinglePayload for TodayCardInfoLayerView.ProtectionMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TodayCardInfoLayerView.ProtectionMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000A7968()
{
  result = qword_100972DA8;
  if (!qword_100972DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100972DA8);
  }

  return result;
}

uint64_t sub_1000A79D4(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayKind;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

double sub_1000A7A24(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay);
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRelease();
  return result;
}

double sub_1000A7A50(uint64_t a1)
{
  swift_weakAssign();

  return result;
}

void sub_1000A7ACC(char *a1, void *a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 layoutDirection];

  if (v5 != [a2 layoutDirection])
  {
    v6 = [a1 traitCollection];
    v7 = UITraitCollection.prefersRightToLeftLayouts.getter();

    v8 = *&a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView];
    v9 = 0.13962634;
    if (v7)
    {
      v9 = -0.13962634;
    }

    v10 = *(v8 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_rotationAngle);
    *(v8 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_rotationAngle) = v9;
    if (v9 != v10)
    {
      sub_1001DD518();
    }
  }
}

id sub_1000A7BA8(char *a1, uint64_t a2)
{
  sub_1000A3894(a1, a2);
  v3 = *&a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionUpdateBlock];
  if (v3)
  {
    v4 = *&a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionUpdateBlock + 8];

    v3(v5);
    sub_10001F63C(v3, v4);
  }

  return [a1 setNeedsLayout];
}

id sub_1000A7C28(uint64_t a1)
{
  v2 = type metadata accessor for TodayCard.Style();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = 0.1;
  if (v7 == enum case for TodayCard.Style.automatic(_:) || v7 == enum case for TodayCard.Style.white(_:))
  {
    goto LABEL_8;
  }

  if (v7 == enum case for TodayCard.Style.dark(_:))
  {
    v10 = &selRef_whiteColor;
    v8 = 0.16;
LABEL_9:
    v11 = [objc_opt_self() *v10];
    v12 = [v11 colorWithAlphaComponent:v8];

    return v12;
  }

  if (v7 == enum case for TodayCard.Style.light(_:))
  {
LABEL_8:
    v10 = &selRef_blackColor;
    goto LABEL_9;
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  v15 = 0xD00000000000002ALL;
  v16 = 0x80000001007FFFC0;
  v14._countAndFlagsBits = TodayCard.Style.rawValue.getter();
  String.append(_:)(v14);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_1000A7E58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *&v2[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer];
  sub_1006865EC();
  if (a1)
  {
    v8 = swift_getObjectType();
    v9 = *(a2 + 16);
    swift_unknownObjectRetain();
    v10 = v9(v8, a2);
    v11 = OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView;
    v12 = *&v7[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView];
    *&v7[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView] = v10;
    v13 = v10;

    [v13 setAnchorPoint:{0.0, 1.0}];
    v14 = *&v7[v11];
    if (v14)
    {
      v21[0] = 0x3FF0000000000000;
      v21[1] = 0;
      v21[2] = 0;
      v21[3] = 0x3FF0000000000000;
      v21[4] = 0;
      v21[5] = 0;
      [v14 setTransform:v21];
    }

    [v7 addSubview:v13];
    [v13 setOverrideUserInterfaceStyle:{objc_msgSend(v3, "overrideUserInterfaceStyle")}];
    v20.receiver = v3;
    v20.super_class = ObjectType;
    objc_msgSendSuper2(&v20, "_continuousCornerRadius");
    [v13 _setContinuousCornerRadius:?];
    v15 = [v13 layer];
    if (*(v3 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory) == 6)
    {
      v16 = [v3 traitCollection];
      v17 = UITraitCollection.prefersAccessibilityLayouts.getter();

      if (v17)
      {
        v18 = 12;
      }

      else
      {
        v18 = 15;
      }
    }

    else
    {
      v18 = 12;
    }

    [v15 setMaskedCorners:v18];
    swift_unknownObjectRelease();
  }

  return [v3 setNeedsLayout];
}

double sub_1000A805C@<D0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096EFE0 != -1)
    {
      swift_once();
    }

    v6 = sub_1002D2EF4(a1, &xmmword_1009D3ED0, 1);
    UITraitCollection.prefersAccessibilityLayouts.getter();
    static UIEdgeInsets.vertical(top:bottom:)();
    v9 = v8;
    UITraitCollection.prefersAccessibilityLayouts.getter();
    static UIEdgeInsets.vertical(top:bottom:)();
    v11 = v6 + v9 + v10;
    __asm { FMOV            V0.2D, #16.0 }

LABEL_16:
    *&_Q0 = v11;
    v26 = 16.0;
    goto LABEL_17;
  }

  if (a2 == 6)
  {
    if (qword_10096EFE0 != -1)
    {
      swift_once();
    }

    v17 = sub_1002D2EF4(a1, &xmmword_1009D3ED0, 1);
    UITraitCollection.prefersAccessibilityLayouts.getter();
    static UIEdgeInsets.vertical(top:bottom:)();
    v24 = v23;
    UITraitCollection.prefersAccessibilityLayouts.getter();
    static UIEdgeInsets.vertical(top:bottom:)();
    __asm { FMOV            V0.2D, #30.0 }

    *&_Q0 = v17 + v24 + v25;
    v26 = 30.0;
  }

  else
  {
    if (a2 == 4)
    {
      if (qword_10096EFE0 != -1)
      {
        swift_once();
      }

      v7 = sub_1002D2EF4(a1, &xmmword_1009D3ED0, 1);
      UITraitCollection.prefersAccessibilityLayouts.getter();
      static UIEdgeInsets.vertical(top:bottom:)();
      v20 = v19;
      UITraitCollection.prefersAccessibilityLayouts.getter();
      static UIEdgeInsets.vertical(top:bottom:)();
      v11 = v7 + v20 + v21;
      __asm { FMOV            V0.2D, #12.0 }

      goto LABEL_16;
    }

    if (qword_10096EFE0 != -1)
    {
      swift_once();
    }

    v18 = sub_1002D2EF4(a1, &xmmword_1009D3ED0, 1);
    UITraitCollection.prefersAccessibilityLayouts.getter();
    static UIEdgeInsets.vertical(top:bottom:)();
    v28 = v27;
    UITraitCollection.prefersAccessibilityLayouts.getter();
    static UIEdgeInsets.vertical(top:bottom:)();
    __asm { FMOV            V0.2D, #20.0 }

    *&_Q0 = v18 + v28 + v29;
    v26 = 20.0;
  }

LABEL_17:
  *a3 = _Q0;
  *(a3 + 16) = v26;
  *(a3 + 24) = xmmword_1007B3E20;
  result = 353.0;
  *(a3 + 40) = xmmword_1007B3E30;
  return result;
}

uint64_t sub_1000A833C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A83AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1000A841C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView;
  v12[0] = sub_100113508;
  v12[1] = 0;
  v12[2] = sub_1005AB608;
  v12[3] = 0;
  v12[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v12[5] = 0;
  v12[6] = sub_100113508;
  v12[7] = 0;
  v12[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v12[9] = 0;
  v12[10] = sub_100287668;
  v12[11] = 0;
  v13 = 0x4000000000000000uLL;
  v14 = 0;
  v15 = 0x4018000000000000;
  v16 = 0;
  v17 = 1;
  v3 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView(0));
  *(v0 + v2) = sub_100550DDC(v12, &v13);
  *(v0 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsArtworkFetchKey) = 0;
  v4 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView;
  v5 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
  *(v0 + v4) = sub_1001DCC8C(&off_1008AF6C0);
  v6 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer;
  type metadata accessor for InfoLayerOverlayContainerView();
  *(v1 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionMode) = 0;
  v7 = (v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionUpdateBlock);
  *v7 = 0;
  v7[1] = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory) = 7;
  *(v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_originalSizeCategory) = 7;
  v8 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_pageGrid;
  v9 = type metadata accessor for PageGrid();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_isTransitioning) = 0;
  v10 = v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayKind;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay);
  *v11 = 0;
  v11[1] = 0;
  swift_weakInit();
  *(v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_preferredGradientType) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000A866C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19[0] = a2;
  v4 = type metadata accessor for EditorialDisplayOptions();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TodayCard.editorialDisplayOptions.getter();
  v8 = EditorialDisplayOptions.suppressLockup.getter();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if ((v8 & 1) != 0 || !TodayCard.overlay.getter())
  {
    v10 = 0;
  }

  else
  {

    v10 = 1;
  }

  v11 = [v3 traitCollection];
  v12 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v12)
  {
    TodayCard.editorialDisplayOptions.getter();
    v13 = EditorialDisplayOptions.suppressLockup.getter();
    v9(v7, v4);
    if ((v13 & 1) == 0 && TodayCard.overlay.getter() && (, type metadata accessor for TodayCardOverlayReusePool(), BaseObjectGraph.optional<A>(_:)(), v19[1]))
    {

      return 3;
    }

    else
    {
      return 2;
    }
  }

  else if (v10 && (*(v3 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory) != 6 || (v15 = [v3 traitCollection], v16 = UITraitCollection.prefersAccessibilityLayouts.getter(), v15, (v16 & 1) != 0)))
  {
    TodayCard.editorialDisplayOptions.getter();
    v17 = EditorialDisplayOptions.useMaterialBlur.getter();
    v9(v7, v4);
    return (v17 & 1) == 0;
  }

  else
  {
    TodayCard.editorialDisplayOptions.getter();
    v18 = EditorialDisplayOptions.useMaterialBlur.getter();
    v9(v7, v4);
    if (v18)
    {
      return 0;
    }

    else
    {
      return 4;
    }
  }
}

id sub_1000A88D4(uint64_t a1, uint64_t a2)
{
  TodayCard.media.getter();
  type metadata accessor for TodayCardMediaAppEvent();
  if (!swift_dynamicCastClass())
  {

    v9 = TodayCard.media.getter();
    type metadata accessor for TodayCardMedia();
    sub_10002849C(&qword_100972DD0, qword_1007B3FF0);
    if (swift_dynamicCast())
    {
      sub_100005A38(v7, v10);
      sub_10002A400(v10, v10[3]);
      if (TodayCardMediaWithArtwork.video(for:)())
      {

        if (qword_10096D350 != -1)
        {
          swift_once();
        }

        v3 = qword_1009CE710;

        sub_100007000(v10);
        return v3;
      }

      sub_100007000(v10);
    }

    else
    {
      v8 = 0;
      memset(v7, 0, sizeof(v7));
      sub_10002B894(v7, &qword_100972DD8, &qword_1007C83C0);
    }

    if (qword_10096D340 != -1)
    {
      swift_once();
    }

    v3 = xmmword_1009CE6F0;

    return v3;
  }

  v2 = TodayCardMediaAppEvent.tintColor.getter();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007B0B70;
  sub_100005744(0, &unk_1009856A0, UIColorEffect_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [ObjCClassFromMetadata effectCompositingColor:v2 withMode:0 alpha:1.0];
  if (result)
  {
    *(v3 + 32) = result;
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007B0B70;
    result = [ObjCClassFromMetadata effectCompositingColor:v2 withMode:0 alpha:1.0];
    if (result)
    {
      *(v6 + 32) = result;

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A8BA0(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1000A8C00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000A8C9C(unsigned __int8 *a1, double a2)
{
  v4 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory;
  v5 = a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory];
  v6 = 0.174532925;
  if (v5 == 4)
  {
    v16 = 48.0;
    goto LABEL_23;
  }

  if (v5 != 6)
  {
    goto LABEL_11;
  }

  v7 = [a1 traitCollection];
  v8 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if ((v8 & 1) != 0 || !*&a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_preferredGradientType])
  {
    goto LABEL_11;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {

    *&v15 = 100.0;
    goto LABEL_12;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    *&v15 = 100.0;
  }

  else
  {
LABEL_11:
    *&v15 = 80.0;
  }

LABEL_12:
  v16 = *&v15;
  v17 = a1[v4];
  if (v17 == 4)
  {
    goto LABEL_23;
  }

  if (v17 != 6)
  {
    goto LABEL_21;
  }

  v18 = [a1 traitCollection];
  v19 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if ((v19 & 1) != 0 || !*&a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_preferredGradientType])
  {
    goto LABEL_21;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
LABEL_21:
      v6 = 0.13962634;
      goto LABEL_23;
    }
  }

  v6 = 0.34906585;
LABEL_23:
  v26 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_preferredGradientType;
  if (*&a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_preferredGradientType])
  {
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
    if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v30)
    {
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (a1[v4] == 6)
    {
      v33 = [a1 traitCollection];
      v34 = UITraitCollection.prefersAccessibilityLayouts.getter();

      if ((v34 & 1) == 0)
      {
        v35 = 385.0;
        goto LABEL_34;
      }
    }
  }

LABEL_33:
  [a1 bounds];
  v35 = CGRectGetWidth(v58) * 0.5;
LABEL_34:
  v36 = v35 * tan(v6);
  [a1 bounds];
  v37 = ceil(v36 + v16 + CGRectGetHeight(v59) - a2);
  v38 = *&a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView];
  if (a1[v4] == 6)
  {
    v39 = [a1 traitCollection];
    v40 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if ((v40 & 1) == 0)
    {
      if (*&a1[v26])
      {
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;
        if (v41 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v43 == v44)
        {

          goto LABEL_42;
        }

        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v45)
        {
          goto LABEL_42;
        }
      }

      [a1 bounds];
      CGRectGetMinX(v63);
      [a1 bounds];
      CGRectGetHeight(v64);
      v51 = [a1 traitCollection];
      [a1 bounds];
      CGRect.withLayoutDirection(using:relativeTo:)();
      MinX = v52;
      v48 = v53;
      v55 = v54;
      v57 = v56;

      v50 = v57;
      Width = v55;
      goto LABEL_46;
    }
  }

LABEL_42:
  [a1 bounds];
  MinX = CGRectGetMinX(v60);
  [a1 bounds];
  v47 = CGRectGetHeight(v61) - v37;
  if (v47 < 0.0)
  {
    v48 = 0.0;
  }

  else
  {
    v48 = v47;
  }

  [a1 bounds];
  Width = CGRectGetWidth(v62);
  v50 = v37;
LABEL_46:
  [v38 setFrame:{MinX, v48, Width, v50}];
  *&v38[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientStartY] = v36 / v37;
  sub_1001DD518();
  *&v38[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientEndY] = (v16 + v36) / v37;
  sub_1001DD518();
}

uint64_t sub_1000A9224(unint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for MetadataRibbonItemViewType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Feature();
  v32[3] = v8;
  v32[4] = sub_1000AE0F0(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v9 = sub_1000056E0(v32);
  (*(*(v8 - 8) + 104))(v9, enum case for Feature.search_tags(_:), v8);
  LOBYTE(v8) = isFeatureEnabled(_:)();
  sub_100007000(v32);
  if (v8)
  {
    a2 = a1;
  }

  if (a2)
  {
    type metadata accessor for MetadataRibbonItem();
    if (Array.isNotEmpty.getter())
    {
      v10 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 >> 62)
      {
        goto LABEL_40;
      }

      for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v12 = 0;
        v31 = a2 & 0xC000000000000001;
        v13 = (v5 + 88);
        v29 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
        v30 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
        v27 = enum case for MetadataRibbonItemViewType.starRating(_:);
        v28 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
        v25 = enum case for MetadataRibbonItemViewType.divider(_:);
        v26 = enum case for MetadataRibbonItemViewType.textLabel(_:);
        v14 = (v5 + 8);
        v15 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
        v24 = v10;
        while (v31)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_38;
          }

LABEL_11:
          MetadataRibbonItem.viewContainerType.getter();

          v16 = (*v13)(v7, v4);
          v17 = v16 == v30 || v16 == v29;
          v22 = v17 || v16 == v28 || v16 == v27 || v16 == v26 || v16 == v25 || v16 == v15;
          v5 = v22;
          if (!v22)
          {
            (*v14)(v7, v4);
            ++v12;
            v17 = v10 == i;
            v10 = v24;
            if (!v17)
            {
              continue;
            }
          }

          return v5;
        }

        if (v12 >= *(v10 + 16))
        {
          goto LABEL_39;
        }

        v5 = *(a2 + 8 * v12 + 32);

        v10 = v12 + 1;
        if (!__OFADD__(v12, 1))
        {
          goto LABEL_11;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        ;
      }
    }
  }

  return 0;
}

uint64_t sub_1000A9520()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  sub_100005644(v4, qword_1009CDC00);
  v46 = sub_1000056A8(v4, qword_1009CDC00);
  v96 = &type metadata for Double;
  v97 = &protocol witness table for Double;
  v95 = 0x4024000000000000;
  if (qword_10096DD00 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D0698);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  v7 = v1[13];
  v7(v3, enum case for FontSource.useCase(_:), v0);
  v50 = v7;
  v93 = type metadata accessor for StaticDimension();
  v94 = &protocol witness table for StaticDimension;
  v8 = v93;
  v47 = v93;
  sub_1000056E0(v92);
  v90 = v0;
  v91 = &protocol witness table for FontSource;
  v9 = sub_1000056E0(v89);
  v52 = v1[2];
  v52(v9, v3, v0);
  v48 = v1 + 2;
  StaticDimension.init(_:scaledLike:)();
  v10 = v1[1];
  v10(v3, v0);
  v53 = v1 + 1;
  *v3 = UIFontTextStyleBody;
  v49 = enum case for FontSource.textStyle(_:);
  v54 = v1 + 13;
  (v7)(v3);
  v90 = v8;
  v91 = &protocol witness table for StaticDimension;
  sub_1000056E0(v89);
  v87 = v0;
  v88 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v86);
  v12 = v52;
  v52(v11, v3, v0);
  v13 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  *v3 = v13;
  v14 = v49;
  v15 = v50;
  v50(v3, v49, v0);
  v87 = v47;
  v88 = &protocol witness table for StaticDimension;
  sub_1000056E0(v86);
  v84 = v0;
  v85 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(v83);
  v12(v16, v3, v0);
  v17 = v13;
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  v51 = v10;
  *v3 = v17;
  v15(v3, v14, v0);
  v18 = v47;
  v84 = v47;
  v85 = &protocol witness table for StaticDimension;
  sub_1000056E0(v83);
  v81 = v0;
  v82 = &protocol witness table for FontSource;
  v19 = sub_1000056E0(v80);
  v20 = v52;
  v52(v19, v3, v0);
  v21 = v17;
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  *v3 = v21;
  v50(v3, v49, v0);
  v81 = v18;
  v82 = &protocol witness table for StaticDimension;
  sub_1000056E0(v80);
  v78 = v0;
  v79 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(v77);
  v20(v22, v3, v0);
  v23 = v21;
  StaticDimension.init(_:scaledLike:)();
  v51(v3, v0);
  *v3 = UIFontTextStyleFootnote;
  v24 = v49;
  v25 = v50;
  v50(v3, v49, v0);
  v26 = v18;
  v78 = v18;
  v79 = &protocol witness table for StaticDimension;
  sub_1000056E0(v77);
  v75 = v0;
  v76 = &protocol witness table for FontSource;
  v27 = sub_1000056E0(v74);
  v28 = v52;
  v52(v27, v3, v0);
  v29 = UIFontTextStyleFootnote;
  StaticDimension.init(_:scaledLike:)();
  v30 = v51;
  v51(v3, v0);
  *v3 = v29;
  v25(v3, v24, v0);
  v75 = v26;
  v76 = &protocol witness table for StaticDimension;
  sub_1000056E0(v74);
  v72 = v0;
  v73 = &protocol witness table for FontSource;
  v31 = sub_1000056E0(v71);
  v28(v31, v3, v0);
  v32 = v29;
  StaticDimension.init(_:scaledLike:)();
  v30(v3, v0);
  *v3 = v32;
  v33 = v49;
  v34 = v50;
  v50(v3, v49, v0);
  v72 = v26;
  v73 = &protocol witness table for StaticDimension;
  sub_1000056E0(v71);
  v69 = v0;
  v70 = &protocol witness table for FontSource;
  v35 = sub_1000056E0(v68);
  v52(v35, v3, v0);
  v36 = v32;
  StaticDimension.init(_:scaledLike:)();
  v51(v3, v0);
  *v3 = v36;
  v34(v3, v33, v0);
  v69 = v26;
  v70 = &protocol witness table for StaticDimension;
  sub_1000056E0(v68);
  v66 = v0;
  v67 = &protocol witness table for FontSource;
  v37 = sub_1000056E0(v65);
  v38 = v52;
  v52(v37, v3, v0);
  v39 = v36;
  StaticDimension.init(_:scaledLike:)();
  v40 = v51;
  v51(v3, v0);
  *v3 = v39;
  v34(v3, v33, v0);
  v66 = v26;
  v67 = &protocol witness table for StaticDimension;
  sub_1000056E0(v65);
  v63 = v0;
  v64 = &protocol witness table for FontSource;
  v41 = sub_1000056E0(v62);
  v38(v41, v3, v0);
  v42 = v39;
  StaticDimension.init(_:scaledLike:)();
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
  sub_1000056E0(v61);
  v59 = v0;
  v60 = &protocol witness table for FontSource;
  v43 = sub_1000056E0(v58);
  v52(v43, v3, v0);
  v44 = v42;
  StaticDimension.init(_:scaledLike:)();
  v51(v3, v0);
  v59 = &type metadata for Double;
  v60 = &protocol witness table for Double;
  v57 = &protocol witness table for Double;
  v58[0] = 0x4040000000000000;
  v56 = &type metadata for Double;
  v55 = 0x4024000000000000;
  return SmallSearchLockupLayout.Metrics.init(artworkSize:artworkMargin:headingSpace:titleRegularSpace:titleMediumSpace:titleShortSpace:titleWithHeadingSpace:subtitleSpace:tertiaryTitleSpace:offerTextSpace:metadataTextSpace:bottomSpace:offerButtonSize:offerButtonMargin:userRatingRightMargin:editorsChoiceMargin:adButtonRightMargin:descriptionSpace:regularWidthColumnSpacing:descriptionTopMargin:)();
}

uint64_t sub_1000A9EB4()
{
  v0 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_100005644(v0, qword_100972DE0);
  sub_1000056A8(v0, qword_100972DE0);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

void sub_1000A9F50(char a1)
{
  if (v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice] != (a1 & 1))
  {
    v2 = v1;
    if (v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice])
    {
      v3 = v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_useAdsLocale];
      v4 = objc_allocWithZone(type metadata accessor for EditorsChoiceView());
      v5 = sub_10029CDF8(2, 0, 0, v3, 0);
      v6 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_editorsChoiceView;
      v7 = *&v2[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_editorsChoiceView];
      *&v2[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_editorsChoiceView] = v5;

      v8 = *&v2[v6];
      if (!v8 || (sub_100005744(0, &qword_100970180, UIColor_ptr), v9 = v8, v10 = static UIColor.secondaryText.getter(), [v9 setTintColor:v10], v9, v10, !*&v2[v6]))
      {
        __break(1u);
        return;
      }

      [v2 addSubview:?];
    }

    else
    {
      v11 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_editorsChoiceView;
      v12 = *&v2[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_editorsChoiceView];
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

void sub_1000AA0AC(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton];
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

void sub_1000AA154()
{
  v1 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView);
  v6 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_isDisplayingSearchAd;
  v7 = *(v0 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_isDisplayingSearchAd);
  v8 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_isInsideSearchAd;
  swift_beginAccess();
  v5[v8] = v7;
  if (v7 == 1)
  {
    static MetadataRibbonViewLayout.Metrics.standard.getter();
    v9 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metrics;
    swift_beginAccess();
    (*(v2 + 24))(&v5[v9], v4, v1);
    swift_endAccess();
    [v5 setNeedsLayout];
    (*(v2 + 8))(v4, v1);
  }

  *(*(v0 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchTagsRibbonView) + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_isInsideSearchAd) = *(v0 + v6);
}

char *sub_1000AA2E4(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v103 = type metadata accessor for DirectionalTextAlignment();
  v105 = *(v103 - 1);
  __chkstk_darwin(v103);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v96 - v15;
  v17 = type metadata accessor for FontSource();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRegularMargin] = 0x4024000000000000;
  *&v7[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataSmallMargin] = 0x401C000000000000;
  if (qword_10096E298 != -1)
  {
    swift_once();
  }

  v100 = v13;
  v21 = type metadata accessor for FontUseCase();
  v22 = sub_1000056A8(v21, qword_1009D1748);
  v102 = *(v21 - 8);
  v104 = *(v102 + 16);
  v106 = v102 + 16;
  v104(v20, v22, v21);
  (*(v18 + 104))(v20, enum case for FontSource.useCase(_:), v17);
  v111 = v17;
  v112 = &protocol witness table for FontSource;
  v23 = sub_1000056E0(v110);
  (*(v18 + 16))(v23, v20, v17);
  StaticDimension.init(_:scaledLike:)();
  (*(v18 + 8))(v20, v17);
  *&v7[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_regularWidthColumnSpacing] = 0x4040000000000000;
  v7[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings] = 0;
  v24 = type metadata accessor for RatingView();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC8AppStore10RatingView_rating] = 0;
  *&v25[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor] = 0;
  v26 = &v25[OBJC_IVAR____TtC8AppStore10RatingView_starPadding];
  *v26 = 0;
  v26[8] = 1;
  *&v25[OBJC_IVAR____TtC8AppStore10RatingView_maxNumberOfStars] = 5;
  if (qword_10096DAE8 != -1)
  {
    swift_once();
  }

  v27 = qword_100982C88;
  *&v25[OBJC_IVAR____TtC8AppStore10RatingView_starColor] = qword_100982C88;
  v25[OBJC_IVAR____TtC8AppStore10RatingView_starSize] = 3;
  *v26 = 0;
  v26[8] = 1;
  v25[OBJC_IVAR____TtC8AppStore10RatingView_useCase] = 0;
  v28 = type metadata accessor for StarRow();
  v29 = objc_allocWithZone(v28);
  v30 = v27;
  *&v25[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView] = sub_1003A533C(5, 1, 3, 0, 1, 0, 0);
  v25[OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars] = 0;
  v31 = objc_allocWithZone(v28);
  *&v25[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView] = sub_1003A533C(5, 0, 3, 0, 1, 0, 0);
  v109.receiver = v25;
  v109.super_class = v24;
  v32 = objc_msgSendSuper2(&v109, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1003A2F78();
  v33 = OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView;
  v34 = *&v32[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView];
  v35 = *&v34[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating];
  *&v34[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating] = *&v32[OBJC_IVAR____TtC8AppStore10RatingView_rating];
  v36 = v34;
  sub_1003A3A64(v35);

  if (*&v32[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView])
  {
    [v32 addSubview:?];
  }

  v37 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView;
  [v32 addSubview:*&v32[v33]];

  *&v7[v37] = v32;
  v38 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel;
  v39 = v105;
  if (qword_10096E148 != -1)
  {
    swift_once();
  }

  v40 = sub_1000056A8(v21, qword_1009D1358);
  v104(v16, v40, v21);
  v41 = *(v102 + 56);
  v41(v16, 0, 1, v21);
  v42 = *(v39 + 104);
  v105 = v39 + 104;
  v43 = v100;
  LODWORD(v102) = enum case for DirectionalTextAlignment.none(_:);
  v99 = v42;
  v42(v100);
  v44 = type metadata accessor for DynamicTypeLabel();
  v45 = objc_allocWithZone(v44);
  *&v7[v38] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v7[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_useAdsLocale] = 0;
  v7[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice] = 0;
  *&v7[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_editorsChoiceView] = 0;
  v46 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView;
  *&v7[v46] = [objc_allocWithZone(type metadata accessor for MetadataRibbonView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v47 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchTagsRibbonView;
  *&v7[v47] = [objc_allocWithZone(type metadata accessor for SearchTagsRibbonView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v7[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton] = 0;
  v7[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_isDisplayingSearchAd] = 0;
  v7[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includesMetadataInformationInLockup] = 0;
  v7[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_shouldEvenlyDistribute] = 2;
  *&v7[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_impressionsCalculator] = 0;
  v48 = &v7[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_impressionsUpdateBlock];
  *v48 = 0;
  v48[1] = 0;
  if (qword_10096E140 != -1)
  {
    swift_once();
  }

  v49 = sub_1000056A8(v21, qword_1009D1340);
  v50 = v104;
  v104(v16, v49, v21);
  v97 = v21;
  v98 = v41;
  v41(v16, 0, 1, v21);
  v99(v43, v102, v103);
  v51 = objc_allocWithZone(v44);
  v52 = &unk_1009CD000;
  *&v7[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_descriptionLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v108.receiver = v7;
  v108.super_class = ObjectType;
  v53 = objc_msgSendSuper2(&v108, "initWithFrame:", a1, a2, a3, a4);
  v54 = type metadata accessor for Feature();
  v111 = v54;
  v55 = sub_1000AE0F0(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v112 = v55;
  v56 = sub_1000056E0(v110);
  v57 = *(v54 - 8);
  v58 = *(v57 + 104);
  LODWORD(v105) = enum case for Feature.search_tags(_:);
  ObjectType = v54;
  v102 = v57 + 104;
  v103 = v58;
  (v58)(v56);
  LOBYTE(v54) = isFeatureEnabled(_:)();
  sub_100007000(v110);
  v59 = v50;
  if (v54)
  {
    v100 = v55;
    v60 = v53;
    if (qword_10096DD20 != -1)
    {
      swift_once();
    }

    v61 = v97;
    v62 = sub_1000056A8(v97, qword_1009D06F8);
    v50(v16, v62, v61);
    v63 = v16;
    v64 = v16;
    v65 = v98;
    v98(v63, 0, 1, v61);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
    v66 = qword_10096DD30;
    v67 = *&v60[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
    if (v66 != -1)
    {
      swift_once();
    }

    v68 = sub_1000056A8(v61, qword_1009D0728);
    v59(v64, v68, v61);
    v65(v64, 0, 1, v61);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

    v69 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel;
    v70 = *&v60[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel];
    static CustomTextStyle<>.metadataRibbon.getter();
    if (qword_10096EE58 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for MetadataRibbonTextStyle();
    v72 = sub_1000056A8(v71, qword_1009D3710);
    v111 = v71;
    v112 = sub_1000AE0F0(&qword_10096FBA0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
    v73 = sub_1000056E0(v110);
    (*(*(v71 - 8) + 16))(v73, v72, v71);
    dispatch thunk of DynamicTypeLabel.customTextStyle.setter();

    v74 = *&v60[v69];
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v75 = v74;
    v76 = static UIColor.secondaryText.getter();
    [v75 setTextColor:v76];

    [*&v60[v69] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
    v77 = v100;
    v52 = &unk_1009CD000;
  }

  else
  {
    v78 = *&v53[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel];
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v79 = v78;
    v80 = static UIColor.tertiaryText.getter();
    [v79 setTextColor:v80];

    v77 = v55;
    v60 = v53;
  }

  v81 = v52[394];
  v82 = *&v60[v81];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v83 = v82;
  v84 = static UIColor.secondaryText.getter();
  [v83 setTextColor:v84];

  [*&v60[v81] setUserInteractionEnabled:0];
  v85 = v105;
  if (qword_10096CF78 != -1)
  {
    swift_once();
  }

  v86 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_1000056A8(v86, qword_100972DE0);
  v107 = v60;
  v87 = v60;
  Conditional.evaluate(with:)();

  UILabel.alignment.setter();
  [v87 addSubview:*&v87[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView]];
  v88 = ObjectType;
  v111 = ObjectType;
  v112 = v77;
  v89 = sub_1000056E0(v110);
  v90 = v103;
  v103(v89, v85, v88);
  v91 = isFeatureEnabled(_:)();
  sub_100007000(v110);
  if (v91)
  {
    [v87 addSubview:*&v87[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel]];
  }

  v111 = v88;
  v112 = v77;
  v92 = sub_1000056E0(v110);
  v90(v92, v85, v88);
  v93 = isFeatureEnabled(_:)();
  sub_100007000(v110);
  v94 = &OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchTagsRibbonView;
  if ((v93 & 1) == 0)
  {
    v94 = &OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView;
  }

  [v87 addSubview:*&v87[*v94]];
  *(*&v87[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton] + OBJC_IVAR____TtC8AppStore11OfferButton_includeTopPadding) = 0;
  return v87;
}

double sub_1000AB0CC(double a1, double a2)
{
  v3 = v2;
  v4 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SmallSearchLockupLayout();
  v75 = *(v8 - 8);
  v76 = v8;
  __chkstk_darwin(v8);
  v74 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v4, qword_1009CDC00);
  (*(v5 + 16))(v7, v10, v4);
  v11 = *(v3 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
  type metadata accessor for BaseLockupView();
  LayoutMarginsAware<>.layoutFrame.getter();
  v12 = &v11[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
  if (v11[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v13 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
    swift_beginAccess();
    sub_10002C0AC(&v11[v13], v124);
    sub_10002A400(v124, v125);
    dispatch thunk of OfferButtonConfiguration.size(in:)();
    v15 = v14;
    v17 = v16;
    sub_100007000(v124);
    *v12 = v15;
    *(v12 + 1) = v17;
    v12[16] = 0;
  }

  SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
  v18 = *(v3 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v19 = type metadata accessor for ArtworkView();
  v126 = &protocol witness table for UIView;
  v125 = v19;
  v71 = v18;
  v124[0] = v18;
  v20 = *(v3 + OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel);
  v70 = v20;
  if (v20)
  {
    v21 = type metadata accessor for DynamicTypeLabel();
    v22 = &protocol witness table for UILabel;
    v23 = v20;
  }

  else
  {
    v23 = 0;
    v21 = 0;
    v22 = 0;
    v120 = 0;
    v121 = 0;
  }

  v119 = v23;
  v122 = v21;
  v123 = v22;
  v24 = *(v3 + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel);
  v25 = type metadata accessor for DynamicTypeLabel();
  v26 = v25;
  v118 = &protocol witness table for UILabel;
  v117 = v25;
  v116 = v24;
  v27 = *(v3 + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  v115 = &protocol witness table for UILabel;
  v114 = v25;
  v68 = v27;
  v69 = v24;
  v113 = v27;
  v28 = *(v3 + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
  if (v28)
  {
    v29 = &protocol witness table for UILabel;
    v30 = *(v3 + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
    v31 = v25;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v29 = 0;
    v109 = 0;
    v110 = 0;
  }

  v108 = v30;
  v111 = v31;
  v112 = v29;
  v32 = *(v3 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel);
  v106 = v25;
  v107 = &protocol witness table for UILabel;
  v67 = v32;
  v105 = v32;
  v103 = type metadata accessor for OfferButton();
  v104 = &protocol witness table for UIView;
  v102 = v11;
  v33 = *(v3 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView);
  v100 = type metadata accessor for RatingView();
  v101 = &protocol witness table for UIView;
  v98 = &protocol witness table for UILabel;
  v99 = v33;
  v34 = *(v3 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel);
  v97 = v26;
  v65 = v34;
  v66 = v33;
  v96 = v34;
  v35 = *(v3 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_editorsChoiceView);
  v72 = v11;
  if (v35)
  {
    v36 = type metadata accessor for EditorsChoiceView();
    v37 = &protocol witness table for UIView;
    v38 = v35;
  }

  else
  {
    v38 = 0;
    v36 = 0;
    v37 = 0;
    v92 = 0;
    v93 = 0;
  }

  v91 = v38;
  v94 = v36;
  v95 = v37;
  v39 = *(v3 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton);
  v73 = v7;
  if (v39)
  {
    v40 = type metadata accessor for SearchAdTransparencyButton(0);
    v41 = &protocol witness table for UIView;
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v87 = 0;
    v88 = 0;
  }

  v85 = &protocol witness table for UILabel;
  v86 = v39;
  v89 = v40;
  v90 = v41;
  v42 = *(v3 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_descriptionLabel);
  v84 = v26;
  v83 = v42;
  v43 = *(v3 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView);
  v81 = type metadata accessor for MetadataRibbonView(0);
  v82 = &protocol witness table for UIView;
  v80 = v43;
  v44 = *(v3 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchTagsRibbonView);
  v78 = type metadata accessor for SearchTagsRibbonView(0);
  v79 = &protocol witness table for UIView;
  v77 = v44;
  v45 = v35;
  v46 = v39;
  v47 = v42;
  v48 = v43;
  v44;
  v49 = v71;
  v50 = v70;
  v51 = v69;
  v52 = v68;
  v53 = v28;
  v54 = v67;
  v55 = v72;
  v56 = v66;
  v57 = v65;
  v58 = MetadataRibbonView.hasContent.getter();
  sub_100045A48(v58, v59);
  v60 = v74;
  SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
  sub_1000AE0F0(&unk_100972E60, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v61 = v76;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v63 = v62;
  (*(v75 + 8))(v60, v61);
  return v63;
}

double sub_1000AB734(void *a1, double a2, double a3)
{
  v116 = a1;
  v6 = type metadata accessor for SmallSearchLockupLayout();
  v105 = *(v6 - 8);
  v106 = v6;
  __chkstk_darwin(v6);
  v104 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v89 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LabelPlaceholderCompatibility();
  v98 = *(v11 - 8);
  v99 = v11;
  __chkstk_darwin(v11);
  v97 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OfferButtonMetrics();
  v113 = *(v13 - 8);
  v114 = v13;
  __chkstk_darwin(v13);
  v109 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v111 = &v86 - v16;
  v17 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v110 = *(v17 - 8);
  __chkstk_darwin(v17);
  v103 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v86 - v20;
  v22 = sub_10002849C(&unk_1009912C0, &unk_1007B4130);
  __chkstk_darwin(v22 - 8);
  v87 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v86 - v25;
  v27 = *&v3[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView];
  v28 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v29 = *(v27 + v28);
  v30 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v9 + 16))(v26, v27 + v30, v8);
  v90 = v9;
  v91 = v8;
  v31 = *(v9 + 56);
  v107 = v26;
  v31(v26, 0, 1, v8);
  v32 = *&v3[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchTagsRibbonView];
  v33 = *(v32 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemModels);
  v88 = *(v32 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_shouldEvenlyDistribute);
  v108 = v33;

  v115 = v29;

  [v3 layoutMargins];
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v34 = sub_1000056A8(v17, qword_1009CDC00);
  v100 = *(v110 + 16);
  v101 = v110 + 16;
  v100(v21, v34, v17);
  v35 = v116;
  v36 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v112 = v17;
  if (v36)
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v37 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v37 = qword_100991028;
  }

  v38 = v114;
  v39 = sub_1000056A8(v114, v37);
  v40 = v113;
  v41 = v109;
  (*(v113 + 16))(v109, v39, v38);
  (*(v40 + 32))(v111, v41, v38);
  v42 = [v35 preferredContentSizeCategory];
  UIContentSizeCategory.isAccessibilityCategory.getter();

  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
  v109 = v21;
  SmallSearchLockupLayout.Metrics.artworkSize.getter();
  v96 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v102 = LayoutViewPlaceholder.init(representing:)();
  v43 = objc_opt_self();
  v94 = v43;
  v44 = [v43 preferredFontForTextStyle:UIFontTextStyleBody];
  v45 = type metadata accessor for Feature();
  v153[3] = v45;
  v46 = sub_1000AE0F0(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v153[4] = v46;
  v47 = sub_1000056E0(v153);
  v48 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v49 = *(v45 - 8);
  v95 = *(v49 + 104);
  v50 = v49 + 104;
  v92 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v95(v47, enum case for Feature.measurement_with_labelplaceholder(_:), v45);
  v93 = v50;
  isFeatureEnabled(_:)();
  sub_100007000(v153);
  v51 = v97;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v52 = v99;
  v98 = *(v98 + 8);
  (v98)(v51, v99);
  v53 = [v43 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v152[3] = v45;
  v152[4] = v46;
  v54 = sub_1000056E0(v152);
  v55 = v48;
  v56 = v95;
  v95(v54, v55, v45);
  isFeatureEnabled(_:)();
  sub_100007000(v152);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v57 = v98;
  (v98)(v51, v52);
  v58 = [v94 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v151[3] = v45;
  v151[4] = v46;
  v59 = sub_1000056E0(v151);
  v56(v59, v92, v45);
  isFeatureEnabled(_:)();
  sub_100007000(v151);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v57(v51, v52);
  v60 = v115;
  LODWORD(v99) = sub_1000A9224(0, v115) & (v60 != 0);
  if (v99 == 1)
  {
    v61 = v96;
    v62 = objc_allocWithZone(type metadata accessor for TraitEnvironmentPlaceholder());
    v63 = v116;
    v64 = TraitEnvironmentPlaceholder.init(traitCollection:)();
    v65 = v87;
    sub_100031660(v107, v87, &unk_1009912C0, &unk_1007B4130);
    v67 = v90;
    v66 = v91;
    v68 = *(v90 + 48);
    if (v68(v65, 1, v91) == 1)
    {
      v69 = v89;
      static MetadataRibbonViewLayout.Metrics.standard.getter();
      if (v68(v65, 1, v66) != 1)
      {
        sub_10002B894(v65, &unk_1009912C0, &unk_1007B4130);
      }
    }

    else
    {
      v69 = v89;
      (*(v67 + 32))(v89, v65, v66);
    }

    v71 = v64;
    sub_1000AD91C(v115, v69, v71, a2, a3);

    (*(v67 + 8))(v69, v66);
    swift_allocObject();
    v70 = LayoutViewPlaceholder.init(measurements:)();
  }

  else
  {
    v61 = v96;
    swift_allocObject();
    v70 = LayoutViewPlaceholder.init(representing:)();
  }

  v72 = v70;

  v73 = v108;
  if ((sub_1000A9224(v108, 0) & (v73 != 0)) == 1)
  {
    sub_100046528(v73, v88, a2, a3);
    swift_allocObject();
    v74 = LayoutViewPlaceholder.init(measurements:)();
  }

  else
  {
    swift_allocObject();
    v74 = LayoutViewPlaceholder.init(representing:)();
  }

  v75 = v74;
  v100(v103, v109, v112);
  v150 = &protocol witness table for LayoutViewPlaceholder;
  v149 = v61;
  v148 = v102;
  v147 = 0;
  *&v145[40] = 0u;
  v146 = 0u;
  sub_10002C0AC(v153, v145);
  sub_10002C0AC(v152, &v144);
  v143 = 0;
  v141 = 0u;
  v142 = 0u;
  v140 = 0;
  v138 = 0u;
  v139 = 0u;

  v76 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
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
  sub_10002C0AC(v151, v123);
  v121 = v61;
  v122 = &protocol witness table for LayoutViewPlaceholder;
  v119 = &protocol witness table for LayoutViewPlaceholder;
  v120 = v72;
  v118 = v61;
  v117 = v75;
  v77 = v104;
  SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1007B0B70;
  v79 = v116;
  *(v78 + 32) = v116;
  v80 = v79;
  v81 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_1000AE0F0(&unk_100972E60, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v82 = v106;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v84 = v83;

  (*(v105 + 8))(v77, v82);
  sub_100007000(v151);
  sub_100007000(v152);
  sub_100007000(v153);
  (*(v113 + 8))(v111, v114);
  (*(v110 + 8))(v109, v112);
  sub_10002B894(v107, &unk_1009912C0, &unk_1007B4130);
  return v84;
}

uint64_t sub_1000AC528(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for LayoutRect();
  v82 = *(v5 - 8);
  v83 = v5;
  __chkstk_darwin(v5);
  v80 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SmallSearchLockupLayout();
  v78 = *(v11 - 8);
  v79 = v11;
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v77 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134.receiver = v3;
  v134.super_class = ObjectType;
  v81 = ObjectType;
  objc_msgSendSuper2(&v134, "layoutSubviews", v12);
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v7, qword_1009CDC00);
  (*(v8 + 16))(v10, v14, v7);
  v15 = *&v3[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton];
  type metadata accessor for BaseLockupView();
  LayoutMarginsAware<>.layoutFrame.getter();
  v16 = &v15[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
  if (v15[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v17 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
    swift_beginAccess();
    sub_10002C0AC(&v15[v17], v131);
    sub_10002A400(v131, v132);
    dispatch thunk of OfferButtonConfiguration.size(in:)();
    v19 = v18;
    v21 = v20;
    sub_100007000(v131);
    *v16 = v19;
    *(v16 + 1) = v21;
    v16[16] = 0;
  }

  SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
  v22 = *&v3[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
  v23 = type metadata accessor for ArtworkView();
  v133 = &protocol witness table for UIView;
  v132 = v23;
  v75 = v22;
  v131[0] = v22;
  v24 = *&v3[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
  v74 = v24;
  if (v24)
  {
    v25 = type metadata accessor for DynamicTypeLabel();
    v26 = &protocol witness table for UILabel;
    v27 = v24;
  }

  else
  {
    v27 = 0;
    v25 = 0;
    v26 = 0;
    v127 = 0;
    v128 = 0;
  }

  v126 = v27;
  v129 = v25;
  v130 = v26;
  v28 = *&v3[OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel];
  v29 = type metadata accessor for DynamicTypeLabel();
  v30 = v29;
  v125 = &protocol witness table for UILabel;
  v124 = v29;
  v123 = v28;
  v31 = *&v3[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
  v122 = &protocol witness table for UILabel;
  v121 = v29;
  v71 = v31;
  v72 = v28;
  v120 = v31;
  v32 = *&v3[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
  if (v32)
  {
    v33 = &protocol witness table for UILabel;
    v34 = *&v3[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
    v35 = v29;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v33 = 0;
    v116 = 0;
    v117 = 0;
  }

  v115 = v34;
  v118 = v35;
  v119 = v33;
  v36 = *&v3[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel];
  v113 = v29;
  v114 = &protocol witness table for UILabel;
  v70 = v36;
  v112 = v36;
  v110 = type metadata accessor for OfferButton();
  v111 = &protocol witness table for UIView;
  v109 = v15;
  v37 = *&v3[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView];
  v107 = type metadata accessor for RatingView();
  v108 = &protocol witness table for UIView;
  v105 = &protocol witness table for UILabel;
  v106 = v37;
  v38 = *&v3[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel];
  v104 = v30;
  v68 = v38;
  v69 = v37;
  v103 = v38;
  v39 = *&v3[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_editorsChoiceView];
  if (v39)
  {
    v40 = type metadata accessor for EditorsChoiceView();
    v41 = &protocol witness table for UIView;
    v42 = v39;
  }

  else
  {
    v42 = 0;
    v40 = 0;
    v41 = 0;
    v99 = 0;
    v100 = 0;
  }

  v98 = v42;
  v101 = v40;
  v102 = v41;
  v43 = *&v3[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton];
  v76 = v10;
  v73 = v15;
  v44 = 0;
  if (v43)
  {
    v44 = type metadata accessor for SearchAdTransparencyButton(0);
    v45 = &protocol witness table for UIView;
  }

  else
  {
    v45 = 0;
    v94 = 0;
    v95 = 0;
  }

  v92 = &protocol witness table for UILabel;
  v93 = v43;
  v96 = v44;
  v97 = v45;
  v46 = *&v3[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_descriptionLabel];
  v91 = v30;
  v90 = v46;
  v47 = *&v3[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView];
  v88 = type metadata accessor for MetadataRibbonView(0);
  v89 = &protocol witness table for UIView;
  v87 = v47;
  v48 = *&v3[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchTagsRibbonView];
  v85 = type metadata accessor for SearchTagsRibbonView(0);
  v86 = &protocol witness table for UIView;
  v84 = v48;
  v49 = v39;
  v50 = v43;
  v51 = v46;
  v52 = v47;
  v53 = v48;
  v54 = v75;
  v55 = v74;
  v56 = v72;
  v57 = v71;
  v58 = v32;
  v59 = v70;
  v60 = v73;
  v61 = v69;
  v62 = v68;
  v63 = MetadataRibbonView.hasContent.getter();
  sub_100045A48(v63, v64);
  v65 = v77;
  SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v66 = v80;
  SmallSearchLockupLayout.placeChildren(relativeTo:in:)();
  (*(v82 + 8))(v66, v83);
  return (*(v78 + 8))(v65, v79);
}

id sub_1000ACBE4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = *&v4[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton];
  if (v9)
  {
    v10 = v9;
    [v4 convertPoint:v10 toCoordinateSpace:{a3, a4}];
    v11 = [v10 pointInside:a1 withEvent:?];
    result = v9;
    if (v11)
    {
      return result;
    }
  }

  v13.receiver = v4;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "hitTest:withEvent:", a1, a3, a4);
}

id sub_1000ACD38(void *a1, uint64_t a2)
{
  v9.receiver = v2;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v4 = [v2 traitCollection];
  v5 = [v4 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v5 != result))
  {
    if (qword_10096CF78 != -1)
    {
      swift_once();
    }

    v7 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
    sub_1000056A8(v7, qword_100972DE0);
    v8 = v2;
    Conditional.evaluate(with:)();

    return UILabel.alignment.setter();
  }

  return result;
}

unint64_t sub_1000ACF48()
{
  v1 = v0;
  v2 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20.value.super.isa = 0;
  v20.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v20, v6);
  v7 = *&v0[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_descriptionLabel];
  v8 = [v7 superview];
  if (!v8 || (v9 = v8, sub_100005744(0, &qword_100972EB0, UIView_ptr), v10 = v0, v11 = static NSObject.== infix(_:_:)(), v9, v10, (v11 & 1) == 0))
  {
    [v1 addSubview:v7];
  }

  [v7 setHidden:1];
  [v7 setText:0];
  [v1 setNeedsLayout];
  v12 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton;
  v13 = *&v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton];
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

  v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includesMetadataInformationInLockup] = 0;
  v15 = *&v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView];
  v16 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  *&v15[v16] = _swiftEmptyArrayStorage;

  sub_1003296A4(_swiftEmptyArrayStorage);
  static MetadataRibbonViewLayout.Metrics.standard.getter();
  v17 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v3 + 24))(&v15[v17], v5, v2);
  swift_endAccess();
  [v15 setNeedsLayout];
  (*(v3 + 8))(v5, v2);
  *(*&v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchTagsRibbonView] + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemModels) = _swiftEmptyArrayStorage;

  return sub_1000441A4(_swiftEmptyArrayStorage);
}

uint64_t sub_1000AD1F8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_impressionsCalculator;
  swift_beginAccess();
  if (*(v1 + v2))
  {

    ImpressionsCalculator.removeAllElements()();
  }

  *(v1 + v2) = 0;

  v3 = (v1 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_10001F63C(v4, v5);
  type metadata accessor for SearchTagsRibbonView(0);
  sub_1000AE0F0(&qword_1009912D0, type metadata accessor for SearchTagsRibbonView, &unk_1007B1D48);
  return NestedModelImpressionsRecording.stopRecordingNestedImpressions(using:)();
}

uint64_t sub_1000AD300()
{
  v1 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataTextSpace;
  v2 = type metadata accessor for StaticDimension();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_impressionsUpdateBlock);
  v4 = *(v0 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_impressionsUpdateBlock + 8);

  return sub_10001F63C(v3, v4);
}

uint64_t type metadata accessor for SmallSearchLockupView(uint64_t a1)
{
  result = qword_100972E38;
  if (!qword_100972E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AD550(uint64_t a1)
{
  result = type metadata accessor for StaticDimension();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_1000AD670()
{
  swift_beginAccess();

  return result;
}

double sub_1000AD6B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1000AD770()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1, v1[1]);
  return v2;
}

uint64_t sub_1000AD7CC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6, v7);
}

uint64_t sub_1000AD88C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchTagsRibbonView(0);
  sub_1000AE0F0(&qword_1009912D0, type metadata accessor for SearchTagsRibbonView, &unk_1007B1D48);
  return NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)();
}

uint64_t sub_1000AD91C(unint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v62 = type metadata accessor for MetadataRibbonItemViewType();
  v8 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MetadataRibbonViewLayout();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v53 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetadataRibbonItem();
  result = Array.isNotEmpty.getter();
  if (result)
  {
    v46 = v13;
    v47 = v11;
    if (a1 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v18 = result;
    }

    else
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v51 = a2;
    v52 = a3;
    v49 = v10;
    v50 = v14;
    v48 = v15;
    if (v18)
    {
      if (v18 >= 1)
      {
        v19 = 0;
        v60 = a1 & 0xC000000000000001;
        v59 = (v8 + 88);
        v58 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
        v55 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
        v56 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
        v54 = enum case for MetadataRibbonItemViewType.starRating(_:);
        v45 = enum case for MetadataRibbonItemViewType.textLabel(_:);
        v44 = enum case for MetadataRibbonItemViewType.divider(_:);
        v42 = (v8 + 8);
        v43 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
        v20 = _swiftEmptyArrayStorage;
        v57 = a1;
        while (1)
        {
          if (v60)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v21 = *(a1 + 8 * v19 + 32);
          }

          v22 = v61;
          MetadataRibbonItem.viewContainerType.getter();
          v23 = (*v59)(v22, v62);
          if (v23 == v58)
          {
            break;
          }

          if (v23 == v56)
          {
            v24 = type metadata accessor for MetadataRibbonEditorsChoiceView(0);
            v25 = type metadata accessor for MetadataRibbonEditorsChoiceView;
            v26 = &unk_1007C1128;
            v27 = &unk_100972E90;
            goto LABEL_24;
          }

          if (v23 == v55)
          {
            v24 = type metadata accessor for MetadataRibbonIconWithLabelView(0);
            v25 = type metadata accessor for MetadataRibbonIconWithLabelView;
            v26 = &unk_1007B7A08;
            v27 = &unk_100970648;
            goto LABEL_24;
          }

          if (v23 == v54)
          {
            v24 = type metadata accessor for MetadataRibbonStarRatingView(0);
            v25 = type metadata accessor for MetadataRibbonStarRatingView;
            v26 = &unk_1007D8798;
            v27 = &unk_100972EA0;
            goto LABEL_24;
          }

          if (v23 == v45)
          {
            v24 = type metadata accessor for MetadataRibbonTagView(0);
            v25 = type metadata accessor for MetadataRibbonTagView;
            v26 = &unk_1007BFD50;
            v27 = &unk_100970640;
            goto LABEL_24;
          }

          if (v23 == v44)
          {
            v24 = type metadata accessor for MetadataRibbonBarView(0);
            v25 = type metadata accessor for MetadataRibbonBarView;
            v26 = &unk_1007CB2D0;
            v27 = &unk_100972E80;
            goto LABEL_24;
          }

          if (v23 == v43)
          {
            v24 = type metadata accessor for MetadataRibbonHighlightedTextView(0);
            v25 = type metadata accessor for MetadataRibbonHighlightedTextView;
            v26 = &unk_1007BFA80;
            v27 = &unk_100970638;
            goto LABEL_24;
          }

          (*v42)(v61, v62);
LABEL_29:
          if (v18 == ++v19)
          {
            goto LABEL_33;
          }
        }

        v24 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView(0);
        v25 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView;
        v26 = &unk_1007B0FD8;
        v27 = &unk_100970650;
LABEL_24:
        v28 = sub_1000AE0F0(v27, v25, v26);
        v29 = swift_allocObject();
        v29[2] = v24;
        v29[3] = v28;
        v29[4] = v21;
        v30 = type metadata accessor for LayoutViewPlaceholder();
        swift_allocObject();

        v31 = LayoutViewPlaceholder.init(measureWith:)();
        MetadataRibbonItem.id.getter();
        v74 = v30;
        v75 = &protocol witness table for LayoutViewPlaceholder;
        v73 = v31;
        v76 = dispatch thunk of static MetadataRibbonItemView.isBaselineAligned.getter() & 1;
        v77 = dispatch thunk of static MetadataRibbonItemView.shouldForceIntrinsicSizeDuringLayout.getter() & 1;
        sub_100031660(v72, v67, &unk_100972E70, &unk_1007B4140);
        v32 = v70;
        LOBYTE(v28) = v71;
        v63 = v67[0];
        v64 = v67[1];
        *&v65[0] = v68;
        sub_100005A38(&v69, v65 + 8);
        LOBYTE(v66) = v32;
        HIBYTE(v66) = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100033284(0, v20[2] + 1, 1, v20);
        }

        a1 = v57;
        v34 = v20[2];
        v33 = v20[3];
        if (v34 >= v33 >> 1)
        {
          v20 = sub_100033284((v33 > 1), v34 + 1, 1, v20);
        }

        v20[2] = v34 + 1;
        v35 = &v20[11 * v34];
        v36 = v64;
        *(v35 + 2) = v63;
        *(v35 + 3) = v36;
        v37 = v65[0];
        v38 = v65[1];
        v39 = v65[2];
        *(v35 + 56) = v66;
        *(v35 + 5) = v38;
        *(v35 + 6) = v39;
        *(v35 + 4) = v37;
        sub_10002B894(v72, &unk_100972E70, &unk_1007B4140);
        goto LABEL_29;
      }

      __break(1u);
    }

    else
    {
LABEL_33:
      (*(v47 + 16))(v46, v51, v49);
      v40 = v53;
      MetadataRibbonViewLayout.init(metadataRibbonItemLayoutContexts:metrics:)();
      MetadataRibbonViewLayout.measurements(fitting:in:)();
      return (*(v48 + 8))(v40, v50);
    }
  }

  return result;
}

uint64_t sub_1000AE0F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ButtonPlaceholder.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC8AppStore17ButtonPlaceholder____lazy_storage___button) = 0;
  v3 = OBJC_IVAR____TtC8AppStore17ButtonPlaceholder_configuration;
  v4 = type metadata accessor for UIButton.Configuration();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t ButtonPlaceholder.init(configuration:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8AppStore17ButtonPlaceholder____lazy_storage___button) = 0;
  v3 = OBJC_IVAR____TtC8AppStore17ButtonPlaceholder_configuration;
  v4 = type metadata accessor for UIButton.Configuration();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t ButtonPlaceholder.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore17ButtonPlaceholder_configuration;
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_1000AE2C0()
{
  v1 = type metadata accessor for UIButton.Configuration();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC8AppStore17ButtonPlaceholder____lazy_storage___button;
  v6 = *(v0 + OBJC_IVAR____TtC8AppStore17ButtonPlaceholder____lazy_storage___button);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC8AppStore17ButtonPlaceholder____lazy_storage___button);
  }

  else
  {
    sub_1000AE6D8();
    (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC8AppStore17ButtonPlaceholder_configuration, v1);
    v8 = v0;
    v9 = UIButton.init(configuration:primaryAction:)();
    v10 = *(v0 + v5);
    *(v8 + v5) = v9;
    v7 = v9;

    v6 = 0;
  }

  v11 = v6;
  return v7;
}

double ButtonPlaceholder.measure(toFit:with:)(uint64_t a1, double a2, double a3)
{
  v3 = sub_1000AE2C0();
  UIButton.measure(toFit:with:)();
  v5 = v4;

  return v5;
}

uint64_t ButtonPlaceholder.deinit()
{
  v1 = OBJC_IVAR____TtC8AppStore17ButtonPlaceholder_configuration;
  v2 = type metadata accessor for UIButton.Configuration();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ButtonPlaceholder.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8AppStore17ButtonPlaceholder_configuration;
  v2 = type metadata accessor for UIButton.Configuration();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_1000AE574(uint64_t a1, double a2, double a3)
{
  v3 = sub_1000AE2C0();
  UIButton.measure(toFit:with:)();
  v5 = v4;

  return v5;
}

uint64_t type metadata accessor for ButtonPlaceholder(uint64_t a1)
{
  result = qword_100972F08;
  if (!qword_100972F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AE640(uint64_t a1)
{
  result = type metadata accessor for UIButton.Configuration();
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

unint64_t sub_1000AE6D8()
{
  result = qword_1009811E0;
  if (!qword_1009811E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009811E0);
  }

  return result;
}

BOOL sub_1000AE724(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for FontUseCase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ProductAnnotationLayout.Metrics();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&unk_10097B3D0, "α\b");
  __chkstk_darwin(v17);
  v21 = &v70 - v20;
  if (*&v2[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_explicitSummary + 8])
  {
    return 1;
  }

  v73 = v12;
  v74 = v10;
  v76 = v6;
  v77 = v16;
  v75 = v14;
  v22 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailItems;
  v23 = *&v2[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailItems];
  if (v23 >> 62)
  {
    v71 = v18;
    v63 = v19;
    v64 = v21;
    v65 = _CocoaArrayWrapper.endIndex.getter();
    v21 = v64;
    v19 = v63;
    v24 = v65;
    v18 = v71;
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v5;
  if (v24 != 1)
  {
    return 1;
  }

  v26 = v13;
  v27 = *&v2[v22];
  if (v27 >> 62)
  {
    v71 = v18;
    v66 = v19;
    v67 = v21;
    v68 = _CocoaArrayWrapper.endIndex.getter();
    v21 = v67;
    v19 = v66;
    v69 = v68;
    v18 = v71;
    v28 = v8;
    if (!v69)
    {
      return 1;
    }
  }

  else
  {
    v28 = v8;
    if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 1;
    }
  }

  v71 = v18;
  v72 = v2;
  if ((v27 & 0xC000000000000001) != 0)
  {
    v29 = v21;
    v30 = v19;

    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_34:
      swift_once();
      goto LABEL_17;
    }

    v29 = v21;
    v30 = v19;
  }

  v31 = AnnotationItem.textPairs.getter();
  if (v31 >> 62)
  {
    v32 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v72;

  if (v32)
  {

    return 1;
  }

  v35 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkAction;
  swift_beginAccess();
  if (!(*(v30 + 48))(&v33[v35], 1, v71))
  {
    v51 = &v33[v35];
    v52 = v71;
    (*(v30 + 16))(v29, v51, v71);
    ObjectGraphPair.value.getter();
    (*(v30 + 8))(v29, v52);
    Action.title.getter();
    v33 = v72;
    v54 = v53;

    if (v54)
    {

      return 1;
    }
  }

  v36 = *&v33[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleLabel];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v36 sizeThatFits:{v37, v38}];
  v3 = v39;
  v4 = v40;
  if (qword_10096CF98 != -1)
  {
    goto LABEL_34;
  }

LABEL_17:
  v41 = sub_10002849C(&unk_1009730C0, &unk_1007B4250);
  sub_1000056A8(v41, qword_1009CDCD0);
  v79[0] = v72;
  v42 = v72;
  Conditional.evaluate(with:)();

  if (static ProductAnnotationLayout.isSummaryPlacedBelow(in:)())
  {
    LayoutMarginsAware<>.layoutFrame.getter();
    Width = CGRectGetWidth(v82);
    LayoutMarginsAware<>.layoutFrame.getter();
    Height = CGRectGetHeight(v83) - v4;
  }

  else
  {
    ProductAnnotationLayout.Metrics.horizontalSpacing.getter();
    sub_10002A400(v79, v80);
    v45 = v73;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v47 = v46;
    (*(v74 + 8))(v45, v9);
    sub_100007000(v79);
    LayoutMarginsAware<>.layoutFrame.getter();
    Width = CGRectGetWidth(v84) - (v3 + v47);
    LayoutMarginsAware<>.layoutFrame.getter();
    Height = CGRectGetHeight(v85);
  }

  v48 = *&v42[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_summaryLabel];
  v49 = [v48 text];
  if (v49)
  {
    v50 = v49;
    ObjectType = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    ObjectType = 0;
  }

  if (qword_10096CF90 != -1)
  {
    swift_once();
  }

  v55 = sub_10002849C(&unk_100970ED0, &unk_1007B2390);
  sub_1000056A8(v55, qword_100972FC0);
  v79[0] = v42;
  v56 = v42;
  Conditional.evaluate(with:)();

  [v48 numberOfLines];
  v57 = type metadata accessor for Feature();
  v80 = v57;
  v81 = sub_1000B3688(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v58 = sub_1000056E0(v79);
  (*(*(v57 - 8) + 104))(v58, enum case for Feature.measurement_with_labelplaceholder(_:), v57);
  isFeatureEnabled(_:)();
  sub_100007000(v79);
  static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  v60 = v59;

  (*(v76 + 8))(v28, v25);
  [v48 sizeThatFits:{Width, Height}];
  v62 = v61;

  (*(v75 + 8))(v77, v26);
  return floor(v62 - v60) > 0.0;
}

uint64_t sub_1000AEF84()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ProductAnnotationLayout.Metrics();
  sub_100005644(v4, qword_1009CDCA0);
  v30 = sub_1000056A8(v4, qword_1009CDCA0);
  if (qword_10096CFB8 != -1)
  {
    swift_once();
  }

  v5 = qword_100973020;
  [v5 size];

  v6 = qword_100973020;
  [v6 contentInsets];

  v52[8] = &type metadata for Double;
  v52[9] = &protocol witness table for Double;
  v52[5] = 0x401C000000000000;
  if (qword_10096DEE8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for FontUseCase();
  v8 = sub_1000056A8(v7, qword_1009D0C38);
  v9 = *(v7 - 8);
  v32 = *(v9 + 16);
  v10 = v9 + 16;
  v11 = v8;
  v34 = v7;
  v32(v3);
  v31 = enum case for FontSource.useCase(_:);
  v37 = v1[13];
  v38 = v1 + 13;
  v37(v3);
  v36 = type metadata accessor for StaticDimension();
  v52[3] = v36;
  v52[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v52);
  v50 = v0;
  v51 = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v49);
  v35 = v1[2];
  v35(v12, v3, v0);
  v29 = v1 + 2;
  StaticDimension.init(_:scaledLike:)();
  v33 = v1[1];
  v33(v3, v0);
  v27 = v10;
  v28 = v1 + 1;
  v26 = v11;
  v13 = v7;
  v14 = v32;
  (v32)(v3, v11, v13);
  v15 = v31;
  (v37)(v3, v31, v0);
  v50 = v36;
  v51 = &protocol witness table for StaticDimension;
  sub_1000056E0(v49);
  v47 = v0;
  v48 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(v46);
  v35(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v33(v3, v0);
  v48 = &protocol witness table for Double;
  v47 = &type metadata for Double;
  v46[0] = 0x4030000000000000;
  v14(v3, v11, v34);
  v17 = v15;
  v18 = v37;
  (v37)(v3, v17, v0);
  v19 = v36;
  v45[3] = v36;
  v45[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v45);
  v43 = v0;
  v44 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v42);
  v21 = v35;
  v35(v20, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v22 = v33;
  v33(v3, v0);
  (v32)(v3, v26, v34);
  (v18)(v3, v31, v0);
  v43 = v19;
  v44 = &protocol witness table for StaticDimension;
  sub_1000056E0(v42);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v23 = sub_1000056E0(v39);
  v21(v23, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v22(v3, v0);
  v41 = &protocol witness table for Double;
  v40 = &type metadata for Double;
  v39[0] = 0x4034000000000000;
  return ProductAnnotationLayout.Metrics.init(disclosureSize:disclosureContentInsets:disclosureMargin:titleSpace:detailSpace:detailMargin:linkSpace:bottomSpace:horizontalSpacing:shouldDisclosureAlignWithContent:)();
}

uint64_t sub_1000AF508()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ProductAnnotationLayout.Metrics();
  sub_100005644(v4, qword_1009CDCB8);
  v24[2] = sub_1000056A8(v4, qword_1009CDCB8);
  if (qword_10096CFB8 != -1)
  {
    swift_once();
  }

  v5 = qword_100973020;
  [v5 size];

  v6 = qword_100973020;
  [v6 contentInsets];

  v45[8] = &type metadata for Double;
  v45[9] = &protocol witness table for Double;
  v45[5] = 0x401C000000000000;
  if (qword_10096DEE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for FontUseCase();
  v8 = sub_1000056A8(v7, qword_1009D0C20);
  v9 = *(v7 - 8);
  v10 = *(v9 + 16);
  v29 = v8;
  v31 = v10;
  v11 = v9 + 16;
  (v10)(v3);
  v12 = v1[13];
  v27 = enum case for FontSource.useCase(_:);
  v28 = v1 + 13;
  v13 = v12;
  (v12)(v3);
  v26 = type metadata accessor for StaticDimension();
  v45[3] = v26;
  v45[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v45);
  v43 = v0;
  v44 = &protocol witness table for FontSource;
  v14 = sub_1000056E0(v42);
  v30 = v1[2];
  v30(v14, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v25 = v1[1];
  v25(v3, v0);
  if (qword_10096DEE8 != -1)
  {
    swift_once();
  }

  v15 = sub_1000056A8(v7, qword_1009D0C38);
  v31(v3, v15, v7);
  v24[0] = v7;
  v24[1] = v11;
  v13(v3, v27, v0);
  v43 = v26;
  v44 = &protocol witness table for StaticDimension;
  sub_1000056E0(v42);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(v39);
  v30(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v25(v3, v0);
  v41 = &protocol witness table for Double;
  v40 = &type metadata for Double;
  v39[0] = 0x4030000000000000;
  v31(v3, v29, v7);
  v17 = v27;
  v18 = v13;
  v13(v3, v27, v0);
  v19 = v26;
  v38[3] = v26;
  v38[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v38);
  v36 = v0;
  v37 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v35);
  v30(v20, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v21 = v25;
  v25(v3, v0);
  v31(v3, v29, v24[0]);
  v18(v3, v17, v0);
  v36 = v19;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(v35);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(v32);
  v30(v22, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v21(v3, v0);
  v34 = &protocol witness table for Double;
  v33 = &type metadata for Double;
  v32[0] = 0x4034000000000000;
  return ProductAnnotationLayout.Metrics.init(disclosureSize:disclosureContentInsets:disclosureMargin:titleSpace:detailSpace:detailMargin:linkSpace:bottomSpace:horizontalSpacing:shouldDisclosureAlignWithContent:)();
}

uint64_t sub_1000AFABC()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10002849C(&unk_100970ED0, &unk_1007B2390);
  sub_100005644(v7, qword_100972FC0);
  sub_1000056A8(v7, qword_100972FC0);
  if (qword_10096DEE8 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v0, qword_1009D0C38);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_10096DEE0 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v0, qword_1009D0C20);
  v9(v3, v10, v0);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  return Conditional<>.init(regularValue:compactValue:)();
}

uint64_t sub_1000AFC9C()
{
  v0 = type metadata accessor for ProductAnnotationLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10002849C(&unk_1009730C0, &unk_1007B4250);
  sub_100005644(v7, qword_1009CDCD0);
  sub_1000056A8(v7, qword_1009CDCD0);
  if (qword_10096CF80 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v0, qword_1009CDCA0);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_10096CF88 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v0, qword_1009CDCB8);
  v9(v3, v10, v0);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  return Conditional<>.init(regularValue:compactValue:)();
}

uint64_t sub_1000AFE88()
{
  v0 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_100005644(v0, qword_100972FF0);
  sub_1000056A8(v0, qword_100972FF0);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for NSTextAlignment(0);
  return Conditional.init(_:)();
}

uint64_t sub_1000AFF24@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = UITraitCollection.prefersRightToLeftLayouts.getter();

  result = static ProductAnnotationLayout.isSummaryPlacedBelow(in:)();
  v6 = 2;
  if ((v4 ^ result))
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1000AFFA0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_100005644(v3, a2);
  sub_1000056A8(v3, a2);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

uint64_t sub_1000B0038()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronDown(_:), v0, v2);
  v5 = static SystemImage.load(_:with:)();
  result = (*(v1 + 8))(v4, v0);
  qword_100973020 = v5;
  return result;
}

char *sub_1000B0130(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v12 = sub_10002849C(&qword_1009730A0, &qword_1007B4218);
  __chkstk_darwin(v12);
  v13 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_itemLayoutContext;
  v14 = type metadata accessor for ItemLayoutContext();
  (*(*(v14 - 8) + 56))(&v6[v13], 1, 1, v14);
  *&v6[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkLabel] = 0;
  _s8ItemViewCMa();
  ViewRecycler.init()();
  sub_100097060(&qword_1009730A8, &qword_1009730A0, &qword_1007B4218, &protocol conformance descriptor for ViewRecycler<A>);
  ReusePool.init(recycler:limit:)();
  *&v6[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailViews] = _swiftEmptyArrayStorage;
  *&v6[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_separatorLineView] = 0;
  v6[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_isSeparatorDisplayed] = 0;
  v6[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_isExpanded] = 0;
  v15 = &v6[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleText];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v6[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_explicitSummary];
  *v16 = 0;
  v16[1] = 0;
  *&v6[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailItems] = _swiftEmptyArrayStorage;
  v17 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkAction;
  v18 = sub_10002849C(&unk_10097B3D0, "α\b");
  (*(*(v18 - 8) + 56))(&v6[v17], 1, 1, v18);
  if (qword_10096CFB8 != -1)
  {
    swift_once();
  }

  v19 = [objc_allocWithZone(UIImageView) initWithImage:qword_100973020];
  *&v6[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_disclosureView] = v19;
  type metadata accessor for DynamicTypeLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v6[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleLabel] = v21;
  v22 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v6[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_summaryLabel] = v22;
  v46.receiver = v6;
  v46.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v46, "initWithFrame:", a1, a2, a3, a4);
  v24 = [v23 contentView];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v25 = static UIColor.defaultBackground.getter();
  [v24 setBackgroundColor:v25];

  v26 = [v23 contentView];
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v27 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_disclosureView;
  v28 = *&v23[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_disclosureView];
  v29 = static UIColor.secondaryText.getter();
  [v28 setTintColor:v29];

  v30 = [v23 contentView];
  [v30 addSubview:*&v23[v27]];

  v31 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleLabel;
  v32 = *&v23[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleLabel];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  [*&v23[v31] setNumberOfLines:1];
  v33 = *&v23[v31];
  v34 = static UIColor.secondaryText.getter();
  [v33 setTextColor:v34];

  v35 = *&v23[v31];
  v36 = static UIColor.defaultBackground.getter();
  [v35 setBackgroundColor:v36];

  v37 = [v23 contentView];
  [v37 addSubview:*&v23[v31]];

  v38 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_summaryLabel;
  v39 = *&v23[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_summaryLabel];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  [*&v23[v38] setNumberOfLines:1];
  v40 = *&v23[v38];
  v41 = static UIColor.primaryText.getter();
  [v40 setTextColor:v41];

  v42 = *&v23[v38];
  v43 = static UIColor.defaultBackground.getter();
  [v42 setBackgroundColor:v43];

  v44 = [v23 contentView];
  [v44 addSubview:*&v23[v38]];

  sub_1000B06C0();
  return v23;
}

void sub_1000B06C0()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleLabel];
  if (qword_10096CFA0 != -1)
  {
    swift_once();
  }

  v2 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_1000056A8(v2, qword_100972FD8);
  v3 = v0;
  Conditional.evaluate(with:)();

  [v1 setTextAlignment:{v11, v0}];
  v4 = *&v3[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_summaryLabel];
  if (qword_10096CFA8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v2, qword_100972FF0);
  v5 = v3;
  Conditional.evaluate(with:)();

  [v4 setTextAlignment:{v11, v3}];
  v6 = *&v5[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkLabel];
  if (v6)
  {
    v7 = qword_10096CFB0;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v2, qword_100973008);
    v10 = v5;
    v9 = v5;
    Conditional.evaluate(with:)();

    [v8 setTextAlignment:{v11, v10}];
  }
}

void sub_1000B08EC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10002849C(&qword_10097B3F0, &qword_1007B3120);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v19[-v6];
  v20.receiver = v2;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, "prepareForReuse", v5);
  v8 = &v2[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleText];
  *v8 = 0;
  *(v8 + 1) = 0;

  [*&v2[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleLabel] setText:0];
  [v2 setNeedsLayout];
  v9 = &v2[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_explicitSummary];
  *v9 = 0;
  *(v9 + 1) = 0;

  sub_1000B19A4(v10);
  [*&v2[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_disclosureView] setHidden:0];
  *&v2[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailItems] = _swiftEmptyArrayStorage;

  v11 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailViews;
  swift_beginAccess();
  v12 = *&v2[v11];
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_10:
    *&v2[v11] = _swiftEmptyArrayStorage;

    v17 = sub_10002849C(&unk_10097B3D0, "α\b");
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    v18 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkAction;
    swift_beginAccess();
    sub_10003715C(v7, &v2[v18]);
    swift_endAccess();
    sub_1000B1B2C();
    sub_10002B894(v7, &qword_10097B3F0, &qword_1007B3120);
    return;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v13 >= 1)
  {

    for (i = 0; i != v13; ++i)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v12 + 8 * i + 32);
      }

      v16 = v15;
      [v15 removeFromSuperview];
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1000B0BD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v67 = type metadata accessor for Separator.Position();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v68 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Separator();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for LayoutRect();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for ProductAnnotationLayout();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for ProductAnnotationLayout.Metrics();
  v77 = *(v70 - 8);
  __chkstk_darwin(v70);
  v59 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v76 = &v56 - v11;
  v12 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v56 - v13;
  v15 = type metadata accessor for FontUseCase();
  v16 = *(v15 - 8);
  *&v17 = __chkstk_darwin(v15).n128_u64[0];
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85.receiver = v3;
  v85.super_class = ObjectType;
  objc_msgSendSuper2(&v85, "layoutSubviews", v17);
  v20 = [v3 contentView];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  LayoutMarginsAware<>.layoutFrame.getter();

  if (qword_10096CF90 != -1)
  {
    swift_once();
  }

  v21 = sub_10002849C(&unk_100970ED0, &unk_1007B2390);
  sub_1000056A8(v21, qword_100972FC0);
  v82 = v3;
  v22 = v3;
  Conditional.evaluate(with:)();

  v23 = *&v22[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleLabel];
  v24 = *(v16 + 16);
  v24(v14, v19, v15);
  v65 = v16;
  v25 = *(v16 + 56);
  v25(v14, 0, 1, v15);
  v58 = v23;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  v26 = *&v22[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_summaryLabel];
  v24(v14, v19, v15);
  v25(v14, 0, 1, v15);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  v57 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkLabel;
  v27 = *&v22[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkLabel];
  if (v27)
  {
    v24(v14, v19, v15);
    v25(v14, 0, 1, v15);
    v28 = v27;
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  }

  v63 = v15;
  v64 = v19;
  v29 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_isExpanded;
  v30 = [v26 setHidden:v22[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_isExpanded]];
  v32 = *&v22[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_disclosureView];
  if (v22[v29])
  {
    LOBYTE(v33) = 1;
  }

  else
  {
    v33 = !sub_1000AE724(v30, v31);
  }

  v34 = v70;
  v35 = v59;
  [v32 setHidden:v33];
  if (qword_10096CF98 != -1)
  {
    swift_once();
  }

  v36 = sub_10002849C(&unk_1009730C0, &unk_1007B4250);
  sub_1000056A8(v36, qword_1009CDCD0);
  v82 = v22;
  v37 = v76;
  Conditional.evaluate(with:)();
  ProductAnnotationLayout.Metrics.disclosureSize.getter();
  v38 = [v22 traitCollection];
  _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

  CGSize.scaled(_:)();
  ProductAnnotationLayout.Metrics.disclosureSize.setter();
  (*(v77 + 16))(v35, v37, v34);
  v39 = type metadata accessor for DynamicTypeLabel();
  v83 = v39;
  v84 = &protocol witness table for UILabel;
  v40 = v58;
  v81 = &protocol witness table for UILabel;
  v82 = v58;
  v80 = v39;
  v79 = v26;
  swift_beginAccess();
  v41 = v40;
  v42 = v26;

  sub_1002A53E8(v43);

  v44 = *&v22[v57];
  if (v44)
  {
    v45 = &protocol witness table for UIView;
  }

  else
  {
    v39 = 0;
    v45 = 0;
    v78[7] = 0;
    v78[6] = 0;
  }

  v78[5] = v44;
  v78[8] = v39;
  v78[9] = v45;
  v46 = sub_100005744(0, &qword_100973120, UIImageView_ptr);
  v78[4] = &protocol witness table for UIView;
  v78[3] = v46;
  v78[0] = v32;
  v47 = v32;
  v48 = v44;
  v49 = v69;
  ProductAnnotationLayout.init(metrics:titleText:summaryText:detailViews:linkText:disclosureView:isExpanded:)();
  v50 = v60;
  ProductAnnotationLayout.placeChildren(relativeTo:in:)();
  (*(v61 + 8))(v50, v62);
  (*(v66 + 104))(v68, enum case for Separator.Position.bottom(_:), v67);
  v83 = type metadata accessor for ZeroDimension();
  v84 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v82);
  static ZeroDimension.zero.getter();
  v51 = v73;
  Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
  v52 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_separatorLineView;
  swift_beginAccess();
  v53 = *&v22[v52];
  if (v53)
  {
    swift_endAccess();
    v54 = v53;
    Separator.frame(forBoundingRect:in:)();
    [v54 setFrame:?];

    (*(v74 + 8))(v51, v75);
    (*(v71 + 8))(v49, v72);
    (*(v77 + 8))(v76, v34);
    return (*(v65 + 8))(v64, v63);
  }

  else
  {
    (*(v74 + 8))(v51, v75);
    (*(v71 + 8))(v49, v72);
    (*(v77 + 8))(v76, v34);
    (*(v65 + 8))(v64, v63);
    return swift_endAccess();
  }
}

void sub_1000B16F8()
{
  if (v0[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_isExpanded] != 1)
  {
    [*&v0[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_disclosureView] setHidden:0];
LABEL_15:
    [v0 setNeedsLayout];
    return;
  }

  v1 = *&v0[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailItems];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_14:
    [*&v0[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_disclosureView] setHidden:1];
    goto LABEL_15;
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (v2 >= 1)
  {
    v3 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailViews;

    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      swift_beginAccess();
      sub_10002849C(&unk_1009730D0, &qword_1007B4268);
      ReusePool.dequeue(or:)();
      swift_endAccess();
      sub_10015A754(v5);
      v6 = [v0 contentView];
      [v6 addSubview:v8];

      swift_beginAccess();
      v7 = v8;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v0[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v0[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v4;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }

    while (v2 != v4);

    goto LABEL_14;
  }

  __break(1u);
}

id sub_1000B1958@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(_s8ItemViewCMa()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *a1 = result;
  return result;
}

id sub_1000B19A4(double a1)
{
  if (!*&v1[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_explicitSummary + 8])
  {
    v4 = *&v1[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_summaryLabel];
    v5 = *&v1[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailItems];
    if (v5 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
        goto LABEL_5;
      }
    }

    else
    {
      result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_5:
        if ((v5 & 0xC000000000000001) != 0)
        {
          v7 = v1;

          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v7 = v1;
        }

        AnnotationItem.text.getter();
        v9 = v8;

        if (v9)
        {
          v3 = String._bridgeToObjectiveC()();
        }

        else
        {
          v3 = 0;
        }

        v1 = v7;
        goto LABEL_14;
      }
    }

    v3 = 0;
LABEL_14:
    [v4 setText:v3];
    goto LABEL_15;
  }

  v2 = *&v1[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_summaryLabel];

  v3 = String._bridgeToObjectiveC()();

  [v2 setText:v3];
LABEL_15:

  return [v1 setNeedsLayout];
}

void sub_1000B1B2C()
{
  v1 = sub_10002849C(&unk_10097B3D0, "α\b");
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - v3;
  if (v0[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_isExpanded] == 1 && (v5 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkAction, swift_beginAccess(), !(*(v2 + 48))(&v0[v5], 1, v1)) && ((*(v2 + 16))(v4, &v0[v5], v1), v9 = v0, ObjectGraphPair.value.getter(), (*(v2 + 8))(v4, v1), Action.title.getter(), v11 = v10, , v11))
  {
    type metadata accessor for DynamicTypeLabel();
    v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    dispatch thunk of DynamicTypeLabel.axSetLinkStyleText(_:)();

    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v13 = v12;
    v14 = static UIColor.appTint.getter();
    [v13 setTextColor:v14];

    v15 = v13;
    v16 = static UIColor.defaultBackground.getter();
    [v15 setBackgroundColor:v16];

    [v15 setUserInteractionEnabled:1];
    v17 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v9 action:"linkLabelTapped:"];
    [v15 addGestureRecognizer:v17];

    v18 = [v9 contentView];
    [v18 addSubview:v15];

    v19 = *&v9[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkLabel];
    *&v9[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkLabel] = v15;
    v8 = v15;

    [v9 setNeedsLayout];
  }

  else
  {
    v6 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkLabel;
    v7 = *&v0[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkLabel];
    if (v7)
    {
      [v7 removeFromSuperview];
      v8 = *&v0[v6];
    }

    else
    {
      v8 = 0;
    }

    *&v0[v6] = 0;
  }
}

void sub_1000B1E9C(uint64_t a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "traitCollectionDidChange:", a1);
  v4 = [v2 traitCollection];
  v5 = UITraitCollection.prefersRightToLeftLayouts.getter();

  if (!a1 || (UITraitCollection.prefersRightToLeftLayouts.getter() & 1) != (v5 & 1))
  {
    sub_1000B06C0();
  }
}

char *sub_1000B2008()
{
  isUniquelyReferenced_nonNull_native = *(v0 + OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailItems);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_native = v44)
  {
    v48 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v46 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;

    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    v47 = i;
    while (v48)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v5 = __OFADD__(v3, 1);
      v6 = v3 + 1;
      if (v5)
      {
        goto LABEL_41;
      }

LABEL_10:
      sub_10002849C(&unk_100973100, &unk_1007B1480);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007B1E00;
      *(inited + 32) = AnnotationItem.heading.getter();
      *(inited + 40) = v8;
      *(inited + 48) = AnnotationItem.text.getter();
      *(inited + 56) = v9;
      *(inited + 64) = AnnotationItem.listText.getter();
      *(inited + 72) = v10;
      isUniquelyReferenced_nonNull_native = AnnotationItem.textPairs.getter();
      v11 = isUniquelyReferenced_nonNull_native;
      if (isUniquelyReferenced_nonNull_native >> 62)
      {
        isUniquelyReferenced_nonNull_native = _CocoaArrayWrapper.endIndex.getter();
        v12 = isUniquelyReferenced_nonNull_native;
      }

      else
      {
        v12 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v49 = v6;
      v50 = v4;
      if (v12)
      {
        if (v12 < 1)
        {
          goto LABEL_42;
        }

        v13 = 0;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
          }

          v14 = AnnotationItem.TextPair.leadingText.getter();
          v17 = *(inited + 16);
          v16 = *(inited + 24);
          if (v17 >= v16 >> 1)
          {
            v25 = v14;
            v26 = v15;
            v27 = sub_1000344E4((v16 > 1), v17 + 1, 1, inited);
            v15 = v26;
            inited = v27;
            v14 = v25;
          }

          *(inited + 16) = v17 + 1;
          v18 = inited + 16 * v17;
          *(v18 + 32) = v14;
          *(v18 + 40) = v15;
          v19 = AnnotationItem.TextPair.trailingText.getter();
          v21 = v20;
          v23 = *(inited + 16);
          v22 = *(inited + 24);
          if (v23 >= v22 >> 1)
          {
            inited = sub_1000344E4((v22 > 1), v23 + 1, 1, inited);
          }

          ++v13;

          *(inited + 16) = v23 + 1;
          v24 = inited + 16 * v23;
          *(v24 + 32) = v19;
          *(v24 + 40) = v21;
        }

        while (v12 != v13);
      }

      v28 = 0;
      v29 = *(inited + 16);
      v30 = _swiftEmptyArrayStorage;
LABEL_24:
      v31 = 16 * v28 + 40;
      while (v29 != v28)
      {
        if (v28 >= *(inited + 16))
        {
          __break(1u);
          goto LABEL_41;
        }

        ++v28;
        v32 = v31 + 16;
        v33 = *(inited + v31);
        v31 += 16;
        if (v33)
        {
          v34 = *(inited + v32 - 24);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_100033E38(0, *(v30 + 2) + 1, 1, v30);
            v30 = isUniquelyReferenced_nonNull_native;
          }

          v36 = *(v30 + 2);
          v35 = *(v30 + 3);
          if (v36 >= v35 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_100033E38((v35 > 1), v36 + 1, 1, v30);
            v30 = isUniquelyReferenced_nonNull_native;
          }

          *(v30 + 2) = v36 + 1;
          v37 = &v30[16 * v36];
          *(v37 + 4) = v34;
          *(v37 + 5) = v33;
          goto LABEL_24;
        }
      }

      sub_10002849C(&unk_100977380, &qword_1007BB880);
      sub_100097060(&qword_100973110, &unk_100977380, &qword_1007BB880, &protocol conformance descriptor for [A]);
      v38 = BidirectionalCollection<>.joined(separator:)();
      v40 = v39;

      v4 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_100033E38(0, *(v50 + 2) + 1, 1, v50);
      }

      v3 = v49;
      v42 = *(v4 + 2);
      v41 = *(v4 + 3);
      if (v42 >= v41 >> 1)
      {
        v4 = sub_100033E38((v41 > 1), v42 + 1, 1, v4);
      }

      *(v4 + 2) = v42 + 1;
      v43 = &v4[16 * v42];
      *(v43 + 4) = v38;
      *(v43 + 5) = v40;
      if (v49 == v47)
      {

        return v4;
      }
    }

    if (v3 >= *(v46 + 16))
    {
      goto LABEL_43;
    }

    v5 = __OFADD__(v3, 1);
    v6 = v3 + 1;
    if (!v5)
    {
      goto LABEL_10;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v44 = isUniquelyReferenced_nonNull_native;
    i = _CocoaArrayWrapper.endIndex.getter();
  }

  return _swiftEmptyArrayStorage;
}

uint64_t type metadata accessor for AnnotationCollectionViewCell(uint64_t a1)
{
  result = qword_100973080;
  if (!qword_100973080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B26F0(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    sub_1000B2838(319);
    if (v2 <= 0x3F)
    {
      sub_1000798B8(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000B2838(uint64_t a1)
{
  if (!qword_100973098)
  {
    sub_10002D1A8(&qword_1009730A0, &qword_1007B4218);
    sub_100097060(&qword_1009730A8, &qword_1009730A0, &qword_1007B4218, &protocol conformance descriptor for ViewRecycler<A>);
    v1 = type metadata accessor for ReusePool();
    if (!v2)
    {
      atomic_store(v1, &qword_100973098);
    }
  }
}

void *sub_1000B28DC(char *a1, int a2, void *a3, double a4, double a5)
{
  v78 = a2;
  v7 = type metadata accessor for ProductAnnotationLayout();
  v82 = *(v7 - 8);
  v83 = v7;
  __chkstk_darwin(v7);
  v79 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ProductAnnotationLayout.Metrics();
  v88 = *(v80 - 8);
  __chkstk_darwin(v80);
  v86 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v87 = &v70 - v11;
  v85 = type metadata accessor for LabelPlaceholderCompatibility();
  v89 = *(v85 - 8);
  __chkstk_darwin(v85);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FontUseCase();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096CF90 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v18 = sub_10002849C(&unk_100970ED0, &unk_1007B2390);
    sub_1000056A8(v18, qword_100972FC0);
    v108[0] = a3;
    Conditional.evaluate(with:)();
    v81 = a3;
    v19 = [a3 traitCollection];
    v20 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

    (*(v15 + 8))(v17, v14);
    Annotation.title.getter();
    v21 = type metadata accessor for Feature();
    v108[3] = v21;
    v84 = sub_1000B3688(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v108[4] = v84;
    v22 = sub_1000056E0(v108);
    v90 = a1;
    v23 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v24 = *(v21 - 8);
    v25 = *(v24 + 104);
    v26 = v24 + 104;
    v25(v22, enum case for Feature.measurement_with_labelplaceholder(_:), v21);
    v93 = v20;
    isFeatureEnabled(_:)();
    sub_100007000(v108);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v27 = v89 + 8;
    v28 = *(v89 + 8);
    v29 = v85;
    v28(v13, v85);
    Annotation.summary.getter();
    v92 = v30;
    v107[3] = v21;
    v107[4] = v84;
    v31 = sub_1000056E0(v107);
    v75 = v23;
    v32 = v23;
    v33 = v21;
    v73 = v26;
    v74 = v25;
    v25(v31, v32, v21);
    v34 = v93;
    v17 = isFeatureEnabled(_:)();
    sub_100007000(v107);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v72 = v28;
    v28(v13, v29);
    v35 = Annotation.items.getter();
    v36 = v35;
    v15 = v35 >> 62;
    v37 = v35 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v89 = v27;
    v76 = v33;
    v77 = v13;
    if (!v37)
    {
      break;
    }

    *&v101 = _swiftEmptyArrayStorage;
    result = sub_100143F04(0, v37 & ~(v37 >> 63), 0);
    if (v37 < 0)
    {
      __break(1u);
      return result;
    }

    a3 = v101;
    v71 = v34;
    v92 = v37;
    v91 = v36 & 0xFFFFFFFFFFFFFF8;
    if (v15)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v39 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v36;
    v93 = (v36 & 0xC000000000000001);
    v43 = _s8ItemViewCMa();
    a1 = 0;
    v13 = (v39 & ~(v39 >> 63));
    while (v13 != a1)
    {
      if (v93)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a1 >= *(v91 + 16))
        {
          goto LABEL_30;
        }

        v44 = *(v14 + 8 * a1 + 32);
      }

      v45 = swift_allocObject();
      *(v45 + 16) = v43;
      *(v45 + 24) = v44;
      v46 = type metadata accessor for LayoutViewPlaceholder();
      swift_allocObject();

      v47 = LayoutViewPlaceholder.init(measureWith:)();
      *(&v105 + 1) = v46;
      v106 = &protocol witness table for LayoutViewPlaceholder;

      *&v104 = v47;
      *&v101 = a3;
      v49 = a3[2];
      v48 = a3[3];
      if (v49 >= v48 >> 1)
      {
        sub_100143F04((v48 > 1), v49 + 1, 1);
      }

      ++a1;
      v50 = *(&v105 + 1);
      v15 = v106;
      v51 = sub_100047650(&v104, *(&v105 + 1));
      v52 = __chkstk_darwin(v51);
      v17 = &v70 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v54 + 16))(v17, v52);
      sub_1000B3484(v49, v17, &v101, v50, v15);
      sub_100007000(&v104);
      a3 = v101;
      if (v92 == a1)
      {

        v41 = v82;
        v40 = v83;
        v42 = v81;
        v34 = v71;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  v41 = v82;
  v40 = v83;
  v42 = v81;
LABEL_20:
  v106 = 0;
  v104 = 0u;
  v105 = 0u;
  if (Annotation.linkAction.getter())
  {
    Action.title.getter();
    v56 = v55;

    if (v56)
    {
      v57 = v76;
      *(&v102 + 1) = v76;
      v103 = v84;
      v58 = sub_1000056E0(&v101);
      v74(v58, v75, v57);
      v59 = v34;
      isFeatureEnabled(_:)();
      sub_100007000(&v101);
      v60 = v77;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v72(v60, v85);
      sub_10002B894(&v104, &unk_10097E890, qword_1007B4270);
      v104 = v101;
      v105 = v102;
      v106 = v103;
    }
  }

  if (qword_10096CF98 != -1)
  {
    swift_once();
  }

  v61 = sub_10002849C(&unk_1009730C0, &unk_1007B4250);
  sub_1000056A8(v61, qword_1009CDCD0);
  *&v101 = v42;
  v62 = v87;
  Conditional.evaluate(with:)();
  ProductAnnotationLayout.Metrics.disclosureSize.getter();
  v63 = [v42 traitCollection];
  _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

  CGSize.scaled(_:)();
  ProductAnnotationLayout.Metrics.disclosureSize.setter();
  v64 = v80;
  (*(v88 + 16))(v86, v62, v80);
  sub_10002C0AC(v108, &v101);
  sub_10002C0AC(v107, &v100);
  sub_100031660(&v104, &v94, &unk_10097E890, qword_1007B4270);
  v65 = *(&v95 + 1);
  if (*(&v95 + 1))
  {
    v66 = v96;
    v67 = sub_10002A400(&v94, *(&v95 + 1));
    *(&v98 + 1) = v65;
    v99 = *(v66 + 8);
    v68 = sub_1000056E0(&v97);
    (*(*(v65 - 8) + 16))(v68, v67, v65);
    sub_100007000(&v94);
  }

  else
  {
    sub_10002B894(&v94, &unk_10097E890, qword_1007B4270);
    v97 = 0u;
    v98 = 0u;
    v99 = 0;
  }

  v96 = 0;
  v94 = 0u;
  v95 = 0u;
  v69 = v79;
  ProductAnnotationLayout.init(metrics:titleText:summaryText:detailViews:linkText:disclosureView:isExpanded:)();
  sub_1000B3688(&unk_1009730F0, &type metadata accessor for ProductAnnotationLayout, &protocol conformance descriptor for ProductAnnotationLayout);
  dispatch thunk of Measurable.measurements(fitting:in:)();

  (*(v41 + 8))(v69, v40);
  (*(v88 + 8))(v87, v64);
  sub_10002B894(&v104, &unk_10097E890, qword_1007B4270);
  sub_100007000(v107);
  return sub_100007000(v108);
}

uint64_t sub_1000B3484(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1000056E0(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100005A38(&v12, v10 + 40 * a1 + 32);
}

void sub_1000B351C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v1 + v2) = _swiftEmptyArrayStorage;

    return;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      swift_beginAccess();
      sub_10002849C(&unk_1009730D0, &qword_1007B4268);
      ReusePool.recycle(_:)();
      swift_endAccess();
    }

    while (v4 != v5);

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1000B3688(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000B36D0()
{
  v1 = sub_10002849C(&qword_1009730A0, &qword_1007B4218);
  __chkstk_darwin(v1);
  v2 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_itemLayoutContext;
  v3 = type metadata accessor for ItemLayoutContext();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkLabel) = 0;
  _s8ItemViewCMa();
  ViewRecycler.init()();
  sub_100097060(&qword_1009730A8, &qword_1009730A0, &qword_1007B4218, &protocol conformance descriptor for ViewRecycler<A>);
  ReusePool.init(recycler:limit:)();
  *(v0 + OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailViews) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_separatorLineView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_isSeparatorDisplayed) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_isExpanded) = 0;
  v4 = (v0 + OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleText);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_explicitSummary);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailItems) = _swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkAction;
  v7 = sub_10002849C(&unk_10097B3D0, "α\b");
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000B38FC()
{
  v1 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = sub_10002849C(&qword_10097B3F0, &qword_1007B3120);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_10002849C(&unk_10097B3D0, "α\b");
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkAction;
  swift_beginAccess();
  sub_100031660(v0 + v11, v6, &qword_10097B3F0, &qword_1007B3120);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v12 = &qword_10097B3F0;
    v13 = &qword_1007B3120;
    v14 = v6;
    return sub_10002B894(v14, v12, v13);
  }

  (*(v8 + 32))(v10, v6, v7);
  ObjectGraphPair.objectGraph.getter();
  v15 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();

  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v3, 1, v15) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v12 = &unk_100972A00;
    v13 = &unk_1007B3130;
    v14 = v3;
    return sub_10002B894(v14, v12, v13);
  }

  ObjectGraphPair.value.getter();
  v18 = ObjectGraphPair.objectGraph.getter();
  sub_1005F9AF4(v19, 1, v18, v3);

  (*(v8 + 8))(v10, v7);

  return (*(v16 + 8))(v3, v15);
}

double sub_1000B3C30(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  type metadata accessor for Badge();
  sub_1000B4070(&qword_100973128, &type metadata accessor for Badge, &protocol conformance descriptor for Badge);
  ItemLayoutContext.typedModel<A>(as:)();
  v9 = v13;
  if (v13)
  {
    v10 = ItemLayoutContext.index.getter();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v5 + 8))(v7, v4);
    v11 = *(v13 + 16);

    sub_10007B86C(v9, v10, 0, v11, 0, a2);
    [*&v2[OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_topSeparatorView] setHidden:1];
    [*&v2[OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_bottomSeparatorView] setHidden:1];
    [*&v2[OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_verticalSeparatorView] setHidden:1];
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1000B3E5C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_1000B3EB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1000B3F80(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  return sub_10050094C();
}

uint64_t sub_1000B3FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1000B4070(&unk_100973130, type metadata accessor for BadgeCollectionViewCell, &unk_1007B42D0);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1000B4070(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000B40B8(void (*a1)(uint64_t *__return_ptr, uint64_t *, __n128), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12[2] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
LABEL_18:

      __break(1u);
      return;
    }

    for (j = 0; ; ++j)
    {
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v9 = *(a3 + 8 * j + 32);
      }

      v11 = v9;
      (a1)(v12, &v11);
      if (v4)
      {
        goto LABEL_18;
      }

      v4 = 0;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void sub_1000B4238(void (*a1)(_OWORD *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_10014430C(0, v4, 0);
    v7 = _swiftEmptyArrayStorage;
    for (i = a3 + 32; ; i += 40)
    {
      a1(v15, i);
      if (v3)
      {
        break;
      }

      v17 = v7;
      v10 = v7[2];
      v9 = v7[3];
      if (v10 >= v9 >> 1)
      {
        sub_10014430C((v9 > 1), v10 + 1, 1);
        v7 = v17;
      }

      v7[2] = v10 + 1;
      v11 = &v7[9 * v10];
      *(v11 + 2) = v15[0];
      v12 = v15[1];
      v13 = v15[2];
      v14 = v15[3];
      v11[12] = v16;
      *(v11 + 4) = v13;
      *(v11 + 5) = v14;
      *(v11 + 3) = v12;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

void PageTraitEnvironment.pageColumnMargin.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = UITraitCollection.isRegularPad.getter();

  if ((v6 & 1) == 0)
  {
    if (v4 < v2)
    {
LABEL_5:
      JUScreenClassGetLandscapeWidth();
      return;
    }

LABEL_9:
    JUScreenClassGetPortraitWidth();
    return;
  }

  if (v4 >= v2)
  {
    JUScreenClassGetPortraitWidth();
    if (v2 <= v8)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v2 != 1133.0)
  {
    JUScreenClassGetLandscapeWidth();
    if (v2 > v7)
    {
      goto LABEL_5;
    }
  }
}

void sub_1000B4644(void *a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC8AppStore35AppPromotionOfferCollectionViewCell_appPromotionView) + OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1000C10E4(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView];
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v8 = v7;
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_1000B47F0(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView;
  a1[1] = *(v1 + OBJC_IVAR____TtC8AppStore35AppPromotionOfferCollectionViewCell_appPromotionView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1000B4864;
}

void sub_1000B4864(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = *(v3 + v2);
  if (a2)
  {
    v6 = v4;
    sub_1006643EC();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      [*&v5[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v5[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView]];
      [v5 setNeedsLayout];
    }

    v10 = v6;
  }

  else
  {
    v10 = v4;
    sub_1006643EC();
    swift_unknownObjectWeakAssign();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (!v9)
    {
      goto LABEL_8;
    }

    v6 = v9;
    [*&v5[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView] insertSubview:v9 aboveSubview:*&v5[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView]];
    [v5 setNeedsLayout];
  }

LABEL_8:
}

id sub_1000B49A8(uint64_t a1, uint64_t a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "prepareForReuse");
  v3 = *&v2[OBJC_IVAR____TtC8AppStore35AppPromotionOfferCollectionViewCell_appPromotionView];
  sub_1002C1934();
  v4 = OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView;
  sub_1006604D0();
  v5 = &v3[OBJC_IVAR____TtC8AppStore16AppPromotionView_initialLongPressLocation];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  [*&v3[OBJC_IVAR____TtC8AppStore16AppPromotionView_longPressGestureRecognizer] setEnabled:1];
  return [v3 addSubview:*&v3[v4]];
}

uint64_t type metadata accessor for AppPromotionOfferCollectionViewCell(uint64_t a1)
{
  result = qword_100973168;
  if (!qword_100973168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B4B6C(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_1000B4C3C(uint64_t **a1))()
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
  v2[4] = sub_1000B47F0(v2);
  return sub_1000B4CAC;
}

double sub_1000B4D10()
{
  [*(*(*v0 + OBJC_IVAR____TtC8AppStore35AppPromotionOfferCollectionViewCell_appPromotionView) + OBJC_IVAR____TtC8AppStore16AppPromotionView_availabilityLabelView) frame];
  CGRectGetMaxY(v2);
  type metadata accessor for AppPromotionView(0);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetHeight(v3);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_1000B4D9C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8AppStore35AppPromotionOfferCollectionViewCell_appPromotionView);
  [*&v1[OBJC_IVAR____TtC8AppStore16AppPromotionView_availabilityLabelView] frame];
  CGRectGetMaxY(v3);
  type metadata accessor for AppPromotionView(0);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

uint64_t sub_1000B4E2C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore35AppPromotionOfferCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_1000B4E84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore35AppPromotionOfferCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &unk_1009731E0, &unk_1007B0B60);
  return swift_endAccess();
}

uint64_t sub_1000B4F5C(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v2 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v41 = &v31 - v3;
  v4 = type metadata accessor for Shelf.PresentationHints();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ComponentLayoutOptions();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v10 = *(v42 - 8);
  __chkstk_darwin(v42);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v16 = sub_10002849C(&unk_1009731D0, &qword_1007BCF00);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v31 - v18;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v17 + 8))(v19, v16);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_100079F24();
  sub_10002C0AC(v44, v43);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for AppPromotion();
  if (swift_dynamicCast())
  {
    v32 = v6;
    v20 = v15;
    v21 = v37;
    v22 = *(v10 + 16);
    v31 = v20;
    v22(v12);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    type metadata accessor for ContingentOffer();
    v23 = swift_dynamicCastClass();
    v24 = v38;
    if (v23)
    {
      v25 = v23;
      v26 = v34;

      sub_100539A70(v25, v33);
    }

    else
    {
      type metadata accessor for OfferItem();
      v27 = swift_dynamicCastClass();
      v26 = v34;
      v28 = v21;
      if (!v27)
      {
LABEL_8:
        [v26 setNeedsLayout];

        swift_unknownObjectRelease();
        (*(v35 + 8))(v41, v36);
        (*(v28 + 8))(v32, v24);
        (*(v39 + 8))(v9, v40);
        (*(v10 + 8))(v31, v42);
        return sub_100007000(v44);
      }

      v29 = v27;

      sub_100539C84(v29, v33);
    }

    v28 = v21;
    goto LABEL_8;
  }

  swift_unknownObjectRelease();
  (*(v37 + 8))(v6, v38);
  (*(v39 + 8))(v9, v40);
  (*(v10 + 8))(v15, v42);
  return sub_100007000(v44);
}

uint64_t sub_1000B54E0(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v2 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v2 - 8);
  v73 = v56 - v3;
  v71 = type metadata accessor for OfferButtonSubtitlePosition();
  v67 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = v56 - v5;
  v6 = sub_10002849C(&unk_100970170, &unk_1007BDDF0);
  __chkstk_darwin(v6 - 8);
  v65 = v56 - v7;
  v64 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v9 - 8);
  v66 = v56 - v10;
  v75 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v77 = v56 - v11;
  v12 = type metadata accessor for Shelf.PresentationHints();
  v79 = *(v12 - 8);
  v80 = v12;
  __chkstk_darwin(v12);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for ComponentLayoutOptions();
  v15 = *(v78 - 8);
  __chkstk_darwin(v78);
  v17 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v81 = *(v18 - 8);
  v82 = v18;
  __chkstk_darwin(v18);
  v20 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v56 - v22;
  v24 = sub_10002849C(&unk_1009731D0, &qword_1007BCF00);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v56 - v26;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  v28 = v27;
  v29 = v14;
  (*(v25 + 8))(v28, v24);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v30 = sub_100079F24();
  sub_10002C0AC(&v84, v83);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for ArcadeShowcase();
  if (swift_dynamicCast())
  {
    v59 = v17;
    v60 = v15;
    v31 = *(v81 + 16);
    v58 = v23;
    v31(v20, v23, v82);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v32 = v61;
    v33 = [v61 contentView];
    v56[1] = v30;
    [v30 pageMarginInsets];
    [v33 setLayoutMargins:?];

    v34 = ArcadeShowcase.iconArtworks.getter();
    v57 = v29;
    if (v34)
    {
      if (v34 >> 62)
      {
        v38 = v34;
        v39 = _CocoaArrayWrapper.endIndex.getter();
        v34 = v38;
        if (v39)
        {
          goto LABEL_5;
        }
      }

      else if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        v35 = v34;
        type metadata accessor for ArtworkLoader();
        type metadata accessor for BaseObjectGraph();
        inject<A, B>(_:from:)();
        v36 = v83[0];
        v37 = *&v32[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_iconGridView];
        [v37 setHidden:0];
        *&v37[OBJC_IVAR____TtC8AppStore12IconGridView_impressionableArtworks] = v35;

        *&v37[OBJC_IVAR____TtC8AppStore12IconGridView_artworkLoader] = v36;

        sub_1006E7990(v35, v36);

LABEL_10:
        v56[0] = *&v32[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_offerButton];
        v40 = ArcadeShowcase.offerDisplayProperties.getter();
        v41 = ArcadeShowcase.unsubscribedAction.getter();
        v42 = ArcadeShowcase.subscribedAction.getter();
        v43 = v62;
        v44 = v64;
        (*(v62 + 104))(v63, enum case for OfferButtonPresenterViewAlignment.center(_:), v64);
        (*(v43 + 56))(v65, 1, 1, v44);
        sub_1000C10E4(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
        v45 = v66;
        AccessibilityConditional.init(value:axValue:)();
        v46 = sub_10002849C(&unk_100973240, qword_1007B2220);
        (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
        v47 = v67;
        v48 = v71;
        (*(v67 + 104))(v68, enum case for OfferButtonSubtitlePosition.above(_:), v71);
        (*(v47 + 56))(v73, 1, 1, v48);
        sub_1000C10E4(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
        v49 = v69;
        AccessibilityConditional.init(value:axValue:)();
        sub_10064AFA4(v40, v41, v42, v45, v49, v76, 0, 0);

        (*(v70 + 8))(v49, v72);
        sub_10002B894(v45, &unk_100973230, &unk_1007B17E0);
        type metadata accessor for ArcadeSubscriptionManager();
        type metadata accessor for BaseObjectGraph();
        inject<A, B>(_:from:)();
        v50 = v83[0];
        ArcadeShowcase.subscribedDescription.getter();
        ArcadeShowcase.unsubscribedDescription.getter();
        v51 = type metadata accessor for ArcadeOfferLabelPresenter();
        swift_allocObject();
        v52 = v50;
        v53 = ArcadeOfferLabelPresenter.init(subscribedText:nonsubscribedText:subscriptionManager:)();
        sub_1000C10E4(&unk_100973250, type metadata accessor for ArcadeShowcaseCollectionViewCell, &unk_1007E0000);
        swift_unknownObjectRetain();
        ArcadeOfferLabelPresenter.view.setter();
        v83[3] = v51;
        v83[0] = v53;
        v54 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_offerLabelPresenter;
        swift_beginAccess();

        sub_1000315F8(v83, &v32[v54], &unk_1009711D0, &unk_1007B1A10);
        swift_endAccess();
        [v32 setNeedsLayout];

        swift_unknownObjectRelease();

        (*(v74 + 8))(v77, v75);
        (*(v79 + 8))(v57, v80);
        (*(v60 + 8))(v59, v78);
        (*(v81 + 8))(v58, v82);
        return sub_100007000(&v84);
      }
    }

    [*&v32[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_iconGridView] setHidden:1];
    goto LABEL_10;
  }

  swift_unknownObjectRelease();
  (*(v79 + 8))(v29, v80);
  (*(v15 + 8))(v17, v78);
  (*(v81 + 8))(v23, v82);
  return sub_100007000(&v84);
}

uint64_t sub_1000B6218(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t, uint64_t, char *, char *, id))
{
  v29 = a4;
  v31 = a3;
  v27 = a2;
  v30 = sub_10002849C(&unk_1009731C0, &qword_1007B4578);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v26 = &v26 - v4;
  v5 = type metadata accessor for Shelf.PresentationHints();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ComponentLayoutOptions();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v11 = *(v32 - 8);
  __chkstk_darwin(v32);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = sub_10002849C(&unk_1009731D0, &qword_1007BCF00);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v26 - v19;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v18 + 8))(v20, v17);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v21 = sub_100079F24();
  sub_10002C0AC(v39, v38);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  v31(0);
  if (swift_dynamicCast())
  {
    v22 = v37;
    v23 = v32;
    (*(v11 + 16))(v13, v16, v32);
    type metadata accessor for NilState();
    v24 = v26;
    WritableStateLens.init(_:)();
    v29(v22, v27, v10, v7, v21);
    swift_unknownObjectRelease();

    (*(v28 + 8))(v24, v30);
    (*(v35 + 8))(v7, v36);
    (*(v33 + 8))(v10, v34);
    (*(v11 + 8))(v16, v23);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v35 + 8))(v7, v36);
    (*(v33 + 8))(v10, v34);
    (*(v11 + 8))(v16, v32);
  }

  return sub_100007000(v39);
}