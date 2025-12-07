void sub_1D7856E08(unint64_t a1, uint64_t *a2)
{
  v4 = sub_1D78B3394();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for PurchaseAdContext(0);
  MEMORY[0x1EEE9AC00](v55, v7);
  v9 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for PurchaseContext(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v14 = qword_1EE09C268;
  v15 = sub_1D78B6094();
  sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D78BCB50;
  v59 = a2;
  sub_1D7859018(a2, v13, type metadata accessor for PurchaseContext);
  v17 = sub_1D78B5CC4();
  v19 = v18;
  v20 = MEMORY[0x1E69E6158];
  *(v16 + 56) = MEMORY[0x1E69E6158];
  v21 = sub_1D775ABD4();
  *(v16 + 64) = v21;
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  v61 = 0;
  v62 = 0xE000000000000000;
  v65 = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  sub_1D78B6504();
  v22 = v61;
  v23 = v62;
  *(v16 + 96) = v20;
  *(v16 + 104) = v21;
  *(v16 + 72) = v22;
  *(v16 + 80) = v23;
  sub_1D78B42C4("AllPurchaseTransactionObserver received purchaseDidFail callback from AMSSheet with purchaseContext=%{public}@ error=%{public}@", 127, 2, &dword_1D7739000, v14, v15, v16);

  v24 = a1;
  v25 = sub_1D78B31B4();
  v61 = v25;
  type metadata accessor for AMSError(0);
  sub_1D7859268(&qword_1EC9C9218, type metadata accessor for AMSError, &unk_1D78BC8E4);
  sub_1D78B3184();

  v26 = v65;
  if (v65 == 508 || v65 == 6)
  {

    v27 = a1 | 0x5000000000000000;
    v28 = a1;
  }

  else
  {
    v27 = a1 | 0x4000000000000004;
  }

  v29 = *(v60 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 24);
  v30 = *(v60 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 32);
  __swift_project_boxed_opaque_existential_1((v60 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider), v29);
  (*(v30 + 8))(&v61, v29, v30);
  v31 = v63;
  v32 = v64;
  __swift_project_boxed_opaque_existential_1(&v61, v63);
  v65 = v27;
  v33 = *(v32 + 8);
  sub_1D78591E8(v27, sub_1D7859234);
  v34 = v59;
  v33(&v65, v59, v31, v32);
  sub_1D78591E8(v65, sub_1D7858FFC);
  __swift_destroy_boxed_opaque_existential_1(&v61);
  v35 = v34[8];
  v36 = sub_1D7773164(v35);
  if (v37)
  {
    v38 = v36;
    v39 = v37;
    v53 = v26;
    v54 = a1;
    v40 = *v34;
    v41 = v34[1];
    v42 = v34[5];
    v43 = v34[6];

    v44 = sub_1D77731CC(v35);
    v46 = v45;
    sub_1D78B3384();
    v47 = (v35 + 96);
    v48 = *(v35 + 16) + 1;
    while (--v48)
    {
      v49 = v47 + 10;
      v50 = *v47 >> 60;
      v47 += 10;
      if (v50 == 6)
      {
        v51 = *(v49 - 32);
        goto LABEL_13;
      }
    }

    LOBYTE(v51) = 0;
LABEL_13:
    *v9 = v40;
    v9[1] = v41;
    v9[2] = v42;
    v9[3] = v43;
    v9[4] = v38;
    v9[5] = v39;
    v9[6] = v44;
    v9[7] = v46;
    v9[8] = 0;
    v9[9] = 0xE000000000000000;
    v52 = v55;
    (*(v56 + 32))(v9 + *(v55 + 36), v58, v57);
    *(v9 + *(v52 + 40)) = v51 & 1;
    __swift_project_boxed_opaque_existential_1((v60 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_purchaseAdContextEntriesManager), *(v60 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_purchaseAdContextEntriesManager + 24));
    sub_1D77F4A60(v40, v41, v9);
    sub_1D7858F9C(v9, type metadata accessor for PurchaseAdContext);
    v26 = v53;
    a1 = v54;
    v34 = v59;
  }

  if (v26 == 6)
  {
    __swift_project_boxed_opaque_existential_1((v60 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_osloAbandonmentUpsellManager), *(v60 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_osloAbandonmentUpsellManager + 24));
    sub_1D7836394(v34[2]);
  }
}

void *sub_1D7857388(void *a1)
{
  v1 = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  type metadata accessor for SKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_1D7859268(&qword_1EC9C91E0, type metadata accessor for SKError, &unk_1D78BC7D4);
  sub_1D78B3184();

  return v3;
}

uint64_t sub_1D7857460(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, unint64_t a7)
{
  sub_1D773F0BC(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v30[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D7857688(a1, a4);
  if (v16)
  {
    v17 = v16;
    v18 = [v16 chargeCurrencyCode];
    v19 = sub_1D78B5C74();
    v21 = v20;

    sub_1D7859018(a4, v15, type metadata accessor for PurchaseContext);
    v22 = type metadata accessor for PurchaseContext(0);
    (*(*(v22 - 8) + 56))(v15, 0, 1, v22);
    sub_1D785673C(v19, v21, v15, a6);

    return sub_1D7858F9C(v15, sub_1D773F0BC);
  }

  else
  {
    v24 = *(a5 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 24);
    v25 = *(a5 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 32);
    __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider), v24);
    (*(v25 + 8))(v30, v24, v25);
    v26 = v31;
    v27 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v29 = a7;
    v28 = *(v27 + 8);
    sub_1D78591E8(a7, sub_1D7859234);
    v28(&v29, a4, v26, v27);
    sub_1D78591E8(v29, sub_1D7858FFC);
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }
}

void *sub_1D7857688(unint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D78B6534())
    {
      for (j = 0; ; ++j)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1DA703700](j, a1);
        }

        else
        {
          if (j >= *(v4 + 16))
          {
            goto LABEL_19;
          }

          v7 = *(a1 + 8 * j + 32);
        }

        v8 = v7;
        v9 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        v10 = [v7 inAppAdamID];
        v11 = [v10 stringValue];

        v12 = sub_1D78B5C74();
        v14 = v13;

        if (v12 == *a2 && v14 == a2[1])
        {

          return v8;
        }

        v16 = sub_1D78B6724();

        if (v16)
        {
          return v8;
        }

        if (v9 == i)
        {
          return 0;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }
  }

  return 0;
}

void sub_1D7857978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 || !a1)
  {
    sub_1D7788D90();
    sub_1D78B5054();
    swift_allocObject();
    v5 = sub_1D78B5004();
    v6 = (a3 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_router);
    v7 = *(a3 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_router + 24);
    v8 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v8 + 88))(v5, v7, v8);
  }

  else
  {
    v10 = swift_unknownObjectRetain();
    sub_1D7855FD0(v10, a4);
    v11 = *__swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_inAppSubscriptionStatusChecker), *(a3 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_inAppSubscriptionStatusChecker + 24));
    sub_1D78B41F4();
    sub_1D7788448();
    v12 = sub_1D78B6104();
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = 0;

    sub_1D78B4094();

    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = 0;

    v15 = sub_1D78B4014();
    sub_1D78B40D4();
    swift_unknownObjectRelease();
  }
}

void sub_1D7857BBC()
{
  v1 = v0;
  sub_1D773F0BC(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PurchaseContext(0);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v38 - v13;
  v15 = sub_1D78B3014();
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v15;
  v43 = 0x6168436465646461;
  v44 = 0xEF7344496C656E6ELL;
  sub_1D78B63F4();
  if (!*(v16 + 16) || (v17 = sub_1D777BD70(v45), (v18 & 1) == 0))
  {

    sub_1D777BDB4(v45);
LABEL_10:
    v46 = 0u;
    v47 = 0u;
LABEL_11:
    v26 = sub_1D77BFF28;
    v27 = &v46;
LABEL_12:
    sub_1D7858F9C(v27, v26);
    return;
  }

  sub_1D777BE08(*(v16 + 56) + 32 * v17, &v46);
  sub_1D777BDB4(v45);

  if (!*(&v47 + 1))
  {
    goto LABEL_11;
  }

  sub_1D7782F60();
  if (swift_dynamicCast())
  {
    v38 = v7;
    v39 = v1;
    v19 = 0;
    v21 = v45[0] + 56;
    v20 = *(v45[0] + 56);
    v41 = v45[0];
    v22 = 1 << *(v45[0] + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & v20;
    v40 = OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_failedTransactionPurchaseContexts;
    v25 = (v22 + 63) >> 6;
    while (v24)
    {
LABEL_20:
      v29 = v40;
      v30 = (*(v41 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v24)))));
      v31 = v30[1];
      v42 = *v30;
      swift_beginAccess();
      v32 = *(v1 + v29);
      v33 = *(v32 + 16);

      if (v33)
      {
        v34 = sub_1D777BBB4(v42, v31);
        if (v35)
        {
          sub_1D7859018(*(v32 + 56) + *(v38 + 72) * v34, v11, type metadata accessor for PurchaseContext);
          sub_1D777044C(v11, v14);
          swift_endAccess();
          v36 = *(v39 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_webOptinFlowManager + 24);
          v37 = *(v39 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_webOptinFlowManager + 32);
          __swift_project_boxed_opaque_existential_1((v39 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_webOptinFlowManager), v36);
          (*(v37 + 16))(v14, v36, v37);
          swift_beginAccess();
          sub_1D782B08C(v42, v31, v5);
          swift_endAccess();

          sub_1D7858F9C(v5, sub_1D773F0BC);
          v26 = type metadata accessor for PurchaseContext;
          v27 = v14;
          goto LABEL_12;
        }
      }

      v24 &= v24 - 1;
      swift_endAccess();

      v1 = v39;
    }

    while (1)
    {
      v28 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v28 >= v25)
      {

        return;
      }

      v24 = *(v21 + 8 * v28);
      ++v19;
      if (v24)
      {
        v19 = v28;
        goto LABEL_20;
      }
    }

    __break(1u);
  }
}

id sub_1D7858110(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v127 = a4;
  v121 = sub_1D78B3394();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121, v7);
  v125 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for PurchaseAdContext(0);
  MEMORY[0x1EEE9AC00](v119, v9);
  v122 = (&v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = type metadata accessor for PurchaseContext(0);
  v128 = *(v126 - 8);
  v12 = MEMORY[0x1EEE9AC00](v126, v11);
  v124 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v130 = &v116 - v15;
  sub_1D773F0BC(0);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v133 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v116 - v21;
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v23 = qword_1EE09C268;
  v24 = sub_1D78B6094();
  sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D78BCB50;
  v129 = a3;
  sub_1D7859018(a3, v22, sub_1D773F0BC);
  v26 = sub_1D78B5CC4();
  v28 = v27;
  v29 = MEMORY[0x1E69E6158];
  *(v25 + 56) = MEMORY[0x1E69E6158];
  v30 = sub_1D775ABD4();
  *(v25 + 64) = v30;
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  aBlock = 0;
  v135 = 0xE000000000000000;
  v140 = a2;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  sub_1D78B6504();
  v31 = aBlock;
  v32 = v135;
  *(v25 + 96) = v29;
  *(v25 + 104) = v30;
  *(v25 + 72) = v31;
  *(v25 + 80) = v32;
  sub_1D78B42C4("AllPurchaseTransactionObserver received purchaseDidFail callback with purchaseContext=%{public}@ error=%{public}@", 113, 2, &dword_1D7739000, v23, v24, v25);

  v33 = a2;
  v34 = sub_1D7857388(a2);
  v35 = v34;
  v131 = a2;
  if (a1 == 4)
  {

    v36 = a2 | 0x1000000000000004;
    v37 = a2;
    v38 = v127;
    goto LABEL_12;
  }

  v36 = a2 | 4;
  if (v34 > 2)
  {
    v38 = v127;
    v39 = v133;
    if ((v34 - 3) < 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v38 = v127;
    v39 = v133;
    if (v34)
    {
      if (v34 != 1)
      {
        if (v34 == 2)
        {

          v36 = a2 | 0x1000000000000000;
          v40 = a2;
          goto LABEL_16;
        }

        goto LABEL_13;
      }

LABEL_11:
      swift_getErrorValue();
      v41 = sub_1D78B67B4();
      v43 = v42;
      v137 = &type metadata for PurchaseFailedAlert;
      v138 = sub_1D7859194();
      aBlock = v41;
      v135 = v43;
      sub_1D78B5054();
      swift_allocObject();
      v44 = sub_1D78B5004();
      v45 = *&v132[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_router + 24];
      v46 = *&v132[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_router + 32];
      __swift_project_boxed_opaque_existential_1(&v132[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_router], v45);
      a2 = v131;
      (*(v46 + 88))(v44, v45, v46);

LABEL_12:
      v39 = v133;
      if (v35 == 2)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    v86 = a2;
    v36 = a2;
  }

LABEL_13:
  v47 = [v38 tagID];
  if (v47)
  {

    result = [v38 tagID];
    if (!result)
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v49 = result;
    v50 = sub_1D78B5C74();
    v52 = v51;

    sub_1D7859018(v129, v22, sub_1D773F0BC);
    swift_beginAccess();
    sub_1D7827DC0(v22, v50, v52);
    swift_endAccess();
    a2 = v131;
  }

LABEL_16:
  v53 = sub_1D78B31B4();
  v54 = [v53 code];
  if (v54 == *MEMORY[0x1E69B4F88])
  {
    v55 = *__swift_project_boxed_opaque_existential_1(&v132[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_inAppSubscriptionStatusChecker], *&v132[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_inAppSubscriptionStatusChecker + 24]);
    sub_1D78B41F4();
    sub_1D7788448();
    v56 = sub_1D78B6104();
    v57 = swift_allocObject();
    *(v57 + 16) = v55;
    *(v57 + 24) = 0;

    sub_1D78B4094();

    a2 = v131;
    v39 = v133;

    v58 = swift_allocObject();
    *(v58 + 16) = v55;
    *(v58 + 24) = 0;

    v59 = sub_1D78B4014();
    sub_1D78B40D4();
  }

  sub_1D7859018(v129, v39, sub_1D773F0BC);
  if ((*(v128 + 48))(v39, 1, v126) == 1)
  {

    v60 = sub_1D773F0BC;
    v61 = v39;
    return sub_1D7858F9C(v61, v60);
  }

  v62 = v36;
  sub_1D777044C(v39, v130);
  if (a1 == 4 || (v63 = *(v130 + 64), v133 = sub_1D7773164(v63), !v64))
  {
LABEL_34:
    if ((v62 >> 59) & 6 | (v62 >> 2) & 1)
    {
      v95 = *&v132[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 24];
      v96 = *&v132[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 32];
      __swift_project_boxed_opaque_existential_1(&v132[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider], v95);
      (*(v96 + 8))(&aBlock, v95, v96);
      v97 = v137;
      v98 = v138;
      __swift_project_boxed_opaque_existential_1(&aBlock, v137);
      v140 = v62;
      v99 = *(v98 + 8);
      v100 = v131;
      v101 = v131;
      v102 = v130;
      v99(&v140, v130, v97, v98);

      sub_1D78591E8(v140, sub_1D7858FFC);
      sub_1D7858F9C(v102, type metadata accessor for PurchaseContext);
      return __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    v103 = v38;
    v104 = v132;
    v129 = *&v132[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_entitlementService];
    v133 = v53;
    v105 = v62;
    v106 = v124;
    sub_1D7859018(v130, v124, type metadata accessor for PurchaseContext);
    v107 = (*(v128 + 80) + 16) & ~*(v128 + 80);
    v108 = (v123 + v107 + 7) & 0xFFFFFFFFFFFFFFF8;
    v109 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
    v110 = swift_allocObject();
    sub_1D777044C(v106, v110 + v107);
    *(v110 + v108) = v104;
    *(v110 + v109) = v103;
    *(v110 + ((v109 + 15) & 0xFFFFFFFFFFFFFFF8)) = v105;
    v138 = sub_1D7859080;
    v139 = v110;
    aBlock = MEMORY[0x1E69E9820];
    v135 = 1107296256;
    v136 = sub_1D781E048;
    v137 = &block_descriptor_28;
    v111 = _Block_copy(&aBlock);
    v112 = v131;
    v113 = v131;
    v114 = v104;
    v115 = v103;

    [v129 performEntitlementWithIgnoreCache:1 completion:v111];

    _Block_release(v111);
    v60 = type metadata accessor for PurchaseContext;
    v61 = v130;
    return sub_1D7858F9C(v61, v60);
  }

  v65 = v64;
  result = [v38 purchaseID];
  if (!result)
  {
    goto LABEL_39;
  }

  v66 = result;
  v67 = sub_1D78B5C74();
  v69 = v68;

  result = [v38 tagID];
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v70 = result;
  v129 = v69;
  v71 = sub_1D78B5C74();
  v126 = v72;
  v127 = v71;

  v118 = sub_1D77731CC(v63);
  v117 = v73;
  result = [v38 price];
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v74 = result;
  v75 = [result stringValue];

  v76 = sub_1D78B5C74();
  v78 = v77;
  result = [v38 purchaseInitiatedTime];
  if (!result)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v79 = result;

  sub_1D78B3364();
  v80 = (v63 + 96);
  v81 = *(v63 + 16) + 1;
  v82 = v122;
  while (--v81)
  {
    v83 = v80 + 10;
    v84 = *v80 >> 60;
    v80 += 10;
    if (v84 == 6)
    {
      v85 = *(v83 - 32);
      goto LABEL_32;
    }
  }

  LOBYTE(v85) = 0;
LABEL_32:
  v87 = v129;
  *v122 = v67;
  v82[1] = v87;
  v88 = v126;
  v82[2] = v127;
  v82[3] = v88;
  v82[4] = v133;
  v82[5] = v65;
  v89 = v117;
  v82[6] = v118;
  v82[7] = v89;
  v82[8] = v76;
  v82[9] = v78;
  v90 = v119;
  (*(v120 + 32))(v82 + *(v119 + 36), v125, v121);
  *(v82 + *(v90 + 40)) = v85 & 1;
  sub_1D774584C(&v132[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_purchaseAdContextEntriesManager], &aBlock);
  __swift_project_boxed_opaque_existential_1(&aBlock, v137);
  result = [v38 productID];
  if (result)
  {
    v91 = result;
    v92 = sub_1D78B5C74();
    v94 = v93;

    sub_1D77F4A60(v92, v94, v82);

    sub_1D7858F9C(v82, type metadata accessor for PurchaseAdContext);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    goto LABEL_34;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_1D7858D94(uint64_t a1)
{
  sub_1D773F0BC(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PurchaseContext(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7859018(a1, v6, sub_1D773F0BC);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1D7858F9C(v6, sub_1D773F0BC);
  }

  sub_1D777044C(v6, v11);
  v13 = *(v1 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 24);
  v14 = *(v1 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider), v13);
  (*(v14 + 8))(v18, v13, v14);
  v15 = v19;
  v16 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v17 = 0x8000000000000004;
  (*(v16 + 8))(&v17, v11, v15, v16);
  sub_1D7858F9C(v11, type metadata accessor for PurchaseContext);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1D7858F9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7858FFC(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return;
    }

    a1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }
}

uint64_t sub_1D7859018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7859080(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for PurchaseContext(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v3 + v9);
  v12 = *(v3 + v10);
  v13 = *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D7857460(a1, a2, a3, (v3 + v8), v11, v12, v13);
}

unint64_t sub_1D7859194()
{
  result = qword_1EC9CAED0;
  if (!qword_1EC9CAED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAED0);
  }

  return result;
}

unint64_t sub_1D78591E8(unint64_t result, uint64_t (*a2)(unint64_t))
{
  v2 = (result >> 59) & 6 | (result >> 2) & 1;
  if (v2 <= 1)
  {
    if (!v2)
    {
      return a2(result);
    }

    if (v2 != 1)
    {
      return result;
    }

LABEL_7:
    result &= 0xCFFFFFFFFFFFFFFBLL;
    return a2(result);
  }

  if (v2 == 2 || v2 == 3)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1D7859234(unint64_t result)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    result &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  return result;
}

uint64_t sub_1D7859268(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1D78592B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1D773F0BC(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE09C268;
  sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D78BCAB0;
  sub_1D7859018(a3, v11, sub_1D773F0BC);
  v14 = sub_1D78B5CC4();
  v16 = v15;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1D775ABD4();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  v17 = sub_1D78B60A4();
  sub_1D78B42C4("AllPurchaseTransactionObserver received purchaseDidSucceed callback with purchaseContext=%{public}@", 99, 2, &dword_1D7739000, v12, v17, v13);

  return sub_1D785673C(a1, a2, a3, a4);
}

uint64_t sub_1D7859480(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for PurchaseContext(0) - 8);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return a3(a1, a2, v7, v8);
}

void sub_1D7859518(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for PurchaseContext(0) - 8);
  v8 = *(v3 + 16);
  v9 = (v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80)));

  sub_1D7856214(a1, a2, a3, v8, v9);
}

uint64_t sub_1D78595A4(char a1)
{
  v2 = v1;
  sub_1D773F0BC(0);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v31 - v11;
  if ((a1 & 1) == 0)
  {
    v13 = sub_1D78B5C74();
    v15 = v14;
    v16 = OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_failedTransactionPurchaseContexts;
    swift_beginAccess();
    v17 = *(v2 + v16);
    if (*(v17 + 16))
    {
      v18 = sub_1D777BBB4(v13, v15);
      v20 = v19;

      if (v20)
      {
        v21 = *(v17 + 56);
        v22 = type metadata accessor for PurchaseContext(0);
        v23 = *(v22 - 8);
        sub_1D7859018(v21 + *(v23 + 72) * v18, v12, type metadata accessor for PurchaseContext);
        (*(v23 + 56))(v12, 0, 1, v22);
        goto LABEL_7;
      }
    }

    else
    {
    }

    v22 = type metadata accessor for PurchaseContext(0);
    (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
LABEL_7:
    swift_endAccess();
    type metadata accessor for PurchaseContext(0);
    v24 = (*(*(v22 - 8) + 48))(v12, 1, v22);
    result = sub_1D7858F9C(v12, sub_1D773F0BC);
    if (v24 != 1)
    {
      v25 = sub_1D78B5C74();
      v27 = v26;
      swift_beginAccess();
      sub_1D782B08C(v25, v27, v8);
      swift_endAccess();

      sub_1D7858F9C(v8, sub_1D773F0BC);
      v28 = (v2 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_postPurchaseOnboardingManager);
      v29 = *(v2 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_postPurchaseOnboardingManager + 24);
      v30 = v28[4];
      __swift_project_boxed_opaque_existential_1(v28, v29);
      return (*(v30 + 8))(1, v29, v30);
    }
  }

  return result;
}

BOOL sub_1D7859910(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E6968FB0];
  sub_1D785A628(0, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v21 - v11;
  v13 = [a1 userInterfaceStyle];
  v14 = a2 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_viewModel;
  v15 = type metadata accessor for BundlePaywallViewModel(0);
  v16 = 76;
  if (v13 == 2)
  {
    v16 = 80;
    v17 = v12;
  }

  else
  {
    v17 = v9;
  }

  sub_1D785A6D8(v14 + *(v15 + v16), v17, &unk_1EE096460, v4);
  v18 = sub_1D78B3294();
  v19 = (*(*(v18 - 8) + 48))(v17, 1, v18);
  sub_1D785A67C(v17, &unk_1EE096460, v4);
  return v19 != 1;
}

double sub_1D7859A84(uint64_t a1, double a2, double a3)
{
  v5 = sub_1D78B2FF4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler + 24);
  v11 = *(v3 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler), v10);
  v12 = (*(v11 + 48))(*(v3 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_viewModel + 16), *(v3 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_viewModel + 24), a1, v10, v11);
  v13 = [v12 string];
  v14 = sub_1D78B5C74();
  v16 = v15;

  v24[0] = v14;
  v24[1] = v16;
  sub_1D78B2FC4();
  sub_1D77BE06C();
  v17 = sub_1D78B62C4();
  v19 = v18;
  (*(v6 + 8))(v9, v5);

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    sub_1D78B6144();
    v22 = v21;
  }

  else
  {

    return 0.0;
  }

  return v22;
}

double sub_1D7859C68(uint64_t a1, double a2, double a3)
{
  v38 = a1;
  v4 = sub_1D78B2FF4();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1E6968FB0];
  sub_1D785A628(0, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v34 - v9;
  v11 = *(v3 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler + 24);
  v12 = *(v3 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler + 32);
  v36 = __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler), v11);
  v13 = v3 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_viewModel;
  v14 = sub_1D787443C();
  v16 = v15;
  v17 = *(v13 + 56);
  v35 = *(v13 + 48);
  v18 = *(type metadata accessor for BundlePaywallViewModel(0) + 36);
  v19 = sub_1D78B3294();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v10, v13 + v18, v19);
  (*(v20 + 56))(v10, 0, 1, v19);
  v21 = (*(v12 + 56))(v14, v16, v38, v35, v17, v10, v11, v12);

  sub_1D785A67C(v10, &unk_1EE096460, v37);
  v22 = [v21 string];
  v23 = sub_1D78B5C74();
  v25 = v24;

  v42 = v23;
  v43 = v25;
  v26 = v39;
  sub_1D78B2FC4();
  sub_1D77BE06C();
  v27 = sub_1D78B62C4();
  v29 = v28;
  (*(v40 + 8))(v26, v41);

  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    sub_1D78B6144();
    v32 = v31;
  }

  else
  {

    return 0.0;
  }

  return v32;
}

double sub_1D7859F78(uint64_t a1, double a2, double a3)
{
  v5 = sub_1D78B2FF4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D785A628(0, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v34 - v12;
  v14 = v3 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_viewModel;
  v15 = type metadata accessor for BundlePaywallViewModel(0);
  v16 = (v14 + *(v15 + 48));
  v17 = v16[1];
  v18 = 0.0;
  if (v17)
  {
    v19 = *v16;
    sub_1D785A6D8(v14 + *(v15 + 56), v13, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
    v20 = type metadata accessor for OffersButtonDestination(0);
    if ((*(*(v20 - 8) + 48))(v13, 1, v20) == 1)
    {
      sub_1D785A67C(v13, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
    }

    else
    {
      sub_1D785A67C(v13, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
      v21 = *(v3 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler + 24);
      v22 = *(v3 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler + 32);
      __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler), v21);
      v23 = (*(v22 + 80))(v19, v17, a1, v21, v22);
      v24 = [v23 string];
      v25 = sub_1D78B5C74();
      v27 = v26;

      v34[0] = v25;
      v34[1] = v27;
      sub_1D78B2FC4();
      sub_1D77BE06C();
      v28 = sub_1D78B62C4();
      v30 = v29;
      (*(v6 + 8))(v9, v5);

      v31 = HIBYTE(v30) & 0xF;
      if ((v30 & 0x2000000000000000) == 0)
      {
        v31 = v28 & 0xFFFFFFFFFFFFLL;
      }

      if (v31)
      {
        sub_1D78B6144();
        v18 = v32;
      }
    }
  }

  return v18;
}

double sub_1D785A298(uint64_t a1, double a2, double a3)
{
  v5 = sub_1D78B2FF4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v3 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_viewModel;
  v11 = (v10 + *(type metadata accessor for BundlePaywallViewModel(0) + 60));
  v12 = v11[1];
  v13 = 0.0;
  if (v12)
  {
    v14 = *v11;
    v15 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v15 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v16 = *(v3 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler + 24);
      v17 = *(v3 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler + 32);
      __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler), v16);
      v18 = (*(v17 + 96))(v14, v12, a1, v16, v17);
      v19 = [v18 string];
      v20 = sub_1D78B5C74();
      v22 = v21;

      v29[0] = v20;
      v29[1] = v22;
      sub_1D78B2FC4();
      sub_1D77BE06C();
      v23 = sub_1D78B62C4();
      v25 = v24;
      (*(v6 + 8))(v9, v5);

      v26 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v26 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v26)
      {
        sub_1D78B6144();
        v13 = v27;
      }
    }
  }

  return v13;
}

uint64_t sub_1D785A4BC()
{
  sub_1D785A744(v0 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_viewModel);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BundlePaywallComponentSizeProvider(uint64_t a1)
{
  result = qword_1EE090D58;
  if (!qword_1EE090D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D785A584(uint64_t a1)
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

void sub_1D785A628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1D785A67C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D785A628(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D785A6D8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D785A628(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D785A744(uint64_t a1)
{
  v2 = type metadata accessor for BundlePaywallViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for AlacartePaywallViewModel(uint64_t a1)
{
  result = qword_1EE092CC8;
  if (!qword_1EE092CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D785A814(uint64_t a1)
{
  sub_1D78B3294();
  if (v1 <= 0x3F)
  {
    sub_1D7743258();
    if (v2 <= 0x3F)
    {
      type metadata accessor for SubscribeButtonDestination(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

NewsSubscription::SubscribeButtonTargetType_optional __swiftcall SubscribeButtonTargetType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D78B6594();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SubscribeButtonTargetType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x7465656853736D61;
  if (*v0 != 2)
  {
    v2 = 0x50676E69646E616CLL;
  }

  if (*v0)
  {
    v1 = 0x6573616863727570;
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

unint64_t sub_1D785A9E0()
{
  result = qword_1EC9CAED8;
  if (!qword_1EC9CAED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAED8);
  }

  return result;
}

uint64_t sub_1D785AA34()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

double sub_1D785AB0C(uint64_t a1)
{
  sub_1D78B5D14();

  return result;
}

uint64_t sub_1D785ABD0(uint64_t a1)
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

void sub_1D785ACB0(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE800000000000000;
  v5 = 0x7465656853736D61;
  if (*v1 != 2)
  {
    v5 = 0x50676E69646E616CLL;
    v4 = 0xEB00000000656761;
  }

  if (*v1)
  {
    v3 = 0x6573616863727570;
    v2 = 0xED00007465656853;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1D785AE04()
{
  result = qword_1EC9CAEE0;
  if (!qword_1EC9CAEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAEE0);
  }

  return result;
}

id sub_1D785AE58(char *a1, void *a2)
{
  if (a2)
  {
    v3 = *a1;
    v4 = a2;
    if ([v4 externalOverridesEnabled])
    {
      v5 = *(v2 + 32);
      ObjectType = swift_getObjectType();
      LOBYTE(v28[0]) = v3;
      (*(v5 + 32))(&v38, v28, ObjectType, v5);

      goto LABEL_6;
    }
  }

  sub_1D775F3AC(&v38);
LABEL_6:
  v25 = v46;
  v26 = v47;
  v21 = v42;
  v22 = v43;
  v23 = v44;
  v24 = v45;
  v17 = v38;
  v18 = v39;
  v19 = v40;
  v20 = v41;
  v35 = v46;
  v36 = v47;
  v31 = v42;
  v32 = v43;
  v33 = v44;
  v34 = v45;
  v28[0] = v38;
  v28[1] = v39;
  v27 = v48;
  v37 = v48;
  v29 = v40;
  v30 = v41;
  if (sub_1D775F3CC(v28) == 1)
  {
    return 0;
  }

  v7 = *(v2 + 16);
  result = [v7 configuration];
  if (!result)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v9 = result;
  if ([result respondsToSelector_])
  {
    v10 = [v9 paidBundleConfig];
    swift_unknownObjectRelease();
    v11 = [v10 paywallConfigsOfferType];

    if (v11 == 2)
    {
      if (BYTE8(v29) == 1 && *(&v28[0] + 1))
      {
        v12 = *&v28[0];

        sub_1D785CD9C(&v17, sub_1D7814634);
        return v12;
      }

      goto LABEL_21;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  result = [v7 configuration];
  if (!result)
  {
    goto LABEL_25;
  }

  v13 = result;
  if (([result respondsToSelector_] & 1) == 0)
  {
    sub_1D785CD9C(&v17, sub_1D7814634);
    swift_unknownObjectRelease();
    return 0;
  }

  v14 = [v13 paidBundleConfig];
  swift_unknownObjectRelease();
  v15 = [v14 paywallConfigsOfferType];

  if (v15 != 3)
  {
LABEL_21:
    sub_1D785CD9C(&v17, sub_1D7814634);
    return 0;
  }

  v16 = *&v28[0];
  if (*(&v28[0] + 1))
  {
  }

  sub_1D785CD9C(&v17, sub_1D7814634);
  return v16;
}

id sub_1D785B164(char *a1, void *a2)
{
  if (a2)
  {
    v3 = *a1;
    v4 = a2;
    if ([v4 externalOverridesEnabled])
    {
      v5 = *(v2 + 32);
      ObjectType = swift_getObjectType();
      LOBYTE(v28) = v3;
      (*(v5 + 32))(&v39, &v28, ObjectType, v5);

      goto LABEL_6;
    }
  }

  sub_1D775F3AC(&v39);
LABEL_6:
  v25 = v47;
  v26 = v48;
  v21 = v43;
  v22 = v44;
  v23 = v45;
  v24 = v46;
  v17 = v39;
  v18 = v40;
  v19 = v41;
  v20 = v42;
  v36 = v47;
  v37 = v48;
  v32 = v43;
  v33 = v44;
  v34 = v45;
  v35 = v46;
  v28 = v39;
  v29 = v40;
  v27 = v49;
  v38 = v49;
  v30 = v41;
  v31 = v42;
  if (sub_1D775F3CC(&v28) == 1)
  {
    return 0;
  }

  v7 = *(v2 + 16);
  result = [v7 configuration];
  if (!result)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v9 = result;
  if ([result respondsToSelector_])
  {
    v10 = [v9 paidBundleConfig];
    swift_unknownObjectRelease();
    v11 = [v10 paywallConfigsOfferType];

    if (v11 == 2)
    {
      if (BYTE8(v30) == 1 && *(&v29 + 1))
      {
        v12 = v29;

        sub_1D785CD9C(&v17, sub_1D7814634);
        return v12;
      }

      goto LABEL_21;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  result = [v7 configuration];
  if (!result)
  {
    goto LABEL_25;
  }

  v13 = result;
  if (([result respondsToSelector_] & 1) == 0)
  {
    sub_1D785CD9C(&v17, sub_1D7814634);
    swift_unknownObjectRelease();
    return 0;
  }

  v14 = [v13 paidBundleConfig];
  swift_unknownObjectRelease();
  v15 = [v14 paywallConfigsOfferType];

  if (v15 != 3)
  {
LABEL_21:
    sub_1D785CD9C(&v17, sub_1D7814634);
    return 0;
  }

  v16 = v29;
  if (*(&v29 + 1))
  {
  }

  sub_1D785CD9C(&v17, sub_1D7814634);
  return v16;
}

id sub_1D785B470(char *a1, void *a2)
{
  if (a2)
  {
    v3 = *a1;
    v4 = a2;
    if ([v4 externalOverridesEnabled])
    {
      v5 = *(v2 + 32);
      ObjectType = swift_getObjectType();
      LOBYTE(v27[0]) = v3;
      (*(v5 + 32))(&v37, v27, ObjectType, v5);

      goto LABEL_6;
    }
  }

  sub_1D775F3AC(&v37);
LABEL_6:
  v24 = v45;
  v25 = v46;
  v20 = v41;
  v21 = v42;
  v22 = v43;
  v23 = v44;
  v16 = v37;
  v17 = v38;
  v18 = v39;
  v19 = v40;
  v34 = v45;
  v35 = v46;
  v30 = v41;
  v31 = v42;
  v32 = v43;
  v33 = v44;
  v27[0] = v37;
  v27[1] = v38;
  v26 = v47;
  v36 = v47;
  v28 = v39;
  v29 = v40;
  if (sub_1D775F3CC(v27) == 1)
  {
LABEL_18:
    v15 = 0;
    return (v15 & 1);
  }

  v7 = *(v2 + 16);
  result = [v7 configuration];
  if (result)
  {
    v9 = result;
    if ([result respondsToSelector_])
    {
      v10 = [v9 paidBundleConfig];
      swift_unknownObjectRelease();
      v11 = [v10 paywallConfigsOfferType];

      if (v11 == 2)
      {
        if (BYTE8(v28) != 1)
        {
LABEL_11:
          sub_1D785CD9C(&v16, sub_1D7814634);
          goto LABEL_18;
        }

LABEL_16:
        v15 = Array<A>.hasBuyAction.getter(v28);
        sub_1D785CD9C(&v16, sub_1D7814634);
        return (v15 & 1);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    result = [v7 configuration];
    if (result)
    {
      v12 = result;
      if (([result respondsToSelector_] & 1) == 0)
      {
        sub_1D785CD9C(&v16, sub_1D7814634);
        swift_unknownObjectRelease();
        goto LABEL_18;
      }

      v13 = [v12 paidBundleConfig];
      swift_unknownObjectRelease();
      v14 = [v13 paywallConfigsOfferType];

      if (v14 != 3)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1D785B70C(char *a1, void *a2)
{
  if (a2)
  {
    v3 = *a1;
    v4 = a2;
    if ([v4 externalOverridesEnabled])
    {
      v5 = *(v2 + 32);
      ObjectType = swift_getObjectType();
      LOBYTE(v19[0]) = v3;
      (*(v5 + 32))(&v29, v19, ObjectType, v5);

      goto LABEL_6;
    }
  }

  sub_1D775F3AC(&v29);
LABEL_6:
  v17[8] = v37;
  v17[9] = v38;
  v17[4] = v33;
  v17[5] = v34;
  v17[6] = v35;
  v17[7] = v36;
  v17[0] = v29;
  v17[1] = v30;
  v17[2] = v31;
  v17[3] = v32;
  v26 = v37;
  v27 = v38;
  v22 = v33;
  v23 = v34;
  v24 = v35;
  v25 = v36;
  v19[0] = v29;
  v19[1] = v30;
  v18 = v39;
  v28 = v39;
  v20 = v31;
  v21 = v32;
  if (sub_1D775F3CC(v19) == 1)
  {
    return 0;
  }

  v7 = *(v2 + 16);
  result = [v7 configuration];
  if (result)
  {
    v9 = result;
    if ([result respondsToSelector_])
    {
      v10 = [v9 paidBundleConfig];
      swift_unknownObjectRelease();
      v11 = [v10 paywallConfigsOfferType];

      if (v11 == 2)
      {
        if (BYTE8(v20) == 1)
        {
          v12 = Offer.callToActionLabel()();
          countAndFlagsBits = v12.value._countAndFlagsBits;
          sub_1D785CD9C(v17, sub_1D7814634);
          if (!v12.value._object)
          {
            return 0;
          }

          return countAndFlagsBits;
        }

LABEL_20:
        sub_1D785CD9C(v17, sub_1D7814634);
        return 0;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    result = [v7 configuration];
    if (result)
    {
      v14 = result;
      if ([result respondsToSelector_])
      {
        v15 = [v14 paidBundleConfig];
        swift_unknownObjectRelease();
        v16 = [v15 paywallConfigsOfferType];

        if (v16 == 3)
        {
          countAndFlagsBits = Offer.callToActionLabel()().value._countAndFlagsBits;
          sub_1D785CD9C(v17, sub_1D7814634);
          return countAndFlagsBits;
        }

        goto LABEL_20;
      }

      sub_1D785CD9C(v17, sub_1D7814634);
      swift_unknownObjectRelease();
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D785BA48@<X0>(char *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v34 = a3;
  v36 = a2;
  sub_1D776F504(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D78B3294();
  v35 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *(v4 + 32);
  ObjectType = swift_getObjectType();
  LOBYTE(v39[0]) = v15;
  (*(v16 + 32))(v37, v39, ObjectType, v16);
  v46 = v37[8];
  v47 = v37[9];
  v48 = v38;
  v42 = v37[4];
  v43 = v37[5];
  v44 = v37[6];
  v45 = v37[7];
  v39[0] = v37[0];
  v39[1] = v37[1];
  v40 = v37[2];
  v41 = v37[3];
  if (sub_1D775F3CC(v39) == 1)
  {
    goto LABEL_2;
  }

  v22 = v36;
  if (v36 != 2)
  {
    sub_1D785CD9C(v37, sub_1D7814634);
    v27 = type metadata accessor for SubscribeButtonDestination(0);
    v28 = v27;
    if (v22)
    {
      v19 = *(*(v27 - 8) + 56);
      v20 = a4;
      v21 = 1;
LABEL_13:
      v18 = v28;
      return v19(v20, v21, 1, v18);
    }

LABEL_12:
    swift_storeEnumTagMultiPayload();
    v19 = *(*(v28 - 8) + 56);
    v20 = a4;
    v21 = 0;
    goto LABEL_13;
  }

  sub_1D776F538(v34, v10);
  v23 = v35;
  if ((*(v35 + 48))(v10, 1, v11) == 1)
  {
    sub_1D785CD9C(v10, sub_1D776F504);
    v24 = Array<A>.hasBuyAction.getter(v40);
    sub_1D785CD9C(v37, sub_1D7814634);
    if (v24)
    {
      v25 = *(type metadata accessor for OsloSheetPurchaseDataModel(0) + 20);
      v26 = type metadata accessor for PostPurchaseDestination(0);
      (*(*(v26 - 8) + 56))(a4 + v25, 1, 1, v26);
LABEL_11:
      v28 = type metadata accessor for SubscribeButtonDestination(0);
      *a4 = 0;
      a4[1] = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v29 = *(v23 + 32);
    v29(v14, v10, v11);
    v30 = Array<A>.hasBuyAction.getter(v40);
    sub_1D785CD9C(v37, sub_1D7814634);
    if (v30)
    {
      v31 = *(type metadata accessor for OsloSheetPurchaseDataModel(0) + 20);
      v29(a4 + v31, v14, v11);
      v32 = type metadata accessor for PostPurchaseDestination(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v32 - 8) + 56))(a4 + v31, 0, 1, v32);
      goto LABEL_11;
    }

    (*(v23 + 8))(v14, v11);
  }

LABEL_2:
  v18 = type metadata accessor for SubscribeButtonDestination(0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a4;
  v21 = 1;
  return v19(v20, v21, 1, v18);
}

void sub_1D785BEC4(void *a1@<X1>, char *a2@<X8>)
{
  v4 = sub_1D78B3294();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v24 - v12;
  if (a1)
  {
    v14 = v11;
    v25 = a1;
    v15 = [v25 offersLinkTargetType];
    if (v15 == 2)
    {
LABEL_12:
      v22 = type metadata accessor for OffersButtonDestination(0);
      (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
      v23 = v25;

      return;
    }

    if (v15 == 1)
    {
      v16 = [v25 offersLinkURL];
      if (v16)
      {
        v17 = v16;
        sub_1D78B3254();

        v18 = *(v5 + 32);
        v18(v13, v9, v14);
        v18(a2, v13, v14);
        v19 = type metadata accessor for OffersButtonDestination(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
        return;
      }
    }

    else if (!v15)
    {
      goto LABEL_12;
    }
  }

  v20 = type metadata accessor for OffersButtonDestination(0);
  v21 = *(*(v20 - 8) + 56);

  v21(a2, 1, 1, v20);
}

uint64_t sub_1D785C18C(char *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, void, void, void, void, void, void, void, void, void, void, void, void))
{
  if (*a1 == 13)
  {
    v4 = 4;
  }

  else
  {
    v4 = *a1;
  }

  v5 = *(v2 + 32);
  ObjectType = swift_getObjectType();
  LOBYTE(v19) = v4;
  (*(v5 + 32))(v17, &v19, ObjectType, v5);
  v27 = v17[8];
  v28 = v17[9];
  v29 = v18;
  v23 = v17[4];
  v24 = v17[5];
  v25 = v17[6];
  v26 = v17[7];
  v19 = v17[0];
  v20 = v17[1];
  v21 = v17[2];
  v22 = v17[3];
  v7 = sub_1D775F3CC(&v19);
  if (v7 == 1)
  {
    return 0;
  }

  v16 = a2(v7, v8, v9, v10, v11, v12, v13, v14, v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25);
  sub_1D785CD9C(v17, sub_1D7814634);
  return v16;
}

BOOL sub_1D785C2CC(char *a1)
{
  if (*a1 == 13)
  {
    v2 = 4;
  }

  else
  {
    v2 = *a1;
  }

  v3 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  LOBYTE(v9[0]) = v2;
  (*(v3 + 32))(v7, v9, ObjectType, v3);
  v9[8] = v7[8];
  v9[9] = v7[9];
  v10 = v8;
  v9[4] = v7[4];
  v9[5] = v7[5];
  v9[6] = v7[6];
  v9[7] = v7[7];
  v9[0] = v7[0];
  v9[1] = v7[1];
  v9[2] = v7[2];
  v9[3] = v7[3];
  if (sub_1D775F3CC(v9) == 1)
  {
    return 0;
  }

  else
  {
    v5 = Offer.trialEligible()();
    sub_1D785CD9C(v7, sub_1D7814634);
  }

  return v5;
}

uint64_t sub_1D785C3F0(char *a1)
{
  v2 = 1701736302;
  if (*a1 == 13)
  {
    v3 = 4;
  }

  else
  {
    v3 = *a1;
  }

  v4 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  LOBYTE(v10[0]) = v3;
  (*(v4 + 32))(v8, v10, ObjectType, v4);
  v10[8] = v8[8];
  v10[9] = v8[9];
  v11 = v9;
  v10[4] = v8[4];
  v10[5] = v8[5];
  v10[6] = v8[6];
  v10[7] = v8[7];
  v10[0] = v8[0];
  v10[1] = v8[1];
  v10[2] = v8[2];
  v10[3] = v8[3];
  if (sub_1D775F3CC(v10) != 1)
  {
    Offer.upsellScenario()();
    sub_1D785CD9C(v8, sub_1D7814634);
    if (v7 <= 1u)
    {
      if (v7)
      {
        return 0x73676E69766173;
      }
    }

    else if (v7 == 2)
    {
      return 0x6465726563697270;
    }

    else if (v7 == 3)
    {
      return 0x756C617674736562;
    }

    else
    {
      return 0x6974736567677573;
    }
  }

  return v2;
}

uint64_t sub_1D785C5B4@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  if (*a1 == 13)
  {
    v4 = 4;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v2[4];
  ObjectType = swift_getObjectType();
  LOBYTE(v37[0]) = v4;
  (*(v5 + 40))(v35, v37, ObjectType, v5);
  v44 = v35[8];
  v45 = v35[9];
  v46 = v36;
  v40 = v35[4];
  v41 = v35[5];
  v42 = v35[6];
  v43 = v35[7];
  v37[0] = v35[0];
  v37[1] = v35[1];
  v38 = v35[2];
  v39 = v35[3];
  if (sub_1D775F3CC(v37) == 1)
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v7 = sub_1D78B4304();
    __swift_project_value_buffer(v7, qword_1EE09C270);
    v8 = sub_1D78B6084();
    v9 = sub_1D78B42E4();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D7739000, v9, v8, "No best offer found. activationEligibility cannot be determined.", v10, 2u);
      MEMORY[0x1DA7043F0](v10, -1, -1);
    }

    goto LABEL_10;
  }

  if (*(&v41 + 1))
  {
    v13 = v46;
    if (v46)
    {
      v14 = qword_1EE0904F0;

      if (v14 != -1)
      {
        swift_once();
      }

      v15 = sub_1D78B4304();
      __swift_project_value_buffer(v15, qword_1EE09C270);
      v16 = sub_1D78B6084();

      v17 = sub_1D78B42E4();

      if (os_log_type_enabled(v17, v16))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v34 = v19;
        *v18 = 136315138;
        v20 = MEMORY[0x1DA703160](v13, MEMORY[0x1E69E6158]);
        v22 = sub_1D77AD82C(v20, v21, &v34);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_1D7739000, v17, v16, "Configurable Offer found. activationEligibility is configurableOffer(selectors: %s)", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x1DA7043F0](v19, -1, -1);
        MEMORY[0x1DA7043F0](v18, -1, -1);
      }

      sub_1D785CD9C(v35, sub_1D7814634);
      *a2 = v13;
      v23 = *MEMORY[0x1E69B67F8];
      v24 = sub_1D78B5B04();
      v25 = *(v24 - 8);
      (*(v25 + 104))(a2, v23, v24);
      return (*(v25 + 56))(a2, 0, 1, v24);
    }

    if (__PAIR128__(0x80000001D78CF0C0, 0xD000000000000019) == v44 || (sub_1D78B6724() & 1) != 0)
    {
      goto LABEL_22;
    }

LABEL_25:
    if (!BYTE8(v38))
    {
      if (*(&v41 + 1))
      {
        if (__PAIR128__(0x80000001D78CF100, 0xD000000000000025) != v44 && (sub_1D78B6724() & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else if (!AMSMarketingItem.isBundleHardwareOffer()())
      {
        goto LABEL_26;
      }

      v28 = v2[8];
      v29 = v2[9];
      __swift_project_boxed_opaque_existential_1(v2 + 5, v28);
      if ((*(v29 + 8))(v28, v29))
      {
        sub_1D785CD9C(v35, sub_1D7814634);
        v26 = MEMORY[0x1E69B67F0];
        goto LABEL_23;
      }

      if (qword_1EE0904F0 != -1)
      {
        swift_once();
      }

      v30 = sub_1D78B4304();
      __swift_project_value_buffer(v30, qword_1EE09C270);
      v31 = sub_1D78B42E4();
      v32 = sub_1D78B60A4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1D7739000, v31, v32, "PaidBundleViaOffer paywalls feature is disabled. Using News+ paywall type.", v33, 2u);
        MEMORY[0x1DA7043F0](v33, -1, -1);
      }
    }

LABEL_26:
    sub_1D785CD9C(v35, sub_1D7814634);
LABEL_10:
    v11 = sub_1D78B5B04();
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }

  if (!AMSMarketingItem.isCIPOffer()())
  {
    goto LABEL_25;
  }

LABEL_22:
  sub_1D785CD9C(v35, sub_1D7814634);
  v26 = MEMORY[0x1E69B6800];
LABEL_23:
  v27 = *v26;
  v24 = sub_1D78B5B04();
  v25 = *(v24 - 8);
  (*(v25 + 104))(a2, v27, v24);
  return (*(v25 + 56))(a2, 0, 1, v24);
}

void *OfferOverrideProvider.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  return v0;
}

uint64_t sub_1D785CD9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1D785D07C(uint64_t a1, char *a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D785D0F0(a1, a2);
  }

  return result;
}

double sub_1D785D0F0(uint64_t a1, char *a2)
{
  v41 = a1;
  v4 = type metadata accessor for HideMyEmailSignupDataModel(0);
  v5 = v4 - 8;
  v44 = *(v4 - 8);
  v6 = *(v44 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v42 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v38 - v13;
  v40 = *(a1 + 96);
  v15 = *a2;
  v16 = *(a2 + 1);
  v17 = *(a2 + 2);
  v18 = *(a2 + 3);
  v19 = *(a2 + 5);
  v48 = *(a2 + 4);
  v49 = v19;
  v20 = *(a2 + 3);
  v46 = *(a2 + 2);
  v47 = v20;
  v39 = *(a2 + 13);
  v21 = v39;
  sub_1D7862A64(&a2[*(v5 + 48)], &v38 + *(v5 + 48) - v13, type metadata accessor for PurchaseContext);
  v22 = *&a2[*(v5 + 52)];
  *v14 = v15;
  *(v14 + 1) = v16;
  *(v14 + 2) = v17;
  *(v14 + 3) = v18;
  v23 = v47;
  *(v14 + 2) = v46;
  *(v14 + 3) = v23;
  v24 = v49;
  *(v14 + 4) = v48;
  *(v14 + 5) = v24;
  v14[96] = v40;
  *(v14 + 13) = v21;
  *&v14[*(v5 + 52)] = v22;
  v25 = sub_1D7745694(&qword_1EC9CAF98, type metadata accessor for HideMyEmailSignupBlueprintModifierFactory, &unk_1D78CA23C);
  v26 = *(v25 + 40);

  sub_1D7815814(&v46, v45);
  v27 = type metadata accessor for HideMyEmailSignupBlueprintModifierFactory();
  swift_unknownObjectRetain();
  v28 = v22;
  v45[0] = v26(v14, v27, v25);
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = v42;
  sub_1D7862A64(a2, v42, type metadata accessor for HideMyEmailSignupDataModel);
  v31 = v43;
  sub_1D7862A64(v41, v43, type metadata accessor for HideMyEmailSignupDataModel);
  v32 = *(v44 + 80);
  v33 = (v32 + 24) & ~v32;
  v34 = (v6 + v32 + v33) & ~v32;
  v35 = swift_allocObject();
  *(v35 + 16) = v29;
  sub_1D7862ACC(v30, v35 + v33);
  sub_1D7862ACC(v31, v35 + v34);
  v36 = MEMORY[0x1E69D7A48];
  sub_1D7862BD0(0, &qword_1EC9CAFA0, MEMORY[0x1E69D7A48]);
  sub_1D78627F8(&qword_1EC9CAA78, &qword_1EC9CAFA0, v36, MEMORY[0x1E69D7A50]);

  sub_1D78B47E4();

  sub_1D786296C(v14);

  return result;
}

double sub_1D785D49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v7 = sub_1D7745694(&qword_1EC9CAF98, type metadata accessor for HideMyEmailSignupBlueprintModifierFactory, &unk_1D78CA23C);
    v8 = *(v7 + 48);
    v9 = type metadata accessor for HideMyEmailSignupBlueprintModifierFactory();
    v8(a3, v9, v7);

    if (*(a4 + 96) != *(a3 + 96))
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {

        v10 = MEMORY[0x1E69D7A48];
        sub_1D7862BD0(0, &qword_1EC9CAFA0, MEMORY[0x1E69D7A48]);
        sub_1D78627F8(&qword_1EC9CAA78, &qword_1EC9CAFA0, v10, MEMORY[0x1E69D7A50]);
        sub_1D78B47E4();
      }
    }
  }

  return result;
}

uint64_t sub_1D785D664@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D774584C(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B37D4();
  result = sub_1D78B39E4();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for HideMyEmailSignupModule();
    v7 = swift_allocObject();
    result = sub_1D7741E34(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for HideMyEmailSignupModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1D785D714()
{
  type metadata accessor for HideMyEmailSignupViewController();
  sub_1D78B3E44();

  sub_1D773CA14(0, &qword_1EE0920E0, &protocol descriptor for HideMyEmailSignupStylerType, 1);
  sub_1D78B3E54();

  sub_1D773CA14(0, &unk_1EE090628, &protocol descriptor for HideMyEmailSignupBlueprintFooterViewRendererType, 1);
  sub_1D78B3E54();

  sub_1D773CA14(0, &qword_1EE090620, &protocol descriptor for HideMyEmailSignupBlueprintHeaderViewRendererType, 1);
  sub_1D78B3E54();

  sub_1D773CA14(0, &qword_1EE0920E8, &protocol descriptor for HideMyEmailSignupRouterType, 1);
  sub_1D78B3E54();
  type metadata accessor for HideMyEmailSignupRouter();
  sub_1D78B3824();

  sub_1D773CA14(0, &unk_1EE090D90, &protocol descriptor for HideMyEmailSignupEventHandlerType, 0);
  sub_1D78B3E54();

  sub_1D773CA14(0, qword_1EE0910F8, &protocol descriptor for HideMyEmailSignupInteractorType, 0);
  sub_1D78B3E54();

  sub_1D773CA14(0, qword_1EE090F20, &protocol descriptor for HideMyEmailSignupDataManagerType, 0);
  sub_1D78B3E54();

  sub_1D7862BD0(0, &qword_1EE090448, MEMORY[0x1E69D7A68]);
  sub_1D78B3E44();

  type metadata accessor for HideMyEmailSignupBlueprintModifierFactory();
  sub_1D78B3E44();

  sub_1D7861D34(0);
  sub_1D78B3E44();
  sub_1D78B3834();

  sub_1D78624AC(0);
  sub_1D78B3E44();

  sub_1D7861E40(0, v0);
  sub_1D78B3E44();

  sub_1D7862218(0);
  sub_1D78B3E44();

  type metadata accessor for HideMyEmailSignupBlueprintLayoutBuilder();
  sub_1D78B3E44();

  sub_1D7862598(0);
  sub_1D78B3E44();

  sub_1D773F004(0, &qword_1EE08FEE8, 0x1E69DD020);
  sub_1D78B3E44();

  sub_1D7861F0C(0);
  sub_1D78B3E44();

  sub_1D773CA14(0, &unk_1EE090338, MEMORY[0x1E69D85B0], 0);
  sub_1D78B3E54();

  sub_1D7862074(0);
  sub_1D78B3E44();
  sub_1D78B3834();

  sub_1D7862294(0);
  sub_1D78B3E44();
  sub_1D78B3834();

  sub_1D78628A8(0, &qword_1EE090360, MEMORY[0x1E69D8408]);
  sub_1D78B3E44();

  type metadata accessor for HideMyEmailSignupBlueprintViewCellProvider();
  sub_1D78B3E44();
  sub_1D78B3834();

  sub_1D773CA14(0, qword_1EE090AE0, &protocol descriptor for HideMyEmailSignupChoiceViewRendererType, 1);
  sub_1D78B3E54();

  sub_1D773CA14(0, qword_1EE0907A8, &protocol descriptor for HideMyEmailSignupAlternateViewRendererType, 1);
  sub_1D78B3E54();

  type metadata accessor for HideMyEmailSignupBlueprintViewHeaderFooterProvider();
  sub_1D78B3E44();
  sub_1D78B3834();

  sub_1D78628A8(0, &unk_1EE0903A0, MEMORY[0x1E69D81A8]);
  sub_1D78B3E44();

  sub_1D78B4834();
  sub_1D78B3E44();

  sub_1D78626EC(0);
  sub_1D78B3E44();
  sub_1D78B3834();

  sub_1D78B4B54();
  sub_1D78B3E44();
  sub_1D78B3834();

  sub_1D773CA14(0, &unk_1EE090328, MEMORY[0x1E69D86A0], 1);
  sub_1D78B3E54();

  return result;
}

char *sub_1D785E064(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE0920E0, &protocol descriptor for HideMyEmailSignupStylerType, 1);
  result = sub_1D78B39F4();
  if (!v15)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE090D90, &protocol descriptor for HideMyEmailSignupEventHandlerType, 0);
  result = sub_1D78B39F4();
  v3 = v12;
  if (!v12)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862598(0);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE095CE0, &protocol descriptor for PurchasePresenterType, 1);
  result = sub_1D78B39F4();
  if (v11[3])
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
    MEMORY[0x1EEE9AC00](v6, v6);
    v8 = (v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = sub_1D7862C54(*v8, v3, v4, v5, v11);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v14);
    return v10;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1D785E2A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D77432A8(0, &qword_1EC9CAF78, type metadata accessor for HideMyEmailSignupDataModel, MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v31 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE096350, &protocol descriptor for BaseStylerType, 1);
  result = sub_1D78B39F4();
  if (!v33)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = type metadata accessor for HideMyEmailSignupDataModel(0);
  sub_1D78B39F4();
  v14 = *(*(v13 - 8) + 48);
  result = v14(v11, 1, v13);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v15 = *(v11 + 13);
  swift_unknownObjectRetain();
  sub_1D786296C(v11);
  v16 = [v15 theme];
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B39F4();
  result = v14(v8, 1, v13);
  if (result != 1)
  {
    v17 = *&v8[*(v13 + 44)];
    sub_1D786296C(v8);
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
    MEMORY[0x1EEE9AC00](v18, v18);
    v20 = (v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = *v20;
    v23 = type metadata accessor for BaseStyler();
    v31[3] = v23;
    v31[4] = &off_1F5268528;
    v31[0] = v22;
    v24 = type metadata accessor for HideMyEmailSignupStyler();
    v25 = swift_allocObject();
    v26 = __swift_mutable_project_boxed_opaque_existential_1(v31, v23);
    MEMORY[0x1EEE9AC00](v26, v26);
    v28 = (v31 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v29 + 16))(v28);
    v30 = *v28;
    v25[5] = v23;
    v25[6] = &off_1F5268528;
    v25[2] = v30;
    v25[7] = v16;
    v25[8] = v17;
    __swift_destroy_boxed_opaque_existential_1(v31);
    result = __swift_destroy_boxed_opaque_existential_1(v32);
    a2[3] = v24;
    a2[4] = &off_1F526A210;
    *a2 = v25;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D785E6AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE0920E0, &protocol descriptor for HideMyEmailSignupStylerType, 1);
  result = sub_1D78B39F4();
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, &qword_1EC9CA6C8, &protocol descriptor for PublisherLogoProviderType, 1);
    result = sub_1D78B39F4();
    if (v21)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      MEMORY[0x1EEE9AC00](v5, v5);
      v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v10 = type metadata accessor for HideMyEmailSignupStyler();
      v19[3] = v10;
      v19[4] = &off_1F526A210;
      v19[0] = v9;
      v11 = type metadata accessor for HideMyEmailSignupBlueprintHeaderViewRenderer();
      v12 = swift_allocObject();
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
      MEMORY[0x1EEE9AC00](v13, v13);
      v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15);
      v17 = *v15;
      v12[5] = v10;
      v12[6] = &off_1F526A210;
      v12[2] = v17;
      sub_1D7741E34(&v20, (v12 + 7));
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = __swift_destroy_boxed_opaque_existential_1(v22);
      a2[3] = v11;
      a2[4] = &off_1F52741E0;
      *a2 = v12;
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

uint64_t sub_1D785E93C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D774584C(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B37D4();
  result = sub_1D78B39E4();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for HideMyEmailSignupRouter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    result = sub_1D7741E34(v8, v7 + 24);
    *(v7 + 64) = v5;
    a2[3] = v6;
    a2[4] = &off_1F52712A8;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D785E9F8(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for HideMyEmailSignupViewController();
  v2 = sub_1D78B39E4();
  swift_unknownObjectWeakAssign();
}

void *sub_1D785EA78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE0910F8, &protocol descriptor for HideMyEmailSignupInteractorType, 0);
  result = sub_1D78B39F4();
  v5 = v24;
  if (!v24)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE0920E8, &protocol descriptor for HideMyEmailSignupRouterType, 1);
  result = sub_1D78B39F4();
  if (!v23)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE091460, &protocol descriptor for PurchaseTransactionTrackerType, 1);
  result = sub_1D78B39F4();
  if (v21[3])
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x1EEE9AC00](v7, v7);
    v9 = (&v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v12 = type metadata accessor for HideMyEmailSignupRouter();
    v20[3] = v12;
    v20[4] = &off_1F52712A8;
    v20[0] = v11;
    type metadata accessor for HideMyEmailSignupEventHandler();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v12);
    MEMORY[0x1EEE9AC00](v14, v14);
    v16 = (&v20[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = sub_1D7862E5C(v5, v6, *v16, v21, v13);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v22);
    *a2 = v18;
    a2[1] = &off_1F52730B0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1D785ED60(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE090F20, &protocol descriptor for HideMyEmailSignupDataManagerType, 0);
  sub_1D78B39F4();
  v4 = v13;
  if (!v13)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7861D34(0);
  v6 = sub_1D78B39E4();
  if (!v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for HideMyEmailSignupBlueprintModifierFactory();
  v8 = sub_1D78B39E4();
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE095B50, &protocol descriptor for WebOptinFlowManagerType, 1);
  sub_1D78B39F4();
  if (v12[3])
  {
    sub_1D78629C8(0);
    v10 = swift_allocObject();
    v10[3] = 0;
    swift_unknownObjectWeakInit();
    v10[6] = v4;
    v10[7] = v5;
    v10[4] = v7;
    v10[5] = v9;
    sub_1D774584C(v12, (v10 + 8));
    swift_allocObject();
    swift_weakInit();
    swift_unknownObjectRetain();

    sub_1D78B3B14();

    __swift_destroy_boxed_opaque_existential_1(v12);
    __swift_destroy_boxed_opaque_existential_1(v11);
    swift_unknownObjectRelease();

    *a2 = v10;
    a2[1] = &off_1F526D838;
    return;
  }

LABEL_9:
  __break(1u);
}

void *sub_1D785EF94@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HideMyEmailSignupDataModel(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77432A8(0, &qword_1EC9CAF78, type metadata accessor for HideMyEmailSignupDataModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v27 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B39F4();
  result = (*(v5 + 48))(v12, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, &unk_1EE095CD0, &protocol descriptor for HideMyEmailServiceType, 1);
    result = sub_1D78B39F4();
    if (v29)
    {
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
      MEMORY[0x1EEE9AC00](v14, v14);
      v16 = (v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v19 = type metadata accessor for HideMyEmailService();
      v27[3] = v19;
      v27[4] = &off_1F52703E8;
      v27[0] = v18;
      type metadata accessor for HideMyEmailSignupDataManager();
      v20 = swift_allocObject();
      v21 = __swift_mutable_project_boxed_opaque_existential_1(v27, v19);
      MEMORY[0x1EEE9AC00](v21, v21);
      v23 = (v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v24 + 16))(v23);
      v25 = *v23;
      v20[6] = v19;
      v20[7] = &off_1F52703E8;
      v20[3] = v25;
      sub_1D7862A64(v12, v8, type metadata accessor for HideMyEmailSignupDataModel);
      sub_1D77432A8(0, &unk_1EC9CAF80, type metadata accessor for HideMyEmailSignupDataModel, MEMORY[0x1E69D6538]);
      swift_allocObject();
      v26 = sub_1D78B3AE4();
      sub_1D786296C(v12);
      v20[2] = v26;
      __swift_destroy_boxed_opaque_existential_1(v27);
      result = __swift_destroy_boxed_opaque_existential_1(v28);
      *a2 = v20;
      a2[1] = &off_1F5271810;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D785F384()
{
  sub_1D7862BD0(0, &qword_1EE090448, MEMORY[0x1E69D7A68]);
  swift_allocObject();
  return sub_1D78B4814();
}

void *sub_1D785F3D8()
{
  v0 = type metadata accessor for HideMyEmailSignupBlueprintFactory();
  v9[3] = v0;
  v9[4] = &off_1F526FB70;
  v9[0] = swift_allocObject();
  type metadata accessor for HideMyEmailSignupBlueprintModifierFactory();
  v1 = swift_allocObject();
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v9, v0);
  MEMORY[0x1EEE9AC00](v2, v2);
  v4 = (&v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v4);
  v6 = *v4;
  v1[5] = v0;
  v1[6] = &off_1F526FB70;
  v1[2] = v6;
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v1;
}

uint64_t sub_1D785F4F0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862BD0(0, &qword_1EE090448, MEMORY[0x1E69D7A68]);
  result = sub_1D78B39E4();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7861E40(0, v3);
    result = sub_1D78B39E4();
    if (result)
    {
      sub_1D7861D34(0);
      swift_allocObject();
      return sub_1D78B47C4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D785F5EC(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69D8438];
  sub_1D7862BD0(0, &qword_1EC9CAF58, MEMORY[0x1E69D8438]);
  swift_allocObject();
  sub_1D78B4D04();
  sub_1D7862BD0(0, &qword_1EC9CAF60, MEMORY[0x1E69D81B8]);
  swift_allocObject();
  sub_1D78627F8(&qword_1EC9CAF68, &qword_1EC9CAF58, v3, MEMORY[0x1E69D8440]);
  sub_1D78B4BE4();
  sub_1D78B47D4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D78624AC(0);
  if (sub_1D78B39E4())
  {
    swift_allocObject();
    sub_1D7745694(&qword_1EC9CAF70, sub_1D78624AC, MEMORY[0x1E69D84A8]);
    sub_1D78B4BE4();
    sub_1D78B47D4();
  }

  else
  {
    __break(1u);
  }
}

void *sub_1D785F7A4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862218(0);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE090338, MEMORY[0x1E69D85B0], 0);
  result = sub_1D78B39B4();
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for HideMyEmailSignupBlueprintLayoutBuilder();
  result = sub_1D78B39E4();
  if (result)
  {
    sub_1D78624AC(0);
    swift_allocObject();
    return sub_1D78B4D64();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1D785F8E8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7861F0C(0);
  result = sub_1D78B39E4();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, &qword_1EC9CAF50, MEMORY[0x1E69D8778], 1);
    result = sub_1D78B39F4();
    if (v3)
    {
      sub_1D7861E40(0, 0);
      swift_allocObject();
      return sub_1D78B4894();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D785F9E8(__n128 a1)
{
  sub_1D7862218(0);
  swift_allocObject();
  return sub_1D78B4A04();
}

void *sub_1D785FA20(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE0920E0, &protocol descriptor for HideMyEmailSignupStylerType, 1);
  result = sub_1D78B39F4();
  if (v16)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x1EEE9AC00](v2, v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for HideMyEmailSignupStyler();
    v14[3] = v7;
    v14[4] = &off_1F526A210;
    v14[0] = v6;
    type metadata accessor for HideMyEmailSignupBlueprintLayoutBuilder();
    v8 = swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v14, v7);
    MEMORY[0x1EEE9AC00](v9, v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v8[5] = v7;
    v8[6] = &off_1F526A210;
    v8[2] = v13;
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D785FC30(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862BD0(0, &qword_1EE090448, MEMORY[0x1E69D7A68]);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7861F0C(0);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EE090338, MEMORY[0x1E69D85B0], 0);
  result = sub_1D78B39B4();
  if (!v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EC9CAF50, MEMORY[0x1E69D8778], 1);
  result = sub_1D78B39F4();
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78628A8(0, &unk_1EE0903A0, MEMORY[0x1E69D81A8]);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B4834();
  result = sub_1D78B39A4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EC9CAF30, MEMORY[0x1E69D7A90], 0);
  result = sub_1D78B39F4();
  if (!v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EC9CAF38, MEMORY[0x1E69D7778], 1);
  result = sub_1D78B39F4();
  if (v5)
  {
    sub_1D7862598(0);
    v4 = objc_allocWithZone(v3);
    return sub_1D78B4A64();
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_1D785FF40()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69D88C8]);

  return [v0 initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
}

uint64_t sub_1D785FF8C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773F004(0, &qword_1EE08FEE8, 0x1E69DD020);
  result = sub_1D78B39A4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862074(0);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862294(0);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78628A8(0, &qword_1EE090360, MEMORY[0x1E69D8408]);
  result = sub_1D78B39E4();
  if (result)
  {
    sub_1D7861F0C(0);
    swift_allocObject();
    return sub_1D78B4944();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D7860114@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7861F0C(0);
  result = sub_1D78B39E4();
  if (result)
  {
    sub_1D78B4954();

    sub_1D78B4CC4();
    swift_allocObject();
    result = sub_1D78B4CB4();
    v4 = MEMORY[0x1E69D8400];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D78601CC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862BD0(0, &qword_1EE090448, MEMORY[0x1E69D7A68]);
  v2 = sub_1D78B39E4();
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862218(0);
  if (!sub_1D78B39E4())
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for HideMyEmailSignupBlueprintViewCellProvider();
  sub_1D774584C(a1, v8);
  v4 = swift_allocObject();
  sub_1D7741E34(v8, v4 + 16);
  v5 = sub_1D78B39C4();

  if (v5)
  {
    *&v8[0] = v3;
    sub_1D7862074(0);
    v7 = objc_allocWithZone(v6);
    sub_1D78B4C54();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1D786034C(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D773F004(0, &qword_1EE08FEE8, 0x1E69DD020);
  v3 = sub_1D78B39A4();
  if (v3)
  {
    v4 = v3;
    sub_1D773F004(0, &unk_1EE08FED0, 0x1E69DCEF8);
    sub_1D78B5D24();
    sub_1D78B38E4();
  }

  else
  {
    __break(1u);
  }
}

void *sub_1D786044C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D773CA14(0, &unk_1EE090328, MEMORY[0x1E69D86A0], 1);
  result = sub_1D78B39B4();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_1D78B4FE4();
    sub_1D78B4C64();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D7860520(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862BD0(0, &qword_1EE090448, MEMORY[0x1E69D7A68]);
  result = sub_1D78B39E4();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862218(0);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for HideMyEmailSignupBlueprintViewHeaderFooterProvider();
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78628A8(0, &unk_1EE0903A0, MEMORY[0x1E69D81A8]);
  result = sub_1D78B39E4();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EC9CAF30, MEMORY[0x1E69D7A90], 0);
  result = sub_1D78B39F4();
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EC9CAF38, MEMORY[0x1E69D7778], 1);
  result = sub_1D78B39F4();
  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &unk_1EC9CAF40, MEMORY[0x1E69D8040], 1);
  result = sub_1D78B39F4();
  if (v5)
  {
    sub_1D7862294(0);
    v4 = objc_allocWithZone(v3);
    return sub_1D78B4BF4();
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D78607AC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D78B4834();
  sub_1D78B39A4();
  sub_1D78B4C04();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D78626EC(0);
  if (sub_1D78B39E4())
  {
    sub_1D7745694(&qword_1EC9CAF28, sub_1D78626EC, MEMORY[0x1E69D84F8]);
  }

  return sub_1D78B4C14();
}

uint64_t sub_1D78608B0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862BD0(0, &qword_1EE090448, MEMORY[0x1E69D7A68]);
  result = sub_1D78B39E4();
  if (result)
  {
    sub_1D78628A8(0, &qword_1EE090360, MEMORY[0x1E69D8408]);
    return sub_1D78B4CD4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D7860960(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, qword_1EE090AE0, &protocol descriptor for HideMyEmailSignupChoiceViewRendererType, 1);
  result = sub_1D78B39F4();
  if (v34)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, qword_1EE0907A8, &protocol descriptor for HideMyEmailSignupAlternateViewRendererType, 1);
    result = sub_1D78B39F4();
    if (v32)
    {
      v3 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
      v26[2] = v26;
      MEMORY[0x1EEE9AC00](v3, v3);
      v5 = (v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v6 + 16))(v5);
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
      v26[1] = v26;
      MEMORY[0x1EEE9AC00](v7, v7);
      v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9);
      v11 = *v5;
      v12 = *v9;
      v13 = type metadata accessor for HideMyEmailSignupChoiceViewRenderer();
      v30[3] = v13;
      v30[4] = &off_1F526D178;
      v30[0] = v11;
      v14 = type metadata accessor for HideMyEmailSignupAlternateViewRenderer();
      v28 = v14;
      v29 = &off_1F52744A8;
      v27[0] = v12;
      type metadata accessor for HideMyEmailSignupBlueprintViewCellProvider();
      v15 = swift_allocObject();
      v16 = __swift_mutable_project_boxed_opaque_existential_1(v30, v13);
      MEMORY[0x1EEE9AC00](v16, v16);
      v18 = (v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18);
      v20 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      MEMORY[0x1EEE9AC00](v20, v20);
      v22 = (v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v23 + 16))(v22);
      v24 = *v18;
      v25 = *v22;
      v15[5] = v13;
      v15[6] = &off_1F526D178;
      v15[2] = v24;
      v15[10] = v14;
      v15[11] = &off_1F52744A8;
      v15[7] = v25;
      v15[13] = 0;
      swift_unknownObjectWeakInit();
      __swift_destroy_boxed_opaque_existential_1(v27);
      __swift_destroy_boxed_opaque_existential_1(v30);
      __swift_destroy_boxed_opaque_existential_1(v31);
      __swift_destroy_boxed_opaque_existential_1(v33);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D7860D7C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for HideMyEmailSignupViewController();
  v4 = sub_1D78B39E4();
  v3 = &off_1F52742A8;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 104) = v3;
  swift_unknownObjectWeakAssign();
}

void *sub_1D7860E30@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE0920E0, &protocol descriptor for HideMyEmailSignupStylerType, 1);
  result = sub_1D78B39F4();
  if (v23)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x1EEE9AC00](v8, v8);
    v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v10;
    v13 = type metadata accessor for HideMyEmailSignupStyler();
    v21[3] = v13;
    v21[4] = &off_1F526A210;
    v21[0] = v12;
    v14 = a2(0);
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v21, v13);
    MEMORY[0x1EEE9AC00](v16, v16);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v15[5] = v13;
    v15[6] = &off_1F526A210;
    v15[2] = v20;
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v22);
    a4[3] = v14;
    a4[4] = a3;
    *a4 = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D7861088(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090620, &protocol descriptor for HideMyEmailSignupBlueprintHeaderViewRendererType, 1);
  result = sub_1D78B39F4();
  if (v15)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, &unk_1EE090628, &protocol descriptor for HideMyEmailSignupBlueprintFooterViewRendererType, 1);
    result = sub_1D78B39F4();
    if (v13)
    {
      v3 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
      MEMORY[0x1EEE9AC00](v3, v3);
      v5 = (v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v6 + 16))(v5);
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
      MEMORY[0x1EEE9AC00](v7, v7);
      v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9);
      v11 = sub_1D7861ABC(*v5, *v9);
      __swift_destroy_boxed_opaque_existential_1(v12);
      __swift_destroy_boxed_opaque_existential_1(v14);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D78612C0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for HideMyEmailSignupViewController();
  v3 = sub_1D78B39E4();
  if (v3)
  {
    v5 = v3;
    swift_getObjectType();
    v4 = swift_conformsToProtocol2();
    if (v4)
    {
      *(v2 + OBJC_IVAR____TtC16NewsSubscription50HideMyEmailSignupBlueprintViewHeaderFooterProvider_delegate + 8) = v4;
      swift_unknownObjectWeakAssign();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D7861390(void *a1)
{
  v2 = sub_1D78B4DF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1D78B4E14();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1D78628A8(0, &qword_1EC9CAF20, MEMORY[0x1E69D81A0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v17 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862BD0(0, &qword_1EE090448, MEMORY[0x1E69D7A68]);
  result = sub_1D78B39E4();
  if (result)
  {
    v16 = result;
    (*(v11 + 104))(v14, *MEMORY[0x1E69D8198], v10);
    *v6 = 0;
    (*(v3 + 104))(v6, *MEMORY[0x1E69D8518], v2);
    sub_1D78B4E04();
    v17[1] = v16;
    sub_1D78628A8(0, &unk_1EE0903A0, MEMORY[0x1E69D81A8]);
    swift_allocObject();
    return sub_1D78B4BD4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7861638(void *a1)
{
  sub_1D786283C(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D78BCB50;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78626EC(0);
  result = sub_1D78B39E4();
  if (result)
  {
    v4 = result;
    v5 = sub_1D7745694(&qword_1EC9CAF18, sub_1D78626EC, MEMORY[0x1E69D8500]);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D78B4B54();
    result = sub_1D78B39A4();
    if (result)
    {
      v6 = MEMORY[0x1E69D8038];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_1D78B4834();
      swift_allocObject();
      return sub_1D78B4824();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7861774(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7861F0C(0);
  result = sub_1D78B39E4();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7862BD0(0, &qword_1EE090448, MEMORY[0x1E69D7A68]);
    result = sub_1D78B39E4();
    if (result)
    {
      sub_1D78626EC(0);
      swift_allocObject();
      return sub_1D78B4DC4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D78618A4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7861F0C(0);
  result = sub_1D78B39E4();
  if (result)
  {
    sub_1D78B4954();

    sub_1D78B4B54();
    swift_allocObject();
    return sub_1D78B4B44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7861960(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D7862598(0);
  v8 = sub_1D78B39E4();
  if (v8)
  {
    v9 = v8;
    v10 = sub_1D7745694(a3, sub_1D7862598, a4);
    v8 = v9;
  }

  else
  {
    v10 = 0;
  }

  return a5(v8, v10);
}

uint64_t sub_1D7861A14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7862598(0);
  v4 = v3;
  result = sub_1D78B39E4();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_1D7745694(&qword_1EC9CAEF0, sub_1D7862598, MEMORY[0x1E69D7F00]);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D7861ABC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = type metadata accessor for HideMyEmailSignupBlueprintHeaderViewRenderer();
  v26[3] = v5;
  v26[4] = &off_1F52741E0;
  v26[0] = a1;
  v24 = v4;
  v25 = &off_1F526CD98;
  v23[0] = a2;
  v6 = type metadata accessor for HideMyEmailSignupBlueprintViewHeaderFooterProvider();
  v7 = objc_allocWithZone(v6);
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v26, v5);
  MEMORY[0x1EEE9AC00](v8, v8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x1EEE9AC00](v12, v12);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v10;
  v17 = *v14;
  v22[3] = v5;
  v22[4] = &off_1F52741E0;
  v21[4] = &off_1F526CD98;
  v22[0] = v16;
  v21[3] = v4;
  v21[0] = v17;
  *&v7[OBJC_IVAR____TtC16NewsSubscription50HideMyEmailSignupBlueprintViewHeaderFooterProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1D774584C(v22, &v7[OBJC_IVAR____TtC16NewsSubscription50HideMyEmailSignupBlueprintViewHeaderFooterProvider_headerRenderer]);
  sub_1D774584C(v21, &v7[OBJC_IVAR____TtC16NewsSubscription50HideMyEmailSignupBlueprintViewHeaderFooterProvider_footerRenderer]);
  v20.receiver = v7;
  v20.super_class = v6;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v18;
}

void sub_1D7861D34(uint64_t a1)
{
  if (!qword_1EE090470)
  {
    v1 = MEMORY[0x1E69D7A68];
    sub_1D7862BD0(255, &qword_1EE090448, MEMORY[0x1E69D7A68]);
    sub_1D7861E40(255, v2);
    sub_1D78627F8(&unk_1EE090450, &qword_1EE090448, v1, MEMORY[0x1E69D7A78]);
    sub_1D7745694(&unk_1EE090428, sub_1D7861E40, MEMORY[0x1E69D7B10]);
    v3 = sub_1D78B4804();
    if (!v4)
    {
      atomic_store(v3, &qword_1EE090470);
    }
  }
}

void sub_1D7861E40(uint64_t a1, __n128 a2)
{
  if (!qword_1EE090418)
  {
    sub_1D7861F0C(255);
    sub_1D77CE118();
    sub_1D77CE220();
    sub_1D7745694(&unk_1EE0903F0, sub_1D7861F0C, MEMORY[0x1E69D7D50]);
    v2 = sub_1D78B48A4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EE090418);
    }
  }
}

void sub_1D7861F0C(uint64_t a1)
{
  if (!qword_1EE0903E0)
  {
    sub_1D773F004(255, &qword_1EE08FEE8, 0x1E69DD020);
    sub_1D7862074(255);
    sub_1D7862294(255);
    sub_1D78628A8(255, &qword_1EE090360, MEMORY[0x1E69D8408]);
    type metadata accessor for HideMyEmailSignupViewController();
    sub_1D7745694(&qword_1EE090378, sub_1D7862074, MEMORY[0x1E69D8280]);
    sub_1D7745694(&unk_1EE090390, sub_1D7862294, MEMORY[0x1E69D81D0]);
    sub_1D7862438(v1);
    v2 = sub_1D78B4964();
    if (!v3)
    {
      atomic_store(v2, &qword_1EE0903E0);
    }
  }
}

void sub_1D7862074(uint64_t a1)
{
  if (!qword_1EE090370)
  {
    v1 = MEMORY[0x1E69D7A68];
    sub_1D7862BD0(255, &qword_1EE090448, MEMORY[0x1E69D7A68]);
    sub_1D7862218(255);
    type metadata accessor for HideMyEmailSignupBlueprintViewCellProvider();
    type metadata accessor for HideMyEmailSignupViewController();
    sub_1D78627F8(&unk_1EE090450, &qword_1EE090448, v1, MEMORY[0x1E69D7A78]);
    sub_1D7745694(&qword_1EE0903D8, sub_1D7862218, MEMORY[0x1E69D7EB0]);
    sub_1D7745694(&qword_1EE0907A0, type metadata accessor for HideMyEmailSignupBlueprintViewCellProvider, &unk_1D78C5B3C);
    sub_1D7745694(&unk_1EE0910E8, type metadata accessor for HideMyEmailSignupViewController, &unk_1D78CDA18);
    v2 = sub_1D78B4C74();
    if (!v3)
    {
      atomic_store(v2, &qword_1EE090370);
    }
  }
}

void sub_1D7862218(uint64_t a1)
{
  if (!qword_1EE0903C8)
  {
    sub_1D77CE170();
    sub_1D77CE1C8();
    v1 = sub_1D78B4A14();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0903C8);
    }
  }
}

void sub_1D7862294(uint64_t a1)
{
  if (!qword_1EE090380)
  {
    v1 = MEMORY[0x1E69D7A68];
    sub_1D7862BD0(255, &qword_1EE090448, MEMORY[0x1E69D7A68]);
    sub_1D7862218(255);
    type metadata accessor for HideMyEmailSignupBlueprintViewHeaderFooterProvider();
    type metadata accessor for HideMyEmailSignupViewController();
    sub_1D78627F8(&unk_1EE090450, &qword_1EE090448, v1, MEMORY[0x1E69D7A78]);
    sub_1D7745694(&qword_1EE0903D8, sub_1D7862218, MEMORY[0x1E69D7EB0]);
    sub_1D7745694(&qword_1EE090608, type metadata accessor for HideMyEmailSignupBlueprintViewHeaderFooterProvider, &unk_1D78CBA94);
    sub_1D7745694(&unk_1EE0910E8, type metadata accessor for HideMyEmailSignupViewController, &unk_1D78CDA18);
    v2 = sub_1D78B4C24();
    if (!v3)
    {
      atomic_store(v2, &qword_1EE090380);
    }
  }
}

unint64_t sub_1D7862438(__n128 a1)
{
  result = qword_1EE090368;
  if (!qword_1EE090368)
  {
    sub_1D78628A8(255, &qword_1EE090360, MEMORY[0x1E69D8408]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE090368);
  }

  return result;
}

void sub_1D78624AC(uint64_t a1)
{
  if (!qword_1EE090350)
  {
    sub_1D7862218(255);
    type metadata accessor for HideMyEmailSignupBlueprintLayoutBuilder();
    sub_1D7745694(&qword_1EE0903D8, sub_1D7862218, MEMORY[0x1E69D7EB0]);
    sub_1D7745694(qword_1EE090B88, type metadata accessor for HideMyEmailSignupBlueprintLayoutBuilder, &unk_1D78C1640);
    v1 = sub_1D78B4D74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE090350);
    }
  }
}

void sub_1D7862598(uint64_t a1)
{
  if (!qword_1EE0903C0)
  {
    v1 = MEMORY[0x1E69D7A68];
    sub_1D7862BD0(255, &qword_1EE090448, MEMORY[0x1E69D7A68]);
    sub_1D7861F0C(255);
    type metadata accessor for HideMyEmailSignupViewController();
    sub_1D78627F8(&unk_1EE090450, &qword_1EE090448, v1, MEMORY[0x1E69D7A78]);
    sub_1D7745694(&unk_1EE0903F0, sub_1D7861F0C, MEMORY[0x1E69D7D50]);
    sub_1D7745694(&unk_1EE0910E8, type metadata accessor for HideMyEmailSignupViewController, &unk_1D78CDA18);
    v2 = sub_1D78B4A84();
    if (!v3)
    {
      atomic_store(v2, &qword_1EE0903C0);
    }
  }
}

void sub_1D78626EC(uint64_t a1)
{
  if (!qword_1EC9CAEE8)
  {
    sub_1D7861F0C(255);
    v1 = MEMORY[0x1E69D7A68];
    sub_1D7862BD0(255, &qword_1EE090448, MEMORY[0x1E69D7A68]);
    sub_1D7745694(&unk_1EE0903F0, sub_1D7861F0C, MEMORY[0x1E69D7D50]);
    sub_1D78627F8(&unk_1EE090460, &qword_1EE090448, v1, MEMORY[0x1E69D7A70]);
    v2 = sub_1D78B4DD4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC9CAEE8);
    }
  }
}

uint64_t sub_1D78627F8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D7862BD0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D786283C(uint64_t a1)
{
  if (!qword_1EC9CAF08)
  {
    sub_1D773CA14(255, &qword_1EC9CAF10, MEMORY[0x1E69D7E40], 0);
    v1 = sub_1D78B66F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CAF08);
    }
  }
}

void sub_1D78628A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = MEMORY[0x1E69D7A68];
    sub_1D7862BD0(255, &qword_1EE090448, MEMORY[0x1E69D7A68]);
    v8 = v7;
    v9 = sub_1D78627F8(&unk_1EE090450, &qword_1EE090448, v6, MEMORY[0x1E69D7A78]);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D786296C(uint64_t a1)
{
  v2 = type metadata accessor for HideMyEmailSignupDataModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D78629C8(uint64_t a1)
{
  if (!qword_1EC9CAF90)
  {
    v2 = type metadata accessor for HideMyEmailSignupBlueprintModifierFactory();
    v3 = sub_1D7745694(&qword_1EC9CAF98, type metadata accessor for HideMyEmailSignupBlueprintModifierFactory, &unk_1D78CA23C);
    v5 = type metadata accessor for HideMyEmailSignupInteractor(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EC9CAF90);
    }
  }
}

uint64_t sub_1D7862A64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7862ACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HideMyEmailSignupDataModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1D7862B30(uint64_t a1)
{
  v3 = *(type metadata accessor for HideMyEmailSignupDataModel(0) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  return sub_1D785D49C(a1, v6, v1 + v5, v7);
}

void sub_1D7862BD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
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

char *sub_1D7862C54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = type metadata accessor for HideMyEmailSignupStyler();
  v27[3] = v10;
  v27[4] = &off_1F526A210;
  v27[0] = a1;
  v11 = type metadata accessor for HideMyEmailSignupViewController();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v27, v10);
  MEMORY[0x1EEE9AC00](v13, v13);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v26[3] = v10;
  v26[4] = &off_1F526A210;
  v26[0] = v17;
  sub_1D774584C(v26, &v12[OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_styler]);
  v18 = &v12[OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_eventHandler];
  *v18 = a2;
  *(v18 + 1) = a3;
  *&v12[OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_blueprintViewController] = a4;
  sub_1D774584C(a5, &v12[OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_purchasePresenter]);
  v25.receiver = v12;
  v25.super_class = v11;
  swift_unknownObjectRetain();
  v19 = a4;
  v20 = objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, 0, 0);
  *(*&v20[OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_eventHandler] + 24) = &off_1F52742B0;
  swift_unknownObjectWeakAssign();
  v21 = *&v20[OBJC_IVAR____TtC16NewsSubscription31HideMyEmailSignupViewController_blueprintViewController];
  v22 = v20;
  v23 = v21;
  sub_1D78B4A54();

  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v22;
}

void *sub_1D7862E5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v14[3] = type metadata accessor for HideMyEmailSignupRouter();
  v14[4] = &off_1F52712A8;
  v14[0] = a3;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[4] = a1;
  a5[5] = a2;
  sub_1D774584C(v14, (a5 + 6));
  sub_1D774584C(a4, (a5 + 11));
  ObjectType = swift_getObjectType();
  v11 = *(a2 + 16);
  swift_unknownObjectRetain();

  v11(v12, &off_1F5273098, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return a5;
}

uint64_t WebAuthenticationNotSubscribedAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t WebAuthenticationNotSubscribedAlert.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t WebAuthenticationNotSubscribedAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t WebAuthenticationNotSubscribedAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

uint64_t sub_1D7863228()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D78632F0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t PaywallImageProcessorRequest.__allocating_init(assetHandle:size:scaling:)(void *a1, uint64_t a2, double a3, double a4)
{
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v12 = sub_1D78639E8(v11, a2, a3, a4, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t PaywallImageProcessorRequest.cacheIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PaywallImageProcessorRequest.scaling.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16NewsSubscription28PaywallImageProcessorRequest_scaling;
  v4 = sub_1D78B6214();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PaywallImageProcessorRequest.init(assetHandle:size:scaling:)(void *a1, uint64_t a2, double a3, double a4)
{
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  MEMORY[0x1EEE9AC00](v11, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = sub_1D78637C0(a3, a4, v13, a2, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v15;
}

uint64_t PaywallImageProcessorRequest.deinit()
{

  v1 = OBJC_IVAR____TtC16NewsSubscription28PaywallImageProcessorRequest_scaling;
  v2 = sub_1D78B6214();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription28PaywallImageProcessorRequest_assetHandle));
  return v0;
}

uint64_t PaywallImageProcessorRequest.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16NewsSubscription28PaywallImageProcessorRequest_scaling;
  v2 = sub_1D78B6214();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription28PaywallImageProcessorRequest_assetHandle));

  return swift_deallocClassInstance();
}

uint64_t sub_1D786378C()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_1D78637C0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19[3] = a6;
  v19[4] = a7;
  __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a6 - 8) + 32))();
  sub_1D774584C(v19, a5 + OBJC_IVAR____TtC16NewsSubscription28PaywallImageProcessorRequest_assetHandle);
  sub_1D7863C3C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BCAB0;
  strcpy((inited + 32), "paywallImage");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  sub_1D774584C(v19, inited + 48);
  v13 = sub_1D77FEC44(inited);
  swift_setDeallocating();
  sub_1D7863C94(inited + 32);
  *(a5 + OBJC_IVAR____TtC16NewsSubscription28PaywallImageProcessorRequest_assetHandles) = v13;
  *(a5 + 32) = a1;
  *(a5 + 40) = a2;
  v14 = OBJC_IVAR____TtC16NewsSubscription28PaywallImageProcessorRequest_scaling;
  v15 = sub_1D78B6214();
  v16 = *(v15 - 8);
  (*(v16 + 16))(a5 + v14, a4, v15);
  v17 = sub_1D78B46A4();
  MEMORY[0x1DA702FF0](v17);

  MEMORY[0x1DA702FF0](14906, 0xE200000000000000);
  type metadata accessor for CGSize(0);
  sub_1D78B6504();
  (*(v16 + 8))(a4, v15);
  *(a5 + 16) = 0;
  *(a5 + 24) = 0xE000000000000000;
  __swift_destroy_boxed_opaque_existential_1(v19);
  return a5;
}

uint64_t sub_1D78639E8(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  (*(v13 + 16))(v15, a1, a6);
  return sub_1D78637C0(a3, a4, v15, a2, v16, a6, a7);
}

uint64_t type metadata accessor for PaywallImageProcessorRequest(uint64_t a1)
{
  result = qword_1EE091E38;
  if (!qword_1EE091E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7863B54(uint64_t a1)
{
  result = sub_1D78B6214();
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

void sub_1D7863C3C(uint64_t a1)
{
  if (!qword_1EE08FA48)
  {
    sub_1D776F9A0(255);
    v1 = sub_1D78B66F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE08FA48);
    }
  }
}

uint64_t sub_1D7863C94(uint64_t a1)
{
  sub_1D776F9A0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for HideMyEmailSignupPrewarmBlueprintModifier(uint64_t a1)
{
  result = qword_1EC9CAFA8;
  if (!qword_1EC9CAFA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7863D68(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  sub_1D7816448(0, &qword_1EC9CAAA0, MEMORY[0x1E69D7ED8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v20 - v11;
  sub_1D7816448(0, &qword_1EC9CA2A8, MEMORY[0x1E69D87F8]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v20 - v17;
  __swift_project_boxed_opaque_existential_1((v4 + *(a4 + 24)), *(v4 + *(a4 + 24) + 24));
  sub_1D7854B38((v4 + *(a4 + 20)), v18);
  sub_1D77CE118();
  sub_1D77CE220();
  sub_1D78B4A24();
  a2(v12);
  (*(v9 + 8))(v12, v8);
  return (*(v15 + 8))(v18, v14);
}

unint64_t sub_1D7863F84()
{
  result = qword_1EC9CAFB8;
  if (!qword_1EC9CAFB8)
  {
    type metadata accessor for HideMyEmailSignupPrewarmBlueprintModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAFB8);
  }

  return result;
}

id sub_1D7863FDC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v173 = a3;
  sub_1D776F504(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v174 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v176 = *(a2 + 8);
  v14 = *(a2 + 48);
  v13 = *(a2 + 56);
  v16 = *(a2 + 64);
  v15 = *(a2 + 72);
  v17 = *(a2 + 80);
  [v17 horizontalSizeClass];
  sub_1D78B6054();
  v19 = v12 - v18;
  v167 = v14;
  v171 = v15;
  v172 = v13;
  sub_1D78B6054();
  sub_1D78B37E4();
  if (v19 >= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  v22 = __swift_project_boxed_opaque_existential_1(v5 + 7, v5[10]);
  LODWORD(x) = sub_1D7859910(v17, *v22);
  __swift_project_boxed_opaque_existential_1(v5 + 7, v5[10]);
  v168 = sub_1D7859A84(v17, v21, 1.79769313e308);
  v166 = v23;
  __swift_project_boxed_opaque_existential_1(v5 + 7, v5[10]);
  v170 = sub_1D7859C68(v17, v21, 1.79769313e308);
  v169 = v24;
  v25 = __swift_project_boxed_opaque_existential_1(v5 + 7, v5[10]);
  v26 = *v25;
  v27 = (*v25 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler);
  v29 = v27[3];
  v28 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v29);
  v30 = OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_viewModel;
  *&v31 = COERCE_DOUBLE(type metadata accessor for BundlePaywallViewModel(0));
  v32 = v30 + *(v31 + 40);
  v33 = a1;
  v34 = (*(v28 + 64))(*(v26 + v32), *(v26 + v32 + 8), v17, v29, v28);
  sub_1D78B6144();
  v36 = v35;
  v38 = v37;

  __swift_project_boxed_opaque_existential_1(v5 + 7, v5[10]);
  v164 = sub_1D7859F78(v17, v21, 1.79769313e308);
  v40 = v39;
  __swift_project_boxed_opaque_existential_1(v5 + 7, v5[10]);
  v41 = sub_1D785A298(v17, v21, 1.79769313e308);
  v43 = v42;
  v177 = v17;
  result = [v17 horizontalSizeClass];
  v45 = *(a1 + 1);
  v46 = *a1 + v45;
  if (__OFADD__(*a1, v45))
  {
    __break(1u);
  }

  else
  {
    v148 = v43;
    v47 = 11.0;
    if (v43 <= 0.0)
    {
      v48 = 0.0;
    }

    else
    {
      v48 = 11.0;
    }

    v149 = v48;
    v49 = v166;
    v144 = v16;
    if (v166 <= 0.0)
    {
      v50 = 0.0;
    }

    else
    {
      v50 = 11.0;
    }

    v147 = v41;
    v51 = v169;
    v175 = v12;
    if (v169 <= 0.0)
    {
      v52 = 0.0;
    }

    else
    {
      v52 = 11.0;
    }

    v158 = v52;
    if (v38 <= 30.0)
    {
      v38 = 30.0;
    }

    if (v38 <= 0.0)
    {
      v53 = 0.0;
    }

    else
    {
      v53 = 11.0;
    }

    v156 = v53;
    v152 = v40;
    if (v40 <= 0.0)
    {
      v47 = 0.0;
    }

    v151 = v47;
    if (v36 + 120.0 > 158.0)
    {
      v54 = v36 + 120.0;
    }

    else
    {
      v54 = 158.0;
    }

    if (LOBYTE(x))
    {
      v55 = 27.0;
    }

    else
    {
      v55 = 0.0;
    }

    if (LOBYTE(x))
    {
      v56 = 109.0;
    }

    else
    {
      v56 = 0.0;
    }

    v57 = (v21 - v56) * 0.5;
    v58 = v46;
    v181 = CGRectIntegral(*(&v55 - 3));
    v59 = v168;
    x = v181.origin.x;
    y = v181.origin.y;
    width = v181.size.width;
    height = v181.size.height;
    v182.origin.y = v50 + CGRectGetMaxY(v181);
    v182.origin.x = (v21 - v59) * 0.5;
    v182.size.width = v59;
    v182.size.height = v49;
    v183 = CGRectIntegral(v182);
    v60 = v170;
    v168 = v183.origin.x;
    v166 = v183.origin.y;
    v160 = v183.size.width;
    v159 = v183.size.height;
    v184.origin.y = v158 + CGRectGetMaxY(v183);
    v184.origin.x = (v21 - v60) * 0.5;
    v184.size.width = v60;
    v184.size.height = v51;
    v185 = CGRectIntegral(v184);
    v170 = v185.origin.x;
    v169 = v185.origin.y;
    v158 = v185.size.width;
    v157 = v185.size.height;
    v186.origin.y = v156 + CGRectGetMaxY(v185);
    v186.origin.x = (v21 - v54) * 0.5;
    v61 = v167;
    v186.size.width = v54;
    v186.size.height = v38;
    v187 = CGRectIntegral(v186);
    v62 = v164;
    v156 = v187.origin.x;
    v155 = v187.origin.y;
    v154 = v187.size.width;
    v153 = v187.size.height;
    v188.origin.y = v151 + CGRectGetMaxY(v187);
    v188.origin.x = (v21 - v62) * 0.5;
    v188.size.width = v62;
    v188.size.height = v152;
    v189 = CGRectIntegral(v188);
    v164 = v189.origin.x;
    v152 = v189.origin.y;
    v151 = v189.size.width;
    v150 = v189.size.height;
    MaxY = CGRectGetMaxY(v189);
    if (a1[*(v31 + 100)])
    {
      v64 = v148;
    }

    else
    {
      v64 = 0.0;
    }

    v65 = v147;
    v66 = v149 + MaxY;
    v67 = (v21 - v147) * 0.5;
    v190 = CGRectIntegral(*(&v64 - 3));
    v149 = v190.origin.x;
    v148 = v190.origin.y;
    v147 = v190.size.width;
    v146 = v190.size.height;
    v68 = CGRectGetMaxY(v190) + 24.0;
    v69 = v172;
    v70 = *&v144;
    sub_1D78B6054();
    v191.origin.x = v69 + (v175 - v71 - v21) * 0.5;
    v191.origin.y = 0.0;
    v191.size.width = v21;
    v191.size.height = v68;
    v192 = CGRectIntegral(v191);
    v171 = v192.size.width;
    v172 = v192.origin.x;
    v72 = v192.origin.y;
    v145 = v192.size.height;
    if (v173 == 0.0)
    {
      v73 = *(MEMORY[0x1E69DDCE0] + 16);
    }

    else
    {
      [*&v173 safeAreaInsets];
    }

    v74 = v176;
    v75 = v70 + v68 + v73;
    v76 = v176 - v75;
    v77 = v176 * 0.333;
    v176 = *&v31;
    if (v74 - v75 >= v74 * 0.333)
    {
      if (v76 > 1000.0)
      {
        v75 = v75 + v76 + -1000.0;
      }

      v77 = v72;
      v173 = v75;
      v78 = v75;
    }

    else
    {
      v173 = v74 + v77 - v76;
      v78 = v74;
    }

    v80 = v5[5];
    v79 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v80);
    v81 = v177;
    *&v144 = COERCE_DOUBLE((*(*(v79 + 8) + 48))(*(v33 + 2), *(v33 + 3), v177, v80));
    v82 = v5[5];
    v141 = v5[6];
    v142 = __swift_project_boxed_opaque_existential_1(v5 + 2, v82);
    v83 = sub_1D787443C();
    v85 = v84;
    v86 = *(v33 + 7);
    v140 = *(v33 + 6);
    v139 = v86;
    v87 = *(*&v176 + 36);
    v88 = sub_1D78B3294();
    v89 = *(v88 - 8);
    v90 = &v33[v87];
    v91 = v174;
    (*(v89 + 16))(v174, v90, v88);
    (*(v89 + 56))(v91, 0, 1, v88);
    v142 = (*(*(v141 + 8) + 56))(v83, v85, v81, v140, v139, v91, v82);

    sub_1D77C12C8(v91);
    v93 = v5[5];
    v92 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v93);
    v94 = v176;
    v141 = (*(*(v92 + 8) + 64))(*&v33[*(*&v176 + 40)], *&v33[*(*&v176 + 40) + 8], v81, v93);
    sub_1D774584C((v5 + 2), &v178);
    v96 = v179;
    v95 = v180;
    __swift_project_boxed_opaque_existential_1(&v178, v179);
    v97 = *(*&v94 + 48);
    v174 = v33;
    v98 = &v33[v97];
    if (*(v98 + 1))
    {
      v99 = *v98;
      v100 = *(v98 + 1);
    }

    else
    {
      v99 = 0;
      v100 = 0xE000000000000000;
    }

    v101 = *(v95 + 8);
    v102 = *(v101 + 80);

    v103 = v102(v99, v100, v177, v96, v101);

    __swift_destroy_boxed_opaque_existential_1(&v178);
    sub_1D774584C((v5 + 2), &v178);
    v104 = v179;
    v105 = v180;
    __swift_project_boxed_opaque_existential_1(&v178, v179);
    v106 = &v174[*(*&v176 + 60)];
    v107 = *(v106 + 1);
    v143 = v68;
    v108 = v21;
    if (v107)
    {
      v109 = *v106;
      v110 = v107;
    }

    else
    {
      v109 = 0;
      v110 = 0xE000000000000000;
    }

    v111 = v74 - v78;
    v112 = v74 - v78 - v61;
    v113 = v61;
    v114 = v77 + v74 - v78;
    v115 = v74;
    v116 = v175;
    v176 = (v108 - v175) * 0.5;
    v117 = *(v105 + 8);
    v118 = *(v117 + 96);

    v119 = v118(v109, v110, v177, v104, v117);

    result = __swift_destroy_boxed_opaque_existential_1(&v178);
    v120 = v171;
    *(a4 + 16) = v172;
    *(a4 + 24) = v77;
    v121 = v145;
    *(a4 + 32) = v120;
    *(a4 + 40) = v121;
    *(a4 + 56) = v114;
    *(a4 + 64) = v116;
    *(a4 + 88) = v113;
    *(a4 + 96) = v116;
    *a4 = v116;
    *(a4 + 8) = v115;
    *(a4 + 48) = 0;
    *(a4 + 72) = v78;
    *(a4 + 80) = 0;
    *(a4 + 104) = v112;
    *(a4 + 112) = 0;
    *(a4 + 120) = v111;
    *(a4 + 128) = v116;
    v122 = v176;
    *(a4 + 136) = v78;
    *(a4 + 144) = v122;
    *(a4 + 152) = 0;
    v123 = v143;
    *(a4 + 160) = v116;
    *(a4 + 168) = v123;
    v124 = v173;
    *(a4 + 176) = v116;
    *(a4 + 184) = v124;
    v125 = y;
    *(a4 + 192) = x;
    *(a4 + 200) = v125;
    v126 = height;
    *(a4 + 208) = width;
    *(a4 + 216) = v126;
    v127 = v166;
    *(a4 + 224) = v168;
    *(a4 + 232) = v127;
    v128 = v159;
    *(a4 + 240) = v160;
    *(a4 + 248) = v128;
    v129 = v169;
    *(a4 + 256) = v170;
    *(a4 + 264) = v129;
    v130 = v157;
    *(a4 + 272) = v158;
    *(a4 + 280) = v130;
    v131 = v155;
    *(a4 + 288) = v156;
    *(a4 + 296) = v131;
    v132 = v153;
    *(a4 + 304) = v154;
    *(a4 + 312) = v132;
    v133 = v152;
    *(a4 + 320) = v164;
    *(a4 + 328) = v133;
    v134 = v150;
    *(a4 + 336) = v151;
    *(a4 + 344) = v134;
    v135 = v148;
    *(a4 + 352) = v149;
    *(a4 + 360) = v135;
    v136 = v146;
    *(a4 + 368) = v147;
    *(a4 + 376) = v136;
    v137 = v142;
    *(a4 + 384) = *&v144;
    *(a4 + 392) = v137;
    *(a4 + 400) = v141;
    *(a4 + 408) = v103;
    *(a4 + 416) = v119;
  }

  return result;
}

uint64_t sub_1D7864AC0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

unint64_t sub_1D7864B44@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D7864C28(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1D7864C28(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D7864C3C()
{
  result = qword_1EC9CAFC0;
  if (!qword_1EC9CAFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAFC0);
  }

  return result;
}

unint64_t sub_1D7864CA0()
{
  result = qword_1EE08F218;
  if (!qword_1EE08F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08F218);
  }

  return result;
}

char *URLHandlerContext<A>.purchaseTraits.getter()
{
  v126 = sub_1D78B3BA4();
  v1 = *(v126 - 8);
  v3 = MEMORY[0x1EEE9AC00](v126, v2);
  v113 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v119 = &v111 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v124 = &v111 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v128 = &v111 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v122 = &v111 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v121 = &v111 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v111 - v21;
  v23 = sub_1D78B3BD4();
  v24 = *(v23 - 8);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v112 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v118 = &v111 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v123 = &v111 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v127 = &v111 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v120 = &v111 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v43 = &v111 - v42;
  MEMORY[0x1EEE9AC00](v41, v44);
  v46 = &v111 - v45;
  sub_1D7865674(0);
  v48 = v47;
  v49 = v0;
  sub_1D78B3D24();
  sub_1D78B3BC4();
  v50 = *(v24 + 8);
  v51 = v46;
  v52 = v1;
  v53 = v23;
  v125 = v24 + 8;
  v50(v51, v23);
  v54 = sub_1D78B3BB4();
  v56 = v55;
  v57 = *(v52 + 8);
  v58 = v22;
  v59 = v126;
  v57(v58, v126);
  v131 = v57;
  v132 = v50;
  v133 = v53;
  v129 = v49;
  v130 = v48;
  if (v56)
  {
    v116 = v56;
    v117 = v54;
    sub_1D78B3D24();
    v60 = v121;
    sub_1D78B3BC4();
    v50(v43, v53);
    v61 = sub_1D78B3BB4();
    v114 = v62;
    v115 = v61;
    v57(v60, v59);
    v63 = v120;
    sub_1D78B3D24();
    v64 = v122;
    sub_1D78B3BC4();
    v50(v63, v53);
    v65 = sub_1D78B3BB4();
    v67 = v66;
    v57(v64, v59);
    v68 = sub_1D777B944(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v70 = *(v68 + 2);
    v69 = *(v68 + 3);
    if (v70 >= v69 >> 1)
    {
      v68 = sub_1D777B944((v69 > 1), v70 + 1, 1, v68);
    }

    *(v68 + 2) = v70 + 1;
    v71 = &v68[80 * v70];
    v72 = v116;
    *(v71 + 4) = v117;
    *(v71 + 5) = v72;
    v73 = v114;
    *(v71 + 6) = v115;
    *(v71 + 7) = v73;
    *(v71 + 8) = v65;
    *(v71 + 9) = v67;
    *(v71 + 12) = 0x7000000000000000;
  }

  else
  {
    v68 = MEMORY[0x1E69E7CC0];
  }

  v74 = v127;
  sub_1D78B3D24();
  v75 = v128;
  sub_1D78B3BC4();
  v132(v74, v133);
  v76 = sub_1D78B3BB4();
  v78 = v77;
  v131(v75, v59);
  if (v78)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = sub_1D777B944(0, *(v68 + 2) + 1, 1, v68);
    }

    v80 = *(v68 + 2);
    v79 = *(v68 + 3);
    if (v80 >= v79 >> 1)
    {
      v68 = sub_1D777B944((v79 > 1), v80 + 1, 1, v68);
    }

    *(v68 + 2) = v80 + 1;
    v81 = &v68[80 * v80];
    *(v81 + 4) = v76;
    *(v81 + 5) = v78;
    *(v81 + 6) = 1;
    *(v81 + 12) = 0x6000000000000000;
    v82 = v123;
    sub_1D78B3D24();
    v83 = v124;
    sub_1D78B3BC4();
    v132(v82, v133);
    v84 = sub_1D78B3BB4();
    v86 = v85;
    v87 = v83;
    v88 = v131;
    v131(v87, v59);
    if (v86)
    {
      if (v84 == 1684366694 && v86 == 0xE400000000000000 || (sub_1D78B6724() & 1) != 0)
      {
        v89 = v118;
        sub_1D78B3D24();
        v90 = v119;
        sub_1D78B3BC4();
        v132(v89, v133);
        v91 = sub_1D78B3BB4();
        v93 = v92;
        v88 = v131;
        v131(v90, v59);
        if (v93)
        {

          if (v91 == sub_1D78B5C74() && v93 == v94)
          {
          }

          else
          {
            v104 = sub_1D78B6724();

            if ((v104 & 1) == 0)
            {
              v109 = *(v68 + 2);
              v108 = *(v68 + 3);
              if (v109 >= v108 >> 1)
              {
                v68 = sub_1D777B944((v108 > 1), v109 + 1, 1, v68);
              }

              *(v68 + 2) = v109 + 1;
              v107 = &v68[80 * v109];
              *(v107 + 4) = 7;
              *(v107 + 5) = v91;
              *(v107 + 7) = 0;
              *(v107 + 8) = 0;
              *(v107 + 6) = v93;
              goto LABEL_34;
            }
          }

          v106 = *(v68 + 2);
          v105 = *(v68 + 3);
          if (v106 >= v105 >> 1)
          {
            v68 = sub_1D777B944((v105 > 1), v106 + 1, 1, v68);
          }

          *(v68 + 2) = v106 + 1;
          v107 = &v68[80 * v106];
          *(v107 + 4) = 1;
          *(v107 + 40) = 0u;
          *(v107 + 56) = 0u;
LABEL_34:
          *(v107 + 12) = 0x4000000000000000;
          return v68;
        }
      }

      if (v84 == 0x656C6369747261 && v86 == 0xE700000000000000)
      {
      }

      else
      {
        v95 = sub_1D78B6724();

        if ((v95 & 1) == 0)
        {
          return v68;
        }
      }

      v96 = v112;
      sub_1D78B3D24();
      v97 = v113;
      sub_1D78B3BC4();
      v132(v96, v133);
      v98 = sub_1D78B3BB4();
      v100 = v99;
      v88(v97, v59);
      if (v100)
      {
        v102 = *(v68 + 2);
        v101 = *(v68 + 3);
        if (v102 >= v101 >> 1)
        {
          v68 = sub_1D777B944((v101 > 1), v102 + 1, 1, v68);
        }

        *(v68 + 2) = v102 + 1;
        v103 = &v68[80 * v102];
        *(v103 + 4) = v98;
        *(v103 + 5) = v100;
        *(v103 + 3) = 0u;
        *(v103 + 4) = 0u;
        *(v103 + 5) = 0u;
        *(v103 + 12) = 0;
      }
    }
  }

  return v68;
}

void sub_1D7865674(uint64_t a1)
{
  if (!qword_1EE08F248)
  {
    sub_1D78B4574();
    v1 = sub_1D78B3D34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE08F248);
    }
  }
}

uint64_t URLHandlerContext<A>.postPurchaseDestination.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1D78B3BA4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D78B3BD4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7865674(0);
  sub_1D78B3D24();
  sub_1D78B3BC4();
  (*(v8 + 8))(v11, v7);
  v12 = sub_1D78B3BB4();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  if (!v14)
  {
    goto LABEL_7;
  }

  if (v12 == 0x656C7A7A7570 && v14 == 0xE600000000000000)
  {
  }

  else
  {
    v16 = sub_1D78B6724();

    if ((v16 & 1) == 0)
    {
LABEL_7:
      v17 = type metadata accessor for PostPurchaseDestination(0);
      return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
    }
  }

  *a1 = 2;
  v19 = type metadata accessor for PostPurchaseDestination(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v19 - 8) + 56))(a1, 0, 1, v19);
}

id sub_1D7865954()
{
  v0 = objc_opt_self();
  v16 = [v0 clearColor];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.909803922 alpha:1.0];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0901960784 alpha:1.0];
  v15 = [v0 ts:v1 dynamicColor:v2 withDarkStyleVariant:?];

  v3 = [v0 blackColor];
  v4 = [v0 whiteColor];
  v5 = [v0 ts:v3 dynamicColor:v4 withDarkStyleVariant:?];

  v6 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.317647059 alpha:1.0];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0745098 alpha:1.0];
  v8 = [v0 ts:v6 dynamicColor:v7 withDarkStyleVariant:?];

  v9 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.176470588 blue:0.333333333 alpha:1.0];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.176470588 blue:0.333333333 alpha:1.0];
  v11 = [v0 whiteColor];
  v12 = [v0 whiteColor];
  v13 = [v0 ts:v11 dynamicColor:v12 withDarkStyleVariant:?];

  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.0 blue:0.28627451 alpha:1.0];
  *&xmmword_1EE09C2D0 = v16;
  *(&xmmword_1EE09C2D0 + 1) = v15;
  qword_1EE09C2E0 = v5;
  unk_1EE09C2E8 = v8;
  *&xmmword_1EE09C2F0 = v9;
  *(&xmmword_1EE09C2F0 + 1) = v10;
  qword_1EE09C300 = v13;
  unk_1EE09C308 = result;
  return result;
}

id sub_1D7865BF8()
{
  v0 = objc_opt_self();
  v16 = [v0 clearColor];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.964705882 green:0.964705882 blue:0.964705882 alpha:1.0];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0901960784 alpha:1.0];
  v15 = [v0 ts:v1 dynamicColor:v2 withDarkStyleVariant:?];

  v3 = [v0 blackColor];
  v4 = [v0 whiteColor];
  v5 = [v0 ts:v3 dynamicColor:v4 withDarkStyleVariant:?];

  v6 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.678431373 green:0.678431373 blue:0.678431373 alpha:1.0];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.678431373 green:0.678431373 blue:0.678431373 alpha:1.0];
  v8 = [v0 ts:v6 dynamicColor:v7 withDarkStyleVariant:?];

  v9 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.176470588 blue:0.333333333 alpha:1.0];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.176470588 blue:0.333333333 alpha:1.0];
  v11 = [v0 whiteColor];
  v12 = [v0 whiteColor];
  v13 = [v0 ts:v11 dynamicColor:v12 withDarkStyleVariant:?];

  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.0 blue:0.28627451 alpha:1.0];
  *&xmmword_1EE09C210 = v16;
  *(&xmmword_1EE09C210 + 1) = v15;
  qword_1EE09C220 = v5;
  unk_1EE09C228 = v8;
  *&xmmword_1EE09C230 = v9;
  *(&xmmword_1EE09C230 + 1) = v10;
  qword_1EE09C240 = v13;
  unk_1EE09C248 = result;
  return result;
}

uint64_t sub_1D7865EF4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1D7865F3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1D7865F9C()
{
  v0 = objc_allocWithZone(type metadata accessor for DiagnosticFileProvider());

  return [v0 init];
}

void sub_1D7865FD4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for DiagnosticFileProvider();
  v2 = sub_1D78B39E4();
  if (v2)
  {
    sub_1D7866064();
    sub_1D78B3EC4();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1D7866064()
{
  result = qword_1EC9CAFC8;
  if (!qword_1EC9CAFC8)
  {
    type metadata accessor for DiagnosticFileProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAFC8);
  }

  return result;
}

unint64_t sub_1D7866148(uint64_t a1, uint64_t a2)
{
  v16[2] = a1;
  v3 = sub_1D78B5624();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D78B5504();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_feedItemRenderer + 8);
  v16[0] = swift_getObjectType();
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_layoutProvider), *(v2 + OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_layoutProvider + 24));

  sub_1D78B3AF4();

  v13 = v16[7];

  result = sub_1D78B34E4();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v13 + 16))
  {
    (*(v4 + 16))(v7, v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * result, v3);

    sub_1D78B54D4();
    (*(v4 + 8))(v7, v3);
    v15 = sub_1D78B54F4();
    (*(v9 + 8))(v12, v8);
    return v15;
  }

  __break(1u);
  return result;
}

void *sub_1D78664D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D78B58E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D78B56B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_1D78B5374();
    v14 = (*(v8 + 88))(v11, v7);
    if (v14 == *MEMORY[0x1E69B5F88] || v14 != *MEMORY[0x1E69B5F90])
    {

      return (*(v8 + 8))(v11, v7);
    }

    else
    {
      (*(v8 + 96))(v11, v7);
      (*(v3 + 32))(v6, v11, v2);
      sub_1D78666F4(v6);

      return (*(v3 + 8))(v6, v2);
    }
  }

  return result;
}

double sub_1D78666F4(uint64_t a1)
{
  v3 = sub_1D78B58E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v7 = OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_subscribeButtonDebouncer;
  if (*&v1[OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_subscribeButtonDebouncer] || ((*(v4 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3), v8 = (*(v4 + 80) + 24) & ~*(v4 + 80), v9 = swift_allocObject(), *(v9 + 16) = v1, (*(v4 + 32))(v9 + v8, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3), sub_1D7866F28(), swift_allocObject(), v10 = v1, *&v1[v7] = sub_1D78B50A4(), , *&v1[v7]))
  {

    sub_1D78B5094();
  }

  return result;
}

double sub_1D78669C0(uint64_t a1, uint64_t a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1D78536D0(a2);
    swift_unknownObjectRelease();
  }

  *(a1 + OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_subscribeButtonDebouncer) = 0;

  return result;
}

unint64_t sub_1D7866B08(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v22 = sub_1D78B34F4();
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D78B4D24();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v10 = sub_1D78B4CF4();
  v23 = *(v10 - 8);
  v24 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D78B5654();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_layoutProvider), *(v2 + OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_layoutProvider + 24));

  sub_1D78B3AF4();

  v19 = v27;

  result = sub_1D78B34E4();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v19 + 16))
  {
    (*(v15 + 16))(v18, v19 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * result, v14);

    sub_1D78B5634();
    (*(v4 + 16))(v7, a2, v22);
    sub_1D78B34E4();
    sub_1D78B4CE4();
    __swift_project_boxed_opaque_existential_1((v25 + OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_feedItemSupplementaryRenderer), *(v25 + OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_feedItemSupplementaryRenderer + 24));
    swift_allocObject();
    swift_unknownObjectWeakInit();

    v21 = sub_1D78B5664();

    (*(v23 + 8))(v13, v24);
    (*(v15 + 8))(v18, v14);

    return v21;
  }

  __break(1u);
  return result;
}

double sub_1D7866EB4()
{
  v1 = *(sub_1D78B58E4() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1D78669C0(v2, v3);
}

void sub_1D7866F28()
{
  if (!qword_1EC9CB060)
  {
    v0 = sub_1D78B50B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CB060);
    }
  }
}

uint64_t sub_1D7866F7C()
{
  sub_1D78B35E4();
  swift_allocObject();
  result = sub_1D78B35F4();
  qword_1EC9CB070 = result;
  return result;
}

void *sub_1D7866FEC(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  if (qword_1EC9C8620 != -1)
  {
    swift_once();
  }

  result = sub_1D78B3544();
  if (v3 != 5)
  {
    if (qword_1EC9C8628 != -1)
    {
      swift_once();
    }

    return sub_1D78B3714();
  }

  return result;
}

double static SettingActions.resetOverrideEntitlement.getter()
{
  if (qword_1EC9C84A8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1D7867148(uint64_t a1, uint64_t a2)
{
  if (qword_1EC9C8448 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC9D9DF0;
  sub_1D774FE1C(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D78BCAB0;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D775ABD4();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  v6 = sub_1D78B60A4();
  sub_1D78B42C4("HideMyEmailService fetchProxyAddress called for channelId: %@", 61, 2, &dword_1D7739000, v4, v6, v5);

  MEMORY[0x1EEE9AC00](v7, v8);
  sub_1D78724F4(0, &qword_1EC9CB1C8, &type metadata for HideMyEmailProxyModel, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1D78B4174();
  v9 = sub_1D78B4014();
  v10 = sub_1D78B4164();

  return v10;
}

void sub_1D7867328(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v72 = a6;
  v73 = a7;
  v68 = a1;
  v69 = a2;
  v10 = sub_1D78B5264();
  v66 = *(v10 - 8);
  v67 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v65 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D78B2F74();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v15 = sub_1D78B3294();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v60 - v23;
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v60 - v26;
  v28 = objc_opt_self();
  v64 = a5;
  v29 = [v28 CAPIBaseURLForConfiguration_];
  swift_unknownObjectRelease();
  if (v29)
  {
    v70 = a4;
    v71 = a3;
    sub_1D78B3254();

    sub_1D78B3234();
    v30 = *(v16 + 8);
    v30(v20, v15);
    (*(v16 + 32))(v27, v24, v15);
    aBlock = v72;
    v75 = v73;
    sub_1D78B2FB4();
    swift_allocObject();
    sub_1D78B2FA4();
    sub_1D78B2F64();
    sub_1D78B2F84();
    sub_1D7871AB4();
    v31 = v15;
    v37 = sub_1D78B2F94();
    v39 = v38;

    v73 = *(v64 + 16);
    v72 = sub_1D78B3214();
    sub_1D786FB88();
    sub_1D78724F4(0, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v40 = sub_1D78B5BB4();

    v62 = *MEMORY[0x1E69B5698];
    v61 = sub_1D78B32B4();
    v63 = v39;
    v41 = *MEMORY[0x1E69B5680];
    v42 = *MEMORY[0x1E696A9C8];
    sub_1D7788448();
    v43 = *MEMORY[0x1E69E7F88];
    v64 = v30;
    v45 = v65;
    v44 = v66;
    v46 = v67;
    (*(v66 + 104))(v65, v43, v67);
    v47 = v41;
    v48 = sub_1D78B6134();
    (*(v44 + 8))(v45, v46);
    v49 = swift_allocObject();
    v50 = v70;
    v49[2] = v71;
    v49[3] = v50;
    v51 = v69;
    v49[4] = v68;
    v49[5] = v51;
    v78 = sub_1D7871B48;
    v79 = v49;
    aBlock = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v76 = sub_1D786839C;
    v77 = &block_descriptor_84;
    v52 = _Block_copy(&aBlock);
    v71 = v31;

    LODWORD(v59) = 0;
    v53 = v72;
    v54 = v40;
    v55 = v40;
    v56 = v62;
    v57 = v61;
    LODWORD(v58) = v42;
    [v73 performAuthenticatedHTTPRequestWithURL:v72 valuesByHTTPHeaderField:v55 method:v62 data:v61 contentType:v47 priority:1 reauthenticateIfNeeded:v58 networkEventType:v59 callbackQueue:v48 completion:v52];
    sub_1D775DD6C(v37, v63);
    _Block_release(v52);

    (v64)(v27, v71);
  }

  else
  {
    sub_1D78714C8();
    v32 = swift_allocError();
    *v33 = 0;
    a3();

    if (qword_1EC9C8448 != -1)
    {
      swift_once();
    }

    v34 = qword_1EC9D9DF0;
    v35 = sub_1D78B6094();
    v36 = MEMORY[0x1E69E7CC0];

    sub_1D78B42C4("HideMyEmailService fetchProxyAddress error: Invalid URL.", 56, 2, &dword_1D7739000, v34, v35, v36);
  }
}

void sub_1D7867A34(uint64_t a1, unint64_t a2, void *a3, id a4, void (*a5)(void, __n128), uint64_t a6, void (*a7)(_OWORD *))
{
  if (a4)
  {
    v8 = a4;
    v9 = a4;
    if (qword_1EC9C8448 == -1)
    {
LABEL_3:
      v10 = qword_1EC9D9DF0;
      v11 = sub_1D78B6094();
      sub_1D774FE1C(0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1D78BCAB0;
      *&v76 = v8;
      v13 = v8;
      sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
      v14 = sub_1D78B5CC4();
      v16 = v15;
      *(v12 + 56) = MEMORY[0x1E69E6158];
      *(v12 + 64) = sub_1D775ABD4();
      *(v12 + 32) = v14;
      *(v12 + 40) = v16;
      sub_1D78B42C4("HideMyEmailService fetchProxyAddress returned error: %@", 55, 2, &dword_1D7739000, v10, v11, v12);

      (a5)(v8);
LABEL_4:

      return;
    }

LABEL_34:
    swift_once();
    goto LABEL_3;
  }

  if (a2 >> 60 == 15)
  {
    if (qword_1EC9C8448 != -1)
    {
      swift_once();
    }

    v17 = qword_1EC9D9DF0;
    v18 = sub_1D78B6094();
    sub_1D78B42C4("HideMyEmailService fetchProxyAddress returned no data and no error.", 67, 2, &dword_1D7739000, v17, v18, MEMORY[0x1E69E7CC0]);
    sub_1D78714C8();
    v8 = swift_allocError();
    *v19 = 1;
    (a5)();

    goto LABEL_4;
  }

  sub_1D78B3814();
  swift_allocObject();
  sub_1D78715AC(a1, a2);
  sub_1D78B3804();
  type metadata accessor for ProxyEmailGenerationResponse();
  sub_1D78728BC(&qword_1EC9CB1E0, 255, type metadata accessor for ProxyEmailGenerationResponse, &unk_1D78C8370);
  v71 = a1;
  v72 = a2;
  v8 = 0;
  sub_1D78B37F4();

  v28 = *(v76 + 16);
  if (v28)
  {
    v68 = v76;
    v69 = a5;
    v29 = *(v28 + 16);

    v74 = v29;
    if (v29)
    {
      v31 = 0;
      a5 = (v30 + 72);
      v73 = v30;
      while (v31 < *(v30 + 16))
      {
        v32 = *(a5 - 40);
        v34 = *(a5 - 4);
        v33 = *(a5 - 3);
        v35 = *(a5 - 2);
        v36 = *(a5 - 1);
        v37 = *a5;
        v38 = qword_1EC9C8448;

        if (v38 != -1)
        {
          swift_once();
        }

        ++v31;
        v39 = qword_1EC9D9DF0;
        sub_1D774FE1C(0);
        v8 = swift_allocObject();
        *(v8 + 1) = xmmword_1D78BCAB0;
        LOBYTE(v76) = v32;
        *(&v76 + 1) = v34;
        *&v77 = v33;
        *(&v77 + 1) = v35;
        *&v78 = v36;
        BYTE8(v78) = v37;
        v40 = sub_1D78681A0();
        v42 = v41;
        *(v8 + 7) = MEMORY[0x1E69E6158];
        *(v8 + 8) = sub_1D775ABD4();
        *(v8 + 4) = v40;
        *(v8 + 5) = v42;
        v43 = sub_1D78B60A4();
        sub_1D78B42C4("HideMyEmailService fetchProxyAddress diagnosis: %@", 50, 2, &dword_1D7739000, v39, v43, v8);

        a5 = (a5 + 48);
        v30 = v73;
        if (v74 == v31)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_26:

    v49 = *(v68 + 24);
    if (!v49)
    {
      sub_1D78714C8();
      v8 = swift_allocError();
      *v50 = 1;
      v69();
      sub_1D77E56E0(v71, v72);

      goto LABEL_4;
    }

    goto LABEL_29;
  }

  v49 = *(v76 + 24);
  if (v49)
  {
LABEL_29:
    v51 = qword_1EC9C8448;

    if (v51 != -1)
    {
      swift_once();
    }

    v52 = qword_1EC9D9DF0;
    sub_1D774FE1C(0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1D78BCB50;
    v55 = v49[2];
    v54 = v49[3];
    v56 = MEMORY[0x1E69E6158];
    *(v53 + 56) = MEMORY[0x1E69E6158];
    v57 = sub_1D775ABD4();
    *(v53 + 64) = v57;
    *(v53 + 32) = v55;
    *(v53 + 40) = v54;
    v58 = v49[6];
    v59 = v49[7];
    *(v53 + 96) = v56;
    *(v53 + 104) = v57;
    *(v53 + 72) = v58;
    *(v53 + 80) = v59;

    v60 = sub_1D78B60A4();
    sub_1D78B42C4("HideMyEmailService fetchProxyAddress fetched proxy: %@, and forward to: %@.", 75, 2, &dword_1D7739000, v52, v60, v53);

    v61 = v49[7];
    v62 = v49[2];
    v63 = v49[3];
    v64 = v49[4];
    v65 = v49[5];
    v67 = v49[8];
    v66 = v49[9];
    *&v76 = v49[6];
    *(&v76 + 1) = v61;
    *&v77 = v62;
    *(&v77 + 1) = v63;
    *&v78 = v64;
    *(&v78 + 1) = v65;
    *&v79 = v67;
    *(&v79 + 1) = v66;
    v75[0] = v76;
    v75[1] = v77;
    v75[2] = v78;
    v75[3] = v79;

    a7(v75);
    sub_1D77E56E0(v71, v72);

    sub_1D7871B54(&v76);
    return;
  }

  if (qword_1EC9C8448 != -1)
  {
    swift_once();
  }

  v23 = qword_1EC9D9DF0;
  v24 = sub_1D78B6094();
  sub_1D774FE1C(0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D78BCAB0;
  v26 = a3;
  if (a3)
  {
    v27 = [a3 statusCode];
    v26 = a3;
  }

  else
  {
    v27 = 0;
  }

  *&v76 = v27;
  BYTE8(v76) = v26 == 0;
  sub_1D78724F4(0, &qword_1EC9CB1E8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  v44 = sub_1D78B5CC4();
  v46 = v45;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1D775ABD4();
  *(v25 + 32) = v44;
  *(v25 + 40) = v46;

  sub_1D78714C8();
  v47 = swift_allocError();
  *v48 = 2;
  (a5)();

  sub_1D77E56E0(v71, v72);
}

uint64_t sub_1D78681A0()
{

  sub_1D78B6454();

  v0 = MEMORY[0x1E69E6720];
  sub_1D78724F4(0, &qword_1EE090120, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v1 = sub_1D78B5CC4();
  MEMORY[0x1DA702FF0](v1);

  MEMORY[0x1DA702FF0](0x203A65707974202CLL, 0xE800000000000000);
  sub_1D78724F4(0, &qword_1EC9CB100, &type metadata for Diagnosis.Type, v0);
  v2 = sub_1D78B5CC4();
  MEMORY[0x1DA702FF0](v2);

  MEMORY[0x1DA702FF0](0x67617373656D202CLL, 0xEB00000000203A65);
  v3 = sub_1D78B5CC4();
  MEMORY[0x1DA702FF0](v3);

  MEMORY[0x1DA702FF0](0x6F6765746163202CLL, 0xEC000000203A7972);
  sub_1D78724F4(0, &unk_1EC9CB108, &type metadata for Diagnosis.Category, v0);
  v4 = sub_1D78B5CC4();
  MEMORY[0x1DA702FF0](v4);

  MEMORY[0x1DA702FF0](46, 0xE100000000000000);
  return 540697705;
}

double sub_1D786839C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1D78B32D4();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1D77E56E0(v6, v10);

  return result;
}

double sub_1D7868464@<D0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1D78B3594();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC9C86F0 != -1)
  {
    swift_once();
  }

  sub_1D78728BC(&qword_1EC9CB1D0, v8, type metadata accessor for HideMyEmailService, &unk_1D78C83A8);
  sub_1D78B3574();
  v11 = (*(v6 + 88))(v10, v5);
  if (v11 == *MEMORY[0x1E69D6D00])
  {
    goto LABEL_4;
  }

  if (v11 != *MEMORY[0x1E69D6D08])
  {
    if (v11 != *MEMORY[0x1E69D6D10])
    {
      swift_willThrow();
      (*(v6 + 8))(v10, v5);
      goto LABEL_5;
    }

LABEL_4:
    swift_willThrow();
LABEL_5:
    v12 = a1;
    return result;
  }

  *a3 = 0xD000000000000014;
  *(a3 + 8) = 0x80000001D78DD480;
  *(a3 + 16) = 0xD00000000000002FLL;
  *(a3 + 24) = 0x80000001D78DD4A0;
  *(a3 + 32) = 0x6F632E656C707061;
  *(a3 + 40) = 0xE90000000000006DLL;
  result = 1.50810747e161;
  *(a3 + 48) = xmmword_1D78C7D70;
  return result;
}

void sub_1D78686C8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t *a6, char *a7, uint64_t a8, unint64_t a9, uint64_t a10, void *a11, void *a12)
{
  v72 = a7;
  v73 = a8;
  v71 = a6;
  v75 = a3;
  v76 = a4;
  v70 = a12;
  v69 = a11;
  v68 = a10;
  v67 = a9;
  v15 = sub_1D78B5264();
  v64 = *(v15 - 8);
  v65 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v63 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D78B2F74();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v74 = (&v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_1D78B3294();
  v22 = *(v21 - 8);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v30 = &v62 - v29;
  MEMORY[0x1EEE9AC00](v28, v31);
  v33 = &v62 - v32;
  v34 = swift_allocObject();
  *(v34 + 16) = a1;
  *(v34 + 24) = a2;
  v35 = objc_opt_self();
  v62 = a5;
  v36 = *(a5 + 24);

  v37 = [v35 CAPIBaseURLForConfiguration_];
  swift_unknownObjectRelease();
  if (v37)
  {
    v66 = v34;
    sub_1D78B3254();

    sub_1D78B3234();
    v38 = *(v22 + 8);
    v38(v26, v21);
    (*(v22 + 32))(v33, v30, v21);
    sub_1D7868EC0(v71, v72, v73, v67, v68, v69, v70, v90);
    v87 = v90[10];
    v88 = v90[11];
    v89 = v91;
    v83 = v90[6];
    v84 = v90[7];
    v85 = v90[8];
    v86 = v90[9];
    v79 = v90[2];
    v80 = v90[3];
    v81 = v90[4];
    v82 = v90[5];
    v77 = v90[0];
    v78 = v90[1];
    sub_1D78B2FB4();
    swift_allocObject();
    sub_1D78B2FA4();
    sub_1D78B2F64();
    sub_1D78B2F84();
    sub_1D787151C();
    v39 = sub_1D78B2F94();
    v67 = v44;
    v68 = v39;

    v71 = *(v62 + 16);
    v70 = sub_1D78B3214();
    sub_1D786FB88();
    v72 = v33;
    v73 = v21;
    v74 = v38;
    sub_1D78724F4(0, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v69 = sub_1D78B5BB4();

    v45 = *MEMORY[0x1E69B5698];
    v46 = sub_1D78B32B4();
    v47 = *MEMORY[0x1E69B5680];
    v48 = *MEMORY[0x1E696A9C8];
    sub_1D7788448();
    v49 = v63;
    v50 = v64;
    v51 = v65;
    (*(v64 + 104))(v63, *MEMORY[0x1E69E7F88], v65);
    v52 = v47;
    v53 = sub_1D78B6134();
    (*(v50 + 8))(v49, v51);
    v54 = swift_allocObject();
    v55 = v76;
    v54[2] = v75;
    v54[3] = v55;
    v56 = v66;
    v54[4] = sub_1D77AE39C;
    v54[5] = v56;
    *&v79 = sub_1D78715A0;
    *(&v79 + 1) = v54;
    *&v77 = MEMORY[0x1E69E9820];
    *(&v77 + 1) = 1107296256;
    *&v78 = sub_1D786839C;
    *(&v78 + 1) = &block_descriptor_29;
    v57 = _Block_copy(&v77);

    LODWORD(v61) = 0;
    v58 = v70;
    v59 = v69;
    LODWORD(v60) = v48;
    [v71 performAuthenticatedHTTPRequestWithURL:v70 valuesByHTTPHeaderField:v69 method:v45 data:v46 contentType:v52 priority:1 reauthenticateIfNeeded:v60 networkEventType:v61 callbackQueue:v53 completion:v57];
    sub_1D775DD6C(v68, v67);
    _Block_release(v57);

    sub_1D7871570(v90);
    v74(v72, v73);
  }

  else
  {

    if (qword_1EC9C8448 != -1)
    {
      swift_once();
    }

    v40 = qword_1EC9D9DF0;
    v41 = sub_1D78B6094();
    sub_1D78B42C4("HideMyEmailService requestWebOptIn error: Invalid URL.", 54, 2, &dword_1D7739000, v40, v41, MEMORY[0x1E69E7CC0]);
    sub_1D78714C8();
    v42 = swift_allocError();
    *v43 = 0;
    v75();
  }
}

uint64_t sub_1D7868EC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v97 = a6;
  v98 = a7;
  v99 = a5;
  v100 = a3;
  v95 = a2;
  v96 = a4;
  v101 = a1[1];
  v10 = sub_1D78B3444();
  v92 = *(v10 - 8);
  v93 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v89 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v88 = &v86 - v15;
  v16 = MEMORY[0x1E69E6720];
  sub_1D7871654(0, &qword_1EC9CB118, MEMORY[0x1E6969610], MEMORY[0x1E69E6720]);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v91 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v90 = &v86 - v22;
  v23 = sub_1D78B3464();
  v24 = *(v23 - 8);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = &v86 - v31;
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v36 = &v86 - v35;
  MEMORY[0x1EEE9AC00](v34, v37);
  v39 = &v86 - v38;
  sub_1D7871654(0, &qword_1EC9CB120, MEMORY[0x1E6969680], v16);
  v42 = MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v44 = &v86 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v45);
  v47 = &v86 - v46;
  v94 = *a1;
  if (a1[6])
  {

    sub_1D78B3424();
    sub_1D78B3414();
    v48 = *(v24 + 8);
    v89 = v23;
    v48(v39, v23);
    v49 = sub_1D78B3404();
    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v47, 1, v49) == 1)
    {
      sub_1D7871744(v47, &qword_1EC9CB120, MEMORY[0x1E6969680], MEMORY[0x1E69E6720], sub_1D7871654);
      v91 = 0;
      v51 = 0;
    }

    else
    {
      v91 = sub_1D78B33D4();
      v51 = v59;
      (*(v50 + 8))(v47, v49);
    }

    sub_1D78B3424();
    v60 = v88;
    sub_1D78B3454();
    v48(v36, v89);
    v61 = v90;
    sub_1D78B3434();
    (*(v92 + 8))(v60, v93);
    v62 = sub_1D78B33E4();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v61, 1, v62) == 1)
    {
      sub_1D7871744(v61, &qword_1EC9CB118, MEMORY[0x1E6969610], MEMORY[0x1E69E6720], sub_1D7871654);
      v64 = 0;
      v65 = 0;
    }

    else
    {
      v64 = sub_1D78B33D4();
      v65 = v74;
      (*(v63 + 8))(v61, v62);
    }

    v75 = 0;
    v76 = 1;
    v58 = v91;
    v73 = v101;
  }

  else
  {
    v52 = a1[3];
    v90 = a1[2];
    v53 = a1[4];
    v86 = a1[5];
    v87 = v53;

    v88 = v52;

    sub_1D78B3424();
    sub_1D78B3414();
    v54 = *(v24 + 8);
    v55 = v23;
    v54(v32, v23);
    v56 = sub_1D78B3404();
    v57 = *(v56 - 8);
    if ((*(v57 + 48))(v44, 1, v56) == 1)
    {
      sub_1D7871744(v44, &qword_1EC9CB120, MEMORY[0x1E6969680], MEMORY[0x1E69E6720], sub_1D7871654);
      v58 = 0;
      v51 = 0;
    }

    else
    {
      v66 = sub_1D78B33D4();
      v51 = v67;
      (*(v57 + 8))(v44, v56);
      v58 = v66;
    }

    sub_1D78B3424();
    v68 = v89;
    sub_1D78B3454();
    v54(v28, v55);
    v69 = v91;
    sub_1D78B3434();
    (*(v92 + 8))(v68, v93);
    v70 = sub_1D78B33E4();
    v71 = *(v70 - 8);
    v72 = (*(v71 + 48))(v69, 1, v70);
    v73 = v101;
    if (v72 == 1)
    {
      sub_1D7871744(v69, &qword_1EC9CB118, MEMORY[0x1E6969610], MEMORY[0x1E69E6720], sub_1D7871654);
      v64 = 0;
      v65 = 0;
    }

    else
    {
      v64 = sub_1D78B33D4();
      v65 = v77;
      (*(v71 + 8))(v69, v70);
    }

    type metadata accessor for ProxyEmailRequestInfo();
    v75 = swift_allocObject();
    v76 = 0;
    v78 = v87;
    v79 = v88;
    v75[2] = v90;
    v75[3] = v79;
    v75[4] = v78;
    v75[5] = v86;
  }

  v80 = v94;
  v82 = v99;
  v81 = v100;
  *a8 = v95;
  *(a8 + 8) = v81;
  *(a8 + 16) = v80;
  *(a8 + 24) = v73;
  v83 = v97;
  *(a8 + 32) = v96;
  *(a8 + 40) = v82;
  v84 = v98;
  *(a8 + 48) = v83;
  *(a8 + 56) = v84;
  *(a8 + 64) = v76;
  *(a8 + 72) = v58;
  *(a8 + 80) = v51;
  *(a8 + 88) = v64;
  *(a8 + 96) = v65;
  *(a8 + 104) = 3;
  *(a8 + 112) = v75;
  *(a8 + 120) = 0u;
  *(a8 + 136) = 0u;
  *(a8 + 152) = 0u;
  *(a8 + 168) = 0u;
  *(a8 + 184) = 0u;
}

void sub_1D7869720(void *a1, unint64_t a2, int a3, id a4, __n128 a5, void (*a6)(id), uint64_t a7, void (*a8)(void, __n128))
{
  if (a4)
  {
    v9 = a4;
    v10 = a4;
    a6(v9);
    if (qword_1EC9C8448 == -1)
    {
LABEL_3:
      v11 = qword_1EC9D9DF0;
      v12 = sub_1D78B6094();
      sub_1D774FE1C(0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1D78BCAB0;
      v14 = v9;
      sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
      v15 = sub_1D78B5CC4();
      v17 = v16;
      *(v13 + 56) = MEMORY[0x1E69E6158];
      *(v13 + 64) = sub_1D775ABD4();
      *(v13 + 32) = v15;
      *(v13 + 40) = v17;
      sub_1D78B42C4("HideMyEmailService requestWebOptIn returned error: %@", 53, 2, &dword_1D7739000, v11, v12, v13);

      return;
    }

LABEL_20:
    swift_once();
    goto LABEL_3;
  }

  if (a2 >> 60 == 15)
  {
    sub_1D78714C8();
    v18 = swift_allocError();
    *v19 = 1;
    (a6)();

    if (qword_1EC9C8448 != -1)
    {
      swift_once();
    }

    v20 = qword_1EC9D9DF0;
    v21 = sub_1D78B6094();
    v22 = MEMORY[0x1E69E7CC0];

    sub_1D78B42C4("HideMyEmailService requestWebOptIn returned no data and no error.", 65, 2, &dword_1D7739000, v20, v21, v22);
  }

  else
  {
    v9 = a1;
    sub_1D78B3814();
    swift_allocObject();
    sub_1D78715AC(v9, a2);
    sub_1D78B3804();
    sub_1D7871600();
    v37 = v9;
    v38 = a2;
    sub_1D78B37F4();

    if (qword_1EC9C8448 != -1)
    {
      swift_once();
    }

    v24 = qword_1EC9D9DF0;
    sub_1D774FE1C(0);
    v25 = swift_allocObject();
    v26 = MEMORY[0x1E69E6370];
    *(v25 + 16) = xmmword_1D78BCAB0;
    v27 = MEMORY[0x1E69E63A8];
    *(v25 + 56) = v26;
    *(v25 + 64) = v27;
    *(v25 + 32) = v40;
    sub_1D78B60A4();
    sub_1D78B42C4("HideMyEmailService requestWebOptIn returned successfully with status: %d", v34);

    if (v41)
    {
      v39 = *(v41 + 16);
      if (v39)
      {
        v28 = 0;
        v29 = v41 + 72;
        while (v28 < *(v41 + 16))
        {
          ++v28;
          v9 = swift_allocObject();
          *(v9 + 1) = xmmword_1D78BCAB0;

          v30 = sub_1D78681A0();
          v32 = v31;
          *(v9 + 7) = MEMORY[0x1E69E6158];
          *(v9 + 8) = sub_1D775ABD4();
          *(v9 + 4) = v30;
          *(v9 + 5) = v32;
          v33 = sub_1D78B60A4();
          sub_1D78B42C4("HideMyEmailService requestWebOptIn diagnosis: %@", 48, 2, &dword_1D7739000, v24, v33, v9);

          v29 += 48;
          if (v39 == v28)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_20;
      }

LABEL_17:
    }

    (a8)(v35);
    sub_1D77E56E0(v37, v38);
  }
}

uint64_t sub_1D7869CA4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7869CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_1EC9C8448 != -1)
  {
    swift_once();
  }

  v9 = qword_1EC9D9DF0;
  sub_1D774FE1C(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D78BCAB0;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1D775ABD4();
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;

  v11 = sub_1D78B60A4();
  sub_1D78B42C4("HideMyEmailService requestWebOptIn called for channelId: %@", 59, 2, &dword_1D7739000, v9, v11, v10);

  MEMORY[0x1EEE9AC00](v12, v13);
  sub_1D78724F4(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

void sub_1D7869E80(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v145 = a3;
  v146 = a4;
  v10 = sub_1D78B5264();
  v111 = *(v10 - 8);
  v112 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v110 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D78B2F74();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v144 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D78B3444();
  v141 = *(v16 - 8);
  v142 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v140 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1E69E6720];
  sub_1D7871654(0, &qword_1EC9CB118, MEMORY[0x1E6969610], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v143 = &v108 - v22;
  v23 = sub_1D78B3464();
  v137 = *(v23 - 8);
  v138 = v23;
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v139 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v27);
  v135 = &v108 - v28;
  sub_1D7871654(0, &qword_1EC9CB120, MEMORY[0x1E6969680], v19);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v136 = &v108 - v31;
  v32 = sub_1D78B3294();
  v134 = *(v32 - 8);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v36 = &v108 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v40 = &v108 - v39;
  MEMORY[0x1EEE9AC00](v38, v41);
  v43 = &v108 - v42;
  v44 = swift_allocObject();
  *(v44 + 16) = a1;
  *(v44 + 24) = a2;
  v45 = objc_opt_self();
  v109 = a5;
  v46 = *(a5 + 24);

  v47 = [v45 CAPIBaseURLForConfiguration_];
  swift_unknownObjectRelease();
  if (v47)
  {
    v132 = v44;
    sub_1D78B3254();

    sub_1D78B3234();
    v48 = v134;
    v130 = *(v134 + 8);
    v131 = v134 + 8;
    v130(v36, v32);
    v49 = *(v48 + 32);
    v133 = v43;
    v134 = v32;
    v49(v43, v40, v32);
    v50 = *a6;
    v51 = a6[1];
    v52 = a6[3];
    v124 = a6[2];
    v125 = v50;
    v53 = a6[4];
    v54 = a6[5];
    v55 = a6[7];
    v122 = a6[6];
    v123 = v53;
    v56 = a6[9];
    v121 = a6[8];
    v57 = a6[10];
    v58 = a6[11];
    v59 = a6[17];
    v115 = a6[16];
    v116 = v57;
    v60 = a6[14];
    v61 = a6[15];
    v62 = a6[12];
    v63 = a6[13];
    v113 = v62;
    v114 = v60;
    v119 = v59;

    v118 = v61;

    v117 = v63;

    v129 = v51;

    v128 = v52;

    v127 = v54;

    v126 = v55;

    v120 = v58;

    v64 = v135;
    sub_1D78B3424();
    v65 = v136;
    sub_1D78B3414();
    v66 = v138;
    v67 = *(v137 + 8);
    v67(v64, v138);
    v68 = sub_1D78B3404();
    v69 = *(v68 - 8);
    if ((*(v69 + 48))(v65, 1, v68) == 1)
    {
      sub_1D7871744(v65, &qword_1EC9CB120, MEMORY[0x1E6969680], MEMORY[0x1E69E6720], sub_1D7871654);
      v137 = 0;
      v70 = 0;
    }

    else
    {
      v137 = sub_1D78B33D4();
      v70 = v75;
      (*(v69 + 8))(v65, v68);
    }

    v76 = v139;
    sub_1D78B3424();
    v77 = v140;
    sub_1D78B3454();
    v67(v76, v66);
    v78 = v143;
    sub_1D78B3434();
    (v141)[1](v77, v142);
    v79 = sub_1D78B33E4();
    v80 = *(v79 - 8);
    if ((*(v80 + 48))(v78, 1, v79) == 1)
    {
      sub_1D7871744(v78, &qword_1EC9CB118, MEMORY[0x1E6969610], MEMORY[0x1E69E6720], sub_1D7871654);
      v81 = 0;
      v82 = 0;
    }

    else
    {
      v81 = sub_1D78B33D4();
      v83 = v78;
      v82 = v84;
      (*(v80 + 8))(v83, v79);
    }

    *&v160 = v116;
    *(&v160 + 1) = v120;
    *&v161 = v115;
    *(&v161 + 1) = v119;
    *&v162 = v114;
    *(&v162 + 1) = v118;
    *&v163 = v113;
    *(&v163 + 1) = v117;
    LOBYTE(v164) = 2;
    *(&v164 + 1) = v137;
    *&v165 = v70;
    *(&v165 + 1) = v81;
    *&v166 = v82;
    BYTE8(v166) = 2;
    *&v167 = 0;
    *(&v167 + 1) = v125;
    *&v168 = v129;
    *(&v168 + 1) = v124;
    *&v169 = v128;
    *(&v169 + 1) = v123;
    *&v170 = v127;
    *(&v170 + 1) = v122;
    *&v171 = v126;
    *(&v171 + 1) = v121;
    v172 = v56;
    v157 = v170;
    v158 = v171;
    v159 = v56;
    v153 = v166;
    v154 = v167;
    v155 = v168;
    v156 = v169;
    v149 = v162;
    v150 = v163;
    v151 = v164;
    v152 = v165;
    v147 = v160;
    v148 = v161;
    sub_1D78B2FB4();
    swift_allocObject();
    sub_1D78B2FA4();
    sub_1D78B2F64();
    sub_1D78B2F84();
    sub_1D787151C();
    v85 = sub_1D78B2F94();
    v87 = v86;
    v88 = v85;

    if (qword_1EC9C8448 != -1)
    {
      swift_once();
    }

    v89 = qword_1EC9D9DF0;
    v90 = sub_1D78B60A4();
    sub_1D78B42C4("HideMyEmailService requestSiwaCredentialShare sending info to server.", 69, 2, &dword_1D7739000, v89, v90, MEMORY[0x1E69E7CC0]);
    v144 = *(v109 + 16);
    v143 = sub_1D78B3214();
    sub_1D786FB88();
    sub_1D78724F4(0, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v142 = sub_1D78B5BB4();

    v141 = *MEMORY[0x1E69B5698];
    v91 = sub_1D78B32B4();
    v92 = *MEMORY[0x1E69B5680];
    v93 = *MEMORY[0x1E696A9C8];
    sub_1D7788448();
    v95 = v110;
    v94 = v111;
    v96 = v112;
    (*(v111 + 104))(v110, *MEMORY[0x1E69E7F88], v112);
    v97 = v92;
    v98 = sub_1D78B6134();
    (*(v94 + 8))(v95, v96);
    v99 = swift_allocObject();
    v100 = v132;
    v99[2] = sub_1D7782A58;
    v99[3] = v100;
    v101 = v146;
    v99[4] = v145;
    v99[5] = v101;
    *&v149 = sub_1D78717AC;
    *(&v149 + 1) = v99;
    *&v147 = MEMORY[0x1E69E9820];
    *(&v147 + 1) = 1107296256;
    *&v148 = sub_1D786839C;
    *(&v148 + 1) = &block_descriptor_78;
    v102 = _Block_copy(&v147);

    LODWORD(v107) = 0;
    v103 = v143;
    v105 = v141;
    v104 = v142;
    LODWORD(v106) = v93;
    [v144 performAuthenticatedHTTPRequestWithURL:v143 valuesByHTTPHeaderField:v142 method:v141 data:v91 contentType:v97 priority:1 reauthenticateIfNeeded:v106 networkEventType:v107 callbackQueue:v98 completion:v102];
    sub_1D775DD6C(v88, v87);
    _Block_release(v102);

    sub_1D7871570(&v160);
    v130(v133, v134);
  }

  else
  {

    if (qword_1EC9C8448 != -1)
    {
      swift_once();
    }

    v71 = qword_1EC9D9DF0;
    v72 = sub_1D78B6094();
    sub_1D78B42C4("HideMyEmailService requestWebOptIn error: Invalid URL.", 54, 2, &dword_1D7739000, v71, v72, MEMORY[0x1E69E7CC0]);
    sub_1D78714C8();
    v73 = swift_allocError();
    *v74 = 0;
    v145();
  }
}

void sub_1D786AC1C(uint64_t a1, unint64_t a2, id a3, id a4, uint64_t (*a5)(uint64_t), __n128 a6, uint64_t a7, uint64_t (*a8)(void, __n128))
{
  if (a4)
  {
    v11 = a4;
    v12 = sub_1D78B31B4();
    v13 = [v12 userInfo];
    v14 = MEMORY[0x1E69E6158];
    v15 = sub_1D78B5BC4();

    if (*(v15 + 16) && (v16 = sub_1D777BBB4(0xD00000000000001DLL, 0x80000001D78DD3D0), (v17 & 1) != 0))
    {
      sub_1D777BE08(*(v15 + 56) + 32 * v16, &v90);

      if (swift_dynamicCast() & 1) != 0 && (v89)
      {
        a5(1);
LABEL_9:
        if (qword_1EC9C8448 != -1)
        {
          swift_once();
        }

        v18 = qword_1EC9D9DF0;
        v19 = sub_1D78B6094();
        sub_1D774FE1C(0);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1D78BCAB0;
        v90 = a4;
        v21 = a4;
        sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
        v22 = sub_1D78B5CC4();
        v24 = v23;
        *(v20 + 56) = v14;
        *(v20 + 64) = sub_1D775ABD4();
        *(v20 + 32) = v22;
        *(v20 + 40) = v24;
        sub_1D78B42C4("HideMyEmailService requestSiwaCredentialShare returned error: %@", 64, 2, &dword_1D7739000, v18, v19, v20);

        v25 = a4;
        goto LABEL_12;
      }
    }

    else
    {
    }

    (a8)(a4);
    goto LABEL_9;
  }

  if (!a3)
  {
    sub_1D78714C8();
    v38 = swift_allocError();
    *v39 = 4;
    (a8)();

    if (qword_1EC9C8448 != -1)
    {
      swift_once();
    }

    v40 = qword_1EC9D9DF0;
    v33 = sub_1D78B6094();
    v34 = "HideMyEmailService requestSiwaCredentialShare returned no status code.";
    v35 = MEMORY[0x1E69E7CC0];
    v36 = 70;
    v37 = v40;
LABEL_21:

    sub_1D78B42C4(v34, v36, 2, &dword_1D7739000, v37, v33, v35);
    return;
  }

  v26 = [a3 statusCode];
  if (qword_1EC9C8448 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v27 = qword_1EC9D9DF0;
    sub_1D774FE1C(0);
    v28 = swift_allocObject();
    v29 = MEMORY[0x1E69E6530];
    *(v28 + 16) = xmmword_1D78BCAB0;
    v30 = MEMORY[0x1E69E65A8];
    *(v28 + 56) = v29;
    *(v28 + 64) = v30;
    *(v28 + 32) = v26;
    sub_1D78B60A4();
    sub_1D78B42C4("HideMyEmailService requestSiwaCredentialShare returned response. Status: %d", v77);

    if ((v26 - 200) > 0x63)
    {
      if (v26 == 401)
      {
LABEL_25:
        v41 = 1;
LABEL_43:
        a5(v41);
        return;
      }

      if ((v26 - 400) < 0x1D || (v26 - 430) <= 0x45)
      {
        if (a2 >> 60 != 15)
        {
          sub_1D78B3814();
          swift_allocObject();
          sub_1D78715AC(a1, a2);
          sub_1D78B3804();
          sub_1D7871600();
          sub_1D78B37F4();

          v62 = v91;
          if (!v91)
          {
            sub_1D77E56E0(a1, a2);
            v41 = 2;
            goto LABEL_43;
          }

          v82 = a5;
          v86 = *(v91 + 2);
          if (v86)
          {
            v63 = 0;
            v64 = v91 + 72;
            v84 = v91;
            while (v63 < *(v62 + 2))
            {
              v65 = v27;
              ++v63;
              v66 = *v64;
              v68 = *(v64 - 2);
              v67 = *(v64 - 1);
              v70 = *(v64 - 4);
              v69 = *(v64 - 3);
              v71 = *(v64 - 40);
              v72 = swift_allocObject();
              *(v72 + 16) = xmmword_1D78BCAB0;
              LOBYTE(v90) = v71;
              v91 = v70;
              v92 = v69;
              v93 = v68;
              v94 = v67;
              v95 = v66;

              v73 = sub_1D78681A0();
              v75 = v74;
              *(v72 + 56) = MEMORY[0x1E69E6158];
              *(v72 + 64) = sub_1D775ABD4();
              *(v72 + 32) = v73;
              *(v72 + 40) = v75;
              v76 = sub_1D78B60A4();
              v27 = v65;
              sub_1D78B42C4("HideMyEmailService requestSiwaCredentialShare diagnosis: %@", 59, 2, &dword_1D7739000, v65, v76, v72);

              v64 += 48;
              v62 = v84;
              if (v86 == v63)
              {
                goto LABEL_50;
              }
            }

            __break(1u);
            return;
          }

LABEL_50:
          sub_1D77E56E0(a1, a2);

          a5 = v82;
        }
      }

      else if (v26 > 499 || v26 == 429)
      {
        goto LABEL_25;
      }

      v41 = 2;
      goto LABEL_43;
    }

    if (a2 >> 60 == 15)
    {
      sub_1D78714C8();
      v31 = swift_allocError();
      *v32 = 1;
      (a8)();

      v33 = sub_1D78B6094();
      v34 = "HideMyEmailService requestSiwaCredentialShare returned no data and no error.";
      v35 = MEMORY[0x1E69E7CC0];
      v36 = 76;
      v37 = v27;
      goto LABEL_21;
    }

    sub_1D78B3814();
    swift_allocObject();
    sub_1D78715AC(a1, a2);
    sub_1D78B3804();
    sub_1D7871600();
    sub_1D78B37F4();

    v42 = v90;
    v43 = v91;
    v26 = swift_allocObject();
    v44 = MEMORY[0x1E69E6370];
    *(v26 + 16) = xmmword_1D78BCAB0;
    v45 = MEMORY[0x1E69E63A8];
    *(v26 + 56) = v44;
    *(v26 + 64) = v45;
    *(v26 + 32) = v42;
    sub_1D78B60A4();
    sub_1D78B42C4("HideMyEmailService requestSiwaCredentialShare returned successfully with status: %d", v78);

    if (!v43)
    {
      goto LABEL_40;
    }

    v79 = v42;
    v80 = a8;
    v81 = a5;
    v83 = *(v43 + 2);
    v85 = v27;
    if (!v83)
    {
      break;
    }

    a8 = 0;
    v46 = v43 + 72;
    while (a8 < *(v43 + 2))
    {
      a8 = (a8 + 1);
      v47 = *v46;
      v48 = *(v46 - 2);
      v49 = *(v46 - 1);
      v50 = v43;
      a5 = *(v46 - 4);
      v51 = *(v46 - 3);
      v52 = *(v46 - 40);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_1D78BCAB0;
      LOBYTE(v90) = v52;
      v91 = a5;
      v92 = v51;
      v93 = v48;
      v94 = v49;
      v95 = v47;

      v26 = sub_1D78681A0();
      v55 = v54;
      *(v53 + 56) = MEMORY[0x1E69E6158];
      *(v53 + 64) = sub_1D775ABD4();
      *(v53 + 32) = v26;
      *(v53 + 40) = v55;
      v56 = sub_1D78B60A4();
      sub_1D78B42C4("HideMyEmailService requestSiwaCredentialShare diagnosis: %@", 59, 2, &dword_1D7739000, v85, v56, v53);

      v43 = v50;

      v46 += 48;
      if (v83 == a8)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_53:
    swift_once();
  }

LABEL_39:

  a5 = v81;
  v27 = v85;
  a8 = v80;
  v42 = v79;
LABEL_40:
  if (v42)
  {
    v57 = sub_1D78B60A4();
    v58 = sub_1D78B42C4("HideMyEmailService requestSiwaCredentialShare returned successful http request with true result.", 96, 2, &dword_1D7739000, v27, v57, MEMORY[0x1E69E7CC0]);
    (a5)(0, v58);
    sub_1D77E56E0(a1, a2);
    return;
  }

  v59 = sub_1D78B6094();
  sub_1D78B42C4("HideMyEmailService requestSiwaCredentialShare returned successful http request, but result was false.", 101, 2, &dword_1D7739000, v27, v59, MEMORY[0x1E69E7CC0]);
  sub_1D78714C8();
  v60 = swift_allocError();
  *v61 = 3;
  (a8)();
  sub_1D77E56E0(a1, a2);
  v25 = v60;
LABEL_12:
}

uint64_t sub_1D786B608(uint64_t a1)
{
  if (qword_1EC9C8448 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC9D9DF0;
  sub_1D774FE1C(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D78BCAB0;
  v5 = *(a1 + 80);
  v4 = *(a1 + 88);
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1D775ABD4();
  *(v3 + 32) = v5;
  *(v3 + 40) = v4;

  v6 = sub_1D78B60A4();
  sub_1D78B42C4("HideMyEmailService requestSiwaCredentialShare called for channelId: %@", 70, 2, &dword_1D7739000, v2, v6, v3);

  MEMORY[0x1EEE9AC00](v7, v8);
  sub_1D78724F4(0, &qword_1EC9CB128, &type metadata for SIWACredentialServiceResult, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

void sub_1D786B790(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x496C656E6E616863 && a2 == 0xE900000000000064)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D78B6724();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D786B820(uint64_t a1)
{
  v2 = sub_1D7872758();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D786B85C(uint64_t a1)
{
  v2 = sub_1D7872758();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D786B898@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a2;
  sub_1D78727AC(0, &qword_1EC9CB2C8, sub_1D7872758, &type metadata for ProxyEmailGenerationRequest.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7872758();
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

uint64_t sub_1D786BA48(void *a1)
{
  sub_1D78727AC(0, &qword_1EC9CB2B8, sub_1D7872758, &type metadata for ProxyEmailGenerationRequest.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7872758();
  sub_1D78B6884();
  sub_1D78B6684();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D786BBB0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1279346002;
  }

  else
  {
    v3 = 0x59584F5250;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1279346002;
  }

  else
  {
    v5 = 0x59584F5250;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D78B6724();
  }

  return v8 & 1;
}

uint64_t sub_1D786BC4C()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

double sub_1D786BCC4(uint64_t a1)
{
  sub_1D78B5D14();

  return result;
}

uint64_t sub_1D786BD28(uint64_t a1)
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

void sub_1D786BDA8(uint64_t *a1@<X8>)
{
  v2 = 1279346002;
  if (!*v1)
  {
    v2 = 0x59584F5250;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D786BE8C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 4541768;
  if (v2 != 1)
  {
    v4 = 1096239443;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x4D455F4552414853;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB000000004C4941;
  }

  v7 = 0xE300000000000000;
  v8 = 4541768;
  if (*a2 != 1)
  {
    v8 = 1096239443;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x4D455F4552414853;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB000000004C4941;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D78B6724();
  }

  return v11 & 1;
}

uint64_t sub_1D786BF74()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

double sub_1D786C010(uint64_t a1)
{
  sub_1D78B5D14();

  return result;
}

uint64_t sub_1D786C098(uint64_t a1)
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

unint64_t sub_1D786C130@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D786FF98(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D786C160(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000004C4941;
  v4 = 0xE300000000000000;
  v5 = 4541768;
  if (v2 != 1)
  {
    v5 = 1096239443;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4D455F4552414853;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D786C268(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7079546E6974706FLL;
    v6 = 0x616D4579786F7270;
    if (a1 != 8)
    {
      v6 = 0x6F666E4961776973;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7972746E756F63;
    if (a1 != 5)
    {
      v7 = 0x65676175676E616CLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x496C656E6E616863;
    v2 = 0x6573616863727570;
    v3 = 0x6449706169;
    if (a1 != 3)
    {
      v3 = 0x7079546C69616D65;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6C69616D65;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D786C3B0(void *a1)
{
  v2 = v1;
  sub_1D78727AC(0, &qword_1EC9CB270, sub_1D7872370, &type metadata for PublisherWebAccessOptInRequest.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7872370();
  sub_1D78B6884();
  LOBYTE(v18) = 0;
  v10 = v16[1];
  sub_1D78B6684();
  if (!v10)
  {
    LOBYTE(v18) = 1;
    sub_1D78B6654();
    LOBYTE(v18) = 2;
    sub_1D78B6684();
    LOBYTE(v18) = 3;
    sub_1D78B6684();
    LOBYTE(v18) = *(v2 + 64);
    LOBYTE(v17[0]) = 4;
    sub_1D78723C4();
    sub_1D78B6664();
    LOBYTE(v18) = 5;
    sub_1D78B6654();
    LOBYTE(v18) = 6;
    sub_1D78B6654();
    LOBYTE(v18) = *(v2 + 104);
    LOBYTE(v17[0]) = 7;
    sub_1D7872418();
    sub_1D78B6664();
    *&v18 = *(v2 + 112);
    LOBYTE(v17[0]) = 8;
    type metadata accessor for ProxyEmailRequestInfo();
    sub_1D78728BC(&qword_1EC9CB290, 255, type metadata accessor for ProxyEmailRequestInfo, &unk_1D78C82A8);
    sub_1D78B6664();
    v12 = *(v2 + 136);
    v13 = *(v2 + 168);
    v23[2] = *(v2 + 152);
    v23[3] = v13;
    v23[4] = *(v2 + 184);
    v23[0] = *(v2 + 120);
    v23[1] = v12;
    v14 = *(v2 + 136);
    v15 = *(v2 + 168);
    v20 = *(v2 + 152);
    v21 = v15;
    v22 = *(v2 + 184);
    v18 = *(v2 + 120);
    v19 = v14;
    v24 = 9;
    sub_1D787246C(v23, v17);
    sub_1D7872544();
    sub_1D78B6664();
    v17[2] = v20;
    v17[3] = v21;
    v17[4] = v22;
    v17[0] = v18;
    v17[1] = v19;
    sub_1D7871744(v17, &qword_1EC9CB298, &type metadata for SignInWithAppleInfo, MEMORY[0x1E69E6720], sub_1D78724F4);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D786C7B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D786FFE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D786C7E4(uint64_t a1)
{
  v2 = sub_1D7872370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D786C820(uint64_t a1)
{
  v2 = sub_1D7872370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1D786C85C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D7870328(a2, v10);
  if (!v2)
  {
    v5 = v10[11];
    *(a1 + 160) = v10[10];
    *(a1 + 176) = v5;
    *(a1 + 192) = v11;
    v6 = v10[7];
    *(a1 + 96) = v10[6];
    *(a1 + 112) = v6;
    v7 = v10[9];
    *(a1 + 128) = v10[8];
    *(a1 + 144) = v7;
    v8 = v10[3];
    *(a1 + 32) = v10[2];
    *(a1 + 48) = v8;
    v9 = v10[5];
    *(a1 + 64) = v10[4];
    *(a1 + 80) = v9;
    result = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1D786C944(void *a1)
{
  sub_1D78727AC(0, &qword_1EC9CB190, sub_1D7871908, &type metadata for SignInWithAppleInfo.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7871908();
  sub_1D78B6884();
  v15 = 0;
  sub_1D78B6684();
  if (!v1)
  {
    v14 = 1;
    sub_1D78B6684();
    v13 = 2;
    sub_1D78B6684();
    v12 = 3;
    sub_1D78B6654();
    v11 = 4;
    sub_1D78B6654();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D786CB30(void *a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a3;
  sub_1D78727AC(0, &qword_1EC9CB2D0, sub_1D7872598, &type metadata for PublisherWebAccessOptInResponse.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7872598();
  sub_1D78B6884();
  v14 = 0;
  sub_1D78B6694();
  if (!v3)
  {
    v12[1] = v12[0];
    v13 = 1;
    sub_1D78724F4(0, &qword_1EC9CB140, &type metadata for Diagnosis, MEMORY[0x1E69E62F8]);
    sub_1D78719C4(&qword_1EC9CB1B0, sub_1D7871A54, MEMORY[0x1E69E6300]);
    sub_1D78B6664();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D786CD40()
{
  v1 = *v0;
  v2 = 0x797469746E656469;
  v3 = 0x6E65644972657375;
  v4 = 0x614E796C696D6166;
  if (v1 != 3)
  {
    v4 = 0x6D614E6E65766967;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1D786CE00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D7870B00(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D786CE28(uint64_t a1)
{
  v2 = sub_1D7871908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D786CE64(uint64_t a1)
{
  v2 = sub_1D7871908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1D786CEA0@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D7870CDC(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1D786CF04()
{
  if (*v0)
  {
    return 0x74736F6E67616964;
  }

  else
  {
    return 0x737574617473;
  }
}

void sub_1D786CF44(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D78B6724() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x74736F6E67616964 && a2 == 0xEB00000000736369)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D78B6724();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D786D020(uint64_t a1)
{
  v2 = sub_1D7872598();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D786D05C(uint64_t a1)
{
  v2 = sub_1D7872598();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D786D098@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1D78710E4(a2);
  if (!v2)
  {
    *a1 = result & 1;
    *(a1 + 8) = v5;
  }

  return result;
}

NewsSubscription::Diagnosis::Category_optional __swiftcall Diagnosis.Category.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D78B6594();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Diagnosis.Category.rawValue.getter()
{
  v1 = 0x524556524553;
  if (*v0 != 1)
  {
    v1 = 0x4E574F4E4B4E55;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x54534555514552;
  }
}

uint64_t sub_1D786D1A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x524556524553;
  if (v2 != 1)
  {
    v4 = 0x4E574F4E4B4E55;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x54534555514552;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x524556524553;
  if (*a2 != 1)
  {
    v8 = 0x4E574F4E4B4E55;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x54534555514552;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D78B6724();
  }

  return v11 & 1;
}

uint64_t sub_1D786D29C()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

double sub_1D786D33C(uint64_t a1)
{
  sub_1D78B5D14();

  return result;
}

uint64_t sub_1D786D3C8(uint64_t a1)
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

void sub_1D786D470(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x524556524553;
  if (v2 != 1)
  {
    v5 = 0x4E574F4E4B4E55;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x54534555514552;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

NewsSubscription::Diagnosis::Type_optional __swiftcall Diagnosis.Type.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D78B6594();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t Diagnosis.Type.rawValue.getter()
{
  if (*v0)
  {
    return 0x524F525245;
  }

  else
  {
    return 0x474E494E524157;
  }
}

uint64_t sub_1D786D618(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x524F525245;
  }

  else
  {
    v3 = 0x474E494E524157;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x524F525245;
  }

  else
  {
    v5 = 0x474E494E524157;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D78B6724();
  }

  return v8 & 1;
}

uint64_t sub_1D786D6BC()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

double sub_1D786D73C(uint64_t a1)
{
  sub_1D78B5D14();

  return result;
}

uint64_t sub_1D786D7A8(uint64_t a1)
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

void sub_1D786D830(char *a3@<X8>)
{
  v4 = sub_1D78B6594();

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

void sub_1D786D88C(uint64_t *a1@<X8>)
{
  v2 = 0x474E494E524157;
  if (*v1)
  {
    v2 = 0x524F525245;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t Diagnosis.id.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void Diagnosis.id.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t Diagnosis.message.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void Diagnosis.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_1D786DAF8()
{
  v1 = 0x79726F6765746163;
  v2 = 0x6567617373656DLL;
  if (*v0 != 2)
  {
    v2 = 1701869940;
  }

  if (*v0)
  {
    v1 = 25705;
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

uint64_t sub_1D786DB60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D7871334(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D786DB88(uint64_t a1)
{
  v2 = sub_1D786DE28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D786DBC4(uint64_t a1)
{
  v2 = sub_1D786DE28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Diagnosis.encode(to:)(void *a1)
{
  sub_1D78727AC(0, &qword_1EC9CB080, sub_1D786DE28, &type metadata for Diagnosis.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v18 = *(v1 + 2);
  v19 = v10;
  v11 = *(v1 + 3);
  v16 = *(v1 + 4);
  v17 = v11;
  HIDWORD(v15) = v1[40];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D786DE28();
  sub_1D78B6884();
  v26 = v9;
  v25 = 0;
  sub_1D786DE7C();
  v12 = v20;
  sub_1D78B6664();
  if (!v12)
  {
    v13 = BYTE4(v15);
    v24 = 1;
    sub_1D78B6654();
    v23 = 2;
    sub_1D78B6654();
    v22 = v13;
    v21 = 3;
    sub_1D786DED0();
    sub_1D78B6664();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D786DE28()
{
  result = qword_1EC9CB088;
  if (!qword_1EC9CB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB088);
  }

  return result;
}

unint64_t sub_1D786DE7C()
{
  result = qword_1EC9CB090;
  if (!qword_1EC9CB090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB090);
  }

  return result;
}

unint64_t sub_1D786DED0()
{
  result = qword_1EC9CB098;
  if (!qword_1EC9CB098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB098);
  }

  return result;
}

void Diagnosis.init(from:)(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v26 = a2;
  sub_1D78727AC(0, &qword_1EC9CB0A0, sub_1D786DE28, &type metadata for Diagnosis.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v23 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D786DE28();
  sub_1D78B6874();
  if (!v2)
  {
    v10 = v6;
    v31 = 0;
    sub_1D786E224();
    v11 = v5;
    sub_1D78B65C4();
    v12 = v32;
    v30 = 1;
    v13 = sub_1D78B65A4();
    v15 = v14;
    v25 = v13;
    v29 = 2;
    v16 = sub_1D78B65A4();
    v18 = v17;
    v24 = v16;
    v27 = 3;
    sub_1D786E278();
    sub_1D78B65C4();
    (*(v10 + 8))(v9, v11);
    v19 = v28;
    v20 = v12;
    v21 = v26;
    *v26 = v20;
    v22 = v24;
    *(v21 + 1) = v25;
    *(v21 + 2) = v15;
    *(v21 + 3) = v22;
    *(v21 + 4) = v18;
    v21[40] = v19;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D786E224()
{
  result = qword_1EC9CB0A8;
  if (!qword_1EC9CB0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB0A8);
  }

  return result;
}

unint64_t sub_1D786E278()
{
  result = qword_1EC9CB0B0;
  if (!qword_1EC9CB0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB0B0);
  }

  return result;
}

unint64_t sub_1D786E2D0()
{
  result = qword_1EC9CB0B8;
  if (!qword_1EC9CB0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB0B8);
  }

  return result;
}

unint64_t sub_1D786E328()
{
  result = qword_1EC9CB0C0;
  if (!qword_1EC9CB0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB0C0);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D786E3C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1D786E41C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1D786E4AC()
{
  if (*v0)
  {
    return 0x616D4579786F7270;
  }

  else
  {
    return 0x74736F6E67616964;
  }
}

void sub_1D786E4FC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74736F6E67616964 && a2 == 0xEB00000000736369;
  if (v6 || (sub_1D78B6724() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x616D4579786F7270 && a2 == 0xEE006F666E496C69)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D78B6724();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D786E5E4(uint64_t a1)
{
  v2 = sub_1D78717B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D786E620(uint64_t a1)
{
  v2 = sub_1D78717B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D786E65C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D786E6C0(void *a1)
{
  v3 = v1;
  sub_1D78727AC(0, &qword_1EC9CB1A8, sub_1D78717B8, &type metadata for ProxyEmailGenerationResponse.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78717B8();
  sub_1D78B6884();
  v14 = *(v3 + 16);
  v13 = 0;
  sub_1D78724F4(0, &qword_1EC9CB140, &type metadata for Diagnosis, MEMORY[0x1E69E62F8]);
  sub_1D78719C4(&qword_1EC9CB1B0, sub_1D7871A54, MEMORY[0x1E69E6300]);
  sub_1D78B6664();
  if (!v2)
  {
    v14 = *(v3 + 24);
    v13 = 1;
    type metadata accessor for ProxyEmailResponseInfo();
    sub_1D78728BC(&qword_1EC9CB1C0, 255, type metadata accessor for ProxyEmailResponseInfo, &unk_1D78C82F8);
    sub_1D78B6664();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D786E920(void *a1)
{
  sub_1D78727AC(0, &qword_1EC9CB130, sub_1D78717B8, &type metadata for ProxyEmailGenerationResponse.CodingKeys, MEMORY[0x1E69E6F48]);
  v13 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - v7;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v9 = a1[3];
  v14 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1D78717B8();
  sub_1D78B6874();
  if (!v2)
  {
    sub_1D78724F4(0, &qword_1EC9CB140, &type metadata for Diagnosis, MEMORY[0x1E69E62F8]);
    v15 = 0;
    sub_1D78719C4(&qword_1EC9CB148, sub_1D787180C, MEMORY[0x1E69E6330]);
    v10 = v13;
    sub_1D78B65C4();
    *(v1 + 16) = v16;

    type metadata accessor for ProxyEmailResponseInfo();
    v15 = 1;
    sub_1D78728BC(&qword_1EC9CB158, 255, type metadata accessor for ProxyEmailResponseInfo, &unk_1D78C8320);
    sub_1D78B65C4();
    (*(v5 + 8))(v8, v10);
    *(v1 + 24) = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v1;
}

uint64_t sub_1D786EC60()
{
  v1 = 0x616D4579786F7270;
  v2 = 0x4564726177726F66;
  if (*v0 != 2)
  {
    v2 = 0x64496D616574;
  }

  if (*v0)
  {
    v1 = 0x64496E69616D6F64;
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

uint64_t sub_1D786ECE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D78725EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D786ED0C(uint64_t a1)
{
  v2 = sub_1D7871860();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D786ED48(uint64_t a1)
{
  v2 = sub_1D7871860();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D786ED84()
{

  return swift_deallocClassInstance();
}

void sub_1D786EDF8(void *a1)
{
  sub_1D78727AC(0, &qword_1EC9CB1A0, sub_1D7871860, &type metadata for ProxyEmailResponseInfo.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v9 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7871860();
  sub_1D78B6884();
  v13 = 0;

  sub_1D78B6684();
  if (v1)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {

    v12 = 1;

    sub_1D78B6684();

    v11 = 2;

    sub_1D78B6684();

    v10 = 3;

    sub_1D78B6654();
    (*(v5 + 8))(v8, v4);
  }
}

void *sub_1D786F05C(void *a1)
{
  sub_1D78727AC(0, &qword_1EC9CB160, sub_1D7871860, &type metadata for ProxyEmailResponseInfo.CodingKeys, MEMORY[0x1E69E6F48]);
  v19 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - v7;
  v1[8] = 0;
  v1[9] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7871860();
  sub_1D78B6874();
  if (v2)
  {

    type metadata accessor for ProxyEmailResponseInfo();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v5;
    v23 = 0;
    v10 = v19;
    v1[2] = sub_1D78B65E4();
    v1[3] = v11;
    v22 = 1;
    v1[4] = sub_1D78B65E4();
    v1[5] = v12;
    v21 = 2;
    v1[6] = sub_1D78B65E4();
    v1[7] = v14;
    v20 = 3;
    v15 = sub_1D78B65A4();
    v17 = v16;
    (*(v9 + 8))(v8, v10);
    v1[8] = v15;
    v1[9] = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1D786F390()
{
  if (*v0)
  {
    return 0x64496D616574;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

void sub_1D786F3BC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D78B6724() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x64496D616574 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D78B6724();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D786F490(uint64_t a1)
{
  v2 = sub_1D78718B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D786F4CC(uint64_t a1)
{
  v2 = sub_1D78718B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D786F508()
{

  return swift_deallocClassInstance();
}

void sub_1D786F56C(void *a1)
{
  sub_1D78727AC(0, &qword_1EC9CB198, sub_1D78718B4, &type metadata for ProxyEmailRequestInfo.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v9 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78718B4();
  sub_1D78B6884();
  v11 = 0;

  sub_1D78B6684();
  if (!v1)
  {

    v10 = 1;

    sub_1D78B6654();
  }

  (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D786F774()
{
  result = qword_1EC9CB0D0;
  if (!qword_1EC9CB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB0D0);
  }

  return result;
}

void *sub_1D786F7C8(void *a1)
{
  sub_1D78727AC(0, &qword_1EC9CB170, sub_1D78718B4, &type metadata for ProxyEmailRequestInfo.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v15 - v7;
  v1[4] = 0;
  v1[5] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78718B4();
  sub_1D78B6874();
  if (v2)
  {

    type metadata accessor for ProxyEmailRequestInfo();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v16;
    v18 = 0;
    v1[2] = sub_1D78B65E4();
    v1[3] = v11;
    v17 = 1;
    v12 = sub_1D78B65A4();
    v14 = v13;
    (*(v9 + 8))(v8, v5);
    v1[4] = v12;
    v1[5] = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1D786FA40@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  a2(0);
  swift_allocObject();
  result = a4(a1);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

unint64_t sub_1D786FADC()
{
  result = qword_1EC9CB0D8;
  if (!qword_1EC9CB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB0D8);
  }

  return result;
}

unint64_t sub_1D786FB34()
{
  result = qword_1EC9CB0E0;
  if (!qword_1EC9CB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB0E0);
  }

  return result;
}

unint64_t sub_1D786FB88()
{
  v33[0] = sub_1D78B33C4();
  v0 = *(v33[0] - 8);
  MEMORY[0x1EEE9AC00](v33[0], v1);
  v3 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7871654(0, &qword_1EE08FA40, sub_1D78716B8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78C0D80;
  *(inited + 32) = 0x414E2D5050412D58;
  v33[1] = inited + 32;
  *(inited + 40) = 0xEA0000000000454DLL;
  sub_1D78724F4(0, &qword_1EE08FA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  v34 = xmmword_1D78BCAB0;
  *(v5 + 16) = xmmword_1D78BCAB0;
  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    v8 = sub_1D78B5C74();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  *(v5 + 32) = v8;
  *(v5 + 40) = v10;
  *(inited + 48) = v5;
  strcpy((inited + 56), "X-DEVICE-NAME");
  *(inited + 70) = -4864;
  v11 = swift_allocObject();
  *(v11 + 16) = v34;
  v12 = objc_opt_self();
  v13 = [v12 currentDevice];
  v14 = [v13 model];

  v15 = sub_1D78B5C74();
  v17 = v16;

  *(v11 + 32) = v15;
  *(v11 + 40) = v17;
  *(inited + 72) = v11;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000001D78DD000;
  v18 = swift_allocObject();
  *(v18 + 16) = v34;
  v19 = [v12 currentDevice];
  v20 = [v19 systemVersion];

  v21 = sub_1D78B5C74();
  v23 = v22;

  *(v18 + 32) = v21;
  *(v18 + 40) = v23;
  *(inited + 96) = v18;
  strcpy((inited + 104), "X-REQUEST-ID");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  v24 = swift_allocObject();
  *(v24 + 16) = v34;
  sub_1D78B33B4();
  v25 = sub_1D78B33A4();
  v27 = v26;
  (*(v0 + 8))(v3, v33[0]);
  *(v24 + 32) = v25;
  *(v24 + 40) = v27;
  *(inited + 120) = v24;
  *(inited + 128) = sub_1D78B5C74();
  *(inited + 136) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = v34;
  *(v29 + 32) = sub_1D78B5C74();
  *(v29 + 40) = v30;
  *(inited + 144) = v29;
  v31 = sub_1D77FFB84(inited);
  swift_setDeallocating();
  sub_1D78716B8(0);
  swift_arrayDestroy();
  return v31;
}

unint64_t sub_1D786FF98(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D78B6594();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D786FFE4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x496C656E6E616863 && a2 == 0xE900000000000064 || (sub_1D78B6724() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEF74706965636552 || (sub_1D78B6724() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449706169 && a2 == 0xE500000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7079546C69616D65 && a2 == 0xE900000000000065 || (sub_1D78B6724() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7079546E6974706FLL && a2 == 0xE900000000000065 || (sub_1D78B6724() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x616D4579786F7270 && a2 == 0xEE006F666E496C69 || (sub_1D78B6724() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F666E4961776973 && a2 == 0xE800000000000000)
  {

    return 9;
  }

  else
  {
    v5 = sub_1D78B6724();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1D7870328@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D78727AC(0, &qword_1EC9CB2D8, sub_1D7872370, &type metadata for PublisherWebAccessOptInRequest.CodingKeys, MEMORY[0x1E69E6F48]);
  v64 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v45 - v8;
  v10 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D7872370();
  sub_1D78B6874();
  if (v2)
  {
    v114 = v2;
    __swift_destroy_boxed_opaque_existential_1(v65);
LABEL_4:

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    return sub_1D7871744(&v80, &unk_1EC9CB298, &type metadata for SignInWithAppleInfo, MEMORY[0x1E69E6720], sub_1D78724F4);
  }

  v63 = v6;
  LOBYTE(v80) = 0;
  v11 = v64;
  v13 = sub_1D78B65E4();
  v62 = v14;
  LOBYTE(v80) = 1;
  v15 = sub_1D78B65A4();
  v16 = v63;
  v17 = v15;
  v61 = v18;
  LOBYTE(v80) = 2;
  *&v60 = sub_1D78B65E4();
  *(&v60 + 1) = v19;
  LOBYTE(v80) = 3;
  v20 = sub_1D78B65E4();
  v114 = 0;
  v22 = v21;
  v59 = v20;
  LOBYTE(v67) = 4;
  sub_1D7872814();
  v23 = v114;
  sub_1D78B65C4();
  if (v23)
  {
    v114 = v23;
    (*(v16 + 8))(v9, v11);
    __swift_destroy_boxed_opaque_existential_1(v65);
LABEL_8:

    goto LABEL_4;
  }

  v58 = v17;
  v57 = v80;
  LOBYTE(v80) = 5;
  v24 = sub_1D78B65A4();
  v26 = v25;
  v55 = v13;
  v56 = v24;
  LOBYTE(v80) = 6;
  v27 = sub_1D78B65A4();
  v114 = 0;
  v29 = v28;
  v54 = v27;
  LOBYTE(v67) = 7;
  sub_1D7872868();
  v30 = v114;
  sub_1D78B65C4();
  v114 = v30;
  if (v30 || (v53 = v80, type metadata accessor for ProxyEmailRequestInfo(), LOBYTE(v67) = 8, sub_1D78728BC(&qword_1EC9CB2F0, 255, type metadata accessor for ProxyEmailRequestInfo, &unk_1D78C82D0), v31 = v114, sub_1D78B65C4(), (v114 = v31) != 0))
  {
    (*(v16 + 8))(v9, v11);
    __swift_destroy_boxed_opaque_existential_1(v65);
    goto LABEL_8;
  }

  v32 = v80;
  v101 = 9;
  sub_1D7872904();
  v33 = v114;
  sub_1D78B65C4();
  v114 = v33;
  if (v33)
  {
    (*(v63 + 8))(v9, v64);
    __swift_destroy_boxed_opaque_existential_1(v65);
    goto LABEL_8;
  }

  (*(v63 + 8))(v9, v64);
  v63 = v103;
  v64 = v102;
  v51 = v105;
  v52 = v104;
  v49 = v107;
  v50 = v106;
  v47 = v109;
  v48 = v108;
  v45 = v111;
  v46 = v110;
  memset(v66, 0, 80);
  sub_1D7871744(v66, &unk_1EC9CB298, &type metadata for SignInWithAppleInfo, MEMORY[0x1E69E6720], sub_1D78724F4);
  v34 = v55;
  v35 = v61;
  *&v67 = v55;
  *(&v67 + 1) = v62;
  *&v68 = v58;
  *(&v68 + 1) = v61;
  v36 = *(&v60 + 1);
  v69 = v60;
  *&v70 = v59;
  *(&v70 + 1) = v22;
  LOBYTE(v71) = v57;
  *(&v71 + 1) = v113[0];
  DWORD1(v71) = *(v113 + 3);
  *(&v71 + 1) = v56;
  *&v72 = v26;
  *(&v72 + 1) = v54;
  *&v73 = v29;
  BYTE8(v73) = v53;
  *(&v73 + 9) = *v112;
  HIDWORD(v73) = *&v112[3];
  *&v74 = v32;
  *(&v74 + 1) = v64;
  *&v75 = v63;
  *(&v75 + 1) = v52;
  *&v76 = v51;
  *(&v76 + 1) = v50;
  *&v77 = v49;
  *(&v77 + 1) = v48;
  *&v78 = v47;
  *(&v78 + 1) = v46;
  v79 = v45;
  sub_1D7872958(&v67, &v80);
  __swift_destroy_boxed_opaque_existential_1(v65);
  *&v80 = v34;
  *(&v80 + 1) = v62;
  *&v81 = v58;
  *(&v81 + 1) = v35;
  *&v82 = v60;
  *(&v82 + 1) = v36;
  *&v83 = v59;
  *(&v83 + 1) = v22;
  LOBYTE(v84) = v57;
  *(&v84 + 1) = v113[0];
  DWORD1(v84) = *(v113 + 3);
  *(&v84 + 1) = v56;
  v85 = v26;
  v86 = v54;
  v87 = v29;
  v88 = v53;
  *&v89[3] = *&v112[3];
  *v89 = *v112;
  v90 = v32;
  v91 = v64;
  v92 = v63;
  v93 = v52;
  v94 = v51;
  v95 = v50;
  v96 = v49;
  v97 = v48;
  v98 = v47;
  v99 = v46;
  v100 = v45;
  result = sub_1D7871570(&v80);
  v37 = v76;
  v38 = v78;
  *(a2 + 160) = v77;
  *(a2 + 176) = v38;
  v39 = v72;
  v40 = v74;
  v41 = v75;
  *(a2 + 96) = v73;
  *(a2 + 112) = v40;
  *(a2 + 128) = v41;
  *(a2 + 144) = v37;
  v42 = v70;
  v43 = v71;
  *(a2 + 32) = v69;
  *(a2 + 48) = v42;
  *(a2 + 192) = v79;
  *(a2 + 64) = v43;
  *(a2 + 80) = v39;
  v44 = v68;
  *a2 = v67;
  *(a2 + 16) = v44;
  return result;
}

uint64_t sub_1D7870B00(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001D78DD6F0 == a2 || (sub_1D78B6724() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469746E656469 && a2 == 0xED00006E656B6F54 || (sub_1D78B6724() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644972657375 && a2 == 0xEE00726569666974 || (sub_1D78B6724() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL || (sub_1D78B6724() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065)
  {

    return 4;
  }

  else
  {
    v5 = sub_1D78B6724();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D7870CDC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v38 = a2;
  sub_1D78727AC(0, &qword_1EC9CB180, sub_1D7871908, &type metadata for SignInWithAppleInfo.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v31 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7871908();
  sub_1D78B6874();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  LOBYTE(v44[0]) = 0;
  v11 = v5;
  v12 = sub_1D78B65E4();
  v14 = v13;
  LOBYTE(v44[0]) = 1;
  v15 = sub_1D78B65E4();
  v37 = v16;
  v35 = v15;
  LOBYTE(v44[0]) = 2;
  v34 = sub_1D78B65E4();
  v36 = v17;
  LOBYTE(v44[0]) = 3;
  *&v33 = sub_1D78B65A4();
  *(&v33 + 1) = v18;
  v45 = 4;
  v19 = sub_1D78B65A4();
  v20 = *(v10 + 8);
  v21 = v19;
  v32 = v22;
  v20(v9, v11);
  *&v39 = v12;
  *(&v39 + 1) = v14;
  v23 = v35;
  v24 = v37;
  *&v40 = v35;
  *(&v40 + 1) = v37;
  *&v41 = v34;
  *(&v41 + 1) = v36;
  v25 = *(&v33 + 1);
  v42 = v33;
  v26 = v32;
  *&v43 = v21;
  *(&v43 + 1) = v32;
  sub_1D787195C(&v39, v44);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v44[0] = v12;
  v44[1] = v14;
  v44[2] = v23;
  v44[3] = v24;
  v44[4] = v34;
  v44[5] = v36;
  v44[6] = v33;
  v44[7] = v25;
  v44[8] = v21;
  v44[9] = v26;
  result = sub_1D7871994(v44);
  v28 = v42;
  v29 = v38;
  v38[2] = v41;
  v29[3] = v28;
  v29[4] = v43;
  v30 = v40;
  *v29 = v39;
  v29[1] = v30;
  return result;
}

uint64_t sub_1D78710E4(void *a1)
{
  sub_1D78727AC(0, &qword_1EC9CB2A8, sub_1D7872598, &type metadata for PublisherWebAccessOptInResponse.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11[-v7];
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1D7872598();
  sub_1D78B6874();
  if (!v1)
  {
    v11[31] = 0;
    LOBYTE(v9) = sub_1D78B65F4();
    sub_1D78724F4(0, &qword_1EC9CB140, &type metadata for Diagnosis, MEMORY[0x1E69E62F8]);
    v11[30] = 1;
    sub_1D78719C4(&qword_1EC9CB148, sub_1D787180C, MEMORY[0x1E69E6330]);
    sub_1D78B65C4();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9 & 1;
}

uint64_t sub_1D7871334(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D78B6724() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_1D78B6724() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D78B6724();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1D78714C8()
{
  result = qword_1EC9CB0E8;
  if (!qword_1EC9CB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB0E8);
  }

  return result;
}

unint64_t sub_1D787151C()
{
  result = qword_1EC9CB0F0;
  if (!qword_1EC9CB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB0F0);
  }

  return result;
}

double sub_1D78715AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

unint64_t sub_1D7871600()
{
  result = qword_1EC9CB0F8;
  if (!qword_1EC9CB0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB0F8);
  }

  return result;
}

void sub_1D7871654(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D78716B8(uint64_t a1)
{
  if (!qword_1EE0900E8)
  {
    sub_1D78724F4(255, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0900E8);
    }
  }
}

uint64_t sub_1D7871744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1D78717B8()
{
  result = qword_1EC9CB138;
  if (!qword_1EC9CB138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB138);
  }

  return result;
}

unint64_t sub_1D787180C()
{
  result = qword_1EC9CB150;
  if (!qword_1EC9CB150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB150);
  }

  return result;
}

unint64_t sub_1D7871860()
{
  result = qword_1EC9CB168;
  if (!qword_1EC9CB168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB168);
  }

  return result;
}

unint64_t sub_1D78718B4()
{
  result = qword_1EC9CB178;
  if (!qword_1EC9CB178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CB178);
  }

  return result;
}