uint64_t PurchasesContentMode.toggleIsHiddenText.getter()
{
  if (*v0 > 1u)
  {
    v2 = 0x80000001E1B73700;
    v1 = 0xD000000000000010;
  }

  else
  {
    v1 = 0x4553414843525550;
    v2 = 0xEE00454449485F53;
  }

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  return localizedString(_:comment:)(*&v1, v3)._countAndFlagsBits;
}

AppStoreKit::PurchasesContentMode_optional __swiftcall PurchasesContentMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PurchasesContentMode.rawValue.getter()
{
  v1 = 0x7665446E4F746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x6E6564646968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_1E1744FF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7665446E4F746F6ELL;
  v4 = 0xEB00000000656369;
  if (v2 != 1)
  {
    v3 = 0x6E6564646968;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 7105633;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0x7665446E4F746F6ELL;
  v8 = 0xEB00000000656369;
  if (*a2 != 1)
  {
    v7 = 0x6E6564646968;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 7105633;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E17450FC()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E174519C(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E1745228(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E17452D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xEB00000000656369;
  v5 = 0x7665446E4F746F6ELL;
  if (v2 != 1)
  {
    v5 = 0x6E6564646968;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7105633;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1E174532C()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEF4968);
  __swift_project_value_buffer(v4, qword_1ECEF4968);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t PurchasesContentPresenter.__allocating_init(objectGraph:accountStore:appStateController:familyMember:purchaseHistory:showMacOSCompatibleIOSApps:appleSilicon:contentModes:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, int a7, void *a8, void *a9)
{
  v42 = a8;
  v43 = a1;
  v41 = a7;
  v44 = a6;
  v37 = a3;
  v38 = a4;
  v36 = a2;
  v39 = a9;
  v40 = a5;
  v9 = sub_1E1AF68DC();
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchases) = 0;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_updatedPurchases) = 2;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_appStateControllerReady) = 0;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_shouldRefreshContentView) = 0;
  v15 = (v14 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_observer);
  *v15 = 0u;
  v15[1] = 0u;
  v16 = (v14 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_term);
  *v16 = 0;
  v16[1] = 0;
  v33 = OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_appleSiliconAccessQueue;
  v32 = sub_1E1361A80();
  sub_1E1AF323C();
  v45 = MEMORY[0x1E69E7CC0];
  sub_1E174C984(&qword_1EE1E3438, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90, &unk_1E1B02C60);
  sub_1E1302CD4(&qword_1EE1E34D8, &unk_1ECEB7A90, &unk_1E1B02C60, MEMORY[0x1E69E6328]);
  sub_1E1AF6EEC();
  (*(v34 + 104))(v11, *MEMORY[0x1E69E8090], v35);
  *(v14 + v33) = sub_1E1AF692C();
  v17 = v36;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_accountStore) = v36;
  sub_1E1300B24(v44, v14 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchaseHistory);
  *(v14 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_mode) = 0;
  v18 = (v14 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_appStateController);
  v19 = v38;
  *v18 = v37;
  v18[1] = v19;
  v20 = v19;
  v21 = v39;
  v22 = v40;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_familyMember) = v40;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchasesContentModes) = v21;
  v39 = v17;
  swift_unknownObjectRetain();
  if (v22)
  {
    v23 = [v22 isCurrentSignedInUser];
  }

  else
  {
    v23 = 1;
  }

  *(v14 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_canHidePurchases) = v23;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_showMacOSCompatibleIOSApps) = v41 & 1;
  v24 = v42;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_appleSilicon) = v42;
  v25 = v24;

  v27 = sub_1E138C578(v26, 0, 0, 0);

  ObjectType = swift_getObjectType();
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = *(v20 + 16);

  v30(sub_1E174B78C, v29, ObjectType, v20);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v44);

  return v27;
}

uint64_t PurchasesContentPresenter.init(objectGraph:accountStore:appStateController:familyMember:purchaseHistory:showMacOSCompatibleIOSApps:appleSilicon:contentModes:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, int a7, void *a8, void *a9)
{
  v42 = a8;
  v43 = a1;
  v41 = a7;
  v44 = a6;
  v37 = a2;
  v38 = a4;
  v36 = a3;
  v39 = a9;
  v40 = a5;
  v35 = sub_1E1AF68DC();
  v10 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v14 - 8);
  *(v9 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchases) = 0;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_updatedPurchases) = 2;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_appStateControllerReady) = 0;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_shouldRefreshContentView) = 0;
  v15 = (v9 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_observer);
  *v15 = 0u;
  v15[1] = 0u;
  v16 = (v9 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_term);
  *v16 = 0;
  v16[1] = 0;
  v34 = OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_appleSiliconAccessQueue;
  v17 = sub_1E1361A80();
  v33[0] = "PURCHASES_UNHIDE";
  v33[1] = v17;
  sub_1E1AF323C();
  v45 = MEMORY[0x1E69E7CC0];
  sub_1E174C984(&qword_1EE1E3438, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90, &unk_1E1B02C60);
  sub_1E1302CD4(&qword_1EE1E34D8, &unk_1ECEB7A90, &unk_1E1B02C60, MEMORY[0x1E69E6328]);
  sub_1E1AF6EEC();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8090], v35);
  v18 = sub_1E1AF692C();
  v20 = v36;
  v19 = v37;
  *(v9 + v34) = v18;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_accountStore) = v19;
  sub_1E1300B24(v44, v9 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchaseHistory);
  *(v9 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_mode) = 0;
  v21 = (v9 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_appStateController);
  v22 = v38;
  *v21 = v20;
  v21[1] = v22;
  v23 = v39;
  v24 = v40;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_familyMember) = v40;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchasesContentModes) = v23;
  v39 = v19;
  swift_unknownObjectRetain();
  if (v24)
  {
    v25 = [v24 isCurrentSignedInUser];
  }

  else
  {
    v25 = 1;
  }

  *(v9 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_canHidePurchases) = v25;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_showMacOSCompatibleIOSApps) = v41 & 1;
  v26 = v42;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_appleSilicon) = v42;
  v42 = v26;

  v28 = sub_1E138C578(v27, 0, 0, 0);

  ObjectType = swift_getObjectType();
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = *(v22 + 16);

  v31(sub_1E174CA3C, v30, ObjectType, v22);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v44);

  return v28;
}

uint64_t sub_1E1745DF8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_updatedPurchases) = 1;
    sub_1E174679C();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E1745E90(v3);
  }

  return result;
}

double sub_1E1745E90(double result)
{
  if (*(v1 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_appStateControllerReady) == 1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_updatedPurchases);
    if (v2 != 2)
    {
      if (v2)
      {
        v30 = *v1;
        v3 = (v1 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchaseHistory);
        v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchaseHistory + 24);
        v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchaseHistory + 32);
        __swift_project_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchaseHistory), v4);
        v6 = OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_mode;
        swift_beginAccess();
        if (*(v1 + v6) && *(v1 + v6) != 1)
        {

          v12 = 0;
        }

        else
        {
          v11 = sub_1E1AF74AC();

          v12 = v11 ^ 1;
        }

        v13 = (v1 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_term);
        swift_beginAccess();
        v15 = *v13;
        v14 = v13[1];
        v16 = *(v5 + 24);

        v29 = v16(v12 & 1, 1, v15, v14, v4, v5);

        v17 = v3[3];
        v18 = v3[4];
        __swift_project_boxed_opaque_existential_1Tm(v3, v17);
        (*(v18 + 80))(v17, v18);
        v19 = swift_allocObject();
        *(v19 + 16) = 0;
        *(v19 + 24) = 1;
        v20 = *(v1 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_familyMember);
        if (v20)
        {
          v21 = v20;
          v22 = [v21 iTunesDSID];
          if (v22)
          {
            v23 = v22;
            sub_1E1AF75FC();
          }
        }

        v24 = v3[3];
        v25 = v3[4];
        __swift_project_boxed_opaque_existential_1Tm(v3, v24);
        v26 = swift_allocObject();
        swift_weakInit();
        v27 = swift_allocObject();
        v27[2] = v26;
        v27[3] = v19;
        v27[4] = v30;
        v28 = *(v25 + 32);

        v28(v29, 0, sub_1E174C9F0, v27, v24, v25);
      }

      else
      {
        swift_beginAccess();
        *(v1 + 32) = 0;
        v7 = v1 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_view;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v8 = *(v7 + 8);
          ObjectType = swift_getObjectType();
          (*(*(v8 + 24) + 16))(ObjectType);
          swift_unknownObjectRelease();
        }

        return sub_1E1747B4C();
      }
    }
  }

  return v10;
}

double sub_1E17462B0()
{
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_view);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchaseHistory));

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_observer, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  swift_unknownObjectRelease();
  return result;
}

uint64_t PurchasesContentPresenter.deinit()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_observer;
  swift_beginAccess();
  sub_1E134FD1C(v0 + v1, &v5, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  if (v6)
  {
    sub_1E1301CF0(&v5, &v7);
    v2 = [objc_opt_self() defaultCenter];
    __swift_project_boxed_opaque_existential_1Tm(&v7, v8);
    [v2 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v7);
  }

  else
  {
    sub_1E1308058(&v5, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  v3 = BasePresenter.deinit();
  sub_1E1337DEC(v3 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_view);
  __swift_destroy_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchaseHistory));

  sub_1E1308058(v3 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_observer, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  swift_unknownObjectRelease();
  return v3;
}

uint64_t PurchasesContentPresenter.__deallocating_deinit()
{
  PurchasesContentPresenter.deinit();

  return swift_deallocClassInstance();
}

double PurchasesContentPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*PurchasesContentPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E1363018;
}

void *PurchasesContentPresenter.familyMember.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_familyMember);
  v2 = v1;
  return v1;
}

void sub_1E174679C()
{
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_updatedPurchases) != 2)
  {
    v1 = OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_observer;
    swift_beginAccess();
    sub_1E134FD1C(v0 + v1, v8, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v2 = v9;
    sub_1E1308058(v8, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    if (!v2)
    {
      v9 = MEMORY[0x1E69E7CA8] + 8;
      v3 = [objc_opt_self() defaultCenter];
      v4 = *(v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchaseHistory + 24);
      v5 = *(v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchaseHistory + 32);
      __swift_project_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchaseHistory), v4);
      v6 = v0;
      v7 = (*(v5 + 72))(v4, v5);
      [v3 addObserver:v6 selector:sel_handlePurchasesChanged name:v7 object:0];

      swift_beginAccess();
      sub_1E137F818(v8, v6 + v1);
      swift_endAccess();
    }
  }
}

uint64_t PurchasesContentPresenter.term.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_term);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double PurchasesContentPresenter.term.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_term);
  swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (!a2)
  {
    if (!v8)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v8 || (v7 == a1 ? (v9 = v8 == a2) : (v9 = 0), !v9 && (sub_1E1AF74AC() & 1) == 0))
  {
LABEL_10:
    swift_beginAccess();
    if (*(v2 + 32) != 1)
    {
      *(v2 + 32) = 1;
      v10 = v2 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = *(v10 + 8);
        ObjectType = swift_getObjectType();
        (*(*(v12 + 24) + 8))(ObjectType);
        swift_unknownObjectRelease();
      }

      sub_1E1745E90(v11);
    }
  }

  return result;
}

Swift::Void __swiftcall PurchasesContentPresenter.update(ignoringCache:)(Swift::Bool ignoringCache)
{
  swift_beginAccess();
  if ((*(v1 + 32) & 1) == 0)
  {
    v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchases);
    if (!v3 || !*(*(v3 + 24) + 16) || ignoringCache)
    {
      *(v1 + 32) = 1;
      v4 = v1 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(v4 + 8);
        ObjectType = swift_getObjectType();
        (*(*(v6 + 24) + 8))(ObjectType);
        swift_unknownObjectRelease();
      }

      sub_1E1745E90(v5);
    }
  }
}

void (*PurchasesContentPresenter.term.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_term;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_1E1746C24;
}

void sub_1E1746C24(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    PurchasesContentPresenter.term.setter(v3, v4);
  }

  else
  {
    v5 = (v2[5] + v2[6]);
    v6 = *v5;
    v7 = v5[1];
    *v5 = v3;
    v5[1] = v4;
    if (v4)
    {
      if (v7)
      {
        v8 = v3 == v6 && v4 == v7;
        if (v8 || (sub_1E1AF74AC() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v7)
    {
      goto LABEL_14;
    }

    PurchasesContentPresenter.update(ignoringCache:)(1);
  }

LABEL_13:

LABEL_14:

  free(v2);
}

uint64_t PurchasesContentPresenter.showMacOSCompatibleIOSApps.getter()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_showMacOSCompatibleIOSApps;
  swift_beginAccess();
  return *(v0 + v1);
}

double PurchasesContentPresenter.showMacOSCompatibleIOSApps.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_showMacOSCompatibleIOSApps;
  swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    swift_beginAccess();
    if (*(v1 + 32) != 1)
    {
      *(v1 + 32) = 1;
      v7 = v1 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v7 + 8);
        ObjectType = swift_getObjectType();
        (*(*(v9 + 24) + 8))(ObjectType);
        swift_unknownObjectRelease();
      }

      return sub_1E1745E90(v8);
    }
  }

  return result;
}

void (*PurchasesContentPresenter.showMacOSCompatibleIOSApps.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_showMacOSCompatibleIOSApps;
  *(v3 + 120) = v1;
  *(v3 + 128) = v5;
  swift_beginAccess();
  *(v4 + 136) = *(v1 + v5);
  return sub_1E1746EB8;
}

void sub_1E1746EB8(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 120);
  v3 = *(*a1 + 128);
  v5 = *(*a1 + 136);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (a2)
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_11;
    }

    v7 = v2[15];
    swift_beginAccess();
    if (*(v7 + 32))
    {
      goto LABEL_11;
    }

    v8 = v2[15];
    *(v7 + 32) = 1;
    v9 = v8 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_view;
  }

  else
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_11;
    }

    v10 = v2[15];
    swift_beginAccess();
    if (*(v10 + 32))
    {
      goto LABEL_11;
    }

    v11 = v2[15];
    *(v10 + 32) = 1;
    v9 = v11 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_view;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v13 + 24) + 8))(ObjectType);
    swift_unknownObjectRelease();
  }

  sub_1E1745E90(v12);
LABEL_11:

  free(v2);
}

void PurchasesContentPresenter.mode.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_mode;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

double PurchasesContentPresenter.mode.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_mode;
  swift_beginAccess();
  *(v1 + v3) = v2;
  swift_beginAccess();
  if (*(v1 + 32) != 1)
  {
    *(v1 + 32) = 1;
    v5 = v1 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v7 + 24) + 8))(ObjectType);
      swift_unknownObjectRelease();
    }

    return sub_1E1745E90(v6);
  }

  return result;
}

uint64_t (*PurchasesContentPresenter.mode.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_1E17471D0;
}

void sub_1E17471D0(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[6];
    swift_beginAccess();
    if ((*(v4 + 32) & 1) == 0)
    {
      v5 = v3[6];
      *(v4 + 32) = 1;
      v6 = v5 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v6 + 8);
        ObjectType = swift_getObjectType();
        (*(*(v8 + 24) + 8))(ObjectType);
        swift_unknownObjectRelease();
      }

      sub_1E1745E90(v7);
    }
  }

  free(v3);
}

void sub_1E17472B8()
{
  v1 = sub_1E1AF320C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF324C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_shouldRefreshContentView) == 1)
  {
    v14 = v7;
    sub_1E1361A80();
    v13 = sub_1E1AF68EC();
    v10 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1E174C97C;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1302D64;
    aBlock[3] = &block_descriptor_61;
    v11 = _Block_copy(aBlock);

    sub_1E1AF322C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E174C984(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
    sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850, MEMORY[0x1E69E6328]);
    sub_1E1AF6EEC();
    v12 = v13;
    MEMORY[0x1E68FF640](0, v9, v4, v11);
    _Block_release(v11);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v9, v14);
  }
}

uint64_t sub_1E17475B0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    if ((*(v2 + 32) & 1) == 0)
    {
      *(v2 + 32) = 1;
      v3 = v2 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v3 + 8);
        ObjectType = swift_getObjectType();
        (*(*(v5 + 24) + 8))(ObjectType);
        swift_unknownObjectRelease();
      }

      sub_1E1745E90(v4);
    }
  }

  return result;
}

Swift::Void __swiftcall PurchasesContentPresenter.didLoad()()
{
  swift_beginAccess();
  *(v0 + 32) = 1;
  v1 = v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v2 + 24) + 8))(ObjectType);
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_appStateController + 8);
  v5 = swift_getObjectType();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = *(v4 + 16);

  v7(sub_1E174B7C4, v6, v5, v4);
}

uint64_t sub_1E1747800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF320C();
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E1AF324C();
  v9 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1361A80();
  v12 = sub_1E1AF68EC();
  aBlock[4] = a2;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = a3;
  v13 = _Block_copy(aBlock);

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E174C984(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850, MEMORY[0x1E69E6328]);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v11, v8, v13);
  _Block_release(v13);

  (*(v16 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v15);
}

uint64_t sub_1E1747AC0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_appStateControllerReady) = 1;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E1745E90(v3);
  }

  return result;
}

double sub_1E1747B4C()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_mode;
  swift_beginAccess();
  v2 = v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_term;
  if (!*(v0 + v1))
  {
    swift_beginAccess();
    if (*(v2 + 8))
    {
      goto LABEL_11;
    }

    v13._countAndFlagsBits = 0x5F535050415F4F4ELL;
    v13._object = 0xED0000454C544954;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v15 = localizedString(_:comment:)(v13, v14);
    countAndFlagsBits = v15._countAndFlagsBits;
    object = v15._object;
    v16 = *(v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_familyMember);
    if (v16)
    {
      v17 = v16;
      if (([v17 isCurrentSignedInUser] & 1) == 0)
      {
        v41._countAndFlagsBits = 0xD000000000000026;
        v41._object = 0x80000001E1B73B50;
        v42._countAndFlagsBits = 0;
        v42._object = 0xE000000000000000;
        v43 = localizedString(_:comment:)(v41, v42);
        v31 = v43._countAndFlagsBits;
        v32 = v43._object;

        if (*(v0 + v1))
        {
          goto LABEL_22;
        }

LABEL_25:

        goto LABEL_26;
      }
    }

    v18 = "CRIPTION_NOT_ON_DEVICE_";
    v19 = 0xD00000000000001CLL;
LABEL_21:
    v36 = v18 | 0x8000000000000000;
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    v38 = localizedString(_:comment:)(*&v19, v37);
    v31 = v38._countAndFlagsBits;
    v32 = v38._object;
    if (*(v0 + v1))
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (*(v0 + v1) != 1)
  {
    swift_beginAccess();
    if (*(v2 + 8))
    {
      goto LABEL_11;
    }

    v33._countAndFlagsBits = 0xD000000000000014;
    v33._object = 0x80000001E1B73AC0;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v35 = localizedString(_:comment:)(v33, v34);
    countAndFlagsBits = v35._countAndFlagsBits;
    object = v35._object;
    v18 = "NO_APPS_TITLE_HIDDEN";
    v19 = 0xD00000000000001FLL;
    goto LABEL_21;
  }

  swift_beginAccess();
  if (!*(v2 + 8))
  {
    v3._countAndFlagsBits = 0x5F535050415F4F4ELL;
    v3._object = 0xED0000454C544954;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    v5 = localizedString(_:comment:)(v3, v4);
    countAndFlagsBits = v5._countAndFlagsBits;
    object = v5._object;
    v7 = [objc_opt_self() deviceClass];
    sub_1E1AF5DFC();

    sub_1E1AF5EAC();

    v54._countAndFlagsBits = sub_1E1AF608C();
    v54._object = v8;
    sub_1E1AF5F5C();

    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v12 = localizedString(_:comment:)(v54, v9);
    v11 = v12._object;
    v10 = v12._countAndFlagsBits;
    goto LABEL_18;
  }

LABEL_11:
  v20._countAndFlagsBits = 0xD000000000000017;
  v20._object = 0x80000001E1B5C4C0;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v22 = localizedString(_:comment:)(v20, v21);
  countAndFlagsBits = v22._countAndFlagsBits;
  object = v22._object;
  v23._object = 0x80000001E1B5C4E0;
  v23._countAndFlagsBits = 0xD000000000000011;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  localizedString(_:comment:)(v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930, &qword_1E1B02980);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1E1B02CC0;
  v26 = (v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_term);
  swift_beginAccess();
  v27 = *v26;
  v28 = v26[1];
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1E13C2F48();
  if (v28)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0;
  }

  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  *(v25 + 32) = v29;
  *(v25 + 40) = v30;

  v10 = sub_1E1AF5E3C();
LABEL_18:
  v31 = v10;
  v32 = v11;

  if (!*(v0 + v1))
  {
    goto LABEL_25;
  }

LABEL_22:
  v39 = sub_1E1AF74AC();

  if ((v39 & 1) == 0)
  {
    v40 = 1;
    goto LABEL_27;
  }

LABEL_26:
  v44 = v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_term;
  swift_beginAccess();
  v40 = *(v44 + 8) != 0;
LABEL_27:
  v45 = v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_term;
  swift_beginAccess();
  v46 = *(v45 + 8);
  v47 = v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v48 = *(v47 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v48 + 16) + 8))(ObjectType);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v50 = *(v47 + 8);
    v51 = swift_getObjectType();
    (*(v50 + 40))(countAndFlagsBits, object, v31, v32, v40, v46 != 0, v51, v50);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

void sub_1E17480C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v7 = sub_1E1AF320C();
  v25 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF324C();
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v14 = *(Strong + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_appleSilicon), v15 = v14, , v14))
  {
    swift_beginAccess();
    v16 = swift_weakLoadStrong();
    if (!v16)
    {

      return;
    }

    v22 = *(v16 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_appleSiliconAccessQueue);

    v17 = swift_allocObject();
    v17[2] = v15;
    v17[3] = a2;
    v17[4] = a1;
    v17[5] = a3;
    v17[6] = v23;
    aBlock[4] = sub_1E174C9FC;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1302D64;
    aBlock[3] = &block_descriptor_41_0;
    v18 = _Block_copy(aBlock);
    v19 = v15;

    sub_1E1AF322C();
    v26 = MEMORY[0x1E69E7CC0];
    sub_1E174C984(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
    sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850, MEMORY[0x1E69E6328]);
    sub_1E1AF6EEC();
    v20 = v22;
    MEMORY[0x1E68FF640](0, v12, v9, v18);
    _Block_release(v18);

    (*(v25 + 8))(v9, v7);
    (*(v24 + 8))(v12, v10);
  }

  else
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return;
    }

    swift_beginAccess();
    sub_1E1748780(a1, *(a3 + 16), *(a3 + 24), 0);
  }
}

uint64_t sub_1E17484B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  if (qword_1ECEB1090 != -1)
  {
    swift_once();
  }

  v5 = sub_1E1AF591C();
  __swift_project_value_buffer(v5, qword_1ECEF4968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  v6 = AppleSilicon.isRosettaAvailable.getter();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v11 = MEMORY[0x1E69E6370];
  v10[0] = v6 & 1;
  sub_1E1AF385C();
  sub_1E1308058(v10, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  sub_1E1AF548C();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_1E1748780(a3, *(a4 + 16), *(a4 + 24), v6 & 1);
  }

  return result;
}

uint64_t sub_1E1748780(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v19 = a4;
  v8 = sub_1E1AF320C();
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_1E1AF324C();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E1361A80();
  v14 = sub_1E1AF68EC();
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3 & 1;
  *(v15 + 40) = a1;
  *(v15 + 48) = v19;
  aBlock[4] = sub_1E174CA0C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_47;
  v16 = _Block_copy(aBlock);

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E174C984(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00, &qword_1E1B04850, MEMORY[0x1E69E6328]);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v13, v10, v16);
  _Block_release(v16);

  (*(v21 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v20);
}

void sub_1E1748A94(_BYTE *a1, id a2, char a3, uint64_t a4)
{
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A0, &unk_1E1B39700);
  v8 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v124 = &v108 - v9;
  v10 = sub_1E1AEFEAC();
  v111 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v110 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v108 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v117 = &v108 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v115 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v116 = &v108 - v21;
  v121 = a1;
  v22 = [*&a1[OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_accountStore] ams_activeiTunesAccount];
  if (v22 && (v23 = v22, v24 = [v22 ams_DSID], v23, v24))
  {
    v108 = v10;
    v109 = v8;
    v25 = [v24 longLongValue];

    v26 = 0;
    if (a3)
    {
      a2 = v25;
    }
  }

  else
  {
    if (a3)
    {
      v27 = v121;
      swift_beginAccess();
      v27[32] = 0;
      v28 = &v27[OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_view];
LABEL_119:
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v106 = *(v28 + 1);
        ObjectType = swift_getObjectType();
        (*(*(v106 + 24) + 16))(ObjectType);
        swift_unknownObjectRelease();
      }

      sub_1E1747B4C();
      return;
    }

    v108 = v10;
    v109 = v8;
    v25 = 0;
    v26 = 1;
  }

  v29 = MEMORY[0x1E69E7CC0];
  if (*(a4 + 16))
  {
    v30 = sub_1E15A47C8(a2);
    if (v31)
    {
      v32 = *(*(a4 + 56) + 8 * v30);
    }

    else
    {
      v32 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  if (a2 == v25)
  {
    v33 = v26;
  }

  else
  {
    v33 = 1;
  }

  LODWORD(v123) = v33;
  v34 = v121;
  v35 = *&v121[OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchaseHistory + 24];
  v36 = *&v121[OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchaseHistory + 32];
  __swift_project_boxed_opaque_existential_1Tm(&v121[OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchaseHistory], v35);
  LODWORD(v126) = (*(v36 + 80))(v35, v36);
  v160 = v29;
  v37 = v32 & 0xFFFFFFFFFFFFFF8;
  if (v32 >> 62)
  {
    goto LABEL_108;
  }

  v38 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:
  v39 = OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_appStateController;
  v40 = OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_mode;
  v127 = OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_showMacOSCompatibleIOSApps;
  swift_beginAccess();
  v114 = v40;
  swift_beginAccess();
  v113 = v14;
  if (v38)
  {
    v41 = 0;
    v119 = &v34[v39];
    v112 = MEMORY[0x1E69E7CC0];
    v42 = v32 & 0xC000000000000001;
    v118 = v32;
    v120 = v38;
    *&v122 = v32 & 0xC000000000000001;
LABEL_21:
    v14 = v41;
    while (1)
    {
      if (v42)
      {
        v43 = MEMORY[0x1E68FFD80](v14, v32);
      }

      else
      {
        if (v14 >= *(v37 + 16))
        {
          goto LABEL_107;
        }

        v43 = *(v32 + 8 * v14 + 32);
      }

      v44 = v43;
      v41 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_106;
      }

      if ([v43 watchOnly] || (objc_msgSend(v44, sel_supportsIPad) & 1) == 0 && !objc_msgSend(v44, sel_supportsIPhone) || v34[v127] == 1 && objc_msgSend(v44, sel_supportsMac) || (v126 & 1) != 0 && (v34[v127] & 1) == 0 && (objc_msgSend(v44, sel_supportsMac) & 1) == 0)
      {

        goto LABEL_23;
      }

      v45 = *(v119 + 8);
      v46 = swift_getObjectType();
      *&v156 = [v44 storeItemID];
      *&v156 = sub_1E1AF742C();
      *(&v156 + 1) = v47;
      (*(v45 + 56))(&v156, v46, v45);
      v49 = v48;

      if (v123 && ![v44 isFamilyShared])
      {
        swift_unknownObjectRelease();

        v34 = v121;
        goto LABEL_51;
      }

      v50 = v37;
      v51 = [v44 bundleID];
      v52 = sub_1E1AF5DFC();
      v54 = v53;

      LOBYTE(v51) = sub_1E174B7FC(v52, v54);

      if (v51)
      {
        swift_unknownObjectRelease();

        v34 = v121;
        v37 = v50;
LABEL_49:
        v32 = v118;
LABEL_51:
        v38 = v120;
        v42 = v122;
        goto LABEL_23;
      }

      v34 = v121;
      v55 = v114;
      if (v121[v114] == 1)
      {
        v56 = swift_getObjectType();
        (*(v49 + 16))(&v152, v56, v49);
        v156 = v152;
        v157 = v153;
        v158 = v154;
        v159 = v155;
        v57 = v155 >> 60;
        v37 = v50;
        if (v155 >> 60 == 2 || v57 == 7 || v57 == 8 && !*(&v159 + 1) && v155 == 0x8000000000000000 && v156 == 1 && (v58 = vorrq_s8(v157, v158), !(*&vorr_s8(*v58.i8, *&vextq_s8(v58, v58, 8uLL)) | *(&v156 + 1))))
        {
          sub_1E139CEA8(&v156);
          swift_unknownObjectRelease();

          goto LABEL_49;
        }

        sub_1E139CEA8(&v156);
        v55 = v114;
      }

      type metadata accessor for ASKBagContract(0);
      sub_1E1AF421C();
      sub_1E1AF55EC();
      v59 = v156;
      v60 = v34[v55];
      if (!v34[v55])
      {
        break;
      }

      v37 = v50;
      if (v60 == 1)
      {
        goto LABEL_57;
      }

      v61 = 1;
      v32 = v118;
LABEL_59:

      type metadata accessor for Lockup(0);
      v62 = sub_1E147C8F8(v44, v61 & 1, v59, 0, 0);
      v63 = swift_unknownObjectRelease();
      v38 = v120;
      v34 = v121;
      v42 = v122;
      if (v62)
      {
        MEMORY[0x1E68FEF20](v63);
        if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
          v38 = v120;
        }

        sub_1E1AF62AC();
        v112 = v160;
        v14 = v113;
        v42 = v122;
        if (v41 != v38)
        {
          goto LABEL_21;
        }

        goto LABEL_68;
      }

LABEL_23:
      ++v14;
      if (v41 == v38)
      {
        v14 = v113;
        goto LABEL_68;
      }
    }

    v37 = v50;
LABEL_57:
    v32 = v118;
    v61 = sub_1E1AF74AC();
    goto LABEL_59;
  }

  v112 = MEMORY[0x1E69E7CC0];
LABEL_68:

  v158.i64[0] = 0;
  v156 = 0u;
  v157 = 0u;
  v64 = sub_1E14D71F4(v112);
  type metadata accessor for ShelfHeader();
  v65 = swift_allocObject();
  *(v65 + 16) = 0u;
  *(v65 + 32) = 0u;
  *(v65 + 48) = 769;
  *(v65 + 56) = 0u;
  *(v65 + 72) = 0u;
  *(v65 + 88) = 0;
  *(v65 + 96) = 3;
  *(v65 + 104) = 0u;
  *(v65 + 120) = 0u;
  *(v65 + 136) = 0u;
  *(v65 + 152) = 0u;
  *(v65 + 168) = 0u;
  *(v65 + 178) = 0u;
  v120 = v65;
  *(v65 + 194) = 2;
  v66 = sub_1E1AEFCCC();
  v67 = *(*(v66 - 8) + 56);
  v67(v116, 1, 1, v66);
  v68 = sub_1E1AEFE6C();
  (*(*(v68 - 8) + 56))(v117, 1, 1, v68);
  v69 = sub_1E1AF46DC();
  (*(*(v69 - 8) + 56))(v14, 1, 1, v69);
  v67(v115, 1, 1, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28C8, &qword_1E1B02F60);
  swift_allocObject();
  v119 = sub_1E1AF35CC();
  v123 = type metadata accessor for Shelf(0);
  v126 = swift_allocObject();
  sub_1E134FD1C(&v156, &v149, &unk_1ECEB5670, qword_1E1B03EC0);
  if (v150.i64[1])
  {
    v152 = v149;
    v153 = v150;
    v154.i64[0] = v151;
  }

  else
  {
    v70 = v110;
    sub_1E1AEFE9C();
    v71 = sub_1E1AEFE7C();
    v73 = v72;
    (*(v111 + 8))(v70, v108);
    *&v145 = v71;
    *(&v145 + 1) = v73;
    sub_1E1AF6F6C();
    sub_1E1308058(&v149, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  v74 = v126;
  v75 = v126 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id;
  v76 = v153;
  *v75 = v152;
  *(v75 + 16) = v76;
  *(v75 + 32) = v154.i64[0];
  sub_1E134FD1C(v14, v74 + OBJC_IVAR____TtC11AppStoreKit5Shelf_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  *(v74 + 16) = 25602;
  *(v74 + 18) = 1;
  *(v74 + 24) = v64;
  LOBYTE(v145) = 2;

  v78 = sub_1E1956360(v77, &v145);

  *(v74 + 32) = v78;
  sub_1E134FD1C(v116, v74 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, &unk_1ECEB4B60, &unk_1E1B02620);
  *(v74 + OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched) = 0;
  v79 = (v74 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
  *v79 = 0x6E6F6D6D6F63;
  v79[1] = 0xE600000000000000;
  *(v74 + OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy) = 0;
  *(v74 + 40) = v120;
  *(v74 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden) = 0;
  v80 = v74 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata;
  *v80 = 0u;
  *(v80 + 16) = 0u;
  *(v80 + 48) = 3221225472;
  *(v80 + 32) = 0u;
  v81 = (v74 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
  *v81 = 0;
  v81[1] = 0;
  *(v74 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction) = 0;
  *(v74 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle) = 1;
  sub_1E134FD1C(v117, v74 + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_1ECEBB780, &unk_1E1B029A0);
  sub_1E134FD1C(v115, v74 + OBJC_IVAR____TtC11AppStoreKit5Shelf_refreshUrl, &unk_1ECEB4B60, &unk_1E1B02620);
  *(v74 + OBJC_IVAR____TtC11AppStoreKit5Shelf_pageChangeMetrics) = 0;
  *(v74 + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints) = 0;
  *(v74 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHorizontal) = 0;
  *(v74 + OBJC_IVAR____TtC11AppStoreKit5Shelf_horizontalScrollTargetBehavior) = 0;
  *(v74 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isPersonalized) = 0;
  *(v74 + OBJC_IVAR____TtC11AppStoreKit5Shelf_rowsPerColumn) = 1;
  v82 = v74 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background;
  *v82 = 0u;
  *(v82 + 16) = 0u;
  *(v82 + 32) = 0x8000;
  *(v74 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel) = v119;
  *(v74 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents) = MEMORY[0x1E69E7CC0];
  v83 = *(v74 + 24);
  v84 = sub_1E13C50E8();

  v14 = 0;
  v148 = MEMORY[0x1E68FF2E0](0, &type metadata for PersonalizationStyle, v84);
  v37 = v83 + 32;
  v34 = &unk_1E1B219E0;
  v122 = xmmword_1E1B16440;
  v127 = v83 + 32;
  while (2)
  {
    v85 = 0uLL;
    while (2)
    {
      v32 = *(v83 + 16);
      if (v14 == v32)
      {
LABEL_74:
        v134 = 0;
        v14 = v32;
        v132 = v85;
        v133 = v85;
        goto LABEL_78;
      }

      while (1)
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          v38 = sub_1E1AF71CC();
          goto LABEL_19;
        }

        if (v14 >= *(v83 + 16))
        {
          goto LABEL_105;
        }

        sub_1E1300B24(v37 + 40 * v14++, &v132);
LABEL_78:
        v130[0] = v132;
        v130[1] = v133;
        v131 = v134;
        if (!*(&v133 + 1))
        {
          memset(v135, 0, 24);
          *(&v135[1] + 8) = v122;
LABEL_90:
          sub_1E1308058(v135, &qword_1ECEB55B8, &qword_1E1B16450);
          v141 = 0;
          v139 = 0u;
          v140 = 0u;
          goto LABEL_91;
        }

        sub_1E1308EC0(v130, v129);
        sub_1E1300B24(v129, &v128);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A8, &qword_1E1B2E400);
        if ((swift_dynamicCast() & 1) == 0)
        {
          memset(v135, 0, 40);
        }

        __swift_destroy_boxed_opaque_existential_1(v129);
        if (*(&v135[1] + 1) == 1)
        {
          goto LABEL_90;
        }

        v136 = v135[0];
        v137 = v135[1];
        v138 = *&v135[2];
        if (*(&v135[1] + 1))
        {
          break;
        }

        sub_1E1308058(&v136, &qword_1ECEB55B0, &unk_1E1B219E0);
        v85 = 0uLL;
        if (v14 == v32)
        {
          goto LABEL_74;
        }
      }

      *(&v137 + 1) = *(&v135[1] + 1);
      sub_1E134FD1C(&v136, v135, &qword_1ECEB55B0, &unk_1E1B219E0);
      if (!*(&v135[1] + 1))
      {
        goto LABEL_125;
      }

      sub_1E1308EC0(v135, &v139);
      sub_1E1308058(&v136, &qword_1ECEB55B0, &unk_1E1B219E0);
      if (!*(&v140 + 1))
      {
LABEL_91:
        sub_1E1308058(&v139, &qword_1ECEB55B0, &unk_1E1B219E0);
        v145 = 0u;
        v146 = 0u;
        v147 = 0;
        goto LABEL_92;
      }

      sub_1E1308EC0(&v139, &v142);
      v86 = *(&v143 + 1);
      v87 = v144;
      __swift_project_boxed_opaque_existential_1Tm(&v142, *(&v143 + 1));
      if ((PersonalizableModel.needsClientPersonalization.getter(v86, v87) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v142);
        v85 = 0uLL;
        v37 = v127;
        continue;
      }

      break;
    }

    sub_1E1308EC0(&v142, &v145);
LABEL_92:
    v142 = v145;
    v143 = v146;
    v144 = v147;
    if (*(&v146 + 1))
    {
      sub_1E1308EC0(&v142, &v139);
      v89 = *(&v140 + 1);
      v88 = v141;
      __swift_project_boxed_opaque_existential_1Tm(&v139, *(&v140 + 1));
      (*(v88 + 16))(&v136, v89, v88);
      LOBYTE(v88) = v136;
      __swift_destroy_boxed_opaque_existential_1(&v139);
      sub_1E1893F1C(&v145, v88);
      v37 = v127;
      continue;
    }

    break;
  }

  v90 = v126;
  *(v126 + OBJC_IVAR____TtC11AppStoreKit5Shelf_personalizationStyles) = v148;
  v91 = (v90 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata);
  *v91 = 0u;
  v91[1] = 0u;
  v92 = *(v90 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents);
  if (v92 >> 62)
  {
    v93 = sub_1E1AF71CC();
    v94 = v113;
    v95 = v109;
    if (!v93)
    {
      goto LABEL_110;
    }

LABEL_97:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55C0, &unk_1E1B16B50);
    if (v93 >= 1)
    {
      v127 = v92 & 0xC000000000000001;

      v96 = 0;
      v97 = v92;
      do
      {
        if (v127)
        {
          MEMORY[0x1E68FFD80](v96, v92);
        }

        else
        {
        }

        ++v96;
        sub_1E1302CD4(&qword_1EE1E3C40, &qword_1ECEB55C0, &unk_1E1B16B50, MEMORY[0x1E69AAEC8]);
        sub_1E1AF3CDC();
        v98 = v124;
        sub_1E1AF3CEC();

        __swift_destroy_boxed_opaque_existential_1(&v145);
        (*(v95 + 8))(v98, v125);
        v92 = v97;
      }

      while (v93 != v96);

      v94 = v113;
      goto LABEL_111;
    }

    __break(1u);
LABEL_125:
    __break(1u);
    return;
  }

  v93 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v94 = v113;
  v95 = v109;
  if (v93)
  {
    goto LABEL_97;
  }

LABEL_110:

LABEL_111:
  sub_1E1308058(v115, &unk_1ECEB4B60, &unk_1E1B02620);
  sub_1E1308058(v94, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v117, &unk_1ECEBB780, &unk_1E1B029A0);
  sub_1E1308058(v116, &unk_1ECEB4B60, &unk_1E1B02620);
  sub_1E1308058(&v156, &unk_1ECEB5670, qword_1E1B03EC0);
  v99 = v121;
  *&v121[OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchases] = v126;

  if (v112 >> 62)
  {
    v100 = sub_1E1AF71CC();
  }

  else
  {
    v100 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v100)
  {
    swift_beginAccess();
    v99[32] = 0;
    v28 = &v99[OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_view];
    goto LABEL_119;
  }

  swift_beginAccess();
  v99[32] = 0;
  v101 = &v99[OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_view];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v102 = *(v101 + 1);
    v103 = swift_getObjectType();
    (*(*(v102 + 24) + 16))(v103);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v104 = *(v101 + 1);
    v105 = swift_getObjectType();
    (*(*(v104 + 16) + 8))(v105);
    swift_unknownObjectRelease();
  }
}

void sub_1E1749ECC(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchases);
  if (!v3)
  {
    return;
  }

  v6 = sub_1E1AF018C();
  v7 = *(v3 + 24);
  if (v6 < *(v7 + 16))
  {

    v8 = sub_1E1AF018C();
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *(v7 + 16))
    {
      sub_1E1300B24(v7 + 40 * v8 + 32, v26);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
      type metadata accessor for Lockup(0);
      if (swift_dynamicCast())
      {
        v9 = *(v25 + 24);
        v26[0] = *(v25 + 16);
        v26[1] = v9;

        AdamId.numberValue.getter();
        v11 = v10;

        if (v11)
        {

          v12 = sub_1E1AF018C();
          sub_1E14878B0(v12, v26);
          __swift_destroy_boxed_opaque_existential_1(v26);
          v13 = v2 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_view;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v14 = *(v13 + 8);
            ObjectType = swift_getObjectType();
            v16 = MEMORY[0x1EEE9AC00](ObjectType);
            (*(v14 + 32))(a1, sub_1E174C9CC, v16);
            swift_unknownObjectRelease();
          }

          v17 = *(v2 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchaseHistory + 24);
          v18 = *(v2 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchaseHistory + 32);
          __swift_project_boxed_opaque_existential_1Tm((v2 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchaseHistory), v17);
          v24 = v11;
          v19 = [v11 longLongValue];
          v20 = swift_allocObject();
          swift_weakInit();
          v21 = *(v18 + 40);

          if (a2)
          {
            v22 = sub_1E174C9E0;
            v23 = 1;
          }

          else
          {
            v22 = sub_1E174C9D8;
            v23 = 0;
          }

          v21(v23, v19, v22, v20, v17, v18);

          return;
        }
      }

      return;
    }

    __break(1u);
    return;
  }
}

uint64_t sub_1E174A208(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = 100;

  v5 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v4, &v7, 1, 2);

  *(a1 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchases) = v5;
}

uint64_t sub_1E174A28C(char a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80, &unk_1E1B02B80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E1B02CC0;
  *(v3 + 56) = MEMORY[0x1E69E6370];
  *(v3 + 32) = a1;
  sub_1E1AF760C();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E1300B24(result + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchaseHistory, v7);

    v5 = v8;
    v6 = v9;
    __swift_project_boxed_opaque_existential_1Tm(v7, v8);
    (*(v6 + 64))(2, nullsub_5, 0, v5, v6);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return result;
}

uint64_t sub_1E174A3B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E1300B24(result + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchaseHistory, v5);

    v3 = v6;
    v4 = v7;
    __swift_project_boxed_opaque_existential_1Tm(v5, v6);
    (*(v4 + 64))(2, nullsub_5, 0, v3, v4);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

Swift::Void __swiftcall PurchasesContentPresenter.unhideAll()()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_mode;
  swift_beginAccess();
  if (*(v0 + v1) && *(v0 + v1) != 1)
  {
  }

  else
  {
    v2 = sub_1E1AF74AC();

    if ((v2 & 1) == 0)
    {
      return;
    }
  }

  v3 = *(v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchases);
  if (v3)
  {
    if (*(*(v3 + 24) + 16))
    {
      v4 = *(v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchaseHistory + 24);
      v5 = *(v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchaseHistory + 32);
      __swift_project_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchaseHistory), v4);
      v6 = *(v5 + 48);

      v6(nullsub_5, 0, v4, v5);
    }
  }
}

Swift::Int __swiftcall PurchasesContentPresenter.numberOfRows(for:)(Swift::Int a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchases);
  if (v2)
  {
    return *(*(v2 + 24) + 16);
  }

  else
  {
    return 0;
  }
}

BOOL PurchasesContentPresenter.doesModelExist(for:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchases);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*(v2 + 24) + 16);
  return sub_1E1AF018C() < v3;
}

void PurchasesContentPresenter.model(at:)(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchases);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(v3 + 24);

  v5 = sub_1E1AF018C();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 >= *(v4 + 16))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  sub_1E1300B24(v4 + 40 * v5 + 32, a1);
}

Swift::String_optional __swiftcall PurchasesContentPresenter.footerTitle(for:)(Swift::Int a1)
{
  v1 = 0;
  v2 = 0;
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

void PurchasesContentPresenter.didSelectItem(at:)()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchases);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(v2 + 24);

  v4 = sub_1E1AF018C();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v4 >= *(v3 + 16))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  sub_1E1300B24(v3 + 40 * v4 + 32, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
  v5 = type metadata accessor for Lockup(0);
  if (swift_dynamicCast())
  {
    v6 = *(v12 + 264);
    if (v6 && (v7 = v1 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_view, swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      v13[3] = v5;
      v13[0] = v12;
      v10 = *(v8 + 8);
      v11 = *(v10 + 8);

      v11(v6, v13, ObjectType, v10);

      swift_unknownObjectRelease();
      sub_1E1308058(v13, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    }

    else
    {
    }
  }
}

uint64_t PurchasesContentPresenter.pageTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_familyMember);
  if (v1)
  {
    v2 = v1;
    if ([v2 isCurrentSignedInUser])
    {
      v3 = 0x80000001E1B6F290;
      v4 = 0xD000000000000018;
    }

    else
    {
      v10 = [v2 firstName];
      if (v10)
      {
        v11 = v10;
        v12 = sub_1E1AF5DFC();

        return v12;
      }

      v4 = 0x5F544E554F434341;
      v3 = 0xEC00000053505041;
    }

    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(*&v4, v13)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    v5 = 0x5F544E554F434341;
    v6 = 0xEC00000053505041;
    v7 = 0;
    v8 = 0xE000000000000000;

    return localizedString(_:comment:)(*&v5, *&v7)._countAndFlagsBits;
  }
}

Swift::String_optional __swiftcall PurchasesContentPresenter.eyebrow(for:)(Swift::Int a1)
{
  v1 = 0;
  v2 = 0;
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall PurchasesContentPresenter.title(for:)(Swift::Int a1)
{
  v1 = 0;
  v2 = 0;
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall PurchasesContentPresenter.subtitle(for:)(Swift::Int a1)
{
  v1 = 0;
  v2 = 0;
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

double PurchasesContentPresenter.background(for:)@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x8000;
  return result;
}

double PurchasesContentPresenter.interactiveShelfBackground(at:)@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x8000;
  return result;
}

double PurchasesContentPresenter.flowPreviewDestinationForItem(at:)@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3 = sub_1E174AB20(a2);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  if (!*(v3 + 264) || (type metadata accessor for FlowAction(0), (v5 = swift_dynamicCastClass()) == 0))
  {

LABEL_8:
    *a1 = 1;
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0;
    return result;
  }

  v6 = v5;
  *(a1 + 32) = type metadata accessor for Lockup(0);
  *a1 = v6;
  *(a1 + 8) = v4;
  *(a1 + 40) = 1;

  return result;
}

unint64_t sub_1E174AB20(__n128 a1)
{
  v2 = sub_1E1AF019C();
  v3 = OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchases;
  if (*(v1 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchases))
  {
    if (v2 >= 1)
    {
      return 0;
    }
  }

  else if ((v2 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v4 = sub_1E1AF018C();
  result = sub_1E1AF019C();
  v6 = *(v1 + v3);
  if (!v6)
  {
    if (v4 < 0)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    return 0;
  }

  v7 = *(v6 + 24);
  if (v4 >= *(v7 + 16))
  {
    return 0;
  }

  result = sub_1E1AF018C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (result >= *(v7 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1E1300B24(v7 + 40 * result + 32, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
  type metadata accessor for Lockup(0);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t PurchasesContentPresenter.flowPreviewActionsConfiguration(at:sender:)(uint64_t a1)
{
  v3 = sub_1E1AEFEAC();
  v62 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v66 = &v55 - v6;
  v7 = sub_1E1AF01FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v65 = sub_1E1AF3E1C();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v15 = &v55 - v14;
  v16 = sub_1E174AB20(v13);
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v59 = v3;
  v63 = v11;
  type metadata accessor for ASKBagContract(0);
  v67 = v17;
  sub_1E1AF421C();
  v18 = v67;
  sub_1E1AF55EC();
  v19 = v77[0];
  v21 = sub_1E1498AF8(v18, v77[0], v20);
  if (*(v1 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_canHidePurchases) != 1)
  {

LABEL_19:

    return v21;
  }

  v58 = v19;
  v22 = OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_mode;
  swift_beginAccess();
  v23 = *(v1 + v22);
  v24 = a1;
  if (v23 >= 2)
  {
    v26 = 0x80000001E1B73700;
    v25 = 0xD000000000000010;
  }

  else
  {
    v25 = 0x4553414843525550;
    v26 = 0xEE00454449485F53;
  }

  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v28 = localizedString(_:comment:)(*&v25, v27);
  countAndFlagsBits = v28._countAndFlagsBits;
  object = v28._object;
  v29 = sub_1E1926F88(0x73616C732E657965, 0xE900000000000068, 20.0, 20.0);
  memset(v77, 0, sizeof(v77));
  v30 = v29;

  sub_1E1AF3DFC();
  v31 = v15;
  v32 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v7);
  v33 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v34 = swift_allocObject();
  v60 = v32;
  *(v34 + 16) = v32;
  v35 = v31;
  (*(v8 + 32))(v34 + v33, &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  type metadata accessor for LocalAction(0);
  v36 = swift_allocObject();
  v37 = (v36 + OBJC_IVAR____TtC11AppStoreKit11LocalAction_handler);
  *v37 = sub_1E174C74C;
  v37[1] = v34;
  sub_1E134FD1C(v77, v76, &unk_1ECEB5670, qword_1E1B03EC0);
  v38 = v64;
  v39 = v65;
  (*(v64 + 16))(v63, v35, v65);
  v40 = sub_1E1AF46DC();
  v41 = v66;
  (*(*(v40 - 8) + 56))(v66, 1, 1, v40);
  v42 = (v36 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v42 = 0u;
  v42[1] = 0u;
  sub_1E134FD1C(v76, &v70, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v71 + 1))
  {
    v73 = v70;
    v74 = v71;
    v75 = v72;
  }

  else
  {

    v43 = v61;
    sub_1E1AEFE9C();
    v44 = sub_1E1AEFE7C();
    v46 = v45;
    (*(v62 + 8))(v43, v59);
    v68 = v44;
    v69 = v46;
    sub_1E1AF6F6C();
    sub_1E1308058(&v70, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(v76, &unk_1ECEB5670, qword_1E1B03EC0);
  (*(v38 + 8))(v35, v39);
  sub_1E1308058(v77, &unk_1ECEB5670, qword_1E1B03EC0);
  v47 = v36 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  v48 = v74;
  *v47 = v73;
  *(v47 + 1) = v48;
  *(v47 + 4) = v75;
  sub_1E134B7C8(v41, v36 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v49 = object;
  v36[2] = countAndFlagsBits;
  v36[3] = v49;
  v36[4] = v30;
  v36[5] = 0;
  (*(v38 + 32))(v36 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v63, v39);

  if (!v21)
  {
    type metadata accessor for FlowPreviewActionsConfiguration();
    v21 = swift_allocObject();
    *(v21 + 48) = 0;
    *(v21 + 56) = 1;
    v50 = MEMORY[0x1E69E7CC0];
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *(v21 + 16) = v50;
    *(v21 + 40) = 1;
    swift_beginAccess();
    *(v21 + 48) = 0;
    *(v21 + 56) = 1;
  }

  swift_beginAccess();

  MEMORY[0x1E68FEF20](v51);
  if (*((*(v21 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v21 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E1AF625C();
  }

  sub_1E1AF62AC();
  v52 = *(v21 + 16);
  swift_endAccess();
  if (v52 >> 62)
  {
    v53 = sub_1E1AF71CC();
  }

  else
  {
    v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!__OFSUB__(v53, 1))
  {
    swift_beginAccess();
    *(v21 + 48) = v53 - 1;
    *(v21 + 56) = 0;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E174B4E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_mode;
    swift_beginAccess();
    if (*(v4 + v5) && *(v4 + v5) != 1)
    {

      v7 = 0;
    }

    else
    {
      v6 = sub_1E1AF74AC();

      v7 = v6 ^ 1;
    }

    sub_1E1749ECC(a2, v7 & 1);
  }

  return result;
}

BOOL sub_1E174B62C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchases);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*(v2 + 24) + 16);
  return sub_1E1AF018C() < v3;
}

void sub_1E174B678(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchases);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(v3 + 24);

  v5 = sub_1E1AF018C();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 >= *(v4 + 16))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  sub_1E1300B24(v4 + 40 * v5 + 32, a1);
}

double sub_1E174B710@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x8000;
  return result;
}

uint64_t sub_1E174B7FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000025 && 0x80000001E1B738F0 == a2;
  if (v3 || (sub_1E1AF74AC() & 1) != 0 || a1 == 0xD000000000000024 && 0x80000001E1B73920 == a2 || (sub_1E1AF74AC() & 1) != 0 || a1 == 0xD000000000000023 && 0x80000001E1B73950 == a2 || (sub_1E1AF74AC() & 1) != 0 || a1 == 0xD000000000000024 && 0x80000001E1B73980 == a2 || (sub_1E1AF74AC() & 1) != 0 || a1 == 0xD000000000000027 && 0x80000001E1B739B0 == a2 || (sub_1E1AF74AC() & 1) != 0 || a1 == 0xD00000000000001FLL && 0x80000001E1B739E0 == a2 || (sub_1E1AF74AC() & 1) != 0 || a1 == 0xD000000000000025 && 0x80000001E1B73A00 == a2 || (sub_1E1AF74AC() & 1) != 0 || a1 == 0xD000000000000021 && 0x80000001E1B73A30 == a2 || (sub_1E1AF74AC() & 1) != 0 || a1 == 0xD000000000000012 && 0x80000001E1B73A60 == a2 || (sub_1E1AF74AC() & 1) != 0 || a1 == 0xD000000000000017 && 0x80000001E1B73A80 == a2 || (sub_1E1AF74AC() & 1) != 0 || a1 == 0xD000000000000018 && 0x80000001E1B73AA0 == a2)
  {
    return 1;
  }

  return sub_1E1AF74AC();
}

uint64_t _s11AppStoreKit25PurchasesContentPresenterC5shelf3forAA5ShelfCSi_tF_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A0, &unk_1E1B39700);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v72 = &v60 - v3;
  v4 = sub_1E1AEFEAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v67 = &v60 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v60 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v60 - v17;
  if (*(v0 + OBJC_IVAR____TtC11AppStoreKit25PurchasesContentPresenter_purchases))
  {
  }

  *&v68 = v7;
  v70 = v1;
  v71 = v5;
  v73 = v4;
  v62 = v2;
  type metadata accessor for ShelfHeader();
  memset(v101, 0, sizeof(v101));
  v102 = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  *(v20 + 48) = 769;
  *(v20 + 56) = 0u;
  *(v20 + 72) = 0u;
  *(v20 + 88) = 0;
  *(v20 + 96) = 3;
  *(v20 + 104) = 0u;
  *(v20 + 120) = 0u;
  *(v20 + 136) = 0u;
  *(v20 + 152) = 0u;
  *(v20 + 168) = 0u;
  *(v20 + 178) = 0u;
  v65 = v20;
  *(v20 + 194) = 2;
  v21 = sub_1E1AEFCCC();
  v22 = *(*(v21 - 8) + 56);
  v66 = v18;
  v22(v18, 1, 1, v21);
  v23 = sub_1E1AEFE6C();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = sub_1E1AF46DC();
  v25 = v67;
  (*(*(v24 - 8) + 56))(v67, 1, 1, v24);
  v22(v15, 1, 1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28C8, &qword_1E1B02F60);
  swift_allocObject();
  v64 = sub_1E1AF35CC();
  v69 = type metadata accessor for Shelf(0);
  v26 = swift_allocObject();
  sub_1E134FD1C(v101, &v95, &unk_1ECEB5670, qword_1E1B03EC0);
  v27 = v15;
  if (*(&v96 + 1))
  {
    v98 = v95;
    v99 = v96;
    v100 = v97;
  }

  else
  {
    v28 = v68;
    sub_1E1AEFE9C();
    v29 = sub_1E1AEFE7C();
    v31 = v30;
    (*(v71 + 8))(v28, v73);
    *&v91 = v29;
    *(&v91 + 1) = v31;
    sub_1E1AF6F6C();
    sub_1E1308058(&v95, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  v32 = v26 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id;
  v33 = v99;
  *v32 = v98;
  *(v32 + 16) = v33;
  *(v32 + 32) = v100;
  sub_1E134FD1C(v25, v26 + OBJC_IVAR____TtC11AppStoreKit5Shelf_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  *(v26 + 16) = 25602;
  *(v26 + 18) = 1;
  v34 = MEMORY[0x1E69E7CC0];
  *(v26 + 24) = MEMORY[0x1E69E7CC0];
  LOBYTE(v91) = 2;
  *(v26 + 32) = sub_1E1956360(v34, &v91);
  sub_1E134FD1C(v66, v26 + OBJC_IVAR____TtC11AppStoreKit5Shelf_url, &unk_1ECEB4B60, &unk_1E1B02620);
  *(v26 + OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched) = 0;
  v35 = (v26 + OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup);
  *v35 = 0x6E6F6D6D6F63;
  v35[1] = 0xE600000000000000;
  *(v26 + OBJC_IVAR____TtC11AppStoreKit5Shelf_fetchStrategy) = 0;
  *(v26 + 40) = v65;
  *(v26 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden) = 0;
  v36 = v26 + OBJC_IVAR____TtC11AppStoreKit5Shelf_contentsMetadata;
  *v36 = 0u;
  *(v36 + 16) = 0u;
  *(v36 + 48) = 3221225472;
  *(v36 + 32) = 0u;
  v37 = (v26 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
  *v37 = 0;
  v37[1] = 0;
  *(v26 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction) = 0;
  *(v26 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerStyle) = 1;
  v63 = v12;
  sub_1E134FD1C(v12, v26 + OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate, &unk_1ECEBB780, &unk_1E1B029A0);
  v61 = v27;
  sub_1E134FD1C(v27, v26 + OBJC_IVAR____TtC11AppStoreKit5Shelf_refreshUrl, &unk_1ECEB4B60, &unk_1E1B02620);
  *(v26 + OBJC_IVAR____TtC11AppStoreKit5Shelf_pageChangeMetrics) = 0;
  *(v26 + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints) = 0;
  *(v26 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHorizontal) = 0;
  *(v26 + OBJC_IVAR____TtC11AppStoreKit5Shelf_horizontalScrollTargetBehavior) = 0;
  *(v26 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isPersonalized) = 0;
  *(v26 + OBJC_IVAR____TtC11AppStoreKit5Shelf_rowsPerColumn) = 1;
  v38 = v26 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background;
  *v38 = 0u;
  *(v38 + 16) = 0u;
  *(v38 + 32) = 0x8000;
  *(v26 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel) = v64;
  *(v26 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents) = v34;
  v71 = v26;
  v39 = *(v26 + 24);
  v40 = sub_1E13C50E8();

  v41 = 0;
  v94 = MEMORY[0x1E68FF2E0](0, &type metadata for PersonalizationStyle, v40);
  v73 = v39 + 32;
  v43 = &unk_1E1B219E0;
  v68 = xmmword_1E1B16440;
  while (2)
  {
    while (2)
    {
      v44 = 0uLL;
      v45 = *(v39 + 16);
      if (v41 == v45)
      {
LABEL_8:
        v80 = 0;
        v41 = v45;
        v78 = v44;
        v79 = v44;
        goto LABEL_12;
      }

      while (1)
      {
        if ((v41 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (v41 >= *(v39 + 16))
        {
          goto LABEL_42;
        }

        sub_1E1300B24(v73 + 40 * v41++, &v78);
LABEL_12:
        v76[0] = v78;
        v76[1] = v79;
        v77 = v80;
        if (!*(&v79 + 1))
        {
          memset(v81, 0, 24);
          *(&v81[1] + 8) = v68;
LABEL_20:
          sub_1E1308058(v81, &qword_1ECEB55B8, &qword_1E1B16450);
          v87 = 0;
          v85 = 0u;
          v86 = 0u;
          goto LABEL_21;
        }

        sub_1E1308EC0(v76, v75);
        sub_1E1300B24(v75, &v74);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55A8, &qword_1E1B2E400);
        if ((swift_dynamicCast() & 1) == 0)
        {
          memset(v81, 0, 40);
        }

        __swift_destroy_boxed_opaque_existential_1(v75);
        if (*(&v81[1] + 1) == 1)
        {
          goto LABEL_20;
        }

        v82 = v81[0];
        v83 = v81[1];
        v84 = *&v81[2];
        if (*(&v81[1] + 1))
        {
          break;
        }

        sub_1E1308058(&v82, &qword_1ECEB55B0, &unk_1E1B219E0);
        v44 = 0uLL;
        if (v41 == v45)
        {
          goto LABEL_8;
        }
      }

      *(&v83 + 1) = *(&v81[1] + 1);
      result = sub_1E134FD1C(&v82, v81, &qword_1ECEB55B0, &unk_1E1B219E0);
      if (!*(&v81[1] + 1))
      {
        goto LABEL_45;
      }

      sub_1E1308EC0(v81, &v85);
      sub_1E1308058(&v82, &qword_1ECEB55B0, &unk_1E1B219E0);
      if (!*(&v86 + 1))
      {
LABEL_21:
        sub_1E1308058(&v85, &qword_1ECEB55B0, &unk_1E1B219E0);
        v91 = 0u;
        v92 = 0u;
        v93 = 0;
        goto LABEL_22;
      }

      sub_1E1308EC0(&v85, &v88);
      v48 = *(&v89 + 1);
      v49 = v90;
      __swift_project_boxed_opaque_existential_1Tm(&v88, *(&v89 + 1));
      if ((PersonalizableModel.needsClientPersonalization.getter(v48, v49) & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1(&v88);
        continue;
      }

      break;
    }

    sub_1E1308EC0(&v88, &v91);
LABEL_22:
    v88 = v91;
    v89 = v92;
    v90 = v93;
    if (*(&v92 + 1))
    {
      sub_1E1308EC0(&v88, &v85);
      v47 = *(&v86 + 1);
      v46 = v87;
      __swift_project_boxed_opaque_existential_1Tm(&v85, *(&v86 + 1));
      (*(v46 + 16))(&v82, v47, v46);
      LOBYTE(v46) = v82;
      __swift_destroy_boxed_opaque_existential_1(&v85);
      sub_1E1893F1C(&v91, v46);
      continue;
    }

    break;
  }

  v42 = v71;
  *(v71 + OBJC_IVAR____TtC11AppStoreKit5Shelf_personalizationStyles) = v94;
  v50 = (v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_accessibilityMetadata);
  *v50 = 0u;
  v50[1] = 0u;
  v43 = *(v42 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onRemoveModelEvents);
  if (!(v43 >> 62))
  {
    v51 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_31;
  }

LABEL_43:
  v59 = v42;
  v51 = sub_1E1AF71CC();
  v42 = v59;
LABEL_31:
  v52 = v67;
  v53 = v62;
  v54 = v63;
  if (!v51)
  {
    v58 = v42;

LABEL_40:
    sub_1E1308058(v61, &unk_1ECEB4B60, &unk_1E1B02620);
    sub_1E1308058(v52, &unk_1ECEB1770, &unk_1E1AFED20);
    sub_1E1308058(v54, &unk_1ECEBB780, &unk_1E1B029A0);
    sub_1E1308058(v66, &unk_1ECEB4B60, &unk_1E1B02620);
    sub_1E1308058(v101, &unk_1ECEB5670, qword_1E1B03EC0);
    return v58;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55C0, &unk_1E1B16B50);
  if (v51 >= 1)
  {
    v73 = v43 & 0xC000000000000001;

    v55 = 0;
    v56 = v43;
    do
    {
      if (v73)
      {
        MEMORY[0x1E68FFD80](v55, v43);
      }

      else
      {
      }

      ++v55;
      sub_1E1302CD4(&qword_1EE1E3C40, &qword_1ECEB55C0, &unk_1E1B16B50, MEMORY[0x1E69AAEC8]);
      sub_1E1AF3CDC();
      v57 = v72;
      sub_1E1AF3CEC();

      __swift_destroy_boxed_opaque_existential_1(&v91);
      (*(v53 + 8))(v57, v70);
      v43 = v56;
    }

    while (v51 != v55);

    v52 = v67;
    v54 = v63;
    v58 = v71;
    goto LABEL_40;
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1E174C74C()
{
  v1 = *(sub_1E1AF01FC() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1E174B4E0(v2, v3);
}

unint64_t sub_1E174C7B4()
{
  result = qword_1ECEB8B40;
  if (!qword_1ECEB8B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8B40);
  }

  return result;
}

uint64_t type metadata accessor for PurchasesContentPresenter(uint64_t a1)
{
  result = qword_1ECEB8B50;
  if (!qword_1ECEB8B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E174C984(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CompoundShelfSupplementaryProvider.__allocating_init(children:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

double CompoundShelfSupplementaryProvider.children.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t CompoundShelfSupplementaryProvider.addChild(_:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v2 + 16);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_1E172EF9C(0, v5[2] + 1, 1, v5);
      *(v2 + 16) = v5;
    }

    v8 = v5[2];
    v7 = v5[3];
    if (v8 >= v7 >> 1)
    {
      v5 = sub_1E172EF9C((v7 > 1), v8 + 1, 1, v5);
    }

    v5[2] = v8 + 1;
    v9 = &v5[2 * v8];
    v9[4] = v4;
    v9[5] = a2;
    *(v2 + 16) = v5;
    return swift_endAccess();
  }

  return result;
}

double CompoundShelfSupplementaryProvider.removeChild(_:)(uint64_t a1)
{
  if (a1)
  {
    swift_beginAccess();
    v4 = *(v1 + 16);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      for (i = (v4 + 32); *i != a1; i += 2)
      {
        if (v5 == ++v6)
        {
          return result;
        }
      }

      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_1E148790C(v6);
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

Swift::Void __swiftcall CompoundShelfSupplementaryProvider.removeAllChildren()()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1E174CD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *, uint64_t, __n128))
{
  swift_beginAccess();
  v11 = *(v5 + 16);
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;

  v12 = (a5)(a4, v14, v11);

  return v12;
}

void CompoundShelfSupplementaryProvider.supplementaryRegistration(for:in:asPartOf:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  v7 = *(v5 + 16);
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    v10 = (v7 + 40);
    while (v9 < *(v7 + 16))
    {
      v11 = *v10;
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 24);
      swift_unknownObjectRetain();
      v13(&v18, a1, a2, a3, a4, ObjectType, v11);
      swift_unknownObjectRelease();
      if (v19)
      {

        sub_1E1361B28(&v18, a5);
        return;
      }

      ++v9;
      sub_1E1488CF4(&v18);
      v10 += 2;
      if (v8 == v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }
}

uint64_t CompoundShelfSupplementaryProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E174CF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, void *, uint64_t, __n128))
{
  swift_beginAccess();
  v13 = *(v7 + 16);
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;

  v14 = (a7)(a6, v16, v13);

  return v14;
}

uint64_t sub_1E174D0A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  result = (*(v7 + 16))(v4, v5, v6, ObjectType, v7);
  *a2 = result;
  return result;
}

uint64_t sub_1E174D12C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  result = (*(v7 + 8))(v4, v5, v6, ObjectType, v7);
  *a2 = result;
  return result;
}

uint64_t UnboundedCache.init(removeConditions:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = sub_1E1AF5CCC();
  type metadata accessor for Box(0, v10, v11, v12);
  swift_getTupleTypeMetadata2();
  v13 = sub_1E1AF627C();
  v15 = sub_1E1694F24(v13, a2, a3, a4, v14);

  *&v21 = v15;
  *a5 = Box.__allocating_init(value:)(&v21);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = v16;
  if (v9)
  {

    sub_1E154A7C0(sub_1E174DDAC, v17, &v21);
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v18 = v22;
  *(a5 + 8) = v21;
  *(a5 + 24) = v18;
  if ((v9 & 2) != 0)
  {
    sub_1E154A7E8(sub_1E174DDAC, v17, &v21);
  }

  else
  {

    v21 = 0u;
    v22 = 0u;
  }

  v19 = v22;
  *(a5 + 40) = v21;
  *(a5 + 56) = v19;
}

uint64_t sub_1E174D3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v8[2] = a2;
    v8[3] = a3;
    v8[4] = a4;
    Box.write(with:)(sub_1E174E114, v8);
  }

  return result;
}

uint64_t UnboundedCache.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E174DDCC(a1, a2, a3);
  (*(*(*(a3 + 16) - 8) + 8))(a2);
  v6 = sub_1E1AF6D9C();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

uint64_t sub_1E174D594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1E1AF6D9C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  (*(v16 + 16))(&v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a4, v14);
  (*(v10 + 16))(v12, a3, v9);
  sub_1E1AF5CCC();
  return sub_1E1AF5CFC();
}

uint64_t (*UnboundedCache.subscript.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0xC0uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[15] = v3;
  v7[7] = a3;
  v7[16] = *(a3 + 24);
  v9 = sub_1E1AF6D9C();
  v8[17] = v9;
  v10 = *(v9 - 8);
  v8[18] = v10;
  v11 = *(v10 + 64);
  if (v6)
  {
    v8[19] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v8[19] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v8[20] = v12;
  v13 = *(a3 + 16);
  v8[21] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v8[22] = v14;
  if (v6)
  {
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v16 = malloc(*(v14 + 64));
  }

  v8[23] = v16;
  (*(v15 + 16))();
  UnboundedCache.subscript.getter();
  return sub_1E174D8E0;
}

void sub_1E174D8E0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[22];
    v3 = v2[23];
    v5 = v2[20];
    v6 = v2[21];
    v8 = v2[18];
    v7 = v2[19];
    v9 = v2[17];
    v18 = v2[16];
    v10 = v2[7];
    (*(v8 + 16))(v7, v5, v9);
    v2[2] = v6;
    v2[3] = v18;
    v2[4] = *(v10 + 32);
    v2[5] = v3;
    v2[6] = v7;
    Box.write(with:)(sub_1E174E104, v2);
    (*(v4 + 8))(v3, v6);
    v11 = *(v8 + 8);
    v11(v7, v9);
    v11(v5, v9);
  }

  else
  {
    v12 = v2[22];
    v3 = v2[23];
    v5 = v2[20];
    v13 = v2[21];
    v14 = v2[18];
    v7 = v2[19];
    v15 = v2[16];
    v16 = v2[17];
    v17 = v2[7];
    v2[10] = v13;
    v2[11] = v15;
    v2[12] = *(v17 + 32);
    v2[13] = v3;
    v2[14] = v5;
    Box.write(with:)(sub_1E174E104, (v2 + 8));
    (*(v12 + 8))(v3, v13);
    (*(v14 + 8))(v5, v16);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t UnboundedCache.removeValue(forKey:)(uint64_t a1, uint64_t a2)
{
  v3[1] = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = a1;
  return Box.write(with:)(sub_1E174DE24, v3);
}

uint64_t sub_1E174DADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1E1AF6D9C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1E1AF5CCC();
  sub_1E1AF5C8C();
  return (*(v6 + 8))(v8, v5);
}

Swift::Void __swiftcall UnboundedCache.removeAll()()
{
  v1[1] = *(v0 + 16);
  v2 = *(v0 + 32);
  Box.write(with:)(sub_1E174E158, v1);
}

uint64_t sub_1E174DC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E174DDCC(a1, a2, a3);
  (*(*(*(a3 + 16) - 8) + 8))(a2);
  v6 = sub_1E1AF6D9C();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void (*sub_1E174DCF4(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = UnboundedCache.subscript.modify(v6, a2, a3);
  return sub_1E135BEB4;
}

uint64_t sub_1E174DDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[1] = *(a3 + 16);
  v5 = *(a3 + 32);
  v6 = a2;
  v7 = a1;
  return Box.write(with:)(sub_1E174E104, v4);
}

unint64_t sub_1E174DE34()
{
  result = qword_1ECEB8B60;
  if (!qword_1ECEB8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8B60);
  }

  return result;
}

unint64_t sub_1E174DE8C()
{
  result = qword_1ECEB8B68;
  if (!qword_1ECEB8B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8B68);
  }

  return result;
}

unint64_t sub_1E174DEE4()
{
  result = qword_1ECEB8B70;
  if (!qword_1ECEB8B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8B70);
  }

  return result;
}

unint64_t sub_1E174DF3C()
{
  result = qword_1ECEB8B78;
  if (!qword_1ECEB8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8B78);
  }

  return result;
}

uint64_t sub_1E174E008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E174E044(uint64_t *a1, int a2)
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

uint64_t sub_1E174E08C(uint64_t result, int a2, int a3)
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

uint64_t sub_1E174E400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v6 = v4;
  v38 = a1;
  v34 = *v4;
  v37 = sub_1E1AF4A9C();
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF436C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ASKBagContract(0);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v12 = qword_1EE216760;
  swift_beginAccess();
  v13 = *(v9 + 16);
  v33 = v8;
  v32 = v13;
  v13(v11, &v4[v12], v8);
  type metadata accessor for PendingPageRender(0);
  swift_allocObject();

  v15 = PendingPageRender.init(bag:metricsPipeline:)(v14, v11);
  swift_beginAccess();
  *(v6 + 3) = v15;

  if (v15)
  {
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = &v15[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_contextProvider];
    swift_beginAccess();
    *v17 = a3;
    *(v17 + 1) = v16;
  }

  v18 = *(v6 + 3);
  if (v18)
  {
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = (v18 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_didPost);
    swift_beginAccess();
    v21 = *v20;
    v22 = v20[1];
    *v20 = v39;
    v20[1] = v19;

    sub_1E1361B18(v21, v22);
  }

  swift_beginAccess();
  if (byte_1ECEB8F60 == 1)
  {
  }

  v23 = v38;
  if (!v38)
  {
    sub_1E1AF772C();
    sub_1E1AF3ACC();
    v32(v11, &v6[v12], v33);
    sub_1E1AF50BC();
    swift_allocObject();
    v23 = sub_1E1AF50AC();
  }

  swift_beginAccess();
  *(v6 + 4) = v23;

  v24 = &v6[qword_1EE216770];
  swift_beginAccess();
  v25 = v24[1];
  if (!v25 || !*(v6 + 4))
  {
  }

  v26 = *v24;
  v27 = qword_1EE1E3990;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = v37;
  __swift_project_value_buffer(v37, qword_1EE1E3998);
  v40 = v26;
  v41 = v25;
  if (qword_1EE1E39B8 != -1)
  {
    swift_once();
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78, &unk_1E1B297F0);
  __swift_project_value_buffer(v29, qword_1EE1E39C0);
  v30 = v35;
  sub_1E1AF4A3C();

  sub_1E1AF505C();

  return (*(v36 + 8))(v30, v28);
}

char *sub_1E174E9A8()
{

  sub_1E1308058(v0 + 40, &qword_1ECEB2588, &unk_1E1B05C10);
  v1 = qword_1EE216760;
  v2 = sub_1E1AF436C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  sub_1E1753924(*(v0 + *(*v0 + 176)), *(v0 + *(*v0 + 176) + 8), *(v0 + *(*v0 + 176) + 16), *(v0 + *(*v0 + 176) + 24));

  sub_1E1308058(v0 + *(*v0 + 192), &unk_1ECEB7230, qword_1E1B103B0);
  sub_1E1308058(v0 + *(*v0 + 200), &qword_1ECEB2B70, &qword_1E1B14250);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

char *sub_1E174EB7C()
{

  sub_1E1308058(v0 + 40, &qword_1ECEB2588, &unk_1E1B05C10);
  v1 = qword_1EE216760;
  v2 = sub_1E1AF436C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  sub_1E1470BE4(*(v0 + *(*v0 + 176)), *(v0 + *(*v0 + 176) + 8), *(v0 + *(*v0 + 176) + 16));

  sub_1E1308058(v0 + *(*v0 + 192), &unk_1ECEB7230, qword_1E1B103B0);
  sub_1E1308058(v0 + *(*v0 + 200), &qword_1ECEB2B70, &qword_1E1B14250);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1E174ED4C@<X0>(char *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7210, &unk_1E1B143E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v95 = &v85 - v5;
  v103 = sub_1E1AF4A9C();
  v100 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v102 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v85 - v8;
  v10 = sub_1E1AF3C3C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v88 = v4;
    v89 = v3;
    v94 = a2;
    v101 = *(Strong + qword_1EE216758);
    swift_beginAccess();
    sub_1E134FD1C(v15 + 40, v108, &qword_1ECEB2588, &unk_1E1B05C10);
    v16 = v109;
    if (v109)
    {
      v99 = v110;
      v17 = __swift_project_boxed_opaque_existential_1Tm(v108, v109);
      v18 = *(v16 - 8);
      v19 = MEMORY[0x1EEE9AC00](v17);
      v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v21, v19);
      swift_unknownObjectRetain();
      sub_1E1308058(v108, &qword_1ECEB2588, &unk_1E1B05C10);
      sub_1E1AF5B8C();
      (*(v18 + 8))(v21, v16);
      v22 = sub_1E1AF3AEC();
      (*(v11 + 8))(v13, v10);
    }

    else
    {
      swift_unknownObjectRetain();
      sub_1E1308058(v108, &qword_1ECEB2588, &unk_1E1B05C10);
      v22 = 0;
    }

    v26 = v100;
    v97 = v22;
    v27 = (v15 + qword_1EE216770);
    swift_beginAccess();
    v29 = *v27;
    v28 = v27[1];
    v30 = (v15 + qword_1EE216748);
    swift_beginAccess();
    v31 = v30[1];
    v86 = *v30;
    v32 = qword_1EE1F3430;
    v33 = v101;
    swift_unknownObjectRetain();
    v99 = v28;

    v98 = v31;

    if (v32 != -1)
    {
      swift_once();
    }

    v34 = off_1EE1F3438;
    swift_beginAccess();
    v91 = *(v34 + 80);
    v35 = *(*v15 + 192);
    swift_beginAccess();
    sub_1E134FD1C(v15 + v35, v108, &unk_1ECEB7230, qword_1E1B103B0);
    v36 = *(*v15 + 200);
    swift_beginAccess();
    sub_1E134FD1C(v15 + v36, v107, &qword_1ECEB2B70, &qword_1E1B14250);
    swift_beginAccess();
    v37 = v34[17];
    v38 = (v15 + *(*v15 + 216));
    swift_beginAccess();
    v39 = *v38;
    v90 = v38[1];
    v40 = (v15 + *(*v15 + 208));
    swift_beginAccess();
    v41 = *v40;
    v87 = v40[1];
    v96 = v41;
    swift_unknownObjectRetain();
    v100 = v37;

    v92 = v39;
    swift_unknownObjectRetain();
    sub_1E1AF4A8C();
    v42 = qword_1EE1E3948;
    swift_unknownObjectRetain();
    v43 = v33;
    if (v42 != -1)
    {
      swift_once();
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B80, &unk_1E1B0C0C0);
    __swift_project_value_buffer(v44, qword_1EE1E3950);
    v106[0] = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B88, &unk_1E1B143F0);
    v45 = v102;
    sub_1E1AF4A3C();
    v46 = *(v26 + 8);
    v47 = v103;
    v46(v9, v103);
    v93 = v43;
    swift_unknownObjectRelease();
    v48 = *(v26 + 32);
    v49 = v45;
    v50 = v46;
    v48(v9, v49, v47);
    if (v99)
    {
      *&v106[0] = v29;
      *(&v106[0] + 1) = v99;
      if (qword_1EE1E39B8 != -1)
      {
        swift_once();
      }

      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78, &unk_1E1B297F0);
      __swift_project_value_buffer(v51, qword_1EE1E39C0);
      v52 = v102;
      sub_1E1AF4A3C();
      v53 = v103;
      v50(v9, v103);
      v48(v9, v52, v53);
    }

    v54 = v102;
    if (v98)
    {
      *&v106[0] = v86;
      *(&v106[0] + 1) = v98;
      if (qword_1EE1E3970 != -1)
      {
        swift_once();
      }

      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78, &unk_1E1B297F0);
      __swift_project_value_buffer(v55, qword_1EE1E3978);
      sub_1E1AF4A3C();
      v56 = v103;
      v50(v9, v103);
      v48(v9, v54, v56);
    }

    v57 = v48;
    *&v101 = v50;
    LOBYTE(v106[0]) = 0;
    if (qword_1EE1E3928 != -1)
    {
      swift_once();
    }

    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B90, &unk_1E1B21B00);
    __swift_project_value_buffer(v58, qword_1EE1E3930);
    v59 = v102;
    sub_1E1AF4A3C();
    v60 = v103;
    v61 = v101;
    (v101)(v9, v103);
    v57(v9, v59, v60);
    if (v97)
    {
      *&v106[0] = v97;
      v62 = v58;
      v63 = v95;
      sub_1E1AF4A5C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
      sub_1E1AF4A3C();
      v64 = v63;
      v58 = v62;
      (*(v88 + 8))(v64, v89);
      v65 = v103;
      v61(v9, v103);
      v57(v9, v59, v65);
    }

    v66 = v92;
    if (v91 != 2)
    {
      LOBYTE(v106[0]) = v91 & 1;
      if (qword_1ECEB0E70 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v58, qword_1EE1D2960);
      v67 = v102;
      sub_1E1AF4A3C();
      v68 = v103;
      v61(v9, v103);
      v57(v9, v67, v68);
    }

    sub_1E134FD1C(v108, &v104, &unk_1ECEB7230, qword_1E1B103B0);
    if (v105)
    {
      sub_1E1308EC0(&v104, v106);
      v69 = v102;
      if (qword_1EE1D28F8 != -1)
      {
        swift_once();
      }

      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7250, &unk_1E1B103A0);
      __swift_project_value_buffer(v70, qword_1EE1D2900);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC8, &unk_1E1B21B20);
      sub_1E1AF4A3C();
      __swift_destroy_boxed_opaque_existential_1(v106);
      v71 = v103;
      v61(v9, v103);
      v57(v9, v69, v71);
    }

    else
    {
      sub_1E1308058(&v104, &unk_1ECEB7230, qword_1E1B103B0);
      v69 = v102;
    }

    v72 = v66;
    sub_1E134FD1C(v107, &v104, &qword_1ECEB2B70, &qword_1E1B14250);
    v73 = v100;
    if (v105)
    {
      sub_1E1308EC0(&v104, v106);
      if (qword_1EE1D28B0 != -1)
      {
        swift_once();
      }

      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7240, &unk_1E1B14420);
      __swift_project_value_buffer(v74, qword_1EE1D28B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC0, &unk_1E1B21B10);
      sub_1E1AF4A3C();
      __swift_destroy_boxed_opaque_existential_1(v106);
      v75 = v103;
      (v101)(v9, v103);
      v57(v9, v69, v75);
      v73 = v100;
      if (!v100)
      {
        goto LABEL_42;
      }
    }

    else
    {
      sub_1E1308058(&v104, &qword_1ECEB2B70, &qword_1E1B14250);
      if (!v73)
      {
LABEL_42:
        if (v96)
        {
          *&v106[0] = v96;
          *(&v106[0] + 1) = v87;
          v79 = qword_1EE1D28D0;
          swift_unknownObjectRetain();
          if (v79 != -1)
          {
            swift_once();
          }

          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA8, qword_1E1B1DE50);
          __swift_project_value_buffer(v80, qword_1EE1D28D8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BB0, &unk_1E1B14410);
          sub_1E1AF4A3C();
          v81 = v103;
          (v101)(v9, v103);
          swift_unknownObjectRelease();
          v57(v9, v69, v81);
        }

        if (v72)
        {
          *&v106[0] = v72;
          *(&v106[0] + 1) = v90;
          v82 = qword_1EE1D2918;
          swift_unknownObjectRetain();
          if (v82 != -1)
          {
            swift_once();
          }

          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B98, &unk_1E1B14400);
          __swift_project_value_buffer(v83, qword_1EE1D2920);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA0, &qword_1E1B061B0);
          sub_1E1AF4A3C();

          swift_unknownObjectRelease_n();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          v84 = v103;
          (v101)(v9, v103);
          sub_1E1308058(v107, &qword_1ECEB2B70, &qword_1E1B14250);
          sub_1E1308058(v108, &unk_1ECEB7230, qword_1E1B103B0);
          swift_unknownObjectRelease();
          v57(v9, v69, v84);
        }

        else
        {

          swift_unknownObjectRelease_n();

          swift_unknownObjectRelease();

          sub_1E1308058(v107, &qword_1ECEB2B70, &qword_1E1B14250);
          sub_1E1308058(v108, &unk_1ECEB7230, qword_1E1B103B0);
        }

        return (v57)(v94, v9, v103);
      }
    }

    *&v106[0] = v73;
    v76 = qword_1ECEB0E78;

    if (v76 != -1)
    {
      swift_once();
    }

    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BB8, &unk_1E1B2E830);
    __swift_project_value_buffer(v77, qword_1ECEB5998);
    type metadata accessor for Action(0);
    sub_1E1AF4A3C();
    v78 = v103;
    (v101)(v9, v103);

    v57(v9, v69, v78);
    goto LABEL_42;
  }

  if (qword_1EE1E3990 != -1)
  {
    swift_once();
  }

  v23 = v103;
  v24 = __swift_project_value_buffer(v103, qword_1EE1E3998);
  return (*(v100 + 16))(a2, v24, v23);
}

uint64_t sub_1E174FD34(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    *(v2 + 24) = 0;
  }

  return result;
}

unint64_t sub_1E174FDAC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + *(*v3 + 176);
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *v7 >> 62;
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = (v8 & 0x3FFFFFFFFFFFFFFFLL);
      sub_1E1300E34(v9, v10);
LABEL_20:
      sub_1E1470C4C(a1, a2, a3);
      sub_1E1470BE4(v8, v9, v10);
      sub_1E1470BE4(a1, a2, a3);
      v18 = *v7;
      v19 = *(v7 + 8);
      v20 = *(v7 + 16);
      sub_1E1470C4C(*v7, v19, v20);
      sub_1E1AF5BCC();
      v13 = v18;
      v14 = v19;
      v15 = v20;
      return sub_1E1470BE4(v13, v14, v15);
    }

    if (v8 == 0x8000000000000000 && (v10 | v9) == 0)
    {
      if (a1 >> 62 != 2 || a1 != 0x8000000000000000 || a3 | a2)
      {
        goto LABEL_20;
      }

      sub_1E1470BE4(0x8000000000000000, 0, 0);
      v13 = 0x8000000000000000;
    }

    else
    {
      if (a1 >> 62 != 2 || a1 != 0x8000000000000008 || a3 | a2)
      {
        goto LABEL_20;
      }

      sub_1E1470BE4(0x8000000000000008, 0, 0);
      v13 = 0x8000000000000008;
    }

    v14 = 0;
    v15 = 0;
  }

  else
  {
    if (a1 >> 62)
    {

      goto LABEL_20;
    }

    sub_1E1470C4C(*v7, *(v7 + 8), *(v7 + 16));
    sub_1E1470C4C(a1, a2, a3);
    sub_1E1470BE4(v8, v9, v10);
    v13 = a1;
    v14 = a2;
    v15 = a3;
  }

  return sub_1E1470BE4(v13, v14, v15);
}

BOOL static TopChartsDiffablePagePresenter.SegmentPresentersState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

BOOL sub_1E1750004(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t TopChartsDiffablePagePresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1E1752EB4(a1, a2, a3);

  return v6;
}

uint64_t TopChartsDiffablePagePresenter.init(objectGraph:pageUrl:sidePackedPage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1E1752EB4(a1, a2, a3);

  return v3;
}

uint64_t sub_1E17500FC(uint64_t a1)
{
  v2 = v1;
  v17[1] = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8BC8, &qword_1E1B2E740);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8BE8, &qword_1E1B2E808);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v17 - v12;
  v14 = qword_1ECEB8BC0;
  swift_beginAccess();
  sub_1E134FD1C(v2 + v14, v9, &qword_1ECEB8BC8, &qword_1E1B2E740);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1E1308058(v9, &qword_1ECEB8BC8, &qword_1E1B2E740);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    if (a1)
    {
      sub_1E1AF5BBC();
    }

    (*(v11 + 8))(v13, v10);
  }

  if (*(v2 + qword_1ECEB8B80))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8BF0, &unk_1E1B2E840);
    sub_1E17537F8();

    sub_1E1AF3CDC();
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(v18);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  (*(v11 + 56))(v6, v15, 1, v10);
  swift_beginAccess();
  sub_1E13619D8(v6, v2 + v14, &qword_1ECEB8BC8, &qword_1E1B2E740);
  return swift_endAccess();
}

uint64_t TopChartsDiffablePagePresenter.pageUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1ECEF49C0;
  swift_beginAccess();
  return sub_1E134FD1C(v1 + v3, a1, &unk_1ECEB4B60, &unk_1E1B02620);
}

uint64_t TopChartsDiffablePagePresenter.initialSegmentIndex.getter()
{
  v1 = qword_1ECEF49D0;
  swift_beginAccess();
  return *(v0 + v1);
}

double TopChartsDiffablePagePresenter.segmentPresenters.getter()
{
  swift_beginAccess();

  return result;
}

void TopChartsDiffablePagePresenter.segmentPresentersState.getter(_BYTE *a1@<X8>)
{
  v3 = qword_1ECEF49E0;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

double sub_1E1750594(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + qword_1ECEF49E8);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  sub_1E1AF5BCC();

  return result;
}

uint64_t TopChartsDiffablePagePresenter.selectedCategoryIndexPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1ECEF49F0;
  swift_beginAccess();
  v4 = sub_1E1AF01FC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

Swift::Void __swiftcall TopChartsDiffablePagePresenter.viewDidAppear()()
{
  swift_beginAccess();
  if (*(v0 + 32))
  {

    sub_1E1AF506C();
  }
}

void TopChartsDiffablePagePresenter.viewWillDisappear(forReason:)(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 32))
  {

    sub_1E1AF507C();
  }
}

Swift::Void __swiftcall TopChartsDiffablePagePresenter.update(ignoringCache:)(Swift::Bool ignoringCache)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15[-v4];
  v6 = (v1 + *(*v1 + 176));
  swift_beginAccess();
  v7 = v6 + 1;
  v8 = *v6;
  if ((*v6 >> 62) >= 2 && (v8 == 0x8000000000000000 ? (v9 = *(v6 + 1) == 0) : (v9 = 0), v9))
  {
    *v6 = 0x8000000000000008;
    *v7 = 0;
    v6[2] = 0;
    sub_1E1470C4C(0x8000000000000000, 0, 0);
    sub_1E1470BE4(0x8000000000000000, 0, 0);
    sub_1E174FDAC(0x8000000000000000, 0, 0);
    sub_1E1470BE4(0x8000000000000000, 0, 0);
    if (*(v1 + qword_1ECEB8B80))
    {

      TopChartsDiffablePageContentPresenter.fetchPage()();
    }
  }

  else if (ignoringCache)
  {
    v10 = v6[1];
    v11 = v6[2];
    *v6 = 0x8000000000000000;
    *v7 = 0;
    v6[2] = 0;
    sub_1E1470C4C(v8, v10, v11);
    sub_1E1470BE4(v8, v10, v11);
    sub_1E174FDAC(v8, v10, v11);
    sub_1E1470BE4(v8, v10, v11);
    sub_1E174E400(0, &unk_1F5C49C88, sub_1E17538EC, sub_1E1753908);
    v12 = qword_1ECEF49C0;
    swift_beginAccess();
    sub_1E134FD1C(v1 + v12, v5, &unk_1ECEB4B60, &unk_1E1B02620);
    v13 = sub_1E1750A10(v5);
    sub_1E1308058(v5, &unk_1ECEB4B60, &unk_1E1B02620);
    v14 = *(v1 + qword_1ECEB8B80);
    *(v1 + qword_1ECEB8B80) = v13;

    sub_1E17500FC(v14);

    TopChartsDiffablePagePresenter.update(ignoringCache:)(1);
  }
}

uint64_t sub_1E1750A10(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14[-v4];
  v6 = qword_1ECEF49C0;
  swift_beginAccess();
  sub_1E137F8F8(a1, v1 + v6, &unk_1ECEB4B60, &unk_1E1B02620);
  swift_endAccess();
  v7 = v1[2];
  sub_1E134FD1C(a1, v5, &unk_1ECEB4B60, &unk_1E1B02620);
  swift_beginAccess();
  v8 = v1[3];
  swift_beginAccess();
  v9 = v1[4];
  type metadata accessor for TopChartsDiffablePageContentPresenter(0);
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_page) = 0;
  v11 = OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage) = 0;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_isFetchingPage) = 0;
  v12 = OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_onPageFetched;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8BF0, &unk_1E1B2E840);
  swift_allocObject();

  *(v10 + v12) = sub_1E1AF5BEC();
  *(v10 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_objectGraph) = v7;
  sub_1E1AF436C();
  sub_1E1AF421C();

  sub_1E1AF55EC();
  sub_1E13E23F8(v5, v10 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_pageUrl);
  *(v10 + v11) = 0;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_pendingPageRender) = v8;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_pageRenderMetrics) = v9;
  return v10;
}

unint64_t sub_1E1750C38(uint64_t a1)
{
  v3 = type metadata accessor for PresenterError(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1E1AEFE6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(a1 + 8);
  if (v12 < 0)
  {
    v14 = qword_1ECEF49C0;
    swift_beginAccess();
    sub_1E134FD1C(v1 + v14, v5 + *(v3 + 20), &unk_1ECEB4B60, &unk_1E1B02620);
    *v5 = v11;
    swift_beginAccess();
    v15 = v1[3];
    if (v15)
    {
      sub_1E17538A4(&qword_1EE1DFCE0, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
      v16 = swift_allocError();
      sub_1E13614D0(v5, v17);
      v18 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
      swift_beginAccess();
      v19 = *(v15 + v18);
      sub_1E1753898(v11, v12);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v15 + v18) = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_1E172D0E4(0, v19[2] + 1, 1, v19);
        *(v15 + v18) = v19;
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_1E172D0E4((v21 > 1), v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      v19[v22 + 4] = v16;
      *(v15 + v18) = v19;
      swift_endAccess();
    }

    else
    {
      v34 = v11;
    }

    sub_1E17538A4(&qword_1EE1DFCE0, type metadata accessor for PresenterError, &protocol conformance descriptor for PresenterError);
    v35 = swift_allocError();
    sub_1E13614D0(v5, v36);
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = v35 | 0x4000000000000000;
    v39 = (v1 + *(*v1 + 176));
    swift_beginAccess();
    v40 = *v39;
    v41 = v39[1];
    v42 = v39[2];
    *v39 = v38;
    v39[1] = sub_1E1753890;
    v39[2] = v37;

    sub_1E1470C4C(v40, v41, v42);
    sub_1E1470BE4(v40, v41, v42);
    sub_1E174FDAC(v40, v41, v42);
    sub_1E1470BE4(v40, v41, v42);
    sub_1E1361548(v5);
  }

  else
  {
    if (v12)
    {
      sub_1E17511DC(v11, 1);
      v13 = (v1 + *(*v1 + 176));
    }

    else
    {
      v23 = v8;
      v24 = v1;
      sub_1E17511DC(v11, 0);
      swift_beginAccess();
      v25 = v1[3];
      if (v25)
      {

        sub_1E1AEFE5C();
        sub_1E1AEFE1C();
        v27 = v26;
        (*(v7 + 8))(v10, v23);
        v28 = v25 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_rootViewModelPresentTime;
        swift_beginAccess();
        *v28 = v27;
        *(v28 + 8) = 0;
        v29 = *(v25 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasViewModelPresentTime[0]);
        swift_beginAccess();
        *(v29 + 40) = 1;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_1E149DEE8();
        }

        v1 = v24;
      }

      v13 = (v1 + *(*v1 + 176));
    }

    swift_beginAccess();
    v30 = *v13;
    v31 = v13[1];
    v32 = v13[2];
    v13[1] = 0;
    v13[2] = 0;
    *v13 = v11;
    sub_1E1753898(v11, v12);
    sub_1E1470C4C(v30, v31, v32);
    sub_1E1470BE4(v30, v31, v32);
    sub_1E174FDAC(v30, v31, v32);
    return sub_1E1470BE4(v30, v31, v32);
  }
}

void sub_1E17511DC(uint64_t a1, int a2)
{
  v3 = v2;
  v56 = a2;
  v5 = sub_1E1AEFE6C();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF01FC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for TopChartsPage(0);
  v61 = v55;
  v62 = &protocol witness table for BasePage;
  v54 = sub_1E17538A4(&qword_1ECEB8C00, type metadata accessor for TopChartsPage, &protocol conformance descriptor for BasePage);
  v63 = v54;
  v60[0] = a1;
  swift_beginAccess();

  sub_1E137F8F8(v60, v2 + 40, &qword_1ECEB2588, &unk_1E1B05C10);
  swift_endAccess();
  sub_1E1A86218();
  sub_1E1308058(v60, &qword_1ECEB2588, &unk_1E1B05C10);
  v12 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_title);
  v11 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_title + 8);
  v13 = (v3 + qword_1ECEF49C8);
  swift_beginAccess();
  *v13 = v12;
  v13[1] = v11;

  v14 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_initialSegmentIndex);
  v15 = qword_1ECEF49D0;
  swift_beginAccess();
  *(v3 + v15) = v14;
  v17 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_categoriesButtonTitle);
  v16 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_categoriesButtonTitle + 8);
  v18 = (v3 + qword_1ECEF49E8);
  swift_beginAccess();
  *v18 = v17;
  v18[1] = v16;

  v60[0] = v17;
  v60[1] = v16;

  sub_1E1AF5BCC();

  v19 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_genreId + 8);
  v20 = (v3 + qword_1ECEB8BB0);
  *v20 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_genreId);
  v20[1] = v19;

  v21 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_ageBandId + 8);
  v22 = (v3 + qword_1ECEB8BB8);
  *v22 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_ageBandId);
  v22[1] = v21;

  v23 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_categories);
  v24 = qword_1ECEB8B98;
  swift_beginAccess();
  *(v3 + v24) = v23;

  v60[0] = *(v3 + v24);

  sub_1E1AF5BCC();

  v26 = sub_1E17519BC(v25);

  MEMORY[0x1E68F8EF0](v26);
  v27 = qword_1ECEF49F0;
  swift_beginAccess();
  (*(v8 + 40))(v3 + v27, v10, v7);
  swift_endAccess();
  v28 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_segments);
  if (v28 >> 62)
  {
    v29 = sub_1E1AF71CC();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = MEMORY[0x1E69E7CC0];
  if (v29)
  {
    v60[0] = MEMORY[0x1E69E7CC0];
    sub_1E1AF70EC();
    if (v29 < 0)
    {
      __break(1u);
      return;
    }

    v50 = a1;
    v31 = (v3 + qword_1EE216748);
    v32 = *(v3 + 16);
    v57 = v28 & 0xC000000000000001;
    swift_beginAccess();
    v59 = v3;
    swift_beginAccess();
    swift_beginAccess();
    v33 = 0;
    v58 = v28;
    v34 = v29;
    do
    {
      if (v57)
      {
        v35 = MEMORY[0x1E68FFD80](v33, v28);
      }

      else
      {
        v35 = *(v28 + 8 * v33 + 32);
      }

      ++v33;
      v36 = *(v59 + 24);
      v37 = *(v59 + 32);
      type metadata accessor for TopChartDiffableSegmentPresenter(0);
      swift_allocObject();

      v38 = sub_1E1627ACC(v32, v35, v36, v37);

      v40 = *v31;
      v39 = v31[1];
      v41 = (v38 + qword_1EE216748);
      swift_beginAccess();
      *v41 = v40;
      v41[1] = v39;

      sub_1E1AF70BC();
      sub_1E1AF70FC();
      sub_1E1AF710C();
      sub_1E1AF70CC();
      v28 = v58;
    }

    while (v34 != v33);
    v30 = v60[0];
    a1 = v50;
    v3 = v59;
  }

  v42 = qword_1ECEF49D8;
  swift_beginAccess();
  *(v3 + v42) = v30;

  v43 = v56;
  v44 = v56 & 1;
  v45 = qword_1ECEF49E0;
  swift_beginAccess();
  *(v3 + v45) = v44;
  v60[0] = *(v3 + v42);

  sub_1E1AF5BCC();

  if (v43)
  {
    swift_beginAccess();
    if (*(v3 + 24))
    {

      v46 = v51;
      sub_1E1AEFE5C();
      sub_1E1AEFE1C();
      v48 = v47;
      (*(v52 + 8))(v46, v53);
      PendingPageRender.initialRequestEndTime.setter(v48, 0);
    }
  }

  swift_beginAccess();
  if (*(v3 + 24))
  {
    v62 = &protocol witness table for BasePage;
    v63 = v54;
    v61 = v55;
    v60[0] = a1;

    PendingPageRender.use(pageRenderEventFrom:)(v60);

    sub_1E1308058(v60, &qword_1ECEB2588, &unk_1E1B05C10);
  }
}

uint64_t sub_1E1751960(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    TopChartsDiffablePagePresenter.update(ignoringCache:)(1);
  }

  return result;
}

uint64_t sub_1E17519BC(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_34:
    v4 = sub_1E1AF71CC();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = (v1 + qword_1ECEB8BB8);
      v19 = (v1 + qword_1ECEB8BB0);
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1E68FFD80](v5, a1);
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_30:
            __break(1u);
LABEL_31:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8628, &qword_1E1B2D360);
            v16 = swift_allocObject();
            *(v16 + 16) = xmmword_1E1B02CC0;
            *(v16 + 32) = v5;
            v20 = v16;
            sub_1E1728970(v2);

            return v20;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_34;
          }

          v7 = *(a1 + 8 * v5 + 32);

          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_30;
          }
        }

        v2 = sub_1E17519BC(v9);

        if (*(v2 + 16))
        {
          goto LABEL_31;
        }

        v10 = v4;

        v11 = 0;
        v2 = v6[1];
        v12 = v7[5];
        v13 = (v2 | v12) == 0;
        if (v2 && v12)
        {
          if (*v6 == v7[4] && v2 == v12)
          {
            v11 = 1;
            v13 = 1;
          }

          else
          {
            v11 = sub_1E1AF74AC();
            v13 = v11;
          }
        }

        v14 = v19[1];
        v15 = v7[3];
        if (v14)
        {
          if (v15)
          {
            if (*v19 == v7[2] && v14 == v15)
            {
              if ((v11 | v13))
              {
                goto LABEL_32;
              }
            }

            else if ((v11 | sub_1E1AF74AC() & v13))
            {
              goto LABEL_32;
            }

            goto LABEL_5;
          }
        }

        else if (!v15)
        {
          if (v13)
          {
            goto LABEL_32;
          }

          goto LABEL_5;
        }

        if (v2 && v13)
        {
LABEL_32:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8628, &qword_1E1B2D360);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_1E1B02CC0;
          *(v18 + 32) = v5;

          return v18;
        }

LABEL_5:

        ++v5;
        v4 = v10;
      }

      while (v8 != v10);
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t TopChartsDiffablePagePresenter.update(toCategoryAt:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  result = sub_1E1751DE0(a1);
  if (result)
  {
    v7 = result;
    v8 = OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_url;
    v9 = sub_1E1AEFCCC();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v5, v7 + v8, v9);
    (*(v10 + 56))(v5, 0, 1, v9);
    v11 = qword_1ECEF49C0;
    swift_beginAccess();
    sub_1E13619D8(v5, v1 + v11, &unk_1ECEB4B60, &unk_1E1B02620);
    swift_endAccess();
    TopChartsDiffablePagePresenter.update(ignoringCache:)(1);
  }

  return result;
}

uint64_t sub_1E1751DE0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF01FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8B88, &qword_1E1B2E728);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8B90, &qword_1E1B2E730);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = qword_1ECEB8B98;
  swift_beginAccess();
  v16 = *(v2 + v15);
  v17 = *(v5 + 16);
  v31 = a1;
  v17(v10, a1, v4);
  (*(v5 + 32))(v7, v10, v4);
  v18 = MEMORY[0x1E6969C28];
  sub_1E17538A4(&qword_1ECEB7BB8, MEMORY[0x1E6969C28], MEMORY[0x1E6969C58]);

  sub_1E1AF60AC();
  v30 = *(v12 + 44);
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8BA0, &qword_1E1B2E738) + 36);
  sub_1E17538A4(&qword_1ECEB8BA8, v18, MEMORY[0x1E6969C68]);
  sub_1E1AF668C();
  if (*&v14[v19] == v32[0])
  {
    v20 = 0;
LABEL_3:
    *&v14[v30] = v20;
    sub_1E1308058(v14, &qword_1ECEB8B90, &qword_1E1B2E730);

    return 0;
  }

  else
  {
    v20 = 0;
    while (1)
    {
      v22 = sub_1E1AF66FC();
      v24 = *v23;
      v22(v32, 0);
      sub_1E1AF669C();
      ++v20;
      result = sub_1E1AF01AC();
      if (v20 >= result)
      {
        break;
      }

      swift_beginAccess();
      v25 = *(v2 + v15);
      if ((v25 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1E68FFD80](v24);
        swift_endAccess();
        v16 = *(v27 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_children);

        swift_unknownObjectRelease();
      }

      else
      {
        if ((v24 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v28 = MEMORY[0x1E68FFD80](v24, v16);
LABEL_17:

          sub_1E1308058(v14, &qword_1ECEB8B90, &qword_1E1B2E730);
          return v28;
        }

        if (v24 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v26 = *(v25 + 8 * v24 + 32);
        swift_endAccess();
        v16 = *(v26 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_children);
      }

      sub_1E1AF668C();
      if (*&v14[v19] == v32[0])
      {
        goto LABEL_3;
      }
    }

    *&v14[v30] = v20;
    if ((v16 & 0xC000000000000001) != 0)
    {
      goto LABEL_21;
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v24 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v28 = *(v16 + 8 * v24 + 32);

      goto LABEL_17;
    }

    __break(1u);
  }

  return result;
}

uint64_t TopChartsDiffablePagePresenter.categoryCount(at:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF01FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8B88, &qword_1E1B2E728);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28[-1] - v9;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8B90, &qword_1E1B2E730);
  MEMORY[0x1EEE9AC00](v27);
  v12 = &v28[-1] - v11;
  v13 = qword_1ECEB8B98;
  swift_beginAccess();
  v14 = *(v2 + v13);
  (*(v5 + 16))(v10, a1, v4);
  (*(v5 + 32))(v7, v10, v4);
  v15 = MEMORY[0x1E6969C28];
  sub_1E17538A4(&qword_1ECEB7BB8, MEMORY[0x1E6969C28], MEMORY[0x1E6969C58]);

  sub_1E1AF60AC();
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8BA0, &qword_1E1B2E738) + 36);
  sub_1E17538A4(&qword_1ECEB8BA8, v15, MEMORY[0x1E6969C68]);
  sub_1E1AF668C();
  if (*&v12[v16] != v28[0])
  {
    v20 = 0;
    while (1)
    {

      v21 = sub_1E1AF66FC();
      v23 = *v22;
      v21(v28, 0);
      sub_1E1AF669C();
      v17 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      swift_beginAccess();
      v24 = *(v2 + v13);
      if ((v24 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1E68FFD80](v23);
        swift_endAccess();
        v14 = *(v26 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_children);

        swift_unknownObjectRelease();
      }

      else
      {
        if ((v23 & 0x8000000000000000) != 0)
        {
          goto LABEL_16;
        }

        if (v23 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v25 = *(v24 + 8 * v23 + 32);
        swift_endAccess();
        v14 = *(v25 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_children);
      }

      sub_1E1AF668C();
      ++v20;
      if (*&v12[v16] == v28[0])
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = 0;
LABEL_3:
  *&v12[*(v27 + 36)] = v17;
  sub_1E1308058(v12, &qword_1ECEB8B90, &qword_1E1B2E730);
  if (v14 >> 62)
  {
LABEL_18:
    v18 = sub_1E1AF71CC();
    goto LABEL_5;
  }

  v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  return v18;
}

uint64_t TopChartsDiffablePagePresenter.categoryTitle(at:)(uint64_t a1)
{
  v1 = sub_1E1751DE0(a1);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_longName + 8))
  {
    v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_longName);
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_shortName);
  }

  return v2;
}

uint64_t TopChartsDiffablePagePresenter.categoryArtwork(at:)(uint64_t a1)
{
  v1 = sub_1E1751DE0(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_artwork);

  return v2;
}

uint64_t TopChartsDiffablePagePresenter.hasChildren(at:)(uint64_t a1)
{
  result = sub_1E1751DE0(a1);
  if (result)
  {
    v2 = *(result + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_children);
    if (v2 >> 62)
    {
      v3 = sub_1E1AF71CC();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v3 > 0;
  }

  return result;
}

uint64_t TopChartsDiffablePagePresenter.isCategorySelected(at:)(uint64_t a1)
{
  v1 = sub_1E1751DE0(a1);
  v2 = sub_1E17527B8(v1);

  return v2 & 1;
}

uint64_t sub_1E17527B8(void *a1)
{
  v2 = *(v1 + qword_1ECEB8BB8 + 8);
  if (!a1)
  {
    v7 = v2 == 0;
    LOBYTE(v9) = v2 == 0;
    v10 = v2 == 0;
    if (*(v1 + qword_1ECEB8BB0 + 8))
    {
      goto LABEL_26;
    }

    if (!v2)
    {
      return v10 & 1;
    }

LABEL_35:
    if ((v10 & 1) == 0)
    {
      return v10 & 1;
    }

    goto LABEL_36;
  }

  v4 = *(v1 + qword_1ECEB8BB8);
  v6 = a1[4];
  v5 = a1[5];
  v7 = v2 == 0;

  if (v2)
  {
    if (!v5)
    {
      v9 = 0;
      goto LABEL_17;
    }

    if (v4 == v6 && v2 == v5)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_1E1AF74AC();
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v9 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v9 = 1;
LABEL_17:
  v11 = *(v1 + qword_1ECEB8BB0);
  v12 = *(v1 + qword_1ECEB8BB0 + 8);
  v14 = a1[2];
  v13 = a1[3];

  if (!v12)
  {
    if (v13)
    {

      goto LABEL_26;
    }

    v10 = v9;
    if (!v2)
    {
      return v10 & 1;
    }

    goto LABEL_35;
  }

  if (v13)
  {
    if (v11 == v14 && v12 == v13)
    {
      v16 = 1;
    }

    else
    {
      v16 = sub_1E1AF74AC();
    }

    if (!v2 || ((v9 ^ 1) & 1) != 0)
    {
      v10 = v16 & v9;
      return v10 & 1;
    }

LABEL_36:
    v10 = 1;
    return v10 & 1;
  }

LABEL_26:
  v10 = 0;
  if (!v7 && (v9 & 1) != 0)
  {
    goto LABEL_36;
  }

  return v10 & 1;
}

uint64_t sub_1E1752974()
{
  sub_1E1308058(v0 + qword_1ECEF49C0, &unk_1ECEB4B60, &unk_1E1B02620);

  v1 = qword_1ECEF49F0;
  v2 = sub_1E1AF01FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return sub_1E1308058(v0 + qword_1ECEB8BC0, &qword_1ECEB8BC8, &qword_1E1B2E740);
}

char *TopChartsDiffablePagePresenter.deinit()
{
  v0 = sub_1E174EB7C();
  sub_1E1308058(&v0[qword_1ECEF49C0], &unk_1ECEB4B60, &unk_1E1B02620);

  v1 = qword_1ECEF49F0;
  v2 = sub_1E1AF01FC();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  sub_1E1308058(&v0[qword_1ECEB8BC0], &qword_1ECEB8BC8, &qword_1E1B2E740);
  return v0;
}

uint64_t TopChartsDiffablePagePresenter.__deallocating_deinit()
{
  TopChartsDiffablePagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E1752C6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_1ECEF49F0;
  swift_beginAccess();
  v5 = sub_1E1AF01FC();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1E1752D1C(uint64_t a1)
{
  v1 = sub_1E1751DE0(a1);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_longName + 8))
  {
    v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_longName);
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_shortName);
  }

  return v2;
}

uint64_t sub_1E1752DA8(uint64_t a1)
{
  v1 = sub_1E1751DE0(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_artwork);

  return v2;
}

uint64_t sub_1E1752E00(uint64_t a1)
{
  result = sub_1E1751DE0(a1);
  if (result)
  {
    v2 = *(result + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_children);
    if (v2 >> 62)
    {
      v3 = sub_1E1AF71CC();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v3 > 0;
  }

  return result;
}

uint64_t sub_1E1752E78(uint64_t a1)
{
  v1 = sub_1E1751DE0(a1);
  v2 = sub_1E17527B8(v1);

  return v2 & 1;
}

uint64_t sub_1E1752EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v6 = sub_1E1AF436C();
  v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v39 = &v35 - v9;
  v10 = qword_1ECEF49C0;
  v11 = sub_1E1AEFCCC();
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  *(v3 + qword_1ECEB8B80) = 0;
  v12 = (v3 + qword_1ECEF49C8);
  v12->_countAndFlagsBits = 0;
  v12->_object = 0;
  *(v3 + qword_1ECEF49D0) = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *(v3 + qword_1ECEF49D8) = MEMORY[0x1E69E7CC0];
  *(v3 + qword_1ECEF49E0) = 2;
  v14 = (v3 + qword_1ECEF49E8);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v3 + qword_1ECEB8BB0);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v3 + qword_1ECEB8BB8);
  *v16 = 0;
  v16[1] = 0;
  *(v3 + qword_1ECEB8B98) = v13;
  sub_1E1AF01EC();
  v17 = qword_1ECEF49F8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8C08, &qword_1E1B2E850);
  swift_allocObject();
  *(v3 + v17) = sub_1E1AF5BEC();
  v18 = qword_1ECEF4A00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8C10, &qword_1E1B2E858);
  swift_allocObject();
  *(v3 + v18) = sub_1E1AF5BEC();
  v19 = qword_1ECEF4A08;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8C18, &unk_1E1B2E860);
  swift_allocObject();
  *(v3 + v19) = sub_1E1AF5BEC();
  v20 = qword_1ECEB8BC0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8BE8, &qword_1E1B2E808);
  (*(*(v21 - 8) + 56))(v3 + v20, 1, 1, v21);
  swift_beginAccess();
  v35 = a2;
  sub_1E137F8F8(a2, v3 + v10, &unk_1ECEB4B60, &unk_1E1B02620);
  swift_endAccess();
  v22._object = 0x80000001E1B73D30;
  v22._countAndFlagsBits = 0xD000000000000015;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v24 = localizedString(_:comment:)(v22, v23);
  swift_beginAccess();
  *v12 = v24;

  v26 = sub_1E13C52C0(v25, 0, 0, 0);
  sub_1E134FD1C(a2, v39, &unk_1ECEB4B60, &unk_1E1B02620);
  swift_beginAccess();
  v27 = *(v26 + 24);
  swift_beginAccess();
  v28 = *(v26 + 32);
  type metadata accessor for TopChartsDiffablePageContentPresenter(0);
  v29 = swift_allocObject();
  *(v29 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_page) = 0;
  v30 = OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage;
  *(v29 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage) = 0;
  *(v29 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_isFetchingPage) = 0;
  v31 = OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_onPageFetched;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8BF0, &unk_1E1B2E840);
  swift_allocObject();

  v32 = v37;

  *(v29 + v31) = sub_1E1AF5BEC();
  *(v29 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_objectGraph) = a1;
  sub_1E1AF421C();

  v33 = v36;
  sub_1E1AF55EC();

  (*(v38 + 32))(v29 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_metricsPipeline, v33, v6);
  sub_1E13E23F8(v39, v29 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_pageUrl);
  *(v29 + v30) = v32;

  *(v29 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_pendingPageRender) = v27;
  *(v29 + OBJC_IVAR____TtC11AppStoreKit37TopChartsDiffablePageContentPresenter_pageRenderMetrics) = v28;
  *(v26 + qword_1ECEB8B80) = v29;

  sub_1E17500FC(0);

  sub_1E1308058(v35, &unk_1ECEB4B60, &unk_1E1B02620);
  return v26;
}

uint64_t type metadata accessor for TopChartsDiffablePagePresenter(uint64_t a1)
{
  result = qword_1ECEB8BD0;
  if (!qword_1ECEB8BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E175346C(uint64_t a1)
{
  sub_1E130072C(319);
  if (v1 <= 0x3F)
  {
    sub_1E1AF01FC();
    if (v2 <= 0x3F)
    {
      sub_1E17535EC(319);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_1E17535EC(uint64_t a1)
{
  if (!qword_1ECEB8BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8BE8, &qword_1E1B2E808);
    v1 = sub_1E1AF6D9C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECEB8BE0);
    }
  }
}

uint64_t getEnumTagSinglePayload for TopChartsDiffablePagePresenter.SegmentPresentersState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TopChartsDiffablePagePresenter.SegmentPresentersState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1E17537B4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1E17537D0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_1E17537F8()
{
  result = qword_1ECEB8BF8;
  if (!qword_1ECEB8BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8BF0, &unk_1E1B2E840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8BF8);
  }

  return result;
}

unint64_t sub_1E175385C(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return sub_1E1750C38(&v3);
}

id sub_1E1753898(void *a1, char a2)
{
  if (a2 < 0)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1E17538A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1E1753924(void *result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {

    return sub_1E1361B18(a2, a3);
  }

  else if (!a4)
  {
  }

  return result;
}

uint64_t EnvironmentValues.flowPreview.getter()
{
  sub_1E158C118();
  sub_1E1AF24EC();
  return v1;
}

uint64_t FlowPreviewEnvironment.State.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t FlowPreviewEnvironment.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_1E1AF051C();
  return v0;
}

uint64_t FlowPreviewEnvironment.init()()
{
  *(v0 + 16) = 0;
  sub_1E1AF051C();
  return v0;
}

void sub_1E1753B18(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (*(v1 + 16) != v2)
  {
    KeyPath = swift_getKeyPath(byte_1E1B2E870);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E17544B0(&qword_1ECEB5B48, &protocol conformance descriptor for FlowPreviewEnvironment);
    sub_1E1AF04DC();
  }
}

void sub_1E1753C20(_BYTE *a1@<X8>)
{
  swift_getKeyPath(byte_1E1B2E870);
  sub_1E17544B0(&qword_1ECEB5B48, &protocol conformance descriptor for FlowPreviewEnvironment);
  sub_1E1AF04EC();

  swift_beginAccess();
  *a1 = *(v1 + 16);
}

void sub_1E1753CC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 16) = v2;
}

uint64_t type metadata accessor for FlowPreviewEnvironment(uint64_t a1)
{
  result = qword_1ECEB8C30;
  if (!qword_1ECEB8C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*sub_1E1753D68(uint64_t *a1))()
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
  swift_getKeyPath(byte_1E1B2E870);
  v4[5] = OBJC_IVAR____TtC11AppStoreKit22FlowPreviewEnvironment___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1E17544B0(&qword_1ECEB5B48, &protocol conformance descriptor for FlowPreviewEnvironment);
  sub_1E1AF04EC();

  *v4 = v1;
  swift_getKeyPath(byte_1E1B2E870);
  sub_1E1AF050C();

  v4[7] = sub_1E16C9058(v4);
  return sub_1E1753E8C;
}

void sub_1E1753E8C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath(byte_1E1B2E870);
  sub_1E1AF04FC();

  free(v1);
}

uint64_t FlowPreviewEnvironment.deinit()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit22FlowPreviewEnvironment___observationRegistrar;
  v2 = sub_1E1AF052C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t FlowPreviewEnvironment.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit22FlowPreviewEnvironment___observationRegistrar;
  v2 = sub_1E1AF052C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1E175402C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FlowPreviewEnvironment(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  result = sub_1E1AF051C();
  *a1 = v2;
  return result;
}

uint64_t sub_1E175407C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = sub_1E17544B0(&qword_1ECEB8C40, &protocol conformance descriptor for FlowPreviewEnvironment);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v9);
}

uint64_t (*EnvironmentValues.flowPreview.modify(void *a1))()
{
  a1[2] = v1;
  a1[3] = sub_1E158C118();
  sub_1E1AF24EC();
  return sub_1E175415C;
}

uint64_t sub_1E175415C(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_1E1AF24FC();
  }

  sub_1E1AF24FC();
}

BOOL _s11AppStoreKit22FlowPreviewEnvironmentC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath(byte_1E1B2E870);
  sub_1E17544B0(&qword_1ECEB5B48, &protocol conformance descriptor for FlowPreviewEnvironment);
  sub_1E1AF04EC();

  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_getKeyPath(byte_1E1B2E870);
  sub_1E1AF04EC();

  swift_beginAccess();
  return v4 == *(a2 + 16);
}

unint64_t sub_1E1754300()
{
  result = qword_1ECEB8C28;
  if (!qword_1ECEB8C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8C28);
  }

  return result;
}

uint64_t sub_1E175435C(uint64_t a1)
{
  result = sub_1E1AF052C();
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

uint64_t sub_1E17544B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FlowPreviewEnvironment(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AppPromotionDetailPage.init(promotionType:pageRefreshPolicy:pageMetrics:pageRenderEvent:using:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a4;
  v55 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v52 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  v17 = sub_1E1AF3C3C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC11AppStoreKit22AppPromotionDetailPage_promotionType) = *a1;
  v22 = *(v18 + 16);
  v54 = a3;
  v22(v21, a3, v17, v19);
  v23 = a5;
  sub_1E142CF54(a5, v16);
  *(v5 + 16) = 0;
  v53 = v17;
  (v22)(v5 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics, v21, v17);
  v56 = v5;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v57;
  sub_1E142CF54(v16, v13);
  v24 = sub_1E1AF39DC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v13, 1, v24) == 1)
  {

    sub_1E142CFC4(v23);
    v27 = *(v18 + 8);
    v28 = v53;
    v27(v54, v53);
    sub_1E142CFC4(v16);
    v27(v21, v28);
    v29 = v13;
  }

  else
  {
    v49 = v21;
    v50 = v23;
    v51 = v16;
    v30 = v54;
    v31 = qword_1EE1E3BC8;

    if (v31 != -1)
    {
      swift_once();
    }

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
    __swift_project_value_buffer(v32, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
    sub_1E1AF39EC();
    v33 = v58;
    if (v58)
    {
    }

    v34 = *(v25 + 8);
    v34(v13, v24);
    if (!v33)
    {

      sub_1E142CFC4(v50);
      v42 = *(v18 + 8);
      v43 = v53;
      v42(v30, v53);
      sub_1E142CFC4(v51);
      v42(v49, v43);
      return v56;
    }

    v36 = v51;
    v35 = v52;
    sub_1E142CF54(v51, v52);
    v37 = v26(v35, 1, v24);
    v39 = v49;
    v38 = v50;
    if (v37 != 1)
    {
      sub_1E15F0974();

      sub_1E142CFC4(v38);
      v44 = *(v18 + 8);
      v45 = v30;
      v46 = v34;
      v47 = v53;
      v44(v45, v53);
      sub_1E142CFC4(v36);
      v44(v39, v47);
      v46(v35, v24);
      return v56;
    }

    sub_1E142CFC4(v38);
    v40 = *(v18 + 8);
    v41 = v53;
    v40(v30, v53);
    sub_1E142CFC4(v36);
    v40(v39, v41);
    v29 = v35;
  }

  sub_1E142CFC4(v29);
  return v56;
}

void *AppPromotionDetailPage.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v22 = a2;
  v24 = sub_1E1AF39DC();
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  sub_1E1AF381C();
  sub_1E14B2CE8();
  v14 = v13;
  sub_1E1AF36AC();
  if (v2)
  {
    (*(v4 + 8))(v22, v24);
    v15 = *(v8 + 8);
    v15(a1, v7);
    v15(v13, v7);
    type metadata accessor for AppPromotionDetailPage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = *(v8 + 8);
    v20(v13, v7);
    *(v23 + OBJC_IVAR____TtC11AppStoreKit22AppPromotionDetailPage_promotionType) = v25;
    v16 = *(v8 + 16);
    v21 = a1;
    v16(v10, a1, v7);
    v17 = v22;
    (*(v4 + 16))(v6, v22, v24);
    v14 = BasePage.init(deserializing:using:)(v10, v6);
    (*(v4 + 8))(v17, v24);
    v20(v21, v7);
  }

  return v14;
}

uint64_t AppPromotionDetailPage.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t type metadata accessor for AppPromotionDetailPage(uint64_t a1)
{
  result = qword_1EE1E1488;
  if (!qword_1EE1E1488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppPromotionDetailPage.__allocating_init(promotionType:pageRefreshPolicy:pageMetrics:pageRenderEvent:using:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v41 = a5;
  v39 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28, &unk_1E1B11460);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = sub_1E1AF3C3C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + OBJC_IVAR____TtC11AppStoreKit22AppPromotionDetailPage_promotionType) = *a1;
  v20 = *(v16 + 16);
  v21 = a3;
  v20(v18, a3, v15);
  v22 = v41;
  sub_1E142CF54(v41, v14);
  *(v19 + 16) = 0;
  v20((v19 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v18, v15);
  v38 = v19;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v40;
  sub_1E142CF54(v14, v11);
  v23 = sub_1E1AF39DC();
  v37 = *(v23 - 8);
  v35 = *(v37 + 48);
  if (v35(v11, 1, v23) == 1)
  {

    sub_1E142CFC4(v22);
    v24 = *(v16 + 8);
    v24(v21, v15);
    sub_1E142CFC4(v14);
    v25 = v18;
  }

  else
  {
    v33 = v18;
    v34 = v21;
    v26 = qword_1EE1E3BC8;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30, qword_1E1B0C400);
    __swift_project_value_buffer(v27, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38, &unk_1E1B11470);
    sub_1E1AF39EC();
    v28 = v42;
    v29 = v37;
    if (v42)
    {
    }

    v37 = *(v29 + 8);
    (v37)(v11, v23);
    if (!v28)
    {

      sub_1E142CFC4(v41);
      v30 = *(v16 + 8);
      v30(v34, v15);
      sub_1E142CFC4(v14);
      v30(v33, v15);
      return v38;
    }

    v11 = v36;
    sub_1E142CF54(v14, v36);
    if (v35(v11, 1, v23) != 1)
    {
      sub_1E15F0974();

      sub_1E142CFC4(v41);
      v31 = *(v16 + 8);
      v31(v34, v15);
      sub_1E142CFC4(v14);
      v31(v33, v15);
      (v37)(v11, v23);
      return v38;
    }

    sub_1E142CFC4(v41);
    v24 = *(v16 + 8);
    v24(v34, v15);
    sub_1E142CFC4(v14);
    v25 = v33;
  }

  v24(v25, v15);
  sub_1E142CFC4(v11);
  return v38;
}

uint64_t AppPromotionDetailPage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

AppStoreKit::StringCharacteristics __swiftcall StringCharacteristics.init(byAnalyzing:)(Swift::String_optional byAnalyzing)
{
  object = byAnalyzing.value._object;
  countAndFlagsBits = byAnalyzing.value._countAndFlagsBits;
  v4 = v1;
  v5 = sub_1E1AEF4AC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (object)
  {
    v28 = v4;
    v30 = countAndFlagsBits;
    v31 = object;
    sub_1E1AEF47C();
    v10 = sub_1E13B8AA4();
    sub_1E1AF6DEC();
    v12 = v11;
    v13 = *(v6 + 8);
    v13(v9, v5);
    v14 = (v12 & 1) == 0;
    v30 = countAndFlagsBits;
    v31 = object;
    if (qword_1EE1E2350 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v5, qword_1EE1E2358);
    sub_1E1AF6DEC();
    if ((v15 & 1) == 0)
    {
      v14 |= 8uLL;
    }

    v30 = countAndFlagsBits;
    v31 = object;
    sub_1E1AEF42C();
    v29 = v10;
    v16 = v14;
    sub_1E1AF6DEC();
    v18 = v17;
    v13(v9, v5);
    if ((v18 & 1) == 0 || (v30 = countAndFlagsBits, v31 = object, sub_1E1AEF44C(), sub_1E1AF6DEC(), v20 = v19, v13(v9, v5), (v20 & 1) == 0))
    {
      v16 = v14 | 2;
    }

    v21 = HIBYTE(object) & 0xF;
    if ((object & 0x2000000000000000) == 0)
    {
      v21 = countAndFlagsBits;
    }

    v22 = 7;
    if (((object >> 60) & ((countAndFlagsBits & 0x800000000000000) == 0)) != 0)
    {
      v22 = 11;
    }

    v23 = v22 | (v21 << 16);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    v30 = countAndFlagsBits;
    v31 = object;
    v32 = 15;
    v33 = v23;
    v25 = swift_allocObject();
    v25[2] = countAndFlagsBits;
    v25[3] = object;
    v25[4] = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8C48, &unk_1E1B2EA70);
    sub_1E1302CD4(&qword_1EE1D25E8, &qword_1ECEB8C48, &unk_1E1B2EA70, MEMORY[0x1E69E66D8]);
    sub_1E1AF6E1C();

    swift_beginAccess();
    LODWORD(v23) = *(v24 + 16);

    v26 = v16 | 4;
    if (!v23)
    {
      v26 = v16;
    }

    v4 = v28;
  }

  else
  {
    v26 = 0;
  }

  *v4 = v26;
  return result;
}

uint64_t StringCharacteristics.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1E130C06C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1E130C06C((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0xD000000000000014;
  *(v5 + 5) = 0x80000001E1B73E10;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1E130C06C(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1E130C06C((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0xD000000000000013;
    *(v8 + 5) = 0x80000001E1B73DF0;
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10, &unk_1E1B04970);
  sub_1E1302CD4(&qword_1EE1E34E0, &unk_1ECEB2D10, &unk_1E1B04970, MEMORY[0x1E69E6310]);
  v9 = sub_1E1AF5D6C();
  v11 = v10;

  MEMORY[0x1E68FECA0](v9, v11);

  MEMORY[0x1E68FECA0](93, 0xE100000000000000);
  return 91;
}

void sub_1E1755A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = *(v7 + 32);
  if (sub_1E1AF5FEC() >= 9)
  {
    swift_beginAccess();
    *(v9 + 16) = 1;
    *a7 = 1;
  }
}

unint64_t sub_1E1755A80()
{
  result = qword_1ECEB8C50;
  if (!qword_1ECEB8C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8C50);
  }

  return result;
}

unint64_t sub_1E1755AD8()
{
  result = qword_1ECEB8C58;
  if (!qword_1ECEB8C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8C58);
  }

  return result;
}

unint64_t sub_1E1755B30()
{
  result = qword_1EE1DA7C8;
  if (!qword_1EE1DA7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DA7C8);
  }

  return result;
}

unint64_t sub_1E1755B88()
{
  result = qword_1EE1DA7C0;
  if (!qword_1EE1DA7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DA7C0);
  }

  return result;
}

uint64_t sub_1E1755BEC()
{
  v0 = sub_1E1AEF4AC();
  __swift_allocate_value_buffer(v0, qword_1EE1FADF0);
  __swift_project_value_buffer(v0, qword_1EE1FADF0);
  return sub_1E1AEF41C();
}

uint64_t sub_1E1755C64()
{
  v0 = sub_1E1AEF4AC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  __swift_allocate_value_buffer(v7, qword_1EE1E2358);
  __swift_project_value_buffer(v0, qword_1EE1E2358);
  sub_1E1AEF41C();
  sub_1E1AEF47C();
  sub_1E1AEF48C();
  v8 = *(v1 + 8);
  v8(v3, v0);
  return (v8)(v6, v0);
}

uint64_t sub_1E1755DC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1E1AEF4AC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1E1755E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1E1755F30;

  return sub_1E17564DC(a1, a2, a3);
}

uint64_t sub_1E1755F30(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:size:with:traitCollection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1E17579EC;

  return sub_1E17564DC(a1, a2, a3);
}

uint64_t sub_1E1756104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1E130B5D8;

  return (sub_1E1756B04)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:with:size:checking:into:traitCollection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1E130B5D8;

  return (sub_1E1756B04)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1E17562FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_1E130B5DC;

  return sub_1E1756F5C(a1, a2, a3, a4, a5);
}

uint64_t ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:with:size:into:traitCollection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_1E130B5D8;

  return sub_1E1756F5C(a1, a2, a3, a4, a5);
}

uint64_t sub_1E17564DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E1756500, 0, 0);
}

uint64_t sub_1E1756500()
{
  v25 = v0;
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (!v4)
  {
    v15 = v0[1];

    return v15();
  }

  v5 = v4;
  v6 = v4 >> 62;
  if (v4 >> 62)
  {
    goto LABEL_33;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = result;
  }

  if (result < v8)
  {
LABEL_44:
    __break(1u);
    return result;
  }

  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {

      if (v8)
      {
        type metadata accessor for Artwork(0);
        sub_1E1AF703C();
        if (v8 != 1)
        {
          sub_1E1AF703C();
        }
      }

      if (v6)
      {

        sub_1E1AF728C();
        v10 = v9;
        v12 = v11;
        v14 = v13;

        v8 = v14 >> 1;
        goto LABEL_18;
      }
    }

    else
    {
    }

    v12 = 0;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
LABEL_18:
    v6 = v8 - v12;
    if (__OFSUB__(v8, v12))
    {
      goto LABEL_35;
    }

    if (!v6)
    {
      break;
    }

    v24 = MEMORY[0x1E69E7CC0];
    v5 = &v24;
    sub_1E1AF70EC();
    if ((v6 & 0x8000000000000000) == 0)
    {
      if (v8 <= v12)
      {
        v16 = v12;
      }

      else
      {
        v16 = v8;
      }

      v17 = v16 - v12;
      v18 = v10 + 8 * v12;
      while (v17)
      {
        v18 += 8;

        sub_1E1AF70BC();
        sub_1E1AF70FC();
        sub_1E1AF710C();
        v5 = &v24;
        sub_1E1AF70CC();
        --v17;
        if (!--v6)
        {
          swift_unknownObjectRelease();
          v19 = v24;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      v8 = sub_1E1AF71CC();
      if ((sub_1E1AF71CC() & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }

      __break(1u);
LABEL_35:
      __break(1u);
    }

    __break(1u);
LABEL_37:
    if (v8 >= 2)
    {
      v23 = 2;
    }

    else
    {
      v23 = v8;
    }

    if (v8 >= 0)
    {
      v8 = v23;
    }

    else
    {
      v8 = 2;
    }

    result = sub_1E1AF71CC();
    if (result < v8)
    {
      goto LABEL_44;
    }
  }

  swift_unknownObjectRelease();
  v19 = MEMORY[0x1E69E7CC0];
LABEL_29:
  v0[5] = v19;
  v20 = *(v0[3] + 32);
  v21 = swift_task_alloc();
  v0[6] = v21;
  *v21 = v0;
  v21[1] = sub_1E1756810;
  v22 = v0[4];

  return sub_1E13B2C2C(v19, v20, v22);
}

uint64_t sub_1E1756810(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E1756974, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1E1756974()
{
  if (qword_1EE1D27A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1EE215438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF54AC();

  v3 = *(v0 + 8);

  return v3(0);
}

uint64_t sub_1E1756B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a4;
  v6[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E1756B2C, 0, 0);
}

uint64_t sub_1E1756B2C()
{
  v27 = v0;
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (!v4)
  {
    v15 = v0[1];

    return v15();
  }

  v5 = v4;
  v6 = v4 >> 62;
  if (v4 >> 62)
  {
    goto LABEL_33;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = result;
  }

  if (result < v8)
  {
LABEL_44:
    __break(1u);
    return result;
  }

  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {

      if (v8)
      {
        type metadata accessor for Artwork(0);
        sub_1E1AF703C();
        if (v8 != 1)
        {
          sub_1E1AF703C();
        }
      }

      if (v6)
      {

        sub_1E1AF728C();
        v10 = v9;
        v12 = v11;
        v14 = v13;

        v8 = v14 >> 1;
        goto LABEL_18;
      }
    }

    else
    {
    }

    v12 = 0;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
LABEL_18:
    v6 = v8 - v12;
    if (__OFSUB__(v8, v12))
    {
      goto LABEL_35;
    }

    if (!v6)
    {
      break;
    }

    v26 = MEMORY[0x1E69E7CC0];
    v5 = &v26;
    sub_1E1AF70EC();
    if ((v6 & 0x8000000000000000) == 0)
    {
      if (v8 <= v12)
      {
        v16 = v12;
      }

      else
      {
        v16 = v8;
      }

      v17 = v16 - v12;
      v18 = v10 + 8 * v12;
      while (v17)
      {
        v18 += 8;

        sub_1E1AF70BC();
        sub_1E1AF70FC();
        sub_1E1AF710C();
        v5 = &v26;
        sub_1E1AF70CC();
        --v17;
        if (!--v6)
        {
          swift_unknownObjectRelease();
          v19 = v26;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      v8 = sub_1E1AF71CC();
      if ((sub_1E1AF71CC() & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }

      __break(1u);
LABEL_35:
      __break(1u);
    }

    __break(1u);
LABEL_37:
    if (v8 >= 2)
    {
      v25 = 2;
    }

    else
    {
      v25 = v8;
    }

    if (v8 >= 0)
    {
      v8 = v25;
    }

    else
    {
      v8 = 2;
    }

    result = sub_1E1AF71CC();
    if (result < v8)
    {
      goto LABEL_44;
    }
  }

  swift_unknownObjectRelease();
  v19 = MEMORY[0x1E69E7CC0];
LABEL_29:
  v0[7] = v19;
  ObjectType = swift_getObjectType();
  v21 = swift_task_alloc();
  v0[8] = v21;
  *v21 = v0;
  v21[1] = sub_1E1756E48;
  v23 = v0[5];
  v22 = v0[6];
  v24 = v0[4];

  return ThreeDimensionalAppIconSnapshotter.snapshot<A>(for:into:with:)(v19, v24, v22, ObjectType, v23);
}

uint64_t sub_1E1756E48()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1E17579E8;
  }

  else
  {
    v2 = sub_1E17579F0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1756F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E1756F84, 0, 0);
}

uint64_t sub_1E1756F84()
{
  v27 = v0;
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (!v4)
  {
    v15 = v0[1];

    return v15();
  }

  v5 = v4;
  v6 = v4 >> 62;
  if (v4 >> 62)
  {
    goto LABEL_33;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = result;
  }

  if (result < v8)
  {
LABEL_44:
    __break(1u);
    return result;
  }

  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {

      if (v8)
      {
        type metadata accessor for Artwork(0);
        sub_1E1AF703C();
        if (v8 != 1)
        {
          sub_1E1AF703C();
        }
      }

      if (v6)
      {

        sub_1E1AF728C();
        v10 = v9;
        v12 = v11;
        v14 = v13;

        v8 = v14 >> 1;
        goto LABEL_18;
      }
    }

    else
    {
    }

    v12 = 0;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
LABEL_18:
    v6 = v8 - v12;
    if (__OFSUB__(v8, v12))
    {
      goto LABEL_35;
    }

    if (!v6)
    {
      break;
    }

    v26 = MEMORY[0x1E69E7CC0];
    v5 = &v26;
    sub_1E1AF70EC();
    if ((v6 & 0x8000000000000000) == 0)
    {
      if (v8 <= v12)
      {
        v16 = v12;
      }

      else
      {
        v16 = v8;
      }

      v17 = v16 - v12;
      v18 = v10 + 8 * v12;
      while (v17)
      {
        v18 += 8;

        sub_1E1AF70BC();
        sub_1E1AF70FC();
        sub_1E1AF710C();
        v5 = &v26;
        sub_1E1AF70CC();
        --v17;
        if (!--v6)
        {
          swift_unknownObjectRelease();
          v19 = v26;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      v8 = sub_1E1AF71CC();
      if ((sub_1E1AF71CC() & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }

      __break(1u);
LABEL_35:
      __break(1u);
    }

    __break(1u);
LABEL_37:
    if (v8 >= 2)
    {
      v25 = 2;
    }

    else
    {
      v25 = v8;
    }

    if (v8 >= 0)
    {
      v8 = v25;
    }

    else
    {
      v8 = 2;
    }

    result = sub_1E1AF71CC();
    if (result < v8)
    {
      goto LABEL_44;
    }
  }

  swift_unknownObjectRelease();
  v19 = MEMORY[0x1E69E7CC0];
LABEL_29:
  v0[7] = v19;
  ObjectType = swift_getObjectType();
  v21 = swift_task_alloc();
  v0[8] = v21;
  *v21 = v0;
  v21[1] = sub_1E17572A0;
  v23 = v0[5];
  v22 = v0[6];
  v24 = v0[4];

  return ThreeDimensionalAppIconSnapshotter.snapshot<A>(for:into:with:)(v19, v24, v22, ObjectType, v23);
}

uint64_t sub_1E17572A0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1E1757414;
  }

  else
  {
    v2 = sub_1E17573B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E17573B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E1757414()
{

  if (qword_1EE1D27A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1EE215438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF54AC();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t dispatch thunk of ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:size:with:traitCollection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v19 = (*(a5 + 8) + **(a5 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1E1755F30;
  v16.n128_f64[0] = a6;
  v17.n128_f64[0] = a7;

  return v19(a1, a2, a3, a4, a5, v16, v17);
}

uint64_t dispatch thunk of ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:with:size:checking:into:traitCollection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v25 = (*(a8 + 16) + **(a8 + 16));
  v21 = swift_task_alloc();
  *(v10 + 16) = v21;
  *v21 = v10;
  v21[1] = sub_1E130B5D8;
  v22.n128_f64[0] = a9;
  v23.n128_f64[0] = a10;

  return v25(a1, a2, a3, a4, a5, a6, a7, a8, v22, v23);
}

uint64_t dispatch thunk of ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:with:size:into:traitCollection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v23 = (*(a7 + 24) + **(a7 + 24));
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_1E130B5DC;
  v20.n128_f64[0] = a8;
  v21.n128_f64[0] = a9;

  return v23(a1, a2, a3, a4, a5, a6, a7, v20, v21);
}

uint64_t GuidedSearchFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF524C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void GuidedSearchFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_1ECEB0E78 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BB8, &unk_1E1B2E830);
  __swift_project_value_buffer(v3, qword_1ECEB5998);
  type metadata accessor for Action(0);
  sub_1E1AF4ABC();
  if (!v10[0])
  {
    goto LABEL_13;
  }

  type metadata accessor for SearchAction(0);
  v4 = swift_dynamicCastClass();
  if (!v4)
  {

LABEL_13:
    if (qword_1EE1D2768 != -1)
    {
      swift_once();
    }

    v9 = sub_1E1AF591C();
    __swift_project_value_buffer(v9, qword_1EE216140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    return;
  }

  v5 = *(v4 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_guidedSearchTokens);
  if (v5 && *(v5 + 16))
  {
    v6 = v4;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10, &unk_1E1B04970);
    v10[0] = v5;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));

    sub_1E1AF4A1C();
    if (v1)
    {
LABEL_10:

      __swift_destroy_boxed_opaque_existential_1(v10);
      return;
    }

    __swift_destroy_boxed_opaque_existential_1(v10);
    v7 = *(v6 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_guidedSearchOptimizationTerm + 8);
    if (v7)
    {
      v8 = *(v6 + OBJC_IVAR____TtC11AppStoreKit12SearchAction_guidedSearchOptimizationTerm);
      v11 = MEMORY[0x1E69E6158];
      v10[0] = v8;
      v10[1] = v7;
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));

      sub_1E1AF4A1C();
      goto LABEL_10;
    }
  }
}

uint64_t type metadata accessor for GuidedSearchFieldsProvider(uint64_t a1)
{
  result = qword_1EE1EA8D0;
  if (!qword_1EE1EA8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 FootnoteLayout.init(metrics:labelView:chevronView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 80);
  *(a4 + 144) = *(a1 + 64);
  *(a4 + 160) = v6;
  *(a4 + 176) = *(a1 + 96);
  *(a4 + 192) = *(a1 + 112);
  v7 = *(a1 + 16);
  *(a4 + 80) = *a1;
  *(a4 + 96) = v7;
  v8 = *(a1 + 48);
  *(a4 + 112) = *(a1 + 32);
  *(a4 + 128) = v8;
  sub_1E1308EC0(a2, a4);
  result = *a3;
  v10 = *(a3 + 16);
  *(a4 + 40) = *a3;
  *(a4 + 56) = v10;
  *(a4 + 72) = *(a3 + 32);
  return result;
}

uint64_t FootnoteLayout.Metrics.init(textSpace:bottomSpace:chevronMargin:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  sub_1E1308EC0(a1, a4);
  sub_1E1308EC0(a2, a4 + 40);

  return sub_1E1308EC0(a3, a4 + 80);
}

uint64_t FootnoteLayout.Metrics.textSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t FootnoteLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t FootnoteLayout.Metrics.chevronMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_1E1308EC0(a1, v1 + 80);
}

double static FootnoteLayout.estimatedMeasurements(fitting:using:in:)(void *a1, uint64_t a2, double a3)
{
  v5 = sub_1E1AF745C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1Tm(a1, v9);
  sub_1E13BC274(v9);
  sub_1E1AF12DC();
  v10 = *(v6 + 8);
  v10(v8, v5);
  v11 = a1[8];
  __swift_project_boxed_opaque_existential_1Tm(a1 + 5, v11);
  sub_1E13BC274(v11);
  sub_1E1AF12DC();
  v10(v8, v5);
  return a3;
}

double FootnoteLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v6 = sub_1E1AF745C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E14F59A8((v3 + 5), &v15);
  if (v16)
  {
    sub_1E1308EC0(&v15, v17);
    __swift_project_boxed_opaque_existential_1Tm(v17, v17[3]);
    sub_1E1AF11DC();
    v10 = v3[23];
    __swift_project_boxed_opaque_existential_1Tm(v4 + 20, v4[23]);
    sub_1E13BC274(v10);
    sub_1E1AF12DC();
    (*(v7 + 8))(v9, v6);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_1E14F60F8(&v15);
  }

  __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
  sub_1E1AF11CC();
  v11 = v4[13];
  __swift_project_boxed_opaque_existential_1Tm(v4 + 10, v11);
  sub_1E13BC274(v11);
  sub_1E1AF12DC();
  v12 = *(v7 + 8);
  v12(v9, v6);
  v13 = v4[18];
  __swift_project_boxed_opaque_existential_1Tm(v4 + 15, v13);
  sub_1E13BC274(v13);
  sub_1E1AF12DC();
  v12(v9, v6);
  return a2;
}

uint64_t FootnoteLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = sub_1E1AF745C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E14F59A8((v5 + 5), &v42);
  if (v43)
  {
    sub_1E1308EC0(&v42, v44);
    v15 = v5[23];
    __swift_project_boxed_opaque_existential_1Tm(v6 + 20, v6[23]);
    sub_1E13BC274(v15);
    v16 = sub_1E1AF12DC();
    v41 = v16;
    (*(v12 + 8))(v14, v11);
    __swift_project_boxed_opaque_existential_1Tm(v44, v45);
    sub_1E1AF11DC();
    v18 = v17;
    v37 = v19;
    v46.origin.x = a2;
    v46.origin.y = a3;
    v46.size.width = a4;
    v46.size.height = a5;
    Width = CGRectGetWidth(v46);
    v40 = v18;
    v39 = Width - v16 - v18;
    v47.origin.x = a2;
    v47.origin.y = a3;
    v47.size.width = a4;
    v47.size.height = a5;
    CGRectGetHeight(v47);
    __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
    sub_1E1AF11CC();
    v22 = v21;
    v24 = v23;
    v36 = a4;
    __swift_project_boxed_opaque_existential_1Tm(v6 + 10, v6[13]);
    sub_1E1AF12FC();
    v26 = v25;
    v48.origin.x = a2;
    v48.origin.y = a3;
    v48.size.width = a4;
    v48.size.height = a5;
    MinX = CGRectGetMinX(v48);
    v49.origin.x = a2;
    v49.origin.y = a3;
    v49.size.width = a4;
    v49.size.height = a5;
    MinY = CGRectGetMinY(v49);
    if (v39 >= v22)
    {
      v29 = v22;
    }

    else
    {
      v29 = v39;
    }

    v30 = v26 + MinY;
    v31 = v37;
    v50.origin.x = MinX;
    v50.origin.y = v30;
    v50.size.width = v29;
    v50.size.height = v24;
    v39 = v41 + CGRectGetMaxX(v50);
    v51.origin.x = MinX;
    v51.origin.y = v30;
    v51.size.width = v29;
    v41 = v24;
    v51.size.height = v24;
    v38 = floor(CGRectGetMidY(v51) + v31 * -0.5);
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    sub_1E14F60F8(&v42);
    __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
    sub_1E1AF11CC();
    v33 = v32;
    __swift_project_boxed_opaque_existential_1Tm(v5 + 10, v5[13]);
    v41 = v33;
    sub_1E1AF12FC();
    v40 = v34;
    v52.origin.x = a2;
    v52.origin.y = a3;
    v52.size.width = a4;
    v52.size.height = a5;
    CGRectGetMinX(v52);
    v53.origin.x = a2;
    v53.origin.y = a3;
    v53.size.width = a4;
    v53.size.height = a5;
    CGRectGetMinY(v53);
    v54.origin.x = a2;
    v54.origin.y = a3;
    v54.size.width = a4;
    v54.size.height = a5;
    CGRectGetWidth(v54);
    v38 = 0.0;
    v39 = 0.0;
    v40 = 0.0;
  }

  __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  sub_1E14F59A8((v6 + 5), v44);
  if (v45)
  {
    __swift_project_boxed_opaque_existential_1Tm(v44, v45);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    sub_1E14F60F8(v44);
  }

  return sub_1E1AF106C();
}

unint64_t sub_1E1758A04()
{
  result = qword_1ECEB8C60;
  if (!qword_1ECEB8C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8C60);
  }

  return result;
}

double sub_1E1758A58(void *a1, uint64_t a2, double a3)
{
  v5 = sub_1E1AF745C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1Tm(a1, v9);
  sub_1E13BC274(v9);
  sub_1E1AF12DC();
  v10 = *(v6 + 8);
  v10(v8, v5);
  v11 = a1[8];
  __swift_project_boxed_opaque_existential_1Tm(a1 + 5, v11);
  sub_1E13BC274(v11);
  sub_1E1AF12DC();
  v10(v8, v5);
  return a3;
}

void Feature.GSEUI.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_1E1AF72FC();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t static Feature.GSEUI.shouldDeepLinkToGameCenterUI.getter()
{
  v6 = &type metadata for Feature.GSEUI;
  v0 = sub_1E16F9590();
  v7 = v0;
  LOBYTE(v5[0]) = 0;
  v1 = sub_1E1AF056C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  v2 = 0;
  if (v1)
  {
    v6 = &type metadata for Feature.GSEUI;
    v7 = v0;
    LOBYTE(v5[0]) = 1;
    v3 = sub_1E1AF056C();
    __swift_destroy_boxed_opaque_existential_1(v5);
    v2 = v3 ^ 1;
  }

  return v2 & 1;
}

const char *Feature.GSEUI.feature.getter()
{
  if (*v0)
  {
    return "de7bbd8e_u1";
  }

  else
  {
    return "de7bbd8e";
  }
}

uint64_t sub_1E1758D70(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0xEB0000000031755FLL;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  if (*a2)
  {
    v3 = 0xEB0000000031755FLL;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E1AF74AC();
  }

  return v4 & 1;
}

unint64_t sub_1E1758E0C()
{
  result = qword_1ECEB8C68;
  if (!qword_1ECEB8C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8C68);
  }

  return result;
}

uint64_t sub_1E1758E60()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E1758ED8(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E1758F3C(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E1758FB0(char *a2@<X8>)
{
  v3 = sub_1E1AF72FC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1E1759010(void *a1@<X8>)
{
  v2 = 0xE800000000000000;
  if (*v1)
  {
    v2 = 0xEB0000000031755FLL;
  }

  *a1 = 0x6538646262376564;
  a1[1] = v2;
}

const char *sub_1E1759058()
{
  if (*v0)
  {
    return "de7bbd8e_u1";
  }

  else
  {
    return "de7bbd8e";
  }
}

uint64_t sub_1E17590B4@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1E134FD1C(a3, &v8, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  if (v9)
  {
    sub_1E1301CF0(&v8, v10);
    sub_1E137A5C4(v10, &v8);
    sub_1E1AF487C();
    sub_1E1308058(&v8, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_1E1308058(&v8, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v7 = sub_1E1AF489C();
    return (*(*(v7 - 8) + 16))(a4, v4, v7);
  }
}

uint64_t sub_1E17591D0()
{
  type metadata accessor for ItemLayoutContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80, &unk_1E1B042D0);
  sub_1E1AF3DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
  type metadata accessor for TodayCard(0);
  if ((swift_dynamicCast() & 1) == 0 || !v2)
  {
    return 0;
  }

  v0 = TodayCardMedia.Kind.description.getter(*(*(v2 + 64) + 16));

  return v0;
}

uint64_t sub_1E17592A0(uint64_t a1, uint64_t *a2)
{
  v78 = a1;
  v77 = sub_1E1AF489C();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v71 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v72 = &v69 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v69 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v69 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v69 - v11;
  v13 = sub_1E1AF468C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v69 - v18;
  v70 = type metadata accessor for ItemLayoutContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80, &unk_1E1B042D0);
  v79 = a2;
  sub_1E1AF3DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0, &qword_1E1B02640);
  type metadata accessor for TodayCard(0);
  v20 = swift_dynamicCast();
  v75 = v12;
  if ((v20 & 1) == 0 || (v21 = v84) == 0)
  {
    v26 = v79;
    sub_1E1AF3DBC();
    type metadata accessor for AppSearchResult(0);
    if ((swift_dynamicCast() & 1) != 0 && v84)
    {
      v27 = *(v84 + OBJC_IVAR____TtC11AppStoreKit15AppSearchResult_lockup);
      v28 = *(v27 + 16);
      v29 = *(v27 + 24);

LABEL_28:

LABEL_44:
      v24 = v71;
      v25 = MEMORY[0x1E69E6158];
      goto LABEL_45;
    }

    sub_1E1AF3DBC();
    type metadata accessor for AdvertsSearchResult(0);
    if ((swift_dynamicCast() & 1) != 0 && v84)
    {
      v69 = v84;
      v30 = *(v84 + OBJC_IVAR____TtC11AppStoreKit19AdvertsSearchResult_lockups);
      if (v30 >> 62)
      {
        goto LABEL_41;
      }

      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v31)
      {
LABEL_42:
        v33 = MEMORY[0x1E69E7CC0];
LABEL_43:
        *&v89 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10, &unk_1E1B04970);
        sub_1E130C384();
        v28 = sub_1E1AF5D6C();
        v29 = v49;

        v26 = v79;
        goto LABEL_44;
      }

LABEL_12:
      v32 = 0;
      v80 = v30 & 0xC000000000000001;
      v33 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v80)
        {
          v34 = MEMORY[0x1E68FFD80](v32, v30);
          v35 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v34 = *(v30 + 8 * v32 + 32);

          v35 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            v31 = sub_1E1AF71CC();
            if (!v31)
            {
              goto LABEL_42;
            }

            goto LABEL_12;
          }
        }

        v37 = *(v34 + 16);
        v36 = *(v34 + 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_1E130C06C(0, *(v33 + 2) + 1, 1, v33);
        }

        v39 = *(v33 + 2);
        v38 = *(v33 + 3);
        if (v39 >= v38 >> 1)
        {
          v33 = sub_1E130C06C((v38 > 1), v39 + 1, 1, v33);
        }

        *(v33 + 2) = v39 + 1;
        v40 = &v33[16 * v39];
        *(v40 + 4) = v37;
        *(v40 + 5) = v36;
        ++v32;
        if (v35 == v31)
        {
          goto LABEL_43;
        }
      }
    }

    sub_1E1AF3DBC();
    type metadata accessor for AppEventSearchResult(0);
    if ((swift_dynamicCast() & 1) != 0 && v84)
    {
      v41 = *(v84 + OBJC_IVAR____TtC11AppStoreKit20AppEventSearchResult_lockup);

      v28 = *(v41 + 16);
      v29 = *(v41 + 24);

      goto LABEL_28;
    }

    v87 = 0;
    v88 = 0xE000000000000000;
    sub_1E1AF3DBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8C70, &unk_1E1B2F080);
    if (swift_dynamicCast())
    {
      v42 = *(&v90 + 1);
      if (*(&v90 + 1))
      {
        v43 = v91;
        __swift_project_boxed_opaque_existential_1Tm(&v89, *(&v90 + 1));
        (*(v43 + 8))(v83, v42, v43);
        v81 = v83[0];
        v82 = v83[1];
        sub_1E1AF6F6C();
        __swift_destroy_boxed_opaque_existential_1(&v89);
        if (*(&v85 + 1))
        {
          v89 = v84;
          v90 = v85;
          v91 = v86;
LABEL_38:
          v25 = MEMORY[0x1E69E6158];
          v48 = sub_1E1AF6F1C();
          MEMORY[0x1E68FECA0](v48);

          sub_1E134B88C(&v89);
          v28 = v87;
          v29 = v88;
          v24 = v71;
LABEL_45:
          v47 = v70;
          goto LABEL_46;
        }

LABEL_37:
        swift_getKeyPath(byte_1E1B2F090);
        sub_1E1AF3DAC();

        goto LABEL_38;
      }
    }

    else
    {
      v91 = 0;
      v89 = 0u;
      v90 = 0u;
    }

    sub_1E1308058(&v89, &qword_1ECEB8C78, &qword_1E1B2F5A0);
    v84 = 0u;
    v85 = 0u;
    v86 = 0;
    goto LABEL_37;
  }

  v87 = 0;
  v88 = 0xE000000000000000;
  sub_1E134FD1C(v84 + OBJC_IVAR____TtC11AppStoreKit9TodayCard_impressionMetrics, v19, &unk_1ECEB1770, &unk_1E1AFED20);
  v22 = sub_1E1AF46DC();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v19, 1, v22) == 1)
  {
    sub_1E1308058(v19, &unk_1ECEB1770, &unk_1E1AFED20);
    sub_1E1300B24(v21 + 160, &v89);
    v24 = v71;
    v25 = MEMORY[0x1E69E6158];
  }

  else
  {
    sub_1E1AF46AC();
    (*(v23 + 8))(v19, v22);
    v44 = sub_1E1AF467C();
    v46 = v45;
    (*(v14 + 8))(v16, v13);
    v25 = MEMORY[0x1E69E6158];
    *(&v85 + 1) = MEMORY[0x1E69E6158];
    v86 = MEMORY[0x1E69E6168];
    *&v84 = v44;
    *(&v84 + 1) = v46;
    sub_1E1361B28(&v84, &v89);
    v24 = v71;
  }

  v47 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8C80, qword_1E1B2F100);
  sub_1E1AF714C();
  __swift_destroy_boxed_opaque_existential_1(&v89);

  v28 = v87;
  v29 = v88;
  v26 = v79;
LABEL_46:
  *&v89 = 0;
  *(&v89 + 1) = 0xE000000000000000;
  v50 = v26 + *(v47 + 32);
  swift_getKeyPath(byte_1E1B2F0B8, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
  sub_1E1AF3DAC();

  LOBYTE(v87) = v84;
  sub_1E1AF714C();
  *(&v85 + 1) = v25;
  *&v84 = v28;
  *(&v84 + 1) = v29;
  swift_getKeyPath(asc_1E1B2F0E0);
  v80 = v50;
  sub_1E1AF3DAC();

  v51 = sub_1E1AF6F1C();
  v53 = v52;
  sub_1E134B88C(&v89);
  *(&v90 + 1) = v25;
  *&v89 = v51;
  *(&v89 + 1) = v53;
  sub_1E1AF488C();

  sub_1E1308058(&v89, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1308058(&v84, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  swift_getObjectType();
  v54 = sub_1E1AF772C();
  *(&v90 + 1) = v25;
  *&v89 = v54;
  *(&v89 + 1) = v55;
  v56 = v72;
  sub_1E1AF487C();
  v57 = *(v76 + 8);
  v58 = v77;
  v57(v24, v77);
  sub_1E1308058(&v89, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v59 = sub_1E17591D0();
  if (v60)
  {
    v61 = MEMORY[0x1E69E6158];
  }

  else
  {
    v59 = 0;
    v61 = 0;
    *&v90 = 0;
  }

  *&v89 = v59;
  *(&v89 + 1) = v60;
  *(&v90 + 1) = v61;
  v62 = v73;
  sub_1E17590B4(&v89, v73);
  v57(v56, v58);
  sub_1E1308058(&v89, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v63 = *v26;
  v64 = MEMORY[0x1E69E6530];
  *(&v90 + 1) = MEMORY[0x1E69E6530];
  *&v89 = v63;
  v65 = v74;
  sub_1E1AF487C();
  v57(v62, v58);
  sub_1E1308058(&v89, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v66 = *(v80 + *(type metadata accessor for ShelfLayoutContext(0) + 20));
  *(&v90 + 1) = v64;
  *&v89 = v66;
  v67 = v75;
  sub_1E1AF487C();
  v57(v65, v58);
  sub_1E1308058(&v89, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  MEMORY[0x1E68FF8F0](v67);
  return (v57)(v67, v58);
}

uint64_t sub_1E1759E8C(void *a1, uint64_t a2, void (*a3)(char *, char *, uint64_t), void *a4, uint64_t a5)
{
  v35 = a3;
  v30 = a5;
  v31 = a1;
  v32 = a4;
  v5 = sub_1E1AF5AAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v11 = sub_1E1AEFCCC();
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  sub_1E1AF490C();
  v36 = MEMORY[0x1E68FD610]();
  if (v36)
  {
    sub_1E1AEFCAC();
    if ((*(v38 + 48))(v10, 1, v11) == 1)
    {
      sub_1E1308058(v10, &unk_1ECEB4B60, &unk_1E1B02620);
      v17 = sub_1E1AF56FC();
      sub_1E13EB868();
      swift_allocError();
      sub_1E1AF569C();
      swift_willThrow();
    }

    else
    {
      v28 = v6;
      v29 = v5;
      v18 = v38;
      v35 = *(v38 + 32);
      v35(v16, v10, v11);
      (*(v18 + 16))(v13, v16, v11);
      sub_1E1300B24(v30, v37);
      v19 = (*(v18 + 80) + 16) & ~*(v18 + 80);
      v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
      v17 = swift_allocObject();
      v35((v17 + v19), v13, v11);
      v22 = v32;
      *(v17 + v20) = v32;
      sub_1E1308EC0(v37, v17 + v21);
      *(v17 + ((v21 + 47) & 0xFFFFFFFFFFFFFFF8)) = v36;
      v23 = v31;
      v24 = v22;

      v26 = v33;
      v25 = v34;
      sub_1E1AF5A8C();
      if (!v25)
      {
        v17 = sub_1E1AF5A9C();

        (*(v28 + 8))(v26, v29);
        (*(v38 + 8))(v16, v11);
        return v17;
      }

      (*(v38 + 8))(v16, v11);
    }
  }

  else
  {
    v17 = sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();
  }

  return v17;
}

id sub_1E175A324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v42 = a7;
  v37 = a5;
  v40 = a2;
  v41 = sub_1E1AF364C();
  v9 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v38 = v10;
  v39 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7D18, &qword_1E1B2F140);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v34 - v12;
  v14 = sub_1E1AEFCCC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a4, v14, v16);
  result = [objc_opt_self() createBagForSubProfile];
  if (result)
  {
    v20 = result;
    v21 = objc_allocWithZone(MEMORY[0x1E698C820]);
    v22 = sub_1E1AEFBEC();
    v23 = [v21 initWithURL:v22 bag:v20];

    (*(v15 + 8))(v18, v14);
    [v23 setClientInfo_];
    __swift_project_boxed_opaque_existential_1Tm(a6, a6[3]);
    sub_1E1AF411C();
    v24 = sub_1E1AF561C();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v13, 1, v24) == 1)
    {
      sub_1E1308058(v13, &qword_1ECEB7D18, &qword_1E1B2F140);
      v26 = 0;
    }

    else
    {
      v26 = MEMORY[0x1E68FE320]();
      (*(v25 + 8))(v13, v24);
    }

    [v23 setAccount_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8C98, qword_1E1B2F148);
    v27 = [v23 perform];
    v36 = sub_1E1AF587C();
    v37 = v23;
    v34 = *(v9 + 16);
    v28 = v39;
    v29 = v40;
    v30 = v41;
    v34(v39, v40, v41);
    v31 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v35 = swift_allocObject();
    v32 = *(v9 + 32);
    v32(v35 + v31, v28, v30);
    v34(v28, v29, v30);
    v33 = swift_allocObject();
    v32(v33 + v31, v28, v30);
    v43[3] = sub_1E1AF490C();
    v43[4] = MEMORY[0x1E69AB298];
    v43[0] = v42;

    sub_1E1AF57FC();

    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E175A7C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80, &unk_1E1B02B80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E1B02CC0;
  *(v0 + 56) = MEMORY[0x1E69E6370];
  *(v0 + 32) = 1;
  v1 = sub_1E1AF363C();
}

void sub_1E175A9B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80, &unk_1E1B02B80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E1B02CC0;
  *(v0 + 56) = MEMORY[0x1E69E6370];
  *(v0 + 32) = 0;
  v1 = sub_1E1AF363C();
}

unint64_t sub_1E175AD10()
{
  result = qword_1EE1E2DB8;
  if (!qword_1EE1E2DB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1E2DB8);
  }

  return result;
}

id sub_1E175AD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_1E1AEFCCC() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E175A324(a1, a2, a3, v3 + v8, *(v3 + v9), (v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1E175AE44()
{
  sub_1E1AF364C();

  sub_1E175A7C8();
}

uint64_t objectdestroy_4Tm_2()
{
  v1 = sub_1E1AF364C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_1E175AF3C()
{
  sub_1E1AF364C();

  sub_1E175A9B0();
}

uint64_t ComponentHeightFactory.ComponentHeight.value(in:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E1AF127C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ComponentHeightFactory.ComponentHeight(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E175B19C(v2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return *v9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    return 0;
  }

  (*(v4 + 32))(v6, v9, v3);
  sub_1E1AF123C();
  v12 = v11;
  (*(v4 + 8))(v6, v3);
  return v12;
}

uint64_t type metadata accessor for ComponentHeightFactory.ComponentHeight(uint64_t a1)
{
  result = qword_1EE1DA650;
  if (!qword_1EE1DA650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E175B19C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentHeightFactory.ComponentHeight(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ComponentHeightFactory.componentHeight(for:contentType:surroundedBy:containerSize:pageGrid:scaleFactor:dynamicTypeSize:)@<X0>(unsigned __int8 *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, double *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70, &unk_1E1B23CB0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  LODWORD(a1) = *a1;
  sub_1E166FB28(a2, &v15 - v10);
  sub_1E166FB28(a3, &v11[*(v9 + 56)]);
  if (a1 == 93)
  {
    v12 = _s11AppStoreKit15PageEnvironmentV4isAXSbvg_0();
    sub_1E166FE18(v11);
    v13 = 352.0;
    if (v12)
    {
      v13 = 432.0;
    }

    *a4 = v13;
    type metadata accessor for ComponentHeightFactory.ComponentHeight(0);
  }

  else
  {
    sub_1E166FE18(v11);
    type metadata accessor for ComponentHeightFactory.ComponentHeight(0);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t static ComponentHeightFactory.estimatedComponentHeight(for:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x5C)
  {
    if (v1 == 16)
    {
      return 0x4046000000000000;
    }

    if (v1 == 23)
    {
      return 0x404E000000000000;
    }
  }

  else
  {
    switch(v1)
    {
      case ']':
        return 0x4076000000000000;
      case 'b':
        return 0x4072C00000000000;
      case 'c':
        return 0x4059000000000000;
    }
  }

  return 0;
}

uint64_t sub_1E175B3B8(uint64_t a1)
{
  result = sub_1E1AF127C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AppEventFormattedDate.displayText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit21AppEventFormattedDate_displayText);

  return v1;
}

uint64_t AppEventFormattedDate.countdownStringKey.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit21AppEventFormattedDate_countdownStringKey);

  return v1;
}

uint64_t AppEventFormattedDate.__allocating_init(displayFromDate:displayText:showLiveIndicator:countdownToDate:countdownStringKey:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  sub_1E14C1EAC(a1, v14 + OBJC_IVAR____TtC11AppStoreKit21AppEventFormattedDate_displayFromDate);
  v15 = (v14 + OBJC_IVAR____TtC11AppStoreKit21AppEventFormattedDate_displayText);
  *v15 = a2;
  v15[1] = a3;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit21AppEventFormattedDate_showLiveIndicator) = a4;
  sub_1E14C1EAC(a5, v14 + OBJC_IVAR____TtC11AppStoreKit21AppEventFormattedDate_countdownToDate);
  v16 = (v14 + OBJC_IVAR____TtC11AppStoreKit21AppEventFormattedDate_countdownStringKey);
  *v16 = a6;
  v16[1] = a7;
  return v14;
}

uint64_t AppEventFormattedDate.init(displayFromDate:displayText:showLiveIndicator:countdownToDate:countdownStringKey:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1E14C1EAC(a1, v7 + OBJC_IVAR____TtC11AppStoreKit21AppEventFormattedDate_displayFromDate);
  v14 = (v7 + OBJC_IVAR____TtC11AppStoreKit21AppEventFormattedDate_displayText);
  *v14 = a2;
  v14[1] = a3;
  *(v7 + OBJC_IVAR____TtC11AppStoreKit21AppEventFormattedDate_showLiveIndicator) = a4;
  sub_1E14C1EAC(a5, v7 + OBJC_IVAR____TtC11AppStoreKit21AppEventFormattedDate_countdownToDate);
  v15 = (v7 + OBJC_IVAR____TtC11AppStoreKit21AppEventFormattedDate_countdownStringKey);
  *v15 = a6;
  v15[1] = a7;
  return v7;
}

_BYTE *AppEventFormattedDate.__allocating_init(deserializing:using:)(_BYTE *a1, uint64_t a2)
{
  v48 = a2;
  v3 = sub_1E1AF380C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v45 = &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v41[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41[-v15];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41[-v18];
  sub_1E1AF381C();
  v46 = v19;
  sub_1E1AF371C();
  v20 = *(v4 + 8);
  v20(v9, v3);
  sub_1E1AF381C();
  v43 = sub_1E1AF37CC();
  v22 = v21;
  v20(v9, v3);
  sub_1E1AF381C();
  v42 = sub_1E1AF370C();
  v20(v6, v3);
  sub_1E1AF381C();
  sub_1E1AF371C();
  v20(v9, v3);
  sub_1E1AF381C();
  v23 = sub_1E1AF37CC();
  v25 = v24;
  v26 = v9;
  v27 = v16;
  v28 = v22;
  v20(v26, v3);
  if (v22)
  {
    goto LABEL_2;
  }

  v35 = sub_1E1AEFE6C();
  if ((*(*(v35 - 8) + 48))(v27, 1, v35) == 1)
  {

LABEL_6:
    v36 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    v37 = MEMORY[0x1E69E7CC0];
    *v38 = v47;
    v38[1] = v37;
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69AB698], v36);
    swift_willThrow();
    v39 = sub_1E1AF39DC();
    (*(*(v39 - 8) + 8))(v48, v39);
    v20(a1, v3);
    sub_1E153DF88(v46);
    sub_1E153DF88(v27);
    return a1;
  }

  if (!v25)
  {
    goto LABEL_6;
  }

LABEL_2:
  v29 = sub_1E1AF39DC();
  (*(*(v29 - 8) + 8))(v48, v29);
  v20(a1, v3);
  v30 = v44;
  sub_1E14C1EAC(v46, v44);
  v31 = v28;
  v32 = v45;
  sub_1E1380BEC(v27, v45);
  a1 = swift_allocObject();
  sub_1E14C1EAC(v30, &a1[OBJC_IVAR____TtC11AppStoreKit21AppEventFormattedDate_displayFromDate]);
  v33 = &a1[OBJC_IVAR____TtC11AppStoreKit21AppEventFormattedDate_displayText];
  *v33 = v43;
  v33[1] = v31;
  a1[OBJC_IVAR____TtC11AppStoreKit21AppEventFormattedDate_showLiveIndicator] = v42 & 1;
  sub_1E14C1EAC(v32, &a1[OBJC_IVAR____TtC11AppStoreKit21AppEventFormattedDate_countdownToDate]);
  v34 = &a1[OBJC_IVAR____TtC11AppStoreKit21AppEventFormattedDate_countdownStringKey];
  *v34 = v23;
  v34[1] = v25;
  sub_1E153DF88(v27);
  return a1;
}

uint64_t AppEventFormattedDate.deinit()
{
  sub_1E153DF88(v0 + OBJC_IVAR____TtC11AppStoreKit21AppEventFormattedDate_displayFromDate);

  sub_1E153DF88(v0 + OBJC_IVAR____TtC11AppStoreKit21AppEventFormattedDate_countdownToDate);

  return v0;
}

uint64_t AppEventFormattedDate.__deallocating_deinit()
{
  sub_1E153DF88(v0 + OBJC_IVAR____TtC11AppStoreKit21AppEventFormattedDate_displayFromDate);

  sub_1E153DF88(v0 + OBJC_IVAR____TtC11AppStoreKit21AppEventFormattedDate_countdownToDate);

  return swift_deallocClassInstance();
}

_BYTE *sub_1E175BC80@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = AppEventFormattedDate.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t type metadata accessor for AppEventFormattedDate(uint64_t a1)
{
  result = qword_1EE1E1560;
  if (!qword_1EE1E1560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E175BD00(uint64_t a1)
{
  sub_1E13A8B64(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t InstallPageInstallingViewLayout.init(metrics:iconView:progressView:titleText:subtitleText:descriptionText:ageRatingView:offerButton:)@<X0>(void *__src@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>)
{
  memcpy((a9 + 280), __src, 0x150uLL);
  sub_1E1308EC0(a2, a9);
  v17 = *(a3 + 16);
  *(a9 + 40) = *a3;
  *(a9 + 56) = v17;
  *(a9 + 72) = *(a3 + 32);
  sub_1E1308EC0(a4, a9 + 80);
  sub_1E1308EC0(a5, a9 + 120);
  sub_1E1308EC0(a6, a9 + 160);
  sub_1E1308EC0(a7, a9 + 200);

  return sub_1E1308EC0(a8, a9 + 240);
}

uint64_t InstallPageInstallingViewLayout.Metrics.init(iconSize:ageRatingMargin:ageRatingBaselineOffset:titleSpace:titleHorizontalMargin:subtitleSpace:subtitleHorizontalMargin:descriptionSpace:descriptionHorizontalMargin:offerButtonMargin:offerButtonSize:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X5>, __int128 *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, __int128 *a14, __int128 *a15)
{
  v22 = *a4;
  v23 = *a6;
  v24 = *a8;
  *a9 = a10;
  *(a9 + 8) = a11;
  sub_1E1308EC0(a1, a9 + 16);
  sub_1E1308EC0(a2, a9 + 56);
  sub_1E1308EC0(a3, a9 + 96);
  *(a9 + 136) = v22;
  sub_1E1308EC0(a5, a9 + 144);
  *(a9 + 184) = v23;
  sub_1E1308EC0(a7, a9 + 192);
  *(a9 + 232) = v24;
  sub_1E1308EC0(a14, a9 + 240);
  *(a9 + 280) = a12;
  *(a9 + 288) = a13;

  return sub_1E1308EC0(a15, a9 + 296);
}

uint64_t InstallPageInstallingViewLayout.Metrics.ageRatingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  return sub_1E1308EC0(a1, v1 + 16);
}

uint64_t InstallPageInstallingViewLayout.Metrics.ageRatingBaselineOffset.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 56));

  return sub_1E1308EC0(a1, v1 + 56);
}

uint64_t InstallPageInstallingViewLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 96));

  return sub_1E1308EC0(a1, v1 + 96);
}

uint64_t InstallPageInstallingViewLayout.Metrics.titleHorizontalMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 136) = v2;
  return result;
}

uint64_t InstallPageInstallingViewLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 144));

  return sub_1E1308EC0(a1, v1 + 144);
}

uint64_t InstallPageInstallingViewLayout.Metrics.subtitleHorizontalMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 184) = v2;
  return result;
}

uint64_t InstallPageInstallingViewLayout.Metrics.descriptionSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 192));

  return sub_1E1308EC0(a1, v1 + 192);
}

uint64_t InstallPageInstallingViewLayout.Metrics.descriptionHorizontalMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 232) = v2;
  return result;
}

uint64_t InstallPageInstallingViewLayout.Metrics.offerButtonMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 240));

  return sub_1E1308EC0(a1, v1 + 240);
}

uint64_t InstallPageInstallingViewLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 296));

  return sub_1E1308EC0(a1, v1 + 296);
}

double InstallPageInstallingViewLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v7 = sub_1E1AF745C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v3 + 25, v3[28]);
  sub_1E1AF11DC();
  v11 = v3[40];
  __swift_project_boxed_opaque_existential_1Tm(v4 + 37, v4[40]);
  sub_1E13BC274(v11);
  sub_1E1AF12DC();
  v12 = *(v8 + 8);
  v12(v10, v7);
  __swift_project_boxed_opaque_existential_1Tm(v4 + 25, v4[28]);
  sub_1E1AF117C();
  v17 = v4[52];

  sub_1E1AF102C();
  Conditional<>.value(in:rounded:)(a1, v10);
  v12(v10, v7);

  v17 = v4[58];

  sub_1E1AF102C();
  Conditional<>.value(in:rounded:)(a1, v10);
  v12(v10, v7);

  v17 = v4[64];

  sub_1E1AF102C();
  Conditional<>.value(in:rounded:)(a1, v10);
  v12(v10, v7);

  __swift_project_boxed_opaque_existential_1Tm(v4 + 10, v4[13]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v4 + 47, v4[50]);
  sub_1E1AF12FC();
  __swift_project_boxed_opaque_existential_1Tm(v4 + 15, v4[18]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v4 + 53, v4[56]);
  sub_1E1AF12FC();
  __swift_project_boxed_opaque_existential_1Tm(v4 + 20, v4[23]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v4 + 59, v4[62]);
  sub_1E1AF12FC();
  v13 = v4[68];
  __swift_project_boxed_opaque_existential_1Tm(v4 + 65, v13);
  sub_1E13BC274(v13);
  sub_1E1AF12DC();
  v12(v10, v7);
  v14 = v4[75];
  __swift_project_boxed_opaque_existential_1Tm(v4 + 72, v14);
  sub_1E13BC274(v14);
  sub_1E1AF12DC();
  v12(v10, v7);
  return a2;
}

uint64_t InstallPageInstallingViewLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_1E1AF745C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v5 + 320);
  __swift_project_boxed_opaque_existential_1Tm((v6 + 296), v16);
  sub_1E13BC274(v16);
  v17 = sub_1E1AF12DC();
  v18 = *(v13 + 8);
  v18(v15, v12);
  __swift_project_boxed_opaque_existential_1Tm((v6 + 200), *(v6 + 224));
  sub_1E1AF11DC();
  v20 = v19;
  v81[1] = v21;
  __swift_project_boxed_opaque_existential_1Tm((v6 + 200), *(v6 + 224));
  v22 = sub_1E1AF117C();
  *&v81[2] = v20;
  if (v22)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v17 + v20;
  }

  v98.origin.x = a2;
  v98.origin.y = a3;
  v98.size.width = a4;
  v98.size.height = a5;
  Width = CGRectGetWidth(v98);
  v97[0] = *(v6 + 416);

  sub_1E1AF102C();
  Conditional<>.value(in:rounded:)(a1, v15);
  v26 = v25;
  v18(v15, v12);

  v27 = v26 + v26;
  v28 = a2;
  v29 = Width - v27;
  v30 = a3;
  v85 = v23;
  v83 = v29 - v23;
  v99.origin.x = a2;
  v99.origin.y = a3;
  v99.size.width = a4;
  v99.size.height = a5;
  MinX = CGRectGetWidth(v99);
  v97[0] = *(v6 + 464);

  sub_1E1AF102C();
  Conditional<>.value(in:rounded:)(a1, v15);
  v87 = v31;
  v18(v15, v12);

  v100.origin.x = a2;
  v100.origin.y = a3;
  v100.size.width = a4;
  v100.size.height = a5;
  v86 = CGRectGetWidth(v100);
  v97[0] = *(v6 + 512);

  sub_1E1AF102C();
  Conditional<>.value(in:rounded:)(a1, v15);
  v84 = v32;
  v18(v15, v12);

  v101.origin.x = a2;
  v101.origin.y = a3;
  v101.size.width = a4;
  v101.size.height = a5;
  MinY = CGRectGetMinY(v101);
  v35 = *(v6 + 280);
  v34 = *(v6 + 288);
  __swift_project_boxed_opaque_existential_1Tm(v6, *(v6 + 24));
  sub_1E1AF11AC();
  v102.origin.x = v28;
  v102.origin.y = v30;
  v102.size.width = a4;
  v102.size.height = a5;
  v36 = CGRectGetMidX(v102) + v35 * -0.5;
  __swift_project_boxed_opaque_existential_1Tm(v97, v97[3]);
  sub_1E1AF116C();
  sub_1E14F59A8(v6 + 40, &v93);
  if (v94)
  {
    sub_1E1308EC0(&v93, v95);
    __swift_project_boxed_opaque_existential_1Tm(v95, v96);
    if ((sub_1E1AF117C() & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1Tm(v95, v96);
      sub_1E1AF116C();
    }

    __swift_destroy_boxed_opaque_existential_1(v95);
  }

  else
  {
    sub_1E14F60F8(&v93);
  }

  v103.origin.x = v36;
  v103.origin.y = MinY;
  v103.size.width = v35;
  v103.size.height = v34;
  v82 = MinY + CGRectGetMaxY(v103);
  v37 = *(v6 + 400);
  __swift_project_boxed_opaque_existential_1Tm((v6 + 376), v37);
  sub_1E13BC274(v37);
  v81[0] = sub_1E1AF12DC();
  v18(v15, v12);
  __swift_project_boxed_opaque_existential_1Tm((v6 + 80), *(v6 + 104));
  v104.origin.x = v28;
  v104.origin.y = v30;
  v104.size.width = a4;
  v104.size.height = a5;
  CGRectGetHeight(v104);
  sub_1E1AF11CC();
  v39 = v38;
  v41 = v40;
  __swift_project_boxed_opaque_existential_1Tm((v6 + 376), *(v6 + 400));
  v83 = v41;
  sub_1E1AF12FC();
  v105.size.height = a5;
  v43 = v42;
  v105.size.width = a4;
  v90 = v28;
  v105.origin.x = v28;
  v92 = v30;
  v105.origin.y = v30;
  v89 = a4;
  height = v105.size.height;
  CGRectGetMidX(v105);
  v44 = v82;
  v85 = v43;
  __swift_project_boxed_opaque_existential_1Tm((v6 + 80), *(v6 + 104));
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm((v6 + 200), *(v6 + 224));
  if ((sub_1E1AF117C() & 1) == 0)
  {
    v45 = *(v6 + 360);
    __swift_project_boxed_opaque_existential_1Tm((v6 + 336), v45);
    sub_1E13BC274(v45);
    sub_1E1AF12DC();
    v18(v15, v12);
    v106.origin.x = v90;
    v106.origin.y = v92;
    v106.size.width = v89;
    v106.size.height = height;
    CGRectGetMidX(v106);
  }

  v86 = v86 - (v84 + v84);
  v87 = MinX - (v87 + v87);
  __swift_project_boxed_opaque_existential_1Tm((v6 + 200), *(v6 + 224));
  sub_1E1AF116C();
  MinX = v44 + v39 - v83 + v85;
  __swift_project_boxed_opaque_existential_1Tm((v6 + 120), *(v6 + 144));
  v46 = v90;
  v107.origin.x = v90;
  v47 = v92;
  v107.origin.y = v92;
  v48 = v89;
  v107.size.width = v89;
  v49 = height;
  v107.size.height = height;
  CGRectGetHeight(v107);
  sub_1E1AF11CC();
  v51 = v50;
  v53 = v52;
  __swift_project_boxed_opaque_existential_1Tm((v6 + 424), *(v6 + 448));
  sub_1E1AF12FC();
  v55 = v54;
  v108.origin.x = v46;
  v108.origin.y = v47;
  v108.size.width = v48;
  v108.size.height = v49;
  CGRectGetMidX(v108);
  v56 = MinX;
  __swift_project_boxed_opaque_existential_1Tm((v6 + 120), *(v6 + 144));
  sub_1E1AF116C();
  MinX = v56 + v51 - v53 + v55;
  __swift_project_boxed_opaque_existential_1Tm((v6 + 160), *(v6 + 184));
  v57 = v90;
  v109.origin.x = v90;
  v58 = v92;
  v109.origin.y = v92;
  v59 = v89;
  v109.size.width = v89;
  v60 = height;
  v109.size.height = height;
  CGRectGetHeight(v109);
  sub_1E1AF11CC();
  v62 = v61;
  v64 = v63;
  __swift_project_boxed_opaque_existential_1Tm((v6 + 472), *(v6 + 496));
  sub_1E1AF12FC();
  v66 = v65;
  v110.origin.x = v57;
  v110.origin.y = v58;
  v110.size.width = v59;
  v110.size.height = v60;
  CGRectGetMidX(v110);
  v67 = MinX;
  __swift_project_boxed_opaque_existential_1Tm((v6 + 160), *(v6 + 184));
  sub_1E1AF116C();
  MinX = v67 + v62 - v64 + v66;
  __swift_project_boxed_opaque_existential_1Tm((v6 + 240), *(v6 + 264));
  v68 = height;
  sub_1E1AF11DC();
  v70 = v69;
  v72 = v71;
  v73 = v90;
  v111.origin.x = v90;
  v74 = v92;
  v111.origin.y = v92;
  v111.size.width = v59;
  v111.size.height = v68;
  v75 = CGRectGetMidX(v111) - v70 * 0.5;
  v76 = *(v6 + 544);
  __swift_project_boxed_opaque_existential_1Tm((v6 + 520), v76);
  sub_1E13BC274(v76);
  v77 = sub_1E1AF12DC();
  v18(v15, v12);
  v78 = MinX + v77;
  __swift_project_boxed_opaque_existential_1Tm((v6 + 240), *(v6 + 264));
  sub_1E1AF116C();
  v112.origin.x = v73;
  v112.origin.y = v74;
  v112.size.width = v59;
  v112.size.height = v68;
  MinX = CGRectGetMinX(v112);
  v113.origin.x = v73;
  v113.origin.y = v74;
  v113.size.width = v59;
  v113.size.height = v68;
  v87 = CGRectGetMinY(v113);
  v114.origin.x = v73;
  v114.origin.y = v74;
  v114.size.width = v59;
  v114.size.height = v68;
  CGRectGetWidth(v114);
  v115.origin.x = v75;
  v115.origin.y = v78;
  v115.size.width = v70;
  v115.size.height = v72;
  CGRectGetMaxY(v115);
  v79 = *(v6 + 600);
  __swift_project_boxed_opaque_existential_1Tm((v6 + 576), v79);
  sub_1E13BC274(v79);
  sub_1E1AF12DC();
  v18(v15, v12);
  sub_1E1AF106C();
  return __swift_destroy_boxed_opaque_existential_1(v97);
}

uint64_t sub_1E175D638(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 616))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E175D680(uint64_t result, int a2, int a3)
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
    *(result + 584) = 0u;
    *(result + 600) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
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
      *(result + 616) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 616) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E175D770(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 336))
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

uint64_t sub_1E175D7B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
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
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TrailersLockup.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = *v3;
  v6 = sub_1E1AF39DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v46 = sub_1E1AF380C();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  sub_1E1AF381C();
  v43 = v7;
  v18 = *(v7 + 16);
  v45 = a2;
  v19 = a2;
  v20 = v18;
  v18(v12, v19, v6);
  type metadata accessor for Trailers();
  swift_allocObject();
  v21 = v41;
  v22 = Trailers.init(deserializing:using:)(v17, v12);
  if (v21)
  {
    v23 = a1;
    v24 = v46;
  }

  else
  {
    v41 = v20;
    v26 = v9;
    v27 = *(v22 + 16);
    if (v27 >> 62)
    {
      v39 = v22;
      v28 = sub_1E1AF71CC();
      v22 = v39;
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = a1;
    v30 = v44;
    v29 = v45;
    v31 = v46;
    if (v28)
    {
      *(v42 + OBJC_IVAR____TtC11AppStoreKit14TrailersLockup_trailers) = v22;
      v32 = *(v30 + 16);
      v45 = a1;
      v32(v14, a1, v31);
      v41(v26, v29, v6);
      v33 = v6;
      v34 = v29;
      v24 = Lockup.init(deserializing:using:)(v14, v26);
      (*(v43 + 8))(v34, v33);
      (*(v30 + 8))(v45, v46);
      return v24;
    }

    v35 = v46;
    v36 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    v37 = MEMORY[0x1E69E7CC0];
    *v38 = 0x736F65646976;
    v38[1] = 0xE600000000000000;
    v38[2] = v40;
    v38[3] = v37;
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69AB6A0], v36);
    swift_willThrow();

    v24 = v35;
  }

  (*(v43 + 8))(v45, v6);
  (*(v44 + 8))(v23, v24);
  type metadata accessor for TrailersLockup(0);
  swift_deallocPartialClassInstance();
  return v24;
}

uint64_t type metadata accessor for TrailersLockup(uint64_t a1)
{
  result = qword_1ECEB8CA0;
  if (!qword_1ECEB8CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TrailersLockup.__allocating_init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:trailers:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v77 = a8;
  v76 = a7;
  v75 = a6;
  v74 = a5;
  v71 = a4;
  v69 = a3;
  v67 = a2;
  v85 = a25;
  v86 = a26;
  v84 = a24;
  v82 = a27;
  v83 = a23;
  v81 = a22;
  v79 = a21;
  v64 = a20;
  v63 = a19;
  v80 = a18;
  v73 = a17;
  v72 = a16;
  v70 = a15;
  v68 = a14;
  v78 = a13;
  v66 = a12;
  v65 = a11;
  v62 = a10;
  v61 = a9;
  v30 = sub_1E1AEFEAC();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = &v58 - v35;
  v37 = swift_allocObject();
  v38 = a1[1];
  v60 = *a1;
  v59 = v38;
  *(v37 + OBJC_IVAR____TtC11AppStoreKit14TrailersLockup_trailers) = a29;
  v93 = 0;
  memset(v92, 0, sizeof(v92));
  sub_1E134FD1C(a28, v36, &unk_1ECEB1770, &unk_1E1AFED20);
  *(v37 + 424) = 4;
  sub_1E134FD1C(v92, &v89, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v90 + 1))
  {
    v39 = v90;
    *(v37 + 448) = v89;
    *(v37 + 464) = v39;
    *(v37 + 480) = v91;
  }

  else
  {

    sub_1E1AEFE9C();
    v40 = sub_1E1AEFE7C();
    v42 = v41;
    (*(v31 + 8))(v33, v30);
    v87 = v40;
    v88 = v42;
    sub_1E1AF6F6C();
    sub_1E1308058(&v89, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E134FD1C(v36, v37 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  v43 = v59;
  *(v37 + 16) = v60;
  *(v37 + 24) = v43;
  v44 = v69;
  *(v37 + 32) = v67;
  *(v37 + 40) = v44;
  *(v37 + 48) = v71;
  *(v37 + 56) = 0;
  v45 = v64;
  *(v37 + 64) = v63;
  *(v37 + 72) = v45;
  v46 = v75;
  *(v37 + 80) = v74;
  *(v37 + 88) = v46;
  v47 = v77;
  *(v37 + 96) = v76;
  *(v37 + 104) = v47;
  v48 = v62;
  *(v37 + 112) = v61;
  *(v37 + 120) = v48;
  *(v37 + 128) = 0;
  *(v37 + 136) = 2;
  v49 = v66;
  *(v37 + 144) = v65;
  *(v37 + 152) = v49;
  v50 = v70;
  *(v37 + 192) = v68;
  *(v37 + 200) = v50;
  v51 = v73;
  *(v37 + 208) = v72;
  *(v37 + 216) = v51;
  *(v37 + 376) = 0u;
  *(v37 + 392) = 0u;
  *(v37 + 408) = 0x8000;
  *(v37 + 360) = v82;
  *(v37 + 416) = 0;
  *(v37 + 432) = MEMORY[0x1E69E7CD0];
  v52 = v81;
  *(v37 + 160) = v79;
  *(v37 + 168) = v52;
  v53 = v78;
  *(v37 + 176) = v83;
  *(v37 + 184) = v53;
  v55 = v84;
  v54 = v85;
  *(v37 + 224) = v80;
  *(v37 + 232) = v55;
  *(v37 + 240) = v54;
  *(v37 + 248) = 0;
  v56 = v86;
  *(v37 + 256) = 0;
  *(v37 + 264) = v56;
  *(v37 + 272) = 0u;
  *(v37 + 288) = 0u;
  *(v37 + 304) = 0u;
  *(v37 + 320) = 0u;
  *(v37 + 336) = 0;
  sub_1E1308058(a28, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v36, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v92, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v37 + 344) = MEMORY[0x1E69E7CC0];
  *(v37 + 352) = 0;
  *(v37 + 440) = 0;
  *(v37 + 368) = 0;
  return v37;
}