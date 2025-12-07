void specialized CAFUICollectionViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_emptyView) = 0;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v1 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_cancellables) = v1;
  v2 = v0 + OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_itemSize;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  v3 = v0 + OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_collectionViewSize;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v4 = v0 + OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_minimumInteritemSpacing;
  *v4 = 0;
  *(v4 + 8) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized CAFUICollectionViewController.collectionView(_:didSelectItemAt:)()
{
  _StringGuts.grow(_:)(25);

  type metadata accessor for IndexPath();
  lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9B38]);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x245D0D240](v0);

  specialized static CAFUILogger.default(_:function:file:line:)(0xD000000000000017, 0x800000024242BA30, 0xD000000000000022, 0x800000024242BA50, 440);

  v1 = IndexPath.row.getter();

  CAFUICollectionViewController.toggle(index:)(v1);
}

void specialized CAFUICollectionViewController.calculateItemSizeAndInterItemSpacing(layout:)()
{
  v1 = &v0[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_itemSize];
  if (v0[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_itemSize + 16])
  {
    goto LABEL_8;
  }

  v2 = *&v0[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_collectionViewSize];
  v3 = *&v0[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_collectionViewSize + 8];
  v4 = v0[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_collectionViewSize + 16];
  v5 = [v0 collectionView];
  if (!v5)
  {
LABEL_54:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [v5 safeAreaLayoutGuide];

  [v7 layoutFrame];
  v9 = v8;
  v11 = v10;

  if ((v4 & 1) != 0 || (v2 == v9 ? (v12 = v3 == v11) : (v12 = 0), !v12))
  {
LABEL_8:
    v13 = [v0 collectionView];
    if (!v13)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v14 = v13;
    v15 = [v13 safeAreaLayoutGuide];

    [v15 layoutFrame];
    v17 = v16;
    v19 = v18;

    v20 = &v0[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_collectionViewSize];
    *v20 = v17;
    *(v20 + 1) = v19;
    v20[16] = 0;
    v21 = [v0 collectionView];
    if (!v21)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v22 = v21;
    v23 = [v21 safeAreaLayoutGuide];

    [v23 layoutFrame];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v68.origin.x = v25;
    v68.origin.y = v27;
    v68.size.width = v29;
    v68.size.height = v31;
    Height = CGRectGetHeight(v68);
    v33 = [v0 collectionView];
    if (!v33)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v34 = v33;
    v35 = [v33 safeAreaLayoutGuide];

    [v35 layoutFrame];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v69.origin.x = v37;
    v69.origin.y = v39;
    v69.size.width = v41;
    v69.size.height = v43;
    Width = CGRectGetWidth(v69);
    v45 = Width + -90.0;
    v46 = Width / Height;
    v47 = (Height + -8.0 + -48.0 + -8.0) * 0.5;
    v48 = v47 * v46;
    if (v47 * v46 >= v45)
    {
      *v1 = v45;
      v1[1] = v45 / v46 + 24.0;
      *(v1 + 16) = 0;
      goto LABEL_23;
    }

    *v1 = v48;
    v1[1] = v47 + 24.0;
    *(v1 + 16) = 0;
    v49 = v45 / v48;
    if (COERCE__INT64(fabs(v45 / v48)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v49 > -9.22337204e18)
    {
      if (v49 < 9.22337204e18)
      {
        v50 = v49;
        v51 = OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_items;
        swift_beginAccess();
        v52 = *&v0[v51];
        v53 = *(v52 + 16);
        if (v53 >= v50)
        {
          v54 = v50;
        }

        else
        {
          v54 = *(v52 + 16);
        }

        if (v54 >= 2)
        {
          v55 = v45 - v48 * v54;
          v56 = v54 - 1;
          v57 = (v54 - 1);
          v58 = v55 / v57;
          if (v55 / v57 < 10.0)
          {
            v59 = v54 - 2;
            if (!v59)
            {
              v60 = &v0[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_minimumInteritemSpacing];
              *&v0[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_minimumInteritemSpacing] = 0x4024000000000000;
LABEL_24:
              v60[8] = 0;
              return;
            }

            v55 = v45 - v48 * v57;
            v58 = v55 / v59;
            v54 = v56;
          }

          if (v53 % v54)
          {
            v61 = v54 + ~(v53 % v54);
          }

          else
          {
            v61 = 0;
          }

          if (v53 % v54)
          {
            v62 = v53 / v54 + 1;
          }

          else
          {
            v62 = v53 / v54;
          }

          if (v54 >= 3)
          {
            v63 = v62 - 1;
            if (v61 >= (v62 - 1) && v62 >= 2)
            {
              do
              {
                v65 = v54--;
                if (v53 % v54)
                {
                  v66 = v54 + ~(v53 % v54);
                }

                else
                {
                  v66 = 0;
                }
              }

              while (v65 >= 4 && v66 >= v63);
              v55 = v45 - v48 * v54;
              v58 = v55 / (v54 - 1);
            }
          }

          v67 = (v55 + 45.0 + 45.0) / (v54 + 1);
          if (v67 <= 45.0)
          {
            v67 = v58;
          }

          v60 = &v0[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_minimumInteritemSpacing];
          *&v0[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_minimumInteritemSpacing] = v67;
          goto LABEL_24;
        }

LABEL_23:
        v60 = &v0[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_minimumInteritemSpacing];
        *&v0[OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_minimumInteritemSpacing] = 0;
        goto LABEL_24;
      }

      goto LABEL_50;
    }

    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }
}

uint64_t sub_2423D16F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5CAFUI29CAFUICollectionViewController_items;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t lazy protocol witness table accessor for type IndexPath and conformance IndexPath(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of NSRunLoop.SchedulerOptions?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2423D1A50()
{
  MEMORY[0x245D0E610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double CAFNotificationDataSources.__allocating_init(displayID:carManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  result = 0.0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  return result;
}

uint64_t CAFNotificationDataSources.init(displayID:carManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 136) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t CAFNotificationDataSources.currentCarPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo6CAFCarCSg_GMd, &_s7Combine9PublishedV9PublisherVySo6CAFCarCSg_GMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - v3;
  if (*(v0 + 40))
  {
    v5 = *(v0 + 40);
  }

  else
  {
    v6 = *(v0 + 32);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFCarManager, 0x277CF83A0);
    lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFCarManager and conformance CAFCarManager, &lazy cache variable for type metadata for CAFCarManager, 0x277CF83A0, MEMORY[0x277CF3878]);
    v7 = v6;
    v8 = v0;
    v9 = CAFObserved<>.observable.getter();

    dispatch thunk of CAFCarManagerObservable.$currentCar.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFCar, 0x277CF8398);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<CAFCar?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo6CAFCarCSg_GMd, &_s7Combine9PublishedV9PublisherVySo6CAFCarCSg_GMR, MEMORY[0x277CBCEC8]);
    v5 = Publisher.skipNil<A>()();
    (*(v2 + 8))(v4, v1);
    *(v8 + 40) = v5;
  }

  return v5;
}

uint64_t CAFNotificationDataSources.settingsNotification.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AA9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GAA03AnyF0VySo6CAFCarCs5NeverOGGMd, &_s7Combine10PublishersO7FlatMapVy_AA9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GAA03AnyF0VySo6CAFCarCs5NeverOGGMR);
  v36 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v27 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D0Vy_AC6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGAMy10CAFCombine0ijkL10ObservableCAQGGGAEy_AA9PublishedV0H0VySaySo0I13NotificationsCG_GAMySo6CAFCarCAQGGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D0Vy_AC6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGAMy10CAFCombine0ijkL10ObservableCAQGGGAEy_AA9PublishedV0H0VySaySo0I13NotificationsCG_GAMySo6CAFCarCAQGGGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AEy_AC6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGAMy10CAFCombine0ijkL10ObservableCAQGGGAGy_AA9PublishedV0H0VySaySo0I13NotificationsCG_GAMySo6CAFCarCAQGGGAC9MergeManyVy_AWGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AEy_AC6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGAMy10CAFCombine0ijkL10ObservableCAQGGGAGy_AA9PublishedV0H0VySaySo0I13NotificationsCG_GAMySo6CAFCarCAQGGGAC9MergeManyVy_AWGGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_ARy_AC6FilterVy_AIySo0klmN0CANGGAOGGATy_AA9PublishedV0I0VySaySo0K13NotificationsCG_GAIySo6CAFCarCANGGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_ARy_AC6FilterVy_AIySo0klmN0CANGGAOGGATy_AA9PublishedV0I0VySaySo0K13NotificationsCG_GAIySo6CAFCarCANGGGAPGGMR);
  MEMORY[0x28223BE20](v12);
  v16 = v27 - v15;
  if (*(v0 + 48))
  {
    v17 = *(v0 + 48);
  }

  else
  {
    v34 = v14;
    v35 = v0;
    v33 = v13;
    v18 = CAFNotificationDataSources.currentCarPublisher.getter();
    v28 = v1;
    v37 = v18;
    v27[1] = static Subscribers.Demand.unlimited.getter();
    v32 = v8;
    v27[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR);
    v29 = v4;
    v31 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GMR);
    v30 = v5;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR, MEMORY[0x277CBCD90]);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<[CAFAutomakerNotifications]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GMR, MEMORY[0x277CBCEC8]);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC3MapVy_AC6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGAKy10CAFCombine0hijK10ObservableCAOGGGMd, &_s7Combine10PublishersO7CollectVy_AC3MapVy_AC6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGAKy10CAFCombine0hijK10ObservableCAOGGGMR);
    v19 = MEMORY[0x277CBCCE0];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Published<[CAFAutomakerNotifications]>.Publisher, AnyPublisher<CAFCar, Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AA9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GAA03AnyF0VySo6CAFCarCs5NeverOGGMd, &_s7Combine10PublishersO7FlatMapVy_AA9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GAA03AnyF0VySo6CAFCarCs5NeverOGGMR, MEMORY[0x277CBCCE0]);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.Map<Publishers.Filter<AnyPublisher<CAFAutomakerSettingsRemoteNotification, Never>>, AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC3MapVy_AC6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGAKy10CAFCombine0hijK10ObservableCAOGGGMd, &_s7Combine10PublishersO7CollectVy_AC3MapVy_AC6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGAKy10CAFCombine0hijK10ObservableCAOGGGMR, MEMORY[0x277CBCCD0]);
    v20 = v28;
    Publisher<>.flatMap<A>(maxPublishers:_:)();
    (*(v36 + 8))(v3, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.Map<Publishers.Filter<AnyPublisher<CAFAutomakerSettingsRemoteNotification, Never>>, AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>>>, Publishers.FlatMap<Published<[CAFAutomakerNotifications]>.Publisher, AnyPublisher<CAFCar, Never>>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D0Vy_AC6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGAMy10CAFCombine0ijkL10ObservableCAQGGGAEy_AA9PublishedV0H0VySaySo0I13NotificationsCG_GAMySo6CAFCarCAQGGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D0Vy_AC6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGAMy10CAFCombine0ijkL10ObservableCAQGGGAEy_AA9PublishedV0H0VySaySo0I13NotificationsCG_GAMySo6CAFCarCAQGGGMR, v19);
    v21 = v29;
    Publisher.map<A>(_:)();
    (*(v30 + 8))(v7, v21);
    v22 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.Map<Publishers.Filter<AnyPublisher<CAFAutomakerSettingsRemoteNotification, Never>>, AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>>>, Publishers.FlatMap<Published<[CAFAutomakerNotifications]>.Publisher, AnyPublisher<CAFCar, Never>>>, Publishers.MergeMany<AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AEy_AC6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGAMy10CAFCombine0ijkL10ObservableCAQGGGAGy_AA9PublishedV0H0VySaySo0I13NotificationsCG_GAMySo6CAFCarCAQGGGAC9MergeManyVy_AWGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AEy_AC6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGAMy10CAFCombine0ijkL10ObservableCAQGGGAGy_AA9PublishedV0H0VySaySo0I13NotificationsCG_GAMySo6CAFCarCAQGGGAC9MergeManyVy_AWGGMR, MEMORY[0x277CBCC08]);
    v23 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGMR, MEMORY[0x277CBCD48]);
    v24 = v32;
    MEMORY[0x245D0C880](v32, v22, v23);
    (*(v31 + 8))(v11, v24);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.Map<Publishers.Filter<AnyPublisher<CAFAutomakerSettingsRemoteNotification, Never>>, AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>>>, Publishers.FlatMap<Published<[CAFAutomakerNotifications]>.Publisher, AnyPublisher<CAFCar, Never>>>, Publishers.MergeMany<AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_ARy_AC6FilterVy_AIySo0klmN0CANGGAOGGATy_AA9PublishedV0I0VySaySo0K13NotificationsCG_GAIySo6CAFCarCANGGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_ARy_AC6FilterVy_AIySo0klmN0CANGGAOGGATy_AA9PublishedV0I0VySaySo0K13NotificationsCG_GAIySo6CAFCarCANGGGAPGGMR, MEMORY[0x277CBCBB0]);
    v25 = v33;
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v34 + 8))(v16, v25);
    *(v35 + 48) = v17;
  }

  return v17;
}

void closure #1 in CAFNotificationDataSources.settingsNotification.getter()
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFCar, 0x277CF8398);
  lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFCar and conformance CAFCar, &lazy cache variable for type metadata for CAFCar, 0x277CF8398, MEMORY[0x277CF3920]);
  v0 = CAFObserved<>.observable.getter();
  dispatch thunk of CAFCarObservable.$automakerNotifications.getter();
}

uint64_t closure #2 in CAFNotificationDataSources.settingsNotification.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMR);
  v3 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v18 - v4;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGMR);
  v23 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGAIy10CAFCombine0ghiJ10ObservableCAMGGMd, &_s7Combine10PublishersO3MapVy_AC6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGAIy10CAFCombine0ghiJ10ObservableCAMGGMR);
  v9 = *(v8 - 8);
  v21 = v8;
  v22 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v25 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd, &_sSaySo25CAFAutomakerNotificationsCGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [CAFAutomakerNotifications] and conformance [A], &_sSaySo25CAFAutomakerNotificationsCGMd, &_sSaySo25CAFAutomakerNotificationsCGMR, MEMORY[0x277D83970]);
  Sequence.publisher.getter();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSettingsRemoteNotification, 0x277CF8330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_SaySo38CAFAutomakerSettingsRemoteNotificationCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo38CAFAutomakerSettingsRemoteNotificationCGs5NeverOGMR);
  v12 = MEMORY[0x277CBCD18];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFAutomakerNotifications], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMR, MEMORY[0x277CBCD18]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFAutomakerSettingsRemoteNotification], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo38CAFAutomakerSettingsRemoteNotificationCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo38CAFAutomakerSettingsRemoteNotificationCGs5NeverOGMR, v12);
  v13 = v19;
  v14 = Publisher.compactFlatMap<A, B>(_:)();
  (*(v3 + 8))(v5, v13);
  v25 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGMd, &_s7Combine12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFAutomakerSettingsRemoteNotification, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGMd, &_s7Combine12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGMR, MEMORY[0x277CBCD90]);
  Publisher.filter(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFAutomakerSettingsRemoteNotification, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGMR, MEMORY[0x277CBCC90]);
  v15 = v20;
  Publisher.map<A>(_:)();
  (*(v23 + 8))(v7, v15);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.Filter<AnyPublisher<CAFAutomakerSettingsRemoteNotification, Never>>, AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGAIy10CAFCombine0ghiJ10ObservableCAMGGMd, &_s7Combine10PublishersO3MapVy_AC6FilterVy_AA12AnyPublisherVySo38CAFAutomakerSettingsRemoteNotificationCs5NeverOGGAIy10CAFCombine0ghiJ10ObservableCAMGGMR, MEMORY[0x277CBCC08]);
  v16 = v21;
  Publisher.collect()();
  return (*(v22 + 8))(v11, v16);
}

uint64_t closure #1 in closure #2 in CAFNotificationDataSources.settingsNotification.getter@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 automakerSettingsRemoteNotifications];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSettingsRemoteNotification, 0x277CF8330);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo38CAFAutomakerSettingsRemoteNotificationCGMd, &_sSaySo38CAFAutomakerSettingsRemoteNotificationCGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [CAFAutomakerSettingsRemoteNotification] and conformance [A], &_sSaySo38CAFAutomakerSettingsRemoteNotificationCGMd, &_sSaySo38CAFAutomakerSettingsRemoteNotificationCGMR, MEMORY[0x277D83970]);
    Sequence.publisher.getter();

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_SaySo38CAFAutomakerSettingsRemoteNotificationCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo38CAFAutomakerSettingsRemoteNotificationCGs5NeverOGMR);
    return (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_SaySo38CAFAutomakerSettingsRemoteNotificationCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo38CAFAutomakerSettingsRemoteNotificationCGs5NeverOGMR);
    v8 = *(*(v7 - 8) + 56);

    return v8(a2, 1, 1, v7);
  }
}

uint64_t closure #2 in closure #2 in CAFNotificationDataSources.settingsNotification.getter(id *a1)
{
  v1 = [*a1 displayPanelIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == 0x445F7265746E6543 && v4 == 0xEE0079616C707369)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v6 & 1;
  }
}

void closure #3 in closure #2 in CAFNotificationDataSources.settingsNotification.getter(uint64_t *a1@<X8>)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSettingsRemoteNotification, 0x277CF8330);
  lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFAutomakerSettingsRemoteNotification and conformance CAFAutomakerSettingsRemoteNotification, &lazy cache variable for type metadata for CAFAutomakerSettingsRemoteNotification, 0x277CF8330, MEMORY[0x277CF3918]);
  v2 = CAFObserved<>.observable.getter();
  type metadata accessor for CAFAutomakerSettingsRemoteNotificationObservable();
  _s14CarPlayAssetUI28RequestTemporaryContentModelVACSQAAWlTm_0(&lazy protocol witness table cache variable for type CAFAutomakerSettingsRemoteNotificationObservable and conformance CAFAutomakerSettingsRemoteNotificationObservable, MEMORY[0x277CF3868], MEMORY[0x277CF3860]);
  v3 = CAFObservable.publisher.getter();

  *a1 = v3;
}

uint64_t closure #3 in CAFNotificationDataSources.settingsNotification.getter(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGMR, MEMORY[0x277CBCD90]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGMR, MEMORY[0x277D83970]);
  return Publishers.MergeMany.init<A>(_:)();
}

uint64_t CAFNotificationDataSources.BOOLeanSettings.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AA12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGAKy10CAFCombine0jK10ObservableCAOGGGAKySo20CAFAutomakerSettingsCSgAOGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AA12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGAKy10CAFCombine0jK10ObservableCAOGGGAKySo20CAFAutomakerSettingsCSgAOGGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AA12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGAMy10CAFCombine0jK10ObservableCAQGGGAMySo20CAFAutomakerSettingsCSgAQGGAC9MergeManyVy_AVGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AA12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGAMy10CAFCombine0jK10ObservableCAQGGGAMySo20CAFAutomakerSettingsCSgAQGGAC9MergeManyVy_AVGGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGAC3MapVy_AC04FlatO0Vy_AC7CollectVy_AC0O7KeyPathVy_AIySo0kL0CANGAOGGAIySo20CAFAutomakerSettingsCSgANGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGAC3MapVy_AC04FlatO0Vy_AC7CollectVy_AC0O7KeyPathVy_AIySo0kL0CANGAOGGAIySo20CAFAutomakerSettingsCSgANGGAPGGMR);
  MEMORY[0x28223BE20](v9);
  v13 = v24 - v12;
  if (*(v0 + 56))
  {
    v14 = *(v0 + 56);
  }

  else
  {
    v30 = v11;
    v31 = v0;
    v29 = v10;
    v15 = CAFNotificationDataSources.currentCarPublisher.getter();
    v26 = v2;
    v32 = v15;
    swift_getKeyPath();
    v28 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR);
    v27 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20CAFAutomakerSettingsCSgMd, &_sSo20CAFAutomakerSettingsCSgMR);
    v25 = v1;
    v16 = MEMORY[0x277CBCD90];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR, MEMORY[0x277CBCD90]);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<CAFAutomakerSettings?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo20CAFAutomakerSettingsCSg_GMd, &_s7Combine9PublishedV9PublisherVySo20CAFAutomakerSettingsCSg_GMR, MEMORY[0x277CBCEC8]);
    v17 = Publisher.flatMap<A, B>(_:)();

    v32 = v17;
    v24[1] = static Subscribers.Demand.unlimited.getter();
    v24[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo20CAFAutomakerSettingsCSgs5NeverOGMd, &_s7Combine12AnyPublisherVySo20CAFAutomakerSettingsCSgs5NeverOGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AA12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGAIy10CAFCombine0iJ10ObservableCAMGGGMd, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AA12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGAIy10CAFCombine0iJ10ObservableCAMGGGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFAutomakerSettings?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo20CAFAutomakerSettingsCSgs5NeverOGMd, &_s7Combine12AnyPublisherVySo20CAFAutomakerSettingsCSgs5NeverOGMR, v16);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFBooleanSetting, Never>, AnyPublisher<CAFBooleanSettingObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AA12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGAIy10CAFCombine0iJ10ObservableCAMGGGMd, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AA12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGAIy10CAFCombine0iJ10ObservableCAMGGGMR, MEMORY[0x277CBCCD0]);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFBooleanSetting, Never>, AnyPublisher<CAFBooleanSettingObservable, Never>>>, AnyPublisher<CAFAutomakerSettings?, Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AA12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGAKy10CAFCombine0jK10ObservableCAOGGGAKySo20CAFAutomakerSettingsCSgAOGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AA12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGAKy10CAFCombine0jK10ObservableCAOGGGAKySo20CAFAutomakerSettingsCSgAOGGMR, MEMORY[0x277CBCCE0]);
    v18 = v25;
    Publisher.map<A>(_:)();
    (*(v26 + 8))(v4, v18);
    v19 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFBooleanSetting, Never>, AnyPublisher<CAFBooleanSettingObservable, Never>>>, AnyPublisher<CAFAutomakerSettings?, Never>>, Publishers.MergeMany<AnyPublisher<CAFBooleanSettingObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AA12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGAMy10CAFCombine0jK10ObservableCAQGGGAMySo20CAFAutomakerSettingsCSgAQGGAC9MergeManyVy_AVGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AA12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGAMy10CAFCombine0jK10ObservableCAQGGGAMySo20CAFAutomakerSettingsCSgAQGGAC9MergeManyVy_AVGGMR, MEMORY[0x277CBCC08]);
    v20 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFBooleanSettingObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGMR, MEMORY[0x277CBCD48]);
    v21 = v28;
    MEMORY[0x245D0C880](v28, v19, v20);
    (*(v27 + 8))(v8, v21);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFBooleanSettingObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFBooleanSetting, Never>, AnyPublisher<CAFBooleanSettingObservable, Never>>>, AnyPublisher<CAFAutomakerSettings?, Never>>, Publishers.MergeMany<AnyPublisher<CAFBooleanSettingObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGAC3MapVy_AC04FlatO0Vy_AC7CollectVy_AC0O7KeyPathVy_AIySo0kL0CANGAOGGAIySo20CAFAutomakerSettingsCSgANGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGAC3MapVy_AC04FlatO0Vy_AC7CollectVy_AC0O7KeyPathVy_AIySo0kL0CANGAOGGAIySo20CAFAutomakerSettingsCSgANGGAPGGMR, MEMORY[0x277CBCBB0]);
    v22 = v29;
    v14 = Publisher.eraseToAnyPublisher()();
    (*(v30 + 8))(v13, v22);
    *(v31 + 56) = v14;
  }

  return v14;
}

uint64_t key path getter for CAFObserved<>.observable : CAFCar@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFCar, 0x277CF8398);
  lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFCar and conformance CAFCar, &lazy cache variable for type metadata for CAFCar, 0x277CF8398, MEMORY[0x277CF3920]);
  result = CAFObserved<>.observable.getter();
  *a1 = result;
  return result;
}

uint64_t closure #1 in CAFNotificationDataSources.BOOLeanSettings.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSq7CombineE9PublisherVySo20CAFAutomakerSettingsC_GMd, &_sSq7CombineE9PublisherVySo20CAFAutomakerSettingsC_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10MapKeyPathVy_AA12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGAGy10CAFCombine0hI10ObservableCAKGGMd, &_s7Combine10PublishersO10MapKeyPathVy_AA12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGAGy10CAFCombine0hI10ObservableCAKGGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v14 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20CAFAutomakerSettingsCSgMd, &_sSo20CAFAutomakerSettingsCSgMR);
  Optional.publisher.getter();
  swift_getKeyPath();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFBooleanSetting, 0x277CF8370);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type CAFAutomakerSettings?.Publisher and conformance A?.Publisher, &_sSq7CombineE9PublisherVySo20CAFAutomakerSettingsC_GMd, &_sSq7CombineE9PublisherVySo20CAFAutomakerSettingsC_GMR, MEMORY[0x277CBCF30]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFBooleanSetting], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo17CAFBooleanSettingCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo17CAFBooleanSettingCGs5NeverOGMR, MEMORY[0x277CBCD18]);
  v11 = Publisher.compactFlatMap<A, B>(_:)();

  (*(v4 + 8))(v6, v3);
  v14 = v11;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGMd, &_s7Combine12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFBooleanSetting, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGMd, &_s7Combine12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGMR, MEMORY[0x277CBCD90]);
  Publisher.map<A>(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MapKeyPath<AnyPublisher<CAFBooleanSetting, Never>, AnyPublisher<CAFBooleanSettingObservable, Never>> and conformance Publishers.MapKeyPath<A, B>, &_s7Combine10PublishersO10MapKeyPathVy_AA12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGAGy10CAFCombine0hI10ObservableCAKGGMd, &_s7Combine10PublishersO10MapKeyPathVy_AA12AnyPublisherVySo17CAFBooleanSettingCs5NeverOGAGy10CAFCombine0hI10ObservableCAKGGMR, MEMORY[0x277CBCB20]);
  Publisher.collect()();
  return (*(v8 + 8))(v10, v7);
}

uint64_t closure #2 in CAFNotificationDataSources.BOOLeanSettings.getter(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFBooleanSettingObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGMR, MEMORY[0x277CBCD90]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFBooleanSettingObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGMR, MEMORY[0x277D83970]);
  return Publishers.MergeMany.init<A>(_:)();
}

uint64_t CAFNotificationDataSources.deepLinkSettings.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AA12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGAKy10CAFCombine0jkL10ObservableCAOGGGAKySo20CAFAutomakerSettingsCSgAOGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AA12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGAKy10CAFCombine0jkL10ObservableCAOGGGAKySo20CAFAutomakerSettingsCSgAOGGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AA12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGAMy10CAFCombine0jkL10ObservableCAQGGGAMySo20CAFAutomakerSettingsCSgAQGGAC9MergeManyVy_AVGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AA12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGAMy10CAFCombine0jkL10ObservableCAQGGGAMySo20CAFAutomakerSettingsCSgAQGGAC9MergeManyVy_AVGGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AIySo0klM0CANGAOGGAIySo20CAFAutomakerSettingsCSgANGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AIySo0klM0CANGAOGGAIySo20CAFAutomakerSettingsCSgANGGAPGGMR);
  MEMORY[0x28223BE20](v9);
  v13 = v24 - v12;
  if (*(v0 + 64))
  {
    v14 = *(v0 + 64);
  }

  else
  {
    v30 = v11;
    v31 = v0;
    v29 = v10;
    v15 = CAFNotificationDataSources.currentCarPublisher.getter();
    v26 = v2;
    v32 = v15;
    swift_getKeyPath();
    v28 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR);
    v27 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20CAFAutomakerSettingsCSgMd, &_sSo20CAFAutomakerSettingsCSgMR);
    v25 = v1;
    v16 = MEMORY[0x277CBCD90];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR, MEMORY[0x277CBCD90]);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<CAFAutomakerSettings?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo20CAFAutomakerSettingsCSg_GMd, &_s7Combine9PublishedV9PublisherVySo20CAFAutomakerSettingsCSg_GMR, MEMORY[0x277CBCEC8]);
    v17 = Publisher.flatMap<A, B>(_:)();

    v32 = v17;
    v24[1] = static Subscribers.Demand.unlimited.getter();
    v24[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo20CAFAutomakerSettingsCSgs5NeverOGMd, &_s7Combine12AnyPublisherVySo20CAFAutomakerSettingsCSgs5NeverOGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AA12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGAIy10CAFCombine0ijK10ObservableCAMGGGMd, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AA12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGAIy10CAFCombine0ijK10ObservableCAMGGGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFAutomakerSettings?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo20CAFAutomakerSettingsCSgs5NeverOGMd, &_s7Combine12AnyPublisherVySo20CAFAutomakerSettingsCSgs5NeverOGMR, v16);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFDeepLinkSetting, Never>, AnyPublisher<CAFDeepLinkSettingObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AA12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGAIy10CAFCombine0ijK10ObservableCAMGGGMd, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AA12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGAIy10CAFCombine0ijK10ObservableCAMGGGMR, MEMORY[0x277CBCCD0]);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFDeepLinkSetting, Never>, AnyPublisher<CAFDeepLinkSettingObservable, Never>>>, AnyPublisher<CAFAutomakerSettings?, Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AA12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGAKy10CAFCombine0jkL10ObservableCAOGGGAKySo20CAFAutomakerSettingsCSgAOGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AA12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGAKy10CAFCombine0jkL10ObservableCAOGGGAKySo20CAFAutomakerSettingsCSgAOGGMR, MEMORY[0x277CBCCE0]);
    v18 = v25;
    Publisher.map<A>(_:)();
    (*(v26 + 8))(v4, v18);
    v19 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFDeepLinkSetting, Never>, AnyPublisher<CAFDeepLinkSettingObservable, Never>>>, AnyPublisher<CAFAutomakerSettings?, Never>>, Publishers.MergeMany<AnyPublisher<CAFDeepLinkSettingObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AA12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGAMy10CAFCombine0jkL10ObservableCAQGGGAMySo20CAFAutomakerSettingsCSgAQGGAC9MergeManyVy_AVGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AA12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGAMy10CAFCombine0jkL10ObservableCAQGGGAMySo20CAFAutomakerSettingsCSgAQGGAC9MergeManyVy_AVGGMR, MEMORY[0x277CBCC08]);
    v20 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFDeepLinkSettingObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGMR, MEMORY[0x277CBCD48]);
    v21 = v28;
    MEMORY[0x245D0C880](v28, v19, v20);
    (*(v27 + 8))(v8, v21);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFDeepLinkSettingObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFDeepLinkSetting, Never>, AnyPublisher<CAFDeepLinkSettingObservable, Never>>>, AnyPublisher<CAFAutomakerSettings?, Never>>, Publishers.MergeMany<AnyPublisher<CAFDeepLinkSettingObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AIySo0klM0CANGAOGGAIySo20CAFAutomakerSettingsCSgANGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AIySo0klM0CANGAOGGAIySo20CAFAutomakerSettingsCSgANGGAPGGMR, MEMORY[0x277CBCBB0]);
    v22 = v29;
    v14 = Publisher.eraseToAnyPublisher()();
    (*(v30 + 8))(v13, v22);
    *(v31 + 64) = v14;
  }

  return v14;
}

uint64_t closure #1 in CAFNotificationDataSources.deepLinkSettings.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSq7CombineE9PublisherVySo20CAFAutomakerSettingsC_GMd, &_sSq7CombineE9PublisherVySo20CAFAutomakerSettingsC_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10MapKeyPathVy_AA12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGAGy10CAFCombine0hiJ10ObservableCAKGGMd, &_s7Combine10PublishersO10MapKeyPathVy_AA12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGAGy10CAFCombine0hiJ10ObservableCAKGGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v14 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20CAFAutomakerSettingsCSgMd, &_sSo20CAFAutomakerSettingsCSgMR);
  Optional.publisher.getter();
  swift_getKeyPath();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFDeepLinkSetting, 0x277CF8400);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type CAFAutomakerSettings?.Publisher and conformance A?.Publisher, &_sSq7CombineE9PublisherVySo20CAFAutomakerSettingsC_GMd, &_sSq7CombineE9PublisherVySo20CAFAutomakerSettingsC_GMR, MEMORY[0x277CBCF30]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFDeepLinkSetting], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo18CAFDeepLinkSettingCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo18CAFDeepLinkSettingCGs5NeverOGMR, MEMORY[0x277CBCD18]);
  v11 = Publisher.compactFlatMap<A, B>(_:)();

  (*(v4 + 8))(v6, v3);
  v14 = v11;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGMd, &_s7Combine12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFDeepLinkSetting, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGMd, &_s7Combine12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGMR, MEMORY[0x277CBCD90]);
  Publisher.map<A>(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MapKeyPath<AnyPublisher<CAFDeepLinkSetting, Never>, AnyPublisher<CAFDeepLinkSettingObservable, Never>> and conformance Publishers.MapKeyPath<A, B>, &_s7Combine10PublishersO10MapKeyPathVy_AA12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGAGy10CAFCombine0hiJ10ObservableCAKGGMd, &_s7Combine10PublishersO10MapKeyPathVy_AA12AnyPublisherVySo18CAFDeepLinkSettingCs5NeverOGAGy10CAFCombine0hiJ10ObservableCAKGGMR, MEMORY[0x277CBCB20]);
  Publisher.collect()();
  return (*(v8 + 8))(v10, v7);
}

void key path getter for CAFAutomakerSettings.BOOLeanSettings : CAFAutomakerSettings(id *a1@<X0>, SEL *a2@<X3>, unint64_t *a3@<X4>, void *a4@<X5>, uint64_t *a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    type metadata accessor for OS_os_log(0, a3, a4);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = 0;
  }

  *a5 = v10;
}

uint64_t key path getter for Sequence.publisher : [CAFBooleanSetting](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(a6, a4, a5, MEMORY[0x277D83970]);
  return Sequence.publisher.getter();
}

uint64_t closure #2 in CAFNotificationDataSources.deepLinkSettings.getter(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFDeepLinkSettingObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGMR, MEMORY[0x277CBCD90]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFDeepLinkSettingObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGMR, MEMORY[0x277D83970]);
  return Publishers.MergeMany.init<A>(_:)();
}

uint64_t CAFNotificationDataSources.buttonSettings.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AA12AnyPublisherVySo16CAFButtonSettingCs5NeverOGAKy10CAFCombine0jK10ObservableCAOGGGAKySo20CAFAutomakerSettingsCSgAOGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AA12AnyPublisherVySo16CAFButtonSettingCs5NeverOGAKy10CAFCombine0jK10ObservableCAOGGGAKySo20CAFAutomakerSettingsCSgAOGGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AA12AnyPublisherVySo16CAFButtonSettingCs5NeverOGAMy10CAFCombine0jK10ObservableCAQGGGAMySo20CAFAutomakerSettingsCSgAQGGAC9MergeManyVy_AVGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AA12AnyPublisherVySo16CAFButtonSettingCs5NeverOGAMy10CAFCombine0jK10ObservableCAQGGGAMySo20CAFAutomakerSettingsCSgAQGGAC9MergeManyVy_AVGGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGAC3MapVy_AC04FlatO0Vy_AC7CollectVy_AC0O7KeyPathVy_AIySo0kL0CANGAOGGAIySo20CAFAutomakerSettingsCSgANGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGAC3MapVy_AC04FlatO0Vy_AC7CollectVy_AC0O7KeyPathVy_AIySo0kL0CANGAOGGAIySo20CAFAutomakerSettingsCSgANGGAPGGMR);
  MEMORY[0x28223BE20](v9);
  v13 = v24 - v12;
  if (*(v0 + 72))
  {
    v14 = *(v0 + 72);
  }

  else
  {
    v30 = v11;
    v31 = v0;
    v29 = v10;
    v15 = CAFNotificationDataSources.currentCarPublisher.getter();
    v26 = v2;
    v32 = v15;
    swift_getKeyPath();
    v28 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR);
    v27 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20CAFAutomakerSettingsCSgMd, &_sSo20CAFAutomakerSettingsCSgMR);
    v25 = v1;
    v16 = MEMORY[0x277CBCD90];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR, MEMORY[0x277CBCD90]);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<CAFAutomakerSettings?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo20CAFAutomakerSettingsCSg_GMd, &_s7Combine9PublishedV9PublisherVySo20CAFAutomakerSettingsCSg_GMR, MEMORY[0x277CBCEC8]);
    v17 = Publisher.flatMap<A, B>(_:)();

    v32 = v17;
    v24[1] = static Subscribers.Demand.unlimited.getter();
    v24[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo20CAFAutomakerSettingsCSgs5NeverOGMd, &_s7Combine12AnyPublisherVySo20CAFAutomakerSettingsCSgs5NeverOGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AA12AnyPublisherVySo16CAFButtonSettingCs5NeverOGAIy10CAFCombine0iJ10ObservableCAMGGGMd, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AA12AnyPublisherVySo16CAFButtonSettingCs5NeverOGAIy10CAFCombine0iJ10ObservableCAMGGGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFAutomakerSettings?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo20CAFAutomakerSettingsCSgs5NeverOGMd, &_s7Combine12AnyPublisherVySo20CAFAutomakerSettingsCSgs5NeverOGMR, v16);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFButtonSetting, Never>, AnyPublisher<CAFButtonSettingObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AA12AnyPublisherVySo16CAFButtonSettingCs5NeverOGAIy10CAFCombine0iJ10ObservableCAMGGGMd, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AA12AnyPublisherVySo16CAFButtonSettingCs5NeverOGAIy10CAFCombine0iJ10ObservableCAMGGGMR, MEMORY[0x277CBCCD0]);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFButtonSetting, Never>, AnyPublisher<CAFButtonSettingObservable, Never>>>, AnyPublisher<CAFAutomakerSettings?, Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AA12AnyPublisherVySo16CAFButtonSettingCs5NeverOGAKy10CAFCombine0jK10ObservableCAOGGGAKySo20CAFAutomakerSettingsCSgAOGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AA12AnyPublisherVySo16CAFButtonSettingCs5NeverOGAKy10CAFCombine0jK10ObservableCAOGGGAKySo20CAFAutomakerSettingsCSgAOGGMR, MEMORY[0x277CBCCE0]);
    v18 = v25;
    Publisher.map<A>(_:)();
    (*(v26 + 8))(v4, v18);
    v19 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFButtonSetting, Never>, AnyPublisher<CAFButtonSettingObservable, Never>>>, AnyPublisher<CAFAutomakerSettings?, Never>>, Publishers.MergeMany<AnyPublisher<CAFButtonSettingObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AA12AnyPublisherVySo16CAFButtonSettingCs5NeverOGAMy10CAFCombine0jK10ObservableCAQGGGAMySo20CAFAutomakerSettingsCSgAQGGAC9MergeManyVy_AVGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AA12AnyPublisherVySo16CAFButtonSettingCs5NeverOGAMy10CAFCombine0jK10ObservableCAQGGGAMySo20CAFAutomakerSettingsCSgAQGGAC9MergeManyVy_AVGGMR, MEMORY[0x277CBCC08]);
    v20 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFButtonSettingObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGMR, MEMORY[0x277CBCD48]);
    v21 = v28;
    MEMORY[0x245D0C880](v28, v19, v20);
    (*(v27 + 8))(v8, v21);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFButtonSettingObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFButtonSetting, Never>, AnyPublisher<CAFButtonSettingObservable, Never>>>, AnyPublisher<CAFAutomakerSettings?, Never>>, Publishers.MergeMany<AnyPublisher<CAFButtonSettingObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGAC3MapVy_AC04FlatO0Vy_AC7CollectVy_AC0O7KeyPathVy_AIySo0kL0CANGAOGGAIySo20CAFAutomakerSettingsCSgANGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGAC3MapVy_AC04FlatO0Vy_AC7CollectVy_AC0O7KeyPathVy_AIySo0kL0CANGAOGGAIySo20CAFAutomakerSettingsCSgANGGAPGGMR, MEMORY[0x277CBCBB0]);
    v22 = v29;
    v14 = Publisher.eraseToAnyPublisher()();
    (*(v30 + 8))(v13, v22);
    *(v31 + 72) = v14;
  }

  return v14;
}

uint64_t closure #1 in CAFNotificationDataSources.buttonSettings.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSq7CombineE9PublisherVySo20CAFAutomakerSettingsC_GMd, &_sSq7CombineE9PublisherVySo20CAFAutomakerSettingsC_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10MapKeyPathVy_AA12AnyPublisherVySo16CAFButtonSettingCs5NeverOGAGy10CAFCombine0hI10ObservableCAKGGMd, &_s7Combine10PublishersO10MapKeyPathVy_AA12AnyPublisherVySo16CAFButtonSettingCs5NeverOGAGy10CAFCombine0hI10ObservableCAKGGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v14 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20CAFAutomakerSettingsCSgMd, &_sSo20CAFAutomakerSettingsCSgMR);
  Optional.publisher.getter();
  swift_getKeyPath();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFButtonSetting, 0x277CF8378);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type CAFAutomakerSettings?.Publisher and conformance A?.Publisher, &_sSq7CombineE9PublisherVySo20CAFAutomakerSettingsC_GMd, &_sSq7CombineE9PublisherVySo20CAFAutomakerSettingsC_GMR, MEMORY[0x277CBCF30]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFButtonSetting], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo16CAFButtonSettingCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo16CAFButtonSettingCGs5NeverOGMR, MEMORY[0x277CBCD18]);
  v11 = Publisher.compactFlatMap<A, B>(_:)();

  (*(v4 + 8))(v6, v3);
  v14 = v11;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo16CAFButtonSettingCs5NeverOGMd, &_s7Combine12AnyPublisherVySo16CAFButtonSettingCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFButtonSetting, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo16CAFButtonSettingCs5NeverOGMd, &_s7Combine12AnyPublisherVySo16CAFButtonSettingCs5NeverOGMR, MEMORY[0x277CBCD90]);
  Publisher.map<A>(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MapKeyPath<AnyPublisher<CAFButtonSetting, Never>, AnyPublisher<CAFButtonSettingObservable, Never>> and conformance Publishers.MapKeyPath<A, B>, &_s7Combine10PublishersO10MapKeyPathVy_AA12AnyPublisherVySo16CAFButtonSettingCs5NeverOGAGy10CAFCombine0hI10ObservableCAKGGMd, &_s7Combine10PublishersO10MapKeyPathVy_AA12AnyPublisherVySo16CAFButtonSettingCs5NeverOGAGy10CAFCombine0hI10ObservableCAKGGMR, MEMORY[0x277CBCB20]);
  Publisher.collect()();
  return (*(v8 + 8))(v10, v7);
}

uint64_t closure #2 in CAFNotificationDataSources.buttonSettings.getter(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFButtonSettingObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGMR, MEMORY[0x277CBCD90]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFButtonSettingObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGMR, MEMORY[0x277D83970]);
  return Publishers.MergeMany.init<A>(_:)();
}

uint64_t CAFNotificationDataSources.singleSelectSettings.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AA12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGAKy10CAFCombine0jkL10ObservableCAOGGGAKySo20CAFAutomakerSettingsCSgAOGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AA12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGAKy10CAFCombine0jkL10ObservableCAOGGGAKySo20CAFAutomakerSettingsCSgAOGGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AA12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGAMy10CAFCombine0jkL10ObservableCAQGGGAMySo20CAFAutomakerSettingsCSgAQGGAC9MergeManyVy_AVGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AA12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGAMy10CAFCombine0jkL10ObservableCAQGGGAMySo20CAFAutomakerSettingsCSgAQGGAC9MergeManyVy_AVGGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AIySo0klM0CANGAOGGAIySo20CAFAutomakerSettingsCSgANGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AIySo0klM0CANGAOGGAIySo20CAFAutomakerSettingsCSgANGGAPGGMR);
  MEMORY[0x28223BE20](v9);
  v13 = v24 - v12;
  if (*(v0 + 80))
  {
    v14 = *(v0 + 80);
  }

  else
  {
    v30 = v11;
    v31 = v0;
    v29 = v10;
    v15 = CAFNotificationDataSources.currentCarPublisher.getter();
    v26 = v2;
    v32 = v15;
    swift_getKeyPath();
    v28 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR);
    v27 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20CAFAutomakerSettingsCSgMd, &_sSo20CAFAutomakerSettingsCSgMR);
    v25 = v1;
    v16 = MEMORY[0x277CBCD90];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR, MEMORY[0x277CBCD90]);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<CAFAutomakerSettings?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo20CAFAutomakerSettingsCSg_GMd, &_s7Combine9PublishedV9PublisherVySo20CAFAutomakerSettingsCSg_GMR, MEMORY[0x277CBCEC8]);
    v17 = Publisher.flatMap<A, B>(_:)();

    v32 = v17;
    v24[1] = static Subscribers.Demand.unlimited.getter();
    v24[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo20CAFAutomakerSettingsCSgs5NeverOGMd, &_s7Combine12AnyPublisherVySo20CAFAutomakerSettingsCSgs5NeverOGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AA12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGAIy10CAFCombine0ijK10ObservableCAMGGGMd, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AA12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGAIy10CAFCombine0ijK10ObservableCAMGGGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFAutomakerSettings?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo20CAFAutomakerSettingsCSgs5NeverOGMd, &_s7Combine12AnyPublisherVySo20CAFAutomakerSettingsCSgs5NeverOGMR, v16);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFSingleSelectSetting, Never>, AnyPublisher<CAFSingleSelectSettingObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AA12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGAIy10CAFCombine0ijK10ObservableCAMGGGMd, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AA12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGAIy10CAFCombine0ijK10ObservableCAMGGGMR, MEMORY[0x277CBCCD0]);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFSingleSelectSetting, Never>, AnyPublisher<CAFSingleSelectSettingObservable, Never>>>, AnyPublisher<CAFAutomakerSettings?, Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AA12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGAKy10CAFCombine0jkL10ObservableCAOGGGAKySo20CAFAutomakerSettingsCSgAOGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AA12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGAKy10CAFCombine0jkL10ObservableCAOGGGAKySo20CAFAutomakerSettingsCSgAOGGMR, MEMORY[0x277CBCCE0]);
    v18 = v25;
    Publisher.map<A>(_:)();
    (*(v26 + 8))(v4, v18);
    v19 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFSingleSelectSetting, Never>, AnyPublisher<CAFSingleSelectSettingObservable, Never>>>, AnyPublisher<CAFAutomakerSettings?, Never>>, Publishers.MergeMany<AnyPublisher<CAFSingleSelectSettingObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AA12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGAMy10CAFCombine0jkL10ObservableCAQGGGAMySo20CAFAutomakerSettingsCSgAQGGAC9MergeManyVy_AVGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AA12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGAMy10CAFCombine0jkL10ObservableCAQGGGAMySo20CAFAutomakerSettingsCSgAQGGAC9MergeManyVy_AVGGMR, MEMORY[0x277CBCC08]);
    v20 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFSingleSelectSettingObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGMR, MEMORY[0x277CBCD48]);
    v21 = v28;
    MEMORY[0x245D0C880](v28, v19, v20);
    (*(v27 + 8))(v8, v21);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFSingleSelectSettingObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<AnyPublisher<CAFSingleSelectSetting, Never>, AnyPublisher<CAFSingleSelectSettingObservable, Never>>>, AnyPublisher<CAFAutomakerSettings?, Never>>, Publishers.MergeMany<AnyPublisher<CAFSingleSelectSettingObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AIySo0klM0CANGAOGGAIySo20CAFAutomakerSettingsCSgANGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AIySo0klM0CANGAOGGAIySo20CAFAutomakerSettingsCSgANGGAPGGMR, MEMORY[0x277CBCBB0]);
    v22 = v29;
    v14 = Publisher.eraseToAnyPublisher()();
    (*(v30 + 8))(v13, v22);
    *(v31 + 80) = v14;
  }

  return v14;
}

uint64_t closure #1 in CAFNotificationDataSources.singleSelectSettings.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSq7CombineE9PublisherVySo20CAFAutomakerSettingsC_GMd, &_sSq7CombineE9PublisherVySo20CAFAutomakerSettingsC_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10MapKeyPathVy_AA12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGAGy10CAFCombine0hiJ10ObservableCAKGGMd, &_s7Combine10PublishersO10MapKeyPathVy_AA12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGAGy10CAFCombine0hiJ10ObservableCAKGGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v14 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20CAFAutomakerSettingsCSgMd, &_sSo20CAFAutomakerSettingsCSgMR);
  Optional.publisher.getter();
  swift_getKeyPath();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFSingleSelectSetting, 0x277CF8660);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type CAFAutomakerSettings?.Publisher and conformance A?.Publisher, &_sSq7CombineE9PublisherVySo20CAFAutomakerSettingsC_GMd, &_sSq7CombineE9PublisherVySo20CAFAutomakerSettingsC_GMR, MEMORY[0x277CBCF30]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFSingleSelectSetting], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo22CAFSingleSelectSettingCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo22CAFSingleSelectSettingCGs5NeverOGMR, MEMORY[0x277CBCD18]);
  v11 = Publisher.compactFlatMap<A, B>(_:)();

  (*(v4 + 8))(v6, v3);
  v14 = v11;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGMd, &_s7Combine12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFSingleSelectSetting, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGMd, &_s7Combine12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGMR, MEMORY[0x277CBCD90]);
  Publisher.map<A>(_:)();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MapKeyPath<AnyPublisher<CAFSingleSelectSetting, Never>, AnyPublisher<CAFSingleSelectSettingObservable, Never>> and conformance Publishers.MapKeyPath<A, B>, &_s7Combine10PublishersO10MapKeyPathVy_AA12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGAGy10CAFCombine0hiJ10ObservableCAKGGMd, &_s7Combine10PublishersO10MapKeyPathVy_AA12AnyPublisherVySo22CAFSingleSelectSettingCs5NeverOGAGy10CAFCombine0hiJ10ObservableCAKGGMR, MEMORY[0x277CBCB20]);
  Publisher.collect()();
  return (*(v8 + 8))(v10, v7);
}

uint64_t closure #2 in CAFNotificationDataSources.singleSelectSettings.getter(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFSingleSelectSettingObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGMR, MEMORY[0x277CBCD90]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFSingleSelectSettingObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGMR, MEMORY[0x277D83970]);
  return Publishers.MergeMany.init<A>(_:)();
}

uint64_t CAFNotificationDataSources.remoteNotification.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGAMy10CAFCombine0kL10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGAMy10CAFCombine0kL10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMR);
  v53 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v41 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGAOy10CAFCombine0kL10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGAOy10CAFCombine0kL10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatO0Vy_AC7CollectVy_AC0O7KeyPathVy_AC6FilterVy_AIySo0kL0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatO0Vy_AC7CollectVy_AC0O7KeyPathVy_AC6FilterVy_AIySo0kL0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_AC0Q7KeyPathVy_AC6FilterVy_AKySo0mN0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_AC0Q7KeyPathVy_AC6FilterVy_AKySo0mN0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMR);
  MEMORY[0x28223BE20](v12);
  v16 = v41 - v15;
  if (v0[11])
  {
    v17 = v0[11];
  }

  else
  {
    v51 = v13;
    v52 = v14;
    v50 = v16;
    v18 = CAFNotificationDataSources.currentCarPublisher.getter();
    v45 = v1;
    v54 = v18;
    swift_getKeyPath();
    v44 = v7;
    v48 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR);
    v47 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd, &_sSaySo25CAFAutomakerNotificationsCGMR);
    v46 = v11;
    v49 = v9;
    v19 = MEMORY[0x277CBCD90];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR, MEMORY[0x277CBCD90]);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<[CAFAutomakerNotifications]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GMR, MEMORY[0x277CBCEC8]);
    v20 = Publisher.flatMap<A, B>(_:)();
    v41[2] = v20;

    v54 = v20;
    v43 = v0;
    v21 = v0[2];
    v22 = v0[3];
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;

    v41[1] = static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMR);
    v42 = v4;
    v24 = v3;
    v25 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGAKy10CAFCombine0jK10ObservableCAOGGGMd, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGAKy10CAFCombine0jK10ObservableCAOGGGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[CAFAutomakerNotifications], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMR, v19);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRemoteNotification, Never>>, AnyPublisher<CAFRemoteNotificationObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGAKy10CAFCombine0jK10ObservableCAOGGGMd, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGAKy10CAFCombine0jK10ObservableCAOGGGMR, MEMORY[0x277CBCCD0]);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRemoteNotification, Never>>, AnyPublisher<CAFRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGAMy10CAFCombine0kL10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGAMy10CAFCombine0kL10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMR, MEMORY[0x277CBCCE0]);
    v26 = v44;
    v27 = v45;
    Publisher.map<A>(_:)();
    (*(v25 + 8))(v24, v27);
    v28 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRemoteNotification, Never>>, AnyPublisher<CAFRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFRemoteNotificationObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGAOy10CAFCombine0kL10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGAOy10CAFCombine0kL10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMR, MEMORY[0x277CBCC08]);
    v29 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFRemoteNotificationObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMR, MEMORY[0x277CBCD48]);
    v30 = v46;
    v31 = v42;
    MEMORY[0x245D0C880](v42, v28, v29);
    (*(v47 + 8))(v26, v31);
    v32 = v43;
    v34 = v43[2];
    v33 = v43[3];
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = v33;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRemoteNotification, Never>>, AnyPublisher<CAFRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFRemoteNotificationObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatO0Vy_AC7CollectVy_AC0O7KeyPathVy_AC6FilterVy_AIySo0kL0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatO0Vy_AC7CollectVy_AC0O7KeyPathVy_AC6FilterVy_AIySo0kL0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMR, MEMORY[0x277CBCBB0]);

    v36 = v48;
    v37 = v50;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    (*(v49 + 8))(v30, v36);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRemoteNotification, Never>>, AnyPublisher<CAFRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFRemoteNotificationObservable, Never>>>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_AC0Q7KeyPathVy_AC6FilterVy_AKySo0mN0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_AC0Q7KeyPathVy_AC6FilterVy_AKySo0mN0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMR, MEMORY[0x277CBCB60]);
    v38 = v51;
    v39 = v37;
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v52 + 8))(v39, v38);
    v32[11] = v17;
  }

  return v17;
}

uint64_t closure #1 in CAFNotificationDataSources.remoteNotification.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a2;
  v22 = a3;
  v26 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGMR);
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v10 = &v20 - v9;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGAIy10CAFCombine0iJ10ObservableCAMGGMd, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGAIy10CAFCombine0iJ10ObservableCAMGGMR);
  v11 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v13 = &v20 - v12;
  v27 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd, &_sSaySo25CAFAutomakerNotificationsCGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [CAFAutomakerNotifications] and conformance [A], &_sSaySo25CAFAutomakerNotificationsCGMd, &_sSaySo25CAFAutomakerNotificationsCGMR, MEMORY[0x277D83970]);
  Sequence.publisher.getter();
  swift_getKeyPath();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFRemoteNotification, 0x277CF85D0);
  v14 = MEMORY[0x277CBCD18];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFAutomakerNotifications], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMR, MEMORY[0x277CBCD18]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFRemoteNotification], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo21CAFRemoteNotificationCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo21CAFRemoteNotificationCGs5NeverOGMR, v14);
  v15 = Publisher.compactFlatMap<A, B>(_:)();

  (*(v6 + 8))(v8, v5);
  v27 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = v21;
  *(v16 + 24) = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGMd, &_s7Combine12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRemoteNotification, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGMd, &_s7Combine12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGMR, MEMORY[0x277CBCD90]);
  Publisher.filter(_:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRemoteNotification, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGMR, MEMORY[0x277CBCC90]);
  v17 = v23;
  Publisher.map<A>(_:)();

  (*(v25 + 8))(v10, v17);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRemoteNotification, Never>>, AnyPublisher<CAFRemoteNotificationObservable, Never>> and conformance Publishers.MapKeyPath<A, B>, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGAIy10CAFCombine0iJ10ObservableCAMGGMd, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo21CAFRemoteNotificationCs5NeverOGGAIy10CAFCombine0iJ10ObservableCAMGGMR, MEMORY[0x277CBCB20]);
  v18 = v24;
  Publisher.collect()();
  return (*(v11 + 8))(v13, v18);
}

uint64_t closure #2 in CAFNotificationDataSources.remoteNotification.getter(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGMR, MEMORY[0x277CBCD90]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFRemoteNotificationObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMR, MEMORY[0x277D83970]);
  return Publishers.MergeMany.init<A>(_:)();
}

uint64_t CAFNotificationDataSources.actionRemoteNotification.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGAMy10CAFCombine0klM10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGAMy10CAFCombine0klM10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMR);
  v53 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v41 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGAOy10CAFCombine0klM10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGAOy10CAFCombine0klM10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AC6FilterVy_AIySo0klM0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AC6FilterVy_AIySo0klM0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatR0Vy_AC7CollectVy_AC0R7KeyPathVy_AC6FilterVy_AKySo0mnO0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatR0Vy_AC7CollectVy_AC0R7KeyPathVy_AC6FilterVy_AKySo0mnO0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMR);
  MEMORY[0x28223BE20](v12);
  v16 = v41 - v15;
  if (v0[12])
  {
    v17 = v0[12];
  }

  else
  {
    v51 = v13;
    v52 = v14;
    v50 = v16;
    v18 = CAFNotificationDataSources.currentCarPublisher.getter();
    v45 = v1;
    v54 = v18;
    swift_getKeyPath();
    v44 = v7;
    v48 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR);
    v47 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd, &_sSaySo25CAFAutomakerNotificationsCGMR);
    v46 = v11;
    v49 = v9;
    v19 = MEMORY[0x277CBCD90];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR, MEMORY[0x277CBCD90]);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<[CAFAutomakerNotifications]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GMR, MEMORY[0x277CBCEC8]);
    v20 = Publisher.flatMap<A, B>(_:)();
    v41[2] = v20;

    v54 = v20;
    v43 = v0;
    v21 = v0[2];
    v22 = v0[3];
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;

    v41[1] = static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMR);
    v42 = v4;
    v24 = v3;
    v25 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGAKy10CAFCombine0jkL10ObservableCAOGGGMd, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGAKy10CAFCombine0jkL10ObservableCAOGGGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[CAFAutomakerNotifications], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMR, v19);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFActionRemoteNotification, Never>>, AnyPublisher<CAFActionRemoteNotificationObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGAKy10CAFCombine0jkL10ObservableCAOGGGMd, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGAKy10CAFCombine0jkL10ObservableCAOGGGMR, MEMORY[0x277CBCCD0]);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFActionRemoteNotification, Never>>, AnyPublisher<CAFActionRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGAMy10CAFCombine0klM10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGAMy10CAFCombine0klM10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMR, MEMORY[0x277CBCCE0]);
    v26 = v44;
    v27 = v45;
    Publisher.map<A>(_:)();
    (*(v25 + 8))(v24, v27);
    v28 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFActionRemoteNotification, Never>>, AnyPublisher<CAFActionRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFActionRemoteNotificationObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGAOy10CAFCombine0klM10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGAOy10CAFCombine0klM10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMR, MEMORY[0x277CBCC08]);
    v29 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFActionRemoteNotificationObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGMR, MEMORY[0x277CBCD48]);
    v30 = v46;
    v31 = v42;
    MEMORY[0x245D0C880](v42, v28, v29);
    (*(v47 + 8))(v26, v31);
    v32 = v43;
    v34 = v43[2];
    v33 = v43[3];
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = v33;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFActionRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFActionRemoteNotification, Never>>, AnyPublisher<CAFActionRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFActionRemoteNotificationObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AC6FilterVy_AIySo0klM0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AC6FilterVy_AIySo0klM0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMR, MEMORY[0x277CBCBB0]);

    v36 = v48;
    v37 = v50;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    (*(v49 + 8))(v30, v36);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFActionRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFActionRemoteNotification, Never>>, AnyPublisher<CAFActionRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFActionRemoteNotificationObservable, Never>>>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatR0Vy_AC7CollectVy_AC0R7KeyPathVy_AC6FilterVy_AKySo0mnO0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatR0Vy_AC7CollectVy_AC0R7KeyPathVy_AC6FilterVy_AKySo0mnO0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMR, MEMORY[0x277CBCB60]);
    v38 = v51;
    v39 = v37;
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v52 + 8))(v39, v38);
    v32[12] = v17;
  }

  return v17;
}

uint64_t closure #1 in CAFNotificationDataSources.actionRemoteNotification.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a2;
  v22 = a3;
  v26 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGMR);
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v10 = &v20 - v9;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijK10ObservableCAMGGMd, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijK10ObservableCAMGGMR);
  v11 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v13 = &v20 - v12;
  v27 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd, &_sSaySo25CAFAutomakerNotificationsCGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [CAFAutomakerNotifications] and conformance [A], &_sSaySo25CAFAutomakerNotificationsCGMd, &_sSaySo25CAFAutomakerNotificationsCGMR, MEMORY[0x277D83970]);
  Sequence.publisher.getter();
  swift_getKeyPath();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFActionRemoteNotification, 0x277CF82E0);
  v14 = MEMORY[0x277CBCD18];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFAutomakerNotifications], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMR, MEMORY[0x277CBCD18]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFActionRemoteNotification], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo27CAFActionRemoteNotificationCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo27CAFActionRemoteNotificationCGs5NeverOGMR, v14);
  v15 = Publisher.compactFlatMap<A, B>(_:)();

  (*(v6 + 8))(v8, v5);
  v27 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = v21;
  *(v16 + 24) = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGMd, &_s7Combine12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFActionRemoteNotification, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGMd, &_s7Combine12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGMR, MEMORY[0x277CBCD90]);
  Publisher.filter(_:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFActionRemoteNotification, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGMR, MEMORY[0x277CBCC90]);
  v17 = v23;
  Publisher.map<A>(_:)();

  (*(v25 + 8))(v10, v17);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFActionRemoteNotification, Never>>, AnyPublisher<CAFActionRemoteNotificationObservable, Never>> and conformance Publishers.MapKeyPath<A, B>, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijK10ObservableCAMGGMd, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo27CAFActionRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijK10ObservableCAMGGMR, MEMORY[0x277CBCB20]);
  v18 = v24;
  Publisher.collect()();
  return (*(v11 + 8))(v13, v18);
}

uint64_t closure #2 in CAFNotificationDataSources.actionRemoteNotification.getter(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFActionRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGMR, MEMORY[0x277CBCD90]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFActionRemoteNotificationObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGMR, MEMORY[0x277D83970]);
  return Publishers.MergeMany.init<A>(_:)();
}

void closure #3 in CAFNotificationDataSources.remoteNotification.getter(void **a1, uint64_t a2, unint64_t a3, const char *a4)
{
  v7 = *a1;
  v8 = static os_log_type_t.info.getter();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  log = static OS_os_log.default.getter();
  if (os_log_type_enabled(log, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v14);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v7;
    *v10 = v7;
    v12 = v7;
    _os_log_impl(&dword_24234D000, log, v8, a4, v9, 0x16u);
    outlined destroy of NSObject?(v10);
    MEMORY[0x245D0E5A0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x245D0E5A0](v11, -1, -1);
    MEMORY[0x245D0E5A0](v9, -1, -1);
  }
}

uint64_t CAFNotificationDataSources.minimalRemoteNotification.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGAMy10CAFCombine0klM10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGAMy10CAFCombine0klM10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMR);
  v53 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v41 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGAOy10CAFCombine0klM10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGAOy10CAFCombine0klM10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AC6FilterVy_AIySo0klM0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AC6FilterVy_AIySo0klM0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatR0Vy_AC7CollectVy_AC0R7KeyPathVy_AC6FilterVy_AKySo0mnO0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatR0Vy_AC7CollectVy_AC0R7KeyPathVy_AC6FilterVy_AKySo0mnO0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMR);
  MEMORY[0x28223BE20](v12);
  v16 = v41 - v15;
  if (v0[13])
  {
    v17 = v0[13];
  }

  else
  {
    v51 = v13;
    v52 = v14;
    v50 = v16;
    v18 = CAFNotificationDataSources.currentCarPublisher.getter();
    v45 = v1;
    v54 = v18;
    swift_getKeyPath();
    v44 = v7;
    v48 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR);
    v47 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd, &_sSaySo25CAFAutomakerNotificationsCGMR);
    v46 = v11;
    v49 = v9;
    v19 = MEMORY[0x277CBCD90];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR, MEMORY[0x277CBCD90]);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<[CAFAutomakerNotifications]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GMR, MEMORY[0x277CBCEC8]);
    v20 = Publisher.flatMap<A, B>(_:)();
    v41[2] = v20;

    v54 = v20;
    v43 = v0;
    v21 = v0[2];
    v22 = v0[3];
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;

    v41[1] = static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMR);
    v42 = v4;
    v24 = v3;
    v25 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGAKy10CAFCombine0jkL10ObservableCAOGGGMd, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGAKy10CAFCombine0jkL10ObservableCAOGGGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[CAFAutomakerNotifications], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMR, v19);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFMinimalRemoteNotification, Never>>, AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGAKy10CAFCombine0jkL10ObservableCAOGGGMd, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGAKy10CAFCombine0jkL10ObservableCAOGGGMR, MEMORY[0x277CBCCD0]);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFMinimalRemoteNotification, Never>>, AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGAMy10CAFCombine0klM10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGAMy10CAFCombine0klM10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMR, MEMORY[0x277CBCCE0]);
    v26 = v44;
    v27 = v45;
    Publisher.map<A>(_:)();
    (*(v25 + 8))(v24, v27);
    v28 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFMinimalRemoteNotification, Never>>, AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGAOy10CAFCombine0klM10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGAOy10CAFCombine0klM10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMR, MEMORY[0x277CBCC08]);
    v29 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGMR, MEMORY[0x277CBCD48]);
    v30 = v46;
    v31 = v42;
    MEMORY[0x245D0C880](v42, v28, v29);
    (*(v47 + 8))(v26, v31);
    v32 = v43;
    v34 = v43[2];
    v33 = v43[3];
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = v33;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFMinimalRemoteNotification, Never>>, AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AC6FilterVy_AIySo0klM0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AC6FilterVy_AIySo0klM0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMR, MEMORY[0x277CBCBB0]);

    v36 = v48;
    v37 = v50;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    (*(v49 + 8))(v30, v36);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFMinimalRemoteNotification, Never>>, AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>>>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatR0Vy_AC7CollectVy_AC0R7KeyPathVy_AC6FilterVy_AKySo0mnO0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatR0Vy_AC7CollectVy_AC0R7KeyPathVy_AC6FilterVy_AKySo0mnO0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMR, MEMORY[0x277CBCB60]);
    v38 = v51;
    v39 = v37;
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v52 + 8))(v39, v38);
    v32[13] = v17;
  }

  return v17;
}

uint64_t closure #1 in CAFNotificationDataSources.minimalRemoteNotification.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a2;
  v22 = a3;
  v26 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGMR);
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v10 = &v20 - v9;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijK10ObservableCAMGGMd, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijK10ObservableCAMGGMR);
  v11 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v13 = &v20 - v12;
  v27 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd, &_sSaySo25CAFAutomakerNotificationsCGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [CAFAutomakerNotifications] and conformance [A], &_sSaySo25CAFAutomakerNotificationsCGMd, &_sSaySo25CAFAutomakerNotificationsCGMR, MEMORY[0x277D83970]);
  Sequence.publisher.getter();
  swift_getKeyPath();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFMinimalRemoteNotification, 0x277CF8520);
  v14 = MEMORY[0x277CBCD18];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFAutomakerNotifications], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMR, MEMORY[0x277CBCD18]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFMinimalRemoteNotification], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo28CAFMinimalRemoteNotificationCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo28CAFMinimalRemoteNotificationCGs5NeverOGMR, v14);
  v15 = Publisher.compactFlatMap<A, B>(_:)();

  (*(v6 + 8))(v8, v5);
  v27 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = v21;
  *(v16 + 24) = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGMd, &_s7Combine12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFMinimalRemoteNotification, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGMd, &_s7Combine12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGMR, MEMORY[0x277CBCD90]);
  Publisher.filter(_:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFMinimalRemoteNotification, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGMR, MEMORY[0x277CBCC90]);
  v17 = v23;
  Publisher.map<A>(_:)();

  (*(v25 + 8))(v10, v17);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFMinimalRemoteNotification, Never>>, AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>> and conformance Publishers.MapKeyPath<A, B>, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijK10ObservableCAMGGMd, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo28CAFMinimalRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijK10ObservableCAMGGMR, MEMORY[0x277CBCB20]);
  v18 = v24;
  Publisher.collect()();
  return (*(v11 + 8))(v13, v18);
}

uint64_t closure #2 in CAFNotificationDataSources.minimalRemoteNotification.getter(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFMinimalRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGMR, MEMORY[0x277CBCD90]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGMR, MEMORY[0x277D83970]);
  return Publishers.MergeMany.init<A>(_:)();
}

uint64_t CAFNotificationDataSources.singleSelectRemoteNotification.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGAMy10CAFCombine0klmN10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGAMy10CAFCombine0klmN10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMR);
  v53 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v41 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGAOy10CAFCombine0klmN10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGAOy10CAFCombine0klmN10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_AC0Q7KeyPathVy_AC6FilterVy_AIySo0klmN0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_AC0Q7KeyPathVy_AC6FilterVy_AIySo0klmN0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatS0Vy_AC7CollectVy_AC0S7KeyPathVy_AC6FilterVy_AKySo0mnoP0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatS0Vy_AC7CollectVy_AC0S7KeyPathVy_AC6FilterVy_AKySo0mnoP0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMR);
  MEMORY[0x28223BE20](v12);
  v16 = v41 - v15;
  if (v0[14])
  {
    v17 = v0[14];
  }

  else
  {
    v51 = v13;
    v52 = v14;
    v50 = v16;
    v18 = CAFNotificationDataSources.currentCarPublisher.getter();
    v45 = v1;
    v54 = v18;
    swift_getKeyPath();
    v44 = v7;
    v48 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR);
    v47 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd, &_sSaySo25CAFAutomakerNotificationsCGMR);
    v46 = v11;
    v49 = v9;
    v19 = MEMORY[0x277CBCD90];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR, MEMORY[0x277CBCD90]);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<[CAFAutomakerNotifications]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GMR, MEMORY[0x277CBCEC8]);
    v20 = Publisher.flatMap<A, B>(_:)();
    v41[2] = v20;

    v54 = v20;
    v43 = v0;
    v21 = v0[2];
    v22 = v0[3];
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;

    v41[1] = static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMR);
    v42 = v4;
    v24 = v3;
    v25 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGAKy10CAFCombine0jklM10ObservableCAOGGGMd, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGAKy10CAFCombine0jklM10ObservableCAOGGGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[CAFAutomakerNotifications], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMR, v19);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFSingleSelectRemoteNotification, Never>>, AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGAKy10CAFCombine0jklM10ObservableCAOGGGMd, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGAKy10CAFCombine0jklM10ObservableCAOGGGMR, MEMORY[0x277CBCCD0]);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFSingleSelectRemoteNotification, Never>>, AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGAMy10CAFCombine0klmN10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGAMy10CAFCombine0klmN10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMR, MEMORY[0x277CBCCE0]);
    v26 = v44;
    v27 = v45;
    Publisher.map<A>(_:)();
    (*(v25 + 8))(v24, v27);
    v28 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFSingleSelectRemoteNotification, Never>>, AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGAOy10CAFCombine0klmN10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGAOy10CAFCombine0klmN10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMR, MEMORY[0x277CBCC08]);
    v29 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGMR, MEMORY[0x277CBCD48]);
    v30 = v46;
    v31 = v42;
    MEMORY[0x245D0C880](v42, v28, v29);
    (*(v47 + 8))(v26, v31);
    v32 = v43;
    v34 = v43[2];
    v33 = v43[3];
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = v33;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFSingleSelectRemoteNotification, Never>>, AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_AC0Q7KeyPathVy_AC6FilterVy_AIySo0klmN0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_AC0Q7KeyPathVy_AC6FilterVy_AIySo0klmN0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMR, MEMORY[0x277CBCBB0]);

    v36 = v48;
    v37 = v50;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    (*(v49 + 8))(v30, v36);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFSingleSelectRemoteNotification, Never>>, AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>>>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatS0Vy_AC7CollectVy_AC0S7KeyPathVy_AC6FilterVy_AKySo0mnoP0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatS0Vy_AC7CollectVy_AC0S7KeyPathVy_AC6FilterVy_AKySo0mnoP0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMR, MEMORY[0x277CBCB60]);
    v38 = v51;
    v39 = v37;
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v52 + 8))(v39, v38);
    v32[14] = v17;
  }

  return v17;
}

uint64_t closure #1 in CAFNotificationDataSources.singleSelectRemoteNotification.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a2;
  v22 = a3;
  v26 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGMR);
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v10 = &v20 - v9;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijkL10ObservableCAMGGMd, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijkL10ObservableCAMGGMR);
  v11 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v13 = &v20 - v12;
  v27 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd, &_sSaySo25CAFAutomakerNotificationsCGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [CAFAutomakerNotifications] and conformance [A], &_sSaySo25CAFAutomakerNotificationsCGMd, &_sSaySo25CAFAutomakerNotificationsCGMR, MEMORY[0x277D83970]);
  Sequence.publisher.getter();
  swift_getKeyPath();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFSingleSelectRemoteNotification, 0x277CF8658);
  v14 = MEMORY[0x277CBCD18];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFAutomakerNotifications], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMR, MEMORY[0x277CBCD18]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFSingleSelectRemoteNotification], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo33CAFSingleSelectRemoteNotificationCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo33CAFSingleSelectRemoteNotificationCGs5NeverOGMR, v14);
  v15 = Publisher.compactFlatMap<A, B>(_:)();

  (*(v6 + 8))(v8, v5);
  v27 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = v21;
  *(v16 + 24) = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGMd, &_s7Combine12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFSingleSelectRemoteNotification, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGMd, &_s7Combine12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGMR, MEMORY[0x277CBCD90]);
  Publisher.filter(_:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFSingleSelectRemoteNotification, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGMR, MEMORY[0x277CBCC90]);
  v17 = v23;
  Publisher.map<A>(_:)();

  (*(v25 + 8))(v10, v17);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFSingleSelectRemoteNotification, Never>>, AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>> and conformance Publishers.MapKeyPath<A, B>, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijkL10ObservableCAMGGMd, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo33CAFSingleSelectRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijkL10ObservableCAMGGMR, MEMORY[0x277CBCB20]);
  v18 = v24;
  Publisher.collect()();
  return (*(v11 + 8))(v13, v18);
}

uint64_t closure #2 in CAFNotificationDataSources.singleSelectRemoteNotification.getter(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGMR, MEMORY[0x277CBCD90]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGMR, MEMORY[0x277D83970]);
  return Publishers.MergeMany.init<A>(_:)();
}

uint64_t CAFNotificationDataSources.multiSelectRemoteNotification.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGAMy10CAFCombine0klmN10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGAMy10CAFCombine0klmN10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMR);
  v53 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v41 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGAOy10CAFCombine0klmN10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGAOy10CAFCombine0klmN10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_AC0Q7KeyPathVy_AC6FilterVy_AIySo0klmN0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_AC0Q7KeyPathVy_AC6FilterVy_AIySo0klmN0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatS0Vy_AC7CollectVy_AC0S7KeyPathVy_AC6FilterVy_AKySo0mnoP0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatS0Vy_AC7CollectVy_AC0S7KeyPathVy_AC6FilterVy_AKySo0mnoP0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMR);
  MEMORY[0x28223BE20](v12);
  v16 = v41 - v15;
  if (v0[15])
  {
    v17 = v0[15];
  }

  else
  {
    v51 = v13;
    v52 = v14;
    v50 = v16;
    v18 = CAFNotificationDataSources.currentCarPublisher.getter();
    v45 = v1;
    v54 = v18;
    swift_getKeyPath();
    v44 = v7;
    v48 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR);
    v47 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd, &_sSaySo25CAFAutomakerNotificationsCGMR);
    v46 = v11;
    v49 = v9;
    v19 = MEMORY[0x277CBCD90];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR, MEMORY[0x277CBCD90]);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<[CAFAutomakerNotifications]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GMR, MEMORY[0x277CBCEC8]);
    v20 = Publisher.flatMap<A, B>(_:)();
    v41[2] = v20;

    v54 = v20;
    v43 = v0;
    v21 = v0[2];
    v22 = v0[3];
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;

    v41[1] = static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMR);
    v42 = v4;
    v24 = v3;
    v25 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGAKy10CAFCombine0jklM10ObservableCAOGGGMd, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGAKy10CAFCombine0jklM10ObservableCAOGGGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[CAFAutomakerNotifications], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMR, v19);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFMultiSelectRemoteNotification, Never>>, AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGAKy10CAFCombine0jklM10ObservableCAOGGGMd, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGAKy10CAFCombine0jklM10ObservableCAOGGGMR, MEMORY[0x277CBCCD0]);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFMultiSelectRemoteNotification, Never>>, AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGAMy10CAFCombine0klmN10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGAMy10CAFCombine0klmN10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMR, MEMORY[0x277CBCCE0]);
    v26 = v44;
    v27 = v45;
    Publisher.map<A>(_:)();
    (*(v25 + 8))(v24, v27);
    v28 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFMultiSelectRemoteNotification, Never>>, AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGAOy10CAFCombine0klmN10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGAOy10CAFCombine0klmN10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMR, MEMORY[0x277CBCC08]);
    v29 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGMR, MEMORY[0x277CBCD48]);
    v30 = v46;
    v31 = v42;
    MEMORY[0x245D0C880](v42, v28, v29);
    (*(v47 + 8))(v26, v31);
    v32 = v43;
    v34 = v43[2];
    v33 = v43[3];
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = v33;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFMultiSelectRemoteNotification, Never>>, AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_AC0Q7KeyPathVy_AC6FilterVy_AIySo0klmN0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_AC0Q7KeyPathVy_AC6FilterVy_AIySo0klmN0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMR, MEMORY[0x277CBCBB0]);

    v36 = v48;
    v37 = v50;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    (*(v49 + 8))(v30, v36);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFMultiSelectRemoteNotification, Never>>, AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>>>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatS0Vy_AC7CollectVy_AC0S7KeyPathVy_AC6FilterVy_AKySo0mnoP0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatS0Vy_AC7CollectVy_AC0S7KeyPathVy_AC6FilterVy_AKySo0mnoP0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMR, MEMORY[0x277CBCB60]);
    v38 = v51;
    v39 = v37;
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v52 + 8))(v39, v38);
    v32[15] = v17;
  }

  return v17;
}

uint64_t closure #1 in CAFNotificationDataSources.multiSelectRemoteNotification.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a2;
  v22 = a3;
  v26 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGMR);
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v10 = &v20 - v9;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijkL10ObservableCAMGGMd, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijkL10ObservableCAMGGMR);
  v11 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v13 = &v20 - v12;
  v27 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd, &_sSaySo25CAFAutomakerNotificationsCGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [CAFAutomakerNotifications] and conformance [A], &_sSaySo25CAFAutomakerNotificationsCGMd, &_sSaySo25CAFAutomakerNotificationsCGMR, MEMORY[0x277D83970]);
  Sequence.publisher.getter();
  swift_getKeyPath();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFMultiSelectRemoteNotification, 0x277CF8530);
  v14 = MEMORY[0x277CBCD18];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFAutomakerNotifications], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMR, MEMORY[0x277CBCD18]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFMultiSelectRemoteNotification], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo32CAFMultiSelectRemoteNotificationCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo32CAFMultiSelectRemoteNotificationCGs5NeverOGMR, v14);
  v15 = Publisher.compactFlatMap<A, B>(_:)();

  (*(v6 + 8))(v8, v5);
  v27 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = v21;
  *(v16 + 24) = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGMd, &_s7Combine12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFMultiSelectRemoteNotification, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGMd, &_s7Combine12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGMR, MEMORY[0x277CBCD90]);
  Publisher.filter(_:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFMultiSelectRemoteNotification, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGMR, MEMORY[0x277CBCC90]);
  v17 = v23;
  Publisher.map<A>(_:)();

  (*(v25 + 8))(v10, v17);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFMultiSelectRemoteNotification, Never>>, AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>> and conformance Publishers.MapKeyPath<A, B>, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijkL10ObservableCAMGGMd, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo32CAFMultiSelectRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijkL10ObservableCAMGGMR, MEMORY[0x277CBCB20]);
  v18 = v24;
  Publisher.collect()();
  return (*(v11 + 8))(v13, v18);
}

uint64_t closure #2 in CAFNotificationDataSources.multiSelectRemoteNotification.getter(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGMR, MEMORY[0x277CBCD90]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGMR, MEMORY[0x277D83970]);
  return Publishers.MergeMany.init<A>(_:)();
}

uint64_t CAFNotificationDataSources.modalAlertRemoteNotification.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGAMy10CAFCombine0klM10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGAMy10CAFCombine0klM10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMR);
  v53 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v41 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGAOy10CAFCombine0klM10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGAOy10CAFCombine0klM10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AC6FilterVy_AIySo0klM0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AC6FilterVy_AIySo0klM0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatR0Vy_AC7CollectVy_AC0R7KeyPathVy_AC6FilterVy_AKySo0mnO0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatR0Vy_AC7CollectVy_AC0R7KeyPathVy_AC6FilterVy_AKySo0mnO0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMR);
  MEMORY[0x28223BE20](v12);
  v16 = v41 - v15;
  if (v0[16])
  {
    v17 = v0[16];
  }

  else
  {
    v51 = v13;
    v52 = v14;
    v50 = v16;
    v18 = CAFNotificationDataSources.currentCarPublisher.getter();
    v45 = v1;
    v54 = v18;
    swift_getKeyPath();
    v44 = v7;
    v48 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR);
    v47 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd, &_sSaySo25CAFAutomakerNotificationsCGMR);
    v46 = v11;
    v49 = v9;
    v19 = MEMORY[0x277CBCD90];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR, MEMORY[0x277CBCD90]);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<[CAFAutomakerNotifications]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo25CAFAutomakerNotificationsCG_GMR, MEMORY[0x277CBCEC8]);
    v20 = Publisher.flatMap<A, B>(_:)();
    v41[2] = v20;

    v54 = v20;
    v43 = v0;
    v21 = v0[2];
    v22 = v0[3];
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;

    v41[1] = static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMR);
    v42 = v4;
    v24 = v3;
    v25 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGAKy10CAFCombine0jkL10ObservableCAOGGGMd, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGAKy10CAFCombine0jkL10ObservableCAOGGGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[CAFAutomakerNotifications], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine12AnyPublisherVySaySo25CAFAutomakerNotificationsCGs5NeverOGMR, v19);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFAlertRemoteNotification, Never>>, AnyPublisher<CAFAlertRemoteNotificationObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGAKy10CAFCombine0jkL10ObservableCAOGGGMd, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGAKy10CAFCombine0jkL10ObservableCAOGGGMR, MEMORY[0x277CBCCD0]);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFAlertRemoteNotification, Never>>, AnyPublisher<CAFAlertRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGAMy10CAFCombine0klM10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGAMy10CAFCombine0klM10ObservableCAQGGGAMySaySo25CAFAutomakerNotificationsCGAQGGMR, MEMORY[0x277CBCCE0]);
    v26 = v44;
    v27 = v45;
    Publisher.map<A>(_:)();
    (*(v25 + 8))(v24, v27);
    v28 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFAlertRemoteNotification, Never>>, AnyPublisher<CAFAlertRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFAlertRemoteNotificationObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGAOy10CAFCombine0klM10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGAOy10CAFCombine0klM10ObservableCASGGGAOySaySo25CAFAutomakerNotificationsCGASGGAC9MergeManyVy_AYGGMR, MEMORY[0x277CBCC08]);
    v29 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFAlertRemoteNotificationObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGMR, MEMORY[0x277CBCD48]);
    v30 = v46;
    v31 = v42;
    MEMORY[0x245D0C880](v42, v28, v29);
    (*(v47 + 8))(v26, v31);
    v32 = v43;
    v34 = v43[2];
    v33 = v43[3];
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = v33;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFAlertRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFAlertRemoteNotification, Never>>, AnyPublisher<CAFAlertRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFAlertRemoteNotificationObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AC6FilterVy_AIySo0klM0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AC6FilterVy_AIySo0klM0CANGGAOGGAIySaySo25CAFAutomakerNotificationsCGANGGAPGGMR, MEMORY[0x277CBCBB0]);

    v36 = v48;
    v37 = v50;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    (*(v49 + 8))(v30, v36);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFAlertRemoteNotificationObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFAlertRemoteNotification, Never>>, AnyPublisher<CAFAlertRemoteNotificationObservable, Never>>>, AnyPublisher<[CAFAutomakerNotifications], Never>>, Publishers.MergeMany<AnyPublisher<CAFAlertRemoteNotificationObservable, Never>>>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatR0Vy_AC7CollectVy_AC0R7KeyPathVy_AC6FilterVy_AKySo0mnO0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGAC3MapVy_AC04FlatR0Vy_AC7CollectVy_AC0R7KeyPathVy_AC6FilterVy_AKySo0mnO0CAPGGAQGGAKySaySo25CAFAutomakerNotificationsCGAPGGARGGGMR, MEMORY[0x277CBCB60]);
    v38 = v51;
    v39 = v37;
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v52 + 8))(v39, v38);
    v32[16] = v17;
  }

  return v17;
}

uint64_t closure #1 in CAFNotificationDataSources.modalAlertRemoteNotification.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a2;
  v22 = a3;
  v26 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGMR);
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v10 = &v20 - v9;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijK10ObservableCAMGGMd, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijK10ObservableCAMGGMR);
  v11 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v13 = &v20 - v12;
  v27 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo25CAFAutomakerNotificationsCGMd, &_sSaySo25CAFAutomakerNotificationsCGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [CAFAutomakerNotifications] and conformance [A], &_sSaySo25CAFAutomakerNotificationsCGMd, &_sSaySo25CAFAutomakerNotificationsCGMR, MEMORY[0x277D83970]);
  Sequence.publisher.getter();
  swift_getKeyPath();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAlertRemoteNotification, 0x277CF82F0);
  v14 = MEMORY[0x277CBCD18];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFAutomakerNotifications], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo25CAFAutomakerNotificationsCGs5NeverOGMR, MEMORY[0x277CBCD18]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFAlertRemoteNotification], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo26CAFAlertRemoteNotificationCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo26CAFAlertRemoteNotificationCGs5NeverOGMR, v14);
  v15 = Publisher.compactFlatMap<A, B>(_:)();

  (*(v6 + 8))(v8, v5);
  v27 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = v21;
  *(v16 + 24) = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGMd, &_s7Combine12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFAlertRemoteNotification, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGMd, &_s7Combine12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGMR, MEMORY[0x277CBCD90]);
  Publisher.filter(_:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFAlertRemoteNotification, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGMR, MEMORY[0x277CBCC90]);
  v17 = v23;
  Publisher.map<A>(_:)();

  (*(v25 + 8))(v10, v17);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFAlertRemoteNotification, Never>>, AnyPublisher<CAFAlertRemoteNotificationObservable, Never>> and conformance Publishers.MapKeyPath<A, B>, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijK10ObservableCAMGGMd, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFAlertRemoteNotificationCs5NeverOGGAIy10CAFCombine0ijK10ObservableCAMGGMR, MEMORY[0x277CBCB20]);
  v18 = v24;
  Publisher.collect()();
  return (*(v11 + 8))(v13, v18);
}

uint64_t closure #2 in CAFNotificationDataSources.modalAlertRemoteNotification.getter(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFAlertRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGMR, MEMORY[0x277CBCD90]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFAlertRemoteNotificationObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGMR, MEMORY[0x277D83970]);
  return Publishers.MergeMany.init<A>(_:)();
}

uint64_t CAFNotificationDataSources.requestContent.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGAMy10CAFCombine0kL10ObservableCAQGGGAMySaySo019CAFAutomakerRequestL0CGAQGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGAMy10CAFCombine0kL10ObservableCAQGGGAMySaySo019CAFAutomakerRequestL0CGAQGGMR);
  v53 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v41 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGAOy10CAFCombine0kL10ObservableCASGGGAOySaySo019CAFAutomakerRequestL0CGASGGAC9MergeManyVy_AYGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGAOy10CAFCombine0kL10ObservableCASGGGAOySaySo019CAFAutomakerRequestL0CGASGGAC9MergeManyVy_AYGGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGAC3MapVy_AC04FlatO0Vy_AC7CollectVy_AC0O7KeyPathVy_AC6FilterVy_AIySo0kL0CANGGAOGGAIySaySo019CAFAutomakerRequestL0CGANGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGAC3MapVy_AC04FlatO0Vy_AC7CollectVy_AC0O7KeyPathVy_AC6FilterVy_AIySo0kL0CANGGAOGGAIySaySo019CAFAutomakerRequestL0CGANGGAPGGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_AC0Q7KeyPathVy_AC6FilterVy_AKySo0mN0CAPGGAQGGAKySaySo019CAFAutomakerRequestN0CGAPGGARGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_AC0Q7KeyPathVy_AC6FilterVy_AKySo0mN0CAPGGAQGGAKySaySo019CAFAutomakerRequestN0CGAPGGARGGGMR);
  MEMORY[0x28223BE20](v12);
  v16 = v41 - v15;
  if (v0[17])
  {
    v17 = v0[17];
  }

  else
  {
    v51 = v13;
    v52 = v14;
    v50 = v16;
    v18 = CAFNotificationDataSources.currentCarPublisher.getter();
    v45 = v1;
    v54 = v18;
    swift_getKeyPath();
    v44 = v7;
    v48 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR);
    v47 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo26CAFAutomakerRequestContentCGMd, &_sSaySo26CAFAutomakerRequestContentCGMR);
    v46 = v11;
    v49 = v9;
    v19 = MEMORY[0x277CBCD90];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR, MEMORY[0x277CBCD90]);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<[CAFAutomakerRequestContent]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySaySo26CAFAutomakerRequestContentCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo26CAFAutomakerRequestContentCG_GMR, MEMORY[0x277CBCEC8]);
    v20 = Publisher.flatMap<A, B>(_:)();
    v41[2] = v20;

    v54 = v20;
    v43 = v0;
    v21 = v0[2];
    v22 = v0[3];
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;

    v41[1] = static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySaySo26CAFAutomakerRequestContentCGs5NeverOGMd, &_s7Combine12AnyPublisherVySaySo26CAFAutomakerRequestContentCGs5NeverOGMR);
    v42 = v4;
    v24 = v3;
    v25 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGAKy10CAFCombine0jK10ObservableCAOGGGMd, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGAKy10CAFCombine0jK10ObservableCAOGGGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[CAFAutomakerRequestContent], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySaySo26CAFAutomakerRequestContentCGs5NeverOGMd, &_s7Combine12AnyPublisherVySaySo26CAFAutomakerRequestContentCGs5NeverOGMR, v19);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRequestContent, Never>>, AnyPublisher<CAFRequestContentObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGAKy10CAFCombine0jK10ObservableCAOGGGMd, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGAKy10CAFCombine0jK10ObservableCAOGGGMR, MEMORY[0x277CBCCD0]);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRequestContent, Never>>, AnyPublisher<CAFRequestContentObservable, Never>>>, AnyPublisher<[CAFAutomakerRequestContent], Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGAMy10CAFCombine0kL10ObservableCAQGGGAMySaySo019CAFAutomakerRequestL0CGAQGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGAMy10CAFCombine0kL10ObservableCAQGGGAMySaySo019CAFAutomakerRequestL0CGAQGGMR, MEMORY[0x277CBCCE0]);
    v26 = v44;
    v27 = v45;
    Publisher.map<A>(_:)();
    (*(v25 + 8))(v24, v27);
    v28 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRequestContent, Never>>, AnyPublisher<CAFRequestContentObservable, Never>>>, AnyPublisher<[CAFAutomakerRequestContent], Never>>, Publishers.MergeMany<AnyPublisher<CAFRequestContentObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGAOy10CAFCombine0kL10ObservableCASGGGAOySaySo019CAFAutomakerRequestL0CGASGGAC9MergeManyVy_AYGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGAOy10CAFCombine0kL10ObservableCASGGGAOySaySo019CAFAutomakerRequestL0CGASGGAC9MergeManyVy_AYGGMR, MEMORY[0x277CBCC08]);
    v29 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFRequestContentObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMR, MEMORY[0x277CBCD48]);
    v30 = v46;
    v31 = v42;
    MEMORY[0x245D0C880](v42, v28, v29);
    (*(v47 + 8))(v26, v31);
    v32 = v43;
    v34 = v43[2];
    v33 = v43[3];
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = v33;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFRequestContentObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRequestContent, Never>>, AnyPublisher<CAFRequestContentObservable, Never>>>, AnyPublisher<[CAFAutomakerRequestContent], Never>>, Publishers.MergeMany<AnyPublisher<CAFRequestContentObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGAC3MapVy_AC04FlatO0Vy_AC7CollectVy_AC0O7KeyPathVy_AC6FilterVy_AIySo0kL0CANGGAOGGAIySaySo019CAFAutomakerRequestL0CGANGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGAC3MapVy_AC04FlatO0Vy_AC7CollectVy_AC0O7KeyPathVy_AC6FilterVy_AIySo0kL0CANGGAOGGAIySaySo019CAFAutomakerRequestL0CGANGGAPGGMR, MEMORY[0x277CBCBB0]);

    v36 = v48;
    v37 = v50;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    (*(v49 + 8))(v30, v36);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFRequestContentObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRequestContent, Never>>, AnyPublisher<CAFRequestContentObservable, Never>>>, AnyPublisher<[CAFAutomakerRequestContent], Never>>, Publishers.MergeMany<AnyPublisher<CAFRequestContentObservable, Never>>>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_AC0Q7KeyPathVy_AC6FilterVy_AKySo0mN0CAPGGAQGGAKySaySo019CAFAutomakerRequestN0CGAPGGARGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGAC3MapVy_AC04FlatQ0Vy_AC7CollectVy_AC0Q7KeyPathVy_AC6FilterVy_AKySo0mN0CAPGGAQGGAKySaySo019CAFAutomakerRequestN0CGAPGGARGGGMR, MEMORY[0x277CBCB60]);
    v38 = v51;
    v39 = v37;
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v52 + 8))(v39, v38);
    v32[17] = v17;
  }

  return v17;
}

uint64_t closure #1 in CAFNotificationDataSources.requestContent.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a2;
  v22 = a3;
  v26 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_SaySo26CAFAutomakerRequestContentCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo26CAFAutomakerRequestContentCGs5NeverOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGMR);
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v10 = &v20 - v9;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGAIy10CAFCombine0iJ10ObservableCAMGGMd, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGAIy10CAFCombine0iJ10ObservableCAMGGMR);
  v11 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v13 = &v20 - v12;
  v27 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo26CAFAutomakerRequestContentCGMd, &_sSaySo26CAFAutomakerRequestContentCGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [CAFAutomakerRequestContent] and conformance [A], &_sSaySo26CAFAutomakerRequestContentCGMd, &_sSaySo26CAFAutomakerRequestContentCGMR, MEMORY[0x277D83970]);
  Sequence.publisher.getter();
  swift_getKeyPath();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFRequestContent, 0x277CF85D8);
  v14 = MEMORY[0x277CBCD18];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFAutomakerRequestContent], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo26CAFAutomakerRequestContentCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo26CAFAutomakerRequestContentCGs5NeverOGMR, MEMORY[0x277CBCD18]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFRequestContent], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo17CAFRequestContentCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo17CAFRequestContentCGs5NeverOGMR, v14);
  v15 = Publisher.compactFlatMap<A, B>(_:)();

  (*(v6 + 8))(v8, v5);
  v27 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = v21;
  *(v16 + 24) = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo17CAFRequestContentCs5NeverOGMd, &_s7Combine12AnyPublisherVySo17CAFRequestContentCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestContent, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo17CAFRequestContentCs5NeverOGMd, &_s7Combine12AnyPublisherVySo17CAFRequestContentCs5NeverOGMR, MEMORY[0x277CBCD90]);
  Publisher.filter(_:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestContent, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGMR, MEMORY[0x277CBCC90]);
  v17 = v23;
  Publisher.map<A>(_:)();

  (*(v25 + 8))(v10, v17);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRequestContent, Never>>, AnyPublisher<CAFRequestContentObservable, Never>> and conformance Publishers.MapKeyPath<A, B>, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGAIy10CAFCombine0iJ10ObservableCAMGGMd, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo17CAFRequestContentCs5NeverOGGAIy10CAFCombine0iJ10ObservableCAMGGMR, MEMORY[0x277CBCB20]);
  v18 = v24;
  Publisher.collect()();
  return (*(v11 + 8))(v13, v18);
}

uint64_t closure #2 in CAFNotificationDataSources.requestContent.getter(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMR, MEMORY[0x277CBCD90]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFRequestContentObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMR, MEMORY[0x277D83970]);
  return Publishers.MergeMany.init<A>(_:)();
}

uint64_t CAFNotificationDataSources.requestTemporaryContent.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGAMy10CAFCombine0klM10ObservableCAQGGGAMySaySo019CAFAutomakerRequestM0CGAQGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGAMy10CAFCombine0klM10ObservableCAQGGGAMySaySo019CAFAutomakerRequestM0CGAQGGMR);
  v53 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = v41 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGAOy10CAFCombine0klM10ObservableCASGGGAOySaySo019CAFAutomakerRequestM0CGASGGAC9MergeManyVy_AYGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGAOy10CAFCombine0klM10ObservableCASGGGAOySaySo019CAFAutomakerRequestM0CGASGGAC9MergeManyVy_AYGGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AC6FilterVy_AIySo0klM0CANGGAOGGAIySaySo019CAFAutomakerRequestM0CGANGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AC6FilterVy_AIySo0klM0CANGGAOGGAIySaySo019CAFAutomakerRequestM0CGANGGAPGGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGAC3MapVy_AC04FlatR0Vy_AC7CollectVy_AC0R7KeyPathVy_AC6FilterVy_AKySo0mnO0CAPGGAQGGAKySaySo019CAFAutomakerRequestO0CGAPGGARGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGAC3MapVy_AC04FlatR0Vy_AC7CollectVy_AC0R7KeyPathVy_AC6FilterVy_AKySo0mnO0CAPGGAQGGAKySaySo019CAFAutomakerRequestO0CGAPGGARGGGMR);
  MEMORY[0x28223BE20](v12);
  v16 = v41 - v15;
  if (v0[18])
  {
    v17 = v0[18];
  }

  else
  {
    v51 = v13;
    v52 = v14;
    v50 = v16;
    v18 = CAFNotificationDataSources.currentCarPublisher.getter();
    v45 = v1;
    v54 = v18;
    swift_getKeyPath();
    v44 = v7;
    v48 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR);
    v47 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo26CAFAutomakerRequestContentCGMd, &_sSaySo26CAFAutomakerRequestContentCGMR);
    v46 = v11;
    v49 = v9;
    v19 = MEMORY[0x277CBCD90];
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFCar, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMd, &_s7Combine12AnyPublisherVySo6CAFCarCs5NeverOGMR, MEMORY[0x277CBCD90]);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Published<[CAFAutomakerRequestContent]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySaySo26CAFAutomakerRequestContentCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo26CAFAutomakerRequestContentCG_GMR, MEMORY[0x277CBCEC8]);
    v20 = Publisher.flatMap<A, B>(_:)();
    v41[2] = v20;

    v54 = v20;
    v43 = v0;
    v21 = v0[2];
    v22 = v0[3];
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;

    v41[1] = static Subscribers.Demand.unlimited.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySaySo26CAFAutomakerRequestContentCGs5NeverOGMd, &_s7Combine12AnyPublisherVySaySo26CAFAutomakerRequestContentCGs5NeverOGMR);
    v42 = v4;
    v24 = v3;
    v25 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGAKy10CAFCombine0jkL10ObservableCAOGGGMd, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGAKy10CAFCombine0jkL10ObservableCAOGGGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<[CAFAutomakerRequestContent], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySaySo26CAFAutomakerRequestContentCGs5NeverOGMd, &_s7Combine12AnyPublisherVySaySo26CAFAutomakerRequestContentCGs5NeverOGMR, v19);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRequestTemporaryContent, Never>>, AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.Collect<A>, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGAKy10CAFCombine0jkL10ObservableCAOGGGMd, &_s7Combine10PublishersO7CollectVy_AC10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGAKy10CAFCombine0jkL10ObservableCAOGGGMR, MEMORY[0x277CBCCD0]);
    Publisher<>.flatMap<A>(maxPublishers:_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMR);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRequestTemporaryContent, Never>>, AnyPublisher<CAFRequestTemporaryContentObservable, Never>>>, AnyPublisher<[CAFAutomakerRequestContent], Never>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGAMy10CAFCombine0klM10ObservableCAQGGGAMySaySo019CAFAutomakerRequestM0CGAQGGMd, &_s7Combine10PublishersO7FlatMapVy_AC7CollectVy_AC0D7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGAMy10CAFCombine0klM10ObservableCAQGGGAMySaySo019CAFAutomakerRequestM0CGAQGGMR, MEMORY[0x277CBCCE0]);
    v26 = v44;
    v27 = v45;
    Publisher.map<A>(_:)();
    (*(v25 + 8))(v24, v27);
    v28 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRequestTemporaryContent, Never>>, AnyPublisher<CAFRequestTemporaryContentObservable, Never>>>, AnyPublisher<[CAFAutomakerRequestContent], Never>>, Publishers.MergeMany<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGAOy10CAFCombine0klM10ObservableCASGGGAOySaySo019CAFAutomakerRequestM0CGASGGAC9MergeManyVy_AYGGMd, &_s7Combine10PublishersO3MapVy_AC04FlatC0Vy_AC7CollectVy_AC0C7KeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGAOy10CAFCombine0klM10ObservableCASGGGAOySaySo019CAFAutomakerRequestM0CGASGGAC9MergeManyVy_AYGGMR, MEMORY[0x277CBCC08]);
    v29 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMR, MEMORY[0x277CBCD48]);
    v30 = v46;
    v31 = v42;
    MEMORY[0x245D0C880](v42, v28, v29);
    (*(v47 + 8))(v26, v31);
    v32 = v43;
    v34 = v43[2];
    v33 = v43[3];
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = v33;
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRequestTemporaryContent, Never>>, AnyPublisher<CAFRequestTemporaryContentObservable, Never>>>, AnyPublisher<[CAFAutomakerRequestContent], Never>>, Publishers.MergeMany<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>>> and conformance Publishers.SwitchToLatest<A, B>, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AC6FilterVy_AIySo0klM0CANGGAOGGAIySaySo019CAFAutomakerRequestM0CGANGGAPGGMd, &_s7Combine10PublishersO14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGAC3MapVy_AC04FlatP0Vy_AC7CollectVy_AC0P7KeyPathVy_AC6FilterVy_AIySo0klM0CANGGAOGGAIySaySo019CAFAutomakerRequestM0CGANGGAPGGMR, MEMORY[0x277CBCBB0]);

    v36 = v48;
    v37 = v50;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    (*(v49 + 8))(v30, v36);
    lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.SwitchToLatest<Publishers.MergeMany<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>, Publishers.Map<Publishers.FlatMap<Publishers.Collect<Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRequestTemporaryContent, Never>>, AnyPublisher<CAFRequestTemporaryContentObservable, Never>>>, AnyPublisher<[CAFAutomakerRequestContent], Never>>, Publishers.MergeMany<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGAC3MapVy_AC04FlatR0Vy_AC7CollectVy_AC0R7KeyPathVy_AC6FilterVy_AKySo0mnO0CAPGGAQGGAKySaySo019CAFAutomakerRequestO0CGAPGGARGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC14SwitchToLatestVy_AC9MergeManyVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGAC3MapVy_AC04FlatR0Vy_AC7CollectVy_AC0R7KeyPathVy_AC6FilterVy_AKySo0mnO0CAPGGAQGGAKySaySo019CAFAutomakerRequestO0CGAPGGARGGGMR, MEMORY[0x277CBCB60]);
    v38 = v51;
    v39 = v37;
    v17 = Publisher.eraseToAnyPublisher()();
    (*(v52 + 8))(v39, v38);
    v32[18] = v17;
  }

  return v17;
}

uint64_t closure #1 in CAFNotificationDataSources.requestTemporaryContent.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a2;
  v22 = a3;
  v26 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8SequenceVy_SaySo26CAFAutomakerRequestContentCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo26CAFAutomakerRequestContentCGs5NeverOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGMR);
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v10 = &v20 - v9;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGAIy10CAFCombine0ijK10ObservableCAMGGMd, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGAIy10CAFCombine0ijK10ObservableCAMGGMR);
  v11 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v13 = &v20 - v12;
  v27 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo26CAFAutomakerRequestContentCGMd, &_sSaySo26CAFAutomakerRequestContentCGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [CAFAutomakerRequestContent] and conformance [A], &_sSaySo26CAFAutomakerRequestContentCGMd, &_sSaySo26CAFAutomakerRequestContentCGMR, MEMORY[0x277D83970]);
  Sequence.publisher.getter();
  swift_getKeyPath();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFRequestTemporaryContent, 0x277CF85E0);
  v14 = MEMORY[0x277CBCD18];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFAutomakerRequestContent], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo26CAFAutomakerRequestContentCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo26CAFAutomakerRequestContentCGs5NeverOGMR, MEMORY[0x277CBCD18]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Sequence<[CAFRequestTemporaryContent], Never> and conformance Publishers.Sequence<A, B>, &_s7Combine10PublishersO8SequenceVy_SaySo26CAFRequestTemporaryContentCGs5NeverOGMd, &_s7Combine10PublishersO8SequenceVy_SaySo26CAFRequestTemporaryContentCGs5NeverOGMR, v14);
  v15 = Publisher.compactFlatMap<A, B>(_:)();

  (*(v6 + 8))(v8, v5);
  v27 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = v21;
  *(v16 + 24) = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGMd, &_s7Combine12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContent, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGMd, &_s7Combine12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGMR, MEMORY[0x277CBCD90]);
  Publisher.filter(_:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContent, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGMR, MEMORY[0x277CBCC90]);
  v17 = v23;
  Publisher.map<A>(_:)();

  (*(v25 + 8))(v10, v17);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MapKeyPath<Publishers.Filter<AnyPublisher<CAFRequestTemporaryContent, Never>>, AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.MapKeyPath<A, B>, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGAIy10CAFCombine0ijK10ObservableCAMGGMd, &_s7Combine10PublishersO10MapKeyPathVy_AC6FilterVy_AA12AnyPublisherVySo26CAFRequestTemporaryContentCs5NeverOGGAIy10CAFCombine0ijK10ObservableCAMGGMR, MEMORY[0x277CBCB20]);
  v18 = v24;
  Publisher.collect()();
  return (*(v11 + 8))(v13, v18);
}

uint64_t closure #1 in closure #1 in CAFNotificationDataSources.remoteNotification.getter(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 displayPanelIdentifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v6 == a2 && v8 == a3)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t closure #2 in CAFNotificationDataSources.requestTemporaryContent.getter(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMR, MEMORY[0x277CBCD90]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type [AnyPublisher<CAFRequestTemporaryContentObservable, Never>] and conformance [A], &_sSay7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd, &_sSay7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMR, MEMORY[0x277D83970]);
  return Publishers.MergeMany.init<A>(_:)();
}

void *CAFNotificationDataSources.remoteNotificationSource(zoneRegion:actionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMR);
  MEMORY[0x28223BE20](v31);
  v29 = v27 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMR);
  MEMORY[0x28223BE20](v30);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ017CAFRequestContentJ0CANGGGMd, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ017CAFRequestContentJ0CANGGGMR);
  v7 = *(v6 - 8);
  v32 = v6;
  v33 = v7;
  MEMORY[0x28223BE20](v6);
  v28 = v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd, &_s14CarPlayAssetUI17NotificationModelVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v27 - v10;
  v12 = CAFNotificationDataSources.remoteNotification.getter();
  v27[1] = v12;
  v34 = CAFNotificationDataSources.requestContent.getter();
  v13 = Zone.ZoneRegion.rawValue.getter();
  v15 = v14;
  type metadata accessor for CAFInferredNotificationSource();
  v16 = swift_allocObject();
  v16[2] = 0;
  v17 = type metadata accessor for NotificationModel();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMR);
  swift_allocObject();
  v16[3] = CurrentValueSubject.init(_:)();
  v16[4] = MEMORY[0x277D84FA0];
  v16[5] = a2;
  v16[6] = a3;
  v35 = v12;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  *(v18 + 24) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGMR);
  v19 = MEMORY[0x277CBCD90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGMR, MEMORY[0x277CBCD90]);
  Publisher.filter(_:)();

  v35 = v34;
  v20 = swift_allocObject();
  *(v20 + 16) = v13;
  *(v20 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMR, v19);
  Publisher.filter(_:)();

  v21 = MEMORY[0x277CBCC90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMR, MEMORY[0x277CBCC90]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMR, v21);
  v22 = v28;
  Publishers.CombineLatest.init(_:_:)();
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for closure #3 in CAFInferredNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:);
  *(v24 + 24) = v23;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ017CAFRequestContentJ0CANGGGMd, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ017CAFRequestContentJ0CANGGGMR, MEMORY[0x277CBCAF0]);
  v25 = v32;
  Publisher<>.sink(receiveValue:)();

  (*(v33 + 8))(v22, v25);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v16;
}

void *CAFNotificationDataSources.minimalRemoteNotificationSource(zoneRegion:destination:actionHandler:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMR);
  MEMORY[0x28223BE20](v39);
  v37 = &v31 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGMR);
  MEMORY[0x28223BE20](v38);
  v33 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMd, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMR);
  v10 = *(v9 - 8);
  v40 = v9;
  v41 = v10;
  MEMORY[0x28223BE20](v9);
  v35 = &v31 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd, &_s14CarPlayAssetUI17NotificationModelVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - v13;
  v36 = *a2;
  v15 = CAFNotificationDataSources.minimalRemoteNotification.getter();
  v34 = v15;
  v32 = CAFNotificationDataSources.requestTemporaryContent.getter();
  v16 = Zone.ZoneRegion.rawValue.getter();
  v18 = v17;
  type metadata accessor for CAFMinimalNotificationSource();
  v19 = swift_allocObject();
  v19[2] = 0;
  v20 = type metadata accessor for NotificationModel();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMR);
  swift_allocObject();
  v19[3] = CurrentValueSubject.init(_:)();
  v19[4] = MEMORY[0x277D84FA0];
  v19[5] = a3;
  v19[6] = a4;
  v42 = v15;
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGMR);
  v22 = MEMORY[0x277CBCD90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFMinimalRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGMR, MEMORY[0x277CBCD90]);
  Publisher.filter(_:)();

  v42 = v32;
  v23 = swift_allocObject();
  *(v23 + 16) = v16;
  *(v23 + 24) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMR, v22);
  Publisher.filter(_:)();

  v24 = MEMORY[0x277CBCC90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGMR, MEMORY[0x277CBCC90]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMR, v24);
  v25 = v35;
  Publishers.CombineLatest.init(_:_:)();
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v36;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for closure #3 in CAFMinimalNotificationSource.init(notification:requestContent:displayID:zoneRegion:destination:launchURL:);
  *(v28 + 24) = v27;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFMinimalRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMd, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine38CAFMinimalRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMR, MEMORY[0x277CBCAF0]);
  v29 = v40;
  Publisher<>.sink(receiveValue:)();

  (*(v41 + 8))(v25, v29);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v19;
}

void *CAFNotificationDataSources.alertRemoteNotificationSource(zoneRegion:actionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMR);
  MEMORY[0x28223BE20](v31);
  v29 = v27 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGMR);
  MEMORY[0x28223BE20](v30);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMd, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMR);
  v7 = *(v6 - 8);
  v32 = v6;
  v33 = v7;
  MEMORY[0x28223BE20](v6);
  v28 = v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd, &_s14CarPlayAssetUI17NotificationModelVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v27 - v10;
  v12 = CAFNotificationDataSources.modalAlertRemoteNotification.getter();
  v27[1] = v12;
  v34 = CAFNotificationDataSources.requestTemporaryContent.getter();
  v13 = Zone.ZoneRegion.rawValue.getter();
  v15 = v14;
  type metadata accessor for CAFAlertNotificationSource();
  v16 = swift_allocObject();
  v16[2] = 0;
  v17 = type metadata accessor for NotificationModel();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMR);
  swift_allocObject();
  v16[3] = CurrentValueSubject.init(_:)();
  v16[4] = MEMORY[0x277D84FA0];
  v16[5] = a2;
  v16[6] = a3;
  v35 = v12;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  *(v18 + 24) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGMR);
  v19 = MEMORY[0x277CBCD90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFAlertRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGMR, MEMORY[0x277CBCD90]);
  Publisher.filter(_:)();

  v35 = v34;
  v20 = swift_allocObject();
  *(v20 + 16) = v13;
  *(v20 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMR, v19);
  Publisher.filter(_:)();

  v21 = MEMORY[0x277CBCC90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFAlertRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGMR, MEMORY[0x277CBCC90]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMR, v21);
  v22 = v28;
  Publishers.CombineLatest.init(_:_:)();
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for closure #3 in CAFAlertNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:);
  *(v24 + 24) = v23;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFAlertRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMd, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFAlertRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMR, MEMORY[0x277CBCAF0]);
  v25 = v32;
  Publisher<>.sink(receiveValue:)();

  (*(v33 + 8))(v22, v25);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v16;
}

void *CAFNotificationDataSources.actionRemoteNotificationSource(zoneRegion:actionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMR);
  MEMORY[0x28223BE20](v31);
  v29 = v27 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGMR);
  MEMORY[0x28223BE20](v30);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMd, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMR);
  v7 = *(v6 - 8);
  v32 = v6;
  v33 = v7;
  MEMORY[0x28223BE20](v6);
  v28 = v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd, &_s14CarPlayAssetUI17NotificationModelVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v27 - v10;
  v12 = CAFNotificationDataSources.actionRemoteNotification.getter();
  v27[1] = v12;
  v34 = CAFNotificationDataSources.requestTemporaryContent.getter();
  v13 = Zone.ZoneRegion.rawValue.getter();
  v15 = v14;
  type metadata accessor for CAFActionNotificationSource();
  v16 = swift_allocObject();
  v16[2] = 0;
  v17 = type metadata accessor for NotificationModel();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMR);
  swift_allocObject();
  v16[3] = CurrentValueSubject.init(_:)();
  v16[4] = MEMORY[0x277D84FA0];
  v16[5] = a2;
  v16[6] = a3;
  v35 = v12;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  *(v18 + 24) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGMR);
  v19 = MEMORY[0x277CBCD90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFActionRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGMR, MEMORY[0x277CBCD90]);
  Publisher.filter(_:)();

  v35 = v34;
  v20 = swift_allocObject();
  *(v20 + 16) = v13;
  *(v20 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMR, v19);
  Publisher.filter(_:)();

  v21 = MEMORY[0x277CBCC90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFActionRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGMR, MEMORY[0x277CBCC90]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMR, v21);
  v22 = v28;
  Publishers.CombineLatest.init(_:_:)();
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for closure #3 in CAFActionNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:);
  *(v24 + 24) = v23;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFActionRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMd, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine37CAFActionRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentK0CANGGGMR, MEMORY[0x277CBCAF0]);
  v25 = v32;
  Publisher<>.sink(receiveValue:)();

  (*(v33 + 8))(v22, v25);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v16;
}

void *CAFNotificationDataSources.singleSelectRemoteNotificationSource(zoneRegion:actionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMR);
  MEMORY[0x28223BE20](v31);
  v29 = v27 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGMR);
  MEMORY[0x28223BE20](v30);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMd, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMR);
  v7 = *(v6 - 8);
  v32 = v6;
  v33 = v7;
  MEMORY[0x28223BE20](v6);
  v28 = v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd, &_s14CarPlayAssetUI17NotificationModelVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v27 - v10;
  v12 = CAFNotificationDataSources.singleSelectRemoteNotification.getter();
  v27[1] = v12;
  v34 = CAFNotificationDataSources.requestTemporaryContent.getter();
  v13 = Zone.ZoneRegion.rawValue.getter();
  v15 = v14;
  type metadata accessor for CAFSingleSelectNotificationSource();
  v16 = swift_allocObject();
  v16[2] = 0;
  v17 = type metadata accessor for NotificationModel();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMR);
  swift_allocObject();
  v16[3] = CurrentValueSubject.init(_:)();
  v16[4] = MEMORY[0x277D84FA0];
  v16[5] = a2;
  v16[6] = a3;
  v35 = v12;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  *(v18 + 24) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGMR);
  v19 = MEMORY[0x277CBCD90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGMR, MEMORY[0x277CBCD90]);
  Publisher.filter(_:)();

  v35 = v34;
  v20 = swift_allocObject();
  *(v20 + 16) = v13;
  *(v20 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMR, v19);
  Publisher.filter(_:)();

  v21 = MEMORY[0x277CBCC90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGMR, MEMORY[0x277CBCC90]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMR, v21);
  v22 = v28;
  Publishers.CombineLatest.init(_:_:)();
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for closure #3 in CAFSingleSelectNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:);
  *(v24 + 24) = v23;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFSingleSelectRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMd, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine43CAFSingleSelectRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMR, MEMORY[0x277CBCAF0]);
  v25 = v32;
  Publisher<>.sink(receiveValue:)();

  (*(v33 + 8))(v22, v25);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v16;
}

void *CAFNotificationDataSources.multiSelectRemoteNotificationSource(zoneRegion:actionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMR);
  MEMORY[0x28223BE20](v31);
  v29 = v27 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGMR);
  MEMORY[0x28223BE20](v30);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMd, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMR);
  v7 = *(v6 - 8);
  v32 = v6;
  v33 = v7;
  MEMORY[0x28223BE20](v6);
  v28 = v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd, &_s14CarPlayAssetUI17NotificationModelVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v27 - v10;
  v12 = CAFNotificationDataSources.multiSelectRemoteNotification.getter();
  v27[1] = v12;
  v34 = CAFNotificationDataSources.requestTemporaryContent.getter();
  v13 = Zone.ZoneRegion.rawValue.getter();
  v15 = v14;
  type metadata accessor for CAFMultiSelectNotificationSource();
  v16 = swift_allocObject();
  v16[2] = 0;
  v17 = type metadata accessor for NotificationModel();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMR);
  swift_allocObject();
  v16[3] = CurrentValueSubject.init(_:)();
  v16[4] = MEMORY[0x277D84FA0];
  v16[5] = a2;
  v16[6] = a3;
  v35 = v12;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  *(v18 + 24) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGMR);
  v19 = MEMORY[0x277CBCD90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGMR, MEMORY[0x277CBCD90]);
  Publisher.filter(_:)();

  v35 = v34;
  v20 = swift_allocObject();
  *(v20 + 16) = v13;
  *(v20 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMR, v19);
  Publisher.filter(_:)();

  v21 = MEMORY[0x277CBCC90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGMR, MEMORY[0x277CBCC90]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMR, v21);
  v22 = v28;
  Publishers.CombineLatest.init(_:_:)();
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for closure #3 in CAFMultiSelectNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:);
  *(v24 + 24) = v23;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFMultiSelectRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMd, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine42CAFMultiSelectRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMR, MEMORY[0x277CBCAF0]);
  v25 = v32;
  Publisher<>.sink(receiveValue:)();

  (*(v33 + 8))(v22, v25);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v16;
}

void *CAFNotificationDataSources.settingsNotificationSource(zoneRegion:settingsByIdentifier:actionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v62 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGMR);
  v7 = *(v6 - 8);
  v82 = v6;
  v83 = v7;
  MEMORY[0x28223BE20](v6);
  v81 = v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGMR);
  v10 = *(v9 - 8);
  v79 = v9;
  v80 = v10;
  MEMORY[0x28223BE20](v9);
  v78 = v57 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGMR);
  v77 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = v57 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGMR);
  v72 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = v57 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMR);
  MEMORY[0x28223BE20](v67);
  v65 = v57 - v14;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGMR);
  MEMORY[0x28223BE20](v66);
  v84 = v57 - v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMd, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMR);
  v69 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v64 = v57 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd, &_s14CarPlayAssetUI17NotificationModelVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v57 - v18;
  v20 = type metadata accessor for Zone.ZoneRegion();
  v88 = *(v20 - 8);
  v21 = v88;
  v22 = *(v88 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v59 = v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57[1] = v22;
  MEMORY[0x28223BE20](v23);
  v25 = v57 - v24;
  v26 = CAFNotificationDataSources.settingsNotification.getter();
  v76 = v26;
  v91 = CAFNotificationDataSources.requestTemporaryContent.getter();
  v89 = CAFNotificationDataSources.buttonSettings.getter();
  v90 = CAFNotificationDataSources.singleSelectSettings.getter();
  v85 = CAFNotificationDataSources.BOOLeanSettings.getter();
  v74 = CAFNotificationDataSources.deepLinkSettings.getter();
  v27 = *(v21 + 16);
  v87 = v25;
  v27(v25, a1, v20);
  v58 = v27;
  type metadata accessor for CAFSettingsNotificationSource();
  v28 = swift_allocObject();
  v28[2] = 0;
  v29 = type metadata accessor for NotificationModel();
  (*(*(v29 - 8) + 56))(v19, 1, 1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMR);
  swift_allocObject();
  v30 = CurrentValueSubject.init(_:)();
  v60 = v28;
  v28[3] = v30;
  v28[4] = MEMORY[0x277D84FA0];
  v63 = v28 + 4;
  v31 = MEMORY[0x277D84F90];
  v28[9] = 0;
  v28[10] = v31;
  v28[7] = v61;
  v28[8] = 0;
  v32 = v62;
  v28[5] = a2;
  v28[6] = v32;
  v92 = v26;
  v33 = v59;
  v34 = v20;
  v86 = v20;
  v27(v59, v25, v20);
  v35 = v88;
  v36 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v37 = swift_allocObject();
  v38 = *(v35 + 32);
  v38(v37 + v36, v33, v34);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGMR);
  v39 = MEMORY[0x277CBCD90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGMR, MEMORY[0x277CBCD90]);
  Publisher.filter(_:)();

  v92 = v91;
  v40 = v86;
  v58(v33, v87, v86);
  v41 = swift_allocObject();
  v38(v41 + v36, v33, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestTemporaryContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGMR, v39);
  Publisher.filter(_:)();

  v42 = MEMORY[0x277CBCC90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGMR, MEMORY[0x277CBCC90]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine36CAFRequestTemporaryContentObservableCs5NeverOGGMR, v42);
  v43 = v64;
  Publishers.CombineLatest.init(_:_:)();
  v44 = swift_allocObject();
  v45 = v60;
  swift_weakInit();
  v46 = swift_allocObject();
  *(v46 + 16) = partial apply for closure #3 in CAFSettingsNotificationSource.init(notification:requestContent:settingsByIdentifiers:buttonSetting:singleSelectSetting:BOOLeanSetting:deepLinkSetting:zoneRegion:launchURL:);
  *(v46 + 24) = v44;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFAutomakerSettingsRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestTemporaryContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMd, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine48CAFAutomakerSettingsRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ026CAFRequestTemporaryContentL0CANGGGMR, MEMORY[0x277CBCAF0]);

  v47 = v68;
  Publisher<>.sink(receiveValue:)();

  (*(v69 + 8))(v43, v47);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v92 = v90;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFSingleSelectSettingObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGMR, v39);
  v48 = v70;
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFSingleSelectSettingObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine32CAFSingleSelectSettingObservableCs5NeverOGGMR, v42);
  v49 = v71;
  Publisher<>.sink(receiveValue:)();

  (*(v72 + 8))(v48, v49);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v92 = v89;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFButtonSettingObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGMR, v39);
  v50 = v73;
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFButtonSettingObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine26CAFButtonSettingObservableCs5NeverOGGMR, v42);
  v51 = v75;
  Publisher<>.sink(receiveValue:)();

  (*(v77 + 8))(v50, v51);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v92 = v85;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFBooleanSettingObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGMR, v39);
  v52 = v78;
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFBooleanSettingObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFBooleanSettingObservableCs5NeverOGGMR, v42);
  v53 = v79;
  Publisher<>.sink(receiveValue:)();

  (*(v80 + 8))(v52, v53);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v92 = v74;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFDeepLinkSettingObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGMR, v39);
  v54 = v81;
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFDeepLinkSettingObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine28CAFDeepLinkSettingObservableCs5NeverOGGMR, v42);
  v55 = v82;
  Publisher<>.sink(receiveValue:)();

  (*(v83 + 8))(v54, v55);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  (*(v88 + 8))(v87, v86);
  return v45;
}

uint64_t CAFNotificationDataSources.requestContentSource(zoneRegion:)(uint64_t a1)
{
  v3 = type metadata accessor for Zone.ZoneRegion();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = CAFNotificationDataSources.requestContent.getter();
  v8 = CAFNotificationDataSources.requestTemporaryContent.getter();
  (*(v4 + 16))(v6, a1, v3);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  type metadata accessor for CAFRequestContentSource();
  swift_allocObject();

  v11 = specialized CAFRequestContentSource.init(requestContent:requestTemporaryContent:zoneRegion:displayPanelIdentifier:)(v7, v8, v6, v9, v10);

  return v11;
}

uint64_t CAFNotificationDataSources.notificationSource(settingsByIdentifier:zoneRegion:destination:actionHandler:)(void (*a1)(char *, uint64_t, uint64_t, uint64_t), uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v130 = a5;
  v131 = a1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMR);
  v133 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v118 = &v92 - v10;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AC11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI17NotificationModelVSgGs5NeverOGAA12AnyPublisherVyAmPGGGMd, &_s7Combine10PublishersO9MergeManyVy_AC11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI17NotificationModelVSgGs5NeverOGAA12AnyPublisherVyAmPGGGMR);
  v105 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v92 - v11;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGGMR);
  *&v132 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v127 = &v92 - v12;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI28RequestTemporaryContentModelVSgGs5NeverOGAA12AnyPublisherVyAkNGGMd, &_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI28RequestTemporaryContentModelVSgGs5NeverOGAA12AnyPublisherVyAkNGGMR);
  MEMORY[0x28223BE20](v103);
  v115 = &v92 - v13;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI28RequestTemporaryContentModelVSgGs5NeverOGAA12AnyPublisherVyAmPGGASyAJ012NotificationM0VAPGGMd, &_s7Combine10PublishersO0A6LatestVy_AC11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI28RequestTemporaryContentModelVSgGs5NeverOGAA12AnyPublisherVyAmPGGASyAJ012NotificationM0VAPGGMR);
  v107 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v101 = &v92 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd, &_s14CarPlayAssetUI17NotificationModelVSgMR);
  v121 = *(v15 - 8);
  v125 = v15 - 8;
  v123 = v121;
  MEMORY[0x28223BE20](v15 - 8);
  v126 = &v92 - v16;
  v17 = type metadata accessor for Zone.ZoneRegion();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a3;
  v100 = *a3;
  v22 = CAFNotificationDataSources.requestContent.getter();
  v23 = CAFNotificationDataSources.requestTemporaryContent.getter();
  (*(v18 + 16))(v20, a2, v17);
  v24 = *(v6 + 16);
  v25 = *(v6 + 24);
  type metadata accessor for CAFRequestContentSource();
  swift_allocObject();

  v109 = specialized CAFRequestContentSource.init(requestContent:requestTemporaryContent:zoneRegion:displayPanelIdentifier:)(v22, v23, v20, v24, v25);

  v26 = v130;
  v27 = CAFNotificationDataSources.remoteNotificationSource(zoneRegion:actionHandler:)(a2, a4, v130);
  LOBYTE(v134) = v21;
  v28 = CAFNotificationDataSources.minimalRemoteNotificationSource(zoneRegion:destination:actionHandler:)(a2, &v134, a4, v26);
  v29 = CAFNotificationDataSources.alertRemoteNotificationSource(zoneRegion:actionHandler:)(a2, a4, v26);
  v30 = CAFNotificationDataSources.actionRemoteNotificationSource(zoneRegion:actionHandler:)(a2, a4, v26);
  v31 = CAFNotificationDataSources.singleSelectRemoteNotificationSource(zoneRegion:actionHandler:)(a2, a4, v26);
  v119 = CAFNotificationDataSources.multiSelectRemoteNotificationSource(zoneRegion:actionHandler:)(a2, a4, v26);
  v32 = CAFNotificationDataSources.settingsNotificationSource(zoneRegion:settingsByIdentifier:actionHandler:)(a2, v131, a4, v26);
  type metadata accessor for CAFNotificationSource();
  v33 = swift_allocObject();
  v33[2] = 0;
  v130 = type metadata accessor for NotificationModel();
  v34 = *(v130 - 8);
  v131 = *(v34 + 56);
  v129 = v34 + 56;
  v131(v126, 1, 1, v130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMR);
  swift_allocObject();
  v35 = CurrentValueSubject.init(_:)();
  v36 = MEMORY[0x277D84FA0];
  v98 = v33;
  v33[3] = v35;
  v33[4] = v36;
  v99 = v33 + 4;
  v33[5] = v109;
  v33[6] = v27;
  v114 = v27;
  v113 = v28;
  v33[7] = v28;
  v33[8] = v29;
  v112 = v29;
  v111 = v30;
  v33[9] = v30;
  v33[10] = v31;
  v110 = v31;
  v33[11] = v119;
  v33[12] = v32;
  v108 = v32;

  v134 = CAFRequestContentSource.content.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGMd, &_s7Combine12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGMR);
  v37 = MEMORY[0x277CBCD90];
  v96 = MEMORY[0x277CBCD90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGMd, &_s7Combine12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGMR, MEMORY[0x277CBCD90]);
  lazy protocol witness table accessor for type RequestTemporaryContentModel? and conformance <A> A?();
  v38 = v127;
  Publisher<>.removeDuplicates()();

  v39 = MEMORY[0x277CBCBE0];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<RequestTemporaryContentModel?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI28RequestTemporaryContentModelVSgs5NeverOGGMR, MEMORY[0x277CBCBE0]);
  v40 = v128;
  v41 = Publisher.eraseToAnyPublisher()();
  (*(v132 + 8))(v38, v40);
  v134 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14CarPlayAssetUI28RequestTemporaryContentModelVSgGMd, &_ss23_ContiguousArrayStorageCy14CarPlayAssetUI28RequestTemporaryContentModelVSgGMR);
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI28RequestTemporaryContentModelVSgMd, &_s14CarPlayAssetUI28RequestTemporaryContentModelVSgMR) - 8);
  v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v44 = swift_allocObject();
  v132 = xmmword_2424235A0;
  *(v44 + 16) = xmmword_2424235A0;
  v45 = type metadata accessor for RequestTemporaryContentModel();
  (*(*(v45 - 8) + 56))(v44 + v43, 1, 1, v45);
  Publisher.prepend(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7Combine10PublishersO11ConcatenateVy_AE8SequenceVy_Say14CarPlayAssetUI17NotificationModelVSgGs5NeverOGAC12AnyPublisherVyAmPGGGMd, &_ss23_ContiguousArrayStorageCy7Combine10PublishersO11ConcatenateVy_AE8SequenceVy_Say14CarPlayAssetUI17NotificationModelVSgGs5NeverOGAC12AnyPublisherVyAmPGGGMR);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI17NotificationModelVSgGs5NeverOGAA12AnyPublisherVyAkNGGMd, &_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI17NotificationModelVSgGs5NeverOGAA12AnyPublisherVyAkNGGMR);
  v46 = *(v95 - 8);
  v122 = *(v46 + 72);
  v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v48 = swift_allocObject();
  v94 = v48;
  *(v48 + 16) = xmmword_2424235B0;
  v120 = v48 + v47;
  v134 = CAFNotificationSource.notification.getter();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd, &_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMR);
  v50 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<NotificationModel?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd, &_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMR, v37);
  v128 = lazy protocol witness table accessor for type NotificationModel? and conformance <A> A?();
  v51 = v118;
  Publisher<>.removeDuplicates()();

  v124 = lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<NotificationModel?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMR, v39);
  v52 = v97;
  v53 = Publisher.eraseToAnyPublisher()();
  v127 = *(v133 + 8);
  v133 += 8;
  (v127)(v51, v52);
  v134 = v53;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14CarPlayAssetUI17NotificationModelVSgGMd, &_ss23_ContiguousArrayStorageCy14CarPlayAssetUI17NotificationModelVSgGMR);
  v125 = *(v121 + 72);
  v123 = *(v123 + 80);
  v54 = (v123 + 32) & ~v123;
  v121 = v54;
  v55 = swift_allocObject();
  *(v55 + 16) = v132;
  v56 = v130;
  v57 = v131;
  v131((v55 + v54), 1, 1, v130);
  v116 = v49;
  v117 = v50;
  Publisher.prepend(_:)();

  v134 = CAFNotificationSource.notification.getter();
  v58 = v118;
  Publisher<>.removeDuplicates()();

  v59 = Publisher.eraseToAnyPublisher()();
  (v127)(v58, v52);
  v134 = v59;
  v60 = v121;
  v61 = swift_allocObject();
  *(v61 + 16) = v132;
  v57((v61 + v60), 1, 1, v56);
  v62 = v122;
  Publisher.prepend(_:)();

  v93 = 2 * v62;
  v134 = CAFNotificationSource.notification.getter();
  v63 = v118;
  Publisher<>.removeDuplicates()();

  v64 = Publisher.eraseToAnyPublisher()();
  v65 = v127;
  (v127)(v63, v52);
  v134 = v64;
  v66 = v121;
  v67 = swift_allocObject();
  *(v67 + 16) = v132;
  v131((v67 + v66), 1, 1, v130);
  Publisher.prepend(_:)();

  v134 = CAFNotificationSource.notification.getter();
  Publisher<>.removeDuplicates()();

  v68 = Publisher.eraseToAnyPublisher()();
  v65(v63, v52);
  v134 = v68;
  v69 = v121;
  v70 = swift_allocObject();
  *(v70 + 16) = v132;
  v131((v70 + v69), 1, 1, v130);
  Publisher.prepend(_:)();

  v93 = 4 * v122;
  v134 = CAFNotificationSource.notification.getter();
  Publisher<>.removeDuplicates()();

  v71 = Publisher.eraseToAnyPublisher()();
  (v127)(v63, v52);
  v134 = v71;
  v72 = v121;
  v73 = swift_allocObject();
  *(v73 + 16) = v132;
  v131((v73 + v72), 1, 1, v130);
  v74 = v93;
  Publisher.prepend(_:)();

  v93 = v74 + v122;
  v134 = CAFNotificationSource.notification.getter();
  Publisher<>.removeDuplicates()();

  v75 = Publisher.eraseToAnyPublisher()();
  (v127)(v63, v52);
  v134 = v75;
  v76 = v121;
  v77 = swift_allocObject();
  *(v77 + 16) = v132;
  v131((v77 + v76), 1, 1, v130);
  v78 = v120;
  Publisher.prepend(_:)();

  v122 = v78 + 6 * v122;
  v134 = CAFNotificationSource.notification.getter();
  Publisher<>.removeDuplicates()();

  v79 = Publisher.eraseToAnyPublisher()();
  (v127)(v63, v52);
  v134 = v79;
  v80 = swift_allocObject();
  *(v80 + 16) = v132;
  v131((v80 + v76), 1, 1, v130);
  Publisher.prepend(_:)();

  v81 = MEMORY[0x277CBCB40];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Concatenate<Publishers.Sequence<[NotificationModel?], Never>, AnyPublisher<NotificationModel?, Never>> and conformance Publishers.Concatenate<A, B>, &_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI17NotificationModelVSgGs5NeverOGAA12AnyPublisherVyAkNGGMd, &_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI17NotificationModelVSgGs5NeverOGAA12AnyPublisherVyAkNGGMR, MEMORY[0x277CBCB40]);
  v82 = v102;
  Publishers.MergeMany.init(_:)();
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<Publishers.Concatenate<Publishers.Sequence<[NotificationModel?], Never>, AnyPublisher<NotificationModel?, Never>>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AC11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI17NotificationModelVSgGs5NeverOGAA12AnyPublisherVyAmPGGGMd, &_s7Combine10PublishersO9MergeManyVy_AC11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI17NotificationModelVSgGs5NeverOGAA12AnyPublisherVyAmPGGGMR, MEMORY[0x277CBCD48]);
  v83 = v104;
  v84 = v82;
  v85 = Publisher.skipNil<A>()();
  (*(v105 + 8))(v84, v83);
  v134 = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVs5NeverOGMd, &_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Concatenate<Publishers.Sequence<[RequestTemporaryContentModel?], Never>, AnyPublisher<RequestTemporaryContentModel?, Never>> and conformance Publishers.Concatenate<A, B>, &_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI28RequestTemporaryContentModelVSgGs5NeverOGAA12AnyPublisherVyAkNGGMd, &_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI28RequestTemporaryContentModelVSgGs5NeverOGAA12AnyPublisherVyAkNGGMR, v81);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<NotificationModel, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVs5NeverOGMd, &_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVs5NeverOGMR, v96);
  v86 = v101;
  Publishers.CombineLatest.init(_:_:)();
  swift_unownedRetainStrong();
  v87 = swift_unownedRetain();

  v88 = swift_allocObject();
  *(v88 + 16) = v100;
  *(v88 + 24) = v87;
  v89 = swift_allocObject();
  *(v89 + 16) = partial apply for closure #1 in CAFNotificationSource.init(requestContent:remoteNotification:minimalNotification:alertNotification:actionNotification:singleSelectNotification:multiSelectNotification:autoSettingsNotification:destination:);
  *(v89 + 24) = v88;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Concatenate<Publishers.Sequence<[RequestTemporaryContentModel?], Never>, AnyPublisher<RequestTemporaryContentModel?, Never>>, AnyPublisher<NotificationModel, Never>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI28RequestTemporaryContentModelVSgGs5NeverOGAA12AnyPublisherVyAmPGGASyAJ012NotificationM0VAPGGMd, &_s7Combine10PublishersO0A6LatestVy_AC11ConcatenateVy_AC8SequenceVy_Say14CarPlayAssetUI28RequestTemporaryContentModelVSgGs5NeverOGAA12AnyPublisherVyAmPGGASyAJ012NotificationM0VAPGGMR, MEMORY[0x277CBCAF0]);
  v90 = v106;
  Publisher<>.sink(receiveValue:)();

  (*(v107 + 8))(v86, v90);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v87;
}

uint64_t CAFNotificationDataSources.deinit()
{

  return v0;
}

uint64_t CAFNotificationDataSources.__deallocating_deinit()
{
  CAFNotificationDataSources.deinit();

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

uint64_t sub_2423DFF90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2423DFFF0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2423E0028()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2423E0060()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _s5CAFUI29CAFSettingsNotificationSourceC12notification14requestContent21settingsByIdentifiers13buttonSetting012singleSelectL007BOOLeanL008deepLinkL010zoneRegion9launchURLAC7Combine12AnyPublisherVy10CAFCombine026CAFAutomakerSettingsRemoteC10ObservableCs5NeverOG_AOyAP019CAFRequestTemporaryG10ObservableCATGSDySSSo0zL0CGSgAOyAP09CAFButtonL10ObservableCATGAOyAP09CAFSinglenL10ObservableCATGAOyAP010CAFBooleanL10ObservableCATGAOyAP07CAFDeepqL10ObservableCATG14CarPlayAssetUI4ZoneV04ZoneS0OySSctcfcSbARcfU_TATm_0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for Zone.ZoneRegion() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t _s14CarPlayAssetUI28RequestTemporaryContentModelVACSQAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2423E0208()
{
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t keypath_getTm@<X0>(unint64_t *a1@<X3>, void *a2@<X4>, unint64_t *a3@<X5>, uint64_t a4@<X6>, uint64_t *a5@<X8>)
{
  type metadata accessor for OS_os_log(0, a1, a2);
  lazy protocol witness table accessor for type UIPress and conformance NSObject(a3, a1, a2, a4);
  result = CAFObserved<>.observable.getter();
  *a5 = result;
  return result;
}

uint64_t keypath_get_145Tm@<X0>(uint64_t (*a1)(void)@<X3>, unint64_t *a2@<X4>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t a4@<X6>, uint64_t *a5@<X8>)
{
  a1(0);
  _s14CarPlayAssetUI28RequestTemporaryContentModelVACSQAAWlTm_0(a2, a3, a4);
  result = CAFObservable.publisher.getter();
  *a5 = result;
  return result;
}

uint64_t CAFInferredNotificationSource.output.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMR);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v6[1] = CAFNotificationSource.notification.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd, &_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<NotificationModel?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd, &_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMR, MEMORY[0x277CBCD90]);
  lazy protocol witness table accessor for type NotificationModel? and conformance <A> A?();
  Publisher<>.removeDuplicates()();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<NotificationModel?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMR, MEMORY[0x277CBCBE0]);
  v4 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v3, v0);
  return v4;
}

BOOL String.isRemoteNotification.getter(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of RequestTemporaryContentModel?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return 0;
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = URL.scheme.getter();
  if (!v11)
  {
    (*(v6 + 8))(v8, v5);
    return 0;
  }

  if (v10 != 0xD000000000000012 || v11 != 0x8000000242428C60)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v6 + 8))(v8, v5);
    return (v13 & 1) != 0;
  }

  (*(v6 + 8))(v8, v5);
  return 1;
}

void *CAFInferredNotificationSource.__allocating_init(notification:requestContent:displayID:zoneRegion:launchURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32[0] = a2;
  v34 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMR);
  MEMORY[0x28223BE20](v37);
  v35 = v32 - v13;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMR);
  MEMORY[0x28223BE20](v36);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ017CAFRequestContentJ0CANGGGMd, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ017CAFRequestContentJ0CANGGGMR);
  v15 = *(v14 - 8);
  v38 = v14;
  v39 = v15;
  MEMORY[0x28223BE20](v14);
  v33 = v32 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd, &_s14CarPlayAssetUI17NotificationModelVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v32 - v18;

  v20 = swift_allocObject();
  v20[2] = 0;
  v21 = type metadata accessor for NotificationModel();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMR);
  swift_allocObject();
  v20[3] = CurrentValueSubject.init(_:)();
  v20[4] = MEMORY[0x277D84FA0];
  v20[5] = a7;
  v20[6] = a8;
  v32[1] = a8;
  v40 = a1;
  v22 = swift_allocObject();
  v23 = a5;
  *(v22 + 16) = a5;
  *(v22 + 24) = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGMR);
  v24 = MEMORY[0x277CBCD90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGMR, MEMORY[0x277CBCD90]);
  Publisher.filter(_:)();

  v40 = v32[0];
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMR, v24);
  Publisher.filter(_:)();

  v26 = MEMORY[0x277CBCC90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMR, MEMORY[0x277CBCC90]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMR, v26);
  v27 = v33;
  Publishers.CombineLatest.init(_:_:)();
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = partial apply for closure #3 in CAFInferredNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:);
  *(v29 + 24) = v28;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ017CAFRequestContentJ0CANGGGMd, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ017CAFRequestContentJ0CANGGGMR, MEMORY[0x277CBCAF0]);
  v30 = v38;
  Publisher<>.sink(receiveValue:)();

  (*(v39 + 8))(v27, v30);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v20;
}

void *CAFInferredNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v38 = a2;
  v33[3] = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMR);
  MEMORY[0x28223BE20](v35);
  v33[2] = v33 - v15;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMR);
  MEMORY[0x28223BE20](v34);
  v33[0] = v33 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ017CAFRequestContentJ0CANGGGMd, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ017CAFRequestContentJ0CANGGGMR);
  v18 = *(v17 - 8);
  v36 = v17;
  v37 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = v33 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd, &_s14CarPlayAssetUI17NotificationModelVSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v33 - v22;

  v9[2] = 0;
  v24 = type metadata accessor for NotificationModel();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMR);
  swift_allocObject();
  v9[3] = CurrentValueSubject.init(_:)();
  v9[4] = MEMORY[0x277D84FA0];
  v9[5] = a7;
  v9[6] = a8;
  v33[1] = a8;
  v39 = a1;
  v25 = swift_allocObject();
  *(v25 + 16) = a5;
  *(v25 + 24) = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGMR);
  v26 = MEMORY[0x277CBCD90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRemoteNotificationObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGMR, MEMORY[0x277CBCD90]);
  Publisher.filter(_:)();

  v39 = v38;
  v27 = swift_allocObject();
  *(v27 + 16) = a5;
  *(v27 + 24) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<CAFRequestContentObservable, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMd, &_s7Combine12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGMR, v26);
  Publisher.filter(_:)();

  v28 = MEMORY[0x277CBCC90];
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRemoteNotificationObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGMR, MEMORY[0x277CBCC90]);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<AnyPublisher<CAFRequestContentObservable, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMd, &_s7Combine10PublishersO6FilterVy_AA12AnyPublisherVy10CAFCombine27CAFRequestContentObservableCs5NeverOGGMR, v28);
  Publishers.CombineLatest.init(_:_:)();
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = closure #3 in CAFInferredNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:)partial apply;
  *(v30 + 24) = v29;
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.Filter<AnyPublisher<CAFRemoteNotificationObservable, Never>>, Publishers.Filter<AnyPublisher<CAFRequestContentObservable, Never>>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ017CAFRequestContentJ0CANGGGMd, &_s7Combine10PublishersO0A6LatestVy_AC6FilterVy_AA12AnyPublisherVy10CAFCombine31CAFRemoteNotificationObservableCs5NeverOGGAGy_AIyAJ017CAFRequestContentJ0CANGGGMR, MEMORY[0x277CBCAF0]);
  v31 = v36;
  Publisher<>.sink(receiveValue:)();

  (*(v37 + 8))(v20, v31);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v9;
}

uint64_t sub_2423E2AF4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t closure #1 in CAFInferredNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a4() == a2 && v5 == a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_2423E2C20()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t closure #3 in CAFInferredNotificationSource.init(notification:requestContent:displayID:zoneRegion:launchURL:)(uint64_t (*a1)(void, void, void), void *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    CAFInferredNotificationSource.updateNotification(remoteNotification:requestContent:)(a1, a2);
  }

  return result;
}

uint64_t sub_2423E2CCC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t CAFInferredNotificationSource.updateNotification(remoteNotification:requestContent:)(uint64_t (*a1)(void, void, void), void *a2)
{
  v64 = a1;
  v61 = *v2;
  v4 = type metadata accessor for NotificationModel();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v62 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v63 = &v58 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd, &_s14CarPlayAssetUI17NotificationModelVSgMR);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v58 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v58 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v58 - v23;
  MEMORY[0x28223BE20](v22);
  v65 = &v58 - v25;
  v26 = dispatch thunk of CAFRequestContentObservable.contentURL.getter();
  v28 = String.isRemoteNotification.getter(v26, v27);

  if (v28 && (dispatch thunk of CAFRequestContentObservable.on.getter() & 1) != 0)
  {
    v29 = v64;
    v30 = dispatch thunk of CAFRemoteNotificationObservable.displayPanelIdentifier.getter();
    v60 = v31;
    CAFInferredNotificationSource.convert(message:requestContent:)(v29, a2, v21);
    outlined init with copy of NotificationModel.Symbol?(v21, v18, &_s14CarPlayAssetUI17NotificationModelVSgMd, &_s14CarPlayAssetUI17NotificationModelVSgMR);
    v32 = v4;
    v64 = *(v5 + 48);
    v33 = v64(v18, 1, v4);
    v59 = v30;
    if (v33 == 1)
    {
      outlined destroy of RequestTemporaryContentModel?(v21, &_s14CarPlayAssetUI17NotificationModelVSgMd, &_s14CarPlayAssetUI17NotificationModelVSgMR);
      (*(v5 + 56))(v24, 1, 1, v4);
    }

    else
    {
      (*(v5 + 32))(v11, v18, v4);
      static CAFInferredNotificationSource.sanitize(notification:displayID:)(v11, v30, v60, v24);
      v32 = v4;
      (*(v5 + 8))(v11, v4);
      outlined destroy of RequestTemporaryContentModel?(v21, &_s14CarPlayAssetUI17NotificationModelVSgMd, &_s14CarPlayAssetUI17NotificationModelVSgMR);
    }

    v34 = v65;
    outlined init with take of NotificationModel?(v24, v65);
    outlined init with copy of NotificationModel.Symbol?(v34, v15, &_s14CarPlayAssetUI17NotificationModelVSgMd, &_s14CarPlayAssetUI17NotificationModelVSgMR);
    if (v64(v15, 1, v32) == 1)
    {
      outlined destroy of RequestTemporaryContentModel?(v15, &_s14CarPlayAssetUI17NotificationModelVSgMd, &_s14CarPlayAssetUI17NotificationModelVSgMR);
      v36 = static os_log_type_t.error.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
      v37 = static OS_os_log.default.getter();
      v38 = os_log_type_enabled(v37, v36);
      v40 = v59;
      v39 = v60;
      if (v38)
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v66 = v42;
        *v41 = 136315138;
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v39, &v66);

        *(v41 + 4) = v43;
        _os_log_impl(&dword_24234D000, v37, v36, "Unable to sanitize notification sent to display: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x245D0E5A0](v42, -1, -1);
        MEMORY[0x245D0E5A0](v41, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v44 = v63;
      (*(v5 + 32))(v63, v15, v32);
      v45 = static os_log_type_t.info.getter();
      v46 = v62;
      (*(v5 + 16))(v62, v44, v32);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
      v47 = v32;
      v48 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v48, v45))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v66 = v50;
        *v49 = 136315394;
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v66);

        *(v49 + 4) = v51;
        *(v49 + 12) = 2080;
        v52 = NotificationModel.id.getter();
        v54 = v53;
        v55 = *(v5 + 8);
        v55(v46, v47);
        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v66);
        v34 = v65;

        *(v49 + 14) = v56;
        _os_log_impl(&dword_24234D000, v48, v45, "Presenting notification: %s:%s", v49, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D0E5A0](v50, -1, -1);
        MEMORY[0x245D0E5A0](v49, -1, -1);

        v55(v44, v47);
      }

      else
      {

        v57 = *(v5 + 8);
        v57(v46, v32);
        v57(v44, v32);
      }
    }
  }

  else
  {
    v34 = v65;
    (*(v5 + 56))(v65, 1, 1, v4);
  }

  CurrentValueSubject.send(_:)();

  return outlined destroy of RequestTemporaryContentModel?(v34, &_s14CarPlayAssetUI17NotificationModelVSgMd, &_s14CarPlayAssetUI17NotificationModelVSgMR);
}

uint64_t static CAFInferredNotificationSource.sanitize(notification:displayID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a2;
  v44 = a3;
  v6 = type metadata accessor for NotificationModel();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v42 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for NotificationModel.ValidationError();
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd, &_s14CarPlayAssetUI17NotificationModelVSgMR);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v36 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  v21 = NotificationModel.validate(automakerSymbolValidator:)();
  v22 = a1;
  v23 = v18;
  (*(v7 + 16))(v20, v22, v6);
  v46 = v7;
  v24 = *(v7 + 56);
  v50 = v6;
  v40 = v24;
  v41 = v7 + 56;
  v24(v20, 0, 1, v6);
  v36 = v20;
  v25 = v20;
  v26 = v21;
  v27 = a4;
  outlined init with copy of NotificationModel.Symbol?(v25, a4, &_s14CarPlayAssetUI17NotificationModelVSgMd, &_s14CarPlayAssetUI17NotificationModelVSgMR);
  v51 = *(v21 + 16);
  if (v51)
  {
    v28 = 0;
    v49 = v26 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v47 = (v46 + 6);
    v48 = v52 + 16;
    v37 = (v46 + 4);
    v38 = (v46 + 1);
    v45 = 0;
    v46 = (v52 + 8);
    v29 = &_s14CarPlayAssetUI17NotificationModelVSgMR;
    v39 = v26;
    while (v28 < *(v26 + 16))
    {
      (*(v52 + 16))(v11, v49 + *(v52 + 72) * v28, v53);
      outlined init with copy of NotificationModel.Symbol?(v27, v15, &_s14CarPlayAssetUI17NotificationModelVSgMd, v29);
      v30 = v50;
      if ((*v47)(v15, 1, v50) == 1)
      {
        outlined destroy of RequestTemporaryContentModel?(v27, &_s14CarPlayAssetUI17NotificationModelVSgMd, v29);
        v40(v23, 1, 1, v30);
      }

      else
      {
        v31 = v29;
        v32 = v27;
        v27 = v30;
        v29 = v42;
        v33 = v15;
        (*v37)(v42, v15, v27);
        v34 = v45;
        closure #1 in closure #2 in static CAFInferredNotificationSource.sanitize(notification:displayID:)(v29, v11, v43, v44, v23);
        v45 = v34;
        if (v34)
        {
          goto LABEL_11;
        }

        (*v38)(v29, v27);
        v27 = v32;
        v29 = v31;
        outlined destroy of RequestTemporaryContentModel?(v32, &_s14CarPlayAssetUI17NotificationModelVSgMd, v31);
        v15 = v33;
        v26 = v39;
      }

      ++v28;
      (*v46)(v11, v53);
      outlined init with take of NotificationModel?(v23, v27);
      if (v51 == v28)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    result = (*v38)(v29, v27);
    __break(1u);
  }

  else
  {
LABEL_9:

    return outlined destroy of RequestTemporaryContentModel?(v36, &_s14CarPlayAssetUI17NotificationModelVSgMd, &_s14CarPlayAssetUI17NotificationModelVSgMR);
  }

  return result;
}

uint64_t closure #1 in closure #2 in static CAFInferredNotificationSource.sanitize(notification:displayID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a5;
  v59 = a3;
  v60 = a4;
  v7 = type metadata accessor for NotificationModel.ValidationError();
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v58 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelVSgMd, &_s14CarPlayAssetUI17NotificationModelVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v55 - v13;
  v15 = type metadata accessor for NotificationModel();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v55 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v55 - v23;
  NotificationModel.ValidationError.correct(on:)();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of RequestTemporaryContentModel?(v14, &_s14CarPlayAssetUI17NotificationModelVSgMd, &_s14CarPlayAssetUI17NotificationModelVSgMR);
    v25 = static os_log_type_t.info.getter();
    (*(v16 + 16))(v19, a1, v15);
    v26 = v58;
    (*(v62 + 16))(v58, a2, v63);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
    v27 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v27, v25))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v64 = v29;
      *v28 = 136315650;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v64);
      *(v28 + 12) = 2080;
      v30 = NotificationModel.id.getter();
      LODWORD(v60) = v25;
      v32 = v31;
      (*(v16 + 8))(v19, v15);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v64);

      *(v28 + 14) = v33;
      *(v28 + 22) = 2080;
      v34 = NotificationModel.ValidationError.description.getter();
      v36 = v35;
      (*(v62 + 8))(v26, v63);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v64);

      *(v28 + 24) = v37;
      _os_log_impl(&dword_24234D000, v27, v60, "Unable to correct issue on notification %s:%s: %s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245D0E5A0](v29, -1, -1);
      MEMORY[0x245D0E5A0](v28, -1, -1);
    }

    else
    {

      (*(v62 + 8))(v26, v63);
      (*(v16 + 8))(v19, v15);
    }

    v52 = 1;
    v53 = v61;
  }

  else
  {
    v58 = *(v16 + 32);
    (v58)(v24, v14, v15);
    v38 = static os_log_type_t.info.getter();
    (*(v16 + 16))(v22, a1, v15);
    (*(v62 + 16))(v11, a2, v63);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
    v39 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v39, v38))
    {
      v40 = swift_slowAlloc();
      v57 = v24;
      v41 = v40;
      v56 = swift_slowAlloc();
      v64 = v56;
      *v41 = 136315650;
      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v64);
      *(v41 + 12) = 2080;
      v42 = NotificationModel.id.getter();
      LODWORD(v60) = v38;
      v44 = v43;
      (*(v16 + 8))(v22, v15);
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v64);

      *(v41 + 14) = v45;
      *(v41 + 22) = 2080;
      v46 = NotificationModel.ValidationError.description.getter();
      v48 = v47;
      (*(v62 + 8))(v11, v63);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v64);

      *(v41 + 24) = v49;
      _os_log_impl(&dword_24234D000, v39, v60, "Corrected issue on notification  %s:%s: %s", v41, 0x20u);
      v50 = v56;
      swift_arrayDestroy();
      MEMORY[0x245D0E5A0](v50, -1, -1);
      v51 = v41;
      v24 = v57;
      MEMORY[0x245D0E5A0](v51, -1, -1);
    }

    else
    {

      (*(v62 + 8))(v11, v63);
      (*(v16 + 8))(v22, v15);
    }

    v53 = v61;
    (v58)(v61, v24, v15);
    v52 = 0;
  }

  return (*(v16 + 56))(v53, v52, 1, v15);
}

uint64_t CAFInferredNotificationSource.convert(message:requestContent:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v209 = a2;
  v188 = type metadata accessor for UUID();
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v186 = v182 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for NotificationModel();
  v200 = *(v203 - 8);
  v6 = MEMORY[0x28223BE20](v203);
  v8 = v182 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v199 = v182 - v9;
  v210 = type metadata accessor for NotificationModel.Style();
  v198 = *(v210 - 8);
  v10 = MEMORY[0x28223BE20](v210);
  v193 = v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v195 = v182 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMd, &_s14CarPlayAssetUI17NotificationModelV6SymbolVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v192 = v182 - v14;
  v201 = type metadata accessor for NotificationModel.InferredNotificationModel();
  v225 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v16 = v182 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV6ActionVSgMd, &_s14CarPlayAssetUI17NotificationModelV6ActionVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v182 - v18;
  v230 = type metadata accessor for NotificationModel.Action();
  v207 = *(v230 - 8);
  v20 = MEMORY[0x28223BE20](v230);
  v221 = v182 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v206 = v182 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV10ButtonTypeOSgMd, &_s14CarPlayAssetUI17NotificationModelV10ButtonTypeOSgMR);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v191 = v182 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v196 = (v182 - v26);
  v197 = type metadata accessor for NotificationModel.Symbol();
  v27 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v202 = v182 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CarPlayAssetUI17NotificationModelV4TextOSgMd, &_s14CarPlayAssetUI17NotificationModelV4TextOSgMR);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = v182 - v30;
  v205 = type metadata accessor for NotificationModel.Text();
  v204 = *(v205 - 8);
  v32 = MEMORY[0x28223BE20](v205);
  v190 = v182 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v227 = v182 - v34;
  v220 = dispatch thunk of CAFRemoteNotificationObservable.displayPanelIdentifier.getter();
  v224 = v35;
  v219 = dispatch thunk of CAFRemoteNotificationObservable.identifier.getter();
  v222 = v36;
  v37 = dispatch thunk of CAFRemoteNotificationObservable.userVisibleLabel.getter();
  v39 = v38;

  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = v37 & 0xFFFFFFFFFFFFLL;
  }

  v194 = v16;
  if (v40)
  {
    dispatch thunk of CAFRemoteNotificationObservable.userVisibleLabel.getter();
    v228 = v41;
  }

  else
  {
    v228 = 0;
  }

  v42 = dispatch thunk of CAFRemoteNotificationObservable.userVisibleDescription.getter();
  v44 = v43;

  v45 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v45 = v42 & 0xFFFFFFFFFFFFLL;
  }

  v217 = a1;
  v46 = a3;
  if (v45)
  {
    dispatch thunk of CAFRemoteNotificationObservable.userVisibleDescription.getter();
    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  v49 = v204;

  NotificationModel.Text.init(title:body:)();
  v50 = v205;
  v51 = (*(v49 + 48))(v31, 1, v205);
  v52 = v49;
  v53 = v225;
  if (v51 == 1)
  {

    outlined destroy of RequestTemporaryContentModel?(v31, &_s14CarPlayAssetUI17NotificationModelV4TextOSgMd, &_s14CarPlayAssetUI17NotificationModelV4TextOSgMR);
    v54 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
    v55 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v55, v54))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v232 = v57;
      *v56 = 136315138;
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v220, v224, &v232);

      *(v56 + 4) = v58;
      _os_log_impl(&dword_24234D000, v55, v54, "No text added to notification on display: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x245D0E5A0](v57, -1, -1);
      MEMORY[0x245D0E5A0](v56, -1, -1);
    }

    else
    {
    }

    return (*(v200 + 56))(v46, 1, 1, v203);
  }

  v182[2] = v48;
  (*(v52 + 32))(v227, v31, v50);
  v59 = dispatch thunk of CAFRemoteNotificationObservable.symbolNameAndColor.getter();
  v184 = a3;
  v189 = v59;
  if (v59)
  {
    v60 = [v59 name];
    v61 = v8;
    if (v60)
    {
      v62 = v60;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;
    }

    else
    {
      v64 = 0xE000000000000000;
    }

    v67 = v27;
    v68 = UIColorFromCAFImageColor([v189 color]);
    v66 = MEMORY[0x245D0CE70](v68);
  }

  else
  {
    v66 = 0;
    v64 = 0xE000000000000000;
    v61 = v8;
    v67 = v27;
  }

  v182[1] = v64;
  v182[3] = v66;
  NotificationModel.Symbol.init(name:color:)();
  v69 = dispatch thunk of CAFRemoteNotificationObservable.notificationUserActions.getter();
  v70 = [v69 notificationUserActions];

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFNotificationUserAction, 0x277CF8548);
  v71 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v73 = v71 >> 62;
  v183 = v61;
  v208 = v67;
  if (v71 >> 62)
  {
    goto LABEL_72;
  }

  result = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v74 = v227;
  if (result)
  {
    while (1)
    {
      v226 = v19;
      v218 = v71;
      if (result == 1)
      {
        if ((v71 & 0xC000000000000001) != 0)
        {
          v75 = MEMORY[0x245D0D9A0](0, v71);
        }

        else
        {
          if (!*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v75 = *(v71 + 32);
        }

        v76 = v75;
        v77 = [v75 contentURLAction];
        if (v77)
        {
          v78 = v77;
          v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v81 = v80;

          v82 = HIBYTE(v81) & 0xF;
          if ((v81 & 0x2000000000000000) == 0)
          {
            v82 = v79 & 0xFFFFFFFFFFFFLL;
          }

          if (v82)
          {
            v83 = [v76 userVisibleLabel];
            if (!v83)
            {
              goto LABEL_68;
            }

            v84 = v83;
            v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v87 = v86;

            v88 = HIBYTE(v87) & 0xF;
            v89 = v85 & 0xFFFFFFFFFFFFLL;
            v90 = (v87 & 0x2000000000000000) == 0;
            v19 = v226;
            v74 = v227;
            if (v90)
            {
              v88 = v89;
            }

            if (!v88)
            {
LABEL_68:

              v129 = swift_allocObject();
              swift_weakInit();
              v130 = swift_allocObject();
              v131 = v219;
              v132 = v224;
              v130[2] = v220;
              v130[3] = v132;
              v133 = v196;
              v134 = v79;
              v135 = v222;
              v130[4] = v131;
              v130[5] = v135;
              v136 = v217;
              v128 = v209;
              v130[6] = v217;
              v130[7] = v128;
              v130[8] = v129;
              v130[9] = v134;
              v130[10] = v81;
              *v133 = 0xD00000000000001BLL;
              v133[1] = 0x8000000242428D90;
              v133[2] = partial apply for closure #1 in CAFInferredNotificationSource.convert(message:requestContent:);
              v133[3] = v130;
              v137 = *MEMORY[0x277CF8BC8];
              v138 = type metadata accessor for NotificationModel.ButtonType();
              v139 = *(v138 - 8);
              (*(v139 + 104))(v133, v137, v138);
              (*(v139 + 56))(v133, 0, 1, v138);

              v124 = v133;

              v140 = v136;
              v141 = v128;
              v53 = v225;
              goto LABEL_80;
            }
          }

          v53 = v225;
        }

        else
        {
        }

        v71 = v218;
      }

      v91 = v73 ? __CocoaSet.count.getter() : *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v73 = v210;
      if (!v91)
      {
        break;
      }

      v92 = 0;
      v215 = v71 & 0xFFFFFFFFFFFFFF8;
      v216 = v71 & 0xC000000000000001;
      v212 = (v207 + 48);
      v213 = (v207 + 56);
      v211 = (v207 + 32);
      v229 = MEMORY[0x277D84F90];
      *&v72 = 136315394;
      v185 = v72;
      v214 = v91;
      while (1)
      {
        if (v216)
        {
          v93 = MEMORY[0x245D0D9A0](v92, v71);
        }

        else
        {
          if (v92 >= *(v215 + 16))
          {
            goto LABEL_70;
          }

          v93 = *(v71 + 8 * v92 + 32);
        }

        v94 = v93;
        if (__OFADD__(v92, 1))
        {
          break;
        }

        v95 = [v93 userVisibleLabel];
        v231 = v92 + 1;
        if (v95)
        {
          v53 = v95;
          v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v73 = v96;

          v97 = [v94 contentURLAction];
          if (v97)
          {
            v19 = v97;
            v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v99 = v98;

            if (v92 > 0xFF)
            {
              goto LABEL_71;
            }
          }

          else
          {
            v67 = 0;
            v99 = 0;
            if (v92 > 0xFF)
            {
              goto LABEL_71;
            }
          }

          v108 = swift_allocObject();
          swift_weakInit();
          v109 = v94;
          v110 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v111 = swift_allocObject();
          v223 = v73;
          v112 = v111;
          swift_unknownObjectWeakInit();
          v113 = swift_allocObject();
          v114 = v219;
          v113[2] = v220;
          v113[3] = v224;
          v113[4] = v114;
          v113[5] = v222;
          v113[6] = v112;
          v113[7] = v110;
          v113[8] = v67;
          v94 = v109;
          v113[9] = v99;
          v113[10] = v108;

          v19 = v226;
          NotificationModel.Action.init(id:title:highlighted:handler:)();
          v107 = 0;
          v73 = v210;
          v53 = v225;
          v67 = v208;
        }

        else
        {
          v100 = static os_log_type_t.error.getter();
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
          v101 = static OS_os_log.default.getter();
          if (os_log_type_enabled(v101, v100))
          {
            v102 = v73;
            v103 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            v232 = v104;
            *v103 = v185;
            *(v103 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v220, v224, &v232);
            *(v103 + 12) = 2080;
            *(v103 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v219, v222, &v232);
            _os_log_impl(&dword_24234D000, v101, v100, "Notification (%s:%s) - User action does not have text", v103, 0x16u);
            swift_arrayDestroy();
            v105 = v104;
            v53 = v225;
            MEMORY[0x245D0E5A0](v105, -1, -1);
            v106 = v103;
            v73 = v102;
            v19 = v226;
            MEMORY[0x245D0E5A0](v106, -1, -1);
          }

          v107 = 1;
        }

        v115 = v230;
        (*v213)(v19, v107, 1, v230);

        if ((*v212)(v19, 1, v115) == 1)
        {
          outlined destroy of RequestTemporaryContentModel?(v19, &_s14CarPlayAssetUI17NotificationModelV6ActionVSgMd, &_s14CarPlayAssetUI17NotificationModelV6ActionVSgMR);
          v74 = v227;
        }

        else
        {
          v116 = *v211;
          v117 = v206;
          (*v211)(v206, v19, v115);
          v116(v221, v117, v115);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v74 = v227;
          v119 = v73;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v229 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v229 + 2) + 1, 1, v229);
          }

          v121 = *(v229 + 2);
          v120 = *(v229 + 3);
          if (v121 >= v120 >> 1)
          {
            v229 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v120 > 1), v121 + 1, 1, v229);
          }

          v123 = v229;
          v122 = v230;
          *(v229 + 2) = v121 + 1;
          v116(&v123[((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v121], v221, v122);
          v73 = v119;
          v19 = v226;
        }

        v71 = v218;
        ++v92;
        if (v231 == v214)
        {
          goto LABEL_67;
        }
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      v142 = __CocoaSet.count.getter();
      v74 = v227;
      if (!v142)
      {
        goto LABEL_74;
      }

      result = __CocoaSet.count.getter();
    }

    v229 = MEMORY[0x277D84F90];
LABEL_67:

    v124 = v196;
    *v196 = v229;
    v125 = *MEMORY[0x277CF8BD0];
    v126 = type metadata accessor for NotificationModel.ButtonType();
    v127 = *(v126 - 8);
    (*(v127 + 104))(v124, v125, v126);
    (*(v127 + 56))(v124, 0, 1, v126);
    v128 = v209;
    dispatch thunk of CAFRequestContentObservable.userDismissible.getter();
  }

  else
  {
LABEL_74:

    v128 = v209;
    if ((dispatch thunk of CAFRequestContentObservable.userDismissible.getter() & 1) == 0)
    {
      v145 = type metadata accessor for NotificationModel.ButtonType();
      v124 = v196;
      (*(*(v145 - 8) + 56))(v196, 1, 1, v145);
LABEL_80:
      v146 = v197;
      v73 = v210;
      goto LABEL_84;
    }

    v73 = v210;
    if (v220 == 0x5F72657473756C43 && v224 == 0xEF79616C70736944 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v143 = 0xE500000000000000;
      v144 = 0x6B72616D78;
    }

    else
    {
      v143 = 0x8000000242428DB0;
      v144 = 0xD000000000000011;
    }

    v147 = swift_allocObject();
    v128 = v209;
    swift_unknownObjectWeakInit();
    v148 = swift_allocObject();
    v149 = v224;
    v148[2] = v220;
    v148[3] = v149;
    v150 = v222;
    v148[4] = v219;
    v148[5] = v150;
    v148[6] = v147;
    v151 = v196;
    *v196 = v144;
    v151[1] = v143;
    v151[2] = partial apply for closure #3 in CAFInferredNotificationSource.convert(message:requestContent:);
    v151[3] = v148;
    v152 = *MEMORY[0x277CF8BC8];
    v153 = type metadata accessor for NotificationModel.ButtonType();
    v154 = *(v153 - 8);
    (*(v154 + 104))(v151, v152, v153);
    (*(v154 + 56))(v151, 0, 1, v153);

    v124 = v151;
  }

  v146 = v197;
LABEL_84:
  (*(v204 + 16))(v190, v74, v205);
  outlined init with copy of NotificationModel.Symbol?(v124, v191, &_s14CarPlayAssetUI17NotificationModelV10ButtonTypeOSgMd, &_s14CarPlayAssetUI17NotificationModelV10ButtonTypeOSgMR);
  v155 = v192;
  (*(v67 + 16))(v192, v202, v146);
  (*(v67 + 56))(v155, 0, 1, v146);
  *(swift_allocObject() + 16) = v128;
  v156 = v128;
  v157 = v194;
  NotificationModel.InferredNotificationModel.init(text:buttonType:symbol:blocking:dismissalHandler:)();
  v158 = v195;
  (*(v53 + 2))(v195, v157, v201);
  v159 = v198;
  (*(v198 + 104))(v158, *MEMORY[0x277CF8BF0], v73);
  (*(v159 + 16))(v193, v158, v73);
  v160 = v199;
  NotificationModel.init(id:style:)();
  v161 = static os_log_type_t.info.getter();
  v162 = v200;
  v163 = v183;
  (*(v200 + 16))(v183, v160, v203);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  v164 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v164, v161))
  {
    v165 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    v232 = v166;
    *v165 = 136315650;
    v167 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v220, v224, &v232);

    *(v165 + 4) = v167;
    *(v165 + 12) = 2080;
    v168 = CAFRemoteNotificationObservable.observed.getter();
    v169 = v186;
    CAFService.id.getter();

    lazy protocol witness table accessor for type NotificationModel and conformance NotificationModel(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v170 = v188;
    v171 = dispatch thunk of CustomStringConvertible.description.getter();
    v173 = v172;
    (*(v187 + 8))(v169, v170);
    v174 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v171, v173, &v232);

    *(v165 + 14) = v174;
    *(v165 + 22) = 2080;
    v175 = NotificationModel.description.getter();
    v177 = v176;
    v162 = v200;
    v178 = v203;
    (*(v200 + 8))(v163, v203);
    v179 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v175, v177, &v232);

    *(v165 + 24) = v179;
    _os_log_impl(&dword_24234D000, v164, v161, "Converted notification (displayID = (%s), message.id = %s) to %s", v165, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245D0E5A0](v166, -1, -1);
    MEMORY[0x245D0E5A0](v165, -1, -1);

    (*(v198 + 8))(v195, v210);
    (v225)[1](v157, v201);
    outlined destroy of RequestTemporaryContentModel?(v196, &_s14CarPlayAssetUI17NotificationModelV10ButtonTypeOSgMd, &_s14CarPlayAssetUI17NotificationModelV10ButtonTypeOSgMR);
    (*(v208 + 8))(v202, v197);
    (*(v204 + 8))(v227, v205);
    v180 = v184;
    v181 = v178;
  }

  else
  {

    v181 = v203;
    (*(v162 + 8))(v163, v203);
    (*(v198 + 8))(v158, v73);
    (*(v53 + 1))(v157, v201);
    outlined destroy of RequestTemporaryContentModel?(v196, &_s14CarPlayAssetUI17NotificationModelV10ButtonTypeOSgMd, &_s14CarPlayAssetUI17NotificationModelV10ButtonTypeOSgMR);
    (*(v208 + 8))(v202, v197);
    (*(v204 + 8))(v74, v205);
    v180 = v184;
  }

  (*(v162 + 32))(v180, v199, v181);
  return (*(v162 + 56))(v180, 0, 1, v181);
}

uint64_t closure #1 in CAFInferredNotificationSource.convert(message:requestContent:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = static os_log_type_t.info.getter();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  v15 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v20 = a8;
    v21[0] = swift_slowAlloc();
    v17 = v21[0];
    *v16 = 136315394;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v21);
    *(v16 + 12) = 2080;
    *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v21);
    _os_log_impl(&dword_24234D000, v15, v14, "Chevron (%s:%s) button pressed", v16, 0x16u);
    swift_arrayDestroy();
    v18 = v17;
    a8 = v20;
    MEMORY[0x245D0E5A0](v18, -1, -1);
    MEMORY[0x245D0E5A0](v16, -1, -1);
  }

  dispatch thunk of CAFRemoteNotificationObservable.userAction.setter();
  dispatch thunk of CAFRequestContentObservable.on.setter();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(result + 40))(a8, a9);
  }

  return result;
}

void closure #1 in closure #2 in CAFInferredNotificationSource.convert(message:requestContent:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = a1;
  v16 = static os_log_type_t.info.getter();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  v17 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v17, v16))
  {
    v28 = a8;
    v18 = swift_slowAlloc();
    v19 = a5;
    v20 = swift_slowAlloc();
    v29[0] = v20;
    *v18 = 136315650;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v29);
    *(v18 + 12) = 2080;
    *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, v19, v29);
    *(v18 + 22) = 256;
    *(v18 + 24) = v15;
    _os_log_impl(&dword_24234D000, v17, v16, "Notification (%s:%s) button %hhu pressed", v18, 0x19u);
    swift_arrayDestroy();
    MEMORY[0x245D0E5A0](v20, -1, -1);
    v21 = v18;
    a8 = v28;
    MEMORY[0x245D0E5A0](v21, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    dispatch thunk of CAFRemoteNotificationObservable.userAction.setter();
  }

  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    dispatch thunk of CAFRequestContentObservable.on.setter();
  }

  if (a9)
  {
    static os_log_type_t.info.getter();
    v26 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    swift_beginAccess();
    v27 = swift_weakLoadStrong();
    if (v27)
    {
      (*(v27 + 40))(a8, a9);
    }
  }
}

void closure #3 in CAFInferredNotificationSource.convert(message:requestContent:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = static os_log_type_t.info.getter();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  v10 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v15);
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v15);
    _os_log_impl(&dword_24234D000, v10, v9, "Notification (%s:%s) close button pressed", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D0E5A0](v12, -1, -1);
    MEMORY[0x245D0E5A0](v11, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    dispatch thunk of CAFRequestContentObservable.on.setter();
  }
}

void *CAFInferredNotificationSource.deinit()
{

  return v0;
}

uint64_t CAFInferredNotificationSource.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t protocol witness for CAFDataSource.output.getter in conformance CAFInferredNotificationSource()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMR);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v6[1] = CAFNotificationSource.notification.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd, &_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMR);
  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<NotificationModel?, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMd, &_s7Combine12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGMR, MEMORY[0x277CBCD90]);
  lazy protocol witness table accessor for type NotificationModel? and conformance <A> A?();
  Publisher<>.removeDuplicates()();

  lazy protocol witness table accessor for type AnyPublisher<RequestTemporaryContentModel?, Never> and conformance AnyPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<NotificationModel?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy14CarPlayAssetUI17NotificationModelVSgs5NeverOGGMR, MEMORY[0x277CBCBE0]);
  v4 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_2423E61DC()
{
  MEMORY[0x245D0E610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2423E6214()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2423E62AC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2423E62E4()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2423E637C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt8)@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

id CAUAssetLibrary.asset(for:)(uint64_t a1)
{
  v4 = type metadata accessor for URL();
  v64 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v55 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v55 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v55 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v55 - v17;
  dispatch thunk of CAUAssetLibrary.basePath(for:)();
  if (!v2)
  {
    v19 = v64;
    v58 = v7;
    v59 = v10;
    v60 = v16;
    v20 = dispatch thunk of CAUAssetLibrary.filename(for:)();
    v61 = 0;
    v55[0] = a1;
    v22 = v20;
    URL.appendingPathComponent(_:)();
    URL.appendingPathComponent(_:)();
    v23 = *(v19 + 8);
    v23(v13, v4);
    v57 = v18;
    URL.appendingPathComponent(_:)();
    v24 = v59;
    v55[1] = v22;
    URL.appendingPathComponent(_:)();
    v56 = v4;
    v64 = v19 + 8;
    v23(v13, v4);
    v25 = objc_opt_self();
    v26 = [v25 defaultManager];
    countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    v28 = MEMORY[0x245D0D180](countAndFlagsBits);

    v29 = [v26 fileExistsAtPath_];

    if (v29 && (v30 = [v25 defaultManager], v31 = URL.path(percentEncoded:)(1)._countAndFlagsBits, v32 = MEMORY[0x245D0D180](v31), , v33 = objc_msgSend(v30, sel_fileExistsAtPath_, v32), v30, v32, v33))
    {

      v62 = 0;
      v63 = 0xE000000000000000;
      type metadata accessor for CAUResource();
      _print_unlocked<A, B>(_:_:)();
      v34 = v61;
      v35 = specialized CAUAssetLibrary.loadImage(path:for:)(v24, v62, v63);
      v1 = v34;
      if (v34)
      {

        v36 = v56;
        v23(v24, v56);
        v23(v60, v36);
        v23(v57, v36);
        return v1;
      }

      v58 = v35;
      v61 = v23;

      v62 = 0;
      v63 = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v47 = specialized CAUAssetLibrary.loadImage(path:for:)(v60, v62, v63);
      v38 = v57;
      v48 = v47;

      v1 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
      v49 = [v1 imageAsset];
      if (v49)
      {
        v50 = v49;
        v51 = objc_opt_self();
        v52 = [v51 traitCollectionWithUserInterfaceStyle_];
        v53 = v58;
        [v50 registerImage:v58 withTraitCollection:v52];

        v54 = [v51 traitCollectionWithUserInterfaceStyle_];
        [v50 registerImage:v48 withTraitCollection:v54];

        v23 = v61;
        v44 = v56;
        v61(v59, v56);
        goto LABEL_14;
      }

      specialized static CAFUILogger.error(_:function:file:line:)(0xD000000000000026, 0x800000024242BDA0, 0x6F66287465737361, 0xEB00000000293A72, 34);

      v23 = v61;
      v45 = v56;
    }

    else
    {
      v37 = v58;
      v38 = v57;
      URL.appendingPathComponent(_:)();

      v39 = [v25 &selRef_symbolName + 3];
      v40 = URL.path(percentEncoded:)(1)._countAndFlagsBits;
      v41 = MEMORY[0x245D0D180](v40);

      v1 = [v39 fileExistsAtPath_];

      if (v1)
      {
        v62 = 0;
        v63 = 0xE000000000000000;
        type metadata accessor for CAUResource();
        _print_unlocked<A, B>(_:_:)();
        v42 = v61;
        v43 = specialized CAUAssetLibrary.loadImage(path:for:)(v37, v62, v63);
        v44 = v56;
        if (v42)
        {

          v23(v37, v44);
          v23(v59, v44);
          v23(v60, v44);
          v23(v38, v44);
          return v1;
        }

        v1 = v43;

        v23(v37, v44);
        v23(v59, v44);
LABEL_14:
        v23(v60, v44);
        v23(v38, v44);
        return v1;
      }

      v45 = v56;
      v23(v37, v56);
    }

    v1 = type metadata accessor for CAUError();
    lazy protocol witness table accessor for type CAUError and conformance CAUError(&lazy protocol witness table cache variable for type CAUError and conformance CAUError, MEMORY[0x277CF88E8], MEMORY[0x277CF88F0]);
    swift_allocError();
    (*(*(v1 - 1) + 104))(v46, *MEMORY[0x277CF88D8], v1);
    swift_willThrow();
    v23(v59, v45);
    v23(v60, v45);
    v23(v38, v45);
  }

  return v1;
}

UIImage_optional __swiftcall CAUAssetLibrary.customImage(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for CAUCustomImageArchiveManifest.ImageData.Appearance();
  v6 = *(v109 - 8);
  v7 = MEMORY[0x28223BE20](v109);
  v90 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v105 = &v72 - v9;
  v108 = type metadata accessor for URL.DirectoryHint();
  v116 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v107 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for URL();
  v115 = *(v95 - 8);
  v11 = MEMORY[0x28223BE20](v95);
  v106 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v114 = &v72 - v13;
  v14 = type metadata accessor for CAUCustomImageArchiveManifest.ImageData.Property();
  v76 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v91 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for CAUCustomImageArchiveManifest.ImageData();
  v84 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CarAssetUtils29CAUCustomImageArchiveManifestVSgMd, &_s13CarAssetUtils29CAUCustomImageArchiveManifestVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v72 - v18;
  v20 = type metadata accessor for CAUCustomImageArchiveManifest();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v1;
  dispatch thunk of CAUAssetLibrary.customImageArchiveManifest.getter();
  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {
    (*(v21 + 32))(v23, v19, v20);
    v30 = CAUCustomImageArchiveManifest.images.getter();
    v83 = *(v30 + 2);
    if (!v83)
    {

LABEL_30:
      v64 = MEMORY[0x245D0D180](countAndFlagsBits, object);
      v65 = CAFUIImageForSymbolName(v64);

      (*(v21 + 8))(v23, v20);
      v28 = v65;
      goto LABEL_31;
    }

    v72 = v23;
    v73 = v21;
    v74 = v20;
    v32 = 0;
    v80 = v30 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
    v79 = v84 + 16;
    v82 = (v84 + 8);
    v104 = v76 + 16;
    v103 = *MEMORY[0x277CC91D0];
    v102 = (v116 + 104);
    v101 = (v116 + 8);
    v113 = (v115 + 8);
    v94 = " support image assets.";
    v100 = (v6 + 8);
    v87 = "Failed to create image for ";
    v99 = (v76 + 8);
    v89 = *MEMORY[0x277CF88C0];
    v88 = (v6 + 104);
    *&v31 = 136315650;
    v86 = v31;
    v33 = v78;
    v34 = v75;
    v35 = v95;
    v81 = v30;
    while (1)
    {
      if (v32 >= *(v30 + 2))
      {
        __break(1u);
        goto LABEL_36;
      }

      v36 = *(v84 + 72);
      v85 = v32;
      (*(v84 + 16))(v34, &v80[v36 * v32], v33);
      if (CAUCustomImageArchiveManifest.ImageData.symbolName.getter() == countAndFlagsBits && v37 == object)
      {
      }

      else
      {
        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v38 & 1) == 0)
        {
          (*v82)(v34, v33);
          goto LABEL_8;
        }
      }

      v39 = CAUCustomImageArchiveManifest.ImageData.properties.getter();
      v40 = *(v39 + 16);
      if (v40)
      {
        v93 = 0;
        v92 = 0;
        v41 = (*(v76 + 80) + 32) & ~*(v76 + 80);
        v77 = v39;
        v42 = v39 + v41;
        v43 = *(v76 + 72);
        v111 = *(v76 + 16);
        v112 = v43;
        v44 = v91;
        do
        {
          v115 = v42;
          v116 = v40;
          v111(v44);
          v45 = v106;
          CAUAssetLibrary.customImageArchiveImagesFilePath.getter();
          v118 = CAUCustomImageArchiveManifest.ImageData.Property.fileName.getter();
          v119 = v46;
          v48 = v107;
          v47 = v108;
          v49 = (*v102)(v107, v103, v108);
          lazy protocol witness table accessor for type String and conformance String(v49, v50, v51);
          v52 = v14;
          v53 = v114;
          URL.appending<A>(path:directoryHint:)();
          (*v101)(v48, v47);

          v54 = *v113;
          (*v113)(v45, v35);
          v98 = specialized CAUAssetLibrary.loadImage(path:for:)(v53, 0x6D496D6F74737563, 0xEB00000000656761);
          v55 = v105;
          CAUCustomImageArchiveManifest.ImageData.Property.appearance.getter();
          v56 = v90;
          v57 = v109;
          (*v88)(v90, v89, v109);
          lazy protocol witness table accessor for type CAUError and conformance CAUError(&lazy protocol witness table cache variable for type CAUCustomImageArchiveManifest.ImageData.Appearance and conformance CAUCustomImageArchiveManifest.ImageData.Appearance, MEMORY[0x277CF88C8], MEMORY[0x277CF88D0]);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          v58 = *v100;
          (*v100)(v56, v57);
          v59 = v57;
          v35 = v95;
          v58(v55, v59);
          v54(v114, v35);
          (*v99)(v44, v52);
          v14 = v52;
          if (v118 == v117)
          {

            v60 = v98;
            v61 = &v120;
          }

          else
          {

            v60 = v98;
            v61 = &v121;
          }

          *(v61 - 32) = v60;
          v44 = v91;
          v42 = v115 + v112;
          v40 = v116 - 1;
        }

        while (v116 != 1);

        v28 = v92;
        if (v92)
        {
          v33 = v78;
          v34 = v75;
          if (!v93)
          {
            (*v82)(v75, v78);
LABEL_33:
            (*(v73 + 8))(v72, v74);

            goto LABEL_31;
          }

          v62 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
          v63 = [v62 imageAsset];
          if (v63)
          {
            v66 = v63;

            v67 = objc_opt_self();
            v68 = v33;
            v69 = [v67 traitCollectionWithUserInterfaceStyle_];
            [v66 registerImage:v28 withTraitCollection:v69];

            v70 = [v67 traitCollectionWithUserInterfaceStyle_];
            v71 = v93;
            [v66 registerImage:v93 withTraitCollection:v70];

            (*v82)(v34, v68);
            (*(v73 + 8))(v72, v74);
            v28 = v62;
            goto LABEL_31;
          }

          (*v82)(v34, v33);
        }

        else
        {
          v34 = v75;
          v33 = v78;
          (*v82)(v75, v78);
          v28 = v93;
          if (v93)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {

        v33 = v78;
        (*v82)(v34, v78);
      }

LABEL_8:
      v32 = v85 + 1;
      v30 = v81;
      if (v85 + 1 == v83)
      {

        v20 = v74;
        v21 = v73;
        v23 = v72;
        goto LABEL_30;
      }
    }
  }

  outlined destroy of CAUCustomImageArchiveManifest?(v19);
  static Logger.assetUtils.getter();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_24234D000, v24, v25, "customImageArchiveManifest is not available.", v26, 2u);
    MEMORY[0x245D0E5A0](v26, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v27 = MEMORY[0x245D0D180](countAndFlagsBits, object);
  v28 = CAFUIImageForSymbolName(v27);

LABEL_31:
  v30 = v28;
LABEL_36:
  result.value.super.isa = v30;
  result.is_nil = v29;
  return result;
}

uint64_t CAUAssetLibraryManager.fetchCustomImage(named:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for SymbolImageProvider.ImageSize();
  v67 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v65 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v66 = &v63 - v9;
  v10._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = String.hasPrefix(_:)(v10);

  v12 = static os_log_type_t.info.getter();
  type metadata accessor for OS_os_log();
  v13 = static OS_os_log.default.getter();
  v14 = os_log_type_enabled(v13, v12);
  if (v11)
  {
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v64 = v6;
      v17 = a3;
      v18 = v16;
      v68 = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v68);
      _os_log_impl(&dword_24234D000, v13, v12, "Searching for custom image with URL '%s'", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      v19 = v18;
      a3 = v17;
      v6 = v64;
      MEMORY[0x245D0E5A0](v19, -1, -1);
      MEMORY[0x245D0E5A0](v15, -1, -1);
    }

    v20 = dispatch thunk of CAUAssetLibraryManager.assetLibrary.getter();
    if (v20)
    {
      v21 = v20;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      String.count.getter();

      v22 = String.index(_:offsetBy:)();
      v23 = specialized Collection.subscript.getter(v22, a1, a2);
      v24 = MEMORY[0x245D0D1E0](v23);
      v26 = v25;

      v27._countAndFlagsBits = v24;
      v27._object = v26;
      v28 = CAUAssetLibrary.customImage(for:)(v27);

      if (v28)
      {
        [v28 size];
        if (v29 <= 128.0)
        {
          [v28 size];
          v31 = v67;
          v32 = *(v67 + 104);
          if (v53 <= 78.0)
          {
            v54 = MEMORY[0x277CF8C60];
          }

          else
          {
            v54 = MEMORY[0x277CF8C68];
          }

          v30 = *v54;
        }

        else
        {
          v30 = *MEMORY[0x277CF8C58];
          v31 = v67;
          v32 = *(v67 + 104);
        }

        v55 = v65;
        v32(v65, v30, v6);
        v56 = *(v31 + 32);
        v57 = v66;
        v56(v66, v55, v6);
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV5image_012CarPlayAssetB006SymbolC8ProviderV0C6SourceO6sourcetMd, &_s7SwiftUI5ImageV5image_012CarPlayAssetB006SymbolC8ProviderV0C6SourceO6sourcetMR);
        v59 = *(v58 + 48);
        v60 = Image.init(uiImage:)();

        *a3 = v60;
        v56(a3 + v59, v57, v6);
        v61 = *MEMORY[0x277CF8C78];
        v62 = type metadata accessor for SymbolImageProvider.ImageSource();
        (*(*(v62 - 8) + 104))(a3 + v59, v61, v62);
        return (*(*(v58 - 8) + 56))(a3, 0, 1, v58);
      }

      static os_log_type_t.error.getter();
      v41 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();
    }

    else
    {
      static os_log_type_t.error.getter();
      v41 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();
    }

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV5image_012CarPlayAssetB006SymbolC8ProviderV0C6SourceO6sourcetMd, &_s7SwiftUI5ImageV5image_012CarPlayAssetB006SymbolC8ProviderV0C6SourceO6sourcetMR);
    v47 = *(*(v51 - 8) + 56);
    v50 = v51;
    v48 = a3;
    v49 = 1;
  }

  else
  {
    v33 = a3;
    if (v14)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v68 = v35;
      *v34 = 136315138;
      *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v68);
      _os_log_impl(&dword_24234D000, v13, v12, "Searching for SF Symbol named '%s'", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x245D0E5A0](v35, -1, -1);
      MEMORY[0x245D0E5A0](v34, -1, -1);
    }

    v36 = CAFUIFrameworkBundle();
    v37 = MEMORY[0x245D0D180](a1, a2);
    v38 = [objc_opt_self() imageNamed:v37 inBundle:v36];

    if (v38)
    {

      v39 = CAFUIFrameworkBundle();

      v40 = Image.init(_:bundle:)();
    }

    else
    {

      v40 = Image.init(_internalSystemName:)();
    }

    v42 = v40;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV5image_012CarPlayAssetB006SymbolC8ProviderV0C6SourceO6sourcetMd, &_s7SwiftUI5ImageV5image_012CarPlayAssetB006SymbolC8ProviderV0C6SourceO6sourcetMR);
    v44 = *(v43 + 48);
    *v33 = v42;
    v45 = *MEMORY[0x277CF8C70];
    v46 = type metadata accessor for SymbolImageProvider.ImageSource();
    (*(*(v46 - 8) + 104))(v33 + v44, v45, v46);
    v47 = *(*(v43 - 8) + 56);
    v48 = v33;
    v49 = 0;
    v50 = v43;
  }

  return v47(v48, v49, 1, v50);
}

uint64_t specialized Collection.subscript.getter(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x2821FBFB0]();
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *specialized CAUAssetLibrary.loadImage(path:for:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v80 = a3;
  v78 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v71 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v71 - v13;
  v15 = type metadata accessor for Logger();
  v76 = *(v15 - 8);
  v77 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v79 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v71 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v71 - v21;
  v23 = Data.init(contentsOf:options:)();
  if (!v3)
  {
    v73 = v14;
    v74 = v22;
    v35 = v24 >> 62;
    if ((v24 >> 62) > 1)
    {
      v36 = v20;
      v37 = v12;
      v38 = a1;
      if (v35 == 2 && *(v23 + 16) != *(v23 + 24))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v36 = v20;
      if (!v35)
      {
        v37 = v12;
        v38 = a1;
        if ((v24 & 0xFF000000000000) == 0)
        {
          goto LABEL_15;
        }

LABEL_12:
        v42 = v23;
        v43 = v24;
        v44 = objc_allocWithZone(MEMORY[0x277D755B8]);
        outlined copy of Data._Representation(v42, v43);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v39 = [v44 initWithData_];

        outlined consume of Data._Representation(v42, v43);
        if (v39)
        {
          outlined consume of Data._Representation(v42, v43);
          return v39;
        }

        v75 = v42;
        v79 = v43;
        v59 = v74;
        static Logger.assetUtils.getter();
        v60 = v73;
        (*(v6 + 16))(v73, v38, v5);

        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v81 = v72;
          *v63 = 136315394;
          v64 = v78;
          *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v81);
          *(v63 + 12) = 2080;
          lazy protocol witness table accessor for type CAUError and conformance CAUError(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v65 = dispatch thunk of CustomStringConvertible.description.getter();
          v67 = v66;
          (*(v6 + 8))(v60, v5);
          v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v81);

          *(v63 + 14) = v68;
          _os_log_impl(&dword_24234D000, v61, v62, "failed to decode image %s at path %s", v63, 0x16u);
          v69 = v72;
          swift_arrayDestroy();
          MEMORY[0x245D0E5A0](v69, -1, -1);
          MEMORY[0x245D0E5A0](v63, -1, -1);

          (*(v76 + 8))(v74, v77);
        }

        else
        {

          (*(v6 + 8))(v60, v5);
          (*(v76 + 8))(v59, v77);
          v64 = v78;
        }

        v39 = type metadata accessor for CAUError();
        lazy protocol witness table accessor for type CAUError and conformance CAUError(&lazy protocol witness table cache variable for type CAUError and conformance CAUError, MEMORY[0x277CF88E8], MEMORY[0x277CF88F0]);
        swift_allocError();
        v58 = v57;
        *v57 = v64;
LABEL_23:
        v57[1] = v80;
        v57[2] = 0;
        (*(*(v39 - 1) + 104))(v58, *MEMORY[0x277CF88E0], v39);
        swift_willThrow();

        outlined consume of Data._Representation(v75, v79);
        return v39;
      }

      v37 = v12;
      v38 = a1;
      if (v23 != v23 >> 32)
      {
        goto LABEL_12;
      }
    }

LABEL_15:
    v75 = v23;
    v79 = v24;
    static Logger.assetUtils.getter();
    (*(v6 + 16))(v37, v38, v5);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v81 = v74;
      *v48 = 136315394;
      v49 = v78;
      *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v81);
      *(v48 + 12) = 2080;
      lazy protocol witness table accessor for type CAUError and conformance CAUError(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v6;
      v53 = v52;
      (*(v51 + 8))(v37, v5);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v53, &v81);

      *(v48 + 14) = v54;
      v55 = v49;
      _os_log_impl(&dword_24234D000, v46, v47, "File is empty for %s at path %s", v48, 0x16u);
      v56 = v74;
      swift_arrayDestroy();
      MEMORY[0x245D0E5A0](v56, -1, -1);
      MEMORY[0x245D0E5A0](v48, -1, -1);

      (*(v76 + 8))(v36, v77);
    }

    else
    {

      (*(v6 + 8))(v37, v5);
      (*(v76 + 8))(v36, v77);
      v55 = v78;
    }

    v39 = type metadata accessor for CAUError();
    lazy protocol witness table accessor for type CAUError and conformance CAUError(&lazy protocol witness table cache variable for type CAUError and conformance CAUError, MEMORY[0x277CF88E8], MEMORY[0x277CF88F0]);
    swift_allocError();
    v58 = v57;
    *v57 = v55;
    goto LABEL_23;
  }

  static Logger.assetUtils.getter();
  (*(v6 + 16))(v9, a1, v5);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v81 = v75;
    *v27 = 136315394;
    v28 = v78;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v81);
    *(v27 + 12) = 2080;
    lazy protocol witness table accessor for type CAUError and conformance CAUError(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v5;
    v32 = v31;
    (*(v6 + 8))(v9, v30);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v32, &v81);

    *(v27 + 14) = v33;
    _os_log_impl(&dword_24234D000, v25, v26, "failed to read data for %s at path %s", v27, 0x16u);
    v34 = v75;
    swift_arrayDestroy();
    MEMORY[0x245D0E5A0](v34, -1, -1);
    MEMORY[0x245D0E5A0](v27, -1, -1);

    (*(v76 + 8))(v79, v77);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
    (*(v76 + 8))(v79, v77);
    v28 = v78;
  }

  v39 = type metadata accessor for CAUError();
  lazy protocol witness table accessor for type CAUError and conformance CAUError(&lazy protocol witness table cache variable for type CAUError and conformance CAUError, MEMORY[0x277CF88E8], MEMORY[0x277CF88F0]);
  swift_allocError();
  v40 = v80;
  *v41 = v28;
  v41[1] = v40;
  v41[2] = v3;
  (*(*(v39 - 1) + 104))(v41, *MEMORY[0x277CF88E0], v39);
  swift_willThrow();

  return v39;
}

uint64_t outlined destroy of CAUCustomImageArchiveManifest?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CarAssetUtils29CAUCustomImageArchiveManifestVSgMd, &_s13CarAssetUtils29CAUCustomImageArchiveManifestVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type CAUError and conformance CAUError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CAFEqualizer.title.getter()
{
  v1 = [v0 type];
  v2 = 0;
  if (v1 > 1)
  {
    if (v1 == 3)
    {
      v7 = [v0 userVisibleLabel];
      if (v7)
      {
        v8 = v7;
        v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = v2 & 0xFFFFFFFFFFFFLL;
        }

        if (!v11)
        {

          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else if (v1 == 2)
    {
      v3 = MEMORY[0x245D0D180](0xD000000000000017, 0x800000024242BEB0);
      v4 = CAFUILocalizedStringForKey(v3);
      goto LABEL_9;
    }
  }

  else
  {
    if (!v1)
    {
      v3 = MEMORY[0x245D0D180](0xD000000000000019, 0x800000024242BE70);
      v4 = CAFUILocalizedStringForKey(v3);
      goto LABEL_9;
    }

    if (v1 == 1)
    {
      v3 = MEMORY[0x245D0D180](0xD000000000000016, 0x800000024242BE90);
      v4 = CAFUILocalizedStringForKey(v3);
LABEL_9:
      v5 = v4;

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  return v2;
}

id CAFEqualizerObservable.valueRange.getter(uint64_t a1)
{
  v1 = CAFEqualizerObservable.observed.getter();
  v2 = [v1 valueRange];

  return v2;
}

id CAFVolumeObservable.volumeRange.getter()
{
  v0 = CAFVolumeObservable.observed.getter();
  v1 = [v0 volumeRange];

  return v1;
}

uint64_t static CAFUICellProtocol.reuseIdentifier.getter()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void specialized EnumeratedSequence.Iterator.next()(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

  if (v2 >= v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *v1 + 48 * v2;
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v8 = *(v4 + 56);
  v7 = *(v4 + 64);
  v9 = *(v4 + 72);
  v1[1] = v2 + 1;
  v10 = v1[2];
  if (__OFADD__(v10, 1))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v1[2] = v10 + 1;
  *a1 = v10;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v8;
  *(a1 + 40) = v7;
  *(a1 + 48) = v9;
  v11 = v7;
}

uint64_t CAFUIAutomakerSettingsSection.header.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CAFUIAutomakerSettingsSection.footer.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *CAFUIAutomakerSettingsSection.parentSetting.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t CAFUITileDataSource.numSections.getter()
{
  v1 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
  v5 = v4 >> 62;
  if (!v3)
  {
    if (v5)
    {
      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v8 != 0;
    goto LABEL_12;
  }

  if (v5)
  {
    goto LABEL_16;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v7 = 1;
    if (i)
    {
      v7 = 2;
    }

LABEL_12:
    v9 = *(*(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections) + 16);
    result = v7 + v9;
    if (!__OFADD__(v7, v9))
    {
      break;
    }

    __break(1u);
LABEL_16:
    ;
  }

  return result;
}

uint64_t key path setter for CAFUITileDataSource.listItems : CAFUITileDataSource(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  CAFUITileDataSource.listItems.didset(v5);
}

void CAFUITileDataSource.listItems.didset(unint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView);
  if (v2)
  {
    if (a1 >> 62)
    {
      goto LABEL_12;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      do
      {
        v3 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
        swift_beginAccess();
        v4 = *(v1 + v3);
        if (v4 >> 62)
        {
          if (!__CocoaSet.count.getter())
          {
            break;
          }
        }

        else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        v5 = *(v1 + v3);
        if (v5 >> 62)
        {
          if (!__CocoaSet.count.getter())
          {
LABEL_18:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
LABEL_19:
            v7 = __CocoaSet.count.getter();
            goto LABEL_10;
          }
        }

        else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(v1 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
        if (v6 >> 62)
        {
          goto LABEL_19;
        }

        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
        v8 = v7 != 0;
        v9 = objc_opt_self();
        v10 = swift_allocObject();
        *(v10 + 16) = v2;
        *(v10 + 24) = v8;
        v1 = swift_allocObject();
        *(v1 + 16) = partial apply for closure #1 in CAFUITileDataSource.listItems.didset;
        *(v1 + 24) = v10;
        aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
        aBlock[5] = v1;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_83;
        v11 = _Block_copy(aBlock);
        v2 = v2;

        [v9 performWithoutAnimation_];

        _Block_release(v11);
        LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

        if ((v9 & 1) == 0)
        {
          return;
        }

        __break(1u);
LABEL_12:
        ;
      }

      while (__CocoaSet.count.getter());
    }

    v12 = v2;
    CAFUITileDataSource.reloadView()();
  }
}

uint64_t CAFUITileDataSource.listItems.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  CAFUITileDataSource.listItems.didset(v4);
}

void (*CAFUITileDataSource.listItems.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return CAFUITileDataSource.listItems.modify;
}

void CAFUITileDataSource.listItems.modify(void **a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 4);
  v3 = *(*a1 + 5);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 3);
  if (a2)
  {

    CAFUITileDataSource.listItems.didset(v5);
  }

  else
  {
    CAFUITileDataSource.listItems.didset(v5);
  }

  free(v2);
}

void CAFUITileDataSource.collectionView.didset()
{
  v1 = *(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView);
  if (v1)
  {
    v2 = one-time initialization token for cellsByIdentifiers;
    v25 = v1;
    if (v2 != -1)
    {
LABEL_22:
      swift_once();
    }

    v3 = static CAFUICollectionViewCells.cellsByIdentifiers;
    v4 = static CAFUICollectionViewCells.cellsByIdentifiers + 64;
    v5 = 1 << *(static CAFUICollectionViewCells.cellsByIdentifiers + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(static CAFUICollectionViewCells.cellsByIdentifiers + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    if (v7)
    {
      while (1)
      {
        v10 = v9;
LABEL_11:
        v11 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v12 = (*(v3 + 48) + 16 * (v11 | (v10 << 6)));
        v13 = *v12;
        v14 = v12[1];
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

        v16 = MEMORY[0x245D0D180](v13, v14);
        [v25 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v16];

        if (!v7)
        {
          goto LABEL_7;
        }
      }
    }

    while (1)
    {
LABEL_7:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_11;
      }
    }

    type metadata accessor for CAFUICollectionHeaderView();
    v17 = swift_getObjCClassFromMetadata();
    v18 = *MEMORY[0x277D767D8];
    v19 = NSStringFromClass(v17);
    if (!v19)
    {
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = MEMORY[0x245D0D180](v20);
    }

    [v25 registerClass:v17 forSupplementaryViewOfKind:v18 withReuseIdentifier:v19];

    type metadata accessor for CAFUICollectionFooterView();
    v21 = swift_getObjCClassFromMetadata();
    v22 = *MEMORY[0x277D767D0];
    v23 = NSStringFromClass(v21);
    if (!v23)
    {
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = MEMORY[0x245D0D180](v24);
    }

    [v25 registerClass:v21 forSupplementaryViewOfKind:v22 withReuseIdentifier:v23];

    [v25 setDataSource_];
  }
}

char **CAFUITileDataSource.init(prominentCategories:listItems:settingsSections:settingsCache:)(char *a1, unint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v85 = *a4;
  v86 = a4[1];
  v6 = a4[2];
  v87 = a4[3];
  v88 = a4[4];
  v89 = a4[5];
  v90 = a4[6];
  *(v4 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView) = 0;
  v7 = a3[2];
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v10 = v6;
    *&v100 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v11 = v100;
    v12 = a3 + 9;
    do
    {
      v13 = *v12;
      *&v100 = v11;
      v14 = *(v11 + 16);
      v15 = *(v11 + 24);

      if (v14 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v14 + 1, 1);
        v11 = v100;
      }

      *(v11 + 16) = v14 + 1;
      *(v11 + 8 * v14 + 32) = v13;
      v12 += 6;
      --v7;
    }

    while (v7);
    v16 = a2;
    v8 = MEMORY[0x277D84F90];
    v6 = v10;
  }

  else
  {
    v16 = a2;
    v11 = MEMORY[0x277D84F90];
  }

  v83 = v6;
  v92 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo19CAFAutomakerSettingC_s15FlattenSequenceVySaySayAEGGGTt0g5(v11);
  *(v5 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_prominentCategories) = a1;
  v17 = (v5 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsCache);
  *v17 = v85;
  v17[1] = v86;
  v17[2] = v6;
  v17[3] = v87;
  v17[4] = v88;
  v17[5] = v89;
  v17[6] = v90;
  *(v5 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems) = v16;
  *(v5 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsSections) = a3;
  *(v5 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections) = v8;
  *(v5 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings) = v8;
  v18 = objc_allocWithZone(type metadata accessor for CAFUIProminentAncestorObserver());
  v19 = v6;

  outlined copy of CAFUISettingsCache?(v85, v86, v6, v87, v88, v89, v90);
  v20 = &off_278D49000;
  v21 = [v18 init];
  *(v5 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_prominentAncestorObserver) = v21;
  *(v5 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_viewSettingSet) = v92;
  if (!v85)
  {

    v19 = MEMORY[0x277D84F90];
LABEL_29:
    v35 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  v22 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
    goto LABEL_27;
  }

  v23 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v24 = a1;
  if (!v23)
  {
LABEL_28:

    outlined consume of CAFUISettingsCache?(v85, v86, v19, v87, v88, v89, v90);
    goto LABEL_29;
  }

  while (1)
  {
    v82 = v5;
    *&v100 = MEMORY[0x277D84F90];
    v25 = v19;
    v19 &= 0xC000000000000001;
    v5 = (v25 + 32);
    v26 = v24 + 32;

    v27 = 0;
    v20 = &selRef_systemImageNamed_withConfiguration_;
LABEL_13:
    if (v19)
    {
      v28 = MEMORY[0x245D0D9A0](v27, v83);
    }

    else
    {
      if (v27 >= *(v22 + 16))
      {
        goto LABEL_26;
      }

      v28 = v5[v27];
    }

    v29 = v28;
    if (!__OFADD__(v27++, 1))
    {
      break;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v23 = __CocoaSet.count.getter();
    v24 = a1;
    if (!v23)
    {
      goto LABEL_28;
    }
  }

  v31 = [v28 category];
  v32 = *(v24 + 2);
  v33 = v26;
  do
  {
    if (!v32)
    {

      if (v27 != v23)
      {
        goto LABEL_13;
      }

      goto LABEL_23;
    }

    v34 = *v33++;
    --v32;
  }

  while (v34 != v31);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v24 = a1;
  if (v27 != v23)
  {
    goto LABEL_13;
  }

LABEL_23:

  outlined consume of CAFUISettingsCache?(v85, v86, v83, v87, v88, v89, v90);
  v19 = v100;
  v5 = v82;
  v35 = MEMORY[0x277D84F90];
  v20 = &off_278D49000;
LABEL_30:
  *(v5 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_prominentSettings) = v19;
  v99.receiver = v5;
  v99.super_class = type metadata accessor for CAFUITileDataSource();
  v36 = objc_msgSendSuper2(&v99, v20[476]);
  v37 = *(v36 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_prominentSettings);
  v98 = v35;
  v38 = v37 & 0xFFFFFFFFFFFFFF8;
  if (v37 >> 62)
  {
    goto LABEL_127;
  }

  v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v94 = v36;

    if (v39)
    {
      v40 = 0;
      v91 = MEMORY[0x277D84F90];
      while (2)
      {
        v36 = v40;
LABEL_37:
        if ((v37 & 0xC000000000000001) != 0)
        {
          v41 = MEMORY[0x245D0D9A0](v36, v37);
        }

        else
        {
          if (v36 >= *(v38 + 16))
          {
            goto LABEL_120;
          }

          v41 = *(v37 + 8 * v36 + 32);
        }

        v42 = v41;
        v40 = (v36 + 1);
        if (__OFADD__(v36, 1))
        {
          goto LABEL_119;
        }

        objc_opt_self();
        v43 = swift_dynamicCastObjCClass();
        if (v43)
        {
          v44 = v43;
          swift_beginAccess();
          v45 = objc_getAssociatedObject(v44, &static CAFUIListContentAssociatedObjects.FirstChild);
          swift_endAccess();
          if (v45)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {

            v96 = 0u;
            v97 = 0u;
          }

          v100 = v96;
          v101 = v97;
          if (*(&v97 + 1))
          {
            type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting, 0x277CF8328);
            if (swift_dynamicCast())
            {
              v42 = v95;
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                MEMORY[0x245D0D2F0]();
                if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v91 = v98;
                if (v40 != v39)
                {
                  continue;
                }

                goto LABEL_57;
              }

              goto LABEL_35;
            }
          }

          else
          {
            outlined destroy of Any?(&v100);
          }
        }

        else
        {
LABEL_35:
        }

        break;
      }

      ++v36;
      if (v40 == v39)
      {
        goto LABEL_57;
      }

      goto LABEL_37;
    }

    v91 = MEMORY[0x277D84F90];
LABEL_57:

    v46 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo19CAFAutomakerSettingC_SayAEGTt0g5Tf4g_n(v91);

    v48 = specialized Set.union<A>(_:)(v47, v92);

    specialized Set.union<A>(_:)(v46, v48, v49);
    v51 = v50;
    if ((v50 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting, 0x277CF8328);
      lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFAutomakerSetting and conformance NSObject, &lazy cache variable for type metadata for CAFAutomakerSetting, 0x277CF8328, MEMORY[0x277D85378]);
      Set.Iterator.init(_cocoa:)();
      v37 = *(&v100 + 1);
      v52 = v100;
      v54 = *(&v101 + 1);
      v53 = v101;
      v55 = v102;
    }

    else
    {
      v56 = -1 << *(v50 + 32);
      v37 = v50 + 56;
      v53 = ~v56;
      v57 = -v56;
      if (v57 < 64)
      {
        v58 = ~(-1 << v57);
      }

      else
      {
        v58 = -1;
      }

      v55 = v58 & *(v50 + 56);

      v54 = 0;
      v52 = v51;
    }

    v92 = v53;
    v59 = (v53 + 64) >> 6;
    v36 = &selRef__systemImageNamed_withConfiguration_;
    if (v52 < 0)
    {
      goto LABEL_70;
    }

    while (1)
    {
      v60 = v54;
      v61 = v55;
      v62 = v54;
      if (!v55)
      {
        while (1)
        {
          v62 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            break;
          }

          if (v62 >= v59)
          {
            goto LABEL_74;
          }

          v61 = *(v37 + 8 * v62);
          ++v60;
          if (v61)
          {
            goto LABEL_68;
          }
        }

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

LABEL_68:
      v38 = (v61 - 1) & v61;
      v63 = *(*(v52 + 48) + ((v62 << 9) | (8 * __clz(__rbit64(v61)))));
      if (!v63)
      {
        break;
      }

      while (1)
      {
        [v63 registerObserver_];

        v54 = v62;
        v55 = v38;
        if ((v52 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_70:
        v64 = __CocoaSet.Iterator.next()();
        if (v64)
        {
          v98 = v64;
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting, 0x277CF8328);
          swift_dynamicCast();
          v63 = v96;
          v62 = v54;
          v38 = v55;
          if (v96)
          {
            continue;
          }
        }

        goto LABEL_74;
      }
    }

LABEL_74:
    outlined consume of Set<CAFAutomakerSetting>.Iterator._Variant(v52);

    *&v96 = MEMORY[0x277D84F90];
    if (a2 >> 62)
    {
      v37 = __CocoaSet.count.getter();
    }

    else
    {
      v37 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v65 = MEMORY[0x277D84F90];
    if (v37)
    {
      v38 = 0;
      v66 = MEMORY[0x277D84F90];
      do
      {
        v67 = v38;
        while (1)
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            MEMORY[0x245D0D9A0](v67, a2);
            v38 = v67 + 1;
            if (__OFADD__(v67, 1))
            {
              goto LABEL_121;
            }
          }

          else
          {
            if (v67 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_122;
            }

            v38 = v67 + 1;
            if (__OFADD__(v67, 1))
            {
              goto LABEL_121;
            }
          }

          type metadata accessor for CAFUIServiceListItem();
          if (swift_dynamicCastClass())
          {
            break;
          }

          ++v67;
          if (v38 == v37)
          {
            goto LABEL_93;
          }
        }

        MEMORY[0x245D0D2F0]();
        if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v66 = v96;
      }

      while (v38 != v37);
    }

    else
    {
      v66 = MEMORY[0x277D84F90];
    }

LABEL_93:

    *&v96 = v65;
    if (v66 >> 62)
    {
      v68 = __CocoaSet.count.getter();
    }

    else
    {
      v68 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v69 = MEMORY[0x277D84F90];
    if (v68)
    {
      v37 = 0;
      v38 = v66 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((v66 & 0xC000000000000001) != 0)
        {
          v70 = MEMORY[0x245D0D9A0](v37, v66);
          v71 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_123;
          }
        }

        else
        {
          if (v37 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_124;
          }

          v70 = *(v66 + 8 * v37 + 32);

          v71 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_123;
          }
        }

        v72 = *(v70 + 128);

        MEMORY[0x245D0D2F0](v73);
        if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v92 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v37;
      }

      while (v71 != v68);
      v74 = v96;
    }

    else
    {
      v74 = MEMORY[0x277D84F90];
    }

    if (!(v74 >> 62))
    {
      v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v75)
      {
        goto LABEL_131;
      }

LABEL_110:
      v76 = 0;
      while (1)
      {
        if ((v74 & 0xC000000000000001) != 0)
        {
          v77 = MEMORY[0x245D0D9A0](v76, v74);
        }

        else
        {
          if (v76 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_126;
          }

          v77 = *(v74 + 8 * v76 + 32);
        }

        v37 = v77;
        v38 = v76 + 1;
        if (__OFADD__(v76, 1))
        {
          break;
        }

        [v77 registerObserver_];

        ++v76;
        if (v38 == v75)
        {
          goto LABEL_131;
        }
      }

LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      v39 = __CocoaSet.count.getter();
      continue;
    }

    break;
  }

  v75 = __CocoaSet.count.getter();
  if (v75)
  {
    goto LABEL_110;
  }

LABEL_131:

  *&(*(v94 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_prominentAncestorObserver))[OBJC_IVAR____TtC5CAFUIP33_0E4D121C5C9C3A69D68EDC06FF2740D730CAFUIProminentAncestorObserver_delegate + 8] = &protocol witness table for CAFUITileDataSource;
  swift_unknownObjectWeakAssign();
  CAFUITileDataSource.refreshProminentSection()();
  *&v96 = v69;
  v78 = *(v94 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsSections);
  v79 = v94;
  specialized Sequence.forEach(_:)(v78, v79, &v96);

  *(v79 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections) = v96;

  return v79;
}

id _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo19CAFAutomakerSettingC_s15FlattenSequenceVySaySayAEGGGTt0g5(uint64_t a1)
{
  v2 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting, 0x277CF8328);
  v3 = lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFAutomakerSetting and conformance NSObject, &lazy cache variable for type metadata for CAFAutomakerSetting, 0x277CF8328, MEMORY[0x277D85378]);
  result = MEMORY[0x245D0D3B0](0, v2, v3);
  v5 = 0;
  v10 = result;
LABEL_12:
  while (1)
  {
    v7 = *(a1 + 16);
    if (v5 == v7)
    {
      break;
    }

    if (v5 >= v7)
    {
      goto LABEL_19;
    }

    v8 = *(a1 + 32 + 8 * v5);

    ++v5;
    if (v8)
    {
      v6 = 0;
      if (v8 >> 62)
      {
        goto LABEL_9;
      }

      while (1)
      {
        result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v6 == result)
        {
          break;
        }

        while (1)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            result = MEMORY[0x245D0D9A0](v6, v8);
          }

          else
          {
            if (v6 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_18;
            }

            result = *(v8 + 8 * v6 + 32);
          }

          if (__OFADD__(v6, 1))
          {
            __break(1u);
LABEL_18:
            __break(1u);
LABEL_19:
            __break(1u);
            return result;
          }

          specialized Set._Variant.insert(_:)(&v9, result);

          ++v6;
          if (!(v8 >> 62))
          {
            break;
          }

LABEL_9:
          result = __CocoaSet.count.getter();
          if (v6 == result)
          {
            goto LABEL_12;
          }
        }
      }
    }
  }

  return v10;
}

void specialized Set.union<A>(_:)(uint64_t a1, void *a2, __n128 a3)
{
  v3 = a1;
  v16[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting, 0x277CF8328);
    lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFAutomakerSetting and conformance NSObject, &lazy cache variable for type metadata for CAFAutomakerSetting, 0x277CF8328, MEMORY[0x277D85378]);
    Set.Iterator.init(_cocoa:)();
    v3 = v16[2];
    v4 = v16[3];
    v5 = v16[4];
    v6 = v16[5];
    v7 = v16[6];
  }

  else
  {
    v6 = 0;
    v8 = -1 << *(a1 + 32);
    v4 = (a1 + 56);
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = (v10 & *(a1 + 56));
  }

  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_18:
      outlined consume of Set<CAFAutomakerSetting>.Iterator._Variant(v3);
      return;
    }

    while (1)
    {
      specialized Set._Variant.insert(_:)(v16, v15);

      v6 = v13;
      v7 = v14;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting, 0x277CF8328);
        swift_dynamicCast();
        v15 = v16[0];
        v13 = v6;
        v14 = v7;
        if (v16[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = (v11 + 1);
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = v4[v13];
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t specialized Set.union<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v25 - v10;
  result = MEMORY[0x28223BE20](v9);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4);
      (*(v5 + 32))(v8, v14, v4);
      specialized Set._Variant.insert(_:)(v11, v8);
      result = (*(v5 + 8))(v11, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void CAFUITileDataSource.reloadView()()
{
  v1 = *&v0[OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView];
  if (v1)
  {
    v2 = v1;
    CAFUITileDataSource.refreshProminentSection()();
    aBlock[0] = MEMORY[0x277D84F90];
    v3 = *&v0[OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsSections];
    v4 = v0;
    specialized Sequence.forEach(_:)(v3, v4, aBlock);

    *&v4[OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections] = aBlock[0];

    specialized static CAFUILogger.default(_:function:file:line:)(0xD000000000000012, 0x800000024242C670, 0x695664616F6C6572, 0xEC00000029287765, 151);
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    v7 = swift_allocObject();
    *(v7 + 16) = partial apply for closure #1 in CAFUITileDataSource.reloadView();
    *(v7 + 24) = v6;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_73;
    v8 = _Block_copy(aBlock);
    v9 = v2;

    [v5 performWithoutAnimation_];

    _Block_release(v8);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      __break(1u);
    }
  }
}

id closure #1 in CAFUITileDataSource.reloadView()(void *a1)
{
  [a1 reloadData];
  v2 = [a1 collectionViewLayout];
  [v2 invalidateLayout];

  [a1 setNeedsLayout];

  return [a1 layoutIfNeeded];
}

char *CAFUITileDataSource.collectionView(_:cellForItemAt:)(char *a1, uint64_t a2)
{
  v7 = v2;
  v8 = a2;
  if ((CAFUITileDataSource.validate(indexPath:)(a2) & 1) == 0)
  {
    _StringGuts.grow(_:)(21);

    type metadata accessor for IndexPath();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
    v107 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x245D0D240](v107);

    goto LABEL_133;
  }

  v10 = IndexPath.section.getter();
  v11 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
  swift_beginAccess();
  v12 = *(v7 + v11);
  if (v12 >> 62)
  {
    v13 = 0x27ECAE000;
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = &lazy protocol witness table cache variable for type ModifiedContent<AudioSettingsCrosshairView, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }
  }

  v14 = *(v7 + *(v13 + 4056));
  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (!__CocoaSet.count.getter())
  {
LABEL_11:
    if (!v10)
    {
      goto LABEL_74;
    }

LABEL_12:
    v15 = (v7 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsCache);
    if (!*(v7 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsCache))
    {
      specialized static CAFUILogger.error(_:function:file:line:)(0xD000000000000044, 0x800000024242BF20, 0xD000000000000020, 0x800000024242BF70, 213);
      goto LABEL_133;
    }

    v6 = v15[5];
    v5 = v15[6];
    v4 = v15[4];
    v16 = IndexPath.section.getter();
    v3 = *(v13 + 4056);
    v17 = *(v7 + v3);
    if (v17 >> 62)
    {
      v95 = v16;
      v18 = __CocoaSet.count.getter();
      v16 = v95;
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v18)
    {
      v19 = v16 == 0;
    }

    else
    {
      v19 = 0;
    }

    if (v19)
    {
      v59 = IndexPath.item.getter();
      v7 = *(v7 + v3);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v97 = v59;

        v60 = MEMORY[0x245D0D9A0](v97, v7);
      }

      else
      {
        if ((v59 & 0x8000000000000000) != 0)
        {
          goto LABEL_100;
        }

        if (v59 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        v60 = *(v7 + 8 * v59 + 32);
      }

      swift_getObjectType();
      v61 = swift_conformsToProtocol2();
      if (!v61 || !v60)
      {
        goto LABEL_133;
      }

      v62 = v61;
      type metadata accessor for CAFUIProminentSettingCell();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v64 = v60;
      v65 = NSStringFromClass(ObjCClassFromMetadata);
      if (!v65)
      {
        v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = MEMORY[0x245D0D180](v66);
      }

      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v68 = [a1 dequeueReusableCellWithReuseIdentifier:v65 forIndexPath:isa];

      v69 = swift_dynamicCastClass();
      if (v69)
      {
        a1 = v69;
        v70 = CAFUISettingsCache.hasAnyDisabledAncestor(_:)(v64);

        CAFUIProminentSettingCell.configureCell(for:isDisabledByAncestor:)(v64, v62, v70 & 1);
        return a1;
      }

      goto LABEL_132;
    }

    v20 = IndexPath.section.getter();
    v21 = *(v7 + v11);
    if (v21 >> 62)
    {
      v96 = v20;
      v22 = __CocoaSet.count.getter();
      v20 = v96;
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = *(v7 + v3);
    v24 = v23 >> 62;
    if (!v22)
    {
      if (v24)
      {
        v105 = v20;
        v84 = __CocoaSet.count.getter();
        v20 = v105;
      }

      else
      {
        v84 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v85 = v84 != 0;
      v27 = __OFSUB__(v20, v85);
      v28 = v20 - v85;
      if (!v27)
      {
LABEL_27:
        if ((v28 & 0x8000000000000000) == 0)
        {
          v29 = *(v7 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections);
          if (v28 < *(v29 + 16))
          {
            v109 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections;
            v13 = *(v29 + 48 * v28 + 72);

            v30 = v8;
            v31 = IndexPath.item.getter();
            if ((v13 & 0xC000000000000001) == 0)
            {
              if ((v31 & 0x8000000000000000) != 0)
              {
                __break(1u);
                goto LABEL_105;
              }

              if (v31 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_111:
                __break(1u);
                goto LABEL_112;
              }

              v32 = *(v13 + 8 * v31 + 32);
LABEL_33:
              v33 = v32;

              swift_getObjectType();
              v108 = swift_conformsToProtocol2();
              if (v108)
              {
                v34 = v33 == 0;
              }

              else
              {
                v34 = 1;
              }

              if (v34)
              {
                goto LABEL_133;
              }

              type metadata accessor for CAFUIAutomakerSettingCell(0);
              v35 = swift_getObjCClassFromMetadata();
              v13 = v33;
              v36 = NSStringFromClass(v35);
              if (!v36)
              {
                v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v36 = MEMORY[0x245D0D180](v37);
              }

              v38 = IndexPath._bridgeToObjectiveC()().super.isa;
              v4 = [a1 dequeueReusableCellWithReuseIdentifier:v36 forIndexPath:v38];

              v39 = swift_dynamicCastClass();
              if (!v39)
              {

                goto LABEL_133;
              }

              a1 = v39;
              v30 = v8;
              v6 = IndexPath.item.getter();
              v5 = IndexPath.item.getter();
              v31 = IndexPath.section.getter();
              v40 = *(v7 + v11);
              if (!(v40 >> 62))
              {
                v41 = *(v7 + v3);
                if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_42;
                }

                goto LABEL_106;
              }

LABEL_105:
              v98 = v31;
              v99 = __CocoaSet.count.getter();
              v31 = v98;
              v41 = *(v7 + v3);
              if (v99)
              {
LABEL_42:
                if (v41 >> 62)
                {
                  v104 = v31;
                  v42 = __CocoaSet.count.getter();
                  v31 = v104;
                }

                else
                {
                  v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v19 = v42 == 0;
                v43 = 1;
                if (!v19)
                {
                  v43 = 2;
                }

                v27 = __OFSUB__(v31, v43);
                v44 = v31 - v43;
                if (!v27)
                {
LABEL_47:
                  if ((v44 & 0x8000000000000000) == 0)
                  {
                    v45 = *(v7 + v109);
                    if (v44 < *(v45 + 16))
                    {
                      v46 = *(v45 + 48 * v44 + 72);
                      if (!(v46 >> 62))
                      {
                        v20 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        v47 = v20 - 1;
                        if (!__OFSUB__(v20, 1))
                        {
                          goto LABEL_51;
                        }

LABEL_116:
                        __break(1u);
                        goto LABEL_117;
                      }

LABEL_114:
                      v20 = __CocoaSet.count.getter();
                      v47 = v20 - 1;
                      if (!__OFSUB__(v20, 1))
                      {
LABEL_51:
                        v48 = 3;
                        if (v6)
                        {
                          v48 = 0;
                          v49 = v5 == v47;
                        }

                        else
                        {
                          v49 = 1;
                        }

                        if (v49)
                        {
                          v50 = 22.0;
                        }

                        else
                        {
                          v50 = 0.0;
                        }

                        if (v5 == v47)
                        {
                          v51 = v48 | 0xC;
                        }

                        else
                        {
                          v51 = v48;
                        }

                        v8 = v4;
                        v52 = [a1 contentView];
                        v53 = [v52 layer];

                        [v53 setMaskedCorners_];
                        v54 = [a1 contentView];
                        [v54 _setCornerRadius_];

                        objc_opt_self();
                        if (swift_dynamicCastObjCClass())
                        {
                          v55 = CAFUISettingsCache.visibleChildren(of:)(v13);

                          v56 = v108;
                          if (v55 >> 62)
                          {
                            v57 = __CocoaSet.count.getter();
                          }

                          else
                          {
                            v57 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
                          }

                          v58 = v57 != 0;
                          goto LABEL_90;
                        }

LABEL_89:

                        v58 = 0;
                        v56 = v108;
LABEL_90:
                        v86 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_isParentCell;
                        swift_beginAccess();
                        a1[v86] = v58;
                        v87 = v13;
                        CAFUIAutomakerSettingCell.representable.setter(v13, v56);

                        return a1;
                      }

                      goto LABEL_116;
                    }

LABEL_113:
                    __break(1u);
                    goto LABEL_114;
                  }

LABEL_112:
                  __break(1u);
                  goto LABEL_113;
                }

                goto LABEL_110;
              }

LABEL_106:
              if (v41 >> 62)
              {
                v106 = v31;
                v100 = __CocoaSet.count.getter();
                v31 = v106;
              }

              else
              {
                v100 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v101 = v100 != 0;
              v27 = __OFSUB__(v31, v101);
              v44 = v31 - v101;
              if (!v27)
              {
                goto LABEL_47;
              }

LABEL_110:
              __break(1u);
              goto LABEL_111;
            }

LABEL_103:
            v32 = MEMORY[0x245D0D9A0]();
            goto LABEL_33;
          }

          goto LABEL_101;
        }

        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    if (!v24)
    {
      v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_24;
    }

LABEL_120:
    v103 = v20;
    v25 = __CocoaSet.count.getter();
    v20 = v103;
LABEL_24:
    v19 = v25 == 0;
    v26 = 1;
    if (!v19)
    {
      v26 = 2;
    }

    v27 = __OFSUB__(v20, v26);
    v28 = v20 - v26;
    if (!v27)
    {
      goto LABEL_27;
    }

    goto LABEL_88;
  }

LABEL_6:
  if (v10 != 1)
  {
    goto LABEL_12;
  }

LABEL_74:
  v20 = IndexPath.item.getter();
  v30 = *(v7 + v11);
  if ((v30 & 0xC000000000000001) != 0)
  {
LABEL_117:
    v102 = v20;

    v71 = MEMORY[0x245D0D9A0](v102, v30);

    goto LABEL_78;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_119;
  }

  if (v20 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v71 = *(v30 + 8 * v20 + 32);

LABEL_78:
  type metadata accessor for CAFUIServiceListItem();
  v72 = swift_dynamicCastClass();
  if (!v72)
  {
    type metadata accessor for CAFUIListItemCell(0);
    v88 = swift_getObjCClassFromMetadata();
    v89 = NSStringFromClass(v88);
    if (!v89)
    {
      v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = MEMORY[0x245D0D180](v90);
    }

    v91 = IndexPath._bridgeToObjectiveC()().super.isa;
    v68 = [a1 dequeueReusableCellWithReuseIdentifier:v89 forIndexPath:v91];

    v92 = swift_dynamicCastClass();
    if (v92)
    {
      a1 = v92;
      v93 = OBJC_IVAR____TtC5CAFUI17CAFUIListItemCell_item;
      swift_beginAccess();
      *&a1[v93] = v71;
      swift_retain_n();

      CAFUIListItemCell.item.didset();

      return a1;
    }

LABEL_132:

    goto LABEL_133;
  }

  v73 = *(v72 + 128);
  objc_opt_self();
  v74 = swift_dynamicCastObjCClass();
  if (v74)
  {
    v75 = v74;
    type metadata accessor for CAFUIAutomakerSettingCell(0);
    v76 = swift_getObjCClassFromMetadata();
    v77 = v73;
    v78 = NSStringFromClass(v76);
    if (!v78)
    {
      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = MEMORY[0x245D0D180](v79);
    }

    v80 = IndexPath._bridgeToObjectiveC()().super.isa;
    v68 = [a1 dequeueReusableCellWithReuseIdentifier:v78 forIndexPath:v80];

    v81 = swift_dynamicCastClass();
    if (v81)
    {
      a1 = v81;
      v82 = OBJC_IVAR____TtC5CAFUI17CAFUITileBaseCell_isParentCell;
      swift_beginAccess();
      a1[v82] = 0;
      v83 = v77;
      CAFUIAutomakerSettingCell.representable.setter(v75, &protocol witness table for CAFVolume);

      return a1;
    }

    goto LABEL_132;
  }

LABEL_133:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

char *CAFUITileDataSource.collectionView(_:viewForSupplementaryElementOfKind:at:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if ((CAFUITileDataSource.validate(indexPath:)(a4) & 1) == 0)
  {
    _StringGuts.grow(_:)(21);

    type metadata accessor for IndexPath();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x245D0D240](v62);

LABEL_70:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v9 == a3)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v12 == a3)
      {
        goto LABEL_33;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
        goto LABEL_34;
      }

      goto LABEL_69;
    }
  }

  v15 = MEMORY[0x245D0D180](a2, a3);
  type metadata accessor for CAFUICollectionHeaderView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v17)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = MEMORY[0x245D0D180](v18);
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v20 = [a1 dequeueReusableSupplementaryViewOfKind:v15 withReuseIdentifier:v17 forIndexPath:isa];

  v21 = swift_dynamicCastClass();
  if (!v21)
  {
LABEL_68:

LABEL_69:
    _StringGuts.grow(_:)(49);

    MEMORY[0x245D0D240](a2, a3);
    MEMORY[0x245D0D240](0x6E6B6E7520736920, 0xEC0000002E6E776FLL);
    goto LABEL_70;
  }

  a1 = v21;
  v22 = IndexPath.section.getter();
  v23 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
  swift_beginAccess();
  v24 = *(v5 + v23);
  if (v24 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v26 = *(v5 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
    v27 = v26 >> 62;
    if (i)
    {
      if (!v27)
      {
        v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_22;
      }

      goto LABEL_60;
    }

    if (v27)
    {
      v38 = __CocoaSet.count.getter();
    }

    else
    {
      v38 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = v38 != 0;
    v30 = __OFSUB__(v22, v39);
    for (j = v22 - v39; !v30; j = v22 - v29)
    {
      if ((j & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v32 = *(v5 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections);
        if (j < *(v32 + 16))
        {
          v33 = v32 + 48 * j;
          v34 = *(v33 + 32);
          v35 = *(v33 + 40);
          v36 = &a1[OBJC_IVAR____TtC5CAFUI25CAFUICollectionHeaderView_title];
          *v36 = v34;
          *(v36 + 1) = v35;

          v37 = &OBJC_IVAR____TtC5CAFUI25CAFUICollectionHeaderView_titleLabel;
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_60:
      v28 = __CocoaSet.count.getter();
LABEL_22:
      v29 = 1;
      if (v28)
      {
        v29 = 2;
      }

      v30 = __OFSUB__(v22, v29);
    }

    __break(1u);
LABEL_33:

LABEL_34:
    v40 = MEMORY[0x245D0D180](a2, a3);
    type metadata accessor for CAFUICollectionFooterView();
    v41 = swift_getObjCClassFromMetadata();
    v42 = NSStringFromClass(v41);
    if (!v42)
    {
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = MEMORY[0x245D0D180](v43);
    }

    v44 = IndexPath._bridgeToObjectiveC()().super.isa;
    v20 = [a1 dequeueReusableSupplementaryViewOfKind:v40 withReuseIdentifier:v42 forIndexPath:v44];

    v45 = swift_dynamicCastClass();
    if (!v45)
    {
      goto LABEL_68;
    }

    a1 = v45;
    v22 = IndexPath.section.getter();
    v46 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
    swift_beginAccess();
    v47 = *(v5 + v46);
    if (v47 >> 62)
    {
      v48 = __CocoaSet.count.getter();
    }

    else
    {
      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = *(v5 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
    v50 = v49 >> 62;
    if (v48)
    {
      if (!v50)
      {
        v51 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_42;
      }

      goto LABEL_65;
    }

    v60 = v50 ? __CocoaSet.count.getter() : *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v61 = v60 != 0;
    v30 = __OFSUB__(v22, v61);
    v53 = v22 - v61;
    if (!v30)
    {
      break;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  while ((v53 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    v51 = __CocoaSet.count.getter();
LABEL_42:
    v52 = 1;
    if (v51)
    {
      v52 = 2;
    }

    v30 = __OFSUB__(v22, v52);
    v53 = v22 - v52;
    if (v30)
    {
      goto LABEL_56;
    }
  }

  v54 = *(v5 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections);
  if (v53 >= *(v54 + 16))
  {
    goto LABEL_64;
  }

  v55 = v54 + 48 * v53;
  v34 = *(v55 + 48);
  v35 = *(v55 + 56);
  v56 = &a1[OBJC_IVAR____TtC5CAFUI25CAFUICollectionFooterView_title];
  *v56 = v34;
  *(v56 + 1) = v35;

  v37 = &OBJC_IVAR____TtC5CAFUI25CAFUICollectionFooterView_titleLabel;
LABEL_48:
  v57 = *&a1[*v37];
  if (v35)
  {

    v58 = MEMORY[0x245D0D180](v34, v35);
  }

  else
  {
    v58 = 0;
  }

  [v57 setText_];

  return a1;
}

uint64_t CAFUITileDataSource.limitableIndexPaths.getter()
{
  v60 = type metadata accessor for IndexPath();
  v1 = *(v60 - 8);
  v2 = MEMORY[0x28223BE20](v60);
  v59 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v58 = &v49 - v4;
  result = MEMORY[0x277D84FA0];
  v74 = MEMORY[0x277D84FA0];
  v6 = *(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings;
    v8 = *(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
    if (v8 >> 62)
    {
      goto LABEL_75;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v49 = v6;
    v10 = &selRef_systemImageNamed_withConfiguration_;
    if (v9)
    {
      v63 = [v49 numberOfItemsInSection_];
      v11 = *(v0 + v7);
      v61 = v1;
      v57 = v0;
      v56 = v7;
      if (v11 >> 62)
      {
        v12 = __CocoaSet.count.getter();
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v7 = v63;
      if (v12)
      {
        v13 = 0;
        v1 = v11 & 0xC000000000000001;
        v62 = (v61 + 8);
        do
        {
          if (v1)
          {
            v14 = MEMORY[0x245D0D9A0](v13, v11);
          }

          else
          {
            if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_74;
            }

            v14 = *(v11 + 8 * v13 + 32);
          }

          v15 = v14;
          v6 = (v13 + 1);
          if (__OFADD__(v13, 1))
          {
            goto LABEL_73;
          }

          if (v13 >= v7)
          {
            goto LABEL_9;
          }

          if ([v14 v10[208]] && (objc_msgSend(v15, sel_limitableUIElement) & 1) != 0)
          {
            goto LABEL_24;
          }

          swift_beginAccess();
          v0 = objc_getAssociatedObject(v15, &static CAFUIListContentAssociatedObjects.AncestorUILimitable);
          swift_endAccess();
          if (v0)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v73 = 0u;
            v72 = 0u;
          }

          v65 = v72;
          v66 = v73;
          if (!*(&v73 + 1))
          {

            outlined destroy of Any?(&v65);
            goto LABEL_10;
          }

          if (swift_dynamicCast() & 1) != 0 && (v71)
          {
LABEL_24:
            v16 = v59;
            MEMORY[0x245D0BE30](v13, 0);
            v0 = &v74;
            v17 = v58;
            v18 = v16;
            v10 = &selRef_systemImageNamed_withConfiguration_;
            specialized Set._Variant.insert(_:)(v58, v18);

            v19 = v17;
            v7 = v63;
            (*v62)(v19, v60);
          }

          else
          {
LABEL_9:
          }

LABEL_10:
          ++v13;
        }

        while (v6 != v12);
      }

      v1 = v61;
      v0 = v57;
      v7 = v56;
    }

    v20 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
    swift_beginAccess();
    v21 = *(v0 + v20);
    if (v21 >> 62)
    {
      v22 = __CocoaSet.count.getter();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = *(v0 + v7);
    v24 = v23 >> 62;
    if (v22)
    {
      if (v24)
      {
        v25 = __CocoaSet.count.getter();
      }

      else
      {
        v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 = 1;
      if (v25)
      {
        v26 = 2;
      }
    }

    else
    {
      if (v24)
      {
        v27 = __CocoaSet.count.getter();
      }

      else
      {
        v27 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 = v27 != 0;
    }

    v50 = v26;
    v28 = *(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections);
    v70[1] = 0;
    v70[2] = 0;
    v70[0] = v28;

    v0 = v70;
    specialized EnumeratedSequence.Iterator.next()(&v65);
    v29 = v69;
    if (v69)
    {
      v30 = *(&v65 + 1);
      v56 = v65;
      v31 = v66;
      v57 = (v1 + 8);
      v33 = *(&v66 + 1);
      v32 = v67;
      v34 = v68;
      v35 = &static CAFUIListContentAssociatedObjects.AncestorUILimitable;
      while (1)
      {
        v51 = v34;
        v52 = v32;
        v53 = v33;
        v54 = v31;
        v55 = v30;
        v1 = v29 & 0xFFFFFFFFFFFFFF8;
        v7 = v29 >> 62 ? __CocoaSet.count.getter() : *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v7)
        {
          break;
        }

LABEL_41:

        outlined consume of (offset: Int, element: CAFUIAutomakerSettingsSection)?(v56, v55, v54, v53, v52, v51, v29);
        v0 = v70;
        specialized EnumeratedSequence.Iterator.next()(&v65);
        v30 = *(&v65 + 1);
        v56 = v65;
        v33 = *(&v66 + 1);
        v31 = v66;
        v32 = v67;
        v34 = v68;
        v29 = v69;
        if (!v69)
        {
          goto LABEL_68;
        }
      }

      v36 = 0;
      v6 = (v29 & 0xC000000000000001);
      v61 = v56 + v50;
      v37 = __OFADD__(v56, v50);
      LODWORD(v63) = v37;
      v62 = (v29 & 0xC000000000000001);
      while (1)
      {
        if (v6)
        {
          v38 = MEMORY[0x245D0D9A0](v36, v29);
        }

        else
        {
          if (v36 >= *(v1 + 16))
          {
            goto LABEL_71;
          }

          v38 = *(v29 + 8 * v36 + 32);
        }

        v39 = v38;
        v40 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
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
          v9 = __CocoaSet.count.getter();
          goto LABEL_4;
        }

        if ([v38 v10[208]] && (objc_msgSend(v39, sel_limitableUIElement) & 1) != 0)
        {
          goto LABEL_63;
        }

        swift_beginAccess();
        v0 = objc_getAssociatedObject(v39, v35);
        swift_endAccess();
        if (v0)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v73 = 0u;
          v72 = 0u;
        }

        v65 = v72;
        v66 = v73;
        if (!*(&v73 + 1))
        {

          outlined destroy of Any?(&v65);
          goto LABEL_50;
        }

        if (swift_dynamicCast() & 1) != 0 && (v64)
        {
LABEL_63:
          if (v63)
          {
            goto LABEL_72;
          }

          v41 = v7;
          v42 = v29;
          v43 = v1;
          v44 = v35;
          v45 = v59;
          MEMORY[0x245D0BE30](v36, v61);
          v0 = &v74;
          v46 = v58;
          v47 = v45;
          v35 = v44;
          v1 = v43;
          v29 = v42;
          v7 = v41;
          v6 = v62;
          specialized Set._Variant.insert(_:)(v58, v47);

          v48 = v46;
          v10 = &selRef_systemImageNamed_withConfiguration_;
          (*v57)(v48, v60);
        }

        else
        {
        }

LABEL_50:
        ++v36;
        if (v40 == v7)
        {
          goto LABEL_41;
        }
      }
    }

LABEL_68:

    return v74;
  }

  return result;
}

unint64_t CAFUITileDataSource.infoButtonLimitableIndexPaths.getter()
{
  v43 = type metadata accessor for IndexPath();
  v1 = *(v43 - 8);
  v2 = MEMORY[0x28223BE20](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v41 = &v32 - v4;
  v5 = MEMORY[0x277D84FA0];
  if (*(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView))
  {
    v46 = MEMORY[0x277D84FA0];
    v6 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
    swift_beginAccess();
    v7 = *(v0 + v6);
    if (v7 >> 62)
    {
      goto LABEL_44;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {
      v9 = *(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
      v10 = v9 >> 62;
      if (i)
      {
        if (v10)
        {
          v11 = __CocoaSet.count.getter();
        }

        else
        {
          v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v12 = 1;
        if (v11)
        {
          v12 = 2;
        }
      }

      else
      {
        v13 = v10 ? __CocoaSet.count.getter() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = v13 != 0;
      }

      v33 = v12;
      v14 = *(*(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections) + 16);

      if (!v14)
      {
        break;
      }

      v0 = 0;
      v34 = v15;
      v35 = v15 + 32;
      v40 = (v1 + 8);
      while (v0 < v14)
      {
        v16 = (v35 + 48 * v0);
        v17 = v16[1];
        v19 = v16[3];
        v18 = v16[4];
        v1 = v16[5];
        v39 = v0;
        if (v1 >> 62)
        {
          v0 = v17;
          v20 = __CocoaSet.count.getter();
          v17 = v0;
        }

        else
        {
          v20 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v38 = v17;

        v37 = v19;

        v36 = v18;
        swift_bridgeObjectRetain_n();
        if (v20)
        {
          v5 = 0;
          v44 = v39 + v33;
          v21 = __OFADD__(v39, v33);
          v45 = v21;
          while (1)
          {
            if ((v1 & 0xC000000000000001) != 0)
            {
              v22 = MEMORY[0x245D0D9A0](v5, v1);
            }

            else
            {
              if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_41;
              }

              v22 = *(v1 + 8 * v5 + 32);
            }

            v23 = v22;
            v24 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              break;
            }

            swift_getObjectType();
            v25 = swift_conformsToProtocol2();
            if (v25 && v23 && (v26 = v25, ObjectType = swift_getObjectType(), v0 = v23, (v28 = (*(v26 + 32))(ObjectType, v26)) != 0))
            {

              if (v45)
              {
                goto LABEL_42;
              }

              v29 = v42;
              MEMORY[0x245D0BE30](v5, v44);
              v0 = &v46;
              v30 = v41;
              specialized Set._Variant.insert(_:)(v41, v29);

              (*v40)(v30, v43);
            }

            else
            {
            }

            ++v5;
            if (v24 == v20)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          break;
        }

LABEL_15:
        v0 = v39 + 1;

        swift_bridgeObjectRelease_n();
        v14 = *(v34 + 16);
        if (v0 == v14)
        {
          v5 = v46;
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_44:
      ;
    }

LABEL_38:
  }

  return v5;
}

void *CAFUITileDataSource.indexPaths(for:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return specialized CAFUITileDataSource.indexPaths(for:)(a1, v2, ObjectType, a2);
}

uint64_t CAFUITileDataSource.validate(indexPath:)(uint64_t a1)
{
  v2 = v1;
  v3 = IndexPath.section.getter();
  if (v3 >= CAFUITileDataSource.numSections.getter())
  {
    _StringGuts.grow(_:)(37);

    type metadata accessor for IndexPath();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x245D0D240](v13);

    MEMORY[0x245D0D240](0xD000000000000018, 0x800000024242C110);
    specialized static CAFUILogger.info(_:function:file:line:)(0x7461507865646E69, 0xEB00000000203A68, 0xD000000000000014, 0x800000024242C130, 383);

    return 0;
  }

  v4 = *(v1 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings;
    v6 = *(v1 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
    if (v6 >> 62)
    {
      v7 = __CocoaSet.count.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v4;
    if (v7 && !IndexPath.section.getter())
    {
      v14 = [v8 numberOfItemsInSection_];
      goto LABEL_31;
    }

    v9 = IndexPath.section.getter();
    v10 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
    swift_beginAccess();
    v11 = *(v2 + v10);
    if (v11 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_20;
      }
    }

    else if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v12 = *(v2 + v5);
    if (v12 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_11:
        if (v9 == 1)
        {
          goto LABEL_35;
        }

        goto LABEL_20;
      }
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    if (!v9)
    {
LABEL_35:
      v24 = *(v2 + v10);
      if (v24 >> 62)
      {
        goto LABEL_36;
      }

LABEL_30:
      v14 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_31;
    }

LABEL_20:
    v15 = IndexPath.section.getter();
    v16 = *(v2 + v10);
    if (v16 >> 62)
    {
      v27 = v15;
      v28 = __CocoaSet.count.getter();
      v15 = v27;
      v17 = *(v2 + v5);
      if (v28)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v17 = *(v2 + v5);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_22:
        if (v17 >> 62)
        {
          goto LABEL_45;
        }

        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        while (1)
        {
          v19 = v18 == 0;
          v20 = 1;
          if (!v19)
          {
            v20 = 2;
          }

          v21 = __OFSUB__(v15, v20);
          v22 = v15 - v20;
          if (v21)
          {
            break;
          }

LABEL_27:
          if ((v22 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          v23 = *(v2 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections);
          if (v22 < *(v23 + 16))
          {
            v24 = *(v23 + 48 * v22 + 72);
            if (!(v24 >> 62))
            {
              goto LABEL_30;
            }

LABEL_36:
            v14 = __CocoaSet.count.getter();
LABEL_31:
            if (IndexPath.item.getter() < v14)
            {

              return 1;
            }

            _StringGuts.grow(_:)(34);

            type metadata accessor for IndexPath();
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
            v26 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x245D0D240](v26);

            MEMORY[0x245D0D240](0xD000000000000015, 0x800000024242C150);
            specialized static CAFUILogger.info(_:function:file:line:)(0x7461507865646E69, 0xEB00000000203A68, 0xD000000000000014, 0x800000024242C130, 401);

            return 0;
          }

LABEL_44:
          __break(1u);
LABEL_45:
          v31 = v15;
          v18 = __CocoaSet.count.getter();
          v15 = v31;
        }

LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    if (v17 >> 62)
    {
      v32 = v15;
      v29 = __CocoaSet.count.getter();
      v15 = v32;
    }

    else
    {
      v29 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = v29 != 0;
    v21 = __OFSUB__(v15, v30);
    v22 = v15 - v30;
    if (v21)
    {
      goto LABEL_42;
    }

    goto LABEL_27;
  }

  return 0;
}

id CAFUITileDataSource.setting(at:)(uint64_t a1)
{
  v2 = v1;
  v4 = IndexPath.section.getter();
  v5 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_6;
    }
  }

  else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_6;
  }

  v7 = *(v2 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
  if (v7 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 == (v8 != 0))
  {
    return 0;
  }

LABEL_6:
  if ((CAFUITileDataSource.validate(indexPath:)(a1) & 1) == 0)
  {
    return 0;
  }

  v9 = IndexPath.section.getter();
  v10 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings;
  v11 = *(v2 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
  if (v11 >> 62)
  {
    v25 = v9;
    v12 = __CocoaSet.count.getter();
    v9 = v25;
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    v14 = IndexPath.section.getter();
    v15 = *(v2 + v5);
    if (v15 >> 62)
    {
      v26 = v14;
      v27 = __CocoaSet.count.getter();
      v14 = v26;
      v16 = *(v2 + v10);
      if (v27)
      {
LABEL_15:
        if (v16 >> 62)
        {
          goto LABEL_50;
        }

        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        while (1)
        {
          v13 = v17 == 0;
          v18 = 1;
          if (!v13)
          {
            v18 = 2;
          }

          v19 = __OFSUB__(v14, v18);
          v20 = v14 - v18;
          if (v19)
          {
            goto LABEL_41;
          }

LABEL_20:
          if ((v20 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_44;
          }

          v21 = *(v2 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections);
          if (v20 >= *(v21 + 16))
          {
            goto LABEL_45;
          }

          v2 = *(v21 + 48 * v20 + 72);

          v14 = IndexPath.item.getter();
          if ((v2 & 0xC000000000000001) != 0)
          {
            goto LABEL_47;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v14 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v22 = *(v2 + 8 * v14 + 32);
            goto LABEL_26;
          }

          __break(1u);
LABEL_50:
          v32 = v14;
          v17 = __CocoaSet.count.getter();
          v14 = v32;
        }
      }
    }

    else
    {
      v16 = *(v2 + v10);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }
    }

    if (v16 >> 62)
    {
      v33 = v14;
      v28 = __CocoaSet.count.getter();
      v14 = v33;
    }

    else
    {
      v28 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = v28 != 0;
    v19 = __OFSUB__(v14, v29);
    v20 = v14 - v29;
    if (!v19)
    {
      goto LABEL_20;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v14 = IndexPath.item.getter();
  a1 = *(v2 + v10);
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_42:
    v30 = v14;

    v31 = MEMORY[0x245D0D9A0](v30, a1);

    return v31;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  else if (v14 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(a1 + 8 * v14 + 32);
  }

  __break(1u);
LABEL_47:
  v22 = MEMORY[0x245D0D9A0]();
LABEL_26:
  v23 = v22;

  return v23;
}

double CAFUITileDataSource.settingsSection(at:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v8 = *(v2 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
    v9 = v8 >> 62;
    if (i)
    {
      break;
    }

    if (v9)
    {
      v21 = __CocoaSet.count.getter();
    }

    else
    {
      v21 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v21 != 0;
    v12 = __OFSUB__(a1, v22);
    v13 = a1 - v22;
    if (!v12)
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  if (v9)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 1;
  if (v10)
  {
    v11 = 2;
  }

  v12 = __OFSUB__(a1, v11);
  v13 = a1 - v11;
  if (v12)
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((v13 & 0x8000000000000000) != 0 || (v14 = *(v2 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleSettingsSections), v13 >= *(v14 + 16)))
  {
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else
  {
    v15 = v14 + 48 * v13;
    v17 = *(v15 + 56);
    v16 = *(v15 + 64);
    v18 = *(v15 + 72);
    *a2 = *(v15 + 32);
    *(a2 + 8) = *(v15 + 40);
    *(a2 + 24) = v17;
    *(a2 + 32) = v16;
    *(a2 + 40) = v18;
    v19 = v16;
  }

  return result;
}

void CAFUITileDataSource.listItem(at:)(uint64_t a1)
{
  v2 = v1;
  v3 = IndexPath.section.getter();
  v4 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_listItems;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_11;
    }
  }

  else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  v6 = *(v2 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings);
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (!__CocoaSet.count.getter())
  {
LABEL_10:
    if (!v3)
    {
      goto LABEL_13;
    }

LABEL_11:
    _StringGuts.grow(_:)(38);

    IndexPath.section.getter();
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x245D0D240](v7);

    MEMORY[0x245D0D240](0xD00000000000001CLL, 0x800000024242C170);
    v8 = 0x206E6F6974636553;
    v9 = 0xE800000000000000;
    v10 = 431;
LABEL_12:
    specialized static CAFUILogger.info(_:function:file:line:)(v8, v9, 0x6D6574497473696CLL, 0xED0000293A746128, v10);

    return;
  }

LABEL_5:
  if (v3 != 1)
  {
    goto LABEL_11;
  }

LABEL_13:
  v11 = IndexPath.item.getter();
  v12 = *(v2 + v4);
  if (!(v12 >> 62))
  {
    if (v11 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  if (v11 >= __CocoaSet.count.getter())
  {
LABEL_20:
    _StringGuts.grow(_:)(35);

    IndexPath.item.getter();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x245D0D240](v15);

    MEMORY[0x245D0D240](0xD00000000000001CLL, 0x800000024242C170);
    v8 = 0x206D657449;
    v9 = 0xE500000000000000;
    v10 = 436;
    goto LABEL_12;
  }

LABEL_15:
  v13 = IndexPath.item.getter();
  v14 = *(v2 + v4);
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = v13;

    MEMORY[0x245D0D9A0](v16, v14);
  }

  else
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v13 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      return;
    }

    __break(1u);
  }
}

void CAFUITileDataSource.refreshProminentSection()()
{
  v1 = (v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsCache);
  i = *(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsCache);
  if (!i)
  {
    return;
  }

  v3 = v0;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v9 = v1[5];
  v8 = v1[6];
  v42 = *(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsCache);
  v43 = v4;
  v44 = v5;
  v45 = v6;
  v46 = v7;
  v47 = v9;
  v39 = v8;
  v48 = v8;
  v10 = *(v0 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_prominentSettings);
  if (v10 >> 62)
  {
LABEL_48:
    if (!__CocoaSet.count.getter())
    {
      return;
    }

    v31 = v7;
    v32 = v6;
    v33 = v5;
    v37 = v4;
    v4 = MEMORY[0x277D84F90];
    v41 = MEMORY[0x277D84F90];
    v11 = __CocoaSet.count.getter();
    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return;
    }

    v31 = v7;
    v32 = v6;
    v33 = v5;
    v37 = v4;
    v41 = MEMORY[0x277D84F90];
  }

  v35 = i;
  v3 = 0;
  v7 = v10 & 0xC000000000000001;
  i = (v10 & 0xFFFFFFFFFFFFFF8);
  do
  {
    if (v7)
    {
      v12 = MEMORY[0x245D0D9A0](v3, v10);
    }

    else
    {
      if (v3 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v12 = *(v10 + 8 * v3 + 32);
    }

    v5 = v12;
    v4 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v13 = [v12 prominenceInfo];
    if (v13 && (v14 = v13, v6 = [v13 prominenceLevel], v14, v6 == 1))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = *(v41 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v3;
  }

  while (v4 != v11);
  v4 = v41;
  v3 = v34;
  i = v35;
LABEL_17:
  v41 = MEMORY[0x277D84FA0];
  v7 = v39;
  v6 = v31;
  outlined copy of CAFUISettingsCache?(i, v37, v33, v32, v31, v9, v39);
  specialized Sequence.forEach(_:)(v4);
  outlined consume of CAFUISettingsCache?(i, v37, v33, v32, v31, v9, v39);
  CAFUIProminentAncestorObserver.observeAncestors(_:)(v41);
  v40 = MEMORY[0x277D84F90];
  if ((v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
  {
    v15 = __CocoaSet.count.getter();
    if (!v15)
    {
      goto LABEL_52;
    }

LABEL_20:
    v5 = 0;
    v38 = v4 + 32;
    v39 = v4 & 0xC000000000000001;
    v3 = &selRef_systemImageNamed_withConfiguration_;
    v10 = &selRef__systemImageNamed_withConfiguration_;
    v36 = v4;
    while (1)
    {
      if (v39)
      {
        v16 = MEMORY[0x245D0D9A0](v5, v4);
      }

      else
      {
        if (v5 >= *(v4 + 16))
        {
          goto LABEL_47;
        }

        v16 = *(v38 + 8 * v5);
      }

      v6 = v16;
      if (__OFADD__(v5++, 1))
      {
        goto LABEL_46;
      }

      if ([v16 hasHidden] && (objc_msgSend(v6, sel_hidden) & 1) != 0)
      {
      }

      else
      {
        v7 = [v6 identifier];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        if (*(v9 + 16))
        {
          v21 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v20);
          v7 = v22;

          if (v7)
          {
            for (i = *(*(v9 + 56) + 8 * v21); ![i hasHidden] || (objc_msgSend(i, sel_hidden) & 1) == 0; i = v29)
            {
              v23 = [i identifier];
              v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v7 = v25;

              if (!*(v9 + 16))
              {

LABEL_40:

                v4 = v36;
                goto LABEL_22;
              }

              v26 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v7);
              v28 = v27;

              if ((v28 & 1) == 0)
              {
                goto LABEL_40;
              }

              v29 = *(*(v9 + 56) + 8 * v26);
            }

            v4 = v36;
            goto LABEL_23;
          }
        }

        else
        {
        }

LABEL_22:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        i = *(v40 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

LABEL_23:
      if (v5 == v15)
      {
        v3 = v34;
        goto LABEL_52;
      }
    }
  }

  v15 = *(v4 + 16);
  if (v15)
  {
    goto LABEL_20;
  }

LABEL_52:

  v40 = specialized Array._copyToContiguousArray()(v30);
  specialized MutableCollection<>.sort(by:)(&v40);

  *(v3 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings) = v40;
}

void specialized Set.formUnion<A>(_:)(uint64_t a1, __n128 a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting, 0x277CF8328);
    lazy protocol witness table accessor for type UIPress and conformance NSObject(&lazy protocol witness table cache variable for type CAFAutomakerSetting and conformance NSObject, &lazy cache variable for type metadata for CAFAutomakerSetting, 0x277CF8328, MEMORY[0x277D85378]);
    Set.Iterator.init(_cocoa:)();
    v2 = v15[1];
    v3 = v15[2];
    v4 = v15[3];
    v5 = v15[4];
    v6 = v15[5];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      outlined consume of Set<CAFAutomakerSetting>.Iterator._Variant(v2);
      return;
    }

    while (1)
    {
      specialized Set._Variant.insert(_:)(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CAFAutomakerSetting, 0x277CF8328);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t closure #4 in CAFUITileDataSource.refreshProminentSection()(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 prominenceInfo];
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  v6 = [v3 prominenceInfo];
  if (!v6)
  {

LABEL_19:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v7 = v6;
  v8 = [v5 sortOrder];
  if (v8 != [v7 sortOrder])
  {
    v27 = [v5 sortOrder];
    v28 = [v7 sortOrder];

    v26 = v27 < v28;
    return v26 & 1;
  }

  v9 = [v5 userVisibleLabel];
  if (!v9)
  {
    v9 = [v2 userVisibleLabel];
  }

  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = [v7 userVisibleLabel];
  if (!v14)
  {
    v14 = [v3 userVisibleLabel];
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v11 == v15 && v13 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v18 = [v2 identifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = [v3 identifier];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (v23 == v19 && v25 == v21)
    {

      v26 = 1;
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v26 = v29 ^ 1;
    }

    return v26 & 1;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v31 & 1;
}

uint64_t closure #1 in CAFUITileDataSource.refreshDataSourceProperties()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v31 = a2;
  v3 = *a1;
  v29 = *(a1 + 8);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v27 = a3;
  v28 = v4;
  v6 = *(a1 + 40);
  v35 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
LABEL_21:
    v7 = __CocoaSet.count.getter();
    if (v7)
    {
LABEL_3:
      v25 = v5;
      v26 = v3;
      v5 = 0;
      v30 = OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_visibleProminentSettings;
      v32 = v6 & 0xFFFFFFFFFFFFFF8;
      v33 = v6 & 0xC000000000000001;
      do
      {
        if (v33)
        {
          v8 = MEMORY[0x245D0D9A0](v5, v6);
        }

        else
        {
          if (v5 >= *(v32 + 16))
          {
            goto LABEL_20;
          }

          v8 = *(v6 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        v11 = [v8 hasHidden];
        if (v11 && (v11 = [v9 hidden], (v11 & 1) != 0))
        {
        }

        else
        {
          v12 = v7;
          v3 = &v25;
          v13 = *(v31 + v30);
          v34 = v9;
          MEMORY[0x28223BE20](v11);
          v24[2] = &v34;

          v14 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySo19CAFAutomakerSettingCG_TG5TA_0, v24, v13);

          if (v14)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          v7 = v12;
        }

        ++v5;
      }

      while (v10 != v7);
      v15 = v35;
      v5 = v25;
      v3 = v26;
      if ((v35 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v15 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_30;
  }

LABEL_23:
  if ((v15 & 0x4000000000000000) != 0)
  {
LABEL_30:
    if (!__CocoaSet.count.getter())
    {
    }

    goto LABEL_25;
  }

  if (!*(v15 + 16))
  {
  }

LABEL_25:
  v16 = v27;
  v17 = *v27;
  v18 = v28;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v17;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1, v17);
    v17 = result;
    *v27 = result;
  }

  v21 = *(v17 + 16);
  v20 = *(v17 + 24);
  if (v21 >= v20 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v17);
    v17 = result;
    *v27 = result;
  }

  *(v17 + 16) = v21 + 1;
  v22 = v17 + 48 * v21;
  *(v22 + 32) = v3;
  *(v22 + 40) = v29;
  v23 = v28;
  *(v22 + 56) = v5;
  *(v22 + 64) = v23;
  *(v22 + 72) = v15;
  return result;
}

id CAFUITileDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void CAFUITileDataSource.updated(setting:)(id a1)
{
  i = v1;
  v4 = type metadata accessor for IndexPath();
  v65 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v63 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_collectionView);
  if (!v6)
  {

    specialized static CAFUILogger.default(_:function:file:line:)(0xD000000000000020, 0x800000024242C4F0, 0xD000000000000011, 0x800000024242C520, 507);
    return;
  }

  v7 = v1 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsCache;
  v8 = *(v1 + OBJC_IVAR____TtC5CAFUI19CAFUITileDataSource_settingsCache);
  if (!v8)
  {
    v65 = v6;
    specialized static CAFUILogger.error(_:function:file:line:)(0xD000000000000033, 0x800000024242C540, 0xD000000000000011, 0x800000024242C520, 512);
    v23 = v65;

    return;
  }

  v9 = *(v7 + 40);
  v60 = *(v7 + 24);
  v61 = v9;
  v58 = *(v7 + 8);
  swift_getObjectType();
  v62 = swift_conformsToProtocol2();
  if (!v62 || !a1)
  {
    goto LABEL_40;
  }

  v64 = v6;
  v10 = a1;
  v11 = specialized CAFUITileDataSource.indexPaths(for:)(v10, i);
  v12 = v11;
  v70 = v11;
  v13 = v11[2];
  v59 = i;
  if (!v13)
  {
    aBlock = v8;
    v67 = v58;
    v68 = v60;
    v69 = v61;
    v16 = CAFUISettingsCache.ancestors(of:)(v10);
    a1 = v63;
    if (v16 >> 62)
    {
      goto LABEL_36;
    }

    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_30:

    v14 = v12[2];
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_31:
    aBlock = 0;
    *&v67 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    aBlock = 0xD000000000000027;
    *&v67 = 0x800000024242C600;
    v41 = [v10 description];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    MEMORY[0x245D0D240](v42, v44);

    specialized static CAFUILogger.default(_:function:file:line:)(aBlock, v67, 0xD000000000000011, 0x800000024242C520, 531);

LABEL_33:

    return;
  }

  a1 = v63;
  v14 = v11[2];
  if (!v14)
  {
    goto LABEL_31;
  }

LABEL_7:
  *&v61 = v10;
  v15 = v12 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
  *&v60 = v62 + 80;
  v10 = v65 + 1;

  for (i = 0; i != v14; ++i)
  {
    if (i >= v12[2])
    {
      __break(1u);
      goto LABEL_35;
    }

    (v65[2])(a1, &v15[v65[9] * i], v4);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v18 = [v64 cellForItemAtIndexPath_];

    if (!v18)
    {
      goto LABEL_9;
    }

    type metadata accessor for CAFUIAutomakerSettingCell(0);
    v19 = swift_dynamicCastClass();
    if (!v19)
    {

LABEL_9:
      v16 = (*v10)(a1, v4);
      continue;
    }

    v20 = v19;
    v21 = v4;
    ObjectType = swift_getObjectType();
    if ((*(v62 + 80))(v20, ObjectType))
    {

      aBlock = 0;
      *&v67 = 0xE000000000000000;
      _StringGuts.grow(_:)(49);

      aBlock = 0xD000000000000028;
      *&v67 = 0x800000024242C5D0;
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
      v45 = v63;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x245D0D240](v46);

      MEMORY[0x245D0D240](0x20726F6620, 0xE500000000000000);
      v47 = v61;
      v48 = [v61 description];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      MEMORY[0x245D0D240](v49, v51);

      specialized static CAFUILogger.default(_:function:file:line:)(aBlock, v67, 0xD000000000000011, 0x800000024242C520, 538);

      (*v10)(v45, v21);
      goto LABEL_33;
    }

    a1 = v63;
    (*v10)();
  }

  v24 = objc_opt_self();
  v25 = swift_allocObject();
  v10 = v59;
  v25[2] = &v70;
  v25[3] = v10;
  v26 = v61;
  v27 = v64;
  v25[4] = v61;
  v25[5] = v27;
  i = swift_allocObject();
  *(i + 16) = partial apply for closure #1 in CAFUITileDataSource.updated(setting:);
  *(i + 24) = v25;
  *(&v68 + 1) = thunk for @callee_guaranteed () -> ()partial apply;
  *&v69 = i;
  aBlock = MEMORY[0x277D85DD0];
  *&v67 = 1107296256;
  *(&v67 + 1) = thunk for @escaping @callee_guaranteed () -> ();
  *&v68 = &block_descriptor_63_0;
  v4 = _Block_copy(&aBlock);
  v28 = v27;
  a1 = v26;
  v29 = v10;

  [v24 performWithoutAnimation_];

  _Block_release(v4);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if ((v28 & 1) == 0)
  {

    goto LABEL_33;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  v6 = v16;
  v52 = __CocoaSet.count.getter();
  v16 = v6;
  if (!v52)
  {
    goto LABEL_30;
  }

LABEL_26:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x245D0D9A0](0);
    goto LABEL_29;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(v16 + 32);
LABEL_29:
    v31 = v30;

    aBlock = 0;
    *&v67 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    aBlock = 34;
    *&v67 = 0xE100000000000000;
    v32 = [v31 userVisibleLabel];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    MEMORY[0x245D0D240](v33, v35);

    MEMORY[0x245D0D240](0xD000000000000018, 0x800000024242C630);
    v36 = [v10 userVisibleLabel];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    MEMORY[0x245D0D240](v37, v39);

    MEMORY[0x245D0D240](34, 0xE100000000000000);
    specialized static CAFUILogger.default(_:function:file:line:)(aBlock, v67, 0xD000000000000011, 0x800000024242C520, 525);

    v40 = v31;
    v12 = specialized CAFUITileDataSource.indexPaths(for:)(v40, i);

    v70 = v12;
    goto LABEL_30;
  }

  __break(1u);
LABEL_40:
  aBlock = 0;
  *&v67 = 0xE000000000000000;
  v53 = v6;
  _StringGuts.grow(_:)(80);
  MEMORY[0x245D0D240](0xD00000000000004ELL, 0x800000024242C580);
  v54 = [a1 identifier];
  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;

  MEMORY[0x245D0D240](v55, v57);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}