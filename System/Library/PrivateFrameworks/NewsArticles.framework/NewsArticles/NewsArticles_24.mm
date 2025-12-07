uint64_t sub_1D7BF3E80(uint64_t a1, uint64_t a2)
{
  sub_1D7BFA678(0, &qword_1EE0BB3C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D2946C();
}

uint64_t sub_1D7BF3F0C(uint64_t a1)
{
  sub_1D7BFA678(0, &qword_1EC9E2D08, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D7D2946C();
}

void sub_1D7BF3F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = objc_opt_self();

  v12 = [v11 sharedAccount];
  v13 = [v12 activeiTunesAccount];

  if (v13 && ([v13 ams_isLocalAccount] & 1) == 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E698C7B0]) init];
  [v15 setIgnoreAccountConversion_];
  v16 = sub_1D7D3031C();
  [v15 setDebugReason_];

  v17 = [objc_allocWithZone(MEMORY[0x1E698CC58]) initWithAccount:v14 presentingViewController:a5 options:v15];
  v18 = [v17 performAuthentication];
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = sub_1D7AAA024;
  v19[5] = v10;
  v21[4] = sub_1D7BFA6C8;
  v21[5] = v19;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_1D7BF44E4;
  v21[3] = &block_descriptor_132;
  v20 = _Block_copy(v21);

  [v18 addFinishBlock_];
  _Block_release(v20);
}

void sub_1D7BF41E8(uint64_t a1, id a2, void (*a3)(void *), uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    v7 = a2;
    if (qword_1EE0CAF08 != -1)
    {
      swift_once();
    }

    v8 = qword_1EE0CAF10;
    sub_1D79F3AB0(0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D7D3B4D0;
    sub_1D798F168(0, &qword_1EE0BE7E0, MEMORY[0x1E69E7280]);
    sub_1D7D315DC();
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1D79D6AE0();
    *(v9 + 32) = 0;
    *(v9 + 40) = 0xE000000000000000;
    v10 = sub_1D7D30C6C();
    sub_1D7D29AAC("SubscribeActionHandler authentication failed with error=%{public}@", 66, 2, &dword_1D7987000, v8, v10, v9);

    sub_1D7BFA6D4();
    v11 = swift_allocError();
    *v12 = a2;
    v13 = a2;
    a3(v11);
  }

  else if (a1)
  {
    if (qword_1EE0CAF08 != -1)
    {
      swift_once();
    }

    v15 = qword_1EE0CAF10;
    v16 = sub_1D7D30C6C();
    sub_1D7D29AAC("SubscribeActionHandler authentication completed successfully.", 61, 2, &dword_1D7987000, v15, v16, MEMORY[0x1E69E7CC0]);
    v17 = [objc_opt_self() sharedAccount];
    [v17 reloadiTunesAccount];

    a5();
  }

  else
  {
    if (qword_1EE0CAF08 != -1)
    {
      swift_once();
    }

    v18 = qword_1EE0CAF10;
    v19 = sub_1D7D30C6C();
    sub_1D7D29AAC("SubscribeActionHandler authentication failed with unknown error", 63, 2, &dword_1D7987000, v18, v19, MEMORY[0x1E69E7CC0]);
    sub_1D7BFA6D4();
    v20 = swift_allocError();
    *v21 = 0;
    (a3)();
  }
}

void sub_1D7BF44E4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1D7BF4570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_bundleSubscriptionManager);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D7BFA634;
  *(v10 + 24) = v8;
  v12[4] = sub_1D7BFA63C;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D7BA86F0;
  v12[3] = &block_descriptor_123;
  v11 = _Block_copy(v12);

  [v9 refreshBundleSubscriptionWithCachePolicy:2 hideBundleDetectionUI:1 completion:v11];
  _Block_release(v11);
}

void sub_1D7BF4694(uint64_t a1)
{
  v2 = sub_1D7D295EC();
  v3 = *(v2 - 8);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = *MEMORY[0x1E69B6AA8];
    while (v10 < *(v8 + 16))
    {
      (*(v3 + 16))(v7, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v2, v5);
      if ((*(v3 + 88))(v7, v2) == v11)
      {
        (*(v3 + 96))(v7, v2);

        return;
      }

      ++v10;
      (*(v3 + 8))(v7, v2);
      if (v9 == v10)
      {
        return;
      }
    }

    __break(1u);
  }
}

id sub_1D7BF4838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    goto LABEL_12;
  }

  result = [*(a3 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_configurationManager) configuration];
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      v6 = [v5 paidBundleConfig];
      swift_unknownObjectRelease();
      v7 = [v6 offeredBundlePurchaseIDs];
      if (v7)
      {
        v8 = v7;
        v9 = sub_1D7D3063C();

        if (*(v9 + 16))
        {
          a1 = *(v9 + 32);

LABEL_12:

          return a1;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    a1 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_1D7BF4968(char **a1, unint64_t a2, NSObject *a3)
{
  v58 = a3;
  v6 = sub_1D7D2DB3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D7D2DB7C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D7D2DB9C();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  if (a1)
  {
    v48 = &v47 - v22;
    v49 = v24;
    v55 = v6;
    v56 = v23;
    v50 = v15;
    v51 = v12;
    v53 = v11;
    v54 = v7;
    v52 = v10;
    if (a2 >> 62)
    {
LABEL_25:
      v25 = sub_1D7D3167C();
    }

    else
    {
      v25 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v57 = a1;
    swift_unknownObjectRetain();
    v26 = 0;
    a1 = &selRef_destinationURL;
    while (v25 != v26)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1DA70EF00](v26, a2);
      }

      else
      {
        if (v26 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v27 = *(a2 + 8 * v26 + 32);
      }

      v28 = v27;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v29 = [v27 postPurchaseOnboardingStep];

      ++v26;
      if (v29 == 4)
      {
        sub_1D7992EFC(0, &qword_1EE0BEFF0, 0x1E69E9610);
        v37 = sub_1D7D30E1C();
        sub_1D7D2DB8C();
        v38 = v48;
        sub_1D7D2DBBC();
        v58 = *(v49 + 8);
        v58(v19, v56);
        v39 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v40 = swift_allocObject();
        v41 = v57;
        *(v40 + 16) = v39;
        *(v40 + 24) = v41;
        aBlock[4] = sub_1D7BFA3FC;
        aBlock[5] = v40;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D79FE25C;
        aBlock[3] = &block_descriptor_92;
        v42 = _Block_copy(aBlock);
        swift_unknownObjectRetain();

        v43 = v50;
        sub_1D7D2DB5C();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1D7BFA590(&qword_1EE0BFA20, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        sub_1D7999180(0, &qword_1EE0BF280, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        sub_1D7AE6D04(v44);
        v45 = v52;
        v46 = v55;
        sub_1D7D313AC();
        MEMORY[0x1DA70E860](v38, v43, v45, v42);
        _Block_release(v42);
        swift_unknownObjectRelease();

        (*(v54 + 8))(v45, v46);
        (*(v51 + 8))(v43, v53);
        v58(v38, v56);
        return;
      }
    }

    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router), *(v3 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router + 24));
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    v36 = v58;
    *(v35 + 16) = v34;
    *(v35 + 24) = v36;

    sub_1D7D2982C();

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EC9DFD78 != -1)
    {
      swift_once();
    }

    v30 = sub_1D7D29AFC();
    __swift_project_value_buffer(v30, qword_1ECA0BB00);
    v58 = sub_1D7D29ADC();
    v31 = sub_1D7D30C6C();
    if (os_log_type_enabled(v58, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1D7987000, v58, v31, "Final post-purchase routing is cancelled since no valid headline is available.", v32, 2u);
      MEMORY[0x1DA7102E0](v32, -1, -1);
    }

    v33 = v58;
  }
}

void sub_1D7BF501C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router), *(Strong + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router + 24));
    sub_1D7D2985C();
  }
}

void sub_1D7BF50B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D7D2B49C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [*(Strong + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_appConfigurationManager) possiblyUnfetchedAppConfiguration];
    if ([v10 respondsToSelector_])
    {
      v11 = [v10 smarterMessagingConfig];
      swift_unknownObjectRelease();
      if (([v11 discoverNewsPlusBubbleTipEnabled] & 1) == 0)
      {
        if (qword_1EC9DFD78 != -1)
        {
          swift_once();
        }

        v12 = sub_1D7D29AFC();
        __swift_project_value_buffer(v12, qword_1ECA0BB00);
        v13 = sub_1D7D29ADC();
        v14 = sub_1D7D30C6C();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&dword_1D7987000, v13, v14, "Discover News+ bubble tip display has been disabled in the config and will not be presented.", v15, 2u);
          MEMORY[0x1DA7102E0](v15, -1, -1);
        }

        v9 = v11;
        goto LABEL_12;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    (*(v4 + 104))(v7, *MEMORY[0x1E69D7FB8], v3);
    v16[3] = sub_1D7D28A3C();
    v16[4] = sub_1D7BFA590(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8], MEMORY[0x1E69B5708]);
    v16[0] = a2;
    v17 = 0u;
    v18 = 0u;
    v19 = 1;
    sub_1D7D2B10C();
    swift_allocObject();

    sub_1D7D2B0EC();
    __swift_project_boxed_opaque_existential_1(&v9[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router], *&v9[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router + 24]);
    sub_1D7D2981C();

LABEL_12:
  }
}

void sub_1D7BF53D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D7D2824C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D2980C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v33 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if ((sub_1D7BF58C8(Strong) & 1) == 0)
    {
LABEL_15:

      return;
    }

    v34 = v4;
    v35 = a2;
    v36 = v9;
    sub_1D7D2849C();
    sub_1D7D2847C();
    type metadata accessor for SubscribeActionHandler(0);
    sub_1D7BFA590(&qword_1EC9E6A10, type metadata accessor for SubscribeActionHandler, &unk_1D7D56AF4);
    sub_1D7D285AC();

    if (v37 < 0)
    {
      __break(1u);
      return;
    }

    v33 = v3;
    sub_1D7D2846C();
    sub_1D7D285AC();

    sub_1D7D297FC();

    v19 = v36;
    (*(v36 + 16))(v12, v16, v8);
    v20 = (*(v19 + 88))(v12, v8);
    if (v20 == *MEMORY[0x1E69B6B70])
    {
      v21 = &v18[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_actionModel];
      swift_beginAccess();
      if ((v21[*(type metadata accessor for SubscribeActionModel(0) + 40)] & 1) == 0)
      {
        __swift_project_boxed_opaque_existential_1(&v18[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_postPurchaseOnboardingManager], *&v18[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_postPurchaseOnboardingManager + 24]);
        *(swift_allocObject() + 16) = v18;
        v22 = v18;
        sub_1D7D2990C();
      }
    }

    else if (v20 == *MEMORY[0x1E69B6B78])
    {
      (*(v19 + 96))(v12, v8);
      v23 = v33;
      v24 = v34;
      (*(v34 + 32))(v7, v12, v33);
      __swift_project_boxed_opaque_existential_1(&v18[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_urlHandler], *&v18[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_urlHandler + 24]);
      sub_1D7D2A67C();
      v25 = &v18[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_actionModel];
      swift_beginAccess();
      v26 = *v25;
      if (*v25 != 1)
      {
        LODWORD(v35) = v25[8];
        v27 = *&v18[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_tracker + 24];
        v28 = *&v18[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_tracker + 32];
        __swift_project_boxed_opaque_existential_1(&v18[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_tracker], v27);
        v29 = *(v28 + 16);
        swift_unknownObjectRetain();
        v30 = v29(v27, v28);
        if (v30)
        {
          sub_1D7BF4968(v26, MEMORY[0x1E69E7CC0], v30);
        }

        sub_1D7BFA3E0(v26, v35, v31);
        v19 = v36;
        v23 = v33;
        v24 = v34;
      }

      (*(v24 + 8))(v7, v23);
      (*(v19 + 8))(v16, v8);
      goto LABEL_14;
    }

    v32 = *(v19 + 8);
    v32(v16, v8);
    v32(v12, v8);
LABEL_14:
    v18[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_postPurchaseRoutingInProgress] = 0;
    goto LABEL_15;
  }
}

uint64_t sub_1D7BF58C8(uint64_t a1)
{
  swift_getObjectType();
  v1 = sub_1D7D295DC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7999180(0, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v25[-v8];
  v10 = sub_1D7D299EC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7D284AC();
  sub_1D7BFA590(&qword_1EC9E6A10, type metadata accessor for SubscribeActionHandler, &unk_1D7D56AF4);
  sub_1D7D285AC();

  if (v25[15])
  {
    v15 = 1;
  }

  else
  {
    swift_getObjectType();
    (*(v2 + 104))(v5, *MEMORY[0x1E69B6A98], v1);
    sub_1D7D2969C();
    (*(v2 + 8))(v5, v1);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1D7BFA530(v9, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720], sub_1D7999180);
      v15 = 0;
    }

    else
    {
      (*(v11 + 32))(v14, v9, v10);
      v15 = sub_1D7D2999C();
      if (qword_1EE0CAF08 != -1)
      {
        swift_once();
      }

      v16 = qword_1EE0CAF10;
      sub_1D79F3AB0(0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1D7D3B4E0;
      v18 = sub_1D79D6AE0();
      v19 = 0x6F6C6C6120746F6ELL;
      if (v15)
      {
        v19 = 0x6465776F6C6C61;
      }

      v20 = 0xEB00000000646577;
      if (v15)
      {
        v20 = 0xE700000000000000;
      }

      *(v17 + 56) = MEMORY[0x1E69E6158];
      *(v17 + 64) = v18;
      v21 = MEMORY[0x1E69E6370];
      *(v17 + 32) = v19;
      *(v17 + 40) = v20;
      v22 = MEMORY[0x1E69E63A8];
      *(v17 + 96) = v21;
      *(v17 + 104) = v22;
      *(v17 + 72) = v15 & 1;
      v23 = sub_1D7D30C6C();
      sub_1D7D29AAC("The post purchase onboarding flow was %@ because bestOffer.trialEligible() = %d", 79, 2, &dword_1D7987000, v16, v23, v17);

      (*(v11 + 8))(v14, v10);
    }
  }

  return v15 & 1;
}

void sub_1D7BF5D0C(unint64_t a1, uint64_t a2)
{
  v4 = a2 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_actionModel;
  swift_beginAccess();
  v5 = *v4;
  if (*v4 != 1)
  {
    v6 = *(v4 + 8);
    v7 = *(a2 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_tracker + 24);
    v8 = *(a2 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_tracker + 32);
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_tracker), v7);
    v9 = *(v8 + 16);
    swift_unknownObjectRetain();
    v10 = v9(v7, v8);
    if (v10)
    {
      sub_1D7BF4968(v5, a1, v10);
      sub_1D7BFA3E0(v5, v6, v12);
    }

    else
    {
      sub_1D7BFA3E0(v5, v6, v11);
    }
  }
}

void sub_1D7BF5E08(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(swift_allocObject() + 16) = Strong;
    v3 = v2;
    sub_1D7D28B6C();

    v3[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_postPurchaseRoutingInProgress] = 0;
  }
}

void sub_1D7BF5EB0(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  sub_1D7D28B6C();

  v2[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_postPurchaseRoutingInProgress] = 0;
}

void sub_1D7BF5F28(void *a1, char *a2)
{
  v4 = sub_1D7D2824C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v17 - v12;
  v14 = [a1 postPurchaseURL];
  if (v14)
  {
    v15 = v14;
    sub_1D7D281EC();

    (*(v5 + 32))(v13, v8, v4);
    __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_urlHandler], *&a2[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_urlHandler + 24]);
    sub_1D7D2A67C();
    (*(v5 + 8))(v13, v4);
  }

  else
  {
    *(swift_allocObject() + 16) = a2;
    v16 = a2;
    sub_1D7D28B6C();
  }

  a2[OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_postPurchaseRoutingInProgress] = 0;
}

uint64_t sub_1D7BF6204(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1D7BF624C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D7BF62A0(void *a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4, void (**a5)(id, void))
{
  v398 = a3;
  v393 = sub_1D7D299EC();
  v392 = *(v393 - 8);
  MEMORY[0x1EEE9AC00](v393, v9);
  v359 = &v325 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v361 = &v325 - v13;
  v382 = sub_1D7D2986C();
  v381 = *(v382 - 8);
  MEMORY[0x1EEE9AC00](v382, v14);
  v383 = &v325 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69E6720];
  sub_1D7999180(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v380 = &v325 - v19;
  sub_1D7999180(0, &unk_1EE0CBE90, MEMORY[0x1E69B6B80], v16);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v379 = &v325 - v22;
  v377 = sub_1D7D2973C();
  v376 = *(v377 - 8);
  MEMORY[0x1EEE9AC00](v377, v23);
  v378 = &v325 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v389 = sub_1D7D298AC();
  v387 = *(v389 - 8);
  MEMORY[0x1EEE9AC00](v389, v25);
  v369 = &v325 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v360 = &v325 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v384 = &v325 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v325 - v35;
  v375 = type metadata accessor for SubscribeActionModel(0);
  MEMORY[0x1EEE9AC00](v375, v37);
  v370 = (&v325 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39, v40);
  v367 = (&v325 - v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v325 - v44;
  v386 = sub_1D7D2963C();
  v385 = *(v386 - 8);
  MEMORY[0x1EEE9AC00](v386, v46);
  v366 = &v325 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v49);
  v374 = &v325 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v373 = (&v325 - v53);
  v365 = v54;
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v325 - v57;
  sub_1D7999180(0, &qword_1EC9E69F8, MEMORY[0x1E69B6AB8], v16);
  MEMORY[0x1EEE9AC00](v59 - 8, v60);
  v372 = &v325 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62, v63);
  v371 = (&v325 - v64);
  MEMORY[0x1EEE9AC00](v65, v66);
  v388 = &v325 - v67;
  v391 = sub_1D7D295DC();
  v68 = *(v391 - 8);
  MEMORY[0x1EEE9AC00](v391, v69);
  v394 = &v325 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7999180(0, &qword_1EC9E6A00, MEMORY[0x1E69B6AA0], v16);
  MEMORY[0x1EEE9AC00](v71 - 8, v72);
  v390 = &v325 - v73;
  sub_1D7999180(0, &qword_1EE0C0188, MEMORY[0x1E69B6C30], v16);
  v363 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74 - 8, v75);
  v368 = &v325 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77, v78);
  v80 = &v325 - v79;
  MEMORY[0x1EEE9AC00](v81, v82);
  v364 = &v325 - v83;
  MEMORY[0x1EEE9AC00](v84, v85);
  v87 = &v325 - v86;
  MEMORY[0x1EEE9AC00](v88, v89);
  v396 = &v325 - v90;
  v362 = v91;
  MEMORY[0x1EEE9AC00](v92, v93);
  v395 = &v325 - v94;
  v399 = swift_allocObject();
  *(v399 + 16) = a5;
  v397 = a5;
  _Block_copy(a5);
  v95 = sub_1D7BF1450(a2, v398, a4);
  v97 = a4 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_headline;
  if (!*(a4 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_headline + 8) || *(v97 + 24) == 1)
  {

    v397[2](v397, 0);

    goto LABEL_5;
  }

  v355 = v87;
  v349 = *(v97 + 16);
  v348 = v95;
  v343 = v80;
  v356 = v96;
  v347 = v36;
  v346 = v45;
  v345 = v58;
  v338 = a4 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_headline;
  v358 = a1;
  if (v349 == 2)
  {
    LODWORD(v350) = 0;
    v351 = 3;
  }

  else
  {
    if (v349 == 3)
    {
      LODWORD(v350) = 1;
      v98 = 2;
    }

    else
    {
      LODWORD(v350) = 0;
      v98 = 1;
    }

    v351 = v98;
  }

  v357 = a4;
  v99 = *(a4 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_offerManager);
  v100 = *(a4 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_offerManager + 8);
  ObjectType = swift_getObjectType();
  v102 = *MEMORY[0x1E69B6A90];
  v103 = v68[13];
  v104 = v390;
  v105 = v391;
  v103(v390, v102, v391);
  v106 = v68[7];
  v340 = v68 + 7;
  v339 = v106;
  v106(v104, 0, 1, v105);
  sub_1D7D2967C();
  sub_1D7BFA530(v104, &qword_1EC9E6A00, MEMORY[0x1E69B6AA0], MEMORY[0x1E69E6720], sub_1D7999180);
  v107 = v394;
  v341 = v102;
  v398 = v103;
  v103(v394, v102, v105);
  v108 = v355;
  v354 = ObjectType;
  v352 = v100;
  sub_1D7D2969C();
  v109 = (v68 + 1);
  v353 = v68[1];
  v353(v107, v105);
  v110 = v392;
  v111 = (v392 + 6);
  v112 = v392[6];
  v113 = v393;
  v114 = v112(v108, 1, v393);
  v342 = v68 + 13;
  v344 = v112;
  if (v114 == 1)
  {
    v398(v107, *MEMORY[0x1E69B6A98], v105);
    sub_1D7D2969C();
    v353(v107, v105);
    v115 = v112(v108, 1, v113);
    v116 = v107;
    v117 = v398;
    if (v115 != 1)
    {
      sub_1D7BFA530(v108, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720], sub_1D7999180);
    }
  }

  else
  {
    v118 = v396;
    (v110[4])(v396, v108, v113);
    (v110[7])(v118, 0, 1, v113);
    v116 = v107;
    v117 = v398;
  }

  v119 = [v358 controller];
  if (!v119)
  {
    goto LABEL_35;
  }

  v120 = v119;
  v355 = v109;
  v121 = [*(v357 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_configurationManager) configuration];
  if (!v121)
  {
    goto LABEL_183;
  }

  v122 = v121;
  if (([v121 respondsToSelector_] & 1) == 0)
  {

    swift_unknownObjectRelease();
LABEL_35:

    v397[2](v397, 0);
LABEL_36:
    v152 = MEMORY[0x1E69B6C30];
    v153 = MEMORY[0x1E69E6720];
    sub_1D7BFA530(v396, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720], sub_1D7999180);
    v154 = v395;
LABEL_37:
    v155 = v152;
    v156 = v153;
LABEL_38:
    sub_1D7BFA530(v154, &qword_1EE0C0188, v155, v156, sub_1D7999180);
LABEL_5:

    return;
  }

  v123 = [v122 paidBundleConfig];
  swift_unknownObjectRelease();
  v124 = v395;
  v125 = v396;
  v126 = sub_1D7BF16D8(v396, v123, v395);
  if (!v126)
  {

    v397[2](v397, 0);

    v152 = MEMORY[0x1E69B6C30];
    v153 = MEMORY[0x1E69E6720];
    sub_1D7BFA530(v125, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720], sub_1D7999180);
    v154 = v124;
    goto LABEL_37;
  }

  v127 = v126;
  v337 = v120;
  v128 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v129 = [v128 initWithUnsignedInteger_];
  v130 = sub_1D7D03678(v129, v127);

  if (!v130)
  {

    v397[2](v397, 0);

    goto LABEL_36;
  }

  v334 = v99;
  v336 = v123;
  swift_unknownObjectWeakAssign();
  sub_1D7D2849C();
  sub_1D7D2848C();
  v131 = type metadata accessor for SubscribeActionHandler(0);
  sub_1D7BFA590(&qword_1EC9E6A10, type metadata accessor for SubscribeActionHandler, &unk_1D7D56AF4);
  v335 = v131;
  sub_1D7D285AC();

  v132 = v400;
  if ((v400 & 0x8000000000000000) == 0)
  {
    v133 = v388;
    v134 = v386;
    v135 = v385;
    v136 = v389;
    if (!v400)
    {
      v132 = [v130 targetType];
    }

    v358 = *(v135 + 56);
    (v358)(v133, 1, 1, v134);
    v351 = v130;
    if (!v350)
    {
LABEL_56:
      if (v132 <= 1)
      {
        if (!v132)
        {

          v190 = v133;
          v191 = sub_1D7D30C3C();
          sub_1D7992EFC(0, &qword_1EE0BEC80, 0x1E69E9BF8);
          v192 = sub_1D7D312CC();
          sub_1D7D29AAC("SubscriptionActionHandler: Unknown subscription button target type.", 67, 2, &dword_1D7987000, v192, v191, MEMORY[0x1E69E7CC0]);

          v193 = MEMORY[0x1E69B6AB8];
          v194 = MEMORY[0x1E69E6720];
          v195 = v190;
LABEL_125:
          sub_1D7BFA530(v195, &qword_1EC9E69F8, v193, v194, sub_1D7999180);
          v245 = MEMORY[0x1E69B6C30];
          sub_1D7BFA530(v396, &qword_1EE0C0188, MEMORY[0x1E69B6C30], v194, sub_1D7999180);
          v154 = v395;
          v155 = v245;
          v156 = v194;
          goto LABEL_38;
        }

        if (v132 == 1)
        {

          v172 = [v130 landingPageArticleID];
          if (v172)
          {
            v173 = v172;
            sub_1D7D3034C();

            sub_1D799CC84(v357 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router, &v400);
            __swift_project_boxed_opaque_existential_1(&v400, *(&v401 + 1));
            swift_beginAccess();
            if (*(v338 + 8))
            {
            }

            sub_1D7D2984C();

            v217 = MEMORY[0x1E69E6720];
            sub_1D7BFA530(v388, &qword_1EC9E69F8, MEMORY[0x1E69B6AB8], MEMORY[0x1E69E6720], sub_1D7999180);
            v218 = MEMORY[0x1E69B6C30];
            sub_1D7BFA530(v396, &qword_1EE0C0188, MEMORY[0x1E69B6C30], v217, sub_1D7999180);
            sub_1D7BFA530(v395, &qword_1EE0C0188, v218, v217, sub_1D7999180);
            __swift_destroy_boxed_opaque_existential_1(&v400);
            goto LABEL_5;
          }

          goto LABEL_89;
        }

LABEL_74:

LABEL_89:
        v193 = MEMORY[0x1E69B6AB8];
        v195 = v133;
        v194 = MEMORY[0x1E69E6720];
        goto LABEL_125;
      }

      if (v132 != 2)
      {
        if (v132 != 3)
        {
          goto LABEL_74;
        }

        v174 = v133;
        v175 = v372;
        sub_1D7BFA4B0(v174, v372, &qword_1EC9E69F8, MEMORY[0x1E69B6AB8]);
        v177 = (v135 + 48);
        v176 = *(v135 + 48);
        v178 = v176(v175, 1, v134);
        v325 = v111;
        if (v178 != 1)
        {

          (*(v135 + 32))(v374, v175, v134);
          goto LABEL_115;
        }

        v373 = v176;
        v179 = OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_actionModel;
        v180 = v357;
        swift_beginAccess();
        v181 = v180 + v179;
        v182 = v370;
        sub_1D7BF9CBC(v181, v370);
        v183 = MEMORY[0x1E69B6BC0];
        v184 = MEMORY[0x1E69B6BC8];
        if (v349 != 2)
        {
          v184 = MEMORY[0x1E69B6BD0];
        }

        if (v349 != 3)
        {
          v183 = v184;
        }

        v185 = *v183;
        v186 = v369;
        v371 = *(v387 + 104);
        v371(v369, v185, v136);
        v187 = v182[4];
        v188 = sub_1D7D306AC();
        v367 = v187;
        if (v188)
        {
          if (sub_1D7D306CC())
          {
            sub_1D7D306BC();
          }

          if (sub_1D7D306CC())
          {
            (*(v387 + 8))(v186, v136);
            v189 = MEMORY[0x1E69B6BB8];
          }

          else
          {
            if ((sub_1D7D306BC() & 1) == 0)
            {
              goto LABEL_110;
            }

            (*(v387 + 8))(v186, v136);
            v189 = MEMORY[0x1E69B6BD8];
          }
        }

        else if (sub_1D7D306BC())
        {
          sub_1D7BF4694(v182);
          v214 = v213;
          (*(v387 + 8))(v186, v136);
          if (v214 >= 0xF)
          {
            v189 = MEMORY[0x1E69B6BD0];
          }

          else
          {
            v189 = qword_1E84EAC68[v214];
          }

          v182 = v370;
        }

        else
        {
          if ((sub_1D7D306CC() & 1) == 0)
          {
            goto LABEL_110;
          }

          (*(v387 + 8))(v186, v136);
          v219 = v182[7];
          if (v219 >= 3)
          {
            v189 = MEMORY[0x1E69B6BD0];
          }

          else
          {
            v189 = qword_1E84EACE0[v219];
          }
        }

        v371(v186, *v189, v136);
LABEL_110:
        v371 = v177;
        v221 = v186;
        v360 = sub_1D7BF4838(v348, v356, v357);
        v358 = v222;

        v223 = v182[6];
        v356 = v182[5];
        v350 = v223;
        v224 = v182[3];
        if (v224)
        {
          v348 = v182[2];
          v347 = v224;
        }

        else
        {
          v348 = 0;
          v347 = 0xE000000000000000;
        }

        v225 = v387;
        (*(v387 + 16))(v384, v221, v136);
        (*(v376 + 104))(v378, *MEMORY[0x1E69B6B20], v377);
        sub_1D7BFA4B0(v182 + *(v375 + 36), v379, &unk_1EE0CBE90, MEMORY[0x1E69B6B80]);
        v226 = sub_1D7D2824C();
        (*(*(v226 - 8) + 56))(v380, 1, 1, v226);
        (*(v381 + 104))(v383, *MEMORY[0x1E69B6B98], v382);

        sub_1D7D2961C();
        (*(v225 + 8))(v369, v389);
        sub_1D7BF9D20(v370);
        v227 = v372;
        v228 = v373(v372, 1, v134);
        v135 = v385;
        v130 = v351;
        if (v228 != 1)
        {
          sub_1D7BFA530(v227, &qword_1EC9E69F8, MEMORY[0x1E69B6AB8], MEMORY[0x1E69E6720], sub_1D7999180);
        }

LABEL_115:
        v229 = v343;
        sub_1D7BFA4B0(v396, v343, &qword_1EE0C0188, MEMORY[0x1E69B6C30]);
        if (v344(v229, 1, v393) == 1)
        {
          sub_1D7BFA530(v229, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720], sub_1D7999180);
        }

        else
        {
          v235 = v361;
          (v392[4])();
          if (sub_1D7D2997C() & 1) != 0 || (sub_1D7D2995C())
          {
            v236 = v135;
            v237 = *(v357 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router + 24);
            v398 = *(v357 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router + 32);
            __swift_project_boxed_opaque_existential_1((v357 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router), v237);
            v238 = sub_1D7D2998C();
            sub_1D7D299DC();
            v239 = v374;
            sub_1D7D2983C();

            v353(v116, v391);
            (v392[1])(v235, v393);
            (*(v236 + 8))(v239, v134);
            goto LABEL_124;
          }

          (v392[1])(v235, v393);
        }

        v230 = v390;
        v231 = v391;
        v117(v390, v341, v391);
        v339(v230, 0, 1, v231);
        v232 = v368;
        sub_1D7D2967C();
        sub_1D7BFA530(v230, &qword_1EC9E6A00, MEMORY[0x1E69B6AA0], MEMORY[0x1E69E6720], sub_1D7999180);
        v233 = v393;
        if (v344(v232, 1, v393) == 1)
        {
          sub_1D7BFA530(v232, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720], sub_1D7999180);
          v234 = [*(v357 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_bundleSubscriptionManager) cachedSubscription];
          if (objc_getAssociatedObject(v234, v234 + 1))
          {
            sub_1D7D3138C();
            swift_unknownObjectRelease();
          }

          else
          {
            v403 = 0u;
            v404 = 0u;
          }

          v246 = v351;
          v400 = v403;
          v401 = v404;
          v247 = MEMORY[0x1E69E7CA0];
          if (*(&v404 + 1))
          {
            sub_1D7992EFC(0, &qword_1EE0BECA0, 0x1E696AD98);
            if (swift_dynamicCast())
            {
              v248 = v402;
              v249 = [v402 integerValue];
              if (v249 == -1)
              {

                v254 = v396;
                goto LABEL_179;
              }

              v250 = v249;
LABEL_134:
              if (objc_getAssociatedObject(v234, ~v250))
              {
                sub_1D7D3138C();
                v134 = v386;
                swift_unknownObjectRelease();
              }

              else
              {
                v403 = 0u;
                v404 = 0u;
              }

              v400 = v403;
              v401 = v404;
              if (*(&v404 + 1))
              {
                sub_1D7992EFC(0, &qword_1EE0BECA0, 0x1E696AD98);
                if (swift_dynamicCast())
                {
                  v251 = v402;
                  v252 = [v251 integerValue];

                  v134 = v386;
                  v253 = v252 ^ v250;
                  v254 = v396;
                  v255 = v357;
                  if (v253)
                  {
                    goto LABEL_179;
                  }

LABEL_143:
                  v256 = sub_1D7BF1140();
                  v257 = v337;
                  [v337 presentViewController:v256 animated:1 completion:0];

                  __swift_project_boxed_opaque_existential_1((v255 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_postPurchaseOnboardingManager), *(v255 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_postPurchaseOnboardingManager + 24));
                  v258 = sub_1D7D2991C();
                  if (v259)
                  {
                    __swift_project_boxed_opaque_existential_1((v255 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_onboardingPrewarmer), *(v255 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_onboardingPrewarmer + 24));
                    v134 = v386;
                    sub_1D7D2992C();
                  }

                  MEMORY[0x1EEE9AC00](v258, v259);
                  v397 = sub_1D7D294BC();
                  v260 = v385;
                  v261 = v366;
                  (*(v385 + 16))(v366, v374, v134);
                  v398 = MEMORY[0x1E69B6C30];
                  v262 = v364;
                  sub_1D7BFA4B0(v254, v364, &qword_1EE0C0188, MEMORY[0x1E69B6C30]);
                  v263 = (*(v260 + 80) + 16) & ~*(v260 + 80);
                  v264 = (v365 + *(v363 + 80) + v263) & ~*(v363 + 80);
                  v265 = (v362 + v264 + 7) & 0xFFFFFFFFFFFFFFF8;
                  v266 = swift_allocObject();
                  (*(v260 + 32))(v266 + v263, v261, v134);
                  sub_1D7BF9D98(v262, v266 + v264);
                  *(v266 + v265) = v257;
                  v267 = v257;
                  v268 = sub_1D7D2934C();
                  sub_1D7992EFC(0, &qword_1EC9E6A18, 0x1E69B5220);
                  v394 = sub_1D7D293BC();

                  sub_1D7992EFC(0, &qword_1EE0BEFF0, 0x1E69E9610);
                  v269 = sub_1D7D30E1C();
                  v270 = swift_allocObject();
                  v271 = v399;
                  v270[2] = sub_1D79F3B18;
                  v270[3] = v271;
                  v272 = v349;
                  v270[4] = v349;
                  v270[5] = v267;
                  v273 = v351;
                  v270[6] = v351;
                  v274 = v267;

                  v397 = v273;
                  v393 = sub_1D7D293CC();

                  v275 = sub_1D7D30E1C();
                  v276 = swift_allocObject();
                  v276[2] = sub_1D79F3B18;
                  v276[3] = v271;
                  v276[4] = v272;
                  v276[5] = v274;
                  v277 = v274;

                  sub_1D7D293EC();

                  (*(v385 + 8))(v374, v386);
                  v278 = MEMORY[0x1E69E6720];
                  sub_1D7BFA530(v388, &qword_1EC9E69F8, MEMORY[0x1E69B6AB8], MEMORY[0x1E69E6720], sub_1D7999180);
                  v279 = v398;
                  sub_1D7BFA530(v396, &qword_1EE0C0188, v398, v278, sub_1D7999180);
                  sub_1D7BFA530(v395, &qword_1EE0C0188, v279, v278, sub_1D7999180);
                  goto LABEL_5;
                }
              }

              else
              {
                sub_1D7BFA530(&v400, &qword_1EE0BE7A0, v247 + 8, MEMORY[0x1E69E6720], sub_1D7BFA678);
              }

              v254 = v396;
              v255 = v357;
              if ((v250 & 1) == 0)
              {
                goto LABEL_143;
              }

LABEL_179:
              v397[2](v397, 0);

              (*(v385 + 8))(v374, v134);
              v323 = MEMORY[0x1E69E6720];
              sub_1D7BFA530(v388, &qword_1EC9E69F8, MEMORY[0x1E69B6AB8], MEMORY[0x1E69E6720], sub_1D7999180);
              v324 = MEMORY[0x1E69B6C30];
              sub_1D7BFA530(v254, &qword_1EE0C0188, MEMORY[0x1E69B6C30], v323, sub_1D7999180);
              sub_1D7BFA530(v395, &qword_1EE0C0188, v324, v323, sub_1D7999180);
              goto LABEL_5;
            }
          }

          else
          {
            sub_1D7BFA530(&v400, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D7BFA678);
          }

          v248 = 0;
          v250 = 0;
          goto LABEL_134;
        }

        v240 = v392;
        v241 = v359;
        (v392[4])(v359, v232, v233);
        v242 = *(v357 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router + 24);
        v398 = *(v357 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router + 32);
        __swift_project_boxed_opaque_existential_1((v357 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_router), v242);
        v243 = v231;
        v244 = sub_1D7D2998C();
        sub_1D7D299DC();
        sub_1D7D2983C();

        v353(v116, v243);
        (v240[1])(v241, v233);
        (*(v385 + 8))(v374, v134);
LABEL_124:
        v193 = MEMORY[0x1E69B6AB8];
        v194 = MEMORY[0x1E69E6720];
        v195 = v388;
        goto LABEL_125;
      }

      v196 = v133;
      v197 = v133;
      v198 = v371;
      sub_1D7BFA4B0(v197, v371, &qword_1EC9E69F8, MEMORY[0x1E69B6AB8]);
      v200 = (v135 + 48);
      v199 = *(v135 + 48);
      if ((v199)(v198, 1, v134) != 1)
      {

        v211 = *(v135 + 32);
        v212 = v373;
        v211(v373, v198, v134);
        goto LABEL_154;
      }

      v398 = v199;
      v201 = OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_actionModel;
      v202 = v357;
      swift_beginAccess();
      v203 = v202 + v201;
      v204 = v367;
      sub_1D7BF9CBC(v203, v367);
      v205 = MEMORY[0x1E69B6BC0];
      v206 = MEMORY[0x1E69B6BC8];
      if (v349 != 2)
      {
        v206 = MEMORY[0x1E69B6BD0];
      }

      if (v349 != 3)
      {
        v205 = v206;
      }

      v207 = *(v387 + 104);
      v208 = v360;
      v207(v360, *v205, v136);
      v209 = v204[4];
      if (sub_1D7D306AC())
      {
        if (sub_1D7D306CC())
        {
          sub_1D7D306BC();
        }

        if (sub_1D7D306CC())
        {
          (*(v387 + 8))(v208, v136);
          v210 = MEMORY[0x1E69B6BB8];
        }

        else
        {
          if ((sub_1D7D306BC() & 1) == 0)
          {
            goto LABEL_149;
          }

          (*(v387 + 8))(v208, v136);
          v210 = MEMORY[0x1E69B6BD8];
        }
      }

      else if (sub_1D7D306BC())
      {
        sub_1D7BF4694(v204);
        v216 = v215;
        (*(v387 + 8))(v208, v136);
        if (v216 >= 0xF)
        {
          v210 = MEMORY[0x1E69B6BD0];
        }

        else
        {
          v210 = qword_1E84EAC68[v216];
        }

        v204 = v367;
      }

      else
      {
        if ((sub_1D7D306CC() & 1) == 0)
        {
          goto LABEL_149;
        }

        (*(v387 + 8))(v208, v136);
        v220 = v204[7];
        if (v220 >= 3)
        {
          v210 = MEMORY[0x1E69B6BD0];
        }

        else
        {
          v210 = qword_1E84EACE0[v220];
        }
      }

      v207(v208, *v210, v136);
LABEL_149:
      v280 = sub_1D7BF4838(v348, v356, v357);
      v282 = v281;

      v283 = v204[5];
      v284 = v204[6];
      v285 = v204[3];
      v394 = v200;
      v393 = v209;
      v392 = v280;
      v391 = v282;
      v390 = v283;
      v374 = v284;
      if (v285)
      {
        v372 = v204[2];
        v370 = v285;
      }

      else
      {
        v372 = 0;
        v370 = 0xE000000000000000;
      }

      v286 = v387;
      (*(v387 + 16))(v384, v208, v136);
      (*(v376 + 104))(v378, *MEMORY[0x1E69B6B20], v377);
      sub_1D7BFA4B0(v204 + *(v375 + 36), v379, &unk_1EE0CBE90, MEMORY[0x1E69B6B80]);
      v287 = sub_1D7D2824C();
      (*(*(v287 - 8) + 56))(v380, 1, 1, v287);
      (*(v381 + 104))(v383, *MEMORY[0x1E69B6B98], v382);

      v212 = v373;
      sub_1D7D2961C();
      (*(v286 + 8))(v208, v389);
      sub_1D7BF9D20(v204);
      v288 = v371;
      v134 = v386;
      v289 = (v398)(v371, 1, v386);
      v196 = v388;
      v130 = v351;
      if (v289 != 1)
      {
        sub_1D7BFA530(v288, &qword_1EC9E69F8, MEMORY[0x1E69B6AB8], MEMORY[0x1E69E6720], sub_1D7999180);
      }

LABEL_154:
      v290 = [*(v357 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_bundleSubscriptionManager) cachedSubscription];
      if (objc_getAssociatedObject(v290, v290 + 1))
      {
        sub_1D7D3138C();
        swift_unknownObjectRelease();
      }

      else
      {
        v403 = 0u;
        v404 = 0u;
      }

      v400 = v403;
      v401 = v404;
      if (*(&v404 + 1))
      {
        sub_1D7992EFC(0, &qword_1EE0BECA0, 0x1E696AD98);
        if (swift_dynamicCast())
        {
          v291 = v402;
          v292 = [v402 integerValue];
          if (v292 == -1)
          {

            goto LABEL_176;
          }

          v293 = v292;
LABEL_163:
          if (objc_getAssociatedObject(v290, ~v293))
          {
            sub_1D7D3138C();
            v134 = v386;
            swift_unknownObjectRelease();
          }

          else
          {
            v403 = 0u;
            v404 = 0u;
          }

          v400 = v403;
          v401 = v404;
          if (*(&v404 + 1))
          {
            sub_1D7992EFC(0, &qword_1EE0BECA0, 0x1E696AD98);
            if (swift_dynamicCast())
            {
              v294 = v402;
              v295 = [v294 integerValue];

              v134 = v386;
              v296 = v295 ^ v293;
              v212 = v373;
              v297 = v357;
              if (v296)
              {
                goto LABEL_176;
              }

LABEL_172:
              v298 = sub_1D7BF1140();
              v299 = v337;
              [v337 presentViewController:v298 animated:1 completion:0];

              __swift_project_boxed_opaque_existential_1((v297 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_postPurchaseOnboardingManager), *(v297 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_postPurchaseOnboardingManager + 24));
              v300 = sub_1D7D2991C();
              if (v301)
              {
                __swift_project_boxed_opaque_existential_1((v297 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_onboardingPrewarmer), *(v297 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_onboardingPrewarmer + 24));
                v134 = v386;
                sub_1D7D2992C();
              }

              MEMORY[0x1EEE9AC00](v300, v301);
              sub_1D7D294BC();
              v302 = v385;
              v303 = v366;
              (*(v385 + 16))(v366, v212, v134);
              v304 = v364;
              sub_1D7BFA4B0(v396, v364, &qword_1EE0C0188, MEMORY[0x1E69B6C30]);
              v305 = (*(v302 + 80) + 16) & ~*(v302 + 80);
              v306 = (v365 + *(v363 + 80) + v305) & ~*(v363 + 80);
              v307 = (v362 + v306 + 7) & 0xFFFFFFFFFFFFFFF8;
              v308 = swift_allocObject();
              (*(v302 + 32))(v308 + v305, v303, v386);
              sub_1D7BF9D98(v304, v308 + v306);
              *(v308 + v307) = v299;
              v309 = v299;
              v310 = sub_1D7D2934C();
              sub_1D7992EFC(0, &qword_1EC9E6A18, 0x1E69B5220);
              v397 = sub_1D7D293BC();

              sub_1D7992EFC(0, &qword_1EE0BEFF0, 0x1E69E9610);
              v311 = sub_1D7D30E1C();
              v312 = swift_allocObject();
              v313 = v399;
              v312[2] = sub_1D79F3B18;
              v312[3] = v313;
              v314 = v349;
              v312[4] = v349;
              v312[5] = v309;
              v315 = v351;
              v312[6] = v351;
              v316 = v309;

              v398 = v315;
              v394 = sub_1D7D293CC();

              v317 = sub_1D7D30E1C();
              v318 = swift_allocObject();
              v318[2] = sub_1D79F3B18;
              v318[3] = v313;
              v318[4] = v314;
              v318[5] = v316;
              v319 = v316;

              sub_1D7D293EC();

              v212 = v373;

              v134 = v386;

              v320 = v388;
              goto LABEL_177;
            }
          }

          else
          {
            sub_1D7BFA530(&v400, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D7BFA678);
          }

          v297 = v357;
          if ((v293 & 1) == 0)
          {
            goto LABEL_172;
          }

LABEL_176:
          v397[2](v397, 0);

          v302 = v385;
          v320 = v196;
LABEL_177:

          (*(v302 + 8))(v212, v134);
          v321 = MEMORY[0x1E69E6720];
          sub_1D7BFA530(v320, &qword_1EC9E69F8, MEMORY[0x1E69B6AB8], MEMORY[0x1E69E6720], sub_1D7999180);
          v322 = MEMORY[0x1E69B6C30];
          sub_1D7BFA530(v396, &qword_1EE0C0188, MEMORY[0x1E69B6C30], v321, sub_1D7999180);
          sub_1D7BFA530(v395, &qword_1EE0C0188, v322, v321, sub_1D7999180);
          goto LABEL_5;
        }
      }

      else
      {
        sub_1D7BFA530(&v400, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D7BFA678);
      }

      v291 = 0;
      v293 = 0;
      goto LABEL_163;
    }

    v333 = v135 + 56;
    v350 = v132;
    v137 = v357;
    v138 = v136;
    v139 = sub_1D7BF1A68(v395, v396, v357);
    v140 = OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_actionModel;
    swift_beginAccess();
    v141 = v346;
    sub_1D7BF9CBC(v137 + v140, v346);
    v142 = MEMORY[0x1E69B6BC0];
    v143 = MEMORY[0x1E69B6BC8];
    if (v349 != 2)
    {
      v143 = MEMORY[0x1E69B6BD0];
    }

    if (v349 != 3)
    {
      v142 = v143;
    }

    v144 = *v142;
    v145 = v347;
    v330 = *(v387 + 104);
    v330(v347, v144, v138);
    v146 = v141;
    v147 = *(v141 + 32);
    v148 = sub_1D7D306AC();
    v149 = v348;
    v332 = v147;
    if (v148)
    {
      if (sub_1D7D306CC())
      {
        sub_1D7D306BC();
      }

      if (sub_1D7D306CC())
      {
        v150 = v389;
        (*(v387 + 8))(v145, v389);
        v151 = MEMORY[0x1E69B6BB8];
LABEL_51:
        v330(v145, *v151, v150);
        goto LABEL_52;
      }

      if (sub_1D7D306BC())
      {
        v150 = v389;
        (*(v387 + 8))(v145, v389);
        v151 = MEMORY[0x1E69B6BD8];
        goto LABEL_51;
      }

LABEL_52:
      v160 = sub_1D7BF4838(v149, v356, v357);
      v161 = v146[5];
      v162 = v146[3];
      v331 = v139;
      v330 = v163;
      v329 = v161;
      v328 = v160;
      if (v162)
      {
        v327 = v146[2];
        v326 = v162;
      }

      else
      {
        v327 = 0;
        v326 = 0xE000000000000000;
      }

      v164 = v146;
      (*(v387 + 16))(v384, v145, v389);
      (*(v376 + 104))(v378, *MEMORY[0x1E69B6B20], v377);
      sub_1D7BFA4B0(v146 + *(v375 + 36), v379, &unk_1EE0CBE90, MEMORY[0x1E69B6B80]);
      v165 = sub_1D7D2824C();
      (*(*(v165 - 8) + 56))(v380, 1, 1, v165);
      (*(v381 + 104))(v383, *MEMORY[0x1E69B6B98], v382);

      v136 = v389;
      v166 = v345;
      sub_1D7D2961C();
      (*(v387 + 8))(v145, v136);
      v167 = v388;
      sub_1D7BFA530(v388, &qword_1EC9E69F8, MEMORY[0x1E69B6AB8], MEMORY[0x1E69E6720], sub_1D7999180);
      sub_1D7BF9D20(v164);
      v135 = v385;
      v134 = v386;
      (*(v385 + 16))(v167, v166, v386);
      (v358)(v167, 0, 1, v134);
      v168 = *(v357 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_tracker + 24);
      v169 = *(v357 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_tracker + 32);
      __swift_project_boxed_opaque_existential_1((v357 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_tracker), v168);
      v170 = v350;
      v171 = v168;
      v133 = v388;
      (*(v169 + 8))(v350, v166, v171, v169);
      v132 = v170;
      (*(v135 + 8))(v166, v134);
      v130 = v351;
      v116 = v394;
      v117 = v398;
      goto LABEL_56;
    }

    if (sub_1D7D306BC())
    {
      sub_1D7BF4694(v146);
      v158 = v157;
      (*(v387 + 8))(v145, v389);
      if (v158 < 0xF)
      {
        v151 = qword_1E84EAC68[v158];
LABEL_50:
        v150 = v389;
        goto LABEL_51;
      }
    }

    else
    {
      if ((sub_1D7D306CC() & 1) == 0)
      {
        goto LABEL_52;
      }

      (*(v387 + 8))(v145, v389);
      v159 = v146[7];
      if (v159 < 3)
      {
        v151 = qword_1E84EACE0[v159];
        goto LABEL_50;
      }
    }

    v151 = MEMORY[0x1E69B6BD0];
    goto LABEL_50;
  }

  __break(1u);
LABEL_183:
  _Block_release(v397);
  __break(1u);
}

void sub_1D7BF9C0C()
{
  if ((*(v0 + OBJC_IVAR____TtC12NewsArticles22SubscribeActionHandler_postPurchaseRoutingInProgress) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = [Strong controller];
      swift_unknownObjectRelease();
      if (v2)
      {
        [v2 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }
}

uint64_t sub_1D7BF9CBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscribeActionModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7BF9D20(uint64_t a1)
{
  v2 = type metadata accessor for SubscribeActionModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7BF9D98(uint64_t a1, uint64_t a2)
{
  sub_1D7999180(0, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_16Tm(double a1)
{
  v2 = sub_1D7D2963C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = v5 + *(v3 + 64);
  sub_1D7999180(0, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 80);
  v9 = (v6 + v8) & ~v8;
  v10 = *(*(v7 - 8) + 64);
  (*(v3 + 8))(v1 + v5, v2);
  v11 = sub_1D7D299EC();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v1 + v9, 1, v11))
  {
    (*(v12 + 8))(v1 + v9, v11);
  }

  v13 = (v10 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v1, v13 + 8, v4 | v8 | 7);
}

unint64_t *sub_1D7BFA03C(_BYTE *a1, void *a2, double a3)
{
  v6 = *(sub_1D7D2963C() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  sub_1D7999180(0, &qword_1EE0C0188, MEMORY[0x1E69B6C30], MEMORY[0x1E69E6720]);
  v10 = (v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80);
  return sub_1D7BF247C(a1, a2, v3 + v7, v3 + v10, *(v3 + ((*(*(v9 - 8) + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_19Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_22Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1D7BFA224()
{
  v1 = *(sub_1D7D296FC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1D7BF3B18(v0 + v2, v4, v5);
}

double block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1D7BFA37C()
{
  v1 = *(sub_1D7D2980C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1D7BF53D4(v2, v3);
}

double sub_1D7BFA3E4(uint64_t a1)
{
  if (a1 != 1)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t objectdestroy_88Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 24));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

uint64_t sub_1D7BFA45C(void *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = (*(v2 + 16) + *a1);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  return a2(v5, v6);
}

uint64_t sub_1D7BFA4B0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D7999180(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7BFA530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D7BFA590(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D7BFA678(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D7BFA6D4()
{
  result = qword_1EC9E6A68;
  if (!qword_1EC9E6A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6A68);
  }

  return result;
}

unint64_t sub_1D7BFA728()
{
  result = qword_1EC9E8F90;
  if (!qword_1EC9E8F90)
  {
    sub_1D7992EFC(255, &qword_1EE0BECA0, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E8F90);
  }

  return result;
}

uint64_t sub_1D7BFA790(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7BFA7E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_1D7BFA834(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1D7BFA84C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_1D7BFA914(void **a1@<X0>, BOOL *a3@<X8>)
{
  v4 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      sub_1D7BFACE8(v4, v6);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  *a3 = Strong == 0;
}

void sub_1D7BFA998(uint64_t a1, uint64_t a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_loadingStateMachine);
      if (!v3)
      {
        __break(1u);
        return;
      }

      v4 = v3;
      v5 = sub_1D7D3031C();
      v6 = [v4 fireEventWithName:v5 withContext:0];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D7BFAA84()
{
  sub_1D79C92AC(v0 + 16);
  sub_1D7BFAFF0(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1D7BFAAF8()
{
  sub_1D7992EFC(0, &qword_1EC9E5C00, 0x1E6978028);
  sub_1D7D294BC();
  sub_1D7992EFC(0, &qword_1EE0BEFF0, 0x1E69E9610);
  v0 = sub_1D7D30E1C();
  sub_1D7BFAC94();
  sub_1D7D293CC();

  v1 = sub_1D7D30E1C();
  sub_1D7D293EC();
}

void sub_1D7BFAC94()
{
  if (!qword_1EC9E4A30)
  {
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E4A30);
    }
  }
}

void sub_1D7BFACE8(void *a1, uint64_t a2)
{
  v4 = sub_1D7D2918C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C468E8(a1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    sub_1D7B23454(&unk_1F529AEF0);
    v9 = MEMORY[0x1E69D6810];
    sub_1D7BFB07C(0, &qword_1EE0BE960, MEMORY[0x1E69D6810], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D7D3B4E0;
    sub_1D7D2916C();
    sub_1D7D2917C();
    v14[1] = v10;
    sub_1D79E74F8();
    sub_1D7BFB07C(0, &unk_1EE0BF2C0, v9, MEMORY[0x1E69E62F8]);
    sub_1D79E0538();
    sub_1D7D313AC();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1D7D28C7C();

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v11 = *(a2 + OBJC_IVAR____TtC12NewsArticles24PDFReplicaViewController_loadingStateMachine);
    if (v11)
    {
      v12 = v11;
      v14[0] = sub_1D7D3031C();

      v13 = v14[0];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D7BFAFF0(uint64_t a1)
{
  sub_1D7BFB07C(0, &qword_1EC9E2220, sub_1D7BFB0E0, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7BFB07C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D7BFB0E0()
{
  result = qword_1EC9E2218;
  if (!qword_1EC9E2218)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9E2218);
  }

  return result;
}

void *sub_1D7BFB1E4(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v16 = *(a1 + 3);
  v8 = a1[5];
  v9 = a1[6];
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  sub_1D7BFB37C();
  result = sub_1D7D28D2C();
  if (v19)
  {
    sub_1D799D69C(&v17, v22);
    v11 = v23;
    v12 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    *&v17 = v5;
    *(&v17 + 1) = v6;
    v18 = v7;
    v19 = v16;
    v20 = v8;
    v21 = v9;
    v13 = (*(v12 + 8))(a2, &v17, v11, v12);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      [Strong showViewController:v13 sender:v3];
    }

    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7BFB310()
{
  MEMORY[0x1DA7103D0](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

unint64_t sub_1D7BFB37C()
{
  result = qword_1EE0CCFA0;
  if (!qword_1EE0CCFA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0CCFA0);
  }

  return result;
}

uint64_t sub_1D7BFB404(uint64_t a1, uint64_t *a2)
{
  sub_1D7BFB4DC(0);
  swift_allocObject();
  sub_1D7BFB558();

  swift_unknownObjectRetain();
  return sub_1D7D2A69C();
}

void sub_1D7BFB4DC(uint64_t a1)
{
  if (!qword_1EC9E6A78)
  {
    sub_1D7A133E8();
    sub_1D7A13440();
    v1 = sub_1D7D2A6AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E6A78);
    }
  }
}

unint64_t sub_1D7BFB558()
{
  result = qword_1EC9E6A80;
  if (!qword_1EC9E6A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6A80);
  }

  return result;
}

uint64_t EndOfArticleSectionDescriptor.identifier.getter()
{
  v1 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  EndOfArticleFeedGroup = type metadata accessor for MoreToReadEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](EndOfArticleFeedGroup - 8, v6);
  v8 = (v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for RecommendedEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for RelatedEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = (v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for MoreFromEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = (v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7AE9A08(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v26 = v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v0 >> 61;
  if (v27 <= 2)
  {
    if (v27)
    {
      if (v27 == 1)
      {
        v28 = swift_projectBox();
        v29 = type metadata accessor for RelatedEndOfArticleFeedGroup;
        sub_1D7BFB994(v28, v16, type metadata accessor for RelatedEndOfArticleFeedGroup);
        v30 = *v16;

        v31 = v16;
      }

      else
      {
        v36 = swift_projectBox();
        v29 = type metadata accessor for RecommendedEndOfArticleFeedGroup;
        sub_1D7BFB994(v36, v12, type metadata accessor for RecommendedEndOfArticleFeedGroup);
        v30 = *v12;

        v31 = v12;
      }
    }

    else
    {
      v34 = swift_projectBox();
      v29 = type metadata accessor for MoreFromEndOfArticleFeedGroup;
      sub_1D7BFB994(v34, v20, type metadata accessor for MoreFromEndOfArticleFeedGroup);
      v30 = *v20;

      v31 = v20;
    }

    goto LABEL_11;
  }

  if (v27 == 3)
  {
    v35 = swift_projectBox();
    v29 = type metadata accessor for MoreToReadEndOfArticleFeedGroup;
    sub_1D7BFB994(v35, v8, type metadata accessor for MoreToReadEndOfArticleFeedGroup);
    v30 = *v8;

    v31 = v8;
LABEL_11:
    v33 = v29;
    goto LABEL_12;
  }

  if (v27 != 4)
  {
    v38 = v24;
    v39 = swift_projectBox();
    (*(v22 + 16))(v26, v39, v38);
    sub_1D7D2E13C();
    v40[0] = v40[1];
    v30 = EndOfArticleSectionDescriptor.identifier.getter();
    (*(v22 + 8))(v26, v38);

    return v30;
  }

  v32 = swift_projectBox();
  sub_1D7BFB994(v32, v4, type metadata accessor for MoreFromIssueEndOfArticleFeedGroup);
  v30 = *v4;

  v31 = v4;
  v33 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup;
LABEL_12:
  sub_1D7BFB9FC(v31, v33);
  return v30;
}

uint64_t sub_1D7BFB994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7BFB9FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double EndOfArticleSectionDescriptor.type.getter@<D0>(char *a1@<X8>)
{
  sub_1D7AE9A08(0);
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3, v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1 >> 61;
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      v11 = 3;
    }

    else
    {
      if (v10 != 4)
      {
        v12 = v6;
        v13 = swift_projectBox();
        (*(v4 + 16))(v9, v13, v12);
        sub_1D7D2E13C();
        v15[0] = v15[1];
        v14 = EndOfArticleSectionDescriptor.type.getter(a1);
        (*(v4 + 8))(v9, v12, v14);

        return result;
      }

      v11 = 4;
    }
  }

  else
  {
    if (!v10)
    {
      *a1 = 0;
      return result;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }
  }

  *a1 = v11;
  return result;
}

uint64_t static EndOfArticleSectionDescriptor.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v82 = a2;
  v3 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v81 = (&v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6, v7);
  v80 = (&v77 - v8);
  EndOfArticleFeedGroup = type metadata accessor for MoreToReadEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](EndOfArticleFeedGroup - 8, v10);
  v79 = (&v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v13);
  v78 = (&v77 - v14);
  v15 = type metadata accessor for RecommendedEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = (&v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v77 - v21);
  v23 = type metadata accessor for RelatedEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = (&v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = (&v77 - v29);
  v31 = type metadata accessor for MoreFromEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v34 = (&v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = (&v77 - v37);
  sub_1D7AE9A08(0);
  v40 = v39;
  MEMORY[0x1EEE9AC00](v39, v41);
  v43 = &v77 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v48 = &v77 - v47;
  v49 = *a1;
  v50 = *v82;
  v51 = v49 >> 61;
  if ((v49 >> 61) <= 2)
  {
    if (v51)
    {
      if (v51 == 1)
      {
        if (v50 >> 61 == 1)
        {
          v52 = swift_projectBox();
          v53 = swift_projectBox();
          sub_1D7BFB994(v52, v30, type metadata accessor for RelatedEndOfArticleFeedGroup);
          sub_1D7BFB994(v53, v26, type metadata accessor for RelatedEndOfArticleFeedGroup);
          if (*v30 == *v26 && v30[1] == v26[1])
          {
            v54 = 1;
          }

          else
          {
            v54 = sub_1D7D3197C();
          }

          v75 = type metadata accessor for RelatedEndOfArticleFeedGroup;
          sub_1D7BFB9FC(v26, type metadata accessor for RelatedEndOfArticleFeedGroup);
          v72 = v30;
          goto LABEL_40;
        }
      }

      else if (v50 >> 61 == 2)
      {
        v65 = swift_projectBox();
        v66 = swift_projectBox();
        sub_1D7BFB994(v65, v22, type metadata accessor for RecommendedEndOfArticleFeedGroup);
        sub_1D7BFB994(v66, v18, type metadata accessor for RecommendedEndOfArticleFeedGroup);
        if (*v22 == *v18 && v22[1] == v18[1])
        {
          v54 = 1;
        }

        else
        {
          v54 = sub_1D7D3197C();
        }

        v75 = type metadata accessor for RecommendedEndOfArticleFeedGroup;
        sub_1D7BFB9FC(v18, type metadata accessor for RecommendedEndOfArticleFeedGroup);
        v72 = v22;
        goto LABEL_40;
      }
    }

    else if (!(v50 >> 61))
    {
      v60 = swift_projectBox();
      v61 = swift_projectBox();
      sub_1D7BFB994(v60, v38, type metadata accessor for MoreFromEndOfArticleFeedGroup);
      sub_1D7BFB994(v61, v34, type metadata accessor for MoreFromEndOfArticleFeedGroup);
      if (*v38 == *v34 && v38[1] == v34[1])
      {
        v54 = 1;
      }

      else
      {
        v54 = sub_1D7D3197C();
      }

      sub_1D7BFB9FC(v34, type metadata accessor for MoreFromEndOfArticleFeedGroup);
      v72 = v38;
      v73 = type metadata accessor for MoreFromEndOfArticleFeedGroup;
      goto LABEL_41;
    }

    goto LABEL_28;
  }

  if (v51 == 3)
  {
    if (v50 >> 61 == 3)
    {
      v62 = swift_projectBox();
      v63 = swift_projectBox();
      v57 = v78;
      sub_1D7BFB994(v62, v78, type metadata accessor for MoreToReadEndOfArticleFeedGroup);
      v64 = v63;
      v59 = v79;
      sub_1D7BFB994(v64, v79, type metadata accessor for MoreToReadEndOfArticleFeedGroup);
      if (*v57 == *v59 && v57[1] == v59[1])
      {
        v54 = 1;
      }

      else
      {
        v54 = sub_1D7D3197C();
      }

      v74 = type metadata accessor for MoreToReadEndOfArticleFeedGroup;
      goto LABEL_37;
    }

LABEL_28:
    v54 = 0;
    return v54 & 1;
  }

  if (v51 == 4)
  {
    if (v50 >> 61 == 4)
    {
      v55 = swift_projectBox();
      v56 = swift_projectBox();
      v57 = v80;
      sub_1D7BFB994(v55, v80, type metadata accessor for MoreFromIssueEndOfArticleFeedGroup);
      v58 = v56;
      v59 = v81;
      sub_1D7BFB994(v58, v81, type metadata accessor for MoreFromIssueEndOfArticleFeedGroup);
      if (*v57 == *v59 && v57[1] == v59[1])
      {
        v54 = 1;
      }

      else
      {
        v54 = sub_1D7D3197C();
      }

      v74 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup;
LABEL_37:
      v75 = v74;
      sub_1D7BFB9FC(v59, v74);
      v72 = v57;
LABEL_40:
      v73 = v75;
LABEL_41:
      sub_1D7BFB9FC(v72, v73);
      return v54 & 1;
    }

    goto LABEL_28;
  }

  if (v50 >> 61 != 5)
  {
    goto LABEL_28;
  }

  v67 = v46;
  v68 = swift_projectBox();
  v69 = swift_projectBox();
  v70 = *(v67 + 16);
  v70(v48, v68, v40);
  v70(v43, v69, v40);
  sub_1D7D2E13C();
  v84[0] = v84[1];
  sub_1D7D2E13C();
  v83[0] = v83[1];
  v54 = static EndOfArticleSectionDescriptor.== infix(_:_:)(v84, v83);

  v71 = *(v67 + 8);
  v71(v43, v40);
  v71(v48, v40);
  return v54 & 1;
}

uint64_t EndOfArticleSectionDescriptor.feedLayoutOrder.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1D7D2DF6C();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E69B5958];
  if (v3 >> 61 >= 5)
  {
    v6 = MEMORY[0x1E69B5950];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

double EndOfArticleSectionDescriptor.feedGroupDebug.getter@<D0>(uint64_t *a1@<X8>)
{
  v47 = a1;
  v45 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](v45, v1);
  v46 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  EndOfArticleFeedGroup = type metadata accessor for MoreToReadEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](EndOfArticleFeedGroup, v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecommendedEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RelatedEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MoreFromEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AE9A08(0);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v48 >> 61;
  if (v24 > 2)
  {
    if (v24 == 3)
    {
      v36 = swift_projectBox();
      v26 = type metadata accessor for MoreToReadEndOfArticleFeedGroup;
      sub_1D7BFB994(v36, v5, type metadata accessor for MoreToReadEndOfArticleFeedGroup);
      v37 = v47;
      v47[3] = EndOfArticleFeedGroup;
      v37[4] = sub_1D7BFC934(qword_1EE0BC160, type metadata accessor for MoreToReadEndOfArticleFeedGroup, &protocol conformance descriptor for MoreToReadEndOfArticleFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
      v29 = v5;
    }

    else
    {
      if (v24 != 4)
      {
        v41 = swift_projectBox();
        (*(v20 + 16))(v23, v41, v19);
        sub_1D7D2E13C();
        v49 = v50;
        v42 = EndOfArticleSectionDescriptor.feedGroupDebug.getter(v47);
        (*(v20 + 8))(v23, v19, v42);

        return result;
      }

      v30 = swift_projectBox();
      v26 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup;
      v31 = v46;
      sub_1D7BFB994(v30, v46, type metadata accessor for MoreFromIssueEndOfArticleFeedGroup);
      v32 = v47;
      v47[3] = v45;
      v32[4] = sub_1D7BFC934(qword_1EE0BBD90, type metadata accessor for MoreFromIssueEndOfArticleFeedGroup, &protocol conformance descriptor for MoreFromIssueEndOfArticleFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
      v29 = v31;
    }

    goto LABEL_11;
  }

  if (v24)
  {
    if (v24 == 1)
    {
      v25 = swift_projectBox();
      v26 = type metadata accessor for RelatedEndOfArticleFeedGroup;
      sub_1D7BFB994(v25, v13, type metadata accessor for RelatedEndOfArticleFeedGroup);
      v27 = v47;
      v47[3] = v10;
      v27[4] = sub_1D7BFC934(qword_1EE0C4AE8, type metadata accessor for RelatedEndOfArticleFeedGroup, &protocol conformance descriptor for RelatedEndOfArticleFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
      v29 = v13;
    }

    else
    {
      v38 = swift_projectBox();
      v26 = type metadata accessor for RecommendedEndOfArticleFeedGroup;
      sub_1D7BFB994(v38, v9, type metadata accessor for RecommendedEndOfArticleFeedGroup);
      v39 = v47;
      v47[3] = v6;
      v39[4] = sub_1D7BFC934(qword_1EE0BBF58, type metadata accessor for RecommendedEndOfArticleFeedGroup, &protocol conformance descriptor for RecommendedEndOfArticleFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
      v29 = v9;
    }

LABEL_11:
    v35 = v26;
    goto LABEL_12;
  }

  v33 = swift_projectBox();
  sub_1D7BFB994(v33, v17, type metadata accessor for MoreFromEndOfArticleFeedGroup);
  v34 = v47;
  v47[3] = v14;
  v34[4] = sub_1D7BFC934(qword_1EE0C4700, type metadata accessor for MoreFromEndOfArticleFeedGroup, &protocol conformance descriptor for MoreFromEndOfArticleFeedGroup);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  v29 = v17;
  v35 = type metadata accessor for MoreFromEndOfArticleFeedGroup;
LABEL_12:
  sub_1D7AB4F6C(v29, boxed_opaque_existential_1, v35);
  return result;
}

uint64_t sub_1D7BFC934(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D7BFC97C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1D7D2DF6C();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E69B5958];
  if (v3 >> 61 >= 5)
  {
    v6 = MEMORY[0x1E69B5950];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t EndOfArticleSectionDescriptor.tag.getter()
{
  v1 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  EndOfArticleFeedGroup = type metadata accessor for MoreToReadEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](EndOfArticleFeedGroup, v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MoreFromEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AE9A08(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v0 >> 61;
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v25 = swift_projectBox();
      v22 = type metadata accessor for MoreToReadEndOfArticleFeedGroup;
      sub_1D7BFB994(v25, v8, type metadata accessor for MoreToReadEndOfArticleFeedGroup);
      v20 = *&v8[*(EndOfArticleFeedGroup + 24)];
      swift_unknownObjectRetain();
      v23 = v8;
    }

    else
    {
      if (v19 != 4)
      {
        v26 = v16;
        v27 = swift_projectBox();
        (*(v14 + 16))(v18, v27, v26);
        sub_1D7D2E13C();
        v29[0] = v29[1];
        v20 = EndOfArticleSectionDescriptor.tag.getter();
        (*(v14 + 8))(v18, v26);

        return v20;
      }

      v24 = swift_projectBox();
      v22 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup;
      sub_1D7BFB994(v24, v4, type metadata accessor for MoreFromIssueEndOfArticleFeedGroup);
      v20 = *&v4[*(v1 + 24)];
      swift_unknownObjectRetain();
      v23 = v4;
    }

    goto LABEL_8;
  }

  v20 = 0;
  if ((v19 - 1) >= 2)
  {
    v21 = swift_projectBox();
    v22 = type metadata accessor for MoreFromEndOfArticleFeedGroup;
    sub_1D7BFB994(v21, v12, type metadata accessor for MoreFromEndOfArticleFeedGroup);
    v20 = *&v12[*(v9 + 24)];
    swift_unknownObjectRetain();
    v23 = v12;
LABEL_8:
    sub_1D7BFB9FC(v23, v22);
  }

  return v20;
}

double EndOfArticleSectionDescriptor.adGroupKind.getter@<D0>(uint64_t *a1@<X8>)
{
  sub_1D7AE9A08(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1 >> 61;
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v10 = 0x5F4F545F45524F4DLL;
      v11 = 0xEC00000044414552;
    }

    else
    {
      if (v9 != 4)
      {
        v16 = v6;
        v17 = swift_projectBox();
        (*(v4 + 16))(v8, v17, v16);
        sub_1D7D2E13C();
        v19[0] = v19[1];
        v18 = EndOfArticleSectionDescriptor.adGroupKind.getter(a1);
        (*(v4 + 8))(v8, v16, v18);

        return result;
      }

      v10 = 0x6F72465F65726F4DLL;
      v11 = 0xEF65757373495F6DLL;
    }
  }

  else if (v9)
  {
    if (v9 != 1)
    {
      *a1 = 0xD000000000000011;
      a1[1] = 0x80000001D7D78900;
      goto LABEL_11;
    }

    v10 = 0x5F444554414C4552;
    v11 = 0xEF534549524F5453;
  }

  else
  {
    v10 = 0x4F52465F45524F4DLL;
    v11 = 0xED00004255505F4DLL;
  }

  *a1 = v10;
  a1[1] = v11;
LABEL_11:
  v12 = *MEMORY[0x1E69B3FB0];
  v13 = sub_1D7D2CCCC();
  v14 = *(*(v13 - 8) + 104);

  v14(a1, v12, v13);
  return result;
}

uint64_t EndOfArticleSectionDescriptor.allowAdjacentAd.getter()
{
  if (*v0 >> 61 > 4uLL)
  {

    return MEMORY[0x1EEE21808]();
  }

  else
  {
    sub_1D7BFD14C(0, &qword_1EE0BE8E8, MEMORY[0x1E69E6F90]);
    sub_1D7D2E46C();
    *(swift_allocObject() + 16) = xmmword_1D7D3B4E0;
    sub_1D7D2E44C();
    sub_1D7D2E45C();
    sub_1D7BFC934(&unk_1EE0BF958, MEMORY[0x1E69B5A90], MEMORY[0x1E69B5A98]);
    sub_1D7BFD14C(0, &qword_1EE0BF268, MEMORY[0x1E69E62F8]);
    sub_1D7BFD1AC();
    return sub_1D7D313AC();
  }
}

void sub_1D7BFD14C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7D2E46C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7BFD1AC()
{
  result = qword_1EE0BF260;
  if (!qword_1EE0BF260)
  {
    sub_1D7BFD14C(255, &qword_1EE0BF268, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BF260);
  }

  return result;
}

uint64_t sub_1D7BFD220()
{
  if (*v0 >> 61 >= 5uLL)
  {

    return MEMORY[0x1EEE21808]();
  }

  else
  {
    sub_1D7BFD14C(0, &qword_1EE0BE8E8, MEMORY[0x1E69E6F90]);
    sub_1D7D2E46C();
    *(swift_allocObject() + 16) = xmmword_1D7D3B4E0;
    sub_1D7D2E44C();
    sub_1D7D2E45C();
    sub_1D7BFC934(&unk_1EE0BF958, MEMORY[0x1E69B5A90], MEMORY[0x1E69B5A98]);
    sub_1D7BFD14C(0, &qword_1EE0BF268, MEMORY[0x1E69E62F8]);
    sub_1D7BFD1AC();
    return sub_1D7D313AC();
  }
}

uint64_t sub_1D7BFD3F8@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t EndOfArticleSectionDescriptor.nativeAdInsertionLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v46 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](v46, v2);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RecommendedEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RelatedEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  EndOfArticleFeedGroup = type metadata accessor for MoreToReadEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](EndOfArticleFeedGroup, v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MoreFromEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1 >> 61;
  if (v21 <= 2)
  {
    if (!v21)
    {
      v30 = swift_projectBox();
      sub_1D7BFB994(v30, v20, type metadata accessor for MoreFromEndOfArticleFeedGroup);
      v31 = *(v17 + 28);
      v32 = sub_1D7D2EA6C();
      (*(*(v32 - 8) + 16))(v47, &v20[v31], v32);
      v26 = v20;
      v33 = type metadata accessor for MoreFromEndOfArticleFeedGroup;
      return sub_1D7BFB9FC(v26, v33);
    }

    if (v21 == 1)
    {
      v22 = swift_projectBox();
      v23 = type metadata accessor for RelatedEndOfArticleFeedGroup;
      sub_1D7BFB994(v22, v12, type metadata accessor for RelatedEndOfArticleFeedGroup);
      v24 = *(v9 + 24);
      v25 = sub_1D7D2EA6C();
      (*(*(v25 - 8) + 16))(v47, &v12[v24], v25);
      v26 = v12;
    }

    else
    {
      v37 = swift_projectBox();
      v23 = type metadata accessor for RecommendedEndOfArticleFeedGroup;
      sub_1D7BFB994(v37, v8, type metadata accessor for RecommendedEndOfArticleFeedGroup);
      v38 = *(v5 + 24);
      v39 = sub_1D7D2EA6C();
      (*(*(v39 - 8) + 16))(v47, &v8[v38], v39);
      v26 = v8;
    }

LABEL_11:
    v33 = v23;
    return sub_1D7BFB9FC(v26, v33);
  }

  if (v21 == 3)
  {
    v34 = swift_projectBox();
    v23 = type metadata accessor for MoreToReadEndOfArticleFeedGroup;
    sub_1D7BFB994(v34, v16, type metadata accessor for MoreToReadEndOfArticleFeedGroup);
    v35 = *(EndOfArticleFeedGroup + 28);
    v36 = sub_1D7D2EA6C();
    (*(*(v36 - 8) + 16))(v47, &v16[v35], v36);
    v26 = v16;
    goto LABEL_11;
  }

  if (v21 == 4)
  {
    v27 = swift_projectBox();
    v23 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup;
    sub_1D7BFB994(v27, v4, type metadata accessor for MoreFromIssueEndOfArticleFeedGroup);
    v28 = *(v46 + 28);
    v29 = sub_1D7D2EA6C();
    (*(*(v29 - 8) + 16))(v47, &v4[v28], v29);
    v26 = v4;
    goto LABEL_11;
  }

  v41 = *MEMORY[0x1E69B5D40];
  v42 = sub_1D7D2EA6C();
  v43 = *(*(v42 - 8) + 104);
  v44 = v42;
  v45 = v47;

  return v43(v45, v41, v44);
}

uint64_t sub_1D7BFD920@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t static EndOfArticleSectionDescriptor.createNativeAdGroup(from:context:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = sub_1D7D2E3BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_1D7AE9A08(0);
  v12 = swift_allocBox();
  v14[1] = v11;
  (*(v7 + 16))(v10, a2, v6);
  sub_1D7AE9A64();

  result = sub_1D7D2E12C();
  *a3 = v12 | 0xA000000000000000;
  return result;
}

double static EndOfArticleSectionDescriptor.removeNativeAdGroup(from:)@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1D7AE9A08(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 >> 61 == 5)
  {
    v10 = swift_projectBox();
    (*(v6 + 16))(v9, v10, v5);
    sub_1D7D2E13C();
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    *a2 = *a1;
  }

  return result;
}

uint64_t EndOfArticleSectionDescriptor.nativeAdGroup.getter@<X0>(void *a1@<X8>)
{
  sub_1D7AE9A08(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 >> 61 == 5)
  {
    v9 = swift_projectBox();
    (*(v5 + 16))(v8, v9, v4);
    sub_1D7BFDDD8(0);
    v11 = v10;
    sub_1D7D2E13C();
    sub_1D7D2E14C();
    (*(v5 + 8))(v8, v4);
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }

  else
  {
    sub_1D7BFDDD8(0);
    v14 = *(*(v13 - 8) + 56);

    return v14(a1, 1, 1, v13);
  }
}

void sub_1D7BFDDD8(uint64_t a1)
{
  if (!qword_1EC9E6A88)
  {
    sub_1D7D2E3BC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E6A88);
    }
  }
}

uint64_t sub_1D7BFDE44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a4@<X8>)
{
  v7 = sub_1D7D2E3BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_1D7AE9A08(0);
  v13 = swift_allocBox();
  v15[1] = v12;
  (*(v8 + 16))(v11, a2, v7);
  sub_1D7AE9A64();

  result = sub_1D7D2E12C();
  *a4 = v13 | 0xA000000000000000;
  return result;
}

double sub_1D7BFDF7C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1D7AE9A08(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 >> 61 == 5)
  {
    v10 = swift_projectBox();
    (*(v6 + 16))(v9, v10, v5);
    sub_1D7D2E13C();
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    *a2 = *a1;
  }

  return result;
}

uint64_t sub_1D7BFE0BC@<X0>(void *a1@<X8>)
{
  sub_1D7AE9A08(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 >> 61 == 5)
  {
    v9 = swift_projectBox();
    (*(v5 + 16))(v8, v9, v4);
    sub_1D7BFDDD8(0);
    v11 = v10;
    sub_1D7D2E13C();
    sub_1D7D2E14C();
    (*(v5 + 8))(v8, v4);
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }

  else
  {
    sub_1D7BFDDD8(0);
    v14 = *(*(v13 - 8) + 56);

    return v14(a1, 1, 1, v13);
  }
}

double EndOfArticleSectionDescriptor.context.getter@<D0>(uint64_t **a1@<X8>)
{
  v80 = a1;
  sub_1D7AE9A08(0);
  v74 = *(v1 - 8);
  v75 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v72 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](v70, v4);
  v73 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecommendedEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v71 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RelatedEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  EndOfArticleFeedGroup = type metadata accessor for MoreToReadEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](EndOfArticleFeedGroup, v14);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1D7D2F05C();
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v17);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v70 - v22;
  v79 = sub_1D7D2DE2C();
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v24);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MoreFromEndOfArticleFeedGroup(0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *v81 >> 61;
  if (v31 > 2)
  {
    if (v31 == 3)
    {
      v51 = swift_projectBox();
      v33 = type metadata accessor for MoreToReadEndOfArticleFeedGroup;
      sub_1D7BFB994(v51, v16, type metadata accessor for MoreToReadEndOfArticleFeedGroup);
      v52 = v77;
      v53 = v79;
      (*(v77 + 16))(v26, &v16[*(EndOfArticleFeedGroup + 20)], v79);
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
      v81 = sub_1D7D2F03C();
      v54 = *(v76 + 8);
      v55 = v23;
      v56 = v78;
      v54(v55, v78);
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
      v39 = sub_1D7D2F02C();
      v54(v19, v56);
      (*(v52 + 8))(v26, v53);
      v40 = v16;
      goto LABEL_12;
    }

    if (v31 != 4)
    {
      v65 = swift_projectBox();
      v67 = v74;
      v66 = v75;
      v68 = v72;
      (*(v74 + 16))(v72, v65, v75);
      sub_1D7D2E13C();
      v82 = v83;
      v69 = EndOfArticleSectionDescriptor.context.getter(v80);
      (*(v67 + 8))(v68, v66, v69);

      return result;
    }

    v41 = swift_projectBox();
    v33 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup;
    v42 = v73;
    sub_1D7BFB994(v41, v73, type metadata accessor for MoreFromIssueEndOfArticleFeedGroup);
    v43 = *(v70 + 20);
LABEL_11:
    v58 = v77;
    v59 = v79;
    (*(v77 + 16))(v26, v42 + v43, v79);
    _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
    v81 = sub_1D7D2F03C();
    v60 = *(v76 + 8);
    v61 = v23;
    v62 = v78;
    v60(v61, v78);
    _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
    v39 = sub_1D7D2F02C();
    v60(v19, v62);
    (*(v58 + 8))(v26, v59);
    v40 = v42;
    goto LABEL_12;
  }

  if (v31)
  {
    if (v31 == 1)
    {
      v32 = swift_projectBox();
      v33 = type metadata accessor for RelatedEndOfArticleFeedGroup;
      sub_1D7BFB994(v32, v12, type metadata accessor for RelatedEndOfArticleFeedGroup);
      v34 = v77;
      v35 = v79;
      (*(v77 + 16))(v26, &v12[*(v9 + 20)], v79);
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
      v81 = sub_1D7D2F03C();
      v36 = *(v76 + 8);
      v37 = v23;
      v38 = v78;
      v36(v37, v78);
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
      v39 = sub_1D7D2F02C();
      v36(v19, v38);
      (*(v34 + 8))(v26, v35);
      v40 = v12;
LABEL_12:
      v50 = v33;
      goto LABEL_13;
    }

    v57 = swift_projectBox();
    v33 = type metadata accessor for RecommendedEndOfArticleFeedGroup;
    v42 = v71;
    sub_1D7BFB994(v57, v71, type metadata accessor for RecommendedEndOfArticleFeedGroup);
    v43 = *(v6 + 20);
    goto LABEL_11;
  }

  v44 = swift_projectBox();
  sub_1D7BFB994(v44, v30, type metadata accessor for MoreFromEndOfArticleFeedGroup);
  v45 = v77;
  v46 = v79;
  (*(v77 + 16))(v26, &v30[*(v27 + 20)], v79);
  _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
  v81 = sub_1D7D2F03C();
  v47 = *(v76 + 8);
  v48 = v23;
  v49 = v78;
  v47(v48, v78);
  _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
  v39 = sub_1D7D2F02C();
  v47(v19, v49);
  (*(v45 + 8))(v26, v46);
  v40 = v30;
  v50 = type metadata accessor for MoreFromEndOfArticleFeedGroup;
LABEL_13:
  sub_1D7BFB9FC(v40, v50);
  v64 = v80;
  *v80 = v81;
  v64[1] = v39;
  *(v64 + 16) = 0;
  return result;
}

uint64_t sub_1D7BFEA38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D7BFEA94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t type metadata accessor for ArticleVideoAdProviderFactory(uint64_t a1)
{
  result = qword_1EE0C4978;
  if (!qword_1EE0C4978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1D7BFEBB0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = a1;
  v10 = sub_1D7BFEC98(v7, v8);

  swift_unknownObjectRelease();

  return v10;
}

id sub_1D7BFEC98(void *a1, uint64_t a2)
{
  v4 = sub_1D7D2CF0C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 component])
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      result = [v10 prerollPlacementIdentifier];
      if (result)
      {
        v13 = result;
        sub_1D7D3034C();

        [a1 contentFrame];
        sub_1D7D2CEEC();
        sub_1D7D2D0AC();
        sub_1D7B6F4D0(v11, v9);

        sub_1D7D2CA4C();
        v14 = sub_1D7D2D09C();
        swift_unknownObjectRelease();

        (*(v5 + 8))(v9, v4);
        return v14;
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EC9DFD48 != -1)
  {
    swift_once();
  }

  v15 = qword_1EC9E3338;
  v16 = sub_1D7D30C4C();
  sub_1D79F3AB0(0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D7D3B4D0;
  v18 = [a1 component];
  if (v18)
  {
    v19 = [v18 identifier];
    swift_unknownObjectRelease();
    v20 = sub_1D7D3034C();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = sub_1D79D6AE0();
  if (v22)
  {
    v23 = v20;
  }

  else
  {
    v23 = 0;
  }

  v24 = 0xE000000000000000;
  if (v22)
  {
    v24 = v22;
  }

  *(v17 + 32) = v23;
  *(v17 + 40) = v24;
  sub_1D7D29AAC("Unable to create preroll placement. component=%{public}@", 56, 2, &dword_1D7987000, v15, v16, v17);

  return 0;
}

uint64_t dispatch thunk of RecipeRecirculationConfigurationServiceType.fetchRecipeRecirculationConfigJSON()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D7BFF0B4;

  return v7(a1, a2);
}

uint64_t sub_1D7BFF0B4(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

void sub_1D7BFF1C0(uint64_t a1, uint64_t a2)
{
  sub_1D7BFF6D8(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v4, v8);
  v10 = *(a2 + 16);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5, v9);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_1D7BFF740;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D79E9424;
  aBlock[3] = &block_descriptor_31;
  v13 = _Block_copy(aBlock);

  [v10 fetchAppConfigurationIfNeededWithCompletion_];
  _Block_release(v13);
}

void sub_1D7BFF368(void *a1, id a2)
{
  if (a1 && ([a1 respondsToSelector_] & 1) != 0)
  {
    v3 = [swift_unknownObjectRetain() recipeRecirculationConfigJSON];
    if (v3)
    {
      v4 = v3;
      sub_1D7D3034C();

      sub_1D7BFF6D8(0);
      sub_1D7D307FC();
      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    sub_1D7BFF7D8();
    swift_allocError();
  }

  sub_1D7BFF6D8(0);
  sub_1D7D307EC();
}

uint64_t sub_1D7BFF4B0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1D7BFF588;
  v2 = *(v0 + 32);
  v3 = MEMORY[0x1E69E6158];

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000024, 0x80000001D7D78AA0, sub_1D7BFF6D0, v2, v3);
}

uint64_t sub_1D7BFF588()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1D7BFF6B8;
  }

  else
  {
    v2 = sub_1D7BFF69C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D7BFF6D8(uint64_t a1)
{
  if (!qword_1EC9E6A90)
  {
    sub_1D79AC5C4();
    v1 = sub_1D7D3080C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9E6A90);
    }
  }
}

void sub_1D7BFF740(void *a1, void *a2)
{
  sub_1D7BFF6D8(0);

  sub_1D7BFF368(a1, a2);
}

double block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1D7BFF7D8()
{
  result = qword_1EC9E6AA0;
  if (!qword_1EC9E6AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6AA0);
  }

  return result;
}

unint64_t sub_1D7BFF840()
{
  result = qword_1EC9E6AA8;
  if (!qword_1EC9E6AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6AA8);
  }

  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1D7BFF9B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for CampaignLandingPageModule();
    v7 = swift_allocObject();
    result = sub_1D799D69C(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for CampaignLandingPageModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7BFFA68(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ArticleViewController(0);
  sub_1D799CC84(a1, &v16);
  v2 = swift_allocObject();
  sub_1D799D69C(&v16, v2 + 16);
  v3 = sub_1D7D28CFC();

  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0BC588, &protocol descriptor for CampaignLandingPageStylerType, 1);
  sub_1D7D28D2C();
  if (!v17)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &unk_1EE0BBD70, &protocol descriptor for CampaignLandingPageEventHandlerType, 0);
  sub_1D7D28D2C();
  v4 = v14;
  if (!v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for URLHandler();
  v6 = sub_1D7D28D1C();
  if (v6)
  {
    v7 = v6;
    v8 = __swift_mutable_project_boxed_opaque_existential_1(&v16, v17);
    v9 = MEMORY[0x1EEE9AC00](v8, v8);
    v11 = (&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    sub_1D7C0022C(v3, *v11, v4, v5, v7);
    __swift_destroy_boxed_opaque_existential_1(&v16);
    return;
  }

LABEL_9:
  __break(1u);
}

void *sub_1D7BFFCD8(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1D798C468(0, qword_1EE0BC590, &protocol descriptor for CampaignLandingPageRouterType, 1);
  result = sub_1D7D28D2C();
  v4 = v10;
  if (v10)
  {
    v5 = v11;
    v6 = __swift_project_boxed_opaque_existential_1(v9, v10);
    v8[3] = v4;
    v8[4] = *(v5 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
    (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
    sub_1D798C468(0, &qword_1EE0C9958, &protocol descriptor for ArticleRouterType, 1);
    sub_1D7D28BFC();
    __swift_destroy_boxed_opaque_existential_1(v8);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1D7BFFE10()
{
  sub_1D798C468(0, &qword_1EE0BC588, &protocol descriptor for CampaignLandingPageStylerType, 1);
  sub_1D7D291EC();

  sub_1D798C468(0, &unk_1EE0BBD70, &protocol descriptor for CampaignLandingPageEventHandlerType, 0);
  sub_1D7D291EC();

  sub_1D798C468(0, qword_1EE0BBED0, &protocol descriptor for CampaignLandingPageInteractorType, 0);
  sub_1D7D291EC();

  type metadata accessor for URLHandler();
  sub_1D7D291DC();

  return result;
}

void *sub_1D7BFFF48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0CF6D0, &protocol descriptor for BaseStylerType, 1);
  result = sub_1D7D28D2C();
  if (v7)
  {
    v4 = type metadata accessor for CampaignLandingPageStyler();
    v5 = swift_allocObject();
    result = sub_1D799D69C(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F529CC48;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D7BFFFFC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0BBED0, &protocol descriptor for CampaignLandingPageInteractorType, 0);
  result = sub_1D7D28D2C();
  v5 = v12;
  if (!v12)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0BC590, &protocol descriptor for CampaignLandingPageRouterType, 1);
  result = sub_1D7D28D2C();
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, qword_1EE0C40D0, &protocol descriptor for CampaignLandingPageTrackerType, 1);
  result = sub_1D7D28D2C();
  if (v9)
  {
    type metadata accessor for CampaignLandingPageEventHandler();
    v7 = swift_allocObject();
    v7[3] = 0;
    swift_unknownObjectWeakInit();
    v7[4] = v5;
    v7[5] = v6;
    sub_1D799D69C(&v10, (v7 + 6));
    sub_1D799D69C(&v8, (v7 + 11));
    *(v5 + 24) = &off_1F52A25D0;
    result = swift_unknownObjectWeakAssign();
    *a2 = v7;
    a2[1] = &off_1F52A25D8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D7C00198@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CampaignLandingPageInteractor();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  result = swift_unknownObjectWeakInit();
  *a1 = v2;
  a1[1] = &off_1F52ABA08;
  return result;
}

id sub_1D7C001EC()
{
  v0 = objc_allocWithZone(type metadata accessor for URLHandler());

  return [v0 init];
}

char *sub_1D7C0022C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for CampaignLandingPageStyler();
  v27[3] = v10;
  v27[4] = &off_1F529CC48;
  v27[0] = a2;
  v11 = type metadata accessor for CampaignLandingPageViewController();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v27, v10);
  v14 = MEMORY[0x1EEE9AC00](v13, v13);
  v16 = (&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v16;
  v26[3] = v10;
  v26[4] = &off_1F529CC48;
  v26[0] = v18;
  v19 = OBJC_IVAR____TtC12NewsArticles33CampaignLandingPageViewController_isImpressionable;
  v25 = 0;
  sub_1D7C00434();
  swift_allocObject();
  *&v12[v19] = sub_1D7D28ECC();
  *&v12[OBJC_IVAR____TtC12NewsArticles33CampaignLandingPageViewController_pageDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR____TtC12NewsArticles33CampaignLandingPageViewController_articleViewController] = a1;
  sub_1D799CC84(v26, &v12[OBJC_IVAR____TtC12NewsArticles33CampaignLandingPageViewController_styler]);
  v20 = &v12[OBJC_IVAR____TtC12NewsArticles33CampaignLandingPageViewController_eventHandler];
  *v20 = a3;
  *(v20 + 1) = a4;
  *&v12[OBJC_IVAR____TtC12NewsArticles33CampaignLandingPageViewController_urlHandler] = a5;
  v24.receiver = v12;
  v24.super_class = v11;
  v21 = objc_msgSendSuper2(&v24, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v26);
  *(*&v21[OBJC_IVAR____TtC12NewsArticles33CampaignLandingPageViewController_eventHandler] + 24) = &off_1F52B57D0;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v21;
}

void sub_1D7C00434()
{
  if (!qword_1EE0C0430)
  {
    v0 = sub_1D7D28F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0430);
    }
  }
}

uint64_t sub_1D7C00484@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D799CC84(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for SearchInArticleModule();
    v7 = swift_allocObject();
    result = sub_1D79E14FC(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for SearchInArticleModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1D7C00534()
{
  type metadata accessor for SearchInArticleViewController();
  sub_1D7D291DC();

  return result;
}

void *sub_1D7C00594(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798C468(0, &qword_1EE0CBE60, MEMORY[0x1E69D7A90], 0);
  result = sub_1D7D28D2C();
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7D28A3C();
    result = sub_1D7D28D1C();
    if (result)
    {
      v3 = result;
      v4 = objc_allocWithZone(type metadata accessor for SearchInArticleViewController());
      return sub_1D7CF5FF4(v5, v6, v3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7C00678()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1D7C006C0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7C00F38(a1, v12, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
    {
      sub_1D799A6BC(0);
      sub_1D79DA510(*&v12[*(v18 + 48)], *&v12[*(v18 + 48) + 8], *&v12[*(v18 + 48) + 16], *&v12[*(v18 + 48) + 24]);
      goto LABEL_6;
    }

LABEL_14:
    v31 = type metadata accessor for ArticleViewerPage;
    v32 = v12;
LABEL_16:
    sub_1D7C00FA0(v32, v31);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_1D7A74E98(v12, v16);
  sub_1D7C00F38(a2, v8, type metadata accessor for ArticleViewerBlueprint);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1D7C00FA0(v16, type metadata accessor for ArticleViewerArticlePage);
    v31 = type metadata accessor for ArticleViewerBlueprint;
    v32 = v8;
    goto LABEL_16;
  }

  v19 = *v8;
  v20 = v8[1];
  v21 = *(v2 + 16);
  v22 = [v19 identifier];
  if (!v22)
  {
    sub_1D7D3034C();
    v22 = sub_1D7D3031C();
  }

  v23 = objc_opt_self();
  v24 = sub_1D7D3031C();
  v25 = [v23 ANFBookmarkWithArticleID_];

  [v21 markIssueWithID:v22 asVisitedWithBookmark:v25];
  v37[0] = v19;
  v37[1] = v20;
  v26 = v16[1];
  v38 = *v16;
  v39 = v26;
  v27 = v16[3];
  v40 = v16[2];
  v41 = v27;
  sub_1D79F5B54(&v38, &v33);
  sub_1D7C00FA0(v16, type metadata accessor for ArticleViewerArticlePage);
  v33 = v38;
  v34 = v39;
  v35 = v40;
  v36 = v41;
  sub_1D7C00A70(v37, &v33);
  v29 = v28;
  v42[0] = v33;
  v42[1] = v34;
  v42[2] = v35;
  v42[3] = v36;
  sub_1D7A0AD5C(v42);
  if (v29)
  {
    v30 = [v19 identifier];
    if (!v30)
    {
      sub_1D7D3034C();
      v30 = sub_1D7D3031C();
    }

    [v21 markIssueAsEngagedWithID_];
  }
}

void sub_1D7C00A70(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v39 = *a2;
  v3 = a2[2];
  v36 = a2[5];
  v37 = a2[1];
  v31 = a2[4];
  v32 = a2[6];
  v30 = a2[7];
  v4 = &selRef_addTarget_action_;
  if ([v3 respondsToSelector_])
  {
    v5 = [v3 role];
    if (v5 <= 7 && ((1 << v5) & 0x94) != 0)
    {
      return;
    }
  }

  v7 = [*(v35 + 32) configuration];
  v34 = v2;
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v7;
  if (([v7 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_12:
    v33 = 1;
    v10 = *(v2 + 16);
    if (!v10)
    {
      return;
    }

    goto LABEL_13;
  }

  v9 = [v8 paidBundleConfig];
  swift_unknownObjectRelease();
  v33 = [v9 minimumArticlesInANFIssueBeforeRead];

  v2 = v34;
  v10 = *(v34 + 16);
  if (!v10)
  {
    return;
  }

LABEL_13:
  v11 = 0;
  v12 = 0;
  v13 = (v2 + 32);
  v14 = v10 - 1;
  v38 = v10 - 1;
  do
  {
    v15 = v13[1];
    v45[0] = *v13;
    v45[1] = v15;
    v16 = v13[2];
    v17 = v13[3];
    v18 = v13[5];
    v45[4] = v13[4];
    v45[5] = v18;
    v45[2] = v16;
    v45[3] = v17;
    v19 = v13[6];
    v20 = v13[7];
    v21 = v13[8];
    *(v46 + 9) = *(v13 + 137);
    v45[7] = v20;
    v46[0] = v21;
    v45[6] = v19;
    memmove(__dst, v13, 0x99uLL);
    if (sub_1D7A601B0(__dst) == 1)
    {
      nullsub_1();
      if (v14 == v11)
      {
        return;
      }

      goto LABEL_41;
    }

    v44 = v12;
    nullsub_1();
    v23 = *v22;
    v24 = v22[2];
    v25 = v22[5];
    v42 = v22[6];
    v43 = v22[1];
    v40 = v22[7];
    v41 = v22[4];
    if ([v24 respondsToSelector_])
    {
      nullsub_1();

      v26 = v4[83];

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v27 = [v24 v26];
      if (v27 <= 7 && ((1 << v27) & 0x94) != 0)
      {
        sub_1D7A6026C(v45);
        v2 = v34;
        v4 = &selRef_addTarget_action_;
        v14 = v38;
        if (v38 == v11)
        {
          return;
        }

        goto LABEL_41;
      }

      v2 = v34;
    }

    else
    {
      nullsub_1();

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
    }

    v4 = &selRef_addTarget_action_;
    if (v39 == v23 && v37 == v43 || (sub_1D7D3197C() & 1) != 0)
    {
      if (v36)
      {
        if (!v25 || (v31 != v41 || v36 != v25) && (sub_1D7D3197C() & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      else if (v25)
      {
        goto LABEL_37;
      }

      if (v32 == v42 && v30 == v40 || (sub_1D7D3197C() & 1) != 0)
      {
        sub_1D7A6026C(v45);
        v14 = v38;
        goto LABEL_38;
      }
    }

LABEL_37:
    v28 = *(v35 + 24);
    v29 = sub_1D7D3031C();
    LOBYTE(v28) = [v28 hasArticleBeenVisited_];

    sub_1D7A6026C(v45);
    v14 = v38;
    if ((v28 & 1) == 0)
    {
      v12 = v44;
      if (v38 == v11)
      {
        return;
      }

      goto LABEL_41;
    }

LABEL_38:
    v12 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_48;
    }

    if (v12 >= v33 || v14 == v11)
    {
      return;
    }

LABEL_41:
    ++v11;
    v13 += 10;
  }

  while (v11 < *(v2 + 16));
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_1D7C00F38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7C00FA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7C01000()
{
  sub_1D7C015E0(0, &qword_1EC9E6AD0, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D7C015E0(0, &qword_1EC9E6AE0, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D7D2C26C();
  qword_1EC9E6AB0 = result;
  return result;
}

uint64_t sub_1D7C0115C()
{
  sub_1D7C015E0(0, &qword_1EC9E6AD0, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D7C015E0(0, &qword_1EC9E6AE0, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D7D2C26C();
  qword_1EC9E6AB8 = result;
  return result;
}

uint64_t sub_1D7C012B8()
{
  sub_1D7C015E0(0, &qword_1EC9E6AD0, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D7C015E0(0, &qword_1EC9E6AE0, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D7D2C26C();
  qword_1EC9E6AC0 = result;
  return result;
}

uint64_t sub_1D7C01414()
{
  sub_1D7C015E0(0, &qword_1EC9E6AD0, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D7C015E0(0, &qword_1EC9E6AE0, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D7D2C26C();
  qword_1EC9E6AC8 = result;
  return result;
}

unint64_t sub_1D7C01580()
{
  result = qword_1EC9E6AD8;
  if (!qword_1EC9E6AD8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9E6AD8);
  }

  return result;
}

void sub_1D7C015E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7C01580();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

Swift::Void __swiftcall NANowPlayingBackgroundView.clearArtwork()()
{
  if (qword_1EE0BB500 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE0DE478;

  [v0 setImage_];
}

id sub_1D7C016F4()
{
  if (qword_1EE0BB500 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE0DE478;

  return [v0 setImage_];
}

uint64_t sub_1D7C0175C(uint64_t a1, void (*a2)(void **), uint64_t a3, void *a4, void *a5)
{
  v25 = a4;
  v26 = a2;
  sub_1D7C01B68(0, &qword_1EE0BB410, type metadata accessor for InterstitialAdModel);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v25 - v9);
  sub_1D7AECC70(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C01B68(0, &qword_1EE0BB3F8, sub_1D7AECC70);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v25 - v19);
  sub_1D7C01BBC(a1, &v25 - v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    *v10 = *v20;
    swift_storeEnumTagMultiPayload();
    v22 = v21;
    v26(v10);

    return sub_1D7C01C3C(v10);
  }

  else
  {
    (*(v13 + 32))(v16, v20, v12);
    sub_1D7999AF4(0);
    (*(v13 + 16))(v10 + *(v24 + 36), v16, v12);
    *v10 = v25;
    v10[1] = a5;
    type metadata accessor for InterstitialAdModel(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();

    v26(v10);
    sub_1D7C01C3C(v10);
    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_1D7C01A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  sub_1D7D2CA2C();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;

  v11 = sub_1D7D2D24C();

  return v11;
}

uint64_t sub_1D7C01B08()
{
  sub_1D7D2D49C();
  type metadata accessor for InterstitialAdModel(0);

  return swift_storeEnumTagMultiPayload();
}

void sub_1D7C01B68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D2935C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7C01BBC(uint64_t a1, uint64_t a2)
{
  sub_1D7C01B68(0, &qword_1EE0BB3F8, sub_1D7AECC70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7C01C3C(uint64_t a1)
{
  sub_1D7C01B68(0, &qword_1EE0BB410, type metadata accessor for InterstitialAdModel);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RecipeContentPrefetcher.__allocating_init(recipeService:externalRecipeFactory:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  RecipeContentPrefetcher.init(recipeService:externalRecipeFactory:)(a1, a2);
  return v4;
}

uint64_t RecipeContentPrefetcher.init(recipeService:externalRecipeFactory:)(void *a1, void *a2)
{
  v3 = v2;
  *(v2 + 16) = [objc_allocWithZone(MEMORY[0x1E696AB50]) init];
  sub_1D79A92DC(0);
  swift_allocObject();
  *(v2 + 24) = sub_1D7D292EC();
  sub_1D799CC84(a1, v2 + 40);
  sub_1D799CC84(a2, v2 + 80);
  v6 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  *(v2 + 32) = v6;
  [v6 setMaxConcurrentOperationCount_];
  [*(v2 + 32) setQualityOfService_];
  v7 = [objc_opt_self() defaultCenter];
  [v7 addObserver:v3 selector:sel_revisitSuspendedState name:*MEMORY[0x1E696A7D8] object:0];

  sub_1D7D294EC();

  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

void sub_1D7C01E60(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, double a5)
{
  v73 = a3;
  sub_1D7C02E58(0, qword_1EE0BCCD8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v72 - v9;
  v11 = sub_1D7D27D2C();
  v76 = *(v11 - 8);
  v77 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v75 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RecipeContentPrefetchItem(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v74 = (&v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v19);
  v78 = &v72 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (&v72 - v23);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v72 - v27;
  sub_1D7C02E58(0, &unk_1EE0BB400, MEMORY[0x1E69D6AF8]);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = (&v72 - v31);
  sub_1D7D3094C();
  v34 = v33;
  sub_1D7C02EB8(a1, v32);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = *v32;
    if (qword_1EE0BB3B8 != -1)
    {
      swift_once();
    }

    v36 = sub_1D7D29AFC();
    __swift_project_value_buffer(v36, qword_1EE0DE460);

    v37 = v35;
    v38 = sub_1D7D29ADC();
    v39 = sub_1D7D30C4C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v80[0] = v41;
      *v40 = 136315650;
      *(v40 + 4) = sub_1D7B06D4C(v73, a4, v80);
      *(v40 + 12) = 2080;
      swift_getErrorValue();
      v42 = sub_1D7D31A3C();
      v44 = sub_1D7B06D4C(v42, v43, v80);

      *(v40 + 14) = v44;
      *(v40 + 22) = 2048;
      *(v40 + 24) = v34;
      _os_log_impl(&dword_1D7987000, v38, v39, "Failed to prefetch recipe content, recipe=%s, error=%s, time=%f", v40, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA7102E0](v41, -1, -1);
      MEMORY[0x1DA7102E0](v40, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_1D7C02F38(v32, v28);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_1D7C02F9C(v28, v24);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v45 = v75;
        v46 = v76;
        v47 = v77;
        (*(v76 + 32))(v75, v24, v77);
        v48 = sub_1D7D27CCC();
        v50 = v49;
        (*(v46 + 8))(v45, v47);
      }

      else
      {
        v51 = *v24;
        v52 = [*v24 identifier];
        v48 = sub_1D7D3034C();
        v50 = v53;
      }

      sub_1D7C02F9C(v28, v10);
      (*(v15 + 56))(v10, 0, 1, v14);
      v79[0] = v48;
      v79[1] = v50;
      sub_1D7D2931C();
    }

    if (qword_1EE0BB3B8 != -1)
    {
      swift_once();
    }

    v54 = sub_1D7D29AFC();
    __swift_project_value_buffer(v54, qword_1EE0DE460);
    v55 = v78;
    sub_1D7C02F9C(v28, v78);
    v56 = sub_1D7D29ADC();
    v57 = sub_1D7D30C3C();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v79[0] = v73;
      *v58 = 136315394;
      v59 = v74;
      sub_1D7C02F9C(v55, v74);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v61 = v76;
        v60 = v77;
        v62 = v59;
        v63 = v75;
        (*(v76 + 32))(v75, v62, v77);
        v64 = sub_1D7D27CCC();
        v66 = v65;
        (*(v61 + 8))(v63, v60);
      }

      else
      {
        v67 = *v59;
        v68 = [*v59 identifier];
        v64 = sub_1D7D3034C();
        v66 = v69;
      }

      sub_1D7C03000(v55);
      v70 = sub_1D7B06D4C(v64, v66, v79);

      *(v58 + 4) = v70;
      *(v58 + 12) = 2048;
      *(v58 + 14) = v34;
      _os_log_impl(&dword_1D7987000, v56, v57, "Successfully prefetched recipe content, recipe=%s, time=%f", v58, 0x16u);
      v71 = v73;
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x1DA7102E0](v71, -1, -1);
      MEMORY[0x1DA7102E0](v58, -1, -1);
    }

    else
    {

      sub_1D7C03000(v55);
    }

    sub_1D7C03000(v28);
  }
}

Swift::Void __swiftcall RecipeContentPrefetcher.removePrefetchInterestInRecipe(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  sub_1D7C02E58(0, qword_1EE0BCCD8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12[-v6];
  v8 = *(v1 + 16);
  v9 = sub_1D7D3031C();
  [v8 removeObject_];

  v13 = countAndFlagsBits;
  v14 = object;

  sub_1D7D2930C();

  v10 = type metadata accessor for RecipeContentPrefetchItem(0);
  LODWORD(v8) = (*(*(v10 - 8) + 48))(v7, 1, v10);
  sub_1D7C02D0C(v7);
  if (v8 != 1)
  {
    sub_1D7AF3EC8();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7D3B4D0;
    *(inited + 32) = countAndFlagsBits;
    *(inited + 40) = object;

    sub_1D7B23554(inited);
    swift_setDeallocating();
    sub_1D79E0AA4(inited + 32);
    sub_1D7D292DC();
  }
}

uint64_t RecipeContentPrefetcher.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  return v0;
}

uint64_t RecipeContentPrefetcher.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  return swift_deallocClassInstance();
}

void _s12NewsArticles23RecipeContentPrefetcherC021addPrefetchInterestInC0_6recipeySS_So8FCRecipeCSgtF_0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1D7C02E58(0, qword_1EE0BCCD8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v39 - v8;
  v10 = *(v2 + 16);
  v11 = sub_1D7D3031C();
  [v10 addObject_];

  v45[0] = a1;
  v45[1] = a2;

  sub_1D7D2930C();

  v12 = type metadata accessor for RecipeContentPrefetchItem(0);
  LODWORD(v10) = (*(*(v12 - 8) + 48))(v9, 1, v12);
  sub_1D7C02D0C(v9);
  if (v10 == 1)
  {
    v39 = *(v3 + 32);
    v13 = [v39 operations];
    sub_1D7C02DFC();
    v14 = sub_1D7D3063C();

    v40 = v3;
    if (v14 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7D3167C())
    {
      v16 = 0;
      v41 = v14 & 0xFFFFFFFFFFFFFF8;
      v42 = v14 & 0xC000000000000001;
      while (1)
      {
        if (v42)
        {
          v17 = MEMORY[0x1DA70EF00](v16, v14);
        }

        else
        {
          if (v16 >= *(v41 + 16))
          {
            goto LABEL_21;
          }

          v17 = *(v14 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v20 = [v17 name];
        if (v20)
        {
          v21 = a2;
          v22 = v20;
          v23 = sub_1D7D3034C();
          v25 = v24;

          if (v23 == a1 && v25 == v21)
          {

            goto LABEL_19;
          }

          a2 = v21;
          v27 = sub_1D7D3197C();

          if (v27)
          {

LABEL_19:

            return;
          }
        }

        ++v16;
        if (v19 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_23:

    v28 = CACurrentMediaTime();
    v29 = v40;
    sub_1D799CC84(v40 + 40, v45);
    sub_1D799CC84(v29 + 80, v44);
    v30 = type metadata accessor for RecipeContentPrefetchOperation(0);
    v31 = objc_allocWithZone(v30);
    v32 = &v31[qword_1EE0BC400];
    *v32 = a1;
    *(v32 + 1) = a2;
    v32[16] = 0;
    sub_1D799CC84(v45, &v31[qword_1EE0BC3F8]);
    sub_1D799CC84(v44, &v31[qword_1EE0BC408]);
    v43.receiver = v31;
    v43.super_class = v30;

    v33 = objc_msgSendSuper2(&v43, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v44);
    __swift_destroy_boxed_opaque_existential_1(v45);
    v34 = v33;
    v35 = sub_1D7D3031C();
    [v34 setName_];

    v36 = swift_allocObject();
    swift_weakInit();
    v37 = swift_allocObject();
    v37[2] = v28;
    *(v37 + 3) = v36;
    *(v37 + 4) = a1;
    *(v37 + 5) = a2;

    v38 = v34;
    sub_1D7D28DEC();

    [v39 addOperation_];
  }
}

uint64_t sub_1D7C02D0C(uint64_t a1)
{
  sub_1D7C02E58(0, qword_1EE0BCCD8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D7C02DFC()
{
  result = qword_1EE0BB048;
  if (!qword_1EE0BB048)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BB048);
  }

  return result;
}

void sub_1D7C02E58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for RecipeContentPrefetchItem(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D7C02EB8(uint64_t a1, uint64_t a2)
{
  sub_1D7C02E58(0, &unk_1EE0BB400, MEMORY[0x1E69D6AF8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7C02F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeContentPrefetchItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7C02F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeContentPrefetchItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7C03000(uint64_t a1)
{
  v2 = type metadata accessor for RecipeContentPrefetchItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ArticlePageColorPalette(uint64_t a1)
{
  result = qword_1EE0C7128;
  if (!qword_1EE0C7128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7C030D4(uint64_t a1)
{
  sub_1D79F85FC();
  if (v1 <= 0x3F)
  {
    sub_1D7B5C2C4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D7C03160()
{
  sub_1D7B5C2C4(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArticlePageColorPalette(0);
  __swift_allocate_value_buffer(v6, qword_1EE0DE550);
  v7 = __swift_project_value_buffer(v6, qword_1EE0DE550);
  v8 = objc_opt_self();
  v9 = [v8 systemBackgroundColor];
  v10 = [v8 whiteColor];
  v11 = [v8 labelColor];
  v13[0] = 1;
  v13[1] = 0;
  type metadata accessor for UIStatusBarStyle(0);
  sub_1D7D29DDC();
  *v7 = v9;
  *(v7 + 1) = v10;
  *(v7 + 2) = v11;
  return (*(v2 + 32))(&v7[*(v6 + 28)], v5, v1);
}

uint64_t sub_1D7C032EC(void *a1)
{
  v2 = v1;
  sub_1D7AC643C(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D2B49C();
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  (*(v12 + 104))(v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D7FB8], v10);
  v13 = *(v2 + 56);
  v25[4] = sub_1D7D28A3C();
  v25[5] = sub_1D7A108E4();
  v25[1] = v13;
  v26 = 0u;
  v27 = 0u;
  v28 = 1;
  sub_1D7D2B10C();
  swift_allocObject();

  v14 = a1;
  sub_1D7D2B0EC();
  swift_getObjectType();
  sub_1D7D2C4BC();
  sub_1D7B28B9C(0, v15);
  v17 = *(v16 + 64);
  v18 = &v7[*(v16 + 80)];
  *v7 = *(v2 + 32);
  v19 = *MEMORY[0x1E69B6340];
  v20 = sub_1D7D2F51C();
  (*(*(v20 - 8) + 104))(&v7[v17], v19, v20);
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v7 + 1) = sub_1D79E7BEC;
  *(v7 + 2) = 0;
  v21 = *MEMORY[0x1E69B6328];
  v22 = sub_1D7D2F4FC();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v7, v21, v22);
  (*(v23 + 56))(v7, 0, 1, v22);
  swift_unknownObjectRetain();

  sub_1D7D2A78C();
  sub_1D7AC64B8(v7);
}

uint64_t sub_1D7C03618()
{
  sub_1D79C92AC(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7C036B0(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = MEMORY[0x1E69E6720];
  sub_1D7C05AC8(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v2[6] = swift_task_alloc();
  v4 = sub_1D7D2824C();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for DebugRecipe.LoadedRecipe(0);
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = sub_1D7D2FAFC();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  sub_1D7C05AC8(0, &qword_1EC9E6B08, type metadata accessor for DebugRecipe.LoadedRecipe, v3);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v7 = sub_1D7D2A3EC();
  v2[18] = v7;
  v2[19] = *(v7 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7C03978, 0, 0);
}

uint64_t sub_1D7C03978()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *v1 = v4;
  v5 = *MEMORY[0x1E69D7938];
  v6 = *(v3 + 104);
  *(v0 + 208) = v6;
  *(v0 + 216) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v84 = v6;
  (v6)(v1, v5, v2);
  v7 = sub_1D79E4B84(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1D79E4B84((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 200);
  v11 = *(v0 + 152);
  v80 = *(v0 + 192);
  v12 = *(v0 + 32);
  *(v7 + 2) = v9 + 1;
  v13 = *(v11 + 32);
  v11 += 32;
  v14 = *(v11 + 48);
  *(v0 + 368) = v14;
  v81 = (v14 + 32) & ~v14;
  v15 = *(v11 + 40);
  v82 = v15;
  v83 = v13;
  *(v0 + 224) = v15;
  *(v0 + 232) = v13;
  *(v0 + 240) = v11 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  (v13)(&v7[v81 + v15 * v9], v10);
  sub_1D7C057E4(0);
  v17 = v16;
  v79 = swift_allocBox();
  v19 = (v18 + *(v17 + 48));
  sub_1D7C05AC8(0, &qword_1EC9E6B18, MEMORY[0x1E69D77F0], MEMORY[0x1E69E6F90]);
  sub_1D7D2A14C();
  *(swift_allocObject() + 16) = xmmword_1D7D3B4D0;
  *(v0 + 248) = *v12;
  *(v0 + 256) = v12[1];

  sub_1D7D2A15C();
  sub_1D7D2C8EC();
  *v19 = 0x4449657069636552;
  v19[1] = 0xE800000000000000;
  *v80 = v79;
  v84();
  v21 = *(v7 + 2);
  v20 = *(v7 + 3);
  if (v21 >= v20 >> 1)
  {
    v7 = sub_1D79E4B84((v20 > 1), v21 + 1, 1, v7);
  }

  *(v0 + 264) = v7;
  v22 = *(v0 + 192);
  v24 = *(v0 + 136);
  v23 = *(v0 + 144);
  v25 = *(v0 + 80);
  v26 = *(v0 + 88);
  v27 = *(v0 + 32);
  *(v7 + 2) = v21 + 1;
  v83(&v7[v81 + v21 * v82], v22, v23);
  v28 = *(type metadata accessor for DebugRecipe(0) + 24);
  *(v0 + 372) = v28;
  sub_1D7C05850(v27 + v28, v24);
  v29 = *(v26 + 48);
  *(v0 + 272) = v29;
  *(v0 + 280) = (v26 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v30 = v29(v24, 1, v25);
  v31 = *(v0 + 136);
  if (v30 == 1)
  {
    v32 = *(v0 + 32);
    sub_1D7C05B74(v31, &qword_1EC9E6B08, type metadata accessor for DebugRecipe.LoadedRecipe);
    v33 = *(v32 + 16);
    if (v33)
    {
      v34 = [v33 contentAssetHandle];
      *(v0 + 288) = v34;
      if (v34)
      {
        v36 = *(v0 + 112);
        v35 = *(v0 + 120);
        v37 = *(v0 + 104);
        (*(v36 + 104))(v35, *MEMORY[0x1E69B6568], v37);
        *(v0 + 296) = sub_1D7D30BFC();
        (*(v36 + 8))(v35, v37);
        v38 = swift_task_alloc();
        *(v0 + 304) = v38;
        *v38 = v0;
        v38[1] = sub_1D7C04164;

        return MEMORY[0x1EEE44EE0](v0 + 16);
      }
    }

    else
    {
      v34 = 0;
    }

    v39 = 0xF000000000000000;
  }

  else
  {
    v34 = *v31;
    v39 = v31[1];
    v40 = *(v0 + 136);
    sub_1D79EA338(*v31, v39);
    sub_1D7C05A6C(v40);
    v41 = *(v0 + 264);
    v42 = *(v0 + 208);
    v43 = *(v0 + 184);
    v44 = *(v0 + 144);
    v45 = swift_allocObject();
    v45[2] = v34;
    v45[3] = v39;
    v45[4] = 0x61746144776152;
    v45[5] = 0xE700000000000000;
    v45[6] = 7235938;
    v45[7] = 0xE300000000000000;
    *v43 = v45;
    v42(v43, *MEMORY[0x1E69D7948], v44);
    sub_1D79EA38C(v34, v39);
    sub_1D79EA338(v34, v39);
    v47 = *(v41 + 16);
    v46 = *(v41 + 24);
    v7 = *(v0 + 264);
    if (v47 >= v46 >> 1)
    {
      v7 = sub_1D79E4B84((v46 > 1), v47 + 1, 1, v7);
    }

    v48 = *(v0 + 232);
    v49 = *(v0 + 224);
    v50 = *(v0 + 184);
    v51 = *(v0 + 144);
    v52 = (*(v0 + 368) + 32) & ~*(v0 + 368);
    sub_1D79EA2D0(v34, v39);
    *(v7 + 2) = v47 + 1;
    v48(&v7[v52 + v49 * v47], v50, v51);
  }

  *(v0 + 312) = v34;
  *(v0 + 320) = v39;
  v53 = *(v0 + 272);
  v54 = *(v0 + 128);
  v55 = *(v0 + 80);
  sub_1D7C05850(*(v0 + 32) + *(v0 + 372), v54);
  if (v53(v54, 1, v55) == 1)
  {
    sub_1D7C05B74(*(v0 + 128), &qword_1EC9E6B08, type metadata accessor for DebugRecipe.LoadedRecipe);
  }

  else
  {
    v56 = *(v0 + 208);
    v57 = *(v0 + 176);
    v58 = *(v0 + 144);
    v59 = *(v0 + 96);
    v60 = *(v0 + 80);
    sub_1D7C059A4(*(v0 + 128), v59);
    v61 = swift_allocObject();
    v62 = *(v60 + 20);
    *(v61 + 40) = type metadata accessor for DebugRecipe.LoadedRecipe.Fields(0);
    *(v61 + 48) = sub_1D7C05B2C(&qword_1EC9E6B20, type metadata accessor for DebugRecipe.LoadedRecipe.Fields, &unk_1D7D5C198);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v61 + 16));
    sub_1D7C05A08(v59 + v62, boxed_opaque_existential_1);
    strcpy((v61 + 56), "RecipeFields");
    *(v61 + 69) = 0;
    *(v61 + 70) = -5120;
    *v57 = v61;
    v56(v57, *MEMORY[0x1E69D7950], v58);
    v65 = *(v7 + 2);
    v64 = *(v7 + 3);
    if (v65 >= v64 >> 1)
    {
      v7 = sub_1D79E4B84((v64 > 1), v65 + 1, 1, v7);
    }

    v66 = *(v0 + 232);
    v67 = *(v0 + 224);
    v68 = *(v0 + 176);
    v69 = *(v0 + 144);
    v70 = (*(v0 + 368) + 32) & ~*(v0 + 368);
    sub_1D7C05A6C(*(v0 + 96));
    *(v7 + 2) = v65 + 1;
    v66(&v7[v70 + v67 * v65], v68, v69);
  }

  v71 = *(v0 + 40);
  v72 = OBJC_IVAR____TtC12NewsArticles19RecipeRadarReporter_debugInfoProvider;
  *(v0 + 328) = v7;
  *(v0 + 336) = v72;
  v73 = *(v71 + v72 + 24);
  v74 = *(v71 + v72 + 32);
  __swift_project_boxed_opaque_existential_1((v71 + v72), v73);
  v75 = swift_task_alloc();
  *(v0 + 344) = v75;
  *v75 = v0;
  v75[1] = sub_1D7C04648;
  v77 = *(v0 + 248);
  v76 = *(v0 + 256);

  return MEMORY[0x1EEDF8420](v77, v76, v73, v74);
}

uint64_t sub_1D7C04164()
{

  if (v0)
  {

    v1 = sub_1D7C04BC8;
  }

  else
  {

    v1 = sub_1D7C042AC;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D7C042AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 264);
  v4 = *(v0 + 208);
  v5 = *(v0 + 184);
  v6 = *(v0 + 144);
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v2;
  v7[4] = 0x61746144776152;
  v7[5] = 0xE700000000000000;
  v7[6] = 7235938;
  v7[7] = 0xE300000000000000;
  *v5 = v7;
  v4(v5, *MEMORY[0x1E69D7948], v6);
  sub_1D79EA38C(v1, v2);
  sub_1D79EA338(v1, v2);
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = *(v0 + 264);
  if (v9 >= v8 >> 1)
  {
    v10 = sub_1D79E4B84((v8 > 1), v9 + 1, 1, v10);
  }

  v11 = *(v0 + 232);
  v12 = *(v0 + 224);
  v13 = *(v0 + 184);
  v14 = *(v0 + 144);
  v15 = (*(v0 + 368) + 32) & ~*(v0 + 368);
  sub_1D79EA2D0(v1, v2);
  *(v10 + 2) = v9 + 1;
  v11(&v10[v15 + v12 * v9], v13, v14);
  *(v0 + 312) = v1;
  *(v0 + 320) = v2;
  v16 = *(v0 + 272);
  v17 = *(v0 + 128);
  v18 = *(v0 + 80);
  sub_1D7C05850(*(v0 + 32) + *(v0 + 372), v17);
  if (v16(v17, 1, v18) == 1)
  {
    sub_1D7C05B74(*(v0 + 128), &qword_1EC9E6B08, type metadata accessor for DebugRecipe.LoadedRecipe);
    v19 = v10;
  }

  else
  {
    v20 = *(v0 + 208);
    v21 = *(v0 + 176);
    v22 = *(v0 + 144);
    v23 = *(v0 + 96);
    v24 = *(v0 + 80);
    sub_1D7C059A4(*(v0 + 128), v23);
    v25 = swift_allocObject();
    v26 = *(v24 + 20);
    *(v25 + 40) = type metadata accessor for DebugRecipe.LoadedRecipe.Fields(0);
    *(v25 + 48) = sub_1D7C05B2C(&qword_1EC9E6B20, type metadata accessor for DebugRecipe.LoadedRecipe.Fields, &unk_1D7D5C198);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v25 + 16));
    sub_1D7C05A08(v23 + v26, boxed_opaque_existential_1);
    strcpy((v25 + 56), "RecipeFields");
    *(v25 + 69) = 0;
    *(v25 + 70) = -5120;
    *v21 = v25;
    v20(v21, *MEMORY[0x1E69D7950], v22);
    v29 = *(v10 + 2);
    v28 = *(v10 + 3);
    v19 = v10;
    if (v29 >= v28 >> 1)
    {
      v19 = sub_1D79E4B84((v28 > 1), v29 + 1, 1, v10);
    }

    v30 = *(v0 + 232);
    v31 = *(v0 + 224);
    v32 = *(v0 + 176);
    v33 = *(v0 + 144);
    v34 = (*(v0 + 368) + 32) & ~*(v0 + 368);
    sub_1D7C05A6C(*(v0 + 96));
    *(v19 + 2) = v29 + 1;
    v30(&v19[v34 + v31 * v29], v32, v33);
  }

  v35 = *(v0 + 40);
  v36 = OBJC_IVAR____TtC12NewsArticles19RecipeRadarReporter_debugInfoProvider;
  *(v0 + 328) = v19;
  *(v0 + 336) = v36;
  v37 = *(v35 + v36 + 24);
  v38 = *(v35 + v36 + 32);
  __swift_project_boxed_opaque_existential_1((v35 + v36), v37);
  v39 = swift_task_alloc();
  *(v0 + 344) = v39;
  *v39 = v0;
  v39[1] = sub_1D7C04648;
  v41 = *(v0 + 248);
  v40 = *(v0 + 256);

  return MEMORY[0x1EEDF8420](v41, v40, v37, v38);
}

uint64_t sub_1D7C04648(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 352) = a1;
  *(v4 + 360) = a2;

  if (v2)
  {

    v5 = sub_1D7C04E5C;
  }

  else
  {
    v5 = sub_1D7C04764;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D7C04764()
{
  v1 = *(v0 + 360);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 328);
  }

  else
  {
    v3 = *(v0 + 352);
    v4 = *(v0 + 328);
    v5 = *(v0 + 208);
    v6 = *(v0 + 168);
    v7 = *(v0 + 144);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v1;
    v8[4] = 0xD000000000000010;
    v8[5] = 0x80000001D7D78E60;
    v8[6] = 1852797802;
    v8[7] = 0xE400000000000000;
    *v6 = v8;
    v5(v6, *MEMORY[0x1E69D7948], v7);
    sub_1D79EA338(v3, v1);
    v10 = *(v4 + 16);
    v9 = *(v4 + 24);
    v2 = *(v0 + 328);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_1D79E4B84((v9 > 1), v10 + 1, 1, *(v0 + 328));
    }

    v11 = *(v0 + 232);
    v12 = *(v0 + 224);
    v13 = *(v0 + 168);
    v14 = *(v0 + 144);
    v15 = (*(v0 + 368) + 32) & ~*(v0 + 368);
    sub_1D79EA2D0(*(v0 + 352), *(v0 + 360));
    *(v2 + 2) = v10 + 1;
    v11(&v2[v15 + v12 * v10], v13, v14);
  }

  v16 = (*(v0 + 40) + *(v0 + 336));
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v17 = sub_1D7D27D5C();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v0 + 64);
    v20 = *(v19 + 16);
    v19 += 16;
    v21 = v17 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v51 = *(v19 + 56);
    v52 = v20;
    v50 = (v19 - 8);
    v49 = *MEMORY[0x1E69D7968];
    v53 = v0;
    do
    {
      v55 = *(v0 + 208);
      v22 = *(v0 + 160);
      v54 = *(v0 + 144);
      v23 = *(v0 + 72);
      v24 = v2;
      v25 = *(v0 + 56);
      v52(v23, v21, v25);
      v26 = swift_allocObject();
      v27 = sub_1D7D2821C();
      v29 = v28;
      v30 = v25;
      v2 = v24;
      (*v50)(v23, v30);
      *(v26 + 16) = v27;
      *(v26 + 24) = v29;
      *v22 = v26;
      v55(v22, v49, v54);
      v32 = *(v24 + 2);
      v31 = *(v24 + 3);
      if (v32 >= v31 >> 1)
      {
        v2 = sub_1D79E4B84((v31 > 1), v32 + 1, 1, v24);
      }

      v0 = v53;
      v33 = *(v53 + 232);
      v34 = *(v53 + 224);
      v35 = *(v53 + 368);
      v36 = *(v53 + 160);
      v37 = *(v53 + 144);
      *(v2 + 2) = v32 + 1;
      v33(&v2[((v35 + 32) & ~v35) + v34 * v32], v36, v37);
      v21 += v51;
      --v18;
    }

    while (v18);
  }

  v38 = *(v0 + 312);
  v39 = *(v0 + 320);
  v40 = *(v0 + 40);
  v41 = *(v0 + 48);
  v42 = sub_1D7D3087C();
  (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
  sub_1D7D3084C();
  v43 = v40;
  v44 = sub_1D7D3083C();
  v45 = swift_allocObject();
  v46 = MEMORY[0x1E69E85E0];
  v45[2] = v44;
  v45[3] = v46;
  v45[4] = v43;
  v45[5] = v2;
  sub_1D7AF9808(0, 0, v41, &unk_1D7D57658, v45);
  sub_1D79EA2D0(v38, v39);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_1D7C04BC8()
{
  *(v0 + 312) = 0;
  *(v0 + 320) = 0xF000000000000000;
  v1 = *(v0 + 272);
  v2 = *(v0 + 264);
  v3 = *(v0 + 128);
  v4 = *(v0 + 80);
  sub_1D7C05850(*(v0 + 32) + *(v0 + 372), v3);
  if (v1(v3, 1, v4) == 1)
  {
    sub_1D7C05B74(*(v0 + 128), &qword_1EC9E6B08, type metadata accessor for DebugRecipe.LoadedRecipe);
  }

  else
  {
    v5 = *(v0 + 208);
    v6 = *(v0 + 176);
    v7 = *(v0 + 144);
    v8 = *(v0 + 96);
    v9 = *(v0 + 80);
    sub_1D7C059A4(*(v0 + 128), v8);
    v10 = swift_allocObject();
    v11 = *(v9 + 20);
    *(v10 + 40) = type metadata accessor for DebugRecipe.LoadedRecipe.Fields(0);
    *(v10 + 48) = sub_1D7C05B2C(&qword_1EC9E6B20, type metadata accessor for DebugRecipe.LoadedRecipe.Fields, &unk_1D7D5C198);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v10 + 16));
    sub_1D7C05A08(v8 + v11, boxed_opaque_existential_1);
    strcpy((v10 + 56), "RecipeFields");
    *(v10 + 69) = 0;
    *(v10 + 70) = -5120;
    *v6 = v10;
    v5(v6, *MEMORY[0x1E69D7950], v7);
    v14 = *(v2 + 2);
    v13 = *(v2 + 3);
    if (v14 >= v13 >> 1)
    {
      v2 = sub_1D79E4B84((v13 > 1), v14 + 1, 1, v2);
    }

    v15 = *(v0 + 232);
    v16 = *(v0 + 224);
    v17 = *(v0 + 176);
    v18 = *(v0 + 144);
    v19 = (*(v0 + 368) + 32) & ~*(v0 + 368);
    sub_1D7C05A6C(*(v0 + 96));
    *(v2 + 2) = v14 + 1;
    v15(&v2[v19 + v16 * v14], v17, v18);
  }

  v20 = *(v0 + 40);
  v21 = OBJC_IVAR____TtC12NewsArticles19RecipeRadarReporter_debugInfoProvider;
  *(v0 + 328) = v2;
  *(v0 + 336) = v21;
  v22 = *(v20 + v21 + 24);
  v23 = *(v20 + v21 + 32);
  __swift_project_boxed_opaque_existential_1((v20 + v21), v22);
  v24 = swift_task_alloc();
  *(v0 + 344) = v24;
  *v24 = v0;
  v24[1] = sub_1D7C04648;
  v26 = *(v0 + 248);
  v25 = *(v0 + 256);

  return MEMORY[0x1EEDF8420](v26, v25, v22, v23);
}

uint64_t sub_1D7C04E5C()
{
  v1 = *(v0 + 328);
  v2 = (*(v0 + 40) + *(v0 + 336));
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v3 = sub_1D7D27D5C();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v0 + 64);
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = v3 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v35 = *(v5 + 56);
    v36 = v6;
    v34 = (v5 - 8);
    v33 = *MEMORY[0x1E69D7968];
    do
    {
      v38 = *(v0 + 208);
      v8 = *(v0 + 160);
      v37 = *(v0 + 144);
      v9 = *(v0 + 72);
      v10 = *(v0 + 56);
      v36(v9, v7, v10);
      v11 = swift_allocObject();
      v12 = sub_1D7D2821C();
      v14 = v13;
      (*v34)(v9, v10);
      *(v11 + 16) = v12;
      *(v11 + 24) = v14;
      *v8 = v11;
      v38(v8, v33, v37);
      v16 = *(v1 + 2);
      v15 = *(v1 + 3);
      if (v16 >= v15 >> 1)
      {
        v1 = sub_1D79E4B84((v15 > 1), v16 + 1, 1, v1);
      }

      v17 = *(v0 + 232);
      v18 = *(v0 + 224);
      v19 = *(v0 + 368);
      v20 = *(v0 + 160);
      v21 = *(v0 + 144);
      *(v1 + 2) = v16 + 1;
      v17(&v1[((v19 + 32) & ~v19) + v18 * v16], v20, v21);
      v7 += v35;
      --v4;
    }

    while (v4);
  }

  v22 = *(v0 + 312);
  v23 = *(v0 + 320);
  v24 = *(v0 + 40);
  v25 = *(v0 + 48);
  v26 = sub_1D7D3087C();
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  sub_1D7D3084C();
  v27 = v24;
  v28 = sub_1D7D3083C();
  v29 = swift_allocObject();
  v30 = MEMORY[0x1E69E85E0];
  v29[2] = v28;
  v29[3] = v30;
  v29[4] = v27;
  v29[5] = v1;
  sub_1D7AF9808(0, 0, v25, &unk_1D7D57658, v29);
  sub_1D79EA2D0(v22, v23);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1D7C051A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v6 = sub_1D7D2B49C();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = sub_1D7D2A5FC();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = MEMORY[0x1E69E6720];
  sub_1D7C05AC8(0, &qword_1EC9E6B28, MEMORY[0x1E69D77E8], MEMORY[0x1E69E6720]);
  v5[16] = swift_task_alloc();
  sub_1D7C05AC8(0, &qword_1EC9E6B30, MEMORY[0x1E69D8750], v8);
  v5[17] = swift_task_alloc();
  sub_1D7D3084C();
  v5[18] = sub_1D7D3083C();
  v10 = sub_1D7D307DC();

  return MEMORY[0x1EEE6DFA0](sub_1D7C053A8, v10, v9);
}

uint64_t sub_1D7C053A8()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 88);
  v14 = *(v0 + 96);
  v15 = *(v0 + 80);
  v7 = *(v0 + 64);

  swift_getObjectType();
  sub_1D7C05AC8(0, &qword_1EC9E6B38, MEMORY[0x1E69D8750], MEMORY[0x1E69D8790]);
  sub_1D7D2C27C();
  sub_1D7D2A12C();
  v8 = sub_1D7D2A13C();
  (*(*(v8 - 8) + 56))(v2, 0, 1, v8);
  (*(v5 + 104))(v3, *MEMORY[0x1E69D79D0], v4);

  sub_1D7D2C19C();
  v9 = sub_1D7D2C1AC();
  (*(*(v9 - 8) + 56))(v1, 0, 1, v9);
  (*(v6 + 104))(v14, *MEMORY[0x1E69D7FB8], v15);
  v10 = *(v7 + OBJC_IVAR____TtC12NewsArticles19RecipeRadarReporter_recipeCoordinator + 8);
  ObjectType = swift_getObjectType();
  (*(v10 + 88))(ObjectType, v10);
  sub_1D7D28A3C();
  sub_1D7C05B2C(&qword_1EE0CB3B0, MEMORY[0x1E698AAC8], MEMORY[0x1E69B5708]);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 1;
  sub_1D7D2B10C();
  swift_allocObject();
  sub_1D7D2B0EC();
  sub_1D7D2A78C();
  sub_1D7C05B74(*(v0 + 136), &qword_1EC9E6B30, MEMORY[0x1E69D8750]);

  **(v0 + 56) = 0;

  v12 = *(v0 + 8);

  return v12();
}

void sub_1D7C057E4(uint64_t a1)
{
  if (!qword_1EC9E6B10)
  {
    sub_1D7D2C8DC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E6B10);
    }
  }
}

uint64_t sub_1D7C05850(uint64_t a1, uint64_t a2)
{
  sub_1D7C05AC8(0, &qword_1EC9E6B08, type metadata accessor for DebugRecipe.LoadedRecipe, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7C058E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D7A4E2D8;

  return sub_1D7C051A8(a1, v4, v5, v7, v6);
}

uint64_t sub_1D7C059A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugRecipe.LoadedRecipe(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7C05A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugRecipe.LoadedRecipe.Fields(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7C05A6C(uint64_t a1)
{
  v2 = type metadata accessor for DebugRecipe.LoadedRecipe(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7C05AC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7C05B2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D7C05B74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7C05AC8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D7C05BF8()
{
  result = qword_1EC9E6B40;
  if (!qword_1EC9E6B40)
  {
    sub_1D7C05C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6B40);
  }

  return result;
}

void sub_1D7C05C50()
{
  if (!qword_1EC9E6B48)
  {
    v0 = sub_1D7D307BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E6B48);
    }
  }
}

unint64_t sub_1D7C05CA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D7C05E94(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D7C05D94()
{
  result = qword_1EE0C6298;
  if (!qword_1EE0C6298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C6298);
  }

  return result;
}

uint64_t sub_1D7C05DE8()
{
  v1 = 0x6F72462065726F4DLL;
  v2 = *v0;
  v3 = 0x6E656D6D6F636552;
  v4 = 0x206F742065726F4DLL;
  if (v2 != 3)
  {
    v4 = 0x6F72462065726F4DLL;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0x646574616C6552;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1D7C05E94(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D7D316EC();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D7C05F08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1D7D2F06C();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v19 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C06434(0, &qword_1EE0BEB00, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C063E0();
  sub_1D7D31AFC();
  if (!v2)
  {
    v14 = v17;
    v13 = v18;
    v20 = 0;
    sub_1D79EB9CC(&qword_1EE0BF738, MEMORY[0x1E69B6128]);
    sub_1D7D317DC();
    (*(v9 + 8))(v12, v8);
    *(v13 + *(type metadata accessor for RelatedEndOfArticleFeedGroupConfigData(0) + 20)) = 1;
    (*(v14 + 32))(v13, v19, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D7C0616C(void *a1, double a2)
{
  v4 = v2;
  sub_1D7C06434(0, &qword_1EC9E6B50, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v13[-v10];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7C063E0();
  sub_1D7D31B1C();
  v13[15] = 0;
  sub_1D7D2F06C();
  sub_1D79EB9CC(&qword_1EC9E1BE8, MEMORY[0x1E69B6120]);
  sub_1D7D318BC();
  if (!v3)
  {
    v13[14] = *(v4 + *(type metadata accessor for RelatedEndOfArticleFeedGroupConfigData(0) + 20));
    v13[13] = 1;
    sub_1D79EBA10();
    sub_1D7D318BC();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D7C06338(uint64_t a1)
{
  v2 = sub_1D7C063E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7C06374(uint64_t a1)
{
  v2 = sub_1D7C063E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D7C063E0()
{
  result = qword_1EE0C15D0;
  if (!qword_1EE0C15D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C15D0);
  }

  return result;
}

void sub_1D7C06434(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7C063E0();
    v7 = a3(a1, &type metadata for RelatedEndOfArticleFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7C064AC()
{
  result = qword_1EC9E6B58;
  if (!qword_1EC9E6B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6B58);
  }

  return result;
}

unint64_t sub_1D7C06504()
{
  result = qword_1EE0C15C0;
  if (!qword_1EE0C15C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C15C0);
  }

  return result;
}

unint64_t sub_1D7C0655C()
{
  result = qword_1EE0C15C8;
  if (!qword_1EE0C15C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C15C8);
  }

  return result;
}

id sub_1D7C065B0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7A3963C();
  result = sub_1D7D28D1C();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D798C3BC(0, &qword_1EE0CBA60, &protocolRef_FCHeadlineProviding);
    result = sub_1D7D28D1C();
    if (result)
    {
      v4 = result;
      v5 = objc_allocWithZone(type metadata accessor for TagSubscriptionStatusProvider());
      return sub_1D7A9BB34(v3, v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7C0667C()
{
  v0 = sub_1D7D2DE9C();
  __swift_allocate_value_buffer(v0, qword_1EE0DE4B8);
  __swift_project_value_buffer(v0, qword_1EE0DE4B8);
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE0CA138;
  return sub_1D7D2DE7C();
}

uint64_t sub_1D7C06728()
{
  v0 = sub_1D7D2DE9C();
  __swift_allocate_value_buffer(v0, qword_1ECA0BC28);
  __swift_project_value_buffer(v0, qword_1ECA0BC28);
  if (qword_1EC9DFD38 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC9E3328;
  return sub_1D7D2DE7C();
}

uint64_t sub_1D7C0681C()
{
  v0 = sub_1D7D2866C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7D2867C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D7D3034C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD00000000000003ELL;
  v12[1] = 0x80000001D7D792A0;
  sub_1D7C07B60(0, &qword_1EE0CB3D8, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0]);
  swift_allocObject();
  result = sub_1D7D2871C();
  qword_1EC9E6BC0 = result;
  return result;
}

uint64_t sub_1D7C06A48()
{
  v0 = sub_1D7D2867C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D7D2866C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.NewsArticlesModules.EndOfArticleFeed.ConfigOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D7D3034C();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D7D285EC();
  qword_1EE0CB6F8 = result;
  return result;
}

uint64_t sub_1D7C06C30()
{
  v0 = sub_1D7D2866C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D7D2867C();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D7C07B60(0, &qword_1EE0CB3D0, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D7D2871C();
  qword_1EE0CB740 = result;
  return result;
}

uint64_t sub_1D7C06E20()
{
  v0 = sub_1D7D2866C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7D2867C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1D7D3034C();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[0] = 0xD00000000000003DLL;
  v12[1] = 0x80000001D7D79180;
  sub_1D7C07B60(0, &qword_1EE0CB3D8, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0]);
  swift_allocObject();
  result = sub_1D7D2871C();
  qword_1EC9E6BC8 = result;
  return result;
}

uint64_t sub_1D7C07050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D7D2866C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v6 + 16))(v9, a4, v5);
  v10 = sub_1D7D285FC();
  (*(v6 + 8))(a4, v5);
  return v10;
}

uint64_t sub_1D7C0717C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D7D2866C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  (*(v6 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v5, v8);
  v10 = sub_1D7D285FC();
  (*(v6 + 8))(a4, v5);
  return v10;
}

uint64_t Settings.NewsArticlesModules.EndOfRecipeFeed.ConfigOverrides.__deallocating_deinit()
{
  _s11TeaSettings0B0C12NewsArticlesE11CompressionV0E9OverridesCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7C072C4()
{
  v0 = sub_1D7D2867C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1D7D2866C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.NewsArticlesModules.EndOfRecipeFeed.ConfigOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1D7D3034C();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1D7D285EC();
  qword_1EC9E6BD0 = result;
  return result;
}

uint64_t sub_1D7C074AC()
{
  v0 = sub_1D7D2867C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D7D2866C();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  sub_1D7C07B60(0, &qword_1EE0CB3D0, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D7D2871C();
  qword_1EC9E6BD8 = result;
  return result;
}

uint64_t sub_1D7C0769C()
{
  v0 = sub_1D7D2867C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D7D2866C();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  sub_1D7C07B60(0, &qword_1EE0CB3D0, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D7D2871C();
  qword_1EC9E6BE0 = result;
  return result;
}

uint64_t sub_1D7C0788C()
{
  v0 = sub_1D7D2867C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D7D2866C();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v11[15] = 0;
  sub_1D7C07B60(0, &qword_1EE0CB3D0, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1D7D2871C();
  qword_1EC9E6BE8 = result;
  return result;
}

void sub_1D7C07B60(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_1D7D2870C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

id sub_1D7C07BE4()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for ArticleBottomPaletteViewController()) init];
    v4 = *(v0 + 64);
    *(v0 + 64) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1D7C07C50()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1D7C07CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a2;
  v4[8] = v3;
  v4[6] = a1;
  v4[9] = sub_1D7D3084C();
  v4[10] = sub_1D7D3083C();
  v8 = swift_task_alloc();
  v4[11] = v8;
  *v8 = v4;
  v8[1] = sub_1D7C07D98;

  return sub_1D7C0807C(a1, a2, a3);
}

uint64_t sub_1D7C07D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[12] = a2;

  v6 = sub_1D7D307DC();

  return MEMORY[0x1EEE6DFA0](sub_1D7C07EE0, v6, v5);
}

uint64_t sub_1D7C07EE0()
{
  v1 = v0[12];

  if (v1)
  {
    v2 = v0[12];
    v3 = v0[3];
    v4 = v0[7];
    v5 = v0[8];
    v6 = v0[6];
    v7 = sub_1D7C08CB8(v0[5]);
    v8 = sub_1D7A7FC04(v6, v4);
    [v7 setBackgroundColor_];

    v9 = sub_1D7C07BE4();
    v10 = v7;
    sub_1D7B0BBA8(v7);

    v14 = *(v5 + 64);
    sub_1D7C08D80();
    v11 = v14;
    sub_1D7D3145C();

    MEMORY[0x1DA70DE90](v3, v2);
    swift_bridgeObjectRelease_n();

    sub_1D7D2C23C();
    swift_allocObject();
    v1 = sub_1D7D2C21C();
  }

  v12 = v0[1];

  return v12(v1);
}

uint64_t sub_1D7C0807C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v3[12] = a1;
  v3[13] = sub_1D7D3084C();
  v3[14] = sub_1D7D3083C();
  v7 = swift_task_alloc();
  v3[15] = v7;
  *v7 = v3;
  v7[1] = sub_1D7C0815C;

  return sub_1D7C0841C((v3 + 7), a1, a2, v4);
}

uint64_t sub_1D7C0815C()
{

  v1 = sub_1D7D307DC();

  return MEMORY[0x1EEE6DFA0](sub_1D7C08298, v1, v0);
}

uint64_t sub_1D7C08298()
{

  if (*(v0 + 80))
  {
    v1 = *(v0 + 96);
    sub_1D79E14FC((v0 + 56), v0 + 16);
    if (v1)
    {
      v2 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      v3 = swift_unknownObjectRetain();
      v4 = sub_1D7BB7128(v3);
      if (v5)
      {
        v8 = v4;
        v9 = v5;
        v10 = v6;
        v11 = v7;
        v12 = [v2 identifier];
        v13 = sub_1D7D3034C();
        v15 = v14;

        sub_1D7C08E3C();
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1D7D3B4D0;
        *(v16 + 32) = v8;
        *(v16 + 40) = v9;
        *(v16 + 48) = v10;
        *(v16 + 56) = v11;
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
        v17 = v16;
        v18 = v15;
        v19 = v13;
        goto LABEL_9;
      }

      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    sub_1D7C08EE0(v0 + 56, &unk_1EE0C17D0, sub_1D7C08DD8);
  }

  v19 = 0;
  v18 = 0;
  v17 = 0;
LABEL_9:
  v20 = *(v0 + 8);

  return v20(v19, v18, v17);
}

uint64_t sub_1D7C0841C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 64) = a2;
  *(v5 + 72) = v4;
  *(v5 + 188) = a4;
  *(v5 + 56) = a1;
  sub_1D7C08E8C(0, &qword_1EE0BF750, MEMORY[0x1E69B6038]);
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = sub_1D7D3084C();
  *(v5 + 96) = sub_1D7D3083C();
  v7 = sub_1D7D307DC();
  *(v5 + 104) = v7;
  *(v5 + 112) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D7C08508, v7, v6);
}

uint64_t sub_1D7C08508(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (v3[8])
  {
    v4 = *(v3[9] + 16);
    v3[15] = v4;
    v5 = *(v4 + 16);
    v3[16] = v5;
    if (v5)
    {
      v3[17] = 0;
      if (*(v4 + 16))
      {
        sub_1D799CC84(v4 + 32, (v3 + 2));
        v3[18] = *__swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
        v3[19] = sub_1D7D3083C();
        v6 = sub_1D7D307DC();
        a3 = v7;
        v3[20] = v6;
        v3[21] = v7;
        a1 = sub_1D7C08644;
        a2 = v6;
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x1EEE6DFA0](a1, a2, a3);
    }

    v8 = v3[7];
  }

  else
  {
    v8 = v3[7];
  }

  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;

  v9 = v3[1];

  return v9();
}

uint64_t sub_1D7C08644()
{
  v1 = *(v0 + 188);
  __swift_project_boxed_opaque_existential_1((*(v0 + 144) + 16), *(*(v0 + 144) + 40));
  if (sub_1D7D2F9CC() & 1) == 0 || (v1)
  {

    v6 = *(v0 + 104);
    v7 = *(v0 + 112);

    return MEMORY[0x1EEE6DFA0](sub_1D7C08B7C, v6, v7);
  }

  else
  {
    v2 = *(v0 + 144);
    v3 = v2[10];
    v4 = v2[11];
    __swift_project_boxed_opaque_existential_1(v2 + 7, v3);
    swift_unknownObjectRetain();
    v5 = swift_task_alloc();
    *(v0 + 176) = v5;
    *v5 = v0;
    v5[1] = sub_1D7C0878C;

    return MEMORY[0x1EEE22440](v3, v4);
  }
}

uint64_t sub_1D7C0878C()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D7C088C0, v3, v2);
}

uint64_t sub_1D7C088C0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);

  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  v4 = [v3 articleID];
  sub_1D7D3034C();

  sub_1D7D2F84C();
  swift_unknownObjectRelease();

  v5 = sub_1D7D2EECC();
  *(v0 + 184) = (*(*(v5 - 8) + 48))(v2, 1, v5);
  sub_1D7C08EE0(v2, &qword_1EE0BF750, MEMORY[0x1E69B6038]);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1D7C08A10, v6, v7);
}

uint64_t sub_1D7C08A10()
{
  if (*(v0 + 184) != 1)
  {
    v7 = *(v0 + 56);

    sub_1D799CC84(v0 + 16, v7);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_5;
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 136) + 1;
  v3 = __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v2 == v1)
  {

    v6 = *(v0 + 56);
    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
LABEL_5:

    v8 = *(v0 + 8);

    return v8();
  }

  v10 = *(v0 + 136) + 1;
  *(v0 + 136) = v10;
  v11 = *(v0 + 120);
  if (v10 >= *(v11 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_1D799CC84(v11 + 40 * v10 + 32, v0 + 16);
    *(v0 + 144) = *__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 152) = sub_1D7D3083C();
    v12 = sub_1D7D307DC();
    v5 = v13;
    *(v0 + 160) = v12;
    *(v0 + 168) = v13;
    v3 = sub_1D7C08644;
    v4 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D7C08B7C()
{
  v1 = v0[16];
  v2 = v0[17] + 1;
  v3 = __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v2 == v1)
  {

    v6 = v0[7];
    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[17] + 1;
    v0[17] = v9;
    v10 = v0[15];
    if (v9 >= *(v10 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_1D799CC84(v10 + 40 * v9 + 32, (v0 + 2));
      v0[18] = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      v0[19] = sub_1D7D3083C();
      v11 = sub_1D7D307DC();
      v5 = v12;
      v0[20] = v11;
      v0[21] = v12;
      v3 = sub_1D7C08644;
      v4 = v11;
    }

    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }
}

id sub_1D7C08CB8(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for ArticleNavigationBarPaletteContent()) initWithFrame_];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 56;
    do
    {
      v5 = *(v4 - 8);
      v4 += 32;

      v7 = v5(v6);
      [v2 addSubview_];

      --v3;
    }

    while (v3);
  }

  return v2;
}

unint64_t sub_1D7C08D80()
{
  result = qword_1EC9E6F90;
  if (!qword_1EC9E6F90)
  {
    type metadata accessor for ArticleBottomPaletteViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6F90);
  }

  return result;
}

unint64_t sub_1D7C08DD8()
{
  result = qword_1EE0C17E0;
  if (!qword_1EE0C17E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0C17E0);
  }

  return result;
}

void sub_1D7C08E3C()
{
  if (!qword_1EC9E6C00)
  {
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E6C00);
    }
  }
}

void sub_1D7C08E8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7C08EE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7C08E8C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7C08F3C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1D7C09034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticleNavigationAction(0);
  MEMORY[0x1EEE9AC00](v6, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  (*(a3 + 112))(a1, v8, a2, a3);
  return sub_1D7C0E7C0(v8, type metadata accessor for ArticleNavigationAction);
}

void sub_1D7C09110()
{
  swift_getObjectType();
  sub_1D7D3011C();
  sub_1D7D294BC();
  sub_1D7AE6C50();
  v0 = sub_1D7D30E1C();
  sub_1D7D2BA4C();
  sub_1D7D293BC();

  v1 = sub_1D7D2934C();
  sub_1D7D293CC();

  v2 = sub_1D7D30E1C();
  sub_1D7D293EC();
}

uint64_t sub_1D7C09270(void *a1)
{
  v1 = swift_unknownObjectRetain();
  v2 = sub_1D7B1FF4C(v1);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1D7C09308(void *a1, void *a2)
{
  (*(*((*MEMORY[0x1E69E7D40] & *a2) + 0x58) + 40))(*a1, *((*MEMORY[0x1E69E7D40] & *a2) + 0x50));
  sub_1D7BEC448(0);
  sub_1D7C0E5E0(&qword_1EE0C0030, sub_1D7BEC448, MEMORY[0x1E69D7A50]);
  v2 = sub_1D7D2A6BC();

  return v2;
}

uint64_t sub_1D7C09430(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69E7D40];
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_1D7D294EC();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v5 = (a2 + *((*v3 & *a2) + 0xD8));
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  result = sub_1D7D2F9EC();
  if ((result & 1) == 0)
  {
    return sub_1D7C0954C();
  }

  return result;
}

uint64_t sub_1D7C0954C()
{
  v159 = sub_1D7D2836C();
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159, v1);
  v157 = &v145 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C0E6AC(0, &qword_1EE0C0048, sub_1D7A2B04C);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v153 = &v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v152 = &v145 - v8;
  sub_1D7C0E884(0);
  v165 = v9;
  v164 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v151 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v162 = &v145 - v14;
  sub_1D7C0E8A4(0);
  v170 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v161 = &v145 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v169 = &v145 - v20;
  v21 = sub_1D7D2CCDC();
  v172 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v156 = &v145 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v154 = &v145 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v150 = &v145 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v163 = &v145 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v160 = &v145 - v35;
  v155 = v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v171 = &v145 - v39;
  v40 = sub_1D7D283FC();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v42);
  v176 = &v145 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v175 = &v145 - v46;
  v47 = sub_1D7D2B52C();
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v168 = &v145 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C0E950(0, &qword_1EE0C0080, MEMORY[0x1E69D7840]);
  MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v167 = &v145 - v52;
  sub_1D7A2B04C(0);
  v180 = v53;
  v54 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v55);
  v181 = &v145 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AE8404(0);
  v58 = v57;
  v59 = *(v57 - 1);
  MEMORY[0x1EEE9AC00](v57, v60);
  v166 = &v145 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62, v63);
  v65 = &v145 - v64;
  v174 = v0;
  sub_1D7D2A6EC();
  v182 = v186[0];
  sub_1D7C0E628(0, v66);
  sub_1D7C0E5E0(&qword_1EE0C0000, sub_1D7C0E628, MEMORY[0x1E69D7A78]);
  sub_1D7D2AEEC();

  sub_1D7C0E5E0(&unk_1EE0BFC50, sub_1D7AE8404, MEMORY[0x1E69D8810]);
  sub_1D7D309EC();
  sub_1D7D30A5C();
  if (sub_1D7D30A4C() < 2)
  {
    return (*(v59 + 8))(v65, v58);
  }

  v149 = v54;
  v173 = v59;
  v146 = v21;
  v147 = v41;
  v148 = v40;
  sub_1D7D309EC();
  sub_1D7D30A5C();
  v68 = v182;
  v69 = v65;
  if (v182 == v186[0])
  {
    return (*(v173 + 8))(v69, v58);
  }

  v178 = (v149 + 16);
  v179 = (v149 + 8);
  v70 = v180;
  v71 = v181;
  while (1)
  {
    v72 = sub_1D7D30AAC();
    v73 = *v178;
    (*v178)(v71);
    v72(v186, 0);
    sub_1D7D2A43C();
    v74 = v58;
    v185 = v186[0];
    v75 = EndOfArticleSectionDescriptor.type.getter(&v184);
    v76 = *v179;
    (*v179)(v71, v70, v75);

    if (!v184)
    {
      break;
    }

    sub_1D7D30A6C();
    sub_1D7D30A5C();
    v68 = v182;
    v58 = v74;
    if (v182 == v186[0])
    {
      return (*(v173 + 8))(v69, v58);
    }
  }

  sub_1D7D309EC();
  sub_1D7D30A5C();
  v77 = v182;
  if (v182 == v186[0])
  {
LABEL_12:
    v82 = *(v173 + 8);
    v83 = v69;
    return v82(v83, v74);
  }

  v78 = v180;
  v79 = v181;
  while (1)
  {
    v177 = v77;
    v80 = sub_1D7D30AAC();
    v73(v79);
    v80(v186, 0);
    sub_1D7D2A43C();
    v185 = v186[0];
    v81 = EndOfArticleSectionDescriptor.type.getter(&v184);
    v76(v79, v78, v81);

    if (v184 == 1)
    {
      break;
    }

    sub_1D7D30A6C();
    sub_1D7D30A5C();
    v77 = v182;
    if (v182 == v186[0])
    {
      goto LABEL_12;
    }
  }

  v84 = v68;
  sub_1D7D2C81C();
  sub_1D7C0E5E0(&qword_1EE0C0060, sub_1D7A2B04C, MEMORY[0x1E69D79A0]);
  v85 = v180;
  sub_1D7D309EC();
  sub_1D7D30A5C();
  v86 = v181;
  (v76)(v181, v85);
  if (v186[0] == v182)
  {
    return (*(v173 + 8))(v69, v74);
  }

  sub_1D7D2C81C();
  sub_1D7D309EC();
  sub_1D7D30A5C();
  (v76)(v86, v85);
  if (v186[0] == v182)
  {
    return (*(v173 + 8))(v69, v74);
  }

  (*(v173 + 16))(v166, v69, v74);
  v186[0] = *(v174 + *((*MEMORY[0x1E69E7D40] & *v174) + 0xA8));
  sub_1D7B56C18(0);
  sub_1D7C0E5E0(&unk_1EE0BFE58, sub_1D7B56C18, MEMORY[0x1E69D7EB0]);
  sub_1D7D2B77C();
  sub_1D7D2BD5C();
  sub_1D7C0EA10(0, &qword_1EE0BF8F0, MEMORY[0x1E69B5B68]);
  swift_allocObject();
  v87 = sub_1D7D2E6BC();
  if (v177 >= v84)
  {
    v88 = v84;
  }

  else
  {
    v88 = v177;
  }

  if (v177 <= v84)
  {
    v89 = v84;
  }

  else
  {
    v89 = v177;
  }

  v90 = v69;
  v91 = v175;
  MEMORY[0x1DA705E40](0, v88);
  v92 = v176;
  MEMORY[0x1DA705E40](0, v89);
  v93 = v169;
  sub_1D7D2E6AC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v94 = v93;
    v95 = v164;
    v96 = v162;
    v97 = v165;
    (*(v164 + 32))(v162, v94, v165);
    sub_1D7C0E5E0(&unk_1EE0BF908, sub_1D7C0E884, MEMORY[0x1E69B5B60]);
    swift_willThrowTypedImpl();

    (*(v95 + 8))(v96, v97);
    v98 = *(v147 + 8);
    v99 = v148;
    v98(v92, v148);
    v98(v91, v99);
    v82 = *(v173 + 8);
    v83 = v90;
    return v82(v83, v74);
  }

  v178 = v90;
  v181 = v74;
  v100 = (v172 + 32);
  v101 = *(v172 + 32);
  v102 = v87;
  v103 = v160;
  v104 = v146;
  v101(v160, v93, v146);
  v101(v171, v103, v104);
  v105 = v161;
  sub_1D7D2E6AC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v106 = v105;
    v107 = v164;
    v108 = v151;
    v109 = v165;
    (*(v164 + 32))(v151, v106, v165);
    sub_1D7C0E5E0(&unk_1EE0BF908, sub_1D7C0E884, MEMORY[0x1E69B5B60]);
    swift_willThrowTypedImpl();

    (*(v107 + 8))(v108, v109);
    (*(v172 + 8))(v171, v104);
    v110 = *(v147 + 8);
    v111 = v148;
    v110(v176, v148);
    v112 = v91;
  }

  else
  {
    v177 = v102;
    v113 = v150;
    v101(v150, v105, v104);
    v101(v163, v113, v104);
    v186[0] = 0;
    v186[1] = 0xE000000000000000;
    v114 = v152;
    sub_1D7D2C7AC();
    v115 = *(v149 + 48);
    v116 = v180;
    v117 = v115(v114, 1, v180);
    v169 = v100;
    v118 = v101;
    if (v117 == 1)
    {
      sub_1D7C0F3D4(v114, &qword_1EE0C0048, sub_1D7A2B04C);
      v119 = 0;
      v120 = 0;
    }

    else
    {
      v119 = sub_1D7D2A44C();
      v120 = v121;
      (v76)(v114, v116);
    }

    v122 = v159;
    v123 = v157;
    v124 = v153;
    v170 = v118;
    v182 = v119;
    v183 = v120;
    sub_1D7992238();
    sub_1D7D315DC();

    MEMORY[0x1DA70DE90](45, 0xE100000000000000);
    sub_1D7D2C7AC();
    if (v115(v124, 1, v116) == 1)
    {
      sub_1D7C0F3D4(v124, &qword_1EE0C0048, sub_1D7A2B04C);
      v125 = 0;
      v126 = 0;
    }

    else
    {
      v125 = sub_1D7D2A44C();
      v126 = v127;
      (v76)(v124, v116);
    }

    v182 = v125;
    v183 = v126;
    sub_1D7D315DC();

    v180 = v186[0];
    v128 = (v174 + *((*MEMORY[0x1E69E7D40] & *v174) + 0xC8));
    v129 = v128[4];
    v179 = v128[3];
    v168 = v129;
    v174 = __swift_project_boxed_opaque_existential_1(v128, v179);
    sub_1D7D2835C();
    v167 = sub_1D7D2834C();
    v166 = v130;
    (*(v158 + 8))(v123, v122);
    v131 = dispatch_group_create();
    v133 = v171;
    v132 = v172;
    v134 = *(v172 + 16);
    v135 = v154;
    v136 = v146;
    v134(v154, v171, v146);
    v137 = v156;
    v134(v156, v163, v136);
    v138 = *(v132 + 80);
    v139 = (v138 + 16) & ~v138;
    v140 = (v155 + v138 + v139) & ~v138;
    v141 = swift_allocObject();
    v142 = v135;
    v143 = v170;
    v170(v141 + v139, v142, v136);
    v143(v141 + v140, v137, v136);
    sub_1D7D2E88C();

    v144 = *(v132 + 8);
    v144(v163, v136);
    v144(v133, v136);
    v110 = *(v147 + 8);
    v111 = v148;
    v110(v176, v148);
    v112 = v175;
  }

  v110(v112, v111);
  return (*(v173 + 8))(v178, v181);
}

uint64_t sub_1D7C0A8CC(uint64_t a1)
{
  if (qword_1EE0CA130 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE0CA138;
  v2 = sub_1D7D30C4C();
  sub_1D79A02D8(0, &qword_1EE0BE810, &qword_1EE0BE7B0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7D3B4D0;
  sub_1D798F168(0, &qword_1EE0BE7E0, MEMORY[0x1E69E7280]);
  sub_1D7D315DC();
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1D79D6AE0();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_1D7D29AAC("End of article request failed, error=%{public}@", 47, 2, &dword_1D7987000, v1, v2, v3);
}

double sub_1D7C0AA24()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  v4[2] = *((v2 & v1) + 0x50);
  v4[3] = *((v2 & v1) + 0x58);
  v4[4] = v3;

  sub_1D7D2A72C();

  return result;
}

void sub_1D7C0AB28(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        *(swift_allocObject() + 16) = v4;
        swift_unknownObjectRetain();
        sub_1D7D294EC();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1D7C0AC24(uint64_t a1, char a2, uint64_t a3, double a4)
{
  v5 = v4;
  v32 = a3;
  sub_1D7C0E6AC(0, &qword_1EC9E6C70, type metadata accessor for RouteModel);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for RouteModel(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ArticleNavigationAction(0);
  MEMORY[0x1EEE9AC00](v33, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C0F430(v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0xB8), v34, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  v19 = v35;
  if (v35)
  {
    v31 = v11;
    v20 = v15;
    v21 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    v22 = *(v21 + 56);
    v23 = v21;
    v15 = v20;
    v11 = v31;
    v22(a1, v19, v23);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    sub_1D79E1030(v34, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  }

  swift_storeEnumTagMultiPayload();
  sub_1D7C0B050(a1, v18, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D7C0E7C0(v18, type metadata accessor for ArticleNavigationAction);
    sub_1D7C0F3D4(v10, &qword_1EC9E6C70, type metadata accessor for RouteModel);
  }

  else
  {
    sub_1D7B5A834(v10, v15);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = Strong;
      v26 = __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
      v27 = *(v25 + 88);
      v28 = *v26;
      v29 = *(*v26 + 40);
      v30 = *(*v26 + 48);
      __swift_project_boxed_opaque_existential_1((*v26 + 16), v29);
      sub_1D799CC84(v28 + 56, v34);
      (*(v30 + 32))(v15, v32, v27, v34, v29, v30);
      sub_1D79E1030(v34, &qword_1EE0BFAE0, &qword_1EE0CBDD0, MEMORY[0x1E69B41B8]);
      sub_1D7C0E7C0(v15, type metadata accessor for RouteModel);
      sub_1D7C0E7C0(v18, type metadata accessor for ArticleNavigationAction);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7C0E7C0(v15, type metadata accessor for RouteModel);
      sub_1D7C0E7C0(v18, type metadata accessor for ArticleNavigationAction);
    }
  }
}

uint64_t sub_1D7C0B050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a2;
  v93 = a3;
  v4 = sub_1D7D2D5CC();
  v81 = *(v4 - 8);
  v82 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v80 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A57AE8(0);
  v86 = v7;
  v83 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v85 = v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AE8404(0);
  v91 = *(v10 - 8);
  v92 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v90 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArticleBlueprintRouteResult(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v89 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D7D2ED3C();
  v78 = *(v16 - 8);
  v79 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2AFB8(0);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for ArticleBlueprintRouteRequest(0);
  MEMORY[0x1EEE9AC00](v84, v26);
  v28 = v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A57998(0);
  v94 = *(v29 - 8);
  v95 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for EndOfArticleModel(0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = v76 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D29EEC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74(0);
    v79 = *(v37 + 48);
    v38 = v83;
    (*(v83 + 32))();
    v39 = *(v22 + 16);
    v76[1] = a1;
    v39(v25, a1, v21);
    v40 = v80;
    sub_1D7D2EBCC();
    v41 = sub_1D7D2D5BC();
    (*(v81 + 8))(v40, v82);
    *(v28 + 10) = 0;
    *(v28 + 3) = 0u;
    *(v28 + 4) = 0u;
    v28[88] = -1;
    v42 = *(v84 + 36);
    v43 = *MEMORY[0x1E69B5EB0];
    v44 = sub_1D7D2EB7C();
    (*(*(v44 - 8) + 104))(&v28[v42], v43, v44);
    v45 = sub_1D7D29ECC();
    v47 = v46;
    (*(v22 + 8))(v25, v21);
    *v28 = v45;
    *(v28 + 1) = v47;
    *(v28 + 2) = 0;
    *(v28 + 3) = 0;
    *(v28 + 4) = v41;
    *(v28 + 20) = 512;
    v48 = v89;
    sub_1D7B49DB0(v28, v88, &off_1F52AC060, v87, 0, 0, v89);
    sub_1D7B4C208(0);
    v50 = *(v49 + 48);
    v51 = v93;
    sub_1D7C0E648(v48, v93);
    sub_1D7D2A6EC();
    v96 = v97;
    sub_1D7C0E628(0, v52);
    sub_1D7C0E5E0(&qword_1EE0C0000, sub_1D7C0E628, MEMORY[0x1E69D7A78]);
    v53 = v90;
    sub_1D7D2AEEC();

    v55 = sub_1D7C0BB18(v54);
    (*(v91 + 8))(v53, v92);
    sub_1D7C0E7C0(v48, type metadata accessor for ArticleBlueprintRouteResult);
    sub_1D7C0E7C0(v28, type metadata accessor for ArticleBlueprintRouteRequest);
    (*(v38 + 8))(v85, v86);
    *(v51 + v50) = v55;
    v56 = type metadata accessor for RouteModel(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v56 - 8) + 56))(v51, 0, 1, v56);
    return (*(v94 + 8))(&v36[v79], v95);
  }

  else
  {
    v58 = *(v94 + 32);
    v77 = v32;
    v58(v32, v36, v95);
    (*(v22 + 16))(v25, a1, v21);
    sub_1D7D2EBCC();
    v59 = sub_1D7D2ED1C();
    (*(v78 + 8))(v19, v79);
    v60 = v88;
    sub_1D7C0BA88(v88, (v28 + 48));
    v61 = *(v84 + 36);
    v62 = *MEMORY[0x1E69B5EB0];
    v63 = sub_1D7D2EB7C();
    (*(*(v63 - 8) + 104))(&v28[v61], v62, v63);
    v64 = sub_1D7D29ECC();
    v66 = v65;
    (*(v22 + 8))(v25, v21);
    *v28 = v64;
    *(v28 + 1) = v66;
    *(v28 + 2) = 0;
    *(v28 + 3) = 0;
    *(v28 + 4) = v59;
    *(v28 + 20) = 512;
    v67 = v89;
    sub_1D7B49DB0(v28, v60, &off_1F52AC060, v87, 0, 0, v89);
    sub_1D7B4C208(0);
    v69 = *(v68 + 48);
    v70 = v93;
    sub_1D7C0E648(v67, v93);
    sub_1D7D2A6EC();
    v96 = v97;
    sub_1D7C0E628(0, v71);
    sub_1D7C0E5E0(&qword_1EE0C0000, sub_1D7C0E628, MEMORY[0x1E69D7A78]);
    v72 = v90;
    sub_1D7D2AEEC();

    v74 = sub_1D7C0BB18(v73);
    (*(v91 + 8))(v72, v92);
    sub_1D7C0E7C0(v67, type metadata accessor for ArticleBlueprintRouteResult);
    sub_1D7C0E7C0(v28, type metadata accessor for ArticleBlueprintRouteRequest);
    (*(v94 + 8))(v77, v95);
    *(v70 + v69) = v74;
    v75 = type metadata accessor for RouteModel(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v75 - 8) + 56))(v70, 0, 1, v75);
  }
}

uint64_t sub_1D7C0BA88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = (*(a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x68)) + OBJC_IVAR___NAArticleFooterContext_articleGroupData);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  if (v5 >> 1 == 0xFFFFFFFF)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = -1;
  }

  else
  {
    *(a2 + 40) = 1;
    v7 = v3;
    v8 = v4;
    v9 = v5;
    v10 = v6;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  return sub_1D7A03D0C(v3, v4, v5, v6);
}

BOOL sub_1D7C0BB18(double a1)
{
  sub_1D7C0E6AC(0, &qword_1EE0C0048, sub_1D7A2B04C);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v11 - v3;
  sub_1D7A2AFB8(0);
  sub_1D7D29ECC();
  sub_1D7AE8404(0);
  sub_1D7D2C79C();

  sub_1D7A2B04C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  if ((*(v7 + 48))(v4, 1, v5) == 1)
  {
    sub_1D7C0F3D4(v4, &qword_1EE0C0048, sub_1D7A2B04C);
    return 0;
  }

  else
  {
    sub_1D7D2A43C();
    v9 = v11[1];
    (*(v7 + 8))(v4, v6);
    v8 = v9 >> 61 == 4;
  }

  return v8;
}

uint64_t sub_1D7C0BCB0(double a1)
{
  sub_1D7C0F430(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xB8), v5, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  v2 = v6;
  if (!v6)
  {
    return sub_1D79E1030(v5, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  }

  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 8))(v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_1D7C0BD88(uint64_t a1, double a2)
{
  sub_1D7C0F430(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xB8), v7, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  v4 = v8;
  if (!v8)
  {
    return sub_1D79E1030(v7, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  }

  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 16))(a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_1D7C0BE68(uint64_t a1, double a2)
{
  sub_1D7C0F430(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xB8), v7, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  v4 = v8;
  if (!v8)
  {
    return sub_1D79E1030(v7, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  }

  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 24))(a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_1D7C0BF48(uint64_t a1, double a2)
{
  sub_1D7C0F430(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xB8), v7, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  v4 = v8;
  if (!v8)
  {
    return sub_1D79E1030(v7, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  }

  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 32))(a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_1D7C0C028(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EndOfArticleModel(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2AFB8(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v20[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C0E700(0, &unk_1EE0BB2C8, MEMORY[0x1E69D7BE8]);
  sub_1D7D2AB9C();
  sub_1D7D29EEC();
  (*(v10 + 8))(v13, v9);
  v14 = EndOfArticleModel.headline.getter();
  sub_1D7C0E7C0(v7, type metadata accessor for EndOfArticleModel);
  v15 = MEMORY[0x1E69E7D40];
  if (v14)
  {
    [*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xC0)) markArticleAsSeenWithHeadline_];
    swift_unknownObjectRelease();
  }

  sub_1D7C0F430(v2 + *((*v15 & *v2) + 0xB8), v20, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  v16 = v21;
  if (!v21)
  {
    return sub_1D79E1030(v20, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  }

  v17 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  (*(v17 + 40))(a1, v16, v17);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_1D7C0C2A0(uint64_t a1, double a2)
{
  sub_1D7C0F430(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xB8), v7, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  v4 = v8;
  if (!v8)
  {
    return sub_1D79E1030(v7, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  }

  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 48))(a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_1D7C0C380(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v37 = a3;
  v35 = a2;
  v36 = MEMORY[0x1E69B4228];
  sub_1D7C0E6AC(0, &unk_1EE0BFAD0, MEMORY[0x1E69B4228]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v28 - v7;
  v9 = sub_1D7D2CCFC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D7D2CD1C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  (*(v10 + 104))(v13, *MEMORY[0x1E69B4008], v9);
  sub_1D7D2CD0C();
  sub_1D7C0E5E0(&qword_1EE0BFB50, MEMORY[0x1E69B4028], MEMORY[0x1E69B4020]);
  sub_1D7D2CFDC();
  (*(v15 + 8))(v18, v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = *MEMORY[0x1E69B4210];
  v33 = sub_1D7D2D02C();
  v21 = *(v33 - 8);
  v32 = *(v21 + 104);
  v34 = v21 + 104;
  v32(v8, v20, v33);
  v31 = *MEMORY[0x1E69B4220];
  v22 = v31;
  v23 = sub_1D7D2D03C();
  v24 = *(v23 - 8);
  v30 = *(v24 + 104);
  v30(v8, v22, v23);
  v29 = *(v24 + 56);
  v29(v8, 0, 1, v23);
  sub_1D7D2CCDC();
  sub_1D7C0E5E0(&unk_1EE0BFB60, MEMORY[0x1E69B3FD8], MEMORY[0x1E69B3FD0]);
  sub_1D7D2CFAC();
  v25 = v36;
  sub_1D7C0F3D4(v8, &unk_1EE0BFAD0, v36);
  v26 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v32(v8, *MEMORY[0x1E69B4218], v33);
  v30(v8, v31, v23);
  v29(v8, 0, 1, v23);
  sub_1D7D2CFAC();
  return sub_1D7C0F3D4(v8, &unk_1EE0BFAD0, v25);
}

uint64_t sub_1D7C0C7E4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = a5;
  if (a4)
  {
    sub_1D7D309AC();
    if (!v11)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a5)
  {
LABEL_3:
    v11 = sub_1D7D309AC();
  }

LABEL_4:
  if (a6)
  {
    sub_1D7D309AC();
  }

  v14 = a3;
  v15 = a7;
  v16 = a1;
  if (v15)
  {
    sub_1D7D309AC();
  }

  sub_1D7C0EBD0(v11, a8);
}

void sub_1D7C0C96C(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  sub_1D79C92AC(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);

  swift_unknownObjectRelease();

  (*(*(*((v4 & v2) + 0x50) - 8) + 8))(&a1[*((*v3 & *a1) + 0x98)]);
  swift_unknownObjectRelease();

  sub_1D79E1030(&a1[*((*v3 & *a1) + 0xB8)], &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);

  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xC8)]);

  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xD8)]);
  v5 = *&a1[*((*v3 & *a1) + 0xE0)];
}

double sub_1D7C0CC9C(uint64_t a1, double a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v174 = *MEMORY[0x1E69E7D40] & v5;
  v177 = sub_1D7D2E53C();
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177, v7);
  v9 = v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_1D7D2D5DC();
  v189 = *(v193 - 1);
  MEMORY[0x1EEE9AC00](v193, v10);
  v12 = v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C0E54C(0);
  v185 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v167 = v157 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v171 = v157 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v157 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v163 = v157 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v172 = v157 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v179 = v157 - v31;
  sub_1D7A2B04C(0);
  v183 = v32;
  v180 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v33);
  v166 = v157 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v182 = v157 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v158 = v157 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v170 = v157 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v187 = v157 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v160 = v157 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v178 = v157 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v192 = v157 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v165 = v157 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v162 = v157 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  v181 = v157 - v64;
  MEMORY[0x1EEE9AC00](v65, v66);
  v157[1] = v157 - v67;
  MEMORY[0x1EEE9AC00](v68, v69);
  v169 = v157 - v70;
  MEMORY[0x1EEE9AC00](v71, v72);
  v186 = (v157 - v73);
  MEMORY[0x1EEE9AC00](v74, v75);
  v159 = v157 - v76;
  MEMORY[0x1EEE9AC00](v77, v78);
  v80 = v157 - v79;
  MEMORY[0x1EEE9AC00](v81, v82);
  v191 = v157 - v83;
  MEMORY[0x1EEE9AC00](v84, v85);
  v164 = v157 - v86;
  sub_1D7AE8404(0);
  v188 = v87;
  v190 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v88);
  v184 = v157 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v90, v91);
  v93 = v157 - v92;
  v173 = *(v3 + *((v6 & v5) + 0x90));
  sub_1D7D2A6EC();
  v194 = v197;
  sub_1D7C0E628(0, v94);
  sub_1D7C0E5E0(&qword_1EE0C0000, sub_1D7C0E628, MEMORY[0x1E69D7A78]);
  sub_1D7D2AEEC();

  v95 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xD8);
  v175 = v3;
  __swift_project_boxed_opaque_existential_1((v3 + v95), *(v3 + v95 + 24));
  if ((sub_1D7D2F9EC() & 1) == 0)
  {
    sub_1D7D2E50C();
    v109 = sub_1D7D2D58C();
    (*(v189 + 1))(v12, v193);
    v100 = v188;
    v101 = v22;
    if (v109 != 1102)
    {
      if (v109 == 1101)
      {
        v168 = a1;
        v161 = v9;
        v130 = *(v190 + 16);
        v189 = v93;
        v191 = (v190 + 16);
        v186 = v130;
        v130(v184, v93, v188);
        v131 = sub_1D7C0E5E0(&qword_1EE0BFC60, sub_1D7AE8404, MEMORY[0x1E69D8808]);
        v132 = v171;
        v181 = v131;
        sub_1D7D304FC();
        v133 = *(v185 + 36);
        sub_1D7C0E5E0(&unk_1EE0BFC50, sub_1D7AE8404, MEMORY[0x1E69D8810]);
        sub_1D7D30A5C();
        v134 = v183;
        v135 = v170;
        if (*(v132 + v133) != v197)
        {
          v136 = (v180 + 16);
          v192 = (v180 + 32);
          v193 = (v180 + 8);
          while (1)
          {
            v137 = sub_1D7D30AAC();
            v138 = v187;
            (*v136)(v187);
            v137(&v197, 0);
            sub_1D7D30A6C();
            v139 = *v192;
            (*v192)(v135, v138, v134);
            sub_1D7D2A43C();
            v140 = v134;
            v194 = v197;
            EndOfArticleSectionDescriptor.type.getter(&v196);

            if (v196 == 1)
            {
              break;
            }

            (*v193)(v135, v134);
            sub_1D7D30A5C();
            if (*(v132 + v133) == v197)
            {
              goto LABEL_26;
            }
          }

          sub_1D7C0E7C0(v132, sub_1D7C0E54C);
          v156 = &v192;
          goto LABEL_46;
        }

LABEL_26:
        sub_1D7C0E7C0(v132, sub_1D7C0E54C);
        v186(v184, v189, v100);
        v101 = v167;
        sub_1D7D304FC();
        v141 = *(v185 + 36);
        sub_1D7D30A5C();
        v142 = v166;
        if (*(v101 + v141) != v197)
        {
          v143 = (v180 + 16);
          v192 = (v180 + 32);
          v193 = (v180 + 8);
          while (1)
          {
            v144 = sub_1D7D30AAC();
            v145 = v182;
            (*v143)(v182);
            v144(&v197, 0);
            sub_1D7D30A6C();
            v146 = *v192;
            (*v192)(v142, v145, v134);
            sub_1D7D2A43C();
            v140 = v134;
            v194 = v197;
            EndOfArticleSectionDescriptor.type.getter(&v196);

            if (v196 == 3)
            {
              break;
            }

            (*v193)(v142, v134);
            sub_1D7D30A5C();
            if (*(v101 + v141) == v197)
            {
              goto LABEL_36;
            }
          }

          sub_1D7C0E7C0(v101, sub_1D7C0E54C);
          v153 = v158;
          v146(v158, v142, v134);
          v154 = v177;
          v155 = v161;
          goto LABEL_47;
        }

LABEL_36:
        v129 = v101;
LABEL_37:
        sub_1D7C0E7C0(v129, sub_1D7C0E54C);
        goto LABEL_38;
      }

      if (v109)
      {
        (*(v190 + 8))(v93, v188);
        return result;
      }
    }

    v168 = a1;
    v161 = v9;
    v110 = *(v190 + 16);
    v189 = v93;
    v110(v184, v93, v188);
    sub_1D7C0E5E0(&qword_1EE0BFC60, sub_1D7AE8404, MEMORY[0x1E69D8808]);
    sub_1D7D304FC();
    v111 = *(v185 + 36);
    sub_1D7C0E5E0(&unk_1EE0BFC50, sub_1D7AE8404, MEMORY[0x1E69D8810]);
    sub_1D7D30A5C();
    v112 = v183;
    v113 = v178;
    if (*&v22[v111] != v197)
    {
      v114 = (v180 + 16);
      v191 = (v180 + 32);
      v193 = (v180 + 8);
      while (1)
      {
        v115 = sub_1D7D30AAC();
        v116 = v192;
        (*v114)(v192);
        v115(&v197, 0);
        sub_1D7D30A6C();
        v117 = *v191;
        (*v191)(v113, v116, v112);
        sub_1D7D2A43C();
        v118 = v112;
        v194 = v197;
        EndOfArticleSectionDescriptor.type.getter(&v196);

        if (!v196)
        {
          break;
        }

        (*v193)(v113, v112);
        sub_1D7D30A5C();
        if (*(v101 + v111) == v197)
        {
          goto LABEL_36;
        }
      }

      sub_1D7C0E7C0(v101, sub_1D7C0E54C);
      v153 = v165;
      v117(v165, v113, v112);
      v154 = v177;
      v155 = v161;
      v140 = v118;
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  v189 = v93;
  v96 = sub_1D7D2E51C();
  v98 = v97;
  v197 = v96;
  v198 = v97;
  v194 = 0x65526F5465726F6DLL;
  v195 = 0xEA00000000006461;
  sub_1D79EF194();
  v99 = sub_1D7D3136C();
  v168 = a1;
  if (v99)
  {
    v161 = v9;

    v100 = v188;
    (*(v190 + 16))(v184, v189, v188);
    sub_1D7C0E5E0(&qword_1EE0BFC60, sub_1D7AE8404, MEMORY[0x1E69D8808]);
    v101 = v179;
    sub_1D7D304FC();
    v102 = *(v185 + 36);
    sub_1D7C0E5E0(&unk_1EE0BFC50, sub_1D7AE8404, MEMORY[0x1E69D8810]);
    sub_1D7D30A5C();
    v103 = v183;
    if (*(v101 + v102) != v197)
    {
      v104 = (v180 + 16);
      v192 = (v180 + 32);
      v193 = (v180 + 8);
      while (1)
      {
        v105 = sub_1D7D30AAC();
        v106 = v191;
        (*v104)(v191);
        v105(&v197, 0);
        sub_1D7D30A6C();
        v107 = *v192;
        (*v192)(v80, v106, v103);
        sub_1D7D2A43C();
        v108 = v103;
        v194 = v197;
        EndOfArticleSectionDescriptor.type.getter(&v196);

        if (v196 == 3)
        {
          break;
        }

        (*v193)(v80, v103);
        sub_1D7D30A5C();
        if (*(v101 + v102) == v197)
        {
          goto LABEL_36;
        }
      }

      sub_1D7C0E7C0(v101, sub_1D7C0E54C);
      v153 = v164;
      v107(v164, v80, v103);
      v154 = v177;
      v155 = v161;
      v140 = v108;
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  v197 = v96;
  v198 = v98;
  v194 = 0x646574616C6572;
  v195 = 0xE700000000000000;
  v119 = sub_1D7D3136C();
  v100 = v188;
  v120 = v183;
  if (v119)
  {
    v161 = v9;

    (*(v190 + 16))(v184, v189, v100);
    sub_1D7C0E5E0(&qword_1EE0BFC60, sub_1D7AE8404, MEMORY[0x1E69D8808]);
    v121 = v172;
    sub_1D7D304FC();
    v122 = *(v185 + 36);
    sub_1D7C0E5E0(&unk_1EE0BFC50, sub_1D7AE8404, MEMORY[0x1E69D8810]);
    sub_1D7D30A5C();
    v123 = v169;
    if (*(v121 + v122) != v197)
    {
      v124 = (v180 + 16);
      v192 = (v180 + 32);
      v193 = (v180 + 8);
      while (1)
      {
        v125 = sub_1D7D30AAC();
        v126 = v186;
        (*v124)(v186);
        v125(&v197, 0);
        sub_1D7D30A6C();
        v127 = *v192;
        (*v192)(v123, v126, v120);
        sub_1D7D2A43C();
        v128 = v120;
        v194 = v197;
        EndOfArticleSectionDescriptor.type.getter(&v196);

        if (v196 == 1)
        {
          break;
        }

        (*v193)(v123, v120);
        sub_1D7D30A5C();
        if (*(v121 + v122) == v197)
        {
          goto LABEL_21;
        }
      }

      sub_1D7C0E7C0(v121, sub_1D7C0E54C);
      v153 = v159;
      v127(v159, v123, v120);
      v155 = v161;
      v140 = v128;
      v154 = v177;
      goto LABEL_47;
    }

LABEL_21:
    v129 = v121;
    goto LABEL_37;
  }

  v197 = v96;
  v198 = v98;
  v194 = 0x6D6F724665726F6DLL;
  v195 = 0xE800000000000000;
  v147 = sub_1D7D3136C();

  if ((v147 & 1) == 0)
  {
LABEL_38:
    (*(v190 + 8))(v189, v100);
    return result;
  }

  v161 = v9;
  (*(v190 + 16))(v184, v189, v100);
  sub_1D7C0E5E0(&qword_1EE0BFC60, sub_1D7AE8404, MEMORY[0x1E69D8808]);
  v101 = v163;
  sub_1D7D304FC();
  v148 = *(v185 + 36);
  sub_1D7C0E5E0(&unk_1EE0BFC50, sub_1D7AE8404, MEMORY[0x1E69D8810]);
  sub_1D7D30A5C();
  v135 = v162;
  if (*(v101 + v148) == v197)
  {
    goto LABEL_36;
  }

  v149 = (v180 + 16);
  v192 = (v180 + 32);
  v193 = (v180 + 8);
  while (1)
  {
    v150 = sub_1D7D30AAC();
    v151 = v181;
    (*v149)(v181);
    v150(&v197, 0);
    sub_1D7D30A6C();
    v139 = *v192;
    (*v192)(v135, v151, v120);
    sub_1D7D2A43C();
    v140 = v120;
    v194 = v197;
    EndOfArticleSectionDescriptor.type.getter(&v196);

    if (!v196)
    {
      break;
    }

    (*v193)(v135, v120);
    sub_1D7D30A5C();
    if (*(v101 + v148) == v197)
    {
      goto LABEL_36;
    }
  }

  sub_1D7C0E7C0(v101, sub_1D7C0E54C);
  v156 = &v189;
LABEL_46:
  v153 = *(v156 - 32);
  v139(v153, v135, v140);
  v154 = v177;
  v155 = v161;
LABEL_47:
  sub_1D7D2A44C();
  (*v193)(v153, v140);
  sub_1D7D2E52C();

  v197 = (*(*(v174 + 88) + 48))(v155, *(v174 + 80));
  sub_1D7BEC448(0);
  sub_1D7C0E5E0(&qword_1EE0C0030, sub_1D7BEC448, MEMORY[0x1E69D7A50]);
  sub_1D7D2A70C();
  (*(v176 + 8))(v155, v154);
  (*(v190 + 8))(v189, v188);

  return result;
}

double sub_1D7C0E420(uint64_t a1)
{
  (*(*((*MEMORY[0x1E69E7D40] & *v1) + 0x58) + 56))(a1, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50));
  sub_1D7BEC448(0);
  sub_1D7C0E5E0(&qword_1EE0C0030, sub_1D7BEC448, MEMORY[0x1E69D7A50]);
  sub_1D7D2A70C();

  return result;
}

void sub_1D7C0E54C(uint64_t a1)
{
  if (!qword_1EE0BEC10)
  {
    sub_1D7AE8404(255);
    sub_1D7C0E5E0(&unk_1EE0BFC50, sub_1D7AE8404, MEMORY[0x1E69D8810]);
    v1 = sub_1D7D315EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0BEC10);
    }
  }
}

uint64_t sub_1D7C0E5E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D7C0E648(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleRouteModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7C0E6AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D7C0E700(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for EndOfArticleSectionDescriptor;
    v8[1] = type metadata accessor for EndOfArticleModel(255);
    v8[2] = sub_1D7A2B104();
    v8[3] = sub_1D7C0E5E0(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel, &protocol conformance descriptor for EndOfArticleModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D7C0E7C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7C0E8A4(uint64_t a1)
{
  if (!qword_1EE0BE7D0)
  {
    sub_1D7D2CCDC();
    sub_1D7C0E884(255);
    sub_1D7C0E5E0(&unk_1EE0BF908, sub_1D7C0E884, MEMORY[0x1E69B5B60]);
    v1 = sub_1D7D31ACC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0BE7D0);
    }
  }
}

void sub_1D7C0E950(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for EndOfArticleLayoutSectionDescriptor;
    v8[1] = type metadata accessor for EndOfArticleLayoutModel(255);
    v8[2] = sub_1D7A6015C();
    v8[3] = sub_1D7C0E5E0(&unk_1EE0C7070, type metadata accessor for EndOfArticleLayoutModel, &protocol conformance descriptor for EndOfArticleLayoutModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D7C0EA10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for EndOfArticleSectionDescriptor;
    v8[1] = type metadata accessor for EndOfArticleModel(255);
    v8[2] = &type metadata for EndOfArticleLayoutSectionDescriptor;
    v8[3] = type metadata accessor for EndOfArticleLayoutModel(255);
    v8[4] = sub_1D7A2B104();
    v8[5] = sub_1D7C0E5E0(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel, &protocol conformance descriptor for EndOfArticleModel);
    v8[6] = sub_1D7A6015C();
    v8[7] = sub_1D7C0E5E0(&unk_1EE0C7070, type metadata accessor for EndOfArticleLayoutModel, &protocol conformance descriptor for EndOfArticleLayoutModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D7C0EB34(void *a1)
{
  v3 = *(sub_1D7D2CCDC() - 8);
  v5 = *(v3 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = v1 + ((*(v3 + 64) + v5 + v6) & ~v5);

  return sub_1D7C0C380(a1, v1 + v6, v7, v4);
}

double sub_1D7C0EBD0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 16) | a2)
    {
      return result;
    }
  }

  else if (a2)
  {
    return result;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = off_1F52A5448[0];
      type metadata accessor for EndOfArticleViewController();
      v3();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7C0ECF0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  sub_1D7C0E6AC(0, &qword_1EE0BFB58, MEMORY[0x1E69B3FD8]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v42 = &v39 - v5;
  v6 = sub_1D7D2CCDC();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C0E6AC(0, &unk_1EE0C00E0, sub_1D7A2AFB8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v39 - v11;
  sub_1D7A2AFB8(0);
  v14 = v13;
  v46 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v40 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7AE8404(0);
  v18 = v17;
  v19 = *(v17 - 1);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v2;
  sub_1D7D2A6EC();
  v50 = v47[0];
  sub_1D7C0E628(0, v23);
  sub_1D7C0E5E0(&qword_1EE0C0000, sub_1D7C0E628, MEMORY[0x1E69D7A78]);
  sub_1D7D2AEEC();

  v24 = v14;
  v25 = v46;
  sub_1D7D2C75C();
  if ((*(v25 + 48))(v12, 1, v24) == 1)
  {
    (*(v19 + 8))(v22, v18);
    v26 = &unk_1EE0C00E0;
    v27 = sub_1D7A2AFB8;
    v28 = v12;
    return sub_1D7C0F3D4(v28, v26, v27);
  }

  v29 = v19;
  v30 = v40;
  (*(v25 + 32))(v40, v12, v24);
  sub_1D7C0F430(v41 + *((*MEMORY[0x1E69E7D40] & *v41) + 0xB8), v47, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  v31 = v48;
  if (v48)
  {
    v32 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    (*(v32 + 64))(v30, v22, v31, v32);
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    sub_1D79E1030(v47, &qword_1EE0C5228, qword_1EE0C5230, &protocol descriptor for EndOfArticleCoordinatorType);
  }

  v33 = v22;
  v35 = v43;
  v34 = v44;
  sub_1D7C0F380();
  v36 = v42;
  sub_1D7D2C7BC();
  v37 = v45;
  if ((*(v34 + 6))(v36, 1, v45) == 1)
  {
    (*(v25 + 8))(v30, v24);
    (*(v29 + 8))(v33, v18);
    v26 = &qword_1EE0BFB58;
    v27 = MEMORY[0x1E69B3FD8];
    v28 = v36;
    return sub_1D7C0F3D4(v28, v26, v27);
  }

  v44 = v33;
  (*(v34 + 4))(v35, v36, v37);
  sub_1D7C0F430(v39, v47, &qword_1EE0BFAE0, &qword_1EE0CBDD0, MEMORY[0x1E69B41B8]);
  if (v48)
  {
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v43 = v18;
    sub_1D7C0E5E0(&unk_1EE0BFB60, MEMORY[0x1E69B3FD8], MEMORY[0x1E69B3FD0]);
    sub_1D7D2CFDC();
    (*(v34 + 1))(v35, v37);
    (*(v25 + 8))(v30, v24);
    (*(v29 + 8))(v44, v43);
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    (*(v34 + 1))(v35, v37);
    (*(v25 + 8))(v30, v24);
    (*(v29 + 8))(v44, v18);
    return sub_1D79E1030(v47, &qword_1EE0BFAE0, &qword_1EE0CBDD0, MEMORY[0x1E69B41B8]);
  }
}

unint64_t sub_1D7C0F380()
{
  result = qword_1EC9E6C78;
  if (!qword_1EC9E6C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6C78);
  }

  return result;
}

uint64_t sub_1D7C0F3D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7C0E6AC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7C0F430(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D79A02D8(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t FCAudioUpsellPlayPosition.audioTrackOverlayPosition.getter@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result == 1;
  if (result == 2)
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

void __swiftcall PDFReplicaPage.init(identifier:pageAsset:assetType:options:thumbnailAssetLQ:thumbnailAssetHQ:links:)(NewsArticles::PDFReplicaPage *__return_ptr retstr, Swift::String identifier, Swift::String pageAsset, NewsArticles::PDFReplicaAssetType assetType, NewsArticles::PDFReplicaPageOptions options, Swift::String thumbnailAssetLQ, Swift::String thumbnailAssetHQ, Swift::OpaquePointer links)
{
  v8 = *assetType;
  v9 = *options.rawValue;
  retstr->identifier = identifier;
  retstr->pageAsset = pageAsset;
  retstr->assetType = v8;
  retstr->options.rawValue = v9;
  retstr->thumbnailAssetLQ = thumbnailAssetLQ;
  retstr->thumbnailAssetHQ = thumbnailAssetHQ;
  retstr->links = links;
}

uint64_t PDFReplicaAssetType.hashValue.getter()
{
  v1 = *v0;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v1);
  return sub_1D7D31ABC();
}

uint64_t PDFReplicaPage.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PDFReplicaPage.pageAsset.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PDFReplicaPage.thumbnailAssetLQ.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PDFReplicaPage.thumbnailAssetHQ.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

BOOL _s12NewsArticles14PDFReplicaPageV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = a1[5];
  v19 = a1[7];
  v20 = a1[6];
  v14 = a1[10];
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v17 = *(a2 + 64);
  v18 = a1[8];
  v15 = *(a2 + 72);
  v16 = a1[9];
  v13 = *(a2 + 80);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1D7D3197C() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v6)
  {
    if (v4 != v8)
    {
      return 0;
    }
  }

  else if ((sub_1D7D3197C() & 1) == 0 || v4 != v8)
  {
    return 0;
  }

  if (v5 != v9 || (v20 != v10 || v19 != v11) && (sub_1D7D3197C() & 1) == 0 || (v18 != v17 || v16 != v15) && (sub_1D7D3197C() & 1) == 0)
  {
    return 0;
  }

  return sub_1D7A58610(v14, v13);
}

unint64_t sub_1D7C0F830()
{
  result = qword_1EC9E6C80;
  if (!qword_1EC9E6C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6C80);
  }

  return result;
}

unint64_t sub_1D7C0F888()
{
  result = qword_1EC9E6C88;
  if (!qword_1EC9E6C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6C88);
  }

  return result;
}

unint64_t sub_1D7C0F8E0()
{
  result = qword_1EC9E6C90;
  if (!qword_1EC9E6C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6C90);
  }

  return result;
}

unint64_t sub_1D7C0F938()
{
  result = qword_1EC9E6C98;
  if (!qword_1EC9E6C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6C98);
  }

  return result;
}

unint64_t sub_1D7C0F990()
{
  result = qword_1EC9E6CA0;
  if (!qword_1EC9E6CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E6CA0);
  }

  return result;
}

uint64_t sub_1D7C0FA14(uint64_t a1)
{
  type metadata accessor for ToolbarIssueCover(0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_1D7D2811C();

  return v3;
}

double sub_1D7C0FB00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v4 = sub_1D7D2FCAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_1D7D2FCCC();
  v9 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D7D2FE1C();
  v42 = *(v13 - 8);
  v43 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  *v8 = 0x4050000000000000;
  (*(v5 + 104))(v8, *MEMORY[0x1E69B66C0], v4);
  v17 = v41;
  sub_1D7D2FCBC();
  sub_1D7D300DC();
  (*(v9 + 8))(v12, v40);
  sub_1D7D2FE0C();
  if (v19 == 0.0 && v18 == 0.0)
  {
    v20 = 108.0;
    v21 = 64.0;
  }

  else
  {
    sub_1D7D2FE0C();
    v21 = v22;
    v20 = v23;
  }

  v24 = sub_1D7C0FA14(v17);
  v26 = sub_1D79F799C(v24, v25);

  sub_1D7D30E6C();
  v28 = v27;
  v44.origin.x = 4.0;
  v44.origin.y = 4.0;
  v44.size.width = v21;
  v44.size.height = v20;
  v29 = v28 + 4.0 + CGRectGetHeight(v44) + 8.0;
  v45.origin.x = 4.0;
  v45.origin.y = 4.0;
  v45.size.width = v21;
  v45.size.height = v20;
  v30 = CGRectGetMaxY(v45) + 4.0;
  *a2 = 0x4052000000000000;
  *(a2 + 8) = v29;
  __asm { FMOV            V0.2D, #4.0 }

  *(a2 + 16) = _Q0;
  *(a2 + 32) = v21;
  *(a2 + 40) = v20;
  v36 = type metadata accessor for ToolbarIssueCoverViewLayoutAttributes(0);
  (*(v42 + 32))(a2 + v36[6], v16, v43);
  v37 = a2 + v36[7];
  *v37 = 0;
  *(v37 + 8) = v30;
  *(v37 + 16) = 0x4052000000000000;
  *(v37 + 24) = v28;
  *(a2 + v36[8]) = v26;
  v38 = a2 + v36[9];
  *(v38 + 32) = 0;
  result = 0.0;
  *v38 = 0u;
  *(v38 + 16) = 0u;
  return result;
}

double ArticleViewerViewController.observableScrollView.getter()
{
  swift_beginAccess();

  return result;
}

double ArticleViewerViewController.observableScrollView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_observableScrollView;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void *ArticleViewerViewController.bottomPaletteContentView.getter()
{
  v0 = sub_1D7C100F0();
  v1 = *&v0[OBJC_IVAR____TtC12NewsArticles34ArticleBottomPaletteViewController_contentView];
  v2 = v1;

  return v1;
}

void sub_1D7C0FFF0(void *a1@<X8>)
{
  v2 = sub_1D7C100F0();
  v3 = *&v2[OBJC_IVAR____TtC12NewsArticles34ArticleBottomPaletteViewController_contentView];
  v4 = v3;

  *a1 = v3;
}

void sub_1D7C10040(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  v3 = sub_1D7C100F0();
  sub_1D7B0BBA8(v1);
}

void ArticleViewerViewController.bottomPaletteContentView.setter(void *a1)
{
  v2 = sub_1D7C100F0();
  sub_1D7B0BBA8(a1);
}

id sub_1D7C100F0()
{
  v1 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController____lazy_storage___bottomPaletteViewController;
  v2 = *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController____lazy_storage___bottomPaletteViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController____lazy_storage___bottomPaletteViewController);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ArticleBottomPaletteViewController()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void (*ArticleViewerViewController.bottomPaletteContentView.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = sub_1D7C100F0();
  v4 = *&v3[OBJC_IVAR____TtC12NewsArticles34ArticleBottomPaletteViewController_contentView];
  v5 = v4;

  *a1 = v4;
  return sub_1D7C101D0;
}

void sub_1D7C101D0(uint64_t a1, char a2)
{
  v2 = *a1;
  v6 = *(*(a1 + 8) + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController____lazy_storage___bottomPaletteViewController);
  if (a2)
  {
    v3 = v2;
    v4 = v6;
    sub_1D7B0BBA8(v2);
  }

  else
  {
    v5 = v6;
    sub_1D7B0BBA8(v2);
  }
}

uint64_t sub_1D7C10260()
{
  if (sub_1D7D2AA6C() && (sub_1D7992EFC(0, &qword_1EE0BF010, 0x1E69DD258), sub_1D798F168(0, qword_1EE0C3308, &protocol descriptor for ContentBackgroundColorObservable), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v5 + 1))
    {
      sub_1D799D69C(&v4, v7);
      v0 = v8;
      v1 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      v2 = (*(v1 + 8))(v0, v1);
      __swift_destroy_boxed_opaque_existential_1(v7);
      return v2;
    }
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
  }

  sub_1D7C23024(&v4, sub_1D7C24FF4);
  v7[0] = [objc_opt_self() whiteColor];
  v7[1] = 0;
  sub_1D7999608(0, &unk_1EE0C0440, &type metadata for ContentBackgroundColors, MEMORY[0x1E69D6538]);
  swift_allocObject();
  return sub_1D7D28ECC();
}

uint64_t sub_1D7C103DC@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_onPagePresented);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D7C24F08;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D79C9398(v4, v5);
}

uint64_t sub_1D7C1047C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D7C24ED0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_onPagePresented);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1D79C9398(v3, v4);
  return sub_1D79AD740(v8, v9);
}

uint64_t ArticleViewerViewController.onPagePresented.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_onPagePresented);
  swift_beginAccess();
  v2 = *v1;
  sub_1D79C9398(*v1, v1[1]);
  return v2;
}

uint64_t ArticleViewerViewController.onPagePresented.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_onPagePresented);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1D79AD740(v6, v7);
}

uint64_t sub_1D7C10660()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureAvailability), *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureAvailability + 24));
  if ((sub_1D7D2F96C() & 1) == 0 || (sub_1D7D2F0DC() & 1) == 0)
  {
    return *(v1 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController__isPagingEnabled);
  }

  v2 = [*(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v2, v2 + 1))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  v3 = MEMORY[0x1E69E7CA0];
  if (!*(&v12 + 1))
  {
    sub_1D7C23094(&v13, &qword_1EE0BE7A0, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_11;
  }

  sub_1D7992EFC(0, &qword_1EE0BECA0, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v4 = 0;
    v6 = 0;
    goto LABEL_12;
  }

  v4 = v10;
  v5 = [v10 integerValue];
  if (v5 == -1)
  {

    return *(v1 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController__isPagingEnabled);
  }

  v6 = v5;
LABEL_12:
  if (objc_getAssociatedObject(v2, ~v6))
  {
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (*(&v12 + 1))
  {
    sub_1D7992EFC(0, &qword_1EE0BECA0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v7 = v10;
      v8 = [v7 integerValue];

      if ((v8 ^ v6))
      {
        return *(v1 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController__isPagingEnabled);
      }

      return 0;
    }
  }

  else
  {
    sub_1D7C23094(&v13, &qword_1EE0BE7A0, v3 + 8);
  }

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  return *(v1 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController__isPagingEnabled);
}

uint64_t _s12NewsArticles27ArticleViewerViewControllerC14mastheadPlugin5TeaUI0H0CSgyF_0()
{
  v1 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController____lazy_storage___bottomPalettePlugin;
  if (*(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController____lazy_storage___bottomPalettePlugin))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController____lazy_storage___bottomPalettePlugin);
  }

  else
  {
    v3 = v0;
    v5 = sub_1D7C100F0();
    sub_1D799C17C(&qword_1EC9E6F90, 255, type metadata accessor for ArticleBottomPaletteViewController, &unk_1D7D4CD84);
    sub_1D7D2C23C();
    swift_allocObject();
    v2 = sub_1D7D2C21C();

    *(v3 + v1) = v2;
  }

  return v2;
}

double sub_1D7C109A0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = (Strong + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_prewarm);
    v4 = *(Strong + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_prewarm);
    v3 = *(Strong + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_prewarm + 8);
    *v2 = 0;
    v2[1] = 0;
    v5 = Strong;
    sub_1D79AD740(v4, v3);
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v8 = v6;
    swift_unknownObjectRetain();

    v9 = off_1F52A0160;
    type metadata accessor for ArticleViewerInteractor();
    v9();
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D7C10A8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1 && *(a1 + OBJC_IVAR___NAPlayableArticleInfo_articleId + 8))
    {
      v5 = *(a1 + OBJC_IVAR___NAPlayableArticleInfo_paused);
    }

    else
    {
      v5 = 2;
    }

    v6 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_narrativeAudioState;
    if (*(Strong + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_narrativeAudioState) != v5)
    {
      v7 = OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_featureManager;
      swift_beginAccess();
      sub_1D799CC84(&v4[v7], v13);
      v8 = v14;
      v9 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      sub_1D7C255A0(0, &unk_1EE0C8890, type metadata accessor for ArticleViewerAudioFeatureContext, type metadata accessor for ArticleViewerFeature);
      inited = swift_initStaticObject();
      v11 = *(v9 + 112);
      v12 = type metadata accessor for ArticleViewerAudioFeatureContext(0);
      v11(inited, v12, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v13);
    }

    v4[v6] = v5;
  }
}

id ArticleViewerViewController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x1E69DD8D8] object:0];

  v3 = v0;
  sub_1D7D29BCC();

  v5.receiver = v3;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id ArticleViewerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t ArticleViewerViewController.show(article:)(void (**a1)(char *, uint64_t))
{
  v2 = type metadata accessor for ArticleNavigationAction(0);
  MEMORY[0x1EEE9AC00](v2, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v5 = a1[1];
  swift_storeEnumTagMultiPayload();
  sub_1D7C110D0(v6, v5, v4);
  return sub_1D7C23024(v4, type metadata accessor for ArticleNavigationAction);
}

uint64_t sub_1D7C110D0(void (*a1)(char *, uint64_t), void (*a2)(char *, uint64_t), uint64_t a3)
{
  v47 = a3;
  v48 = a1;
  v49 = a2;
  sub_1D7A53A4C(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v46 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ArticleNavigationAction(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7C237DC(0, &qword_1EE0C00B0, type metadata accessor for ArticleViewerPage, sub_1D799BE44, MEMORY[0x1E69D7708]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v44 - v15;
  sub_1D7C255A0(0, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v44 - v19;
  v21 = type metadata accessor for ArticleViewerPage(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v45 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v44 - v27;
  v50 = v3;
  v29 = *(v3 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_prewarm);
  if (v29)
  {
    v30 = *(v3 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_prewarm + 8);

    v29(v31);
    sub_1D79AD740(v29, v30);
  }

  sub_1D7D2ADEC();
  sub_1D7D28EDC();

  sub_1D7D29F9C();
  v32 = *(v13 + 8);
  v32(v16, v12);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_1D7C22FB4(v20, qword_1EE0C98E0, type metadata accessor for ArticleViewerPage);
  }

  v44 = v32;
  sub_1D7C25538(v20, v28, type metadata accessor for ArticleViewerPage);
  sub_1D7C3C6EC(v10);
  v34 = v47;
  v35 = _s12NewsArticles23ArticleNavigationActionO2eeoiySbAC_ACtFZ_0(v10, v47);
  sub_1D7C23024(v10, type metadata accessor for ArticleNavigationAction);
  if (v35)
  {
    sub_1D7D2AABC();
    sub_1D7C116B8(v28);
    v36 = v28;
  }

  else
  {
    v37 = v45;
    sub_1D7C3C8AC(v34, v45);
    sub_1D7D2ADEC();
    sub_1D7D28EDC();

    MEMORY[0x1EEE9AC00](v38, v39);
    v40 = v49;
    *(&v44 - 4) = v48;
    *(&v44 - 3) = v40;
    *(&v44 - 2) = v37;
    v41 = sub_1D7A27430(sub_1D7C25514, (&v44 - 6));
    v44(v16, v12);
    v42 = sub_1D799C17C(&qword_1EE0C9920, 255, type metadata accessor for ArticleViewerPage, &protocol conformance descriptor for ArticleViewerPage);
    v43 = sub_1D799C17C(&unk_1EE0C9940, 255, type metadata accessor for ArticleViewerPage, &protocol conformance descriptor for ArticleViewerPage);
    MEMORY[0x1DA706A80](v41, v21, v42, v43);
    sub_1D799BE44();
    sub_1D7D29FBC();
    sub_1D7D2ADEC();
    sub_1D7D28EAC();

    sub_1D7D2AABC();
    sub_1D7C116B8(v37);
    v44(v16, v12);
    sub_1D7C23024(v28, type metadata accessor for ArticleViewerPage);
    v36 = v37;
  }

  return sub_1D7C23024(v36, type metadata accessor for ArticleViewerPage);
}

void sub_1D7C116B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D7D2AD0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v31 - v11;
  v13 = sub_1D7D2AB8C();
  v35 = *(v13 - 1);
  v36 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D7D2ACCC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D7D2DB0C())
  {
    v22 = sub_1D7D30D8C();
    sub_1D7C3CCDC();
    if (v23)
    {
      v24 = sub_1D7D3031C();
    }

    else
    {
      v24 = 0;
    }

    [v22 setBackButtonTitle_];

    v36 = sub_1D7D30D8C();
    [v36 setBackButtonDisplayMode_];
    v29 = v36;
  }

  else
  {
    v32 = v18;
    v33 = v17;
    v34 = a1;
    sub_1D799CC84(v2 + OBJC_IVAR____TtC12NewsArticles27ArticleViewerViewController_styler, v41);
    v25 = v42;
    v26 = v43;
    v31[1] = __swift_project_boxed_opaque_existential_1(v41, v42);
    sub_1D7D2AE7C();
    sub_1D7C10260();
    sub_1D7D28EDC();

    v37 = v39;
    v38 = v40;
    v27 = [v2 splitViewController];
    if (v27)
    {
      v28 = v27;
      sub_1D7D30F4C();

      (*(v5 + 32))(v12, v8, v4);
    }

    else
    {
      (*(v5 + 104))(v12, *MEMORY[0x1E69D7C90], v4);
    }

    (*(v26 + 16))(v34, v16, &v37, v12, v25, v26);
    (*(v5 + 8))(v12, v4);
    v30 = v38;

    (*(v35 + 8))(v16, v36);
    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_1D799C17C(&unk_1EE0BFF30, 255, MEMORY[0x1E69D7C68], MEMORY[0x1E69D7C70]);
    sub_1D7D28F1C();
    (*(v32 + 8))(v21, v33);
  }
}