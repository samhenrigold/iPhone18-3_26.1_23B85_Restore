void HorizontalTabControl.ViewModel._selectedTab.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v11 = v9[3];
  v10 = v9[4];
  v13 = v9[5];
  v12 = v9[6];
  v14 = v9[7];
  v9[3] = v4;
  v9[4] = v5;
  v9[5] = v6;
  v9[6] = v7;
  v9[7] = v8;
  if (a2)
  {
    outlined copy of DetailsTab?(v4, v5, v6, v7, v8);
    outlined copy of DetailsTab?(v11, v10, v13, v12, v14);
    outlined consume of DetailsTab?(v11, v10, v13, v12, v14);
    v20 = v11;
    v21 = v10;
    v22 = v13;
    v23 = v12;
    v24 = v14;
    HorizontalTabControl.ViewModel._selectedTab.didset(&v20);
    outlined consume of DetailsTab?(v11, v10, v13, v12, v14);
    v15 = *v3;
    v16 = v3[1];
    v17 = v3[2];
    v18 = v3[3];
    v19 = v3[4];
  }

  else
  {
    outlined copy of DetailsTab?(v11, v10, v13, v12, v14);
    outlined consume of DetailsTab?(v11, v10, v13, v12, v14);
    v20 = v11;
    v21 = v10;
    v22 = v13;
    v23 = v12;
    v24 = v14;
    HorizontalTabControl.ViewModel._selectedTab.didset(&v20);
    v15 = v11;
    v16 = v10;
    v17 = v13;
    v18 = v12;
    v19 = v14;
  }

  outlined consume of DetailsTab?(v15, v16, v17, v18, v19);

  free(v3);
}

double HorizontalTabControl.ViewModel.selectedTab.getter@<D0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 216))();

  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;

  return outlined copy of DetailsTab?(v3, v4, v5, v6, v7);
}

void HorizontalTabControl.ViewModel.selectedTab.setter(__int128 *a1)
{
  v2 = a1[1];
  v24 = *a1;
  v25 = v2;
  v26 = *(a1 + 4);
  v3 = *(v1 + 5);
  v27 = *(v1 + 3);
  v28 = v3;
  v29 = v1[7];
  outlined init with copy of DetailsTab?(&v27, &v33);
  v4 = v27;
  v5 = v28;
  v6 = v29;
  v7 = v24;
  v8 = v25;
  if (*(&v27 + 1))
  {
    v33 = v27;
    v34 = v28;
    v35 = v29;
    if (*(&v24 + 1))
    {
      v31[0] = v24;
      v31[1] = v25;
      v32 = v26;
      outlined init with copy of DetailsTab?(&v27, v30);
      outlined init with copy of DetailsTab?(&v24, v30);
      outlined copy of DetailsTab?(v4, *(&v4 + 1), v5, *(&v5 + 1), v6);
      lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab(v9, v10, v11);
      v12 = dispatch thunk of static Equatable.== infix(_:_:)();

      outlined consume of DetailsTab?(v4, *(&v4 + 1), v5, *(&v5 + 1), v6);
      outlined destroy of DetailsTab?(&v27);
      if (v12)
      {
        goto LABEL_11;
      }

LABEL_9:
      KeyPath = swift_getKeyPath();
      v15 = MEMORY[0x1EEE9AC00](KeyPath);
      (*(*v1 + 224))(v15);
      outlined destroy of DetailsTab?(&v24);

      return;
    }

    v23 = v26;
    outlined init with copy of DetailsTab?(&v27, v31);
    outlined init with copy of DetailsTab?(&v24, v31);
    outlined copy of DetailsTab?(v4, *(&v4 + 1), v5, *(&v5 + 1), v6);

    v13 = *(&v5 + 1);
LABEL_8:
    outlined consume of DetailsTab?(v4, *(&v4 + 1), v5, v13, v6);
    outlined consume of DetailsTab?(v7, *(&v7 + 1), v8, *(&v8 + 1), v23);
    outlined destroy of DetailsTab?(&v27);
    goto LABEL_9;
  }

  v22 = *(&v28 + 1);
  if (*(&v24 + 1))
  {
    v23 = v26;
    outlined init with copy of DetailsTab?(&v27, &v33);
    outlined init with copy of DetailsTab?(&v24, &v33);
    v13 = v22;
    goto LABEL_8;
  }

  outlined init with copy of DetailsTab?(&v27, &v33);
  outlined init with copy of DetailsTab?(&v24, &v33);
  outlined consume of DetailsTab?(v4, 0, v5, v22, v6);
  outlined destroy of DetailsTab?(&v27);
LABEL_11:
  v16 = v1[3];
  v17 = v1[4];
  v18 = v1[5];
  v19 = v1[6];
  v20 = v1[7];
  v21 = v25;
  *(v1 + 3) = v24;
  *(v1 + 5) = v21;
  v1[7] = v26;
  outlined copy of DetailsTab?(v16, v17, v18, v19, v20);
  outlined consume of DetailsTab?(v16, v17, v18, v19, v20);
  *&v33 = v16;
  *(&v33 + 1) = v17;
  *&v34 = v18;
  *(&v34 + 1) = v19;
  v35 = v20;
  HorizontalTabControl.ViewModel._selectedTab.didset(&v33);
  outlined consume of DetailsTab?(v16, v17, v18, v19, v20);
}

uint64_t (*HorizontalTabControl.ViewModel.selectedTab.modify(uint64_t ***a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 216))();

  *(v4 + 40) = OBJC_IVAR____TtCV20CommunicationDetails20HorizontalTabControl9ViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  *(v4 + 48) = lazy protocol witness table accessor for type HorizontalTabControl.ViewModel and conformance HorizontalTabControl.ViewModel();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  *(v4 + 56) = HorizontalTabControl.ViewModel._selectedTab.modify(v4);
  return HorizontalTabControl.ViewModel.selectedTab.modify;
}

void HorizontalTabControl.ViewModel.tabs.modify(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

uint64_t HorizontalTabControl.ViewModel.onTabChange.getter()
{
  v1 = *(v0 + 64);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed DetailsTab?) -> ())?(v1, *(v0 + 72));
  return v1;
}

uint64_t HorizontalTabControl.ViewModel.__allocating_init(tabs:selectedTab:onTabChange:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = *a2;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0;
  ObservationRegistrar.init()();
  *(v8 + 16) = a1;
  *(v8 + 64) = a3;
  *(v8 + 72) = a4;
  v12 = v9;
  v10 = *(a2 + 3);
  v13 = *(a2 + 1);
  v14 = v10;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed DetailsTab?) -> ())?(a3, a4);
  HorizontalTabControl.ViewModel.selectedTab.setter(&v12);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed DetailsTab?) -> ())?(a3, a4);
  return v8;
}

uint64_t HorizontalTabControl.ViewModel.init(tabs:selectedTab:onTabChange:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = *a2;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0;
  ObservationRegistrar.init()();
  *(v4 + 16) = a1;
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  v12 = v9;
  v10 = *(a2 + 3);
  v13 = *(a2 + 1);
  v14 = v10;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed DetailsTab?) -> ())?(a3, a4);
  HorizontalTabControl.ViewModel.selectedTab.setter(&v12);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed DetailsTab?) -> ())?(a3, a4);
  return v4;
}

char *HorizontalTabControl.ViewModel.deinit()
{

  outlined consume of DetailsTab?(v0[3], v0[4], v0[5], v0[6], v0[7]);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed DetailsTab?) -> ())?(v0[8], v0[9]);
  v1 = OBJC_IVAR____TtCV20CommunicationDetails20HorizontalTabControl9ViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t HorizontalTabControl.ViewModel.__deallocating_deinit()
{

  outlined consume of DetailsTab?(v0[3], v0[4], v0[5], v0[6], v0[7]);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed DetailsTab?) -> ())?(v0[8], v0[9]);
  v1 = OBJC_IVAR____TtCV20CommunicationDetails20HorizontalTabControl9ViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ20CommunicationDetails0C3TabV_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 == *(a2 + 16))
  {
    if (!v3 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab(a1, a2, a3);
      v4 = 0;
      do
      {

        v5 = dispatch thunk of static Equatable.== infix(_:_:)();

        if ((v5 & 1) == 0)
        {
          break;
        }

        v4 += 40;
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t partial apply for closure #1 in HorizontalTabControl.ViewModel.tabs.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 16) = v1;
}

unint64_t lazy protocol witness table accessor for type HorizontalTabControl.ViewModel and conformance HorizontalTabControl.ViewModel()
{
  result = lazy protocol witness table cache variable for type HorizontalTabControl.ViewModel and conformance HorizontalTabControl.ViewModel;
  if (!lazy protocol witness table cache variable for type HorizontalTabControl.ViewModel and conformance HorizontalTabControl.ViewModel)
  {
    type metadata accessor for HorizontalTabControl.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HorizontalTabControl.ViewModel and conformance HorizontalTabControl.ViewModel);
  }

  return result;
}

uint64_t type metadata accessor for HorizontalTabControl.ViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for HorizontalTabControl.ViewModel;
  if (!type metadata singleton initialization cache for HorizontalTabControl.ViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of DetailsTab?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails0B3TabVSgMd, &_s20CommunicationDetails0B3TabVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DetailsTab?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails0B3TabVSgMd, &_s20CommunicationDetails0B3TabVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void partial apply for closure #1 in HorizontalTabControl.ViewModel.selectedTab.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  v8 = *(v1 + 32);
  v9 = *(v1 + 16);
  *(v2 + 3) = *v1;
  *(v2 + 5) = v9;
  v2[7] = v8;
  outlined copy of DetailsTab?(v3, v4, v5, v6, v7);
  outlined init with copy of DetailsTab?(v1, v10);
  outlined consume of DetailsTab?(v3, v4, v5, v6, v7);
  v10[0] = v3;
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v10[4] = v7;
  HorizontalTabControl.ViewModel._selectedTab.didset(v10);
  outlined consume of DetailsTab?(v3, v4, v5, v6, v7);
}

double outlined copy of (@escaping @callee_guaranteed (@in_guaranteed DetailsTab?) -> ())?(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

double outlined consume of (@escaping @callee_guaranteed (@in_guaranteed DetailsTab?) -> ())?(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t type metadata completion function for HorizontalTabControl.ViewModel(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

double DetailsContentOffsetProxy.headerSize.getter()
{
  swift_getKeyPath();
  (*(*v0 + 824))();

  swift_beginAccess();
  return v0[3];
}

void DetailsContentOffsetProxy.headerSize.setter(double a1, double a2)
{
  swift_beginAccess();
  if (v2[3] == a1 && v2[4] == a2)
  {
    v2[3] = a1;
    v2[4] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 832))(v7);
  }
}

void partial apply for closure #1 in DetailsContentOffsetProxy.headerSize.setter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
}

uint64_t (*DetailsContentOffsetProxy.headerSize.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 824))(KeyPath);

  v4[5] = OBJC_IVAR____TtC20CommunicationDetails25DetailsContentOffsetProxy___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy(&lazy protocol witness table cache variable for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy, type metadata accessor for DetailsContentOffsetProxy, &protocol conformance descriptor for DetailsContentOffsetProxy);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsContentOffsetProxy._headerSize.modify(v4);
  return DetailsContentOffsetProxy.headerSize.modify;
}

uint64_t type metadata accessor for DetailsContentOffsetProxy(uint64_t a1)
{
  result = type metadata singleton initialization cache for DetailsContentOffsetProxy;
  if (!type metadata singleton initialization cache for DetailsContentOffsetProxy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double DetailsContentOffsetProxy.safeAreaBottomInset.getter()
{
  swift_getKeyPath();
  (*(*v0 + 824))();

  swift_beginAccess();
  return v0[5];
}

void DetailsContentOffsetProxy.safeAreaBottomInset.setter(double a1)
{
  swift_beginAccess();
  if (v1[5] == a1)
  {
    v1[5] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 832))(v4);
  }
}

void partial apply for closure #1 in DetailsContentOffsetProxy.safeAreaBottomInset.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 40) = v2;
}

uint64_t (*DetailsContentOffsetProxy.safeAreaBottomInset.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 824))(KeyPath);

  v4[5] = OBJC_IVAR____TtC20CommunicationDetails25DetailsContentOffsetProxy___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy(&lazy protocol witness table cache variable for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy, type metadata accessor for DetailsContentOffsetProxy, &protocol conformance descriptor for DetailsContentOffsetProxy);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsContentOffsetProxy._safeAreaBottomInset.modify(v4);
  return DetailsContentOffsetProxy.safeAreaBottomInset.modify;
}

double DetailsContentOffsetProxy.bottomInsetDisregardingSafeAreaInset.getter()
{
  swift_getKeyPath();
  (*(*v0 + 824))();

  swift_beginAccess();
  return v0[6];
}

void DetailsContentOffsetProxy.bottomInsetDisregardingSafeAreaInset.setter(double a1)
{
  swift_beginAccess();
  if (v1[6] == a1)
  {
    v1[6] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 832))(v4);
  }
}

void partial apply for closure #1 in DetailsContentOffsetProxy.bottomInsetDisregardingSafeAreaInset.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 48) = v2;
}

uint64_t (*DetailsContentOffsetProxy.bottomInsetDisregardingSafeAreaInset.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 824))(KeyPath);

  v4[5] = OBJC_IVAR____TtC20CommunicationDetails25DetailsContentOffsetProxy___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy(&lazy protocol witness table cache variable for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy, type metadata accessor for DetailsContentOffsetProxy, &protocol conformance descriptor for DetailsContentOffsetProxy);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsContentOffsetProxy._bottomInsetDisregardingSafeAreaInset.modify(v4);
  return DetailsContentOffsetProxy.bottomInsetDisregardingSafeAreaInset.modify;
}

double DetailsContentOffsetProxy.topInset.getter()
{
  swift_getKeyPath();
  (*(*v0 + 824))();

  swift_beginAccess();
  return v0[7];
}

void DetailsContentOffsetProxy.topInset.setter(double a1)
{
  swift_beginAccess();
  if (v1[7] == a1)
  {
    v1[7] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 832))(v4);
  }
}

void partial apply for closure #1 in DetailsContentOffsetProxy.topInset.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 56) = v2;
}

uint64_t (*DetailsContentOffsetProxy.topInset.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 824))(KeyPath);

  v4[5] = OBJC_IVAR____TtC20CommunicationDetails25DetailsContentOffsetProxy___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy(&lazy protocol witness table cache variable for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy, type metadata accessor for DetailsContentOffsetProxy, &protocol conformance descriptor for DetailsContentOffsetProxy);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsContentOffsetProxy._topInset.modify(v4);
  return DetailsContentOffsetProxy.topInset.modify;
}

uint64_t key path getter for DetailsContentOffsetProxy.contentOffset : DetailsContentOffsetProxy@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 416))();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t key path setter for DetailsContentOffsetProxy.contentOffset : DetailsContentOffsetProxy(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = a1[2];
  v5 = *(**a2 + 424);

  return v5(v2, v3, v4);
}

double DetailsContentOffsetProxy.contentOffset.getter()
{
  swift_getKeyPath();
  (*(*v0 + 824))();

  swift_beginAccess();
  v1 = v0[10];

  return v1;
}

void DetailsContentOffsetProxy.contentOffset.setter(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath();
  (*(*v3 + 832))();
}

void partial apply for closure #1 in DetailsContentOffsetProxy.contentOffset.setter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  swift_beginAccess();
  v2[8] = v1;
  v2[9] = v3;
  v2[10] = v4;
}

uint64_t (*DetailsContentOffsetProxy.contentOffset.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 824))(KeyPath);

  v4[5] = OBJC_IVAR____TtC20CommunicationDetails25DetailsContentOffsetProxy___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy(&lazy protocol witness table cache variable for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy, type metadata accessor for DetailsContentOffsetProxy, &protocol conformance descriptor for DetailsContentOffsetProxy);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsContentOffsetProxy._contentOffset.modify(v4);
  return DetailsContentOffsetProxy.contentOffset.modify;
}

double DetailsContentOffsetProxy.contentOffsetY.getter()
{
  swift_getKeyPath();
  (*(*v0 + 824))();

  v7[1] = (*(*v0 + 416))(v1);
  v7[2] = v2;
  v7[3] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI7BindingVy12CoreGraphics7CGFloatVGMR);
  MEMORY[0x193AEA550](v7, v4);
  v5 = *v7;

  return v5;
}

double DetailsContentOffsetProxy.withContentOffsetChange<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  (*(*v3 + 832))();

  return result;
}

double DetailsContentOffsetProxy.contentOffsetForInitialScroll.getter()
{
  v1 = (*(*v0 + 560))();
  v2 = *(*v0 + 608);
  v3 = v2(v6);
  if (v1 <= v6[0] && v1 <= (*(*v0 + 440))(v3))
  {
    v2(v6);
    return v6[0];
  }

  else
  {
    v4 = *(*v0 + 440);

    v4();
  }

  return result;
}

uint64_t key path getter for DetailsContentOffsetProxy.needsToSetInitialScrollPosition : DetailsContentOffsetProxy@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 488))();
  *a2 = result & 1;
  return result;
}

uint64_t DetailsContentOffsetProxy.needsToSetInitialScrollPosition.getter()
{
  swift_getKeyPath();
  (*(*v0 + 824))();

  swift_beginAccess();
  return v0[88];
}

void DetailsContentOffsetProxy.needsToSetInitialScrollPosition.setter(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[88] == v2)
  {
    v1[88] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 832))(v4);
  }
}

void partial apply for closure #1 in DetailsContentOffsetProxy.needsToSetInitialScrollPosition.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 88) = v2;
}

uint64_t (*DetailsContentOffsetProxy.needsToSetInitialScrollPosition.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 824))(KeyPath);

  v4[5] = OBJC_IVAR____TtC20CommunicationDetails25DetailsContentOffsetProxy___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy(&lazy protocol witness table cache variable for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy, type metadata accessor for DetailsContentOffsetProxy, &protocol conformance descriptor for DetailsContentOffsetProxy);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsContentOffsetProxy._needsToSetInitialScrollPosition.modify(v4);
  return DetailsContentOffsetProxy.needsToSetInitialScrollPosition.modify;
}

uint64_t key path getter for DetailsContentOffsetProxy.supportsScrollSync : DetailsContentOffsetProxy@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 536))();
  *a2 = result & 1;
  return result;
}

uint64_t DetailsContentOffsetProxy.supportsScrollSync.getter()
{
  swift_getKeyPath();
  (*(*v0 + 824))();

  swift_beginAccess();
  return v0[89];
}

void DetailsContentOffsetProxy.supportsScrollSync.setter(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[89] == v2)
  {
    v1[89] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 832))(v4);
  }
}

void partial apply for closure #1 in DetailsContentOffsetProxy.supportsScrollSync.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 89) = v2;
}

uint64_t (*DetailsContentOffsetProxy.supportsScrollSync.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 824))(KeyPath);

  v4[5] = OBJC_IVAR____TtC20CommunicationDetails25DetailsContentOffsetProxy___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy(&lazy protocol witness table cache variable for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy, type metadata accessor for DetailsContentOffsetProxy, &protocol conformance descriptor for DetailsContentOffsetProxy);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsContentOffsetProxy._supportsScrollSync.modify(v4);
  return DetailsContentOffsetProxy.supportsScrollSync.modify;
}

BOOL static DetailsContentOffsetProxy.ScrollMetrics.ContentHeight.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = *&a1 == *&a3;
  if ((a4 & 1) == 0)
  {
    v4 = 0;
  }

  v5 = *&a1 == *&a3;
  if (a4)
  {
    v5 = 0;
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DetailsContentOffsetProxy.ScrollMetrics.ContentHeight(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) != 0 && v2 == v3)
    {
      return 1;
    }
  }

  else if ((*(a2 + 8) & 1) == 0 && v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t DetailsContentOffsetProxy.ScrollMetrics.contentHeight.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t DetailsContentOffsetProxy.ScrollMetrics.init(contentOffsetY:contentHeight:containerHeight:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a4;
  *(a3 + 8) = result;
  *(a3 + 16) = a2 & 1;
  *(a3 + 24) = a5;
  return result;
}

double key path getter for DetailsContentOffsetProxy.latestScrollMetrics : DetailsContentOffsetProxy@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 608))(v7);
  result = *v7;
  v4 = v7[1];
  v5 = v8;
  v6 = v9;
  *a2 = v7[0];
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

void key path setter for DetailsContentOffsetProxy.latestScrollMetrics : DetailsContentOffsetProxy(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = v2;
  v6 = v3;
  DetailsContentOffsetProxy.latestScrollMetrics.setter(v4);
}

double DetailsContentOffsetProxy.latestScrollMetrics.getter@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 824))();

  result = *(v1 + 104);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  v6 = *(v1 + 128);
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return result;
}

void DetailsContentOffsetProxy.latestScrollMetrics.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (*(v1 + 104) == *a1)
  {
    v5 = *(v1 + 128);
    v6 = *(v1 + 112);
    if (*(v1 + 120))
    {
      if (v6 == v2)
      {
        v7 = *(a1 + 16);
      }

      else
      {
        v7 = 0;
      }

      if (v7 != 1 || v5 != v4)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (*(a1 + 16))
      {
        goto LABEL_18;
      }

      if (v6 != v2 || v5 != v4)
      {
        goto LABEL_18;
      }
    }

    *(v1 + 104) = *a1;
    *(v1 + 112) = v2;
    *(v1 + 120) = v3;
    *(v1 + 128) = v4;
    return;
  }

LABEL_18:
  KeyPath = swift_getKeyPath();
  v11 = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v1 + 832))(v11);
}

void (*DetailsContentOffsetProxy._headerContainerView.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DetailsContentOffsetProxy._headerContainerView.modify;
}

void DetailsContentOffsetProxy._headerContainerView.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t key path getter for DetailsContentOffsetProxy.headerContainerView : DetailsContentOffsetProxy@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 656))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DetailsContentOffsetProxy.headerContainerView : DetailsContentOffsetProxy(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 664);
  v4 = *a1;
  return v3(v2);
}

uint64_t DetailsContentOffsetProxy.headerContainerView.getter()
{
  swift_getKeyPath();
  (*(*v0 + 824))();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

void DetailsContentOffsetProxy.headerContainerView.setter(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      type metadata accessor for UIView();
      v5 = v4;
      v6 = static NSObject.== infix(_:_:)();

      if ((v6 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      swift_unknownObjectWeakAssign();

      return;
    }
  }

  else if (!a1)
  {
    goto LABEL_6;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  v8 = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v1 + 832))(v8);
}

uint64_t (*DetailsContentOffsetProxy.headerContainerView.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 824))(KeyPath);

  v4[5] = OBJC_IVAR____TtC20CommunicationDetails25DetailsContentOffsetProxy___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy(&lazy protocol witness table cache variable for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy, type metadata accessor for DetailsContentOffsetProxy, &protocol conformance descriptor for DetailsContentOffsetProxy);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsContentOffsetProxy._headerContainerView.modify(v4);
  return DetailsContentOffsetProxy.headerContainerView.modify;
}

uint64_t DetailsContentOffsetProxy.__allocating_init(tabIndex:topInset:bottomInsetDisregardingSafeAreaInset:contentOffset:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = swift_allocObject();
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  *(v12 + 24) = 0;
  *(v12 + 88) = 257;
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 96) = 0;
  *(v12 + 120) = 1;
  *(v12 + 128) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 144) = 0;
  *(v12 + 152) = 0;
  ObservationRegistrar.init()();
  *(v12 + 16) = a1;
  *(v12 + 48) = a5;
  *(v12 + 56) = a4;
  *(v12 + 64) = a2;
  *(v12 + 72) = a3;
  *(v12 + 80) = a6;
  return v12;
}

uint64_t DetailsContentOffsetProxy.init(tabIndex:topInset:bottomInsetDisregardingSafeAreaInset:contentOffset:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 88) = 257;
  *(v6 + 104) = 0;
  *(v6 + 112) = 0;
  *(v6 + 96) = 0;
  *(v6 + 120) = 1;
  *(v6 + 128) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 144) = 0;
  *(v6 + 152) = 0;
  ObservationRegistrar.init()();
  *(v6 + 16) = a1;
  *(v6 + 48) = a5;
  *(v6 + 56) = a4;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 80) = a6;
  return v6;
}

void DetailsContentOffsetProxy.isActive.setter(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[144] == v2)
  {
    v1[144] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 832))(v4);
  }
}

void DetailsContentOffsetProxy.updateContentOffset(_:)(double a1)
{
  (*(*v1 + 416))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI7BindingVy12CoreGraphics7CGFloatVGMR);
  Binding.wrappedValue.setter();
}

uint64_t key path getter for DetailsContentOffsetProxy.isActive : DetailsContentOffsetProxy@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 720))();
  *a2 = result & 1;
  return result;
}

uint64_t DetailsContentOffsetProxy.isActive.getter()
{
  swift_getKeyPath();
  (*(*v0 + 824))();

  swift_beginAccess();
  return v0[144];
}

uint64_t (*DetailsContentOffsetProxy.isActive.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 824))(KeyPath);

  v4[5] = OBJC_IVAR____TtC20CommunicationDetails25DetailsContentOffsetProxy___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy(&lazy protocol witness table cache variable for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy, type metadata accessor for DetailsContentOffsetProxy, &protocol conformance descriptor for DetailsContentOffsetProxy);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsContentOffsetProxy._isActive.modify(v4);
  return DetailsContentOffsetProxy.isActive.modify;
}

void DetailsContentOffsetProxy.headerSize.modify(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

double DetailsContentOffsetProxy.hackyTaskToShrinkBottomInsetIfNeeded.getter()
{
  swift_getKeyPath();
  (*(*v0 + 824))();

  return result;
}

double key path getter for DetailsContentOffsetProxy.hackyTaskToShrinkBottomInsetIfNeeded : DetailsContentOffsetProxy@<D0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 824))();

  *a2 = v3[19];

  return result;
}

double DetailsContentOffsetProxy.hackyTaskToShrinkBottomInsetIfNeeded.setter(uint64_t a1)
{
  if (!v1[19])
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 832))(v5);

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v3 = static Task.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v1[19] = a1;

  return result;
}

void DetailsContentOffsetProxy.setScrollMetrics(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30[-v5];
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v31[0] = *a1;
  *&v31[1] = v8;
  v32 = v9;
  v33 = v10;
  DetailsContentOffsetProxy.latestScrollMetrics.setter(v31);
  v11 = v10 + (*(*v2 + 560))();
  v12 = v11 - v8;
  if (v9)
  {
    v13.n128_f64[0] = v12 - (*(*v2 + 360))();
    if (v13.n128_f64[0] < 0.0)
    {
      v13.n128_f64[0] = 0.0;
    }

    v14 = (*(*v2 + 320))(v13);
    if (((*(*v2 + 720))(v14) & 1) != 0 && ((*(*v2 + 488))() & 1) == 0)
    {
      v16 = *(*v2 + 688);
      v15.n128_f64[0] = v7;

      v16(v15);
    }
  }

  else
  {
    if (v12 < 0.0)
    {
      v12 = 0.0;
    }

    v17.n128_f64[0] = v12 + (*(*v2 + 312))();
    if (v11 < v17.n128_f64[0])
    {
      v17.n128_f64[0] = v11;
    }

    if (v17.n128_f64[0] < 0.0)
    {
      v17.n128_f64[0] = 0.0;
    }

    v18 = (*(*v2 + 320))(v17);
    if (((*(*v2 + 720))(v18) & 1) != 0 && ((*(*v2 + 488))() & 1) == 0)
    {
      (*(*v2 + 688))(v7);
    }

    swift_getKeyPath();
    (*(*v2 + 824))();

    v19 = v2[19];
    v20 = MEMORY[0x1E69E7CA8];
    if (v19)
    {

      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      MEMORY[0x193AEAAE0](v19, v20 + 8, v21, MEMORY[0x1E69E7288]);
    }

    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
    type metadata accessor for MainActor();

    v23 = static MainActor.shared.getter();
    v24 = swift_allocObject();
    v25 = MEMORY[0x1E69E85E0];
    *(v24 + 16) = v23;
    *(v24 + 24) = v25;
    *(v24 + 32) = v2;
    *(v24 + 40) = v11;
    *(v24 + 48) = v8;
    v26 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in DetailsContentOffsetProxy.setScrollMetrics(_:), v24);
    if (v2[19] && (, __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR), v27 = static Task.== infix(_:_:)(), , (v27 & 1) != 0))
    {
      v2[19] = v26;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v29 = MEMORY[0x1EEE9AC00](KeyPath);
      *&v30[-16] = v2;
      *&v30[-8] = v26;
      (*(*v2 + 832))(v29);
    }
  }
}

uint64_t closure #1 in DetailsContentOffsetProxy.setScrollMetrics(_:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 16) = a6;
  v7 = type metadata accessor for ContinuousClock();
  *(v6 + 40) = v7;
  *(v6 + 48) = *(v7 - 8);
  *(v6 + 56) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 64) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 72) = v9;
  *(v6 + 80) = v8;

  return MEMORY[0x1EEE6DFA0](closure #1 in DetailsContentOffsetProxy.setScrollMetrics(_:), v9, v8);
}

uint64_t closure #1 in DetailsContentOffsetProxy.setScrollMetrics(_:)()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = closure #1 in DetailsContentOffsetProxy.setScrollMetrics(_:);

  return specialized Clock.sleep(for:tolerance:)(v1, v3, 0, 0, 1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 80);
  v7 = *(v2 + 72);
  if (v0)
  {
    v8 = closure #1 in DetailsContentOffsetProxy.setScrollMetrics(_:);
  }

  else
  {
    v8 = closure #1 in DetailsContentOffsetProxy.setScrollMetrics(_:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

{
  v1 = *(v0 + 96);

  v2 = static Task<>.checkCancellation()();
  if (!v1)
  {
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = v4 + (*(**(v0 + 16) + 264))(v2) - v3;
    if (v5 < 0.0)
    {
      v6 = *(v0 + 24);
      v7 = *(v0 + 16);
      v8.n128_f64[0] = v5 + (*(*v7 + 312))();
      if (v8.n128_f64[0] > v6)
      {
        v8.n128_f64[0] = v6;
      }

      if (v8.n128_f64[0] < 0.0)
      {
        v8.n128_f64[0] = 0.0;
      }

      (*(*v7 + 320))(v8);
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of TaskPriority?(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of TaskPriority?(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      outlined destroy of TaskPriority?(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

BOOL DetailsContentOffsetProxy.isReadyForInitialScroll.getter()
{
  if (((*(*v0 + 488))() & 1) == 0)
  {
    return 0;
  }

  v1 = (*v0 + 608);
  v2 = *v1;
  v3 = (*v1)(&v11);
  v4 = v14;
  v5 = v4 + (*(*v0 + 560))(v3);
  v6 = v2(&v11);
  v7 = v12;
  if (v13)
  {
    v8 = (*(*v0 + 360))(v6) + v7;
    return v5 + -1.0 < v8 + (*(*v0 + 384))();
  }

  else
  {
    return v5 + -1.0 < v12;
  }
}

char *DetailsContentOffsetProxy.deinit()
{

  MEMORY[0x193AEBC30](v0 + 136);

  v1 = OBJC_IVAR____TtC20CommunicationDetails25DetailsContentOffsetProxy___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DetailsContentOffsetProxy.__deallocating_deinit()
{

  MEMORY[0x193AEBC30](v0 + 136);

  v1 = OBJC_IVAR____TtC20CommunicationDetails25DetailsContentOffsetProxy___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void Array<A>.updateTopInset(_:)(unint64_t a1, double a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x193AEB0F0](v8))
  {
    v5 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x193AEB000](v5, a1);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      (*(*v6 + 368))(a2);

      ++v5;
      if (v7 == i)
      {
        return;
      }
    }

    if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v6 = *(a1 + 8 * v5 + 32);

    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    if ((a1 & 0x8000000000000000) != 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = lazy protocol witness table accessor for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = specialized Clock.sleep(for:tolerance:);
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized Clock.sleep(for:tolerance:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

BOOL specialized static DetailsContentOffsetProxy.ScrollMetrics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  v3 = *(a2 + 8);
  v4 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (v4 != v3)
    {
      v2 = 0;
    }

    if (v2 != 1)
    {
      return 0;
    }
  }

  else
  {
    if (v4 != v3)
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return *(a1 + 24) == *(a2 + 24);
}

double partial apply for closure #1 in DetailsContentOffsetProxy.latestScrollMetrics.setter()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  *(v1 + 104) = result;
  *(v1 + 112) = v3;
  *(v1 + 120) = v4;
  *(v1 + 128) = v5;
  return result;
}

unint64_t type metadata accessor for UIView()
{
  result = lazy cache variable for type metadata for UIView;
  if (!lazy cache variable for type metadata for UIView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIView);
  }

  return result;
}

void partial apply for closure #1 in DetailsContentOffsetProxy.isActive.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 144) = v2;
}

uint64_t partial apply for closure #1 in DetailsContentOffsetProxy.setScrollMetrics(_:)()
{
  v2 = *(v0 + 4);
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in DetailsContentOffsetProxy.setScrollMetrics(_:);

  return closure #1 in DetailsContentOffsetProxy.setScrollMetrics(_:)(v3, v4, v5, v6, v7, v2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void partial apply for closure #1 in DetailsContentOffsetProxy.hackyTaskToShrinkBottomInsetIfNeeded.setter()
{
  partial apply for closure #1 in DetailsContentOffsetProxy.hackyTaskToShrinkBottomInsetIfNeeded.setter();
}

{
  *(*(v0 + 16) + 152) = *(v0 + 24);
}

uint64_t type metadata completion function for DetailsContentOffsetProxy(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t getEnumTagSinglePayload for DetailsContentOffsetProxy.ScrollMetrics(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DetailsContentOffsetProxy.ScrollMetrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DetailsContentOffsetProxy.ScrollMetrics.ContentHeight(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DetailsContentOffsetProxy.ScrollMetrics.ContentHeight(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DetailsViewController.CommunicationType.contacts.getter()
{
  v1 = *v0;
  v2 = v0[9];
  if (v2 < 0)
  {

    return v1;
  }

  else
  {
    v14 = v0[11];
    v15 = v0[12];
    v3 = v0[7];
    v12 = v0[8];
    v13 = v0[10];
    v5 = v0[5];
    v4 = v0[6];
    v7 = v0[3];
    v6 = v0[4];
    v9 = v0[1];
    v8 = v0[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20CommunicationDetails0dE7ContactVGMd, &_ss23_ContiguousArrayStorageCy20CommunicationDetails0dE7ContactVGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1901E6CD0;
    *(v10 + 32) = v1;
    *(v10 + 40) = v9;
    *(v10 + 48) = v8;
    *(v10 + 56) = v7;
    *(v10 + 64) = v6;
    *(v10 + 72) = v5;
    *(v10 + 80) = v4;
    *(v10 + 88) = v3;
    *(v10 + 96) = v12;
    *(v10 + 104) = v2;
    *(v10 + 112) = v13;
    *(v10 + 120) = v14;
    *(v10 + 128) = v15;
    v17[0] = v1;
    v17[1] = v9;
    v17[2] = v8;
    v17[3] = v7;
    v17[4] = v6;
    v17[5] = v5;
    v17[6] = v4;
    v17[7] = v3;
    v17[8] = v12;
    v17[9] = v2;
    v17[10] = v13;
    v17[11] = v14;
    v17[12] = v15;
    outlined init with copy of CommunicationDetailsContact(v17, v16);
  }

  return v10;
}

void *DetailsViewController.CommunicationType.defaultEditMenuActions(supportsEditGroupIdentity:)(char a1)
{
  if (((*(v1 + 75) | (*(v1 + 79) << 32)) & 0x8000000000000000) != 0)
  {
    if (a1)
    {
      return &outlined read-only object #1 of DetailsViewController.CommunicationType.defaultEditMenuActions(supportsEditGroupIdentity:);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else if (*(v1 + 74))
  {
    return &outlined read-only object #0 of DetailsViewController.CommunicationType.defaultEditMenuActions(supportsEditGroupIdentity:);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ20CommunicationDetails0bC7ContactV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v50 = v2;
  v51 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 80);
    v37 = *(v5 + 64);
    v38 = v8;
    v39 = *(v5 + 96);
    v9 = *(v5 + 16);
    v34[0] = *v5;
    v34[1] = v9;
    v10 = *(v5 + 48);
    v35 = *(v5 + 32);
    v36 = v10;
    v27 = v34[0];
    v28 = v9;
    v29 = v35;
    v30 = v10;
    v31 = v37;
    v32 = v8;
    v33 = v39;
    v11 = *(v6 + 80);
    v43 = *(v6 + 64);
    v44 = v11;
    v45 = *(v6 + 96);
    v12 = *(v6 + 16);
    v40[0] = *v6;
    v40[1] = v12;
    v13 = *(v6 + 48);
    v41 = *(v6 + 32);
    v42 = v13;
    v20 = v40[0];
    v21 = v12;
    v22 = v41;
    v23 = v13;
    v24 = v43;
    v25 = v11;
    v26 = v45;
    outlined init with copy of CommunicationDetailsContact(v34, v19);
    v14 = outlined init with copy of CommunicationDetailsContact(v40, v19);
    lazy protocol witness table accessor for type CommunicationDetailsContact and conformance CommunicationDetailsContact(v14, v15, v16);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v46[4] = v24;
    v46[5] = v25;
    v47 = v26;
    v46[0] = v20;
    v46[1] = v21;
    v46[2] = v22;
    v46[3] = v23;
    outlined destroy of CommunicationDetailsContact(v46);
    v48[4] = v31;
    v48[5] = v32;
    v49 = v33;
    v48[0] = v27;
    v48[1] = v28;
    v48[2] = v29;
    v48[3] = v30;
    outlined destroy of CommunicationDetailsContact(v48);
    if ((v17 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 104;
    v5 += 104;
  }

  return 1;
}

void *_sSasSQRzlE2eeoiySbSayxG_ABtFZ20CommunicationDetails10EditActionO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    v16 = 0;
    return (v16 & 1);
  }

  if (!v2 || a1 == a2)
  {
    v16 = 1;
    return (v16 & 1);
  }

  v3 = (a2 + 80);
  v4 = a1 + 40;
  while (1)
  {
    result = *(v4 - 8);
    v20 = result;
    v21 = *v4;
    v22 = *(v4 + 8);
    v23 = *(v4 + 16);
    v24 = *(v4 + 24);
    v25 = *(v4 + 32);
    v26 = *(v4 + 40);
    if (!v2)
    {
      break;
    }

    v6 = *(v3 - 6);
    v7 = *(v3 - 5);
    v8 = *(v3 - 4);
    v9 = *(v3 - 3);
    v10 = *(v3 - 2);
    v11 = *(v3 - 1);
    v17 = v2;
    v18 = v6;
    v12 = *v3;
    v19 = *v3;
    outlined copy of EditAction(result, *v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40));
    outlined copy of EditAction(v6, v7, v8, v9, v10, v11, v12);
    lazy protocol witness table accessor for type EditAction and conformance EditAction(v13, v14, v15);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined consume of EditAction(v18, v7, v8, v9, v10, v11, v19);
    outlined consume of EditAction(v20, v21, v22, v23, v24, v25, v26);
    if (v16)
    {
      v4 += 56;
      v3 += 56;
      v2 = v17 - 1;
      if (v17 != 1)
      {
        continue;
      }
    }

    return (v16 & 1);
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

Swift::Int DetailsViewController.HeaderStyle.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DetailsViewController.HeaderStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DetailsViewController.HeaderStyle(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v2);
  return Hasher._finalize()();
}

uint64_t DetailsViewController.ObservableConfiguration.contacts.getter()
{
  (*(*v0 + 200))(&v8);
  v1 = v8;
  v2 = v13;
  if (v13 < 0)
  {

    outlined destroy of DetailsViewController.CommunicationType(&v8);
    return v1;
  }

  else
  {
    v3 = v15;
    v7 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20CommunicationDetails0dE7ContactVGMd, &_ss23_ContiguousArrayStorageCy20CommunicationDetails0dE7ContactVGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_1901E6CD0;
    *(result + 32) = v1;
    v5 = v9;
    *(result + 56) = v10;
    *(result + 40) = v5;
    v6 = v11;
    *(result + 88) = v12;
    *(result + 72) = v6;
    *(result + 104) = v2;
    *(result + 112) = v7;
    *(result + 128) = v3;
  }

  return result;
}

__n128 key path getter for DetailsViewController.ObservableConfiguration.communicationType : DetailsViewController.ObservableConfiguration@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 200))(v6);
  v3 = v6[5];
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v3;
  *(a2 + 96) = v7;
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t key path setter for DetailsViewController.ObservableConfiguration.communicationType : DetailsViewController.ObservableConfiguration(__int128 *a1, uint64_t *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v18 = a1[4];
  v19 = v3;
  v4 = a1[1];
  v15[0] = *a1;
  v15[1] = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v16 = a1[2];
  v17 = v5;
  v8 = a1[5];
  v13[4] = v18;
  v13[5] = v8;
  v13[0] = v7;
  v13[1] = v6;
  v20 = *(a1 + 12);
  v9 = *a2;
  v14 = *(a1 + 12);
  v13[2] = v16;
  v13[3] = v2;
  v10 = *(*v9 + 208);
  outlined init with copy of DetailsViewController.CommunicationType(v15, v12);
  return v10(v13);
}

uint64_t DetailsViewController.ObservableConfiguration.communicationType.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 832))();

  v3 = *(v1 + 144);
  if ((v3 & 0xFFFFFFFFFEFEFEFELL) == 0xFFEFEFEFELL)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 88);
    v5 = *(v1 + 104);
    v6 = *(v1 + 120);
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
    v7 = *(v1 + 136);
    v8 = *(v1 + 72);
    *a1 = v8;
    *(a1 + 16) = v4;
    *(a1 + 64) = v7;
    *(a1 + 72) = v3;
    *(a1 + 80) = *(v1 + 152);
    *(a1 + 96) = *(v1 + 168);
    v11[0] = v8;
    v11[1] = v4;
    v11[2] = v5;
    v11[3] = v6;
    v12 = v7;
    v13 = v3;
    v15 = *(v1 + 168);
    v14 = *(v1 + 152);
    return outlined init with copy of DetailsViewController.CommunicationType(v11, v10);
  }

  return result;
}

void DetailsViewController.ObservableConfiguration.communicationType.setter(__int128 *a1)
{
  v2 = a1[5];
  v49 = a1[4];
  v50 = v2;
  v51 = *(a1 + 12);
  v3 = a1[1];
  v48[0] = *a1;
  v48[1] = v3;
  v4 = a1[3];
  v48[2] = a1[2];
  v48[3] = v4;
  if ((*(&v49 + 1) & 0x8000000000000000) != 0)
  {
    v16 = *(&v48[0] + 1);
    v33 = *&v48[0];

    specialized MutableCollection<>.sort(by:)(&v33);
    *&v34 = v33;
    *(&v34 + 1) = v16;
    *(&v38 + 1) = 0x8000000000000000;
    v17 = *(v1 + 120);
    v18 = *(v1 + 152);
    v45 = *(v1 + 136);
    v46 = v18;
    v47 = *(v1 + 168);
    v19 = *(v1 + 88);
    v41 = *(v1 + 72);
    v42 = v19;
    v43 = *(v1 + 104);
    v44 = v17;
    v20 = v16;
    outlined init with copy of DetailsViewController.CommunicationType?(&v41, v31);
    v21 = specialized DetailsViewController.ObservableConfiguration.shouldNotifyObservers<A>(_:_:)(&v41, &v34);
    outlined destroy of DetailsViewController.CommunicationType?(&v41, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMd, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMR);
    if (v21)
    {
      KeyPath = swift_getKeyPath();
      v23 = MEMORY[0x1EEE9AC00](KeyPath);
      (*(*v1 + 840))(v23);
      outlined destroy of DetailsViewController.CommunicationType(v48);

      return;
    }
  }

  else
  {
    v5 = a1[5];
    v38 = a1[4];
    v39 = v5;
    v40 = *(a1 + 12);
    v6 = a1[1];
    v34 = *a1;
    v35 = v6;
    v7 = a1[3];
    v36 = a1[2];
    v37 = v7;
    v8 = *(v1 + 88);
    v9 = *(v1 + 104);
    v41 = *(v1 + 72);
    v42 = v8;
    v10 = *(v1 + 120);
    v11 = *(v1 + 136);
    v12 = *(v1 + 152);
    v47 = *(v1 + 168);
    v45 = v11;
    v46 = v12;
    v43 = v9;
    v44 = v10;
    outlined init with copy of DetailsViewController.CommunicationType(v48, v31);
    outlined init with copy of DetailsViewController.CommunicationType?(&v41, v31);
    v13 = specialized DetailsViewController.ObservableConfiguration.shouldNotifyObservers<A>(_:_:)(&v41, &v34);
    outlined destroy of DetailsViewController.CommunicationType?(&v41, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMd, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMR);
    if (v13)
    {
      v14 = swift_getKeyPath();
      v15 = MEMORY[0x1EEE9AC00](v14);
      (*(*v1 + 840))(v15);
      outlined destroy of DetailsViewController.CommunicationType(v48);
      outlined destroy of DetailsViewController.CommunicationType(v48);

      return;
    }
  }

  outlined destroy of DetailsViewController.CommunicationType(v48);
  v24 = *(v1 + 120);
  v25 = *(v1 + 152);
  v31[4] = *(v1 + 136);
  v31[5] = v25;
  v32 = *(v1 + 168);
  v26 = *(v1 + 88);
  v31[0] = *(v1 + 72);
  v31[1] = v26;
  v31[2] = *(v1 + 104);
  v31[3] = v24;
  v27 = v35;
  *(v1 + 72) = v34;
  *(v1 + 88) = v27;
  v28 = v37;
  *(v1 + 104) = v36;
  v29 = v38;
  v30 = v39;
  *(v1 + 168) = v40;
  *(v1 + 152) = v30;
  *(v1 + 136) = v29;
  *(v1 + 120) = v28;
  outlined destroy of DetailsViewController.CommunicationType?(v31, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMd, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMR);
}

void (*DetailsViewController.ObservableConfiguration.communicationType.modify(uint64_t *a1))(__int128 **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x210uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 520) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 832))(KeyPath);

  v6 = *(v1 + 144);
  if ((v6 & 0xFFFFFFFFFEFEFEFELL) == 0xFFEFEFEFELL)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *v4 = *(v1 + 72);
    v7 = *(v1 + 88);
    v8 = *(v1 + 120);
    v9 = *(v1 + 136);
    *(v4 + 32) = *(v1 + 104);
    *(v4 + 48) = v8;
    *(v4 + 16) = v7;
    *(v4 + 64) = v9;
    *(v4 + 72) = v6;
    v10 = *(v1 + 152);
    *(v4 + 96) = *(v1 + 168);
    *(v4 + 80) = v10;
    v11 = *(v1 + 88);
    v12 = *(v1 + 104);
    v13 = *(v1 + 120);
    *(v4 + 168) = *(v1 + 136);
    *(v4 + 152) = v13;
    *(v4 + 136) = v12;
    *(v4 + 120) = v11;
    *(v4 + 104) = *(v1 + 72);
    *(v4 + 176) = v6;
    v14 = *(v1 + 152);
    *(v4 + 200) = *(v1 + 168);
    *(v4 + 184) = v14;
    outlined init with copy of DetailsViewController.CommunicationType(v4 + 104, v4 + 208);
    return DetailsViewController.ObservableConfiguration.communicationType.modify;
  }

  return result;
}

void DetailsViewController.ObservableConfiguration.communicationType.modify(__int128 **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[3];
    v5 = v2[4];
    v4 = v2[5];
    *(v2 + 376) = v5;
    *(v2 + 392) = v4;
    v6 = v2[1];
    *(v2 + 312) = *v2;
    *(v2 + 328) = v6;
    v7 = v2[3];
    v9 = *v2;
    v8 = v2[1];
    v10 = v2[2];
    *(v2 + 344) = v10;
    *(v2 + 360) = v7;
    v11 = v2[5];
    v22 = v5;
    v23 = v11;
    v18 = v9;
    v19 = v8;
    *(v2 + 51) = *(v2 + 12);
    v24 = *(v2 + 12);
    v20 = v10;
    v21 = v3;
    outlined init with copy of DetailsViewController.CommunicationType(v2 + 312, (v2 + 26));
    DetailsViewController.ObservableConfiguration.communicationType.setter(&v18);
    v12 = v2[5];
    v2[17] = v2[4];
    v2[18] = v12;
    *(v2 + 38) = *(v2 + 12);
    v13 = v2[1];
    v2[13] = *v2;
    v2[14] = v13;
    v14 = v2[3];
    v2[15] = v2[2];
    v2[16] = v14;
    outlined destroy of DetailsViewController.CommunicationType((v2 + 13));
  }

  else
  {
    v15 = v2[5];
    v22 = v2[4];
    v23 = v15;
    v24 = *(v2 + 12);
    v16 = v2[1];
    v18 = *v2;
    v19 = v16;
    v17 = v2[3];
    v20 = v2[2];
    v21 = v17;
    DetailsViewController.ObservableConfiguration.communicationType.setter(&v18);
  }

  free(v2);
}

uint64_t key path getter for DetailsViewController.ObservableConfiguration.onUpdateGroupIdentity : DetailsViewController.ObservableConfiguration@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 248))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed CNVisualIdentity) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DetailsViewController.ObservableConfiguration.onUpdateGroupIdentity : DetailsViewController.ObservableConfiguration(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CNVisualIdentity) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 256);
  sub_19011CAE8(v3, v4);
  return v7(v6, v5);
}

uint64_t DetailsViewController.ObservableConfiguration.onUpdateGroupIdentity.getter()
{
  swift_getKeyPath();
  (*(*v0 + 832))();

  swift_beginAccess();
  v1 = v0[2];
  sub_19011CAE8(v1, v0[3]);
  return v1;
}

uint64_t (*DetailsViewController.ObservableConfiguration.onUpdateGroupIdentity.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 832))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC20CommunicationDetails21DetailsViewController23ObservableConfiguration___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsViewController.ObservableConfiguration._onUpdateGroupIdentity.modify(v4);
  return DetailsViewController.ObservableConfiguration.onUpdateGroupIdentity.modify;
}

uint64_t key path getter for DetailsViewController.ObservableConfiguration.initialTabId : DetailsViewController.ObservableConfiguration@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for DetailsViewController.ObservableConfiguration.initialTabId : DetailsViewController.ObservableConfiguration(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 304);

  return v4(v2, v3);
}

uint64_t DetailsViewController.ObservableConfiguration.initialTabId.getter()
{
  swift_getKeyPath();
  (*(*v0 + 832))();

  swift_beginAccess();
  v1 = v0[4];

  return v1;
}

uint64_t DetailsViewController.ObservableConfiguration.initialTabId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[5];
  if (v5)
  {
    if (a2)
    {
      v6 = v2[4] == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    v2[4] = a1;
    v2[5] = a2;
  }

  KeyPath = swift_getKeyPath();
  v9 = MEMORY[0x1EEE9AC00](KeyPath);
  v10 = v2;
  v11 = a1;
  v12 = a2;
  (*(*v2 + 840))(v9);
}

uint64_t (*DetailsViewController.ObservableConfiguration.initialTabId.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 832))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC20CommunicationDetails21DetailsViewController23ObservableConfiguration___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsViewController.ObservableConfiguration._initialTabId.modify(v4);
  return DetailsViewController.ObservableConfiguration.initialTabId.modify;
}

uint64_t key path getter for DetailsViewController.ObservableConfiguration.defaultEditMenuActions : DetailsViewController.ObservableConfiguration@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DetailsViewController.ObservableConfiguration.defaultEditMenuActions : DetailsViewController.ObservableConfiguration(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 352);

  return v2(v3);
}

uint64_t DetailsViewController.ObservableConfiguration.defaultEditMenuActions.getter()
{
  swift_getKeyPath();
  (*(*v0 + 832))();

  swift_beginAccess();
}

uint64_t DetailsViewController.ObservableConfiguration.defaultEditMenuActions.setter(uint64_t a1)
{
  swift_beginAccess();

  v4 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ20CommunicationDetails10EditActionO_Tt1g5(v3, a1);

  if (v4)
  {
    v1[6] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](KeyPath);
    v8 = v1;
    v9 = a1;
    (*(*v1 + 840))(v7);
  }
}

uint64_t (*DetailsViewController.ObservableConfiguration.defaultEditMenuActions.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 832))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC20CommunicationDetails21DetailsViewController23ObservableConfiguration___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsViewController.ObservableConfiguration._defaultEditMenuActions.modify(v4);
  return DetailsViewController.ObservableConfiguration.defaultEditMenuActions.modify;
}

void DetailsViewController.ObservableConfiguration.presentationMode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
}

uint64_t DetailsViewController.ObservableConfiguration._communicationType.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 832))();

  v3 = *(v1 + 120);
  v5 = *(v1 + 152);
  v14 = *(v1 + 136);
  v4 = v14;
  v15 = v5;
  v16 = *(v1 + 168);
  v6 = v16;
  v7 = *(v1 + 88);
  v11[0] = *(v1 + 72);
  v11[1] = v7;
  v12 = *(v1 + 104);
  v8 = v12;
  v13 = v3;
  *a1 = v11[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  return outlined init with copy of DetailsViewController.CommunicationType?(v11, v10);
}

uint64_t key path getter for DetailsViewController.ObservableConfiguration._communicationType : DetailsViewController.ObservableConfiguration@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 832))();

  v17 = *(v3 + 168);
  v4 = v17;
  v5 = *(v3 + 152);
  v15 = *(v3 + 136);
  v6 = v15;
  v16 = v5;
  v7 = *(v3 + 120);
  v8 = *(v3 + 88);
  v12[0] = *(v3 + 72);
  v12[1] = v8;
  v13 = *(v3 + 104);
  v14 = v7;
  *(a2 + 32) = v13;
  *(a2 + 48) = v7;
  *(a2 + 64) = v6;
  *(a2 + 80) = v5;
  *(a2 + 96) = v4;
  v9 = *(v3 + 88);
  *a2 = *(v3 + 72);
  *(a2 + 16) = v9;
  return outlined init with copy of DetailsViewController.CommunicationType?(v12, v11);
}

void key path setter for DetailsViewController.ObservableConfiguration._communicationType : DetailsViewController.ObservableConfiguration(uint64_t a1)
{
  v2 = *(a1 + 80);
  v6[4] = *(a1 + 64);
  v6[5] = v2;
  v7 = *(a1 + 96);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v4 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v4;
  outlined init with copy of DetailsViewController.CommunicationType?(v6, v5);
  DetailsViewController.ObservableConfiguration._communicationType.setter(a1);
}

void DetailsViewController.ObservableConfiguration._communicationType.setter(__int128 *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[2];
  v26 = a1[3];
  v27 = v2;
  v28 = v3;
  v29 = *(a1 + 12);
  v5 = a1[1];
  v23 = *a1;
  v24 = v5;
  v25 = v4;
  v6 = *(v1 + 88);
  v7 = *(v1 + 104);
  v30[0] = *(v1 + 72);
  v30[1] = v6;
  v8 = *(v1 + 120);
  v9 = *(v1 + 136);
  v10 = *(v1 + 152);
  v31 = *(v1 + 168);
  v30[4] = v9;
  v30[5] = v10;
  v30[2] = v7;
  v30[3] = v8;
  outlined init with copy of DetailsViewController.CommunicationType?(v30, v21);
  v11 = specialized DetailsViewController.ObservableConfiguration.shouldNotifyObservers<A>(_:_:)(v30, &v23);
  outlined destroy of DetailsViewController.CommunicationType?(v30, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMd, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMR);
  if (v11)
  {
    KeyPath = swift_getKeyPath();
    v13 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 840))(v13);
    outlined destroy of DetailsViewController.CommunicationType?(&v23, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMd, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMR);
  }

  else
  {
    v14 = *(v1 + 120);
    v15 = *(v1 + 152);
    v21[4] = *(v1 + 136);
    v21[5] = v15;
    v22 = *(v1 + 168);
    v16 = *(v1 + 88);
    v21[0] = *(v1 + 72);
    v21[1] = v16;
    v21[2] = *(v1 + 104);
    v21[3] = v14;
    *(v1 + 72) = v23;
    v17 = v25;
    *(v1 + 88) = v24;
    *(v1 + 104) = v17;
    v18 = v26;
    v19 = v27;
    v20 = v28;
    *(v1 + 168) = v29;
    *(v1 + 152) = v20;
    *(v1 + 136) = v19;
    *(v1 + 120) = v18;
    outlined destroy of DetailsViewController.CommunicationType?(v21, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMd, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMR);
  }
}

__n128 closure #1 in DetailsViewController.ObservableConfiguration._communicationType.setter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  v4 = *(a1 + 120);
  v5 = *(a1 + 128);
  v15 = *(a1 + 152);
  v16 = *(a1 + 136);
  v6 = *(a2 + 32);
  *(a1 + 120) = *(a2 + 48);
  v7 = *(a2 + 80);
  *(a1 + 136) = *(a2 + 64);
  *(a1 + 152) = v7;
  v8 = *(a2 + 16);
  *(a1 + 72) = *a2;
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  *(a1 + 88) = v8;
  v11 = *(a1 + 104);
  v12 = *(a1 + 112);
  v13 = *(a1 + 168);
  *(a1 + 168) = *(a2 + 96);
  *(a1 + 104) = v6;
  outlined init with copy of DetailsViewController.CommunicationType?(a2, v17);
  outlined consume of DetailsViewController.CommunicationType?(v2, v3, v9, v10, v11, v12, v4, v5, v16, *(&v16 + 1), v15, *(&v15 + 1), v13);
  return result;
}

uint64_t key path getter for DetailsViewController.ObservableConfiguration.onGroupIdentityUpdate : DetailsViewController.ObservableConfiguration@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 440))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed CNGroupIdentity) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DetailsViewController.ObservableConfiguration.onGroupIdentityUpdate : DetailsViewController.ObservableConfiguration(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CNGroupIdentity) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 448);
  sub_19011CAE8(v3, v4);
  return v7(v6, v5);
}

uint64_t DetailsViewController.ObservableConfiguration.onGroupIdentityUpdate.getter()
{
  swift_getKeyPath();
  (*(*v0 + 832))();

  swift_beginAccess();
  v1 = v0[22];
  sub_19011CAE8(v1, v0[23]);
  return v1;
}

uint64_t (*DetailsViewController.ObservableConfiguration.onGroupIdentityUpdate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 832))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC20CommunicationDetails21DetailsViewController23ObservableConfiguration___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsViewController.ObservableConfiguration._onGroupIdentityUpdate.modify(v4);
  return DetailsViewController.ObservableConfiguration.onGroupIdentityUpdate.modify;
}

uint64_t key path getter for DetailsViewController.ObservableConfiguration.onContactsUpdate : DetailsViewController.ObservableConfiguration@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 488))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = _sIeg_ytIegr_TRTA_0;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DetailsViewController.ObservableConfiguration.onContactsUpdate : DetailsViewController.ObservableConfiguration(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sytIegr_Ieg_TRTA_0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 496);
  sub_19011CAE8(v3, v4);
  return v7(v6, v5);
}

uint64_t DetailsViewController.ObservableConfiguration.onContactsUpdate.getter()
{
  swift_getKeyPath();
  (*(*v0 + 832))();

  swift_beginAccess();
  v1 = v0[24];
  sub_19011CAE8(v1, v0[25]);
  return v1;
}

uint64_t (*DetailsViewController.ObservableConfiguration.onContactsUpdate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 832))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC20CommunicationDetails21DetailsViewController23ObservableConfiguration___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsViewController.ObservableConfiguration._onContactsUpdate.modify(v4);
  return DetailsViewController.ObservableConfiguration.onContactsUpdate.modify;
}

uint64_t key path getter for DetailsViewController.ObservableConfiguration.onCapabilityChange : DetailsViewController.ObservableConfiguration@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 536))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DetailsViewController.ObservableConfiguration.ConfigurationCapabilities) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DetailsViewController.ObservableConfiguration.onCapabilityChange : DetailsViewController.ObservableConfiguration(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DetailsViewController.ObservableConfiguration.ConfigurationCapabilities) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 544);
  sub_19011CAE8(v3, v4);
  return v7(v6, v5);
}

uint64_t DetailsViewController.ObservableConfiguration.onCapabilityChange.getter()
{
  swift_getKeyPath();
  (*(*v0 + 832))();

  swift_beginAccess();
  v1 = v0[26];
  sub_19011CAE8(v1, v0[27]);
  return v1;
}

double DetailsViewController.ObservableConfiguration.onUpdateGroupIdentity.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  (*(*v5 + 840))();
  a5(a1, a2);

  return result;
}

uint64_t (*DetailsViewController.ObservableConfiguration.onCapabilityChange.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 832))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC20CommunicationDetails21DetailsViewController23ObservableConfiguration___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsViewController.ObservableConfiguration._onCapabilityChange.modify(v4);
  return DetailsViewController.ObservableConfiguration.onCapabilityChange.modify;
}

void *key path getter for DetailsViewController.ObservableConfiguration.headerStyle : DetailsViewController.ObservableConfiguration@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 584))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for DetailsViewController.ObservableConfiguration.headerStyle : DetailsViewController.ObservableConfiguration(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 592))(&v4);
}

void DetailsViewController.ObservableConfiguration.headerStyle.getter(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 832))();

  swift_beginAccess();
  *a1 = v1[224];
}

void DetailsViewController.ObservableConfiguration.headerStyle.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (v2 == v1[224])
  {
    v1[224] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 840))(v4);
  }
}

uint64_t (*DetailsViewController.ObservableConfiguration.headerStyle.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 832))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC20CommunicationDetails21DetailsViewController23ObservableConfiguration___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsViewController.ObservableConfiguration._headerStyle.modify(v4);
  return DetailsViewController.ObservableConfiguration.headerStyle.modify;
}

uint64_t key path getter for DetailsViewController.ObservableConfiguration.capabilities : DetailsViewController.ObservableConfiguration@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 632))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DetailsViewController.ObservableConfiguration.capabilities : DetailsViewController.ObservableConfiguration(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 640);

  return v2(v3);
}

uint64_t DetailsViewController.ObservableConfiguration.capabilities.getter()
{
  swift_getKeyPath();
  (*(*v0 + 832))();

  swift_beginAccess();
}

uint64_t DetailsViewController.ObservableConfiguration.capabilities.setter(uint64_t a1)
{
  swift_beginAccess();

  v5 = _sSh2eeoiySbShyxG_ABtFZ20CommunicationDetails0C14ViewControllerC23ObservableConfigurationC0G12CapabilitiesO_Tt1g5(v3, a1, v4);

  if (v5)
  {
    v1[29] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x1EEE9AC00](KeyPath);
    v9 = v1;
    v10 = a1;
    (*(*v1 + 840))(v8);
  }
}

uint64_t (*DetailsViewController.ObservableConfiguration.capabilities.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 832))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC20CommunicationDetails21DetailsViewController23ObservableConfiguration___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsViewController.ObservableConfiguration._capabilities.modify(v4);
  return DetailsViewController.ObservableConfiguration.capabilities.modify;
}

uint64_t DetailsViewController.ObservableConfiguration.__allocating_init(showsTabForSinglePage:defaultEditMenuActions:presentationMode:headerActionHandlers:communicationType:headerStyle:)(char a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, char *a6)
{
  v12 = swift_allocObject();
  v13 = *a3;
  LOBYTE(a3) = *(a3 + 8);
  v14 = *(a5 + 80);
  v30 = *(a5 + 64);
  v31 = v14;
  v32 = *(a5 + 96);
  v15 = *(a5 + 16);
  v29[0] = *a5;
  v29[1] = v15;
  v16 = *(a5 + 48);
  v29[2] = *(a5 + 32);
  v29[3] = v16;
  v17 = *a6;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0u;
  *(v12 + 104) = 0u;
  *(v12 + 120) = 0u;
  *(v12 + 136) = 0;
  *(v12 + 144) = 0xFFEFEFEFELL;
  *(v12 + 152) = 0u;
  *(v12 + 168) = 0u;
  *(v12 + 184) = 0u;
  *(v12 + 200) = 0u;
  *(v12 + 216) = 0;
  *(v12 + 232) = MEMORY[0x1E69E7CD0];
  v18 = MEMORY[0x1E69E7CC0];
  *(v12 + 240) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 248) = v18;
  ObservationRegistrar.init()();
  *(v12 + 65) = a1;
  *(v12 + 48) = a2;
  *(v12 + 56) = v13;
  *(v12 + 64) = a3;
  *(v12 + 224) = v17;

  outlined init with copy of DetailsViewController.CommunicationType(v29, v28);
  DetailsViewController.ObservableConfiguration.communicationType.setter(a5);
  v19 = *(a2 + 16);

  if (v19)
  {
    outlined destroy of DetailsViewController.CommunicationType(v29);
  }

  else
  {
    v28[0] = 10;
    v20 = DetailsViewController.ObservableConfiguration.supportsCapability(_:)(v28);
    if (((*(&v30 + 11) | (SHIBYTE(v30) << 32)) & 0x8000000000000000) != 0)
    {
      v21 = v20;
      outlined destroy of DetailsViewController.CommunicationType(v29);
      v22 = &outlined read-only object #1 of DetailsViewController.ObservableConfiguration.__allocating_init(showsTabForSinglePage:defaultEditMenuActions:presentationMode:headerActionHandlers:communicationType:headerStyle:);
    }

    else
    {
      v21 = BYTE10(v30);
      outlined destroy of DetailsViewController.CommunicationType(v29);
      v22 = &outlined read-only object #0 of DetailsViewController.ObservableConfiguration.__allocating_init(showsTabForSinglePage:defaultEditMenuActions:presentationMode:headerActionHandlers:communicationType:headerStyle:);
    }

    if (v21)
    {
      v23 = v22;
    }

    else
    {
      v23 = v18;
    }

    DetailsViewController.ObservableConfiguration.defaultEditMenuActions.setter(v23);
  }

  v24 = objc_opt_self();
  v25 = [v24 defaultCenter];
  [v25 addObserver:v12 selector:sel_updateContactsWithNotification_ name:*NSNotificationName.contactsChanged.unsafeMutableAddressor() object:0];

  v26 = [v24 defaultCenter];
  [v26 addObserver:v12 selector:sel_updateGroupIdentityWithNotification_ name:*NSNotificationName.groupIdentityChanged.unsafeMutableAddressor() object:0];

  return v12;
}

uint64_t DetailsViewController.ObservableConfiguration.init(showsTabForSinglePage:defaultEditMenuActions:presentationMode:headerActionHandlers:communicationType:headerStyle:)(char a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, char *a6)
{
  v11 = *a3;
  v12 = *(a3 + 8);
  v13 = *(a5 + 80);
  v35 = *(a5 + 64);
  v36 = v13;
  v37 = *(a5 + 96);
  v14 = *(a5 + 16);
  v34[0] = *a5;
  v34[1] = v14;
  v15 = *(a5 + 48);
  v34[2] = *(a5 + 32);
  v34[3] = v15;
  v16 = *a6;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 136) = 0;
  *(v6 + 144) = 0xFFEFEFEFELL;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0;
  *(v6 + 232) = MEMORY[0x1E69E7CD0];
  v17 = MEMORY[0x1E69E7CC0];
  *(v6 + 240) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v6 + 248) = v17;
  ObservationRegistrar.init()();
  *(v6 + 65) = a1;
  *(v6 + 48) = a2;
  *(v6 + 56) = v11;
  *(v6 + 64) = v12;
  *(v6 + 224) = v16;
  v18 = *(a5 + 80);
  v32[4] = *(a5 + 64);
  v32[5] = v18;
  v33 = *(a5 + 96);
  v19 = *(a5 + 16);
  v32[0] = *a5;
  v32[1] = v19;
  v20 = *(a5 + 48);
  v32[2] = *(a5 + 32);
  v32[3] = v20;
  v21 = *(*v6 + 208);

  outlined init with copy of DetailsViewController.CommunicationType(v34, v31);
  v21(v32);
  v22 = *(a2 + 16);

  if (v22)
  {
    outlined destroy of DetailsViewController.CommunicationType(v34);
  }

  else
  {
    LOBYTE(v32[0]) = 10;
    v23 = DetailsViewController.ObservableConfiguration.supportsCapability(_:)(v32);
    if (((*(&v35 + 11) | (SHIBYTE(v35) << 32)) & 0x8000000000000000) != 0)
    {
      v24 = v23;
      outlined destroy of DetailsViewController.CommunicationType(v34);
      v25 = &outlined read-only object #1 of DetailsViewController.ObservableConfiguration.init(showsTabForSinglePage:defaultEditMenuActions:presentationMode:headerActionHandlers:communicationType:headerStyle:);
    }

    else
    {
      v24 = BYTE10(v35);
      outlined destroy of DetailsViewController.CommunicationType(v34);
      v25 = &outlined read-only object #0 of DetailsViewController.ObservableConfiguration.init(showsTabForSinglePage:defaultEditMenuActions:presentationMode:headerActionHandlers:communicationType:headerStyle:);
    }

    if (v24)
    {
      v26 = v25;
    }

    else
    {
      v26 = v17;
    }

    DetailsViewController.ObservableConfiguration.defaultEditMenuActions.setter(v26);
  }

  v27 = objc_opt_self();
  v28 = [v27 defaultCenter];
  [v28 addObserver:v6 selector:sel_updateContactsWithNotification_ name:*NSNotificationName.contactsChanged.unsafeMutableAddressor() object:0];

  v29 = [v27 defaultCenter];
  [v29 addObserver:v6 selector:sel_updateGroupIdentityWithNotification_ name:*NSNotificationName.groupIdentityChanged.unsafeMutableAddressor() object:0];

  return v6;
}

uint64_t DetailsViewController.ObservableConfiguration.contactsRecentlyAddedToBlocklist.setter(uint64_t a1)
{
  swift_beginAccess();

  v4 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SbTt1g5(v3, a1);

  if (v4)
  {
    v1[30] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](KeyPath);
    v8 = v1;
    v9 = a1;
    (*(*v1 + 840))(v7);
  }
}

uint64_t DetailsViewController.ObservableConfiguration.contactsPerformingBlock.setter(uint64_t a1)
{
  swift_beginAccess();
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v1[31], a1))
  {
    v1[31] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 840))(v5);
  }
}

uint64_t DetailsViewController.ObservableConfiguration.__allocating_init(showsTabForSinglePage:defaultEditMenuActions:presentationMode:communicationType:headerStyle:)(char a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v10 = swift_allocObject();
  v11 = *a3;
  LOBYTE(a3) = *(a3 + 8);
  v12 = *(a4 + 80);
  v25 = *(a4 + 64);
  v26 = v12;
  v27 = *(a4 + 96);
  v13 = *(a4 + 16);
  v24[0] = *a4;
  v24[1] = v13;
  v14 = *(a4 + 48);
  v24[2] = *(a4 + 32);
  v24[3] = v14;
  v15 = *a5;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0u;
  *(v10 + 120) = 0u;
  *(v10 + 136) = 0;
  *(v10 + 144) = 0xFFEFEFEFELL;
  *(v10 + 152) = 0u;
  *(v10 + 168) = 0u;
  *(v10 + 184) = 0u;
  *(v10 + 200) = 0u;
  *(v10 + 216) = 0;
  *(v10 + 232) = MEMORY[0x1E69E7CD0];
  v16 = MEMORY[0x1E69E7CC0];
  *(v10 + 240) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v10 + 248) = v16;
  ObservationRegistrar.init()();
  *(v10 + 65) = a1;
  *(v10 + 48) = a2;
  *(v10 + 56) = v11;
  *(v10 + 64) = a3;
  *(v10 + 224) = v15;

  outlined init with copy of DetailsViewController.CommunicationType(v24, v23);
  DetailsViewController.ObservableConfiguration.communicationType.setter(a4);
  v17 = *(a2 + 16);

  if (v17)
  {
    outlined destroy of DetailsViewController.CommunicationType(v24);
  }

  else
  {
    v23[0] = 10;
    v18 = DetailsViewController.ObservableConfiguration.supportsCapability(_:)(v23);
    if (((*(&v25 + 11) | (SHIBYTE(v25) << 32)) & 0x8000000000000000) != 0)
    {
      v19 = v18;
      outlined destroy of DetailsViewController.CommunicationType(v24);
      v20 = &outlined read-only object #1 of DetailsViewController.ObservableConfiguration.__allocating_init(showsTabForSinglePage:defaultEditMenuActions:presentationMode:communicationType:headerStyle:);
    }

    else
    {
      v19 = BYTE10(v25);
      outlined destroy of DetailsViewController.CommunicationType(v24);
      v20 = &outlined read-only object #0 of DetailsViewController.ObservableConfiguration.__allocating_init(showsTabForSinglePage:defaultEditMenuActions:presentationMode:communicationType:headerStyle:);
    }

    if (v19)
    {
      v21 = v20;
    }

    else
    {
      v21 = v16;
    }

    DetailsViewController.ObservableConfiguration.defaultEditMenuActions.setter(v21);
  }

  return v10;
}

uint64_t DetailsViewController.ObservableConfiguration.init(showsTabForSinglePage:defaultEditMenuActions:presentationMode:communicationType:headerStyle:)(char a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v9 = *a3;
  v10 = *(a3 + 8);
  v11 = *(a4 + 80);
  v30 = *(a4 + 64);
  v31 = v11;
  v32 = *(a4 + 96);
  v12 = *(a4 + 16);
  v29[0] = *a4;
  v29[1] = v12;
  v13 = *(a4 + 48);
  v29[2] = *(a4 + 32);
  v29[3] = v13;
  v14 = *a5;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0xFFEFEFEFELL;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 0u;
  *(v5 + 216) = 0;
  *(v5 + 232) = MEMORY[0x1E69E7CD0];
  v15 = MEMORY[0x1E69E7CC0];
  *(v5 + 240) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v5 + 248) = v15;
  ObservationRegistrar.init()();
  *(v5 + 65) = a1;
  *(v5 + 48) = a2;
  *(v5 + 56) = v9;
  *(v5 + 64) = v10;
  *(v5 + 224) = v14;
  v16 = *(a4 + 80);
  v27[4] = *(a4 + 64);
  v27[5] = v16;
  v28 = *(a4 + 96);
  v17 = *(a4 + 16);
  v27[0] = *a4;
  v27[1] = v17;
  v18 = *(a4 + 48);
  v27[2] = *(a4 + 32);
  v27[3] = v18;
  v19 = *(*v5 + 208);

  outlined init with copy of DetailsViewController.CommunicationType(v29, v26);
  v19(v27);
  v20 = *(a2 + 16);

  if (v20)
  {
    outlined destroy of DetailsViewController.CommunicationType(v29);
  }

  else
  {
    LOBYTE(v27[0]) = 10;
    v21 = DetailsViewController.ObservableConfiguration.supportsCapability(_:)(v27);
    if (((*(&v30 + 11) | (SHIBYTE(v30) << 32)) & 0x8000000000000000) != 0)
    {
      v22 = v21;
      outlined destroy of DetailsViewController.CommunicationType(v29);
      v23 = &outlined read-only object #1 of DetailsViewController.ObservableConfiguration.init(showsTabForSinglePage:defaultEditMenuActions:presentationMode:communicationType:headerStyle:);
    }

    else
    {
      v22 = BYTE10(v30);
      outlined destroy of DetailsViewController.CommunicationType(v29);
      v23 = &outlined read-only object #0 of DetailsViewController.ObservableConfiguration.init(showsTabForSinglePage:defaultEditMenuActions:presentationMode:communicationType:headerStyle:);
    }

    if (v22)
    {
      v24 = v23;
    }

    else
    {
      v24 = v15;
    }

    DetailsViewController.ObservableConfiguration.defaultEditMenuActions.setter(v24);
  }

  return v5;
}

uint64_t DetailsViewController.ObservableConfiguration.cnContacts.getter()
{
  v1 = (*(*v0 + 192))();
  v2 = *(v1 + 16);
  if (v2)
  {
    v6 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = 48;
    do
    {
      v4 = *(v1 + v3);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 104;
      --v2;
    }

    while (v2);

    return v6;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

Swift::Void __swiftcall DetailsViewController.ObservableConfiguration.handleUpdateContacts(with:)(Swift::OpaquePointer with)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v11 = Logger.detailsViewController.unsafeMutableAddressor();
  v35 = *(v5 + 16);
  v36 = v11;
  v35(v10);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v34 = v7;
    v15 = v14;
    *v14 = 134217984;
    *(v14 + 4) = *(with._rawValue + 2);

    _os_log_impl(&dword_190119000, v12, v13, "Processing contacts update with %ld contacts.", v15, 0xCu);
    v16 = v15;
    v7 = v34;
    MEMORY[0x193AEBB30](v16, -1, -1);
  }

  else
  {
  }

  v17 = *(v5 + 8);
  v18 = v17(v10, v4);
  if (*(with._rawValue + 2))
  {
    (*(*v2 + 200))(v49, v18);
    if ((v49[9] & 0x8000000000000000) != 0)
    {
      v27 = v49[1];

      *&v43[0] = with;
      *(&v43[0] + 1) = v27;
      *(&v46 + 1) = 0x8000000000000000;
      v28 = *(*v2 + 208);
      v29 = v27;

      v28(v43);
    }

    else
    {
      outlined destroy of DetailsViewController.CommunicationType(v49);
      v19 = *(with._rawValue + 7);
      v46 = *(with._rawValue + 6);
      v47 = v19;
      v48 = *(with._rawValue + 16);
      v20 = *(with._rawValue + 3);
      v43[0] = *(with._rawValue + 2);
      v43[1] = v20;
      v21 = *(with._rawValue + 5);
      v44 = *(with._rawValue + 4);
      v45 = v21;
      v38[0] = v43[0];
      v38[1] = v20;
      v38[2] = v44;
      v38[3] = v21;
      v39 = v46;
      v40 = DWORD2(v46) & 0x1010101;
      v41 = v47;
      v42 = v48;
      v22 = *(*v2 + 208);
      outlined init with copy of CommunicationDetailsContact(v43, &v37);
      v23 = v22(v38);
    }

    v30 = (*(*v2 + 488))(v23);
    if (v30)
    {
      v32 = v31;
      v33 = v30;
      v30();
      _sSo16CNVisualIdentityCIegg_SgWOe_0(v33, v32);
    }
  }

  else
  {
    (v35)(v7, v36, v4);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_190119000, v24, v25, "Tried to update contacts with an empty array.", v26, 2u);
      MEMORY[0x193AEBB30](v26, -1, -1);
    }

    v17(v7, v4);
  }
}

uint64_t key path getter for DetailsViewController.ObservableConfiguration.contactsRecentlyAddedToBlocklist : DetailsViewController.ObservableConfiguration@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 712))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DetailsViewController.ObservableConfiguration.contactsRecentlyAddedToBlocklist : DetailsViewController.ObservableConfiguration(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 720);

  return v2(v3);
}

uint64_t DetailsViewController.ObservableConfiguration.contactsRecentlyAddedToBlocklist.getter()
{
  swift_getKeyPath();
  (*(*v0 + 832))();

  swift_beginAccess();
}

uint64_t (*DetailsViewController.ObservableConfiguration.contactsRecentlyAddedToBlocklist.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 832))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC20CommunicationDetails21DetailsViewController23ObservableConfiguration___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsViewController.ObservableConfiguration._contactsRecentlyAddedToBlocklist.modify(v4);
  return DetailsViewController.ObservableConfiguration.contactsRecentlyAddedToBlocklist.modify;
}

uint64_t key path getter for DetailsViewController.ObservableConfiguration.contactsPerformingBlock : DetailsViewController.ObservableConfiguration@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 760))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DetailsViewController.ObservableConfiguration.contactsPerformingBlock : DetailsViewController.ObservableConfiguration(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 768);

  return v2(v3);
}

uint64_t DetailsViewController.ObservableConfiguration.contactsPerformingBlock.getter()
{
  swift_getKeyPath();
  (*(*v0 + 832))();

  swift_beginAccess();
}

uint64_t (*DetailsViewController.ObservableConfiguration.contactsPerformingBlock.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 832))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC20CommunicationDetails21DetailsViewController23ObservableConfiguration___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsViewController.ObservableConfiguration._contactsPerformingBlock.modify(v4);
  return DetailsViewController.ObservableConfiguration.contactsPerformingBlock.modify;
}

void DetailsViewController.ObservableConfiguration.onUpdateGroupIdentity.modify(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

Swift::Void __swiftcall DetailsViewController.ObservableConfiguration.handleUpdatedBlocklist(with:)(Swift::OpaquePointer with)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*v1 + 760))(v6);
  v10 = (*(*v1 + 776))(v25);
  *v11 = MEMORY[0x1E69E7CC0];

  v10(v25, 0);
  if (v9[2] == 1)
  {
    v13 = v9[4];
    v12 = v9[5];

    v14 = (*(*v2 + 728))(v25);
    v16 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v16;
    *v16 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(1, v13, v12, isUniquelyReferenced_nonNull_native);

    *v16 = v24;

    v14(v25, 0);
  }

  else
  {
    v18 = Logger.detailsViewController.unsafeMutableAddressor();
    (*(v5 + 16))(v8, v18, v4);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      v22 = v9[2];

      *(v21 + 4) = v22;

      _os_log_impl(&dword_190119000, v19, v20, "Tried to update contactsRecentlyAddedToBlocklist, but contactsPerformingBlock has unexpected count: %ld", v21, 0xCu);
      MEMORY[0x193AEBB30](v21, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v5 + 8))(v8, v4);
  }

  (*(*v2 + 680))(with._rawValue);
}

void (*DetailsViewController.ObservableConfiguration.handleUpdateGroupIdentity(for:)(void *a1))(id)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 200))(v22, v6);
  if ((v22[9] & 0x8000000000000000) == 0)
  {
    return outlined destroy of DetailsViewController.CommunicationType(v22);
  }

  v10 = v22[0];

  v11 = Logger.detailsViewController.unsafeMutableAddressor();
  (*(v5 + 16))(v8, v11, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_190119000, v12, v13, "Processing group identity change.", v14, 2u);
    MEMORY[0x193AEBB30](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v21[0] = v10;
  v21[1] = a1;
  v21[9] = 0x8000000000000000;
  v15 = *(*v2 + 208);
  v16 = a1;
  v17 = v15(v21);
  result = (*(*v2 + 440))(v17);
  if (result)
  {
    v19 = result;
    v20 = v18;
    result(v16);
    return _sSo16CNVisualIdentityCIegg_SgWOe_0(v19, v20);
  }

  return result;
}

void DetailsViewController.ObservableConfiguration.updateGroupIdentity(notification:)()
{
  v1 = v0;
  (*(*v0 + 200))(v6);
  if ((v6[9] & 0x8000000000000000) != 0)
  {
    v2 = v6[1];

    v3 = type metadata accessor for CNGroupIdentity();
    Notification.parse<A>(for:)(1, v3, &v5);
    v4 = v5;
    if (v5)
    {
      (*(*v1 + 792))(v5);
    }
  }

  else
  {
    outlined destroy of DetailsViewController.CommunicationType(v6);
  }
}

uint64_t *DetailsViewController.ObservableConfiguration.deinit()
{
  _sSo16CNVisualIdentityCIegg_SgWOe_0(*(v0 + 16), *(v0 + 24));

  outlined consume of DetailsViewController.CommunicationType?(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));
  _sSo16CNVisualIdentityCIegg_SgWOe_0(*(v0 + 176), *(v0 + 184));
  _sSo16CNVisualIdentityCIegg_SgWOe_0(*(v0 + 192), *(v0 + 200));
  _sSo16CNVisualIdentityCIegg_SgWOe_0(*(v0 + 208), *(v0 + 216));

  v1 = OBJC_IVAR____TtCC20CommunicationDetails21DetailsViewController23ObservableConfiguration___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DetailsViewController.ObservableConfiguration.__deallocating_deinit()
{
  DetailsViewController.ObservableConfiguration.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy12CoreGraphics7CGFloatVSaySo6UIViewCGGMd, &_ss18_DictionaryStorageCy12CoreGraphics7CGFloatVSaySo6UIViewCGGMR);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      if (v20 == 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v20;
      }

      v23 = MEMORY[0x193AEB240](*(v7 + 40), *&v22);
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v34 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        outlined init with take of Any(v24, v35);
      }

      else
      {
        outlined init with copy of Any(v24, v35);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      outlined init with take of Any(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS20CommunicationDetails29PhotosGridQuickLookDataSourceC16MediaPreviewItemCGMd, &_ss18_DictionaryStorageCySS20CommunicationDetails29PhotosGridQuickLookDataSourceC16MediaPreviewItemCGMR);
  v36 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v26 = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS20CommunicationDetails29PhotosGridQuickLookDataSourceC16MediaPreviewItemCGMd, &_ss18_DictionaryStorageCySS20CommunicationDetails29PhotosGridQuickLookDataSourceC16MediaPreviewItemCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        v22 = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 104 * a3 - 104;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      v11 = *(v10 + 178);
      v12 = *(v10 + 74);
      if (v11 == v12)
      {
        result = *(v10 + 128);
        v13 = result == *(v10 + 24) && *(v10 + 136) == *(v10 + 32);
        if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
        {
LABEL_4:
          ++v4;
          v7 += 104;
          --v8;
          if (v4 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      else if ((v11 & (v12 ^ 1) & 1) == 0)
      {
        goto LABEL_4;
      }

      if (!v6)
      {
        break;
      }

      v23 = *(v10 + 168);
      v24 = *(v10 + 184);
      v25 = *(v10 + 200);
      v19 = *(v10 + 104);
      v20 = *(v10 + 120);
      v21 = *(v10 + 136);
      v22 = *(v10 + 152);
      v14 = *(v10 + 16);
      *(v10 + 104) = *v10;
      *(v10 + 120) = v14;
      v15 = *(v10 + 48);
      *(v10 + 136) = *(v10 + 32);
      v16 = *(v10 + 64);
      v17 = *(v10 + 80);
      *(v10 + 200) = *(v10 + 96);
      *(v10 + 184) = v17;
      *(v10 + 168) = v16;
      *(v10 + 152) = v15;
      *(v10 + 64) = v23;
      *(v10 + 80) = v24;
      *(v10 + 96) = v25;
      *v10 = v19;
      *(v10 + 16) = v20;
      *(v10 + 32) = v21;
      *(v10 + 48) = v22;
      v10 -= 104;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = result;
    v7 = *a4;
    lazy protocol witness table accessor for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType(result, a2, a3);
    v8 = (v7 + v4);
    v9 = v6 - v4;
LABEL_5:
    v10 = v9;
    v11 = v8;
    while (1)
    {
      result = dispatch thunk of static Comparable.< infix(_:_:)();
      if ((result & 1) == 0)
      {
LABEL_4:
        ++v4;
        ++v8;
        --v9;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      v12 = *v11;
      *v11 = *(v11 - 1);
      *--v11 = v12;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v99 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v99 = *v99;
    if (!v99)
    {
      goto LABEL_152;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_116:
      v89 = v8 + 16;
      v90 = *(v8 + 2);
      if (v90 >= 2)
      {
        while (1)
        {
          v91 = *v5;
          if (!*v5)
          {
            goto LABEL_150;
          }

          v92 = &v8[16 * v90];
          v5 = *v92;
          v93 = &v89[2 * v90];
          v94 = v93[1];
          specialized _merge<A>(low:mid:high:buffer:by:)((v91 + 104 * *v92), (v91 + 104 * *v93), (v91 + 104 * v94), v99);
          if (v4)
          {
          }

          if (v94 < v5)
          {
            goto LABEL_138;
          }

          if (v90 - 2 >= *v89)
          {
            goto LABEL_139;
          }

          *v92 = v5;
          *(v92 + 1) = v94;
          v95 = *v89 - v90;
          if (*v89 < v90)
          {
            goto LABEL_140;
          }

          v90 = *v89 - 1;
          result = memmove(v93, v93 + 2, 16 * v95);
          *v89 = v90;
          v5 = a3;
          if (v90 <= 1)
          {
          }
        }
      }
    }

LABEL_146:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    v8 = result;
    goto LABEL_116;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v9 = v7++;
    if (v7 >= v6)
    {
      goto LABEL_38;
    }

    v10 = *v5;
    v11 = *v5 + 104 * v7;
    v12 = *(v11 + 74);
    v13 = *v5 + 104 * v9;
    v14 = *(v13 + 74);
    if (v12 == v14)
    {
      result = *(v11 + 24);
      if (result == *(v13 + 24) && *(v11 + 32) == *(v13 + 32))
      {
        v15 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v15 = result;
      }
    }

    else
    {
      v15 = v12 & (v14 ^ 1);
    }

    v7 = v9 + 2;
    if (v9 + 2 >= v6)
    {
LABEL_26:
      if (v15)
      {
        goto LABEL_29;
      }

      goto LABEL_38;
    }

    v17 = (v10 + 104 * v9 + 282);
    do
    {
      v18 = *v17;
      v19 = *(v17 - 104);
      if (v18 == v19)
      {
        result = *(v17 - 50);
        if (result == *(v17 - 154) && *(v17 - 42) == *(v17 - 146))
        {
LABEL_15:
          if (v15)
          {
            goto LABEL_29;
          }

          goto LABEL_16;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      else
      {
        if ((v18 & 1) == 0)
        {
          goto LABEL_15;
        }

        result = v19 ^ 1u;
      }

      if ((v15 ^ result))
      {
        goto LABEL_26;
      }

LABEL_16:
      ++v7;
      v17 += 104;
    }

    while (v6 != v7);
    v7 = v6;
    if (v15)
    {
LABEL_29:
      if (v7 < v9)
      {
        goto LABEL_143;
      }

      if (v9 < v7)
      {
        v21 = 104 * v7 - 104;
        v22 = v9;
        v23 = 104 * v9;
        v24 = v7;
        v96 = v22;
        do
        {
          if (v22 != --v24)
          {
            v26 = *v5;
            if (!*v5)
            {
              goto LABEL_149;
            }

            v25 = v26 + v21;
            v109 = *(v26 + v23 + 64);
            v111 = *(v26 + v23 + 80);
            v113 = *(v26 + v23 + 96);
            v101 = *(v26 + v23);
            v103 = *(v26 + v23 + 16);
            v105 = *(v26 + v23 + 32);
            v107 = *(v26 + v23 + 48);
            result = memmove((v26 + v23), (v26 + v21), 0x68uLL);
            *(v25 + 64) = v109;
            *(v25 + 80) = v111;
            *(v25 + 96) = v113;
            *v25 = v101;
            *(v25 + 16) = v103;
            *(v25 + 32) = v105;
            *(v25 + 48) = v107;
          }

          ++v22;
          v21 -= 104;
          v23 += 104;
        }

        while (v22 < v24);
        v9 = v96;
      }
    }

LABEL_38:
    v27 = v5[1];
    if (v7 >= v27)
    {
      goto LABEL_63;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_142;
    }

    if (v7 - v9 >= a4)
    {
      goto LABEL_63;
    }

    if (__OFADD__(v9, a4))
    {
      goto LABEL_144;
    }

    if (v9 + a4 >= v27)
    {
      v28 = v5[1];
    }

    else
    {
      v28 = v9 + a4;
    }

    if (v28 < v9)
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    if (v7 == v28)
    {
LABEL_63:
      if (v7 < v9)
      {
        goto LABEL_141;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v43 = *(v8 + 2);
      v42 = *(v8 + 3);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v44;
      v45 = &v8[16 * v43];
      *(v45 + 4) = v9;
      *(v45 + 5) = v7;
      v46 = *v99;
      if (!*v99)
      {
        goto LABEL_151;
      }

      if (!v43)
      {
LABEL_3:
        v6 = v5[1];
        if (v7 >= v6)
        {
          goto LABEL_114;
        }

        continue;
      }

      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v8 + 4);
          v49 = *(v8 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_83:
          if (v51)
          {
            goto LABEL_129;
          }

          v64 = &v8[16 * v44];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_132;
          }

          v70 = &v8[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_135;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_136;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        v74 = &v8[16 * v44];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_97:
        if (v69)
        {
          goto LABEL_131;
        }

        v77 = &v8[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_134;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_104:
        v85 = v47 - 1;
        if (v47 - 1 >= v44)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
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
          goto LABEL_145;
        }

        if (!*v5)
        {
          goto LABEL_148;
        }

        v86 = *&v8[16 * v85 + 32];
        v87 = *&v8[16 * v47 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v5 + 104 * v86), (*v5 + 104 * *&v8[16 * v47 + 32]), (*v5 + 104 * v87), v46);
        if (v4)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v85 >= *(v8 + 2))
        {
          goto LABEL_126;
        }

        v88 = &v8[16 * v85];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        result = specialized Array.remove(at:)(v47);
        v44 = *(v8 + 2);
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v8[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_127;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_128;
      }

      v59 = &v8[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_130;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_133;
      }

      if (v63 >= v55)
      {
        v81 = &v8[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_137;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_83;
    }

    break;
  }

  v29 = *v5;
  v30 = *v5 + 104 * v7 - 104;
  v97 = v9;
  v31 = v9 - v7;
LABEL_49:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    v34 = *(v33 + 178);
    v35 = *(v33 + 74);
    if (v34 == v35)
    {
      result = *(v33 + 128);
      if (result != *(v33 + 24) || *(v33 + 136) != *(v33 + 32))
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          goto LABEL_58;
        }
      }

LABEL_48:
      ++v7;
      v30 += 104;
      --v31;
      if (v7 == v28)
      {
        v7 = v28;
        v5 = a3;
        v9 = v97;
        goto LABEL_63;
      }

      goto LABEL_49;
    }

    if ((v34 & (v35 ^ 1) & 1) == 0)
    {
      goto LABEL_48;
    }

LABEL_58:
    if (!v29)
    {
      break;
    }

    v110 = *(v33 + 168);
    v112 = *(v33 + 184);
    v114 = *(v33 + 200);
    v102 = *(v33 + 104);
    v104 = *(v33 + 120);
    v106 = *(v33 + 136);
    v108 = *(v33 + 152);
    v37 = *(v33 + 16);
    *(v33 + 104) = *v33;
    *(v33 + 120) = v37;
    v38 = *(v33 + 48);
    *(v33 + 136) = *(v33 + 32);
    v39 = *(v33 + 64);
    v40 = *(v33 + 80);
    *(v33 + 200) = *(v33 + 96);
    *(v33 + 184) = v40;
    *(v33 + 168) = v39;
    *(v33 + 152) = v38;
    *(v33 + 64) = v110;
    *(v33 + 80) = v112;
    *(v33 + 96) = v114;
    *v33 = v102;
    *(v33 + 16) = v104;
    *(v33 + 32) = v106;
    *(v33 + 48) = v108;
    v33 -= 104;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 104;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 104;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[104 * v11] <= a4)
    {
      memmove(a4, __src, 104 * v11);
    }

    v12 = &v4[104 * v11];
    if (v10 < 104 || v6 <= v7)
    {
LABEL_44:
      v13 = v6;
      goto LABEL_45;
    }

    while (1)
    {
      v18 = 0;
      v19 = v12;
      while (1)
      {
        v20 = &v19[v18];
        v21 = v19[v18 - 30];
        v22 = *(v6 - 30);
        if (v21 == v22)
        {
          break;
        }

        if (v21 & (v22 ^ 1))
        {
          goto LABEL_39;
        }

LABEL_37:
        if (&v5[v18] != v20)
        {
          memmove(&v5[v18 - 104], v20 - 104, 0x68uLL);
        }

        v18 -= 104;
        v12 = &v19[v18];
        if (&v19[v18] <= v4)
        {
          goto LABEL_44;
        }
      }

      v23 = *(v20 - 10) == *(v6 - 10) && *(v20 - 9) == *(v6 - 9);
      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_37;
      }

LABEL_39:
      v13 = v6 - 104;
      v24 = &v5[v18];
      v5 = &v5[v18 - 104];
      if (v24 != v6)
      {
        memmove(v5, v6 - 104, 0x68uLL);
      }

      v12 = &v19[v18];
      if (&v19[v18] > v4)
      {
        v6 -= 104;
        if (v13 > v7)
        {
          continue;
        }
      }

      v12 = &v19[v18];
      goto LABEL_45;
    }
  }

  if (a4 != __dst || &__dst[104 * v9] <= a4)
  {
    memmove(a4, __dst, 104 * v9);
  }

  v12 = &v4[104 * v9];
  if (v8 >= 104)
  {
    do
    {
      if (v6 >= v5)
      {
        break;
      }

      v15 = v6[74];
      v16 = v4[74];
      if (v15 == v16)
      {
        v17 = *(v6 + 3) == *(v4 + 3) && *(v6 + 4) == *(v4 + 4);
        if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
LABEL_19:
          v14 = v6;
          v17 = v7 == v6;
          v6 += 104;
          if (v17)
          {
            goto LABEL_9;
          }

LABEL_8:
          memmove(v7, v14, 0x68uLL);
          goto LABEL_9;
        }
      }

      else if (v15 & (v16 ^ 1))
      {
        goto LABEL_19;
      }

      v14 = v4;
      v17 = v7 == v4;
      v4 += 104;
      if (!v17)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 104;
    }

    while (v4 < v12);
  }

  v13 = v7;
LABEL_45:
  v25 = (v12 - v4) / 104;
  if (v13 != v4 || v13 >= &v4[104 * v25])
  {
    memmove(v13, v4, 104 * v25);
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ20CommunicationDetails0C14ViewControllerC23ObservableConfigurationC0G12CapabilitiesO_Tt1g5(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v19 = result;
  if (v8)
  {
    do
    {
      v20 = (v8 - 1) & v8;
LABEL_13:
      lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration.ConfigurationCapabilities and conformance DetailsViewController.ObservableConfiguration.ConfigurationCapabilities(result, a2, a3);
      v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = -1 << *(a2 + 32);
      v17 = v13 & ~v16;
      if (((*(v10 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return 0;
      }

      v18 = ~v16;
      lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration.ConfigurationCapabilities and conformance DetailsViewController.ObservableConfiguration.ConfigurationCapabilities(v13, v14, v15);
      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v17 = (v17 + 1) & v18;
        if (((*(v10 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          return 0;
        }
      }

      result = v19;
      v8 = v20;
    }

    while (v20);
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v20 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SbTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + v12);

    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || v16 != *(*(a2 + 56) + v17))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static DetailsViewController.CommunicationType.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  *&v45[64] = a1[4];
  *&v45[80] = v3;
  v4 = a1[1];
  *v45 = *a1;
  *&v45[16] = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  *&v45[32] = a1[2];
  *&v45[48] = v5;
  v8 = a2[1];
  v46 = *a2;
  v47 = v8;
  v9 = a2[3];
  v10 = a2[5];
  v50 = a2[4];
  v51 = v10;
  v11 = a2[3];
  v12 = *a2;
  v13 = a2[1];
  v48 = a2[2];
  v49 = v11;
  v53[0] = v7;
  v53[1] = v6;
  v14 = a1[5];
  v53[4] = *&v45[64];
  v53[5] = v14;
  v53[2] = *&v45[32];
  v53[3] = v2;
  v57 = v48;
  v56 = v13;
  *&v45[96] = *(a1 + 12);
  v52 = *(a2 + 12);
  v15 = *(a1 + 12);
  v55 = v12;
  v16 = a2[5];
  v17 = *(a2 + 12);
  v54 = v15;
  v61 = v17;
  v60 = v16;
  v59 = v50;
  v58 = v9;
  v18 = *v45;
  if ((*&v45[72] & 0x8000000000000000) != 0)
  {
    if ((*(&v50 + 1) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    v24 = v46;
    v29 = *&v45[8];
    outlined init with copy of DetailsViewController.CommunicationType(v45, &v38);
    outlined init with copy of DetailsViewController.CommunicationType(&v46, &v38);
    v25 = *(&v24 + 1);
    v26 = v29;
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ20CommunicationDetails0bC7ContactV_Tt1g5(v18, v24) & 1) == 0)
    {

      goto LABEL_6;
    }

    if (v29)
    {
      if (*(&v24 + 1))
      {
        type metadata accessor for CNGroupIdentity();
        v27 = v26;
        v28 = static NSObject.== infix(_:_:)();

        outlined destroy of DetailsViewController.CommunicationType?(v53, &_s20CommunicationDetails0B14ViewControllerC0A4TypeO_AEtMd, &_s20CommunicationDetails0B14ViewControllerC0A4TypeO_AEtMR);
        if ((v28 & 1) == 0)
        {
          goto LABEL_7;
        }

LABEL_16:
        v22 = 1;
        return v22 & 1;
      }

      outlined destroy of DetailsViewController.CommunicationType?(v53, &_s20CommunicationDetails0B14ViewControllerC0A4TypeO_AEtMd, &_s20CommunicationDetails0B14ViewControllerC0A4TypeO_AEtMR);
      v25 = v26;
    }

    else
    {
      outlined destroy of DetailsViewController.CommunicationType?(v53, &_s20CommunicationDetails0B14ViewControllerC0A4TypeO_AEtMd, &_s20CommunicationDetails0B14ViewControllerC0A4TypeO_AEtMR);
      if (!*(&v24 + 1))
      {
        goto LABEL_16;
      }
    }

    goto LABEL_7;
  }

  if ((*(&v50 + 1) & 0x8000000000000000) != 0)
  {
LABEL_5:
    outlined init with copy of DetailsViewController.CommunicationType(v45, &v38);
    outlined init with copy of DetailsViewController.CommunicationType(&v46, &v38);
LABEL_6:
    outlined destroy of DetailsViewController.CommunicationType?(v53, &_s20CommunicationDetails0B14ViewControllerC0A4TypeO_AEtMd, &_s20CommunicationDetails0B14ViewControllerC0A4TypeO_AEtMR);
LABEL_7:
    v22 = 0;
    return v22 & 1;
  }

  v37 = v52;
  v38 = *v45;
  v39 = *&v45[8];
  v40 = *&v45[24];
  v41 = *&v45[40];
  v42 = *&v45[56];
  v43 = *&v45[72];
  v44 = *&v45[88];
  v31 = v46;
  v32 = v47;
  v33 = v48;
  v34 = v49;
  v35 = v50;
  v36 = v51;
  outlined init with copy of DetailsViewController.CommunicationType(&v46, v30);
  outlined init with copy of DetailsViewController.CommunicationType(v45, v30);
  outlined init with copy of DetailsViewController.CommunicationType(v45, v30);
  v19 = outlined init with copy of DetailsViewController.CommunicationType(&v46, v30);
  lazy protocol witness table accessor for type CommunicationDetailsContact and conformance CommunicationDetailsContact(v19, v20, v21);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of DetailsViewController.CommunicationType?(v53, &_s20CommunicationDetails0B14ViewControllerC0A4TypeO_AEtMd, &_s20CommunicationDetails0B14ViewControllerC0A4TypeO_AEtMR);
  outlined destroy of DetailsViewController.CommunicationType(&v46);
  outlined destroy of DetailsViewController.CommunicationType(v45);
  return v22 & 1;
}

uint64_t specialized DetailsViewController.ObservableConfiguration.shouldNotifyObservers<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v68 = *(a1 + 32);
  v69 = v3;
  v4 = *(a1 + 72);
  v70 = *(a1 + 64);
  v5 = *(a1 + 16);
  v66 = *a1;
  v67 = v5;
  v64 = *(a1 + 80);
  v65 = *(a1 + 96);
  v6 = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  v10 = *(a2 + 72);
  v63 = *(a2 + 64);
  v61 = v8;
  v62 = v9;
  v59 = v6;
  v60 = v7;
  v11 = *(a2 + 80);
  v58 = *(a2 + 96);
  v57 = v11;
  if ((v4 & 0xFFFFFFFFFEFEFEFELL) != 0xFFEFEFEFELL)
  {
    v16 = *(a1 + 64);
    v17 = *(a1 + 48);
    v44 = *(a1 + 32);
    v45 = v17;
    v18 = *(a1 + 16);
    v42 = *a1;
    v43 = v18;
    *&v46 = v16;
    *(&v46 + 1) = v4;
    v47 = *(a1 + 80);
    v48 = *(a1 + 96);
    v35 = v42;
    v36 = v18;
    v41 = v48;
    v39 = v46;
    v40 = v47;
    v37 = v44;
    v38 = v17;
    if ((v10 & 0xFFFFFFFFFEFEFEFELL) != 0xFFEFEFEFELL)
    {
      v19 = *(a2 + 48);
      v30 = *(a2 + 32);
      v31 = v19;
      v34 = *(a2 + 96);
      v20 = *(a2 + 64);
      v21 = *(a2 + 16);
      v28 = *a2;
      v29 = v21;
      v33 = *(a2 + 80);
      *&v32 = v20;
      *(&v32 + 1) = v10;
      outlined init with copy of DetailsViewController.CommunicationType?(a1, v26);
      outlined init with copy of DetailsViewController.CommunicationType?(a2, v26);
      outlined init with copy of DetailsViewController.CommunicationType?(&v42, v26);
      v22 = specialized static DetailsViewController.CommunicationType.== infix(_:_:)(&v35, &v28);
      v24[4] = v32;
      v24[5] = v33;
      v25 = v34;
      v24[0] = v28;
      v24[1] = v29;
      v24[2] = v30;
      v24[3] = v31;
      outlined destroy of DetailsViewController.CommunicationType(v24);
      v26[4] = v39;
      v26[5] = v40;
      v27 = v41;
      v26[0] = v35;
      v26[1] = v36;
      v26[2] = v37;
      v26[3] = v38;
      outlined destroy of DetailsViewController.CommunicationType(v26);
      v30 = v68;
      v31 = v69;
      v28 = v66;
      v29 = v67;
      *&v32 = v70;
      *(&v32 + 1) = v4;
      v33 = v64;
      v34 = v65;
      outlined destroy of DetailsViewController.CommunicationType?(&v28, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMd, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMR);
      v15 = v22 ^ 1;
      return v15 & 1;
    }

    v32 = v46;
    v33 = v47;
    v34 = v48;
    v28 = v42;
    v29 = v43;
    v30 = v44;
    v31 = v45;
    outlined init with copy of DetailsViewController.CommunicationType?(a1, v26);
    outlined init with copy of DetailsViewController.CommunicationType?(a2, v26);
    outlined init with copy of DetailsViewController.CommunicationType?(&v42, v26);
    outlined destroy of DetailsViewController.CommunicationType(&v28);
    goto LABEL_7;
  }

  if ((v10 & 0xFFFFFFFFFEFEFEFELL) != 0xFFEFEFEFELL)
  {
    outlined init with copy of DetailsViewController.CommunicationType?(a1, &v42);
    outlined init with copy of DetailsViewController.CommunicationType?(a2, &v42);
LABEL_7:
    v44 = v68;
    v45 = v69;
    v42 = v66;
    v43 = v67;
    *&v46 = v70;
    *(&v46 + 1) = v4;
    v47 = v64;
    v49 = v59;
    v48 = v65;
    v53 = v63;
    v52 = v62;
    v51 = v61;
    v50 = v60;
    v54 = v10;
    v56 = v58;
    v55 = v57;
    outlined destroy of DetailsViewController.CommunicationType?(&v42, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSg_AFtMd, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSg_AFtMR);
    v15 = 1;
    return v15 & 1;
  }

  v12 = *(a1 + 48);
  v44 = *(a1 + 32);
  v45 = v12;
  v13 = *(a1 + 64);
  v14 = *(a1 + 16);
  v42 = *a1;
  v43 = v14;
  *&v46 = v13;
  *(&v46 + 1) = v4;
  v47 = *(a1 + 80);
  v48 = *(a1 + 96);
  outlined init with copy of DetailsViewController.CommunicationType?(a1, &v35);
  outlined init with copy of DetailsViewController.CommunicationType?(a2, &v35);
  outlined destroy of DetailsViewController.CommunicationType?(&v42, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMd, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMR);
  v15 = 0;
  return v15 & 1;
}

uint64_t outlined init with copy of DetailsViewController.CommunicationType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMd, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in DetailsViewController.ObservableConfiguration.onUpdateGroupIdentity.setter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  sub_19011CAE8(v1, v3);
  return _sSo16CNVisualIdentityCIegg_SgWOe_0(v4, v5);
}

unint64_t lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration()
{
  result = lazy protocol witness table cache variable for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration;
  if (!lazy protocol witness table cache variable for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration)
  {
    type metadata accessor for DetailsViewController.ObservableConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration);
  }

  return result;
}

uint64_t type metadata accessor for DetailsViewController.ObservableConfiguration(uint64_t a1)
{
  result = type metadata singleton initialization cache for DetailsViewController.ObservableConfiguration;
  if (!type metadata singleton initialization cache for DetailsViewController.ObservableConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in DetailsViewController.ObservableConfiguration.initialTabId.setter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
}

uint64_t partial apply for closure #1 in DetailsViewController.ObservableConfiguration.defaultEditMenuActions.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 48) = v1;
}

uint64_t partial apply for closure #1 in DetailsViewController.ObservableConfiguration.onGroupIdentityUpdate.setter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v2 + 176);
  v5 = *(v2 + 184);
  *(v2 + 176) = v1;
  *(v2 + 184) = v3;
  sub_19011CAE8(v1, v3);
  return _sSo16CNVisualIdentityCIegg_SgWOe_0(v4, v5);
}

uint64_t partial apply for closure #1 in DetailsViewController.ObservableConfiguration.onContactsUpdate.setter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v2 + 192);
  v5 = *(v2 + 200);
  *(v2 + 192) = v1;
  *(v2 + 200) = v3;
  sub_19011CAE8(v1, v3);
  return _sSo16CNVisualIdentityCIegg_SgWOe_0(v4, v5);
}

uint64_t partial apply for closure #1 in DetailsViewController.ObservableConfiguration.onCapabilityChange.setter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v2 + 208);
  v5 = *(v2 + 216);
  *(v2 + 208) = v1;
  *(v2 + 216) = v3;
  sub_19011CAE8(v1, v3);
  return _sSo16CNVisualIdentityCIegg_SgWOe_0(v4, v5);
}

void partial apply for closure #1 in DetailsViewController.ObservableConfiguration.headerStyle.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 224) = v2;
}

uint64_t partial apply for closure #1 in DetailsViewController.ObservableConfiguration.capabilities.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 232) = v1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t partial apply for closure #1 in DetailsViewController.ObservableConfiguration.contactsRecentlyAddedToBlocklist.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 240) = v1;
}

uint64_t partial apply for closure #1 in DetailsViewController.ObservableConfiguration.contactsPerformingBlock.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 248) = v1;
}

void outlined consume of DetailsViewController.CommunicationType?(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if ((a10 & 0xFFFFFFFFFEFEFEFELL) != 0xFFEFEFEFELL)
  {
    outlined consume of DetailsViewController.CommunicationType(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
  }
}

void outlined consume of DetailsViewController.CommunicationType(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a10 < 0)
  {
  }

  else
  {
  }
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
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

uint64_t getEnumTagSinglePayload for DetailsViewController.CommunicationType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 72) >> 2) & 0x3F80 | (*(a1 + 72) >> 1) | (*(a1 + 72) >> 3) & 0x1FC000 | (*(a1 + 72) >> 4) & 0xFFE00000;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

int8x8_t storeEnumTagSinglePayload for DetailsViewController.CommunicationType(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 104) = 1;
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
      v4 = vdupq_n_s64(-a2);
      v5 = vorrq_s8(vandq_s8(vshlq_u64(v4, xmmword_1901E6CD0), xmmword_1901E6D00), vandq_s8(vshlq_u64(v4, xmmword_1901E6CE0), xmmword_1901E6CF0));
      *(a1 + 64) = 0;
      result = vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 72) = result;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      *(a1 + 80) = 0;
      return result;
    }

    *(a1 + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DetailsViewController.PresentationMode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DetailsViewController.PresentationMode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for DetailsViewController.PresentationMode(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for DetailsViewController.PresentationMode(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DetailsViewController.HeaderStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DetailsViewController.HeaderStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata completion function for DetailsViewController.ObservableConfiguration(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

void type metadata accessor for UIModalPresentationStyle()
{
  if (!lazy cache variable for type metadata for UIModalPresentationStyle)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for UIModalPresentationStyle);
    }
  }
}

unint64_t type metadata accessor for CNGroupIdentity()
{
  result = lazy cache variable for type metadata for CNGroupIdentity;
  if (!lazy cache variable for type metadata for CNGroupIdentity)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNGroupIdentity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration.ConfigurationCapabilities and conformance DetailsViewController.ObservableConfiguration.ConfigurationCapabilities(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type DetailsViewController.ObservableConfiguration.ConfigurationCapabilities and conformance DetailsViewController.ObservableConfiguration.ConfigurationCapabilities;
  if (!lazy protocol witness table cache variable for type DetailsViewController.ObservableConfiguration.ConfigurationCapabilities and conformance DetailsViewController.ObservableConfiguration.ConfigurationCapabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsViewController.ObservableConfiguration.ConfigurationCapabilities and conformance DetailsViewController.ObservableConfiguration.ConfigurationCapabilities);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DetailsViewController.ObservableConfiguration.ConfigurationCapabilities and conformance DetailsViewController.ObservableConfiguration.ConfigurationCapabilities;
  if (!lazy protocol witness table cache variable for type DetailsViewController.ObservableConfiguration.ConfigurationCapabilities and conformance DetailsViewController.ObservableConfiguration.ConfigurationCapabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsViewController.ObservableConfiguration.ConfigurationCapabilities and conformance DetailsViewController.ObservableConfiguration.ConfigurationCapabilities);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CNGroupIdentity) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t outlined destroy of DetailsViewController.CommunicationType?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double closure #1 in DetailsViewController.ObservableConfiguration._communicationType.setterpartial apply()
{
  return partial apply for closure #1 in DetailsViewController.ObservableConfiguration._communicationType.setter();
}

{
  return partial apply for closure #1 in DetailsViewController.ObservableConfiguration._communicationType.setter();
}

id SegmentedTabControl.__allocating_init(viewModel:styleGuide:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = specialized SegmentedTabControl.init(viewModel:styleGuide:)(a1, a2);

  return v6;
}

id SegmentedTabControl.init(viewModel:styleGuide:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized SegmentedTabControl.init(viewModel:styleGuide:)(a1, a2);

  return v2;
}

id SegmentedTabControl.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SegmentedTabControl.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastLayoutBounds;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 1;
  v2 = v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastIntrinsicSize;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView) = 0;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall SegmentedTabControl.layoutSubviews()()
{
  v28.receiver = v0;
  v28.super_class = type metadata accessor for SegmentedTabControl();
  objc_msgSendSuper2(&v28, sel_layoutSubviews);
  v1 = SegmentedTabControl.segmentedControl.getter();
  [v1 intrinsicContentSize];
  v3 = v2;
  v5 = v4;

  v6 = v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastLayoutBounds;
  v7 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastLayoutBounds);
  v8 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastLayoutBounds + 8);
  v9 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastLayoutBounds + 16);
  v10 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastLayoutBounds + 24);
  v11 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastLayoutBounds + 32);
  [v0 bounds];
  if (v11 & 1) != 0 || (v31.origin.x = v12, v31.origin.y = v13, v31.size.width = v14, v31.size.height = v15, v29.origin.x = v7, v29.origin.y = v8, v29.size.width = v9, v29.size.height = v10, !CGRectEqualToRect(v29, v31)) || (v16 = (v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastIntrinsicSize), (*(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastIntrinsicSize + 16)) || (v12 = *v16, *v16 != v3) || (v12 = v16[1], v12 != v5))
  {
    [v0 bounds];
    *v6 = v17;
    *(v6 + 1) = v18;
    *(v6 + 2) = v19;
    *(v6 + 3) = v20;
    v6[32] = 0;
    v21 = (v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastIntrinsicSize);
    *v21 = v3;
    v21[1] = v5;
    *(v21 + 16) = 0;
    v22 = SegmentedTabControl.scrollView.getter();
    [v0 bounds];
    [v22 setFrame_];

    [v0 bounds];
    if (v3 <= CGRectGetWidth(v30) - (*(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_styleGuide) + *(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_styleGuide)))
    {
      SegmentedTabControl.setupCenteredLayout(segmentedIntrinsicSize:)(v3);
    }

    else
    {
      SegmentedTabControl.setupScrollableLayout(segmentedIntrinsicSize:)(v3);
    }

    v23 = SegmentedTabControl.segmentedControl.getter();
    v24 = [v23 selectedSegmentIndex];

    if (v24 != -1)
    {
      v25 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl;
      v26 = [*(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl) selectedSegmentIndex];
      if (v26 < [*(v0 + v25) numberOfSegments])
      {
        v27 = [*(v0 + v25) selectedSegmentIndex];
        (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))(v27, 0);
      }
    }
  }
}

Swift::Void __swiftcall SegmentedTabControl.updateSelection()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_viewModel;
  v3 = *(**(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_viewModel) + 184);

  v3(&v24, v4);

  v5 = v25;
  if (v25)
  {
    v6 = v24;
    v8 = v26;
    v7 = v27;
    v9 = v28;
    v29[0] = v24;
    v29[1] = v25;
    v29[2] = v26;
    v29[3] = v27;
    v29[4] = v28;
    v10 = *(**(v0 + v2) + 136);

    v12 = v10(v11);

    v14 = specialized Collection<>.firstIndex(of:)(v29, v12, v13);
    v16 = v15;

    if ((v16 & 1) == 0)
    {
      v17 = SegmentedTabControl.segmentedControl.getter();
      v18 = [v17 selectedSegmentIndex];

      if (v14 != v18)
      {
        v19 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl;
        [*(v1 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl) setSelectedSegmentIndex_];
        v20 = SegmentedTabControl.segmentedControl.getter();
        v21 = [v20 selectedSegmentIndex];

        if (v21 != -1)
        {
          v22 = [*(v1 + v19) selectedSegmentIndex];
          if (v22 < [*(v1 + v19) numberOfSegments])
          {
            v23 = [*(v1 + v19) selectedSegmentIndex];
            (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))(v23, 1);
          }
        }
      }
    }

    outlined consume of DetailsTab?(v6, v5, v8, v7, v9);
  }
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return 0;
  }

  lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab(a1, a2, a3);
  v5 = 0;
  for (i = a2 + 64; ; i += 40)
  {

    v7 = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v7)
    {
      break;
    }

    if (v3 == ++v5)
    {
      return 0;
    }
  }

  return v5;
}

Swift::Void __swiftcall SegmentedTabControl.scrollToSegment(_:animated:)(Swift::Int _, Swift::Bool animated)
{
  SegmentedTabControl.frameForSegment(at:)(_, v32);
  if ((v33 & 1) == 0)
  {
    v5 = *v32;
    v6 = *&v32[1];
    v7 = *&v32[2];
    v8 = *&v32[3];
    v35.origin.x = SegmentedTabControl.visibleBounds.getter(v4);
    v37.origin.x = v5;
    v37.origin.y = v6;
    v37.size.width = v7;
    v37.size.height = v8;
    v9 = CGRectContainsRect(v35, v37);
    if (!v9)
    {
      v10 = SegmentedTabControl.visibleBounds.getter(v9);
      v12 = v11;
      v14 = v13;
      v30 = v15;
      v16 = SegmentedTabControl.scrollView.getter();
      [v16 contentOffset];
      v18 = v17;

      SegmentedTabControl.calculateScrollOffset(segmentFrame:visibleBounds:currentOffset:)(v5, v6, v7, v8, v10, v12, v14, *&v30);
      v20 = v19;
      v21 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView;
      [*(v2 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView) contentInset];
      v23 = -v22;
      [*(v2 + v21) contentSize];
      v25 = v24;
      [*(v2 + v21) bounds];
      v26 = v25 - CGRectGetWidth(v36);
      [*(v2 + v21) contentInset];
      v28 = v26 + v27;
      if (v26 + v27 >= v20)
      {
        v28 = v20;
      }

      if (v28 < v23)
      {
        v29 = v23;
      }

      else
      {
        v29 = v28;
      }

      v31 = *(v2 + v21);
      [v31 contentOffset];
      [v31 setContentOffset:animated animated:v29];
    }
  }
}

double SegmentedTabControl.visibleBounds.getter(uint64_t a1)
{
  v2 = SegmentedTabControl.scrollView.getter();
  [v2 contentOffset];
  v4 = v3;

  v5 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView;
  [*(v1 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView) contentInset];
  v7 = v4 + v6;
  [*(v1 + v5) contentOffset];
  [*(v1 + v5) contentInset];
  [*(v1 + v5) bounds];
  CGRectGetWidth(v9);
  [*(v1 + v5) contentInset];
  [*(v1 + v5) contentInset];
  [*(v1 + v5) bounds];
  CGRectGetHeight(v10);
  [*(v1 + v5) contentInset];
  [*(v1 + v5) contentInset];
  return v7;
}

id SegmentedTabControl.scrollView.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView;
  v2 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) init];
    [v4 setShowsHorizontalScrollIndicator_];
    [v4 setShowsVerticalScrollIndicator_];
    [v4 setAlwaysBounceHorizontal_];
    [v4 setContentInsetAdjustmentBehavior_];
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 clearColor];
    [v6 setBackgroundColor_];

    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

char *SegmentedTabControl.segmentedControl.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl;
  v2 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl);
  }

  else
  {
    type metadata accessor for GesturePassthroughSegmentedControl();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setApportionsSegmentWidthsByContent_];
    *&v4[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_delegate + 8] = &protocol witness table for SegmentedTabControl;
    swift_unknownObjectWeakAssign();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id SegmentedTabControl.setupCenteredLayout(segmentedIntrinsicSize:)(double a1)
{
  [v1 bounds];
  v3 = (CGRectGetWidth(v14) - a1) * 0.5;
  v4 = *&v1[OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_styleGuide + 8];
  [v1 bounds];
  v5 = CGRectGetHeight(v15) - (v4 + v4);
  v6 = SegmentedTabControl.segmentedControl.getter();
  [v6 setFrame_];

  v7 = SegmentedTabControl.scrollView.getter();
  [v1 bounds];
  [v7 setContentSize_];

  v10 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView;
  [*&v1[OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView] setContentInset_];
  v11 = *&v1[v10];

  return [v11 setScrollEnabled_];
}

id SegmentedTabControl.setupScrollableLayout(segmentedIntrinsicSize:)(double a1)
{
  v3 = &v1[OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_styleGuide];
  v4 = *&v1[OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_styleGuide + 8];
  [v1 bounds];
  v5 = CGRectGetHeight(v14) - (v4 + v4);
  v6 = SegmentedTabControl.segmentedControl.getter();
  [v6 setFrame_];

  v7 = SegmentedTabControl.scrollView.getter();
  [v1 bounds];
  [v7 setContentSize_];

  v8 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView;
  v9 = *v3;
  [*&v1[OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView] setContentInset_];
  [*&v1[v8] setScrollEnabled_];
  result = [*&v1[v8] contentOffset];
  if (v11 == 0.0)
  {
    v12 = *&v1[v8];

    return [v12 setContentOffset_];
  }

  return result;
}

void SegmentedTabControl.setupSegmentedControl()()
{
  v1 = SegmentedTabControl.scrollView.getter();
  [v0 addSubview_];

  v2 = *&v0[OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView];
  v3 = SegmentedTabControl.segmentedControl.getter();
  [v2 addSubview_];

  v36 = v0;
  v34 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_viewModel;
  v4 = *(**&v0[OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_viewModel] + 136);

  v6 = v4(v5);

  v37 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl;
  v38 = v6;
  v35 = *(v6 + 16);
  if (v35)
  {
    v7 = 0;
    v8 = v6 + 64;
    while (v7 < v38[2])
    {
      v9 = *&v36[v37];
      v10 = *(**(v8 - 16) + 96);

      v11 = v9;
      v10();
      v13 = v12;
      ObjectType = swift_getObjectType();
      v15 = (*(v13 + 32))(ObjectType, v13);
      v17 = v16;
      swift_unknownObjectRelease();
      v18 = MEMORY[0x193AEA8E0](v15, v17);

      [v11 insertSegmentWithTitle:v18 atIndex:v7 animated:0];

      v8 += 40;
      if (v35 == ++v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v19 = *(**&v36[v34] + 184);

    v19(&v40, v20);

    v21 = v41;
    if (v41)
    {
      v22 = v40;
      v24 = v42;
      v23 = v43;
      v25 = v44;
      v45[0] = v40;
      v45[1] = v41;
      v45[2] = v42;
      v45[3] = v43;
      v45[4] = v44;
      v26 = *(**&v36[v34] + 136);

      v28 = v26(v27);

      v30 = specialized Collection<>.firstIndex(of:)(v45, v28, v29);
      v32 = v31;

      if ((v32 & 1) == 0)
      {
        [*&v36[v37] setSelectedSegmentIndex_];
      }

      outlined consume of DetailsTab?(v22, v21, v24, v23, v25);
    }

    [*&v36[v37] addTarget:v36 action:sel_segmentedControlValueChanged forControlEvents:4096];
    v33 = *&v36[v37];
    v39 = MEMORY[0x193AEA8E0](0xD000000000000017, 0x80000001901FC800);
    [v33 setAccessibilityIdentifier_];
  }
}

void SegmentedTabControl.calculateScrollOffset(segmentFrame:visibleBounds:currentOffset:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinX = CGRectGetMinX(*&a1);
  v25.origin.x = a5;
  v25.origin.y = a6;
  v25.size.width = a7;
  v25.size.height = a8;
  v17 = CGRectGetMinX(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v22 = a4;
  v26.size.width = a3;
  v26.size.height = a4;
  MaxX = CGRectGetMaxX(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  v19 = CGRectGetMaxX(v27);
  if (MinX < v17 || v19 < MaxX)
  {
    v28.origin.x = a1;
    v28.origin.y = a2;
    v28.size.width = a3;
    v28.size.height = v22;
    CGRectGetMinX(v28);
    v21 = SegmentedTabControl.scrollView.getter();
    [v21 contentInset];

    v29.origin.x = a1;
    v29.origin.y = a2;
    v29.size.width = a3;
    v29.size.height = v22;
    CGRectGetMaxX(v29);
    v30.origin.x = a5;
    v30.origin.y = a6;
    v30.size.width = a7;
    v30.size.height = a8;
    CGRectGetWidth(v30);
    [*&v8[OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView] contentInset];
    [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];
  }
}

void SegmentedTabControl.frameForSegment(at:)(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0uLL;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v34 = 1;
    v35 = 0uLL;
    goto LABEL_15;
  }

  v11 = SegmentedTabControl.segmentedControl.getter();
  v12 = [v11 numberOfSegments];

  if (v12 <= a1)
  {
LABEL_14:
    v34 = 1;
    v35 = 0uLL;
    v10 = 0uLL;
    goto LABEL_15;
  }

  *&v44 = v7;
  v13 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl;
  v14 = *(v3 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl);
  v15 = [v14 numberOfSegments];
  v16 = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];

  if (v16 == 1)
  {
    v17 = v15 - 1;
    if (__OFSUB__(v15, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    v18 = __OFSUB__(v17, a1);
    a1 = &v17[-a1];
    if (v18)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }

  v19 = *(v3 + v13);
  GesturePassthroughSegmentedControl.cleanSegmentFrames()();
  v21 = v20;

  v22 = *(v21 + 16);
  if (v22 != [*(v3 + v13) numberOfSegments])
  {

    v36 = Logger.segmentedTabControl.unsafeMutableAddressor();
    v37 = v44;
    (*(v44 + 16))(v9, v36, v6);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_190119000, v38, v39, "Not able to perform auto scroll", v40, 2u);
      MEMORY[0x193AEBB30](v40, -1, -1);
    }

    (*(v37 + 8))(v9, v6);
    goto LABEL_14;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a1 < *(v21 + 16))
  {
    v23 = (v21 + 32 * a1);
    v24 = v23[4];
    v25 = v23[5];
    v26 = v23[6];
    v27 = v23[7];

    v28 = *(v3 + v13);
    v29 = SegmentedTabControl.scrollView.getter();
    [v28 convertRect:v29 toCoordinateSpace:{v24, v25, v26, v27}];
    v42 = v30;
    v43 = v31;
    v41 = v32;
    v44 = v33;

    *&v35 = v41;
    *&v10 = v42;
    v34 = 0;
    *(&v10 + 1) = v43;
    *(&v35 + 1) = v44;
LABEL_15:
    *a2 = v10;
    *(a2 + 16) = v35;
    *(a2 + 32) = v34;
    return;
  }

LABEL_19:
  __break(1u);
}

double closure #1 in SegmentedTabControl.observeViewModel()(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(**(a1 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_viewModel) + 184);

  v2(v5, v3);

  outlined consume of DetailsTab?(v5[0], v5[1], v5[2], v5[3], v5[4]);

  return result;
}

void closure #2 in implicit closure #1 in SegmentedTabControl.observeViewModel()(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in closure #2 in implicit closure #1 in SegmentedTabControl.observeViewModel(), v9);
  }
}

uint64_t closure #1 in closure #2 in implicit closure #1 in SegmentedTabControl.observeViewModel()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in implicit closure #1 in SegmentedTabControl.observeViewModel(), v6, v5);
}

uint64_t closure #1 in closure #2 in implicit closure #1 in SegmentedTabControl.observeViewModel()()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x88))();
    *(swift_task_alloc() + 16) = v2;
    *(swift_task_alloc() + 16) = v2;
    withObservationTracking<A>(_:onChange:)();
  }

  v3 = *(v0 + 8);

  return v3();
}

void SegmentedTabControl.segmentedControlValueChanged()()
{
  v1 = v0;
  v2 = SegmentedTabControl.segmentedControl.getter();
  v3 = [v2 selectedSegmentIndex];

  v4 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_viewModel;
  v5 = *(**(v1 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_viewModel) + 136);

  v7 = v5(v6);

  v8 = *(v7 + 16);

  if (v3 >= v8)
  {
    return;
  }

  v9 = *(v1 + v4);
  v28 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl;
  v10 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl);

  v11 = [v10 selectedSegmentIndex];
  v12 = (*(*v9 + 136))();

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v11 >= *(v12 + 16))
  {
LABEL_15:
    __break(1u);
    return;
  }

  v13 = (v12 + 40 * v11);
  v15 = v13[4];
  v14 = v13[5];
  v16 = v13[6];
  v17 = v13[7];
  v18 = v13[8];

  v19 = *(v1 + v4);
  v29 = v15;
  v30 = v14;
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v20 = *(*v19 + 192);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();

  v20(&v29);

  v21 = *(v1 + v4);
  v22 = *(v21 + 64);
  if (v22)
  {
    v23 = *(v21 + 72);
    v29 = v15;
    v30 = v14;
    v31 = v16;
    v32 = v17;
    v33 = v18;

    v22(&v29);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed DetailsTab?) -> ())?(v22, v23);
    outlined consume of DetailsTab?(v29, v30, v31, v32, v33);
  }

  else
  {
  }

  v24 = SegmentedTabControl.segmentedControl.getter();
  v25 = [v24 selectedSegmentIndex];

  if (v25 != -1)
  {
    v26 = [*(v1 + v28) selectedSegmentIndex];
    if (v26 < [*(v1 + v28) numberOfSegments])
    {
      v27 = [*(v1 + v28) selectedSegmentIndex];
      (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))(v27, 1);
    }
  }
}

void @objc SegmentedTabControl.layoutSubviews()(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

id SegmentedTabControl.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

Swift::Bool __swiftcall SegmentedTabControl.scrollGestureShouldBegin(_:)(UIGestureRecognizer a1)
{
  _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v1 = SegmentedTabControl.scrollView.getter();
  v2 = [v1 panGestureRecognizer];

  v3 = static NSObject.== infix(_:_:)();
  return v3 & 1;
}

uint64_t protocol witness for GesturePassthroughSegmentedControlDelegate.scrollGestureShouldBegin(_:) in conformance SegmentedTabControl(uint64_t a1)
{
  _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v1 = SegmentedTabControl.scrollView.getter();
  v2 = [v1 panGestureRecognizer];

  v3 = static NSObject.== infix(_:_:)();
  return v3 & 1;
}

void GesturePassthroughSegmentedControl.touchesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for UITouch, 0x1E69DD190);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for GesturePassthroughSegmentedControl();
  objc_msgSendSuper2(&v15, sel_touchesBegan_withEvent_, isa, a2);

  v6 = specialized Collection.first.getter(a1);
  if (v6)
  {
    v7 = v6;
    GesturePassthroughSegmentedControl.cleanSegmentFrames()();
    *&v2[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_cachedSegmentFrames] = v8;

    GesturePassthroughSegmentedControl.segmentIndex(for:)(v7);
    v10 = v9;
    if (v11)
    {

      v12 = &v2[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_lastTouchedSegmentIndex];
      *v12 = v10;
      v12[8] = 1;
      v2[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_pressStartedOnSelectedSegment] = 0;
    }

    else
    {
      v13 = &v2[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_lastTouchedSegmentIndex];
      *v13 = v9;
      v13[8] = 0;
      v14 = [v2 selectedSegmentIndex];

      v2[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_pressStartedOnSelectedSegment] = v10 == v14;
    }
  }
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = MEMORY[0x193AEAF20](v3, v5, v6, v7);
    outlined consume of Set<UITouch>.Index._Variant(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      outlined consume of Set<UITouch>.Index._Variant(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  specialized Set.subscript.getter(v3, v5, v2 != 0, a1);
  v12 = v11;
  outlined consume of Set<UITouch>.Index._Variant(v3, v5, v2 != 0);
  return v12;
}

void GesturePassthroughSegmentedControl.touchesMoved(_:with:)(uint64_t a1, uint64_t a2)
{
  _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for UITouch, 0x1E69DD190);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for GesturePassthroughSegmentedControl();
  objc_msgSendSuper2(&v15, sel_touchesMoved_withEvent_, isa, a2);

  if ((v2[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_pressStartedOnSelectedSegment] & 1) == 0)
  {
    v6 = specialized Collection.first.getter(a1);
    if (v6)
    {
      v7 = v6;
      GesturePassthroughSegmentedControl.segmentIndex(for:)(v6);
      if (v9)
      {
      }

      else
      {
        v10 = v8;
        v11 = &v2[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_lastTouchedSegmentIndex];
        if (v2[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_lastTouchedSegmentIndex + 8] == 1 || *v11 == v8 || (v12 = &v2[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_delegate], !swift_unknownObjectWeakLoadStrong()))
        {
        }

        else
        {
          v13 = *(v12 + 1);
          ObjectType = swift_getObjectType();
          (*(v13 + 16))(v10, 1, ObjectType, v13);

          swift_unknownObjectRelease();
        }

        *v11 = v10;
        v11[8] = 0;
      }
    }
  }
}

uint64_t @objc GesturePassthroughSegmentedControl.touchesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t, void *))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for UITouch, 0x1E69DD190);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a4;
  v11 = a1;
  a6(v9, a4);
}

uint64_t @objc GesturePassthroughSegmentedControl.touchesEnded(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, SEL *a6)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for UITouch, 0x1E69DD190);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v14.receiver = v10;
  v14.super_class = type metadata accessor for GesturePassthroughSegmentedControl();
  objc_msgSendSuper2(&v14, *a6, isa, v9);

  v12 = &v10[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_lastTouchedSegmentIndex];
  *v12 = 0;
  v12[8] = 1;
  v10[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_pressStartedOnSelectedSegment] = 0;
  *&v10[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_cachedSegmentFrames] = 0;
}

void GesturePassthroughSegmentedControl.segmentIndex(for:)(void *a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_cachedSegmentFrames];
  if (v3)
  {
    v5 = (v3 + 56);

    [a1 locationInView_];
    v7 = v6;
    v9 = v8;
    v10 = *(v3 + 16);

    for (i = 0; ; ++i)
    {
      if (v10 == i)
      {
        swift_bridgeObjectRelease_n();
        return;
      }

      if (i >= *(v3 + 16))
      {
        break;
      }

      v13 = *(v5 - 3);
      v14 = *(v5 - 2);
      v15 = *(v5 - 1);
      v16 = *v5;
      type metadata accessor for MainActor();
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v18.origin.x = v13;
      v18.origin.y = v14;
      v18.size.width = v15;
      v18.size.height = v16;
      v17.x = v7;
      v17.y = v9;
      v12 = CGRectContainsPoint(v18, v17);

      v5 += 4;
      if (v12)
      {

        [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];
        return;
      }
    }

    __break(1u);
  }
}

void GesturePassthroughSegmentedControl.cleanSegmentFrames()()
{
  v1 = [v0 subviews];
  _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufC12CoreGraphics7CGFloatV_SaySo6UIViewCGTt1g50136_s20CommunicationDetails34GesturePassthroughSegmentedControl33_14FE08E8F5222DE52E4C6E817780A66FLLC18cleanSegmentFramesSaySo6CGRectVGyF12d9Graphics7f4VSo6G6CXEfU_Tf1nc_nTf4g_n(v2);

  v4 = (v3 + 8);
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v3[8];
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v32 = MEMORY[0x1E69E7CC0];
  v33 = v8;
  v34 = (v3 + 8);
  v35 = v3;
  if (!v7)
  {
LABEL_8:
    while (1)
    {
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_50;
      }

      if (v14 >= v8)
      {

        v38 = v32;

        specialized MutableCollection<>.sort(by:)(&v38);

        return;
      }

      v7 = v4[v14];
      ++v9;
      if (v7)
      {
        v9 = v14;
        goto LABEL_12;
      }
    }
  }

  while (1)
  {
LABEL_12:
    v36 = v7;
    v15 = *(v3[7] + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));

    type metadata accessor for MainActor();
    static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v15 >> 62)
    {
      break;
    }

    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_16;
    }

LABEL_5:

    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
LABEL_6:
    v7 = (v36 - 1) & v36;
    v39 = v16 == 0;

    if (v16)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
      }

      v29 = *(v32 + 2);
      v28 = *(v32 + 3);
      if (v29 >= v28 >> 1)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v32);
      }

      *(v32 + 2) = v29 + 1;
      v30 = &v32[32 * v29];
      *(v30 + 4) = v10;
      *(v30 + 5) = v11;
      *(v30 + 6) = v12;
      *(v30 + 7) = v13;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    else if (!v7)
    {
      goto LABEL_8;
    }
  }

  if (v15 < 0)
  {
    v31 = v15;
  }

  else
  {
    v31 = v15 & 0xFFFFFFFFFFFFFF8;
  }

  v16 = MEMORY[0x193AEB0F0](v31);
  if (!v16)
  {
    goto LABEL_5;
  }

LABEL_16:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x193AEB000](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_53;
    }

    v17 = *(v15 + 32);
  }

  v37 = v17;
  if (v16 == 1)
  {
LABEL_20:
    v18 = v37;
LABEL_21:
    [v18 frame];
    v10 = v19;
    v11 = v20;
    v12 = v21;
    v13 = v22;

    v4 = v34;
    v3 = v35;
    v8 = v33;
    goto LABEL_6;
  }

  v23 = 1;
  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x193AEB000](v23, v15);
    }

    else
    {
      if ((v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_51;
      }

      if (v23 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_52;
      }

      v24 = *(v15 + 8 * v23 + 32);
    }

    v18 = v24;
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v4 = &off_1E72E3000;
    [v18 frame];
    Width = CGRectGetWidth(v40);
    [v37 frame];
    v27 = CGRectGetWidth(v41);

    if (Width < v27)
    {

      v37 = v18;
      ++v23;
      if (v25 == v16)
      {
        goto LABEL_21;
      }
    }

    else
    {

      ++v23;
      if (v25 == v16)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);

  __break(1u);
}

id GesturePassthroughSegmentedControl.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_lastTouchedSegmentIndex];
  *v3 = 0;
  v3[8] = 1;
  v1[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_pressStartedOnSelectedSegment] = 0;
  *&v1[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_cachedSegmentFrames] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for GesturePassthroughSegmentedControl();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id GesturePassthroughSegmentedControl.init(items:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_lastTouchedSegmentIndex];
  *v3 = 0;
  v3[8] = 1;
  v1[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_pressStartedOnSelectedSegment] = 0;
  *&v1[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_cachedSegmentFrames] = 0;
  if (a1)
  {
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for GesturePassthroughSegmentedControl();
  v5 = objc_msgSendSuper2(&v7, sel_initWithItems_, v4.super.isa);

  return v5;
}

id SegmentedTabControl.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0__0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(double a1)
{
  v3 = a1 == 0.0;
  v4 = 0.0;
  if (!v3)
  {
    v4 = a1;
  }

  v5 = MEMORY[0x193AEB240](*(v1 + 40), *&v4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v5, a1);
}

void specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = v2 + 32;
  v4[1] = v3;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v4);
  *a1 = v2;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for CGRect(0);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;

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
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    type metadata accessor for MainActor();
    v7 = v6 + 32 * v4 - 32;
    v8 = a1 - v4;
LABEL_5:
    v9 = (v6 + 32 * v4);
    v11 = *v9;
    v10 = v9[1];
    v21 = v8;
    v22 = v7;
    while (1)
    {
      v23 = v11;
      v24 = v10;
      v12 = *v7;
      v13 = *(v7 + 8);
      v14 = *(v7 + 16);
      v15 = *(v7 + 24);
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      *&v25.origin.x = v23;
      *&v25.size.width = v24;
      v25.origin.y = *(&v23 + 1);
      v25.size.height = *(&v24 + 1);
      MinX = CGRectGetMinX(v25);
      v26.origin.x = v12;
      v26.origin.y = v13;
      v26.size.width = v14;
      v26.size.height = v15;
      v17 = CGRectGetMinX(v26);

      if (MinX >= v17)
      {
LABEL_4:
        ++v4;
        v7 = v22 + 32;
        v8 = v21 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = *(v7 + 32);
      v10 = *(v7 + 48);
      v18 = *(v7 + 16);
      *(v7 + 32) = *v7;
      *(v7 + 48) = v18;
      *v7 = v11;
      *(v7 + 16) = v10;
      v7 -= 32;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = *(a3 + 1);
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    v111 = *(v9 + 2);
    if (v111 >= 2)
    {
      while (*v6)
      {
        v112 = *&v9[16 * v111];
        v113 = *&v9[16 * v111 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 32 * v112), (*v6 + 32 * *&v9[16 * v111 + 16]), (*v6 + 32 * v113), v8);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v113 < v112)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v111 - 2 >= *(v9 + 2))
        {
          goto LABEL_120;
        }

        v114 = &v9[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        specialized Array.remove(at:)(v111 - 1);
        v111 = *(v9 + 2);
        if (v111 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v125 = v7;
      v116 = v9;
      v118 = v5;
      v11 = *v6;
      v12 = *v6 + 32 * v8;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      v17 = *v6 + 32 * v10;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      v5 = type metadata accessor for MainActor();
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v22;
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v131.origin.x = v13;
      v131.origin.y = v14;
      v131.size.width = v15;
      v131.size.height = v16;
      MinX = CGRectGetMinX(v131);
      v132.origin.x = v18;
      v132.origin.y = v19;
      v132.size.width = v20;
      v132.size.height = v21;
      v127 = CGRectGetMinX(v132);

      v23 = 0;
      v24 = v10 + 2;
      v120 = v10;
      v6 = (32 * v10);
      v25 = v11 + 32 * v10 + 48;
      v26 = v6;
      do
      {
        v29 = v23;
        v9 = v26;
        v30 = v24;
        if (v24 >= v125)
        {
          break;
        }

        v31 = *(v25 + 16);
        v32 = *(v25 + 24);
        v33 = *(v25 + 32);
        v34 = *(v25 + 40);
        v35 = *(v25 - 16);
        v36 = *(v25 - 8);
        v37 = *v25;
        v38 = *(v25 + 8);
        static MainActor.shared.getter();
        v8 = dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v5 = MinX < v127;
        v133.origin.x = v31;
        v133.origin.y = v32;
        v133.size.width = v33;
        v133.size.height = v34;
        v27 = CGRectGetMinX(v133);
        v134.origin.x = v35;
        v134.origin.y = v36;
        v134.size.width = v37;
        v134.size.height = v38;
        v28 = CGRectGetMinX(v134);

        v24 = v30 + 1;
        v25 += 32;
        v23 = v29 + 1;
        v26 = v9 + 32;
      }

      while (MinX < v127 != v27 >= v28);
      if (MinX >= v127)
      {
        v9 = v116;
        v5 = v118;
        v6 = a3;
        v8 = v30;
        v10 = v120;
      }

      else
      {
        v10 = v120;
        if (v30 < v120)
        {
          goto LABEL_123;
        }

        v8 = v30;
        if (v120 < v30)
        {
          v39 = 0;
          do
          {
            if (v120 + v39 != v120 + v29 + 1)
            {
              v45 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v40 = &v6[v45];
              v41 = &v9[v45];
              v42 = *v40;
              v43 = *(v40 + 1);
              v44 = *(v41 + 3);
              *v40 = *(v41 + 2);
              *(v40 + 1) = v44;
              *(v41 + 2) = v42;
              *(v41 + 3) = v43;
            }

            --v29;
            ++v39;
            v9 -= 32;
            v6 += 32;
          }

          while (v39 + v120 < v120 + v29 + 2);
        }

        v9 = v116;
        v5 = v118;
        v6 = a3;
      }
    }

    v46 = *(v6 + 1);
    if (v8 < v46)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_122;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_124;
        }

        if (v10 + a4 >= v46)
        {
          v47 = *(v6 + 1);
        }

        else
        {
          v47 = v10 + a4;
        }

        if (v47 < v10)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v8 != v47)
        {
          break;
        }
      }
    }

LABEL_43:
    if (v8 < v10)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v65 = *(v9 + 2);
    v64 = *(v9 + 3);
    v66 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v9);
    }

    *(v9 + 2) = v66;
    v67 = &v9[16 * v65];
    *(v67 + 4) = v10;
    *(v67 + 5) = v8;
    v68 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v65)
    {
      while (1)
      {
        v69 = v66 - 1;
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v70 = *(v9 + 4);
          v71 = *(v9 + 5);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_63:
          if (v73)
          {
            goto LABEL_110;
          }

          v86 = &v9[16 * v66];
          v88 = *v86;
          v87 = *(v86 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_113;
          }

          v92 = &v9[16 * v69 + 32];
          v94 = *v92;
          v93 = *(v92 + 1);
          v80 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v80)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v90, v95))
          {
            goto LABEL_117;
          }

          if (v90 + v95 >= v72)
          {
            if (v72 < v95)
            {
              v69 = v66 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v96 = &v9[16 * v66];
        v98 = *v96;
        v97 = *(v96 + 1);
        v80 = __OFSUB__(v97, v98);
        v90 = v97 - v98;
        v91 = v80;
LABEL_77:
        if (v91)
        {
          goto LABEL_112;
        }

        v99 = &v9[16 * v69];
        v101 = *(v99 + 4);
        v100 = *(v99 + 5);
        v80 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v80)
        {
          goto LABEL_115;
        }

        if (v102 < v90)
        {
          goto LABEL_3;
        }

LABEL_84:
        v107 = v69 - 1;
        if (v69 - 1 >= v66)
        {
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
          goto LABEL_125;
        }

        if (!*v6)
        {
          goto LABEL_128;
        }

        v108 = *&v9[16 * v107 + 32];
        v109 = *&v9[16 * v69 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 32 * v108), (*v6 + 32 * *&v9[16 * v69 + 32]), (*v6 + 32 * v109), v68);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v109 < v108)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v107 >= *(v9 + 2))
        {
          goto LABEL_107;
        }

        v110 = &v9[16 * v107];
        *(v110 + 4) = v108;
        *(v110 + 5) = v109;
        specialized Array.remove(at:)(v69);
        v66 = *(v9 + 2);
        if (v66 <= 1)
        {
          goto LABEL_3;
        }
      }

      v74 = &v9[16 * v66 + 32];
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_108;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_109;
      }

      v81 = &v9[16 * v66];
      v83 = *v81;
      v82 = *(v81 + 1);
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_111;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_114;
      }

      if (v85 >= v77)
      {
        v103 = &v9[16 * v69 + 32];
        v105 = *v103;
        v104 = *(v103 + 1);
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_118;
        }

        if (v72 < v106)
        {
          v69 = v66 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v7 = *(v6 + 1);
    if (v8 >= v7)
    {
      goto LABEL_94;
    }
  }

  v117 = v9;
  v119 = v5;
  v48 = *v6;
  type metadata accessor for MainActor();
  v49 = v48 + 32 * v8 - 32;
  v121 = v10;
  v50 = v10 - v8;
  v124 = v47;
LABEL_34:
  v126 = v8;
  v51 = (v48 + 32 * v8);
  v53 = *v51;
  v52 = v51[1];
  v54 = v50;
  v55 = v49;
  while (1)
  {
    v128 = v53;
    v130 = v52;
    v56 = *v55;
    v57 = *(v55 + 8);
    v58 = *(v55 + 16);
    v59 = *(v55 + 24);
    static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    *&v135.origin.x = v128;
    *&v135.size.width = v130;
    v135.origin.y = *(&v128 + 1);
    v135.size.height = *(&v130 + 1);
    v60 = CGRectGetMinX(v135);
    v136.origin.x = v56;
    v136.origin.y = v57;
    v136.size.width = v58;
    v136.size.height = v59;
    v61 = CGRectGetMinX(v136);

    if (v60 >= v61)
    {
LABEL_33:
      ++v8;
      v49 += 32;
      --v50;
      if (v126 + 1 != v124)
      {
        goto LABEL_34;
      }

      v8 = v124;
      v9 = v117;
      v5 = v119;
      v6 = a3;
      v10 = v121;
      goto LABEL_43;
    }

    if (!v48)
    {
      break;
    }

    v53 = *(v55 + 32);
    v52 = *(v55 + 48);
    v62 = *(v55 + 16);
    *(v55 + 32) = *v55;
    *(v55 + 48) = v62;
    *v55 = v53;
    *(v55 + 16) = v52;
    v55 -= 32;
    if (__CFADD__(v54++, 1))
    {
      goto LABEL_33;
    }
  }

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
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, char *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 >= v12 >> 5)
  {
    if (a4 != __src || &__src[4 * v13] <= a4)
    {
      memmove(a4, __src, 32 * v13);
    }

    v14 = &v4[4 * v13];
    if (v11 >= 32 && v6 > v7)
    {
      type metadata accessor for MainActor();
LABEL_29:
      v43 = v6 - 4;
      v5 -= 32;
      v28 = v14;
      do
      {
        v29 = *(v28 - 32);
        v30 = *(v28 - 24);
        v28 -= 32;
        v31 = *(v28 + 16);
        v32 = *(v28 + 24);
        v33 = *(v6 - 4);
        v34 = *(v6 - 3);
        v35 = *(v6 - 2);
        v36 = *(v6 - 1);
        static MainActor.shared.getter();
        dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v46.origin.x = v29;
        v46.origin.y = v30;
        v46.size.width = v31;
        v46.size.height = v32;
        MinX = CGRectGetMinX(v46);
        v47.origin.x = v33;
        v47.origin.y = v34;
        v47.size.width = v35;
        v47.size.height = v36;
        v38 = CGRectGetMinX(v47);

        v39 = (v5 + 32);
        if (MinX < v38)
        {
          if (v39 != v6)
          {
            v41 = *(v6 - 1);
            *v5 = *v43;
            *(v5 + 1) = v41;
          }

          if (v14 <= v4 || (v6 -= 4, v43 <= v7))
          {
            v6 = v43;
            goto LABEL_42;
          }

          goto LABEL_29;
        }

        if (v39 != v14)
        {
          v40 = *(v28 + 16);
          *v5 = *v28;
          *(v5 + 1) = v40;
        }

        v5 -= 32;
        v14 = v28;
      }

      while (v28 > v4);
      v14 = v28;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 >= 32 && v6 < v5)
    {
      type metadata accessor for MainActor();
      while (1)
      {
        v15 = *v6;
        v16 = v6[1];
        v17 = v6[2];
        v18 = v6[3];
        v19 = *v4;
        v20 = v4[1];
        v21 = v4[2];
        v22 = v4[3];
        static MainActor.shared.getter();
        dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v44.origin.x = v15;
        v44.origin.y = v16;
        v44.size.width = v17;
        v44.size.height = v18;
        v23 = CGRectGetMinX(v44);
        v45.origin.x = v19;
        v45.origin.y = v20;
        v45.size.width = v21;
        v45.size.height = v22;
        v24 = CGRectGetMinX(v45);

        if (v23 >= v24)
        {
          break;
        }

        v25 = v6;
        v26 = v7 == v6;
        v6 += 4;
        if (!v26)
        {
          goto LABEL_19;
        }

LABEL_20:
        v7 += 4;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_22;
        }
      }

      v25 = v4;
      v26 = v7 == v4;
      v4 += 4;
      if (v26)
      {
        goto LABEL_20;
      }

LABEL_19:
      v27 = *(v25 + 1);
      *v7 = *v25;
      *(v7 + 1) = v27;
      goto LABEL_20;
    }

LABEL_22:
    v6 = v7;
  }

LABEL_42:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x193AEAF50](a1, a2, v7);
      _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for UITouch, 0x1E69DD190);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for UITouch, 0x1E69DD190);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v15;
    v8 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}