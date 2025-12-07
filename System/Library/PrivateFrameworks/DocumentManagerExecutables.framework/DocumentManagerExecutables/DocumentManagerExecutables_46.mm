void DOCItemCollectionCoreFooterAwareLayout.footerFrame(for:)(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v3 = Strong;
  v4 = [Strong collectionView];
  if (!v4)
  {
    v5 = v3;
LABEL_9:

LABEL_10:
    [a1 frame];
    return;
  }

  v5 = v4;
  [a1 size];
  if (v6 <= 1.0)
  {

    goto LABEL_9;
  }

  [v3 collectionViewContentSize];
  v8 = v7;
  [a1 frame];
  v9 = v5;
  [v9 bounds];
  Height = CGRectGetHeight(v15);
  [v9 safeAreaInsets];
  v12 = Height - v11;
  [v9 safeAreaInsets];
  v14 = v13;

  if (v8 < v12 - v14)
  {
    [a1 size];
  }
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

uint64_t getEnumTagSinglePayload for DOCItemCollectionCoreFooterAwareLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
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

uint64_t storeEnumTagSinglePayload for DOCItemCollectionCoreFooterAwareLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

id partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Int, @unowned NSCollectionLayoutEnvironment) -> (@autoreleased NSCollectionLayoutSection?)()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

id partial apply for closure #2 in DOCItemCollectionCoreFooterAwareLayout._updateLayoutAttributesIfNecessary(_:)(void **a1)
{
  v1 = *a1;
  DOCItemCollectionCoreFooterAwareLayout.footerFrame(for:)(*a1);
  return [v1 setFrame_];
}

id DOCEverywhereSearchScope.__allocating_init(displayName:trashedItemsMembership:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCEverywhereSearchScope_trashedItemsMembership;
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCEverywhereSearchScope_trashedItemsMembership] = 1;
  v9 = &v7[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCEverywhereSearchScope_displayName];
  *v9 = a1;
  *(v9 + 1) = a2;
  *&v7[v8] = a3;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

id DOCFileProviderSearchScope.__allocating_init(displayName:providerDomainIdentifier:shouldPerformServerSearch:trashedItemsMembership:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_shouldPerformServerSearch;
  v11[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_shouldPerformServerSearch] = 0;
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_trashedItemsMembership;
  *&v11[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_trashedItemsMembership] = 1;
  v14 = &v11[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_displayName];
  *v14 = a1;
  v14[1] = a2;
  *&v11[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_providerDomainIdentifier] = a3;
  v11[v12] = a4;
  *&v11[v13] = a5;
  v16.receiver = v11;
  v16.super_class = v5;
  return objc_msgSendSuper2(&v16, sel_init);
}

id DOCItemCollectionSearchScope.__allocating_init(displayName:source:shouldPerformServerSearch:trashedItemsMembership:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_shouldPerformServerSearch;
  v13[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_shouldPerformServerSearch] = 0;
  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_trashedItemsMembership;
  *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_trashedItemsMembership] = 1;
  v16 = &v13[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_displayName];
  *v16 = a1;
  v16[1] = a2;
  v17 = &v13[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_source];
  *v17 = a3;
  v17[8] = a4 & 1;
  v13[v14] = a5;
  *&v13[v15] = a6;
  v19.receiver = v13;
  v19.super_class = v6;
  return objc_msgSendSuper2(&v19, sel_init);
}

void UIViewController.doc_manuallyHiddenForSearch.setter(char a1)
{
  v2 = v1;
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v1, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  v5 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v4) + 0x60))(v11);

  if (LOBYTE(v11[0]) == 2)
  {
    if ((a1 & 1) == 0)
    {
      return;
    }
  }

  else if ((v11[0] & 1) == (a1 & 1))
  {
    return;
  }

  v6 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v2, static UIViewController.associatedObjectStorageKey);
  KeyPath = swift_getKeyPath();
  LOBYTE(v11[0]) = a1 & 1;
  (*((*v5 & *v6) + 0x68))(v11, KeyPath);

  v8 = [v2 view];
  if (v8)
  {
    v9 = v8;
    v10 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v2, static UIViewController.associatedObjectStorageKey);
    swift_getKeyPath();
    (*((*v5 & *v10) + 0x60))(v11);

    [v9 setHidden_];
  }

  else
  {
    __break(1u);
  }
}

BOOL static DOCSearchPresentationState.== infix(_:_:)(int a1, int a2)
{
  switch(a1)
  {
    case 2u:
      return a2 == 2;
    case 3u:
      return a2 == 3;
    case 4u:
      return a2 == 4;
  }

  if ((a2 - 2) < 3u)
  {
    return 0;
  }

  return (a2 ^ a1 ^ 1) & 1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DOCSearchPresentationState(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 2:
      return v3 == 2;
    case 3:
      return v3 == 3;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 2) < 3)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t DOCEverywhereSearchScope.displayName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCEverywhereSearchScope_displayName);

  return v1;
}

id DOCEverywhereSearchScope.init(displayName:trashedItemsMembership:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCEverywhereSearchScope_trashedItemsMembership;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCEverywhereSearchScope_trashedItemsMembership] = 1;
  v5 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCEverywhereSearchScope_displayName];
  *v5 = a1;
  *(v5 + 1) = a2;
  *&v3[v4] = a3;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for DOCEverywhereSearchScope();
  return objc_msgSendSuper2(&v7, sel_init);
}

id DOCEverywhereSearchScope.configuredSearchQuery.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CC64B0]) initWithSearchScope_];
  [v1 setTrashedItemsMembership_];
  return v1;
}

id DOCEverywhereSearchScope.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t protocol witness for DOCSearchScope.displayName.getter in conformance DOCEverywhereSearchScope()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCEverywhereSearchScope_displayName);

  return v1;
}

id DOCItemCollectionSearchScope.Source.additionalItemFilteringPredicate.getter(void *a1, char a2)
{
  if (a2)
  {
    return [a1 itemFilteringPredicate];
  }

  else
  {
    return 0;
  }
}

id DOCItemCollectionSearchScope.Source.scopedSearchQuery()(void *a1, char a2)
{
  v2 = &selRef_scopedSearchQuery;
  if ((a2 & 1) == 0)
  {
    v2 = &selRef_scopedSearchQueryUnderItem;
  }

  v3 = [a1 *v2];

  return v3;
}

uint64_t DOCItemCollectionSearchScope.displayName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_displayName);

  return v1;
}

id DOCItemCollectionSearchScope.additionalItemFilteringPredicate.getter()
{
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_source + 8) == 1)
  {
    return [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_source) itemFilteringPredicate];
  }

  else
  {
    return 0;
  }
}

id DOCItemCollectionSearchScope.init(displayName:source:shouldPerformServerSearch:trashedItemsMembership:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_shouldPerformServerSearch;
  v6[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_shouldPerformServerSearch] = 0;
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_trashedItemsMembership;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_trashedItemsMembership] = 1;
  v9 = &v6[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_displayName];
  *v9 = a1;
  v9[1] = a2;
  v10 = &v6[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_source];
  *v10 = a3;
  v10[8] = a4 & 1;
  v6[v7] = a5;
  *&v6[v8] = a6;
  v12.receiver = v6;
  v12.super_class = type metadata accessor for DOCItemCollectionSearchScope();
  return objc_msgSendSuper2(&v12, sel_init);
}

id DOCItemCollectionSearchScope.configuredSearchQuery.getter()
{
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_source + 8))
  {
    v1 = &selRef_scopedSearchQuery;
  }

  else
  {
    v1 = &selRef_scopedSearchQueryUnderItem;
  }

  v2 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_source) *v1];
  [v2 setShouldPerformServerSearch_];
  [v2 setTrashedItemsMembership_];
  return v2;
}

uint64_t protocol witness for DOCSearchScope.displayName.getter in conformance DOCItemCollectionSearchScope()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionSearchScope_displayName);

  return v1;
}

uint64_t DOCFileProviderSearchScope.displayName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_displayName);

  return v1;
}

id DOCFileProviderSearchScope.init(displayName:providerDomainIdentifier:shouldPerformServerSearch:trashedItemsMembership:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_shouldPerformServerSearch;
  v5[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_shouldPerformServerSearch] = 0;
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_trashedItemsMembership;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_trashedItemsMembership] = 1;
  v8 = &v5[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_displayName];
  *v8 = a1;
  v8[1] = a2;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_providerDomainIdentifier] = a3;
  v5[v6] = a4;
  *&v5[v7] = a5;
  v10.receiver = v5;
  v10.super_class = type metadata accessor for DOCFileProviderSearchScope();
  return objc_msgSendSuper2(&v10, sel_init);
}

id DOCFileProviderSearchScope.configuredSearchQuery.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CC64B0]) initWithSearchScope_];
  [v1 setProviderDomainID_];
  [v1 setShouldPerformServerSearch_];
  [v1 setTrashedItemsMembership_];
  return v1;
}

uint64_t protocol witness for DOCSearchScope.displayName.getter in conformance DOCFileProviderSearchScope()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables26DOCFileProviderSearchScope_displayName);

  return v1;
}

id DOCPlaceholderSearchController.init(searchResultsController:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCPlaceholderSearchController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithSearchResultsController_, a1);

  return v3;
}

id DOCPlaceholderSearchController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = MEMORY[0x24C1FAD20](a1);
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for DOCPlaceholderSearchController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id DOCPlaceholderSearchController.init(coder:)(void *a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for DOCPlaceholderSearchController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

double DOCSearchController.dismissingAssertion.getter()
{
  swift_beginAccess();

  return result;
}

double DOCSearchController.dismissingAssertion.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_dismissingAssertion;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t DOCSearchController.searchPresentationState.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchPresentationState;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCSearchController.searchPresentationState.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchPresentationState;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v1) + 0x1B8))(v4);
  (*((*v5 & *v6) + 0xB8))(*(v1 + v3));
}

uint64_t (*DOCSearchController.searchPresentationState.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchPresentationState;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCSearchController.searchPresentationState.modify;
}

void DOCSearchController.searchPresentationState.modify(void *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = v3[4];
    v7 = MEMORY[0x277D85000];
    v8 = (*((*MEMORY[0x277D85000] & *v5) + 0x1B8))(v4);
    (*((*v7 & *v8) + 0xB8))(*(v5 + v6));
  }

  free(v3);
}

id DOCSearchController.stackedSearchLayout.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___stackedSearchLayout;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___stackedSearchLayout);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___stackedSearchLayout);
  }

  else
  {
    v4 = type metadata accessor for DOCSearchControllerStackedLayout();
    v5 = objc_allocWithZone(v4);
    swift_unknownObjectWeakInit();
    v5[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_canShowAppMenuButton] = 1;
    v5[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_searchPresentationState] = 4;
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButton] = 0;
    v5[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButtonVisible] = 0;
    swift_unknownObjectWeakAssign();
    v10.receiver = v5;
    v10.super_class = v4;
    v6 = objc_msgSendSuper2(&v10, sel_init);
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id DOCSearchControllerStackedLayout.__allocating_init(for:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_canShowAppMenuButton] = 1;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_searchPresentationState] = 4;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButton] = 0;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButtonVisible] = 0;
  swift_unknownObjectWeakAssign();
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

void DOCSearchController.stackedSearchLayout.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___stackedSearchLayout);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___stackedSearchLayout) = a1;
}

void (*DOCSearchController.stackedSearchLayout.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCSearchController.stackedSearchLayout.getter();
  return DOCSearchController.stackedSearchLayout.modify;
}

void DOCSearchController.stackedSearchLayout.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___stackedSearchLayout);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___stackedSearchLayout) = v2;
}

BOOL DOCSearchController.suggestionsPlacement.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController);
  v2 = [v1 traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 != 1)
  {
    v4 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v1) + 0xE80))(0);
    (*((*v4 & *v1) + 0xA30))(1);
  }

  v5 = v3 != 1;
  if (v5 != *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_internalPlacement))
  {
    *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_internalPlacement) = v5;
    DOCSearchController.updateInlineSuggestionsVisibilityAndLayout()();
  }

  return v3 != 1;
}

uint64_t DOCSearchController.searchFieldHasFocus.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchFieldHasFocus;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCSearchController.searchFieldHasFocus.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchFieldHasFocus;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    DOCSearchController.updateInlineSuggestionsVisibilityAndLayout()();
  }
}

void (*DOCSearchController.searchFieldHasFocus.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchFieldHasFocus;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCSearchController.searchFieldHasFocus.modify;
}

void DOCSearchController.searchFieldHasFocus.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    DOCSearchController.updateInlineSuggestionsVisibilityAndLayout()();
  }

  free(v1);
}

id DOCSearchController.suggestionsTableViewController.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___suggestionsTableViewController;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___suggestionsTableViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___suggestionsTableViewController);
  }

  else
  {
    v4 = closure #1 in DOCSearchController.suggestionsTableViewController.getter(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in DOCSearchController.suggestionsTableViewController.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for DOCSuggestionsTableViewController()) init];
  result = [v2 view];
  if (result)
  {
    v4 = result;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClassUnconditional();
    v6 = *MEMORY[0x277D06138];
    v7 = v4;
    [v5 setAccessibilityIdentifier_];
    [v5 setContentInsetAdjustmentBehavior_];
    v8 = [v5 widthAnchor];

    v9 = [v8 constraintEqualToConstant_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    *(inited + 32) = v9;

    v11 = v9;
    DOCSizeCategoryDependantConstraints.addConstraints(for:_:)(2, inited);

    swift_setDeallocating();
    swift_arrayDestroy();
    v12 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTableViewWidthConstraint);
    *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTableViewWidthConstraint) = v11;

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DOCSearchController.suggestionsTableViewController.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___suggestionsTableViewController);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___suggestionsTableViewController) = a1;
}

void (*DOCSearchController.suggestionsTableViewController.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCSearchController.suggestionsTableViewController.getter();
  return DOCSearchController.suggestionsTableViewController.modify;
}

void DOCSearchController.suggestionsTableViewController.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___suggestionsTableViewController);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___suggestionsTableViewController) = v2;
}

void DOCSearchController.updateInlineSuggestionsVisibilityAndLayout()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x1E8))();
  v4 = v3;
  if (v3)
  {
    goto LABEL_19;
  }

  v5 = *((*v2 & *v0) + 0x208);
  v6 = v5();
  v7 = [v6 tableView];

  if (!v7)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = [v7 superview];

  if (v8)
  {

LABEL_19:
    v68 = (*((*v2 & *v1) + 0x208))(v3);
    v69 = [v68 tableView];

    if (v69)
    {
      [v69 setHidden_];

      DOCSearchController.updateSearchResultsContentUnavailableUIAllowed(expectsCollectionUpdate:)(0);
      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  v9 = v5();
  v10 = [v9 tableView];

  if (!v10)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v71 = v4;
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];

  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTableViewContainerView;
  [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTableViewContainerView) setTranslatesAutoresizingMaskIntoConstraints_];
  v73 = v11;
  v12 = *(v1 + v11);
  v13 = v5();
  v14 = [v13 tableView];

  if (!v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v5;
  [v12 addSubview_];

  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_sizeCategoryDependantConstraints;
  v17 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_sizeCategoryDependantConstraints);
  v18 = *(v17 + 24);
  v19 = *(v17 + 32);
  *(v17 + 24) = 0;
  *(v17 + 32) = 1;

  DOCSizeCategoryDependantConstraints.activeSizeClass.didset(v18, v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA0290;

  v72 = v15;
  v22 = (v15)(v21);
  v23 = [v22 tableView];

  if (!v23)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v24 = [v23 centerXAnchor];

  v25 = [*(v1 + v73) centerXAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(inited + 32) = v26;
  DOCSizeCategoryDependantConstraints.addConstraints(for:_:)(2, inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  v70 = v16;
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_249BA1010;

  v29 = (v72)(v28);
  v30 = [v29 tableView];

  if (!v30)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v31 = [v30 leadingAnchor];

  v32 = [*(v1 + v73) leadingAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v27 + 32) = v33;
  v34 = v72();
  v35 = [v34 tableView];

  if (!v35)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v36 = [v35 trailingAnchor];

  v37 = [*(v1 + v73) trailingAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v27 + 40) = v38;
  DOCSizeCategoryDependantConstraints.addConstraints(for:_:)(1, v27);

  swift_setDeallocating();
  swift_arrayDestroy();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_249BA0470;
  v40 = [*(v1 + v73) widthAnchor];
  v41 = v72();
  v42 = [v41 tableView];

  if (!v42)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v43 = [v42 widthAnchor];

  v44 = [v40 constraintGreaterThanOrEqualToAnchor:v43 multiplier:1.0];
  *(v39 + 32) = v44;
  v45 = [*(v1 + v73) topAnchor];
  v46 = v72();
  v47 = [v46 tableView];

  if (!v47)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v48 = [v47 topAnchor];

  v49 = [v45 constraintGreaterThanOrEqualToAnchor_];
  *(v39 + 40) = v49;
  v50 = [*(v1 + v73) bottomAnchor];
  v51 = v72();
  v52 = [v51 tableView];

  if (!v52)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v53 = [v52 bottomAnchor];

  v54 = [v50 constraintGreaterThanOrEqualToAnchor_];
  *(v39 + 48) = v54;
  v55 = [*(v1 + v73) heightAnchor];
  v56 = v72();
  v57 = [v56 tableView];

  if (v57)
  {
    v58 = objc_opt_self();
    v59 = [v57 heightAnchor];

    v60 = [v55 constraintGreaterThanOrEqualToAnchor:v59 multiplier:1.0];
    *(v39 + 56) = v60;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v58 activateConstraints_];

    v2 = MEMORY[0x277D85000];
    if (((*((*MEMORY[0x277D85000] & *v1) + 0x3A8))() & 1) != 0 && (v62 = (*((*v2 & *v1) + 0x278))()) != 0)
    {
      v63 = [v62 traitCollectionExpectedForSearchPresentation];
      swift_unknownObjectRelease();
    }

    else
    {
      v74.receiver = v1;
      v74.super_class = type metadata accessor for DOCSearchController();
      v63 = objc_msgSendSuper2(&v74, sel_traitCollection);
    }

    v4 = v71;
    v64 = *(v1 + v70);

    v65 = [v63 horizontalSizeClass];
    v66 = *(v64 + 24);
    v67 = *(v64 + 32);
    *(v64 + 24) = v65;
    *(v64 + 32) = 0;
    DOCSizeCategoryDependantConstraints.activeSizeClass.didset(v66, v67);

    goto LABEL_19;
  }

LABEL_31:
  __break(1u);
}

uint64_t DOCSearchController.searchDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCSearchController.searchDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCSidebarItemCell.delegate.modify;
}

uint64_t DOCSearchController.presentationDelegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  if (one-time initialization token for disableWorkaroundFor92855726 != -1)
  {
    swift_once();
  }

  if (!disableWorkaroundFor92855726 && swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v1 = [v0 presentingViewController];
    if (v1)
    {
    }

    else
    {
      (*((*MEMORY[0x277D85000] & *v0) + 0x3B0))(1);
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t (*DOCSearchController.presentationDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_presentationDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCSearchController.presentationDelegate.modify;
}

void DOCSearchController.presentationDelegate.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    if (one-time initialization token for disableWorkaroundFor92855726 != -1)
    {
      swift_once();
    }

    if (!disableWorkaroundFor92855726 && swift_unknownObjectWeakLoadStrong())
    {
      v4 = v3[4];
      swift_unknownObjectRelease();
      v5 = [v4 presentingViewController];
      if (v5)
      {
      }

      else
      {
        (*((*MEMORY[0x277D85000] & *v3[4]) + 0x3B0))(1);
      }
    }
  }

  free(v3);
}

uint64_t DOCSearchController.isDeactiveTemporary.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_isDeactiveTemporary;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCSearchController.isDeactiveTemporary.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_isDeactiveTemporary;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void DOCSearchController.suggesters.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__suggesterManager);
  if (v2)
  {
    v4 = *((*MEMORY[0x277D85000] & *v2) + 0xC0);
    v5 = v2;
    v4(a1);
  }

  else
  {
    __break(1u);
  }
}

void DOCSearchController.suggesters.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__suggesterManager);
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0xB8);
    v3 = v1;
    v2();
  }

  else
  {
    __break(1u);
  }
}

void (*DOCSearchController.suggesters.modify(void (*result)(uint64_t *a1, char a2)))(uint64_t *a1, char a2)
{
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__suggesterManager;
  *(result + 1) = v1;
  *(result + 2) = v2;
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = result;
    v5 = *((*MEMORY[0x277D85000] & *v3) + 0xB8);
    v6 = v3;
    v7 = v5();

    *v4 = v7;
    return DOCSearchController.suggesters.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DOCSearchController.suggesters.modify(uint64_t *a1, char a2)
{
  v2 = *(a1[1] + a1[2]);
  if ((a2 & 1) == 0)
  {
    if (v2)
    {
      v5 = *a1;
      v6 = *((*MEMORY[0x277D85000] & *v2) + 0xC0);
      v7 = v2;
      v6(v5);
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = *a1;
  v4 = *((*MEMORY[0x277D85000] & *v2) + 0xC0);

  v7 = v2;
  v4(v3);

LABEL_6:
}

void *DOCSearchController.searchQuery.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_cachedSearchQuery;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_cachedSearchQuery);
  if (!v2)
  {
    DOCSearchController.determineSearchQuery()();
    v2 = *(v0 + v1);
  }

  v3 = v2;
  return v2;
}

uint64_t DOCSearchController.selectedScopeIndex.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_selectedScopeIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCSearchController.selectedScopeIndex.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_selectedScopeIndex;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  (*((*MEMORY[0x277D85000] & *v1) + 0x4C0))(v4);
  DOCSearchController.filterTokensForSelectedScope()();
  return DOCSearchController.filterSuggestionsForSelectedScopeIfNeeded()();
}

void (*DOCSearchController.selectedScopeIndex.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCSearchController.selectedScopeIndex.modify;
}

void DOCSearchController.selectedScopeIndex.modify(uint64_t a1, char a2)
{
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    (*((*MEMORY[0x277D85000] & **(a1 + 24)) + 0x4C0))(v4);
    DOCSearchController.filterTokensForSelectedScope()();
    DOCSearchController.filterSuggestionsForSelectedScopeIfNeeded()();
  }
}

uint64_t DOCSearchController.confirmedSuggestions.getter()
{
  v1 = [v0 searchBar];
  v2 = [v1 searchTextField];

  v3 = [v2 tokens];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UISearchToken, 0x277D75A00);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = MEMORY[0x277D84F90];
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_21:
    v10 = MEMORY[0x277D84F90];
LABEL_22:

    return v10;
  }

LABEL_20:
  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_21;
  }

LABEL_3:
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C1FC540](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if ([v7 representedObject])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v14[0] = v12;
    v14[1] = v13;
    if (!*(&v13 + 1))
    {
      break;
    }

    type metadata accessor for DOCSearchSuggestion();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_24;
    }

    MEMORY[0x24C1FB090]();
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    ++v6;
    if (v9 == v5)
    {
      v10 = v15;
      goto LABEL_22;
    }
  }

  outlined destroy of CharacterSet?(v14, &_sypSgMd, &_sypSgMR);
LABEL_24:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

BOOL DOCSearchController.isInputEmpty.getter()
{
  v1 = [v0 searchBar];
  v2 = [v1 text];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v2 = (v3 & 0xFFFFFFFFFFFFLL);
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v2;
  }

  if (v6)
  {
    return 0;
  }

  v8 = [v0 searchBar];
  v9 = [v8 searchTextField];

  v10 = [v9 tokens];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UISearchToken, 0x277D75A00);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v12 == 0;
}

char *DOCSearchController.init(configuration:resultCollectionViewController:)(void *a1, void *a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_dismissingAssertion] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_cachedSearchQuery] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__suggesterManager] = 0;
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTableViewContainerView;
  *&v3[v6] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTableViewWidthConstraint] = 0;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchPresentationState] = 4;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___stackedSearchLayout] = 0;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_internalPlacement] = 1;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchFieldHasFocus] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___suggestionsTableViewController] = 0;
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_sizeCategoryDependantConstraints;
  type metadata accessor for DOCSizeCategoryDependantConstraints();
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x277D84F98];
  *(v8 + 24) = 0;
  *(v8 + 32) = 1;
  *&v3[v7] = v8;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_isDeactiveTemporary] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_selectedScopeIndex] = 0;
  v9 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_blocksToRunAfterDismiss] = MEMORY[0x277D84F90];
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__currentTraitCollectionSource] = 0;
  v10 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_layoutConfiguration];
  *v10 = 0;
  v10[2] = 1;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_activationTemporilyDisabled] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTypingTimeoutTimer] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_displayedSuggestions] = v9;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_selectedSuggestion] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_configuration] = a1;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController] = a2;
  objc_allocWithZone(type metadata accessor for DOCSearchBar());
  v11 = a1;
  v12 = a2;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__searchBar] = specialized DOCSearchBar.init(configuration:)(v11);
  v20.receiver = v3;
  v20.super_class = type metadata accessor for DOCSearchController();
  v13 = objc_msgSendSuper2(&v20, sel_initWithSearchResultsController_, v12);
  [v13 setObscuresBackgroundDuringPresentation_];
  [v13 _dci_setIgnoresSearchSuggestionsForStackedSearch_];
  v14 = *(*&v13[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController] + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
  if (v14)
  {
    v15 = *((*MEMORY[0x277D85000] & *v14) + 0x1A8);
    v16 = v14;
    v17 = v15();

    if (v17)
    {
      v18 = [v17 itemFilteringPredicate];

      swift_unknownObjectWeakAssign();
      DOCSearchController.doc_commonInit()();

      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id DOCSearchController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall DOCSearchController.viewDidLoad()()
{
  v1 = v0;
  v26.receiver = v0;
  v26.super_class = type metadata accessor for DOCSearchController();
  objc_msgSendSuper2(&v26, sel_viewDidLoad);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 setAccessibilityIdentifier_];

    v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_configuration);
    v5 = objc_allocWithZone(type metadata accessor for DOCSuggesterManager());
    v6 = MEMORY[0x277D84F90];
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_suggesters] = MEMORY[0x277D84F90];
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_gatheredSuggestions] = v6;
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_searchId] = 0;
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSuggesterManager_numWaitedSuggesterResults] = 0;
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = v4;
    v25.receiver = v5;
    v25.super_class = type metadata accessor for DOCSuggester();
    v7 = v4;
    v8 = objc_msgSendSuper2(&v25, sel_init);
    v9 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__suggesterManager;
    v10 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__suggesterManager);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__suggesterManager) = v8;
    v11 = v8;

    v12 = MEMORY[0x277D85000];
    v13 = *((*MEMORY[0x277D85000] & *v11) + 0x68);
    v14 = swift_unknownObjectRetain();
    v13(v14, &protocol witness table for DOCSearchController);

    v15 = *(v1 + v9);
    if (v15)
    {
      v16 = *((*v12 & *v15) + 0x118);
      v17 = v15;
      v18 = v16(v7);

      v19 = (*((*v12 & *v1) + 0x2B0))(v18);
      v20 = (*((*v12 & *v1) + 0x208))(v19);
      v21 = *((*v12 & *v20) + 0x70);
      v22 = swift_unknownObjectRetain();
      v21(v22, &protocol witness table for DOCSearchController);

      DOCSearchController.updateInlineSuggestionsVisibilityAndLayout()();
      (*((*v12 & *v1) + 0x3D8))(v23, v24);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall DOCSearchController.viewDidLayoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for DOCSearchController();
  objc_msgSendSuper2(&v14, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTableViewWidthConstraint];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 readableContentGuide];

      [v5 layoutFrame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v15.origin.x = v7;
      v15.origin.y = v9;
      v15.size.width = v11;
      v15.size.height = v13;
      [v2 setConstant_];
    }

    else
    {
      __break(1u);
    }
  }
}

void DOCSearchController.updateForTraitCollectionChange(from:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v1) + 0x3A8))() & 1) != 0 && (v5 = (*((*v4 & *v1) + 0x278))()) != 0)
  {
    v6 = [v5 traitCollectionExpectedForSearchPresentation];
    swift_unknownObjectRelease();
  }

  else
  {
    v11.receiver = v1;
    v11.super_class = type metadata accessor for DOCSearchController();
    v6 = objc_msgSendSuper2(&v11, sel_traitCollection);
  }

  if (one-time initialization token for hSizeClass != -1)
  {
    swift_once();
  }

  v9 = static UITraitCollection.Traits.hSizeClass;
  v10 = qword_27EEE9C60;

  v7 = UITraitCollection.doc_hasChanged(_:comparesTo:)(&v9, a1);

  if (v7)
  {
    DOCSearchController.updateForCurrentTraitCollection()();
  }

  if (one-time initialization token for sizeCategory != -1)
  {
    swift_once();
  }

  v9 = static UITraitCollection.Traits.sizeCategory;
  v10 = qword_27EEE9CC0;

  v8 = UITraitCollection.doc_hasChanged(_:comparesTo:)(&v9, a1);

  if (v8)
  {
    DOCSearchController.reloadSuggestionIconsForSizeCategoryChange()();
    (*((*v4 & *v2) + 0x328))();
  }
}

Swift::Void __swiftcall DOCSearchController.updateStackedLayoutAppMenuButtonIfNecessary()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x1B8))();
  (*((*v1 & *v2) + 0x110))();
}

Swift::Void __swiftcall DOCSearchController.updateStackedLayoutMenuIfNecessary()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x1B8))();
  (*((*v1 & *v2) + 0xC8))();
}

unint64_t DOCSearchController.currentSearchScope.getter()
{
  v1 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x260))();
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 8))(v0, ObjectType, v4);
    v7 = swift_unknownObjectRelease();
    v8 = *((*v1 & *v0) + 0x2D8);
    if ((v8)(v7) >= *(v6 + 16))
    {

      return 0;
    }

    else
    {
      result = v8();
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(v6 + 16))
      {
        v9 = *(v6 + 16 * result + 32);
        swift_unknownObjectRetain();

        return v9;
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t DOCSearchController.currentSearchQueryString.getter()
{
  v1 = [v0 searchBar];
  v2 = [v1 text];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void DOCSearchController.deactivateIfNecessary(andThen:animated:)(uint64_t (*a1)(void), uint64_t a2, char a3)
{
  v4 = v3;
  if (((*((*MEMORY[0x277D85000] & *v3) + 0x1A0))() - 2) >= 3u)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    v9 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_blocksToRunAfterDismiss;
    swift_beginAccess();
    v10 = *&v4[v9];
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a1, a2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v4[v9] = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
      *&v4[v9] = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
    }

    v10[2] = v13 + 1;
    v14 = &v10[2 * v13];
    v14[4] = partial apply for closure #1 in DOCItemCollectionViewController.contextMenuInteraction(_:willEndFor:animator:);
    v14[5] = v8;
    *&v4[v9] = v10;
    swift_endAccess();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.UI);
    v16 = v4;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21[0] = v20;
      *v19 = 136315650;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x8000000249BEB200, v21);
      *(v19 + 12) = 1024;
      *(v19 + 14) = a3 & 1;
      *(v19 + 18) = 2048;
      *(v19 + 20) = *(*&v4[v9] + 16);

      _os_log_impl(&dword_2493AC000, v17, v18, "%s animated: %{BOOL}d blocks to run: %ld", v19, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x24C1FE850](v20, -1, -1);
      MEMORY[0x24C1FE850](v19, -1, -1);
    }

    else
    {
    }

    [v16 setActive_];
    if ((a3 & 1) == 0)
    {
      DOCSearchController.performBlocksToDismissAfterDeactivate()();
    }
  }

  else if (a1)
  {
    a1();
  }
}

id DOCSearchController.deactivate(alongsideContainingTransitionCoordinator:)(void *a1)
{
  result = [v1 setActive_];
  if (a1)
  {
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_activationTemporilyDisabled) = 1;
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v7[4] = partial apply for closure #1 in DOCSearchController.deactivate(alongsideContainingTransitionCoordinator:);
    v7[5] = v4;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
    v7[3] = &block_descriptor_106;
    v5 = _Block_copy(v7);
    swift_unknownObjectRetain();
    v6 = v1;

    [a1 animateAlongsideTransition:0 completion:v5];
    _Block_release(v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall DOCSearchController.activateSearch()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v40 = v7;
  v41 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v36 - v20;
  if ([v1 isActive])
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v22 = static DOCLog.UI;
    v23 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_249B9A480;
    *(v24 + 56) = type metadata accessor for DOCSearchController();
    *(v24 + 64) = lazy protocol witness table accessor for type DOCSearchController and conformance NSObject(&lazy protocol witness table cache variable for type DOCSearchController and conformance NSObject, v25, type metadata accessor for DOCSearchController, MEMORY[0x277D85388]);
    *(v24 + 32) = v1;
    v26 = v1;
    os_log(_:dso:log:type:_:)("Not activating search controller, since already active: %@", 58, 2, &dword_2493AC000, v22, v23, v24);
  }

  else
  {
    v39 = v3;
    [v1 loadViewIfNeeded];
    DOCSearchController.forceReloadScopeBar()();
    [v1 setActive_];
    if ([v1 isActive])
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v37 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v38 = *(v13 + 8);
      v38(v16, v12);
      v27 = swift_allocObject();
      *(v27 + 16) = v1;
      aBlock[4] = partial apply for closure #1 in DOCSearchController.activateSearch();
      aBlock[5] = v27;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_10_1;
      v36 = _Block_copy(aBlock);
      v28 = v1;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DOCSearchController and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v29 = v36;
      v30 = v37;
      MEMORY[0x24C1FB940](v21, v11, v6, v36);
      _Block_release(v29);

      (*(v39 + 8))(v6, v2);
      (*(v41 + 8))(v11, v40);
      v38(v21, v12);
      return;
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v31 = static DOCLog.UI;
    v32 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_249B9A480;
    *(v33 + 56) = type metadata accessor for DOCSearchController();
    *(v33 + 64) = lazy protocol witness table accessor for type DOCSearchController and conformance NSObject(&lazy protocol witness table cache variable for type DOCSearchController and conformance NSObject, v34, type metadata accessor for DOCSearchController, MEMORY[0x277D85388]);
    *(v33 + 32) = v1;
    v35 = v1;
    os_log(_:dso:log:type:_:)("Unable to activate search controller: %@", 40, 2, &dword_2493AC000, v31, v32, v33);
  }
}

void closure #1 in DOCSearchController.activateSearch()(void *a1)
{
  v1 = [a1 searchBar];
  [v1 becomeFirstResponder];
}

Swift::Void __swiftcall DOCSearchController.activate(withSearchQueryString:)(Swift::String withSearchQueryString)
{
  object = withSearchQueryString._object;
  countAndFlagsBits = withSearchQueryString._countAndFlagsBits;
  (*((*MEMORY[0x277D85000] & *v1) + 0x368))();

  DOCSearchController.setSearchQueryStringAndUpdate(_:)(countAndFlagsBits, object);
}

void DOCSearchController.updateForCurrentTraitCollection()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x3A8))() & 1) != 0 && (v3 = (*((*v2 & *v0) + 0x278))()) != 0)
  {
    v4 = [v3 traitCollectionExpectedForSearchPresentation];
    swift_unknownObjectRelease();
  }

  else
  {
    v13.receiver = v0;
    v13.super_class = type metadata accessor for DOCSearchController();
    v4 = objc_msgSendSuper2(&v13, sel_traitCollection);
  }

  if (one-time initialization token for hSizeClass != -1)
  {
    swift_once();
  }

  v11 = static UITraitCollection.Traits.hSizeClass;
  v12 = qword_27EEE9C60;

  v5 = UITraitCollection.doc_hasSpecified(_:)(&v11);

  if (v5)
  {
    v6 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_sizeCategoryDependantConstraints);

    v7 = [v4 horizontalSizeClass];
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    *(v6 + 24) = v7;
    *(v6 + 32) = 0;
    DOCSizeCategoryDependantConstraints.activeSizeClass.didset(v8, v9);

    (*((*v2 & *v1) + 0x3D8))(v10);
  }
}

id @objc DOCSearchController.delegate.getter(void *a1, uint64_t a2, SEL *a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for DOCSearchController();
  v4 = objc_msgSendSuper2(&v6, *a3);

  return v4;
}

uint64_t DOCSearchController._currentTraitCollectionSource.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__currentTraitCollectionSource;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCSearchController._currentTraitCollectionSource.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__currentTraitCollectionSource;
  swift_beginAccess();
  *(v1 + v3) = a1 & 1;
}

void DOCSearchController.currentTraitCollectionSource.setter(char a1)
{
  v3 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v1) + 0x3A8))() & 1) != 0 && (v4 = (*((*v3 & *v1) + 0x278))()) != 0)
  {
    v5 = [v4 traitCollectionExpectedForSearchPresentation];
    v6 = swift_unknownObjectRelease();
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11.receiver = v1;
    v11.super_class = type metadata accessor for DOCSearchController();
    v6 = objc_msgSendSuper2(&v11, sel_traitCollection);
    v5 = v6;
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v7 = (*((*v3 & *v1) + 0x278))(v6);
  if (v7)
  {
    v8 = [v7 traitCollectionExpectedForSearchPresentation];
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

LABEL_8:
  v10.receiver = v1;
  v10.super_class = type metadata accessor for DOCSearchController();
  v8 = objc_msgSendSuper2(&v10, sel_traitCollection);
LABEL_9:
  (*((*v3 & *v1) + 0x398))(a1 & 1);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITraitCollection, 0x277D75C80);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    v9 = v5;
    DOCSearchController.updateForTraitCollectionChange(from:)(v5);

    v8 = v9;
  }
}

void (*DOCSearchController.currentTraitCollectionSource.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = (*((*MEMORY[0x277D85000] & *v1) + 0x390))() & 1;
  return DOCSearchController.currentTraitCollectionSource.modify;
}

uint64_t DOCSearchController.LayoutConfiguration.automaticallyShowsCancelButton.getter()
{
  if (!v0[1])
  {
    return 1;
  }

  if (v0[1] == 1)
  {
    return (*v0 ^ 1) & 1;
  }

  return 0;
}

void DOCSearchController.layoutConfiguration.getter(_BYTE *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_layoutConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
}

void DOCSearchController.layoutConfiguration.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_layoutConfiguration;
  v6 = swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  v9 = v5[2];
  *v5 = v2;
  v5[1] = v3;
  v5[2] = v4;
  v10 = v2 == v7 && v3 == v8;
  if (!v10 || ((v4 ^ v9) & 1) != 0)
  {
    (*((*MEMORY[0x277D85000] & *v1) + 0x3E0))(v6);
  }
}

void (*DOCSearchController.layoutConfiguration.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_layoutConfiguration;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  v8 = v6[2];
  v4[40] = *v6;
  v4 += 40;
  v4[1] = v7;
  v4[2] = v8;
  return DOCSearchController.layoutConfiguration.modify;
}

void DOCSearchController.layoutConfiguration.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 24) + *(*a1 + 32));
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 41);
  v5 = *(*a1 + 42);
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  *v2 = v3;
  v2[1] = v4;
  v2[2] = v5;
  v9 = v3 == v6 && v4 == v7;
  if (!v9 || ((v5 ^ v8) & 1) != 0)
  {
    (*((*MEMORY[0x277D85000] & *v1[3]) + 0x3E0))();
  }

  free(v1);
}

Swift::Void __swiftcall DOCSearchController.updateLayoutConfiguration()()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x3A8))() & 1) != 0 && (v2 = (*((*v1 & *v0) + 0x278))()) != 0)
  {
    v3 = [v2 traitCollectionExpectedForSearchPresentation];
    swift_unknownObjectRelease();
  }

  else
  {
    v12.receiver = v0;
    v12.super_class = type metadata accessor for DOCSearchController();
    v3 = objc_msgSendSuper2(&v12, sel_traitCollection);
  }

  v4 = [v3 horizontalSizeClass];
  v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_configuration);
  v6 = [v5 isPickerUI];
  if (v4 != 1)
  {
    v8 = [v0 searchBarPlacement] == 1;
    goto LABEL_9;
  }

  v7 = [v5 isPickerUI];
  v8 = [v0 searchBarPlacement] == 1;
  if (!v7)
  {
LABEL_9:
    v9 = v6;
    v10 = [v0 searchBarPlacement] == 1;
    goto LABEL_10;
  }

  v9 = v6;
  v10 = 2;
LABEL_10:
  v11 = v8;
  (*((*v1 & *v0) + 0x3C8))(&v9);
}

Swift::Void __swiftcall DOCSearchController.applyLayoutConfiguration()()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x3C0);
  v2((&v5 + 6));
  (v2)((&v5 + 3), [v0 setHidesNavigationBarDuringPresentation_]);
  if (BYTE4(v5))
  {
    if (BYTE4(v5) == 1)
    {
      v3 = BYTE3(v5) ^ 1;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 1;
  }

  v4 = (*((*v1 & *v0) + 0x1B8))([v0 setAutomaticallyShowsCancelButton_]);
  v2(&v5);
  (*((*v1 & *v4) + 0xA0))(BYTE1(v5) != 2);
}

Swift::Void __swiftcall DOCSearchController.willPresentSearchController(_:)(UISearchController *a1)
{
  v2 = (*((*MEMORY[0x277D85000] & *v1) + 0x278))(a1);
  if (v2)
  {
    v3 = v2;
    if ([v2 respondsToSelector_])
    {
      [v3 willPresentSearchController_];
    }

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall DOCSearchController.didPresentSearchController(_:)(UISearchController *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x3B0))(0);
  v4 = (*((*v2 & *v1) + 0x278))(v3);
  if (v4)
  {
    v5 = v4;
    if ([v4 respondsToSelector_])
    {
      [v5 didPresentSearchController_];
    }

    swift_unknownObjectRelease();
  }

  DOCSearchController.updateSearchResultsControllerVisibility()();
}

void DOCSearchController.performBlocksToDismissAfterDeactivate()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_blocksToRunAfterDismiss;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = MEMORY[0x277D84F90];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 40;
    while (v4 < *(v2 + 16))
    {
      ++v4;
      v6 = *(v5 - 8);

      v6(v7);

      v5 += 16;
      if (v3 == v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

Swift::Bool __swiftcall DOCSearchController.searchBarShouldBeginEditing(_:)(UISearchBar *a1)
{
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_activationTemporilyDisabled))
  {
    return 0;
  }

  else
  {
    return [(UISearchBar *)a1 isEnabled];
  }
}

Swift::Void __swiftcall DOCSearchController.searchBarTextDidBeginEditing(_:)(UISearchBar *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x1F8))(1);
  (*((*v3 & *v1) + 0x4C0))(v4);
  v5 = [(UISearchBar *)a1 text];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  (*((*v3 & *v1) + 0x448))(a1, v7, v9);
}

uint64_t DOCSearchController.updateSuggestions(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.UI);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000249BEBBE0, &v26);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v11 = v5;
    _os_log_impl(&dword_2493AC000, v6, v7, "%s. searchBar: %@", v8, 0x16u);
    outlined destroy of CharacterSet?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1FE850](v10, -1, -1);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  v12 = [v5 text];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  result = String.count.getter();
  if (result < 1)
  {

    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_displayedSuggestions) = MEMORY[0x277D84F90];

    DOCSearchController.displayedSuggestions.didset();
  }

  else
  {
    v18 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__suggesterManager);
    if (!v18)
    {
      __break(1u);
      return result;
    }

    v19 = v18;
    v20 = String.doc_searchEscapedString.getter(v14, v16);
    v22 = v21;

    v24 = MEMORY[0x277D85000];
    v25 = (*((*MEMORY[0x277D85000] & *v2) + 0x2F0))(v23);
    (*((*v24 & *v19) + 0x120))(v20, v22, v25);
  }

  return DOCSearchController.updateSearchResultsControllerVisibility()();
}

void DOCSearchController.scheduleSuggestionsTypingTimeout()()
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.UI);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x8000000249BEBBB0, &v21);
    *(v5 + 12) = 2080;
    v7 = [v2 searchBar];
    v8 = [v7 text];

    if (v8)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    aBlock = v9;
    v23 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v21);

    *(v5 + 14) = v14;
    _os_log_impl(&dword_2493AC000, v3, v4, "%s search text: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTypingTimeoutTimer;
  [*&v2[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTypingTimeoutTimer] invalidate];
  v16 = objc_opt_self();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = partial apply for closure #1 in DOCSearchController.scheduleSuggestionsTypingTimeout();
  v27 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v25 = &block_descriptor_210_0;
  v18 = _Block_copy(&aBlock);

  v19 = [v16 scheduledTimerWithTimeInterval:0 repeats:v18 block:0.1];
  _Block_release(v18);
  v20 = *&v2[v15];
  *&v2[v15] = v19;
}

void closure #1 in DOCSearchController.scheduleSuggestionsTypingTimeout()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    DOCSearchController.handleSuggestionsTypingTimeout()();
  }
}

void DOCSearchController.handleSuggestionsTypingTimeout()()
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.UI);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000249BEBB80, &v14);
    *(v5 + 12) = 2080;
    v7 = [v2 searchBar];
    v8 = [v7 text];

    if (v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v14);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_2493AC000, v3, v4, "%s search text: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v12 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTypingTimeoutTimer];
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTypingTimeoutTimer] = 0;

  v13 = [v2 searchBar];
  DOCSearchController.updateSuggestions(_:)(v13);
}

uint64_t closure #1 in DOCSearchController.searchBarTextDidEndEditing(_:)(void *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *a1) + 0x1F8))(0);
  result = (*((*v2 & *a1) + 0x260))(v3);
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 32))(ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t DOCSearchController.doc_commonInit()()
{
  v1 = v0;
  v2 = [v0 searchBar];
  [v2 setDelegate_];

  v8.receiver = v1;
  v8.super_class = type metadata accessor for DOCSearchController();
  objc_msgSendSuper2(&v8, sel_setDelegate_, v1);
  [v1 setSearchResultsUpdater_];
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & **(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController)) + 0xAA0);
  v5 = swift_unknownObjectRetain();
  v6 = v4(v5, &protocol witness table for DOCSearchController);
  return (*((*v3 & *v1) + 0x3D8))(v6);
}

id DOCSearchController.updateSearchResultsControllerVisibility()()
{
  if (([v0 isActive] & 1) == 0)
  {
    result = [v0 doc_hasAppearedOrIsAppearing];
    if (!result)
    {
      return result;
    }
  }

  v2 = DOCSearchController.isInputEmpty.getter();
  if ((v2 ^ [v0 showsSearchResultsController]))
  {

    return [v0 setShowsSearchResultsController_];
  }

  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v0) + 0x278))();
  v5 = v4;
  if (v2)
  {
    if (v4)
    {
      if ([v4 respondsToSelector_])
      {
        [v5 willDismissSearchResultsController_];
      }

      swift_unknownObjectRelease();
    }

    result = (*((*v3 & *v0) + 0x278))([v0 setShowsSearchResultsController_]);
    if (result)
    {
      v6 = result;
      if ([result respondsToSelector_])
      {
        [v6 didDismissSearchResultsController_];
      }

LABEL_22:

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    if (v4)
    {
      if ([v4 respondsToSelector_])
      {
        [v5 willPresentSearchResultsController_];
      }

      swift_unknownObjectRelease();
    }

    result = (*((*v3 & *v0) + 0x278))([v0 setShowsSearchResultsController_]);
    if (result)
    {
      v7 = result;
      if ([result respondsToSelector_])
      {
        [v7 didPresentSearchResultsController_];
      }

      goto LABEL_22;
    }
  }

  return result;
}

void DOCSearchController.setSearchQueryStringAndUpdate(_:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 searchBar];
  v6 = MEMORY[0x24C1FAD20](a1, a2);
  [v5 setText_];

  v12 = [v2 searchBar];
  v7 = [v2 searchBar];
  v8 = [v7 text];

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  (*((*MEMORY[0x277D85000] & *v2) + 0x448))(v12, v9, v11);
}

unint64_t DOCSearchController.blankSearchQueryForSelectedScope()()
{
  v1 = MEMORY[0x277D85000];
  if (!(*((*MEMORY[0x277D85000] & *v0) + 0x260))())
  {
LABEL_14:
    v19 = objc_allocWithZone(MEMORY[0x277CC64B0]);

    return [v19 initWithSearchScope_];
  }

  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 8))(v0, ObjectType, v3);
  v6 = swift_unknownObjectRelease();
  v7 = *(v5 + 16);
  if (!v7)
  {

    goto LABEL_14;
  }

  v8 = *((*v1 & *v0) + 0x2D8);
  if ((v8)(v6) < 0 || v8() >= v7)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.UI);
    v14 = v0;

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134218240;
      *(v17 + 4) = v8();

      *(v17 + 12) = 2048;
      v18 = *(v5 + 16);

      *(v17 + 14) = v18;

      _os_log_impl(&dword_2493AC000, v15, v16, "Tried to get out-of-bounds index %ld of searchScopes (array size is %ld", v17, 0x16u);
      MEMORY[0x24C1FE850](v17, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    goto LABEL_14;
  }

  result = v8();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v5 + 16))
  {
    v10 = *(v5 + 16 * result + 40);
    swift_unknownObjectRetain();

    v11 = swift_getObjectType();
    v12 = (*(v10 + 16))(v11, v10);
    swift_unknownObjectRelease();
    return v12;
  }

  __break(1u);
  return result;
}

void DOCSearchController.determineSearchQuery()()
{
  v1 = v0;
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!DOCSearchController.isInputEmpty.getter())
  {
    v131 = v6;
    v132 = v3;
    v8 = DOCSearchController.blankSearchQueryForSelectedScope()();
    v9 = *(*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController] + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (!v9)
    {
      __break(1u);
LABEL_106:

      __break(1u);
      goto LABEL_107;
    }

    v10 = v8;
    v11 = *((*MEMORY[0x277D85000] & *v9) + 0x1A8);
    v12 = v9;
    v13 = v11();

    if (!v13)
    {
      goto LABEL_113;
    }

    v130 = v2;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPQueryCollection, 0x277CC6430);
    v14 = [v13 isKindOfClass_];

    v15 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_selectedSuggestion];
    v135 = v1;
    v136 = v10;
    v133 = v14;
    if (v15)
    {
      v16 = *((*MEMORY[0x277D85000] & *v15) + 0xF8);
      v17 = v15;
      v16();
      if (!v18)
      {
        goto LABEL_15;
      }

      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.UI);
      v20 = v17;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v140[0]._countAndFlagsBits = v25;
        *v23 = 136315394;
        *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BEBD10, &v140[0]._countAndFlagsBits);
        *(v23 + 12) = 2112;
        *(v23 + 14) = v20;
        *v24 = v15;
        v26 = v20;
        _os_log_impl(&dword_2493AC000, v21, v22, "%s suggestion: %@", v23, 0x16u);
        outlined destroy of CharacterSet?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x24C1FE850](v24, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x24C1FE850](v25, -1, -1);
        v1 = v135;
        v10 = v136;
        MEMORY[0x24C1FE850](v23, -1, -1);
      }

      type metadata accessor for DOCSearchSuggestion();
      v27 = swift_dynamicCastClass();
      if (v27)
      {
        (*((*MEMORY[0x277D85000] & *v27) + 0x1D8))(v10);
        LODWORD(v134) = 1;
      }

      else
      {
LABEL_15:
        LODWORD(v134) = 0;
      }
    }

    else
    {
      LODWORD(v134) = 0;
    }

    v28 = [v1 searchBar];
    v29 = [v28 searchTextField];

    v30 = [v29 tokens];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UISearchToken, 0x277D75A00);
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v31 >> 62)
    {
      goto LABEL_35;
    }

    for (i = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v33 = 0;
      while (1)
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x24C1FC540](v33, v31);
        }

        else
        {
          if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v34 = *(v31 + 8 * v33 + 32);
        }

        v35 = v34;
        v36 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if ([v34 representedObject])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v138 = 0;
          v139 = 0;
        }

        v140[0] = v138;
        v140[1] = v139;
        if (!v139._object)
        {
          goto LABEL_110;
        }

        type metadata accessor for DOCSearchSuggestion();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_111;
        }

        v37 = v137;
        (*((*MEMORY[0x277D85000] & *v137) + 0x1D8))(v136);

        ++v33;
        if (v36 == i)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }

LABEL_36:

    v38 = v135;
    v39 = v136;
    if (v134)
    {
      goto LABEL_67;
    }

    v40 = [v135 searchBar];
    v41 = [v40 text];

    if (!v41)
    {
      goto LABEL_67;
    }

    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = String.doc_searchEscapedString.getter(v42, v44);
    v47 = v46;

    if (String.count.getter() >= 1)
    {
      v48 = [objc_opt_self() semanticSearch];
      v49 = [v48 isEnabled];

      v50 = [v39 trashedItemsMembership] & 0xFFFFFFFFFFFFFFFDLL;
      if (v49)
      {
        if (!v50)
        {
          goto LABEL_56;
        }

        v51 = [v39 providerDomainID];
        if (!v51)
        {
LABEL_45:
          if (one-time initialization token for UI != -1)
          {
            swift_once();
          }

          v55 = type metadata accessor for Logger();
          __swift_project_value_buffer(v55, static Logger.UI);
          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v140[0]._countAndFlagsBits = v59;
            *v58 = 136315138;
            *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BEBD10, &v140[0]._countAndFlagsBits);
            _os_log_impl(&dword_2493AC000, v56, v57, "%s [SEMANTIC SEARCH] Semantic Search enabled", v58, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v59);
            MEMORY[0x24C1FE850](v59, -1, -1);
            MEMORY[0x24C1FE850](v58, -1, -1);
          }

          [v39 setShouldPerformSemanticSearch_];
          v60 = MEMORY[0x24C1FAD20](v45, v47);

          [v39 setUserQueryString_];
          goto LABEL_57;
        }

        v52 = [v39 providerDomainID];
        if (!v52)
        {
LABEL_108:
          __break(1u);
          goto LABEL_109;
        }

        v53 = v52;
        if (!DOCProviderDomainIDIsExternalDevice())
        {
          v54 = DOCProviderDomainIDIsSharedServerDomainID();

          if ((v54 & 1) == 0)
          {
            goto LABEL_45;
          }

LABEL_56:
          v60 = MEMORY[0x24C1FAD20](v45, v47);

          [v39 setFilename_];
LABEL_57:

LABEL_67:
          v86 = [v39 scopeFragment];
          if (!v86)
          {
            goto LABEL_76;
          }

          v87 = [v39 providerDomainID];
          if (!v87)
          {
            goto LABEL_73;
          }

          v88 = [v39 providerDomainID];
          if (!v88)
          {
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v89 = v88;
          if (DOCProviderDomainIDIsExternalDevice())
          {

            goto LABEL_76;
          }

          v90 = DOCProviderDomainIDIsSharedServerDomainID();

          if ((v90 & 1) == 0)
          {
LABEL_73:
            [v39 setShouldPerformServerSearch_];
            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v91 = static DOCLog.UI;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
            v92 = swift_allocObject();
            *(v92 + 16) = xmmword_249B9A480;
            *(v92 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSFileProviderSearchQuery, 0x277CC64B0);
            *(v92 + 64) = lazy protocol witness table accessor for type NSFileProviderSearchQuery and conformance NSObject();
            *(v92 + 32) = v39;
            v93 = v39;
            v94 = static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)("Not requesting server-side search, since a scope fragment is set: %@", 68, 2, &dword_2493AC000, v91, v94, v92);
          }

LABEL_76:
          if (![objc_opt_self() protectedAppsEnabled])
          {
LABEL_98:
            v113 = UIKeyboardGetCurrentInputMode();
            if (!v113)
            {
LABEL_104:
              v126 = *&v38[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_cachedSearchQuery];
              *&v38[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_cachedSearchQuery] = v39;

              return;
            }

            v0 = v113;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_249B9FA70;
            *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *(inited + 40) = v115;
            *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *(inited + 56) = v116;
            v117 = MEMORY[0x24C1FD910](v0);
            if (v117)
            {
              v118 = v117;
              v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v121 = v120;

              v140[0]._countAndFlagsBits = v119;
              v140[0]._object = v121;
              MEMORY[0x28223BE20](v122, v123);
              j = v140;
              v124 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v129 - 4), inited);
              swift_setDeallocating();
              swift_arrayDestroy();

              v125 = MEMORY[0x24C1FD900](v0);

              if (v125)
              {
                if ((v124 & 1) == 0)
                {
                  [v39 setKeyboardLanguage_];
                }
              }

              goto LABEL_104;
            }

            goto LABEL_106;
          }

          if (v133)
          {
            v95 = [objc_opt_self() sharedManager];
            v96 = specialized DOCAppProtectionManager.appsHiddenFromSearchScopeFragment.getter();
            v98 = v97;

            if (v98)
            {
              v99 = HIBYTE(v98) & 0xF;
              if ((v98 & 0x2000000000000000) == 0)
              {
                v99 = v96 & 0xFFFFFFFFFFFFLL;
              }

              if (v99)
              {
                if (one-time initialization token for UI != -1)
                {
                  swift_once();
                }

                v100 = type metadata accessor for Logger();
                __swift_project_value_buffer(v100, static Logger.UI);

                v101 = Logger.logObject.getter();
                v102 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v101, v102))
                {
                  v103 = swift_slowAlloc();
                  v104 = swift_slowAlloc();
                  v140[0]._countAndFlagsBits = v104;
                  *v103 = 136315394;
                  *(v103 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BEBD10, &v140[0]._countAndFlagsBits);
                  *(v103 + 12) = 2080;
                  *(v103 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, &v140[0]._countAndFlagsBits);
                  _os_log_impl(&dword_2493AC000, v101, v102, "%s [PROTECTED APPS] Filtering search results. Created filter query clause %s", v103, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x24C1FE850](v104, -1, -1);
                  MEMORY[0x24C1FE850](v103, -1, -1);
                }

                v105._countAndFlagsBits = v96;
                v105._object = v98;
                NSFileProviderSearchQuery.appendClauseToScopeFragment(_:)(v105);

                goto LABEL_98;
              }
            }

            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v112 = type metadata accessor for Logger();
            __swift_project_value_buffer(v112, static Logger.UI);
            v107 = Logger.logObject.getter();
            v108 = static os_log_type_t.debug.getter();
            if (!os_log_type_enabled(v107, v108))
            {
              goto LABEL_97;
            }

            v109 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            v140[0]._countAndFlagsBits = v110;
            *v109 = 136315138;
            *(v109 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BEBD10, &v140[0]._countAndFlagsBits);
            v111 = "%s [PROTECTED APPS] No hidden apps to filter search results.";
          }

          else
          {
            if (one-time initialization token for UI != -1)
            {
              swift_once();
            }

            v106 = type metadata accessor for Logger();
            __swift_project_value_buffer(v106, static Logger.UI);
            v107 = Logger.logObject.getter();
            v108 = static os_log_type_t.debug.getter();
            if (!os_log_type_enabled(v107, v108))
            {
              goto LABEL_97;
            }

            v109 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            v140[0]._countAndFlagsBits = v110;
            *v109 = 136315138;
            *(v109 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BEBD10, &v140[0]._countAndFlagsBits);
            v111 = "%s [PROTECTED APPS] Not filtering search results item collection does not support predicates.";
          }

          _os_log_impl(&dword_2493AC000, v107, v108, v111, v109, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v110);
          MEMORY[0x24C1FE850](v110, -1, -1);
          MEMORY[0x24C1FE850](v109, -1, -1);
LABEL_97:

          goto LABEL_98;
        }

LABEL_55:

        goto LABEL_56;
      }

      if (!v50)
      {
        goto LABEL_56;
      }

      v61 = [v39 providerDomainID];
      if (v61)
      {

        v62 = [v39 providerDomainID];
        if (!v62)
        {
LABEL_109:
          __break(1u);
LABEL_110:
          outlined destroy of CharacterSet?(v140, &_sypSgMd, &_sypSgMR);
LABEL_111:
          v128 = 0;
          for (j = 944; ; j = 361)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
LABEL_113:
            v128 = 0;
          }
        }

        v53 = v62;
        if (DOCProviderDomainIDIsExternalDevice())
        {
          goto LABEL_55;
        }

        v63 = DOCProviderDomainIDIsSharedServerDomainID();

        if (v63)
        {
          goto LABEL_56;
        }
      }

      v140[0]._countAndFlagsBits = 10786;
      v140[0]._object = 0xE200000000000000;
      v64 = String.doc_searchEscapedString.getter(v45, v47);
      MEMORY[0x24C1FAEA0](v64);

      MEMORY[0x24C1FAEA0](8746, 0xE200000000000000);
      v138._countAndFlagsBits = v45;
      v138._object = v47;
      v65 = v131;
      CharacterSet.init()();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      CharacterSet.insert(charactersIn:)();
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.rangeOfCharacter(from:options:range:)();
      v67 = v66;
      (*(v132 + 8))(v65, v130);

      if (v67)
      {
        v68 = 1952741219;
      }

      else
      {
        v68 = 0x7473647763;
      }

      if (v67)
      {
        v69 = 0xE400000000000000;
      }

      else
      {
        v69 = 0xE500000000000000;
      }

      MEMORY[0x24C1FAEA0](v68, v69);

      object = v140[0]._object;
      countAndFlagsBits = v140[0]._countAndFlagsBits;
      v140[0]._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v140[0]._object = v72;
      MEMORY[0x24C1FAEA0](540884256, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](countAndFlagsBits, object);
      v73 = v140[0]._object;
      v134 = v140[0]._countAndFlagsBits;
      v140[0]._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v140[0]._object = v74;
      MEMORY[0x24C1FAEA0](540884256, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](countAndFlagsBits, object);
      v131 = v140[0]._object;
      v132 = v140[0]._countAndFlagsBits;
      v140[0]._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v140[0]._object = v75;
      MEMORY[0x24C1FAEA0](540884256, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](countAndFlagsBits, object);
      v76 = v140[0]._object;
      v130 = v140[0]._countAndFlagsBits;
      v140[0]._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v140[0]._object = v77;
      MEMORY[0x24C1FAEA0](540884256, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](countAndFlagsBits, object);
      v78 = v140[0]._object;
      v129 = v140[0]._countAndFlagsBits;
      v140[0]._countAndFlagsBits = 0;
      v140[0]._object = 0xE000000000000000;
      _StringGuts.grow(_:)(20);
      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = v80;

      v140[0]._countAndFlagsBits = v79;
      v140[0]._object = v81;
      MEMORY[0x24C1FAEA0](540884256, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](countAndFlagsBits, object);
      MEMORY[0x24C1FAEA0](545029152, 0xE400000000000000);
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      MEMORY[0x24C1FAEA0](v82);

      MEMORY[0x24C1FAEA0](540884256, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](countAndFlagsBits, object);

      v83 = v140[0]._object;
      v84 = v140[0]._countAndFlagsBits;
      v140[0]._countAndFlagsBits = 0;
      v140[0]._object = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v140[0]._countAndFlagsBits = 40;
      v140[0]._object = 0xE100000000000000;
      MEMORY[0x24C1FAEA0](v134, v73);

      MEMORY[0x24C1FAEA0](545029152, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](v132, v131);

      MEMORY[0x24C1FAEA0](545029152, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](v130, v76);

      MEMORY[0x24C1FAEA0](545029152, 0xE400000000000000);
      MEMORY[0x24C1FAEA0](v129, v78);

      MEMORY[0x24C1FAEA0](545029152, 0xE400000000000000);
      v85 = v84;
      v38 = v135;
      v39 = v136;
      MEMORY[0x24C1FAEA0](v85, v83);

      MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
      NSFileProviderSearchQuery.appendClauseToScopeFragment(_:)(v140[0]);
    }

    goto LABEL_67;
  }

  v7 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_cachedSearchQuery];
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_cachedSearchQuery] = 0;
}

Swift::Void __swiftcall NSFileProviderSearchQuery.appendClauseToScopeFragment(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = [v1 scopeFragment];
  if (v5)
  {

    v6 = [v1 scopeFragment];
    if (!v6)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x24C1FAEA0](countAndFlagsBits, object);
    v10 = String.init<A>(_:)();
    v11 = v8;
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v10;
    object = v11;
  }

  else
  {
  }

  v9 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);

LABEL_7:
  [v2 setScopeFragment_];
}

Swift::Void __swiftcall DOCSearchController.reloadScopeBar()()
{
  v1 = [v0 searchBar];
  v2 = [v1 isFirstResponder];

  if (v2)
  {

    DOCSearchController.forceReloadScopeBar()();
  }
}

uint64_t DOCSearchController.forceReloadScopeBar()()
{
  v1 = v0;
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x260))();
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 8))(v0, ObjectType, v4);
    v7 = *(v6 + 16);
    if (v7 < 2)
    {

      v19 = [v0 searchBar];
      [v19 setScopeButtonTitles_];
    }

    else
    {
      v20 = [v0 searchBar];
      v21 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
      v8 = (v6 + 40);
      do
      {
        v9 = *v8;
        v10 = swift_getObjectType();
        v11 = *(v9 + 8);
        swift_unknownObjectRetain();
        v12 = v11(v10, v9);
        v14 = v13;
        swift_unknownObjectRelease();
        v16 = *(v21 + 16);
        v15 = *(v21 + 24);
        if (v16 >= v15 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        }

        *(v21 + 16) = v16 + 1;
        v17 = v21 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
        v8 += 2;
        --v7;
      }

      while (v7);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v20 setScopeButtonTitles_];

      v19 = [v1 searchBar];
      [v19 setSelectedScopeButtonIndex_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id DOCSearchController.filterTokensForSelectedScope()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x2F0))();
  v30 = v3;
  v28 = v3 >> 62;
  if (v3 >> 62)
  {
LABEL_39:
    v29 = v3 & 0xFFFFFFFFFFFFFF8;
    v27 = __CocoaSet.count.getter();
    if (v27)
    {
      v4 = v27;
      v32 = __CocoaSet.count.getter();
      v3 = __CocoaSet.count.getter();
      v31 = v3;
      goto LABEL_4;
    }
  }

  else
  {
    v29 = v3 & 0xFFFFFFFFFFFFFF8;
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      v31 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v32 = v31;
LABEL_4:
      v5 = 0;
      v6 = *v2 & *v1;
      v2 = (v30 & 0xC000000000000001);
      v7 = *(v6 + 608);
      while (1)
      {
        v8 = v4 - 1;
        if (__OFSUB__(v4, 1))
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if (v32 != v4)
        {
          goto LABEL_10;
        }

        if (!v28)
        {
          break;
        }

        v3 = __CocoaSet.count.getter();
        v5 = v3 - 1;
        if (__OFSUB__(v3, 1))
        {
          goto LABEL_36;
        }

LABEL_11:
        if (v8 < 0 || v8 >= v31)
        {
          goto LABEL_37;
        }

        if (v2)
        {
          v10 = MEMORY[0x24C1FC540](v4 - 1, v30);
        }

        else
        {
          if (v8 >= *(v29 + 16))
          {
            goto LABEL_38;
          }

          v10 = *(v30 + 32 + 8 * v8);
        }

        v11 = v10;
        if (v7())
        {
          v13 = v12;
          ObjectType = swift_getObjectType();
          v15 = (*(v13 + 8))(v1, ObjectType, v13);
          swift_unknownObjectRelease();
          v16 = *(v15 + 16);

          if (v16)
          {
            v17 = DOCSearchController.blankSearchQueryForSelectedScope()();
            if (([v17 trashedItemsMembership] & 0xFFFFFFFFFFFFFFFDLL) == 0)
            {
              v20 = v17;
              goto LABEL_28;
            }

            v18 = [v17 providerDomainID];
            if (v18)
            {

              result = [v17 providerDomainID];
              if (!result)
              {
                __break(1u);
                return result;
              }

              v20 = result;
              if (DOCProviderDomainIDIsExternalDevice())
              {

LABEL_28:
LABEL_33:
                type metadata accessor for DOCQueryFragmentSuggestion();
                if (swift_dynamicCastClass())
                {
                  v25 = [v1 searchBar];
                  v26 = [v25 searchTextField];

                  [v26 removeTokenAtIndex_];
                }

                goto LABEL_5;
              }

              v21 = DOCProviderDomainIDIsSharedServerDomainID();

              if (v21)
              {
                goto LABEL_33;
              }
            }

            else
            {
            }
          }
        }

        if (v7())
        {
          v23 = v22;
          v24 = swift_getObjectType();
          LOBYTE(v23) = (*(v23 + 16))(v1, v24, v23);
          swift_unknownObjectRelease();
          if ((v23 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

LABEL_5:

        v4 = v8;
        if (!v8)
        {
          goto LABEL_41;
        }
      }

      v5 = *(v29 + 16);
LABEL_10:
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_36;
      }

      goto LABEL_11;
    }
  }

LABEL_41:

  return DOCSearchController.updateSearchResultsControllerVisibility()();
}

uint64_t DOCSearchController.filterSuggestionsForSelectedScopeIfNeeded()()
{
  v1 = v0;
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x1E8))();
  if ((result & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_displayedSuggestions;
    v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_displayedSuggestions);
    v25 = MEMORY[0x277D84F90];
    if (v4 >> 62)
    {
LABEL_35:
      v5 = __CocoaSet.count.getter();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v5)
    {
      v23 = v3;
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x24C1FC540](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v10 = *((*MEMORY[0x277D85000] & *v1) + 0x260);
        v3 = (*MEMORY[0x277D85000] & *v1) + 608;
        if (!v10())
        {
          goto LABEL_22;
        }

        v12 = v11;
        ObjectType = swift_getObjectType();
        v14 = (*(v12 + 8))(v1, ObjectType, v12);
        swift_unknownObjectRelease();
        v15 = *(v14 + 16);

        if (!v15)
        {
          goto LABEL_22;
        }

        v16 = DOCSearchController.blankSearchQueryForSelectedScope()();
        if (([v16 trashedItemsMembership] & 0xFFFFFFFFFFFFFFFDLL) == 0)
        {
          goto LABEL_19;
        }

        v17 = [v16 providerDomainID];
        if (!v17)
        {

LABEL_22:
          if (!v10())
          {
            goto LABEL_6;
          }

          v20 = v19;
          v21 = swift_getObjectType();
          LOBYTE(v20) = (*(v20 + 16))(v1, v21, v20);
          swift_unknownObjectRelease();
          if (v20)
          {
            goto LABEL_6;
          }

          goto LABEL_24;
        }

        result = [v16 providerDomainID];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v18 = result;
        if (DOCProviderDomainIDIsExternalDevice())
        {
          break;
        }

        v24 = DOCProviderDomainIDIsSharedServerDomainID();

        if ((v24 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_24:
        type metadata accessor for DOCQueryFragmentSuggestion();
        if (swift_dynamicCastClass())
        {

          goto LABEL_7;
        }

LABEL_6:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_7:
        ++v6;
        if (v9 == v5)
        {
          v22 = v25;
          v3 = v23;
          goto LABEL_30;
        }
      }

LABEL_19:
      goto LABEL_24;
    }

    v22 = MEMORY[0x277D84F90];
LABEL_30:

    *(v1 + v3) = v22;

    DOCSearchController.displayedSuggestions.didset();

    return DOCSearchController.updateSearchResultsControllerVisibility()();
  }

  return result;
}

void DOCSearchController.suggester(_:didDeliver:forSearchId:input:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v28 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
LABEL_29:
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v27 = v5;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x24C1FC540](v6, a2);
        }

        else
        {
          if (v6 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v7 = *(a2 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v10 = *((*MEMORY[0x277D85000] & *v3) + 0x260);
        if (!v10())
        {
          goto LABEL_21;
        }

        v12 = v11;
        ObjectType = swift_getObjectType();
        v14 = (*(v12 + 8))(v3, ObjectType, v12);
        swift_unknownObjectRelease();
        v15 = *(v14 + 16);

        if (!v15)
        {
          goto LABEL_21;
        }

        v16 = DOCSearchController.blankSearchQueryForSelectedScope()();
        if (([v16 trashedItemsMembership] & 0xFFFFFFFFFFFFFFFDLL) == 0)
        {
          break;
        }

        v17 = [v16 providerDomainID];
        if (!v17)
        {

LABEL_21:
          if (!v10())
          {
            goto LABEL_4;
          }

          v21 = v20;
          v22 = swift_getObjectType();
          LOBYTE(v21) = (*(v21 + 16))(v3, v22, v21);
          swift_unknownObjectRelease();
          if (v21)
          {
            goto LABEL_4;
          }

          goto LABEL_23;
        }

        v18 = [v16 providerDomainID];
        if (!v18)
        {
          __break(1u);

          __break(1u);
          return;
        }

        v19 = v18;
        if (DOCProviderDomainIDIsExternalDevice())
        {

LABEL_18:
          goto LABEL_23;
        }

        v26 = DOCProviderDomainIDIsSharedServerDomainID();

        if ((v26 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_23:
        type metadata accessor for DOCQueryFragmentSuggestion();
        if (swift_dynamicCastClass())
        {

          goto LABEL_5;
        }

LABEL_4:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_5:
        ++v6;
        if (v9 == v27)
        {
          goto LABEL_30;
        }
      }

      v19 = v16;
      goto LABEL_18;
    }
  }

LABEL_30:

  v28 = specialized Array._copyToContiguousArray()(v23, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15UIBarButtonItemC_Tt1g5, specialized Array._copyContents(initializing:));
  specialized MutableCollection<>.sort(by:)(&v28);

  v24 = v28;
  if ((v28 & 0x8000000000000000) != 0 || (v28 & 0x4000000000000000) != 0)
  {
    type metadata accessor for DOCSuggestion();

    v25 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for DOCSuggestion();
    v25 = v24;
  }

  *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_displayedSuggestions) = v25;

  DOCSearchController.displayedSuggestions.didset();
}

void DOCSearchController.suggestionsTableViewController(_:didConfirmSuggestion:)(uint64_t a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_selectedSuggestion);
  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_selectedSuggestion) = a2;
  v4 = a2;

  DOCSearchController.updateSearchQueryWithSelectedSuggestion()();
}

uint64_t DOCSearchController.suggestionsTableViewControllerDidChangeSize(_:)()
{
  v1 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x1E8))();
  if ((result & 1) == 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController);
    v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTableViewContainerView);
    v5 = *((*v1 & *v3) + 0xE80);
    v6 = v4;
    return v5(v4);
  }

  return result;
}

void DOCSearchController.reloadSuggestionIconsForSizeCategoryChange()()
{
  v1 = [v0 searchBar];
  v2 = [v1 searchTextField];

  v3 = [v2 tokens];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UISearchToken, 0x277D75A00);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = MEMORY[0x277D84F90];
  v5 = (v4 & 0xFFFFFFFFFFFFFF8);
  if (v4 >> 62)
  {
LABEL_49:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    goto LABEL_23;
  }

  v8 = 0;
  do
  {
    v9 = v8;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C1FC540](v9, v4);
      }

      else
      {
        if (v9 >= v5[2])
        {
          goto LABEL_46;
        }

        v10 = *(v4 + 8 * v9 + 32);
      }

      v11 = v10;
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if ([v10 representedObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {

        v26 = 0u;
        v27 = 0u;
      }

      v28[0] = v26;
      v28[1] = v27;
      if (*(&v27 + 1))
      {
        break;
      }

      outlined destroy of CharacterSet?(v28, &_sypSgMd, &_sypSgMR);
LABEL_7:
      ++v9;
      if (v8 == v6)
      {
        goto LABEL_23;
      }
    }

    type metadata accessor for DOCSearchSuggestion();
    if ((swift_dynamicCast() & 1) == 0 || !v29)
    {
      goto LABEL_7;
    }

    MEMORY[0x24C1FB090]();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v7 = v30;
  }

  while (v8 != v6);
LABEL_23:

  if (v7 >> 62)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D85000];
  if (v4)
  {
    v12 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x24C1FC540](v12, v7);
      }

      else
      {
        if (v12 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v13 = *(v7 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      (*((*v5 & *v13) + 0x180))();

      ++v12;
      if (v15 == v4)
      {
        goto LABEL_34;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_34:
  if (v7 >> 62)
  {
    v16 = __CocoaSet.count.getter();
    if (!v16)
    {
      goto LABEL_44;
    }

LABEL_36:
    *&v28[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v17 = objc_opt_self();
      v18 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x24C1FC540](v18, v7);
        }

        else
        {
          v19 = *(v7 + 8 * v18 + 32);
        }

        v20 = v19;
        ++v18;
        v21 = (*((*v5 & *v19) + 0x178))();
        v22 = (*((*v5 & *v20) + 0xE0))();
        v23 = MEMORY[0x24C1FAD20](v22);

        v24 = [v17 tokenWithIcon:v21 text:v23];

        [v24 setRepresentedObject_];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v16 != v18);
      goto LABEL_44;
    }

    __break(1u);
  }

  else
  {
    v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_36;
    }

LABEL_44:

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 setTokens_];
  }
}

void DOCSearchController.displayedSuggestions.didset()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController];
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x9F8))();
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_displayedSuggestions;
  v5 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_displayedSuggestions];
  if (v5 >> 62)
  {
    if (__CocoaSet.count.getter() <= 0)
    {
      goto LABEL_7;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
  {
    goto LABEL_7;
  }

  if ((*((*v3 & *v0) + 0x1E8))() & 1) == 0 && ((*((*v3 & *v0) + 0x1F0))())
  {
    (*((*v3 & *v2) + 0xA30))(0);
  }

LABEL_7:
  v6 = (*((*v3 & *v0) + 0x208))();
  v7 = *((*v3 & *v6) + 0x88);

  v7(v8);

  v9 = *&v1[v4];
  if (v9 >> 62)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {

    specialized ContiguousArray.reserveCapacity(_:)();
    if (v10 < 0)
    {
      __break(1u);
      return;
    }

    v11 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C1FC540](v11, v9);
      }

      else
      {
        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      ++v11;
      DOCSuggestion.asInlineSuggestionItem.getter();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v10 != v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UISearchSuggestion_pMd, &_sSo18UISearchSuggestion_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setSearchSuggestions_];
}

uint64_t DOCSearchController.updateSearchResultsContentUnavailableUIAllowed(expectsCollectionUpdate:)(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController);
  v4 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x9F8))();
  v5 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_displayedSuggestions);
  if (v5 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result < 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 1)
    {
LABEL_7:
      v7 = 1;
LABEL_8:
      if (a1)
      {
        return result;
      }

      return (*((*v4 & *v3) + 0xA30))(v7 & 1);
    }
  }

  result = (*((*v4 & *v1) + 0x1E8))();
  if (result)
  {
    goto LABEL_7;
  }

  result = (*((*v4 & *v1) + 0x1F0))();
  v7 = result ^ 1;
  if ((result ^ 1))
  {
    goto LABEL_8;
  }

  return (*((*v4 & *v3) + 0xA30))(v7 & 1);
}

void DOCSearchController.updateSearchQueryWithSelectedSuggestion()()
{
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_selectedSuggestion];
  if (v1)
  {
    v2 = v0;
    v3 = MEMORY[0x277D85000];
    v4 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);
    v21 = v1;
    v5 = v4();
    if (v6)
    {
      DOCSearchController.setSearchQueryStringAndUpdate(_:)(v5, v6);
    }

    else
    {
      v7 = [v0 searchBar];
      v8 = [v7 searchTextField];

      v9 = [v2 searchBar];
      v10 = [v9 searchTextField];

      v11 = [v10 textualRange];
      v12 = (*((*v3 & *v21) + 0x178))();
      v13 = (*((*v3 & *v21) + 0xE0))();
      v14 = MEMORY[0x24C1FAD20](v13);

      v15 = [objc_opt_self() tokenWithIcon:v12 text:v14];

      [v15 setRepresentedObject_];
      v16 = [v2 searchBar];
      v17 = [v16 searchTextField];

      v18 = [v17 tokens];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UISearchToken, 0x277D75A00);
      v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v19 >> 62)
      {
        v20 = __CocoaSet.count.getter();
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      [v8 replaceTextualPortionOfRange:v11 withToken:v15 atIndex:v20];

      DOCSearchController.updateSearchResultsControllerVisibility()();
    }
  }
}

id DOCSearchController.__allocating_init(searchResultsController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithSearchResultsController_];

  return v3;
}

id DOCSearchControllerStackedLayout.init(for:)(void *a1)
{
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_canShowAppMenuButton] = 1;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_searchPresentationState] = 4;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButton] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButtonVisible] = 0;
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCSearchControllerStackedLayout();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t DOCSearchControllerStackedLayout.canShowAppMenuButton.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_canShowAppMenuButton;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCSearchControllerStackedLayout.canShowAppMenuButton.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_canShowAppMenuButton;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void DOCSearchControllerStackedLayout.searchPresentationState.didset(int a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_searchPresentationState;
  v4 = swift_beginAccess();
  v5 = *(v1 + v3);
  switch(v5)
  {
    case 2:
      if (a1 == 2)
      {
        return;
      }

      break;
    case 3:
      if (a1 == 3)
      {
        return;
      }

      break;
    case 4:
      if (a1 == 4)
      {
        return;
      }

      v6 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButtonVisible;
      v7 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButtonVisible);
      *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButtonVisible) = 0;
      if (v7 != 1)
      {
        return;
      }

      v8 = (*((*MEMORY[0x277D85000] & *v1) + 0x110))(v4);
      goto LABEL_16;
    default:
      if ((a1 - 2) >= 3u && ((v5 ^ a1) & 1) == 0)
      {
        return;
      }

      break;
  }

  v6 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButtonVisible;
  v9 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButtonVisible);
  v10 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v1) + 0x98))(v4);
  v11 = *v6;
  *v6 = v8 & 1;
  if ((v8 & 1) != v11)
  {
    v8 = (*((*v10 & *v1) + 0x110))();
  }

  if (v9)
  {
LABEL_16:
    if (*v6 == 1 && (*(v1 + v3) & 0xFE) != 2)
    {
      (*((*MEMORY[0x277D85000] & *v1) + 0xC8))(v8);
    }
  }
}

uint64_t DOCSearchControllerStackedLayout.searchPresentationState.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_searchPresentationState;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCSearchControllerStackedLayout.searchPresentationState.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_searchPresentationState;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  DOCSearchControllerStackedLayout.searchPresentationState.didset(v4);
}

void (*DOCSearchControllerStackedLayout.searchPresentationState.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_searchPresentationState;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCSearchControllerStackedLayout.searchPresentationState.modify;
}

void DOCSearchControllerStackedLayout.searchPresentationState.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  DOCSearchControllerStackedLayout.searchPresentationState.didset(v5);

  free(v1);
}

Swift::Void __swiftcall DOCSearchControllerStackedLayout.updateAppMenu()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = MEMORY[0x277D85000];
  v16 = Strong;
  if (!(*((*MEMORY[0x277D85000] & *Strong) + 0x260))())
  {
    v14 = v16;
LABEL_10:

    return;
  }

  v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButton);
  if (v4)
  {
    v5 = v3;
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 24);
    v8 = v4;
    v9 = v7(v16, ObjectType, v5);
    v10 = *((*v2 & *v8) + 0x60);
    v11 = v9;
    v10(v9);
    v12 = v8;
    if (!v9 || (v13 = [v11 accessibilityIdentifier]) == 0)
    {
      v13 = 0;
    }

    [v12 setAccessibilityIdentifier_];

    swift_unknownObjectRelease();
    v14 = v15;
    goto LABEL_10;
  }

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall DOCSearchControllerStackedLayout.updateAppMenuButtonIfNecessary()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButtonVisible;
    if (v0[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButtonVisible] == 1)
    {
      v26 = Strong;
      v25 = [Strong searchBar];
      v3 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButton;
      v4 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButton];
      if (v4)
      {
        v5 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButton];
        v6 = v5;
      }

      else
      {
        v6 = [objc_allocWithZone(type metadata accessor for DOCSearchAppMenuButton()) init];
        v5 = 0;
        v4 = *&v0[v3];
      }

      *&v0[v3] = v6;
      v9 = v6;
      v10 = v5;

      v11 = objc_opt_self();
      v12 = swift_allocObject();
      *(v12 + 16) = v0;
      *(v12 + 24) = v9;
      v13 = swift_allocObject();
      *(v13 + 16) = partial apply for closure #1 in DOCSearchControllerStackedLayout.updateAppMenuButtonIfNecessary();
      *(v13 + 24) = v12;
      aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_20_2;
      v14 = _Block_copy(aBlock);
      v15 = v9;
      v16 = v0;

      [v11 performWithoutAnimation_];
      _Block_release(v14);
      LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

      if (v11)
      {
        __break(1u);
      }

      else
      {
        v18 = MEMORY[0x277D85000];
        v19 = (*((*MEMORY[0x277D85000] & *v15) + 0x58))(v17);
        if (v19)
        {

          v20 = v25;
          [v20 _setSearchFieldContainerLayoutCustomizationDelegate_];
          [v15 frame];
          Width = CGRectGetWidth(v30);
          v22 = _UISolariumEnabled();
          v23 = 24.0;
          if (v22)
          {
            v23 = 16.0;
          }

          [v20 _setAdditionalPaddingForCancelButtonAtLeadingEdge_];
        }

        else
        {
          v24 = v0[v2];
          v0[v2] = 0;
          if (v24 == 1)
          {
            (*((*v18 & *v16) + 0x110))();
          }

          v20 = v25;
          [v20 _setSearchFieldContainerLayoutCustomizationDelegate_];
          [v20 _setAdditionalPaddingForCancelButtonAtLeadingEdge_];
        }
      }
    }

    else
    {
      v7 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButton];
      if (v7)
      {
        v27 = Strong;
        v8 = v7;
        [v8 removeFromSuperview];

        Strong = v27;
      }
    }
  }
}

Swift::Void __swiftcall DOCSearchControllerStackedLayout._searchBarWillLayoutSubviews(_:searchFieldContainer:searchTextFieldFrame:cancelButtonFrame:)(UISearchBar_optional *_, UIView_optional *searchFieldContainer, __C::CGRect searchTextFieldFrame, __C::CGRect cancelButtonFrame)
{
  v5 = *(&v4->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButton);
  if (v5)
  {
    width = searchTextFieldFrame.size.width;
    height = searchTextFieldFrame.size.height;
    if (_)
    {
      v7 = cancelButtonFrame.size.height;
      v8 = cancelButtonFrame.size.width;
      y = cancelButtonFrame.origin.y;
      x = cancelButtonFrame.origin.x;
      v12 = searchTextFieldFrame.origin.x;
      v13 = searchTextFieldFrame.origin.y;
      v14 = v5;
      v15 = [(UISearchBar_optional *)_ effectiveUserInterfaceLayoutDirection];
      isEscapingClosureAtFileLocation = v14;
      [isEscapingClosureAtFileLocation sizeToFit];
      [isEscapingClosureAtFileLocation frame];
      v58 = v18;
      v59 = v17;
      v20 = v19;
      v22 = v21;
      v67.origin.x = x;
      v67.origin.y = y;
      v67.size.width = v8;
      v67.size.height = v7;
      if (CGRectIsEmpty(v67))
      {
        [(UISearchBar_optional *)_ _additionalPaddingForCancelButtonAtLeadingEdge];
        v24 = v23 + -8.0;
        if (v15 == 1)
        {
          if (!searchFieldContainer)
          {
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v24 = -v24;
          [(UIView_optional *)searchFieldContainer bounds];
          MinX = CGRectGetMinX(v68);
        }

        else
        {
          if (!searchFieldContainer)
          {
LABEL_33:
            __break(1u);
            return;
          }

          [(UIView_optional *)searchFieldContainer bounds];
          MinX = CGRectGetMaxX(v69);
        }

        x = MinX + v24;
        v70.origin.x = v12;
        v70.origin.y = v13;
        v70.size.width = width;
        v70.size.height = height;
        y = CGRectGetMidY(v70);
        v8 = 0.0;
        v7 = 0.0;
      }

      v26 = v8;
      v27 = v22;
      if (_UISolariumEnabled())
      {
        v28 = 16.0;
      }

      else
      {
        v28 = 24.0;
      }

      width = y;
      height = v7;
      v29 = x;
      v30 = y;
      v31 = v26;
      v32 = v7;
      if (v15 == 1)
      {
        v33 = v28 + CGRectGetMaxX(*&v29);
        v34 = v58;
      }

      else
      {
        v35 = CGRectGetMinX(*&v29) - v28;
        v34 = v58;
        v71.origin.x = v59;
        v71.origin.y = v20;
        v71.size.width = v58;
        v71.size.height = v27;
        v33 = v35 - CGRectGetWidth(v71);
      }

      v72.origin.x = v59;
      v72.origin.y = v20;
      v72.size.width = v34;
      v72.size.height = v27;
      MinY = CGRectGetMinY(v72);
      v73.origin.x = v59;
      v73.origin.y = v20;
      v73.size.width = v34;
      v73.size.height = v27;
      v37 = CGRectGetWidth(v73);
      v74.origin.y = v20;
      v38 = v37;
      v74.origin.x = v59;
      v74.size.width = v34;
      v74.size.height = v27;
      v39 = CGRectGetHeight(v74);
      v75.origin.x = x;
      v57 = x;
      v75.origin.y = width;
      v75.size.width = v26;
      v75.size.height = height;
      v59 = CGRectGetMinY(v75);
      v76.origin.x = x;
      v76.origin.y = width;
      v76.size.width = v26;
      v76.size.height = height;
      v40 = CGRectGetHeight(v76);
      v77.origin.x = v33;
      v77.origin.y = MinY;
      v77.size.width = v38;
      v77.size.height = v39;
      v41 = v59 + (v40 - CGRectGetHeight(v77)) * 0.5;
      v78.origin.x = v33;
      v78.origin.y = MinY;
      v78.size.width = v38;
      v78.size.height = v39;
      v42 = CGRectGetMinX(v78);
      v79.origin.x = v33;
      v79.origin.y = MinY;
      v79.size.width = v38;
      v79.size.height = v39;
      v43 = CGRectGetWidth(v79);
      v80.origin.x = v33;
      v80.origin.y = MinY;
      v80.size.width = v38;
      v80.size.height = v39;
      v63 = v42;
      v64 = v41;
      v65 = v43;
      v66 = CGRectGetHeight(v80);
      if (searchFieldContainer)
      {
        [(UIView_optional *)searchFieldContainer bounds];
        v82.origin.x = v57;
        v82.origin.y = width;
        v82.size.height = height;
        v82.size.width = v26;
        v44 = CGRectContainsRect(v81, v82);
        v45 = [isEscapingClosureAtFileLocation window];

        if (v45)
        {
        }

        MEMORY[0x28223BE20](v46, v47);
        v52[2] = isEscapingClosureAtFileLocation;
        v53 = v44;
        v54 = &v63;
        v55 = v4;
        v56 = searchFieldContainer;
        if (v45)
        {
          v48 = 0.0;
          if (v44)
          {
            v48 = 1.0;
          }

          [isEscapingClosureAtFileLocation setAlpha_];
          [isEscapingClosureAtFileLocation setFrame_];
          v49 = [isEscapingClosureAtFileLocation superview];
          if (v49)
          {

LABEL_28:
            return;
          }
        }

        else
        {
          v50 = objc_opt_self();
          v4 = swift_allocObject();
          v4[2].super.isa = partial apply for closure #1 in DOCSearchControllerStackedLayout._searchBarWillLayoutSubviews(_:searchFieldContainer:searchTextFieldFrame:cancelButtonFrame:);
          v4[3].super.isa = v52;
          searchFieldContainer = swift_allocObject();
          searchFieldContainer->value._constraintsExceptingSubviewAutoresizingConstraints = partial apply for thunk for @escaping @callee_guaranteed () -> ();
          searchFieldContainer->value._cachedTraitCollection = v4;
          aBlock[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
          aBlock[5] = searchFieldContainer;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
          aBlock[3] = &block_descriptor_30;
          v51 = _Block_copy(aBlock);

          [v50 performWithoutAnimation_];

          _Block_release(v51);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return;
          }

          __break(1u);
        }

        if (*(&v4->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButtonVisible))
        {
          [(UIView_optional *)searchFieldContainer addSubview:isEscapingClosureAtFileLocation];
          [(UIView_optional *)searchFieldContainer bringSubviewToFront:isEscapingClosureAtFileLocation];
        }

        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }
}

void closure #1 in DOCSearchControllerStackedLayout._searchBarWillLayoutSubviews(_:searchFieldContainer:searchTextFieldFrame:cancelButtonFrame:)(void *a1, char a2, double *a3, uint64_t a4, void *a5)
{
  v9 = 0.0;
  if (a2)
  {
    v9 = 1.0;
  }

  [a1 setAlpha_];
  [a1 setFrame_];
  v10 = [a1 superview];
  if (v10)
  {
  }

  else if (*(a4 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCSearchControllerStackedLayout_appMenuButtonVisible))
  {
    if (a5)
    {
      [a5 addSubview_];

      [a5 bringSubviewToFront_];
    }

    else
    {
      __break(1u);
    }
  }
}

id DOCEverywhereSearchScope.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *DOCSearchController.itemCollectionViewController(_:responderForAction:sender:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController);
  v2 = v1;
  return v1;
}

void *protocol witness for DOCItemCollectionViewControllerInteractionDelegate.itemCollectionViewController(_:responderForAction:sender:) in conformance DOCSearchController()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController);
  v2 = v1;
  return v1;
}

void one-time initialization function for disableWorkaroundFor92855726()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x24C1FAD20](0xD00000000000001CLL, 0x8000000249BEBD80);
  v2 = [v0 BOOLForKey_];

  disableWorkaroundFor92855726 = v2;
}

void DOCSizeCategoryDependantConstraints.addConstraints(for:_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(), (v7 & 1) != 0))
  {
    v14 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  specialized Array.append<A>(contentsOf:)(v8);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v13;
  swift_endAccess();
  if ((*(v3 + 32) & 1) == 0 && *(v13 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)();
    if (v10)
    {
      v11 = objc_opt_self();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v11 activateConstraints_];
    }
  }
}

void DOCSizeCategoryDependantConstraints.activeSizeClass.didset(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    if (*(*(v2 + 16) + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)();
      if (v3)
      {
        v4 = objc_opt_self();
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);

        isa = Array._bridgeToObjectiveC()().super.isa;

        [v4 deactivateConstraints_];
      }
    }
  }

  if ((*(v2 + 32) & 1) == 0)
  {
    swift_beginAccess();
    if (*(*(v2 + 16) + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)();
      if (v6)
      {
        v7 = objc_opt_self();
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);

        v8 = Array._bridgeToObjectiveC()().super.isa;

        [v7 activateConstraints_];
      }
    }
  }
}

uint64_t DOCSizeCategoryDependantConstraints.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall UISearchController.doc_activateWithKeyboardFocus()()
{
  [v0 setActive_];
  v1 = [v0 searchBar];
  [v1 becomeFirstResponder];
}

uint64_t UIViewController.doc_manuallyHiddenForSearch.getter()
{
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v0, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x60))(&v3);

  return v3 & 1;
}

void (*UIViewController.doc_manuallyHiddenForSearch.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v1, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v5) + 0x60))();

  *(v4 + 32) = *(v4 + 33) & 1;
  return UIViewController.doc_manuallyHiddenForSearch.modify;
}

void UIViewController.doc_manuallyHiddenForSearch.modify(uint64_t a1)
{
  v1 = *a1;
  UIViewController.doc_manuallyHiddenForSearch.setter(*(*a1 + 32));

  free(v1);
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(id **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a1;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_86:
    v9 = *v7;
    if (!*v7)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_118:
      v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    }

    v93 = *(v10 + 2);
    if (v93 >= 2)
    {
      while (*v6)
      {
        v94 = v10;
        v10 = (v93 - 1);
        v95 = *&v94[16 * v93];
        v96 = *&v94[16 * v93 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v95), (*v6 + 8 * *&v94[16 * v93 + 16]), (*v6 + 8 * v96), v9);
        if (v5)
        {
          goto LABEL_96;
        }

        if (v96 < v95)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = specialized _ArrayBuffer._consumeAndCreateNew()(v94);
        }

        if (v93 - 2 >= *(v94 + 2))
        {
          goto LABEL_112;
        }

        v97 = &v94[16 * v93];
        *v97 = v95;
        *(v97 + 1) = v96;
        specialized Array.remove(at:)(v93 - 1);
        v10 = v94;
        v93 = *(v94 + 2);
        if (v93 <= 1)
        {
          goto LABEL_96;
        }
      }

      goto LABEL_122;
    }

LABEL_96:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v9 = (v9 + 1);
    if (v9 < v8)
    {
      v107 = v8;
      v104 = v10;
      v12 = *(*v6 + 8 * v9);
      v100 = 8 * v11;
      v13 = (*v6 + 8 * v11);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = MEMORY[0x277D85000];
      v17 = *((*MEMORY[0x277D85000] & *v12) + 0x1B8);
      v18 = v12;
      v19 = v15;
      v111 = v17();
      v109 = (*((*v16 & *v19) + 0x1B8))();

      v102 = v11;
      v20 = (v11 + 2);
      while (1)
      {
        v9 = v107;
        if (v107 == v20)
        {
          break;
        }

        v21 = *(v14 - 1);
        v22 = MEMORY[0x277D85000];
        v23 = *((*MEMORY[0x277D85000] & **v14) + 0x1B8);
        v24 = *v14;
        v25 = v21;
        v26 = v23();
        LOBYTE(v21) = (*((*v22 & *v25) + 0x1B8))();

        v20 = (v20 + 1);
        ++v14;
        if (v111 < v109 == v26 >= v21)
        {
          v9 = (v20 - 1);
          break;
        }
      }

      v6 = a3;
      v27 = v100;
      v10 = v104;
      v7 = a1;
      v11 = v102;
      if (v111 < v109)
      {
        if (v9 < v102)
        {
          goto LABEL_115;
        }

        if (v102 < v9)
        {
          v28 = 8 * v9 - 8;
          v29 = v9;
          v30 = v102;
          do
          {
            v29 = (v29 - 1);
            if (v30 != v29)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_121;
              }

              v31 = *(v32 + v27);
              *(v32 + v27) = *(v32 + v28);
              *(v32 + v28) = v31;
            }

            v30 = (v30 + 1);
            v28 -= 8;
            v27 += 8;
          }

          while (v30 < v29);
        }
      }
    }

    v33 = v6[1];
    if (v9 < v33)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_114;
      }

      if (v9 - v11 < a4)
      {
        v34 = (v11 + a4);
        if (__OFADD__(v11, a4))
        {
          goto LABEL_116;
        }

        if (v34 >= v33)
        {
          v34 = v6[1];
        }

        if (v34 < v11)
        {
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        if (v9 != v34)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v9 < v11)
    {
      goto LABEL_113;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    }

    v47 = *(v10 + 2);
    v46 = *(v10 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v10);
    }

    *(v10 + 2) = v48;
    v49 = &v10[16 * v47];
    *(v49 + 4) = v11;
    *(v49 + 5) = v9;
    v50 = *v7;
    if (!*v7)
    {
      goto LABEL_123;
    }

    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v10 + 4);
          v53 = *(v10 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_55:
          if (v55)
          {
            goto LABEL_102;
          }

          v68 = &v10[16 * v48];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_105;
          }

          v74 = &v10[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_108;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_109;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v78 = &v10[16 * v48];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_69:
        if (v73)
        {
          goto LABEL_104;
        }

        v81 = &v10[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_107;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_76:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
        {
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        if (!*v6)
        {
          goto LABEL_120;
        }

        v90 = *&v10[16 * v89 + 32];
        v91 = *&v10[16 * v51 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v90), (*v6 + 8 * *&v10[16 * v51 + 32]), (*v6 + 8 * v91), v50);
        if (v5)
        {
          goto LABEL_96;
        }

        if (v91 < v90)
        {
          goto LABEL_98;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v89 >= *(v10 + 2))
        {
          goto LABEL_99;
        }

        v92 = &v10[16 * v89];
        *(v92 + 4) = v90;
        *(v92 + 5) = v91;
        specialized Array.remove(at:)(v51);
        v48 = *(v10 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v10[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_100;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_101;
      }

      v63 = &v10[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_103;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_106;
      }

      if (v67 >= v59)
      {
        v85 = &v10[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_110;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v8 = v6[1];
    v7 = a1;
    if (v9 >= v8)
    {
      goto LABEL_86;
    }
  }

  v103 = v11;
  v105 = v10;
  v101 = v5;
  v35 = *v6;
  v36 = *v6 + 8 * v9 - 8;
  v37 = v11 - v9;
  v108 = v34;
LABEL_28:
  v112 = v36;
  v113 = v9;
  v38 = *(v35 + 8 * v9);
  v110 = v37;
  while (1)
  {
    v39 = *v36;
    v40 = MEMORY[0x277D85000];
    v41 = *((*MEMORY[0x277D85000] & *v38) + 0x1B8);
    v42 = v38;
    v43 = v39;
    LODWORD(v41) = v41();
    LOBYTE(v39) = (*((*v40 & *v43) + 0x1B8))();

    if (v41 >= v39)
    {
LABEL_27:
      v9 = (v9 + 1);
      v36 = v112 + 8;
      v37 = v110 - 1;
      if ((v113 + 1) != v108)
      {
        goto LABEL_28;
      }

      v9 = v108;
      v6 = a3;
      v5 = v101;
      v10 = v105;
      v7 = a1;
      v11 = v103;
      goto LABEL_35;
    }

    if (!v35)
    {
      break;
    }

    v44 = *v36;
    v38 = *(v36 + 8);
    *v36 = v38;
    *(v36 + 8) = v44;
    v36 -= 8;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_27;
    }
  }

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
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(id *__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      v13 = a4;
      memmove(a4, __dst, 8 * v9);
      a4 = v13;
    }

    v40 = &a4[v9];
    v14 = a4;
    if (v7 < 8)
    {
LABEL_10:
      v5 = v6;
      goto LABEL_37;
    }

    while (1)
    {
      if (v5 >= v4)
      {
        goto LABEL_10;
      }

      v38 = v6;
      v18 = *v14;
      v19 = MEMORY[0x277D85000];
      v20 = *((*MEMORY[0x277D85000] & **v5) + 0x1B8);
      v21 = *v5;
      v22 = v18;
      LODWORD(v20) = v20();
      LOBYTE(v18) = (*((*v19 & *v22) + 0x1B8))();

      if (v20 < v18)
      {
        break;
      }

      v15 = v14;
      v16 = v38;
      v17 = v38 == v14++;
      if (!v17)
      {
        goto LABEL_13;
      }

LABEL_14:
      v6 = v16 + 1;
      if (v14 >= v40)
      {
        goto LABEL_10;
      }
    }

    v15 = v5;
    v16 = v38;
    v17 = v38 == v5++;
    if (v17)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v16 = *v15;
    goto LABEL_14;
  }

  v14 = a4;
  if (a4 != __src || &__src[v12] <= a4)
  {
    memmove(a4, __src, 8 * v12);
  }

  v40 = &v14[v12];
  if (v10 >= 8 && v5 > v6)
  {
    v39 = v6;
LABEL_26:
    v36 = v5;
    v23 = v5 - 1;
    v24 = v4 - 1;
    v25 = v40;
    v37 = v5 - 1;
    do
    {
      v26 = v14;
      v27 = v24;
      v28 = v24 + 1;
      v29 = *--v25;
      v30 = *v23;
      v31 = *((*MEMORY[0x277D85000] & *v29) + 0x1B8);
      v32 = v29;
      v33 = v30;
      v34 = v31();
      LOBYTE(v30) = (*((*MEMORY[0x277D85000] & *v33) + 0x1B8))();

      if (v34 < v30)
      {
        v4 = v27;
        if (v28 != v36)
        {
          *v27 = *v37;
        }

        v14 = v26;
        if (v40 <= v26 || (v5 = v37, v37 <= v39))
        {
          v5 = v37;
          goto LABEL_37;
        }

        goto LABEL_26;
      }

      if (v28 != v40)
      {
        *v27 = *v25;
      }

      v24 = v27 - 1;
      v40 = v25;
      v14 = v26;
      v23 = v37;
    }

    while (v25 > v26);
    v40 = v25;
    v5 = v36;
  }

LABEL_37:
  if (v5 != v14 || v5 >= (v14 + ((v40 - v14 + (v40 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v14, 8 * (v40 - v14));
  }

  return 1;
}

unint64_t specialized Array._copyToContiguousArray()(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void specialized DOCSearchController.searchBar(_:textDidChange:)(void *a1)
{
  v3 = [v1 presentingViewController];
  if (v3)
  {
    v13 = v3;
    if (([v3 doc_hasDisappearedOrIsDisappearing] & 1) == 0)
    {
      [v1 loadViewIfNeeded];
      v4 = [a1 text];
      if (v4)
      {
        v5 = v4;
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;

        v9 = v6 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = 0;
        v8 = 0xE000000000000000;
      }

      v10 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v10 = v9;
      }

      if (v10)
      {
        DOCSearchController.scheduleSuggestionsTypingTimeout()();
      }

      else
      {
        v11 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTypingTimeoutTimer];
        *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTypingTimeoutTimer] = 0;

        v12 = [v1 searchBar];
        DOCSearchController.updateSuggestions(_:)(v12);
      }
    }
  }
}

uint64_t specialized DOCAppProtectionManager.appsHiddenFromSearchScopeFragment.getter()
{
  if (![objc_opt_self() protectedAppsEnabled])
  {
    return 0;
  }

  v0 = [objc_opt_self() sharedManager];
  v1 = specialized DOCAppProtectionManager.appContainerOIDsToHideFromSearch.getter();

  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 2);
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      _StringGuts.grow(_:)(28);

      MEMORY[0x24C1FAEA0](v4, v5);
      MEMORY[0x24C1FAEA0](41, 0xE100000000000000);

      v7 = *(v11 + 16);
      v6 = *(v11 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v8 = v11 + 16 * v7;
      *(v8 + 32) = 0xD000000000000019;
      *(v8 + 40) = 0x8000000249BEBCA0;
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
  v10 = BidirectionalCollection<>.joined(separator:)();

  return v10;
}

void specialized DOCSearchController.init(coder:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_dismissingAssertion) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_cachedSearchQuery) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__suggesterManager) = 0;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTableViewContainerView;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTableViewWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchPresentationState) = 4;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___stackedSearchLayout) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_internalPlacement) = 1;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchFieldHasFocus) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController____lazy_storage___suggestionsTableViewController) = 0;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_sizeCategoryDependantConstraints;
  type metadata accessor for DOCSizeCategoryDependantConstraints();
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F98];
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;
  *(v1 + v3) = v4;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_searchDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_isDeactiveTemporary) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_selectedScopeIndex) = 0;
  v5 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_blocksToRunAfterDismiss) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController__currentTraitCollectionSource) = 0;
  v6 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_layoutConfiguration;
  *v6 = 0;
  *(v6 + 2) = 1;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_activationTemporilyDisabled) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_suggestionsTypingTimeoutTimer) = 0;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_displayedSuggestions) = v5;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_selectedSuggestion) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t lazy protocol witness table accessor for type DOCSearchController and conformance NSObject(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
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

id specialized DOCSearchController.willDismissSearchController(_:)()
{
  type metadata accessor for DOCAssertion();
  v1 = swift_allocObject();
  *(v1 + 32) = 1;
  *(v1 + 40) = MEMORY[0x277D84F90];
  *(v1 + 16) = 0xD00000000000001BLL;
  *(v1 + 24) = 0x8000000249BEBCC0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x128))();
  v4 = (*((*v2 & *v0) + 0x278))(v3);
  if (v4)
  {
    v5 = v4;
    if ([v4 respondsToSelector_])
    {
      [v5 willDismissSearchController_];
    }

    swift_unknownObjectRelease();
  }

  return [v0 setShowsSearchResultsController_];
}

void specialized DOCSearchController.didDismissSearchController(_:)()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x278))();
  if (v3)
  {
    v4 = v3;
    if ([v3 respondsToSelector_])
    {
      [v4 didDismissSearchController_];
    }

    v3 = swift_unknownObjectRelease();
  }

  v5 = (*((*v2 & *v1) + 0x120))(v3);
  if (v5)
  {
    (*(*v5 + 160))(v5);
  }

  (*((*v2 & *v1) + 0x128))(0);

  DOCSearchController.performBlocksToDismissAfterDeactivate()();
}

uint64_t specialized DOCSearchController.searchBarTextDidEndEditing(_:)()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v5 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in DOCSearchController.searchBarTextDidEndEditing(_:);
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_219;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DOCSearchController and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v8, v4, v11);
  _Block_release(v11);

  (*(v15 + 8))(v4, v1);
  return (*(v5 + 8))(v8, v14);
}

void specialized DOCSearchController.updateSearchResults(for:selecting:)(void *a1)
{
  if ([a1 representedObject])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    type metadata accessor for DOCSuggestion();
    v2 = swift_dynamicCast();
    v3 = v6;
    if (!v2)
    {
      v3 = 0;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v9, &_sypSgMd, &_sypSgMR);
    v3 = 0;
  }

  v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_selectedSuggestion);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_selectedSuggestion) = v3;
  v5 = v3;

  DOCSearchController.updateSearchQueryWithSelectedSuggestion()();
}

void specialized DOCSearchController.updateSearchResults(for:)()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_cachedSearchQuery);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_cachedSearchQuery) = 0;

  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v0) + 0x2C0))();
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_resultCollectionViewController);
    v6 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection;
    v7 = *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (v7)
    {
      v8 = v4;
      v9 = *((*v3 & *v7) + 0x1A8);
      v10 = v7;
      v11 = v9();

      if (!v11)
      {
        goto LABEL_74;
      }

      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (!v12)
      {
      }

      v13 = *(v5 + v6);
      if (v13)
      {
        v14 = *((*v3 & *v13) + 0x1A8);
        v15 = v13;
        v16 = v14();

        if (!v16)
        {
          goto LABEL_74;
        }

        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        v71 = v17;
        if (v17)
        {
          if (!v12)
          {
            v72 = v17;
            goto LABEL_13;
          }
        }

        else
        {

          if (!v12)
          {
            goto LABEL_74;
          }
        }

        v72 = v12;
LABEL_13:
        v18 = one-time initialization token for UI;
        v70 = v12;
        if (v18 != -1)
        {
          swift_once();
        }

        v19 = static DOCLog.UI;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_249B9A480;
        *(v20 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSFileProviderSearchQuery, 0x277CC64B0);
        *(v20 + 64) = lazy protocol witness table accessor for type NSFileProviderSearchQuery and conformance NSObject();
        *(v20 + 32) = v8;
        v21 = v8;
        v22 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Will use search query for populating search item collection: %@", 63, 2, &dword_2493AC000, v19, v22, v20);

        v23 = MEMORY[0x277D84F90];
        v73 = MEMORY[0x277D84F90];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v25 = Strong;
          MEMORY[0x24C1FB090]();
          if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v23 = v73;
        }

        if (!(*((*v3 & *v1) + 0x260))())
        {
          goto LABEL_27;
        }

        v27 = v26;
        ObjectType = swift_getObjectType();
        v29 = (*(v27 + 8))(v1, ObjectType, v27);
        v30 = swift_unknownObjectRelease();
        if (!*(v29 + 16))
        {

          goto LABEL_27;
        }

        v31 = (*((*MEMORY[0x277D85000] & *v1) + 0x2D8))(v30);
        if ((v31 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v31 < *(v29 + 16))
        {
          v32 = *(v29 + 16 * v31 + 40);
          swift_unknownObjectRetain();

          v33 = swift_getObjectType();
          v34 = (*(v32 + 24))(v33, v32);
          swift_unknownObjectRelease();
          if (v34)
          {
            v23 = v34;
            MEMORY[0x24C1FB090]();
            if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
LABEL_25:
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v23 = v73;
              goto LABEL_27;
            }

LABEL_62:
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            goto LABEL_25;
          }

LABEL_27:
          v35 = [v72 searchQuery];
          v36 = v21;
          if (v35)
          {
            v37 = static NSObject.== infix(_:_:)();

            if (v37)
            {
              v38 = *(v5 + v6);
              if (!v38)
              {
LABEL_72:
                __break(1u);
                goto LABEL_73;
              }

              v39 = *((*MEMORY[0x277D85000] & *v38) + 0x1A8);
              v40 = v38;
              v41 = v39();

              if (!v41)
              {
                goto LABEL_74;
              }

              v42 = [v41 itemFilteringPredicate];

              if (v42)
              {
              }

              else if (v23 >> 62)
              {
                if (__CocoaSet.count.getter())
                {
                  goto LABEL_44;
                }
              }

              else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_44;
              }

              v43 = *(v5 + v6);
              if (!v43)
              {
LABEL_73:
                __break(1u);
                goto LABEL_74;
              }

              v44 = *((*MEMORY[0x277D85000] & *v43) + 0x1A8);
              v45 = v43;
              v46 = v44();

              if (!v46)
              {
                goto LABEL_74;
              }

              v47 = [v46 itemFilteringPredicate];

              if (!v47)
              {
LABEL_38:

                if (one-time initialization token for UI != -1)
                {
                  swift_once();
                }

                v48 = type metadata accessor for Logger();
                __swift_project_value_buffer(v48, static Logger.UI);
                v49 = v36;
                v50 = Logger.logObject.getter();
                v51 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v50, v51))
                {
                  v52 = swift_slowAlloc();
                  v53 = swift_slowAlloc();
                  *v52 = 138412290;
                  *(v52 + 4) = v49;
                  *v53 = v8;
                  v54 = v49;
                  _os_log_impl(&dword_2493AC000, v50, v51, "Not triggering a new observation, since search query object or predicate(s) haven't changed: %@", v52, 0xCu);
                  outlined destroy of CharacterSet?(v53, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
                  MEMORY[0x24C1FE850](v53, -1, -1);
                  MEMORY[0x24C1FE850](v52, -1, -1);

                  swift_unknownObjectRelease();

                  v50 = v54;
                }

                else
                {

                  swift_unknownObjectRelease();
                }

                goto LABEL_58;
              }

              if (v23 >> 62)
              {
                if (__CocoaSet.count.getter())
                {
                  goto LABEL_38;
                }
              }

              else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_38;
              }
            }
          }

LABEL_44:
          v55 = *(v5 + v6);
          if (v55)
          {
            v56 = MEMORY[0x277D85000];
            v57 = *((*MEMORY[0x277D85000] & *v55) + 0x1A8);
            v58 = v55;
            v59 = v57();

            if (!v59)
            {
              goto LABEL_74;
            }

            [v59 stopObserving];

            [v72 setSearchQuery_];
            v60 = *(v5 + v6);
            if (v60)
            {
              v61 = *((*v56 & *v60) + 0x1A8);
              v62 = v60;
              v63 = v61();

              if (!v63)
              {
                goto LABEL_74;
              }

              if (v23 >> 62)
              {
                if (__CocoaSet.count.getter())
                {
                  goto LABEL_50;
                }
              }

              else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_50:
                type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSPredicate, 0x277CCAC30);
                isa = Array._bridgeToObjectiveC()().super.isa;
                v65 = [objc_opt_self() andPredicateWithSubpredicates_];

                goto LABEL_55;
              }

              v65 = 0;
LABEL_55:
              [v63 setItemFilteringPredicate_];

              v66 = *(v5 + v6);
              if (v66)
              {
                v67 = *((*v56 & *v66) + 0x1A8);
                v68 = v66;
                v69 = v67();

                if (v69)
                {
                  [v69 startObserving];

                  swift_unknownObjectRelease();
LABEL_58:

                  return;
                }

                while (1)
                {
LABEL_74:
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
                }
              }

              goto LABEL_71;
            }

LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        __break(1u);
        goto LABEL_62;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_69;
  }
}

id partial apply for closure #1 in DOCSearchControllerStackedLayout.updateAppMenuButtonIfNecessary()()
{
  v1 = *(v0 + 24);
  (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0xC8))();

  return [v1 sizeToFit];
}

unint64_t lazy protocol witness table accessor for type DOCSuggestionsPlacement and conformance DOCSuggestionsPlacement()
{
  result = lazy protocol witness table cache variable for type DOCSuggestionsPlacement and conformance DOCSuggestionsPlacement;
  if (!lazy protocol witness table cache variable for type DOCSuggestionsPlacement and conformance DOCSuggestionsPlacement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSuggestionsPlacement and conformance DOCSuggestionsPlacement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCSearchController.TraitSource and conformance DOCSearchController.TraitSource()
{
  result = lazy protocol witness table cache variable for type DOCSearchController.TraitSource and conformance DOCSearchController.TraitSource;
  if (!lazy protocol witness table cache variable for type DOCSearchController.TraitSource and conformance DOCSearchController.TraitSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSearchController.TraitSource and conformance DOCSearchController.TraitSource);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCSearchController.LayoutConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

unint64_t lazy protocol witness table accessor for type DOCSearchController.LayoutConfiguration.NavigationBarRelativePlacement and conformance DOCSearchController.LayoutConfiguration.NavigationBarRelativePlacement()
{
  result = lazy protocol witness table cache variable for type DOCSearchController.LayoutConfiguration.NavigationBarRelativePlacement and conformance DOCSearchController.LayoutConfiguration.NavigationBarRelativePlacement;
  if (!lazy protocol witness table cache variable for type DOCSearchController.LayoutConfiguration.NavigationBarRelativePlacement and conformance DOCSearchController.LayoutConfiguration.NavigationBarRelativePlacement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSearchController.LayoutConfiguration.NavigationBarRelativePlacement and conformance DOCSearchController.LayoutConfiguration.NavigationBarRelativePlacement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSFileProviderSearchQuery and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSFileProviderSearchQuery and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSFileProviderSearchQuery and conformance NSObject)
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for NSFileProviderSearchQuery, 0x277CC64B0);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSFileProviderSearchQuery and conformance NSObject);
  }

  return result;
}

void __swiftcall DOCItemCollectionViewController.configuredSaveButton()(UIBarButtonItem *__return_ptr retstr)
{
  v2 = v1;
  v3 = MEMORY[0x277D85000];
  v4 = *(*((*MEMORY[0x277D85000] & *v1) + 0x1908))();
  v6 = (*(v4 + 432))(v49);
  v7 = *(v5 + 8);
  if (v7)
  {
    v8 = *(v5 + 8);
  }

  else
  {
    v9 = v5;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x277D751E0);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v50.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v50.value.super.isa = 0;
    UIBarButtonItem.init(title:image:primaryAction:menu:)(v12, 0, v50, 0, v11);
    v14 = v13;
    [v13 setStyle_];
    v15 = *(v9 + 8);
    *(v9 + 8) = v14;
    v16 = v14;

    type metadata accessor for DOCBarButtonItemGroup();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_249BA0290;
    *(v17 + 32) = v16;
    v8 = v16;
    v18 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v19 = *v9;
    *v9 = v18;

    v7 = 0;
  }

  v20 = v7;
  v6(v49, 0);

  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 1;
  v22 = (*((*v3 & *v2) + 0xC70))();
  if (v22)
  {
    v23 = v22;
    v24 = (*((*v3 & *v2) + 0xE8))();
    if (v24)
    {
      v25 = v24;
      v26 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
      if ([v26 interactionMode] == 2 || objc_msgSend(v26, sel_interactionMode) == 3)
      {
        v27 = [v25 pickerOperationTitleFor:v23 useShortTitle:1];
        countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        object = v29;
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
LABEL_21:
        v44 = v8;
        v45 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);

        [v44 setTitle_];

        [v44 setEnabled_];

        return;
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v31 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration);
  if ([v31 interactionMode] == 2)
  {
    v32 = _DocumentManagerBundle();
    if (v32)
    {
      v33 = v32;
      v48 = 0x8000000249BEBDA0;
      v34 = 0x617A696C61636F4CLL;
      v35 = 0xEB00000000656C62;
      v36 = 1702256979;
LABEL_15:
      v37 = 0xE400000000000000;
      v38.super.isa = v33;
      v39 = 0;
      v40 = 0xE000000000000000;
LABEL_19:
      v42 = 0xD00000000000001ALL;
LABEL_20:
      v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v36, *&v34, v38, *&v39, *(&v48 - 1));
      countAndFlagsBits = v43._countAndFlagsBits;
      object = v43._object;

      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_28;
  }

  if (getter of pickerOp #1 in DOCItemCollectionViewController.configuredSaveButton()(v21, v2) == 1)
  {
    v41 = _DocumentManagerBundle();
    if (v41)
    {
      v33 = v41;
      v48 = 0x8000000249BD74E0;
      v34 = 0x617A696C61636F4CLL;
      v35 = 0xEB00000000656C62;
      v36 = 0xD00000000000001BLL;
      v37 = 0x8000000249BD74C0;
      v38.super.isa = v33;
      v39 = 2037411651;
      v40 = 0xE400000000000000;
      goto LABEL_19;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v46 = [v31 forPickingFolders];
  v47 = _DocumentManagerBundle();
  v33 = v47;
  if (v46)
  {
    if (v47)
    {
      v48 = 0x8000000249BD7490;
      v34 = 0x617A696C61636F4CLL;
      v35 = 0xEB00000000656C62;
      v42 = 0xD000000000000026;
      v36 = 1852141647;
      v37 = 0xE400000000000000;
      v38.super.isa = v33;
      v39 = 0;
      v40 = 0xE000000000000000;
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  if (v47)
  {
    v48 = 0x8000000249BD7470;
    v34 = 0x617A696C61636F4CLL;
    v35 = 0xEB00000000656C62;
    v36 = 1702260557;
    goto LABEL_15;
  }

LABEL_30:
  __break(1u);
}

void closure #1 in closure #1 in DOCItemCollectionViewController.configuredSaveButton()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    DOCItemCollectionViewController.confirmPickerExportOrDrillIn()();
  }
}

id getter of pickerOp #1 in DOCItemCollectionViewController.configuredSaveButton()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (*(a1 + 24) == 1)
  {
    v5 = MEMORY[0x277D85000];
    v6 = (*((*MEMORY[0x277D85000] & *a2) + 0xC70))();
    if (v6)
    {
      v7 = v6;
      v8 = (*((*v5 & *a2) + 0xE8))();
      if (v8)
      {
        v2 = [v8 pickerOperationFor_];
        swift_unknownObjectRelease();
      }

      else
      {
        v2 = 0;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v2 = 0;
    }

    swift_beginAccess();
    *(a1 + 16) = v2;
    *(a1 + 24) = 0;
  }

  return v2;
}

Swift::Int __swiftcall String.doc_editDistance(from:)(Swift::String from)
{
  v4 = v2;
  v5 = v1;
  object = from._object;
  countAndFlagsBits = from._countAndFlagsBits;
  v8 = String.count.getter();
  v9 = String.count.getter();
  if (v9 < 1)
  {

    return String.count.getter();
  }

  v10 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (v10 < 0)
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v11 = v9;
  v54 = v8;
  if (v8 == -1)
  {
    v12 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v12 + 16) = v10;
    bzero((v12 + 32), 8 * v8 + 8);
  }

  v55 = v11;
  if (__OFADD__(v11, 1))
  {
    goto LABEL_90;
  }

  v57 = v5;
  v58 = v4;
  v3 = _sSa9repeating5countSayxGx_SitcfCSaySiG_Tt1g5Tf4gn_n(v12, v11 + 1);

  if (v11 + 1 < 1)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_92:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  }

  v14 = v54;
  v15 = 0;
  while (1)
  {
    v16 = v3[2];
    if (v15 >= v16)
    {
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v17 = &v3[v15];
    v18 = v17[4];
    if (!*(v18 + 16))
    {
      goto LABEL_80;
    }

    v19 = *(v18 + 32);
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_81;
    }

    if (v15 + 1 >= v16)
    {
      goto LABEL_82;
    }

    v21 = v17[5];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17[5] = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      break;
    }

    if (!*(v21 + 2))
    {
      goto LABEL_23;
    }

LABEL_20:
    *(v21 + 4) = v20;
    if (v55 == ++v15)
    {
      goto LABEL_24;
    }
  }

  v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
  v17[5] = v21;
  if (*(v21 + 2))
  {
    goto LABEL_20;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  if (v10 == 1)
  {
LABEL_35:
    v27 = HIBYTE(object) & 0xF;
    v60[0] = countAndFlagsBits;
    v60[1] = object;
    if ((object & 0x2000000000000000) == 0)
    {
      v27 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    v60[2] = 0;
    v60[3] = v27;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_94;
    }
  }

  else
  {
    if (v10)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_27:
        v23 = 0;
        while (v3[2])
        {
          v10 = v3[4];
          if (v23 >= *(v10 + 16))
          {
            goto LABEL_84;
          }

          v24 = *(v10 + 8 * v23 + 32);
          v25 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_85;
          }

          v26 = swift_isUniquelyReferenced_nonNull_native();
          v3[4] = v10;
          if ((v26 & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
            v3[4] = v10;
          }

          if (v23 + 1 >= *(v10 + 16))
          {
            goto LABEL_86;
          }

          *(v10 + 8 * v23++ + 40) = v25;
          if (v14 == v23)
          {
            goto LABEL_35;
          }
        }

        goto LABEL_83;
      }

LABEL_98:
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      goto LABEL_27;
    }

    __break(1u);
LABEL_94:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  }

  object = v60;
  v28 = String.Iterator.next()();
  if (v28.value._object)
  {
    v10 = v28.value._countAndFlagsBits;
    countAndFlagsBits = v28.value._object;
    v29 = 0;
    v30 = HIBYTE(v58) & 0xF;
    if ((v58 & 0x2000000000000000) == 0)
    {
      v30 = v57 & 0xFFFFFFFFFFFFLL;
    }

    v56 = v30;
    v31 = v3 + 4;
    do
    {
      v33 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_87;
      }

      v59[0] = v57;
      v59[1] = v58;
      v59[2] = 0;
      v59[3] = v56;

      object = v59;
      v36 = String.Iterator.next()();
      v35 = v36.value._object;
      v34 = v36.value._countAndFlagsBits;
      if (v36.value._object)
      {
        v37 = 0;
        while (1)
        {
          if (v34 == v10 && v35 == countAndFlagsBits)
          {

            v38 = 0;
          }

          else
          {
            object = v35;
            v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v38 = (v39 & 1) == 0;
          }

          v40 = v3[2];
          if (v29 >= v40)
          {
            break;
          }

          v41 = v31[v29];
          if (v37 + 1 >= *(v41 + 16))
          {
            goto LABEL_72;
          }

          v42 = v41 + 8 * v37;
          v43 = *(v42 + 40);
          v44 = __OFADD__(v43, 1);
          v45 = v43 + 1;
          if (v44)
          {
            goto LABEL_73;
          }

          if (v33 >= v40)
          {
            goto LABEL_74;
          }

          object = v31[v33];
          if (v37 >= *(object + 16))
          {
            goto LABEL_75;
          }

          v46 = *(object + 8 * v37 + 32);
          v44 = __OFADD__(v46, 1);
          v47 = v46 + 1;
          if (v44)
          {
            goto LABEL_76;
          }

          v48 = *(v42 + 32);
          v44 = __OFADD__(v48, v38);
          v49 = v48 + v38;
          if (v44)
          {
            goto LABEL_77;
          }

          if (v47 < v45)
          {
            v45 = v47;
          }

          if (v49 >= v45)
          {
            v14 = v45;
          }

          else
          {
            v14 = v49;
          }

          v50 = swift_isUniquelyReferenced_nonNull_native();
          v31[v33] = object;
          if ((v50 & 1) == 0)
          {
            object = specialized _ArrayBuffer._consumeAndCreateNew()(object);
            v31[v33] = object;
          }

          if (v37 + 1 >= *(object + 16))
          {
            goto LABEL_78;
          }

          *(object + 8 * v37 + 40) = v14;
          object = v59;
          v51 = String.Iterator.next()();
          v35 = v51.value._object;
          v34 = v51.value._countAndFlagsBits;
          ++v37;
          if (!v51.value._object)
          {
            goto LABEL_42;
          }
        }

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
        goto LABEL_79;
      }

LABEL_42:

      object = v60;
      v32 = String.Iterator.next()();
      v10 = v32.value._countAndFlagsBits;
      countAndFlagsBits = v32.value._object;
      ++v29;
    }

    while (v32.value._object);
  }

  if (v55 >= v3[2])
  {
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if ((v54 & 0x8000000000000000) != 0)
  {
    goto LABEL_96;
  }

  v52 = v3[v55 + 4];
  if (v54 >= *(v52 + 16))
  {
    goto LABEL_97;
  }

  v53 = *(v52 + 8 * v54 + 32);

  return v53;
}

uint64_t String.doc_localizedQuotedString.getter(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for Locale();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() currentLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = Locale.quotationBeginDelimiter.getter();
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = 34;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE100000000000000;
  }

  v14 = Locale.quotationEndDelimiter.getter();
  v43 = v12;
  v44 = v13;
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 34;
  }

  v34 = v16;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE100000000000000;
  }

  v41 = a1;
  v42 = a2;
  lazy protocol witness table accessor for type String and conformance String();
  v41 = StringProtocol.decomposedStringWithCanonicalMapping.getter();
  v42 = v18;
  v39 = 10844;
  v40 = 0xE200000000000000;
  v37 = 42;
  v38 = 0xE100000000000000;
  v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v21 = v20;

  v41 = v19;
  v42 = v21;
  v39 = 10076;
  v40 = 0xE200000000000000;
  v37 = 39;
  v38 = 0xE100000000000000;
  v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v24 = v23;

  v41 = v22;
  v42 = v24;
  v39 = 8796;
  v40 = 0xE200000000000000;
  v37 = 34;
  v38 = 0xE100000000000000;
  v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v27 = v26;

  v41 = v25;
  v42 = v27;
  v39 = 23644;
  v40 = 0xE200000000000000;
  v37 = 92;
  v38 = 0xE100000000000000;
  v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v30 = v29;

  MEMORY[0x24C1FAEA0](v28, v30);

  MEMORY[0x24C1FAEA0](v34, v17);

  v31 = v43;
  (*(v35 + 8))(v8, v36);
  return v31;
}

uint64_t String.doc_pipeSeparatedSanitizedComponentsForComparison.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v23 - v6;
  v26 = a1;
  v27 = a2;
  v24 = 124;
  v25 = 0xE100000000000000;
  v23[1] = lazy protocol witness table accessor for type String and conformance String();
  v8 = StringProtocol.components<A>(separatedBy:)();
  v9 = *(v8 + 16);
  if (v9)
  {
    v24 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v24;
    v11 = objc_opt_self();
    v23[0] = v8;
    v12 = (v8 + 40);
    do
    {
      v13 = *v12;
      v26 = *(v12 - 1);
      v27 = v13;

      v14 = [v11 currentLocale];
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = type metadata accessor for Locale();
      (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
      v16 = StringProtocol.folding(options:locale:)();
      v18 = v17;
      outlined destroy of CharacterSet?(v7, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

      v24 = v10;
      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v10 = v24;
      }

      *(v10 + 16) = v20 + 1;
      v21 = v10 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      v12 += 2;
      --v9;
    }

    while (v9);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v10;
}

uint64_t String.doc_sanitizedForComparison.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v12 - v6;
  v12[0] = a1;
  v12[1] = a2;
  v8 = [objc_opt_self() currentLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = type metadata accessor for Locale();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  lazy protocol witness table accessor for type String and conformance String();
  v10 = StringProtocol.folding(options:locale:)();
  outlined destroy of CharacterSet?(v7, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  return v10;
}

Swift::String __swiftcall String.fileSuffixChain()()
{
  v2 = v1;
  v3 = v0;
  v4 = String.fileSuffix()();
  if (String.isKnownExtension()())
  {

    v5 = MEMORY[0x24C1FAF30](v4._countAndFlagsBits, v4._object);

    v6 = specialized BidirectionalCollection.dropLast(_:)(v5, v3, v2);
    v8 = v7;
    v10 = v9;
    v12 = v11;

    MEMORY[0x24C1FAE00](v6, v8, v10, v12);

    v13 = String.fileSuffixChain()();

    MEMORY[0x24C1FAEA0](v4._countAndFlagsBits, v4._object);

    countAndFlagsBits = v13._countAndFlagsBits;
    object = v13._object;
  }

  else
  {

    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

uint64_t String.doc_searchEscapedString.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v26 - v6;
  v38 = a1;
  v39 = a2;
  v28 = a2;
  lazy protocol witness table accessor for type String and conformance String();
  v38 = StringProtocol.decomposedStringWithCanonicalMapping.getter();
  v39 = v8;
  v36 = 92;
  v37 = 0xE100000000000000;
  v34 = 23644;
  v35 = 0xE200000000000000;
  v32 = a1;
  v33 = a2;
  v9 = a1;
  v29 = a1;
  v30 = v38;
  v31 = v8;
  v10 = type metadata accessor for Locale();
  v26 = *(*(v10 - 8) + 56);
  v27 = v10;
  v26(v7, 1, 1, v10);
  StringProtocol.range<A>(of:options:range:locale:)();
  outlined destroy of CharacterSet?(v7, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v13 = v12;

  v38 = v11;
  v39 = v13;
  v36 = 34;
  v37 = 0xE100000000000000;
  v34 = 8796;
  v35 = 0xE200000000000000;
  v31 = v13;
  v32 = v9;
  v14 = v28;
  v33 = v28;
  v30 = v11;
  v15 = v10;
  v16 = v26;
  v26(v7, 1, 1, v15);

  StringProtocol.range<A>(of:options:range:locale:)();
  outlined destroy of CharacterSet?(v7, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

  v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v19 = v18;

  v38 = v17;
  v39 = v19;
  v36 = 39;
  v37 = 0xE100000000000000;
  v33 = v14;
  v34 = 10076;
  v35 = 0xE200000000000000;
  v31 = v19;
  v32 = v29;
  v30 = v17;
  v20 = v27;
  v16(v7, 1, 1, v27);

  StringProtocol.range<A>(of:options:range:locale:)();
  outlined destroy of CharacterSet?(v7, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

  v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v23 = v22;

  v38 = v21;
  v39 = v23;
  v36 = 42;
  v37 = 0xE100000000000000;
  v34 = 10844;
  v35 = 0xE200000000000000;
  v32 = v29;
  v33 = v28;
  v30 = v21;
  v31 = v23;
  v16(v7, 1, 1, v20);

  StringProtocol.range<A>(of:options:range:locale:)();
  outlined destroy of CharacterSet?(v7, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

  v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return v24;
}

uint64_t String.doc_searchQueryValue.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 10786;
  v17 = 0xE200000000000000;
  v9 = String.doc_searchEscapedString.getter(a1, a2);
  MEMORY[0x24C1FAEA0](v9);

  MEMORY[0x24C1FAEA0](8746, 0xE200000000000000);
  v15[0] = a1;
  v15[1] = a2;
  CharacterSet.init()();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  if (v11)
  {
    v12 = 1952741219;
  }

  else
  {
    v12 = 0x7473647763;
  }

  if (v11)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x24C1FAEA0](v12, v13);

  return v16;
}

uint64_t String.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  String.index(_:offsetBy:)();

  return String.subscript.getter();
}

unint64_t String.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = String.index(_:offsetBy:)();
  result = String.index(_:offsetBy:)();
  if (result >> 14 < v4 >> 14)
  {
    __break(1u);
  }

  else
  {
    v6 = String.subscript.getter();
    v7 = MEMORY[0x24C1FAE00](v6);

    return v7;
  }

  return result;
}

Swift::String __swiftcall String.fileSuffix()()
{
  v0 = MEMORY[0x24C1FAD20]();
  v1 = [v0 pathExtension];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = v2;
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    MEMORY[0x24C1FAEA0](v2, v4);

    v5 = 46;
    v4 = 0xE100000000000000;
  }

  v7 = v4;
  result._object = v7;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::Bool __swiftcall String.isKnownExtension()()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v22 - v6;
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v22 - v13;
  v22 = v3;
  v23 = v2;

  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  result = String.hasPrefix(_:)(v15);
  if (!result)
  {
LABEL_7:
    v19 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v19 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {

      static UTType.data.getter();
      UTType.init(filenameExtension:conformingTo:)();
      if ((*(v9 + 48))(v7, 1, v8) != 1)
      {
        (*(v9 + 32))(v14, v7, v8);
        v20 = (UTType.isDeclared.getter() & 1) != 0 || UTType.isClaimed(for:handlerRank:)(0, *MEMORY[0x277CC1F20], v21);
        (*(v9 + 8))(v14, v8);

        return v20;
      }

      outlined destroy of CharacterSet?(v7, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    }

    else
    {
    }

    return 0;
  }

  v17 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v17 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    result = specialized Collection.first.getter(v3, v2);
    if (v18)
    {

      specialized RangeReplaceableCollection.removeFirst(_:)(1);
      v3 = v22;
      v2 = v23;
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t String.isTypeable.getter(uint64_t a1, uint64_t a2)
{

  if (!String.Iterator.next()().value._object)
  {
LABEL_10:
    v3 = 1;
    goto LABEL_11;
  }

  while ((Character.isLetter.getter() & 1) != 0 || (Character.isNumber.getter() & 1) != 0 || (Character.isSymbol.getter() & 1) != 0)
  {

LABEL_4:
    if (!String.Iterator.next()().value._object)
    {
      goto LABEL_10;
    }
  }

  v2 = Character.isPunctuation.getter();

  if (v2)
  {
    goto LABEL_4;
  }

  v3 = 0;
LABEL_11:

  return v3;
}

uint64_t specialized RangeReplaceableCollection.removeFirst(_:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = String.index(_:offsetBy:limitedBy:)();
      if ((v1 & 1) == 0)
      {
        v2 = result;
        result = 15;
        v1 = v2;

        return MEMORY[0x2821FBD18](result, v1);
      }
    }

    __break(1u);
    return MEMORY[0x2821FBD18](result, v1);
  }

  return result;
}

uint64_t _sSa9repeating5countSayxGx_SitcfCSaySiG_Tt1g5Tf4gn_n(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

void *_sSa9repeating5countSayxGx_SitcfCSo6FPItemCSg_Tt1g5Tf4gn_nTm(void *result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v7 = v6;
    *(v6 + 16) = a2;
    *(v6 + 32) = v5;
    v8 = a2 - 1;
    if (v8)
    {
      v9 = (v6 + 40);
      do
      {
        *v9++ = v5;
        v10 = v5;
        --v8;
      }

      while (v8);
    }

    v11 = v5;
    return v7;
  }

  return result;
}

void *_sSa9repeating5countSayxGx_SitcfCSS_Tt1g5Tf4gn_n(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = result;
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t specialized BidirectionalCollection.dropLast(_:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

uint64_t specialized BidirectionalCollection.dropLast(_:)(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_23:
    v11 = result;
    v5 = __CocoaSet.count.getter();
    result = v11;
    v6 = -v5;
    if (!__OFSUB__(0, v5))
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v3 = a2;
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_23;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = -v5;
  if (__OFSUB__(0, v5))
  {
    goto LABEL_25;
  }

LABEL_4:
  v7 = -result;
  if (v6 > 0 || v6 <= v7)
  {
    v8 = v5 - result;
    if (__OFADD__(v5, v7))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v8 < 0)
    {
LABEL_29:
      __break(1u);
      return result;
    }

    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!v4)
    {
LABEL_7:
      result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_13;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = __CocoaSet.count.getter();
LABEL_13:
  if (result < v8)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((v3 & 0xC000000000000001) != 0 && v8)
  {
    type metadata accessor for DOCBrowserContainerController();

    v9 = 0;
    do
    {
      v10 = v9 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v9);
      v9 = v10;
    }

    while (v8 != v10);
    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return _CocoaArrayWrapper.subscript.getter();
}

uint64_t SetFilenameExtensionVisibilityIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v1 = type metadata accessor for InputConnectionBehavior();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v34 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v33 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v32 = v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v31 = v30 - v12;
  v13 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v18 - 8, v19);
  v20 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v30[0] = type metadata accessor for LocalizedStringResource();
  v22 = *(v30[0] - 8);
  MEMORY[0x28223BE20](v30[0], v23);
  v30[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables17ShowHideOperationOGMd, &_s10AppIntents15IntentParameterCy26DocumentManagerExecutables17ShowHideOperationOGMR);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = *MEMORY[0x277CC9110];
  v25 = *(v14 + 104);
  v25(v17, v24, v13);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25(v17, v24, v13);
  v26 = v31;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v22 + 56))(v26, 0, 1, v30[0]);
  v38[0] = 2;
  v27 = type metadata accessor for IntentDialog();
  v28 = *(*(v27 - 8) + 56);
  v28(v32, 1, 1, v27);
  v28(v33, 1, 1, v27);
  (*(v35 + 104))(v34, *MEMORY[0x277CBA308], v36);
  lazy protocol witness table accessor for type ShowHideOperation and conformance ShowHideOperation();
  result = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  *v37 = result;
  return result;
}

DocumentManagerExecutables::ShowHideOperation_optional __swiftcall ShowHideOperation.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ShowHideOperation.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t ShowHideOperation.rawValue.getter()
{
  v1 = 2003789939;
  if (*v0 != 1)
  {
    v1 = 1701079400;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C67676F74;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ShowHideOperation(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 2003789939;
  if (v2 != 1)
  {
    v3 = 1701079400;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x656C67676F74;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  v6 = 2003789939;
  if (*a2 != 1)
  {
    v6 = 1701079400;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x656C67676F74;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ShowHideOperation()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance ShowHideOperation(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ShowHideOperation(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ShowHideOperation(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 2003789939;
  if (v2 != 1)
  {
    v4 = 1701079400;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x656C67676F74;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance ShowHideOperation(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ShowHideOperation and conformance ShowHideOperation();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance ShowHideOperation(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ShowHideOperation and conformance ShowHideOperation();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t static SetFilenameExtensionVisibilityIntent.attributionBundleIdentifier.getter()
{
  swift_beginAccess();
  v0 = static SetFilenameExtensionVisibilityIntent.attributionBundleIdentifier;

  return v0;
}

double static SetFilenameExtensionVisibilityIntent.attributionBundleIdentifier.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  static SetFilenameExtensionVisibilityIntent.attributionBundleIdentifier = a1;
  off_27EEEDE20 = a2;

  return result;
}

double key path setter for static SetFilenameExtensionVisibilityIntent.attributionBundleIdentifier : SetFilenameExtensionVisibilityIntent.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  static SetFilenameExtensionVisibilityIntent.attributionBundleIdentifier = v2;
  off_27EEEDE20 = v1;

  return result;
}

void (*SetFilenameExtensionVisibilityIntent.operation.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return NavigateHistoryIntent.direction.modify;
}

uint64_t static SetFilenameExtensionVisibilityIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables36SetFilenameExtensionVisibilityIntentVGMd, &_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables36SetFilenameExtensionVisibilityIntentVGMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables36SetFilenameExtensionVisibilityIntentV_GMd, &_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables36SetFilenameExtensionVisibilityIntentV_GMR);
  MEMORY[0x28223BE20](v2, v3);
  lazy protocol witness table accessor for type SetFilenameExtensionVisibilityIntent and conformance SetFilenameExtensionVisibilityIntent();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BEBFB0;
  v4._countAndFlagsBits = 0xD00000000000003BLL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables36SetFilenameExtensionVisibilityIntentV10AppIntents0J9ParameterCyAC17ShowHideOperationOGGMd, &_ss7KeyPathCy26DocumentManagerExecutables36SetFilenameExtensionVisibilityIntentV10AppIntents0J9ParameterCyAC17ShowHideOperationOGGMR);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t protocol witness for static AppIntent.title.getter in conformance SetFilenameExtensionVisibilityIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for LocalizedStringResource();
  v4 = __swift_project_value_buffer(v3, static SetFilenameExtensionVisibilityIntent.title);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t protocol witness for static AppIntent.parameterSummary.getter in conformance SetFilenameExtensionVisibilityIntent(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables36SetFilenameExtensionVisibilityIntentVGMd, &_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables36SetFilenameExtensionVisibilityIntentVGMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables36SetFilenameExtensionVisibilityIntentV_GMd, &_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables36SetFilenameExtensionVisibilityIntentV_GMR);
  MEMORY[0x28223BE20](v4, v5);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x8000000249BEBFB0;
  v6._countAndFlagsBits = 0xD00000000000003BLL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables36SetFilenameExtensionVisibilityIntentV10AppIntents0J9ParameterCyAC17ShowHideOperationOGGMd, &_ss7KeyPathCy26DocumentManagerExecutables36SetFilenameExtensionVisibilityIntentV10AppIntents0J9ParameterCyAC17ShowHideOperationOGGMR);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v7);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

unint64_t specialized static ShowHideOperation.caseDisplayRepresentations.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v56 = &v40 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v55 = &v40 - v5;
  v54 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v47 = type metadata accessor for LocalizedStringResource();
  v57 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables17ShowHideOperationO_10AppIntents21DisplayRepresentationVtGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables17ShowHideOperationO_10AppIntents21DisplayRepresentationVtGMR);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables17ShowHideOperationO_10AppIntents21DisplayRepresentationVtMd, &_s26DocumentManagerExecutables17ShowHideOperationO_10AppIntents21DisplayRepresentationVtMR);
  v46 = v17;
  v18 = *(*(v17 - 8) + 72);
  v19 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
  v44 = 2 * v18;
  v20 = swift_allocObject();
  v45 = v20;
  *(v20 + 16) = xmmword_249BA08C0;
  v21 = v20 + v19;
  v42 = *(v17 + 48);
  *(v20 + v19) = 0;
  String.LocalizationValue.init(stringLiteral:)();
  v40 = v13;
  static Locale.current.getter();
  v22 = *MEMORY[0x277CC9110];
  v23 = *(v6 + 104);
  v43 = v6 + 104;
  v50 = v23;
  v24 = v9;
  v25 = v9;
  v26 = v22;
  v41 = v22;
  (v23)(v25);
  v27 = v24;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v28 = *(v57 + 56);
  v57 += 56;
  v53 = v28;
  v29 = v47;
  v28(v55, 1, 1, v47);
  v49 = type metadata accessor for DisplayRepresentation.Image();
  v30 = *(v49 - 8);
  v48 = *(v30 + 56);
  v52 = v30 + 56;
  v48(v56, 1, 1, v49);
  v51 = v21;
  DisplayRepresentation.init(title:subtitle:image:)();
  v31 = v46;
  v42 = *(v46 + 48);
  *(v21 + v18) = 1;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32 = v26;
  v33 = v54;
  v50(v27, v32, v54);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v34 = v55;
  v53(v55, 1, 1, v29);
  v35 = v56;
  v48(v56, 1, 1, v49);
  v36 = v35;
  DisplayRepresentation.init(title:subtitle:image:)();
  v37 = (v51 + v44);
  v44 = *(v31 + 48);
  *v37 = 2;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v50(v27, v41, v33);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v53(v34, 1, 1, v47);
  v48(v36, 1, 1, v49);
  DisplayRepresentation.init(title:subtitle:image:)();
  v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables17ShowHideOperationO_10AppIntents21DisplayRepresentationVTt0g5Tf4g_n(v45);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v38;
}

double DOCNodeContextMenuConfiguration.nodes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCNodeContextMenuConfiguration_nodes;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t DOCNodeContextMenuConfiguration.presentingNode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCNodeContextMenuConfiguration_presentingNode;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id DOCNodeContextMenuConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCNodeContextMenuConfiguration.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCNodeContextMenuConfiguration_nodes] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCNodeContextMenuConfiguration_presentingNode] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCNodeContextMenuConfiguration();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DOCNodeContextMenuConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCNodeContextMenuConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double static DOCPreviewRouter.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static DOCPreviewRouter.shared.setter(void *a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCPreviewRouter.shared = a1;

  return result;
}

uint64_t (*static DOCPreviewRouter.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

double key path getter for static DOCPreviewRouter.shared : DOCPreviewRouter.Type@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static DOCPreviewRouter.shared;

  return result;
}

double key path setter for static DOCPreviewRouter.shared : DOCPreviewRouter.Type(void **a1)
{
  v1 = *a1;
  v2 = one-time initialization token for shared;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCPreviewRouter.shared = v1;

  return result;
}

void DOCPreviewRouter.present(contentsOf:contextIfPresentingInApp:didPresent:)(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = *(a2 + 1);
  if (one-time initialization token for Preview != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.Preview);
  v10 = v8;
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21[0] = v16;
    *v14 = 136315650;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000038, 0x8000000249BEC220, v21);
    *(v14 + 12) = 2112;
    *(v14 + 14) = v10;
    *(v14 + 22) = 2112;
    *(v14 + 24) = v11;
    *v15 = v10;
    v15[1] = v11;
    v17 = v10;
    v18 = v11;
    _os_log_impl(&dword_2493AC000, v12, v13, "[Interaction] 1. %s Received request to present (on %@): %@", v14, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C1FE850](v16, -1, -1);
    MEMORY[0x24C1FE850](v14, -1, -1);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  v21[4] = partial apply for closure #1 in DOCPreviewRouter.present(contentsOf:contextIfPresentingInApp:didPresent:);
  v21[5] = v19;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v21[3] = &block_descriptor_107;
  v20 = _Block_copy(v21);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a3, a4);

  [v10 presentViewController:v11 animated:v7 completion:v20];
  _Block_release(v20);
}

void closure #1 in DOCPreviewRouter.present(contentsOf:contextIfPresentingInApp:didPresent:)(void (*a1)(void))
{
  if (one-time initialization token for Preview != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.Preview);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000038, 0x8000000249BEC220, &v7);
    _os_log_impl(&dword_2493AC000, v3, v4, "[Interaction] 2. %s presentation completed. Calling handler", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  if (a1)
  {
    a1();
  }
}

uint64_t DOCFileOperationCombinedProgress.init(operations:observing:)(uint64_t a1, uint64_t a2)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMd, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMR);
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v6);
  v8 = &v21 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v22 = a2;
    v23 = v2;
    v26 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v26;
    v11 = 0;
    v25 = type metadata accessor for DOCFileOperation(0);
    v12 = *(v25 - 8);
    v13 = *(v12 + 80);
    v21 = a1;
    v14 = a1 + ((v13 + 32) & ~v13);
    v15 = v24;
    do
    {
      v16 = &v8[*(v15 + 28)];
      v16[3] = v25;
      v16[4] = &protocol witness table for DOCFileOperation;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
      outlined init with copy of DOCFileOperation(v14 + *(v12 + 72) * v11, boxed_opaque_existential_1);
      outlined init with copy of DOCFileOperation(boxed_opaque_existential_1, v8);
      v26 = v10;
      v19 = *(v10 + 16);
      v18 = *(v10 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v15 = v24;
        v10 = v26;
      }

      ++v11;
      *(v10 + 16) = v19 + 1;
      outlined init with take of DOCOperationProgress<DOCFileOperation>.OperationWithProvider(v8, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19);
    }

    while (v9 != v11);

    a2 = v22;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  return specialized DOCOperationCombinedProgress.init(operationsWithProviders:observing:)(v10, a2, _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_26DocumentManagerExecutables20DOCOperationProgressCyAE16DOCFileOperationVGTt0g5Tf4g_n, partial apply for specialized closure #1 in DOCOperationCombinedProgress.init(operationsWithProviders:observing:));
}

uint64_t specialized DOCOperationCombinedProgress.init(operationsWithProviders:observing:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v36 = a4;
  v6 = v4;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v6 + direct field offset for DOCOperationCombinedProgress.updateHandler);
  *v14 = 0;
  v14[1] = 0;
  *(v6 + direct field offset for DOCOperationCombinedProgress.state) = 4;
  v15 = v6 + direct field offset for DOCOperationCombinedProgress.progressValue;
  *v15 = 0;
  *(v15 + 8) = 256;
  v16 = (v6 + direct field offset for DOCOperationCombinedProgress.debugID);
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v10 + 8))(v13, v9);
  v20 = specialized Collection.prefix(_:)(6, v17, v19);
  v22 = v21;
  v24 = v23;
  v26 = v25;

  *v16 = v20;
  v16[1] = v22;
  v16[2] = v24;
  v16[3] = v26;
  v27 = direct field offset for DOCOperationCombinedProgress.operationProgressByID;
  v28 = MEMORY[0x277D84F90];
  *(v6 + v27) = a3(MEMORY[0x277D84F90]);
  *(v6 + direct field offset for DOCOperationCombinedProgress.clientRequestedEvents) = a2;
  v29 = a3(v28);
  swift_beginAccess();
  *(v6 + v27) = v29;

  *(v6 + 24) = 256;
  *(v6 + 32) = 0;
  v30 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState;
  v31 = type metadata accessor for DOCAbstractPacedPropertyUpdater.ClientNotifyState(0);
  (*(*(v31 - 8) + 56))(v6 + v30, 1, 1, v31);
  *(v6 + 16) = 0x3FE0000000000000;
  v38 = a1;
  v39 = v6;
  v32 = *(*v6 + 232);

  v32(v36, v37);

  (*(*v6 + 552))(v33);

  return v6;
}

uint64_t DOCFileOperationCombinedProgress.add(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMd, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMR);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v10 - v5;
  outlined init with copy of DOCFileOperation(a1, &v10 - v5);
  v7 = &v6[*(v3 + 36)];
  v7[3] = type metadata accessor for DOCFileOperation(0);
  v7[4] = &protocol witness table for DOCFileOperation;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  outlined init with copy of DOCFileOperation(a1, boxed_opaque_existential_1);
  specialized DOCOperationCombinedProgress.startTracking(operation:withProvider:)(v6, v7);
  return outlined destroy of CharacterSet?(v6, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMd, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMR);
}

_BYTE *specialized DOCOperationCombinedProgress.deinit(void (*a1)(void, void))
{
  swift_beginAccess();
  v1[25] = 1;
  (*(*v1 + 168))(0);
  type metadata accessor for DOCAbstractPacedPropertyUpdater(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd, &_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMR);
  swift_dynamicCast();
  v3 = v9;
  v4 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v4 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v8);

  swift_dynamicCast();
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 40))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0(v8);
  outlined destroy of CharacterSet?(&v1[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState], &_s26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdaterC17ClientNotifyState33_E7CE5D8A171BAD2BCF9AA23BED53B5B3LLVSgMd, &_s26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdaterC17ClientNotifyState33_E7CE5D8A171BAD2BCF9AA23BED53B5B3LLVSgMR);
  a1(*&v1[direct field offset for DOCOperationCombinedProgress.updateHandler], *&v1[direct field offset for DOCOperationCombinedProgress.updateHandler + 8]);

  return v1;
}

_BYTE *DOCOperationCombinedProgress.deinit()
{
  swift_beginAccess();
  v0[25] = 1;
  (*(*v0 + 168))(0);
  type metadata accessor for DOCAbstractPacedPropertyUpdater(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd, &_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMR);
  swift_dynamicCast();
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v6);

  swift_dynamicCast();
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 40))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v6);
  outlined destroy of CharacterSet?(&v0[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState], &_s26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdaterC17ClientNotifyState33_E7CE5D8A171BAD2BCF9AA23BED53B5B3LLVSgMd, &_s26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdaterC17ClientNotifyState33_E7CE5D8A171BAD2BCF9AA23BED53B5B3LLVSgMR);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*&v0[direct field offset for DOCOperationCombinedProgress.updateHandler], *&v0[direct field offset for DOCOperationCombinedProgress.updateHandler + 8]);

  return v0;
}

uint64_t DOCOperationCombinedProgress.updateHandler.getter()
{
  v1 = (v0 + direct field offset for DOCOperationCombinedProgress.updateHandler);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*v1, v1[1]);
  return v2;
}

uint64_t DOCOperationCombinedProgress.updateHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for DOCOperationCombinedProgress.updateHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6, v7);
}

void DOCOperationCombinedProgress.state.getter(_BYTE *a1@<X8>)
{
  v3 = direct field offset for DOCOperationCombinedProgress.state;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void DOCOperationCombinedProgress.state.setter(char *a1)
{
  v2 = *a1;
  v3 = direct field offset for DOCOperationCombinedProgress.state;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

void DOCOperationCombinedProgress.progressValue.getter(uint64_t a1@<X8>)
{
  v3 = v1 + direct field offset for DOCOperationCombinedProgress.progressValue;
  swift_beginAccess();
  v4 = *(v3 + 8);
  v5 = *(v3 + 9);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 9) = v5;
}

void DOCOperationCombinedProgress.progressValue.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = v1 + direct field offset for DOCOperationCombinedProgress.progressValue;
  swift_beginAccess();
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 9) = v4;
}

Swift::Void __swiftcall DOCOperationCombinedProgress.reset()()
{
  v1 = v0;
  v2 = *v0;
  v3 = direct field offset for DOCOperationCombinedProgress.operationProgressByID;
  swift_beginAccess();
  v16[0] = *(v1 + v3);
  v15 = *(v2 + 296);
  type metadata accessor for DOCOperationProgress(255, v15, v4, v5);
  v6 = MEMORY[0x277D84030];
  v7 = type metadata accessor for Dictionary();

  WitnessTable = swift_getWitnessTable();
  v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in DOCOperationCombinedProgress.reset(), &v14, v7, v6, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);

  v11 = v10[2];
  if (v11)
  {
    v12 = 0;
    v13 = (v10 + 4);
    while (v12 < v10[2])
    {
      outlined init with copy of AnyHashable(v13, v16);
      DOCOperationCombinedProgress.stopTracking(operationWithIdentifier:)(v16);
      ++v12;
      outlined destroy of AnyHashable(v16);
      v13 += 40;
      if (v11 == v12)
      {
        goto LABEL_5;
      }
    }

    __break(1u);

    outlined destroy of AnyHashable(v16);
    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t DOCOperationCombinedProgress.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(32);

  v2 = _typeName(_:qualified:)();
  MEMORY[0x24C1FAEA0](v2);

  MEMORY[0x24C1FAEA0](0x496775626564203ALL, 0xEC000000203D2044);
  v3 = *(v0 + direct field offset for DOCOperationCombinedProgress.debugID);
  v4 = *(v1 + direct field offset for DOCOperationCombinedProgress.debugID + 8);
  v5 = *(v1 + direct field offset for DOCOperationCombinedProgress.debugID + 16);
  v6 = *(v1 + direct field offset for DOCOperationCombinedProgress.debugID + 24);

  v7 = MEMORY[0x24C1FAE00](v3, v4, v5, v6);
  v9 = v8;

  MEMORY[0x24C1FAEA0](v7, v9);

  MEMORY[0x24C1FAEA0](0x20736D657469203BLL, 0xEB0000000028203DLL);
  v10 = DOCOperationCombinedProgress.operationProgressByID_shortDescription.getter();
  MEMORY[0x24C1FAEA0](v10);

  MEMORY[0x24C1FAEA0](15913, 0xE200000000000000);
  return 60;
}

uint64_t DOCOperationCombinedProgress.operationProgressByID_shortDescription.getter()
{
  v1 = *v0;
  v2 = direct field offset for DOCOperationCombinedProgress.operationProgressByID;
  swift_beginAccess();
  v13 = *(v0 + v2);
  v12 = *(v1 + 296);
  type metadata accessor for DOCOperationProgress(255, v12, v3, v4);
  v5 = type metadata accessor for Dictionary();

  WitnessTable = swift_getWitnessTable();
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in DOCOperationCombinedProgress.operationProgressByID_shortDescription.getter, &v11, v5, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);

  v13 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v9 = BidirectionalCollection<>.joined(separator:)();

  return v9;
}

uint64_t specialized DOCOperationCombinedProgress.unorderedOperationProgress.getter()
{
  v1 = direct field offset for DOCOperationCombinedProgress.operationProgressByID;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v25 = MEMORY[0x277D84F90];

    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = v2 + 64;
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v19 = v3;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_20;
      }

      v10 = *(v2 + 36);
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v6, v23);
      v11 = *(*(v2 + 56) + 8 * v6);
      v20[0] = v23[0];
      v20[1] = v23[1];
      v21 = v24;
      v22 = v11;

      outlined destroy of AnyHashable(v20);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v8 = 1 << *(v2 + 32);
      if (v6 >= v8)
      {
        goto LABEL_21;
      }

      v12 = *(v5 + 8 * v9);
      if ((v12 & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (v10 != *(v2 + 36))
      {
        goto LABEL_23;
      }

      v13 = v12 & (-2 << (v6 & 0x3F));
      if (v13)
      {
        v8 = __clz(__rbit64(v13)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v14 = v9 << 6;
        v15 = v9 + 1;
        v16 = (v2 + 72 + 8 * v9);
        while (v15 < (v8 + 63) >> 6)
        {
          v18 = *v16++;
          v17 = v18;
          v14 += 64;
          ++v15;
          if (v18)
          {
            result = outlined consume of Set<UIPress>.Index._Variant(v6, v10, 0);
            v8 = __clz(__rbit64(v17)) + v14;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<UIPress>.Index._Variant(v6, v10, 0);
      }

LABEL_4:
      ++v7;
      v6 = v8;
      if (v7 == v19)
      {

        return v25;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  return result;
}

void *DOCOperationCombinedProgress.unorderedOperationProgress.getter()
{
  v1 = *v0;
  v2 = direct field offset for DOCOperationCombinedProgress.operationProgressByID;
  swift_beginAccess();
  v13 = *(v0 + v2);
  v12 = *(v1 + 296);
  v5 = type metadata accessor for DOCOperationProgress(255, v12, v3, v4);
  v6 = type metadata accessor for Dictionary();

  WitnessTable = swift_getWitnessTable();
  v9 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in DOCOperationCombinedProgress.unorderedOperationProgress.getter, &v11, v6, v5, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);

  return v9;
}

DocumentManagerExecutables::DOCPacedPropertyUpdaterNotifyType __swiftcall DOCOperationCombinedProgress.updateProperties()()
{
  DOCOperationCombinedProgress.computeNewState()(&v7);
  v1 = LOBYTE(v7);
  DOCOperationCombinedProgress.computeNewProgressValue()(&v7);
  v2 = v7;
  v3 = v8;
  v4 = v9;
  (*(*v0 + 376))(&v7);
  if (LOBYTE(v7) == 4)
  {
    if (v1 != 4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v1 == 4)
    {
      goto LABEL_22;
    }

    if (LOBYTE(v7) == 2)
    {
      if (v1 != 2)
      {
        goto LABEL_22;
      }
    }

    else if (LOBYTE(v7) == 3)
    {
      if (v1 != 3)
      {
        goto LABEL_22;
      }
    }

    else if (v1 & 0xFE) == 2 || ((LOBYTE(v7) ^ v1))
    {
      goto LABEL_22;
    }
  }

  (*(*v0 + 400))(&v7);
  if ((v9 & 1) == 0)
  {
    if ((v4 & 1) == 0)
    {
      if (v8)
      {
        if ((v3 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else if ((v3 & 1) != 0 || v7 != v2)
      {
        goto LABEL_22;
      }

      v5 = DocumentManagerExecutables_DOCPacedPropertyUpdaterNotifyType_doNotNotify;
      goto LABEL_23;
    }

LABEL_22:
    v5 = DocumentManagerExecutables_DOCPacedPropertyUpdaterNotifyType_paced;
    goto LABEL_23;
  }

  v5 = v4 ^ 1;
LABEL_23:
  LOBYTE(v7) = v1;
  (*(*v0 + 384))(&v7);
  v7 = v2;
  v8 = v3;
  v9 = v4;
  (*(*v0 + 408))(&v7);
  return v5;
}

Swift::Void __swiftcall DOCOperationCombinedProgress.forceUpdateCombinedProgressImmediately()()
{
  v1 = *v0;
  DOCOperationCombinedProgress.unorderedOperationProgress.getter();
  type metadata accessor for DOCOperationProgress(255, *(v1 + 296), v2, v3);
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.forEach(_:)();

  (*(*v0 + 552))(v4);
}

Swift::Void __swiftcall DOCOperationCombinedProgress.notifyClient()()
{
  v1 = (*(*v0 + 352))();
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    v1();

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3, v4);
  }
}

double DOCOperationCombinedProgress.installObservations()(uint64_t a1)
{
  v2 = *v1;
  DOCOperationCombinedProgress.unorderedOperationProgress.getter();
  type metadata accessor for DOCOperationProgress(255, *(v2 + 296), v3, v4);
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.forEach(_:)();

  return result;
}

double specialized DOCOperationCombinedProgress.removeCancelledOperations()(void (*a1)(uint64_t, _BYTE *), void (*a2)(void))
{
  v3 = v2;
  v4 = specialized DOCOperationCombinedProgress.unorderedOperationProgress.getter();
  v5 = v4;
  v42[0] = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
LABEL_17:
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x24C1FC540](v7, v5);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            v10 = v42[0];
            goto LABEL_19;
          }
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v8 = *(v5 + 8 * v7 + 32);

          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_14;
          }
        }

        (*(*v8 + 512))(v39);
        if ((v39[0] & 0xFE) == 2 || (v39[0] & 1) == 0)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v7;
        if (v9 == v6)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_19:

  if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    goto LABEL_45;
  }

  v11 = *(v10 + 16);
LABEL_22:
  v12 = direct field offset for DOCOperationCombinedProgress.operationProgressByID;
  swift_beginAccess();
  if (v11)
  {
    v13 = 0;
    v14 = v10 & 0xC000000000000001;
    v37 = v11;
    v38 = v10;
    v35 = v12;
    v36 = v10 & 0xC000000000000001;
    do
    {
      if (v14)
      {
        v15 = MEMORY[0x24C1FC540](v13, v10);
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v13 >= *(v10 + 16))
        {
          goto LABEL_44;
        }

        v15 = *(v10 + 8 * v13 + 32);

        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          v11 = __CocoaSet.count.getter();
          goto LABEL_22;
        }
      }

      (*(*v15 + 464))(v42);
      v17 = *(v3 + v12);
      if (*(v17 + 16))
      {

        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v42);
        if (v19)
        {
          v20 = *(*(v17 + 56) + 8 * v18);

          swift_beginAccess();
          v20[25] = 1;
          (*(*v20 + 168))(0);
          type metadata accessor for DOCAbstractPacedPropertyUpdater(0);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd, &_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMR);
          swift_dynamicCast();
          v21 = v40;
          v22 = v41;
          __swift_project_boxed_opaque_existential_1(v39, v40);
          (*(v22 + 8))(v21, v22);
          __swift_destroy_boxed_opaque_existential_0(v39);

          v12 = v35;
          swift_dynamicCast();
          v23 = v40;
          v24 = v41;
          __swift_project_boxed_opaque_existential_1(v39, v40);
          (*(v24 + 40))(v23, v24);
          __swift_destroy_boxed_opaque_existential_0(v39);
          swift_beginAccess();
          v25 = specialized __RawDictionaryStorage.find<A>(_:)(v42);
          if (v26)
          {
            v27 = v25;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v29 = *(v3 + v35);
            *(v3 + v35) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              a2();
            }

            outlined destroy of AnyHashable(*(v29 + 48) + 40 * v27);
            a1(v27, v29);
            *(v3 + v35) = v29;
          }

          swift_endAccess();
          if (*(v3 + 32) <= 0)
          {
            v39[0] = 0;
            v39[1] = 0xE000000000000000;
            _StringGuts.grow(_:)(37);
            MEMORY[0x24C1FAEA0](0xD000000000000023, 0x8000000249BD88B0);
            _print_unlocked<A, B>(_:_:)();

            swift_dynamicCast();
            v30 = v40;
            v31 = v41;
            __swift_project_boxed_opaque_existential_1(v39, v40);
            LODWORD(v30) = (*(v31 + 16))(v30, v31);
            __swift_destroy_boxed_opaque_existential_0(v39);
            if (v30)
            {
              DOCAbstractPacedPropertyUpdater.triggerNotifyClient(immediate:)(1);
            }
          }

          v11 = v37;
          v10 = v38;
          v14 = v36;
        }

        else
        {
        }
      }

      outlined destroy of AnyHashable(v42);

      ++v13;
    }

    while (v16 != v11);
  }

  return result;
}

double DOCOperationCombinedProgress.stopTracking(operationWithIdentifier:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = direct field offset for DOCOperationCombinedProgress.operationProgressByID;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v9 = type metadata accessor for DOCOperationProgress(0, *(v4 + 296), v7, v8);

  MEMORY[0x24C1FAB50](v17, a1, v6, MEMORY[0x277D84030], v9, MEMORY[0x277D84038]);

  v11 = v17[0];
  if (v17[0])
  {
    swift_beginAccess();
    v11[25] = 1;
    (*(*v11 + 168))(0);
    type metadata accessor for DOCAbstractPacedPropertyUpdater(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd, &_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMR);
    swift_dynamicCast();
    v12 = v18;
    v13 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v13 + 8))(v12, v13);
    __swift_destroy_boxed_opaque_existential_0(v17);

    swift_dynamicCast();
    v14 = v18;
    v15 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v15 + 40))(v14, v15);
    __swift_destroy_boxed_opaque_existential_0(v17);
    swift_beginAccess();
    type metadata accessor for Dictionary();
    Dictionary.removeValue(forKey:)();
    swift_endAccess();

    DOCOperationCombinedProgress.didUpdateContentsOfOperationProgressByID()(v16);
  }

  return result;
}

uint64_t specialized DOCOperationCombinedProgress.startTracking(operation:withProvider:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  (*(v7 + 8))(v24, v6, v7);
  v8 = direct field offset for DOCOperationCombinedProgress.operationProgressByID;
  swift_beginAccess();
  if (!*(*(v2 + v8) + 16) || (, specialized __RawDictionaryStorage.find<A>(_:)(v24), v10 = v9, , (v10 & 1) == 0))
  {
    v11 = *(v2 + direct field offset for DOCOperationCombinedProgress.clientRequestedEvents);
    outlined init with copy of Any(a1, v22);
    outlined init with copy of DOCSidebarItemIconProvider(a2, v23);
    outlined init with copy of Any(v22, v21);
    outlined init with copy of DOCSidebarItemIconProvider(v23, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables20DOCOperationProgressCyypGMd, &_s26DocumentManagerExecutables20DOCOperationProgressCyypGMR);
    swift_allocObject();

    v12 = specialized DOCOperationProgress.init(_:progressProvider:observing:)(v21, v20, v11);
    outlined destroy of CharacterSet?(v22, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyyp_GMd, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyyp_GMR);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = *(*v12 + 424);

    v14(partial apply for specialized closure #1 in DOCOperationCombinedProgress.startTracking(operation:withProvider:), v13);

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20[0] = *(v3 + v8);
    *(v3 + v8) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v24, isUniquelyReferenced_nonNull_native);
    *(v3 + v8) = v20[0];
    swift_endAccess();
    v16 = *(*v3 + 160);

    v18 = v16(v17);
    (*(*v12 + 168))(v18 & 1);

    specialized DOCOperationCombinedProgress.didUpdateContentsOfOperationProgressByID()();
  }

  return outlined destroy of AnyHashable(v24);
}

{
  v3 = v2;
  v6 = type metadata accessor for DOCFileOperation(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v38[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMd, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMR);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v38[-1] - v12;
  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  (*(v15 + 8))(v41, v14, v15);
  v16 = direct field offset for DOCOperationCombinedProgress.operationProgressByID;
  swift_beginAccess();
  if (!*(*(v2 + v16) + 16) || (, specialized __RawDictionaryStorage.find<A>(_:)(v41), v18 = v17, , (v18 & 1) == 0))
  {
    v19 = *(v2 + direct field offset for DOCOperationCombinedProgress.clientRequestedEvents);
    outlined init with copy of DOCFileOperation(a1, v13);
    v20 = *(v10 + 28);
    outlined init with copy of DOCSidebarItemIconProvider(a2, &v13[v20]);
    outlined init with copy of DOCFileOperation(v13, v9);
    outlined init with copy of DOCSidebarItemIconProvider(&v13[v20], v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables20DOCOperationProgressCyAA16DOCFileOperationVGMd, &_s26DocumentManagerExecutables20DOCOperationProgressCyAA16DOCFileOperationVGMR);
    v21 = swift_allocObject();
    v22 = v39;
    v23 = v40;
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
    v25 = MEMORY[0x28223BE20](v24, v24);
    v27 = &v38[-1] - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v27, v25);

    v29 = specialized DOCOperationProgress.init(_:progressProvider:observing:)(v9, v27, v19, v21, v22, v23);
    outlined destroy of CharacterSet?(v13, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMd, &_s26DocumentManagerExecutables20DOCOperationProgressC21OperationWithProviderVyAA07DOCFileF0V_GMR);
    __swift_destroy_boxed_opaque_existential_0(v38);
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = *(*v29 + 424);

    v31(partial apply for specialized closure #1 in DOCOperationCombinedProgress.startTracking(operation:withProvider:), v30);

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v3 + v16);
    *(v3 + v16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v41, isUniquelyReferenced_nonNull_native);
    *(v3 + v16) = v37;
    swift_endAccess();
    v33 = *(*v3 + 160);

    v35 = v33(v34);
    (*(*v29 + 168))(v35 & 1);

    specialized DOCOperationCombinedProgress.didUpdateContentsOfOperationProgressByID()();
  }

  return outlined destroy of AnyHashable(v41);
}

void specialized DOCOperationCombinedProgress.didUpdateContentsOfOperationProgressByID()()
{
  if (*(v0 + 32) <= 0)
  {
    v4[0] = 0;
    v4[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(37);
    MEMORY[0x24C1FAEA0](0xD000000000000023, 0x8000000249BD88B0);
    type metadata accessor for DOCAbstractPacedPropertyUpdater(0);
    _print_unlocked<A, B>(_:_:)();

    v7 = v0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd, &_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMR);
    swift_dynamicCast();
    v1 = v5;
    v2 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v3 = (*(v2 + 16))(v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v4);
    if (v3)
    {
      DOCAbstractPacedPropertyUpdater.triggerNotifyClient(immediate:)(1);
    }
  }
}