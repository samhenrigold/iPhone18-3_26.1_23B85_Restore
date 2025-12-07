void sub_1D7756D44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D7756D94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D7756DE4(uint64_t a1, uint64_t a2)
{
  sub_1D77442AC(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7756E78(uint64_t a1)
{
  sub_1D77442AC(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7756F0C(uint64_t a1)
{
  swift_getObjectType();
  sub_1D7752C3C();
  sub_1D78B41F4();
  v1 = sub_1D78B4014();
  sub_1D774BAA4(0);
  v2 = sub_1D78B40A4();

  return v2;
}

uint64_t sub_1D7757080@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D78B4444();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D78B4474();
  if (qword_1EE0905C0 != -1)
  {
    swift_once();
  }

  v7 = unk_1EE0905D0;
  *v6 = qword_1EE0905C8;
  v6[1] = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D6280], v2);

  result = sub_1D78B4424();
  *a1 = result;
  return result;
}

char *sub_1D77571B4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095CF0, &protocol descriptor for PurchaseStarterType, 1);
  result = sub_1D78B39F4();
  if (!v58[3])
  {
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE0957D0, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FDB0, 0x1E69B54D8);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &unk_1EE08FCC0, &protocolRef_FCNetworkReachabilityType);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE095830, &protocol descriptor for FamilySharingLandingPageLauncherType, 1);
  result = sub_1D78B39F4();
  if (!v57[3])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095800, &protocol descriptor for PurchasingSpinnerViewControllerFactoryType, 1);
  result = sub_1D78B39F4();
  if (!v56[3])
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE095E80, &protocol descriptor for OfferManagerType, 0);
  result = sub_1D78B39F4();
  if (!v54)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090478, MEMORY[0x1E69D7A30], 1);
  result = sub_1D78B39F4();
  if (!v53[3])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE092CE0, &protocol descriptor for SubscriptionsRouterType, 1);
  result = sub_1D78B39F4();
  if (!v52[3])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095930, &protocol descriptor for PostPurchaseOnboardingManagerType, 1);
  result = sub_1D78B39F4();
  if (!v51[3])
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v39 = v55;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE096420, &protocol descriptor for BundleSubscriptionDetectionManagerType, 0);
  result = sub_1D78B39F4();
  v6 = v49;
  if (!v49)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v38 = v50;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090C58, &protocol descriptor for PostPurchaseOnboardingPrewarmerType, 1);
  result = sub_1D78B39F4();
  if (!v48[3])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE096360, &protocol descriptor for SubscriptionFeatureAvailabilityType, 1);
  result = sub_1D78B39F4();
  if (!v47[3])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v36 = v54;
  v37 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v7 = result;
  v35 = v5;
  v8 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090F18, &protocol descriptor for OsloAbandonmentUpsellManagerType, 1);
  result = sub_1D78B39F4();
  if (v46)
  {
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
    v34[2] = v34;
    MEMORY[0x1EEE9AC00](v9, v9);
    v11 = (v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v14 = type metadata accessor for OsloAbandonmentUpsellManager();
    v43 = v14;
    v44 = &off_1F526EAF0;
    v42[0] = v13;
    v15 = type metadata accessor for PurchasePresenter(0);
    v16 = objc_allocWithZone(v15);
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
    v34[1] = v34;
    MEMORY[0x1EEE9AC00](v17, v17);
    v19 = (v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v19;
    v41[3] = v14;
    v41[4] = &off_1F526EAF0;
    v41[0] = v21;
    *&v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter____lazy_storage___spinnerViewController] = 0;
    v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_isPresenting] = 0;
    v22 = OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_purchaseContext;
    v23 = type metadata accessor for PurchaseContext(0);
    (*(*(v23 - 8) + 56))(&v16[v22], 1, 1, v23);
    sub_1D774584C(v58, &v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_purchaseStarter]);
    v24 = v37;
    *&v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_purchaseController] = v37;
    *&v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_bundleSubscriptionManager] = v8;
    *&v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_networkReachability] = v35;
    sub_1D774584C(v56, &v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_purchasingSpinnerViewControllerFactory]);
    sub_1D774584C(v57, &v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_familySharingLandingPageLauncher]);
    v25 = &v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_offerManager];
    v26 = v39;
    *v25 = v36;
    v25[1] = v26;
    sub_1D774584C(v53, &v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_urlHandler]);
    sub_1D774584C(v52, &v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_router]);
    sub_1D774584C(v51, &v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_postPurchaseOnboardingManager]);
    v27 = &v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_bundleSubscriptionDetectionManager];
    v28 = v38;
    *v27 = v6;
    v27[1] = v28;
    sub_1D774584C(v48, &v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_onboardingPrewarmer]);
    sub_1D774584C(v47, &v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_featureAvailability]);
    *&v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_configurationManager] = v7;
    sub_1D774584C(v41, &v16[OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_osloAbandonmentUpsellManager]);
    v40.receiver = v16;
    v40.super_class = v15;
    v29 = v24;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v30 = objc_msgSendSuper2(&v40, sel_init);
    v31 = objc_opt_self();
    v32 = v30;
    v33 = [v31 defaultCenter];
    [v33 addObserver:v32 selector:sel_handlePurchaseAddedNotificationWithNotification_ name:*MEMORY[0x1E69B50E0] object:0];

    [*(v32 + OBJC_IVAR____TtC16NewsSubscription17PurchasePresenter_bundleSubscriptionManager) addObserver_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v47);
    __swift_destroy_boxed_opaque_existential_1(v48);
    __swift_destroy_boxed_opaque_existential_1(v51);
    __swift_destroy_boxed_opaque_existential_1(v52);
    __swift_destroy_boxed_opaque_existential_1(v53);
    __swift_destroy_boxed_opaque_existential_1(v56);
    __swift_destroy_boxed_opaque_existential_1(v57);
    __swift_destroy_boxed_opaque_existential_1(v58);
    __swift_destroy_boxed_opaque_existential_1(v41);
    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(v45);
    return v32;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D7757B24()
{
  v0 = sub_1D78B3294();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - v7;
  v9 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v10 = sub_1D78B5EB4();
  if (*(v10 + 16))
  {

    if (*(v10 + 16))
    {

      sub_1D78B3204();

      sub_1D78B3224();
      v11 = *(v1 + 8);
      v11(v5, v0);
      v12 = sub_1D78B3264();
      v11(v8, v0);
      return v12;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7757CD8()
{
  result = sub_1D7757B24();
  qword_1EE0905C8 = result;
  unk_1EE0905D0 = v1;
  return result;
}

char *sub_1D7757CFC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095D00, &protocol descriptor for PurchaseManagerType, 0);
  result = sub_1D78B39F4();
  v3 = v18;
  if (!v18)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE0957D0, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE0959E0, &protocol descriptor for BundlePurchasePrewarmerType, 0);
  result = sub_1D78B39F4();
  v6 = v16;
  if (!v16)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE091458, &protocol descriptor for SIWAPurchaseConfigProviderType, 1);
  result = sub_1D78B39F4();
  if (v15)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
    MEMORY[0x1EEE9AC00](v8, v8);
    v10 = (&v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = sub_1D77583E0(v3, v4, v5, v6, v7, *v10);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v14);
    return v12;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1D7757F60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D78B39E4();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, &qword_1EE096360, &protocol descriptor for SubscriptionFeatureAvailabilityType, 1);
    result = sub_1D78B39F4();
    if (v9)
    {
      v6 = type metadata accessor for SIWAPurchaseConfigProvider();
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      result = sub_1D7741E34(&v8, v7 + 24);
      a2[3] = v6;
      a2[4] = &off_1F526E9D8;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D775806C(id *a1, uint64_t a2)
{
  v3 = *a1;
  if (([*a1 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_7;
  }

  v4 = [v3 paidBundleConfig];
  if (![v4 areMagazinesEnabled])
  {

LABEL_7:
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v14 = qword_1EE09C268;
    v15 = sub_1D78B60A4();
    sub_1D78B42C4("BundlePurchasePrewarmer prewarming cannot complete because the configuration is missing.", 88, 2, &dword_1D7739000, v14, v15, MEMORY[0x1E69E7CC0]);
    sub_1D7756B20(0, &unk_1EE095220, sub_1D774BAA4, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4104();
  }

  v5 = [v4 offeredBundlePurchaseIDs];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1D78B5EB4();

    if (*(v7 + 16))
    {

      v8 = *(a2 + OBJC_IVAR____TtC16NewsSubscription23BundlePurchasePrewarmer_bundleSubscriptionManager);
      v9 = sub_1D78B5C44();
      [v8 prewarmBundleTagIDsWithPurchaseID_];

      MEMORY[0x1EEE9AC00](v10, v11);
      sub_1D7756B20(0, &unk_1EE095220, sub_1D774BAA4, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      v12 = sub_1D78B4174();

      return v12;
    }
  }

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v16 = qword_1EE09C268;
  v17 = sub_1D78B60A4();
  sub_1D78B42C4("BundlePurchasePrewarmer offeredBundlePurchaseIDs is not found in paid bundle configuration", 90, 2, &dword_1D7739000, v16, v17, MEMORY[0x1E69E7CC0]);
  sub_1D7756B20(0, &unk_1EE095220, sub_1D774BAA4, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v18 = sub_1D78B4104();

  return v18;
}

char *sub_1D77583E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v11 = *a6;
  v27[3] = v11;
  v27[4] = &off_1F526E9D8;
  v27[0] = a6;
  type metadata accessor for PurchaseStarter(0);
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v27, v11);
  MEMORY[0x1EEE9AC00](v13, v13);
  v15 = (&v25[-1] - v14);
  (*(v16 + 16))(&v25[-1] - v14);
  v17 = *v15;
  v26[3] = v11;
  v26[4] = &off_1F526E9D8;
  v26[0] = v17;
  *(v12 + 12) = 0;
  v18 = OBJC_IVAR____TtC16NewsSubscription15PurchaseStarter_purchaseContext;
  v19 = type metadata accessor for PurchaseContext(0);
  (*(*(v19 - 8) + 56))(&v12[v18], 1, 1, v19);
  *(v12 + 2) = a1;
  *(v12 + 3) = a2;
  *(v12 + 4) = a3;
  *(v12 + 5) = a4;
  *(v12 + 6) = a5;
  sub_1D774584C(v26, (v12 + 56));
  ObjectType = swift_getObjectType();
  v21 = *(a2 + 32);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v21(v25, v22, &off_1F5269F88, ObjectType, a2);

  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v12;
}

uint64_t sub_1D7758600@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v7 = sub_1D78B52D4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  *v11 = sub_1D78B6104();
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v12 = sub_1D78B52F4();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v11 = type metadata accessor for DisposableTransactionObserver();
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v7 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v13 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_transactionObservers;
  swift_beginAccess();

  MEMORY[0x1DA703120](v14);
  if (*((*(v4 + v13) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v13) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_1D78B5F04();
  }

  sub_1D78B5F24();
  swift_endAccess();
  a3[3] = v11;
  result = sub_1D7746524(&qword_1EE0918B0, type metadata accessor for DisposableTransactionObserver, &unk_1D78BF2CC);
  a3[4] = result;
  *a3 = v7;
  return result;
}

void *sub_1D7758894(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095D10, &protocol descriptor for MetricsProviderType, 1);
  result = sub_1D78B39F4();
  if (v8[3])
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for AMSUIWebViewControllerDelegate();
    result = sub_1D78B39E4();
    if (result)
    {
      v3 = result;
      v4 = type metadata accessor for AMSUIWebViewControllerFactory();
      v5 = objc_allocWithZone(v4);
      sub_1D774584C(v8, &v5[OBJC_IVAR____TtC16NewsSubscription29AMSUIWebViewControllerFactory_metricsBuilder]);
      *&v5[OBJC_IVAR____TtC16NewsSubscription29AMSUIWebViewControllerFactory_amsUIWebViewControllerDelegate] = v3;
      v7.receiver = v5;
      v7.super_class = v4;
      v6 = objc_msgSendSuper2(&v7, sel_init);
      __swift_destroy_boxed_opaque_existential_1(v8);
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_1D77589A0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095C10, &protocol descriptor for EntitlementsManagerType, 1);
  result = sub_1D78B39F4();
  if (v9)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
    MEMORY[0x1EEE9AC00](v2, v2);
    v4 = (&v8[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = sub_1D7758ACC(*v4);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_1D7758ACC(uint64_t *a1)
{
  v1 = *a1;
  v13[3] = v1;
  v13[4] = &off_1F526DCC0;
  v13[0] = a1;
  v2 = type metadata accessor for AMSUIWebViewControllerDelegate();
  v3 = objc_allocWithZone(v2);
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v13, v1);
  MEMORY[0x1EEE9AC00](v4, v4);
  v6 = (&v11 - v5);
  (*(v7 + 16))(&v11 - v5);
  v8 = *v6;
  v12[3] = v1;
  v12[4] = &off_1F526DCC0;
  v12[0] = v8;
  v3[OBJC_IVAR____TtC16NewsSubscription30AMSUIWebViewControllerDelegate_performingAuthentication] = 0;
  *&v3[OBJC_IVAR____TtC16NewsSubscription30AMSUIWebViewControllerDelegate_completionHandlers] = MEMORY[0x1E69E7CC0];
  sub_1D774584C(v12, &v3[OBJC_IVAR____TtC16NewsSubscription30AMSUIWebViewControllerDelegate_entitlementsManager]);
  v11.receiver = v3;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v9;
}

void *PaywallInteractor.__allocating_init(webAccessAuthenticatorFactory:bundleSubscriptionManager:dataManager:paidBundleViaOfferFeatureAvailability:personalizedPaywallDataService:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v30 = a1;
  sub_1D774584C(a1, v41);
  v13 = type metadata accessor for WebAccessConversionEventReporter();
  v14 = swift_allocObject();
  v29 = a5;
  sub_1D774584C(a5, v40);
  sub_1D7759064(a6, v39, &qword_1EE090510, qword_1EE090518, MEMORY[0x1E69B6A08]);
  v38[3] = v13;
  v38[4] = &off_1F526CAD0;
  v38[0] = v14;
  v15 = objc_allocWithZone(v7);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v38, v13);
  MEMORY[0x1EEE9AC00](v16, v16);
  v18 = (&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v37[3] = v13;
  v37[4] = &off_1F526CAD0;
  v37[0] = v20;
  *&v15[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v21 = &v15[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_tracker];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 4) = 0;
  v22 = &v15[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_webAccessAuthenticator];
  *(v22 + 4) = 0;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  sub_1D774584C(v41, &v15[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_webAccessAuthenticatorFactory]);
  sub_1D774584C(v37, &v15[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_webAccessConversionEventReporter]);
  v23 = &v15[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_dataManager];
  *v23 = a3;
  *(v23 + 1) = a4;
  sub_1D774584C(v40, &v15[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_paidBundleViaOfferFeatureAvailability]);
  sub_1D7759064(v39, &v32, &qword_1EE090510, qword_1EE090518, MEMORY[0x1E69B6A08]);
  if (v33)
  {
    sub_1D7741E34(&v32, &v34);
  }

  else
  {
    v24 = type metadata accessor for DefaultPersonalizedPaywallDataService();
    v25 = swift_allocObject();
    v35 = v24;
    v36 = sub_1D77F9920();
    *&v34 = v25;
  }

  swift_unknownObjectRetain();
  sub_1D7741E34(&v34, &v15[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_personalizedPaywallDataService]);
  v31.receiver = v15;
  v31.super_class = v7;
  v26 = objc_msgSendSuper2(&v31, sel_init);
  [a2 addObserver_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v27 = MEMORY[0x1E69B6A08];
  sub_1D7759154(a6, &qword_1EE090510, qword_1EE090518, MEMORY[0x1E69B6A08]);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_1D7759154(v39, &qword_1EE090510, qword_1EE090518, v27);
  __swift_destroy_boxed_opaque_existential_1(v40);
  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return v26;
}

void sub_1D7758FA8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D773C9B8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D7759010(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D78B62A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7759064(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D7758FA8(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D77590E8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D7759010(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7759154(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7758FA8(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D77591C4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = sub_1D78B33C4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0;
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;
  sub_1D774584C(a3, v5 + 88);
  sub_1D774584C(a4, v5 + 128);
  swift_unknownObjectRetain();
  sub_1D78B33B4();
  v15 = sub_1D78B33A4();
  v17 = v16;
  (*(v11 + 8))(v14, v10);
  *(v5 + 168) = v15;
  *(v5 + 176) = v17;
  v18 = *(v5 + 80);
  ObjectType = swift_getObjectType();
  v20 = *(v18 + 16);

  v20(v21, &protocol witness table for PaywallEventHandler, ObjectType, v18);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v5;
}

uint64_t PaywallEventHandler.init(interactor:router:urlHandler:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = sub_1D77591C4(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1D7759380(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D77593FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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
      *(result + 248) = (a2 - 1);
      return result;
    }

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7759490(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D77594F0(uint64_t a1, uint64_t a2)
{
  sub_1D7746430(0, &unk_1EE094000, &qword_1EE094010, &protocol descriptor for PaywallTrackerType);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PaywallEventHandler.tracker.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_1D77594F0(a1, v1 + 32);
  return swift_endAccess();
}

uint64_t PaywallInteractor.tracker.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_tracker;
  swift_beginAccess();
  sub_1D7759634(a1, v1 + v3, &unk_1EE094000, &qword_1EE094010, &protocol descriptor for PaywallTrackerType);
  return swift_endAccess();
}

uint64_t sub_1D7759634(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D7758FA8(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 40))(a2, a1, v7);
  return a2;
}

uint64_t OfferOverrideProvider.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_1D7759714()
{
  sub_1D7759748();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7759748()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  __swift_destroy_boxed_opaque_existential_1((v0 + 128));
  __swift_destroy_boxed_opaque_existential_1((v0 + 168));

  return v0;
}

uint64_t sub_1D77597C0()
{

  return swift_deallocClassInstance();
}

void sub_1D775982C(id result)
{
  v2 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_isHidingSeal;
  if (v1[OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_isHidingSeal] == 1)
  {
    v3 = result;
    [v1 bounds];
    if (v5 != 0.0 || v4 != 0.0)
    {
      v1[v2] = 0;
      v6 = *&v1[OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_outerImageView];
      v7 = sub_1D77CD170();
      [v6 setImage_];

      v8 = *&v1[OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_innerImageView];
      if (qword_1EE0905F8 != -1)
      {
        swift_once();
      }

      v9 = [qword_1EE09C2A8 imageWithRenderingMode_];
      [v8 setImage_];

      [v6 setHidden_];
      [v8 setHidden_];
      if (v3)
      {

        sub_1D77CCB90();
      }
    }
  }
}

uint64_t sub_1D77599B8(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_1D7759A18()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3594();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EE08F418 = result;
  return result;
}

void sub_1D7759BC4(uint64_t a1)
{
  if (!qword_1EE08F280)
  {
    sub_1D78B3594();
    sub_1D774E2DC(&unk_1EE08F288, MEMORY[0x1E69D6D20], MEMORY[0x1E69D6D18]);
    v1 = sub_1D78B36F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE08F280);
    }
  }
}

uint64_t sub_1D7759C58()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3594();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EE08F3B0 = result;
  return result;
}

uint64_t sub_1D7759E28()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3594();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EE08F408 = result;
  return result;
}

uint64_t sub_1D7759FF8()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3594();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EE08F3E0 = result;
  return result;
}

uint64_t sub_1D775A1C8()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3594();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EE08F3C8 = result;
  return result;
}

uint64_t sub_1D775A398()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3594();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EE08F430 = result;
  return result;
}

uint64_t sub_1D775A568()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3594();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EE08F3F8 = result;
  return result;
}

BOOL AppLaunchMethod.isDirect.getter()
{
  v1 = type metadata accessor for AppLaunchMethod(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7752650(v0, v4, type metadata accessor for AppLaunchMethod);
  v5 = type metadata accessor for AppLaunchMethod.IndirectMethod(0);
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  if (v6 != 1)
  {
    sub_1D789A164(v4, type metadata accessor for AppLaunchMethod);
  }

  return v6 == 1;
}

uint64_t sub_1D775A85C()
{
  if (qword_1EE093E80 != -1)
  {
    swift_once();
  }

  v2[0] = byte_1EE09C310;
  v3 = qword_1EE09C318;
  v4 = unk_1EE09C320;

  v0 = sub_1D775A8FC(v2);

  return v0;
}

uint64_t sub_1D775A8FC(char *a1)
{
  v1 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE09C268;
  sub_1D774FE1C(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D78BCAB0;
  sub_1D78B6504();
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D775ABD4();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  v5 = sub_1D78B60A4();
  sub_1D78B42C4("OfferManager: refresh with context: %@", 38, 2, &dword_1D7739000, v3, v5, v4);

  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  v6 = sub_1D78B6104();
  type metadata accessor for State(0);
  sub_1D78B60C4();

  v7 = OfferPlacement.rawValue.getter();
  v9 = v8;

  MEMORY[0x1DA702FF0](v7, v9);

  if (v2)
  {
    v10 = v1;
  }

  else
  {
    v10 = 0;
  }

  if (v2)
  {
    v11 = v2;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  MEMORY[0x1DA702FF0](v10, v11);

  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = sub_1D78B3A84();

  return v14;
}

void sub_1D775AB9C()
{
  byte_1EE09C310 = 4;
  qword_1EE09C318 = 0;
  unk_1EE09C320 = 0;
}

unint64_t sub_1D775ABD4()
{
  result = qword_1EE0901D0;
  if (!qword_1EE0901D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0901D0);
  }

  return result;
}

void sub_1D775AC3C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_1D775AC88(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 applicationState];

  *a1 = v3;
  *(a1 + 8) = 0;
}

unint64_t OfferPlacement.rawValue.getter()
{
  result = 0x73756C507377656ELL;
  switch(*v0)
  {
    case 1:
    case 7:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
    case 0xA:
    case 0xB:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 8:
    case 9:
      return result;
    case 0xC:
      result = 0x6E69776F6C6C6F66;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1D775AE8C(void *a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  sub_1D78B41F4();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  *(v14 + 48) = a1;
  *(v14 + 56) = a6;
  *(v14 + 64) = a7 & 1;

  v15 = a1;
  v16 = sub_1D78B4014();
  sub_1D78B4084();

  v17 = sub_1D78B4014();
  v18 = sub_1D78B40D4();

  return v18;
}

uint64_t sub_1D775AFD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1D775B014(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtC16NewsSubscription12OfferManager_featureAvailability);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  if ((*(v4 + 48))(v3, v4))
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v5 = qword_1EE09C268;
    v6 = sub_1D78B60A4();
    sub_1D78B42C4("OfferManager: Fetching Configurable Offers mapping file", 55, 2, &dword_1D7739000, v5, v6, MEMORY[0x1E69E7CC0]);
    v7 = (a1 + OBJC_IVAR____TtC16NewsSubscription12OfferManager_configurableOffersConfigFetcher);
    v8 = *(a1 + OBJC_IVAR____TtC16NewsSubscription12OfferManager_configurableOffersConfigFetcher + 24);
    v9 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v8);
    return (*(v9 + 8))(v8, v9);
  }

  else
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v11 = qword_1EE09C268;
    v12 = sub_1D78B60A4();
    sub_1D78B42C4("OfferManager: Configurable Offers Feature is not enabled, returning empty ConfigurableOfferConfigs", 98, 2, &dword_1D7739000, v11, v12, MEMORY[0x1E69E7CC0]);
    sub_1D775DEFC(0, &qword_1EE0952B0, &type metadata for ConfigurableOfferConfigs, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4104();
  }
}

uint64_t sub_1D775B214()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3594();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759BC4(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D78B36E4();
  qword_1EE08F300 = result;
  return result;
}

uint64_t ConfigurableOffersConfigFetcher.fetchConfiguration()()
{
  sub_1D775B554();
  sub_1D78B41F4();

  v0 = sub_1D78B4014();
  sub_1D775BA60();
  sub_1D78B40A4();

  v1 = sub_1D78B4014();
  sub_1D78B40B4();

  v2 = sub_1D78B4014();
  v3 = sub_1D78B40D4();

  return v3;
}

unint64_t sub_1D775B554()
{
  result = qword_1EE08FD20;
  if (!qword_1EE08FD20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE08FD20);
  }

  return result;
}

void sub_1D775B5B8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D773C9B8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D775B620(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D773C9B8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D775B688(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D775B6EC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D773C9B8(255, a3, a4);
    v5 = sub_1D78B66F4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D775B744(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D775B7A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D775B80C(uint64_t a1)
{
  sub_1D775B7A8(0, &unk_1EE0951F0, sub_1D775B554, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

void sub_1D775B8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 24);
  v10 = swift_allocObject();
  v10[2] = sub_1D775C1FC;
  v10[3] = v8;
  v10[4] = a5;
  v12[4] = sub_1D775C194;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D7752E68;
  v12[3] = &block_descriptor_30;
  v11 = _Block_copy(v12);

  [v9 fetchAppConfigurationIfNeededWithCompletion_];
  _Block_release(v11);
}

uint64_t sub_1D775B9E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D775BA20()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_1D775BA60()
{
  result = qword_1EE08FF00;
  if (!qword_1EE08FF00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FF00);
  }

  return result;
}

uint64_t sub_1D775BAC0()
{
  v0 = sub_1D78B3684();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B3694();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1E69E6530];
  sub_1D774BB74(0, &qword_1EE095430, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28], MEMORY[0x1E69D6EB0]);
  v13[1] = 0;
  *v9 = sub_1D78B5C74();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  sub_1D775BF2C(0, &qword_1EE08FAB8, &qword_1EE095458, v10);
  sub_1D775C088(0, &qword_1EE095458, v10, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D78CA870;
  v13[0] = 0;
  sub_1D78B36A4();
  v13[0] = 60;
  sub_1D78B36A4();
  v13[0] = 180;
  sub_1D78B36A4();
  v13[0] = 300;
  sub_1D78B36A4();
  v13[0] = 600;
  sub_1D78B36A4();
  v13[0] = 900;
  sub_1D78B36A4();
  v13[0] = 3600;
  sub_1D78B36A4();
  result = sub_1D78B36D4();
  qword_1EE095588 = result;
  return result;
}

void sub_1D775BF2C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D775C088(255, a3, a4, MEMORY[0x1E69D6EA8]);
    v5 = sub_1D78B66F4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D775BF98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D775BFE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D775C038(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D775C088(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D775C0D8()
{
  result = qword_1EE093200[0];
  if (!qword_1EE093200[0])
  {
    type metadata accessor for BundlePurchasePrewarmer();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE093200);
  }

  return result;
}

uint64_t sub_1D775C12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE454E0](a1, a2, ObjectType, a6);
}

uint64_t sub_1D775C194()
{
  v1 = *(v0 + 16);
  v2 = [*(*(v0 + 32) + 24) appConfiguration];
  v1();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D775C258(id *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  if (([*a1 respondsToSelector_] & 1) != 0 && (v5 = objc_msgSend(v4, sel_configurableOffersMappingResourceId)) != 0)
  {
    v6 = v5;
    sub_1D78B5C74();

    __swift_project_boxed_opaque_existential_1(a3 + 4, a3[7]);
    v7 = sub_1D78B5914();

    return v7;
  }

  else
  {
    sub_1D78730B4();
    swift_allocError();
    *v9 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1D775C368@<X0>(id *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v7 = sub_1D78B3294();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v26 - v14;
  v16 = [*a1 fileURL];
  if (v16)
  {
    v17 = v16;
    sub_1D78B3254();

    (*(v8 + 32))(v15, v12, v7);
    v18 = sub_1D78B32A4();
    if (v3)
    {
      return (*(v8 + 8))(v15, v7);
    }

    else
    {
      v22 = v18;
      v23 = v19;
      sub_1D775C5B4();
      sub_1D78B37F4();
      (*(v8 + 8))(v15, v7);
      sub_1D775DD6C(v22, v23);
      v24 = v27;
      v25 = *(a2 + 72);
      *(a2 + 72) = v27;

      result = sub_1D775DDC0(v25);
      *a3 = v24;
    }
  }

  else
  {
    sub_1D78730B4();
    swift_allocError();
    *v21 = 2;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1D775C5B4()
{
  result = qword_1EE08EC28;
  if (!qword_1EE08EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08EC28);
  }

  return result;
}

uint64_t sub_1D775C608(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D775C658(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t ConfigurableOfferConfigs.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a2;
  sub_1D7893E98(0, &qword_1EE08F250, sub_1D78938D0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v22 = &v20 - v6;
  sub_1D775C9CC(0, &qword_1EE08E500, sub_1D775CA34, &type metadata for ConfigurableOfferConfigs.CodingKeys, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v20 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D775CA34();
  sub_1D78B6874();
  if (!v2)
  {
    v13 = v9;
    v14 = v21;
    sub_1D78938D0(0);
    v16 = v15;
    sub_1D789398C();
    sub_1D78B65C4();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v22, 1, v16) == 1)
    {
      (*(v13 + 8))(v12, v8);
      sub_1D78939E4(v22);
      v18 = 0;
    }

    else
    {
      v18 = sub_1D78B3A04();
      (*(v13 + 8))(v12, v8);
      (*(v17 + 8))(v22, v16);
    }

    *v14 = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D775C9CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D775CA34()
{
  result = qword_1EE08EC40;
  if (!qword_1EE08EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08EC40);
  }

  return result;
}

unint64_t sub_1D775CA8C()
{
  result = qword_1EE08EC30;
  if (!qword_1EE08EC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08EC30);
  }

  return result;
}

unint64_t sub_1D775CAE4()
{
  result = qword_1EE08EC38;
  if (!qword_1EE08EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08EC38);
  }

  return result;
}

unint64_t sub_1D775CB38()
{
  result = qword_1EE08EC90;
  if (!qword_1EE08EC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08EC90);
  }

  return result;
}

uint64_t sub_1D775CBA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D775CBF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t ConfigurableOfferConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D775C9CC(0, &qword_1EE08E508, sub_1D775D200, &type metadata for ConfigurableOfferConfig.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v29 - v9;
  v11 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1D775D200();
  sub_1D78B6874();
  if (!v2)
  {
    v12 = v7;
    LOBYTE(v43) = 0;
    v13 = v6;
    v14 = sub_1D78B65E4();
    v16 = v15;
    sub_1D775D41C();
    LOBYTE(v42) = 1;
    sub_1D775D47C(&qword_1EE08E630, sub_1D775D4F4, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1D78B6614();
    v17 = v43;
    sub_1D7893E98(0, &qword_1EE08E5E0, sub_1D775D41C, MEMORY[0x1E69E62F8]);
    LOBYTE(v41) = 2;
    sub_1D7893EFC();
    sub_1D78B65C4();
    v36 = v17;
    v18 = v42;
    LOBYTE(v41) = 3;
    v33 = sub_1D78B65E4();
    v34 = v19;
    v35 = v18;
    LOBYTE(v41) = 4;
    v30 = sub_1D78B65E4();
    v32 = v20;
    sub_1D775D7EC();
    v22 = v21;
    LOBYTE(v40) = 5;
    sub_1D775D844(&qword_1EE08E5B0, MEMORY[0x1E69E7320], MEMORY[0x1E69E6510]);
    v31 = v22;
    sub_1D78B65C4();
    v29 = v41;
    LOBYTE(v39) = 6;
    sub_1D78B65C4();
    v31 = v40;
    v38 = 7;
    sub_1D775D8A4();
    sub_1D78B65C4();
    (*(v12 + 8))(v10, v13);
    v24 = v39;
    *a2 = v14;
    a2[1] = v16;
    v25 = v35;
    a2[2] = v36;
    a2[3] = v25;
    v26 = v34;
    a2[4] = v33;
    a2[5] = v26;
    v27 = v32;
    a2[6] = v30;
    a2[7] = v27;
    v28 = v31;
    a2[8] = v29;
    a2[9] = v28;
    a2[10] = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

unint64_t sub_1D775D200()
{
  result = qword_1EE08ECB0;
  if (!qword_1EE08ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08ECB0);
  }

  return result;
}

unint64_t sub_1D775D258()
{
  result = qword_1EE08ECA0;
  if (!qword_1EE08ECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08ECA0);
  }

  return result;
}

unint64_t sub_1D775D2B0()
{
  result = qword_1EE08ECA8;
  if (!qword_1EE08ECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08ECA8);
  }

  return result;
}

unint64_t sub_1D775D304()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000014;
    if (v1 != 6)
    {
      v5 = 0x617461646174656DLL;
    }

    v6 = 0x656449726566666FLL;
    if (v1 != 4)
    {
      v6 = 0xD000000000000014;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x656C746974;
    v3 = 0xD00000000000001FLL;
    if (v1 != 2)
    {
      v3 = 0xD000000000000011;
    }

    if (*v0)
    {
      v2 = 0xD000000000000015;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

void sub_1D775D41C()
{
  if (!qword_1EE08E638)
  {
    v0 = sub_1D78B5BF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08E638);
    }
  }
}

uint64_t sub_1D775D47C(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D775D41C();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D775D4F4()
{
  result = qword_1EE08ED58;
  if (!qword_1EE08ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08ED58);
  }

  return result;
}

uint64_t sub_1D775D548(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D775D58C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
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

uint64_t MerchandisingItemValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B6864();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = sub_1D78B6744();
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v5;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

void sub_1D775D7EC()
{
  if (!qword_1EE08E5B8)
  {
    v0 = sub_1D78B5FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08E5B8);
    }
  }
}

uint64_t sub_1D775D844(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D775D7EC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D775D8A4()
{
  result = qword_1EE08E968;
  if (!qword_1EE08E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08E968);
  }

  return result;
}

uint64_t ConfigurableOfferConfigMetadata.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  sub_1D775C9CC(0, &qword_1EE08E4F0, sub_1D775DB30, &type metadata for ConfigurableOfferConfigMetadata.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D775DB30();
  sub_1D78B6874();
  if (!v2)
  {
    v10 = v14;
    sub_1D7894E58(0, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D775DCB0(&qword_1EE08E5D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1D78B65C4();
    if (v15)
    {
      v11 = v15;
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    (*(v6 + 8))(v9, v5);
    *v10 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D775DB30()
{
  result = qword_1EE08E980;
  if (!qword_1EE08E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08E980);
  }

  return result;
}

unint64_t sub_1D775DB88()
{
  result = qword_1EE08E970;
  if (!qword_1EE08E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08E970);
  }

  return result;
}

unint64_t sub_1D775DBE0()
{
  result = qword_1EE08E978;
  if (!qword_1EE08E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08E978);
  }

  return result;
}

uint64_t sub_1D775DC34(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D7777D44(255, &qword_1EE090010, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D775DCB0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D7894E58(255, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1D775DD6C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1D775DDC0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1D775DDDC(uint64_t *a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  sub_1D775DEFC(0, &unk_1EE095288, &type metadata for Offer, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

void sub_1D775DEAC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D775DEFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D775DF90(void (*a1)(void), uint64_t a2, void (*a3)(void), uint64_t a4, int a5, int a6, unint64_t a7, uint64_t a8, char *a9, uint64_t a10, char a11, uint64_t a12)
{
  v97 = a6;
  v100 = a3;
  v101 = a4;
  v95 = a1;
  v96 = a2;
  v15 = sub_1D78B5254();
  v93 = *(v15 - 8);
  v94 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v91 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1D78B52A4();
  v90 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v18);
  v89 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v20 = qword_1EE09C268;
  sub_1D774FE1C(0);
  v99 = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D78BCB50;
  v88 = a5;
  LOBYTE(v141) = a5;
  v23 = OfferPlacement.rawValue.getter();
  v25 = v24;
  v26 = MEMORY[0x1E69E6158];
  *(v22 + 56) = MEMORY[0x1E69E6158];
  v27 = sub_1D775ABD4();
  *(v22 + 64) = v27;
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  v98 = a7;
  *&v152 = a7;
  *(&v152 + 1) = a8;
  sub_1D775DEFC(0, &qword_1EE090120, v26, MEMORY[0x1E69E6720]);

  v28 = sub_1D78B5CC4();
  *(v22 + 96) = v26;
  *(v22 + 104) = v27;
  *(v22 + 72) = v28;
  *(v22 + 80) = v29;
  v30 = sub_1D78B60A4();
  sub_1D78B42C4("OfferManager: Starting new offers refresh for placement: %{public}@, hint:  %{public}@", 86, 2, &dword_1D7739000, v20, v30, v22);

  v31 = objc_opt_self();
  v32 = &off_1E84E2000;
  v33 = [v31 mainBundle];
  v34 = &off_1E84E2000;
  v35 = [v33 bundleIdentifier];

  if (!v35)
  {
    goto LABEL_37;
  }

  v36 = v20;
  v37 = sub_1D78B5C74();
  v39 = v38;

  if (v37 == 0x6C7070612E6D6F63 && v39 == 0xEE007377656E2E65)
  {

    v20 = v36;
    v26 = MEMORY[0x1E69E6158];
    goto LABEL_13;
  }

  v40 = sub_1D78B6724();

  v20 = v36;
  v26 = MEMORY[0x1E69E6158];
  v32 = &off_1E84E2000;
  v34 = &off_1E84E2000;
  if ((v40 & 1) == 0)
  {
LABEL_37:
    v41 = [v31 mainBundle];
    v42 = [v41 bundleIdentifier];

    if (!v42)
    {
      goto LABEL_18;
    }

    v43 = sub_1D78B5C74();
    v45 = v44;

    if (v43 == 0xD000000000000010 && 0x80000001D78CF0A0 == v45)
    {

      goto LABEL_13;
    }

    v46 = sub_1D78B6724();

    v32 = &off_1E84E2000;
    v34 = &off_1E84E2000;
    if ((v46 & 1) == 0)
    {
LABEL_18:
      v54 = v20;
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_1D78BCAB0;
      v56 = [v31 v32[358]];
      v57 = [v56 v34[359]];

      if (v57)
      {
        v58 = sub_1D78B5C74();
        v60 = v59;

        *(v55 + 56) = v26;
        *(v55 + 64) = v27;
        if (v60)
        {
LABEL_26:
          *(v55 + 32) = v58;
          *(v55 + 40) = v60;
          v74 = sub_1D78B60A4();
          sub_1D78B42C4("OfferManager: Skipping the offers refresh for bundleID=%{public}@", 65, 2, &dword_1D7739000, v54, v74, v55);

          sub_1D77E55A8();
          v51 = swift_allocError();
          v52 = 8;
          goto LABEL_27;
        }

        v58 = 0;
      }

      else
      {
        v58 = 0;
        *(v55 + 56) = v26;
        *(v55 + 64) = v27;
      }

      v60 = 0xE000000000000000;
      goto LABEL_26;
    }
  }

LABEL_13:
  v47 = [*&a9[OBJC_IVAR____TtC16NewsSubscription12OfferManager_bundleSubscriptionManager] cachedSubscription];
  v48 = [v47 isServicesBundleUser];

  if (v48)
  {
    v49 = sub_1D78B60A4();
    sub_1D78B42C4("OfferManager: Skip offers refresh, the user is already a servicesBundle subscriber", 82, 2, &dword_1D7739000, v20, v49, MEMORY[0x1E69E7CC0]);
    sub_1D77E55A8();
    v51 = swift_allocError();
    v52 = 6;
LABEL_27:
    *v50 = v52;
    v100();

    return;
  }

  if ((a11 & 1) == 0 && a10 == 2)
  {
    v53 = sub_1D78B60A4();
    sub_1D78B42C4("OfferManager: Ignoring best offer refresh as application is in background state", 79, 2, &dword_1D7739000, v20, v53, MEMORY[0x1E69E7CC0]);
    sub_1D77E55A8();
    v51 = swift_allocError();
    v52 = 7;
    goto LABEL_27;
  }

  v61 = v20;
  v62 = v97;
  LOBYTE(v130) = v97;
  v63 = v98;
  *(&v130 + 1) = v98;
  *&v131 = a8;
  v87 = a12;
  *&v119 = a12;
  sub_1D775F05C(&v130, &v119, &v141);
  v160 = v149;
  v161 = v150;
  v162 = v151;
  v156 = v145;
  v157 = v146;
  v159 = v148;
  v158 = v147;
  v152 = v141;
  v153 = v142;
  v155 = v144;
  v154 = v143;
  if (sub_1D775F3CC(&v152) == 1)
  {
    LOBYTE(v102) = v62;
    v103 = v63;
    v104 = a8;

    sub_1D78B3FC4();

    v127 = v116;
    v128 = v117;
    v123 = v112;
    v124 = v113;
    v125 = v114;
    v126 = v115;
    v119 = v108;
    v120 = v109;
    v121 = v110;
    v122 = v111;
    v138 = v116;
    v139 = v117;
    v134 = v112;
    v135 = v113;
    v136 = v114;
    v137 = v115;
    v130 = v108;
    v131 = v109;
    v129 = v118;
    v140 = v118;
    v132 = v110;
    v133 = v111;
    if (sub_1D775F3CC(&v130) == 1)
    {
      v64 = swift_allocObject();
      *(v64 + 16) = a9;
      *(v64 + 24) = v88;
      *(v64 + 32) = v62;
      *(v64 + 40) = v63;
      *(v64 + 48) = a8;
      v65 = v95;
      v66 = v96;
      *(v64 + 56) = v87;
      *(v64 + 64) = v65;
      v67 = v100;
      v68 = v101;
      *(v64 + 72) = v66;
      *(v64 + 80) = v67;
      *(v64 + 88) = v68;
      *&v110 = sub_1D775FBB0;
      *(&v110 + 1) = v64;
      *&v108 = MEMORY[0x1E69E9820];
      *(&v108 + 1) = 1107296256;
      *&v109 = sub_1D775FB6C;
      *(&v109 + 1) = &block_descriptor_15;
      v69 = _Block_copy(&v108);

      v70 = a9;
      v71 = v89;
      sub_1D78B5274();
      v102 = MEMORY[0x1E69E7CC0];
      sub_1D77465B4(&qword_1EE090300, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1D7744248(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1D775F4A4();
      v72 = v91;
      v73 = v94;
      sub_1D78B6324();
      MEMORY[0x1DA7033B0](0, v71, v72, v69);
      _Block_release(v69);
      (*(v93 + 8))(v72, v73);
      (*(v90 + 8))(v71, v92);

      return;
    }

    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1D78BCAB0;
    v102 = 0;
    v103 = 0xE000000000000000;
    v116 = v138;
    v117 = v139;
    v118 = v140;
    v112 = v134;
    v113 = v135;
    v114 = v136;
    v115 = v137;
    v108 = v130;
    v109 = v131;
    v110 = v132;
    v111 = v133;
    sub_1D78B6504();
    v77 = v102;
    v78 = v103;
    *(v76 + 56) = v26;
    *(v76 + 64) = v27;
    *(v76 + 32) = v77;
    *(v76 + 40) = v78;
    v79 = sub_1D78B60A4();
    sub_1D78B42C4("OfferManager: Returning from the cachedBestOffers with offer=%{public}@", 71, 2, &dword_1D7739000, v20, v79, v76);

    v116 = v138;
    v117 = v139;
    v118 = v140;
    v112 = v134;
    v113 = v135;
    v114 = v136;
    v115 = v137;
    v108 = v130;
    v109 = v131;
    v110 = v132;
    v111 = v133;
    v95(&v108);
    v80 = &v119;
  }

  else
  {
    v138 = v149;
    v139 = v150;
    v140 = v151;
    v134 = v145;
    v135 = v146;
    v136 = v147;
    v137 = v148;
    v130 = v141;
    v131 = v142;
    v132 = v143;
    v133 = v144;
    LOBYTE(v108) = v62;
    *(&v108 + 1) = v63;
    *&v109 = a8;
    sub_1D77E5A14(&v141, &v119, &qword_1EE090600, &type metadata for Offer);

    sub_1D77E5A14(&v141, &v119, &qword_1EE090600, &type metadata for Offer);

    sub_1D78B3FD4();

    if (BYTE8(v154) && BYTE8(v154) == 1)
    {
      v138 = v149;
      v139 = v150;
      v140 = v151;
      v134 = v145;
      v135 = v146;
      v136 = v147;
      v137 = v148;
      v130 = v141;
      v131 = v142;
      v132 = v143;
      v133 = v144;
      v75 = v97;
      LOBYTE(v119) = v97;
      *(&v119 + 1) = v98;
      *&v120 = a8;

      sub_1D78B3FD4();
    }

    else
    {
      sub_1D77E5878(&v141, &qword_1EE090600, &type metadata for Offer);
      v75 = v97;
    }

    LOBYTE(v102) = 0;
    LOBYTE(v130) = v75;
    v81 = v98;
    *(&v130 + 1) = v98;
    *&v131 = a8;
    *&v108 = v87;
    sub_1D77DE1C8(&v102, &v130, &v108, &v119);
    v138 = v127;
    v139 = v128;
    v140 = v129;
    v134 = v123;
    v135 = v124;
    v136 = v125;
    v137 = v126;
    v130 = v119;
    v131 = v120;
    v132 = v121;
    v133 = v122;
    nullsub_1();
    v116 = v138;
    v117 = v139;
    v118 = v140;
    v112 = v134;
    v113 = v135;
    v114 = v136;
    v115 = v137;
    v108 = v130;
    v109 = v131;
    v110 = v132;
    v111 = v133;
    v105[0] = v75;
    v106 = v81;
    v107 = a8;

    sub_1D778CEAC(&v119, &v102);
    sub_1D78B3FD4();

    v116 = v160;
    v117 = v161;
    v118 = v162;
    v112 = v156;
    v113 = v157;
    v114 = v158;
    v115 = v159;
    v108 = v152;
    v109 = v153;
    v110 = v154;
    v111 = v155;
    sub_1D77DEDC4(&v108);
    v116 = v160;
    v117 = v161;
    v118 = v162;
    v112 = v156;
    v113 = v157;
    v114 = v158;
    v115 = v159;
    v108 = v152;
    v109 = v153;
    v110 = v154;
    v111 = v155;
    LOBYTE(v102) = v75;
    v103 = v81;
    v104 = a8;
    sub_1D77DF138(&v108, &v102);
    v116 = v160;
    v117 = v161;
    v118 = v162;
    v112 = v156;
    v113 = v157;
    v114 = v158;
    v115 = v159;
    v108 = v152;
    v109 = v153;
    v110 = v154;
    v111 = v155;
    sub_1D77DF67C(&v108);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_1D78BCAB0;
    v102 = 0;
    v103 = 0xE000000000000000;
    v116 = v160;
    v117 = v161;
    v118 = v162;
    v112 = v156;
    v113 = v157;
    v114 = v158;
    v115 = v159;
    v108 = v152;
    v109 = v153;
    v110 = v154;
    v111 = v155;
    sub_1D78B6504();
    v83 = v102;
    v84 = v103;
    *(v82 + 56) = v26;
    *(v82 + 64) = v27;
    *(v82 + 32) = v83;
    *(v82 + 40) = v84;
    v85 = sub_1D78B60A4();
    sub_1D78B42C4("OfferManager: Returning from the offerOverride with offer=%{public}@", 68, 2, &dword_1D7739000, v61, v85, v82);

    v116 = v160;
    v117 = v161;
    v118 = v162;
    v112 = v156;
    v113 = v157;
    v114 = v158;
    v115 = v159;
    v108 = v152;
    v109 = v153;
    v110 = v154;
    v111 = v155;
    v95(&v108);
    sub_1D778D0B0(&v119);
    v80 = &v141;
  }

  sub_1D77E5878(v80, &qword_1EE090600, &type metadata for Offer);
}

uint64_t sub_1D775EE40()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D775EE98()
{
  v0 = sub_1D78B3694();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D78B3684();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.BestOffers.ConfigOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D78B5C74();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D78B35A4();
  qword_1EE0955F8 = result;
  return result;
}

__n128 sub_1D775F05C@<Q0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getObjectType();
  v6 = *a1;
  v13 = *(a1 + 8);
  v7 = *a2;
  if (qword_1EE0955F0 != -1)
  {
    swift_once();
  }

  if ((sub_1D78B35C4() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (qword_1EC9C8598 != -1)
  {
    swift_once();
  }

  sub_1D77465B4(&qword_1EC9CA428, type metadata accessor for OfferManager, &unk_1D78C2450);
  sub_1D78B3574();
  if (v18 <= 2)
  {
    v17 = v18;
    v15[0] = v6;
    v16 = v13;
    v14 = v7;
    sub_1D77DE1C8(&v17, v15, &v14, v19);
    nullsub_1();
  }

  else
  {
LABEL_8:
    sub_1D775F3AC(v19);
  }

  v8 = v19[9];
  *(a3 + 128) = v19[8];
  *(a3 + 144) = v8;
  *(a3 + 160) = v20;
  v9 = v19[5];
  *(a3 + 64) = v19[4];
  *(a3 + 80) = v9;
  v10 = v19[7];
  *(a3 + 96) = v19[6];
  *(a3 + 112) = v10;
  v11 = v19[1];
  *a3 = v19[0];
  *(a3 + 16) = v11;
  result = v19[3];
  *(a3 + 32) = v19[2];
  *(a3 + 48) = result;
  return result;
}

uint64_t sub_1D775F284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D78B3684();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v6 + 16))(v9, a4, v5);
  v10 = sub_1D78B35B4();
  (*(v6 + 8))(a4, v5);
  return v10;
}

double sub_1D775F3AC(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1D775F3D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D775F3F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D775F45C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t sub_1D775F4A4()
{
  result = qword_1EE090030;
  if (!qword_1EE090030)
  {
    sub_1D774BFB4(255, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE090030);
  }

  return result;
}

void sub_1D775F538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *&a5[OBJC_IVAR____TtC16NewsSubscription23BundlePurchasePrewarmer_purchaseManager + 8];
  ObjectType = swift_getObjectType();

  sub_1D775F820(a6, a7, ObjectType, v13);
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = sub_1D7752FB0;
  v15[4] = v12;
  v16 = a5;

  v17 = sub_1D78B4014();
  sub_1D78B4094();

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1D7752FB0;
  *(v18 + 24) = v12;
  v19 = sub_1D78B4014();
  sub_1D78B40D4();
}

uint64_t sub_1D775F6D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D775F710()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1D775F754(uint64_t a1)
{
  if (!qword_1EE095230)
  {
    sub_1D773F004(255, &qword_1EE08FF20, 0x1E69B54D0);
    v1 = sub_1D78B4184();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE095230);
    }
  }
}

uint64_t sub_1D775F7BC(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D775F754(0);
  swift_allocObject();
  return sub_1D78B4174();
}

void sub_1D775F854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = *(a5 + OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_internalPurchaseManager);

  v16 = sub_1D78B5C44();
  v17 = [v15 fetchPurchaseMetadataForPurchaseID:v16 restorePurchase:a8 & 1];

  v18 = sub_1D78B4014();
  v19 = swift_allocObject();
  v19[2] = sub_1D7752FB0;
  v19[3] = v14;
  v19[4] = a3;
  v19[5] = a4;
  v30 = sub_1D779C648;
  v31 = v19;
  v26 = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1D77CB678;
  v29 = &block_descriptor_38;
  v20 = _Block_copy(&v26);

  v21 = [v17 thenOn:v18 then:v20];
  _Block_release(v20);

  if (v21)
  {

    v22 = sub_1D78B4014();
    v23 = swift_allocObject();
    *(v23 + 16) = a3;
    *(v23 + 24) = a4;
    v30 = sub_1D779C654;
    v31 = v23;
    v26 = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1D7797914;
    v29 = &block_descriptor_44;
    v24 = _Block_copy(&v26);

    v25 = [v21 errorOn:v22 error:v24];
    _Block_release(v24);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D775FAE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D775FB18()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D775FB6C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1D775FBF0(char *a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE09C268;
  v13 = sub_1D78B60A4();
  v37 = v12;
  sub_1D78B42C4("OfferManager: Sending a MarketingItem fetch request", 51, 2, &dword_1D7739000, v12, v13, MEMORY[0x1E69E7CC0]);
  v14 = [objc_opt_self() bag];
  LOBYTE(aBlock[0]) = a2;
  OfferPlacement.rawValue.getter();
  v44 = objc_allocWithZone(MEMORY[0x1E698C9A0]);
  swift_unknownObjectRetain();
  v15 = sub_1D78B5C44();
  v16 = sub_1D78B5C44();
  v17 = sub_1D78B5C44();

  v18 = sub_1D78B5C44();
  v19 = [v44 initWithBag:v14 clientIdentifier:v15 clientVersion:v16 placement:v17 serviceType:v18];
  swift_unknownObjectRelease();

  v20 = [*&a1[OBJC_IVAR____TtC16NewsSubscription12OfferManager_configurationManager] configuration];
  if (v20)
  {
    v21 = v20;
    if ([v20 respondsToSelector_])
    {
      v22 = [v21 bestOfferRequestTimeoutDurationInSeconds];
      swift_unknownObjectRelease();
      v23 = v22;
    }

    else
    {
      swift_unknownObjectRelease();
      v23 = 5.0;
    }

    v24 = [objc_opt_self() sharedAccount];
    v25 = [v24 activeiTunesAccount];

    [v19 setAccount_];
    if (a5)
    {
      v26 = a4;
      v27 = sub_1D78B5C44();
    }

    else
    {
      v27 = 0;
      v26 = a4;
    }

    [v19 setOfferHints_];

    sub_1D774FE1C(0);
    v28 = swift_allocObject();
    v29 = MEMORY[0x1E69E63B0];
    *(v28 + 16) = xmmword_1D78BCAB0;
    v30 = MEMORY[0x1E69E6438];
    *(v28 + 56) = v29;
    *(v28 + 64) = v30;
    *(v28 + 32) = v23;
    v31 = sub_1D78B60A4();
    sub_1D78B42C4("OfferManager: performWithFetchOnly with timeout=%{public}f", 58, 2, &dword_1D7739000, v37, v31, v28);

    v32 = [v19 performWithFetchOnly];
    v33 = [v32 promiseWithTimeout_];

    v34 = swift_allocObject();
    *(v34 + 16) = a1;
    *(v34 + 24) = a3;
    *(v34 + 32) = v26;
    *(v34 + 40) = a5;
    *(v34 + 48) = a6;
    *(v34 + 56) = a7;
    *(v34 + 64) = a8;
    *(v34 + 72) = a9;
    *(v34 + 80) = a10;
    aBlock[4] = sub_1D77E576C;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7780F60;
    aBlock[3] = &block_descriptor_23_1;
    v35 = _Block_copy(aBlock);

    v36 = a1;

    [v33 addFinishBlock_];
    _Block_release(v35);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D7760080()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D776013C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D776015C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1D7760188(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D77601A8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void *sub_1D77601EC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D7760228@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D78B5C74();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D7760364()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D776039C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D77603E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7760420()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v12 + 8, v2 | 7);
}

uint64_t sub_1D7760640()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 376, 7);
}

uint64_t sub_1D77606A8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 368, 7);
}

uint64_t sub_1D7760710()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D77607DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7760814()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D776084C()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_1D7781F70(*(v0 + 16), *(v0 + 24));

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v12 + 8, v2 | 7);
}

uint64_t sub_1D7760A78()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 49) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  sub_1D7781F70(*(v0 + 40), *(v0 + 48));
  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D7760C98()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1D7760EC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7760EFC()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7760F34()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1D7761168()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  sub_1D7781F70(*(v0 + 40), *(v0 + 48));

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D7761394()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D77615A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D77615E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D7761654()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 472, 7);
}

uint64_t sub_1D77616BC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 464, 7);
}

uint64_t sub_1D7761724()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D776175C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7761794()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D77617CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7761804()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D776184C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D776188C()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D77618C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7761904()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D7761B28()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7761B60()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7761BB0()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v12 + 8, v2 | 7);
}

uint64_t sub_1D7761DF8()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1D776201C()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D7762228()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D776243C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7762490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PurchaseContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D776253C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PurchaseContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7762610()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D77626A0()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D7762718()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1D7762768()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D77627DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D776281C()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D776289C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D77628D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7762914()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D776294C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D77629B0()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D77629E8()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D7762BF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D7762C3C()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_1D7762E4C()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_1D776306C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D77630AC()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D77632C8()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1D77634F4()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D7763718()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1D7763770()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D77637A8()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1D7763A34()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7763A70()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1D7763C88()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7763CC0()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D7763EF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7763F38()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7763F70()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7763FB0()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D77641C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D7764200()
{

  return MEMORY[0x1EEE6BDD0](v0, 34, 7);
}

uint64_t sub_1D7764240()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D7764294()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D77642E4()
{
  swift_unknownObjectRelease();

  sub_1D77CA6AC(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_1D77CA77C(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264));

  return MEMORY[0x1EEE6BDD0](v0, 304, 7);
}

uint64_t sub_1D7764390()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D77643F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7764430()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D776463C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D7764684()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D77646C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7764734()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D776476C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7764814()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D776484C()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7764884()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D77648C8()
{
  v1 = (type metadata accessor for SiwaCredentialUploadData(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[12];
  v6 = sub_1D78B3394();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D77649F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7764A30()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7764A68()
{

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 280))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 360, 7);
}

uint64_t sub_1D7764B78()
{

  if (*(v0 + 112))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_1D7764C1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1D7764C84()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7764CC0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7764CF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D7764D38()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7764D70()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7764DAC()
{
  v1 = sub_1D78B3294();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D7764E70()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7764EBC()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7764F3C()
{
  v1 = sub_1D78B5934();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D776500C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7765044()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D776507C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D77650BC()
{
  v1 = sub_1D78B5934();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 280) & ~v3;
  v5 = *(v2 + 64);
  sub_1D77CA6AC(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1D77CA77C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D77651EC()
{
  v1 = sub_1D78B3294();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 272) & ~v3;
  v5 = *(v2 + 64);
  sub_1D77CA6AC(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1D77CA77C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D7765348()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7765380()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D77653C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7765424()
{
  v1 = (type metadata accessor for PurchaseAdContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[11];
  v6 = sub_1D78B3394();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D776553C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D776557C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D77655B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D77655FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7765634()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D776566C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D77656A4()
{
  sub_1D77CA6AC(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1D77CA77C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232));

  return MEMORY[0x1EEE6BDD0](v0, 272, 7);
}

uint64_t sub_1D7765740()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = v0 + v12;
  sub_1D77CA6AC(*(v0 + v12), *(v0 + v12 + 8), *(v0 + v12 + 16));
  sub_1D77CA77C(*(v13 + 24), *(v13 + 32), *(v13 + 40), *(v13 + 48), *(v13 + 56), *(v13 + 64), *(v13 + 72), *(v13 + 80), *(v13 + 88), *(v13 + 96), *(v13 + 104), *(v13 + 112), *(v13 + 120), *(v13 + 128), *(v13 + 136), *(v13 + 144), *(v13 + 152), *(v13 + 160), *(v13 + 168), *(v13 + 176), *(v13 + 184), *(v13 + 192), *(v13 + 200), *(v13 + 208), *(v13 + 216));

  return MEMORY[0x1EEE6BDD0](v0, v12 + 256, v2 | 7);
}

uint64_t sub_1D77659C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D77659F8()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = v0 + v12;
  sub_1D77CA6AC(*(v0 + v12), *(v0 + v12 + 8), *(v0 + v12 + 16));
  sub_1D77CA77C(*(v13 + 24), *(v13 + 32), *(v13 + 40), *(v13 + 48), *(v13 + 56), *(v13 + 64), *(v13 + 72), *(v13 + 80), *(v13 + 88), *(v13 + 96), *(v13 + 104), *(v13 + 112), *(v13 + 120), *(v13 + 128), *(v13 + 136), *(v13 + 144), *(v13 + 152), *(v13 + 160), *(v13 + 168), *(v13 + 176), *(v13 + 184), *(v13 + 192), *(v13 + 200), *(v13 + 208), *(v13 + 216));

  return MEMORY[0x1EEE6BDD0](v0, v12 + 256, v2 | 7);
}

uint64_t sub_1D7765C80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D7765CDC(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D7765D40()
{
  v1 = type metadata accessor for HideMyEmailSignupDataModel(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  v5 = v0 + v3 + *(v1 + 40);

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = type metadata accessor for PurchaseContext(0);
  v7 = *(v6 + 52);
  v8 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v8 - 8) + 48))(v5 + v7, 1, v8) && swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1D78B3294();
    (*(*(v9 - 8) + 8))(v5 + v7, v9);
  }

  v10 = *(v6 + 64);
  v11 = sub_1D78B3294();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D7765FAC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7765FE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7766024()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D776605C()
{

  return MEMORY[0x1EEE6BDD0](v0, 176, 7);
}

uint64_t sub_1D77660AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D77660EC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7766124()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D776617C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D77661B4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D77661EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D776622C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7766264()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D776629C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D77662DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D776631C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D776635C()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1D7766574()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v12 + 8, v2 | 7);
}

uint64_t sub_1D7766794()
{
  v1 = type metadata accessor for HideMyEmailSignupDataModel(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  v5 = v0 + v3 + *(v1 + 40);

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = type metadata accessor for PurchaseContext(0);
  v7 = *(v6 + 52);
  v8 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v8 - 8) + 48))(v5 + v7, 1, v8) && swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1D78B3294();
    (*(*(v9 - 8) + 8))(v5 + v7, v9);
  }

  v10 = *(v6 + 64);
  v11 = sub_1D78B3294();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D7766A00()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D7766C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for HideMyEmailSignupDataModel(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D7766CD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for HideMyEmailSignupDataModel(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7766D78()
{

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1D7766DB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 176, 7);
}

uint64_t sub_1D7766E08()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7766E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BundlePaywallViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    sub_1D77404D4(0, &unk_1EE096460, MEMORY[0x1E6968FB0]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1D7766F8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BundlePaywallViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    sub_1D77404D4(0, &unk_1EE096460, MEMORY[0x1E6968FB0]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_1D77670CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7767104()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D776714C()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D776718C()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D77671CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D776721C()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D776726C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1D77672B4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1D7767308(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D78B57B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D7767374(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D78B57B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D77673E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D78B3394();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D7767450(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D78B3394();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D77674F4()
{
  v1 = *(type metadata accessor for PaywallShownEntry(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1D78B3394();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t _s16NewsSubscription40HideMyEmailSignupLayoutSectionDescriptorOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 224))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16NewsSubscription40HideMyEmailSignupLayoutSectionDescriptorOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 216) = 0;
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
    *result = (a2 - 1);
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

  *(result + 224) = v3;
  return result;
}

uint64_t sub_1D7767654()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 272) & ~v2;
  sub_1D77CA6AC(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1D77CA77C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232));

  v5 = v0 + v4;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v4 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v12 + 8, v2 | 7);
}

uint64_t sub_1D77678D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7767918()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7767960()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7767998()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D77679E0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7767A18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D78B3394();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D7767A84()
{
  v1 = sub_1D78B3294();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D7767B48()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7767B80()
{
  v1 = sub_1D78B3294();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D7767C28()
{
  v1 = sub_1D78B3294();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D7767D2C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7767D74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D7767DC4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D7767E24()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7767E60()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7767E98()
{

  return MEMORY[0x1EEE6BDD0](v0, 176, 7);
}

uint64_t sub_1D7767EE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

uint64_t sub_1D7767F30()
{
  v1 = (type metadata accessor for PurchaseMetaDataFetchResult(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 160) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = sub_1D78B57A4();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1D7768048()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D7768090()
{
  v1 = sub_1D78B57A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1D78B59A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1D77681D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7768210()
{
  v1 = sub_1D78B57A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D77682D4()
{
  v1 = sub_1D78B57A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D776835C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D78B57A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D7768424(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D78B57A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1D77684E0()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;

  sub_1D78591E8(*(v0 + v14), sub_1D7858FFC);

  return MEMORY[0x1EEE6BDD0](v0, v14 + 8, v2 | 7);
}

uint64_t sub_1D776872C()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D7768784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D78B3294();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SubscribeButtonDestination(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D77688A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D78B3294();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SubscribeButtonDestination(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D77689CC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D7768A04()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7768A3C()
{
  v1 = type metadata accessor for HideMyEmailSignupDataModel(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v22 = *(*(v1 - 8) + 64);
  v4 = v22 + v2 + v3;

  v5 = v0 + v3;

  swift_unknownObjectRelease();
  v6 = v0 + v3 + *(v1 + 40);

  sub_1D77703DC(*(v6 + 72), *(v6 + 80), *(v6 + 88), *(v6 + 96), *(v6 + 104), *(v6 + 112), *(v6 + 120));
  v7 = type metadata accessor for PurchaseContext(0);
  v8 = *(v7 + 52);
  v9 = type metadata accessor for PostPurchaseDestination(0);
  v20 = *(*(v9 - 8) + 48);
  if (!v20(v6 + v8, 1, v9) && swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1D78B3294();
    (*(*(v10 - 8) + 8))(v6 + v8, v10);
  }

  v21 = v2;
  v11 = v4 & ~v2;
  v12 = *(v7 + 64);
  v13 = sub_1D78B3294();
  v19 = *(v13 - 8);
  v14 = *(v19 + 48);
  if (!v14(v6 + v12, 1, v13))
  {
    (*(v19 + 8))(v6 + v12, v13);
  }

  swift_unknownObjectRelease();
  v15 = v0 + v11 + *(v1 + 40);

  sub_1D77703DC(*(v15 + 72), *(v15 + 80), *(v15 + 88), *(v15 + 96), *(v15 + 104), *(v15 + 112), *(v15 + 120));
  v16 = *(v7 + 52);
  if (!v20(v15 + v16, 1, v9) && swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v19 + 8))(v15 + v16, v13);
  }

  v17 = *(v7 + 64);
  if (!v14(v15 + v17, 1, v13))
  {
    (*(v19 + 8))(v15 + v17, v13);
  }

  return MEMORY[0x1EEE6BDD0](v0, v11 + v22, v21 | 7);
}

uint64_t sub_1D7768DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for HideMyEmailSignupDataModel(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D7768EA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for HideMyEmailSignupDataModel(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7768F44()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7768F7C()
{
  v1 = sub_1D78B58E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D7769040()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D77690A0()
{
  v1 = type metadata accessor for HideMyEmailSignupDataModel(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  v5 = v0 + v3 + *(v1 + 40);

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = type metadata accessor for PurchaseContext(0);
  v7 = *(v6 + 52);
  v8 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v8 - 8) + 48))(v5 + v7, 1, v8) && swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1D78B3294();
    (*(*(v9 - 8) + 8))(v5 + v7, v9);
  }

  v10 = *(v6 + 64);
  v11 = sub_1D78B3294();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D776930C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_1D773F178(0, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D77693E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    sub_1D773F178(0, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D77694AC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1D78B3294();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for SubscribeButtonDestination(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  sub_1D773F178(0, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[13];
    goto LABEL_11;
  }

  sub_1D773F178(0, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[14];

  return v17(v18, a2, v16);
}

uint64_t sub_1D7769698(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_1D78B3294();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for SubscribeButtonDestination(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  sub_1D773F178(0, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[13];
    goto LABEL_9;
  }

  sub_1D773F178(0, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = v5 + a4[14];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1D7769884()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D77698C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D77698FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D7769944()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1D776998C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D77699CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D7769A0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7769A44()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7769A8C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7769ADC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D7769B38(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D7769BB4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D7769BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchMethod.IndirectMethod(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7769C58(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for AppLaunchMethod.IndirectMethod(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D7769CE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7769D20()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D7769D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D78B3394();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D7769E24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D78B3394();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7769F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D78B3394();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D776A00C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D78B3394();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D776A0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D77EECB8(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D776A19C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D77EECB8(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D776A240()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D776A278()
{
  sub_1D773F0BC(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for PurchaseContext(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {

    sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
    v7 = *(v6 + 52);
    v8 = type metadata accessor for PostPurchaseDestination(0);
    if (!(*(*(v8 - 8) + 48))(v5 + v7, 1, v8) && swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = sub_1D78B3294();
      (*(*(v9 - 8) + 8))(v5 + v7, v9);
    }

    v10 = *(v6 + 64);
    v11 = sub_1D78B3294();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  v13 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v13 + 8, v2 | 7);
}

uint64_t sub_1D776A4DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D776A548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D773F1CC(0, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1D773F1CC(0, &unk_1EE096460, MEMORY[0x1E6968FB0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 64);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D776A6A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D776A6DC()
{
  MEMORY[0x1DA7044F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D776A714()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D776A920()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D776A958()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  sub_1D77703DC(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
  v6 = *(v1 + 52);
  v7 = type metadata accessor for PostPurchaseDestination(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7) && swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D78B3294();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = *(v1 + 64);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v13 + 8, v2 | 7);
}

uint64_t sub_1D776AC18(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D776B630()
{
  v1 = *v0;
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](v1);
  return sub_1D78B6844();
}

uint64_t sub_1D776B678(uint64_t a1)
{
  v2 = *v1;
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](v2);
  return sub_1D78B6844();
}

uint64_t PurchaseTransactionTrackerEventPath.hashValue.getter()
{
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](0);
  return sub_1D78B6844();
}

uint64_t sub_1D776B738()
{
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](0);
  return sub_1D78B6844();
}

uint64_t sub_1D776B77C(uint64_t a1)
{
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](0);
  return sub_1D78B6844();
}

unint64_t sub_1D776B7C0()
{
  result = qword_1EC9C87C8;
  if (!qword_1EC9C87C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C87C8);
  }

  return result;
}

unint64_t sub_1D776B818()
{
  result = qword_1EC9C87D0;
  if (!qword_1EC9C87D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C87D0);
  }

  return result;
}

unint64_t sub_1D776B870()
{
  result = qword_1EC9C87D8;
  if (!qword_1EC9C87D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C87D8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for WebOptinFlowManager.WebOptinFlowErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PurchaseTransactionTrackerEventPath(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PurchaseTransactionTrackerEventPath(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D776BC1C()
{
  v1 = *v0;
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](v1);
  return sub_1D78B6844();
}

uint64_t sub_1D776BC90(uint64_t a1)
{
  v2 = *v1;
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](v2);
  return sub_1D78B6844();
}

uint64_t sub_1D776BCD4(uint64_t a1, id *a2)
{
  result = sub_1D78B5C54();
  *a2 = 0;
  return result;
}

uint64_t sub_1D776BD4C(uint64_t a1, id *a2)
{
  v3 = sub_1D78B5C64();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D776BDCC@<X0>(uint64_t *a2@<X8>)
{
  sub_1D78B5C74();
  v3 = sub_1D78B5C44();

  *a2 = v3;
  return result;
}

uint64_t sub_1D776BE20(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C9218, type metadata accessor for AMSError, &unk_1D78BC8E4);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1D776BE8C(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C9218, type metadata accessor for AMSError, &unk_1D78BC8E4);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D776BEF8(void *a1, uint64_t a2)
{
  v4 = sub_1D776CBAC(&qword_1EC9C9218, type metadata accessor for AMSError, &unk_1D78BC8E4);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D776BF88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D776CBAC(&qword_1EC9C9218, type metadata accessor for AMSError, &unk_1D78BC8E4);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D776C014(uint64_t a1)
{
  v2 = sub_1D776CBAC(&unk_1EC9C9F70, type metadata accessor for ASWebAuthenticationSessionError, &unk_1D78BC6C4);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1D776C080(uint64_t a1)
{
  v2 = sub_1D776CBAC(&unk_1EC9C9F70, type metadata accessor for ASWebAuthenticationSessionError, &unk_1D78BC6C4);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D776C0EC(void *a1, uint64_t a2)
{
  v4 = sub_1D776CBAC(&unk_1EC9C9F70, type metadata accessor for ASWebAuthenticationSessionError, &unk_1D78BC6C4);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D776C17C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D776CBAC(&unk_1EC9C9F70, type metadata accessor for ASWebAuthenticationSessionError, &unk_1D78BC6C4);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D776C208(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C91E0, type metadata accessor for SKError, &unk_1D78BC7D4);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1D776C274(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C91E0, type metadata accessor for SKError, &unk_1D78BC7D4);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D776C2E0(void *a1, uint64_t a2)
{
  v4 = sub_1D776CBAC(&qword_1EC9C91E0, type metadata accessor for SKError, &unk_1D78BC7D4);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D776C370(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D776CBAC(&qword_1EC9C91E0, type metadata accessor for SKError, &unk_1D78BC7D4);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D776C3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D78B6814();
  sub_1D78B5C14();
  return sub_1D78B6844();
}

uint64_t sub_1D776C44C(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C91E8, type metadata accessor for AMSError, &unk_1D78BC39C);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D776C4B8(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C91E8, type metadata accessor for AMSError, &unk_1D78BC39C);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D776C524(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C9218, type metadata accessor for AMSError, &unk_1D78BC8E4);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1D776C590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D776CBAC(&qword_1EC9C9218, type metadata accessor for AMSError, &unk_1D78BC8E4);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1D776C614(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C9170, type metadata accessor for ASWebAuthenticationSessionError, &unk_1D78BC680);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D776C680(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C9170, type metadata accessor for ASWebAuthenticationSessionError, &unk_1D78BC680);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D776C6EC(uint64_t a1)
{
  v2 = sub_1D776CBAC(&unk_1EC9C9F70, type metadata accessor for ASWebAuthenticationSessionError, &unk_1D78BC6C4);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1D776C758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D776CBAC(&unk_1EC9C9F70, type metadata accessor for ASWebAuthenticationSessionError, &unk_1D78BC6C4);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1D776C7DC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1D78B5C44();

  *a2 = v3;
  return result;
}

uint64_t sub_1D776C824(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EE08FD60, type metadata accessor for Key, &unk_1D78BC9F4);
  v3 = sub_1D776CBAC(&qword_1EC9C9220, type metadata accessor for Key, &unk_1D78BC1EC);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D776C8E0(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C91B0, type metadata accessor for SKError, &unk_1D78BC4D4);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D776C94C(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C91B0, type metadata accessor for SKError, &unk_1D78BC4D4);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D776C9B8(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C91E0, type metadata accessor for SKError, &unk_1D78BC7D4);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1D776CA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D776CBAC(&qword_1EC9C91E0, type metadata accessor for SKError, &unk_1D78BC7D4);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1D776CAA8(uint64_t a1)
{
  v2 = sub_1D776CBAC(&qword_1EC9C90F0, type metadata accessor for UIContentSizeCategory, &unk_1D78BBFDC);
  v3 = sub_1D776CBAC(&qword_1EC9C90F8, type metadata accessor for UIContentSizeCategory, &unk_1D78BBF7C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D776CBAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D776CC3C()
{
  v0 = sub_1D78B5C74();
  v1 = MEMORY[0x1DA703080](v0);

  return v1;
}

uint64_t sub_1D776CC78(uint64_t a1)
{
  sub_1D78B5C74();
  sub_1D78B5D14();
}

uint64_t sub_1D776CCCC(uint64_t a1)
{
  sub_1D78B5C74();
  sub_1D78B6814();
  sub_1D78B5D14();
  v1 = sub_1D78B6844();

  return v1;
}

uint64_t sub_1D776CD40(void *a1, uint64_t *a2)
{
  v2 = sub_1D78B5C74();
  v4 = v3;
  if (v2 == sub_1D78B5C74() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D78B6724();
  }

  return v7 & 1;
}

unint64_t sub_1D776D158()
{
  result = qword_1EC9C9198;
  if (!qword_1EC9C9198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9198);
  }

  return result;
}

uint64_t sub_1D776D728(void *a1, const void *a2)
{
  v39 = a2;
  v40 = sub_1D78B6214();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D776F504(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D78B3294();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB90 != -1)
  {
    swift_once();
  }

  v16 = qword_1EE09C260;
  v17 = sub_1D78B60A4();
  v18 = sub_1D78B42C4("Fetching subscriptions paywall image...", 39, 2, &dword_1D7739000, v16, v17, MEMORY[0x1E69E7CC0]);
  v19 = v2 + OBJC_IVAR____TtC16NewsSubscription25BundlePaywallDataProvider_viewModel;
  v20 = [a1 userInterfaceStyle];
  v21 = type metadata accessor for BundlePaywallViewModel(0);
  v22 = 68;
  if (v20 == 2)
  {
    v22 = 72;
  }

  sub_1D776F538(v19 + *(v21 + v22), v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D776FA90(v10, sub_1D776F504);
    v23 = sub_1D78B60A4();
    sub_1D78B42C4("Failed to create asset handle for paywall image.  Invalid or mssing URL", 71, 2, &dword_1D7739000, v16, v23, MEMORY[0x1E69E7CC0]);
    v41 = 0;
    sub_1D7740228(0, &unk_1EE0951D0, sub_1D776F59C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4104();
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v25 = *(v2 + 16);
    v26 = v2;
    v27 = sub_1D78B3214();
    v28 = [v25 assetHandleForURL:v27 lifetimeHint:1];

    v29 = sub_1D776DBC0(v26, a1, v39);
    v31 = v30;
    (*(v38 + 104))(v6, *MEMORY[0x1E69D88B0], v40);
    type metadata accessor for PaywallImageProcessorRequest(0);
    v32 = swift_allocObject();
    v33 = v28;
    v34 = sub_1D776F60C(v33, v6, v32, v29, v31);
    v36 = MEMORY[0x1EEE9AC00](v34, v35);
    *(&v38 - 2) = v26;
    *(&v38 - 1) = v36;
    sub_1D7740228(0, &unk_1EE0951D0, sub_1D776F59C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v37 = sub_1D78B4174();

    (*(v12 + 8))(v15, v11);
    return v37;
  }
}

double sub_1D776DBC0(uint64_t a1, void *a2, const void *a3)
{
  sub_1D776F504(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a1 + OBJC_IVAR____TtC16NewsSubscription25BundlePaywallDataProvider_viewModel;
  if ([a2 horizontalSizeClass] == 1 || objc_msgSend(a2, sel_verticalSizeClass) == 1)
  {
    v11 = 84;
  }

  else
  {
    v11 = 88;
  }

  v12 = type metadata accessor for BundlePaywallViewModel(0);
  sub_1D776F538(v10 + *(v12 + v11), v9);
  v13 = sub_1D78B3294();
  v14 = (*(*(v13 - 8) + 48))(v9, 1, v13);
  sub_1D776FA90(v9, sub_1D776F504);
  if (v14 == 1)
  {
    memcpy(v18, a3, 0x1A9uLL);
    if (sub_1D776F604(v18) != 1)
    {
      nullsub_1();
      return *(v15 + 80);
    }

    goto LABEL_9;
  }

  memcpy(v18, a3, 0x1A9uLL);
  if (sub_1D776F604(v18) == 1)
  {
LABEL_9:
    nullsub_1();
    return 0.0;
  }

  nullsub_1();
  return *(v17 + 16);
}

void sub_1D776DD70(void *a1, void *a2, void (*a3)(void *))
{
  if (a1)
  {
    v5 = qword_1EE08FB90;
    v6 = a1;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = qword_1EE09C260;
    v8 = sub_1D78B60A4();
    sub_1D78B42C4("Successfully retrieved paywall image.", 37, 2, &dword_1D7739000, v7, v8, MEMORY[0x1E69E7CC0]);
    v16 = v6;
    a3(a1);
  }

  else
  {
    if (qword_1EE08FB90 != -1)
    {
      swift_once();
    }

    v10 = qword_1EE09C260;
    v11 = sub_1D78B6094();
    v12.n128_f64[0] = sub_1D78B42C4("Failed to create paywall image from asset handle.", 49, 2, &dword_1D7739000, v10, v11, MEMORY[0x1E69E7CC0]);
    if (a2)
    {
      v13 = a2;
      v14 = sub_1D78B6094();
      sub_1D774FE1C(0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1D78BCAB0;
      sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
      sub_1D78B6504();
      *(v15 + 56) = MEMORY[0x1E69E6158];
      *(v15 + 64) = sub_1D775ABD4();
      *(v15 + 32) = 0;
      *(v15 + 40) = 0xE000000000000000;
      sub_1D78B42C4("Error:  %{public}@", 18, 2, &dword_1D7739000, v10, v14, v15);
    }

    (a3)(0, v12);
  }
}

uint64_t sub_1D776DFC0(void *a1, const void *a2)
{
  v3 = v2;
  v44 = a2;
  v5 = sub_1D78B6214();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D776F504(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D78B3294();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB90 != -1)
  {
    swift_once();
  }

  v17 = qword_1EE09C260;
  v18 = sub_1D78B60A4();
  v19 = sub_1D78B42C4("Fetching subscriptions paywall badge image...", 45, 2, &dword_1D7739000, v17, v18, MEMORY[0x1E69E7CC0]);
  v20 = v2 + OBJC_IVAR____TtC16NewsSubscription25BundlePaywallDataProvider_viewModel;
  v21 = [a1 userInterfaceStyle];
  v22 = type metadata accessor for BundlePaywallViewModel(0);
  v23 = 76;
  if (v21 == 2)
  {
    v23 = 80;
  }

  sub_1D776F538(v20 + *(v22 + v23), v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D776FA90(v11, sub_1D776F504);
    v24 = sub_1D78B60A4();
    sub_1D78B42C4("Failed to create asset handle for paywall badge image.  Invalid or mssing URL", 77, 2, &dword_1D7739000, v17, v24, MEMORY[0x1E69E7CC0]);
    v48[0] = 0;
    sub_1D7740228(0, &unk_1EE0951D0, sub_1D776F59C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4104();
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v26 = *(v2 + 16);
    v27 = sub_1D78B3214();
    v28 = [v26 assetHandleForURL:v27 lifetimeHint:1];

    memcpy(v48, v44, 0x1A9uLL);
    v29 = v3;
    if (sub_1D776F604(v48) == 1)
    {
      nullsub_1();
      v31 = (v30 + 208);
      v32 = (v30 + 216);
    }

    else
    {
      nullsub_1();
      v31 = (v33 + 112);
      v32 = (v33 + 120);
    }

    v34 = *v32;
    v35 = *v31;
    v36 = v47;
    (*(v45 + 104))(v47, *MEMORY[0x1E69D88B8], v46);
    type metadata accessor for PaywallImageProcessorRequest(0);
    v37 = swift_allocObject();
    v38 = v28;
    v39 = sub_1D776F60C(v38, v36, v37, v35, v34);
    v41 = MEMORY[0x1EEE9AC00](v39, v40);
    *(&v43 - 2) = v29;
    *(&v43 - 1) = v41;
    sub_1D7740228(0, &unk_1EE0951D0, sub_1D776F59C, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v42 = sub_1D78B4174();

    (*(v13 + 8))(v16, v12);
    return v42;
  }
}

uint64_t sub_1D776E494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = *a6;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  __swift_project_boxed_opaque_existential_1(a5 + 3, a5[6]);
  v18[3] = v14;
  v18[4] = sub_1D776F8D8();
  v18[0] = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = a9;
  *(v16 + 24) = v15;

  sub_1D78B4664();

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

void sub_1D776E5A8(uint64_t a1, id a2, void (*a3)(uint64_t, double))
{
  if (a2)
  {
    v5 = a2;
    if (qword_1EE08FB90 != -1)
    {
      swift_once();
    }

    v6 = qword_1EE09C260;
    v7 = sub_1D78B6094();
    sub_1D78B42C4("Failed to create paywall image from asset handle.", 49, 2, &dword_1D7739000, v6, v7, MEMORY[0x1E69E7CC0]);
    v8 = sub_1D78B6094();
    sub_1D774FE1C(0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D78BCAB0;
    sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
    sub_1D78B6504();
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1D775ABD4();
    *(v9 + 32) = 0;
    *(v9 + 40) = 0xE000000000000000;
    sub_1D78B42C4("Error:  %{public}@", 18, 2, &dword_1D7739000, v6, v8, v9);

    (a3)(0);
  }

  else
  {
    if (qword_1EE08FB90 != -1)
    {
      swift_once();
    }

    v11 = qword_1EE09C260;
    v12 = sub_1D78B60A4();
    v13 = sub_1D78B42C4("Successfully retrieved paywall badge image.", 43, 2, &dword_1D7739000, v11, v12, MEMORY[0x1E69E7CC0]);
    a3(a1, v13);
  }
}

uint64_t sub_1D776E7B8(void *a1)
{
  sub_1D776F504(0);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v31 - v9;
  v11 = sub_1D78B3294();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB90 != -1)
  {
    swift_once();
  }

  v16 = qword_1EE09C260;
  v17 = sub_1D78B60A4();
  v18 = sub_1D78B42C4("Fetching subscriptions paywall video file path...", 49, 2, &dword_1D7739000, v16, v17, MEMORY[0x1E69E7CC0]);
  v19 = v1 + OBJC_IVAR____TtC16NewsSubscription25BundlePaywallDataProvider_viewModel;
  if ([a1 horizontalSizeClass] == 1 || objc_msgSend(a1, sel_verticalSizeClass) == 1)
  {
    v20 = 84;
  }

  else
  {
    v20 = 88;
  }

  v21 = type metadata accessor for BundlePaywallViewModel(0);
  sub_1D776F538(v19 + *(v21 + v20), v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D776FA90(v10, sub_1D776F504);
    v22 = sub_1D78B6094();
    v23 = sub_1D78B42C4("Failed to create asset handle for paywall video.  Video will not be displayed.", 78, 2, &dword_1D7739000, v16, v22, MEMORY[0x1E69E7CC0]);
    (*(v12 + 56))(v7, 1, 1, v11, v23);
    sub_1D7740228(0, &unk_1EE0952C0, sub_1D776F504, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4104();
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v25 = *(v1 + 16);
    v26 = sub_1D78B3214();
    v27 = [v25 assetHandleForURL:v26 lifetimeHint:1];

    MEMORY[0x1EEE9AC00](v28, v29);
    *(&v31 - 2) = v27;
    sub_1D7740228(0, &unk_1EE0952C0, sub_1D776F504, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v30 = sub_1D78B4174();

    (*(v12 + 8))(v15, v11);
    return v30;
  }
}

uint64_t sub_1D776EB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = swift_allocObject();
  v8[2] = a5;
  v8[3] = a1;
  v8[4] = a2;
  v13[4] = sub_1D776FA84;
  v13[5] = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D775FB6C;
  v13[3] = &block_descriptor;
  v9 = _Block_copy(v13);
  v10 = a5;

  v11 = [v10 downloadIfNeededWithPriority:-1 completion:v9];
  _Block_release(v9);
  return swift_unknownObjectRelease();
}

uint64_t sub_1D776ECA0(void *a1, void (*a2)(char *))
{
  sub_1D776F504(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 filePath];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1D78B5C74();
    v12 = v11;

    if (qword_1EE08FB90 != -1)
    {
      swift_once();
    }

    v13 = qword_1EE09C260;
    sub_1D774FE1C(0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D78BCAB0;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1D775ABD4();
    *(v14 + 32) = v10;
    *(v14 + 40) = v12;

    v15 = sub_1D78B60A4();
    sub_1D78B42C4("Successfully retrieved paywall video file path: %{public}@", 58, 2, &dword_1D7739000, v13, v15, v14);

    sub_1D78B31F4();

    v16 = sub_1D78B3294();
    (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  }

  else
  {
    if (qword_1EE08FB90 != -1)
    {
      swift_once();
    }

    v17 = qword_1EE09C260;
    v18 = sub_1D78B60A4();
    sub_1D78B42C4("Failed to download paywall video.  Video will not be displayed.", 63, 2, &dword_1D7739000, v17, v18, MEMORY[0x1E69E7CC0]);
    v19 = sub_1D78B3294();
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  }

  a2(v7);
  return sub_1D776FA90(v7, sub_1D776F504);
}

uint64_t sub_1D776EF28(void *a1)
{
  sub_1D776F504(0);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
  v11 = sub_1D78B3294();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1 + OBJC_IVAR____TtC16NewsSubscription25BundlePaywallDataProvider_viewModel;
  v17 = [a1 userInterfaceStyle];
  v18 = type metadata accessor for BundlePaywallViewModel(0);
  v19 = 68;
  if (v17 == 2)
  {
    v19 = 72;
  }

  sub_1D776F538(v16 + *(v18 + v19), v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D776FA90(v10, sub_1D776F504);
    v20 = 0;
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    (*(v12 + 16))(v7, v15, v11);
    (*(v12 + 56))(v7, 0, 1, v11);
    v21 = sub_1D776F180(v7);
    sub_1D776FA90(v7, sub_1D776F504);
    (*(v12 + 8))(v15, v11);
    v20 = v21 ^ 1;
  }

  return v20 & 1;
}

uint64_t sub_1D776F180(uint64_t a1)
{
  sub_1D776F504(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D78B3294();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D776F538(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D776FA90(v6, sub_1D776F504);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v12 = *(v1 + 16);
    v13 = sub_1D78B3214();
    v14 = [v12 assetHandleForURL:v13 lifetimeHint:1];

    v15 = [v14 filePath];
    if (v15)
    {

      (*(v8 + 8))(v11, v7);
      return 1;
    }

    (*(v8 + 8))(v11, v7);
  }

  return 0;
}

uint64_t sub_1D776F380()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  sub_1D776FA90(v0 + OBJC_IVAR____TtC16NewsSubscription25BundlePaywallDataProvider_viewModel, type metadata accessor for BundlePaywallViewModel);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BundlePaywallDataProvider(uint64_t a1)
{
  result = qword_1EE0928B8;
  if (!qword_1EE0928B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D776F45C(uint64_t a1)
{
  result = type metadata accessor for BundlePaywallViewModel(319);
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

uint64_t sub_1D776F538(uint64_t a1, uint64_t a2)
{
  sub_1D776F504(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D776F59C(uint64_t a1)
{
  if (!qword_1EE08FBE0)
  {
    sub_1D773F004(255, &qword_1EE08FBE8, 0x1E69DCAB8);
    v1 = sub_1D78B62A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE08FBE0);
    }
  }
}

uint64_t sub_1D776F60C(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v20[3] = sub_1D773F004(0, &qword_1EE08E598, 0x1E69B51B8);
  v20[4] = sub_1D776F938();
  v20[0] = a1;
  sub_1D774584C(v20, a3 + OBJC_IVAR____TtC16NewsSubscription28PaywallImageProcessorRequest_assetHandle);
  sub_1D7740228(0, &qword_1EE08FA48, sub_1D776F9A0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BCAB0;
  strcpy((inited + 32), "paywallImage");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  sub_1D774584C(v20, inited + 48);
  v11 = sub_1D77FEC44(inited);
  swift_setDeallocating();
  sub_1D776FA90(inited + 32, sub_1D776F9A0);
  *(a3 + OBJC_IVAR____TtC16NewsSubscription28PaywallImageProcessorRequest_assetHandles) = v11;
  *(a3 + 32) = a4;
  *(a3 + 40) = a5;
  v12 = OBJC_IVAR____TtC16NewsSubscription28PaywallImageProcessorRequest_scaling;
  v13 = sub_1D78B6214();
  v14 = *(v13 - 8);
  (*(v14 + 16))(a3 + v12, a2, v13);
  v15 = [a1 uniqueKey];
  v16 = sub_1D78B5C74();
  v18 = v17;

  MEMORY[0x1DA702FF0](v16, v18);

  MEMORY[0x1DA702FF0](14906, 0xE200000000000000);
  type metadata accessor for CGSize(0);
  sub_1D78B6504();
  (*(v14 + 8))(a2, v13);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0xE000000000000000;
  __swift_destroy_boxed_opaque_existential_1(v20);
  return a3;
}

unint64_t sub_1D776F8D8()
{
  result = qword_1EE08EA78;
  if (!qword_1EE08EA78)
  {
    type metadata accessor for PaywallImageProcessorRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08EA78);
  }

  return result;
}

unint64_t sub_1D776F938()
{
  result = qword_1EE08E5A0;
  if (!qword_1EE08E5A0)
  {
    sub_1D773F004(255, &qword_1EE08E598, 0x1E69B51B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08E5A0);
  }

  return result;
}

void sub_1D776F9A0(uint64_t a1)
{
  if (!qword_1EE090110)
  {
    sub_1D773C9B8(255, &qword_1EE090480, MEMORY[0x1E69D7838]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE090110);
    }
  }
}

uint64_t sub_1D776FA90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D776FB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE09C268;
  v6 = sub_1D78B6094();
  sub_1D774FE1C(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D78BCB50;
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D775ABD4();
  *(v7 + 64) = v9;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);

  sub_1D78B6504();
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0xE000000000000000;
  sub_1D78B42C4("SubscriptionOffersDataManager failed to fetch purchase model for purchaseID: %{public}@ with error: %{public}@", 110, 2, &dword_1D7739000, v5, v6, v7);
}

uint64_t sub_1D776FC54(uint64_t a1, uint64_t a2)
{
  v23[1] = *v2;
  v5 = type metadata accessor for PurchaseContext(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  v11 = sub_1D7788F60(v10, v9);
  if (v11)
  {
    v13 = v11;
    MEMORY[0x1EEE9AC00](v11, v12);
    v23[-2] = v2;
    v23[-1] = a1;
    sub_1D78B41F4();
    sub_1D7770378(a1, v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    sub_1D777044C(v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
    *(v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
    swift_unknownObjectRetain();
    v16 = v13;
    v17 = sub_1D78B4014();
    type metadata accessor for HideMyEmailSignupDataModel(0);
    v18 = sub_1D78B40B4();

    return v18;
  }

  else
  {
    if (qword_1EC9C8448 != -1)
    {
      swift_once();
    }

    v20 = qword_1EC9D9DF0;
    sub_1D774FE1C(0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D78BCAB0;
    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = sub_1D775ABD4();
    *(v21 + 32) = v10;
    *(v21 + 40) = v9;

    v22 = sub_1D78B60A4();
    sub_1D78B42C4("Cannot create data model since no config exists for channel: %@", 63, 2, &dword_1D7739000, v20, v22, v21);

    sub_1D7770288();
    swift_allocError();
    sub_1D77702DC(0);
    swift_allocObject();
    return sub_1D78B40F4();
  }
}

uint64_t sub_1D776FF64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v28 = a1[3];
  v26 = a1[4];
  v27 = a1[2];
  v30 = a1[5];
  v9 = a1[7];
  v25 = a1[6];
  v10 = *(a2 + 112);
  v11 = [v10 appStoreEmailAddress];
  if (v11)
  {
    v12 = v8;
    v13 = v11;
    v8 = sub_1D78B5C74();
    v15 = v14;
  }

  else
  {
    v16 = [v10 allEmailAddresses];
    v17 = sub_1D78B5EB4();

    if (v17[2])
    {
      v12 = v8;
      v8 = v17[4];
      v15 = v17[5];
    }

    else
    {

      v12 = v8;
      v15 = v7;
    }
  }

  v18 = [v10 &selRef_paywallDescription + 7];
  v19 = sub_1D78B5EB4();

  v20 = type metadata accessor for HideMyEmailSignupDataModel(0);
  sub_1D7770378(a4, a6 + *(v20 + 40));
  *a6 = 2;
  *(a6 + 8) = v8;
  *(a6 + 16) = v15;
  *(a6 + 24) = v19;
  *(a6 + 32) = v12;
  *(a6 + 40) = v7;
  *(a6 + 48) = v27;
  *(a6 + 56) = v28;
  *(a6 + 64) = v26;
  *(a6 + 72) = v30;
  *(a6 + 80) = v25;
  *(a6 + 88) = v9;
  *(a6 + 96) = 0;
  *(a6 + 104) = a3;
  *(a6 + *(v20 + 44)) = a5;

  swift_unknownObjectRetain();
  v21 = a5;
}

uint64_t sub_1D7770134()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_1D77701A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  (*(v7 + 48))(a1, a2, a3, ObjectType, v7);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  v10 = sub_1D78B4014();
  v11 = sub_1D78B40D4();

  return v11;
}

unint64_t sub_1D7770288()
{
  result = qword_1EC9C95A8;
  if (!qword_1EC9C95A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C95A8);
  }

  return result;
}

void sub_1D77702DC(uint64_t a1)
{
  if (!qword_1EC9C95B0)
  {
    type metadata accessor for HideMyEmailSignupDataModel(255);
    v1 = sub_1D78B4184();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9C95B0);
    }
  }
}

uint64_t sub_1D7770334()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1((v1 + 72), *(v1 + 96));
  return sub_1D7867148(*(v2 + 40), *(v2 + 48));
}

uint64_t sub_1D7770378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D77703DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    if (a7 != 1)
    {
      return;
    }
  }
}

uint64_t sub_1D777044C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77704B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for PurchaseContext(0) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  return sub_1D776FF64(a1, a2, *(v3 + 16), v3 + v8, *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), a3);
}

unint64_t sub_1D7770578()
{
  result = qword_1EC9C95B8;
  if (!qword_1EC9C95B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C95B8);
  }

  return result;
}

void *sub_1D77705CC(uint64_t *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = [Strong traitCollection];
  swift_unknownObjectRelease();
  v5 = [v4 userInterfaceStyle];

  v6 = *a1;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (*(v7 + 16) && (v8 = sub_1D777BC2C(v5), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    v11 = v10;
  }

  else
  {
    v10 = 0;
  }

  swift_endAccess();
  return v10;
}

uint64_t sub_1D77706A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_bundleSoftPaywallView);
  v2 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_subscribeButton);
  v3 = sub_1D78B4844();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_offersButton);
  v5 = sub_1D78B4514();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v6 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_webAuthButton);
  v7 = sub_1D78B4514();

  swift_allocObject();
  swift_unknownObjectWeakInit();
}

void sub_1D7770858(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = &v2[OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_viewModel];
      v6 = *(type metadata accessor for BundlePaywallViewModel(0) + 44);
      v7 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
      ObjectType = swift_getObjectType();
      v9 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v11 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v10 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v46[2] = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v46[3] = v9;
      v46[0] = v11;
      v46[1] = v10;
      v12 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v14 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v13 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v46[6] = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v46[7] = v12;
      v46[4] = v14;
      v46[5] = v13;
      v15 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v17 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v16 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v46[10] = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v46[11] = v15;
      v46[8] = v17;
      v46[9] = v16;
      v18 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v20 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v19 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v46[14] = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v46[15] = v18;
      v46[12] = v20;
      v46[13] = v19;
      v21 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v42 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v43 = v21;
      v22 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v44 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v45 = v22;
      v23 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v38 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v39 = v23;
      v24 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v40 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v41 = v24;
      v25 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v34 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v35 = v25;
      v26 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v36 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v37 = v26;
      v27 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v30 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v31 = v27;
      v28 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v32 = *(v4 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v33 = v28;
      v29 = *(v7 + 72);
      sub_1D7772AE8(v46, v47);
      v29(&v5[v6], &v30, ObjectType, v7);

      v47[12] = v42;
      v47[13] = v43;
      v47[14] = v44;
      v47[15] = v45;
      v47[8] = v38;
      v47[9] = v39;
      v47[10] = v40;
      v47[11] = v41;
      v47[4] = v34;
      v47[5] = v35;
      v47[6] = v36;
      v47[7] = v37;
      v47[0] = v30;
      v47[1] = v31;
      v47[2] = v32;
      v47[3] = v33;
      sub_1D7772B44(v47);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1D7770A28(uint64_t a1)
{
  v1 = type metadata accessor for BundlePaywallViewModel(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D774028C(0, qword_1EE092E50, type metadata accessor for OffersButtonDestination, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v38 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_unknownObjectWeakLoadStrong();

    if (v11)
    {
      swift_beginAccess();
      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12)
      {
        v13 = v12;
        sub_1D77726B0(v12 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_viewModel, v4);

        sub_1D7772714(&v4[*(v1 + 56)], v8, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
        sub_1D7772B98(v4, type metadata accessor for BundlePaywallViewModel);
      }

      else
      {
        v14 = type metadata accessor for OffersButtonDestination(0);
        (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
      }

      v15 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
      ObjectType = swift_getObjectType();
      v54 = 2;
      v17 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v19 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v18 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v55[2] = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v55[3] = v17;
      v55[0] = v19;
      v55[1] = v18;
      v20 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v22 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v21 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v55[6] = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v55[7] = v20;
      v55[4] = v22;
      v55[5] = v21;
      v23 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v25 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v24 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v55[10] = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v55[11] = v23;
      v55[8] = v25;
      v55[9] = v24;
      v26 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v28 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v27 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v55[14] = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v55[15] = v26;
      v55[12] = v28;
      v55[13] = v27;
      v29 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v50 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v51 = v29;
      v30 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v52 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v53 = v30;
      v31 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v46 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v47 = v31;
      v32 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v48 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v49 = v32;
      v33 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v42 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v43 = v33;
      v34 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v44 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v45 = v34;
      v35 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v38 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v39 = v35;
      v36 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v40 = *(v11 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v41 = v36;
      v37 = *(v15 + 80);
      sub_1D7772AE8(v55, v56);
      v37(&v54, v8, &v38, ObjectType, v15);
      sub_1D7772794(v8, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
      v56[12] = v50;
      v56[13] = v51;
      v56[14] = v52;
      v56[15] = v53;
      v56[8] = v46;
      v56[9] = v47;
      v56[10] = v48;
      v56[11] = v49;
      v56[4] = v42;
      v56[5] = v43;
      v56[6] = v44;
      v56[7] = v45;
      v56[0] = v38;
      v56[1] = v39;
      v56[2] = v40;
      v56[3] = v41;
      sub_1D7772B44(v56);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1D7770D8C(uint64_t a1)
{
  if (qword_1EE08FB90 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE09C260;
  v2 = sub_1D78B60A4();
  sub_1D78B42C4("Bundle soft paywall already subscriber button onTap", 51, 2, &dword_1D7739000, v1, v2, MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;

      v7 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
      ObjectType = swift_getObjectType();
      v9 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v11 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v10 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v46[2] = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v46[3] = v9;
      v46[0] = v11;
      v46[1] = v10;
      v12 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v14 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v13 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v46[6] = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v46[7] = v12;
      v46[4] = v14;
      v46[5] = v13;
      v15 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v17 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v16 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v46[10] = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v46[11] = v15;
      v46[8] = v17;
      v46[9] = v16;
      v18 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v20 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v19 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v46[14] = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v46[15] = v18;
      v46[12] = v20;
      v46[13] = v19;
      v21 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v42 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v43 = v21;
      v22 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v44 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v45 = v22;
      v23 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v38 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v39 = v23;
      v24 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v40 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v41 = v24;
      v25 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v34 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v35 = v25;
      v26 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v36 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v37 = v26;
      v27 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v30 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v31 = v27;
      v28 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v32 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v33 = v28;
      v29 = *(v7 + 88);
      sub_1D7772AE8(v46, v47);
      v29(&v30, ObjectType, v7);
      v47[12] = v42;
      v47[13] = v43;
      v47[14] = v44;
      v47[15] = v45;
      v47[8] = v38;
      v47[9] = v39;
      v47[10] = v40;
      v47[11] = v41;
      v47[4] = v34;
      v47[5] = v35;
      v47[6] = v36;
      v47[7] = v37;
      v47[0] = v30;
      v47[1] = v31;
      v47[2] = v32;
      v47[3] = v33;
      sub_1D7772B44(v47);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1D7770FA0(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = v1 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_viewModel;
  v4 = type metadata accessor for BundlePaywallViewModel(0);
  v5 = 92;
  if (v2 == 2)
  {
    v5 = 96;
  }

  v6 = *(v3 + *(v4 + v5));
  v7 = (v1 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_styler);
  v9 = *(v1 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_styler + 24);
  v8 = *(v1 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_styler + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_styler), v9);
  v10 = *(v1 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_bundleSoftPaywallView);
  v11 = *(v8 + 8);
  v12 = *(v11 + 8);
  v13 = v6;
  v12(v10, v6, v9, v11);
  [*(v10 + OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_headerImageView) setContentMode_];
  v14 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v15 = *(*(v14 + 8) + 16);
  v16 = *(v10 + OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_badgeImageView);
  v15();

  v17 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v18 = *(*(v17 + 8) + 32);
  v19 = *(v10 + OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_titleTextView);
  v18();

  v20 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v21 = *(*(v20 + 8) + 24);
  v22 = *(v10 + OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_descriptionTextView);
  v21();

  v23 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v24 = *(*(v23 + 8) + 40);
  v25 = *(v10 + OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_subscribeButton);
  v24();

  v26 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v27 = *(*(v26 + 8) + 88);
  v28 = *(v10 + OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_webAuthButton);
  v27();
}

uint64_t sub_1D7771244(uint64_t a1)
{
  v1 = sub_1D78B4014();
  sub_1D776F59C(0);
  v2 = sub_1D78B4214();

  return v2;
}

uint64_t sub_1D77712A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  result = sub_1D7772898(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
  }

  return result;
}

uint64_t sub_1D77712C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v26 = a4;
  v27 = a6;
  v25 = a1;
  v8 = type metadata accessor for BundlePaywallRenderModel(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E6968FB0];
  sub_1D774028C(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v24 - v15;
  v17 = OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_videoFileURL;
  swift_beginAccess();
  sub_1D7772714(a2 + v17, v16, &unk_1EE096460, v12);
  v18 = sub_1D78B3294();
  v19 = (*(*(v18 - 8) + 48))(v16, 1, v18);
  sub_1D7772794(v16, &unk_1EE096460, v12);
  if (v19 == 1)
  {
    swift_beginAccess();
    sub_1D7772804(v25, a2 + v17);
    swift_endAccess();
    sub_1D77726B0(a2 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_viewModel, v11);
    v20 = sub_1D77705CC(&OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_images);
    v21 = sub_1D77705CC(&OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_badgeImages);
    sub_1D7772714(a2 + v17, &v11[v8[7]], &unk_1EE096460, MEMORY[0x1E6968FB0]);
    *&v11[v8[5]] = v20;
    *&v11[v8[6]] = v21;
    v22 = [v26 traitCollection];
    sub_1D77CBF70(v11, a3, v22, *(a2 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_bundleSoftPaywallView));

    sub_1D7772B98(v11, type metadata accessor for BundlePaywallRenderModel);
  }

  sub_1D7770FA0(v27);
  v28 = *(a3 + 16);
  sub_1D774028C(0, &qword_1EE0951E0, type metadata accessor for CGSize, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t sub_1D77715C0(uint64_t a1)
{
  if (qword_1EE08FB90 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE09C260;
  sub_1D775B5B8(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D78BCAB0;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  sub_1D78B6504();
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D775ABD4();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  v3 = sub_1D78B60A4();
  sub_1D78B42C4("Error rendering soft paywall: %{public}@", 40, 2, &dword_1D7739000, v1, v3, v2);
}

id sub_1D777173C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BundleSoftPaywallViewProvider(uint64_t a1)
{
  result = qword_1EE0918B8;
  if (!qword_1EE0918B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D77718B8(uint64_t a1)
{
  type metadata accessor for BundlePaywallViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1D774028C(319, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D7771A3C(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D7771AC0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_1D78B5B14();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = a3;
  (*(v8 + 104))(v7, *MEMORY[0x1E69B6818]);

  sub_1D78B5B64();
}

uint64_t sub_1D7771D18(__int128 *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for BundlePaywallRenderModel(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 10);
  v10 = v2 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v52 = ObjectType;
    v53 = Strong;
    v12 = *(v10 + 8);
    v13 = [v9 userInterfaceStyle];
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_layoutAttributesFactory), *(v2 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_layoutAttributesFactory + 24));
    v14 = a1[3];
    v59[2] = a1[2];
    v59[3] = v14;
    v59[4] = a1[4];
    v15 = *a1;
    v59[1] = a1[1];
    v59[0] = v15;
    *&v59[5] = v9;
    *(&v59[5] + 8) = *(a1 + 88);
    *(&v59[6] + 8) = *(a1 + 104);
    *(&v59[7] + 8) = *(a1 + 120);
    v50 = OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_viewModel;
    sub_1D77C07B4((v2 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_viewModel), v59, v58);
    memcpy(v57, v58, sizeof(v57));
    v16 = OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_images;
    swift_beginAccess();
    v17 = *(*(v2 + v16) + 16);
    v54 = v13;
    if (v17 && (sub_1D777BC2C(v13), (v18 & 1) != 0))
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      if (sub_1D776EF28(v9))
      {
        type metadata accessor for BundleSoftPaywallRenderer();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v20 = [objc_opt_self() bundleForClass_];
        v48 = *(v2 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_bundleSoftPaywallView);
        v21 = [v48 traitCollection];
        v22 = sub_1D78B5C44();
        v23 = [objc_opt_self() imageNamed:v22 inBundle:v20 compatibleWithTraitCollection:v21];
        v49 = v12;
        v24 = v9;
        v25 = v23;

        swift_beginAccess();
        v26 = v25;
        v9 = v24;
        v12 = v49;
        sub_1D7827AE8(v26, v54);
        swift_endAccess();
        sub_1D77726B0(v2 + v50, v8);
        v27 = sub_1D77705CC(&OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_images);
        v28 = sub_1D77705CC(&OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_badgeImages);
        v29 = OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_videoFileURL;
        swift_beginAccess();
        sub_1D7772714(v2 + v29, &v8[v5[7]], &unk_1EE096460, MEMORY[0x1E6968FB0]);
        *&v8[v5[5]] = v27;
        *&v8[v5[6]] = v28;
        sub_1D77CBF70(v8, v58, v9, v48);
        sub_1D7772B98(v8, type metadata accessor for BundlePaywallRenderModel);
      }
    }

    v51 = v9;
    v30 = sub_1D776E7B8(v9);
    sub_1D777246C();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1D78BCCA0;
    memcpy(v56, v57, 0x148uLL);
    sub_1D77724C0(v56);
    memcpy(v59, v56, 0x1A9uLL);
    sub_1D77724C8(v58, v55);
    *(v31 + 32) = sub_1D776D728(v9, v59);
    v32 = sub_1D776DFC0(v9, v59);
    v33 = sub_1D7772524(v58);
    *(v31 + 40) = v32;
    MEMORY[0x1EEE9AC00](v33, v34);
    *(&v47 - 2) = v31;
    sub_1D7772594(0);
    sub_1D78B41F4();

    sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
    v35 = sub_1D78B6104();
    v36 = swift_allocObject();
    v36[2] = v54;
    memcpy(v36 + 3, v58, 0x148uLL);
    v37 = v53;
    v36[44] = v53;
    v36[45] = v12;
    v50 = v30;
    v36[46] = v30;
    sub_1D77724C8(v58, v55);
    sub_1D774028C(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    swift_unknownObjectRetain();

    v54 = v2;
    sub_1D78B40A4();

    v38 = sub_1D78B6104();
    v39 = swift_allocObject();
    memcpy(v39 + 2, v58, 0x148uLL);
    v39[43] = v37;
    v39[44] = v12;
    v40 = v51;
    v39[45] = v51;
    sub_1D77724C8(v58, v55);
    type metadata accessor for CGSize(0);
    swift_unknownObjectRetain();
    v41 = v40;
    sub_1D78B40A4();

    v42 = sub_1D78B4014();
    v43 = sub_1D78B40D4();

    sub_1D7772524(v58);
    swift_unknownObjectRelease();
    return v43;
  }

  else
  {
    if (qword_1EE08FB90 != -1)
    {
      swift_once();
    }

    v45 = qword_1EE09C260;
    v46 = sub_1D78B6094();
    sub_1D78B42C4("Failed to render bundle soft paywall because no paywall view delegate was assigned!", 83, 2, &dword_1D7739000, v45, v46, MEMORY[0x1E69E7CC0]);
    sub_1D774028C(0, &qword_1EE0951E0, type metadata accessor for CGSize, MEMORY[0x1E69D6B18]);
    v59[0] = 0uLL;
    swift_allocObject();
    return sub_1D78B4104();
  }
}

void sub_1D777246C()
{
  if (!qword_1EE08FA00)
  {
    v0 = sub_1D78B66F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08FA00);
    }
  }
}

void sub_1D7772594(uint64_t a1)
{
  if (!qword_1EE08FFB0)
  {
    sub_1D774028C(255, &qword_1EE08FFA8, sub_1D776F59C, MEMORY[0x1E69E62F8]);
    sub_1D775B5B8(255, &qword_1EE08FFA0, &qword_1EE08F9F0, MEMORY[0x1E69E7280], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE08FFB0);
    }
  }
}

uint64_t sub_1D77726B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundlePaywallViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7772714(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D774028C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7772794(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D774028C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7772804(uint64_t a1, uint64_t a2)
{
  sub_1D774028C(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7772898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v27 = a4;
  v12 = type metadata accessor for BundlePaywallRenderModel(0);
  result = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  if (*(*a1 + 16))
  {
    v26 = a7;
    v18 = v17[4];
    swift_beginAccess();
    v19 = v18;
    sub_1D7827AE8(v18, a3);
    result = swift_endAccess();
    if (v17[2] >= 2uLL)
    {
      v20 = v17[5];
      swift_beginAccess();
      v21 = v20;
      sub_1D7827AE8(v20, a3);
      swift_endAccess();
      sub_1D77726B0(a2 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_viewModel, v16);
      v22 = sub_1D77705CC(&OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_images);
      v23 = sub_1D77705CC(&OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_badgeImages);
      v24 = OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_videoFileURL;
      swift_beginAccess();
      sub_1D7772714(a2 + v24, &v16[v12[7]], &unk_1EE096460, MEMORY[0x1E6968FB0]);
      *&v16[v12[5]] = v22;
      *&v16[v12[6]] = v23;
      v25 = [a5 traitCollection];
      sub_1D77CBF70(v16, v27, v25, *(a2 + OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_bundleSoftPaywallView));

      sub_1D7772B98(v16, type metadata accessor for BundlePaywallRenderModel);
      return v26;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7772B98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1D7772BF8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 104))(a1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  return a2 != 0;
}

id sub_1D7772DD4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D7772E20(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D7772EB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1D7772EF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7772F68(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_1D78B64D4();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v4 += 2;
      v6 = v5;
      sub_1D78B64B4();
      sub_1D78B64E4();
      sub_1D78B64F4();
      sub_1D78B64C4();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1D7773010(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D7773058(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D77730B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7773100(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7773164(uint64_t a1)
{
  v1 = a1 - 48;
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = (v1 + 80);
    v4 = *(v1 + 144) >> 60;
    v1 += 80;
    if (v4 == 6)
    {
      v5 = *v3;

      return v5;
    }
  }

  return 0;
}

uint64_t sub_1D77731CC(uint64_t a1)
{
  v1 = a1 - 48;
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = (v1 + 80);
    v4 = *(v1 + 144) >> 60;
    v1 += 80;
    if (v4 == 7)
    {
      v5 = *v3;

      return v5;
    }
  }

  return 0;
}

uint64_t sub_1D7773234(uint64_t a1)
{
  v1 = a1 - 48;
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 80;
    v4 = *(v1 + 144) >> 60;
    v1 += 80;
    if (v4 == 4)
    {
      return *v3;
    }
  }

  return 0;
}

BOOL Array<A>.hasAdTrait()(uint64_t a1)
{
  v1 = (a1 + 96);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *v1;
    v1 += 10;
  }

  while (v3 >> 60 != 6);
  return v2 != 0;
}

BOOL Array<A>.hasArticleTrait()(uint64_t a1)
{
  v1 = (a1 + 96);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *v1;
    v1 += 10;
  }

  while (v3 >> 60);
  return v2 != 0;
}

BOOL Array<A>.hasFeedTrait()(uint64_t a1)
{
  v1 = (a1 + 96);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *v1;
    v1 += 10;
  }

  while (v3 >> 60 != 4);
  return v2 != 0;
}

unint64_t sub_1D7773304(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 1702060386;
    v5 = 0xD000000000000014;
    if (a1 == 2)
    {
      v5 = 0xD000000000000015;
    }

    if (a1)
    {
      v4 = 0xD000000000000017;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000016;
    if (a1 == 6)
    {
      v1 = 0xD000000000000018;
    }

    v2 = 0xD000000000000015;
    if (a1 != 4)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D7773450(uint64_t a1, unsigned __int8 a2)
{
  sub_1D78B5D14();
}

uint64_t sub_1D777357C(uint64_t a1, unsigned __int8 a2)
{
  sub_1D78B5D14();
}

unint64_t sub_1D77736E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D7777A04(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D7773718@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D7773304(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D7773760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7777A04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D77737A0(uint64_t a1)
{
  v2 = sub_1D7776460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D77737DC(uint64_t a1)
{
  v2 = sub_1D7776460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7773818(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656C6369747261;
    v6 = 0x6575737369;
    if (a1 != 2)
    {
      v6 = 1684366694;
    }

    if (a1)
    {
      v5 = 0x32656C6369747261;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6C61727265666572;
    v2 = 0x656C7A7A7570;
    if (a1 != 7)
    {
      v2 = 0x657069636572;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x70756F7267;
    if (a1 != 4)
    {
      v3 = 25697;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D7773934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v5 = *v3;
  sub_1D78B6814();
  a3(v7, v5);
  return sub_1D78B6844();
}

uint64_t sub_1D77739A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1D78B6814();
  a4(v8, v6);
  return sub_1D78B6844();
}

unint64_t sub_1D77739F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D7777D98(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D7773A20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7773818(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D7773AFC(void *a1)
{
  v3 = v1;
  sub_1D7779BF4(0, &qword_1EC9C9880, sub_1D7777CF0, &type metadata for PurchaseTraits.ArticleAssociatedValues.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7777CF0();
  sub_1D78B6884();
  v16 = 0;
  sub_1D78B6684();
  if (!v2)
  {
    v15 = 1;
    sub_1D78B6654();
    v14 = 2;
    sub_1D78B6654();
    v12[1] = *(v3 + 48);
    v13 = 3;
    sub_1D7777D44(0, &qword_1EE090010, MEMORY[0x1E69E62F8]);
    sub_1D775DC34(&qword_1EC9C9888, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D78B66B4();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D7773D38(void *a1)
{
  sub_1D7779BF4(0, &qword_1EC9C9860, sub_1D7777C48, &type metadata for PurchaseTraits.PuzzleAssociatedValues.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7777C48();
  sub_1D78B6884();
  v17 = 0;
  sub_1D78B6684();
  if (!v1)
  {
    v16 = 1;
    sub_1D78B6684();
    v15 = 2;
    sub_1D78B66C4();
    v14 = 3;
    sub_1D78B6674();
    v13 = 4;
    sub_1D78B6674();
    v12 = 5;
    sub_1D78B6694();
    v11 = 6;
    sub_1D78B66A4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D7773F6C(void *a1)
{
  sub_1D7779BF4(0, &qword_1EC9C9858, sub_1D7777BF4, &type metadata for PurchaseTraits.FeedAssociatedValues.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7777BF4();
  sub_1D78B6884();
  v13 = 0;
  sub_1D78B66A4();
  if (!v1)
  {
    v12 = 1;
    sub_1D78B6654();
    v11 = 2;
    sub_1D78B6654();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D7774118(void *a1)
{
  sub_1D7779BF4(0, &qword_1EC9C9850, sub_1D7777BA0, &type metadata for PurchaseTraits.GroupAssociatedValues.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7777BA0();
  sub_1D78B6884();
  v15 = 0;
  sub_1D78B6684();
  if (!v1)
  {
    v14 = 1;
    sub_1D78B66A4();
    v13 = 2;
    sub_1D78B6684();
    v12 = 3;
    sub_1D78B66A4();
    v11 = 4;
    sub_1D78B66A4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D7774304(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  sub_1D7779BF4(0, &qword_1EC9C9840, sub_1D7777B4C, &type metadata for PurchaseTraits.AdAssociatedValues.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7777B4C();
  sub_1D78B6884();
  v16 = 0;
  v11 = v13[1];
  sub_1D78B6684();
  if (!v11)
  {
    v15 = 1;
    sub_1D78B6694();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D77744A4(void *a1)
{
  sub_1D7779BF4(0, &qword_1EC9C9830, sub_1D7777AF8, &type metadata for PurchaseTraits.ReferralAssociatedValues.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7777AF8();
  sub_1D78B6884();
  v13 = 0;
  sub_1D78B6684();
  if (!v1)
  {
    v12 = 1;
    sub_1D78B6654();
    v11 = 2;
    sub_1D78B6654();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D7774650(void *a1)
{
  sub_1D7779BF4(0, &qword_1EC9C9820, sub_1D7777AA4, &type metadata for PurchaseTraits.RecipeAssociatedValues.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7777AA4();
  sub_1D78B6884();
  v13 = 0;
  sub_1D78B6684();
  if (!v1)
  {
    v12 = 1;
    sub_1D78B6694();
    v11 = 2;
    sub_1D78B6684();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D77747FC()
{
  v1 = 0x49656C6369747261;
  v2 = 0xD000000000000018;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D7774880@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D7777DE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D77748A8(uint64_t a1)
{
  v2 = sub_1D7777CF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D77748E4(uint64_t a1)
{
  v2 = sub_1D7777CF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D7774920@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D7777F5C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1D77749CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x44496575737369 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D78B6724();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D7774A54(uint64_t a1)
{
  v2 = sub_1D7777C9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7774A90(uint64_t a1)
{
  v2 = sub_1D7777C9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7774ACC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a2;
  sub_1D7779BF4(0, &qword_1EC9C98B0, sub_1D7777C9C, &type metadata for PurchaseTraits.IssueAssociatedValues.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7777C9C();
  sub_1D78B6874();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v16;
  v11 = sub_1D78B65E4();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v11;
  v10[1] = v13;
  return result;
}