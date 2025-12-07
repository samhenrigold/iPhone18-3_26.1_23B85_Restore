uint64_t PagingCollectionView.layoutSubviews()()
{
  v1 = v0;
  type metadata accessor for IndexPath?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - v15;
  v17 = &v0[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_lastLayoutSize];
  v18 = *&v0[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_lastLayoutSize];
  v19 = *&v0[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_lastLayoutSize + 8];
  v20 = v0[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_lastLayoutSize + 16];
  [v1 bounds];
  if ((v20 & 1) != 0 || (v18 == v21 ? (v23 = v19 == v22) : (v23 = 0), !v23))
  {
    v24 = [v1 collectionViewLayout];
    [v24 invalidateLayout];
  }

  v25 = type metadata accessor for PagingCollectionView(0);
  v41.receiver = v1;
  v41.super_class = v25;
  objc_msgSendSuper2(&v41, sel_layoutSubviews);
  v26 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_pendingIndexPath;
  swift_beginAccess();
  outlined init with copy of IndexPath?(v1 + v26, v9, type metadata accessor for IndexPath?);
  v27 = *(v11 + 48);
  if (v27(v9, 1, v10) == 1)
  {
    outlined destroy of IndexPath?(v9, type metadata accessor for IndexPath?);
    v28 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_lastScrolledIndexPath;
    swift_beginAccess();
    v29 = v1 + v28;
    v30 = v40;
    outlined init with copy of IndexPath?(v29, v40, type metadata accessor for IndexPath?);
    if (v27(v30, 1, v10) == 1)
    {
      return outlined destroy of IndexPath?(v30, type metadata accessor for IndexPath?);
    }

    else
    {
      v33 = v39;
      (*(v11 + 32))(v39, v30, v10);
      [v1 bounds];
      if ((v17[16] & 1) != 0 || v34 != *v17 || v35 != *(v17 + 1))
      {
        [v1 bounds];
        *v17 = v36;
        *(v17 + 1) = v37;
        v17[16] = 0;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v1 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:0];
      }

      return (*(v11 + 8))(v33, v10);
    }
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    (*(v11 + 56))(v6, 1, 1, v10);
    swift_beginAccess();
    outlined assign with take of IndexPath?(v6, v1 + v26);
    swift_endAccess();
    v32 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v1 scrollToItemAtIndexPath:v32 atScrollPosition:16 animated:0];

    return (*(v11 + 8))(v16, v10);
  }
}

double PagingCollectionView.scrollToItem(at:at:animated:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  type metadata accessor for IndexPath?(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v4 dataSource])
  {
    type metadata accessor for Coordinator();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_lastIDs);

      swift_unknownObjectRelease();
      v15 = *(v14 + 16);

      if (v15)
      {
        v16 = type metadata accessor for IndexPath();
        v17 = *(v16 - 8);
        (*(v17 + 16))(v11, a1, v16);
        (*(v17 + 56))(v11, 0, 1, v16);
        v18 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_lastScrolledIndexPath;
        swift_beginAccess();
        outlined assign with take of IndexPath?(v11, v4 + v18);
        swift_endAccess();
        [v4 setPagingEnabled_];
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v20 = type metadata accessor for PagingCollectionView(0);
        v22.receiver = v4;
        v22.super_class = v20;
        objc_msgSendSuper2(&v22, sel_scrollToItemAtIndexPath_atScrollPosition_animated_, isa, a2, a3 & 1);

        [v4 setPagingEnabled_];
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  return result;
}

id Coordinator.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for PagingCollectionView(uint64_t a1)
{
  result = type metadata singleton initialization cache for PagingCollectionView;
  if (!type metadata singleton initialization cache for PagingCollectionView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PagingCollectionView(uint64_t a1)
{
  type metadata accessor for IndexPath?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t outlined assign with take of IndexPath?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IndexPath?(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [AnyHashable] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AnyHashable] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AnyHashable] and conformance [A])
  {
    _s7SwiftUI7BindingVySiGMaTm_1(255, &lazy cache variable for type metadata for [AnyHashable], MEMORY[0x1E69E69B8], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6310], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [AnyHashable] and conformance [A]);
  }

  return result;
}

id specialized Coordinator.init(selectedIndex:children:layoutDirection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = v5;
  v11 = *a5;
  *&v6[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_collectionView] = 0;
  v12 = &v6[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSeenIndex];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v6[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSelectedIndex];
  *v13 = 0;
  v13[8] = 1;
  outlined init with copy of _VariadicView_Children(a4, &v6[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_children]);
  v14 = &v6[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_selectedIndex];
  *v14 = a1;
  v14[1] = a2;
  v14[2] = a3;
  v21[0] = a1;
  v21[1] = a2;
  v21[2] = a3;
  _s7SwiftUI7BindingVySiGMaTm_1(0, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
  v16 = v15;

  MEMORY[0x18D00ACC0](&v22, v16);
  *&v6[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_lastSeenIndex] = v22;
  outlined init with copy of _VariadicView_Children(a4, v21);
  v17 = _ViewList_Backing.ids.getter();
  outlined destroy of _ViewList_Backing(v21);
  *&v6[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_lastIDs] = v17;
  v6[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_layoutDirection] = v11;
  v20.receiver = v6;
  v20.super_class = type metadata accessor for Coordinator();
  v18 = objc_msgSendSuper2(&v20, sel_init);
  outlined destroy of _VariadicView_Children(a4);
  return v18;
}

void specialized Coordinator.collectionView(_:willDisplay:forItemAt:)(void *a1)
{
  type metadata accessor for UIKitPagingCell();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF015UIKitPagingCell_host);
    if (v3)
    {
      v4 = a1;
      v5 = v3;
      if (UIHostingViewBase.isHiddenForReuse.getter())
      {
        UIHostingViewBase.isHiddenForReuse.setter();
      }
    }
  }
}

void specialized Coordinator.collectionView(_:didEndDisplaying:forItemAt:)(void *a1)
{
  type metadata accessor for UIKitPagingCell();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF015UIKitPagingCell_host);
    if (v3)
    {
      v4 = a1;
      v5 = v3;
      if ((UIHostingViewBase.isHiddenForReuse.getter() & 1) == 0)
      {
        UIHostingViewBase.isHiddenForReuse.setter();
      }
    }
  }
}

uint64_t specialized Coordinator.collectionView(_:targetContentOffsetForProposedContentOffset:)(void *a1)
{
  v2 = v1;
  [a1 bounds];
  CGRectGetWidth(v12);
  v4 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_selectedIndex + 16);
  v10 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_selectedIndex);
  v11 = v4;
  _s7SwiftUI7BindingVySiGMaTm_1(0, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
  result = MEMORY[0x18D00ACC0](v9);
  if (*(v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_layoutDirection) == 1)
  {
    [a1 bounds];
    CGRectGetWidth(v13);
    v6 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_children;
    swift_beginAccess();
    outlined init with copy of _VariadicView_Children(v2 + v6, &v10);
    v7 = _VariadicView_Children.endIndex.getter();
    result = _VariadicView_Children.endIndex.getter();
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v8 = _VariadicView_Children.endIndex.getter();
      result = outlined destroy of _VariadicView_Children(&v10);
      if ((v7 & 0x8000000000000000) == 0 && v8 >= v7)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t type metadata accessor for UICollectionViewLayoutAttributes()
{
  result = lazy cache variable for type metadata for UICollectionViewLayoutAttributes;
  if (!lazy cache variable for type metadata for UICollectionViewLayoutAttributes)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UICollectionViewLayoutAttributes);
  }

  return result;
}

uint64_t type metadata completion function for PageViewWrapper(uint64_t a1)
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for PageViewWrapper(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 84);
  v8 = v6;
  v9 = v6 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v10 = ((v8 + 16) & ~v8) + *(v5 + 64);
  v11 = v6 & 0x100000;
  if (v8 <= 7 && v11 == 0 && v10 + (v9 & (v8 + 112)) + 1 <= 0x18)
  {
    v15 = *(a2 + 3);
    *(a1 + 24) = v15;
    (**(v15 - 8))(a1);
    v3[5] = a2[5];
    v17 = ((v3 + 55) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((a2 + 55) & 0xFFFFFFFFFFFFFFF8);
    v19 = v18[3];
    v17[3] = v19;
    v17[4] = v18[4];
    v20 = **(v19 - 8);

    v20(v17, v18, v19);
    v21 = v18[5];
    v17[5] = v21;
    v17[6] = v18[6];
    v17[7] = v18[7];
    v22 = ((v17 + 71) & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v18 + 71) & 0xFFFFFFFFFFFFFFF8);
    v24 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
    v25 = v21;

    if ((v7 & 0x80000000) != 0)
    {
      if ((*(v5 + 48))(v24 + 1, v7, v4))
      {
LABEL_14:
        memcpy(v22, v23, v10);
LABEL_17:
        *(v22 + v10) = *(v23 + v10);
        return v3;
      }
    }

    else
    {
      v26 = *v24;
      if (*v24 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      if (v26 != -1)
      {
        goto LABEL_14;
      }
    }

    *v22 = *v23;
    v27 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v27 = *v24;
    v28 = *(v5 + 16);

    v28(v27 + 1, v24 + 1, v4);
    goto LABEL_17;
  }

  v14 = *a2;
  *v3 = *a2;
  v3 = (v14 + (v9 & (v8 + 16)));

  return v3;
}

uint64_t destroy for PageViewWrapper(void *a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  v4 = (a1 + 55) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v4);

  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + (v7 | 7) + 64) & ~(v7 | 7);
  v9 = ~v7;
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = v6;
  if ((*(v6 + 84) & 0x80000000) != 0)
  {
    result = (*(v6 + 48))((v10 + v7 + 8) & v9);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v11 = *v10;
  if (*v10 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  result = (v11 + 1);
  if (v11 == -1)
  {
LABEL_7:

    v13 = *(v14 + 8);

    return v13((v10 + v7 + 8) & v9, v5);
  }

  return result;
}

uint64_t initializeWithCopy for PageViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 24);
  *(a1 + 24) = v6;
  (**(v6 - 8))();
  *(a1 + 40) = *(a2 + 40);
  v7 = ((a1 + 55) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((a2 + 55) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[3];
  v7[3] = v9;
  v7[4] = v8[4];
  v10 = **(v9 - 8);

  v10(v7, v8, v9);
  v11 = v8[5];
  v7[5] = v11;
  v7[6] = v8[6];
  v7[7] = v8[7];
  v12 = *(a3 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  v15 = *(v13 + 80);
  v16 = *(v13 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  __dst = ((v7 + v15 + 64) & v16);
  v17 = ((v8 + v15 + 64) & v16);
  v18 = ~v15;
  v19 = ((v15 + 16) & ~v15) + *(v13 + 64);
  v20 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = v11;

  if ((v14 & 0x80000000) == 0)
  {
    v22 = *v20;
    if (*v20 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    if (v22 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    v23 = __dst;
    *__dst = *v17;
    v24 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    v28 = v12;
    *v24 = *v20;
    v25 = v24 + v15 + 8;
    v26 = *(v13 + 16);

    v26(v25 & v18, (v20 + v15 + 8) & v18, v28);
    goto LABEL_8;
  }

  if (!(*(v13 + 48))((v20 + v15 + 8) & v18, v14, v12))
  {
    goto LABEL_7;
  }

LABEL_5:
  v23 = __dst;
  memcpy(__dst, v17, v19);
LABEL_8:
  *(v23 + v19) = *(v17 + v19);
  return a1;
}

uint64_t *assignWithCopy for PageViewWrapper(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  a1[5] = a2[5];

  v6 = ((a1 + 55) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 55) & 0xFFFFFFFFFFFFFFF8);
  __swift_assign_boxed_opaque_existential_1(v6, v7);
  v8 = v7[5];
  v9 = v6[5];
  v6[5] = v8;
  v10 = v8;

  v6[6] = v7[6];

  v6[7] = v7[7];
  v11 = *(a3 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(v12 + 80);
  v15 = *(v12 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v16 = ((v6 + v14 + 64) & v15);
  v17 = ((v7 + v14 + 64) & v15);
  v18 = *(v12 + 64);
  v19 = ((v14 + 16) & ~v14) + v18;
  v20 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v34 = ~v14;
  if ((v13 & 0x80000000) != 0)
  {
    v33 = ((v14 + 16) & ~v14) + v18;
    v24 = *(v12 + 48);
    v32 = v24((v20 + v14 + 8) & ~v14, v13, v11);
    v21 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
    v23 = v24((v21 + v14 + 8) & ~v14, v13, v11);
    v19 = v33;
    if (!v32)
    {
LABEL_5:
      if (!v23)
      {
        *v16 = *v17;

        *v20 = *v21;

        (*(v12 + 24))((v20 + v14 + 8) & v34, (v21 + v14 + 8) & v34, v11);
        goto LABEL_12;
      }

      (*(v12 + 8))((v20 + v14 + 8) & v34, v11);
      goto LABEL_9;
    }
  }

  else
  {
    v21 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
    v22 = *v21;
    if (*v21 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v22) = -1;
    }

    v23 = v22 + 1;
    if (*v20 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v23)
  {
    *v16 = *v17;
    *v20 = *v21;
    v25 = v14 + 8;
    v26 = v19;
    v27 = v20 + v25;
    v28 = v21 + v25;
    v29 = *(v12 + 16);

    v30 = v27 & v34;
    v19 = v26;
    v29(v30, v28 & v34, v11);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v16, v17, v19);
LABEL_12:
  *(v16 + v19) = *(v17 + v19);
  return a1;
}

_OWORD *initializeWithTake for PageViewWrapper(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = a2[2];
  v5 = ((a1 + 55) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 55) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[3];
  v5[2] = v6[2];
  v5[3] = v9;
  *v5 = v7;
  v5[1] = v8;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v14 = ((v5 + v12 + 64) & v13);
  v15 = ((v6 + v12 + 64) & v13);
  v16 = ~v12;
  v17 = ((v12 + 16) & ~v12) + *(v11 + 64);
  v18 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v11 + 84) & 0x80000000) == 0)
  {
    v19 = *v18;
    if (*v18 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    if (v19 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v14 = *v15;
    v20 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v18;
    (*(v11 + 32))((v20 + v12 + 8) & v16, (v18 + v12 + 8) & v16, v10);
    goto LABEL_8;
  }

  if (!(*(v11 + 48))((v18 + v12 + 8) & v16))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v14, v15, v17);
LABEL_8:
  *(v14 + v17) = *(v15 + v17);
  return a1;
}

uint64_t assignWithTake for PageViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;

  v8 = (a1 + 55) & 0xFFFFFFFFFFFFFFF8;
  v9 = (a2 + 55) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v8);
  v10 = *v9;
  v11 = *(v9 + 16);
  *(v8 + 32) = *(v9 + 32);
  *v8 = v10;
  *(v8 + 16) = v11;
  v12 = *(v8 + 40);
  *(v8 + 40) = *(v9 + 40);

  *(v8 + 48) = *(v9 + 48);

  *(v8 + 56) = *(v9 + 56);
  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  v16 = *(v14 + 80);
  v17 = *(v14 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v18 = ((v16 + 64 + v8) & v17);
  v19 = ((v16 + 64 + v9) & v17);
  v20 = *(v14 + 64);
  v21 = ((v16 + 16) & ~v16) + v20;
  v22 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  v32 = ~v16;
  if ((v15 & 0x80000000) != 0)
  {
    v31 = ((v16 + 16) & ~v16) + v20;
    v26 = *(v14 + 48);
    v27 = v26((v22 + v16 + 8) & ~v16, v15, v13);
    v28 = v26;
    v30 = v27;
    v23 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
    v25 = v28((v23 + v16 + 8) & ~v16, v15, v13);
    v21 = v31;
    if (!v30)
    {
LABEL_5:
      if (!v25)
      {
        *v18 = *v19;

        *v22 = *v23;

        (*(v14 + 40))((v22 + v16 + 8) & v32, (v23 + v16 + 8) & v32, v13);
        goto LABEL_12;
      }

      (*(v14 + 8))((v22 + v16 + 8) & v32, v13);
      goto LABEL_9;
    }
  }

  else
  {
    v23 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
    v24 = *v23;
    if (*v23 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v24) = -1;
    }

    v25 = v24 + 1;
    if (*v22 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v25)
  {
    *v18 = *v19;
    *v22 = *v23;
    (*(v14 + 32))((v22 + v16 + 8) & v32, (v23 + v16 + 8) & v32, v13);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v18, v19, v21);
LABEL_12:
  *(v18 + v21) = *(v19 + v21);
  return a1;
}

uint64_t getEnumTagSinglePayload for PageViewWrapper(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = v6 - 1;
  v8 = *(v4 + 80);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v8 | 7;
  v11 = a2 - v9;
  if (a2 <= v9)
  {
    goto LABEL_29;
  }

  v12 = ~(((-17 - v8) | v8) - *(*(*(a3 + 16) - 8) + 64) + ((-113 - v8) | v10));
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 < 2)
    {
LABEL_29:
      if ((v7 & 0x80000000) != 0)
      {
        v19 = ((((((a1 + 55) & 0xFFFFFFFFFFFFFFF8) + v10 + 64) & ~v10) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v5 & 0x80000000) != 0)
        {
          v21 = (*(v4 + 48))((v19 + v8 + 8) & ~v8);
        }

        else
        {
          v20 = *v19;
          if (v20 >= 0xFFFFFFFF)
          {
            LODWORD(v20) = -1;
          }

          v21 = v20 + 1;
        }

        if (v21 >= 2)
        {
          return v21 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *(a1 + 3);
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_29;
  }

LABEL_18:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (((-17 - v8) | v8) - *(*(*(a3 + 16) - 8) + 64) + ((-113 - v8) | v10) != -1)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v9 + (v12 | v17) + 1;
}

void storeEnumTagSinglePayload for PageViewWrapper(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = v8 - 1;
  if ((v8 - 1) <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v8 - 1;
  }

  v11 = *(v6 + 80);
  v12 = ((v11 + 16) & ~v11) + *(*(*(a4 + 16) - 8) + 64);
  v13 = v12 + ((v11 + 112) & ~(v11 | 7)) + 1;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v19 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v19))
      {
        v16 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v13 < 4)
    {
      v18 = (v17 >> (8 * v13)) + 1;
      if (v12 + ((v11 + 112) & ~(v11 | 7)) != -1)
      {
        v21 = v17 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_60:
              if (v16 == 2)
              {
                *&a1[v13] = v18;
              }

              else
              {
                *&a1[v13] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v16)
    {
      a1[v13] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v13] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v16)
  {
    goto LABEL_33;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v9 & 0x80000000) != 0)
  {
    v22 = ((((a1 + 55) & 0xFFFFFFFFFFFFFFF8) + (v11 | 7) + 64) & ~(v11 | 7));
    if (v9 >= a2)
    {
      v26 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v27 = *(v6 + 56);
        v28 = a2 + 1;

        v27((v26 + v11 + 8) & ~v11, v28);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *v26 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v26 = a2;
      }
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (a2 - v8);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 5) = 0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = a2 - 1;
  }
}

void type metadata accessor for ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>)
  {
    type metadata accessor for IndexPath?(255, &lazy cache variable for type metadata for TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>, type metadata accessor for ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>, type metadata accessor for TupleToolbarContent);
    v3 = type metadata accessor for ToolbarModifier(a1, MEMORY[0x1E69E7CA8] + 8, v2, &protocol witness table for TupleToolbarContent<A>);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>);
    }
  }
}

void type metadata accessor for ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>)
  {
    type metadata accessor for IndexPath?(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, MEMORY[0x1E69E6720]);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>? and conformance <A> A?();
    v6 = type metadata accessor for ToolbarItemGroup(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>);
    }
  }
}

void type metadata accessor for ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>)
  {
    _s7SwiftUI7BindingVySiGMaTm_1(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<PageIndexDisplayMode>, &type metadata for PageIndexDisplayMode, MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>? and conformance <A> A?)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for IndexPath?(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, MEMORY[0x1E69E6720]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>, &protocol witness table for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(MEMORY[0x1E6982090], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IndexView and conformance IndexView()
{
  result = lazy protocol witness table cache variable for type IndexView and conformance IndexView;
  if (!lazy protocol witness table cache variable for type IndexView and conformance IndexView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IndexView, &type metadata for IndexView, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IndexView and conformance IndexView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<PageIndexDisplayMode> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<PageIndexDisplayMode> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<PageIndexDisplayMode> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    _s7SwiftUI7BindingVySiGMaTm_1(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<PageIndexDisplayMode>, &type metadata for PageIndexDisplayMode, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<PageIndexDisplayMode> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<TabBarPlacement?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    _s7SwiftUI7BindingVySiGMaTm_1(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined init with copy of IndexPath?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)
  {
    type metadata accessor for IndexPath?(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>(uint64_t a1, unint64_t *a2, double (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>, StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<TabBarPlacement?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>, StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<TabBarPlacement?>>)
  {
    type metadata accessor for ModifiedContent<ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>, StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>>(255);
    type metadata accessor for _EnvironmentKeyWritingModifier<TabBarPlacement?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TabBarPlacement?>, &lazy cache variable for type metadata for TabBarPlacement?, &type metadata for TabBarPlacement, MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>, StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<TabBarPlacement?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>, StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>, StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>>)
  {
    type metadata accessor for ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>(255);
    type metadata accessor for StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>, StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>)
  {
    type metadata accessor for TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>(255);
    _ss15WritableKeyPathCySiSgACGAByxq_G7SwiftUI10ProjectionAFWlTm_0(&lazy protocol witness table cache variable for type TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)> and conformance TupleView<A>, type metadata accessor for TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>, MEMORY[0x1E6981F48]);
    v1 = type metadata accessor for ZStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>);
    }
  }
}

void type metadata accessor for (UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>))
  {
    type metadata accessor for StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>));
    }
  }
}

void type metadata accessor for StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>)
  {
    type metadata accessor for ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>, StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>, StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>, StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>, StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>>(255);
    v4 = v3;
    v5[0] = _ss15WritableKeyPathCySiSgACGAByxq_G7SwiftUI10ProjectionAFWlTm_0(&lazy protocol witness table cache variable for type ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>> and conformance ZStack<A>, type metadata accessor for ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>, MEMORY[0x1E6981880]);
    v5[1] = lazy protocol witness table accessor for type StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>, StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _ss15WritableKeyPathCySiSgACGAByxq_G7SwiftUI10ProjectionAFWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type IndexViewPlacementModifier.IsToolbarPredicate and conformance IndexViewPlacementModifier.IsToolbarPredicate();
    v5[1] = &protocol witness table for ToolbarModifier<A, B>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IndexViewPlacementModifier.IsToolbarPredicate and conformance IndexViewPlacementModifier.IsToolbarPredicate()
{
  result = lazy protocol witness table cache variable for type IndexViewPlacementModifier.IsToolbarPredicate and conformance IndexViewPlacementModifier.IsToolbarPredicate;
  if (!lazy protocol witness table cache variable for type IndexViewPlacementModifier.IsToolbarPredicate and conformance IndexViewPlacementModifier.IsToolbarPredicate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IndexViewPlacementModifier.IsToolbarPredicate, &type metadata for IndexViewPlacementModifier.IsToolbarPredicate, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IndexViewPlacementModifier.IsToolbarPredicate and conformance IndexViewPlacementModifier.IsToolbarPredicate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TabBarPlacement?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TabBarPlacement?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TabBarPlacement?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<TabBarPlacement?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TabBarPlacement?>, &lazy cache variable for type metadata for TabBarPlacement?, &type metadata for TabBarPlacement, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TabBarPlacement?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2_3> and conformance _SemanticFeature<A>()
{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2_3> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2_3> and conformance _SemanticFeature<A>)
  {
    _sSnySiGMaTm_0(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2_3>, MEMORY[0x1E697E4F8], MEMORY[0x1E697E4F0], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable(MEMORY[0x1E697EC30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2_3> and conformance _SemanticFeature<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    _sSnySiGMaTm_0(255, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static Solarium.metricsEnabled.getter()
{
  static _GraphInputs.defaultInterfaceIdiom.getter();
  Solarium.EnablementIdiom.init(_:)();
  return static Solarium.useMetrics(for:)() & 1;
}

uint64_t static Solarium.testIf<A, B>(enabled:disabled:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = static Solarium.testIf<A>(enabled:)(a3, a7, a1);
  if (!v8)
  {
    return static Solarium.testIf<A>(disabled:)(a5, a8, a2);
  }

  return result;
}

uint64_t static Solarium.testIf<A>(enabled:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  static _GraphInputs.defaultInterfaceIdiom.getter();
  if (static Solarium.isEnabled(for:)())
  {
    result = a1();
    if (v3)
    {
      return result;
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return (*(*(a2 - 8) + 56))(a3, v8, 1, a2);
}

uint64_t static Solarium.testIf<A>(disabled:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  static _GraphInputs.defaultInterfaceIdiom.getter();
  if (static Solarium.isEnabled(for:)())
  {
    v7 = 1;
  }

  else
  {
    result = a1();
    if (v3)
    {
      return result;
    }

    v7 = 0;
  }

  return (*(*(a2 - 8) + 56))(a3, v7, 1, a2);
}

double LeadingAlignedDisclosureGroupStyle.makeBody(configuration:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;

  return result;
}

double protocol witness for DisclosureGroupStyle.makeBody(configuration:) in conformance LeadingAlignedDisclosureGroupStyle@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;

  return result;
}

uint64_t closure #1 in StyledView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v5 = a3;
  v60 = a4;
  type metadata accessor for Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>(0, a5);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, type metadata accessor for Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>);
  v58 = v12 - 8;
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v53 = &v51 - v14;
  type metadata accessor for ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>(0, v13);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v57 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(0, v16);
  v52 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18 - 8);
  v59 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v51 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v51 - v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  *(v26 + 32) = v5;
  *v11 = 4;
  v27 = &v11[*(v9 + 44)];
  *v27 = partial apply for implicit closure #2 in implicit closure #1 in closure #1 in StyledView.body.getter;
  v27[1] = v26;
  type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();
  v28 = *(v9 + 48);
  v55 = a1;

  v54 = a2;

  v56 = v5;
  closure #1 in closure #1 in StyledView.body.getter(a1, a2, v5, &v11[v28]);

  v61[0] = a1;
  v61[1] = a2;
  LOBYTE(v61[2]) = v5;
  _s7SwiftUI7BindingVySbGMaTm_3(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v30 = v29;
  MEMORY[0x18D00ACC0](v62);
  LOBYTE(v61[0]) = v62[0];
  lazy protocol witness table accessor for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue();
  lazy protocol witness table accessor for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue();
  lazy protocol witness table accessor for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue();
  AccessibilityValueStorage.init<A>(_:description:)();
  AccessibilityProperties.init()();
  outlined destroy of AccessibilityValueStorage?(v63);
  outlined init with copy of AccessibilityValueStorage(v64, v63);
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityValueStorage(v64);
  outlined destroy of AccessibilityProperties(v62);
  _s7SwiftUI7BindingVySbGMaTm_3(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v31 = swift_allocObject();
  memcpy((v31 + 16), v61, 0x128uLL);
  v32 = v53;
  outlined init with take of Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>(v11, v53, type metadata accessor for Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>);
  v33 = v57;
  v34 = (v32 + *(v58 + 44));
  *v34 = v31;
  v34[1] = 0;
  outlined init with take of ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>(v32, v33);
  KeyPath = swift_getKeyPath();
  v36 = swift_getKeyPath();
  outlined init with take of Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>(v33, v22, type metadata accessor for ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>);
  v37 = &v22[*(v52 + 44)];
  *v37 = KeyPath;
  v37[8] = 0;
  *(v37 + 2) = v36;
  v37[24] = 0;
  outlined init with take of Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>(v22, v25, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>);
  v61[0] = v55;
  v61[1] = v54;
  LOBYTE(v61[2]) = v56;
  MEMORY[0x18D00ACC0](v62, v30);
  v39 = 0;
  v40 = 0;
  v41 = 0;
  if (LOBYTE(v62[0]) == 1)
  {
    v39 = static HorizontalAlignment.center.getter();
    lazy protocol witness table accessor for type VerticalDisclosureTransition and conformance VerticalDisclosureTransition();
    v41 = AnyTransition.init<A>(_:)();
    v40 = 1;
  }

  v42 = v59;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(v25, v59, v38);
  v43 = v60;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(v42, v60, v44);
  type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)(0, v45);
  v47 = (v43 + *(v46 + 48));
  *v47 = v39;
  v47[1] = 0;
  v47[2] = v40;
  v47[3] = v41;

  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(v25, v48);

  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(v42, v49);
}

double implicit closure #2 in implicit closure #1 in closure #1 in StyledView.body.getter(uint64_t a1, uint64_t a2)
{
  swift_retain_n();

  Transaction.subscript.setter();
  Transaction.current.getter();
  withTransaction<A>(_:_:)();

  return result;
}

void closure #1 in closure #1 in StyledView.body.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = static VerticalAlignment.center.getter();
  v20 = a1;
  v21 = a2;
  v22 = a3;
  _s7SwiftUI7BindingVySbGMaTm_3(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v10 = v9;
  MEMORY[0x18D00ACC0](&v19);
  v11 = v19;
  v12 = static VerticalAlignment.center.getter();
  v20 = a1;
  v21 = a2;
  v22 = a3;
  MEMORY[0x18D00ACC0](&v19, v10);
  v13 = v19;
  LOBYTE(v19) = 1;
  v14 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  *a4 = v8;
  *(a4 + 8) = 0x4010000000000000;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 25) = v11;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  *(a4 + 48) = v12;
  *(a4 + 56) = 0;
  *(a4 + 64) = 1;
  *(a4 + 72) = 0;
  *(a4 + 80) = 257;
  *(a4 + 82) = v13;
  *(a4 + 88) = v14;
  *(a4 + 96) = v15;
  *(a4 + 104) = v16;
  *(a4 + 112) = v17;
  *(a4 + 120) = v18;
  *(a4 + 128) = 0;
}

uint64_t protocol witness for View.body.getter in conformance StyledView@<X0>(uint64_t a1@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  type metadata accessor for _VariadicView.Tree<_VStackLayout, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>>(0);
  return closure #1 in StyledView.body.getter(v4, v5, v6, a1 + *(v7 + 44), v8);
}

uint64_t one-time initialization function for verticalDisclosure()
{
  lazy protocol witness table accessor for type VerticalDisclosureTransition and conformance VerticalDisclosureTransition();
  result = AnyTransition.init<A>(_:)();
  static AnyTransition.verticalDisclosure = result;
  return result;
}

double static AnyTransition.verticalDisclosure.getter()
{
  if (one-time initialization token for verticalDisclosure != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyledView and conformance StyledView()
{
  result = lazy protocol witness table cache variable for type StyledView and conformance StyledView;
  if (!lazy protocol witness table cache variable for type StyledView and conformance StyledView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StyledView, &unk_1EFFAECD0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StyledView and conformance StyledView);
  }

  return result;
}

void type metadata accessor for _VariadicView.Tree<_VStackLayout, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>, type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?), MEMORY[0x1E6981F40]);
    v1 = type metadata accessor for _VariadicView.Tree();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>>);
    }
  }
}

void type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(255, a2);
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>(255, &lazy cache variable for type metadata for ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?, type metadata accessor for ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>(255, a2);
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlainButtonStyle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, lazy protocol witness table accessor for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata for BorderlessButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v2 = type metadata accessor for ModifiedContent();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, type metadata accessor for Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>);
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>(255);
    v2 = type metadata accessor for ModifiedContent();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>)
  {
    type metadata accessor for ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    v7 = type metadata accessor for Button(a1, v4, v5, v6);
    if (!v8)
    {
      atomic_store(v7, &lazy cache variable for type metadata for Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>(uint64_t a1, unint64_t *a2, double (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>)
  {
    type metadata accessor for InterfaceIdiomPredicate<MacInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], MEMORY[0x1E69801E0]);
    type metadata accessor for HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>(255);
    type metadata accessor for HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>);
    }
  }
}

void type metadata accessor for TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>)
  {
    type metadata accessor for (RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)(255, &lazy cache variable for type metadata for (RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer), &type metadata for RotatingDisclosureIndicator, &type metadata for DisclosureGroupStyleConfiguration.Label, MEMORY[0x1E6981840]);
    v1 = type metadata accessor for TupleView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>);
    }
  }
}

void type metadata accessor for HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    lazy protocol witness table accessor for type TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)> and conformance TupleView<A>(a4, a5, MEMORY[0x1E6981F48]);
    v8 = type metadata accessor for HStack();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>)
  {
    type metadata accessor for (RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)(255, &lazy cache variable for type metadata for (DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator), &type metadata for DisclosureGroupStyleConfiguration.Label, MEMORY[0x1E6981840], &type metadata for RotatingDisclosureIndicator);
    v1 = type metadata accessor for TupleView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>);
    }
  }
}

void type metadata accessor for (RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)> and conformance TupleView<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>> and conformance <> StaticIf<A, B, C>();
    v5[1] = MEMORY[0x1E697E5D8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>> and conformance <> StaticIf<A, B, C>)
  {
    v7[7] = v0;
    v7[8] = v1;
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>(255);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type InterfaceIdiomPredicate<MacInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    v6 = MEMORY[0x1E69817F8];
    v7[0] = v5;
    v7[1] = lazy protocol witness table accessor for type TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, MEMORY[0x1E69817F8]);
    v7[2] = lazy protocol witness table accessor for type TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>, v6);
    result = swift_getWitnessTable(MEMORY[0x1E6981CE8], v4, v7);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for InterfaceIdiomPredicate<MacInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], MEMORY[0x1E69801E0]);
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlainButtonStyle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle, &type metadata for PlainButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>)
  {
    type metadata accessor for InterfaceIdiomPredicate<MacInterfaceIdiom>(255, &lazy cache variable for type metadata for VStack<DisclosureGroupStyleConfiguration.Content>, &type metadata for DisclosureGroupStyleConfiguration.Content, &protocol witness table for DisclosureGroupStyleConfiguration.Content, MEMORY[0x1E6981860]);
    type metadata accessor for InterfaceIdiomPredicate<MacInterfaceIdiom>(255, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>, MEMORY[0x1E697F528], MEMORY[0x1E697F518], MEMORY[0x1E697FDB8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue()
{
  result = lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue;
  if (!lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980888], MEMORY[0x1E6980878], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue;
  if (!lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980880], MEMORY[0x1E6980878], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue;
  if (!lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980870], MEMORY[0x1E6980878], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, type metadata accessor for Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 VerticalDisclosureTransition.body(content:phase:)@<Q0>(uint64_t a2@<X8>)
{
  static Alignment.top.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v4[6] = v5;
  *&v4[22] = v6;
  *&v4[38] = v7;
  *(a2 + 2) = *v4;
  *a2 = 256;
  *(a2 + 18) = *&v4[16];
  result = *&v4[32];
  *(a2 + 34) = *&v4[32];
  *(a2 + 48) = *(&v7 + 1);
  *(a2 + 56) = 0;
  return result;
}

uint64_t protocol witness for Transition._makeContentTransition(transition:) in conformance VerticalDisclosureTransition(uint64_t result)
{
  if (*result == 3)
  {
    v1 = result;
    result = outlined consume of _Transition_ContentTransition.Result(*(result + 24), *(result + 32));
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
  }

  return result;
}

uint64_t outlined init with take of Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(uint64_t a1, uint64_t a2, double a3)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(uint64_t a1, double a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type VerticalDisclosureTransition and conformance VerticalDisclosureTransition()
{
  result = lazy protocol witness table cache variable for type VerticalDisclosureTransition and conformance VerticalDisclosureTransition;
  if (!lazy protocol witness table cache variable for type VerticalDisclosureTransition and conformance VerticalDisclosureTransition)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VerticalDisclosureTransition, &unk_1EFFAED20, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VerticalDisclosureTransition and conformance VerticalDisclosureTransition);
  }

  return result;
}

void type metadata accessor for VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>, type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?), MEMORY[0x1E6981F40]);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)> and conformance TupleView<A>();
    v1 = type metadata accessor for VStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)> and conformance TupleView<A>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>, type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?), MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable(MEMORY[0x1E6981F48], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)> and conformance TupleView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout>, _ClipEffect<Rectangle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout>, _ClipEffect<Rectangle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout>, _ClipEffect<Rectangle>>)
  {
    type metadata accessor for ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout>, type metadata accessor for ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>);
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlainButtonStyle>(255, &lazy cache variable for type metadata for _ClipEffect<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], MEMORY[0x1E697DDA0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout>, _ClipEffect<Rectangle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>)
  {
    _s7SwiftUI7BindingVySbGMaTm_3(255, &lazy cache variable for type metadata for PlaceholderContentView<VerticalDisclosureTransition>, &unk_1EFFAED20, MEMORY[0x1E697FEC0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>);
    }
  }
}

void type metadata accessor for PrimitiveButtonStyleContainerModifier<PlainButtonStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout>, type metadata accessor for ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>();
    v5[1] = MEMORY[0x1E697E040];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type PlaceholderContentView<VerticalDisclosureTransition> and conformance PlaceholderContentView<A>();
    v5[1] = MEMORY[0x1E697EBE0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaceholderContentView<VerticalDisclosureTransition> and conformance PlaceholderContentView<A>()
{
  result = lazy protocol witness table cache variable for type PlaceholderContentView<VerticalDisclosureTransition> and conformance PlaceholderContentView<A>;
  if (!lazy protocol witness table cache variable for type PlaceholderContentView<VerticalDisclosureTransition> and conformance PlaceholderContentView<A>)
  {
    _s7SwiftUI7BindingVySbGMaTm_3(255, &lazy cache variable for type metadata for PlaceholderContentView<VerticalDisclosureTransition>, &unk_1EFFAED20, MEMORY[0x1E697FEC0]);
    result = swift_getWitnessTable(MEMORY[0x1E697FEC8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaceholderContentView<VerticalDisclosureTransition> and conformance PlaceholderContentView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>()
{
  result = lazy protocol witness table cache variable for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>;
  if (!lazy protocol witness table cache variable for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>)
  {
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlainButtonStyle>(255, &lazy cache variable for type metadata for _ClipEffect<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], MEMORY[0x1E697DDA0]);
    result = swift_getWitnessTable(MEMORY[0x1E697DDB0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>);
  }

  return result;
}

unsigned __int8 *FlipForRTLEnvironment.value.getter@<X0>(void *a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = Value[1];
  v7 = *Value;

  result = AGGraphGetValue();
  if (*result != 2)
  {
    result = EnvironmentValues.layoutDirection.setter();
    v4 = v7;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

double FlipForRTLContainerPosition.value.getter(unint64_t a1, uint64_t a2)
{
  v2 = *AGGraphGetValue();
  if (v2 == 2 || (Value = AGGraphGetValue(), result = 0.0, *Value != (v2 & 1)))
  {
    type metadata accessor for CGPoint(0);
    return *AGGraphGetValue();
  }

  return result;
}

void protocol witness for _RendererEffect.effectValue(size:) in conformance ArchivesInteractiveControlsEffect(uint64_t a1@<X8>)
{
  *a1 = 8;
  *(a1 + 8) = 0;
  *(a1 + 12) = 2;
}

unint64_t lazy protocol witness table accessor for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect()
{
  result = lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect;
  if (!lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivesInteractiveControlsEffect, &type metadata for ArchivesInteractiveControlsEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect;
  if (!lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivesInteractiveControlsEffect, &type metadata for ArchivesInteractiveControlsEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect;
  if (!lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivesInteractiveControlsEffect, &type metadata for ArchivesInteractiveControlsEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect;
  if (!lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivesInteractiveControlsEffect, &type metadata for ArchivesInteractiveControlsEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect;
  if (!lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ArchivesInteractiveControlsEffect, &type metadata for ArchivesInteractiveControlsEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect);
  }

  return result;
}

void SwiftUISearchController.customAccessoryContent.setter(uint64_t a1)
{
  v2 = v1;
  v3 = &v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent];
  v4 = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent + 48];
  v16[2] = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent + 32];
  v16[3] = v4;
  v16[4] = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent + 64];
  v17 = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent + 80];
  v5 = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent + 16];
  v16[0] = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent];
  v16[1] = v5;
  v6 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v6;
  v7 = *(a1 + 48);
  *(v3 + 2) = *(a1 + 32);
  *(v3 + 3) = v7;
  *(v3 + 4) = *(a1 + 64);
  *(v3 + 10) = *(a1 + 80);
  outlined destroy of ToolbarStorage.SearchItem?(v16, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView, MEMORY[0x1E69E6720], type metadata accessor for Spacer?);
  SwiftUISearchController.updateCustomAccessory()();
  SwiftUISearchController.updateCustomAccessoryRecoveryGesture()();
  if (*v3 || (v8 = &v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_suggestions], v9 = v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_suggestions + 8], v9 == 255))
  {
    [v2 _setSearchSuggestionGroups_];
    return;
  }

  v10 = *v8;
  v11 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    outlined copy of PlatformItemCollection.Storage(*v8, 1);
  }

  else
  {
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v13 = *WeakValue;

      outlined consume of PlatformItemCollection?(v10, v9);
      v10 = v13;
    }

    else
    {
      outlined consume of PlatformItemCollection?(v10, v9);
      v10 = MEMORY[0x1E69E7CC0];
    }
  }

  v15 = *(*&v2[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_coordinator] + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_usingExplicitSuggestionPlacement);
  SearchSuggestionsVisitor.visit(platformItemList:)(v10);

  if (v11 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_11;
    }

LABEL_13:
    v14.super.isa = 0;
    goto LABEL_14;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_11:
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _UISearchSuggestionItemGroup, 0x1E69DD6D8);
  v14.super.isa = Array._bridgeToObjectiveC()().super.isa;
LABEL_14:

  [v2 _setSearchSuggestionGroups_];
}

void closure #1 in SwiftUISearchController.update(to:)(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = *(a1 + 48);
  v7 = a3;
  v21[2] = *(a1 + 32);
  v21[3] = v6;
  v21[4] = *(a1 + 64);
  v22 = *(a1 + 80);
  v8 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v8;
  v9 = SwiftUISearchController._searchBar.getter();
  v10 = *(a1 + 48);
  v17 = *(a1 + 32);
  v18 = v10;
  v19 = *(a1 + 64);
  v20 = *(a1 + 80);
  v11 = *(a1 + 16);
  v15 = *a1;
  v16 = v11;
  outlined init with copy of BoundInputsView(v21, v23);
  UIKitSearchBar.updateCustomScopeBarView(_:)(&v15);

  v23[2] = v17;
  v23[3] = v18;
  v23[4] = v19;
  v24 = v20;
  v23[0] = v15;
  v23[1] = v16;
  outlined destroy of ToolbarStorage.SearchItem?(v23, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView, MEMORY[0x1E69E6720], type metadata accessor for Spacer?);
  v12 = *(a2 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController____lazy_storage____searchBar);
  v13 = v12[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarVisibility];
  v12[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarVisibility] = a3;
  if ((v7 == 1) == (v13 != 1))
  {
    v14 = v12;
    UIKitSearchBar.updateCustomScopeBarIsActive(_:isAnimated:)(v7 == 1, 1);
  }
}

void @objc SwiftUISearchController.viewDidAppear(_:)(void *a1, uint64_t a2, uint64_t a3, const char **a4, void (*a5)(id))
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for SwiftUISearchController(0);
  v8 = *a4;
  v9 = v11.receiver;
  v10 = objc_msgSendSuper2(&v11, v8, a3);
  a5(v10);
}

void closure #1 in SwiftUISearchController.updateCustomAccessory()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *&Strong[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryHost];
    *&Strong[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryHost] = 0;
  }
}

void SwiftUISearchController.didChangeCustomAccessoryRecoveryGesture(oldValue:)(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryRecoveryGesture;
  v4 = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryRecoveryGesture];
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_5;
  }

  v5 = a1;
  if (!v4 || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITapGestureRecognizer, 0x1E69DD060), v6 = v4, v5 = v5, v7 = static NSObject.== infix(_:_:)(), v5, v6, (v7 & 1) == 0))
  {
    v8 = v5;
    v9 = [v2 searchBar];
    v10 = [v9 searchTextField];

    [v10 removeGestureRecognizer_];
    v4 = *&v2[v3];
    if (v4)
    {
LABEL_5:
      v11 = v4;
      v12 = [v2 searchBar];
      v13 = [v12 searchTextField];

      [v13 addGestureRecognizer_];
    }
  }
}

Swift::Void __swiftcall SwiftUISearchController.handleCustomAccessoryRecoveryGesture()()
{
  v1 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = MEMORY[0x1E69E6720];
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - v10;
  v12 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_searchItem;
  swift_beginAccess();
  outlined init with copy of ToolbarStorage.SearchItem?(v0 + v12, v11, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, v8, _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  v13 = type metadata accessor for ToolbarStorage.SearchItem(0);
  if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of ToolbarStorage.SearchItem?(v11, v7, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
    MEMORY[0x18D00ACC0](v5);
    if (*v3 != 2)
    {
      v14 = v3[2];
      if (v14 != 2 || (v14 = v3[3], v14 != 2))
      {
        if (v14)
        {
          *v3 = 1;
        }
      }
    }

    dispatch thunk of AnyLocation.set(_:transaction:)();
    _s7SwiftUI16SearchFieldStateVWOhTm_1(v3, type metadata accessor for SearchFieldState);
    outlined destroy of ToolbarStorage.SearchItem?(v7, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
    _s7SwiftUI16SearchFieldStateVWOhTm_1(v11, type metadata accessor for ToolbarStorage.SearchItem);
  }
}

double SearchSuggestionsVisitor.visit(platformItemList:)(uint64_t a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  v5 = (v4 + 16);
  visit #1 (_:allowSections:) in SearchSuggestionsVisitor.visit(platformItemList:)(a1, *v2 & 1, v4, v2);
  swift_beginAccess();
  v6 = *v5;
  if (v6 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      type metadata accessor for UISearchSuggestion();

      _bridgeCocoaArray<A>(_:)();

      goto LABEL_4;
    }

LABEL_9:

    return result;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  type metadata accessor for UISearchSuggestion();
LABEL_4:
  v7 = objc_allocWithZone(MEMORY[0x1E69DD6D8]);
  type metadata accessor for UISearchSuggestion();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 initWithHeaderTitle:0 suggestionItems:isa];

  MEMORY[0x18D00CC30]();
  if (*((*(v2 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v9 = *(v2 + 8);

  *(v2 + 8) = v9;
  return result;
}

id SwiftUISearchController.updateToolbarBehavior(to:)(id result)
{
  v2 = result;
  v3 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_lastToolbarBehavior;
  v4 = v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_lastToolbarBehavior];
  if (v4 == 3 || v4 != result)
  {
    if (result)
    {
      if (result == 1)
      {
        result = [v1 setHidesNavigationBarDuringPresentation_];
        goto LABEL_11;
      }
    }

    else
    {
      static Semantics.v7.getter();
      if (isLinkedOnOrAfter(_:)())
      {
        result = [v1 _resetHidesNavigationBarDuringPresentation];
        goto LABEL_11;
      }
    }

    result = [v1 setHidesNavigationBarDuringPresentation_];
  }

LABEL_11:
  v1[v3] = v2;
  return result;
}

void closure #1 in SwiftUISearchController.enqueueIsActiveUpdate(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    SwiftUISearchController.flushPendingIsActive()();
  }
}

Swift::Void __swiftcall SwiftUISearchController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SwiftUISearchController(0);
  objc_msgSendSuper2(&v6, sel_viewDidLayoutSubviews);
  v2 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_pendingIsActiveAnimated;
  v3 = v0[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_pendingIsActiveAnimated];
  if (v3 != 2)
  {
    v4 = SwiftUISearchController._searchBar.getter();
    v5 = v4[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_isActive];
    v4[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_isActive] = v3 & 1;
    if (v5 != (v3 & 1))
    {
      UIKitSearchBar.updateCustomScopeBarIsActive(_:isAnimated:)(v3 & 1, 1);
    }
  }

  v1[v2] = 2;
}

uint64_t closure #1 in SwiftUISearchController.searchController(_:willChangeTo:)(void *a1, char a2)
{
  v3 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0]();
  v5[1] = a2 & 1;
  dispatch thunk of AnyLocation.set(_:transaction:)();
  return _s7SwiftUI16SearchFieldStateVWOhTm_1(v5, type metadata accessor for SearchFieldState);
}

Swift::Void __swiftcall SwiftUISearchController.willPresentSearchController(_:)(UISearchController *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v36[-v12];
  *(v2 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_pendingIsActiveAnimated) = 1;
  v14 = [(UISearchController *)a1 searchBar];
  v15 = [(UISearchBar *)v14 searchTextField];

  v16 = [(UISearchTextField *)v15 text];
  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v22 = 0;
  }

  else
  {
LABEL_6:
    v23 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_searchItem;
    swift_beginAccess();
    outlined init with copy of ToolbarStorage.SearchItem?(v2 + v23, v13, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
    v24 = type metadata accessor for ToolbarStorage.SearchItem(0);
    if ((*(*(v24 - 8) + 48))(v13, 1, v24) == 1)
    {
      __break(1u);
      goto LABEL_21;
    }

    _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0]();
    v25 = *(v4 + 36);
    _s7SwiftUI16SearchFieldStateVWOhTm_1(v13, type metadata accessor for ToolbarStorage.SearchItem);
    v26 = AttributedString.isEmpty.getter();
    v27 = type metadata accessor for AttributedString();
    (*(*(v27 - 8) + 8))(&v6[v25], v27);
    v22 = v26 ^ 1;
  }

  v28 = [(UISearchTextField *)v15 tokens];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISearchToken, 0x1E69DCF30);
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v29 >> 62)
  {
    v31 = __CocoaSet.count.getter();

    if (v31)
    {
LABEL_10:

      if ((v22 & 1) == 0)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v30)
    {
      goto LABEL_10;
    }
  }

  v32 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_searchItem;
  swift_beginAccess();
  outlined init with copy of ToolbarStorage.SearchItem?(v2 + v32, v9, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  v33 = type metadata accessor for ToolbarStorage.SearchItem(0);
  if ((*(*(v33 - 8) + 48))(v9, 1, v33) == 1)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v34 = *&v9[*(v33 + 20)];
  if (v34)
  {

    _s7SwiftUI16SearchFieldStateVWOhTm_1(v9, type metadata accessor for ToolbarStorage.SearchItem);
    v35 = *(v34 + 16);

    if (!(v22 & 1 | (v35 != 0)))
    {
      return;
    }

LABEL_11:
    *(*(v2 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_coordinator) + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_needsStateRestoration) = 1;
    return;
  }

  _s7SwiftUI16SearchFieldStateVWOhTm_1(v9, type metadata accessor for ToolbarStorage.SearchItem);
  if (v22)
  {
    goto LABEL_11;
  }
}

id SwiftUISearchController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUISearchController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL protocol witness for UIKitSearchBarCoordinatorDelegate.coordinatorIsAnimating(_:) in conformance UISearchController()
{
  v1 = [v0 transitionCoordinator];
  if (v1)
  {
    swift_unknownObjectRelease();
  }

  return v1 != 0;
}

Swift::Void __swiftcall SwiftUISearchController.presentationControllerWillDismiss(_:)(UIPresentationController a1)
{
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for SearchFieldConfiguration(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryHost);
  if (v11)
  {
    v12 = [v11 popoverPresentationController];
    if (v12)
    {
      v13 = v12;
      v14 = v1;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPresentationController, 0x1E69DCDE8);
      v21 = v13;
      v15 = a1.super.isa;
      v16 = static NSObject.== infix(_:_:)();

      if (v16)
      {
        v17 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_configuration;
        swift_beginAccess();
        outlined init with copy of ToolbarStorage.SearchItem?(v14 + v17, v5, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
        if ((*(v7 + 48))(v5, 1, v6) == 1)
        {

          outlined destroy of ToolbarStorage.SearchItem?(v5, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
        }

        else
        {
          v19 = outlined init with take of ToolbarStorage.SearchItem(v5, v10, type metadata accessor for SearchFieldConfiguration);
          MEMORY[0x1EEE9AC00](v19);
          *(&v20 - 2) = v10;
          static Animation.default.getter();
          withAnimation<A>(_:_:)();

          _s7SwiftUI16SearchFieldStateVWOhTm_1(v10, type metadata accessor for SearchFieldConfiguration);
        }
      }

      else
      {
        v18 = v21;
      }
    }
  }
}

uint64_t closure #1 in SwiftUISearchController.presentationControllerWillDismiss(_:)(void *a1)
{
  v1 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v8 - v5;
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0]();
  _s7SwiftUI24SearchFieldConfigurationVWOcTm_0(v6, v3, type metadata accessor for SearchFieldState);
  if (*v3 != 2)
  {
    *v3 = 0;
  }

  if (!specialized static SearchFieldState.== infix(_:_:)(v6, v3))
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  _s7SwiftUI16SearchFieldStateVWOhTm_1(v3, type metadata accessor for SearchFieldState);
  return _s7SwiftUI16SearchFieldStateVWOhTm_1(v6, type metadata accessor for SearchFieldState);
}

void visit #1 (_:allowSections:) in SearchSuggestionsVisitor.visit(platformItemList:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v7 = type metadata accessor for PlatformItemList.Item(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v16 = *(v8 + 72);
    v44 = a4;
    v45 = v16;
    do
    {
      _s7SwiftUI24SearchFieldConfigurationVWOcTm_0(v15, v13, type metadata accessor for PlatformItemList.Item);
      v17 = *(v13 + 42);
      if (v17 >> 62 == 3 && (v17 & 0xFFFFFFFFFFFFFFFCLL) != 0x3FFFFFFFCLL)
      {
        v22 = vorrq_s8(vorrq_s8(*(v13 + 344), *(v13 + 376)), vorrq_s8(*(v13 + 360), *(v13 + 392)));
        v23 = vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
        v24 = v17 == 0xC000000000000000 && *(v13 + 38) == 2;
        v25 = v24 && (*(v13 + 40) | *(v13 + 41) | *(v13 + 39)) == 0;
        v26 = v25 && *&v23 == 0;
        if (v26 && (v46 & 1) != 0)
        {
          v27 = *(a3 + 16);
          if (v27 >> 62)
          {
            if (__CocoaSet.count.getter())
            {
LABEL_28:
              if (*(a3 + 16) >> 62)
              {
                type metadata accessor for UISearchSuggestion();

                _bridgeCocoaArray<A>(_:)();
              }

              else
              {
                swift_bridgeObjectRetain_n();
                dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
                type metadata accessor for UISearchSuggestion();
              }

              v28 = objc_allocWithZone(MEMORY[0x1E69DD6D8]);
              type metadata accessor for UISearchSuggestion();
              isa = Array._bridgeToObjectiveC()().super.isa;

              [v28 initWithHeaderTitle:0 suggestionItems:isa];

              MEMORY[0x18D00CC30]();
              if (*((*(a4 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              *(a3 + 16) = MEMORY[0x1E69E7CC0];
            }
          }

          else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          if (*v13)
          {
            v30 = [*v13 string];
            v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v33 = v32;

            v34 = *(v13 + 117);
            if (v34)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v31 = 0;
            v33 = 0;
            v34 = *(v13 + 117);
            if (v34)
            {
LABEL_35:
              visit #1 (_:allowSections:) in SearchSuggestionsVisitor.visit(platformItemList:)(v34, 0, a3, a4);
            }
          }

          v35 = *(a3 + 16);
          if (v35 >> 62)
          {
            if (!__CocoaSet.count.getter())
            {
              goto LABEL_55;
            }

LABEL_38:
            v36 = *(a3 + 16);
            if (v36 >> 62)
            {
              v42 = v36 & 0xFFFFFFFFFFFFFF8;
              if (v36 < 0)
              {
                v42 = *(a3 + 16);
              }

              v43 = v42;
              type metadata accessor for UISearchSuggestion();

              _bridgeCocoaArray<A>(_:)();
            }

            else
            {
              swift_bridgeObjectRetain_n();
              dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
              type metadata accessor for UISearchSuggestion();
            }

            if (v33)
            {
              v37 = MEMORY[0x18D00C850](v31, v33);
            }

            else
            {
              v37 = 0;
            }

            v40 = objc_allocWithZone(MEMORY[0x1E69DD6D8]);
            type metadata accessor for UISearchSuggestion();
            v41 = Array._bridgeToObjectiveC()().super.isa;

            [v40 initWithHeaderTitle:v37 suggestionItems:v41];

            a4 = v44;
            MEMORY[0x18D00CC30]();
            if (*((*(a4 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }

          else
          {
            if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_38;
            }

LABEL_55:

            a4 = v44;
          }

          _s7SwiftUI16SearchFieldStateVWOhTm_1(v13, type metadata accessor for PlatformItemList.Item);
          *(a3 + 16) = MEMORY[0x1E69E7CC0];

          v16 = v45;
          goto LABEL_4;
        }
      }

      _s7SwiftUI24SearchFieldConfigurationVWOcTm_0(v13, v10, type metadata accessor for PlatformItemList.Item);
      v19 = type metadata accessor for UIKitSearchSuggestion(0);
      v20 = objc_allocWithZone(v19);
      if (*v10 && ([*v10 string], *(v10 + 52) > 1uLL))
      {
        _s7SwiftUI24SearchFieldConfigurationVWOcTm_0(v10, v20 + OBJC_IVAR____TtC7SwiftUI21UIKitSearchSuggestion_platformItem, type metadata accessor for PlatformItemList.Item);
        v47.receiver = v20;
        v47.super_class = v19;
        v38 = objc_msgSendSuper2(&v47, sel_init);
        _s7SwiftUI16SearchFieldStateVWOhTm_1(v10, type metadata accessor for PlatformItemList.Item);
        swift_beginAccess();
        v39 = v38;
        MEMORY[0x18D00CC30]();
        if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v16 = v45;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();

        v21 = *(v13 + 117);
        if (!v21)
        {
          goto LABEL_3;
        }
      }

      else
      {
        _s7SwiftUI16SearchFieldStateVWOhTm_1(v10, type metadata accessor for PlatformItemList.Item);
        swift_deallocPartialClassInstance();
        v21 = *(v13 + 117);
        if (!v21)
        {
          goto LABEL_3;
        }
      }

      visit #1 (_:allowSections:) in SearchSuggestionsVisitor.visit(platformItemList:)(v21, 0, a3, a4);
LABEL_3:
      _s7SwiftUI16SearchFieldStateVWOhTm_1(v13, type metadata accessor for PlatformItemList.Item);
LABEL_4:
      v15 += v16;
      --v14;
    }

    while (v14);
  }
}

uint64_t UIKitSearchSuggestion.iconImage.getter()
{
  v1 = type metadata accessor for PlatformItemList.Item(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI24SearchFieldConfigurationVWOcTm_0(v0 + OBJC_IVAR____TtC7SwiftUI21UIKitSearchSuggestion_platformItem, v3, type metadata accessor for PlatformItemList.Item);
  v4 = *(v3 + 13);
  v5 = *(v3 + 11);
  v35 = *(v3 + 12);
  v36 = v4;
  v6 = *(v3 + 13);
  v37[0] = *(v3 + 14);
  *(v37 + 11) = *(v3 + 235);
  v7 = *(v3 + 9);
  v8 = *(v3 + 7);
  v31 = *(v3 + 8);
  v32 = v7;
  v9 = *(v3 + 9);
  v10 = *(v3 + 11);
  v33 = *(v3 + 10);
  v34 = v10;
  v11 = *(v3 + 5);
  v28[0] = *(v3 + 4);
  v28[1] = v11;
  v12 = *(v3 + 7);
  v14 = *(v3 + 4);
  v13 = *(v3 + 5);
  v29 = *(v3 + 6);
  v30 = v12;
  v43[3] = v35;
  v44 = v6;
  v45[0] = *(v3 + 14);
  *(v45 + 11) = *(v3 + 235);
  v42 = v31;
  v43[0] = v9;
  v43[1] = v33;
  v43[2] = v5;
  v38 = v14;
  v39 = v13;
  v40 = v29;
  v41 = v8;
  v15 = 0;
  if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v38) != 1)
  {
    if (v44)
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v15 = swift_dynamicCastObjCClassUnconditional();
    }

    else
    {
      v26 = v42;
      v27[0] = v43[0];
      *(v27 + 12) = *(v43 + 12);
      v22 = v38;
      v23 = v39;
      v24 = v40;
      v25 = v41;
      v16 = *(v3 + 6);
      v17 = MEMORY[0x1E6981730];
      v18 = MEMORY[0x1E69E6720];
      outlined init with copy of ToolbarStorage.SearchItem?(v28, v20, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730], MEMORY[0x1E69E6720], type metadata accessor for Spacer?);
      outlined init with copy of GraphicsImage(&v38, v20);
      v15 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(0, 0, v16);
      outlined destroy of ToolbarStorage.SearchItem?(v28, &lazy cache variable for type metadata for Image.Resolved?, v17, v18, type metadata accessor for Spacer?);
      v20[4] = v26;
      v21[0] = v27[0];
      *(v21 + 12) = *(v27 + 12);
      v20[0] = v22;
      v20[1] = v23;
      v20[2] = v24;
      v20[3] = v25;
      outlined destroy of GraphicsImage(v20);
    }
  }

  _s7SwiftUI16SearchFieldStateVWOhTm_1(v3, type metadata accessor for PlatformItemList.Item);
  return v15;
}

uint64_t type metadata completion function for UIKitSearchSuggestion(uint64_t a1)
{
  result = type metadata accessor for PlatformItemList.Item(319);
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

uint64_t specialized UIKitToolbarStrategy.configureNavigationItem(_:searchItem:controller:)(void *a1, uint64_t a2)
{
  v23 = a1;
  v3 = MEMORY[0x1E69E6720];
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  outlined init with copy of ToolbarStorage.SearchItem?(a2, &v23 - v11, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, v3, _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  v13 = type metadata accessor for ToolbarStorage.SearchItem(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v12, 1, v13) == 1)
  {
    outlined destroy of ToolbarStorage.SearchItem?(v12, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
    v15 = 8;
  }

  else
  {
    v16 = *&v12[*(v13 + 36) + 8];

    _s7SwiftUI16SearchFieldStateVWOhTm_1(v12, type metadata accessor for ToolbarStorage.SearchItem);
    type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>();
    if (v16)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    v15 = v24;
  }

  outlined init with copy of ToolbarStorage.SearchItem?(a2, v9, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  if (v14(v9, 1, v13) == 1)
  {
    outlined destroy of ToolbarStorage.SearchItem?(v9, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
    v17 = 0;
    if (v15 == 8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v18 = *&v9[*(v13 + 36) + 8];

    _s7SwiftUI16SearchFieldStateVWOhTm_1(v9, type metadata accessor for ToolbarStorage.SearchItem);
    type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior>, &type metadata for EnvironmentValues.__Key_searchToolbarBehavior, &protocol witness table for EnvironmentValues.__Key_searchToolbarBehavior, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>();
    if (v18)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    v17 = v25;
    if (v15 == 8)
    {
      goto LABEL_16;
    }
  }

  if ((((v15 & 0xFE) == 2) & v17) != 0)
  {
    v19 = 4;
LABEL_27:
    [v23 setPreferredSearchBarPlacement_];
    goto LABEL_28;
  }

LABEL_16:
  static Semantics.v4.getter();
  v20 = isLinkedOnOrAfter(_:)();
  if (v15 != 8 && (v20 & 1) != 0)
  {
    if (v15 <= 4)
    {
      if ((v15 - 2) < 2)
      {
        v19 = 0;
        goto LABEL_27;
      }

      if (v15 == 4)
      {
        v19 = 3;
        goto LABEL_27;
      }

LABEL_26:
      v19 = 2;
      goto LABEL_27;
    }

    if (v15 != 5 && v15 != 7)
    {
      goto LABEL_26;
    }
  }

LABEL_28:
  static Semantics.v7.getter();
  result = isLinkedOnOrAfter(_:)();
  if (v15 & 0xFE) == 2 && (result)
  {
    outlined init with copy of ToolbarStorage.SearchItem?(a2, v6, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
    if (v14(v6, 1, v13) == 1)
    {
      return outlined destroy of ToolbarStorage.SearchItem?(v6, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
    }

    else
    {
      v22 = v6[*(v13 + 56)];
      result = _s7SwiftUI16SearchFieldStateVWOhTm_1(v6, type metadata accessor for ToolbarStorage.SearchItem);
      if (v22 == 1)
      {
        return [v23 setSearchBarPlacementAllowsExternalIntegration_];
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchScopeActivationKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchScopeActivationKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchScopeActivationKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchScopeActivationKey>, &type metadata for SearchScopeActivationKey, &protocol witness table for SearchScopeActivationKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchScopeActivationKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey>, &type metadata for EnvironmentValues.SearchPresentationToolbarBehaviorKey, &protocol witness table for EnvironmentValues.SearchPresentationToolbarBehaviorKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t type metadata accessor for UISearchSuggestion()
{
  result = lazy cache variable for type metadata for UISearchSuggestion[0];
  if (!lazy cache variable for type metadata for UISearchSuggestion[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, lazy cache variable for type metadata for UISearchSuggestion);
  }

  return result;
}

uint64_t specialized SwiftUISearchController.searchController(_:willChangeTo:)(uint64_t a1)
{
  v2 = v1;
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v5 = v4;
  v32 = *(v4 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v31 - v8;
  v9 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  result = static SemanticFeature.isEnabled.getter();
  if ((result & 1) == 0)
  {
LABEL_4:
    v19 = v5;
    v20 = 1;
    goto LABEL_5;
  }

  if (a1 != 1)
  {
    if (a1 != 2)
    {
      return result;
    }

    goto LABEL_4;
  }

  v19 = v5;
  v20 = 0;
LABEL_5:
  v21 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_searchItem;
  swift_beginAccess();
  v31 = v2;
  outlined init with copy of ToolbarStorage.SearchItem?(v2 + v21, v17, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  v22 = type metadata accessor for ToolbarStorage.SearchItem(0);
  v23 = *(*(v22 - 8) + 48);
  result = v23(v17, 1, v22);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_12;
  }

  MEMORY[0x18D00ACC0](v19);
  v24 = v11[1];
  _s7SwiftUI16SearchFieldStateVWOhTm_1(v11, type metadata accessor for SearchFieldState);
  result = _s7SwiftUI16SearchFieldStateVWOhTm_1(v17, type metadata accessor for ToolbarStorage.SearchItem);
  if (v20 == v24)
  {
    return result;
  }

  outlined init with copy of ToolbarStorage.SearchItem?(v31 + v21, v14, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  result = v23(v14, 1, v22);
  if (result == 1)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v25 = MEMORY[0x1E6981948];
  v26 = v34;
  outlined init with copy of ToolbarStorage.SearchItem?(v14, v34, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  _s7SwiftUI16SearchFieldStateVWOhTm_1(v14, type metadata accessor for ToolbarStorage.SearchItem);
  v35 = 17;
  v27 = v33;
  outlined init with copy of ToolbarStorage.SearchItem?(v26, v33, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, v25, _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  v28 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v29 = v28 + v6;
  v30 = swift_allocObject();
  outlined init with take of Binding<SearchFieldState>(v27, v30 + v28);
  *(v30 + v29) = v20;
  static Update.enqueueAction(reason:_:)();

  return outlined destroy of ToolbarStorage.SearchItem?(v26, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, v25, _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
}

void specialized SwiftUISearchController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_searchItem;
  v2 = type metadata accessor for ToolbarStorage.SearchItem(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController____lazy_storage____searchBar) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_pendingIsActive) = 2;
  *(v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_pendingIsActiveAnimated) = 2;
  *(v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_lastToolbarBehavior) = 3;
  v3 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_coordinator;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for UIKitSearchBarCoordinator(0)) init];
  v4 = v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_suggestions;
  *v4 = 0;
  *(v4 + 8) = -1;
  v5 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_configuration;
  v6 = type metadata accessor for SearchFieldConfiguration(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryHost) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryRecoveryGesture) = 0;
  v7 = v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_allowsSecureDrawing) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t partial apply for closure #1 in SwiftUISearchController.searchController(_:willChangeTo:)()
{
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v2 = *(v1 - 8);
  v3 = (v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  v4 = *(v3 + *(v2 + 64));

  return closure #1 in SwiftUISearchController.searchController(_:willChangeTo:)(v3, v4);
}

uint64_t AnimatedValueTrack<A>.VectorPath.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element(0, a1, a2, a4);

  return static Array._allocateUninitialized(_:)();
}

uint64_t AnimatedValueTrack<A>.VectorPath.isEmpty.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element(255, a2, a3, a4);
  v4 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6340], v4);
  return Collection.isEmpty.getter() & 1;
}

uint64_t AnimatedValueTrack<A>.VectorPath.arcLength.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v73 = type metadata accessor for Curve(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v9 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v57 - v10;
  v78 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(0, a2, a3, v11);
  v59 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v71 = &v57 - v12;
  v14 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element(0, a2, a3, v13);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v57 - v19;
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v21);
  v70 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v69 = &v57 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v68 = &v57 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v77 = &v57 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v74 = AssociatedConformanceWitness;
  v82 = &v57 - v30;
  v79 = AssociatedTypeWitness;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  if (!MEMORY[0x18D00CDE0](a1, v14))
  {
    return (*(v20 + 8))(v82, v79);
  }

  v57 = v16;
  v31 = v9;
  v32 = 0;
  v80 = (v15 + 32);
  v81 = (v15 + 16);
  v62 = (v59 + 4);
  v61 = (v20 + 16);
  v60 = (v31 + 8);
  v76 = (v20 + 8);
  ++v59;
  v33 = 0.0;
  v58 = (v20 + 32);
  v34 = v75;
  v66 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v15;
  v65 = v20;
  v64 = a1;
  v63 = v14;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      (*(v15 + 16))(v34, a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v32, v14);
      v38 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }

    result = _ArrayBuffer._getElementSlowPath(_:)();
    if (v57 != 8)
    {
      break;
    }

    v83 = result;
    (*v81)(v34, &v83, v14);
    swift_unknownObjectRelease();
    v38 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
LABEL_13:
      __break(1u);
      return (*(v20 + 8))(v82, v79);
    }

LABEL_7:
    (*v80)(v17, v34, v14);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v40 = v71;
        v41 = v78;
        (*v62)(v71, v17);
        v42 = *v61;
        v43 = v79;
        (*v61)(v77, v82, v79);
        v44 = v68;
        v42(v68, v40, v43);
        v45 = v69;
        v42(v69, &v40[*(v41 + 36)], v43);
        v46 = v70;
        v42(v70, &v40[*(v41 + 40)], v43);
        v47 = v72;
        v48 = v44;
        v14 = v63;
        v49 = v45;
        a1 = v64;
        Curve.init(start:end:startTangent:endTangent:)(v77, v48, v49, v46, v43, v74, v72);
        v50 = v73;
        Curve.arcLength(at:)(v73, 1.0);
        v52 = v51;
        (*v60)(v47, v50);
        v53 = v82;
        (*v76)(v82, v43);
        v33 = v33 + v52;
        v54 = v43;
        v17 = v66;
        v42(v53, v40, v54);
        v34 = v75;
        v55 = v40;
        v20 = v65;
        v15 = v67;
        (*v59)(v55, v78);
      }
    }

    else
    {
      v35 = v82;
      v36 = v79;
      (*v76)(v82, v79);
      (*v58)(v35, v17, v36);
    }

    ++v32;
    if (v38 == MEMORY[0x18D00CDE0](a1, v14))
    {
      return (*(v20 + 8))(v82, v79);
    }
  }

  __break(1u);
  return result;
}

uint64_t Curve.init(start:end:startTangent:endTangent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v17 = *(*(a5 - 8) + 32);
  v17(a7, a1, a5);
  v14 = type metadata accessor for Curve(0, a5, a6, v13);
  v17(a7 + v14[9], a2, a5);
  v17(a7 + v14[10], a3, a5);
  v15 = a7 + v14[11];

  return (v17)(v15, a4, a5);
}

uint64_t AnimatedValueTrack<A>.VectorPath.value(atArcLength:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v69 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for Curve(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v91 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v65 - v13;
  v86 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(0, a2, a3, v14);
  v76 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v16 = &v65 - v15;
  v18 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element(0, a2, a3, v17);
  v85 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v90 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v92 = &v65 - v21;
  v78 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v22);
  v83 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v82 = &v65 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v81 = &v65 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v87 = &v65 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v65 - v31;
  if ((AnimatedValueTrack<A>.VectorPath.isEmpty.getter(a1, a2, a3, v33) & 1) == 0)
  {
    v80 = v12;
    v66 = a2;
    v67 = a3;
    v79 = AssociatedConformanceWitness;
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v37 = a1;
    v38 = MEMORY[0x18D00CDE0](a1, v18);
    v39 = v16;
    v41 = v85;
    v40 = v86;
    IsNativeType = v32;
    v43 = v37;
    if (!v38)
    {
LABEL_19:
      v63 = v69;
      AnimatedValueTrack<A>.VectorPath.endValue.getter(v43, v66, v67);
      (*(v78 + 8))(IsNativeType, AssociatedTypeWitness);
      return (*(v78 + 56))(v63, 0, 1, AssociatedTypeWitness);
    }

    v44 = 0;
    v88 = (v85 + 32);
    v89 = (v85 + 16);
    v74 = (v76 + 4);
    v73 = (v78 + 16);
    v45 = (v78 + 8);
    v75 = (v91 + 8);
    ++v76;
    v72 = (v78 + 32);
    v91 = IsNativeType;
    v71 = v37;
    v70 = v18;
    v77 = (v78 + 8);
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v41 + 16))(v92, v43 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v44, v18);
        v48 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v68 != 8)
        {
          __break(1u);
          return result;
        }

        v93 = result;
        IsNativeType = result;
        (*v89)(v92, &v93, v18);
        swift_unknownObjectRelease();
        v48 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }
      }

      (*v88)(v90, v92, v18);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          (*v74)(v39, v90, v40);
          v50 = v40;
          v51 = AssociatedTypeWitness;
          v52 = *v73;
          (*v73)(v87, v91, v51);
          v53 = v81;
          v52(v81, v39, v51);
          v54 = v82;
          v52(v82, &v39[*(v50 + 36)], v51);
          v55 = &v39[*(v50 + 40)];
          v56 = v83;
          v52(v83, v55, v51);
          v57 = v84;
          Curve.init(start:end:startTangent:endTangent:)(v87, v53, v54, v56, v51, v79, v84);
          v58 = v80;
          Curve.arcLength(at:)(v80, 1.0);
          if (v59 >= a5)
          {
            Curve.parametricTime(forArcLength:)(v58, a5);
            v64 = v69;
            Curve.value(at:)(v58, v69);
            (*v75)(v57, v58);
            (*v76)(v39, v86);
            (*(v78 + 8))(v91, v51);
            return (*(v78 + 56))(v64, 0, 1, v51);
          }

          v60 = v59;
          (*v75)(v57, v58);
          v45 = v77;
          v61 = v91;
          (*v77)(v91, v51);
          a5 = a5 - v60;
          v52(v61, v39, v51);
          v62 = v86;
          (*v76)(v39, v86);
          AssociatedTypeWitness = v51;
          v40 = v62;
          v41 = v85;
          v43 = v71;
          v18 = v70;
        }
      }

      else
      {
        v46 = v91;
        (*v45)(v91, AssociatedTypeWitness);
        (*v72)(v46, v90, AssociatedTypeWitness);
      }

      v47 = MEMORY[0x18D00CDE0](v43, v18);
      ++v44;
      IsNativeType = v91;
      if (v48 == v47)
      {
        goto LABEL_19;
      }
    }
  }

  v34 = *(v78 + 56);
  v35 = v69;

  return v34(v35, 1, 1, AssociatedTypeWitness);
}

double specialized AnimatedValueTrack<A>.VectorPath.endValue.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0;
  }

  v2 = (a1 + 121);
  result = 0.0;
  do
  {
    v4 = *(v2 - 89);
    v6 = *v2;
    v2 += 96;
    v5 = v6;
    if (v6 == 1)
    {
      result = v4;
    }

    if (!v5)
    {
      result = v4;
    }

    --v1;
  }

  while (v1);
  return result;
}

uint64_t AnimatedValueTrack<A>.VectorPath.endValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v13[-v8];
  v16 = a1;
  swift_getAssociatedConformanceWitness();

  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v14 = a2;
  v15 = a3;
  type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element(255, a2, a3, v10);
  v11 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6328], v11);
  Sequence.reduce<A>(_:_:)();
  (*(v7 + 8))(v9, AssociatedTypeWitness);
}

void AnimatedValueTrack<A>.VectorPath.unitVelocityTangent(atArcLength:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for Curve(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v84 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v64 - v14;
  v86 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(0, a2, a3, v15);
  v75 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v17 = &v64 - v16;
  v19 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element(0, a2, a3, v18);
  v83 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v90 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v91 = &v64 - v22;
  v76 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v23);
  v81 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v80 = &v64 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v85 = &v64 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v87 = &v64 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v64 - v32;
  if (AnimatedValueTrack<A>.VectorPath.isEmpty.getter(a1, a2, a3, v34))
  {
    v35 = *(v76 + 56);

    v35(a4, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v65 = a2;
    v78 = v13;
    v66 = a3;
    v67 = a4;
    v79 = AssociatedConformanceWitness;
    v89 = v33;
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v36 = MEMORY[0x18D00CDE0](a1, v19);
    v77 = v17;
    v37 = v83;
    if (v36)
    {
      v38 = v19;
      v39 = 0;
      v40 = (v83 + 16);
      v88 = (v83 + 32);
      v72 = v75 + 4;
      v41 = (v76 + 16);
      v73 = (v84 + 1);
      v84 = (v76 + 8);
      v74 = (v75 + 1);
      v75 = (v76 + 32);
      v70 = a1;
      v69 = (v83 + 16);
      v71 = AssociatedTypeWitness;
      while (1)
      {
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          (*(v37 + 16))(v91, a1 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v39, v38);
        }

        else
        {
          v57 = _ArrayBuffer._getElementSlowPath(_:)();
          if (v68 != 8)
          {
            goto LABEL_21;
          }

          v92 = v57;
          (*v40)(v91, &v92, v38);
          swift_unknownObjectRelease();
        }

        v43 = v39 + 1;
        v44 = v89;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        v45 = v38;
        (*v88)(v90, v91, v38);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v47 = v77;
            v48 = v86;
            (*v72)(v77, v90, v86);
            v49 = *v41;
            (*v41)(v87, v44, AssociatedTypeWitness);
            v49(v85, v47, AssociatedTypeWitness);
            v50 = v80;
            v49(v80, &v47[*(v48 + 36)], AssociatedTypeWitness);
            v51 = v81;
            v49(v81, &v47[*(v48 + 40)], AssociatedTypeWitness);
            v52 = v82;
            Curve.init(start:end:startTangent:endTangent:)(v87, v85, v50, v51, AssociatedTypeWitness, v79, v82);
            v53 = v78;
            Curve.arcLength(at:)(v78, 1.0);
            if (v54 >= a5)
            {
              Curve.parametricTime(forArcLength:)(v53, a5);
              v59 = v87;
              Curve.velocity(at:)(v53, v87);
              v60 = v79;
              v61 = v71;
              v62 = (*(v79 + 24))(v71, v79);
              (*(v60 + 16))(v61, v60, 1.0 / sqrt(v62));
              (*v73)(v52, v53);
              (*v74)(v47, v86);
              (*(v76 + 8))(v89, v61);
              v63 = v67;
              (*(v76 + 32))(v67, v59, v61);
              (*(v76 + 56))(v63, 0, 1, v61);
              return;
            }

            v55 = v54;
            (*v73)(v52, v53);
            v56 = v89;
            AssociatedTypeWitness = v71;
            (*v84)(v89, v71);
            a5 = a5 - v55;
            v49(v56, v47, AssociatedTypeWitness);
            (*v74)(v47, v86);
            a1 = v70;
            v37 = v83;
            v40 = v69;
            v38 = v45;
          }
        }

        else
        {
          (*v84)(v44, AssociatedTypeWitness);
          (*v75)(v44, v90, AssociatedTypeWitness);
        }

        ++v39;
        if (v43 == MEMORY[0x18D00CDE0](a1, v38))
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
    }

    else
    {
LABEL_18:
      v58 = v67;
      AnimatedValueTrack<A>.VectorPath.endValue.getter(a1, v65, v66);
      (*(v76 + 8))(v89, AssociatedTypeWitness);
      (*(v76 + 56))(v58, 0, 1, AssociatedTypeWitness);
    }
  }
}

uint64_t AnimatedValueTrack<A>.VectorPath.Element.end(previousValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t x3_0@<X3>)
{
  v9 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(0, *(a2 + 16), *(a2 + 24), x3_0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v5, a2, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v10 + 32))(v12, v16, v9);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      (*(*(AssociatedTypeWitness - 8) + 16))(a3, v12, AssociatedTypeWitness);
      return (*(v10 + 8))(v12, v9);
    }

    else
    {
      v22 = swift_getAssociatedTypeWitness();
      return (*(*(v22 - 8) + 16))(a3, a1, v22);
    }
  }

  else
  {
    v21 = swift_getAssociatedTypeWitness();
    return (*(*(v21 - 8) + 32))(a3, v16, v21);
  }
}

uint64_t AnimatedValueTrack<A>.VectorPath.value(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, double a5@<D0>, uint64_t a6@<X3>)
{
  v11 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element(0, a2, a3, a6);
  v54 = *(v11 - 8);
  v12 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v42 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v52 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  if (AnimatedValueTrack<A>.VectorPath.isEmpty.getter(a1, a2, a3, v21))
  {
    v22 = *(v46 + 56);

    return v22(a4, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    if (MEMORY[0x18D00CDE0](a1, v11))
    {
      v43 = v12;
      v24 = 0;
      v50 = (v54 + 16);
      v51 = AssociatedTypeWitness;
      v47 = (v54 + 8);
      v48 = (v46 + 8);
      v49 = (v54 + 32);
      v25 = (v46 + 32);
      v44 = (v46 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v45 = a4;
      while (1)
      {
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          a4 = v53;
          (*(v54 + 16))(v53, a1 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v24, v11);
          AssociatedTypeWitness = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_15;
          }
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          a4 = v53;
          if (v43 != 8)
          {
            __break(1u);
            return result;
          }

          v55 = result;
          (*v50)(v53, &v55, v11);
          swift_unknownObjectRelease();
          AssociatedTypeWitness = v24 + 1;
          if (__OFADD__(v24, 1))
          {
LABEL_15:
            __break(1u);
            break;
          }
        }

        v27 = (*v49)(v13, a4, v11);
        AnimatedValueTrack<A>.VectorPath.Element.duration.getter(v11, v27, v28, v29, v30);
        if (a5 < v34)
        {
          v40 = v45;
          AnimatedValueTrack<A>.VectorPath.Element.value(at:previousValue:)(v20, v11, v45, a5);
          (*v47)(v13, v11);
          v41 = v51;
          (*(v46 + 8))(v20, v51);
          return (*(v46 + 56))(v40, 0, 1, v41);
        }

        AnimatedValueTrack<A>.VectorPath.Element.duration.getter(v11, v34, v31, v32, v33);
        a5 = a5 - v35;
        v36 = v52;
        AnimatedValueTrack<A>.VectorPath.Element.end(previousValue:)(v20, v11, v52, v37);
        (*v47)(v13, v11);
        v38 = v51;
        (*v48)(v20, v51);
        v39 = *v25;
        (*v25)(v20, v36, v38);
        ++v24;
        if (AssociatedTypeWitness == MEMORY[0x18D00CDE0](a1, v11))
        {
          a4 = v45;
          AssociatedTypeWitness = v51;
          v39(v45, v20, v51);
          return (*(v46 + 56))(a4, 0, 1, AssociatedTypeWitness);
        }
      }
    }

    (*(v46 + 32))(a4, v20, AssociatedTypeWitness);
    return (*(v46 + 56))(a4, 0, 1, AssociatedTypeWitness);
  }
}

uint64_t AnimatedValueTrack<A>.VectorPath.Element.duration.getter(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(0, *(a1 + 16), *(a1 + 24), a5);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v5, a1, v12);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      (*(v8 + 32))(v10, v14, v7);
      return (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 8))(v14, AssociatedTypeWitness);
  }

  return result;
}

uint64_t AnimatedValueTrack<A>.VectorPath.Element.value(at:previousValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v54 = a1;
  v55 = a3;
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v52 = &AssociatedConformanceWitness - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v50 = &AssociatedConformanceWitness - v13;
  MEMORY[0x1EEE9AC00](v14);
  v49 = &AssociatedConformanceWitness - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &AssociatedConformanceWitness - v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v53 = type metadata accessor for Curve(0, AssociatedTypeWitness, AssociatedConformanceWitness, v19);
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v21 = &AssociatedConformanceWitness - v20;
  v23 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(0, v8, v7, v22);
  v24 = *(v23 - 1);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &AssociatedConformanceWitness - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &AssociatedConformanceWitness - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30, v4, a2, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return (*(v10 + 32))(v55, v30, AssociatedTypeWitness);
  }

  if (EnumCaseMultiPayload != 1)
  {
    return (*(v10 + 16))(v55, v54, AssociatedTypeWitness);
  }

  v33 = (*(v24 + 32))(v26, v30, v23);
  AnimatedValueTrack<A>.VectorPath.Element.duration.getter(a2, v33, v34, v35, v36);
  v37 = *(v10 + 16);
  if (v38 <= 0.0)
  {
    v37(v55, v26, AssociatedTypeWitness);
    return (*(v24 + 8))(v26, v23);
  }

  else
  {
    v37(v18, v54, AssociatedTypeWitness);
    v54 = v24;
    v39 = v49;
    v37(v49, v26, AssociatedTypeWitness);
    v40 = v50;
    v37(v50, &v26[v23[9]], AssociatedTypeWitness);
    v41 = v52;
    v37(v52, &v26[v23[10]], AssociatedTypeWitness);
    Curve.init(start:end:startTangent:endTangent:)(v18, v39, v40, v41, AssociatedTypeWitness, AssociatedConformanceWitness, v21);
    v42 = v23[11];
    v43 = &v26[v23[12]];
    v44 = v43[32];
    v45 = *(v43 + 1);
    v56 = *v43;
    v57 = v45;
    v58 = v44;
    UnitCurve.value(at:)(a4 / *&v26[v42]);
    v46 = v53;
    Curve.value(at:)(v53, v55);
    (*(v51 + 8))(v21, v46);
    return (*(v54 + 8))(v26, v23);
  }
}

uint64_t AnimatedValueTrack<A>.VectorPath.velocity(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, uint64_t a6@<X3>)
{
  v11 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element(0, a2, a3, a6);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v50 = &v40 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v49 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - v20;
  if (AnimatedValueTrack<A>.VectorPath.isEmpty.getter(a1, a2, a3, v22))
  {
    v23 = *(v44 + 56);

    return v23(a4, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v25 = *(swift_getAssociatedConformanceWitness() + 8);
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    if (a5 >= 0.0)
    {
      v40 = v25;
      v41 = a4;
      if (MEMORY[0x18D00CDE0](a1, v11))
      {
        v26 = 0;
        v47 = (v12 + 32);
        v48 = (v12 + 16);
        v45 = (v12 + 8);
        v46 = (v44 + 8);
        v43 = (v44 + 32);
        do
        {
          IsNativeType = Array._hoistableIsNativeTypeChecked()();
          Array._checkSubscript(_:wasNativeTypeChecked:)();
          if (IsNativeType)
          {
            (*(v12 + 16))(v50, a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v26, v11);
            v28 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_16;
            }
          }

          else
          {
            result = _ArrayBuffer._getElementSlowPath(_:)();
            if (v42 != 8)
            {
              __break(1u);
              return result;
            }

            v51 = result;
            (*v48)(v50, &v51, v11);
            swift_unknownObjectRelease();
            v28 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
LABEL_16:
              __break(1u);
              break;
            }
          }

          v29 = (*v47)(v14, v50, v11);
          AnimatedValueTrack<A>.VectorPath.Element.duration.getter(v11, v29, v30, v31, v32);
          if (a5 < v36)
          {
            a4 = v41;
            AnimatedValueTrack<A>.VectorPath.Element.velocity(at:previousValue:)(v21, v11, v41, a5);
            (*v45)(v14, v11);
            (*(v44 + 8))(v21, AssociatedTypeWitness);
            return (*(v44 + 56))(a4, 0, 1, AssociatedTypeWitness);
          }

          AnimatedValueTrack<A>.VectorPath.Element.duration.getter(v11, v36, v33, v34, v35);
          a5 = a5 - v37;
          v38 = v49;
          AnimatedValueTrack<A>.VectorPath.Element.end(previousValue:)(v21, v11, v49, v39);
          (*v45)(v14, v11);
          (*v46)(v21, AssociatedTypeWitness);
          (*v43)(v21, v38, AssociatedTypeWitness);
          ++v26;
        }

        while (v28 != MEMORY[0x18D00CDE0](a1, v11));
      }

      a4 = v41;
    }

    dispatch thunk of static AdditiveArithmetic.zero.getter();
    (*(v44 + 8))(v21, AssociatedTypeWitness);
    return (*(v44 + 56))(a4, 0, 1, AssociatedTypeWitness);
  }
}

uint64_t AnimatedValueTrack<A>.VectorPath.Element.velocity(at:previousValue:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v56 = a3;
  v49 = a1;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for Curve(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v47 - v11;
  v53 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v48 = &v47 - v25;
  v27 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(0, v7, v6, v26);
  v28 = *(v27 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v47 - v29;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v47 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v34, v55, a2, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v28 + 32))(v30, v34, v27);
      v37 = *&v30[v27[11]];
      v38 = *(v53 + 16);
      if (v37 <= 0.0)
      {
        v38(v56, v30, AssociatedTypeWitness);
      }

      else
      {
        v38(v23, v49, AssociatedTypeWitness);
        v38(v20, v30, AssociatedTypeWitness);
        v38(v17, &v30[v27[9]], AssociatedTypeWitness);
        v38(v14, &v30[v27[10]], AssociatedTypeWitness);
        v39 = v50;
        v40 = AssociatedConformanceWitness;
        Curve.init(start:end:startTangent:endTangent:)(v23, v20, v17, v14, AssociatedTypeWitness, AssociatedConformanceWitness, v50);
        v41 = &v30[v27[12]];
        v42 = v41[32];
        v43 = *(v41 + 1);
        v57 = *v41;
        v58 = v43;
        v59 = v42;
        UnitCurve.value(at:)(a4 / v37);
        v44 = v48;
        v45 = v52;
        Curve.velocity(at:)(v52, v48);
        (*(v51 + 8))(v39, v45);
        VectorArithmetic.scaled(by:)(AssociatedTypeWitness, v40, v56, 1.0 / v37);
        (*(v53 + 8))(v44, AssociatedTypeWitness);
      }

      return (*(v28 + 8))(v30, v27);
    }

    else
    {
      return dispatch thunk of static AdditiveArithmetic.zero.getter();
    }
  }

  else
  {
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    return (*(v53 + 8))(v34, AssociatedTypeWitness);
  }
}

uint64_t AnimatedValueTrack<A>.VectorPath.move(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element(0, *(a2 + 16), *(a2 + 24), a4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v7, a1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Array();
  return Array.append(_:)();
}

uint64_t AnimatedValueTrack<A>.VectorPath.addCurve(to:startTangent:endTangent:duration:timingCurve:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, double a6)
{
  v33 = a3;
  v31 = a1;
  v32 = a2;
  v8 = *(a5 + 24);
  v29 = *(a5 + 16);
  v9 = v29;
  v30 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - v18;
  v21 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element(0, v9, v8, v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v27 - v22;
  LOBYTE(v8) = *(a4 + 32);
  v24 = *(v11 + 16);
  v25 = *a4;
  v27 = a4[1];
  v28 = v25;
  v24(v19, v31, AssociatedTypeWitness);
  v24(v16, v32, AssociatedTypeWitness);
  v24(v13, v33, AssociatedTypeWitness);
  v34[1] = v27;
  v34[0] = v28;
  v35 = v8;
  AnimatedValueTrack<A>.VectorPath.Element.CurveSegment.init(to:startTangent:endTangent:duration:timingCurve:)(v19, v16, v13, v34, v29, v30, v23, a6);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Array();
  return Array.append(_:)();
}

__n128 AnimatedValueTrack<A>.VectorPath.Element.CurveSegment.init(to:startTangent:endTangent:duration:timingCurve:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v24 = *(a4 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(*(AssociatedTypeWitness - 8) + 32);
  v22 = *(a4 + 16);
  v23 = *a4;
  v17(a7, a1, AssociatedTypeWitness);
  v19 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(0, a5, a6, v18);
  v17(a7 + v19[9], a2, AssociatedTypeWitness);
  v17(a7 + v19[10], a3, AssociatedTypeWitness);
  *(a7 + v19[11]) = a8;
  v20 = a7 + v19[12];
  result = v23;
  *v20 = v23;
  *(v20 + 16) = v22;
  *(v20 + 32) = v24;
  return result;
}

__n128 specialized AnimatedValueTrack<A>.VectorPath.addLine(to:duration:timingCurve:)(uint64_t a1, double a2, double a3, double a4)
{
  v9 = *v4;
  v10 = specialized AnimatedValueTrack<A>.VectorPath.endValue.getter(*v4);
  v12 = v11;
  v17 = *a1;
  v18 = *(a1 + 16);
  v19 = *(a1 + 32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
  }

  v14 = *(v9 + 16);
  v13 = *(v9 + 24);
  if (v14 >= v13 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v9);
  }

  *(v9 + 16) = v14 + 1;
  v15 = v9 + 96 * v14;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  *(v15 + 48) = a2 - v10;
  *(v15 + 56) = a3 - v12;
  *(v15 + 64) = a2 - v10;
  *(v15 + 72) = a3 - v12;
  *(v15 + 80) = a4;
  result = v17;
  *(v15 + 120) = v19;
  *(v15 + 104) = v18;
  *(v15 + 88) = v17;
  *(v15 + 121) = 1;
  *v4 = v9;
  return result;
}

uint64_t AnimatedValueTrack<A>.VectorPath.addLine(to:duration:timingCurve:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v27 = a3;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - v19;
  v26 = *(a2 + 32);
  AnimatedValueTrack<A>.VectorPath.endValue.getter(*v5, v10, v9);
  swift_getAssociatedConformanceWitness();
  v21 = *a2;
  v24 = *(a2 + 16);
  v25 = v21;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v28[1] = v24;
  v28[0] = v25;
  v29 = v26;
  AnimatedValueTrack<A>.VectorPath.addCurve(to:startTangent:endTangent:duration:timingCurve:)(a1, v17, v14, v28, v27, a4);
  v22 = *(v12 + 8);
  v22(v14, AssociatedTypeWitness);
  v22(v17, AssociatedTypeWitness);
  return (v22)(v20, AssociatedTypeWitness);
}

uint64_t AnimatedValueTrack<A>.VectorPath.hold(for:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element(0, *(a1 + 16), *(a1 + 24), a5);
  MEMORY[0x1EEE9AC00](v6);
  *(&v9 - v7) = a2;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Array();
  return Array.append(_:)();
}

uint64_t static AnimatedValueTrack<A>.VectorPath.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element(0, a3, a4, a4);
  swift_getWitnessTable(protocol conformance descriptor for AnimatedValueTrack<A><A>.VectorPath.Element, v4);

  return static Array<A>.== infix(_:_:)();
}

uint64_t AnimatedValueTrack<A>.VectorPath.update(value:mix:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, double), double a6, double a7)
{
  v33 = a2;
  v34 = a5;
  v35 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = type metadata accessor for Optional();
  v12 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v14 = &v32 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v32 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v32 - v26;
  v34(v33, a3, a4, a7);
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v12 + 8))(v14, v32);
  }

  (*(v15 + 32))(v27, v14, AssociatedTypeWitness);
  (*(a4 + 24))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = *(AssociatedConformanceWitness + 8);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v33 = a3;
  v30 = *(v15 + 8);
  v30(v18, AssociatedTypeWitness);
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, AssociatedConformanceWitness, v24, a6);
  v30(v21, AssociatedTypeWitness);
  v31 = (*(a4 + 40))(v36, v33, a4);
  dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
  v30(v24, AssociatedTypeWitness);
  v31(v36, 0);
  return (v30)(v27, AssociatedTypeWitness);
}

void AnimatedValueTrack<A>.VectorPath.duration.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element(0, a2, a3, a4);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v22 - v9;
  if (MEMORY[0x18D00CDE0](a1, v5, v8))
  {
    v11 = 0;
    v12 = 0.0;
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v6 + 16))(v10, a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, v5);
        v18 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v21 = _ArrayBuffer._getElementSlowPath(_:)();
        if (v7 != 8)
        {
          __break(1u);
          return;
        }

        v23 = v21;
        (*(v6 + 16))(v10, &v23, v5);
        swift_unknownObjectRelease();
        v18 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_10:
          __break(1u);
          return;
        }
      }

      AnimatedValueTrack<A>.VectorPath.Element.duration.getter(v5, v17, v14, v15, v16);
      v20 = v19;
      (*(v6 + 8))(v10, v5);
      v12 = v12 + v20;
      ++v11;
    }

    while (v18 != MEMORY[0x18D00CDE0](a1, v5));
  }
}

uint64_t static AnimatedValueTrack<A>.VectorPath.Element.CurveSegment.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (v9 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(0, a3, a4, v8), (dispatch thunk of static Equatable.== infix(_:_:)()) && (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && *(a1 + *(v9 + 44)) == *(a2 + *(v9 + 44)))
  {
    v10 = static UnitCurve.== infix(_:_:)();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t instantiation function for generic protocol witness table for AnimatedValueTrack<A><A>.VectorPath(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for AnimatedValueTrack<A><A>.VectorPath);
  *(a1 + 8) = result;
  return result;
}

uint64_t Curve.value(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[3] = a2;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v27 - v15;
  v17 = v14 * v14 * v14;
  v19 = *(v18 + 44);
  v27[1] = *(v18 + 40);
  v27[2] = v19;
  v20 = v14 * v14 * 3.0;
  v21 = v20 - (v17 + v17);
  v22 = v17 - (v14 * v14 + v14 * v14) + v14;
  v23 = v17 - v14 * v14;
  v24 = *(v18 + 24);
  v27[0] = v2;
  VectorArithmetic.scaled(by:)(v3, v24, v9, v17 + v17 - v20 + 1.0);
  VectorArithmetic.scaled(by:)(v3, v24, v6, v21);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v25 = *(v4 + 8);
  v25(v6, v3);
  v25(v9, v3);
  VectorArithmetic.scaled(by:)(v3, v24, v9, v22);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v25(v9, v3);
  v25(v12, v3);
  VectorArithmetic.scaled(by:)(v3, v24, v12, v23);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v25(v12, v3);
  return (v25)(v16, v3);
}

uint64_t Curve.velocity(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[3] = a2;
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v26[0] = v26 - v14;
  v16 = *(v15 + 44);
  v26[1] = *(v15 + 40);
  v26[2] = v16;
  v17 = v13 * v13 * 6.0;
  v18 = v13 * 6.0 - v17;
  v19 = v13 * v13 * 3.0;
  v20 = v19 + v13 * -4.0 + 1.0;
  v21 = v19 - (v13 + v13);
  v22 = *(v15 + 24);
  VectorArithmetic.scaled(by:)(v2, v22, v8, v17 - v13 * 6.0);
  VectorArithmetic.scaled(by:)(v2, v22, v5, v18);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v23 = *(v3 + 8);
  v23(v5, v2);
  v23(v8, v2);
  VectorArithmetic.scaled(by:)(v2, v22, v8, v20);
  v24 = v26[0];
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v23(v8, v2);
  v23(v11, v2);
  VectorArithmetic.scaled(by:)(v2, v22, v11, v21);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v23(v11, v2);
  return (v23)(v24, v2);
}

uint64_t static AnimatedValueTrack<A>.VectorPath.Element.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a1;
  v52 = a2;
  v6 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(0, a3, a4, a4);
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v41 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v48 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v41 - v9;
  v43 = a3;
  v44 = a4;
  v12 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element(0, a3, a4, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v41 - v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v49 = *(TupleTypeMetadata2 - 8);
  v22 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v24 = &v41 - v23;
  v26 = *(v25 + 48);
  v27 = *(v13 + 16);
  v27(&v41 - v23, v51, v12, v22);
  (v27)(&v24[v26], v52, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v36 = v47;
    v35 = v48;
    (v27)(v50, v24, v12);
    if (!swift_getEnumCaseMultiPayload())
    {
      v38 = v10;
      (*(v36 + 32))(v10, &v24[v26], v35);
      swift_getAssociatedConformanceWitness();
      v39 = v50;
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      v40 = *(v36 + 8);
      v40(v38, v35);
      v40(v39, v35);
      goto LABEL_11;
    }

    (*(v36 + 8))(v50, v35);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (v27)(v15, v24, v12);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v33 = *v15 == *&v24[v26];
      goto LABEL_11;
    }

LABEL_10:
    v33 = 0;
    v13 = v49;
    v12 = TupleTypeMetadata2;
    goto LABEL_11;
  }

  (v27)(v18, v24, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v45 + 8))(v18, v46);
    goto LABEL_10;
  }

  v29 = v45;
  v30 = &v24[v26];
  v31 = v42;
  v32 = v46;
  (*(v45 + 32))(v42, v30, v46);
  v33 = static AnimatedValueTrack<A>.VectorPath.Element.CurveSegment.== infix(_:_:)(v18, v31, v43, v44);
  v34 = *(v29 + 8);
  v34(v31, v32);
  v34(v18, v32);
LABEL_11:
  (*(v13 + 8))(v24, v12);
  return v33 & 1;
}

void closure #1 in AnimatedValueTrack<A>.VectorPath<>.init(path:)(uint64_t a1, double *a2, char **a3, float64x2_t *a4)
{
  v6 = *a1;
  v7 = *(a1 + 48);
  if (v7 > 1)
  {
    v8 = *(a1 + 16);
    if (v7 == 2)
    {
      v26 = vdupq_n_s64(0x3FD5555555555555uLL);
      v27 = vmulq_f64(v8, vdupq_n_s64(0x3FE5555555555555uLL));
      v28 = vmulq_f64(v6, v26);
      v29 = vsubq_f64(vaddq_f64(v27, vmulq_f64(*a4, v26)), *a4);
      __asm { FMOV            V2.2D, #3.0 }

      v50 = _Q2;
      v52 = v29;
      v14 = vaddq_f64(v28, v27);
      goto LABEL_12;
    }

    if (v7 == 3)
    {
      __asm { FMOV            V1.2D, #3.0 }

      v50 = _Q1;
      v52 = vsubq_f64(v8, *a4);
      v14 = *(a1 + 32);
LABEL_12:
      v55 = *a1;
      v48 = vsubq_f64(v6, v14);
      LOBYTE(v56) = 1;
      v31 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
        *a3 = v31;
      }

      v33 = vmulq_f64(v52, v50);
      v34 = vmulq_f64(v48, v50);
      v35 = *(v31 + 2);
      v36 = *(v31 + 3);
      v37 = v35 + 1;
      v38 = v55;
      if (v35 >= v36 >> 1)
      {
        v53 = v35 + 1;
        v44 = v31;
        v45 = *(v31 + 2);
        v49 = v34;
        v51 = v33;
        v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v35 + 1, 1, v44);
        v34 = v49;
        v33 = v51;
        v38 = v55;
        v35 = v45;
        v37 = v53;
        v31 = v46;
        *a3 = v46;
      }

      *(v31 + 2) = v37;
      v39 = &v31[96 * v35];
      *(v39 + 2) = v38;
      *(v39 + 3) = v33;
      *(v39 + 4) = v34;
      *(v39 + 10) = 0x3FF0000000000000;
      *(v39 + 88) = 0u;
      *(v39 + 104) = 0u;
      v39[120] = 1;
      v39[121] = 1;
      *a4 = v38;
      return;
    }

    v40 = *a2;
    v41 = a2[1];
    v56 = 0u;
    v57 = 0u;
    LOBYTE(v58) = 1;
    specialized AnimatedValueTrack<A>.VectorPath.addLine(to:duration:timingCurve:)(&v56, v40, v41, 1.0);
    v43 = *a2;
LABEL_19:
    *a4 = v43;
    return;
  }

  v54 = *a1;
  if (*(a1 + 48))
  {
    v56 = 0u;
    v57 = 0u;
    LOBYTE(v58) = 1;
    specialized AnimatedValueTrack<A>.VectorPath.addLine(to:duration:timingCurve:)(&v56, v6.f64[0], v6.f64[1], 1.0);
    v43 = v54;
    goto LABEL_19;
  }

  *a2 = v6;
  v15 = *a3;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v15;
  if ((v16 & 1) == 0)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    *a3 = v15;
  }

  v17 = v54.f64[1];
  v18 = v54.f64[0];
  v20 = *(v15 + 2);
  v19 = *(v15 + 3);
  v21 = v20 + 1;
  if (v20 >= v19 >> 1)
  {
    v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v15);
    v17 = v54.f64[1];
    v18 = v54.f64[0];
    v21 = v20 + 1;
    v15 = v47;
    *a3 = v47;
  }

  *(v15 + 2) = v21;
  v22 = &v15[96 * v20];
  *(v22 + 4) = v18;
  *(v22 + 5) = v17;
  *(v22 + 3) = v56;
  v23 = v57;
  v24 = v58;
  v25 = v59[0];
  *(v22 + 105) = *(v59 + 9);
  *(v22 + 5) = v24;
  *(v22 + 6) = v25;
  *(v22 + 4) = v23;
  v22[121] = 0;
  a4->f64[0] = v18;
  a4->f64[1] = v17;
}

uint64_t AnimatedValueTrack<A>.VectorPath.init(keyframes:interpolation:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element(0, a3, a4, a4);
  v24 = static Array._allocateUninitialized(_:)();
  v21 = a3;
  v22 = a4;
  type metadata accessor for AnimatedValueKeyframe(255, a3, v7, v8);
  v9 = type metadata accessor for Dictionary();
  swift_getWitnessTable(MEMORY[0x1E69E5E50], v9);
  v10 = Sequence.sorted(by:)();

  v23 = v10;
  v20[2] = a3;
  v20[3] = a4;
  swift_getTupleTypeMetadata2();
  v11 = type metadata accessor for Array();
  v13 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.TimedKeyframe(0, a3, a4, v12);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6340], v11);
  v16 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in AnimatedValueTrack<A>.VectorPath.init(keyframes:interpolation:), v20, v11, v13, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v15);

  LOBYTE(v23) = v6;
  v18 = type metadata accessor for AnimatedValueTrack<A>.VectorPath(0, a3, a4, v17);
  AnimatedValueTrack<A>.VectorPath.addKeyframes(_:interpolation:)(v16, &v23, v18);

  return v24;
}

double closure #2 in AnimatedValueTrack<A>.VectorPath.init(keyframes:interpolation:)@<D0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v48 = a1;
  v49 = a3;
  v47 = a4;
  *&v46 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters(0, a2, a3, a5);
  *&v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v37 - v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v52 = &v37 - v8;
  v38 = *(a2 - 8);
  v9 = v38;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AnimatedValueKeyframe(255, a2, v13, v14);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v43 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v41 = &v37 - v20;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v40 = *(v17 + 16);
  v40(&v37 - v23, v48, TupleTypeMetadata2, v22);
  v25 = *(TupleTypeMetadata2 + 48);
  (*(v9 + 16))(v12, &v24[v25], a2);
  v39 = *(*(v15 - 8) + 8);
  (v39)(&v24[v25], v15);
  v26 = *(v49 + 24);
  v42 = a2;
  v26(a2);
  (*(v38 + 8))(v12, a2);
  v28 = v40;
  v27 = v41;
  v29 = v48;
  (v40)(v41, v48, TupleTypeMetadata2);
  v30 = &v27[*(TupleTypeMetadata2 + 48)];
  v31 = v44;
  (*(v45 + 16))(v44, &v30[*(v15 + 28)], v46);
  v32 = v39;
  (v39)(v30, v15);
  v33 = v43;
  v28(v43, v29, TupleTypeMetadata2);
  v34 = &v33[*(TupleTypeMetadata2 + 48) + *(v15 + 32)];
  LOBYTE(v33) = v34[32];
  v35 = *v34;
  v45 = *(v34 + 1);
  v46 = v35;
  v32();
  v50[0] = v46;
  v50[1] = v45;
  v51 = v33;
  *&result = AnimatedValueTrack<A>.VectorPath.TimedKeyframe.init(value:interpolation:timingCurve:time:)(v52, v31, v50, v42, v49, v47, *v29).n128_u64[0];
  return result;
}

__n128 AnimatedValueTrack<A>.VectorPath.TimedKeyframe.init(value:interpolation:timingCurve:time:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v14 = *(a3 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(a3 + 16);
  v25 = *a3;
  (*(*(AssociatedTypeWitness - 8) + 32))(a6, a1, AssociatedTypeWitness);
  v17 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.TimedKeyframe(0, a4, a5, v16);
  v18 = v17[9];
  v21 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters(0, a4, v19, v20);
  (*(*(v21 - 8) + 32))(a6 + v18, a2, v21);
  v22 = a6 + v17[10];
  result = v25;
  *v22 = v25;
  *(v22 + 16) = v24;
  *(v22 + 32) = v14;
  *(a6 + v17[11]) = a7;
  return result;
}

uint64_t AnimatedValueTrack<A>.VectorPath.addKeyframes(_:interpolation:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v78 = a3;
  v86 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v83 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v87 = &v70 - v10;
  v80 = v5;
  v12 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.TimedKeyframe(0, v6, v5, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v70 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v70 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v70 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v70 - v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v70 - v28;
  v77 = *a2;
  result = MEMORY[0x18D00CD40](a1, v12, v27);
  v76 = result;
  if (result >= 2)
  {
    Array.subscript.getter();
    v81 = a1;
    v75 = *(v7 + 16);
    v79 = v25;
    v31 = v87;
    v75(v87, v29, AssociatedTypeWitness);
    v73 = v13;
    v32 = (v13 + 8);
    v33 = *(v13 + 8);
    v33(v29, v12);
    AnimatedValueTrack<A>.VectorPath.move(to:)(v31, v78, v34, v35);
    v89 = v7;
    v82 = v19;
    v36 = *(v7 + 8);
    v37 = AssociatedTypeWitness;
    v36(v31, AssociatedTypeWitness);
    Array.subscript.getter();
    v75(v31, v29, v37);
    v33(v29, v12);
    v38 = v79;
    Array.subscript.getter();
    v39 = *&v38[*(v12 + 44)];
    v75 = v32;
    v74 = v33;
    v33(v38, v12);
    v40 = v73;
    v41 = v7 + 8;
    v42 = v89;
    v95 = 0u;
    v96 = 0u;
    v97 = 1;
    AnimatedValueTrack<A>.VectorPath.addLine(to:duration:timingCurve:)(v31, &v95, v78, v39);
    v79 = v36;
    v36(v31, AssociatedTypeWitness);
    v43 = v82;
    v94 = v81;
    v44 = type metadata accessor for Array();
    swift_getWitnessTable(MEMORY[0x1E69E6338], v44);
    RandomAccessCollection<>.indices.getter();
    v93 = v95;
    v90 = 1;
    _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E66A8]);
    _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for PartialRangeFrom<Int>, MEMORY[0x1E69E6D08]);
    v72 = v45;
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>();
    result = Collection.subscript.getter();
    v46 = v91;
    if (v91 != v92)
    {
      if (v92 >= v91)
      {
        if (v91 >= v92)
        {
LABEL_17:
          __break(1u);
          return result;
        }

        v71 = (v40 + 16);
        v70 = (v42 + 40);
        v89 = v22;
        v73 = v41;
        v72 = v92;
        while (1)
        {
          result = v46 - 1;
          if (__OFSUB__(v46, 1))
          {
            break;
          }

          Array.subscript.getter();
          Array.subscript.getter();
          if (v46 >= 2)
          {
            Array.subscript.getter();
          }

          else
          {
            v66 = v85;
            (*v71)(v85, v22, v12);
            *(v66 + *(v12 + 44)) = *&v22[*(v12 + 44)] - (*(v43 + *(v12 + 44)) - *&v22[*(v12 + 44)]);
            v67 = AssociatedTypeWitness;
            swift_getAssociatedConformanceWitness();
            v68 = v83;
            dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
            v69 = v87;
            dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
            (v79)(v68, v67);
            (*v70)(v66, v69, v67);
          }

          v82 = (v46 + 1);
          if (v46 + 1 < v76)
          {
            Array.subscript.getter();
            v51 = v80;
            v52 = v79;
          }

          else
          {
            v47 = v84;
            (*v71)(v84, v43, v12);
            *(v47 + *(v12 + 44)) = *(v43 + *(v12 + 44)) + *(v43 + *(v12 + 44)) - *&v22[*(v12 + 44)];
            v48 = v83;
            v50 = v87;
            v49 = AssociatedTypeWitness;
            v51 = v80;
            swift_getAssociatedConformanceWitness();
            dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
            dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
            v22 = v89;
            v52 = v79;
            (v79)(v48, v49);
            (*v70)(v47, v50, v49);
          }

          v53 = v77;
          LOBYTE(v95) = v77;
          v54 = v86;
          v55 = v87;
          v56 = v85;
          static AnimatedValueTrack<A>.VectorPath.makeStartTangent(before:from:to:interpolation:)(v85, v22, v43, &v95, v86, v51, v87);
          LOBYTE(v95) = v53;
          v57 = v83;
          v58 = v84;
          static AnimatedValueTrack<A>.VectorPath.makeEndTangent(from:to:after:interpolation:)(v89, v43, v84, &v95, v54, v51, v83);
          v59 = *(v43 + *(v12 + 44)) - *&v89[*(v12 + 44)];
          v60 = v43 + *(v12 + 40);
          v61 = *(v60 + 32);
          v62 = *(v60 + 16);
          v95 = *v60;
          v96 = v62;
          v97 = v61;
          AnimatedValueTrack<A>.VectorPath.addCurve(to:startTangent:endTangent:duration:timingCurve:)(v43, v55, v57, &v95, v78, v59);
          v63 = v57;
          v64 = AssociatedTypeWitness;
          v22 = v89;
          (v52)(v63, AssociatedTypeWitness);
          (v52)(v55, v64);
          v65 = v74;
          v74(v43, v12);
          v65(v22, v12);
          v65(v58, v12);
          result = (v65)(v56, v12);
          v46 = v82;
          if (v72 == v82)
          {
            return result;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  return result;
}

void *AnimatedValueTrack<A>.VectorPath.init(duration:keyframes:interpolation:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = type metadata accessor for AnimatedValueKeyframe(255, a3, a3, a4);
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v53 - v12;
  v58 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  v17 = *a2;
  v65 = a1;
  v18 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6340], v18);
  if ((Collection.isEmpty.getter() & 1) != 0 || a5 <= 0.0)
  {

    type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element(0, a3, a4, v35);
    return static Array._allocateUninitialized(_:)();
  }

  v56 = v17;
  v64 = a1;
  v65 = a1;
  *&v62 = 1;
  v60 = a1;

  Collection.suffix(from:)();
  v59 = *v61;
  v62 = *v61;
  v63 = *&v61[16];
  v19 = type metadata accessor for ArraySlice();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6328], v18);
  v21 = swift_getWitnessTable(MEMORY[0x1E69E6968], v19);
  zip<A, B>(_:_:)();
  v22 = swift_unknownObjectRelease();
  *&v59 = &v53;
  *v61 = v65;
  v55 = v66;
  *&v61[8] = v66;
  *&v61[24] = v67;
  MEMORY[0x1EEE9AC00](v22);
  *(&v53 - 2) = a3;
  *(&v53 - 1) = a4;
  MEMORY[0x1EEE9AC00](v23);
  v57 = a3;
  *(&v53 - 4) = a3;
  *(&v53 - 3) = a4;
  v54 = a4;
  *(&v53 - 2) = partial apply for closure #1 in AnimatedValueTrack<A>.VectorPath.init(duration:keyframes:interpolation:);
  *(&v53 - 1) = v24;
  *&v62 = v18;
  *(&v62 + 1) = v19;
  *&v63 = WitnessTable;
  *(&v63 + 1) = v21;
  v25 = type metadata accessor for Zip2Sequence();
  v26 = swift_getWitnessTable(MEMORY[0x1E69E6AA8], v25);
  v28 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@in_guaranteed AnimatedValueKeyframe<A>, @in_guaranteed AnimatedValueKeyframe<A>) -> (@unowned Double), (&v53 - 6), v25, MEMORY[0x1E69E63B0], MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);
  swift_unknownObjectRelease();

  v29 = *(v28 + 16);
  if (!v29)
  {
    v34 = 0.0;
    v30 = v57;
    v31 = v60;
    v32 = v56;
    goto LABEL_13;
  }

  v30 = v57;
  v31 = v60;
  v32 = v56;
  if (v29 < 4)
  {
    v33 = 0;
    v34 = 0.0;
LABEL_11:
    v39 = v29 - v33;
    v40 = (v28 + 8 * v33 + 32);
    do
    {
      v41 = *v40++;
      v34 = v34 + v41;
      --v39;
    }

    while (v39);
    goto LABEL_13;
  }

  v33 = v29 & 0x7FFFFFFFFFFFFFFCLL;
  v37 = (v28 + 48);
  v34 = 0.0;
  v38 = v29 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v34 = v34 + *(v37 - 2) + *(v37 - 1) + *v37 + v37[1];
    v37 += 4;
    v38 -= 4;
  }

  while (v38);
  if (v29 != v33)
  {
    goto LABEL_11;
  }

LABEL_13:
  *&v59 = v28;
  v42 = MEMORY[0x1E69E63B0];
  swift_getTupleTypeMetadata2();
  v43 = static Array._allocateUninitialized(_:)();
  v44 = specialized Dictionary.init(dictionaryLiteral:)(v43, v42, v10, MEMORY[0x1E69E63D0]);

  *v61 = v44;
  *&v62 = v31;
  swift_getWitnessTable(MEMORY[0x1E69E6338], v18);
  result = RandomAccessCollection<>.indices.getter();
  v46 = v65;
  v45 = v66;
  if (v65 == v66)
  {

LABEL_25:
    LOBYTE(v65) = v32;
    return AnimatedValueTrack<A>.VectorPath.init(keyframes:interpolation:)(*v61, &v65, v30, v54);
  }

  else
  {
    if (v66 < v65)
    {
      goto LABEL_28;
    }

    if (v65 < v66)
    {
      v47 = *(v59 + 16);
      v48 = (v58 + 16);
      v49 = (v58 + 56);
      v50 = (v58 + 8);
      v51 = 0.0;
      while (1)
      {
        Array.subscript.getter();
        (*v48)(v13, v16, v10);
        (*v49)(v13, 0, 1, v10);
        v65 = *&v51;
        type metadata accessor for Dictionary();
        result = Dictionary.subscript.setter();
        if (v46 >= v47)
        {
          (*v50)(v16, v10);
        }

        else
        {
          if (v46 < 0)
          {
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            break;
          }

          if (v46 >= *(v59 + 16))
          {
            goto LABEL_27;
          }

          v52 = *(v59 + 8 * v46 + 32);
          (*v50)(v16, v10);
          v51 = v51 + v52 / v34 * a5;
        }

        if (v45 == ++v46)
        {

          v30 = v57;
          v32 = v56;
          goto LABEL_25;
        }
      }
    }

    __break(1u);
  }

  return result;
}

double closure #1 in AnimatedValueTrack<A>.VectorPath.init(duration:keyframes:interpolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v23 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v23 - v15;
  v17 = *(a4 + 24);
  v17(a3, a4, v14);
  (v17)(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v19 = *(v7 + 8);
  v19(v9, AssociatedTypeWitness);
  v19(v12, AssociatedTypeWitness);
  v20 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v21 = sqrt(v20);
  v19(v16, AssociatedTypeWitness);
  return v21;
}

uint64_t static AnimatedValueTrack<A>.VectorPath.makeStartTangent(before:from:to:interpolation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v50 = a3;
  v46 = a1;
  v52 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  v48 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters.Mode(0, a5, v19, v20);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v45 - v23);
  v25 = *a4;
  v27 = *(type metadata accessor for AnimatedValueTrack<A>.VectorPath.TimedKeyframe(0, a5, a6, v26) + 36);
  v51 = a2;
  v28 = a2 + v27;
  v31 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters(0, a5, v29, v30);
  (*(v22 + 16))(v24, v28 + *(v31 + 28), v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v36 = v47;
    if (!EnumCaseMultiPayload)
    {
      v33 = *v24;
      v34 = v24[1];
      v35 = v24[2];
      return solve #1 <A>(tension:continuity:bias:) in static AnimatedValueTrack<A>.VectorPath.makeStartTangent(before:from:to:interpolation:)(v51, v46, v50, a5, a6, v52, v33, v34, v35);
    }

    v39 = v15;
    v40 = v48;
    (*(v48 + 32))(v18, v24, a5);
    v41 = v12;
    (*(a6 + 24))(a5, a6);
    v42 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v44 = *(v36 + 8);
    v44(v41, v42);
    VectorArithmetic.scaled(by:)(v42, AssociatedConformanceWitness, v52, 3.0);
    v44(v39, v42);
    return (*(v40 + 8))(v18, a5);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v38 = v48;
    (*(v48 + 32))(v18, v24, a5);
    (*(a6 + 24))(a5, a6);
    return (*(v38 + 8))(v18, a5);
  }

  else
  {
    if (EnumCaseMultiPayload != 3 && (v25 & 1) != 0)
    {
      v33 = 0.0;
      v34 = 0.0;
      v35 = 0.0;
      return solve #1 <A>(tension:continuity:bias:) in static AnimatedValueTrack<A>.VectorPath.makeStartTangent(before:from:to:interpolation:)(v51, v46, v50, a5, a6, v52, v33, v34, v35);
    }

    swift_getAssociatedConformanceWitness();
    return dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  }
}

uint64_t static AnimatedValueTrack<A>.VectorPath.makeEndTangent(from:to:after:interpolation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v43 = a3;
  v47 = a1;
  v49 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v45 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters.Mode(0, a5, v19, v20);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v42 - v23);
  v25 = *a4;
  v27 = *(type metadata accessor for AnimatedValueTrack<A>.VectorPath.TimedKeyframe(0, a5, a6, v26) + 36);
  v28 = *(v22 + 16);
  v48 = a2;
  v28(v24, a2 + v27, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v33 = v44;
    if (!EnumCaseMultiPayload)
    {
      v30 = *v24;
      v31 = v24[1];
      v32 = v24[2];
      return solve #1 <A>(tension:continuity:bias:) in static AnimatedValueTrack<A>.VectorPath.makeEndTangent(from:to:after:interpolation:)(v48, v47, v43, a5, a6, v49, v30, v31, v32);
    }

    v36 = v15;
    v37 = v45;
    (*(v45 + 32))(v18, v24, a5);
    v38 = v12;
    (*(a6 + 24))(a5, a6);
    v39 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v41 = *(v33 + 8);
    v41(v38, v39);
    VectorArithmetic.scaled(by:)(v39, AssociatedConformanceWitness, v49, 3.0);
    v41(v36, v39);
    return (*(v37 + 8))(v18, a5);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v35 = v45;
    (*(v45 + 32))(v18, v24, a5);
    (*(a6 + 24))(a5, a6);
    return (*(v35 + 8))(v18, a5);
  }

  else
  {
    if (EnumCaseMultiPayload != 3 && v25)
    {
      v30 = 0.0;
      v31 = 0.0;
      v32 = 0.0;
      return solve #1 <A>(tension:continuity:bias:) in static AnimatedValueTrack<A>.VectorPath.makeEndTangent(from:to:after:interpolation:)(v48, v47, v43, a5, a6, v49, v30, v31, v32);
    }

    swift_getAssociatedConformanceWitness();
    return dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  }
}

uint64_t solve #1 <A>(tension:continuity:bias:) in static AnimatedValueTrack<A>.VectorPath.makeStartTangent(before:from:to:interpolation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>)
{
  v38 = a6;
  v39 = a3;
  v35 = a2;
  v36 = a4;
  v37 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - v21;
  v23 = 1.0 - a7;
  v24 = (1.0 - a7) * (a8 + 1.0) * (a9 + 1.0) * 0.5;
  v25 = v23 * (1.0 - a8) * (1.0 - a9) * 0.5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, AssociatedConformanceWitness, v22, v24);
  v27 = *(v14 + 8);
  v27(v19, AssociatedTypeWitness);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, AssociatedConformanceWitness, v19, v25);
  v27(v16, AssociatedTypeWitness);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v27(v19, AssociatedTypeWitness);
  v27(v22, AssociatedTypeWitness);
  result = type metadata accessor for AnimatedValueTrack<A>.VectorPath.TimedKeyframe(0, v36, v37, v28);
  v30 = *(result + 44);
  v31 = *(a1 + v30);
  v32 = v31 - *(v35 + v30);
  if (v32 > 0.0)
  {
    v33 = *(v39 + v30) - v31;
    if (v33 > 0.0)
    {
      return (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness, (v33 + v33) / (v32 + v33));
    }
  }

  return result;
}

uint64_t solve #1 <A>(tension:continuity:bias:) in static AnimatedValueTrack<A>.VectorPath.makeEndTangent(from:to:after:interpolation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>)
{
  v38 = a6;
  v39 = a3;
  v35 = a2;
  v36 = a4;
  v37 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - v21;
  v23 = 1.0 - a7;
  v24 = (1.0 - a7) * (1.0 - a8) * (a9 + 1.0) * 0.5;
  v25 = v23 * (a8 + 1.0) * (1.0 - a9) * 0.5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, AssociatedConformanceWitness, v22, v24);
  v27 = *(v14 + 8);
  v27(v19, AssociatedTypeWitness);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  VectorArithmetic.scaled(by:)(AssociatedTypeWitness, AssociatedConformanceWitness, v19, v25);
  v27(v16, AssociatedTypeWitness);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v27(v19, AssociatedTypeWitness);
  v27(v22, AssociatedTypeWitness);
  result = type metadata accessor for AnimatedValueTrack<A>.VectorPath.TimedKeyframe(0, v36, v37, v28);
  v30 = *(result + 44);
  v31 = *(a1 + v30);
  v32 = v31 - *(v35 + v30);
  if (v32 > 0.0)
  {
    v33 = *(v39 + v30) - v31;
    if (v33 > 0.0)
    {
      return (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness, (v32 + v32) / (v32 + v33));
    }
  }

  return result;
}

double Curve.parametricTime(forArcLength:)(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Curve.arcLength(at:)(v8, 1.0);
  if (v9 <= 0.0)
  {
    return 0.0;
  }

  v10 = (v5 + 8);
  v11 = 10;
  v12 = a2 / v9;
  do
  {
    Curve.arcLength(at:)(a1, v12);
    if (vabdd_f64(v13, a2) < 0.1)
    {
      break;
    }

    v14 = v13 - a2;
    Curve.velocity(at:)(a1, v7);
    v15 = (*(*(a1 + 24) + 24))(v4);
    v16 = sqrt(v15);
    (*v10)(v7, v4);
    v12 = v12 - v14 / v16;
    if ((~*&v12 & 0x7FF0000000000000) == 0 && (*&v12 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      return 0.0;
    }

    --v11;
  }

  while (v11);
  return v12;
}

void Curve.arcLength(at:)(uint64_t a1, double a2)
{
  v30 = a1;
  v2 = *(a1 + 16);
  v27 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Quadrature.Integrator();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for Quadrature();
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v20;
  v29 = v19;
  v26 = v4;
  *v14 = 8;
  (*(v12 + 104))(v14, *MEMORY[0x1E69E5A40], v11, v16);
  v21 = Quadrature.init(integrator:absoluteTolerance:relativeTolerance:)();
  MEMORY[0x1EEE9AC00](v21);
  v22 = v31;
  v23 = *(v30 + 24);
  *(&v26 - 4) = v2;
  *(&v26 - 3) = v23;
  *(&v26 - 2) = v22;
  Quadrature.integrate(over:integrand:)();
  outlined init with copy of Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(v10, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v26;
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v25 = (*(v23 + 24))(v2, v23);
    (*(v27 + 8))(v24, v2);
    sqrt(v25);
    outlined destroy of Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(v10);
    (*(v28 + 8))(v18, v29);
    outlined destroy of Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(v7);
  }

  else
  {
    outlined destroy of Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(v10);
    (*(v28 + 8))(v18, v29);
  }
}

void closure #1 in Curve.arcLength(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Curve(0, v8, v9, v10);
  Curve.velocity(at:)(v11, v7);
  v12 = (*(a3 + 24))(a2, a3);
  (*(v5 + 8))(v7, a2);
  sqrt(v12);
}

void type metadata accessor for Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>)
  {
    type metadata accessor for (integralResult: Double, estimatedAbsoluteError: Double)();
    type metadata accessor for Quadrature.Error();
    lazy protocol witness table accessor for type Quadrature.Error and conformance Quadrature.Error();
    v1 = type metadata accessor for Result();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>);
    }
  }
}

void type metadata accessor for (integralResult: Double, estimatedAbsoluteError: Double)()
{
  if (!lazy cache variable for type metadata for (integralResult: Double, estimatedAbsoluteError: Double))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (integralResult: Double, estimatedAbsoluteError: Double));
    }
  }
}

unint64_t lazy protocol witness table accessor for type Quadrature.Error and conformance Quadrature.Error()
{
  result = lazy protocol witness table cache variable for type Quadrature.Error and conformance Quadrature.Error;
  if (!lazy protocol witness table cache variable for type Quadrature.Error and conformance Quadrature.Error)
  {
    v3 = type metadata accessor for Quadrature.Error();
    result = swift_getWitnessTable(MEMORY[0x1E69E5A48], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Quadrature.Error and conformance Quadrature.Error);
  }

  return result;
}

uint64_t outlined init with copy of Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(uint64_t a1)
{
  type metadata accessor for Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>()
{
  result = lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>;
  if (!lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>)
  {
    _sSnySiGMaTm_1(255, &lazy cache variable for type metadata for PartialRangeFrom<Int>, MEMORY[0x1E69E6D08]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6D18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>);
  }

  return result;
}

void partial apply for thunk for @callee_guaranteed (@in_guaranteed AnimatedValueKeyframe<A>, @in_guaranteed AnimatedValueKeyframe<A>) -> (@unowned Double)(uint64_t a1@<X0>, double *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v7 = *(v4 + 32);
  type metadata accessor for AnimatedValueKeyframe(255, *(v4 + 16), a3, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a2 = v7(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t type metadata completion function for AnimatedValueTrack<A>.VectorPath.TimedKeyframe(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters(319, v1, v3, v4);
    if (v6 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnimatedValueTrack<A>.VectorPath.TimedKeyframe(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v9 = *(v5 - 8);
  v10 = *(v9 + 80);
  if (*(v9 + 64) <= 0x18uLL)
  {
    v11 = 24;
  }

  else
  {
    v11 = *(*(v5 - 8) + 64);
  }

  v12 = v11 + 1;
  v13 = v10 | *(v7 + 80);
  if ((v13 & 0x1000F8) != 0 || ((v11 + ((v11 + 1 + (v10 & 0xF8 | 7)) & ~(v10 & 0xF8 | 7)) + ((v8 + (v10 & 0xF8 | 7)) & ~(v10 & 0xF8 | 7)) + 48) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + (((v13 & 0xF8 | 7u) + 16) & ~(v13 & 0xF8 | 7u)));

    return a1;
  }

  v16 = 8 * v11;
  (*(v7 + 16))(a1, a2, AssociatedTypeWitness);
  v17 = a1 + v8 + 7;
  v18 = v17 & 0xFFFFFFFFFFFFFFF8;
  v19 = a2 + v8 + 7;
  v20 = (v19 & 0xFFFFFFFFFFFFFFF8);
  v21 = *((v19 & 0xFFFFFFFFFFFFFFF8) + v11);
  v22 = v21 - 3;
  if (v21 >= 3)
  {
    if (v11 <= 3)
    {
      v23 = v11;
    }

    else
    {
      v23 = 4;
    }

    if (v23 <= 1)
    {
      if (!v23)
      {
        goto LABEL_24;
      }

      v24 = *v20;
    }

    else if (v23 == 2)
    {
      v24 = *v20;
    }

    else if (v23 == 3)
    {
      v24 = *v20 | (v20[2] << 16);
    }

    else
    {
      v24 = *v20;
    }

    v25 = (v24 | (v22 << v16)) + 3;
    v21 = v24 + 3;
    if (v11 < 4)
    {
      v21 = v25;
    }
  }

LABEL_24:
  if (v21 == 2)
  {
    (*(v9 + 16))(v17 & 0xFFFFFFFFFFFFFFF8, v19 & 0xFFFFFFFFFFFFFFF8, v5);
    *(v18 + v11) = 2;
  }

  else if (v21 == 1)
  {
    (*(v9 + 16))(v17 & 0xFFFFFFFFFFFFFFF8, v19 & 0xFFFFFFFFFFFFFFF8, v5);
    *(v18 + v11) = 1;
  }

  else if (v21)
  {
    memcpy((v17 & 0xFFFFFFFFFFFFFFF8), (v19 & 0xFFFFFFFFFFFFFFF8), v11 + 1);
  }

  else
  {
    v26 = *v20;
    *(v18 + 16) = *(v20 + 2);
    *v18 = v26;
    *(v18 + v11) = 0;
  }

  v27 = (v17 | 7) + v12;
  v28 = (((v19 | 7) + v12) & 0xFFFFFFFFFFFFFFF8);
  v29 = *(v28 + v11);
  v30 = v29 - 3;
  if (v29 >= 3)
  {
    if (v11 <= 3)
    {
      v31 = v11;
    }

    else
    {
      v31 = 4;
    }

    if (v31 > 1)
    {
      if (v31 == 2)
      {
        v32 = *v28;
      }

      else if (v31 == 3)
      {
        v32 = *v28 | (*(v28 + 2) << 16);
      }

      else
      {
        v32 = *v28;
      }

LABEL_43:
      v33 = (v32 | (v30 << v16)) + 3;
      v29 = v32 + 3;
      if (v11 < 4)
      {
        v29 = v33;
      }

      goto LABEL_45;
    }

    if (v31)
    {
      v32 = *v28;
      goto LABEL_43;
    }
  }

LABEL_45:
  v34 = v27 & 0xFFFFFFFFFFFFFFF8;
  if (v29 == 2)
  {
    (*(v9 + 16))(v34);
    *(v34 + v11) = 2;
  }

  else if (v29 == 1)
  {
    (*(v9 + 16))(v34);
    *(v34 + v11) = 1;
  }

  else if (v29)
  {
    memcpy((v27 & 0xFFFFFFFFFFFFFFF8), v28, v11 + 1);
  }

  else
  {
    v35 = *v28;
    *(v34 + 16) = v28[2];
    *v34 = v35;
    *(v34 + v11) = 0;
  }

  v36 = (v11 & 0xFFFFFFFFFFFFFFF8) + v12 + 8;
  v37 = v36 + v18;
  v38 = &v20[v36];
  v39 = (v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = *v40;
  v42 = *(v40 + 16);
  *(v39 + 32) = *(v40 + 32);
  *v39 = v41;
  *(v39 + 16) = v42;
  *((v37 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v38 + 47) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

unsigned __int8 *destroy for AnimatedValueTrack<A>.VectorPath.TimedKeyframe(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 8;
  (*v5)(a1, AssociatedTypeWitness);
  v6 = *(v3 - 8);
  v7 = *(v6 + 80) & 0xF8 | 7;
  v8 = ((*(v5 + 56) + a1 + v7) & ~v7);
  if (*(v6 + 64) <= 0x18uLL)
  {
    v9 = 24;
  }

  else
  {
    v9 = *(*(v3 - 8) + 64);
  }

  v10 = 8 * v9;
  v11 = v8[v9];
  v12 = v11 - 3;
  if (v11 >= 3)
  {
    if (v9 <= 3)
    {
      v13 = v9;
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_18;
      }

      v14 = *v8;
    }

    else if (v13 == 2)
    {
      v14 = *v8;
    }

    else if (v13 == 3)
    {
      v14 = *v8 | (v8[2] << 16);
    }

    else
    {
      v14 = *v8;
    }

    v15 = (v14 | (v12 << v10)) + 3;
    v11 = v14 + 3;
    if (v9 < 4)
    {
      v11 = v15;
    }
  }

LABEL_18:
  if (v11 - 1 <= 1)
  {
    v23 = *(v3 - 8);
    (*(v6 + 8))(v8, v3);
    v6 = v23;
  }

  result = (&v8[v9 + 1 + v7] & ~v7);
  v17 = result[v9];
  v18 = v17 - 3;
  if (v17 >= 3)
  {
    if (v9 <= 3)
    {
      v19 = v9;
    }

    else
    {
      v19 = 4;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        goto LABEL_34;
      }

      v20 = *result;
    }

    else if (v19 == 2)
    {
      v20 = *result;
    }

    else if (v19 == 3)
    {
      v20 = *result | (*((&v8[v9 + 1 + v7] & ~v7) + 2) << 16);
    }

    else
    {
      v20 = *result;
    }

    v21 = (v20 | (v18 << v10)) + 3;
    v17 = v20 + 3;
    if (v9 < 4)
    {
      v17 = v21;
    }
  }

LABEL_34:
  if (v17 - 1 <= 1)
  {
    v22 = *(v6 + 8);

    return v22();
  }

  return result;
}

uint64_t initializeWithCopy for AnimatedValueTrack<A>.VectorPath.TimedKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 16;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(v5 - 8);
  v9 = *(v8 + 80) & 0xF8 | 7;
  v10 = *(v7 + 48) + v9;
  v11 = ((v10 + a1) & ~v9);
  v12 = ((v10 + a2) & ~v9);
  if (*(v8 + 64) <= 0x18uLL)
  {
    v13 = 24;
  }

  else
  {
    v13 = *(*(v5 - 8) + 64);
  }

  v14 = *(v12 + v13);
  v15 = v14 - 3;
  if (v14 < 3)
  {
    goto LABEL_18;
  }

  if (v13 <= 3)
  {
    v16 = v13;
  }

  else
  {
    v16 = 4;
  }

  if (v16 <= 1)
  {
    if (!v16)
    {
      goto LABEL_18;
    }

    v17 = *v12;
  }

  else if (v16 == 2)
  {
    v17 = *v12;
  }

  else if (v16 == 3)
  {
    v17 = *v12 | (*(v12 + 2) << 16);
  }

  else
  {
    v17 = *v12;
  }

  v18 = (v17 | (v15 << (8 * v13))) + 3;
  v14 = v17 + 3;
  if (v13 < 4)
  {
    v14 = v18;
  }

LABEL_18:
  v19 = ~v9;
  if (v14 == 2)
  {
    (*(v8 + 16))(v11, v12, v5);
    *(v11 + v13) = 2;
  }

  else if (v14 == 1)
  {
    (*(v8 + 16))(v11, v12, v5);
    *(v11 + v13) = 1;
  }

  else if (v14)
  {
    memcpy(v11, v12, v13 + 1);
  }

  else
  {
    v20 = *v12;
    v11[2] = v12[2];
    *v11 = v20;
    *(v11 + v13) = 0;
  }

  v21 = v13 + 1 + v9;
  v22 = ((v11 + v21) & v19);
  v23 = ((v12 + v21) & v19);
  v24 = v23[v13];
  v25 = v24 - 3;
  if (v24 >= 3)
  {
    if (v13 <= 3)
    {
      v26 = v13;
    }

    else
    {
      v26 = 4;
    }

    if (v26 <= 1)
    {
      if (!v26)
      {
        goto LABEL_39;
      }

      v27 = *v23;
    }

    else if (v26 == 2)
    {
      v27 = *v23;
    }

    else if (v26 == 3)
    {
      v27 = *v23 | (*(((v12 + v21) & v19) + 2) << 16);
    }

    else
    {
      v27 = *v23;
    }

    v28 = (v27 | (v25 << (8 * v13))) + 3;
    v24 = v27 + 3;
    if (v13 < 4)
    {
      v24 = v28;
    }
  }

LABEL_39:
  if (v24 == 2)
  {
    (*(v8 + 16))((v11 + v21) & v19);
    *(v22 + v13) = 2;
  }

  else if (v24 == 1)
  {
    (*(v8 + 16))((v11 + v21) & v19);
    *(v22 + v13) = 1;
  }

  else if (v24)
  {
    memcpy(((v11 + v21) & v19), v23, v13 + 1);
  }

  else
  {
    v29 = *v23;
    *(((v11 + v21) & v19) + 0x10) = *(((v12 + v21) & v19) + 0x10);
    *v22 = v29;
    *(v22 + v13) = 0;
  }

  v30 = (v21 & v19) + v13 + 1;
  v31 = v11 + v30;
  v32 = v12 + v30;
  v33 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = *v34;
  v36 = *(v34 + 16);
  *(v33 + 32) = *(v34 + 32);
  *v33 = v35;
  *(v33 + 16) = v36;
  *((v31 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v32 + 47) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for AnimatedValueTrack<A>.VectorPath.TimedKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 24;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(v5 - 8);
  v9 = *(v8 + 80) & 0xF8 | 7;
  v10 = *(v7 + 40) + v9;
  v49 = a1;
  v11 = ~v9;
  v12 = ((v10 + a1) & ~v9);
  v13 = ((v10 + a2) & ~v9);
  if (*(v8 + 64) <= 0x18uLL)
  {
    v14 = 24;
  }

  else
  {
    v14 = *(*(v5 - 8) + 64);
  }

  if (v12 == v13)
  {
    v48 = 8 * v14;
    goto LABEL_6;
  }

  v25 = 8 * v14;
  v26 = *(v12 + v14);
  v27 = v26 - 3;
  if (v26 >= 3)
  {
    if (v14 <= 3)
    {
      v28 = v14;
    }

    else
    {
      v28 = 4;
    }

    if (v28 <= 1)
    {
      if (!v28)
      {
        goto LABEL_33;
      }

      v29 = *v12;
    }

    else if (v28 == 2)
    {
      v29 = *v12;
    }

    else if (v28 == 3)
    {
      v29 = *v12 | (*(v12 + 2) << 16);
    }

    else
    {
      v29 = *v12;
    }

    v34 = (v29 | (v27 << v25)) + 3;
    v26 = v29 + 3;
    if (v14 < 4)
    {
      v26 = v34;
    }
  }

LABEL_33:
  if (v26 - 1 <= 1)
  {
    (*(v8 + 8))(v12, v5);
  }

  v35 = *(v13 + v14);
  v36 = v35 - 3;
  if (v35 < 3)
  {
    goto LABEL_65;
  }

  if (v14 <= 3)
  {
    v37 = v14;
  }

  else
  {
    v37 = 4;
  }

  if (v37 > 1)
  {
    if (v37 == 2)
    {
      v38 = *v13;
    }

    else if (v37 == 3)
    {
      v38 = *v13 | (*(v13 + 2) << 16);
    }

    else
    {
      v38 = *v13;
    }

LABEL_63:
    v44 = (v38 | (v36 << v25)) + 3;
    v35 = v38 + 3;
    if (v14 < 4)
    {
      v35 = v44;
    }

    goto LABEL_65;
  }

  if (v37)
  {
    v38 = *v13;
    goto LABEL_63;
  }

LABEL_65:
  v48 = 8 * v14;
  if (v35 == 2)
  {
    (*(v8 + 16))(v12, v13, v5);
    *(v12 + v14) = 2;
  }

  else if (v35 == 1)
  {
    (*(v8 + 16))(v12, v13, v5);
    *(v12 + v14) = 1;
  }

  else if (v35)
  {
    memcpy(v12, v13, v14 + 1);
  }

  else
  {
    v45 = *v13;
    v12[2] = v13[2];
    *v12 = v45;
    *(v12 + v14) = 0;
  }

LABEL_6:
  v15 = ((v12 + v9 + v14 + 1) & v11);
  v16 = ((v13 + v9 + v14 + 1) & v11);
  if (v15 == v16)
  {
    goto LABEL_7;
  }

  v30 = v15[v14];
  v31 = v30 - 3;
  if (v30 >= 3)
  {
    if (v14 <= 3)
    {
      v32 = v14;
    }

    else
    {
      v32 = 4;
    }

    if (v32 <= 1)
    {
      if (!v32)
      {
        goto LABEL_49;
      }

      v33 = *v15;
    }

    else if (v32 == 2)
    {
      v33 = *v15;
    }

    else if (v32 == 3)
    {
      v33 = *v15 | (*(((v12 + v9 + v14 + 1) & v11) + 2) << 16);
    }

    else
    {
      v33 = *v15;
    }

    v39 = (v33 | (v31 << v48)) + 3;
    v30 = v33 + 3;
    if (v14 < 4)
    {
      v30 = v39;
    }
  }

LABEL_49:
  if (v30 - 1 <= 1)
  {
    (*(v8 + 8))((v12 + v9 + v14 + 1) & v11, v5);
  }

  v40 = v16[v14];
  v41 = v40 - 3;
  if (v40 < 3)
  {
    goto LABEL_75;
  }

  if (v14 <= 3)
  {
    v42 = v14;
  }

  else
  {
    v42 = 4;
  }

  if (v42 > 1)
  {
    if (v42 == 2)
    {
      v43 = *v16;
    }

    else if (v42 == 3)
    {
      v43 = *v16 | (*(((v13 + v9 + v14 + 1) & v11) + 2) << 16);
    }

    else
    {
      v43 = *v16;
    }

LABEL_73:
    v46 = (v43 | (v41 << v48)) + 3;
    v40 = v43 + 3;
    if (v14 < 4)
    {
      v40 = v46;
    }

    goto LABEL_75;
  }

  if (v42)
  {
    v43 = *v16;
    goto LABEL_73;
  }

LABEL_75:
  if (v40 == 2)
  {
    (*(v8 + 16))((v12 + v9 + v14 + 1) & v11, (v13 + v9 + v14 + 1) & v11, v5);
    v15[v14] = 2;
  }

  else if (v40 == 1)
  {
    (*(v8 + 16))((v12 + v9 + v14 + 1) & v11, (v13 + v9 + v14 + 1) & v11, v5);
    v15[v14] = 1;
  }

  else if (v40)
  {
    memcpy(((v12 + v9 + v14 + 1) & v11), ((v13 + v9 + v14 + 1) & v11), v14 + 1);
  }

  else
  {
    v47 = *v16;
    *(((v12 + v9 + v14 + 1) & v11) + 0x10) = *(((v13 + v9 + v14 + 1) & v11) + 0x10);
    *v15 = v47;
    v15[v14] = 0;
  }

LABEL_7:
  v17 = ((v14 + 1 + v9) & v11) + v14 + 1;
  v18 = v12 + v17;
  v19 = v13 + v17;
  v20 = (v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  v23 = *(v21 + 16);
  *(v20 + 32) = *(v21 + 32);
  *v20 = v22;
  *(v20 + 16) = v23;
  *((v18 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v19 + 47) & 0xFFFFFFFFFFFFFFF8);
  return v49;
}

uint64_t initializeWithTake for AnimatedValueTrack<A>.VectorPath.TimedKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 32;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(v5 - 8);
  v9 = *(v8 + 80) & 0xF8 | 7;
  v10 = *(v7 + 32) + v9;
  v11 = ((v10 + a1) & ~v9);
  v12 = ((v10 + a2) & ~v9);
  if (*(v8 + 64) <= 0x18uLL)
  {
    v13 = 24;
  }

  else
  {
    v13 = *(*(v5 - 8) + 64);
  }

  v14 = *(v12 + v13);
  v15 = v14 - 3;
  if (v14 < 3)
  {
    goto LABEL_18;
  }

  if (v13 <= 3)
  {
    v16 = v13;
  }

  else
  {
    v16 = 4;
  }

  if (v16 <= 1)
  {
    if (!v16)
    {
      goto LABEL_18;
    }

    v17 = *v12;
  }

  else if (v16 == 2)
  {
    v17 = *v12;
  }

  else if (v16 == 3)
  {
    v17 = *v12 | (*(v12 + 2) << 16);
  }

  else
  {
    v17 = *v12;
  }

  v18 = (v17 | (v15 << (8 * v13))) + 3;
  v14 = v17 + 3;
  if (v13 < 4)
  {
    v14 = v18;
  }

LABEL_18:
  v19 = ~v9;
  if (v14 == 2)
  {
    (*(v8 + 32))(v11, v12, v5);
    *(v11 + v13) = 2;
  }

  else if (v14 == 1)
  {
    (*(v8 + 32))(v11, v12, v5);
    *(v11 + v13) = 1;
  }

  else if (v14)
  {
    memcpy(v11, v12, v13 + 1);
  }

  else
  {
    v20 = *v12;
    v11[2] = v12[2];
    *v11 = v20;
    *(v11 + v13) = 0;
  }

  v21 = v13 + 1 + v9;
  v22 = ((v11 + v21) & v19);
  v23 = ((v12 + v21) & v19);
  v24 = v23[v13];
  v25 = v24 - 3;
  if (v24 >= 3)
  {
    if (v13 <= 3)
    {
      v26 = v13;
    }

    else
    {
      v26 = 4;
    }

    if (v26 <= 1)
    {
      if (!v26)
      {
        goto LABEL_39;
      }

      v27 = *v23;
    }

    else if (v26 == 2)
    {
      v27 = *v23;
    }

    else if (v26 == 3)
    {
      v27 = *v23 | (*(((v12 + v21) & v19) + 2) << 16);
    }

    else
    {
      v27 = *v23;
    }

    v28 = (v27 | (v25 << (8 * v13))) + 3;
    v24 = v27 + 3;
    if (v13 < 4)
    {
      v24 = v28;
    }
  }

LABEL_39:
  if (v24 == 2)
  {
    (*(v8 + 32))((v11 + v21) & v19);
    *(v22 + v13) = 2;
  }

  else if (v24 == 1)
  {
    (*(v8 + 32))((v11 + v21) & v19);
    *(v22 + v13) = 1;
  }

  else if (v24)
  {
    memcpy(((v11 + v21) & v19), v23, v13 + 1);
  }

  else
  {
    v29 = *v23;
    *(((v11 + v21) & v19) + 0x10) = *(((v12 + v21) & v19) + 0x10);
    *v22 = v29;
    *(v22 + v13) = 0;
  }

  v30 = (v21 & v19) + v13 + 1;
  v31 = v11 + v30;
  v32 = v12 + v30;
  v33 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = *v34;
  v36 = *(v34 + 16);
  *(v33 + 32) = *(v34 + 32);
  *v33 = v35;
  *(v33 + 16) = v36;
  *((v31 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v32 + 47) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for AnimatedValueTrack<A>.VectorPath.TimedKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 40;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(v5 - 8);
  v9 = *(v8 + 80) & 0xF8 | 7;
  v10 = *(v7 + 24) + v9;
  v49 = a1;
  v11 = ~v9;
  v12 = ((v10 + a1) & ~v9);
  v13 = ((v10 + a2) & ~v9);
  if (*(v8 + 64) <= 0x18uLL)
  {
    v14 = 24;
  }

  else
  {
    v14 = *(*(v5 - 8) + 64);
  }

  if (v12 == v13)
  {
    v48 = 8 * v14;
    goto LABEL_6;
  }

  v25 = 8 * v14;
  v26 = *(v12 + v14);
  v27 = v26 - 3;
  if (v26 >= 3)
  {
    if (v14 <= 3)
    {
      v28 = v14;
    }

    else
    {
      v28 = 4;
    }

    if (v28 <= 1)
    {
      if (!v28)
      {
        goto LABEL_33;
      }

      v29 = *v12;
    }

    else if (v28 == 2)
    {
      v29 = *v12;
    }

    else if (v28 == 3)
    {
      v29 = *v12 | (*(v12 + 2) << 16);
    }

    else
    {
      v29 = *v12;
    }

    v34 = (v29 | (v27 << v25)) + 3;
    v26 = v29 + 3;
    if (v14 < 4)
    {
      v26 = v34;
    }
  }

LABEL_33:
  if (v26 - 1 <= 1)
  {
    (*(v8 + 8))(v12, v5);
  }

  v35 = *(v13 + v14);
  v36 = v35 - 3;
  if (v35 < 3)
  {
    goto LABEL_65;
  }

  if (v14 <= 3)
  {
    v37 = v14;
  }

  else
  {
    v37 = 4;
  }

  if (v37 > 1)
  {
    if (v37 == 2)
    {
      v38 = *v13;
    }

    else if (v37 == 3)
    {
      v38 = *v13 | (*(v13 + 2) << 16);
    }

    else
    {
      v38 = *v13;
    }

LABEL_63:
    v44 = (v38 | (v36 << v25)) + 3;
    v35 = v38 + 3;
    if (v14 < 4)
    {
      v35 = v44;
    }

    goto LABEL_65;
  }

  if (v37)
  {
    v38 = *v13;
    goto LABEL_63;
  }

LABEL_65:
  v48 = 8 * v14;
  if (v35 == 2)
  {
    (*(v8 + 32))(v12, v13, v5);
    *(v12 + v14) = 2;
  }

  else if (v35 == 1)
  {
    (*(v8 + 32))(v12, v13, v5);
    *(v12 + v14) = 1;
  }

  else if (v35)
  {
    memcpy(v12, v13, v14 + 1);
  }

  else
  {
    v45 = *v13;
    v12[2] = v13[2];
    *v12 = v45;
    *(v12 + v14) = 0;
  }

LABEL_6:
  v15 = ((v12 + v9 + v14 + 1) & v11);
  v16 = ((v13 + v9 + v14 + 1) & v11);
  if (v15 == v16)
  {
    goto LABEL_7;
  }

  v30 = v15[v14];
  v31 = v30 - 3;
  if (v30 >= 3)
  {
    if (v14 <= 3)
    {
      v32 = v14;
    }

    else
    {
      v32 = 4;
    }

    if (v32 <= 1)
    {
      if (!v32)
      {
        goto LABEL_49;
      }

      v33 = *v15;
    }

    else if (v32 == 2)
    {
      v33 = *v15;
    }

    else if (v32 == 3)
    {
      v33 = *v15 | (*(((v12 + v9 + v14 + 1) & v11) + 2) << 16);
    }

    else
    {
      v33 = *v15;
    }

    v39 = (v33 | (v31 << v48)) + 3;
    v30 = v33 + 3;
    if (v14 < 4)
    {
      v30 = v39;
    }
  }

LABEL_49:
  if (v30 - 1 <= 1)
  {
    (*(v8 + 8))((v12 + v9 + v14 + 1) & v11, v5);
  }

  v40 = v16[v14];
  v41 = v40 - 3;
  if (v40 < 3)
  {
    goto LABEL_75;
  }

  if (v14 <= 3)
  {
    v42 = v14;
  }

  else
  {
    v42 = 4;
  }

  if (v42 > 1)
  {
    if (v42 == 2)
    {
      v43 = *v16;
    }

    else if (v42 == 3)
    {
      v43 = *v16 | (*(((v13 + v9 + v14 + 1) & v11) + 2) << 16);
    }

    else
    {
      v43 = *v16;
    }

LABEL_73:
    v46 = (v43 | (v41 << v48)) + 3;
    v40 = v43 + 3;
    if (v14 < 4)
    {
      v40 = v46;
    }

    goto LABEL_75;
  }

  if (v42)
  {
    v43 = *v16;
    goto LABEL_73;
  }

LABEL_75:
  if (v40 == 2)
  {
    (*(v8 + 32))((v12 + v9 + v14 + 1) & v11, (v13 + v9 + v14 + 1) & v11, v5);
    v15[v14] = 2;
  }

  else if (v40 == 1)
  {
    (*(v8 + 32))((v12 + v9 + v14 + 1) & v11, (v13 + v9 + v14 + 1) & v11, v5);
    v15[v14] = 1;
  }

  else if (v40)
  {
    memcpy(((v12 + v9 + v14 + 1) & v11), ((v13 + v9 + v14 + 1) & v11), v14 + 1);
  }

  else
  {
    v47 = *v16;
    *(((v12 + v9 + v14 + 1) & v11) + 0x10) = *(((v13 + v9 + v14 + 1) & v11) + 0x10);
    *v15 = v47;
    v15[v14] = 0;
  }

LABEL_7:
  v17 = ((v14 + 1 + v9) & v11) + v14 + 1;
  v18 = v12 + v17;
  v19 = v13 + v17;
  v20 = (v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  v23 = *(v21 + 16);
  *(v20 + 32) = *(v21 + 32);
  *v20 = v22;
  *(v20 + 16) = v23;
  *((v18 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v19 + 47) & 0xFFFFFFFFFFFFFFF8);
  return v49;
}

uint64_t getEnumTagSinglePayload for AnimatedValueTrack<A>.VectorPath.TimedKeyframe(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = 24;
  if (*(*(v5 - 8) + 64) > 0x18uLL)
  {
    v9 = *(*(v5 - 8) + 64);
  }

  if (v9 >= 4)
  {
    v10 = 252;
  }

  else
  {
    v10 = 252 - (1u >> (8 * v9));
  }

  if (v10 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 80) & 0xF8 | 7;
  v13 = *(*(AssociatedTypeWitness - 8) + 64) + v12;
  if (v11 >= a2)
  {
    goto LABEL_32;
  }

  v14 = ((v9 + (v13 & ~v12) + ((v9 + v12 + 1) & ~v12) + 48) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = a2 - v11 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_32;
      }
    }

LABEL_29:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v11 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v14);
    if (v19)
    {
      goto LABEL_29;
    }
  }

LABEL_32:
  if (v8 >= v10)
  {
    v24 = *(v7 + 48);

    return v24(a1);
  }

  else
  {
    v23 = *(((a1 + v13) & ~v12) + v9);
    if (v10 <= (v23 ^ 0xFFu))
    {
      return 0;
    }

    else
    {
      return (256 - v23);
    }
  }
}

void storeEnumTagSinglePayload for AnimatedValueTrack<A>.VectorPath.TimedKeyframe(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = 24;
  if (*(*(v7 - 8) + 64) > 0x18uLL)
  {
    v10 = *(*(v7 - 8) + 64);
  }

  v11 = 252 - (1u >> (8 * v10));
  if (v10 >= 4)
  {
    v11 = 252;
  }

  if (v11 <= v9)
  {
    v12 = *(v8 + 84);
  }

  else
  {
    v12 = v11;
  }

  v13 = *(*(v7 - 8) + 80) & 0xF8 | 7;
  v14 = *(v8 + 64) + v13;
  v15 = ((v10 + 1 + v13) & ~v13) + v10 + 1;
  v16 = (((v14 & ~v13) + v15 + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 >= a3)
  {
    v19 = 0;
    v20 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((((v14 & ~v13) + v15 + 47) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a3 - v12 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_21:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_37;
        }

        *(a1 + v16) = 0;
      }

      else if (v19)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

LABEL_37:
        if (v9 >= v11)
        {
          v25 = *(v8 + 56);

          v25(a1, a2);
        }

        else
        {
          v23 = ((a1 + v14) & ~v13);
          if (v11 >= a2)
          {
            v23[v10] = -a2;
          }

          else
          {
            v24 = ~v11 + a2;
            if (v15 < 4)
            {
              if (v15)
              {
                v26 = v24 & ~(-1 << (8 * v15));
                bzero(v23, v15);
                if (v15 == 3)
                {
                  *v23 = v26;
                  v23[2] = BYTE2(v26);
                }

                else if (v15 == 2)
                {
                  *v23 = v26;
                }

                else
                {
                  *v23 = v24;
                }
              }
            }

            else
            {
              bzero(v23, v15);
              *v23 = v24;
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }
  }

  if ((((v14 & ~v13) + v15 + 47) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (v16)
  {
    v22 = ~v12 + a2;
    bzero(a1, v16);
    *a1 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(a1 + v16) = v21;
    }

    else
    {
      *(a1 + v16) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + v16) = v21;
  }
}

uint64_t type metadata completion function for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = v7 + v8;
  v10 = v7 + 7;
  v11 = ((((v7 + 7 + ((v7 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v8 > 7 || (*(v6 + 80) & 0x100000) != 0 || v11 > 0x18)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v8 & 0xF8 ^ 0x1F8) & (v8 + 16)));
  }

  else
  {
    v15 = AssociatedTypeWitness;
    v16 = ~v8;
    v17 = *(v6 + 16);
    v17(a1, a2, AssociatedTypeWitness);
    v18 = (a2 + v9) & v16;
    v17(((a1 + v9) & v16), v18, v15);
    v19 = (v9 + v18) & v16;
    v17(((v9 + ((a1 + v9) & v16)) & v16), v19, v15);
    v20 = ((v10 + ((v9 + ((a1 + v9) & v16)) & v16)) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((v10 + v19) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v21;
    v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = *v23;
    v24 = *(v23 + 16);
    *(v22 + 32) = *(v23 + 32);
    *v22 = v25;
    *(v22 + 16) = v24;
  }

  return a1;
}

uint64_t destroy for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v9 = *(v4 + 8);
  v10 = v4 + 8;
  v9(a1, AssociatedTypeWitness);
  v5 = *(v10 + 72);
  v6 = *(v10 + 56) + v5;
  v7 = (v6 + a1) & ~v5;
  v9(v7, AssociatedTypeWitness);

  return (v9)((v6 + v7) & ~v5, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(a1, a2, AssociatedTypeWitness);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  v11 = (v9 + v10 + a2) & ~v10;
  v7((v9 + v10 + a1) & ~v10, v11, AssociatedTypeWitness);
  v12 = (v9 + v10 + v11) & ~v10;
  v7((v9 + v10 + ((v9 + v10 + a1) & ~v10)) & ~v10, v12, AssociatedTypeWitness);
  v13 = ((v9 + 7 + v12) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v9 + 7 + ((v9 + v10 + ((v9 + v10 + a1) & ~v10)) & ~v10)) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v13;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v16;
  v17 = *(v16 + 16);
  *(v15 + 32) = *(v16 + 32);
  *v15 = v18;
  *(v15 + 16) = v17;
  return a1;
}

uint64_t assignWithCopy for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 24);
  v8 = v6 + 24;
  v7(a1, a2, AssociatedTypeWitness);
  v9 = *(v8 + 40);
  v10 = *(v8 + 56);
  v11 = (v9 + v10 + a2) & ~v10;
  v7((v9 + v10 + a1) & ~v10, v11, AssociatedTypeWitness);
  v12 = (v9 + v10 + v11) & ~v10;
  v7((v9 + v10 + ((v9 + v10 + a1) & ~v10)) & ~v10, v12, AssociatedTypeWitness);
  v13 = ((v9 + 7 + v12) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v9 + 7 + ((v9 + v10 + ((v9 + v10 + a1) & ~v10)) & ~v10)) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v13;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v16;
  v17 = *(v16 + 16);
  *(v15 + 32) = *(v16 + 32);
  *v15 = v18;
  *(v15 + 16) = v17;
  return a1;
}

uint64_t initializeWithTake for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 32);
  v8 = v6 + 32;
  v7(a1, a2, AssociatedTypeWitness);
  v9 = *(v8 + 32);
  v10 = *(v8 + 48);
  v11 = (v9 + v10 + a2) & ~v10;
  v7((v9 + v10 + a1) & ~v10, v11, AssociatedTypeWitness);
  v12 = (v9 + v10 + v11) & ~v10;
  v7((v9 + v10 + ((v9 + v10 + a1) & ~v10)) & ~v10, v12, AssociatedTypeWitness);
  v13 = ((v9 + 7 + v12) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v9 + 7 + ((v9 + v10 + ((v9 + v10 + a1) & ~v10)) & ~v10)) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v13;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v16;
  v17 = *(v16 + 16);
  *(v15 + 32) = *(v16 + 32);
  *v15 = v18;
  *(v15 + 16) = v17;
  return a1;
}

uint64_t assignWithTake for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 40);
  v8 = v6 + 40;
  v7(a1, a2, AssociatedTypeWitness);
  v9 = *(v8 + 24);
  v10 = *(v8 + 40);
  v11 = (v9 + v10 + a2) & ~v10;
  v7((v9 + v10 + a1) & ~v10, v11, AssociatedTypeWitness);
  v12 = (v9 + v10 + v11) & ~v10;
  v7((v9 + v10 + ((v9 + v10 + a1) & ~v10)) & ~v10, v12, AssociatedTypeWitness);
  v13 = ((v9 + 7 + v12) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v9 + 7 + ((v9 + v10 + ((v9 + v10 + a1) & ~v10)) & ~v10)) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v13;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v16;
  v17 = *(v16 + 16);
  *(v15 + 32) = *(v16 + 32);
  *v15 = v18;
  *(v15 + 16) = v17;
  return a1;
}

uint64_t getEnumTagSinglePayload for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_28:
    v16 = *(v6 + 48);

    return v16(a1);
  }

  v8 = ((((*(*(AssociatedTypeWitness - 8) + 64) + ((*(*(AssociatedTypeWitness - 8) + 64) + *(v6 + 80) + ((*(*(AssociatedTypeWitness - 8) + 64) + *(v6 + 80)) & ~*(v6 + 80))) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v8 <= 3)
  {
    v9 = ((a2 - v7 + 255) >> 8) + 1;
  }

  else
  {
    v9 = 2;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_27;
      }
    }

    else
    {
      v12 = *&a1[v8];
      if (!v12)
      {
        goto LABEL_27;
      }
    }
  }

  else if (!v11 || (v12 = a1[v8]) == 0)
  {
LABEL_27:
    if (v7)
    {
      goto LABEL_28;
    }

    return 0;
  }

  v13 = (v12 - 1) << (8 * v8);
  v14 = v8 > 3;
  if (v8 <= 3)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v18 = *a1;
  }

  else
  {
    v18 = *a1;
  }

  return v7 + (v18 | v15) + 1;
}

void storeEnumTagSinglePayload for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = ((((*(v7 + 64) + ((*(v7 + 64) + *(v7 + 80) + ((*(v7 + 64) + *(v7 + 80)) & ~*(v7 + 80))) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v8 >= a3)
  {
    v12 = 0;
    if (v8 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v9 <= 3)
    {
      v10 = ((a3 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v8 >= a2)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v9] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_29;
        }

        *&a1[v9] = 0;
      }

      else if (v12)
      {
        a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      }

      if (!a2)
      {
        return;
      }

LABEL_29:
      v15 = *(v7 + 56);

      v15(a1, a2);
      return;
    }
  }

  v13 = ~v8 + a2;
  bzero(a1, v9);
  if (v9 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v9 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_24:
      if (v12 == 2)
      {
        *&a1[v9] = v14;
      }

      else
      {
        *&a1[v9] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    a1[v9] = v14;
  }
}

uint64_t type metadata completion function for Curve(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Curve(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = ~v7;
  v9 = v6 + v7;
  v10 = ((v6 + v7 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & ~v7) + v6;
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v10 > 0x18)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v7 + 16) & v8));
  }

  else
  {
    v14 = *(v5 + 16);
    v14(a1, a2, v4);
    v16 = (a2 + v9) & v8;
    v14(((v3 + v9) & v8), v16, v4);
    v17 = (v9 + v16) & v8;
    v14(((v9 + ((v3 + v9) & v8)) & v8), v17, v4);
    v14(((v9 + ((v9 + ((v3 + v9) & v8)) & v8)) & v8), ((v9 + v17) & v8), v4);
  }

  return v3;
}

uint64_t destroy for Curve(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v10 = *(v4 + 8);
  v10(a1, v3);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + v5;
  v7 = (v6 + a1) & ~v5;
  v10(v7, v3);
  v8 = (v6 + v7) & ~v5;
  v10(v8, v3);

  return (v10)((v6 + v8) & ~v5, v3);
}

uint64_t initializeWithCopy for Curve(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(a1, a2, v5);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64) + v8;
  v10 = (v9 + a2) & ~v8;
  v7((v9 + a1) & ~v8, v10, v5);
  v11 = (v9 + v10) & ~v8;
  v7((v9 + ((v9 + a1) & ~v8)) & ~v8, v11, v5);
  v7((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8, (v9 + v11) & ~v8, v5);
  return a1;
}

uint64_t assignWithCopy for Curve(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v7(a1, a2, v5);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64) + v8;
  v10 = (v9 + a2) & ~v8;
  v7((v9 + a1) & ~v8, v10, v5);
  v11 = (v9 + v10) & ~v8;
  v7((v9 + ((v9 + a1) & ~v8)) & ~v8, v11, v5);
  v7((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8, (v9 + v11) & ~v8, v5);
  return a1;
}

uint64_t initializeWithTake for Curve(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v7(a1, a2, v5);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64) + v8;
  v10 = (v9 + a2) & ~v8;
  v7((v9 + a1) & ~v8, v10, v5);
  v11 = (v9 + v10) & ~v8;
  v7((v9 + ((v9 + a1) & ~v8)) & ~v8, v11, v5);
  v7((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8, (v9 + v11) & ~v8, v5);
  return a1;
}

uint64_t assignWithTake for Curve(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v7(a1, a2, v5);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64) + v8;
  v10 = (v9 + a2) & ~v8;
  v7((v9 + a1) & ~v8, v10, v5);
  v11 = (v9 + v10) & ~v8;
  v7((v9 + ((v9 + a1) & ~v8)) & ~v8, v11, v5);
  v7((v9 + ((v9 + ((v9 + a1) & ~v8)) & ~v8)) & ~v8, (v9 + v11) & ~v8, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for Curve(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = *(v4 + 80);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v6 + v8 + ((v6 + v8 + ((v6 + v8) & ~v8)) & ~v8)) & ~v8) + v6;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v5 + (v9 | v13) + 1;
}

char *storeEnumTagSinglePayload for Curve(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = *(v5 + 80);
  v9 = ((*(v5 + 64) + v8 + ((*(v5 + 64) + v8 + ((*(v5 + 64) + v8) & ~v8)) & ~v8)) & ~v8) + *(v5 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v16 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v15 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v18 = v13 & ~(-1 << (8 * v9));
        v19 = result;
        bzero(result, v9);
        result = v19;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v19 = v18;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&result[v9] = v15;
              }

              else
              {
                *&result[v9] = v15;
              }

              return result;
            }
          }

          else
          {
            *v19 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = result;
      bzero(result, v9);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      result[v9] = v15;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v9] = 0;
  }

  else if (v12)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v20 = *(v6 + 56);

  return v20();
}

uint64_t type metadata completion function for AnimatedValueTrack<A>.VectorPath.Element(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment(319, v2, v1, v4);
    if (v6 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AnimatedValueTrack<A>.VectorPath.Element(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = v8;
  v10 = v7 + v8;
  v11 = v7 + 7;
  if (((((v7 + 7 + ((v7 + v9 + ((v7 + v9) & ~v9)) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33 > v7)
  {
    v7 = ((((v7 + 7 + ((v7 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  }

  if (v7 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = v7;
  }

  v13 = v8 <= 7u && (v8 & 0x100000) == 0;
  if (!v13 || (v12 + 1) > 0x18)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = (v18 + ((v8 & 0xF8 ^ 0x1F8u) & (v8 + 16)));

    return a1;
  }

  v14 = *(a2 + v12);
  v15 = v14 - 3;
  if (v14 < 3)
  {
    goto LABEL_27;
  }

  if (v12 <= 3)
  {
    v16 = v12;
  }

  else
  {
    v16 = 4;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *a2;
      if (v12 < 4)
      {
        goto LABEL_32;
      }
    }

    else if (v16 == 3)
    {
      v17 = *a2 | (*(a2 + 2) << 16);
      if (v12 < 4)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v17 = *a2;
      if (v12 < 4)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_26;
  }

  if (!v16)
  {
    goto LABEL_27;
  }

  v17 = *a2;
  if (v12 >= 4)
  {
LABEL_26:
    v14 = v17 + 3;
LABEL_27:
    if (v14 == 2)
    {
LABEL_33:
      *a1 = *a2;
      v30 = 2;
      goto LABEL_34;
    }

    goto LABEL_28;
  }

LABEL_32:
  v31 = v17 | (v15 << (8 * v12));
  v14 = v31 + 3;
  if (v31 == -1)
  {
    goto LABEL_33;
  }

LABEL_28:
  if (v14 == 1)
  {
    v19 = ~v9;
    v20 = *(v6 + 16);
    v21 = AssociatedTypeWitness;
    v20(a1, a2, AssociatedTypeWitness);
    v22 = (a2 + v10) & v19;
    v20(((a1 + v10) & v19), v22, v21);
    v23 = (v10 + v22) & v19;
    v20(((v10 + ((a1 + v10) & v19)) & v19), v23, v21);
    v24 = ((v11 + ((v10 + ((a1 + v10) & v19)) & v19)) & 0xFFFFFFFFFFFFFFF8);
    v25 = ((v11 + v23) & 0xFFFFFFFFFFFFFFF8);
    *v24 = *v25;
    v26 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
    v29 = *v27;
    v28 = *(v27 + 16);
    *(v26 + 32) = *(v27 + 32);
    *v26 = v29;
    *(v26 + 16) = v28;
    v30 = 1;
LABEL_34:
    *(a1 + v12) = v30;
    return a1;
  }

  (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
  *(a1 + v12) = 0;
  return a1;
}

uint64_t destroy for AnimatedValueTrack<A>.VectorPath.Element(unsigned __int8 *a1, uint64_t a2)
{
  result = swift_getAssociatedTypeWitness();
  v4 = result;
  v5 = *(result - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  if (((((v6 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33 > v6)
  {
    v6 = ((((v6 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  }

  if (v6 <= 8)
  {
    v6 = 8;
  }

  v9 = a1[v6];
  v10 = v9 - 3;
  if (v9 >= 3)
  {
    if (v6 <= 3)
    {
      v11 = v6;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_19;
      }

      v12 = *a1;
    }

    else if (v11 == 2)
    {
      v12 = *a1;
    }

    else if (v11 == 3)
    {
      v12 = *a1 | (a1[2] << 16);
    }

    else
    {
      v12 = *a1;
    }

    v13 = (v12 | (v10 << (8 * v6))) + 3;
    v9 = v12 + 3;
    if (v6 < 4)
    {
      v9 = v13;
    }
  }

LABEL_19:
  if (v9 != 2)
  {
    if (v9 == 1)
    {
      v14 = ~v7;
      v19 = *(v5 + 8);
      v19(a1, result);
      v15 = &a1[v8] & v14;
      v19(v15, v4);
      v16 = ((v8 + v15) & v14);
      v17 = v4;
      v18 = v19;
    }

    else
    {
      v18 = *(v5 + 8);
      v16 = a1;
      v17 = v4;
    }

    return v18(v16, v17);
  }

  return result;
}

void *initializeWithCopy for AnimatedValueTrack<A>.VectorPath.Element(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = v7 + v8;
  v10 = v7 + 7;
  if (((((v7 + 7 + ((v7 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33 > v7)
  {
    v7 = ((((v7 + 7 + ((v7 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  }

  if (v7 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v7;
  }

  v12 = a2[v11];
  v13 = v12 - 3;
  if (v12 >= 3)
  {
    if (v11 <= 3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 4;
    }

    if (v14 <= 1)
    {
      if (!v14)
      {
        goto LABEL_20;
      }

      v15 = *a2;
    }

    else if (v14 == 2)
    {
      v15 = *a2;
    }

    else if (v14 == 3)
    {
      v15 = *a2 | (a2[2] << 16);
    }

    else
    {
      v15 = *a2;
    }

    v16 = (v15 | (v13 << (8 * v11))) + 3;
    v12 = v15 + 3;
    if (v11 < 4)
    {
      v12 = v16;
    }
  }

LABEL_20:
  if (v12 == 2)
  {
    *a1 = *a2;
    v27 = 2;
  }

  else if (v12 == 1)
  {
    v17 = ~v8;
    v18 = *(v6 + 16);
    v18(a1, a2, AssociatedTypeWitness);
    v19 = &a2[v9] & v17;
    v18(((a1 + v9) & v17), v19, AssociatedTypeWitness);
    v20 = (v9 + v19) & v17;
    v18(((v9 + ((a1 + v9) & v17)) & v17), v20, AssociatedTypeWitness);
    v21 = ((v10 + v20) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((v10 + ((v9 + ((a1 + v9) & v17)) & v17)) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *v21;
    v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v26 = *v24;
    v25 = *(v24 + 16);
    *(v23 + 32) = *(v24 + 32);
    *v23 = v26;
    *(v23 + 16) = v25;
    v27 = 1;
  }

  else
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    v27 = 0;
  }

  *(a1 + v11) = v27;
  return a1;
}

unsigned __int8 *assignWithCopy for AnimatedValueTrack<A>.VectorPath.Element(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = *(AssociatedTypeWitness - 8);
    v7 = *(v6 + 64);
    v8 = *(v6 + 80);
    v9 = v7 + v8;
    v10 = v7 + 7;
    if (((((v7 + 7 + ((v7 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33 > v7)
    {
      v7 = ((((v7 + 7 + ((v7 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
    }

    if (v7 <= 8)
    {
      v11 = 8;
    }

    else
    {
      v11 = v7;
    }

    v12 = a1[v11];
    v13 = v12 - 3;
    if (v12 < 3)
    {
LABEL_23:
      v16 = ~v8;
      if (v12 != 2)
      {
        if (v12 == 1)
        {
          v17 = *(v6 + 8);
          v17(a1, AssociatedTypeWitness);
          v17((&a1[v9] & v16), AssociatedTypeWitness);
          v17(((v9 + (&a1[v9] & v16)) & v16), AssociatedTypeWitness);
        }

        else
        {
          (*(v6 + 8))(a1, AssociatedTypeWitness);
        }
      }

      v18 = a2[v11];
      v19 = v18 - 3;
      if (v18 >= 3)
      {
        if (v11 <= 3)
        {
          v20 = v11;
        }

        else
        {
          v20 = 4;
        }

        if (v20 <= 1)
        {
          if (!v20)
          {
            goto LABEL_41;
          }

          v21 = *a2;
          if (v11 < 4)
          {
LABEL_46:
            v32 = v21 | (v19 << (8 * v11));
            v18 = v32 + 3;
            if (v32 == -1)
            {
              goto LABEL_47;
            }

            goto LABEL_42;
          }
        }

        else if (v20 == 2)
        {
          v21 = *a2;
          if (v11 < 4)
          {
            goto LABEL_46;
          }
        }

        else if (v20 == 3)
        {
          v21 = *a2 | (a2[2] << 16);
          if (v11 < 4)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v21 = *a2;
          if (v11 < 4)
          {
            goto LABEL_46;
          }
        }

        v18 = v21 + 3;
      }

LABEL_41:
      if (v18 == 2)
      {
LABEL_47:
        *a1 = *a2;
        v31 = 2;
LABEL_48:
        a1[v11] = v31;
        return a1;
      }

LABEL_42:
      if (v18 == 1)
      {
        v22 = *(v6 + 16);
        v22(a1, a2, AssociatedTypeWitness);
        v23 = &a2[v9] & v16;
        v22((&a1[v9] & v16), v23, AssociatedTypeWitness);
        v24 = (v9 + v23) & v16;
        v22(((v9 + (&a1[v9] & v16)) & v16), v24, AssociatedTypeWitness);
        v25 = ((v10 + v24) & 0xFFFFFFFFFFFFFFF8);
        v26 = ((v10 + ((v9 + (&a1[v9] & v16)) & v16)) & 0xFFFFFFFFFFFFFFF8);
        *v26 = *v25;
        v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
        v28 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
        v30 = *v28;
        v29 = *(v28 + 16);
        *(v27 + 32) = *(v28 + 32);
        *v27 = v30;
        *(v27 + 16) = v29;
        v31 = 1;
      }

      else
      {
        (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
        v31 = 0;
      }

      goto LABEL_48;
    }

    if (v11 <= 3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = *a1;
        if (v11 >= 4)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v14 == 3)
        {
          v15 = *a1 | (a1[2] << 16);
          if (v11 < 4)
          {
            goto LABEL_22;
          }

LABEL_20:
          v12 = v15 + 3;
          goto LABEL_23;
        }

        v15 = *a1;
        if (v11 >= 4)
        {
          goto LABEL_20;
        }
      }

LABEL_22:
      v12 = (v15 | (v13 << (8 * v11))) + 3;
      goto LABEL_23;
    }

    if (!v14)
    {
      goto LABEL_23;
    }

    v15 = *a1;
    if (v11 < 4)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  return a1;
}

void *initializeWithTake for AnimatedValueTrack<A>.VectorPath.Element(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = v7 + v8;
  v10 = v7 + 7;
  if (((((v7 + 7 + ((v7 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33 > v7)
  {
    v7 = ((((v7 + 7 + ((v7 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  }

  if (v7 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v7;
  }

  v12 = a2[v11];
  v13 = v12 - 3;
  if (v12 >= 3)
  {
    if (v11 <= 3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 4;
    }

    if (v14 <= 1)
    {
      if (!v14)
      {
        goto LABEL_20;
      }

      v15 = *a2;
    }

    else if (v14 == 2)
    {
      v15 = *a2;
    }

    else if (v14 == 3)
    {
      v15 = *a2 | (a2[2] << 16);
    }

    else
    {
      v15 = *a2;
    }

    v16 = (v15 | (v13 << (8 * v11))) + 3;
    v12 = v15 + 3;
    if (v11 < 4)
    {
      v12 = v16;
    }
  }

LABEL_20:
  if (v12 == 2)
  {
    *a1 = *a2;
    v27 = 2;
  }

  else if (v12 == 1)
  {
    v17 = ~v8;
    v18 = *(v6 + 32);
    v18(a1, a2, AssociatedTypeWitness);
    v19 = &a2[v9] & v17;
    v18(((a1 + v9) & v17), v19, AssociatedTypeWitness);
    v20 = (v9 + v19) & v17;
    v18(((v9 + ((a1 + v9) & v17)) & v17), v20, AssociatedTypeWitness);
    v21 = ((v10 + v20) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((v10 + ((v9 + ((a1 + v9) & v17)) & v17)) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *v21;
    v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v26 = *v24;
    v25 = *(v24 + 16);
    *(v23 + 32) = *(v24 + 32);
    *v23 = v26;
    *(v23 + 16) = v25;
    v27 = 1;
  }

  else
  {
    (*(v6 + 32))(a1, a2, AssociatedTypeWitness);
    v27 = 0;
  }

  *(a1 + v11) = v27;
  return a1;
}

unsigned __int8 *assignWithTake for AnimatedValueTrack<A>.VectorPath.Element(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = *(AssociatedTypeWitness - 8);
    v7 = *(v6 + 64);
    v8 = *(v6 + 80);
    v9 = v7 + v8;
    v10 = v7 + 7;
    if (((((v7 + 7 + ((v7 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33 > v7)
    {
      v7 = ((((v7 + 7 + ((v7 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
    }

    if (v7 <= 8)
    {
      v11 = 8;
    }

    else
    {
      v11 = v7;
    }

    v12 = a1[v11];
    v13 = v12 - 3;
    if (v12 < 3)
    {
LABEL_23:
      v16 = ~v8;
      if (v12 != 2)
      {
        if (v12 == 1)
        {
          v17 = *(v6 + 8);
          v17(a1, AssociatedTypeWitness);
          v17((&a1[v9] & v16), AssociatedTypeWitness);
          v17(((v9 + (&a1[v9] & v16)) & v16), AssociatedTypeWitness);
        }

        else
        {
          (*(v6 + 8))(a1, AssociatedTypeWitness);
        }
      }

      v18 = a2[v11];
      v19 = v18 - 3;
      if (v18 >= 3)
      {
        if (v11 <= 3)
        {
          v20 = v11;
        }

        else
        {
          v20 = 4;
        }

        if (v20 <= 1)
        {
          if (!v20)
          {
            goto LABEL_41;
          }

          v21 = *a2;
          if (v11 < 4)
          {
LABEL_46:
            v32 = v21 | (v19 << (8 * v11));
            v18 = v32 + 3;
            if (v32 == -1)
            {
              goto LABEL_47;
            }

            goto LABEL_42;
          }
        }

        else if (v20 == 2)
        {
          v21 = *a2;
          if (v11 < 4)
          {
            goto LABEL_46;
          }
        }

        else if (v20 == 3)
        {
          v21 = *a2 | (a2[2] << 16);
          if (v11 < 4)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v21 = *a2;
          if (v11 < 4)
          {
            goto LABEL_46;
          }
        }

        v18 = v21 + 3;
      }

LABEL_41:
      if (v18 == 2)
      {
LABEL_47:
        *a1 = *a2;
        v31 = 2;
LABEL_48:
        a1[v11] = v31;
        return a1;
      }

LABEL_42:
      if (v18 == 1)
      {
        v22 = *(v6 + 32);
        v22(a1, a2, AssociatedTypeWitness);
        v23 = &a2[v9] & v16;
        v22((&a1[v9] & v16), v23, AssociatedTypeWitness);
        v24 = (v9 + v23) & v16;
        v22(((v9 + (&a1[v9] & v16)) & v16), v24, AssociatedTypeWitness);
        v25 = ((v10 + v24) & 0xFFFFFFFFFFFFFFF8);
        v26 = ((v10 + ((v9 + (&a1[v9] & v16)) & v16)) & 0xFFFFFFFFFFFFFFF8);
        *v26 = *v25;
        v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
        v28 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
        v30 = *v28;
        v29 = *(v28 + 16);
        *(v27 + 32) = *(v28 + 32);
        *v27 = v30;
        *(v27 + 16) = v29;
        v31 = 1;
      }

      else
      {
        (*(v6 + 32))(a1, a2, AssociatedTypeWitness);
        v31 = 0;
      }

      goto LABEL_48;
    }

    if (v11 <= 3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = *a1;
        if (v11 >= 4)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v14 == 3)
        {
          v15 = *a1 | (a1[2] << 16);
          if (v11 < 4)
          {
            goto LABEL_22;
          }

LABEL_20:
          v12 = v15 + 3;
          goto LABEL_23;
        }

        v15 = *a1;
        if (v11 >= 4)
        {
          goto LABEL_20;
        }
      }

LABEL_22:
      v12 = (v15 | (v13 << (8 * v11))) + 3;
      goto LABEL_23;
    }

    if (!v14)
    {
      goto LABEL_23;
    }

    v15 = *a1;
    if (v11 < 4)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for AnimatedValueTrack<A>.VectorPath.Element(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 64);
  v7 = ((((v6 + ((v6 + *(v5 + 80) + ((v6 + *(v5 + 80)) & ~*(v5 + 80))) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v7 > v6)
  {
    v6 = v7;
  }

  v8 = 8;
  if (v6 > 8)
  {
    v8 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 253) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v13 < 2)
    {
LABEL_27:
      v15 = *(a1 + v8);
      if (v15 >= 3)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_27;
  }

LABEL_16:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return (v9 | v14) + 254;
}

void storeEnumTagSinglePayload for AnimatedValueTrack<A>.VectorPath.Element(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 64);
  v9 = ((((v8 + ((v8 + *(v7 + 80) + ((v8 + *(v7 + 80)) & ~*(v7 + 80))) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v9 > v8)
  {
    v8 = v9;
  }

  if (v8 <= 8)
  {
    v8 = 8;
  }

  v10 = v8 + 1;
  if (a3 < 0xFE)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 253) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFD)
  {
    v12 = a2 - 254;
    if (v10 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v8 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_41:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v8] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_26;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}