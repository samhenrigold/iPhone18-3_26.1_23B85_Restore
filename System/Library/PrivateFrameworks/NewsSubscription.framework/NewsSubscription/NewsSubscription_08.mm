uint64_t (*sub_1D77FD5CC(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D77CB388;
}

uint64_t sub_1D77FD680(_OWORD *a1)
{
  sub_1D77FD188(0);
  sub_1D78B41F4();
  v1 = sub_1D78B4014();
  v2 = sub_1D78B4134();

  return v2;
}

uint64_t PaywallInteractor.bundleSubscriptionDidSubscribe(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 32))(ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t dispatch thunk of PaywallInteractorType.requestAMSSheet(with:purchaseSessionID:paywallModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 56))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 64))(a1, a2, a3, a4, a5);
}

void sub_1D77FDA30(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_1D77FDA40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D77FDAA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D77FDB90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA8] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D77FDC24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D77FDC6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SubscriptionWelcomeAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t SubscriptionWelcomeAlert.message.getter()
{
  if (*v0)
  {
    v1 = [*v0 name];
    v2 = sub_1D78B5C74();
    v4 = v3;

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    sub_1D78B3134();

    sub_1D774FE1C(0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D78BCAB0;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1D775ABD4();
    *(v7 + 32) = v2;
    *(v7 + 40) = v4;
    v8 = sub_1D78B5C94();
  }

  else
  {
    type metadata accessor for Localized();
    v9 = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v8 = sub_1D78B3134();
  }

  return v8;
}

uint64_t SubscriptionWelcomeAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t SubscriptionWelcomeAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

uint64_t sub_1D77FE0C4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t WebAuthenticationErrorAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t WebAuthenticationErrorAlert.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t WebAuthenticationErrorAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t WebAuthenticationErrorAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

uint64_t sub_1D77FE494()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D77FE55C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

id AMSUIWebViewControllerFactory.createViewController(for:placement:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  sub_1D77402F0(0, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v36[-v8];
  sub_1D77402F0(0, qword_1EE096030, type metadata accessor for PurchaseContext);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v36[-v12];
  v14 = *a2;
  v15 = _s16NewsSubscription8AMSUIBagC3bagSo14AMSBagProtocol_pyFZ_0();
  v16 = [objc_opt_self() sharedAccount];
  v17 = [v16 activeiTunesAccount];

  v18 = [objc_allocWithZone(MEMORY[0x1E698CD40]) initWithBag:v15 account:v17 clientInfo:0];
  swift_unknownObjectRelease();

  if (v14 != 13)
  {
    v19 = *(v3 + OBJC_IVAR____TtC16NewsSubscription29AMSUIWebViewControllerFactory_metricsBuilder + 24);
    v20 = *(v3 + OBJC_IVAR____TtC16NewsSubscription29AMSUIWebViewControllerFactory_metricsBuilder + 32);
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC16NewsSubscription29AMSUIWebViewControllerFactory_metricsBuilder), v19);
    v37 = v14;
    v21 = type metadata accessor for PurchaseContext(0);
    (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
    v22 = sub_1D78B3294();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v9, a1, v22);
    (*(v23 + 56))(v9, 0, 1, v22);
    (*(v20 + 24))(&v37, v13, v9, v19, v20);
    sub_1D77FFC98(v9, &unk_1EE096460, MEMORY[0x1E6968FB0]);
    sub_1D77FFC98(v13, qword_1EE096030, type metadata accessor for PurchaseContext);
    v24 = MEMORY[0x1E69E7CA0];
    v25 = sub_1D78B5BB4();

    [v18 setMetricsOverlay_];

    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v26 = qword_1EE09C268;
    sub_1D774FE1C(0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1D78BCAB0;
    v28 = [v18 metricsOverlay];
    if (v28)
    {
      v29 = v28;
      v30 = sub_1D78B5BC4();
    }

    else
    {
      v30 = 0;
    }

    sub_1D7800194(0, &qword_1EE090190, v24 + 8, MEMORY[0x1E69E5E28]);
    *(v27 + 56) = v31;
    *(v27 + 64) = sub_1D77FFCF4();
    if (!v30)
    {
      v30 = sub_1D77FEE78(MEMORY[0x1E69E7CC0]);
    }

    *(v27 + 32) = v30;
    v32 = sub_1D78B60A4();
    sub_1D78B42C4("Creating AMSUIWebViewController with metrics= %@", 48, 2, &dword_1D7739000, v26, v32, v27);
  }

  [v18 setDelegate_];
  v33 = sub_1D78B3214();

  v34 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  return v34;
}

id AMSUIWebViewControllerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AMSUIWebViewControllerFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D77FEC44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D77FFE10(0);
    v3 = sub_1D78B6564();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D77FFE88(v4, &v13, sub_1D776F9A0);
      v5 = v13;
      v6 = v14;
      result = sub_1D777BBB4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D7741E34(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_1D77FED68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D77FFDA0(0);
    v3 = sub_1D78B6564();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D77FFE88(v4, &v11, sub_1D778AFF4);
      v5 = v11;
      result = sub_1D777BCDC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D778D0A0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1D77FEE78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D7800194(0, &qword_1EE08FB10, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D78B6564();
    v4 = a1 + 32;

    v5 = MEMORY[0x1E69E6158];
    while (1)
    {
      sub_1D7800128(v4, &v14, &unk_1EC9CA788, v5);
      v6 = v14;
      v7 = v15;
      result = sub_1D777BBB4(v14, v15);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      result = sub_1D778D0A0(&v16, (v3[7] + 32 * result));
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 48;
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

unint64_t sub_1D77FEFC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D7800194(0, &unk_1EC9CAC10, MEMORY[0x1E69E6158], MEMORY[0x1E69E6EC8]);
    v3 = sub_1D78B6564();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D777BBB4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1D77FF0F0(uint64_t a1)
{
  sub_1D77FFEF0(0, &qword_1EC9CA118, type metadata accessor for PurchaseContext);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D77FFF54(0, &qword_1EE08E550, type metadata accessor for PurchaseContext);
    v9 = sub_1D78B6564();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D7800054(v11, v7, &qword_1EC9CA118, type metadata accessor for PurchaseContext);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D777BBB4(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for PurchaseContext(0);
      result = sub_1D78000C0(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for PurchaseContext);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_1D77FF304(uint64_t a1)
{
  sub_1D77FFEF0(0, &qword_1EC9CA330, type metadata accessor for SiwaCredentialUploadData);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D77FFF54(0, &qword_1EC9CA780, type metadata accessor for SiwaCredentialUploadData);
    v9 = sub_1D78B6564();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D7800054(v11, v7, &qword_1EC9CA330, type metadata accessor for SiwaCredentialUploadData);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D777BBB4(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for SiwaCredentialUploadData(0);
      result = sub_1D78000C0(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for SiwaCredentialUploadData);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_1D77FF518(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D778D03C();
    v3 = sub_1D78B6564();
    v4 = a1 + 32;

    v5 = MEMORY[0x1E69E69B8];
    while (1)
    {
      sub_1D7800128(v4, v14, &qword_1EE08FB70, v5);
      result = sub_1D777BD70(v14);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = v3[6] + 40 * result;
      v9 = v14[0];
      v10 = v14[1];
      *(v8 + 32) = v15;
      *v8 = v9;
      *(v8 + 16) = v10;
      result = sub_1D778D0A0(&v16, (v3[7] + 32 * result));
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 72;
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

unint64_t sub_1D77FF648(uint64_t a1)
{
  sub_1D77FFEF0(0, &qword_1EE090118, type metadata accessor for PurchaseAdContext);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D77FFF54(0, &unk_1EC9CA770, type metadata accessor for PurchaseAdContext);
    v9 = sub_1D78B6564();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D7800054(v11, v7, &qword_1EE090118, type metadata accessor for PurchaseAdContext);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D777BBB4(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for PurchaseAdContext(0);
      result = sub_1D78000C0(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for PurchaseAdContext);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_1D77FF85C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D77FFF54(0, &qword_1EC9CAC20, sub_1D77FFFB8);
    v3 = sub_1D78B6564();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1D777BBB4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1D77FF970(uint64_t a1)
{
  sub_1D77FFEF0(0, &qword_1EE08E618, type metadata accessor for PaywallShownEntry);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D77FFF54(0, &unk_1EE08E540, type metadata accessor for PaywallShownEntry);
    v9 = sub_1D78B6564();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D7800054(v11, v7, &qword_1EE08E618, type metadata accessor for PaywallShownEntry);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D777BBB4(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for PaywallShownEntry(0);
      result = sub_1D78000C0(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for PaywallShownEntry);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_1D77FFB84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D77FFF54(0, &qword_1EE08FB18, sub_1D7800004);
    v3 = sub_1D78B6564();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D777BBB4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

uint64_t sub_1D77FFC98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D77402F0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D77FFCF4()
{
  result = qword_1EC9CA768;
  if (!qword_1EC9CA768)
  {
    sub_1D7800194(255, &qword_1EE090190, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA768);
  }

  return result;
}

void sub_1D77FFDA0(uint64_t a1)
{
  if (!qword_1EE08FAF8)
  {
    type metadata accessor for Key(255);
    sub_1D778B060();
    v1 = sub_1D78B6574();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE08FAF8);
    }
  }
}

void sub_1D77FFE10(uint64_t a1)
{
  if (!qword_1EE08FB30)
  {
    sub_1D773C9B8(255, &qword_1EE090480, MEMORY[0x1E69D7838]);
    v1 = sub_1D78B6574();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE08FB30);
    }
  }
}

uint64_t sub_1D77FFE88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D77FFEF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D77FFF54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D78B6574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D77FFFB8()
{
  result = qword_1EE08FCB0;
  if (!qword_1EE08FCB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FCB0);
  }

  return result;
}

void sub_1D7800004()
{
  if (!qword_1EE090010)
  {
    v0 = sub_1D78B5F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE090010);
    }
  }
}

uint64_t sub_1D7800054(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D77FFEF0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D78000C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7800128(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D78001F4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D7800194(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E69E6158], a3, MEMORY[0x1E69E6168]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D78001F4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D7800258(uint64_t a1, char *a2, double *a3)
{
  v4 = v3;
  [a2 setFrame_];
  v8 = *&a2[OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintFooterView_button];
  [v8 setFrame_];
  v9 = *&a2[OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintFooterView_privacyLabel];
  [v9 setFrame_];
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  sub_1D77BAAA0(v8, *(a1 + 72));
  [v9 setEditable_];
  [v9 setTextContainerInset_];
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  sub_1D77BA950(v9);
  v10 = [objc_opt_self() clearColor];
  [v9 setBackgroundColor_];

  v11 = __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v12 = sub_1D77BA33C(*v11);
  sub_1D778AF9C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78C22A0;
  v14 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v15 = sub_1D773F004(0, &qword_1EE08FC10, 0x1E69DB878);
  v16 = v14;
  v17 = sub_1D78B61B4();
  v18 = MEMORY[0x1E69DB688];
  *(inited + 40) = v17;
  v19 = *v18;
  *(inited + 64) = v15;
  *(inited + 72) = v19;
  v20 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v21 = v19;
  v22 = [v20 init];
  [v22 setAlignment_];
  v23 = sub_1D773F004(0, &qword_1EC9CA0F8, 0x1E69DB7D0);
  *(inited + 80) = v22;
  v24 = *MEMORY[0x1E69DB660];
  *(inited + 104) = v23;
  *(inited + 112) = v24;
  v25 = MEMORY[0x1E69E63B0];
  *(inited + 120) = 0x3FCEB851EB851EB8;
  v26 = *MEMORY[0x1E69DB650];
  *(inited + 144) = v25;
  *(inited + 152) = v26;
  *(inited + 184) = sub_1D773F004(0, &qword_1EE08FC00, 0x1E69DC888);
  *(inited + 160) = v12;
  v27 = v24;
  v28 = v26;
  v29 = v12;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4(0);
  swift_arrayDestroy();
  v30 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v31 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v32 = sub_1D78B5BB4();

  v33 = [v30 initWithString:v31 attributes:v32];

  [v8 setAttributedTitle:v33 forState:0];
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v34 = sub_1D77BA458();
  [v9 setAttributedText_];
}

id sub_1D7800658()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = sub_1D78006B4(v0);
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1D78006B4(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69A8B28]) init];
  v3 = *(a1 + 24);
  sub_1D777246C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78C0D70;
  v5 = v2;
  v6 = v3;
  v7 = [objc_allocWithZone(MEMORY[0x1E698CCF8]) initWithBag_];
  swift_unknownObjectRelease();
  *(inited + 32) = v7;
  sub_1D7811764(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1D7800B00();
  sub_1D7800B4C();
  v8 = sub_1D78B5F54();

  [v5 startWithApplicationContext:v6 messageGroups:v8];

  return v5;
}

uint64_t sub_1D78007F4()
{

  return swift_deallocClassInstance();
}

void sub_1D780083C()
{
  v0 = sub_1D7800658();
  v1 = [objc_allocWithZone(MEMORY[0x1E69A8B38]) init];
  [v0 receiveEvent_];
}

void sub_1D78008B4()
{
  v1 = objc_opt_self();
  v3[4] = sub_1D7800AF8;
  v4 = v0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1D775FB6C;
  v3[3] = &block_descriptor_21;
  v2 = _Block_copy(v3);

  [v1 scheduleLowPriorityBlockForMainThread_];
  _Block_release(v2);
}

unint64_t sub_1D7800B00()
{
  result = qword_1EE08FE70;
  if (!qword_1EE08FE70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FE70);
  }

  return result;
}

unint64_t sub_1D7800B4C()
{
  result = qword_1EE08FE68;
  if (!qword_1EE08FE68)
  {
    sub_1D7800B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08FE68);
  }

  return result;
}

uint64_t AppLaunchPaidBundleViaOfferUpsellManager.__allocating_init(configurationManager:router:paidBundleViaOfferHandler:paidBundleViaOfferFeatureAvailability:appLaunchUpsellTracker:offlineProvider:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  sub_1D7750574(0);
  swift_allocObject();
  *(v12 + 104) = sub_1D78B3974();
  *(v12 + 16) = a1;
  sub_1D774584C(a2, v12 + 64);
  sub_1D774584C(a3, v12 + 152);
  sub_1D774584C(a4, v12 + 112);
  sub_1D775110C(a5, v12 + 24, &qword_1EE0925B0, qword_1EE0925C0, &protocol descriptor for AppLaunchUpsellTrackerType);
  sub_1D775110C(a6, v12 + 192, &qword_1EE090270, &qword_1EE090280, MEMORY[0x1E69B61E0]);
  v13 = objc_opt_self();
  swift_unknownObjectRetain();
  v14 = [v13 defaultCenter];
  v15 = qword_1EE08FDF8;

  if (v15 != -1)
  {
    swift_once();
  }

  [v14 addObserver:v12 selector:sel_handleAMSUpsellDismiss name:qword_1EE08FE00 object:0];
  swift_unknownObjectRelease();

  sub_1D7751464(a6, &qword_1EE090270, &qword_1EE090280, MEMORY[0x1E69B61E0]);
  sub_1D7751464(a5, &qword_1EE0925B0, qword_1EE0925C0, &protocol descriptor for AppLaunchUpsellTrackerType);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v12;
}

uint64_t sub_1D7800DA4()
{
  v1 = v0[17];
  v2 = v0[18];
  __swift_project_boxed_opaque_existential_1(v0 + 14, v1);
  if ((*(v2 + 56))(v1, v2))
  {
    v3 = v0[22];
    v4 = v0[23];
    __swift_project_boxed_opaque_existential_1(v0 + 19, v3);
    return (*(v4 + 8))(1, v3, v4);
  }

  else
  {
    if (qword_1EC9C8460 != -1)
    {
      swift_once();
    }

    v6 = sub_1D78B4304();
    __swift_project_value_buffer(v6, qword_1EC9D9E00);
    v7 = sub_1D78B42E4();
    v8 = sub_1D78B60A4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D7739000, v7, v8, "App Launch Paid Bundle Via Offer Upsell feature is disabled. Skipping presentation.", v9, 2u);
      MEMORY[0x1DA7043F0](v9, -1, -1);
    }

    sub_1D77505D0();
    swift_allocObject();
    return sub_1D78B4104();
  }
}

uint64_t sub_1D7800F18()
{
  v1 = v0;
  if (qword_1EC9C8460 != -1)
  {
    swift_once();
  }

  v2 = sub_1D78B4304();
  __swift_project_value_buffer(v2, qword_1EC9D9E00);
  v3 = sub_1D78B42E4();
  v4 = sub_1D78B60A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D7739000, v3, v4, "Attempting to present paid bundle via offer upsell...", v5, 2u);
    MEMORY[0x1DA7043F0](v5, -1, -1);
  }

  sub_1D775110C((v1 + 3), v14, &qword_1EE0925B0, qword_1EE0925C0, &protocol descriptor for AppLaunchUpsellTrackerType);
  v6 = v15;
  if (v15)
  {
    v7 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v13 = 1;
    (*(v7 + 8))(&v13, 0, 0, v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    sub_1D7751464(v14, &qword_1EE0925B0, qword_1EE0925C0, &protocol descriptor for AppLaunchUpsellTrackerType);
  }

  v8 = v1[11];
  v9 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v8);
  v11 = sub_1D7801F94(&qword_1EC9CA878, v10, type metadata accessor for AppLaunchPaidBundleViaOfferUpsellManager, &protocol conformance descriptor for AppLaunchPaidBundleViaOfferUpsellManager);
  return (*(v9 + 24))(0, 0xE000000000000000, 0, 0, 0, 0, v1, v11, 0, v8, v9);
}

void *AppLaunchPaidBundleViaOfferUpsellManager.deinit()
{
  swift_unknownObjectRelease();
  sub_1D7751464((v0 + 3), &qword_1EE0925B0, qword_1EE0925C0, &protocol descriptor for AppLaunchUpsellTrackerType);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  sub_1D7751464((v0 + 24), &qword_1EE090270, &qword_1EE090280, MEMORY[0x1E69B61E0]);
  return v0;
}

uint64_t AppLaunchPaidBundleViaOfferUpsellManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  sub_1D7751464((v0 + 3), &qword_1EE0925B0, qword_1EE0925C0, &protocol descriptor for AppLaunchUpsellTrackerType);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  sub_1D7751464((v0 + 24), &qword_1EE090270, &qword_1EE090280, MEMORY[0x1E69B61E0]);

  return swift_deallocClassInstance();
}

uint64_t AppLaunchPaidBundleViaOfferUpsellManager.requiresPresentation()()
{
  sub_1D78B3944();
  if (sub_1D78B3934())
  {
    if (qword_1EC9C8528 != -1)
    {
      swift_once();
    }

    sub_1D7801F94(&qword_1EC9CA868, v1, type metadata accessor for AppLaunchPaidBundleViaOfferUpsellManager, &protocol conformance descriptor for AppLaunchPaidBundleViaOfferUpsellManager);
    sub_1D78B3574();
    if (LOBYTE(v19[0]) == 1)
    {
      if (qword_1EC9C8460 != -1)
      {
        swift_once();
      }

      v2 = sub_1D78B4304();
      __swift_project_value_buffer(v2, qword_1EC9D9E00);
      v3 = sub_1D78B42E4();
      v4 = sub_1D78B60A4();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_29;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "App Launch Paid Bundle Via Offer Upsell was disabled via debug settings. Upsell will not be presented.";
LABEL_28:
      _os_log_impl(&dword_1D7739000, v3, v4, v6, v5, 2u);
      MEMORY[0x1DA7043F0](v5, -1, -1);
LABEL_29:

      LOBYTE(v19[0]) = 0;
      sub_1D77505D0();
      swift_allocObject();
      return sub_1D78B4104();
    }
  }

  sub_1D775110C(v0 + 192, &v17, &qword_1EE090270, &qword_1EE090280, MEMORY[0x1E69B61E0]);
  if (!v18)
  {
    sub_1D7751464(&v17, &qword_1EE090270, &qword_1EE090280, MEMORY[0x1E69B61E0]);
    if (!NFStoreDemoMode())
    {
LABEL_22:
      v14 = [objc_opt_self() sharedAccount];
      v15 = [v14 isContentStoreFrontSupported];

      if (v15)
      {
        return sub_1D7800DA4();
      }

      if (qword_1EC9C8460 != -1)
      {
        swift_once();
      }

      v16 = sub_1D78B4304();
      __swift_project_value_buffer(v16, qword_1EC9D9E00);
      v3 = sub_1D78B42E4();
      v4 = sub_1D78B60A4();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_29;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Storefront not supported. App launch paid offer upsell will not be presented.";
      goto LABEL_28;
    }

LABEL_17:
    if (qword_1EC9C8460 != -1)
    {
      swift_once();
    }

    v13 = sub_1D78B4304();
    __swift_project_value_buffer(v13, qword_1EC9D9E00);
    v3 = sub_1D78B42E4();
    v4 = sub_1D78B60A4();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_29;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "App Launch Paid Bundle Via Offer Upsell Skipped because Store Demo Mode.";
    goto LABEL_28;
  }

  sub_1D77476F4(&v17, v19);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  if ((sub_1D78B54E4() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v19);
    if (!NFStoreDemoMode())
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if (qword_1EC9C8460 != -1)
  {
    swift_once();
  }

  v7 = sub_1D78B4304();
  __swift_project_value_buffer(v7, qword_1EC9D9E00);
  v8 = sub_1D78B42E4();
  v9 = sub_1D78B60A4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D7739000, v8, v9, "App Launch Paid Bundle Via Offer Upsell will not be presented, device is offline.", v10, 2u);
    MEMORY[0x1DA7043F0](v10, -1, -1);
  }

  LOBYTE(v17) = 0;
  sub_1D77505D0();
  swift_allocObject();
  v11 = sub_1D78B4104();
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v11;
}

double (*AppLaunchPaidBundleViaOfferUpsellManager.presentationAction()())(void (*a1)(void *, uint64_t), uint64_t a2)
{
  swift_allocObject();
  swift_weakInit();
  return sub_1D7801EA8;
}

double sub_1D78017F4(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v13 = sub_1D78B4B64();
    sub_1D7801F94(&qword_1EC9C9CD0, 255, MEMORY[0x1E69D8050], MEMORY[0x1E69D8058]);
    v14 = swift_allocError();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69D8048], v13);
    a1(v14, 1);

    return result;
  }

  v6 = Strong;
  sub_1D775110C(Strong + 192, &v17, &qword_1EE090270, &qword_1EE090280, MEMORY[0x1E69B61E0]);
  if (!v18)
  {
    sub_1D7751464(&v17, &qword_1EE090270, &qword_1EE090280, MEMORY[0x1E69B61E0]);
LABEL_12:
    v16 = swift_allocObject();
    v16[2] = v6;
    v16[3] = a1;
    v16[4] = a2;

    sub_1D78B4224();

    return result;
  }

  sub_1D77476F4(&v17, v19);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  if ((sub_1D78B54E4() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v19);
    goto LABEL_12;
  }

  if (qword_1EC9C8460 != -1)
  {
    swift_once();
  }

  v7 = sub_1D78B4304();
  __swift_project_value_buffer(v7, qword_1EC9D9E00);
  v8 = sub_1D78B42E4();
  v9 = sub_1D78B60A4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D7739000, v8, v9, "App Launch Paid Bundle Via Offer Upsell presentation is cancelled; device is offline.", v10, 2u);
    MEMORY[0x1DA7043F0](v10, -1, -1);
  }

  sub_1D7801F40();
  v11 = swift_allocError();
  a1(v11, 1);

  __swift_destroy_boxed_opaque_existential_1(v19);
  return result;
}

uint64_t sub_1D7801AF4(void *a1, uint64_t a2, uint64_t a3)
{
  v19[0] = a2;
  v5 = sub_1D78B3E24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D778F850(0, &qword_1EE08E4D8, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D78BF690;
  sub_1D78B3DF4();
  sub_1D78B3E14();
  sub_1D78B3E04();
  v19[1] = v10;
  sub_1D7801F94(&qword_1EE08F240, 255, MEMORY[0x1E69D6810], MEMORY[0x1E69D6818]);
  sub_1D778F850(0, &unk_1EE08E608, MEMORY[0x1E69E62F8]);
  sub_1D778F8B0();
  sub_1D78B6324();
  v11 = swift_allocObject();
  *(v11 + 16) = v19[0];
  *(v11 + 24) = a3;

  sub_1D78B3964();

  (*(v6 + 8))(v9, v5);
  if (qword_1EC9C8460 != -1)
  {
    swift_once();
  }

  v12 = sub_1D78B4304();
  __swift_project_value_buffer(v12, qword_1EC9D9E00);
  v13 = sub_1D78B42E4();
  v14 = sub_1D78B60A4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D7739000, v13, v14, "Showing BundleViaOfferUpsell...", v15, 2u);
    MEMORY[0x1DA7043F0](v15, -1, -1);
  }

  v16 = a1[22];
  v17 = a1[23];
  __swift_project_boxed_opaque_existential_1(a1 + 19, v16);
  (*(v17 + 16))(v16, v17);
  return sub_1D7800F18();
}

double (*sub_1D7801E4C())(void (*a1)(void *, uint64_t), uint64_t a2)
{
  swift_allocObject();
  swift_weakInit();
  return sub_1D7802044;
}

unint64_t sub_1D7801F40()
{
  result = qword_1EC9CA870;
  if (!qword_1EC9CA870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA870);
  }

  return result;
}

uint64_t sub_1D7801F94(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1D7801FF0()
{
  result = qword_1EC9CA880;
  if (!qword_1EC9CA880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA880);
  }

  return result;
}

uint64_t SignedInWithDifferentITunesAccountAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t SignedInWithDifferentITunesAccountAlert.message.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();

  v7 = [v6 bundleForClass_];
  sub_1D78B3134();

  sub_1D774FE1C(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D78BCB50;
  v9 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1D775ABD4();
  *(v8 + 32) = v2;
  *(v8 + 40) = v1;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 64) = v10;
  *(v8 + 72) = v4;
  *(v8 + 80) = v3;
  v11 = sub_1D78B5C94();

  return v11;
}

uint64_t SignedInWithDifferentITunesAccountAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t SignedInWithDifferentITunesAccountAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

uint64_t sub_1D78023F4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D78024E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D7802528(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D7802578(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v8 = v7;
  swift_beginAccess();
  v9 = v2[16];
  v10 = v2[17];
  __swift_mutable_project_boxed_opaque_existential_1((v2 + 13), v9);
  (*(v10 + 24))(v6, v8, v9, v10);
  swift_endAccess();
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 8))(v11, v12);
  [v13 removeFromSuperview];

  v14 = v2[2];
  v15 = v2[16];
  v16 = v2[17];
  v17 = __swift_project_boxed_opaque_existential_1(v2 + 13, v15);
  v18 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17, v17);
  v20 = &v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20);
  v21 = (*(v16 + 8))(v15, v16);
  (*(v18 + 8))(v20, v15);
  [v14 addSubview_];
}

uint64_t sub_1D7802774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1D774584C(a1 + 104, v18);
  v8 = v19;
  v9 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v10 = *(a2 + 112);
  v16[6] = *(a2 + 96);
  v16[7] = v10;
  v17 = *(a2 + 128);
  v11 = *(a2 + 48);
  v16[2] = *(a2 + 32);
  v16[3] = v11;
  v12 = *(a2 + 80);
  v16[4] = *(a2 + 64);
  v16[5] = v12;
  v13 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v13;
  v14 = (*(v9 + 80))(v16, a3, a4, v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v14;
}

uint64_t sub_1D7802860(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a2[2];
  swift_beginAccess();
  v6 = a2[16];
  v7 = a2[17];
  v8 = __swift_project_boxed_opaque_existential_1(a2 + 13, v6);
  v9 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8, v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  v12 = (*(v7 + 8))(v6, v7);
  (*(v9 + 8))(v11, v6);
  [v12 bounds];
  v14 = v13;
  v16 = v15;

  [v5 setFrame_];
  v18[1] = v3;
  v18[2] = v4;
  sub_1D78035B0(0);
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t sub_1D7802A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EE08FB90 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE09C260;
  v7 = sub_1D78B6094();
  sub_1D78B42C4("FlexiblePaywallFailsafeViewProvider failed to layout primary view provider.  Switching to fallback", 98, 2, &dword_1D7739000, v6, v7, MEMORY[0x1E69E7CC0]);
  MEMORY[0x1EEE9AC00](v8, v9);
  sub_1D78035B0(0);
  swift_allocObject();
  return sub_1D78B4174();
}

void sub_1D7802B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  type metadata accessor for CGSize(0);

  sub_1D78B41F4();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1D7803608;
  *(v13 + 24) = v12;
  v14 = sub_1D78B4014();
  sub_1D78B40B4();

  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;

  v16 = sub_1D78B4014();
  sub_1D78B40D4();
}

uint64_t sub_1D7802CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D774584C(a1 + 64, v17);
  swift_beginAccess();
  sub_1D774584C(a1 + 104, v19);
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((a1 + 104), v17, v8);
  swift_endAccess();
  sub_1D7802578(v19);
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v17);
  sub_1D774584C(a1 + 104, v19);
  v9 = v20;
  v10 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v11 = *(a2 + 112);
  v17[6] = *(a2 + 96);
  v17[7] = v11;
  v18 = *(a2 + 128);
  v12 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v12;
  v13 = *(a2 + 80);
  v17[4] = *(a2 + 64);
  v17[5] = v13;
  v14 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v14;
  v15 = (*(v10 + 80))(v17, a3, a4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v15;
}

uint64_t sub_1D7802E2C(double *a1, void *a2, uint64_t (*a3)(id, double, double))
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a2[2];
  swift_beginAccess();
  v8 = a2[16];
  v9 = a2[17];
  v10 = __swift_project_boxed_opaque_existential_1(a2 + 13, v8);
  v11 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10, v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13);
  v14 = (*(v9 + 8))(v8, v9);
  (*(v11 + 8))(v13, v8);
  [v14 bounds];
  v16 = v15;
  v18 = v17;

  return a3([v7 setFrame_], v5, v6);
}

uint64_t sub_1D7802FCC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  return swift_deallocClassInstance();
}

uint64_t sub_1D7803028()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v1[16];
  v3 = v1[17];
  __swift_project_boxed_opaque_existential_1(v1 + 13, v2);
  v4 = (*(v3 + 16))(v2, v3);
  swift_endAccess();
  return v4;
}

uint64_t sub_1D78030B4(uint64_t a1, uint64_t a2)
{
  sub_1D7803898(a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D78030F0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 56);
  __swift_project_boxed_opaque_existential_1((*v0 + 24), v2);
  (*(v3 + 40))(v2, v3);
  v4 = v1[11];
  v5 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v4);
  return (*(v5 + 40))(v4, v5);
}

uint64_t sub_1D7803178()
{
  v1 = *v0;
  swift_beginAccess();
  sub_1D774584C(v1 + 104, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 48))(v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_1D7803200()
{
  v1 = *v0;
  swift_beginAccess();
  sub_1D774584C(v1 + 104, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 56))(v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_1D7803288()
{
  v1 = *v0;
  swift_beginAccess();
  sub_1D774584C(v1 + 104, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 72))(v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_1D7803310(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = a1[7];
  v29 = a1[6];
  v30 = v8;
  v31 = *(a1 + 16);
  v9 = a1[3];
  v25 = a1[2];
  v26 = v9;
  v10 = a1[5];
  v27 = a1[4];
  v28 = v10;
  v11 = a1[1];
  v23 = *a1;
  v24 = v11;
  type metadata accessor for CGSize(0);
  sub_1D78B41F4();
  v12 = sub_1D78B4014();
  sub_1D78B40A4();

  v13 = swift_allocObject();
  v14 = v30;
  *(v13 + 112) = v29;
  *(v13 + 128) = v14;
  v15 = v31;
  v16 = v26;
  *(v13 + 48) = v25;
  *(v13 + 64) = v16;
  v17 = v28;
  *(v13 + 80) = v27;
  *(v13 + 96) = v17;
  v18 = v24;
  *(v13 + 16) = v23;
  *(v13 + 32) = v18;
  *(v13 + 144) = v15;
  *(v13 + 152) = a2;
  *(v13 + 160) = a3;
  *(v13 + 168) = v7;
  sub_1D77CB0EC(&v23, v22);

  v19 = sub_1D78B4014();
  v20 = sub_1D78B4154();

  return v20;
}

uint64_t sub_1D78034AC(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1D774584C(v3 + 104, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 88))(a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void sub_1D78035B0(uint64_t a1)
{
  if (!qword_1EE0951E0)
  {
    type metadata accessor for CGSize(255);
    v1 = sub_1D78B4184();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0951E0);
    }
  }
}

uint64_t sub_1D7803608(double a1, double a2)
{
  v3 = *(v2 + 16);
  *v5 = a1;
  *&v5[1] = a2;
  return v3(v5);
}

double __swift_assign_boxed_opaque_existential_1(uint64_t *a1, uint64_t *a2, __n128 result)
{
  if (a1 != a2)
  {
    v3 = a1[3];
    v4 = a2[3];
    if (v3 == v4)
    {
      v11 = *(v3 - 8);
      if ((*(v11 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v12 = *(v11 + 24);

        v12(result);
      }
    }

    else
    {
      a1[3] = v4;
      a1[4] = a2[4];
      v5 = *(v3 - 8);
      v6 = *(v4 - 8);
      v7 = v6;
      v8 = *(v6 + 80);
      if ((*(v5 + 82) & 2) != 0)
      {
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v6 + 16))(result);
        }
      }

      else
      {
        (*(v5 + 32))(v16, result);
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v7 + 16))(a1, a2, v4);
        }

        (*(v5 + 8))(v16, v3);
      }
    }
  }

  return result.n128_f64[0];
}

uint64_t sub_1D7803898(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  sub_1D774584C(v3 + 104, v12);
  v5 = v13;
  v6 = v14;
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  v7 = *(v6 + 24);
  v8 = swift_unknownObjectRetain();
  v7(v8, a2, v5, v6);
  sub_1D774584C(v3 + 104, v11);
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v3 + 104), v12, v9);
  swift_endAccess();
  sub_1D7802578(v11);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t _s16NewsSubscription21PaywallImageProcessorC7processySo7UIImageCSg5TeaUI09ProcessedD11RequestType_pF_0(uint64_t a1)
{
  sub_1D774584C(a1, v9);
  sub_1D7803B60();
  type metadata accessor for PaywallImageProcessorRequest(0);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtC16NewsSubscription28PaywallImageProcessorRequest_assetHandle), *(v8 + OBJC_IVAR____TtC16NewsSubscription28PaywallImageProcessorRequest_assetHandle + 24));
  result = sub_1D78B4694();
  if (v2)
  {
    v3 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    v4 = sub_1D78B5C44();

    v5 = [v3 initWithContentsOfFile_];

    if (v5)
    {
      v6 = v5;
      v7 = sub_1D78B6204();

      return v7;
    }

    return 0;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D7803B60()
{
  result = qword_1EE08E640;
  if (!qword_1EE08E640)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE08E640);
  }

  return result;
}

void sub_1D7803BC4(char *a1, double *a2, uint64_t a3)
{
  v4 = a1;
  v47 = *(a3 + 8);
  v55 = *&a1[OBJC_IVAR____TtC16NewsSubscription27HideMyEmailSignupChoiceView_titleLabel];
  if (v47)
  {
    sub_1D78B5CE4();
    sub_1D778AF9C(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D78BCB50;
    v6 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v7 = sub_1D773F004(0, &qword_1EE08FC10, 0x1E69DB878);
    v8 = v6;
    *(inited + 40) = sub_1D78B61B4();
    v9 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v7;
    *(inited + 72) = v9;
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 secondaryLabelColor];
    *(inited + 104) = sub_1D773F004(0, &qword_1EE08FC00, 0x1E69DC888);
    *(inited + 80) = v12;
    sub_1D77FED68(inited);
    v4 = a1;
    swift_setDeallocating();
    sub_1D778AFF4(0);
    swift_arrayDestroy();
    v13 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v14 = sub_1D78B5C44();

    type metadata accessor for Key(0);
    sub_1D778B060();
    v15 = sub_1D78B5BB4();

    v16 = [v13 initWithString:v14 attributes:v15];

    [v55 setAttributedText_];
    v17 = &unk_1D78BC000;
  }

  else
  {
    [v55 setHidden_];
    v8 = *MEMORY[0x1E69DB648];
    v11 = *MEMORY[0x1E69DB650];
    v17 = &unk_1D78BC000;
  }

  v56 = *&v4[OBJC_IVAR____TtC16NewsSubscription27HideMyEmailSignupChoiceView_choiceLabel];
  sub_1D778AF9C(0);
  v18 = swift_initStackObject();
  *(v18 + 16) = v17[181];
  *(v18 + 32) = v8;
  v19 = sub_1D773F004(0, &qword_1EE08FC10, 0x1E69DB878);
  v52 = v8;
  *(v18 + 40) = sub_1D78B61B4();
  *(v18 + 64) = v19;
  *(v18 + 72) = v11;
  v20 = objc_opt_self();
  v51 = v11;
  v21 = [v20 labelColor];
  v50 = sub_1D773F004(0, &qword_1EE08FC00, 0x1E69DC888);
  *(v18 + 104) = v50;
  *(v18 + 80) = v21;
  sub_1D77FED68(v18);
  swift_setDeallocating();
  sub_1D778AFF4(0);
  swift_arrayDestroy();
  v22 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v23 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v24 = sub_1D78B5BB4();

  v25 = [v22 initWithString:v23 attributes:v24];

  [v56 setAttributedText_];
  v49 = *&a1[OBJC_IVAR____TtC16NewsSubscription27HideMyEmailSignupChoiceView_addressPreviewLabel];
  v26 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v26 setLineBreakMode_];
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_1D78BF690;
  *(v27 + 32) = v52;
  *(v27 + 40) = sub_1D78B61B4();
  *(v27 + 64) = v19;
  *(v27 + 72) = v51;
  v53 = v20;
  *(v27 + 80) = [v20 secondaryLabelColor];
  v28 = *MEMORY[0x1E69DB688];
  *(v27 + 104) = v50;
  *(v27 + 112) = v28;
  *(v27 + 144) = sub_1D773F004(0, &unk_1EE08FCD8, 0x1E69DB7C8);
  *(v27 + 120) = v26;
  v29 = v28;
  v30 = v26;
  sub_1D77FED68(v27);
  swift_setDeallocating();
  swift_arrayDestroy();
  v31 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v32 = sub_1D78B5C44();
  v33 = sub_1D78B5BB4();

  v34 = [v31 initWithString:v32 attributes:v33];

  [v49 setAttributedText_];
  __swift_project_boxed_opaque_existential_1((v54 + 16), *(v54 + 40));
  v35 = *(a3 + 48);
  v36 = sub_1D77B9F78(*(a3 + 48));
  if (v36)
  {
    v37 = v36;
    v38 = a1;
  }

  else
  {
    v38 = a1;
    v37 = [a1 tintColor];
    if (!v37)
    {
      goto LABEL_18;
    }
  }

  v39 = *&v38[OBJC_IVAR____TtC16NewsSubscription27HideMyEmailSignupChoiceView_checkbox];
  if (!v35)
  {
LABEL_10:
    v42 = sub_1D78B5C44();
    v41 = [objc_opt_self() systemImageNamed_];

    if (v41)
    {
      goto LABEL_11;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v40 = sub_1D78B5C44();
  v41 = [objc_opt_self() systemImageNamed_];

  if (!v41)
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  v43 = [v41 imageWithTintColor:v37 renderingMode:{1, v47}];

  [v39 setImage_];
  [v55 setFrame_];
  [v56 setFrame_];
  [v49 setFrame_];
  [v39 setFrame_];
  if (v48)
  {
    v44 = 1;
  }

  else
  {
    v44 = 2;
  }

  [v49 setNumberOfLines_];
  v45 = [*(*__swift_project_boxed_opaque_existential_1((v54 + 16) *(v54 + 40)) + 64)];
  v46 = sub_1D77BAD38(v45);

  if (!v46)
  {
    v46 = [v53 systemBackgroundColor];
  }

  [v38 setBackgroundColor_];

  [v39 setContentMode_];
  [v39 setClipsToBounds_];
}

id sub_1D7804480()
{
  v0 = objc_allocWithZone(BridgedAccountPageViewControllerFactory);

  return [v0 init];
}

uint64_t sub_1D78044B8(void **a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D773D21C(0, &unk_1EC9CA890, &protocolRef_SKAccountPageViewControllerDelegate);
  [v2 setDelegate_];

  return swift_unknownObjectRelease();
}

void *sub_1D7804568(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D78B39E4();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, qword_1EE095E80, &protocol descriptor for OfferManagerType, 0);
    result = sub_1D78B39F4();
    if (v4)
    {
      type metadata accessor for ArticlePurchaseOffersProvider();
      result = swift_allocObject();
      result[2] = v3;
      result[3] = v4;
      result[4] = v5;
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

uint64_t sub_1D78046CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC16NewsSubscription23OfferIdentifierProvider_offerManager + 8);
  ObjectType = swift_getObjectType();
  LOBYTE(v8[0]) = 4;
  (*(v1 + 40))(v6, v8, ObjectType, v1);
  v10 = v6[8];
  v11 = v6[9];
  v8[4] = v6[4];
  v9[0] = v6[5];
  v12 = v7;
  v9[1] = v6[6];
  v9[2] = v6[7];
  v8[0] = v6[0];
  v8[1] = v6[1];
  v8[2] = v6[2];
  v8[3] = v6[3];
  if (sub_1D775F3CC(v8) == 1)
  {
    return 0;
  }

  sub_1D77D7948(v9, &v5);
  sub_1D78050C8(v6, &qword_1EE090600, &type metadata for Offer);
  if (!*(&v9[0] + 1))
  {
    return 0;
  }

  v3 = v10;

  sub_1D78050C8(v9, qword_1EE0930A0, &type metadata for ConfigurableOfferConfig);
  return v3;
}

uint64_t sub_1D78047F0(uint64_t a1)
{
  sub_1D7805008(0);
  swift_allocObject();
  swift_unknownObjectRetain();
  sub_1D78B3F74();
  v2 = OBJC_IVAR____TtC16NewsSubscription23OfferIdentifierProvider_observers;
  v3 = swift_beginAccess();
  MEMORY[0x1DA703120](v3);
  if (*((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D78B5F04();
  }

  sub_1D78B5F24();
  return swift_endAccess();
}

double sub_1D78048E4(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC16NewsSubscription23OfferIdentifierProvider_observers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v13 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
LABEL_20:
    v5 = sub_1D78B6534();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v11 = v3;
    v12 = v1;
    v3 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA703700](v3, v4);
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v1 = v12;
          v9 = v13;
          v3 = v11;
          goto LABEL_18;
        }
      }

      else
      {
        if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        v6 = *(v4 + 8 * v3 + 32);

        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_15;
        }
      }

      v1 = v6;
      v8 = sub_1D78B3F54();
      if (!v8 || (v1 = v8, swift_unknownObjectRelease(), v1 == a1))
      {
      }

      else
      {
        sub_1D78B64B4();
        sub_1D78B64E4();
        sub_1D78B64F4();
        v1 = &v13;
        sub_1D78B64C4();
      }

      ++v3;
      if (v7 == v5)
      {
        goto LABEL_16;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_18:

  *(v1 + v3) = v9;

  return result;
}

void sub_1D7804A90(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

double sub_1D7804BA8(void *a1, void *a2)
{
  v3 = a1[11];
  v4 = a1[17];
  v5 = a2[11];
  v6 = a2[17];
  v17 = a1[16];
  v18 = a2[16];
  v7 = OBJC_IVAR____TtC16NewsSubscription23OfferIdentifierProvider_observers;
  swift_beginAccess();
  sub_1D7804FB0(0);
  sub_1D7805070();
  sub_1D78B5EF4();
  swift_endAccess();
  if (!v3)
  {
    if (!v5)
    {
      return result;
    }

    v9 = v6;

LABEL_11:
    if (!v9)
    {
      return result;
    }

    v4 = 0;
    v20 = 1;
    goto LABEL_16;
  }

  if (!v5)
  {
    if (!v4)
    {
      return result;
    }

    v20 = 0;
    v9 = 0;
    goto LABEL_16;
  }

  v9 = v6;

  if (!v4)
  {
    goto LABEL_11;
  }

  if (!v6 || (v17 != v18 || v4 != v6) && (sub_1D78B6724() & 1) == 0)
  {
    v20 = 0;
LABEL_16:
    v10 = *(v2 + v7);
    if (v10 >> 62)
    {
      goto LABEL_38;
    }

    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:

    if (!v11)
    {
LABEL_34:

      goto LABEL_35;
    }

    v16 = v4;
    v4 = 0;
    v19 = v9;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA703700](v4, v10);
        v12 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }
      }

      else
      {
        if (v4 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_38:
          v11 = sub_1D78B6534();
          goto LABEL_18;
        }

        v12 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_33;
        }
      }

      v13 = sub_1D78B3F54();
      if (v13)
      {
        break;
      }

LABEL_21:

      ++v4;
      if (v12 == v11)
      {
        goto LABEL_34;
      }
    }

    v14 = v13;
    if (v20)
    {
      v15 = 0;
      if (!v9)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v15 = sub_1D78B5C44();
      if (!v9)
      {
LABEL_20:
        [v14 offerIdentifierDidChangeFromIdentifier:v15 to:{v9, v16}];

        swift_unknownObjectRelease();
        v9 = v19;
        goto LABEL_21;
      }
    }

    v9 = sub_1D78B5C44();
    goto LABEL_20;
  }

LABEL_35:

  return result;
}

void *sub_1D7804E20(void *result)
{
  if ((*(v1 + OBJC_IVAR____TtC16NewsSubscription23OfferIdentifierProvider_didProcessInitialOffer) & 1) == 0)
  {
    v2 = result;
    *(v1 + OBJC_IVAR____TtC16NewsSubscription23OfferIdentifierProvider_didProcessInitialOffer) = 1;
    sub_1D778C858(MEMORY[0x1E69E7CC8]);
    v3 = objc_allocWithZone(MEMORY[0x1E698C988]);
    sub_1D773D21C(0, &qword_1EE08FBA0, &protocolRef_NSObject);
    v4 = sub_1D78B5BB4();

    v5 = [v3 initWithDictionary_];

    if (qword_1EE093E80 != -1)
    {
      swift_once();
    }

    v6 = 0u;
    v7 = 0u;
    *&v8 = MEMORY[0x1E69E7CC0];
    BYTE8(v8) = 0;
    LOBYTE(v9) = byte_1EE09C310;
    *(&v9 + 1) = qword_1EE09C318;
    *&v10 = unk_1EE09C320;
    *(&v10 + 1) = v5;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0;

    sub_1D7804BA8(&v6, v2);
    v17[8] = v14;
    v17[9] = v15;
    v18 = v16;
    v17[4] = v10;
    v17[5] = v11;
    v17[6] = v12;
    v17[7] = v13;
    v17[0] = v6;
    v17[1] = v7;
    v17[2] = v8;
    v17[3] = v9;
    return sub_1D778D0B0(v17);
  }

  return result;
}

void sub_1D7804FB0(uint64_t a1)
{
  if (!qword_1EE0900A0)
  {
    sub_1D7805008(255);
    v1 = sub_1D78B5F34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0900A0);
    }
  }
}

void sub_1D7805008(uint64_t a1)
{
  if (!qword_1EE095308)
  {
    sub_1D773D21C(255, &unk_1EE08FC90, &protocolRef_SXOfferIdentifierObserving);
    v1 = sub_1D78B3F64();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE095308);
    }
  }
}

unint64_t sub_1D7805070()
{
  result = qword_1EE095318;
  if (!qword_1EE095318)
  {
    sub_1D7805008(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE095318);
  }

  return result;
}

uint64_t sub_1D78050C8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D7756CA8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t AppLaunchOnboardingManager.__allocating_init(router:onboardingConfiguration:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC16NewsSubscription26AppLaunchOnboardingManager_completionEventManager;
  sub_1D774753C(0);
  swift_allocObject();
  *(v4 + v5) = sub_1D78B3974();
  sub_1D77476F4(a1, v4 + 16);
  v6 = OBJC_IVAR____TtC16NewsSubscription26AppLaunchOnboardingManager_onboardingConfiguration;
  v7 = sub_1D78B4AB4();
  (*(*(v7 - 8) + 32))(v4 + v6, a2, v7);
  return v4;
}

double sub_1D78051E8(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D78B3954();
  }

  return result;
}

uint64_t AppLaunchOnboardingManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC16NewsSubscription26AppLaunchOnboardingManager_onboardingConfiguration;
  v2 = sub_1D78B4AB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AppLaunchOnboardingManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC16NewsSubscription26AppLaunchOnboardingManager_onboardingConfiguration;
  v2 = sub_1D78B4AB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t AppLaunchOnboardingManager.requiresPresentation()()
{
  sub_1D77500F8();
  sub_1D77505D0();
  swift_allocObject();
  return sub_1D78B4104();
}

void (*AppLaunchOnboardingManager.presentationAction()())(void (*a1)(void *, uint64_t), uint64_t a2)
{
  swift_allocObject();
  swift_weakInit();
  return sub_1D7805808;
}

void sub_1D780543C(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = sub_1D78B3E24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_1D7805950(0, &qword_1EE08E4D8, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D78BCB50;
    sub_1D78B3DF4();
    sub_1D78B3E14();
    v23 = v12;
    sub_1D7747D68(&qword_1EE08F240, MEMORY[0x1E69D6810], MEMORY[0x1E69D6818]);
    sub_1D7805950(0, &unk_1EE08E608, MEMORY[0x1E69E62F8]);
    sub_1D778F8B0();
    sub_1D78B6324();
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;

    sub_1D78B3964();

    (*(v6 + 8))(v9, v5);
    sub_1D774819C();
    v14 = sub_1D78B6284();
    v15 = sub_1D78B60A4();
    sub_1D78B42C4("Routing to onboarding flow", 26, 2, &dword_1D7739000, v14, v15, MEMORY[0x1E69E7CC0]);

    v16 = v11[5];
    v17 = v11[6];
    __swift_project_boxed_opaque_existential_1(v11 + 2, v16);
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = *(v17 + 40);

    v19(sub_1D78059B0, v18, v16, v17);
  }

  else
  {
    v20 = sub_1D78B4B64();
    sub_1D7747D68(&qword_1EC9C9CD0, MEMORY[0x1E69D8050], MEMORY[0x1E69D8058]);
    v21 = swift_allocError();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69D8048], v20);
    a1(v21, 1);
  }
}

void (*sub_1D7805810())(void (*)(void *, uint64_t), uint64_t)
{
  swift_allocObject();
  swift_weakInit();
  return sub_1D78059B8;
}

void sub_1D7805950(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D78B3E24();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16NewsSubscription31PostPurchaseSupplementaryActionO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D78059E0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

void *sub_1D7805A3C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t PaywallType.description.getter(unint64_t a1)
{
  if (a1 < 3)
  {
    return *&aNone_4[8 * a1];
  }

  result = sub_1D78B6764();
  __break(1u);
  return result;
}

unint64_t PaywallType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D7805AE4()
{
  result = qword_1EC9CA8B8;
  if (!qword_1EC9CA8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA8B8);
  }

  return result;
}

unint64_t *sub_1D7805B38@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1D7805B54(uint64_t a1)
{
  if (*v1 < 3uLL)
  {
    return *&aNone_4[8 * *v1];
  }

  result = sub_1D78B6764();
  __break(1u);
  return result;
}

char *sub_1D7805BCC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_scrollView;
  *&v5[v11] = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
  v12 = OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_playerView;
  *&v5[v12] = [objc_allocWithZone(type metadata accessor for BundlePaywallPlayerView()) initWithFrame_];
  v13 = OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_gradientView;
  *&v5[v13] = [objc_allocWithZone(sub_1D78B4564()) initWithFrame_];
  v14 = OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_contentView;
  *&v5[v14] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v15 = OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_contentBackgroundView;
  *&v5[v15] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v16 = OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_badgeImageView;
  *&v5[v16] = [objc_allocWithZone(sub_1D78B5204()) initWithFrame_];
  v17 = OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_titleTextView;
  *&v5[v17] = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame_];
  v18 = OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_descriptionTextView;
  type metadata accessor for UnselectableLinkEnabledTextView();
  *&v5[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v19 = OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_subscribeButton;
  v20 = objc_allocWithZone(sub_1D78B4864());
  *&v5[v19] = sub_1D78B4854();
  v21 = OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_offersButton;
  v22 = sub_1D78B4524();
  *&v5[v21] = [objc_allocWithZone(v22) initWithFrame_];
  v23 = OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_webAuthButton;
  *&v5[v23] = [objc_allocWithZone(v22) initWithFrame_];
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a1, a2, a3, a4);
  v25 = *&v24[OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_contentBackgroundView];
  v26 = v24;
  [v26 addSubview_];
  [v26 addSubview_];
  v27 = OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_scrollView;
  [v26 addSubview_];
  v28 = *&v26[v27];
  v29 = OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_contentView;
  [v28 addSubview_];
  [*&v26[v29] addSubview_];
  [*&v26[v29] addSubview_];
  [*&v26[v29] addSubview_];
  [*&v26[v29] addSubview_];
  [*&v26[v29] addSubview_];
  [*&v26[v29] addSubview_];
  [*&v26[v29] addSubview_];

  return v26;
}

void sub_1D78060E8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_scrollView;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_playerView;
  *(v1 + v3) = [objc_allocWithZone(type metadata accessor for BundlePaywallPlayerView()) initWithFrame_];
  v4 = OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_gradientView;
  *(v1 + v4) = [objc_allocWithZone(sub_1D78B4564()) initWithFrame_];
  v5 = OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_contentView;
  *(v1 + v5) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v6 = OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_contentBackgroundView;
  *(v1 + v6) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v7 = OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_badgeImageView;
  *(v1 + v7) = [objc_allocWithZone(sub_1D78B5204()) initWithFrame_];
  v8 = OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_titleTextView;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame_];
  v9 = OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_descriptionTextView;
  type metadata accessor for UnselectableLinkEnabledTextView();
  *(v1 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v10 = OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_subscribeButton;
  v11 = objc_allocWithZone(sub_1D78B4864());
  *(v1 + v10) = sub_1D78B4854();
  v12 = OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_offersButton;
  v13 = sub_1D78B4524();
  *(v1 + v12) = [objc_allocWithZone(v13) initWithFrame_];
  v14 = OBJC_IVAR____TtC16NewsSubscription21BundleHardPaywallView_webAuthButton;
  *(v1 + v14) = [objc_allocWithZone(v13) initWithFrame_];
  sub_1D78B6524();
  __break(1u);
}

void *sub_1D7806378@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  sub_1D774584C(a1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B37D4();
  result = sub_1D78B39E4();
  if (result)
  {
    v7 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, &qword_1EE096360, &protocol descriptor for SubscriptionFeatureAvailabilityType, 1);
    result = sub_1D78B39F4();
    if (v11)
    {
      v8 = type metadata accessor for PaywallModule();
      v9 = swift_allocObject();
      sub_1D7741E34(v12, v9 + 24);
      *(v9 + 64) = v7;
      *(v9 + 16) = a2;
      result = sub_1D7741E34(&v10, v9 + 72);
      a3[3] = v8;
      a3[4] = &protocol witness table for PaywallModule;
      *a3 = v9;
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

void sub_1D78064AC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = type metadata accessor for FlexiblePaywallViewProvider(0);
  v3 = sub_1D78B39E4();
  if (!v3)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = v2;
  v11 = &off_1F526F878;
  *&v9 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B39F4();
  if (v7 < 4u)
  {
    sub_1D773CA14(0, &qword_1EE092CE8, &protocol descriptor for PaywallViewProviderType, 1);
    sub_1D78B39B4();

    if (v8[3])
    {
      type metadata accessor for FlexiblePaywallFailsafeViewProvider();
      v4 = swift_allocObject();
      v5 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
      *(v4 + 16) = v5;
      sub_1D774584C(&v9, v4 + 24);
      sub_1D774584C(v8, v4 + 64);
      v6 = [objc_opt_self() clearColor];
      [v5 setBackgroundColor_];

      __swift_destroy_boxed_opaque_existential_1(v8);
      sub_1D7741E34(&v9, v4 + 104);
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

double sub_1D78066FC()
{
  v0 = sub_1D78B3FE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PaywallViewController();
  sub_1D78B3E44();

  sub_1D773CA14(0, qword_1EE092CF0, &protocol descriptor for PaywallEventHandlerType, 0);
  sub_1D78B3E54();
  type metadata accessor for PaywallEventHandler();
  sub_1D78B3824();

  sub_1D773CA14(0, qword_1EE0939F8, &protocol descriptor for PaywallInteractorType, 0);
  sub_1D78B3E54();
  type metadata accessor for PaywallInteractor();
  sub_1D78B3824();

  sub_1D773CA14(0, &unk_1EE093640, &protocol descriptor for PaywallDataManagerType, 0);
  sub_1D78B3E54();

  sub_1D773CA14(0, &qword_1EE090488, MEMORY[0x1E69D77B8], 1);
  sub_1D78B3E54();
  v5 = *MEMORY[0x1E69D6AD0];
  v8 = *(v1 + 104);
  v8(v4, v5, v0);
  sub_1D78B3844();

  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_1D773CA14(0, &qword_1EE090400, MEMORY[0x1E69D7B78], 1);
  sub_1D78B3E54();

  sub_1D773CA14(0, &unk_1EE091AC8, &protocol descriptor for BundlePaywallDataProviderType, 0);
  sub_1D78B3E54();

  sub_1D773CA14(0, &qword_1EE0921B0, &protocol descriptor for BundlePaywallBaseStylerType, 1);
  sub_1D78B3E54();

  sub_1D773CA14(0, qword_1EE091388, &protocol descriptor for AlacartePaywallDataProviderType, 0);
  sub_1D78B3E54();

  sub_1D773CA14(0, &qword_1EE090C50, &protocol descriptor for BundlePaywallComponentSizeProviderType, 1);
  sub_1D78B3E54();

  sub_1D773CA14(0, &qword_1EE092CE8, &protocol descriptor for PaywallViewProviderType, 1);
  sub_1D78B3E54();

  sub_1D773CA14(0, &unk_1EE0921A0, &protocol descriptor for BundleSoftPaywallStylerType, 1);
  sub_1D78B3E54();

  sub_1D773CA14(0, qword_1EE091918, &protocol descriptor for BundleSoftPaywallRendererType, 1);
  sub_1D78B3E54();

  sub_1D773CA14(0, &qword_1EE0906E0, &protocol descriptor for BundleSoftPaywallLayoutAttributesFactoryType, 1);
  sub_1D78B3E54();

  sub_1D78B3E54();

  sub_1D773CA14(0, &qword_1EE0921B8, &protocol descriptor for BundleHardPaywallStylerType, 1);
  sub_1D78B3E54();

  sub_1D773CA14(0, qword_1EE091B40, &protocol descriptor for BundleHardPaywallRendererType, 1);
  sub_1D78B3E54();

  sub_1D773CA14(0, qword_1EE0906E8, &protocol descriptor for BundleHardPaywallLayoutAttributesFactoryType, 1);
  sub_1D78B3E54();

  sub_1D78B3E54();

  sub_1D78B3E54();

  type metadata accessor for AlacartePaywallViewProvider(0);
  sub_1D78B3E44();

  sub_1D773CA14(0, qword_1EE092970, &protocol descriptor for AlacartePaywallStylerType, 1);
  sub_1D78B3E54();

  sub_1D773CA14(0, &qword_1EE092208, &protocol descriptor for AlacartePaywallRendererType, 1);
  sub_1D78B3E54();

  sub_1D773CA14(0, qword_1EE090850, &protocol descriptor for AlacartePaywallLayoutAttributesFactoryType, 1);
  sub_1D78B3E54();

  type metadata accessor for AlacartePaywallSubscribeButtonTextProvider();
  sub_1D78B3E44();

  sub_1D773CA14(0, &unk_1EE0910D8, &protocol descriptor for PaywallFormatContentServiceType, 0);
  sub_1D78B3E54();
  v8(v4, v5, v0);
  sub_1D78B3844();

  v6(v4, v0);
  swift_beginAccess();

  sub_1D78B3E54();

  type metadata accessor for FlexiblePaywallViewProvider(0);
  sub_1D78B3E44();

  type metadata accessor for FlexiblePaywallCollectionViewDataSource();
  sub_1D78B3E44();
  sub_1D78B3834();

  sub_1D773F004(0, &qword_1EE08FE40, 0x1E69DC7F0);

  sub_1D78B3E44();

  sub_1D773F004(0, &qword_1EE08FCF8, 0x1E69DC850);

  sub_1D78B3E44();

  sub_1D773CA14(0, &qword_1EE090DA0, &protocol descriptor for FlexiblePaywallLayoutProviderType, 1);
  sub_1D78B3E54();

  return result;
}

char *sub_1D7807208(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE092CE8, &protocol descriptor for PaywallViewProviderType, 1);
  result = sub_1D78B39F4();
  if (!v83[3])
  {
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE092CF0, &protocol descriptor for PaywallEventHandlerType, 0);
  result = sub_1D78B39F4();
  v3 = v81;
  if (!v81)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = v82;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B39F4();
  v77 = v61;
  v78 = v62;
  v79 = v63;
  v80 = v64;
  v73 = v57;
  v74 = v58;
  v75 = v59;
  v76 = v60;
  v69 = v53;
  v70 = v54;
  v71 = v55;
  v72 = v56;
  v65 = v49;
  v66 = v50;
  v67 = v51;
  v68 = v52;
  result = sub_1D780D59C(&v65);
  if (result == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090F10, &protocol descriptor for PaywallLayoutOptionsProviderType, 1);
  result = sub_1D78B39F4();
  if (!v48[3])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095800, &protocol descriptor for PurchasingSpinnerViewControllerFactoryType, 1);
  result = sub_1D78B39F4();
  if (!v47[3])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE095CE0, &protocol descriptor for PurchasePresenterType, 1);
  result = sub_1D78B39F4();
  if (!v46[3])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE096450, MEMORY[0x1E69D68B0], 1);
  result = sub_1D78B39F4();
  if (!v45[3])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE095B50, &protocol descriptor for WebOptinFlowManagerType, 1);
  result = sub_1D78B39F4();
  if (!v44[3])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &unk_1EE08FCE8, &protocolRef_FCPaidAccessCheckerType);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE090518, MEMORY[0x1E69B6A08], 1);
  sub_1D78B39F4();
  v6 = type metadata accessor for PaywallViewController();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_isBeingUsedAsPlugin] = 0;
  *&v7[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_pluggableDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_layoutSize;
  sub_1D780D69C(0, &qword_1EE0953B0, type metadata accessor for CGSize, MEMORY[0x1E69D6538]);
  v40 = 0uLL;
  swift_allocObject();
  *&v7[v8] = sub_1D78B3AE4();
  *&v7[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController____lazy_storage___verificationSpinner] = 0;
  *&v7[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController____lazy_storage___purchasingSpinner] = 0;
  *&v7[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_lastPaywallLayout] = 0;
  sub_1D774584C(v83, &v7[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_viewProvider]);
  v9 = &v7[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler];
  *v9 = v3;
  v9[1] = v4;
  v10 = &v7[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel];
  v12 = v79;
  v11 = v80;
  v13 = v78;
  v10[12] = v77;
  v10[13] = v13;
  v10[14] = v12;
  v10[15] = v11;
  v15 = v75;
  v14 = v76;
  v16 = v74;
  v10[8] = v73;
  v10[9] = v16;
  v10[10] = v15;
  v10[11] = v14;
  v18 = v71;
  v17 = v72;
  v19 = v70;
  v10[4] = v69;
  v10[5] = v19;
  v10[6] = v18;
  v10[7] = v17;
  v21 = v67;
  v20 = v68;
  v22 = v66;
  *v10 = v65;
  v10[1] = v22;
  v10[2] = v21;
  v10[3] = v20;
  sub_1D774584C(v48, &v7[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_layoutOptionsProvider]);
  sub_1D774584C(v47, &v7[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_purchasingSpinnerViewControllerFactory]);
  sub_1D774584C(v46, &v7[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_purchasePresenter]);
  sub_1D774584C(v45, &v7[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_sceneStateManager]);
  sub_1D774584C(v44, &v7[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_webOptinFlowManager]);
  *&v7[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paidAccessChecker] = v5;
  sub_1D780D82C(v43, &v38);
  if (v39)
  {
    sub_1D7741E34(&v38, &v40);
  }

  else
  {
    v23 = type metadata accessor for DefaultPersonalizedPaywallDataService();
    v24 = swift_allocObject();
    v41 = v23;
    v42 = sub_1D780D8A8(&qword_1EE08E958, type metadata accessor for DefaultPersonalizedPaywallDataService, &unk_1D78C4618);
    *&v40 = v24;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1D7741E34(&v40, &v7[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_personalizedPaywallDataService]);
  v37.receiver = v7;
  v37.super_class = v6;
  v25 = objc_msgSendSuper2(&v37, sel_initWithNibName_bundle_, 0, 0);
  v26 = v25 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_viewProvider;
  swift_beginAccess();
  v27 = *(v26 + 24);
  v28 = *(v26 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  v29 = *(v28 + 24);
  v30 = v25;
  v29(v25, &off_1F526AB80, v27, v28);
  swift_endAccess();
  v31 = *(v30 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
  ObjectType = swift_getObjectType();
  v33 = *(v31 + 16);
  v34 = v30;
  swift_unknownObjectRetain();
  v33(v25, &protocol witness table for PaywallViewController, ObjectType, v31);
  swift_unknownObjectRelease();
  v35 = sub_1D78B5C44();
  v36 = [objc_opt_self() defaultCenter];
  [v36 addObserver:v34 selector:sel_handlePurchaseAddedNotificationWithNotification_ name:v35 object:0];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1D780D8F0(v43);
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v45);
  __swift_destroy_boxed_opaque_existential_1(v46);
  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v83);
  return v34;
}

void *sub_1D78079A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE0939F8, &protocol descriptor for PaywallInteractorType, 0);
  result = sub_1D78B39F4();
  if (!v8)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE094490, &protocol descriptor for PaywallRouterType, 1);
  result = sub_1D78B39F4();
  if (!v7[3])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090478, MEMORY[0x1E69D7A30], 1);
  result = sub_1D78B39F4();
  if (v6[3])
  {
    type metadata accessor for PaywallEventHandler();
    swift_allocObject();
    v5 = sub_1D77591C4(v8, v9, v7, v6);
    result = swift_unknownObjectRelease();
    *a2 = v5;
    a2[1] = &protocol witness table for PaywallEventHandler;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7807B18(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D773CA14(0, &qword_1EE094010, &protocol descriptor for PaywallTrackerType, 1);
  sub_1D78B39F4();
  swift_beginAccess();
  sub_1D77594F0(v4, v2 + 32);
  return swift_endAccess();
}

void *sub_1D7807BB4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095910, &protocol descriptor for WebAccessAuthenticatorFactoryType, 1);
  result = sub_1D78B39F4();
  if (!v47[3])
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE0957D0, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095820, &protocol descriptor for WebAccessConversionEventReporterType, 1);
  result = sub_1D78B39F4();
  if (!v46)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE093640, &protocol descriptor for PaywallDataManagerType, 0);
  result = sub_1D78B39F4();
  v6 = v43;
  if (!v43)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v29 = v44;
  v30 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095810, &protocol descriptor for PaidBundleViaOfferFeatureAvailabilityType, 1);
  result = sub_1D78B39F4();
  if (!v42[3])
  {
LABEL_14:
    __break(1u);
    return result;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE090518, MEMORY[0x1E69B6A08], 1);
  sub_1D78B39F4();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
  v28 = &v28;
  MEMORY[0x1EEE9AC00](v7, v7);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v12 = type metadata accessor for WebAccessConversionEventReporter();
  v39 = v12;
  v40 = &off_1F526CAD0;
  v38[0] = v11;
  v13 = type metadata accessor for PaywallInteractor();
  v14 = objc_allocWithZone(v13);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x1EEE9AC00](v15, v15);
  v17 = (&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v37[3] = v12;
  v37[4] = &off_1F526CAD0;
  v37[0] = v19;
  *&v14[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v20 = &v14[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_tracker];
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v21 = &v14[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_webAccessAuthenticator];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  sub_1D774584C(v47, &v14[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_webAccessAuthenticatorFactory]);
  sub_1D774584C(v37, &v14[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_webAccessConversionEventReporter]);
  v22 = &v14[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_dataManager];
  v23 = v29;
  *v22 = v6;
  *(v22 + 1) = v23;
  sub_1D774584C(v42, &v14[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_paidBundleViaOfferFeatureAvailability]);
  sub_1D780D82C(v41, &v32);
  if (v33)
  {
    sub_1D7741E34(&v32, &v34);
  }

  else
  {
    v24 = type metadata accessor for DefaultPersonalizedPaywallDataService();
    v25 = swift_allocObject();
    v35 = v24;
    v36 = sub_1D780D8A8(&qword_1EE08E958, type metadata accessor for DefaultPersonalizedPaywallDataService, &unk_1D78C4618);
    *&v34 = v25;
  }

  v26 = v30;
  swift_unknownObjectRetain();
  sub_1D7741E34(&v34, &v14[OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_personalizedPaywallDataService]);
  v31.receiver = v14;
  v31.super_class = v13;
  v27 = objc_msgSendSuper2(&v31, sel_init, v28);
  [v5 addObserver_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1D780D8F0(v41);
  __swift_destroy_boxed_opaque_existential_1(v42);
  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(v38);
  result = __swift_destroy_boxed_opaque_existential_1(v45);
  *v26 = v27;
  v26[1] = &protocol witness table for PaywallInteractor;
  return result;
}

uint64_t sub_1D7808110(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D773CA14(0, &qword_1EE094010, &protocol descriptor for PaywallTrackerType, 1);
  sub_1D78B39F4();
  v3 = OBJC_IVAR____TtC16NewsSubscription17PaywallInteractor_tracker;
  swift_beginAccess();
  sub_1D77594F0(v5, v2 + v3);
  return swift_endAccess();
}

void *sub_1D78081B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE095850, &protocol descriptor for HideMyEmailSignupConfigProviderType, 1);
  result = sub_1D78B39F4();
  if (v18)
  {
    v5 = [objc_opt_self() sharedAccount];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, &unk_1EE095CD0, &protocol descriptor for HideMyEmailServiceType, 1);
    result = sub_1D78B39F4();
    if (v16)
    {
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
      MEMORY[0x1EEE9AC00](v6, v6);
      v8 = (v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
      MEMORY[0x1EEE9AC00](v10, v10);
      v12 = (v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v13 + 16))(v12);
      v14 = sub_1D780C814(*v8, v5, *v12);
      __swift_destroy_boxed_opaque_existential_1(v15);
      result = __swift_destroy_boxed_opaque_existential_1(v17);
      *a2 = v14;
      a2[1] = &protocol witness table for PaywallDataManager;
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

void *sub_1D780842C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE0957F0, &protocolRef_TSSharedImageCacheType);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090400, MEMORY[0x1E69D7B78], 1);
  result = sub_1D78B39B4();
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE0957F8, MEMORY[0x1E69D7C10], 1);
  result = sub_1D78B39F4();
  if (v7)
  {
    v5 = sub_1D78B44E4();
    swift_allocObject();
    result = sub_1D78B44D4();
    v6 = MEMORY[0x1E69D7580];
    a2[3] = v5;
    a2[4] = v6;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D78085A4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PaywallImageProcessor();
  v3 = swift_allocObject();
  a1[3] = v2;
  result = sub_1D780D8A8(qword_1EE093A98, type metadata accessor for PaywallImageProcessor, &protocol conformance descriptor for PaywallImageProcessor);
  a1[4] = result;
  *a1 = v3;
  return result;
}

void *sub_1D7808628@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D780D69C(0, qword_1EE0936E8, type metadata accessor for BundlePaywallViewModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FEB0, 0x1E69B51C0);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090488, MEMORY[0x1E69D77B8], 1);
  result = sub_1D78B39B4();
  if (!v14)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = type metadata accessor for BundlePaywallViewModel(0);
  sub_1D78B39F4();
  result = (*(*(v10 - 8) + 48))(v7, 1, v10);
  if (result != 1)
  {
    type metadata accessor for BundlePaywallDataProvider(0);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    sub_1D7741E34(&v13, v11 + 24);
    result = sub_1D780D7C8(v7, v11 + OBJC_IVAR____TtC16NewsSubscription25BundlePaywallDataProvider_viewModel);
    *a2 = v11;
    a2[1] = &off_1F52664C0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D780886C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095D00, &protocol descriptor for PurchaseManagerType, 0);
  result = sub_1D78B39F4();
  if (v4)
  {
    type metadata accessor for AlacartePaywallDataProvider();
    result = swift_allocObject();
    result[2] = v4;
    result[3] = v5;
    *a2 = result;
    a2[1] = &off_1F526C788;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D7808910@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D780D69C(0, qword_1EE0936E8, type metadata accessor for BundlePaywallViewModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = type metadata accessor for BundlePaywallViewModel(0);
  sub_1D78B39F4();
  result = (*(*(v8 - 8) + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, &qword_1EE0921B0, &protocol descriptor for BundlePaywallBaseStylerType, 1);
    result = sub_1D78B39F4();
    if (v14)
    {
      v10 = type metadata accessor for BundlePaywallComponentSizeProvider(0);
      v11 = swift_allocObject();
      *(v11 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_defaultBadgeImageSize) = xmmword_1D78C40B0;
      sub_1D780D7C8(v7, v11 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_viewModel);
      result = sub_1D7741E34(&v13, v11 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler);
      a2[3] = v10;
      a2[4] = &off_1F526FDE0;
      *a2 = v11;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D7808AF0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D780D69C(0, qword_1EE0936E8, type metadata accessor for BundlePaywallViewModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v27[-1] - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = type metadata accessor for BundlePaywallViewModel(0);
  sub_1D78B39F4();
  result = (*(*(v8 - 8) + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE091AC8, &protocol descriptor for BundlePaywallDataProviderType, 0);
  result = sub_1D78B39F4();
  v10 = v33;
  if (!v33)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v34;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE0921A0, &protocol descriptor for BundleSoftPaywallStylerType, 1);
  result = sub_1D78B39F4();
  if (!v32)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE091918, &protocol descriptor for BundleSoftPaywallRendererType, 1);
  result = sub_1D78B39F4();
  if (!v30)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v26 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE0906E0, &protocol descriptor for BundleSoftPaywallLayoutAttributesFactoryType, 1);
  result = sub_1D78B39F4();
  if (v28)
  {
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
    MEMORY[0x1EEE9AC00](v12, v12);
    v14 = (&v27[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
    MEMORY[0x1EEE9AC00](v16, v16);
    v18 = (&v27[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
    MEMORY[0x1EEE9AC00](v20, v20);
    v22 = (&v27[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v24 = sub_1D780CA44(v7, v10, v11, *v14, *v18, *v22);
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(v31);
    result = type metadata accessor for BundleSoftPaywallViewProvider(0);
    v25 = v26;
    v26[3] = result;
    v25[4] = &off_1F52666E0;
    *v25 = v24;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_1D7808FBC@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE095CE8, &protocol descriptor for ColorPaletteProviding, 1);
  result = sub_1D78B39F4();
  if (v11)
  {
    v8 = a2(0);
    v9 = swift_allocObject();
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    result = sub_1D7741E34(&v10, v9 + 16);
    a4[3] = v8;
    a4[4] = a3;
    *a4 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D7809080@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE0921A0, &protocol descriptor for BundleSoftPaywallStylerType, 1);
  result = sub_1D78B39F4();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x1EEE9AC00](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for BundleSoftPaywallStyler();
    v17[3] = v9;
    v17[4] = &off_1F526DC68;
    v17[0] = v8;
    v10 = type metadata accessor for BundleSoftPaywallRenderer();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x1EEE9AC00](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_1F526DC68;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_1F526B128;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D78092AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE0921A0, &protocol descriptor for BundleSoftPaywallStylerType, 1);
  result = sub_1D78B39F4();
  if (v17)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, &qword_1EE090C50, &protocol descriptor for BundlePaywallComponentSizeProviderType, 1);
    result = sub_1D78B39F4();
    if (v15)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
      MEMORY[0x1EEE9AC00](v5, v5);
      v7 = (v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
      MEMORY[0x1EEE9AC00](v9, v9);
      v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = sub_1D780CF04(*v7, *v11);
      __swift_destroy_boxed_opaque_existential_1(v14);
      __swift_destroy_boxed_opaque_existential_1(v16);
      result = type metadata accessor for BundleSoftPaywallLayoutAttributesFactory();
      a2[3] = result;
      a2[4] = &off_1F526A728;
      *a2 = v13;
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

void *sub_1D78094FC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D780D69C(0, qword_1EE0936E8, type metadata accessor for BundlePaywallViewModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v57 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = type metadata accessor for BundlePaywallViewModel(0);
  sub_1D78B39F4();
  result = (*(*(v8 - 8) + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE091AC8, &protocol descriptor for BundlePaywallDataProviderType, 0);
  result = sub_1D78B39F4();
  v10 = v86;
  if (!v86)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v87;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE0921B8, &protocol descriptor for BundleHardPaywallStylerType, 1);
  result = sub_1D78B39F4();
  if (!v85)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE091B40, &protocol descriptor for BundleHardPaywallRendererType, 1);
  result = sub_1D78B39F4();
  if (!v83)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v63 = v11;
  v64 = v10;
  v65 = v7;
  v66 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE0906E8, &protocol descriptor for BundleHardPaywallLayoutAttributesFactoryType, 1);
  result = sub_1D78B39F4();
  if (v81)
  {
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
    v62 = &v57;
    MEMORY[0x1EEE9AC00](v12, v12);
    v14 = (&v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v82, v83);
    v61 = &v57;
    MEMORY[0x1EEE9AC00](v16, v16);
    v18 = (&v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
    v60 = &v57;
    MEMORY[0x1EEE9AC00](v20, v20);
    v22 = (&v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v24 = *v14;
    v25 = *v18;
    v26 = *v22;
    v27 = type metadata accessor for BundleHardPaywallStyler();
    v78 = v27;
    v79 = &off_1F526C760;
    v77[0] = v24;
    v28 = type metadata accessor for BundleHardPaywallRenderer();
    v75 = v28;
    v76 = &off_1F526EF48;
    v74[0] = v25;
    v29 = type metadata accessor for BundleHardPaywallLayoutAttributesFactory();
    v72 = v29;
    v73 = &off_1F526FFF8;
    v71[0] = v26;
    v30 = type metadata accessor for BundleHardPaywallViewProvider(0);
    v31 = objc_allocWithZone(v30);
    v32 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
    v59 = &v57;
    MEMORY[0x1EEE9AC00](v32, v32);
    v34 = (&v57 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v34);
    v36 = __swift_mutable_project_boxed_opaque_existential_1(v74, v75);
    v58 = &v57;
    MEMORY[0x1EEE9AC00](v36, v36);
    v38 = (&v57 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v39 + 16))(v38);
    v40 = __swift_mutable_project_boxed_opaque_existential_1(v71, v72);
    v57 = &v57;
    MEMORY[0x1EEE9AC00](v40, v40);
    v42 = (&v57 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v43 + 16))(v42);
    v44 = *v34;
    v45 = *v38;
    v46 = *v42;
    v70[3] = v27;
    v70[4] = &off_1F526C760;
    v70[0] = v44;
    v69[3] = v28;
    v69[4] = &off_1F526EF48;
    v69[0] = v45;
    v68[3] = v29;
    v68[4] = &off_1F526FFF8;
    v68[0] = v46;
    *&v31[OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v47 = MEMORY[0x1E69E7CC8];
    *&v31[OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_images] = MEMORY[0x1E69E7CC8];
    *&v31[OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_badgeImages] = v47;
    v48 = OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_videoFileURL;
    v49 = sub_1D78B3294();
    (*(*(v49 - 8) + 56))(&v31[v48], 1, 1, v49);
    v50 = v65;
    sub_1D780D700(v65, &v31[OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_viewModel], type metadata accessor for BundlePaywallViewModel);
    v51 = &v31[OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_dataProvider];
    v52 = v63;
    *v51 = v64;
    *(v51 + 1) = v52;
    sub_1D774584C(v70, &v31[OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_styler]);
    sub_1D774584C(v69, &v31[OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_renderer]);
    sub_1D774584C(v68, &v31[OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_layoutAttributesFactory]);
    v53 = objc_allocWithZone(type metadata accessor for BundleHardPaywallView());
    swift_unknownObjectRetain();
    v54 = [v53 initWithFrame_];
    *&v31[OBJC_IVAR____TtC16NewsSubscription29BundleHardPaywallViewProvider_bundleHardPaywallView] = v54;
    v67.receiver = v31;
    v67.super_class = v30;
    v55 = objc_msgSendSuper2(&v67, sel_init);
    swift_unknownObjectRelease();
    sub_1D780D768(v50, type metadata accessor for BundlePaywallViewModel);
    __swift_destroy_boxed_opaque_existential_1(v68);
    __swift_destroy_boxed_opaque_existential_1(v69);
    __swift_destroy_boxed_opaque_existential_1(v70);
    __swift_destroy_boxed_opaque_existential_1(v71);
    __swift_destroy_boxed_opaque_existential_1(v74);
    __swift_destroy_boxed_opaque_existential_1(v77);
    __swift_destroy_boxed_opaque_existential_1(v80);
    __swift_destroy_boxed_opaque_existential_1(v82);
    result = __swift_destroy_boxed_opaque_existential_1(v84);
    v56 = v66;
    v66[3] = v30;
    v56[4] = &off_1F5267AF8;
    *v56 = v55;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_1D7809E0C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE0921B8, &protocol descriptor for BundleHardPaywallStylerType, 1);
  result = sub_1D78B39F4();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x1EEE9AC00](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for BundleHardPaywallStyler();
    v17[3] = v9;
    v17[4] = &off_1F526C760;
    v17[0] = v8;
    v10 = type metadata accessor for BundleHardPaywallRenderer();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x1EEE9AC00](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_1F526C760;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_1F526EF48;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D780A038@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE0921B8, &protocol descriptor for BundleHardPaywallStylerType, 1);
  result = sub_1D78B39F4();
  if (v17)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, &qword_1EE090C50, &protocol descriptor for BundlePaywallComponentSizeProviderType, 1);
    result = sub_1D78B39F4();
    if (v15)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
      MEMORY[0x1EEE9AC00](v5, v5);
      v7 = (v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
      MEMORY[0x1EEE9AC00](v9, v9);
      v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = sub_1D780D1D4(*v7, *v11);
      __swift_destroy_boxed_opaque_existential_1(v14);
      __swift_destroy_boxed_opaque_existential_1(v16);
      result = type metadata accessor for BundleHardPaywallLayoutAttributesFactory();
      a2[3] = result;
      a2[4] = &off_1F526FFF8;
      *a2 = v13;
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

char *sub_1D780A288(void *a1)
{
  sub_1D780D69C(0, &qword_1EE08EC80, type metadata accessor for AlacartePaywallViewModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v69 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B39F4();
  v123 = v107;
  v124 = v108;
  v125 = v109;
  v126 = v110;
  v119 = v103;
  v120 = v104;
  v121 = v105;
  v122 = v106;
  v115 = v99;
  v116 = v100;
  v117 = v101;
  v118 = v102;
  v111 = v95;
  v112 = v96;
  v113 = v97;
  v114 = v98;
  result = sub_1D780D59C(&v111);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = type metadata accessor for AlacartePaywallViewModel(0);
  sub_1D78B39F4();
  result = (*(*(v7 - 8) + 48))(v5, 1, v7);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE091388, &protocol descriptor for AlacartePaywallDataProviderType, 0);
  result = sub_1D78B39F4();
  v8 = v93;
  if (!v93)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v94;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE092970, &protocol descriptor for AlacartePaywallStylerType, 1);
  result = sub_1D78B39F4();
  if (!v92)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE092208, &protocol descriptor for AlacartePaywallRendererType, 1);
  result = sub_1D78B39F4();
  if (!v90)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE090850, &protocol descriptor for AlacartePaywallLayoutAttributesFactoryType, 1);
  result = sub_1D78B39F4();
  if (!v88)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v70 = v9;
  v71 = v8;
  v72 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = type metadata accessor for AlacartePaywallSubscribeButtonTextProvider();
  result = sub_1D78B39E4();
  if (result)
  {
    v11 = result;
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v91, v92);
    v69[6] = v69;
    MEMORY[0x1EEE9AC00](v12, v12);
    v14 = (v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v89, v90);
    v69[5] = v69;
    MEMORY[0x1EEE9AC00](v16, v16);
    v18 = (v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
    v69[4] = v69;
    MEMORY[0x1EEE9AC00](v20, v20);
    v22 = (v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v24 = *v14;
    v25 = *v18;
    v26 = *v22;
    v27 = type metadata accessor for AlacartePaywallStyler();
    v85 = v27;
    v86 = &off_1F526D9B8;
    v84[0] = v24;
    v28 = type metadata accessor for AlacartePaywallRenderer();
    v82 = v28;
    v83 = &off_1F52741D0;
    v81[0] = v25;
    v29 = type metadata accessor for AlacartePaywallLayoutAttributesFactory();
    v79 = v29;
    v80 = &off_1F526A410;
    v78[0] = v26;
    v77[3] = v10;
    v77[4] = &off_1F5271650;
    v77[0] = v11;
    v30 = type metadata accessor for AlacartePaywallViewProvider(0);
    v31 = objc_allocWithZone(v30);
    v32 = __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
    v69[3] = v69;
    MEMORY[0x1EEE9AC00](v32, v32);
    v69[0] = v11;
    v34 = (v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v34);
    v36 = __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
    v69[2] = v69;
    MEMORY[0x1EEE9AC00](v36, v36);
    v38 = (v69 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v39 + 16))(v38);
    v40 = __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
    v69[1] = v69;
    MEMORY[0x1EEE9AC00](v40, v40);
    v42 = (v69 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v43 + 16))(v42);
    v44 = *v34;
    v45 = *v38;
    v46 = *v42;
    v76[3] = v27;
    v76[4] = &off_1F526D9B8;
    v76[0] = v44;
    v75[3] = v28;
    v75[4] = &off_1F52741D0;
    v75[0] = v45;
    v74[3] = v29;
    v74[4] = &off_1F526A410;
    v74[0] = v46;
    *&v31[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v47 = &v31[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel];
    v48 = v111;
    v49 = v112;
    v50 = v114;
    *(v47 + 2) = v113;
    *(v47 + 3) = v50;
    *v47 = v48;
    *(v47 + 1) = v49;
    v51 = v115;
    v52 = v116;
    v53 = v118;
    *(v47 + 6) = v117;
    *(v47 + 7) = v53;
    *(v47 + 4) = v51;
    *(v47 + 5) = v52;
    v54 = v119;
    v55 = v120;
    v56 = v122;
    *(v47 + 10) = v121;
    *(v47 + 11) = v56;
    *(v47 + 8) = v54;
    *(v47 + 9) = v55;
    v57 = v123;
    v58 = v124;
    v59 = v126;
    *(v47 + 14) = v125;
    *(v47 + 15) = v59;
    *(v47 + 12) = v57;
    *(v47 + 13) = v58;
    v60 = v72;
    sub_1D780D700(v72, &v31[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_viewModel], type metadata accessor for AlacartePaywallViewModel);
    v61 = &v31[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_dataProvider];
    v62 = v70;
    *v61 = v71;
    *(v61 + 1) = v62;
    sub_1D774584C(v76, &v31[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_styler]);
    sub_1D774584C(v75, &v31[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_renderer]);
    sub_1D774584C(v74, &v31[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_layoutAttributesFactory]);
    sub_1D774584C(v77, &v31[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_subscribeButtonTextProvider]);
    v63 = objc_allocWithZone(type metadata accessor for AlacartePaywallView());

    swift_unknownObjectRetain();
    v64 = [v63 initWithFrame_];
    *&v31[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallView] = v64;
    v73.receiver = v31;
    v73.super_class = v30;
    v65 = objc_msgSendSuper2(&v73, sel_init);
    v66 = *(*(v65 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallView) + OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_descriptionTextView);
    v67 = v65;
    v68 = v66;
    [v68 setDelegate_];
    swift_unknownObjectRelease();

    sub_1D780D768(v60, type metadata accessor for AlacartePaywallViewModel);
    __swift_destroy_boxed_opaque_existential_1(v77);
    __swift_destroy_boxed_opaque_existential_1(v74);
    __swift_destroy_boxed_opaque_existential_1(v75);
    __swift_destroy_boxed_opaque_existential_1(v76);

    __swift_destroy_boxed_opaque_existential_1(v78);
    __swift_destroy_boxed_opaque_existential_1(v81);
    __swift_destroy_boxed_opaque_existential_1(v84);
    __swift_destroy_boxed_opaque_existential_1(v87);
    __swift_destroy_boxed_opaque_existential_1(v89);
    __swift_destroy_boxed_opaque_existential_1(v91);
    return v67;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_1D780ACA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE092970, &protocol descriptor for AlacartePaywallStylerType, 1);
  result = sub_1D78B39F4();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x1EEE9AC00](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for AlacartePaywallStyler();
    v17[3] = v9;
    v17[4] = &off_1F526D9B8;
    v17[0] = v8;
    v10 = type metadata accessor for AlacartePaywallRenderer();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x1EEE9AC00](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_1F526D9B8;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_1F52741D0;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D780AED4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE092970, &protocol descriptor for AlacartePaywallStylerType, 1);
  result = sub_1D78B39F4();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x1EEE9AC00](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for AlacartePaywallStyler();
    v17[3] = v9;
    v17[4] = &off_1F526D9B8;
    v17[0] = v8;
    v10 = type metadata accessor for AlacartePaywallLayoutAttributesFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x1EEE9AC00](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    *(v11 + 88) = v9;
    *(v11 + 96) = &off_1F526D9B8;
    *(v11 + 64) = v16;
    *(v11 + 16) = xmmword_1D78C40C0;
    *(v11 + 32) = xmmword_1D78C40D0;
    *(v11 + 48) = xmmword_1D78C40E0;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_1F526A410;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_OWORD *sub_1D780B120(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B39F4();
  v38 = v22;
  v39 = v23;
  v40 = v24;
  v41 = v25;
  v34 = v18;
  v35 = v19;
  v36 = v20;
  v37 = v21;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  v26 = v10;
  v27 = v11;
  v28 = v12;
  v29 = v13;
  result = sub_1D780D59C(&v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for AlacartePaywallSubscribeButtonTextProvider();
    result = swift_allocObject();
    v2 = v39;
    result[13] = v38;
    result[14] = v2;
    v3 = v41;
    result[15] = v40;
    result[16] = v3;
    v4 = v35;
    result[9] = v34;
    result[10] = v4;
    v5 = v37;
    result[11] = v36;
    result[12] = v5;
    v6 = v31;
    result[5] = v30;
    result[6] = v6;
    v7 = v33;
    result[7] = v32;
    result[8] = v7;
    v8 = v27;
    result[1] = v26;
    result[2] = v8;
    v9 = v29;
    result[3] = v28;
    result[4] = v9;
  }

  return result;
}

void *sub_1D780B220@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090268, MEMORY[0x1E69B6220], 1);
  result = sub_1D78B39F4();
  if (!v10[3])
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FC60, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE090248, MEMORY[0x1E69B6398], 1);
  result = sub_1D78B39F4();
  if (!v9[3])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE0957D0, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1D78B39E4();
  if (result)
  {
    v6 = result;
    v7 = objc_allocWithZone(type metadata accessor for PaywallFormatContentService());
    v8 = sub_1D77EE99C(v10, v5, v9, v6);
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    *a2 = v8;
    a2[1] = &off_1F526C0C8;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D780B3EC@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = a2(0);
  result = sub_1D78B39E4();
  if (result)
  {
    a4[3] = v7;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D780B470(void *a1)
{
  v2 = sub_1D78B60F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v87 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1D78B60D4();
  MEMORY[0x1EEE9AC00](v85, v6);
  v86 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D78B52A4();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v84 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B39F4();
  v136 = v120;
  v137 = v121;
  v138 = v122;
  v139 = v123;
  v132 = v116;
  v133 = v117;
  v134 = v118;
  v135 = v119;
  v128 = v112;
  v129 = v113;
  v130 = v114;
  v131 = v115;
  v124 = v108;
  v125 = v109;
  v126 = v110;
  v127 = v111;
  if (sub_1D780D59C(&v124) == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FE40, 0x1E69DC7F0);
  swift_beginAccess();

  v11 = sub_1D78B39A4();

  if (!v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090DA0, &protocol descriptor for FlexiblePaywallLayoutProviderType, 1);
  sub_1D78B39F4();
  if (!v107)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D780D5B4(0);
  v12 = sub_1D78B39E4();
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FlexiblePaywallCollectionViewDataSource();
  v14 = sub_1D78B39E4();
  if (!v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  v83 = [objc_allocWithZone(type metadata accessor for FlexiblePaywallCollectionViewDelegate()) init];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE0910D8, &protocol descriptor for PaywallFormatContentServiceType, 0);
  sub_1D78B39F4();
  if (!v104)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v89 = v104;
  v81 = v105;
  v82 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE0959E0, &protocol descriptor for BundlePurchasePrewarmerType, 0);
  sub_1D78B39F4();
  v16 = v102;
  if (!v102)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v80 = v103;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FD10, &protocolRef_FCPurchaseProviderType);
  v17 = sub_1D78B39E4();
  if (!v17)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18 = v17;
  v77 = v11;
  v78 = v13;
  v79 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE095D00, &protocol descriptor for PurchaseManagerType, 0);
  sub_1D78B39F4();
  v19 = v100;
  if (!v100)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v76 = v101;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = type metadata accessor for AlacartePaywallSubscribeButtonTextProvider();
  v21 = sub_1D78B39E4();
  if (!v21)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v99[3] = v20;
  v99[4] = &off_1F5271650;
  v99[0] = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE095AA0, &protocol descriptor for OfferOverrideProviderType, 1);
  sub_1D78B39F4();
  if (!v98[3])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v88 = v19;
  v73 = v18;
  v74 = v16;
  v75 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE095E80, &protocol descriptor for OfferManagerType, 0);
  sub_1D78B39F4();
  v72 = v96;
  if (v96)
  {
    v69 = v97;
    v22 = __swift_mutable_project_boxed_opaque_existential_1(v106, v107);
    v71 = &v67;
    MEMORY[0x1EEE9AC00](v22, v22);
    v24 = (&v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24);
    v26 = *v24;
    v27 = type metadata accessor for FlexiblePaywallLayoutProvider();
    v94 = v27;
    v95 = &off_1F526CC80;
    v93[0] = v26;
    v68 = type metadata accessor for FlexiblePaywallViewProvider(0);
    v28 = objc_allocWithZone(v68);
    v29 = __swift_mutable_project_boxed_opaque_existential_1(v93, v94);
    v70 = &v67;
    MEMORY[0x1EEE9AC00](v29, v29);
    v31 = (&v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))(v31);
    v33 = *v31;
    v92[3] = v27;
    v92[4] = &off_1F526CC80;
    v92[0] = v33;
    *&v28[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v34 = OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallView;
    *&v28[v34] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    v35 = OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_hardPaywallGradientView;
    *&v28[v35] = [objc_allocWithZone(sub_1D78B4564()) initWithFrame_];
    v36 = OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_resolvedContent;
    v37 = sub_1D78B57A4();
    (*(*(v37 - 8) + 56))(&v28[v36], 1, 1, v37);
    v38 = OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_layoutTaskQueue;
    sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
    sub_1D78B5284();
    v91 = MEMORY[0x1E69E7CC0];
    sub_1D780D8A8(&qword_1EE08FE20, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    sub_1D780D69C(0, &unk_1EE08FFE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    sub_1D780D614();
    sub_1D78B6324();
    (*(v79 + 104))(v87, *MEMORY[0x1E69E8090], v75);
    *&v28[v38] = sub_1D78B6124();
    *&v28[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_individualPurchaseMetadata] = 0;
    v39 = &v28[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel];
    v40 = v127;
    v42 = v124;
    v41 = v125;
    *(v39 + 2) = v126;
    *(v39 + 3) = v40;
    *v39 = v42;
    *(v39 + 1) = v41;
    v43 = v131;
    v45 = v128;
    v44 = v129;
    *(v39 + 6) = v130;
    *(v39 + 7) = v43;
    *(v39 + 4) = v45;
    *(v39 + 5) = v44;
    v46 = v135;
    v48 = v132;
    v47 = v133;
    *(v39 + 10) = v134;
    *(v39 + 11) = v46;
    *(v39 + 8) = v48;
    *(v39 + 9) = v47;
    v49 = v136;
    v50 = v137;
    v51 = v139;
    *(v39 + 14) = v138;
    *(v39 + 15) = v51;
    *(v39 + 12) = v49;
    *(v39 + 13) = v50;
    v52 = v77;
    *&v28[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallCollectionView] = v77;
    sub_1D774584C(v92, &v28[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallLayoutProvider]);
    *&v28[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_feedLayoutSolver] = v78;
    v53 = v82;
    v54 = v83;
    *&v28[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_dataSource] = v82;
    *&v28[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_dataDelegate] = v54;
    v55 = &v28[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_formatContentService];
    v56 = v80;
    v57 = v81;
    *v55 = v89;
    *(v55 + 1) = v57;
    v58 = &v28[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_bundlePurchasePrewarmer];
    v59 = v73;
    *v58 = v74;
    *(v58 + 1) = v56;
    *&v28[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_purchaseProvider] = v59;
    v60 = &v28[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_purchaseManager];
    v61 = v76;
    *v60 = v88;
    *(v60 + 1) = v61;
    sub_1D774584C(v99, &v28[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_subscribeButtonTextProvider]);
    sub_1D774584C(v98, &v28[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_offerOverrideProvider]);
    v62 = &v28[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_offerManager];
    v63 = v69;
    *v62 = v72;
    *(v62 + 1) = v63;
    v90.receiver = v28;
    v90.super_class = v68;
    v87 = v52;

    v64 = v53;
    v65 = v54;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v66 = objc_msgSendSuper2(&v90, sel_init);
    sub_1D784BA6C();
    sub_1D784BDE4();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v98);
    __swift_destroy_boxed_opaque_existential_1(v99);
    __swift_destroy_boxed_opaque_existential_1(v92);
    __swift_destroy_boxed_opaque_existential_1(v93);
    __swift_destroy_boxed_opaque_existential_1(v106);
    return;
  }

LABEL_25:
  __break(1u);
}

void sub_1D780BFD0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090DA0, &protocol descriptor for FlexiblePaywallLayoutProviderType, 1);
  sub_1D78B39F4();
  if (!v30)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE0902F0, MEMORY[0x1E69B5AB0], 0);
  sub_1D774584C(a1, &v25);
  v2 = swift_allocObject();
  sub_1D7741E34(&v25, v2 + 16);
  sub_1D78B39D4();

  v3 = v27;
  if (!v27)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE0902B8, MEMORY[0x1E69B5D38], 1);
  sub_1D78B39F4();
  if (v26)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
    MEMORY[0x1EEE9AC00](v5, v5);
    v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = *v7;
    v10 = type metadata accessor for FlexiblePaywallLayoutProvider();
    v23 = v10;
    v24 = &off_1F526CC80;
    v22[0] = v9;
    v11 = type metadata accessor for FlexiblePaywallCollectionViewDataSource();
    v12 = objc_allocWithZone(v11);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x1EEE9AC00](v13, v13);
    v15 = (&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v21[3] = v10;
    v21[4] = &off_1F526CC80;
    v21[0] = v17;
    *&v12[OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v12[OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_subscribeButtonDebouncer] = 0;
    sub_1D774584C(v21, &v12[OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_layoutProvider]);
    v18 = &v12[OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_feedItemRenderer];
    *v18 = v3;
    *(v18 + 1) = v4;
    sub_1D774584C(&v25, &v12[OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_feedItemSupplementaryRenderer]);
    v20.receiver = v12;
    v20.super_class = v11;
    objc_msgSendSuper2(&v20, sel_init);
    __swift_destroy_boxed_opaque_existential_1(&v25);
    __swift_destroy_boxed_opaque_existential_1(v21);
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v29);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1D780C38C(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D773F004(0, &qword_1EE08FE40, 0x1E69DC7F0);
  swift_beginAccess();

  v3 = sub_1D78B39A4();

  if (v3)
  {
    sub_1D773F004(0, &unk_1EE08FED0, 0x1E69DCEF8);
    sub_1D78B5D24();
    sub_1D78B38E4();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D780C4C0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FlexiblePaywallViewProvider(0);
  v3 = sub_1D78B39E4();
  if (v3)
  {
    *(v2 + OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_delegate + 8) = &off_1F526F868;
    v4 = v3;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D780C560(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FCF8, 0x1E69DC850);
  swift_beginAccess();

  v1 = sub_1D78B39A4();

  if (v1)
  {
    [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v1 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_1D780C650(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090DA0, &protocol descriptor for FlexiblePaywallLayoutProviderType, 1);
  result = sub_1D78B39F4();
  if (v9)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
    MEMORY[0x1EEE9AC00](v2, v2);
    v4 = (&v8[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = sub_1D780D3C8(*v4);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D780C77C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for FlexiblePaywallLayoutProvider();
  v3 = swift_allocObject();
  sub_1D780D544();
  swift_allocObject();
  result = sub_1D78B3AE4();
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &off_1F526CC80;
  *a1 = v3;
  return result;
}

uint64_t sub_1D780C814(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = type metadata accessor for HideMyEmailSignupConfigProvider();
  v29[3] = v7;
  v29[4] = &off_1F5267FE8;
  v29[0] = a1;
  v27 = v6;
  v28 = &off_1F52703E8;
  v26[0] = a3;
  type metadata accessor for PaywallDataManager();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v29, v7);
  MEMORY[0x1EEE9AC00](v9, v9);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  MEMORY[0x1EEE9AC00](v13, v13);
  v15 = (&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v11;
  v18 = *v15;
  v24 = v7;
  v25 = &off_1F5267FE8;
  v22 = &off_1F52703E8;
  *&v23 = v17;
  v21 = v6;
  *&v20 = v18;
  sub_1D7741E34(&v23, v8 + 16);
  *(v8 + 56) = a2;
  sub_1D7741E34(&v20, v8 + 64);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v8;
}

char *sub_1D780CA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v41 = a1;
  v42 = a3;
  v10 = *a6;
  v11 = type metadata accessor for BundleSoftPaywallStyler();
  v54[3] = v11;
  v54[4] = &off_1F526DC68;
  v54[0] = a4;
  v12 = type metadata accessor for BundleSoftPaywallRenderer();
  v52 = v12;
  v53 = &off_1F526B128;
  v51[0] = a5;
  v49 = v10;
  v50 = &off_1F526A728;
  v48[0] = a6;
  v43 = type metadata accessor for BundleSoftPaywallViewProvider(0);
  v13 = objc_allocWithZone(v43);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v54, v11);
  MEMORY[0x1EEE9AC00](v14, v14);
  v16 = (&v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
  MEMORY[0x1EEE9AC00](v18, v18);
  v20 = (&v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
  MEMORY[0x1EEE9AC00](v22, v22);
  v24 = (&v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v16;
  v27 = *v20;
  v28 = *v24;
  v47[3] = v11;
  v47[4] = &off_1F526DC68;
  v47[0] = v26;
  v46[3] = v12;
  v46[4] = &off_1F526B128;
  v46[0] = v27;
  v45[3] = v10;
  v45[4] = &off_1F526A728;
  v45[0] = v28;
  *&v13[OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v29 = MEMORY[0x1E69E7CC8];
  *&v13[OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_images] = MEMORY[0x1E69E7CC8];
  *&v13[OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_badgeImages] = v29;
  v30 = OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_videoFileURL;
  v31 = sub_1D78B3294();
  (*(*(v31 - 8) + 56))(&v13[v30], 1, 1, v31);
  v32 = v41;
  sub_1D780D700(v41, &v13[OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_viewModel], type metadata accessor for BundlePaywallViewModel);
  v33 = &v13[OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_dataProvider];
  v34 = v42;
  *v33 = a2;
  *(v33 + 1) = v34;
  sub_1D774584C(v47, &v13[OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_styler]);
  sub_1D774584C(v46, &v13[OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_renderer]);
  sub_1D774584C(v45, &v13[OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_layoutAttributesFactory]);
  v35 = objc_allocWithZone(type metadata accessor for BundleSoftPaywallView());
  swift_unknownObjectRetain();
  v36 = [v35 initWithFrame_];
  *&v13[OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_bundleSoftPaywallView] = v36;
  v44.receiver = v13;
  v44.super_class = v43;
  v37 = objc_msgSendSuper2(&v44, sel_init);
  v38 = *(*&v37[OBJC_IVAR____TtC16NewsSubscription29BundleSoftPaywallViewProvider_bundleSoftPaywallView] + OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_descriptionTextView);
  v39 = v37;
  [v38 setDelegate_];
  swift_unknownObjectRelease();
  sub_1D780D768(v32, type metadata accessor for BundlePaywallViewModel);
  __swift_destroy_boxed_opaque_existential_1(v45);
  __swift_destroy_boxed_opaque_existential_1(v46);
  __swift_destroy_boxed_opaque_existential_1(v47);

  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v54);
  return v39;
}

uint64_t sub_1D780CF04(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = type metadata accessor for BundleSoftPaywallStyler();
  v21[3] = v5;
  v21[4] = &off_1F526DC68;
  v21[0] = a1;
  v19 = v4;
  v20 = &off_1F526FDE0;
  v18[0] = a2;
  type metadata accessor for BundleSoftPaywallLayoutAttributesFactory();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v21, v5);
  MEMORY[0x1EEE9AC00](v7, v7);
  v9 = (v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
  MEMORY[0x1EEE9AC00](v11, v11);
  v13 = (v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v9;
  v16 = *v13;
  *(v6 + 40) = v5;
  *(v6 + 48) = &off_1F526DC68;
  *(v6 + 16) = v15;
  *(v6 + 80) = v4;
  *(v6 + 88) = &off_1F526FDE0;
  *(v6 + 56) = v16;
  *(v6 + 96) = vdupq_n_s64(0x4040800000000000uLL);
  *(v6 + 112) = xmmword_1D78C40F0;
  *(v6 + 128) = xmmword_1D78C40F0;
  *(v6 + 144) = xmmword_1D78C4100;
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v6;
}

uint64_t sub_1D780D130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 40) = type metadata accessor for BundleHardPaywallStyler();
  *(a3 + 48) = &off_1F526C760;
  *(a3 + 16) = a1;
  *(a3 + 80) = type metadata accessor for BundlePaywallComponentSizeProvider(0);
  *(a3 + 88) = &off_1F526FDE0;
  *(a3 + 56) = a2;
  *(a3 + 96) = xmmword_1D78C4110;
  *(a3 + 112) = xmmword_1D78C4120;
  *(a3 + 128) = xmmword_1D78C4130;
  *(a3 + 144) = xmmword_1D78C4140;
  *(a3 + 160) = xmmword_1D78C4150;
  *(a3 + 176) = 0x408F400000000000;
  return a3;
}

uint64_t sub_1D780D1D4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v20 = type metadata accessor for BundleHardPaywallStyler();
  v21 = &off_1F526C760;
  v19[0] = a1;
  v17 = v4;
  v18 = &off_1F526FDE0;
  v16[0] = a2;
  type metadata accessor for BundleHardPaywallLayoutAttributesFactory();
  v5 = swift_allocObject();
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  MEMORY[0x1EEE9AC00](v6, v6);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  MEMORY[0x1EEE9AC00](v10, v10);
  v12 = (v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = sub_1D780D130(*v8, *v12, v5);
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v14;
}

uint64_t *sub_1D780D3C8(uint64_t *a1)
{
  v1 = *a1;
  v14[3] = v1;
  v14[4] = &off_1F526CC80;
  v14[0] = a1;
  v2 = type metadata accessor for FlexiblePaywallCollectionViewLayout();
  v3 = objc_allocWithZone(v2);
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v14, v1);
  MEMORY[0x1EEE9AC00](v4, v4);
  v6 = (&v12 - v5);
  (*(v7 + 16))(&v12 - v5);
  v8 = *v6;
  v13[3] = v1;
  v13[4] = &off_1F526CC80;
  v13[0] = v8;
  sub_1D774584C(v13, &v3[OBJC_IVAR____TtC16NewsSubscription35FlexiblePaywallCollectionViewLayout_layoutProvider]);
  v9 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC16NewsSubscription35FlexiblePaywallCollectionViewLayout_itemAttributes] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC16NewsSubscription35FlexiblePaywallCollectionViewLayout_supplementaryItemAttributes] = v9;
  v12.receiver = v3;
  v12.super_class = v2;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v13);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v10;
}

void sub_1D780D544()
{
  if (!qword_1EE0953B8)
  {
    v0 = sub_1D78B3B34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0953B8);
    }
  }
}

uint64_t sub_1D780D59C(uint64_t a1)
{
  v1 = *(a1 + 248);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1D780D5B4(uint64_t a1)
{
  if (!qword_1EE0902F8)
  {
    sub_1D78B5944();
    v1 = sub_1D78B5404();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0902F8);
    }
  }
}

unint64_t sub_1D780D614()
{
  result = qword_1EE08FFD0;
  if (!qword_1EE08FFD0)
  {
    sub_1D780D69C(255, &unk_1EE08FFE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08FFD0);
  }

  return result;
}

void sub_1D780D69C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D780D700(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D780D768(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D780D7C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BundlePaywallViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D780D82C(uint64_t a1, uint64_t a2)
{
  sub_1D7746430(0, &qword_1EE090510, qword_1EE090518, MEMORY[0x1E69B6A08]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D780D8A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D780D8F0(uint64_t a1)
{
  sub_1D7746430(0, &qword_1EE090510, qword_1EE090518, MEMORY[0x1E69B6A08]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D780D968()
{
  v1 = objc_allocWithZone(MEMORY[0x1E69B6918]);
  v2 = sub_1D78B5C44();
  v55 = [v1 initWithName_];

  v3 = objc_allocWithZone(MEMORY[0x1E69B6918]);
  v4 = sub_1D78B5C44();
  v5 = [v3 initWithName_];

  v6 = swift_allocObject();
  swift_weakInit();
  v61 = sub_1D78105A8;
  v62 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = sub_1D78105B0;
  v60 = &block_descriptor_22;
  v7 = _Block_copy(&aBlock);

  v8 = [v5 onWillEnter_];
  _Block_release(v7);

  v9 = objc_allocWithZone(MEMORY[0x1E69B6918]);
  v10 = sub_1D78B5C44();
  v11 = [v9 initWithName_];

  v12 = swift_allocObject();
  swift_weakInit();
  v61 = sub_1D7810960;
  v62 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = sub_1D78105B0;
  v60 = &block_descriptor_12_0;
  v13 = _Block_copy(&aBlock);

  v14 = [v11 onWillEnter_];
  _Block_release(v13);

  v15 = objc_allocWithZone(MEMORY[0x1E69B6918]);
  v16 = sub_1D78B5C44();
  v17 = [v15 initWithName_];

  v18 = swift_allocObject();
  swift_weakInit();
  v61 = sub_1D7810AF0;
  v62 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = sub_1D78105B0;
  v60 = &block_descriptor_16_0;
  v19 = _Block_copy(&aBlock);

  v20 = [v17 onWillEnter_];
  _Block_release(v19);

  v49 = [objc_allocWithZone(MEMORY[0x1E69B6908]) initWithState:v55 withOwner:v0];
  [v49 addState_];
  [v49 addState_];
  [v49 addState_];
  sub_1D775BFE8(0, &qword_1EE08FA00, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78C41A0;
  *(inited + 32) = v11;
  *(inited + 40) = v17;
  *(inited + 48) = v5;
  v22 = v11;
  v23 = v17;
  v51 = v5;
  sub_1D7811788(inited, &qword_1EC9CA930, &qword_1EC9CA920, 0x1E69B6918, &qword_1EC9CA928);
  swift_setDeallocating();
  swift_arrayDestroy();
  v24 = objc_allocWithZone(MEMORY[0x1E69B6910]);
  v25 = v55;
  v26 = sub_1D78B5C44();
  sub_1D773F004(0, &qword_1EC9CA920, 0x1E69B6918);
  sub_1D774F288(&qword_1EC9CA928, &qword_1EC9CA920, 0x1E69B6918);
  v27 = sub_1D78B5F54();

  v56 = [v24 initWithName:v26 transitionFromStates:v27 toState:v25];

  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_1D78C41A0;
  *(v28 + 32) = v25;
  *(v28 + 40) = v22;
  *(v28 + 48) = v23;
  v50 = v22;
  v53 = v23;
  v54 = v25;
  sub_1D7811788(v28, &qword_1EC9CA930, &qword_1EC9CA920, 0x1E69B6918, &qword_1EC9CA928);
  swift_setDeallocating();
  swift_arrayDestroy();
  v29 = objc_allocWithZone(MEMORY[0x1E69B6910]);
  v30 = v51;
  v31 = sub_1D78B5C44();
  v32 = sub_1D78B5F54();

  v52 = [v29 initWithName:v31 transitionFromStates:v32 toState:v30];

  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_1D78C0D70;
  *(v33 + 32) = v30;
  v34 = v30;
  sub_1D7811788(v33, &qword_1EC9CA930, &qword_1EC9CA920, 0x1E69B6918, &qword_1EC9CA928);
  swift_setDeallocating();
  swift_arrayDestroy();
  v35 = objc_allocWithZone(MEMORY[0x1E69B6910]);
  v36 = v50;
  v37 = sub_1D78B5C44();
  v38 = sub_1D78B5F54();

  v39 = [v35 initWithName:v37 transitionFromStates:v38 toState:v36];

  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_1D78BCCA0;
  *(v40 + 32) = v34;
  *(v40 + 40) = v36;
  v41 = v36;
  v42 = v34;
  sub_1D7811788(v40, &qword_1EC9CA930, &qword_1EC9CA920, 0x1E69B6918, &qword_1EC9CA928);
  swift_setDeallocating();
  swift_arrayDestroy();
  v43 = objc_allocWithZone(MEMORY[0x1E69B6910]);
  v44 = v53;
  v45 = sub_1D78B5C44();
  v46 = sub_1D78B5F54();

  v47 = [v43 initWithName:v45 transitionFromStates:v46 toState:v44];

  [v49 addEvent_];
  [v49 addEvent_];
  [v49 addEvent_];
  [v49 addEvent_];
  [v49 activate];

  return v49;
}

uint64_t sub_1D780E208()
{
  sub_1D776ABA8(v0 + 16);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  sub_1D7788C88(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  return v0;
}

uint64_t sub_1D780E2AC()
{
  sub_1D780E208();

  return swift_deallocClassInstance();
}

void sub_1D780E304()
{
  v1 = v0;
  if ([*(v0 + 80) isNetworkReachable])
  {
    v2 = *(v0 + 72);
    if (v2)
    {
      v3 = v2;
      v4 = sub_1D78B5C44();

      v6 = v1[12];
      v5 = v1[13];
      MEMORY[0x1EEE9AC00](v7, v8);
      sub_1D779DA54();

      sub_1D78B41F4();

      v9 = sub_1D78B4014();
      sub_1D78B4084();

      sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
      v10 = sub_1D78B6104();
      v11 = swift_allocObject();
      v11[2] = v1;
      v11[3] = v6;
      v11[4] = v5;

      sub_1D78B4094();

      v12 = sub_1D78B4014();
      sub_1D78B40D4();

LABEL_6:

      return;
    }

    __break(1u);
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = objc_opt_self();
    v15 = [v14 bundleForClass_];
    v16 = sub_1D78B3134();
    v18 = v17;

    v19 = [v14 bundleForClass_];
    v20 = sub_1D78B3134();
    v22 = v21;

    v23 = type metadata accessor for ErrorTransitionContext();
    v24 = objc_allocWithZone(v23);
    v25 = &v24[OBJC_IVAR____TtC16NewsSubscription22ErrorTransitionContext_title];
    *v25 = v16;
    v25[1] = v18;
    v26 = &v24[OBJC_IVAR____TtC16NewsSubscription22ErrorTransitionContext_subtitle];
    *v26 = v20;
    v26[1] = v22;
    v32.receiver = v24;
    v32.super_class = v23;
    v27 = objc_msgSendSuper2(&v32, sel_init);
    v28 = v1[9];
    if (v28)
    {
      v29 = v27;
      v30 = v28;
      v12 = sub_1D78B5C44();
      v31 = [v30 fireEventWithName:v12 withContext:v29];

      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_1D780E6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7812DC4(0, &qword_1EC9CA9A0, sub_1D779DA54, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

uint64_t sub_1D780E794(uint64_t *a1, void *a2)
{
  v3 = *a1;
  a2[11] = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4 = a2[20];
  v5 = a2[21];
  __swift_project_boxed_opaque_existential_1(a2 + 17, v4);
  (*(v5 + 8))(v8, v3, v4, v5);
  swift_beginAccess();
  sub_1D7812C00(v8, (a2 + 22));
  swift_endAccess();
  if (a2[15] && (v6 = a2[16]) != 0)
  {
    v8[0] = a2[15];
    v8[1] = v6;
    sub_1D775BFE8(0, &qword_1EC9CA998, &type metadata for EntitlementItem, MEMORY[0x1E69D6B18]);
    swift_allocObject();

    return sub_1D78B4104();
  }

  else
  {
    sub_1D775BFE8(0, &qword_1EC9CA998, &type metadata for EntitlementItem, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4174();
  }
}

void sub_1D780E91C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2[11];
  if (v5)
  {
    v8 = *(a1 + 8);
    swift_unknownObjectRetain();
    v9 = sub_1D77C0668(v8);
    v24 = a3;
    v25 = a4;
    MEMORY[0x1EEE9AC00](v9, v10);
    v23[2] = &v24;
    LOBYTE(a4) = sub_1D781DA18(sub_1D7782F40, v23, v9);

    if (a4)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong dismissViewControllerAnimated:1 completion:{0, v24, v25}];
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      goto LABEL_16;
    }

    v15 = a2[7];
    v16 = [v5 identifier];
    if (!v16)
    {
      sub_1D78B5C74();
      v16 = sub_1D78B5C44();
    }

    v17 = [v15 purchaseLookUpEntryForTagID_];

    if (!v17 || [v17 purchaseValidationState] != 1)
    {
      sub_1D7810D34(v5);
      sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
      v21 = sub_1D78B6104();

      sub_1D78B4094();

      v22 = sub_1D78B4014();
      sub_1D78B40D4();
      swift_unknownObjectRelease();

      return;
    }

    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      v20 = swift_unknownObjectRetain();
      sub_1D7811A74(v20, v19);
      swift_unknownObjectRelease_n();

LABEL_16:
      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v12 = a2[9];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1D78B5C44();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D780EC44(void *a1, uint64_t (*a2)(uint64_t a1), uint64_t a3)
{
  v61 = a2;
  v62 = a3;
  v57 = *v3;
  sub_1D7812DC4(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v54 - v7;
  v9 = type metadata accessor for PurchaseContext(0);
  v10 = (v9 - 8);
  v54 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v55 = v13;
  v56 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v54 - v15;
  v63 = a1;
  v17 = [a1 purchaseID];
  v18 = sub_1D78B5C74();
  v59 = v19;
  v60 = v18;

  v20 = v3[13];
  v58 = v3[12];
  v21 = v3[14];
  v22 = v10[15];
  v23 = type metadata accessor for PostPurchaseDestination(0);
  (*(*(v23 - 8) + 56))(&v16[v22], 1, 1, v23);
  v24 = sub_1D78B3294();
  v25 = *(*(v24 - 8) + 56);
  v25(v8, 1, 1, v24);
  v26 = v10[18];
  v25(&v16[v26], 1, 1, v24);
  v27 = v3;
  v28 = v59;
  *v16 = v60;
  *(v16 + 1) = v28;
  v29 = v61;
  v30 = v62;
  *(v16 + 2) = 0;
  *(v16 + 3) = v29;
  v31 = v58;
  *(v16 + 4) = v30;
  *(v16 + 5) = v31;
  *(v16 + 6) = v20;
  *(v16 + 28) = 2816;
  *(v16 + 8) = v21;
  v16[58] = 0;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  *(v16 + 104) = 0u;
  v16[120] = 2;
  v16[v10[16]] = 0;
  v16[v10[17]] = 0;

  sub_1D77B44C4(v8, &v16[v26]);
  __swift_project_boxed_opaque_existential_1((*(v27 + 32) + 32), *(*(v27 + 32) + 56));
  v32 = sub_1D7788F60(v31, v20);
  if (v32)
  {
    v33 = v32;
    if ([v32 isEnabled] && (v34 = *(v27 + 88)) != 0)
    {
      if ([swift_unknownObjectRetain() publisherPaidWebAccessOptIn])
      {
        v60 = sub_1D78B41F4();
        v35 = v56;
        v61 = type metadata accessor for PurchaseContext;
        sub_1D77FDA40(v16, v56, type metadata accessor for PurchaseContext);
        v36 = *(v54 + 80);
        v37 = v27;
        v38 = (v36 + 16) & ~v36;
        v62 = v55 + 7;
        v39 = (v55 + 7 + v38) & 0xFFFFFFFFFFFFFFF8;
        v40 = swift_allocObject();
        sub_1D77FDAA8(v35, v40 + v38, type metadata accessor for PurchaseContext);
        *(v40 + v39) = v34;
        swift_unknownObjectRetain();
        v41 = sub_1D78B4014();
        type metadata accessor for HideMyEmailSignupDataModel(0);
        sub_1D78B40A4();

        sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
        v42 = sub_1D78B6104();
        sub_1D7812F04(0);

        v60 = sub_1D78B40B4();

        v43 = sub_1D78B6104();
        v44 = v56;
        v45 = v61;
        sub_1D77FDA40(v16, v56, v61);
        v46 = (v36 + 24) & ~v36;
        v47 = (v62 + v46) & 0xFFFFFFFFFFFFFFF8;
        v48 = swift_allocObject();
        *(v48 + 16) = v37;
        sub_1D77FDAA8(v44, v48 + v46, v45);
        v49 = v63;
        *(v48 + v47) = v63;

        v50 = v49;
        sub_1D78B40E4();
        swift_unknownObjectRelease();

        return sub_1D7791954(v16);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v51 = sub_1D78B6094();
  if (qword_1EC9C8448 != -1)
  {
    v53 = v51;
    swift_once();
    v51 = v53;
  }

  sub_1D78B42D4(v51, &dword_1D7739000, qword_1EC9D9DF0, "Skipping Hide My Email flow because it is not configured", 56, 2, MEMORY[0x1E69E7CC0]);
  sub_1D780F270(v27, v16, v63);
  return sub_1D7791954(v16);
}

void sub_1D780F270(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for PurchaseContext(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = *(Strong + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_purchasePresenter + 24);
      v11 = *(Strong + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_purchasePresenter + 32);
      v12 = Strong;
      __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_purchasePresenter), v10);
      v21 = a3;
      v22 = 2;
      v20 = a3;
      PurchasePresenterType.presentPurchase(on:with:type:)(v12, a2, &v21, v10, v11);
      sub_1D77FDA40(a2, &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PurchaseContext);
      v13 = (*(v6 + 80) + 24) & ~*(v6 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      sub_1D77FDAA8(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for PurchaseContext);
      v15 = v12;
      v16 = sub_1D78B4014();
      sub_1D78B4094();

      sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
      v17 = sub_1D78B6104();
      *(swift_allocObject() + 16) = v15;
      v18 = v15;
      sub_1D78B40D4();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1D780F528(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = off_1F5267C50[0];
      v4 = type metadata accessor for SubscriptionOffersViewController();
      v5 = v3(v2, &off_1F526E980, v4, &off_1F5267C48);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v5;
    }

    else
    {
      sub_1D775BFE8(0, &qword_1EE0951C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      v7 = sub_1D78B4104();
      swift_unknownObjectRelease();
      return v7;
    }
  }

  else
  {
    sub_1D775BFE8(0, &qword_1EE0951C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4104();
  }
}

void sub_1D780F664(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for HideMyEmailSignupDataModel(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = v7;
    v21 = a3;
    v11 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = a2;
      v12 = off_1F5267C58;
      v13 = type metadata accessor for SubscriptionOffersViewController();
      v12(v11, &off_1F526E980, v13, &off_1F5267C48);
      swift_unknownObjectRelease();
      v14 = MEMORY[0x1E69E7CA8];
    }

    else
    {
      v14 = MEMORY[0x1E69E7CA8];
      sub_1D775BFE8(0, &qword_1EE0951C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      sub_1D78B4104();
    }

    swift_unknownObjectRelease();
    sub_1D77FDA40(a1, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HideMyEmailSignupDataModel);
    v16 = (*(v20 + 80) + 24) & ~*(v20 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    sub_1D77FDAA8(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for HideMyEmailSignupDataModel);

    v18 = sub_1D78B4014();
    sub_1D775BFE8(0, &unk_1EC9CA730, v14 + 8, MEMORY[0x1E69E6720]);
    v15 = sub_1D78B4094();

    a3 = v21;
  }

  else
  {
    v15 = 0;
  }

  *a3 = v15;
}

void *sub_1D780F8F8@<X0>(uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v6 = result;
  if (result)
  {
    v7 = result[11];
    v8 = result[12];
    __swift_project_boxed_opaque_existential_1(result + 8, v7);
    (*(v8 + 128))(a2, v7, v8);
    result = swift_unknownObjectRelease();
  }

  *a3 = v6 == 0;
  return result;
}

void sub_1D780F990(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = off_1F5267C58;
      v12 = type metadata accessor for SubscriptionOffersViewController();
      v11(v10, &off_1F526E980, v12, &off_1F5267C48);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D775BFE8(0, &qword_1EE0951C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      sub_1D78B4104();
      swift_unknownObjectRelease();
    }
  }

  v13 = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  if (v26 < 2)
  {
    sub_1D77FDA30(v26);
LABEL_8:
    v14 = sub_1D78B6094();
    if (qword_1EC9C8448 != -1)
    {
      swift_once();
    }

    v15 = qword_1EC9D9DF0;
    sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D78BCAB0;
    swift_getErrorValue();
    v17 = sub_1D78B67B4();
    v19 = v18;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1D775ABD4();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    sub_1D78B42D4(v14, &dword_1D7739000, v15, "Skipping Hide My Email flow because of an error creating the data model. Error: %@", 82, 2, v16);

    sub_1D780F270(a3, a4, a5);
    return;
  }

  v20 = sub_1D78B6094();
  if (qword_1EC9C8448 != -1)
  {
    swift_once();
  }

  v21 = qword_1EC9D9DF0;
  sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D78BCAB0;
  swift_getErrorValue();
  v23 = sub_1D78B67B4();
  v25 = v24;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_1D775ABD4();
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  sub_1D78B42D4(v20, &dword_1D7739000, v21, "Stopping buy flow because HME is configured and user is not authenticated %@", 76, 2, v22);

  sub_1D77FDA30(v26);
}

double sub_1D780FD1C()
{
  swift_beginAccess();
  sub_1D7788B90(v0 + 176, &v8);
  if (v9)
  {
    v1 = sub_1D7741E34(&v8, v10);
    MEMORY[0x1EEE9AC00](v1, v2);
    sub_1D78B41F4();
    sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
    v3 = sub_1D78B6104();
    sub_1D775BFE8(0, &unk_1EC9CA730, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);
    sub_1D78B40B4();

    v4 = sub_1D78B6104();
    sub_1D78B40E4();

    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_1D7788C88(&v8);
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v6 = qword_1EE09C268;
    v7 = sub_1D78B60A4();
    return sub_1D78B42C4("Web access authentication requested when no WebAccessAuthenticator is available!  WebAccessAuthenticator was likely given a nil tag.", 132, 2, &dword_1D7739000, v6, v7, MEMORY[0x1E69E7CC0]);
  }

  return result;
}

void sub_1D780FF64(uint64_t *a1@<X0>, BOOL *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = sub_1D7785F5C();
      v10 = swift_allocObject();
      v10[2] = v8;
      v10[3] = v5;
      v10[4] = v4;
      v12[4] = sub_1D7812DAC;
      v12[5] = v10;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1107296256;
      v12[2] = sub_1D775FB6C;
      v12[3] = &block_descriptor_55;
      v11 = _Block_copy(v12);
      swift_unknownObjectRetain();

      [v8 presentViewController:v9 animated:1 completion:v11];
      swift_unknownObjectRelease();
      _Block_release(v11);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  *a3 = Strong == 0;
}

uint64_t sub_1D78100D0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  return (*(v6 + 16))(a2, a3, v5, v6);
}

double sub_1D7810144(char *a1, uint64_t a2)
{
  v3 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(a2 + 88);
    swift_unknownObjectRetain();
    sub_1D7811D24(v3, v7, v6);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  if ((v3 & 1) == 0)
  {
    v8 = *(a2 + 112);
    v9 = sub_1D7773164(v8);
    if (v10)
    {
      v11 = v10;
      if (*(a2 + 88))
      {
        v12 = v9;
        v13 = [swift_unknownObjectRetain() identifier];
        sub_1D78B5C74();

        sub_1D77731CC(v8);

        if (qword_1EE08FB98 != -1)
        {
          swift_once();
        }

        v14 = qword_1EE09C268;
        sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1D78BCAB0;
        *(v15 + 56) = MEMORY[0x1E69E6158];
        *(v15 + 64) = sub_1D775ABD4();
        *(v15 + 32) = v12;
        *(v15 + 40) = v11;

        v16 = sub_1D78B60A4();
        sub_1D78B42C4("Reporting alreadySubscribed subscription event to iAd for qtoken=%@", 67, 2, &dword_1D7739000, v14, v16, v15);

        sub_1D78B4244();
        sub_1D78B4234();

        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1D781037C(void *a1, uint64_t a2, const char *a3, ...)
{
  v5 = sub_1D78B6094();
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE09C268;
  sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D78BCAB0;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  sub_1D78B6504();
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1D775ABD4();
  *(v7 + 32) = 0;
  *(v7 + 40) = 0xE000000000000000;
  sub_1D78B42D4(v5, &dword_1D7739000, v6, a3, 32, 2, v7);

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_1D7811B8C(a1, Strong);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1D781051C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;

      sub_1D7811E44(v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D78105B0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v8[3] = swift_getObjectType();
  v8[0] = a3;

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, v8);

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

void sub_1D7810640(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;

      sub_1D7812054(v7);

      swift_unknownObjectRelease();
    }

    v8 = *(v5 + 88);
    if (!v8)
    {

      return;
    }

    swift_unknownObjectRetain();
    if ([a1 context])
    {
      type metadata accessor for DisplayOfferTransitionContext();
      v9 = swift_dynamicCastClass();
      if (!v9)
      {

        swift_unknownObjectRelease();
        goto LABEL_16;
      }

      v10 = v9;
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v12 = v11;
        v13 = *(v10 + OBJC_IVAR____TtC16NewsSubscription29DisplayOfferTransitionContext_offers);
        v14 = *(v5 + 112);
        v15 = swift_unknownObjectWeakLoadStrong();
        if (v15)
        {
          *(v15 + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_offers) = v13;
          v35 = v14;
          v16 = v13;
          v17 = v15;

          v37 = v16;
          v39 = v17;
          *(v17 + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_tag) = v8;

          swift_unknownObjectRelease();
          v19 = v12[16];
          v18 = v12[17];
          __swift_project_boxed_opaque_existential_1(v12 + 13, v19);
          swift_unknownObjectRetain();
          v20 = sub_1D7772F68(v16);
          v21 = v12[4];
          v22 = v12[5];
          v34 = *(v18 + 8);

          v34(v20, v8, v21, v22, v35, v19, v18);

          __swift_project_boxed_opaque_existential_1((v39 + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_viewModelFactory), *(v39 + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_viewModelFactory + 24));
          sub_1D77D95C4(v8, v37, &v41);
          v23 = v42;
          v24 = v43;
          v25 = v44;
          v26 = v45;
          v27 = v46;
          v28 = v47;
          v29 = v39 + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_viewModel;
          v38 = *(v39 + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_viewModel);
          v30 = *(v39 + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_viewModel + 16);
          v36 = *(v39 + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_viewModel + 8);
          v31 = *(v39 + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_viewModel + 24);
          v32 = *(v39 + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_viewModel + 32);
          v33 = *(v39 + OBJC_IVAR____TtC16NewsSubscription32SubscriptionOffersViewController_viewModel + 40);
          *v29 = v41;
          *(v29 + 8) = v23;
          *(v29 + 16) = v24;
          *(v29 + 24) = v25;
          *(v29 + 32) = v26;
          *(v29 + 40) = v27;
          *(v29 + 48) = v28;
          sub_1D78127BC(&v41, v40);
          sub_1D7788AD0(v38, v36, v30, v31, v32, v33);
          sub_1D7786BC8(&v41, v8);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_1D7812818(&v41);
LABEL_16:
          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    goto LABEL_16;
  }
}

double sub_1D7810968(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if ([a1 context])
    {
      type metadata accessor for ErrorTransitionContext();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v6 = v5;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v7 = *(v6 + OBJC_IVAR____TtC16NewsSubscription22ErrorTransitionContext_title);
          v8 = *(v6 + OBJC_IVAR____TtC16NewsSubscription22ErrorTransitionContext_title + 8);
          v9 = v6 + OBJC_IVAR____TtC16NewsSubscription22ErrorTransitionContext_subtitle;
          v10 = *(v6 + OBJC_IVAR____TtC16NewsSubscription22ErrorTransitionContext_subtitle);
          v11 = *(v9 + 8);
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            sub_1D7812238(v7, v8, v10, v11, Strong);
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
          goto LABEL_13;
        }

LABEL_12:

LABEL_13:
        swift_unknownObjectRelease();
        return result;
      }

      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        sub_1D7812238(0, 0, 0, 0, v13);
        swift_unknownObjectRelease();
      }

      goto LABEL_12;
    }
  }

  return result;
}

void sub_1D7810AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(a5 + 48);

  v14 = sub_1D78B5C44();
  sub_1D78B3A64();
  v15 = sub_1D78B3A34();
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = sub_1D7752FB0;
  v16[5] = v12;
  v18[4] = sub_1D7812CE4;
  v18[5] = v16;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1D7752E68;
  v18[3] = &block_descriptor_43_0;
  v17 = _Block_copy(v18);

  [v13 fetchTagForTagID:v14 qualityOfService:25 callbackQueue:v15 completionHandler:v17];
  _Block_release(v17);
}

void sub_1D7810C70(uint64_t a1, id a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t))
{
  if (a2)
  {
    v6 = a2;
    v7 = a2;
    v8 = v6;
LABEL_3:
    a3(v8);

    return;
  }

  if (!a1)
  {
    sub_1D7812CF0();
    v8 = swift_allocError();
    v6 = v8;
    *v11 = 0;
    goto LABEL_3;
  }

  v10 = swift_unknownObjectRetain();
  a5(v10);

  swift_unknownObjectRelease();
}

uint64_t sub_1D7810D34(void *a1)
{
  v1 = [a1 publisherPaidOfferableConfigurations];
  if (!v1)
  {
    sub_1D78129E8(0);
    swift_allocObject();
    return sub_1D78B4104();
  }

  v2 = v1;
  sub_1D773F004(0, &qword_1EE08FC48, 0x1E69B54E8);
  v3 = sub_1D78B5EB4();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_16:

    MEMORY[0x1EEE9AC00](v17, v18);
    sub_1D7812A64(0, &qword_1EC9CA980, &qword_1EC9CA978, &type metadata for SubscriptionOffer, MEMORY[0x1E69E62F8]);
    sub_1D78B41F4();

    v19 = sub_1D78B4014();
    sub_1D775BFE8(0, &unk_1EC9CA960, &type metadata for SubscriptionOffer, MEMORY[0x1E69E62F8]);
    v20 = sub_1D78B4094();

    return v20;
  }

  v4 = sub_1D78B6534();
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_4:
  result = sub_1D78B64D4();
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA703700](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 purchaseID];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1D78B5C74();
        v13 = v12;

        v14 = off_1F52665F8[0];
        type metadata accessor for SubscriptionOffersDataManager();
        v14(v11, v13, 0);

        *(swift_allocObject() + 16) = v8;
        v8 = v8;
        v15 = sub_1D78B4014();
        sub_1D775BFE8(0, &qword_1EC9CA978, &type metadata for SubscriptionOffer, MEMORY[0x1E69E6720]);
        sub_1D78B4094();

        v16 = sub_1D78B4014();
        sub_1D78B4144();
      }

      else
      {
        sub_1D7812A64(0, &qword_1EC9CA970, &qword_1EC9CA978, &type metadata for SubscriptionOffer, MEMORY[0x1E69D6B18]);
        swift_allocObject();
        sub_1D78B4104();
      }

      ++v6;
      sub_1D78B64B4();
      sub_1D78B64E4();
      sub_1D78B64F4();
      sub_1D78B64C4();
    }

    while (v4 != v6);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1D781115C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v4 = type metadata accessor for DisplayOfferTransitionContext();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC16NewsSubscription29DisplayOfferTransitionContext_offers] = v3;
    v15.receiver = v5;
    v15.super_class = v4;

    v6 = objc_msgSendSuper2(&v15, sel_init);
    v7 = *(a2 + 72);
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      v10 = sub_1D78B5C44();
      v11 = [v9 fireEventWithName:v10 withContext:{v8, v15.receiver, v15.super_class}];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v12 = *(a2 + 72);
    if (v12)
    {
      v13 = v12;
      v14 = sub_1D78B5C44();
    }
  }
}

void sub_1D78112A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1D78B5C44();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7811330(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = objc_opt_self();

  v10 = [v9 sharedAccount];
  v11 = [v10 isUserSignedIntoiTunes];

  if (v11)
  {
    v12 = *(a5 + 56);
    sub_1D78B3A64();
    v13 = sub_1D78B3A34();
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1D7812C98;
    *(v14 + 24) = v8;
    v20 = sub_1D7812CD0;
    v21 = v14;
    v16 = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = sub_1D77814F0;
    v19 = &block_descriptor_34_0;
    v15 = _Block_copy(&v16);

    [v12 performEntitlementCheckWithIgnoreCache:1 callbackQueue:v13 completion:v15];
    _Block_release(v15);
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
    v17 = MEMORY[0x1E69E7CC0];
    a1(&v16);
  }
}

double sub_1D78114D0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  a3(v5, v4);

  return result;
}

uint64_t sub_1D7811564(uint64_t a1)
{
  sub_1D7812A64(0, &qword_1EC9CA970, &qword_1EC9CA978, &type metadata for SubscriptionOffer, MEMORY[0x1E69D6B18]);
  v1 = sub_1D78B4014();
  sub_1D7812B34(0);
  sub_1D7812BB8(&qword_1EC9CA990, sub_1D7812B34, MEMORY[0x1E69E6340]);
  v2 = sub_1D78B4064();

  return v2;
}

char *sub_1D7811644@<X0>(char *result@<X0>, char **a2@<X8>)
{
  v2 = 0;
  v3 = *result;
  v4 = *(*result + 16);
  v5 = *result + 32;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = (v5 + 16 * v2);
  while (1)
  {
    if (v4 == v2)
    {
      *a2 = v6;
      return result;
    }

    if (v2 >= *(v3 + 16))
    {
      break;
    }

    v8 = v7 + 2;
    ++v2;
    v9 = *v7;
    v7 += 2;
    if (v9)
    {
      v16 = a2;
      v10 = *(v8 - 1);
      v11 = v9;
      v12 = v10;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D777B4C4(0, *(v6 + 2) + 1, 1, v6);
        v6 = result;
      }

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        result = sub_1D777B4C4((v13 > 1), v14 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 2) = v14 + 1;
      v15 = &v6[16 * v14];
      *(v15 + 4) = v11;
      *(v15 + 5) = v12;
      a2 = v16;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void sub_1D7811788(unint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a5;
    v11 = a2;
    v12 = sub_1D78B6534();
    a2 = v11;
    a5 = v10;
    if (v12)
    {
LABEL_3:
      sub_1D781286C(0, a2, a3, a4, a5);
      v7 = sub_1D78B6424();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_1D78B6534();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x1E69E7CD0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v46 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v42 = v5;
    while (1)
    {
      v15 = MEMORY[0x1DA703700](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = sub_1D78B6234();
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v13 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_1D773F004(0, a3, a4);
        while (1)
        {
          v25 = *(*(v7 + 48) + 8 * v20);
          v26 = sub_1D78B6244();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v13 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            v5 = v42;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        v5 = v42;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v21) = v23 | v22;
        *(*(v7 + 48) + 8 * v20) = v17;
        v27 = *(v7 + 16);
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = *(v5 + 32 + 8 * v29);
      v31 = sub_1D78B6234();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v35 = *(v13 + 8 * (v33 >> 6));
      v36 = 1 << v33;
      if (((1 << v33) & v35) != 0)
      {
        v37 = ~v32;
        sub_1D773F004(0, a3, a4);
        while (1)
        {
          v38 = *(*(v7 + 48) + 8 * v33);
          v39 = sub_1D78B6244();

          if (v39)
          {
            break;
          }

          v33 = (v33 + 1) & v37;
          v34 = v33 >> 6;
          v35 = *(v13 + 8 * (v33 >> 6));
          v36 = 1 << v33;
          if (((1 << v33) & v35) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v34) = v36 | v35;
        *(*(v7 + 48) + 8 * v33) = v30;
        v40 = *(v7 + 16);
        v16 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v41;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

double sub_1D7811A74(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1D781298C();
    sub_1D78B5054();
    swift_allocObject();
    swift_unknownObjectRetain();
    sub_1D78B5004();
    *(swift_allocObject() + 16) = v4;
    swift_unknownObjectRetain();
    sub_1D78B5024();

    sub_1D78B5014();
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D7811B8C(void *a1, void *a2)
{
  aBlock[0] = a1;
  v3 = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  type metadata accessor for ASWebAuthenticationSessionError(0);
  if (!swift_dynamicCast() || (aBlock[0] = v9, sub_1D7812BB8(&unk_1EC9C9F70, type metadata accessor for ASWebAuthenticationSessionError, &unk_1D78BC6C4), sub_1D78B3184(), v9, v9 != 1))
  {
    v4 = sub_1D7785F5C();
    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    aBlock[4] = sub_1D77CAFAC;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D775FB6C;
    aBlock[3] = &block_descriptor_49;
    v6 = _Block_copy(aBlock);
    v7 = a2;

    [v4 dismissViewControllerAnimated:1 completion:v6];
    _Block_release(v6);
  }
}

void sub_1D7811D24(char a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_1D7785F5C();
    v8 = swift_allocObject();
    *(v8 + 16) = a1 & 1;
    *(v8 + 24) = v6;
    *(v8 + 32) = a2;
    v10[4] = sub_1D7812DB8;
    v10[5] = v8;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1D775FB6C;
    v10[3] = &block_descriptor_61;
    v9 = _Block_copy(v10);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    [v7 dismissViewControllerAnimated:1 completion:v9];
    _Block_release(v9);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D7811E44(uint64_t a1)
{
  v1 = sub_1D78B51D4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D78B51E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = sub_1D78B4C44();
    v13 = sub_1D78B4C34();
    v14 = MEMORY[0x1E69D8270];
    v10[3] = v12;
    v10[4] = v14;
    *v10 = v13;
    (*(v7 + 104))(v10, *MEMORY[0x1E69D8818], v6);
    (*(v2 + 104))(v5, *MEMORY[0x1E69D8850], v1);
    sub_1D78B4724();
    (*(v2 + 8))(v5, v1);
    swift_unknownObjectRelease();
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_1D7812054(uint64_t a1)
{
  v1 = sub_1D78B51D4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D78B51E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(v7 + 104))(v10, *MEMORY[0x1E69D8828], v6);
    (*(v2 + 104))(v5, *MEMORY[0x1E69D8848], v1);
    sub_1D78B4724();
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7812238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v41 = sub_1D78B51D4();
  v7 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1D78B51E4();
  v11 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1D78B44C4();
  v15 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && a4)
  {
  }

  else
  {
    v37 = "achineTransition8@16";
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = objc_opt_self();
    v21 = [v20 bundleForClass_];
    v22 = sub_1D78B3134();
    v36 = v23;
    v37 = v22;

    v24 = [v20 bundleForClass_];
    sub_1D78B3134();
  }

  sub_1D78B44B4();
  sub_1D78126BC(0);
  v26 = &v14[*(v25 + 48)];
  v27 = *(v25 + 64);
  v28 = v38;
  (*(v15 + 16))(v14, v18, v38);
  v29 = sub_1D78B4504();
  v30 = MEMORY[0x1E69D75D0];
  v26[3] = v29;
  v26[4] = v30;
  __swift_allocate_boxed_opaque_existential_1(v26);
  sub_1D78B44F4();
  v31 = *MEMORY[0x1E69D76D8];
  v32 = sub_1D78B45B4();
  (*(*(v32 - 8) + 104))(&v14[v27], v31, v32);
  v33 = v40;
  (*(v11 + 104))(v14, *MEMORY[0x1E69D8840], v40);
  v34 = v41;
  (*(v7 + 104))(v10, *MEMORY[0x1E69D8848], v41);
  sub_1D78B4724();
  (*(v7 + 8))(v10, v34);
  (*(v15 + 8))(v18, v28);
  return (*(v11 + 8))(v14, v33);
}

void sub_1D78126BC(uint64_t a1)
{
  if (!qword_1EC9CA938)
  {
    sub_1D78B44C4();
    sub_1D773C9B8(255, &unk_1EC9CA940, MEMORY[0x1E69D78A0]);
    sub_1D78B45B4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC9CA938);
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_1D781286C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_1D773F004(255, a3, a4);
    sub_1D774F288(a5, a3, a4);
    v9 = sub_1D78B6434();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D781298C()
{
  result = qword_1EC9CA950;
  if (!qword_1EC9CA950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA950);
  }

  return result;
}

void sub_1D78129E8(uint64_t a1)
{
  if (!qword_1EC9CA958)
  {
    sub_1D775BFE8(255, &unk_1EC9CA960, &type metadata for SubscriptionOffer, MEMORY[0x1E69E62F8]);
    v1 = sub_1D78B4184();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CA958);
    }
  }
}

void sub_1D7812A64(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D775BFE8(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

id sub_1D7812AFC@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *a2 = *a1;
  a2[1] = v3;
  v5 = v4;
  return v3;
}

void sub_1D7812B34(uint64_t a1)
{
  if (!qword_1EC9CA988)
  {
    sub_1D7812A64(255, &qword_1EC9CA970, &qword_1EC9CA978, &type metadata for SubscriptionOffer, MEMORY[0x1E69D6B18]);
    v1 = sub_1D78B5F34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CA988);
    }
  }
}

uint64_t sub_1D7812BB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D7812C00(uint64_t a1, uint64_t a2)
{
  sub_1D7812D44(0, &unk_1EE092220, qword_1EE092230, &protocol descriptor for WebAccessAuthenticatorType, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7812C98(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

unint64_t sub_1D7812CF0()
{
  result = qword_1EC9CA9A8;
  if (!qword_1EC9CA9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA9A8);
  }

  return result;
}

void sub_1D7812D44(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1D7812DC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7812E44()
{
  v1 = *(type metadata accessor for PurchaseContext(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_1D776FC54(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1D7812F04(uint64_t a1)
{
  if (!qword_1EC9CA740)
  {
    sub_1D7812A64(255, &qword_1EC9CA9B0, &unk_1EC9CA730, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    v1 = sub_1D78B62A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CA740);
    }
  }
}

void sub_1D7812F8C(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PurchaseContext(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  sub_1D780F990(a1, a2, v8, v2 + v6, v7);
}

char *PurchasingSpinnerViewController.__allocating_init(spinner:viewStyler:viewLayoutAttributesFactory:viewRenderer:)(_BYTE *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  LOBYTE(a1) = *a1;
  v11 = OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_spinnerView;
  *&v10[v11] = [objc_allocWithZone(type metadata accessor for PurchasingSpinnerView()) init];
  v10[OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_spinner] = a1;
  sub_1D774584C(a4, &v10[OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_viewRenderer]);
  sub_1D774584C(a2, &v10[OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_viewStyler]);
  sub_1D774584C(a3, &v10[OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_viewLayoutAttributesFactory]);
  v15.receiver = v10;
  v15.super_class = v5;
  v12 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, 0, 0);
  [v12 setModalPresentationStyle_];
  [v12 setModalTransitionStyle_];
  result = [v12 view];
  if (result)
  {
    v14 = result;
    [result addSubview_];

    __swift_destroy_boxed_opaque_existential_1(a4);
    __swift_destroy_boxed_opaque_existential_1(a3);
    __swift_destroy_boxed_opaque_existential_1(a2);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *PurchasingSpinnerViewController.init(spinner:viewStyler:viewLayoutAttributesFactory:viewRenderer:)(_BYTE *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  LOBYTE(a1) = *a1;
  v11 = OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_spinnerView;
  *&v5[v11] = [objc_allocWithZone(type metadata accessor for PurchasingSpinnerView()) init];
  v5[OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_spinner] = a1;
  sub_1D774584C(a4, &v5[OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_viewRenderer]);
  sub_1D774584C(a2, &v5[OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_viewStyler]);
  sub_1D774584C(a3, &v5[OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_viewLayoutAttributesFactory]);
  v15.receiver = v5;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, 0, 0);
  [v12 setModalPresentationStyle_];
  [v12 setModalTransitionStyle_];
  result = [v12 view];
  if (result)
  {
    v14 = result;
    [result addSubview_];

    __swift_destroy_boxed_opaque_existential_1(a4);
    __swift_destroy_boxed_opaque_existential_1(a3);
    __swift_destroy_boxed_opaque_existential_1(a2);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall PurchasingSpinnerViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewDidAppear_, a1);
  PurchasingSpinner.label.getter();
  v3 = sub_1D78B5C44();

  MEMORY[0x1DA703C70](v3);
}

Swift::Void __swiftcall PurchasingSpinnerViewController.viewWillLayoutSubviews()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewWillLayoutSubviews);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;

    v7 = [v0 traitCollection];
    sub_1D78136B8(v7, v4, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D78136B8(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = *(v4 + OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_viewLayoutAttributesFactory + 24);
  v9 = *(v4 + OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_viewLayoutAttributesFactory + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_viewLayoutAttributesFactory), v8);
  v10 = OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_spinner;
  v17 = *(v4 + OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_spinner);
  *v16 = a2;
  *&v16[1] = a3;
  v16[2] = a1;
  v11 = *(v9 + 8);
  v14 = a1;
  v11(v15, &v17, v16, v8, v9);
  v12 = *(v4 + OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_viewRenderer + 24);
  v13 = *(v4 + OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_viewRenderer + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_viewRenderer), v12);
  LOBYTE(v16[0]) = *(v4 + v10);
  (*(v13 + 8))(v16, v15, *(v4 + OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_spinnerView), v12, v13);
}

id PurchasingSpinnerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D78B5C44();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PurchasingSpinnerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7813B78(uint64_t a1)
{
  sub_1D78143E8(0);
  swift_allocObject();
  swift_unknownObjectRetain();
  sub_1D78B3F74();
  v2 = OBJC_IVAR____TtC16NewsSubscription41SubscriptionActivationEligibilityProvider_observers;
  v3 = swift_beginAccess();
  MEMORY[0x1DA703120](v3);
  if (*((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D78B5F04();
  }

  sub_1D78B5F24();
  return swift_endAccess();
}

double sub_1D7813C6C(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC16NewsSubscription41SubscriptionActivationEligibilityProvider_observers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v13 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
LABEL_20:
    v5 = sub_1D78B6534();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v11 = v3;
    v12 = v1;
    v3 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA703700](v3, v4);
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v1 = v12;
          v9 = v13;
          v3 = v11;
          goto LABEL_18;
        }
      }

      else
      {
        if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        v6 = *(v4 + 8 * v3 + 32);

        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_15;
        }
      }

      v1 = v6;
      v8 = sub_1D78B3F54();
      if (!v8 || (v1 = v8, swift_unknownObjectRelease(), v1 == a1))
      {
      }

      else
      {
        sub_1D78B64B4();
        sub_1D78B64E4();
        sub_1D78B64F4();
        v1 = &v13;
        sub_1D78B64C4();
      }

      ++v3;
      if (v7 == v5)
      {
        goto LABEL_16;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_18:

  *(v1 + v3) = v9;

  return result;
}

void sub_1D7813E18(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

double sub_1D7813F30(__int128 *a1, __int128 *a2)
{
  v3 = a1[9];
  v34 = a1[8];
  v35 = v3;
  v36 = *(a1 + 20);
  v4 = a1[5];
  v30 = a1[4];
  v31 = v4;
  v5 = a1[7];
  v32 = a1[6];
  v33 = v5;
  v6 = a1[1];
  v26 = *a1;
  v27 = v6;
  v7 = a1[3];
  v28 = a1[2];
  v29 = v7;
  v8 = a2[9];
  v45 = a2[8];
  v46 = v8;
  v47 = *(a2 + 20);
  v9 = a2[5];
  v41 = a2[4];
  v42 = v9;
  v10 = a2[7];
  v43 = a2[6];
  v44 = v10;
  v11 = a2[1];
  v37 = *a2;
  v38 = v11;
  v12 = a2[3];
  v39 = a2[2];
  v40 = v12;
  v13 = OBJC_IVAR____TtC16NewsSubscription41SubscriptionActivationEligibilityProvider_observers;
  swift_beginAccess();
  sub_1D7814390(0);
  sub_1D7814450();
  sub_1D78B5EF4();
  swift_endAccess();
  v56 = v34;
  v57 = v35;
  v58 = v36;
  v52 = v30;
  v53 = v31;
  v54 = v32;
  v55 = v33;
  v48 = v26;
  v49 = v27;
  v50 = v28;
  v51 = v29;
  nullsub_1();
  v67 = v34;
  v68 = v35;
  v69 = v36;
  v63 = v30;
  v64 = v31;
  v65 = v32;
  v66 = v33;
  v59 = v26;
  v60 = v27;
  v61 = v28;
  v62 = v29;
  sub_1D778CEAC(&v26, v24);
  v14 = sub_1D78144A8(&v59);
  v67 = v45;
  v68 = v46;
  v69 = v47;
  v63 = v41;
  v64 = v42;
  v65 = v43;
  v66 = v44;
  v59 = v37;
  v60 = v38;
  v61 = v39;
  v62 = v40;
  nullsub_1();
  v24[8] = v67;
  v24[9] = v68;
  v25 = v69;
  v24[4] = v63;
  v24[5] = v64;
  v24[6] = v65;
  v24[7] = v66;
  v24[0] = v59;
  v24[1] = v60;
  v24[2] = v61;
  v24[3] = v62;
  sub_1D778CEAC(&v37, v23);
  v15 = sub_1D78144A8(v24);
  if (v14 != v15)
  {
    v17 = v15;
    v18 = *(v2 + v13);
    if (v18 >> 62)
    {
      goto LABEL_18;
    }

    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v19)
    {
      v20 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA703700](v20, v18);
          v21 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_18:
            v19 = sub_1D78B6534();
            goto LABEL_4;
          }

          v21 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_14;
          }
        }

        v22 = sub_1D78B3F54();
        if (v22)
        {
          [v22 subscriptionActivationEligibilityDidChangeFromEligibility:v14 to:v17];
          swift_unknownObjectRelease();
        }

        ++v20;
      }

      while (v21 != v19);
    }
  }

  return result;
}

__int128 *sub_1D7814200(__int128 *result)
{
  if ((*(v1 + OBJC_IVAR____TtC16NewsSubscription41SubscriptionActivationEligibilityProvider_didProcessInitialOffer) & 1) == 0)
  {
    v2 = result;
    *(v1 + OBJC_IVAR____TtC16NewsSubscription41SubscriptionActivationEligibilityProvider_didProcessInitialOffer) = 1;
    sub_1D778C858(MEMORY[0x1E69E7CC8]);
    v3 = objc_allocWithZone(MEMORY[0x1E698C988]);
    sub_1D773D21C(0, &qword_1EE08FBA0, &protocolRef_NSObject);
    v4 = sub_1D78B5BB4();

    v5 = [v3 initWithDictionary_];

    if (qword_1EE093E80 != -1)
    {
      swift_once();
    }

    v6 = 0u;
    v7 = 0u;
    *&v8 = MEMORY[0x1E69E7CC0];
    BYTE8(v8) = 0;
    LOBYTE(v9) = byte_1EE09C310;
    *(&v9 + 1) = qword_1EE09C318;
    *&v10 = unk_1EE09C320;
    *(&v10 + 1) = v5;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0;

    sub_1D7813F30(&v6, v2);
    v17[8] = v14;
    v17[9] = v15;
    v18 = v16;
    v17[4] = v10;
    v17[5] = v11;
    v17[6] = v12;
    v17[7] = v13;
    v17[0] = v6;
    v17[1] = v7;
    v17[2] = v8;
    v17[3] = v9;
    return sub_1D778D0B0(v17);
  }

  return result;
}

void sub_1D7814390(uint64_t a1)
{
  if (!qword_1EE090090)
  {
    sub_1D78143E8(255);
    v1 = sub_1D78B5F34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE090090);
    }
  }
}

void sub_1D78143E8(uint64_t a1)
{
  if (!qword_1EE0952E8)
  {
    sub_1D773D21C(255, &qword_1EE08FC30, &protocolRef_SXSubscriptionActivationEligibilityObserving);
    v1 = sub_1D78B3F64();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0952E8);
    }
  }
}

unint64_t sub_1D7814450()
{
  result = qword_1EE0952F8;
  if (!qword_1EE0952F8)
  {
    sub_1D78143E8(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0952F8);
  }

  return result;
}

uint64_t sub_1D78144A8(__int128 *a1)
{
  v1 = a1[7];
  v2 = a1[9];
  v22 = a1[8];
  v23 = v2;
  v3 = a1[3];
  v4 = a1[5];
  v18 = a1[4];
  v19 = v4;
  v5 = a1[5];
  v6 = a1[7];
  v20 = a1[6];
  v21 = v6;
  v7 = a1[1];
  v15[0] = *a1;
  v15[1] = v7;
  v8 = a1[3];
  v10 = *a1;
  v9 = a1[1];
  v16 = a1[2];
  v17 = v8;
  v11 = a1[9];
  v32 = v22;
  v33 = v11;
  v28 = v18;
  v29 = v5;
  v30 = v20;
  v31 = v1;
  v25[0] = v10;
  v25[1] = v9;
  v24 = *(a1 + 20);
  v34 = *(a1 + 20);
  v26 = v16;
  v27 = v3;
  if (sub_1D775F3CC(v25) == 1)
  {
    return 1;
  }

  if (!*(&v29 + 1))
  {
    if (!AMSMarketingItem.isCIPOffer()())
    {
      goto LABEL_6;
    }

LABEL_9:
    sub_1D7782600(v15);
    return 3;
  }

  if (__PAIR128__(0x80000001D78CF0C0, 0xD000000000000019) == v32 || (sub_1D78B6724() & 1) != 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (BYTE8(v26))
  {
    sub_1D7782600(v15);
    return 1;
  }

  if (*(&v29 + 1))
  {
    if (__PAIR128__(0x80000001D78CF100, 0xD000000000000025) == v32)
    {
      sub_1D7782600(v15);
      return 4;
    }

    v13 = sub_1D78B6724();
  }

  else
  {
    v13 = AMSMarketingItem.isBundleHardwareOffer()();
  }

  v14 = v13;
  sub_1D7782600(v15);
  if ((v14 & 1) == 0)
  {
    return 1;
  }

  return 4;
}

void sub_1D7814634()
{
  if (!qword_1EE090600)
  {
    v0 = sub_1D78B62A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE090600);
    }
  }
}

uint64_t sub_1D7814684(uint64_t a1, uint64_t a2)
{
  sub_1D7814634();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D78146EC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_1D78147AC()
{
  v1 = *v0;
  v2 = type metadata accessor for HideMyEmailSignupDataModel(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D78B3AF4();

  v6 = (*(*(v1 + 88) + 40))(v5, *(v1 + 80));
  sub_1D7815758(v5, type metadata accessor for HideMyEmailSignupDataModel);
  v8[1] = v6;
  sub_1D7815870(0);
  sub_1D78158EC();
  sub_1D78B47E4();

  return result;
}

uint64_t sub_1D781493C()
{
  v1 = type metadata accessor for HideMyEmailSignupDataModel(0);
  v3 = MEMORY[0x1EEE9AC00](v1, v2);
  v5 = &v104[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v9 = &v104[-v8];
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v104[-v12];
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v104[-v15];
  v17 = *(v0 + *(*v0 + 120));

  sub_1D78B3AF4();

  sub_1D78157B8(0);
  sub_1D78B4594();
  v18 = v133 >> 6;
  if (!v18)
  {
    sub_1D77CFA24(v127, v128, v129, v130, v131, v132, v133);
    v21 = *v16;
    if (v21 != 2 && (v21 & 1) == 0)
    {
      v87 = *(v17 + 16);
      v112 = *(v16 + 1);
      v88 = v112;
      v113 = v87;
      v89 = *(v16 + 3);
      v108 = *(v16 + 2);
      v90 = *(v16 + 5);
      v121 = *(v16 + 4);
      v122 = v90;
      v91 = *(v16 + 3);
      v119 = *(v16 + 2);
      v120 = v91;
      v92 = v16[96];
      v110 = *(v16 + 13);
      v93 = v110;
      v111 = v89;
      v94 = *(v1 + 40);
      sub_1D7770378(&v16[v94], &v9[v94]);
      v95 = *&v16[*(v1 + 44)];
      *v9 = 0;
      *(v9 + 1) = v88;
      v96 = v108;
      *(v9 + 2) = v108;
      *(v9 + 3) = v89;
      v97 = v120;
      *(v9 + 2) = v119;
      *(v9 + 3) = v97;
      v98 = v122;
      *(v9 + 4) = v121;
      *(v9 + 5) = v98;
      v9[96] = v92;
      *(v9 + 13) = v93;
      *&v9[*(v1 + 44)] = v95;
      v34 = v95;
      LODWORD(v109) = v92 ^ 1;
      LOBYTE(v92) = *v9;
      v99 = *(v9 + 5);
      v125 = *(v9 + 4);
      v126 = v99;
      v100 = *(v9 + 3);
      v123 = *(v9 + 2);
      v124 = v100;
      sub_1D777044C(&v9[v94], &v13[*(v1 + 40)]);
      *v13 = v92;
      v101 = v111;
      *(v13 + 1) = v112;
      *(v13 + 2) = v96;
      *(v13 + 3) = v101;
      v102 = v124;
      *(v13 + 2) = v123;
      *(v13 + 3) = v102;
      v103 = v126;
      *(v13 + 4) = v125;
      *(v13 + 5) = v103;
      v13[96] = v109;
      *(v13 + 13) = v110;
      *&v13[*(v1 + 44)] = v34;

      goto LABEL_12;
    }

    v22 = *(v17 + 16);
    v24 = *(v16 + 1);
    v110 = *(v16 + 2);
    v23 = v110;
    v111 = v24;
    v25 = *(v16 + 3);
    v26 = *(v16 + 5);
    v121 = *(v16 + 4);
    v122 = v26;
    v27 = *(v16 + 3);
    v119 = *(v16 + 2);
    v120 = v27;
    LODWORD(v109) = v16[96];
    v112 = *(v16 + 13);
    v28 = v112;
    v113 = v22;
    v29 = *(v1 + 40);
    sub_1D7770378(&v16[v29], &v9[v29]);
    v30 = *&v16[*(v1 + 44)];
    *v9 = 0;
    *(v9 + 1) = v24;
    *(v9 + 2) = v23;
    *(v9 + 3) = v25;
    v31 = v25;
    v32 = v120;
    *(v9 + 2) = v119;
    *(v9 + 3) = v32;
    v33 = v122;
    *(v9 + 4) = v121;
    *(v9 + 5) = v33;
    v9[96] = v109;
    *(v9 + 13) = v28;
    *&v9[*(v1 + 44)] = v30;
    v34 = v30;
    LOBYTE(v23) = *v9;
    v35 = *(v9 + 5);
    v125 = *(v9 + 4);
    v126 = v35;
    v36 = *(v9 + 3);
    v123 = *(v9 + 2);
    v124 = v36;
    sub_1D777044C(&v9[v29], &v13[*(v1 + 40)]);
    *v13 = v23;
    v37 = v110;
    *(v13 + 1) = v111;
    *(v13 + 2) = v37;
    *(v13 + 3) = v31;
    v38 = v124;
    *(v13 + 2) = v123;
    *(v13 + 3) = v38;
    v39 = v126;
    *(v13 + 4) = v125;
    *(v13 + 5) = v39;
    v13[96] = 1;
    v40 = v112;
LABEL_11:
    *(v13 + 13) = v40;
    *&v13[*(v1 + 44)] = v34;

LABEL_12:

    sub_1D7815814(&v119, &v115);
    swift_unknownObjectRetain();
    v85 = v34;
    sub_1D78B3AD4();

    sub_1D7815758(v13, type metadata accessor for HideMyEmailSignupDataModel);
    v20 = v16;
    return sub_1D7815758(v20, type metadata accessor for HideMyEmailSignupDataModel);
  }

  v112 = v1;
  v113 = v17;
  if (v18 != 1)
  {
    v41 = *(v16 + 2);
    v108 = *(v16 + 1);
    v42 = v108;
    v109 = v127;
    v110 = v128;
    v111 = v41;
    v43 = *(v16 + 3);
    v44 = *(v16 + 5);
    v117 = *(v16 + 4);
    v118 = v44;
    v45 = *(v16 + 3);
    v115 = *(v16 + 2);
    v116 = v45;
    v105 = v16[96];
    v106 = *(v16 + 13);
    v46 = v106;
    v47 = v112;
    v48 = *(v112 + 40);
    sub_1D7770378(&v16[v48], &v5[v48]);
    v107 = *&v16[*(v47 + 44)];
    v49 = v107;
    *v5 = 0;
    v50 = v111;
    *(v5 + 1) = v42;
    *(v5 + 2) = v50;
    *(v5 + 3) = v43;
    v51 = v43;
    v52 = v116;
    *(v5 + 2) = v115;
    *(v5 + 3) = v52;
    v53 = v118;
    *(v5 + 4) = v117;
    *(v5 + 5) = v53;
    v5[96] = v105;
    *(v5 + 13) = v46;
    *&v5[*(v47 + 44)] = v49;
    LOBYTE(v43) = *v5;
    v54 = *(v5 + 5);
    v121 = *(v5 + 4);
    v122 = v54;
    v55 = *(v5 + 3);
    v119 = *(v5 + 2);
    v120 = v55;
    v56 = *(v47 + 40);
    sub_1D777044C(&v5[v48], &v9[v56]);
    *v9 = v43;
    v57 = v111;
    *(v9 + 1) = v108;
    *(v9 + 2) = v57;
    v58 = v51;
    *(v9 + 3) = v51;
    v59 = v120;
    *(v9 + 2) = v119;
    *(v9 + 3) = v59;
    v60 = v122;
    *(v9 + 4) = v121;
    *(v9 + 5) = v60;
    v9[96] = 0;
    v61 = v106;
    v62 = v107;
    *(v9 + 13) = v106;
    *&v9[*(v47 + 44)] = v62;
    LODWORD(v108) = *v9;
    v63 = *(v9 + 5);
    v125 = *(v9 + 4);
    v126 = v63;
    v64 = *(v9 + 3);
    v123 = *(v9 + 2);
    v124 = v64;
    sub_1D7770378(&v9[v56], &v13[*(v47 + 40)]);
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain_n();
    v65 = v62;

    sub_1D7815814(&v115, v114);
    sub_1D7815814(&v123, v114);
    sub_1D7815758(v9, type metadata accessor for HideMyEmailSignupDataModel);
    *v13 = v108;
    v66 = v110;
    *(v13 + 1) = v109;
    *(v13 + 2) = v66;
    *(v13 + 3) = v58;
    v67 = v124;
    *(v13 + 2) = v123;
    *(v13 + 3) = v67;
    v68 = v126;
    *(v13 + 4) = v125;
    *(v13 + 5) = v68;
    v13[96] = 0;
    *(v13 + 13) = v61;
    *&v13[*(v47 + 44)] = v65;

    sub_1D78B3AD4();

    sub_1D7815758(v13, type metadata accessor for HideMyEmailSignupDataModel);
    v20 = v16;
    return sub_1D7815758(v20, type metadata accessor for HideMyEmailSignupDataModel);
  }

  sub_1D77CFA24(v127, v128, v129, v130, v131, v132, v133);
  v19 = *v16;
  if (v19 == 2 || (v19 & 1) == 0)
  {
    v1 = v112;
    v113 = *(v113 + 16);
    v70 = *(v16 + 1);
    v109 = *(v16 + 2);
    v69 = v109;
    v110 = v70;
    v71 = *(v16 + 3);
    v72 = *(v16 + 5);
    v121 = *(v16 + 4);
    v122 = v72;
    v73 = *(v16 + 3);
    v119 = *(v16 + 2);
    v120 = v73;
    LODWORD(v108) = v16[96];
    v111 = *(v16 + 13);
    v74 = v111;
    v75 = *(v112 + 40);
    sub_1D7770378(&v16[v75], &v9[v75]);
    v76 = *&v16[*(v1 + 44)];
    *v9 = 1;
    *(v9 + 1) = v70;
    *(v9 + 2) = v69;
    *(v9 + 3) = v71;
    v77 = v71;
    v78 = v120;
    *(v9 + 2) = v119;
    *(v9 + 3) = v78;
    v79 = v122;
    *(v9 + 4) = v121;
    *(v9 + 5) = v79;
    v9[96] = v108;
    *(v9 + 13) = v74;
    *&v9[*(v1 + 44)] = v76;
    v34 = v76;
    LOBYTE(v69) = *v9;
    v80 = *(v9 + 5);
    v125 = *(v9 + 4);
    v126 = v80;
    v81 = *(v9 + 3);
    v123 = *(v9 + 2);
    v124 = v81;
    sub_1D777044C(&v9[v75], &v13[*(v1 + 40)]);
    *v13 = v69;
    v82 = v109;
    *(v13 + 1) = v110;
    *(v13 + 2) = v82;
    *(v13 + 3) = v77;
    v83 = v124;
    *(v13 + 2) = v123;
    *(v13 + 3) = v83;
    v84 = v126;
    *(v13 + 4) = v125;
    *(v13 + 5) = v84;
    v13[96] = 0;
    v40 = v111;
    goto LABEL_11;
  }

  v20 = v16;
  return sub_1D7815758(v20, type metadata accessor for HideMyEmailSignupDataModel);
}

uint64_t sub_1D7814FF4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for HideMyEmailSignupDataModel(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + *(*v2 + 128));
  v10 = v9[3];
  v11 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v10);

  sub_1D78B3AF4();

  v12 = *(v8 + 13);
  swift_unknownObjectRetain();
  sub_1D7815758(v8, type metadata accessor for HideMyEmailSignupDataModel);
  (*(v11 + 8))(v12, a1, a2, v10, v11);
  return swift_unknownObjectRelease();
}

void *sub_1D7815130()
{
  v0 = type metadata accessor for PurchaseContext(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = off_1F5271818;
    type metadata accessor for HideMyEmailSignupDataManager();
    v6(v3);
    v7 = v5[14];
    v8 = v5[15];
    __swift_project_boxed_opaque_existential_1(v5 + 11, v7);
    v11 = 0;
    v10 = 2;
    (*(v8 + 24))(&v11, &v10, v3, v7, v8);
    swift_unknownObjectRelease();
    return sub_1D7815758(v3, type metadata accessor for PurchaseContext);
  }

  return result;
}

uint64_t sub_1D7815268()
{
  v0 = type metadata accessor for PurchaseContext(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HideMyEmailSignupDataModel(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D78B3AF4();

  v8 = off_1F5271818;
  type metadata accessor for HideMyEmailSignupDataManager();
  v8(v3);
  sub_1D7815454(v7, v16);
  v9 = v17;
  v10 = v18;
  v11 = v19;
  v14 = v16[1];
  v15 = v16[0];
  sub_1D77703DC(*(v3 + 9), *(v3 + 10), *(v3 + 11), *(v3 + 12), *(v3 + 13), *(v3 + 14), v3[120]);
  v12 = v15;
  *(v3 + 88) = v14;
  *(v3 + 72) = v12;
  *(v3 + 13) = v9;
  *(v3 + 14) = v10;
  v3[120] = v11;
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D78B13E0(v3);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_1D7815758(v7, type metadata accessor for HideMyEmailSignupDataModel);
  return sub_1D7815758(v3, type metadata accessor for PurchaseContext);
}

unsigned __int8 *sub_1D7815454@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (v3 == 2)
  {
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 48) = 2;
  }

  else
  {
    v4 = result;
    if (v3)
    {
      if (qword_1EC9C8448 != -1)
      {
        swift_once();
      }

      v5 = qword_1EC9D9DF0;
      v6 = sub_1D78B60A4();
      sub_1D78B42C4("HideMyEmailSignupInteractor: user tapped continue after selecting to hide.", 74, 2, &dword_1D7739000, v5, v6, MEMORY[0x1E69E7CC0]);
      v7 = *(v4 + 7);
      v8 = *(v4 + 8);
      v9 = *(v4 + 9);
      v11 = *(v4 + 10);
      v10 = *(v4 + 11);
      *a2 = *(v4 + 6);
      *(a2 + 8) = v7;
      *(a2 + 16) = v8;
      *(a2 + 24) = v9;
      *(a2 + 32) = v11;
      *(a2 + 40) = v10;
      *(a2 + 48) = 1;
    }

    else
    {
      if (qword_1EC9C8448 != -1)
      {
        swift_once();
      }

      v12 = qword_1EC9D9DF0;
      v13 = sub_1D78B60A4();
      sub_1D78B42C4("HideMyEmailSignupInteractor: user tapped continue after selecting to share.", 75, 2, &dword_1D7739000, v12, v13, MEMORY[0x1E69E7CC0]);
      v14 = *(v4 + 2);
      *a2 = *(v4 + 1);
      *(a2 + 8) = v14;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0;
    }
  }

  return result;
}

char *sub_1D78155CC()
{
  v1 = *v0;
  sub_1D776ABA8((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 128)));
  return v0;
}

uint64_t sub_1D781568C()
{
  sub_1D78155CC();

  return swift_deallocClassInstance();
}

uint64_t sub_1D78156FC(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D7815758(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D78157B8(uint64_t a1)
{
  if (!qword_1EC9CA2C0)
  {
    sub_1D77CE220();
    v1 = sub_1D78B45A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CA2C0);
    }
  }
}

void sub_1D7815870(uint64_t a1)
{
  if (!qword_1EC9CAFA0)
  {
    sub_1D77CE118();
    sub_1D77CE220();
    v1 = sub_1D78B47B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CAFA0);
    }
  }
}

unint64_t sub_1D78158EC()
{
  result = qword_1EC9CAA78;
  if (!qword_1EC9CAA78)
  {
    sub_1D7815870(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAA78);
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D78159A8()
{
  sub_1D77CF7F0(v0, v5);
  v1 = v5[72];
  sub_1D78B6454();

  if (v1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1DA702FF0](v2, v3);

  MEMORY[0x1DA702FF0](0xD000000000000011, 0x80000001D78D8FA0);

  return 0x6C69616D65;
}

uint64_t sub_1D7815ABC(uint64_t a1, uint64_t a2)
{
  sub_1D77CF7F0(a1, v10);
  sub_1D77CF7F0(a2, &v9);
  v3 = sub_1D78159A8();
  v5 = v4;
  if (v3 == sub_1D78159A8() && v5 == v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D78B6724();
  }

  return v7 & 1;
}

uint64_t sub_1D7815B64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_1D7815BAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1D7815C2C(char *a1)
{
  v2 = *a1;
  sub_1D774584C(v1 + 16, v12);
  sub_1D774584C(v1 + 56, v11);
  sub_1D774584C(v1 + 96, v10);
  v3 = type metadata accessor for PurchasingSpinnerViewController();
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_spinnerView;
  *&v4[v5] = [objc_allocWithZone(type metadata accessor for PurchasingSpinnerView()) init];
  v4[OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_spinner] = v2;
  sub_1D774584C(v10, &v4[OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_viewRenderer]);
  sub_1D774584C(v12, &v4[OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_viewStyler]);
  sub_1D774584C(v11, &v4[OBJC_IVAR____TtC16NewsSubscription31PurchasingSpinnerViewController_viewLayoutAttributesFactory]);
  v9.receiver = v4;
  v9.super_class = v3;
  v6 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
  [v6 setModalPresentationStyle_];
  [v6 setModalTransitionStyle_];
  result = [v6 view];
  if (result)
  {
    v8 = result;
    [result addSubview_];

    __swift_destroy_boxed_opaque_existential_1(v10);
    __swift_destroy_boxed_opaque_existential_1(v11);
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7815DB0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7815E40()
{
  sub_1D77FD188(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B42B4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_1D7815F34(0, &unk_1EE095278, sub_1D77FD188, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

void sub_1D7815F34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for HideMyEmailSignupUpdateBlueprintModifier(uint64_t a1)
{
  result = qword_1EC9CAA80;
  if (!qword_1EC9CAA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D781600C(uint64_t a1)
{
  result = type metadata accessor for HideMyEmailSignupDataModel(319);
  if (v2 <= 0x3F)
  {
    result = sub_1D78160A0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D78160A0()
{
  result = qword_1EC9CAA90;
  if (!qword_1EC9CAA90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9CAA90);
  }

  return result;
}

uint64_t sub_1D7816108(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v23[2] = a3;
  v24 = a2;
  v23[1] = a1;
  v6 = sub_1D78B4794();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7816448(0, &qword_1EC9CAAA0, MEMORY[0x1E69D7ED8]);
  v23[0] = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v23 - v14;
  sub_1D7816448(0, &qword_1EC9CA2A8, MEMORY[0x1E69D87F8]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = v23 - v20;
  __swift_project_boxed_opaque_existential_1((v4 + *(a4 + 24)), *(v4 + *(a4 + 24) + 24));
  sub_1D7854B38((v4 + *(a4 + 20)), v21);
  (*(v7 + 104))(v10, *MEMORY[0x1E69D7A40], v6);
  sub_1D77CE118();
  sub_1D77CE220();
  sub_1D78164CC();
  sub_1D78B4A34();
  (*(v7 + 8))(v10, v6);
  v24(v15);
  (*(v12 + 8))(v15, v23[0]);
  return (*(v18 + 8))(v21, v17);
}

unint64_t sub_1D78163F0()
{
  result = qword_1EC9CAA98;
  if (!qword_1EC9CAA98)
  {
    type metadata accessor for HideMyEmailSignupUpdateBlueprintModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAA98);
  }

  return result;
}

void sub_1D7816448(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for HideMyEmailSignupSectionDescriptor;
    v8[1] = &type metadata for HideMyEmailSignupModel;
    v8[2] = sub_1D77CE118();
    v8[3] = sub_1D77CE220();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D78164CC()
{
  result = qword_1EC9CAAA8;
  if (!qword_1EC9CAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAAA8);
  }

  return result;
}

id sub_1D7816520(uint64_t a1, uint64_t a2, id a3, char a4)
{
  v7 = [a3 horizontalSizeClass];
  v8 = objc_opt_self();
  v9 = 18.0;
  if ((a4 & 1) == 0)
  {
    v9 = 22.0;
  }

  if (v7 != 1)
  {
    v9 = 24.0;
  }

  v10 = [v8 systemFontOfSize:v9 weight:*MEMORY[0x1E69DB968]];
  v11 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v12 = v10;
  v13 = [v11 init];
  [v13 setAlignment_];
  [v13 setLineHeightMultiple_];
  v14 = [a3 horizontalSizeClass];
  v15 = 28.6;
  if (v14 == 1)
  {
    v15 = 22.0;
  }

  [v13 setMinimumLineHeight_];
  sub_1D78179D0(0, &qword_1EE08FA30, sub_1D778AFF4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BF690;
  v17 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v19 = v4[5];
  v18 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v19);
  v20 = *(v18 + 16);
  v21 = v17;
  v20(v35, v19, v18);
  v22 = v35[2];
  sub_1D7784CF4(v35);
  v23 = sub_1D773F004(0, &qword_1EE08FC00, 0x1E69DC888);
  *(inited + 40) = v22;
  v24 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v23;
  *(inited + 72) = v24;
  v25 = sub_1D773F004(0, &qword_1EE08FC10, 0x1E69DB878);
  *(inited + 80) = v12;
  v26 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v25;
  *(inited + 112) = v26;
  *(inited + 144) = sub_1D773F004(0, &unk_1EE08FCD8, 0x1E69DB7C8);
  *(inited + 120) = v13;
  v27 = v24;
  v28 = v26;
  v29 = v13;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4(0);
  swift_arrayDestroy();
  v30 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v31 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v32 = sub_1D78B5BB4();

  v33 = [v30 initWithString:v31 attributes:v32];

  return v33;
}

void sub_1D7816848(void *a1)
{
  v3 = [a1 titleLabel];
  if (v3)
  {
    v4 = v3;
    [v3 setTextAlignment_];
  }

  v5 = [a1 titleLabel];
  if (v5)
  {
    v6 = v5;
    [v5 setNumberOfLines_];
  }

  v7 = [a1 titleLabel];
  if (v7)
  {
    v8 = v7;
    [v7 setAdjustsFontSizeToFitWidth_];
  }

  v9 = [a1 titleLabel];
  if (v9)
  {
    v10 = v9;
    [objc_opt_self() labelFontSize];
    [v10 setMinimumScaleFactor_];
  }

  v12 = v1[5];
  v13 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v12);
  (*(v13 + 16))(v15, v12, v13);
  v14 = v15[4];
  sub_1D7784CF4(v15);
  [a1 setBackgroundColor_];
}

id sub_1D78169B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1D78179D0(0, &qword_1EE08FA30, sub_1D778AFF4, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D78BCB50;
    v6 = *MEMORY[0x1E69DB650];
    *(inited + 32) = *MEMORY[0x1E69DB650];
    v7 = v4[5];
    v8 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v7);
    v9 = *(v8 + 16);
    v53 = v6;
    v10 = v4;
    v9(v54, v7, v8);
    v11 = v54[6];
    sub_1D7784CF4(v54);
    v52 = sub_1D773F004(0, &qword_1EE08FC00, 0x1E69DC888);
    *(inited + 40) = v11;
    v12 = *MEMORY[0x1E69DB648];
    *(inited + 64) = v52;
    *(inited + 72) = v12;
    v50 = objc_opt_self();
    v13 = *MEMORY[0x1E69DB958];
    v51 = v12;
    v14 = [v50 systemFontOfSize:13.0 weight:v13];
    v15 = sub_1D773F004(0, &qword_1EE08FC10, 0x1E69DB878);
    *(inited + 104) = v15;
    *(inited + 80) = v14;
    sub_1D77FED68(inited);
    swift_setDeallocating();
    sub_1D778AFF4(0);
    swift_arrayDestroy();
    v16 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v17 = sub_1D78B5C44();
    type metadata accessor for Key(0);
    sub_1D778B060();
    v18 = sub_1D78B5BB4();

    v49 = [v16 initWithString:v17 attributes:v18];

    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_1D78BCB50;
    *(v19 + 32) = v53;
    v20 = v10[5];
    v21 = v10[6];
    __swift_project_boxed_opaque_existential_1(v10 + 2, v20);
    (*(v21 + 16))(v55, v20, v21);
    v22 = v56;
    sub_1D7784CF4(v55);
    *(v19 + 40) = v22;
    *(v19 + 64) = v52;
    *(v19 + 72) = v51;
    v23 = [v50 systemFontOfSize_];
    *(v19 + 104) = v15;
    *(v19 + 80) = v23;
    sub_1D77FED68(v19);
    swift_setDeallocating();
    swift_arrayDestroy();
    v24 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v25 = sub_1D78B5C44();
    v26 = sub_1D78B5BB4();

    v27 = [v24 initWithString:v25 attributes:v26];

    v28 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    v29 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v30 = sub_1D78B5C44();
    v31 = [v29 initWithString_];

    [v28 appendAttributedString_];
    [v28 appendAttributedString_];
  }

  else
  {
    sub_1D78179D0(0, &qword_1EE08FA30, sub_1D778AFF4, MEMORY[0x1E69E6F90]);
    v32 = swift_initStackObject();
    *(v32 + 16) = xmmword_1D78BCB50;
    v33 = *MEMORY[0x1E69DB650];
    *(v32 + 32) = *MEMORY[0x1E69DB650];
    v34 = v4[5];
    v35 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v34);
    v36 = *(v35 + 16);
    v37 = v33;
    v36(v55, v34, v35);
    v38 = v56;
    sub_1D7784CF4(v55);
    v39 = sub_1D773F004(0, &qword_1EE08FC00, 0x1E69DC888);
    *(v32 + 40) = v38;
    v40 = *MEMORY[0x1E69DB648];
    *(v32 + 64) = v39;
    *(v32 + 72) = v40;
    v41 = objc_opt_self();
    v42 = *MEMORY[0x1E69DB958];
    v43 = v40;
    v44 = [v41 systemFontOfSize:13.0 weight:v42];
    *(v32 + 104) = sub_1D773F004(0, &qword_1EE08FC10, 0x1E69DB878);
    *(v32 + 80) = v44;
    sub_1D77FED68(v32);
    swift_setDeallocating();
    sub_1D778AFF4(0);
    swift_arrayDestroy();
    v45 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v46 = sub_1D78B5C44();
    type metadata accessor for Key(0);
    sub_1D778B060();
    v47 = sub_1D78B5BB4();

    v28 = [v45 initWithString:v46 attributes:v47];
  }

  return v28;
}

id sub_1D7816FD4(uint64_t a1, uint64_t a2, id a3)
{
  v4 = [a3 horizontalSizeClass];
  v5 = objc_opt_self();
  v6 = 15.0;
  if (v4 == 1)
  {
    v6 = 14.0;
  }

  v7 = [v5 systemFontOfSize_];
  sub_1D78179D0(0, &qword_1EE08FA30, sub_1D778AFF4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BCB50;
  v9 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v10 = sub_1D773F004(0, &qword_1EE08FC10, 0x1E69DB878);
  v11 = MEMORY[0x1E69DB650];
  *(inited + 40) = v7;
  v12 = *v11;
  *(inited + 64) = v10;
  *(inited + 72) = v12;
  v14 = v3[5];
  v13 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v14);
  v15 = *(v13 + 16);
  v16 = v7;
  v17 = v9;
  v18 = v12;
  v15(v25, v14, v13);
  v19 = v25[5];
  sub_1D7784CF4(v25);
  *(inited + 104) = sub_1D773F004(0, &qword_1EE08FC00, 0x1E69DC888);
  *(inited + 80) = v19;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4(0);
  swift_arrayDestroy();
  v20 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v21 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v22 = sub_1D78B5BB4();

  v23 = [v20 initWithString:v21 attributes:v22];

  return v23;
}

id sub_1D781723C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v3 setAlignment_];
  sub_1D78179D0(0, &qword_1EE08FA30, sub_1D778AFF4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BF690;
  v5 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v7 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v7);
  v8 = *(v6 + 16);
  v9 = v5;
  v8(v26, v7, v6);
  v10 = v26[3];
  sub_1D7784CF4(v26);
  v11 = sub_1D773F004(0, &qword_1EE08FC00, 0x1E69DC888);
  *(inited + 40) = v10;
  v12 = *MEMORY[0x1E69DB688];
  *(inited + 64) = v11;
  *(inited + 72) = v12;
  v13 = sub_1D773F004(0, &unk_1EE08FCD8, 0x1E69DB7C8);
  *(inited + 80) = v3;
  v14 = *MEMORY[0x1E69DB648];
  *(inited + 104) = v13;
  *(inited + 112) = v14;
  v15 = objc_opt_self();
  v16 = *MEMORY[0x1E69DB978];
  v17 = v12;
  v18 = v3;
  v19 = v14;
  v20 = [v15 systemFontOfSize:12.0 weight:v16];
  *(inited + 144) = sub_1D773F004(0, &qword_1EE08FC10, 0x1E69DB878);
  *(inited + 120) = v20;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4(0);
  swift_arrayDestroy();
  v21 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v22 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v23 = sub_1D78B5BB4();

  v24 = [v21 initWithString:v22 attributes:v23];

  return v24;
}

uint64_t sub_1D78174DC(uint64_t a1)
{
  v18[1] = a1;
  v1 = sub_1D78B48D4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78179D0(0, &qword_1EE090408, MEMORY[0x1E69D7B70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v18 - v8;
  sub_1D777246C();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D78BCCA0;
  v11 = objc_opt_self();
  v12 = [v11 blackColor];
  v13 = [v12 colorWithAlphaComponent_];

  *(v10 + 32) = v13;
  v14 = [v11 blackColor];
  v15 = [v14 colorWithAlphaComponent_];

  *(v10 + 40) = v15;
  (*(v2 + 104))(v5, *MEMORY[0x1E69D7B60], v1);
  sub_1D78B48C4();
  v16 = sub_1D78B48E4();
  (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  return sub_1D78B4554();
}

void sub_1D7817748(void *a1)
{
  [a1 setEditable_];
  [a1 setScrollEnabled_];
  [a1 setSelectable_];
  [a1 setTextAlignment_];
  v2 = [a1 textContainer];
  [v2 setMaximumNumberOfLines_];

  [a1 setTextContainerInset_];
  v3 = [a1 textContainer];
  [v3 setLineFragmentPadding_];

  v4 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor_];
}

void sub_1D781788C(void *a1)
{
  [a1 setEditable_];
  [a1 setScrollEnabled_];
  [a1 setDataDetectorTypes_];
  [a1 setTextAlignment_];
  v2 = [a1 textContainer];
  [v2 setMaximumNumberOfLines_];

  [a1 setTextContainerInset_];
  v3 = [a1 textContainer];
  [v3 setLineFragmentPadding_];

  v4 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor_];
}