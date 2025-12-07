uint64_t sub_1D77A05D4(void *a1, id a2)
{
  v3 = [a2 identifier];
  v4 = sub_1D78B5C74();
  v6 = v5;

  v7 = a1[9];
  v8 = a1[10];
  __swift_project_boxed_opaque_existential_1(a1 + 6, v7);
  v10[0] = v4;
  v10[1] = v6;
  v10[3] = 0;
  v10[4] = 0;
  v10[2] = MEMORY[0x1E69E7CC0];
  (*(v8 + 96))(v10, v7, v8);
  swift_bridgeObjectRelease_n();
}

uint64_t sub_1D77A06AC(void *a1, void *a2, uint64_t (*a3)(void))
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE09C268;
  v7 = sub_1D78B60A4();
  v8 = [a2 identifier];
  v9 = sub_1D78B5C74();
  v11 = v10;

  swift_beginAccess();
  sub_1D782B134(v9, v11);
  swift_endAccess();

  v12 = swift_unknownObjectRelease();
  sub_1D779E438(v12);
  if (!*(a1[28] + 16))
  {
    v13 = sub_1D78B60A4();
    sub_1D78B42C4("Refresh entitlements ignoring cache from AlacarteAppStoreSubscriptionExpiredAlert alert", 87, 2, &dword_1D7739000, v6, v13, MEMORY[0x1E69E7CC0]);
    v14 = *__swift_project_boxed_opaque_existential_1(a1 + 11, a1[14]);
    v15 = [objc_opt_self() sharedAccount];
    v16 = [v15 isUserSignedIntoiTunes];

    if (v16)
    {
      v17 = *(v14 + 24);
      v18 = swift_allocObject();
      *(v18 + 16) = v14;
      *(v18 + 24) = 1;
      v21[4] = sub_1D77A2CD4;
      v21[5] = v18;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 1107296256;
      v21[2] = sub_1D7781488;
      v21[3] = &block_descriptor_47;
      v19 = _Block_copy(v21);

      [v17 refreshBundleSubscriptionWithCachePolicy:3 hideBundleDetectionUI:0 completion:v19];
      _Block_release(v19);
    }
  }

  return a3();
}

uint64_t sub_1D77A0928(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27[1] = a5;
  v31 = a1;
  v12 = sub_1D78B5254();
  v30 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D78B52A4();
  v28 = *(v16 - 8);
  v29 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a3 + 16);
  v21 = [a4 identifier];
  if (!v21)
  {
    sub_1D78B5C74();
    v27[0] = a4;
    v21 = sub_1D78B5C44();
    a4 = v27[0];
  }

  v22 = [v20 hasRenewalNoticeShownForTagID_];

  if (v22)
  {
    return v31();
  }

  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  v24 = sub_1D78B6104();
  v25 = swift_allocObject();
  v25[2] = a4;
  v25[3] = a3;
  v25[4] = v31;
  v25[5] = a2;
  aBlock[4] = a6;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = a7;
  v26 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_1D78B5274();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D774656C(&qword_1EE090300, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D77A2AC4(0);
  sub_1D774656C(&qword_1EE090030, sub_1D77A2AC4, MEMORY[0x1E69E6328]);
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v19, v15, v26);
  _Block_release(v26);

  (*(v30 + 8))(v15, v12);
  return (*(v28 + 8))(v19, v29);
}

void sub_1D77A0CD8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1D77A2D34();
  sub_1D78B5054();
  swift_allocObject();
  swift_unknownObjectRetain();
  v8 = sub_1D78B5004();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a1;
  v9[4] = a3;
  v9[5] = a4;
  swift_unknownObjectRetain();

  sub_1D78B5034();

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a1;
  v10[4] = a3;
  v10[5] = a4;
  swift_unknownObjectRetain();

  sub_1D78B5044();

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE09C268;
  v12 = sub_1D78B60A4();
  sub_1D78B42C4("Showing WebSubscriptionExpiredAlert", 35, 2, &dword_1D7739000, v11, v12, MEMORY[0x1E69E7CC0]);
  v13 = a2[9];
  v14 = a2[10];
  __swift_project_boxed_opaque_existential_1(a2 + 6, v13);
  (*(v14 + 88))(v8, v13, v14);
  v15 = a2[2];
  sub_1D77A2B7C();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D78BCAB0;
  v17 = [a1 identifier];
  v18 = sub_1D78B5C74();
  v20 = v19;

  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  v21 = sub_1D78B5E94();

  [v15 renewalNoticeShownForPurchasedChannelsListWithTagIDs_];
}

uint64_t sub_1D77A0F6C(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v32 = a4;
  v33 = a3;
  v6 = sub_1D78B5254();
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D78B52A4();
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v14 = qword_1EE09C268;
  v15 = sub_1D78B60A4();
  v16 = sub_1D78B42C4("Selected log in in WebSubscriptionExpiredAlert", 48, 2, &dword_1D7739000, v14, v15, MEMORY[0x1E69E7CC0]);
  v17 = *(a1 + 16);
  v18 = [a2 identifier];
  if (!v18)
  {
    sub_1D78B5C74();
    v18 = sub_1D78B5C44();
  }

  [v17 removeWebPurchaseForTagID:v18 userInitiated:1];

  v19 = [a2 identifier];
  v20 = sub_1D78B5C74();
  v22 = v21;

  swift_beginAccess();
  sub_1D782B134(v20, v22);
  swift_endAccess();

  swift_unknownObjectRelease();
  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  v23 = sub_1D78B6104();
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  aBlock[4] = sub_1D77A2E00;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_77_0;
  v25 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  sub_1D78B5274();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D774656C(&qword_1EE090300, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D77A2AC4(0);
  sub_1D774656C(&qword_1EE090030, sub_1D77A2AC4, MEMORY[0x1E69E6328]);
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v13, v9, v25);
  _Block_release(v25);

  (*(v31 + 8))(v9, v6);
  v26 = (*(v29 + 8))(v13, v30);
  return v33(v26);
}

uint64_t sub_1D77A139C(uint64_t a1)
{
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  (*(v4 + 8))(v10, a1, v3, v4);
  sub_1D78B41F4();
  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  v5 = sub_1D78B6104();
  sub_1D774584C(v10, v9);
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = a1;
  sub_1D7741E34(v9, v6 + 32);

  swift_unknownObjectRetain();
  sub_1D78B40B4();

  v7 = sub_1D78B6104();

  sub_1D78B40E4();

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_1D77A158C(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE09C268;
  v7 = sub_1D78B60A4();
  v8 = sub_1D78B42C4("Selected cancel in WebSubscriptionExpiredAlert", 48, 2, &dword_1D7739000, v6, v7, MEMORY[0x1E69E7CC0]);
  v9 = *(a1 + 16);
  v10 = [a2 identifier];
  if (!v10)
  {
    sub_1D78B5C74();
    v10 = sub_1D78B5C44();
  }

  [v9 removeWebPurchaseForTagID:v10 userInitiated:1];

  v11 = [a2 identifier];
  v12 = sub_1D78B5C74();
  v14 = v13;

  swift_beginAccess();
  sub_1D782B134(v12, v14);
  swift_endAccess();

  v15 = swift_unknownObjectRelease();
  sub_1D779E438(v15);
  return a3();
}

void sub_1D77A1714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1D77A1C4C();
  if (v10)
  {
    v12 = v10;
    v13 = sub_1D779DC38();
    sub_1D774584C(a4, v21);
    v14 = swift_allocObject();
    v14[2] = v5;
    v14[3] = a1;
    v14[4] = a2;
    v14[5] = a3;
    sub_1D7741E34(v21, (v14 + 6));
    aBlock[4] = sub_1D77A2F0C;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D775FB6C;
    aBlock[3] = &block_descriptor_92;
    v15 = _Block_copy(aBlock);

    swift_unknownObjectRetain();

    [v12 presentViewController:v13 animated:1 completion:v15];
    _Block_release(v15);
  }

  else
  {
    MEMORY[0x1EEE9AC00](0, v11);
    sub_1D78B41F4();
    sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
    v16 = sub_1D78B6104();
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = v4;
    *(v17 + 32) = 0;

    swift_unknownObjectRetain();
    sub_1D78B40B4();

    v18 = sub_1D78B6104();
    v19 = swift_allocObject();
    *(v19 + 16) = v4;
    *(v19 + 24) = 0;

    sub_1D78B40E4();
  }
}

void sub_1D77A1A08(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D78B6094();
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE09C268;
  sub_1D774FE1C(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D78BCAB0;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  sub_1D78B6504();
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1D775ABD4();
  *(v7 + 32) = 0;
  *(v7 + 40) = 0xE000000000000000;
  sub_1D78B42D4(v5, &dword_1D7739000, v6, "Error obtaining access token: %@", 32, 2, v7);

  v8 = a1;
  type metadata accessor for ASWebAuthenticationSessionError(0);
  if ((swift_dynamicCast() & 1) == 0 || (sub_1D774656C(&unk_1EC9C9F70, type metadata accessor for ASWebAuthenticationSessionError, &unk_1D78BC6C4), sub_1D78B3184(), a1, a1 != 1))
  {
    sub_1D7788B3C();
    sub_1D78B5054();
    swift_allocObject();
    v9 = sub_1D78B5004();
    v10 = a3[9];
    v11 = a3[10];
    __swift_project_boxed_opaque_existential_1(a3 + 6, v10);
    (*(v11 + 88))(v9, v10, v11);
  }
}

id sub_1D77A1C4C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  v2 = sub_1D773F004(0, &unk_1EC9C9EC0, 0x1E69DCE70);
  v3 = sub_1D779D4C0();
  v4 = sub_1D78B5F64();

  if ((v4 & 0xC000000000000001) != 0)
  {
    sub_1D78B6364();
    sub_1D78B5F94();
    v4 = v28;
    v5 = v29;
    v6 = v30;
    v7 = v31;
    v8 = v32;
  }

  else
  {
    v7 = 0;
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);
  }

  v25 = v6;
  v12 = (v6 + 64) >> 6;
  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v13 = sub_1D78B63B4();
  if (v13)
  {
    v26 = v13;
    swift_dynamicCast();
    v3 = v27;
    v14 = v7;
    v15 = v8;
    if (v27)
    {
      while ([v3 activationState])
      {

        v7 = v14;
        v8 = v15;
        if (v4 < 0)
        {
          goto LABEL_8;
        }

LABEL_11:
        v16 = v7;
        v17 = v8;
        v14 = v7;
        if (!v8)
        {
          while (1)
          {
            v14 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v14 >= v12)
            {
              goto LABEL_19;
            }

            v17 = *(v5 + 8 * v14);
            ++v16;
            if (v17)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

LABEL_15:
        v15 = (v17 - 1) & v17;
        v3 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v17)))));
        if (!v3)
        {
          goto LABEL_19;
        }
      }

      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (!v19)
      {
        sub_1D779D528(v4);

        return 0;
      }

      v20 = v19;
      v3 = v3;
      v21 = [v20 windows];
      sub_1D773F004(0, &unk_1EC9C9ED0, 0x1E69DD2E8);
      v2 = sub_1D78B5EB4();

      if (v2 >> 62)
      {
LABEL_30:
        result = sub_1D78B6534();
        if (result)
        {
          goto LABEL_24;
        }
      }

      else
      {
        result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
LABEL_24:
          if ((v2 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x1DA703700](0, v2);
          }

          else
          {
            if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v22 = *(v2 + 32);
          }

          v23 = v22;
LABEL_32:

          v24 = [v23 rootViewController];

          sub_1D779D528(v4);
          return v24;
        }
      }

      v23 = 0;
      goto LABEL_32;
    }
  }

LABEL_19:
  sub_1D779D528(v4);
  return 0;
}

uint64_t sub_1D77A1FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D78B41F4();
  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  v7 = sub_1D78B6104();
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  *(v8 + 24) = a1;
  *(v8 + 32) = 1;
  type metadata accessor for SubscriptionExpiryManager();
  swift_unknownObjectRetain();

  sub_1D78B40B4();

  v9 = sub_1D78B6104();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = 1;

  sub_1D78B40E4();
}

void sub_1D77A2158(char *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = *a1;
  if (a5)
  {
    v8 = sub_1D779DC38();
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v9 + 24) = a3;
    *(v9 + 32) = a4;
    v11[4] = sub_1D77A2F98;
    v11[5] = v9;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1D775FB6C;
    v11[3] = &block_descriptor_110;
    v10 = _Block_copy(v11);
    swift_unknownObjectRetain();

    [v8 dismissViewControllerAnimated:1 completion:v10];
    _Block_release(v10);
  }

  else
  {
    sub_1D77A2284(*a1, a3, a4);
  }
}

uint64_t sub_1D77A2284(char a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    sub_1D7788D34();
    sub_1D78B5054();
    swift_allocObject();
    v4 = sub_1D78B5004();
  }

  else
  {
    sub_1D7788D90();
    sub_1D78B5054();
    swift_allocObject();
    swift_unknownObjectRetain();
    v4 = sub_1D78B5004();
    v6 = swift_allocObject();
    *(v6 + 16) = a3;
    *(v6 + 24) = a2;
    swift_unknownObjectRetain();

    sub_1D78B5034();
  }

  v7 = a3[9];
  v8 = a3[10];
  __swift_project_boxed_opaque_existential_1(a3 + 6, v7);
  (*(v8 + 88))(v4, v7, v8);
}

uint64_t sub_1D77A23E4(void *a1, void *a2)
{
  v3 = a1[9];
  v4 = a1[10];
  __swift_project_boxed_opaque_existential_1(a1 + 6, v3);
  v5 = [a2 identifier];
  v6 = sub_1D78B5C74();
  v8 = v7;

  (*(v4 + 104))(v6, v8, 0, v3, v4);
}

void sub_1D77A2490(void *a1, uint64_t a2, void *a3, char a4)
{
  v7 = sub_1D78B6094();
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE09C268;
  sub_1D774FE1C(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D78BCAB0;
  v17 = 0xE000000000000000;
  v22 = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  sub_1D78B6504();
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1D775ABD4();
  *(v9 + 32) = 0;
  *(v9 + 40) = 0xE000000000000000;
  sub_1D78B42D4(v7, &dword_1D7739000, v8, "Error verifying access token: %@", 32, 2, v9);

  aBlock = a1;
  v10 = a1;
  type metadata accessor for ASWebAuthenticationSessionError(0);
  if ((swift_dynamicCast() & 1) == 0 || (aBlock = v22, sub_1D774656C(&unk_1EC9C9F70, type metadata accessor for ASWebAuthenticationSessionError, &unk_1D78BC6C4), sub_1D78B3184(), v22, v22 != 1))
  {
    if (a4)
    {
      v11 = sub_1D779DC38();
      v20 = sub_1D77A2F90;
      v21 = a3;
      aBlock = MEMORY[0x1E69E9820];
      v17 = 1107296256;
      v18 = sub_1D775FB6C;
      v19 = &block_descriptor_104;
      v12 = _Block_copy(&aBlock);

      [v11 dismissViewControllerAnimated:1 completion:v12];
      _Block_release(v12);
    }

    else
    {
      v19 = &type metadata for WebAuthenticationErrorAlert;
      v20 = sub_1D7788B3C();
      sub_1D78B5054();
      swift_allocObject();
      v13 = sub_1D78B5004();
      v14 = a3[9];
      v15 = a3[10];
      __swift_project_boxed_opaque_existential_1(a3 + 6, v14);
      (*(v15 + 88))(v13, v14, v15);
    }
  }
}

uint64_t sub_1D77A2790(void *a1)
{
  sub_1D7788B3C();
  sub_1D78B5054();
  swift_allocObject();
  v2 = sub_1D78B5004();
  v3 = a1[9];
  v4 = a1[10];
  __swift_project_boxed_opaque_existential_1(a1 + 6, v3);
  (*(v4 + 88))(v2, v3, v4);
}

void sub_1D77A2850(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1DA703640](a1, a2, v11);
      sub_1D773F004(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1D773F004(0, a5, a6);
    if (sub_1D78B6384() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1D78B6394();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_1D78B6234();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_1D78B6244();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
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

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

void sub_1D77A2AC4(uint64_t a1)
{
  if (!qword_1EE090040)
  {
    sub_1D78B5254();
    v1 = sub_1D78B5F34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE090040);
    }
  }
}

unint64_t sub_1D77A2B1C()
{
  result = qword_1EC9C9F48;
  if (!qword_1EC9C9F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9F48);
  }

  return result;
}

void sub_1D77A2B7C()
{
  if (!qword_1EE08FA50)
  {
    v0 = sub_1D78B66F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08FA50);
    }
  }
}

uint64_t sub_1D77A2BCC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_1D77A2C68()
{
  result = qword_1EC9C9F58;
  if (!qword_1EC9C9F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9F58);
  }

  return result;
}

unint64_t sub_1D77A2D34()
{
  result = qword_1EC9C9F60;
  if (!qword_1EC9C9F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9F60);
  }

  return result;
}

uint64_t objectdestroy_18Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x1EEE6BDD0](v2, 48, 7);
}

uint64_t sub_1D77A2E28()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 8))(v2, v3);
}

uint64_t sub_1D77A2F1C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  return (*(v5 + 16))(v2, v3, v4, v5);
}

uint64_t objectdestroyTm(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 24));

  return MEMORY[0x1EEE6BDD0](v3, a3, 7);
}

unint64_t sub_1D77A301C()
{
  result = qword_1EC9C9F90;
  if (!qword_1EC9C9F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9F90);
  }

  return result;
}

uint64_t objectdestroy_12Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t WebAccessOptInAlert.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WebAccessOptInAlert.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

BOOL WebAccessOptInAlert.showTextField.getter()
{
  result = 1;
  if (*(v0 + 40))
  {
    v1 = sub_1D78B5C44();
    v2 = [v1 ea_isLegalEmailAddress];

    if (v2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t WebAccessOptInAlert.textFieldText.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t WebAccessOptInAlert.textFieldPlaceHolderText.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t WebAccessOptInAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t WebAccessOptInAlert.acceptButton.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t WebAccessOptInAlert.rejectButton.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1D77A341C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D77A344C()
{
  v1 = *(v0 + 16);

  return v1;
}

BOOL sub_1D77A347C()
{
  result = 1;
  if (*(v0 + 40))
  {
    v1 = sub_1D78B5C44();
    v2 = [v1 ea_isLegalEmailAddress];

    if (v2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D77A34D0()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1D77A3500()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D77A35BC()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1D77A35F0()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1D77A3624(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D77A366C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1D77A36D0()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *&v0[OBJC_IVAR____TtC16NewsSubscription21PurchasingSpinnerView_purchasingScrim] = v2;
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v0[OBJC_IVAR____TtC16NewsSubscription21PurchasingSpinnerView_purchasingSpinnerView] = v3;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *&v0[OBJC_IVAR____TtC16NewsSubscription21PurchasingSpinnerView_titleLabel] = v4;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DC638]) init];
  *&v0[OBJC_IVAR____TtC16NewsSubscription21PurchasingSpinnerView_spinner] = v5;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v6 setClipsToBounds_];
  [v6 addSubview_];
  v7 = OBJC_IVAR____TtC16NewsSubscription21PurchasingSpinnerView_purchasingSpinnerView;
  [v6 addSubview_];
  [*&v6[v7] addSubview_];
  [*&v6[v7] addSubview_];

  return v6;
}

id PurchasingSpinnerView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PurchasingSpinnerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PurchasingSpinnerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AppLaunchUpsellManager.__allocating_init(configurationManager:bundleSubscriptionManager:offerManager:dataStore:router:appLaunchMethodChecker:networkReachability:offlineProvider:articleURLHandlerPatternProvider:articleURLHandlerMatchIDProvider:headlineService:featureAvailability:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v80 = a1;
  v71 = a4;
  v72 = a8;
  v68 = a7;
  v70 = a3;
  v81 = a2;
  v82 = a9;
  sub_1D77441E4(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v64 = &v64 - v18;
  v19 = sub_1D78B3884();
  MEMORY[0x1EEE9AC00](v19, v20);
  v79 = a5;
  sub_1D774584C(a5, v94);
  v78 = a6;
  sub_1D774584C(a6, v93);
  v92 = 0;
  memset(v91, 0, sizeof(v91));
  v90 = 0;
  memset(v89, 0, sizeof(v89));
  v69 = sub_1D7746770;
  v77 = a10;
  sub_1D7746708(a10, v88, sub_1D7746770);
  v67 = sub_1D77467D8;
  v76 = a11;
  sub_1D7746708(a11, v87, sub_1D77467D8);
  v66 = sub_1D7746840;
  v75 = a12;
  sub_1D7746708(a12, v86, sub_1D7746840);
  v65 = sub_1D77468A8;
  v74 = a13;
  sub_1D7746708(a13, v85, sub_1D77468A8);
  v73 = a14;
  sub_1D7746708(a14, v84, sub_1D7746910);
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  sub_1D7747C80(0, &qword_1EE0953A8, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6568]);
  swift_allocObject();
  *(v21 + 160) = sub_1D78B3B74();
  v83 = MEMORY[0x1E69E7CC0];
  sub_1D7747CD0(&qword_1EE095420, 255, MEMORY[0x1E69D6388], MEMORY[0x1E69D6390]);
  v22 = MEMORY[0x1E69D6388];
  sub_1D77441E4(0, &unk_1EE0900D8, MEMORY[0x1E69D6388], MEMORY[0x1E69E62F8]);
  sub_1D7746978(&qword_1EE0900D0, &unk_1EE0900D8, v22);
  v23 = v68;
  sub_1D78B6324();
  sub_1D78B38A4();
  swift_allocObject();
  v24 = v70;
  *(v21 + 168) = sub_1D78B3894();
  *(v21 + 176) = 0;
  sub_1D77469DC(0);
  swift_allocObject();
  *(v21 + 184) = sub_1D78B3974();
  *(v21 + 472) = 0;
  v25 = v81;
  *(v21 + 16) = v80;
  *(v21 + 32) = v25;
  *(v21 + 40) = v24;
  *(v21 + 48) = v71;
  sub_1D774584C(v94, v21 + 56);
  sub_1D774584C(v93, v21 + 96);
  v26 = v72;
  *(v21 + 144) = v23;
  *(v21 + 152) = v26;
  *(v21 + 136) = v82;
  sub_1D7746708(v91, v21 + 192, sub_1D7746AE4);
  sub_1D7746708(v89, v21 + 232, sub_1D7746B4C);
  sub_1D7746708(v88, v21 + 272, v69);
  sub_1D7746708(v87, v21 + 312, v67);
  sub_1D7746708(v86, v21 + 352, v66);
  sub_1D7746708(v85, v21 + 392, v65);
  sub_1D7746708(v84, v21 + 432, sub_1D7746910);
  v27 = qword_1EE095510;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (v27 != -1)
  {
    swift_once();
  }

  sub_1D7747CD0(&qword_1EE0938D8, v28, type metadata accessor for AppLaunchUpsellManager, &protocol conformance descriptor for AppLaunchUpsellManager);
  sub_1D78B3574();
  if (v83 == 1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v29 = sub_1D78B4304();
    __swift_project_value_buffer(v29, qword_1EE09C288);
    v30 = sub_1D78B42E4();
    v31 = sub_1D78B60A4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1D7739000, v30, v31, "From debug: resetting the stored app launch count.", v32, 2u);
      MEMORY[0x1DA7043F0](v32, -1, -1);
    }

    swift_beginAccess();
    v33 = *(v21 + 80);
    v34 = *(v21 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v21 + 56, v33);
    (*(v34 + 16))(0, v33, v34);
    swift_endAccess();
    LOBYTE(v83) = 0;
    sub_1D7747CD0(&qword_1EE0938D0, v35, type metadata accessor for AppLaunchUpsellManager, &protocol conformance descriptor for AppLaunchUpsellManager);
    sub_1D78B3724();
  }

  if (qword_1EE0954A8 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (v83 == 1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v36 = sub_1D78B4304();
    __swift_project_value_buffer(v36, qword_1EE09C288);
    v37 = sub_1D78B42E4();
    v38 = sub_1D78B60A4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1D7739000, v37, v38, "From debug: resetting the stored app launch upsell instance ID.", v39, 2u);
      MEMORY[0x1DA7043F0](v39, -1, -1);
    }

    swift_beginAccess();
    v40 = *(v21 + 80);
    v41 = *(v21 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v21 + 56, v40);
    (*(v41 + 40))(0, 0xE000000000000000, v40, v41);
    swift_endAccess();
    LOBYTE(v83) = 0;
    sub_1D7747CD0(&qword_1EE0938D0, v42, type metadata accessor for AppLaunchUpsellManager, &protocol conformance descriptor for AppLaunchUpsellManager);
    sub_1D78B3724();
  }

  if (qword_1EE095480 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (v83 == 1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v43 = sub_1D78B4304();
    __swift_project_value_buffer(v43, qword_1EE09C288);
    v44 = sub_1D78B42E4();
    v45 = sub_1D78B60A4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1D7739000, v44, v45, "From debug: resetting the stored last shown campaign ID.", v46, 2u);
      MEMORY[0x1DA7043F0](v46, -1, -1);
    }

    swift_beginAccess();
    v47 = *(v21 + 80);
    v48 = *(v21 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v21 + 56, v47);
    (*(v48 + 88))(0, 0xE000000000000000, v47, v48);
    v49 = *(v21 + 80);
    v50 = *(v21 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v21 + 56, v49);
    (*(v50 + 112))(0, 0xE000000000000000, v49, v50);
    swift_endAccess();
    LOBYTE(v83) = 0;
    sub_1D7747CD0(&qword_1EE0938D0, v51, type metadata accessor for AppLaunchUpsellManager, &protocol conformance descriptor for AppLaunchUpsellManager);
    sub_1D78B3724();
  }

  if (qword_1EE095498 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (v83 == 1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v52 = sub_1D78B4304();
    __swift_project_value_buffer(v52, qword_1EE09C288);
    v53 = sub_1D78B42E4();
    v54 = sub_1D78B60A4();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1D7739000, v53, v54, "From debug: resetting the upsell last seen date.", v55, 2u);
      MEMORY[0x1DA7043F0](v55, -1, -1);
    }

    v56 = sub_1D78B3394();
    v57 = v64;
    (*(*(v56 - 8) + 56))(v64, 1, 1, v56);
    swift_beginAccess();
    v58 = *(v21 + 80);
    v59 = *(v21 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v21 + 56, v58);
    (*(v59 + 64))(v57, v58, v59);
    swift_endAccess();
    LOBYTE(v83) = 0;
    sub_1D7747CD0(&qword_1EE0938D0, v60, type metadata accessor for AppLaunchUpsellManager, &protocol conformance descriptor for AppLaunchUpsellManager);
    sub_1D78B3724();
  }

  v61 = [objc_opt_self() defaultCenter];
  v62 = qword_1EE08FDF8;

  if (v62 != -1)
  {
    swift_once();
  }

  [v61 addObserver:v21 selector:sel_handleAMSUpsellDismiss name:qword_1EE08FE00 object:0];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1D77473C0(v73, sub_1D7746910);
  sub_1D77473C0(v74, sub_1D77468A8);
  sub_1D77473C0(v75, sub_1D7746840);
  sub_1D77473C0(v76, sub_1D77467D8);
  sub_1D77473C0(v77, sub_1D7746770);
  __swift_destroy_boxed_opaque_existential_1(v78);
  __swift_destroy_boxed_opaque_existential_1(v79);
  sub_1D77473C0(v84, sub_1D7746910);
  sub_1D77473C0(v85, sub_1D77468A8);
  sub_1D77473C0(v86, sub_1D7746840);
  sub_1D77473C0(v87, sub_1D77467D8);
  sub_1D77473C0(v88, sub_1D7746770);
  sub_1D77473C0(v89, sub_1D7746B4C);
  sub_1D77473C0(v91, sub_1D7746AE4);
  __swift_destroy_boxed_opaque_existential_1(v93);
  __swift_destroy_boxed_opaque_existential_1(v94);
  return v21;
}

uint64_t AppLaunchUpsellManager.__allocating_init(configurationManager:bundleSubscriptionManager:offerManager:dataStore:router:appLaunchMethodChecker:networkReachability:articlePrefetcher:appLaunchUpsellTracker:offlineProvider:articleURLHandlerPatternProvider:articleURLHandlerMatchIDProvider:headlineService:featureAvailability:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v74 = a4;
  v75 = a8;
  v77 = a3;
  v78 = a7;
  v71 = a5;
  v72 = a6;
  v79 = a16;
  v80 = a15;
  v81 = a14;
  v82 = a13;
  v83 = a12;
  v84 = a11;
  v76 = a9;
  sub_1D77441E4(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v70 = &v69 - v21;
  v22 = sub_1D78B3884();
  MEMORY[0x1EEE9AC00](v22, v23);
  v73 = v16;
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  sub_1D7747C80(0, &qword_1EE0953A8, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6568]);
  swift_allocObject();
  *(v24 + 160) = sub_1D78B3B74();
  *v85 = MEMORY[0x1E69E7CC0];
  sub_1D7747CD0(&qword_1EE095420, 255, MEMORY[0x1E69D6388], MEMORY[0x1E69D6390]);
  v25 = MEMORY[0x1E69D6388];
  sub_1D77441E4(0, &unk_1EE0900D8, MEMORY[0x1E69D6388], MEMORY[0x1E69E62F8]);
  v26 = v25;
  v27 = v71;
  sub_1D7746978(&qword_1EE0900D0, &unk_1EE0900D8, v26);
  v28 = v72;
  sub_1D78B6324();
  sub_1D78B38A4();
  swift_allocObject();
  *(v24 + 168) = sub_1D78B3894();
  *(v24 + 176) = 0;
  sub_1D77469DC(0);
  swift_allocObject();
  *(v24 + 184) = sub_1D78B3974();
  *(v24 + 472) = 0;
  *(v24 + 16) = a1;
  v29 = v77;
  *(v24 + 32) = a2;
  *(v24 + 40) = v29;
  *(v24 + 48) = v74;
  sub_1D774584C(v27, v24 + 56);
  sub_1D774584C(v28, v24 + 96);
  v30 = v75;
  v31 = v76;
  *(v24 + 144) = v78;
  *(v24 + 152) = v30;
  *(v24 + 136) = v31;
  sub_1D7746708(a10, v24 + 192, sub_1D7746AE4);
  sub_1D7746708(v84, v24 + 232, sub_1D7746B4C);
  sub_1D7746708(v83, v24 + 272, sub_1D7746770);
  sub_1D7746708(v82, v24 + 312, sub_1D77467D8);
  sub_1D7746708(v81, v24 + 352, sub_1D7746840);
  sub_1D7746708(v80, v24 + 392, sub_1D77468A8);
  sub_1D7746708(v79, v24 + 432, sub_1D7746910);
  v32 = qword_1EE095510;
  v74 = a1;
  swift_unknownObjectRetain();
  v75 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (v32 != -1)
  {
    swift_once();
  }

  sub_1D7747CD0(&qword_1EE0938D8, v33, type metadata accessor for AppLaunchUpsellManager, &protocol conformance descriptor for AppLaunchUpsellManager);
  sub_1D78B3574();
  if (v85[0] == 1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v34 = sub_1D78B4304();
    __swift_project_value_buffer(v34, qword_1EE09C288);
    v35 = sub_1D78B42E4();
    v36 = sub_1D78B60A4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1D7739000, v35, v36, "From debug: resetting the stored app launch count.", v37, 2u);
      MEMORY[0x1DA7043F0](v37, -1, -1);
    }

    swift_beginAccess();
    v38 = *(v24 + 80);
    v39 = *(v24 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v24 + 56, v38);
    (*(v39 + 16))(0, v38, v39);
    swift_endAccess();
    v85[0] = 0;
    sub_1D7747CD0(&qword_1EE0938D0, v40, type metadata accessor for AppLaunchUpsellManager, &protocol conformance descriptor for AppLaunchUpsellManager);
    sub_1D78B3724();
  }

  if (qword_1EE0954A8 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (v85[0] == 1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v41 = sub_1D78B4304();
    __swift_project_value_buffer(v41, qword_1EE09C288);
    v42 = sub_1D78B42E4();
    v43 = sub_1D78B60A4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1D7739000, v42, v43, "From debug: resetting the stored app launch upsell instance ID.", v44, 2u);
      MEMORY[0x1DA7043F0](v44, -1, -1);
    }

    swift_beginAccess();
    v45 = *(v24 + 80);
    v46 = *(v24 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v24 + 56, v45);
    (*(v46 + 40))(0, 0xE000000000000000, v45, v46);
    swift_endAccess();
    v85[0] = 0;
    sub_1D7747CD0(&qword_1EE0938D0, v47, type metadata accessor for AppLaunchUpsellManager, &protocol conformance descriptor for AppLaunchUpsellManager);
    sub_1D78B3724();
  }

  if (qword_1EE095480 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (v85[0] == 1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v48 = sub_1D78B4304();
    __swift_project_value_buffer(v48, qword_1EE09C288);
    v49 = sub_1D78B42E4();
    v50 = sub_1D78B60A4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1D7739000, v49, v50, "From debug: resetting the stored last shown campaign ID.", v51, 2u);
      MEMORY[0x1DA7043F0](v51, -1, -1);
    }

    swift_beginAccess();
    v52 = *(v24 + 80);
    v53 = *(v24 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v24 + 56, v52);
    (*(v53 + 88))(0, 0xE000000000000000, v52, v53);
    v54 = *(v24 + 80);
    v55 = *(v24 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v24 + 56, v54);
    (*(v55 + 112))(0, 0xE000000000000000, v54, v55);
    swift_endAccess();
    v85[0] = 0;
    sub_1D7747CD0(&qword_1EE0938D0, v56, type metadata accessor for AppLaunchUpsellManager, &protocol conformance descriptor for AppLaunchUpsellManager);
    sub_1D78B3724();
  }

  if (qword_1EE095498 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (v85[0] == 1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v57 = sub_1D78B4304();
    __swift_project_value_buffer(v57, qword_1EE09C288);
    v58 = sub_1D78B42E4();
    v59 = sub_1D78B60A4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1D7739000, v58, v59, "From debug: resetting the upsell last seen date.", v60, 2u);
      MEMORY[0x1DA7043F0](v60, -1, -1);
    }

    v61 = sub_1D78B3394();
    v62 = v70;
    (*(*(v61 - 8) + 56))(v70, 1, 1, v61);
    swift_beginAccess();
    v63 = *(v24 + 80);
    v64 = *(v24 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v24 + 56, v63);
    (*(v64 + 64))(v62, v63, v64);
    swift_endAccess();
    v85[0] = 0;
    sub_1D7747CD0(&qword_1EE0938D0, v65, type metadata accessor for AppLaunchUpsellManager, &protocol conformance descriptor for AppLaunchUpsellManager);
    sub_1D78B3724();
  }

  v66 = [objc_opt_self() defaultCenter];
  v67 = qword_1EE08FDF8;

  if (v67 != -1)
  {
    swift_once();
  }

  [v66 addObserver:v24 selector:sel_handleAMSUpsellDismiss name:qword_1EE08FE00 object:0];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1D77473C0(v79, sub_1D7746910);
  sub_1D77473C0(v80, sub_1D77468A8);
  sub_1D77473C0(v81, sub_1D7746840);
  sub_1D77473C0(v82, sub_1D77467D8);
  sub_1D77473C0(v83, sub_1D7746770);
  sub_1D77473C0(v84, sub_1D7746B4C);
  sub_1D77473C0(a10, sub_1D7746AE4);
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v24;
}

uint64_t *AppLaunchUpsellManager.init(configurationManager:bundleSubscriptionManager:offerManager:dataStore:router:appLaunchMethodChecker:networkReachability:articlePrefetcher:appLaunchUpsellTracker:offlineProvider:articleURLHandlerPatternProvider:articleURLHandlerMatchIDProvider:headlineService:featureAvailability:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = v16;
  v74 = a4;
  v75 = a8;
  v77 = a3;
  v78 = a7;
  v71 = a5;
  v72 = a6;
  v79 = a16;
  v80 = a15;
  v81 = a14;
  v82 = a13;
  v83 = a12;
  v84 = a11;
  v76 = a9;
  v73 = *v16;
  sub_1D77441E4(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v70 = &v69 - v22;
  v23 = sub_1D78B3884();
  MEMORY[0x1EEE9AC00](v23, v24);
  v16[3] = 0;
  sub_1D7747C80(0, &qword_1EE0953A8, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6568]);
  swift_allocObject();
  v16[20] = sub_1D78B3B74();
  *v85 = MEMORY[0x1E69E7CC0];
  sub_1D7747CD0(&qword_1EE095420, 255, MEMORY[0x1E69D6388], MEMORY[0x1E69D6390]);
  v25 = MEMORY[0x1E69D6388];
  sub_1D77441E4(0, &unk_1EE0900D8, MEMORY[0x1E69D6388], MEMORY[0x1E69E62F8]);
  v26 = v25;
  v27 = v71;
  sub_1D7746978(&qword_1EE0900D0, &unk_1EE0900D8, v26);
  v28 = v72;
  sub_1D78B6324();
  sub_1D78B38A4();
  swift_allocObject();
  v16[21] = sub_1D78B3894();
  *(v16 + 176) = 0;
  sub_1D77469DC(0);
  swift_allocObject();
  v16[23] = sub_1D78B3974();
  v16[59] = 0;
  v16[2] = a1;
  v29 = v77;
  v16[4] = a2;
  v16[5] = v29;
  v16[6] = v74;
  sub_1D774584C(v27, (v16 + 7));
  sub_1D774584C(v28, (v16 + 12));
  v30 = v75;
  v31 = v76;
  v16[18] = v78;
  v16[19] = v30;
  v16[17] = v31;
  sub_1D7746708(a10, (v16 + 24), sub_1D7746AE4);
  sub_1D7746708(v84, (v16 + 29), sub_1D7746B4C);
  sub_1D7746708(v83, (v16 + 34), sub_1D7746770);
  sub_1D7746708(v82, (v16 + 39), sub_1D77467D8);
  sub_1D7746708(v81, (v16 + 44), sub_1D7746840);
  sub_1D7746708(v80, (v16 + 49), sub_1D77468A8);
  sub_1D7746708(v79, (v16 + 54), sub_1D7746910);
  v32 = qword_1EE095510;
  v74 = a1;
  swift_unknownObjectRetain();
  v75 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (v32 != -1)
  {
    swift_once();
  }

  sub_1D7747CD0(&qword_1EE0938D8, v33, type metadata accessor for AppLaunchUpsellManager, &protocol conformance descriptor for AppLaunchUpsellManager);
  sub_1D78B3574();
  if (v85[0] == 1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v34 = sub_1D78B4304();
    __swift_project_value_buffer(v34, qword_1EE09C288);
    v35 = sub_1D78B42E4();
    v36 = sub_1D78B60A4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1D7739000, v35, v36, "From debug: resetting the stored app launch count.", v37, 2u);
      MEMORY[0x1DA7043F0](v37, -1, -1);
    }

    swift_beginAccess();
    v38 = v17[10];
    v39 = v17[11];
    __swift_mutable_project_boxed_opaque_existential_1((v17 + 7), v38);
    (*(v39 + 16))(0, v38, v39);
    swift_endAccess();
    v85[0] = 0;
    sub_1D7747CD0(&qword_1EE0938D0, v40, type metadata accessor for AppLaunchUpsellManager, &protocol conformance descriptor for AppLaunchUpsellManager);
    sub_1D78B3724();
  }

  if (qword_1EE0954A8 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (v85[0] == 1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v41 = sub_1D78B4304();
    __swift_project_value_buffer(v41, qword_1EE09C288);
    v42 = sub_1D78B42E4();
    v43 = sub_1D78B60A4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1D7739000, v42, v43, "From debug: resetting the stored app launch upsell instance ID.", v44, 2u);
      MEMORY[0x1DA7043F0](v44, -1, -1);
    }

    swift_beginAccess();
    v45 = v17[10];
    v46 = v17[11];
    __swift_mutable_project_boxed_opaque_existential_1((v17 + 7), v45);
    (*(v46 + 40))(0, 0xE000000000000000, v45, v46);
    swift_endAccess();
    v85[0] = 0;
    sub_1D7747CD0(&qword_1EE0938D0, v47, type metadata accessor for AppLaunchUpsellManager, &protocol conformance descriptor for AppLaunchUpsellManager);
    sub_1D78B3724();
  }

  if (qword_1EE095480 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (v85[0] == 1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v48 = sub_1D78B4304();
    __swift_project_value_buffer(v48, qword_1EE09C288);
    v49 = sub_1D78B42E4();
    v50 = sub_1D78B60A4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1D7739000, v49, v50, "From debug: resetting the stored last shown campaign ID.", v51, 2u);
      MEMORY[0x1DA7043F0](v51, -1, -1);
    }

    swift_beginAccess();
    v52 = v17[10];
    v53 = v17[11];
    __swift_mutable_project_boxed_opaque_existential_1((v17 + 7), v52);
    (*(v53 + 88))(0, 0xE000000000000000, v52, v53);
    v54 = v17[10];
    v55 = v17[11];
    __swift_mutable_project_boxed_opaque_existential_1((v17 + 7), v54);
    (*(v55 + 112))(0, 0xE000000000000000, v54, v55);
    swift_endAccess();
    v85[0] = 0;
    sub_1D7747CD0(&qword_1EE0938D0, v56, type metadata accessor for AppLaunchUpsellManager, &protocol conformance descriptor for AppLaunchUpsellManager);
    sub_1D78B3724();
  }

  if (qword_1EE095498 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  if (v85[0] == 1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v57 = sub_1D78B4304();
    __swift_project_value_buffer(v57, qword_1EE09C288);
    v58 = sub_1D78B42E4();
    v59 = sub_1D78B60A4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1D7739000, v58, v59, "From debug: resetting the upsell last seen date.", v60, 2u);
      MEMORY[0x1DA7043F0](v60, -1, -1);
    }

    v61 = sub_1D78B3394();
    v62 = v70;
    (*(*(v61 - 8) + 56))(v70, 1, 1, v61);
    swift_beginAccess();
    v63 = v17[10];
    v64 = v17[11];
    __swift_mutable_project_boxed_opaque_existential_1((v17 + 7), v63);
    (*(v64 + 64))(v62, v63, v64);
    swift_endAccess();
    v85[0] = 0;
    sub_1D7747CD0(&qword_1EE0938D0, v65, type metadata accessor for AppLaunchUpsellManager, &protocol conformance descriptor for AppLaunchUpsellManager);
    sub_1D78B3724();
  }

  v66 = [objc_opt_self() defaultCenter];
  v67 = qword_1EE08FDF8;

  if (v67 != -1)
  {
    swift_once();
  }

  [v66 addObserver:v17 selector:sel_handleAMSUpsellDismiss name:qword_1EE08FE00 object:0];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1D77473C0(v79, sub_1D7746910);
  sub_1D77473C0(v80, sub_1D77468A8);
  sub_1D77473C0(v81, sub_1D7746840);
  sub_1D77473C0(v82, sub_1D77467D8);
  sub_1D77473C0(v83, sub_1D7746770);
  sub_1D77473C0(v84, sub_1D7746B4C);
  sub_1D77473C0(a10, sub_1D7746AE4);
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v17;
}

uint64_t AppLaunchUpsellManager.deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1D77473C0(v0 + 192, sub_1D7746AE4);
  sub_1D77473C0(v0 + 232, sub_1D7746B4C);
  sub_1D77473C0(v0 + 272, sub_1D7746770);
  sub_1D77473C0(v0 + 312, sub_1D77467D8);
  sub_1D77473C0(v0 + 352, sub_1D7746840);
  sub_1D77473C0(v0 + 392, sub_1D77468A8);
  sub_1D77473C0(v0 + 432, sub_1D7746910);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t AppLaunchUpsellManager.__deallocating_deinit()
{
  AppLaunchUpsellManager.deinit();

  return swift_deallocClassInstance();
}

Swift::Bool __swiftcall AppLaunchUpsellManager.upsellWasShown()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  (*(v3 + 32))(v2, v3);
  v5 = v4;
  swift_endAccess();
  if (!v5)
  {
    return 0;
  }

  v6 = v1[3];
  if (v6 && (v7 = [v6 appLaunchUpsellInstanceID]) != 0)
  {
    v8 = v7;
    v9 = sub_1D78B5C74();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  swift_beginAccess();
  v12 = v1[10];
  v13 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v12);
  v14 = (*(v13 + 32))(v12, v13);
  v16 = v15;
  swift_endAccess();
  if (v11)
  {
    if (v16)
    {
      if (v9 == v14 && v11 == v16)
      {
      }

      else
      {
        v18 = sub_1D78B6724();

        if ((v18 & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

LABEL_15:

    return 0;
  }

  if (v16)
  {
    goto LABEL_15;
  }

  return 1;
}

uint64_t AppLaunchUpsellManager.userIsEligibleForUpsellPresentation(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v6 = sub_1D78B4304();
    __swift_project_value_buffer(v6, qword_1EE09C288);
    v7 = sub_1D78B42E4();
    v8 = sub_1D78B6094();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D7739000, v7, v8, "Failed to retrieve a valid paid visibility value from the configuration. Upsell not eligible", v9, 2u);
      MEMORY[0x1DA7043F0](v9, -1, -1);
    }

    sub_1D7746708(v2 + 232, &v79, sub_1D7746B4C);
    v10 = *(&v80 + 1);
    if (*(&v80 + 1))
    {
      v11 = v81;
      __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
      LOBYTE(v82) = 9;
      (*(v11 + 8))(&v82, 0, 0, v10, v11);
LABEL_115:
      __swift_destroy_boxed_opaque_existential_1(&v79);
      return 0;
    }

    goto LABEL_112;
  }

  v5 = [v4 appLaunchUpsellPaidVisibility];
  if (objc_getAssociatedObject(a1, (a1 + 1)))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v82 = 0u;
    v83 = 0u;
  }

  v79 = v82;
  v80 = v83;
  v12 = MEMORY[0x1E69E7CA0];
  if (*(&v83 + 1))
  {
    sub_1D773F004(0, &qword_1EE08FBD0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v13 = v78;
      v14 = [v78 integerValue];
      if (v14 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }
  }

  else
  {
    sub_1D77AE570(&v79, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D7747C80);
  }

  v13 = 0;
  v14 = 0;
LABEL_17:
  if (objc_getAssociatedObject(a1, ~v14))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v82 = 0u;
    v83 = 0u;
  }

  v79 = v82;
  v80 = v83;
  if (*(&v83 + 1))
  {
    sub_1D773F004(0, &qword_1EE08FBD0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v15 = v78;
      v16 = [v15 integerValue];

      v17 = v16 - 91;
      goto LABEL_25;
    }
  }

  else
  {
    sub_1D77AE570(&v79, &qword_1EE08F9C0, v12 + 8, MEMORY[0x1E69E6720], sub_1D7747C80);
  }

LABEL_24:

  v17 = -91;
LABEL_25:
  v18 = v17 ^ v14;
  v19 = (v18 & 1) == 0;
  if (v5 <= 1)
  {
    if (v5 == 1)
    {
      v19 = v18 & 1;
      goto LABEL_51;
    }

    goto LABEL_32;
  }

  if (v5 == 2)
  {
LABEL_51:
    if (v18)
    {
      goto LABEL_52;
    }

    goto LABEL_33;
  }

  if (v5 != 3)
  {
LABEL_32:
    v19 = 0;
    if (v18)
    {
      goto LABEL_52;
    }

    goto LABEL_33;
  }

  v19 = 1;
  if (v18)
  {
LABEL_52:
    v32 = *(v2 + 24);
    if (v32)
    {
      v33 = [v32 appLaunchUpsellBundleTrialVisibility];
      v34 = v33;
      if (v33 == 2)
      {
        v38 = *(v2 + 48);
        ObjectType = swift_getObjectType();
        v37 = (*(v38 + 48))(ObjectType, v38);
LABEL_59:
        v40 = v19 & v37;
        if (qword_1EE0904F8 != -1)
        {
          swift_once();
        }

        v41 = sub_1D78B4304();
        __swift_project_value_buffer(v41, qword_1EE09C288);

        v42 = sub_1D78B42E4();
        v43 = sub_1D78B60A4();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          *&v79 = v45;
          *v44 = 136316162;
          if (v40)
          {
            v46 = 1702195828;
          }

          else
          {
            v46 = 0x65736C6166;
          }

          if (v40)
          {
            v47 = 0xE400000000000000;
          }

          else
          {
            v47 = 0xE500000000000000;
          }

          v48 = sub_1D77AD82C(v46, v47, &v79);

          *(v44 + 4) = v48;
          *(v44 + 12) = 2080;
          if (v5 == 3)
          {
            v52 = 0xE400000000000000;
            v51 = 1752461154;
          }

          else
          {
            v49 = 0xE700000000000000;
            v50 = 0x646961706E75;
            if (v5 == 1)
            {
              v49 = 0xE600000000000000;
            }

            else
            {
              v50 = 0x6E776F6E6B6E75;
            }

            if (v5 == 2)
            {
              v51 = 1684627824;
            }

            else
            {
              v51 = v50;
            }

            if (v5 == 2)
            {
              v52 = 0xE400000000000000;
            }

            else
            {
              v52 = v49;
            }
          }

          v58 = sub_1D77AD82C(v51, v52, &v79);

          *(v44 + 14) = v58;
          *(v44 + 22) = 2080;
          *(v44 + 24) = sub_1D77AD82C(0x65736C6166, 0xE500000000000000, &v79);
          *(v44 + 32) = 2080;
          v59 = 0xE700000000000000;
          v60 = 0x656C626967696C65;
          v61 = 0x626967696C656E69;
          if (v34 == 1)
          {
            v59 = 0xEA0000000000656CLL;
          }

          else
          {
            v61 = 0x6E776F6E6B6E75;
          }

          if (v34 == 2)
          {
            v59 = 0xE800000000000000;
          }

          else
          {
            v60 = v61;
          }

          if (v34 == 3)
          {
            v62 = 1752461154;
          }

          else
          {
            v62 = v60;
          }

          if (v34 == 3)
          {
            v63 = 0xE400000000000000;
          }

          else
          {
            v63 = v59;
          }

          v64 = sub_1D77AD82C(v62, v63, &v79);

          *(v44 + 34) = v64;
          *(v44 + 42) = 2080;
          v65 = *(v2 + 48);
          v66 = swift_getObjectType();
          v67 = (*(v65 + 48))(v66, v65);
          v68 = (v67 & 1) == 0;
          if (v67)
          {
            v69 = 1702195828;
          }

          else
          {
            v69 = 0x65736C6166;
          }

          if (v68)
          {
            v70 = 0xE500000000000000;
          }

          else
          {
            v70 = 0xE400000000000000;
          }

          v71 = sub_1D77AD82C(v69, v70, &v79);

          *(v44 + 44) = v71;
          _os_log_impl(&dword_1D7739000, v42, v43, "userIsEligibleForUpsellPresentation=%s [paidVisibility=%s, isSubscribed=%s], [trialVisibility=%s, isFreeTrialEligible=%s]", v44, 0x34u);
          swift_arrayDestroy();
          MEMORY[0x1DA7043F0](v45, -1, -1);
          MEMORY[0x1DA7043F0](v44, -1, -1);

          if (v40)
          {
            return 1;
          }
        }

        else
        {

          if (v40)
          {
            return 1;
          }
        }

        sub_1D7746708(v2 + 232, &v79, sub_1D7746B4C);
        v54 = *(&v80 + 1);
        if (*(&v80 + 1))
        {
          v55 = v81;
          __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
          LOBYTE(v82) = 10;
          v73 = *(v2 + 24);
          if (v73)
          {
            v57 = [v73 appLaunchUpsellArticleID];
            if (v57)
            {
LABEL_111:
              v74 = v57;
              v75 = sub_1D78B5C74();
              v77 = v76;

LABEL_114:
              (*(v55 + 8))(&v82, v75, v77, v54, v55);

              goto LABEL_115;
            }
          }

LABEL_113:
          v75 = 0;
          v77 = 0;
          goto LABEL_114;
        }

        goto LABEL_112;
      }

      if (v33 == 1)
      {
        v35 = *(v2 + 48);
        v36 = swift_getObjectType();
        v37 = (*(v35 + 48))(v36, v35) ^ 1;
        goto LABEL_59;
      }
    }

    else
    {
      v34 = 0;
    }

    v37 = 1;
    goto LABEL_59;
  }

LABEL_33:
  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v20 = sub_1D78B4304();
  __swift_project_value_buffer(v20, qword_1EE09C288);
  v21 = sub_1D78B42E4();
  v22 = sub_1D78B60A4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v79 = v24;
    *v23 = 136315650;
    if (v19)
    {
      v25 = 1702195828;
    }

    else
    {
      v25 = 0x65736C6166;
    }

    if (v19)
    {
      v26 = 0xE400000000000000;
    }

    else
    {
      v26 = 0xE500000000000000;
    }

    v27 = sub_1D77AD82C(v25, v26, &v79);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    if (v5 == 3)
    {
      v31 = 0xE400000000000000;
      v30 = 1752461154;
    }

    else
    {
      v28 = 0x6E776F6E6B6E75;
      v29 = 0xE700000000000000;
      if (v5 == 1)
      {
        v28 = 0x646961706E75;
        v29 = 0xE600000000000000;
      }

      if (v5 == 2)
      {
        v30 = 1684627824;
      }

      else
      {
        v30 = v28;
      }

      if (v5 == 2)
      {
        v31 = 0xE400000000000000;
      }

      else
      {
        v31 = v29;
      }
    }

    v53 = sub_1D77AD82C(v30, v31, &v79);

    *(v23 + 14) = v53;
    *(v23 + 22) = 2080;
    *(v23 + 24) = sub_1D77AD82C(1702195828, 0xE400000000000000, &v79);
    _os_log_impl(&dword_1D7739000, v21, v22, "userIsEligibleForUpsellPresentation=%s [paidVisibility=%s, isSubscribed=%s]. Ignoring trialStatusEligibility because the user is subscribed", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA7043F0](v24, -1, -1);
    MEMORY[0x1DA7043F0](v23, -1, -1);
  }

  if (v19)
  {
    return 1;
  }

  sub_1D7746708(v2 + 232, &v79, sub_1D7746B4C);
  v54 = *(&v80 + 1);
  if (*(&v80 + 1))
  {
    v55 = v81;
    __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
    LOBYTE(v82) = 10;
    v56 = *(v2 + 24);
    if (v56)
    {
      v57 = [v56 appLaunchUpsellArticleID];
      if (v57)
      {
        goto LABEL_111;
      }
    }

    goto LABEL_113;
  }

LABEL_112:
  sub_1D77473C0(&v79, sub_1D7746B4C);
  return 0;
}

uint64_t sub_1D77A7130()
{
  result = MEMORY[0x1DA700DF0]();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t AppLaunchUpsellManager.whenInitialAppLaunchUpsellProcessingCompletes.getter()
{
  result = MEMORY[0x1DA700DF0]();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D77A7268()
{
  v1 = v0;
  v2 = *v0;
  sub_1D77441E4(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v94 - v5;
  v7 = sub_1D78B3394();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B3384();
  v12 = [objc_opt_self() mainBundle];
  v13 = [v12 bundleIdentifier];

  if (v13)
  {
    v14 = sub_1D78B5C74();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  (*(v8 + 16))(v6, v11, v7);
  v98 = v8;
  v99 = v7;
  (*(v8 + 56))(v6, 0, 1, v7);
  swift_beginAccess();
  v17 = v1[10];
  v18 = v1[11];
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 7), v17);
  (*(v18 + 64))(v6, v17, v18);
  swift_endAccess();
  if (qword_1EE08F2E0 != -1)
  {
    swift_once();
  }

  sub_1D7747CD0(&qword_1EE0938D0, v19, type metadata accessor for AppLaunchUpsellManager, &protocol conformance descriptor for AppLaunchUpsellManager);
  v97 = v11;
  sub_1D78B3724();
  swift_beginAccess();
  v20 = v2;
  v21 = v1[10];
  v22 = v1[11];
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 7), v21);
  v23 = *(v22 + 112);

  v23(v14, v16, v21, v22);
  swift_endAccess();
  if (qword_1EE08F2D0 != -1)
  {
    swift_once();
  }

  v101 = v14;
  v102 = v16;
  sub_1D78B3724();

  v24 = v1[3];
  if (v24)
  {
    v25 = v24;
    v26 = [v25 appLaunchUpsellArticleID];
    if (v26)
    {
      v94 = v20;
      v27 = v26;
      v28 = sub_1D78B5C74();
      v95 = v29;

      v30 = [v25 appLaunchUpsellCampaignID];
      v31 = v99;
      v96 = v28;
      if (v30)
      {
        v32 = v30;
        v33 = sub_1D78B5C74();
        v35 = v34;

        v36 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v36 = v33 & 0xFFFFFFFFFFFFLL;
        }

        if (v36)
        {
          swift_beginAccess();
          v38 = v1[10];
          v37 = v1[11];
          __swift_mutable_project_boxed_opaque_existential_1((v1 + 7), v38);
          v39 = *(v37 + 88);

          v39(v33, v35, v38, v37);
          swift_endAccess();
          if (qword_1EC9C8548 != -1)
          {
            swift_once();
          }

          v101 = v33;
          v102 = v35;
          sub_1D78B3724();

          v31 = v99;
        }

        else
        {
        }

        v28 = v96;
      }

      if (qword_1EE0904F8 != -1)
      {
        swift_once();
      }

      v49 = sub_1D78B4304();
      v50 = __swift_project_value_buffer(v49, qword_1EE09C288);
      v51 = v25;
      v52 = sub_1D78B42E4();
      v53 = sub_1D78B60A4();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 134217984;
        *(v54 + 4) = [v51 appLaunchUpsellRequiredAppLaunchCount];

        _os_log_impl(&dword_1D7739000, v52, v53, "App launch count has met or exceeded target value of %lld. Resetting app launch count to 0.", v54, 0xCu);
        MEMORY[0x1DA7043F0](v54, -1, -1);
      }

      else
      {

        v52 = v51;
      }

      swift_beginAccess();
      v55 = v1[10];
      v56 = v1[11];
      __swift_mutable_project_boxed_opaque_existential_1((v1 + 7), v55);
      (*(v56 + 16))(0, v55, v56);
      swift_endAccess();
      v57 = v51;
      v58 = sub_1D78B42E4();
      v59 = sub_1D78B60A4();

      v60 = os_log_type_enabled(v58, v59);
      v99 = v57;
      if (v60)
      {
        v94 = v50;
        v61 = v31;
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v101 = v63;
        *v62 = 136315138;
        v64 = [v57 appLaunchUpsellInstanceID];
        if (v64)
        {
          v65 = v64;
          v66 = sub_1D78B5C74();
          v68 = v67;
        }

        else
        {
          v66 = 0;
          v68 = 0xE000000000000000;
        }

        v31 = v61;
        v69 = sub_1D77AD82C(v66, v68, &v101);

        *(v62 + 4) = v69;
        _os_log_impl(&dword_1D7739000, v58, v59, "Updating app stored last app launch instance ID to [%s].", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v63);
        MEMORY[0x1DA7043F0](v63, -1, -1);
        MEMORY[0x1DA7043F0](v62, -1, -1);

        v28 = v96;
        v57 = v99;
      }

      else
      {
      }

      v70 = [v57 appLaunchUpsellInstanceID];
      v71 = v95;
      if (v70)
      {
        v72 = v70;
        v73 = sub_1D78B5C74();
        v75 = v74;
      }

      else
      {
        v73 = 0;
        v75 = 0;
      }

      swift_beginAccess();
      v76 = v1[10];
      v77 = v1[11];
      __swift_mutable_project_boxed_opaque_existential_1((v1 + 7), v76);
      (*(v77 + 40))(v73, v75, v76, v77);
      swift_endAccess();

      v78 = sub_1D78B42E4();
      v79 = sub_1D78B60A4();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v101 = v81;
        *v80 = 136315138;
        *(v80 + 4) = sub_1D77AD82C(v28, v71, &v101);
        _os_log_impl(&dword_1D7739000, v78, v79, "Presenting upsell using article ID [%s].", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v81);
        MEMORY[0x1DA7043F0](v81, -1, -1);
        MEMORY[0x1DA7043F0](v80, -1, -1);
      }

      sub_1D7746708((v1 + 29), &v101, sub_1D7746B4C);
      v82 = v103;
      if (v103)
      {
        v83 = v104;
        __swift_project_boxed_opaque_existential_1(&v101, v103);
        v100 = 0;
        v84 = *(v83 + 8);

        v84(&v100, v28, v71, v82, v83);

        __swift_destroy_boxed_opaque_existential_1(&v101);
      }

      else
      {
        sub_1D77473C0(&v101, sub_1D7746B4C);
      }

      v85 = v99;
      v86 = sub_1D78B42E4();
      v87 = sub_1D78B60A4();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_1D7739000, v86, v87, "Routing to campaign landing page.", v88, 2u);
        MEMORY[0x1DA7043F0](v88, -1, -1);
      }

      sub_1D77A7EE0(v1, &v101);
      v89 = v101;
      v90 = v1[15];
      v91 = v1[16];
      __swift_project_boxed_opaque_existential_1(v1 + 12, v90);
      v101 = v89;
      v93 = sub_1D7747CD0(&qword_1EE08ED68, v92, type metadata accessor for AppLaunchUpsellManager, &protocol conformance descriptor for AppLaunchUpsellManager);
      (*(v91 + 32))(v28, v71, 0, 0, 0, 0, &v101, v1, v93, 0, v90, v91);

      (*(v98 + 8))(v97, v31);
      return sub_1D77AE2E8(v89);
    }
  }

  sub_1D7746708((v1 + 29), &v101, sub_1D7746B4C);
  v40 = v103;
  if (v103)
  {
    v41 = v104;
    __swift_project_boxed_opaque_existential_1(&v101, v103);
    v100 = 4;
    (*(v41 + 8))(&v100, 0, 0, v40, v41);
    __swift_destroy_boxed_opaque_existential_1(&v101);
  }

  else
  {
    sub_1D77473C0(&v101, sub_1D7746B4C);
  }

  v42 = v98;
  v43 = v99;
  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v44 = sub_1D78B4304();
  __swift_project_value_buffer(v44, qword_1EE09C288);
  v45 = sub_1D78B42E4();
  v46 = sub_1D78B60A4();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1D7739000, v45, v46, "Paid bundle configuration or article ID were lost before presentation. The upsell will not be shown.", v47, 2u);
    MEMORY[0x1DA7043F0](v47, -1, -1);
  }

  sub_1D78B3854();
  if ((v1[22] & 1) == 0)
  {
    sub_1D78B3B64();
    *(v1 + 176) = 1;
  }

  sub_1D78B3864();

  sub_1D78B4224();

  return (*(v42 + 8))(v97, v43);
}

uint64_t sub_1D77A7EE0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for AppLaunchMethod(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7746708((a1 + 54), &v13, sub_1D7746910);
  if (!v14)
  {
    result = sub_1D77473C0(&v13, sub_1D7746910);
LABEL_7:
    *a2 = 1;
    return result;
  }

  sub_1D7741E34(&v13, v15);
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  if ((sub_1D78B59C4() & 1) == 0)
  {
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    goto LABEL_7;
  }

  v8 = a1[19];
  ObjectType = swift_getObjectType();
  (*(v8 + 16))(ObjectType, v8);
  v10 = type metadata accessor for AppLaunchMethod.IndirectMethod(0);
  if ((*(*(v10 - 8) + 48))(v7, 1, v10) == 1)
  {
    sub_1D77473C0(v7, type metadata accessor for AppLaunchMethod);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1D77473C0(v7, type metadata accessor for AppLaunchMethod.IndirectMethod);
    if (!EnumCaseMultiPayload)
    {
      *a2 = a1[59];
      swift_unknownObjectRetain();
      return __swift_destroy_boxed_opaque_existential_1(v15);
    }
  }

  *a2 = 1;
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t FCAppLaunchUpsellPaidVisibility.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v1 = 0x646961706E75;
  }

  if (a1 == 2)
  {
    v1 = 1684627824;
  }

  if (a1 == 3)
  {
    return 1752461154;
  }

  else
  {
    return v1;
  }
}

uint64_t FCAppLaunchUpsellBundleTrialVisibility.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v1 = 0x626967696C656E69;
  }

  if (a1 == 2)
  {
    v1 = 0x656C626967696C65;
  }

  if (a1 == 3)
  {
    return 1752461154;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D77A81A4(uint64_t a1)
{
  v3 = sub_1D78B3BD4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D78B3294();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7746708(v1 + 312, &v26, sub_1D77467D8);
  if (v27)
  {
    sub_1D7741E34(&v26, v28);
    sub_1D7746708(v1 + 352, &v24, sub_1D7746840);
    if (v25)
    {
      sub_1D7741E34(&v24, &v26);
      (*(v9 + 16))(v12, a1, v8);
      sub_1D78B3D64();
      swift_allocObject();
      sub_1D78B3D44();
      __swift_project_boxed_opaque_existential_1(v28, v28[3]);
      sub_1D78B5B34();
      sub_1D78B3D54();

      __swift_project_boxed_opaque_existential_1(&v26, v27);
      v21 = sub_1D78B5B24();

      (*(v4 + 8))(v7, v3);
      __swift_destroy_boxed_opaque_existential_1(&v26);
      __swift_destroy_boxed_opaque_existential_1(v28);
      return v21;
    }

    sub_1D77473C0(&v24, sub_1D7746840);
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v17 = sub_1D78B4304();
    __swift_project_value_buffer(v17, qword_1EE09C288);
    v18 = sub_1D78B42E4();
    v19 = sub_1D78B60A4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D7739000, v18, v19, "Unable to parse article ID from URL because no URL handler match ID provider is available.", v20, 2u);
      MEMORY[0x1DA7043F0](v20, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    sub_1D77473C0(&v26, sub_1D77467D8);
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v13 = sub_1D78B4304();
    __swift_project_value_buffer(v13, qword_1EE09C288);
    v14 = sub_1D78B42E4();
    v15 = sub_1D78B60A4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D7739000, v14, v15, "Unable to parse article ID from URL because no URL pattern provider is available.", v16, 2u);
      MEMORY[0x1DA7043F0](v16, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_1D77A85F4(uint64_t a1)
{
  sub_1D7746708(v1 + 392, &v18, sub_1D77468A8);
  if (v19)
  {
    sub_1D7741E34(&v18, v20);
    v3 = sub_1D77A81A4(a1);
    if (v4)
    {
      MEMORY[0x1EEE9AC00](v3, v4);
      sub_1D773D21C(0, &unk_1EE08E580, &protocolRef_FCHeadlineProviding);
      sub_1D78B41F4();

      v5 = sub_1D78B4014();
      sub_1D78B40A4();

      v6 = sub_1D78B4014();
      v7 = sub_1D78B4134();

      __swift_destroy_boxed_opaque_existential_1(v20);
      return v7;
    }

    else
    {
      if (qword_1EE0904F8 != -1)
      {
        swift_once();
      }

      v13 = sub_1D78B4304();
      __swift_project_value_buffer(v13, qword_1EE09C288);
      v14 = sub_1D78B42E4();
      v15 = sub_1D78B60A4();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1D7739000, v14, v15, "Failed to retrieve article ID from URL. Assuming article is not paywalled.", v16, 2u);
        MEMORY[0x1DA7043F0](v16, -1, -1);
      }

      LOBYTE(v18) = 0;
      sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
      swift_allocObject();
      v17 = sub_1D78B4104();
      __swift_destroy_boxed_opaque_existential_1(v20);
      return v17;
    }
  }

  else
  {
    sub_1D77473C0(&v18, sub_1D77468A8);
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v9 = sub_1D78B4304();
    __swift_project_value_buffer(v9, qword_1EE09C288);
    v10 = sub_1D78B42E4();
    v11 = sub_1D78B60A4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D7739000, v10, v11, "Failed to retrieve article ID from URL because no headline service is available.", v12, 2u);
      MEMORY[0x1DA7043F0](v12, -1, -1);
    }

    LOBYTE(v20[0]) = 0;
    sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4104();
  }
}

uint64_t sub_1D77A89C8(void **a1, uint64_t a2)
{
  v2 = *a1;
  *(a2 + 472) = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if ([v2 isPaid] & 1) == 0 && (objc_msgSend(v2, sel_respondsToSelector_, sel_isBundlePaid))
  {
    [v2 isBundlePaid];
  }

  sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t sub_1D77A8AA4()
{
  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D78B4304();
  __swift_project_value_buffer(v0, qword_1EE09C288);
  v1 = sub_1D78B42E4();
  v2 = sub_1D78B6094();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D7739000, v1, v2, "Failed to retrieve article headline. Assuming article is not paywalled.", v3, 2u);
    MEMORY[0x1DA7043F0](v3, -1, -1);
  }

  sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t sub_1D77A8BD4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D78B4304();
  __swift_project_value_buffer(v2, qword_1EE09C288);
  v3 = sub_1D78B42E4();
  v4 = sub_1D78B60A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_1D7739000, v3, v4, "Successfully fetched widget launch article. isPaidArticle?: %{BOOL}d", v5, 8u);
    MEMORY[0x1DA7043F0](v5, -1, -1);
  }

  sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t sub_1D77A8D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  sub_1D774584C(a5 + 56, v13);
  v8 = v14;
  v9 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(v9 + 128);

  v11(sub_1D77AE4D4, v10, v8, v9);

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1D77A8E00(void **a1, uint64_t (*a2)(void **))
{
  v3 = *a1;
  if (*a1)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v4 = sub_1D78B4304();
    __swift_project_value_buffer(v4, qword_1EE09C288);
    v5 = v3;
    v6 = sub_1D78B42E4();
    v7 = sub_1D78B6094();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_1D78B67B4();
      v12 = v11;

      v13 = sub_1D77AD82C(v10, v12, &v19);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1D7739000, v6, v7, "Data store refresh failed with error %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1DA7043F0](v9, -1, -1);
      MEMORY[0x1DA7043F0](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v14 = sub_1D78B4304();
    __swift_project_value_buffer(v14, qword_1EE09C288);
    v15 = sub_1D78B42E4();
    v16 = sub_1D78B60A4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D7739000, v15, v16, "Data store refreshed successfully", v17, 2u);
      MEMORY[0x1DA7043F0](v17, -1, -1);
    }
  }

  v19 = v3;
  return a2(&v19);
}

void sub_1D77A906C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 32);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D7752FB0;
  *(v10 + 24) = v8;
  v12[4] = sub_1D77AE4CC;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D7781488;
  v12[3] = &block_descriptor_48;
  v11 = _Block_copy(v12);

  [v9 refreshBundleSubscriptionWithCachePolicy:1 completion:v11];
  _Block_release(v11);
}

uint64_t sub_1D77A9184(void *a1, uint64_t (*a2)(NSObject *))
{
  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D78B4304();
  __swift_project_value_buffer(v4, qword_1EE09C288);
  v5 = a1;
  v6 = sub_1D78B42E4();
  v7 = sub_1D78B60A4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = [v5 subscriptionState];

    _os_log_impl(&dword_1D7739000, v6, v7, "Finished refreshing bundle subscription status with state=%lu.", v8, 0xCu);
    MEMORY[0x1DA7043F0](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  return a2(v5);
}

uint64_t sub_1D77A92B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;

  if (sub_1D77A944C(v8))
  {
    swift_allocObject();
    v9 = swift_weakInit();
    MEMORY[0x1EEE9AC00](v9, v10);
    sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v11 = sub_1D78B4174();
  }

  else
  {
    sub_1D7747C80(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v11 = sub_1D78B4104();
  }

  return v11;
}

uint64_t sub_1D77A944C(uint64_t a1)
{
  v2 = v1;
  if ((sub_1D77AB9E4() & 1) == 0)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v21 = sub_1D78B4304();
    __swift_project_value_buffer(v21, qword_1EE09C288);
    v22 = sub_1D78B42E4();
    v23 = sub_1D78B60A4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D7739000, v22, v23, "Upsell cannot be presented because the user has already seen another upsell with the same campaign. Checking if upsell would have been presented...", v24, 2u);
      MEMORY[0x1DA7043F0](v24, -1, -1);
    }

    sub_1D7746708(v2 + 232, v77, sub_1D7746B4C);
    v25 = v78;
    if (v78)
    {
      v26 = v79;
      __swift_project_boxed_opaque_existential_1(v77, v78);
      LOBYTE(v76[0]) = 7;
      v27 = *(v2 + 24);
      if (v27 && (v28 = [v27 appLaunchUpsellArticleID]) != 0)
      {
        v29 = v28;
        v30 = sub_1D78B5C74();
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      (*(v26 + 8))(v76, v30, v32, v25, v26);

      __swift_destroy_boxed_opaque_existential_1(v77);
      v36 = *(v2 + 24);
      if (!v36)
      {
        goto LABEL_38;
      }
    }

    else
    {
      sub_1D77473C0(v77, sub_1D7746B4C);
      v36 = *(v2 + 24);
      if (!v36)
      {
        goto LABEL_38;
      }
    }

    v37 = [v36 appLaunchUpsellInstanceID];
    if (v37)
    {
      v38 = v37;
      v39 = sub_1D78B5C74();
      v41 = v40;

      if (sub_1D77AA6A0())
      {

        v42 = sub_1D78B42E4();
        v43 = sub_1D78B60A4();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v77[0] = v45;
          *v44 = 136315138;
          *(v44 + 4) = sub_1D77AD82C(v39, v41, v77);
          _os_log_impl(&dword_1D7739000, v42, v43, "Updating app stored last app launch instance ID to [%s] and resetting app launch count.", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v45);
          MEMORY[0x1DA7043F0](v45, -1, -1);
          MEMORY[0x1DA7043F0](v44, -1, -1);
        }

        swift_beginAccess();
        v46 = *(v2 + 80);
        v47 = *(v2 + 88);
        __swift_mutable_project_boxed_opaque_existential_1(v2 + 56, v46);
        (*(v47 + 16))(0, v46, v47);
        v48 = *(v2 + 80);
        v49 = *(v2 + 88);
        __swift_mutable_project_boxed_opaque_existential_1(v2 + 56, v48);
        (*(v49 + 40))(v39, v41, v48, v49);
        swift_endAccess();
        goto LABEL_41;
      }
    }

LABEL_38:
    v50 = sub_1D78B42E4();
    v51 = sub_1D78B60A4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1D7739000, v50, v51, "Skipping updating app stored last app launch instance ID and resetting app launch count.", v52, 2u);
      MEMORY[0x1DA7043F0](v52, -1, -1);
    }

LABEL_41:
    sub_1D78B3854();
    if ((*(v2 + 176) & 1) == 0)
    {
      sub_1D78B3B64();
      *(v2 + 176) = 1;
    }

    goto LABEL_43;
  }

  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D78B4304();
  __swift_project_value_buffer(v4, qword_1EE09C288);
  v5 = sub_1D78B42E4();
  v6 = sub_1D78B60A4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D7739000, v5, v6, "Current campaign settings do not prevent upsell presentation. Continuing with eligibility checks...", v7, 2u);
    MEMORY[0x1DA7043F0](v7, -1, -1);
  }

  v8 = *(v2 + 24);
  if (v8 && [v8 appLaunchUpsellLastSeenDateSyncEnabled])
  {
    sub_1D77AC124();
  }

  if ((AppLaunchUpsellManager.userIsEligibleForUpsellPresentation(with:)(a1) & 1) == 0)
  {
    v33 = sub_1D78B42E4();
    v34 = sub_1D78B60A4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1D7739000, v33, v34, "User is not eligible for upsell presentation. The upsell will not be presented.", v35, 2u);
      MEMORY[0x1DA7043F0](v35, -1, -1);
    }

    sub_1D78B3854();
    if ((*(v2 + 176) & 1) == 0)
    {
      sub_1D78B3B64();
      *(v2 + 176) = 1;
    }

    goto LABEL_27;
  }

  v9 = *(v2 + 24);
  if (!v9)
  {
    v53 = sub_1D78B42E4();
    v54 = sub_1D78B60A4();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1D7739000, v53, v54, "No paid bundle configuration available. The upsell will not be presented.", v55, 2u);
      MEMORY[0x1DA7043F0](v55, -1, -1);
    }

    sub_1D7746708(v2 + 232, v77, sub_1D7746B4C);
    v56 = v78;
    if (v78)
    {
      v57 = v79;
      __swift_project_boxed_opaque_existential_1(v77, v78);
      LOBYTE(v76[0]) = 3;
      (*(v57 + 8))(v76, 0, 0, v56, v57);
      __swift_destroy_boxed_opaque_existential_1(v77);
    }

    else
    {
      sub_1D77473C0(v77, sub_1D7746B4C);
    }

    sub_1D78B3854();
    if ((*(v2 + 176) & 1) == 0)
    {
      sub_1D78B3B64();
      *(v2 + 176) = 1;
    }

    goto LABEL_43;
  }

  v10 = v9;
  if ((sub_1D77AA6A0() & 1) == 0)
  {

    sub_1D78B3854();
    if ((*(v2 + 176) & 1) == 0)
    {
      sub_1D78B3B64();
      *(v2 + 176) = 1;
    }

LABEL_27:
    sub_1D78B3864();

LABEL_44:
    sub_1D78B4224();

    return 0;
  }

  swift_beginAccess();
  v11 = *(v2 + 80);
  v12 = *(v2 + 88);
  __swift_mutable_project_boxed_opaque_existential_1(v2 + 56, v11);
  result = (*(v12 + 24))(v77, v11, v12);
  if (__OFADD__(*v14, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v14;
    (result)(v77, 0);
    swift_endAccess();

    v15 = sub_1D78B42E4();
    v16 = sub_1D78B60A4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      swift_beginAccess();
      v18 = *(v2 + 80);
      v19 = *(v2 + 88);
      __swift_project_boxed_opaque_existential_1((v2 + 56), v18);
      v20 = (*(v19 + 8))(v18, v19);
      swift_endAccess();
      *(v17 + 4) = v20;

      _os_log_impl(&dword_1D7739000, v15, v16, "App launch count was incremented to %lld.", v17, 0xCu);
      MEMORY[0x1DA7043F0](v17, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v58 = *(v2 + 80);
    v59 = *(v2 + 88);
    __swift_project_boxed_opaque_existential_1((v2 + 56), v58);
    v60 = (*(v59 + 8))(v58, v59);
    swift_endAccess();
    if (v60 < [v10 appLaunchUpsellRequiredAppLaunchCount])
    {
      sub_1D7746708(v2 + 232, v77, sub_1D7746B4C);
      v61 = v78;
      if (v78)
      {
        v62 = v79;
        __swift_project_boxed_opaque_existential_1(v77, v78);
        LOBYTE(v76[0]) = 12;
        v63 = [v10 appLaunchUpsellArticleID];
        if (v63)
        {
          v64 = v63;
          v65 = sub_1D78B5C74();
          v67 = v66;
        }

        else
        {
          v65 = 0;
          v67 = 0;
        }

        (*(v62 + 8))(v76, v65, v67, v61, v62);

        __swift_destroy_boxed_opaque_existential_1(v77);
      }

      else
      {

        sub_1D77473C0(v77, sub_1D7746B4C);
      }

      sub_1D78B3854();
      if ((*(v2 + 176) & 1) == 0)
      {
        sub_1D78B3B64();
        *(v2 + 176) = 1;
      }

LABEL_43:
      sub_1D78B3864();

      goto LABEL_44;
    }

    if (sub_1D77AB1C4())
    {

      sub_1D78B3854();
      if ((*(v2 + 176) & 1) == 0)
      {
        sub_1D78B3B64();
        *(v2 + 176) = 1;
      }

      sub_1D78B3864();

      goto LABEL_44;
    }

    if (![*(v2 + 136) isCloudKitReachable])
    {
      sub_1D7746708(v2 + 232, v77, sub_1D7746B4C);
      v71 = v78;
      if (v78)
      {
        v72 = v79;
        __swift_project_boxed_opaque_existential_1(v77, v78);
        LOBYTE(v76[0]) = 13;
        (*(v72 + 8))(v76, 0, 0, v71, v72);
        __swift_destroy_boxed_opaque_existential_1(v77);
      }

      else
      {
        sub_1D77473C0(v77, sub_1D7746B4C);
      }

      v73 = sub_1D78B42E4();
      v74 = sub_1D78B60A4();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_1D7739000, v73, v74, "Device is currently offline. App launch upsell will not be presented.", v75, 2u);
        MEMORY[0x1DA7043F0](v75, -1, -1);
      }

      sub_1D78B3854();
      if ((*(v2 + 176) & 1) == 0)
      {
        sub_1D78B3B64();
        *(v2 + 176) = 1;
      }

      goto LABEL_43;
    }

    v68 = sub_1D78B42E4();
    v69 = sub_1D78B60A4();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_1D7739000, v68, v69, "All upsell eligibility checks have passed. Upsell will be presented unless otherwise prevented by the presentation operation manager.", v70, 2u);
      MEMORY[0x1DA7043F0](v70, -1, -1);
    }

    return 1;
  }

  return result;
}

uint64_t sub_1D77AA120(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1D7746708(Strong + 192, &v22, sub_1D7746AE4);

    if (*(&v23 + 1))
    {
      sub_1D7741E34(&v22, v25);
      v14 = v26;
      v15 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      (*(v15 + 8))(a6, a7, v14, v15);
      v16 = swift_allocObject();
      *(v16 + 16) = sub_1D77AE39C;
      *(v16 + 24) = v12;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_1D77AE3A4;
      *(v17 + 24) = v16;

      v18 = sub_1D78B4014();
      sub_1D78B4094();

      v19 = swift_allocObject();
      v19[2] = a6;
      v19[3] = a7;
      v19[4] = sub_1D77AE39C;
      v19[5] = v12;

      v20 = sub_1D78B4014();
      sub_1D78B40E4();

      return __swift_destroy_boxed_opaque_existential_1(v25);
    }
  }

  else
  {

    v24 = 0;
    v22 = 0u;
    v23 = 0u;
  }

  sub_1D77473C0(&v22, sub_1D7746AE4);
  LOBYTE(v25[0]) = 1;
  return a1(v25);
}

uint64_t sub_1D77AA3E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  sub_1D7746708(a2 + 232, v17, sub_1D7746B4C);
  v8 = v18;
  if (v18)
  {
    v9 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v16 = 16;
    (*(v9 + 8))(&v16, 0, 0, v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_1D77473C0(v17, sub_1D7746B4C);
  }

  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D78B4304();
  __swift_project_value_buffer(v10, qword_1EE09C288);

  v11 = sub_1D78B42E4();
  v12 = sub_1D78B6094();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1D77AD82C(a3, a4, v17);
    _os_log_impl(&dword_1D7739000, v11, v12, "Article Prefetch Failed for %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1DA7043F0](v14, -1, -1);
    MEMORY[0x1DA7043F0](v13, -1, -1);
  }

  return a5(0);
}

uint64_t sub_1D77AA5E0(uint64_t a1, uint64_t a2)
{
  sub_1D7746708(a2 + 232, v6, sub_1D7746B4C);
  v2 = v7;
  if (!v7)
  {
    return sub_1D77473C0(v6, sub_1D7746B4C);
  }

  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v5 = 2;
  (*(v3 + 8))(&v5, 0, 0, v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1D77AA6A0()
{
  v1 = v0;
  v2 = v0[3];
  if (!v2 || (v3 = [v2 appLaunchUpsellInstanceID]) == 0)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v21 = sub_1D78B4304();
    __swift_project_value_buffer(v21, qword_1EE09C288);
    v22 = sub_1D78B42E4();
    v23 = sub_1D78B60A4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D7739000, v22, v23, "Failed to retrieve instance ID from config. Upsell will not be presented.", v24, 2u);
      MEMORY[0x1DA7043F0](v24, -1, -1);
    }

    sub_1D7746708((v1 + 29), v69, sub_1D7746B4C);
    v25 = v70;
    if (!v70)
    {
      goto LABEL_66;
    }

    v26 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    v68 = 11;
    v27 = v1[3];
    if (!v27)
    {
      goto LABEL_64;
    }

    goto LABEL_30;
  }

  v4 = v3;
  v5 = sub_1D78B5C74();
  v7 = v6;

  swift_beginAccess();
  v8 = v1[10];
  v9 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v8);
  v10 = (*(v9 + 32))(v8, v9);
  if (!v11)
  {
    swift_endAccess();

    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v28 = sub_1D78B4304();
    __swift_project_value_buffer(v28, qword_1EE09C288);
    v29 = sub_1D78B42E4();
    v30 = sub_1D78B60A4();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_26;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "No previous instance ID was stored. Upsell may be presented.";
LABEL_24:
    _os_log_impl(&dword_1D7739000, v29, v30, v32, v31, 2u);
    v33 = v31;
LABEL_25:
    MEMORY[0x1DA7043F0](v33, -1, -1);
LABEL_26:

    return 1;
  }

  v12 = v10;
  v13 = v11;
  swift_endAccess();
  v14 = v5 == v12 && v13 == v7;
  if (v14 || (sub_1D78B6724() & 1) != 0)
  {

    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v15 = sub_1D78B4304();
    __swift_project_value_buffer(v15, qword_1EE09C288);

    v16 = sub_1D78B42E4();
    v17 = sub_1D78B60A4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v69[0] = v19;
      *v18 = 136315138;
      v20 = sub_1D77AD82C(v5, v7, v69);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_1D7739000, v16, v17, "Last known instance ID and config instance ID have a matching value of %s. Upsell will not be presented.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1DA7043F0](v19, -1, -1);
      MEMORY[0x1DA7043F0](v18, -1, -1);
    }

    else
    {
    }

    sub_1D7746708((v1 + 29), v69, sub_1D7746B4C);
    v25 = v70;
    if (v70)
    {
      v26 = v71;
      __swift_project_boxed_opaque_existential_1(v69, v70);
      v68 = 5;
      v27 = v1[3];
      if (v27)
      {
        goto LABEL_30;
      }

LABEL_64:
      v37 = 0;
      v39 = 0;
      goto LABEL_65;
    }

LABEL_66:
    sub_1D77473C0(v69, sub_1D7746B4C);
    return 0;
  }

  sub_1D77ADD80(v5, v7);
  if ((v41 & 1) == 0)
  {
    if (v40 < 0)
    {

      if (qword_1EE0904F8 != -1)
      {
        swift_once();
      }

      v50 = sub_1D78B4304();
      __swift_project_value_buffer(v50, qword_1EE09C288);

      v29 = sub_1D78B42E4();
      v51 = sub_1D78B60A4();

      if (os_log_type_enabled(v29, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v69[0] = v53;
        *v52 = 136315138;
        v54 = sub_1D77AD82C(v5, v7, v69);

        *(v52 + 4) = v54;
        _os_log_impl(&dword_1D7739000, v29, v51, "Config version is set to a negative value (%s). Upsell will be presented.", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
        MEMORY[0x1DA7043F0](v53, -1, -1);
        v33 = v52;
        goto LABEL_25;
      }
    }

    else
    {
      v46 = v40;
      sub_1D77ADD80(v12, v13);
      if (v48)
      {

        if (qword_1EE0904F8 != -1)
        {
          swift_once();
        }

        v49 = sub_1D78B4304();
        __swift_project_value_buffer(v49, qword_1EE09C288);
        v29 = sub_1D78B42E4();
        v30 = sub_1D78B60A4();
        if (!os_log_type_enabled(v29, v30))
        {
          goto LABEL_26;
        }

        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "Failed to retrieve instance ID from config. Upsell may be presented since instance ID strings differ.";
        goto LABEL_24;
      }

      if (v47 >= v46)
      {
        if (qword_1EE0904F8 != -1)
        {
          swift_once();
        }

        v61 = sub_1D78B4304();
        __swift_project_value_buffer(v61, qword_1EE09C288);

        v62 = sub_1D78B42E4();
        v63 = sub_1D78B60A4();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v69[0] = v65;
          *v64 = 136315394;
          v66 = sub_1D77AD82C(v5, v7, v69);

          *(v64 + 4) = v66;
          *(v64 + 12) = 2080;
          v67 = sub_1D77AD82C(v12, v13, v69);

          *(v64 + 14) = v67;
          _os_log_impl(&dword_1D7739000, v62, v63, "Config version (%s) is less than or equal to stored version (%s). Upsell will not be presented.", v64, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA7043F0](v65, -1, -1);
          MEMORY[0x1DA7043F0](v64, -1, -1);
        }

        else
        {
        }

        sub_1D7746708((v1 + 29), v69, sub_1D7746B4C);
        v25 = v70;
        if (!v70)
        {
          goto LABEL_66;
        }

        v26 = v71;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        v68 = 5;
        v27 = v1[3];
        if (!v27)
        {
          goto LABEL_64;
        }

        goto LABEL_30;
      }

      if (qword_1EE0904F8 != -1)
      {
        swift_once();
      }

      v55 = sub_1D78B4304();
      __swift_project_value_buffer(v55, qword_1EE09C288);

      v29 = sub_1D78B42E4();
      v56 = sub_1D78B60A4();

      if (os_log_type_enabled(v29, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v69[0] = v58;
        *v57 = 136315394;
        v59 = sub_1D77AD82C(v5, v7, v69);

        *(v57 + 4) = v59;
        *(v57 + 12) = 2080;
        v60 = sub_1D77AD82C(v12, v13, v69);

        *(v57 + 14) = v60;
        _os_log_impl(&dword_1D7739000, v29, v56, "Config version (%s) is greater than stored version (%s). Upsell will be presented.", v57, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA7043F0](v58, -1, -1);
        v33 = v57;
        goto LABEL_25;
      }
    }

    goto LABEL_26;
  }

  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v42 = sub_1D78B4304();
  __swift_project_value_buffer(v42, qword_1EE09C288);
  v43 = sub_1D78B42E4();
  v44 = sub_1D78B60A4();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1D7739000, v43, v44, "Failed to retrieve instance ID from config. Upsell won't be presented.", v45, 2u);
    MEMORY[0x1DA7043F0](v45, -1, -1);
  }

  sub_1D7746708((v1 + 29), v69, sub_1D7746B4C);
  v25 = v70;
  if (!v70)
  {
    goto LABEL_66;
  }

  v26 = v71;
  __swift_project_boxed_opaque_existential_1(v69, v70);
  v68 = 6;
  v27 = v1[3];
  if (!v27)
  {
    goto LABEL_64;
  }

LABEL_30:
  v35 = [v27 appLaunchUpsellArticleID];
  if (!v35)
  {
    goto LABEL_64;
  }

  v36 = v35;
  v37 = sub_1D78B5C74();
  v39 = v38;

LABEL_65:
  (*(v26 + 8))(&v68, v37, v39, v25, v26);

  __swift_destroy_boxed_opaque_existential_1(v69);
  return 0;
}

uint64_t sub_1D77AB1C4()
{
  v1 = v0;
  sub_1D77441E4(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v56 - v4;
  v6 = sub_1D78B3394();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v1[3];
  if (!v14)
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v25 = sub_1D78B4304();
    __swift_project_value_buffer(v25, qword_1EE09C288);
    v26 = sub_1D78B42E4();
    v27 = sub_1D78B60A4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1D7739000, v26, v27, "No paid bundle configuration available. The upsell will not be presented.", v28, 2u);
      MEMORY[0x1DA7043F0](v28, -1, -1);
    }

    sub_1D7746708((v1 + 29), v61, sub_1D7746B4C);
    v29 = v62;
    if (v62)
    {
      v30 = v63;
      __swift_project_boxed_opaque_existential_1(v61, v62);
      v60 = 3;
      (*(v30 + 8))(&v60, 0, 0, v29, v30);
LABEL_34:
      __swift_destroy_boxed_opaque_existential_1(v61);
      return 1;
    }

LABEL_31:
    sub_1D77473C0(v61, sub_1D7746B4C);
    return 1;
  }

  v59 = &v56 - v13;
  swift_beginAccess();
  v16 = v1[10];
  v15 = v1[11];
  v58 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 7, v16);
  v17 = *(v15 + 56);
  v18 = v14;
  v19 = v6;
  v17(v16, v15);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v31 = v59;
    (*(v7 + 32))(v59, v5, v6);
    swift_endAccess();
    sub_1D78B3384();
    sub_1D78B3304();
    v33 = v32;
    v34 = *(v7 + 8);
    v34(v11, v19);
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v35 = sub_1D78B4304();
    __swift_project_value_buffer(v35, qword_1EE09C288);
    sub_1D776BA64();
    sub_1D776BA64();
    v36 = sub_1D78B42E4();
    v37 = sub_1D78B60A4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 68157952;
      *(v38 + 4) = 2;
      *(v38 + 8) = 2048;
      *(v38 + 10) = v33;
      _os_log_impl(&dword_1D7739000, v36, v37, "Time interval elapsed since last displayed upsell: %.*f.", v38, 0x12u);
      MEMORY[0x1DA7043F0](v38, -1, -1);
    }

    v39 = [v18 appLaunchUpsellQuiescenceInterval];
    sub_1D776BA64();
    sub_1D776BA64();
    v40 = sub_1D78B42E4();
    v41 = sub_1D78B60A4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 68157952;
      *(v42 + 4) = 2;
      *(v42 + 8) = 2048;
      *(v42 + 10) = v39;
      _os_log_impl(&dword_1D7739000, v40, v41, "Minimum time interval between presentations: %.*f.", v42, 0x12u);
      MEMORY[0x1DA7043F0](v42, -1, -1);
    }

    v43 = sub_1D78B42E4();
    v44 = sub_1D78B60A4();
    v45 = os_log_type_enabled(v43, v44);
    if (v33 >= v39)
    {
      if (v45)
      {
        v54 = v34;
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_1D7739000, v43, v44, "The upsell can be presented.", v55, 2u);
        MEMORY[0x1DA7043F0](v55, -1, -1);

        v54(v31, v19);
      }

      else
      {

        v34(v31, v19);
      }

      return 0;
    }

    v57 = v34;
    if (v45)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1D7739000, v43, v44, "The upsell presentation will be postponed.", v46, 2u);
      MEMORY[0x1DA7043F0](v46, -1, -1);
    }

    sub_1D7746708((v58 + 29), v61, sub_1D7746B4C);
    v47 = v62;
    if (v62)
    {
      v48 = v63;
      __swift_project_boxed_opaque_existential_1(v61, v62);
      v60 = 8;
      v49 = [v18 appLaunchUpsellArticleID];
      if (v49)
      {
        v50 = v49;
        v51 = sub_1D78B5C74();
        v53 = v52;
      }

      else
      {
        v51 = 0;
        v53 = 0;
      }

      (*(v48 + 8))(&v60, v51, v53, v47, v48);

      v57(v31, v19);
      goto LABEL_34;
    }

    v57(v31, v19);

    goto LABEL_31;
  }

  sub_1D77AE570(v5, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D77441E4);
  swift_endAccess();
  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v20 = sub_1D78B4304();
  __swift_project_value_buffer(v20, qword_1EE09C288);
  v21 = sub_1D78B42E4();
  v22 = sub_1D78B60A4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1D7739000, v21, v22, "Couldn't find upsell last seen date. The upsell can be presented.", v23, 2u);
    MEMORY[0x1DA7043F0](v23, -1, -1);
  }

  return 0;
}

uint64_t sub_1D77AB9E4()
{
  sub_1D77AE3F8(0);
  v2 = v1;
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v67 - v9;
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v67 - v13;
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = (&v67 - v16);
  v18 = v0[3];
  if (!v18 || ![v18 appLaunchUpsellLastShownCampaignIDSyncEnabled])
  {
    if (qword_1EE0904F8 != -1)
    {
      swift_once();
    }

    v44 = sub_1D78B4304();
    __swift_project_value_buffer(v44, qword_1EE09C288);
    v45 = sub_1D78B42E4();
    v46 = sub_1D78B60A4();
    if (!os_log_type_enabled(v45, v46))
    {
      goto LABEL_22;
    }

    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = "Campaign sync is not enabled in the configuration.  Skipping the campaign check.";
    goto LABEL_21;
  }

  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v19 = sub_1D78B4304();
  __swift_project_value_buffer(v19, qword_1EE09C288);
  v20 = sub_1D78B42E4();
  v21 = sub_1D78B60A4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1D7739000, v20, v21, "Campaign sync is enabled in the configuration.  Proceeding with campaign checks...", v22, 2u);
    MEMORY[0x1DA7043F0](v22, -1, -1);
  }

  v23 = v0[3];
  if (!v23 || (v24 = [v23 appLaunchUpsellCampaignID]) == 0)
  {
LABEL_19:
    v45 = sub_1D78B42E4();
    v46 = sub_1D78B60A4();
    if (!os_log_type_enabled(v45, v46))
    {
LABEL_22:

LABEL_23:
      v49 = 1;
      return v49 & 1;
    }

    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = "No valid campaign ID found in config.  Bypassing further campaign checks.";
LABEL_21:
    _os_log_impl(&dword_1D7739000, v45, v46, v48, v47, 2u);
    MEMORY[0x1DA7043F0](v47, -1, -1);
    goto LABEL_22;
  }

  v25 = v24;
  v26 = sub_1D78B5C74();
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    goto LABEL_19;
  }

  v71 = v26;
  v30 = (v17 + *(v2 + 48));
  v31 = (v17 + *(v2 + 64));
  v32 = sub_1D77AC6A4(v17, v0);
  v69 = v33;
  v70 = v32;
  *v30 = v32;
  v30[1] = v33;
  *v31 = v34;
  v31[1] = v35;
  sub_1D7746708(v17, v14, sub_1D77AE3F8);

  v36 = sub_1D78B42E4();
  v37 = sub_1D78B60A4();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v72 = v68;
    *v38 = 136315394;
    *(v38 + 4) = sub_1D77AD82C(v71, v28, &v72);
    *(v38 + 12) = 2080;
    sub_1D77AE468(v14, v10);
    v39 = &v10[*(v2 + 48)];
    v40 = v39[1];
    v67 = *v39;

    v41 = sub_1D78B3394();
    (*(*(v41 - 8) + 8))(v10, v41);
    v42 = sub_1D77AD82C(v67, v40, &v72);

    *(v38 + 14) = v42;
    _os_log_impl(&dword_1D7739000, v36, v37, "Current Upsell Campaign ID: %s  |  Last Shown Campaign ID: %s", v38, 0x16u);
    v43 = v68;
    swift_arrayDestroy();
    MEMORY[0x1DA7043F0](v43, -1, -1);
    MEMORY[0x1DA7043F0](v38, -1, -1);
  }

  else
  {

    sub_1D77473C0(v14, sub_1D77AE3F8);
  }

  sub_1D7746708(v17, v6, sub_1D77AE3F8);

  v51 = &v6[*(v2 + 64)];
  v53 = *v51;
  v52 = *(v51 + 1);
  v54 = [objc_opt_self() mainBundle];
  v55 = [v54 bundleIdentifier];

  if (v55)
  {
    v56 = sub_1D78B5C74();
    v58 = v57;

    if (v53 == v56 && v52 == v58)
    {
      v59 = 1;
    }

    else
    {
      v59 = sub_1D78B6724();
    }

    v61 = v71;

    v62 = sub_1D78B3394();
    (*(*(v62 - 8) + 8))(v6, v62);
    if (v59)
    {

      v63 = sub_1D78B42E4();
      v64 = sub_1D78B60A4();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_1D7739000, v63, v64, "Most recent campaign was presented by this app.  Bypassing further campaign checks in favor of our instance ID check.", v65, 2u);
        MEMORY[0x1DA7043F0](v65, -1, -1);
      }

      sub_1D77473C0(v17, sub_1D77AE3F8);
      goto LABEL_23;
    }
  }

  else
  {

    v60 = sub_1D78B3394();
    (*(*(v60 - 8) + 8))(v6, v60);
    v61 = v71;
  }

  if (v61 == v70 && v28 == v69)
  {

    v49 = 0;
  }

  else
  {
    v66 = sub_1D78B6724();

    v49 = v66 ^ 1;
  }

  sub_1D77473C0(v17, sub_1D77AE3F8);
  return v49 & 1;
}

uint64_t sub_1D77AC124()
{
  v1 = v0;
  sub_1D77441E4(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v37 - v7;
  v9 = sub_1D78B3394();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v37 - v16;
  swift_beginAccess();
  v18 = v0[10];
  v19 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v18);
  (*(v19 + 56))(v18, v19);
  swift_endAccess();
  v20 = *(v10 + 48);
  if (v20(v8, 1, v9) == 1)
  {
    sub_1D78B32E4();
    if (v20(v8, 1, v9) != 1)
    {
      sub_1D77AE570(v8, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D77441E4);
    }
  }

  else
  {
    (*(v10 + 32))(v17, v8, v9);
  }

  if (qword_1EE08F2E0 != -1)
  {
    swift_once();
  }

  sub_1D7747CD0(&qword_1EE0938D8, v21, type metadata accessor for AppLaunchUpsellManager, &protocol conformance descriptor for AppLaunchUpsellManager);
  sub_1D78B3574();
  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D78B4304();
  __swift_project_value_buffer(v22, qword_1EE09C288);
  v23 = sub_1D78B42E4();
  v24 = sub_1D78B60A4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1D7739000, v23, v24, "Synchronizing upsell last seen date...", v25, 2u);
    MEMORY[0x1DA7043F0](v25, -1, -1);
  }

  v26 = sub_1D78B3334();
  v27 = sub_1D78B42E4();
  v28 = sub_1D78B60A4();
  v29 = os_log_type_enabled(v27, v28);
  if (v26)
  {
    if (v29)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D7739000, v27, v28, "Upsell was seen more recently in another app.  Updating Data Store last seen date.", v30, 2u);
      MEMORY[0x1DA7043F0](v30, -1, -1);
    }

    v31 = v37;
    (*(v10 + 16))(v37, v14, v9);
    (*(v10 + 56))(v31, 0, 1, v9);
    swift_beginAccess();
    v32 = v1[10];
    v33 = v1[11];
    __swift_mutable_project_boxed_opaque_existential_1((v1 + 7), v32);
    (*(v33 + 64))(v31, v32, v33);
    swift_endAccess();
  }

  else
  {
    if (v29)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D7739000, v27, v28, "Data Store last seen date is the most recent.  No updates required.", v34, 2u);
      MEMORY[0x1DA7043F0](v34, -1, -1);
    }
  }

  v35 = *(v10 + 8);
  v35(v14, v9);
  return (v35)(v17, v9);
}

uint64_t sub_1D77AC6A4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v47 = a1;
  v48 = v3;
  sub_1D77441E4(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v42 - v6;
  v8 = sub_1D78B3394();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v42 - v15;
  swift_beginAccess();
  v17 = a2[10];
  v18 = a2[11];
  __swift_project_boxed_opaque_existential_1(a2 + 7, v17);
  (*(v18 + 56))(v17, v18);
  swift_endAccess();
  v19 = *(v9 + 48);
  v20 = v19(v7, 1, v8);
  v49 = v16;
  v50 = v8;
  if (v20 == 1)
  {
    sub_1D78B32E4();
    if (v19(v7, 1, v8) != 1)
    {
      sub_1D77AE570(v7, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D77441E4);
    }
  }

  else
  {
    (*(v9 + 32))(v16, v7, v8);
  }

  v46 = v9;
  swift_beginAccess();
  v21 = a2[10];
  v22 = a2[11];
  __swift_project_boxed_opaque_existential_1(a2 + 7, v21);
  v23 = (*(v22 + 80))(v21, v22);
  if (v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0xE000000000000000;
  }

  v44 = v25;
  v45 = v26;
  v27 = a2[10];
  v28 = a2[11];
  __swift_project_boxed_opaque_existential_1(a2 + 7, v27);
  v29 = (*(v28 + 104))(v27, v28);
  v31 = v30;
  swift_endAccess();
  if (v31)
  {
    v33 = v29;
  }

  else
  {
    v33 = 0;
  }

  v42 = v33;
  if (qword_1EE08F2E0 != -1)
  {
    swift_once();
  }

  sub_1D7747CD0(&qword_1EE0938D8, v32, type metadata accessor for AppLaunchUpsellManager, &protocol conformance descriptor for AppLaunchUpsellManager);
  sub_1D78B3574();
  v34 = v49;
  v35 = sub_1D78B3334();
  v36 = v46;
  v37 = v13;
  v38 = v50;
  v43 = *(v46 + 8);
  v43(v37, v50);
  if (v35)
  {
    (*(v36 + 32))(v47, v34, v38);
    return v44;
  }

  else
  {

    sub_1D78B3574();
    if (qword_1EC9C8548 != -1)
    {
      swift_once();
    }

    sub_1D78B3574();
    v39 = v51;
    v40 = v50;
    if (qword_1EE08F2D0 != -1)
    {
      swift_once();
    }

    sub_1D78B3574();
    v43(v49, v40);
  }

  return v39;
}

void (*AppLaunchUpsellManager.presentationAction()())(void (*a1)(void *, uint64_t), uint64_t a2)
{
  swift_allocObject();
  swift_weakInit();
  return sub_1D77AD8F8;
}

void sub_1D77ACC34(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v12 = sub_1D78B4B64();
    sub_1D7747CD0(&qword_1EC9C9CD0, 255, MEMORY[0x1E69D8050], MEMORY[0x1E69D8058]);
    v13 = swift_allocError();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x1E69D8048], v12);
    a1(v13, 1);

    return;
  }

  v6 = Strong;
  sub_1D7746708(Strong + 272, &v16, sub_1D7746770);
  if (!v17)
  {
    sub_1D77473C0(&v16, sub_1D7746770);
LABEL_12:
    v15 = swift_allocObject();
    v15[2] = v6;
    v15[3] = a1;
    v15[4] = a2;

    sub_1D78B4224();

    return;
  }

  sub_1D7741E34(&v16, v18);
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  if ((sub_1D78B54E4() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v18);
    goto LABEL_12;
  }

  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v7 = sub_1D78B4304();
  __swift_project_value_buffer(v7, qword_1EE09C288);
  v8 = sub_1D78B42E4();
  v9 = sub_1D78B60A4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D7739000, v8, v9, "App Launch Upsell presentation is cancelled; device is offline.", v10, 2u);
    MEMORY[0x1DA7043F0](v10, -1, -1);
  }

  sub_1D77AE290();
  v11 = swift_allocError();
  a1(v11, 1);

  __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1D77ACF2C(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v48 = a2;
  v5 = sub_1D78B5254();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v43 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1D78B52A4();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v8);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1D78B52C4();
  v40 = *(v47 - 8);
  v11 = MEMORY[0x1EEE9AC00](v47, v10);
  v38 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v39 = &v38 - v14;
  v15 = sub_1D78B3E24();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  v20 = MEMORY[0x1E69D6810];
  sub_1D77441E4(0, &qword_1EE08E4D8, MEMORY[0x1E69D6810], MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D78BF690;
  sub_1D78B3DF4();
  sub_1D78B3E14();
  sub_1D78B3E04();
  aBlock[0] = v21;
  sub_1D7747CD0(&qword_1EE08F240, 255, MEMORY[0x1E69D6810], MEMORY[0x1E69D6818]);
  sub_1D77441E4(0, &unk_1EE08E608, v20, MEMORY[0x1E69E62F8]);
  sub_1D7746978(&qword_1EE08E600, &unk_1EE08E608, v20);
  sub_1D78B6324();
  v22 = swift_allocObject();
  *(v22 + 16) = v48;
  *(v22 + 24) = a3;

  sub_1D78B3964();

  (*(v16 + 8))(v19, v15);
  if (qword_1EE0904F8 != -1)
  {
    swift_once();
  }

  v23 = sub_1D78B4304();
  __swift_project_value_buffer(v23, qword_1EE09C288);
  v24 = sub_1D78B42E4();
  v25 = sub_1D78B60A4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1D7739000, v24, v25, "Showing AppLaunchUpsell...", v26, 2u);
    MEMORY[0x1DA7043F0](v26, -1, -1);
  }

  v27 = v49;
  v28 = *(v49 + 24);
  if (!v28 || [v28 appLaunchUpsellPresentationDelay] < 1)
  {
    return sub_1D77A7268();
  }

  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  v29 = sub_1D78B6104();
  v30 = v38;
  sub_1D78B52B4();
  v31 = v39;
  sub_1D78B52E4();
  v48 = *(v40 + 8);
  v48(v30, v47);
  aBlock[4] = sub_1D77AE2E4;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_4;
  v32 = _Block_copy(aBlock);

  v33 = v41;
  sub_1D78B5274();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7747CD0(&qword_1EE090300, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v34 = MEMORY[0x1E69E7F60];
  sub_1D77441E4(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7746978(&qword_1EE090030, &qword_1EE090040, v34);
  v35 = v43;
  v36 = v46;
  sub_1D78B6324();
  MEMORY[0x1DA703380](v31, v33, v35, v32);
  _Block_release(v32);

  (*(v45 + 8))(v35, v36);
  (*(v42 + 8))(v33, v44);
  return (v48)(v31, v47);
}

void (*sub_1D77AD640())(void (*a1)(void *, uint64_t), uint64_t a2)
{
  swift_allocObject();
  swift_weakInit();
  return sub_1D77AE6C4;
}

uint64_t sub_1D77AD74C()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v2 = 0x646961706E75;
  }

  if (v1 == 2)
  {
    v2 = 1684627824;
  }

  if (v1 == 3)
  {
    return 1752461154;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D77AD7B4()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v2 = 0x626967696C656E69;
  }

  if (v1 == 2)
  {
    v2 = 0x656C626967696C65;
  }

  if (v1 == 3)
  {
    return 1752461154;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D77AD82C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D77AD900(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1D777BE08(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1D77AD900(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D77ADA0C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1D78B64A4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1D77ADA0C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D77ADA58(a1, a2);
  sub_1D77ADB88(&unk_1F5265098);
  return v3;
}

void *sub_1D77ADA58(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D7831C5C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D78B64A4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D78B5D84();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D7831C5C(v10, 0);
        result = sub_1D78B6444();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D77ADB88(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D77ADC74(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1D77ADC74(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D7747C80(0, &qword_1EE08FA18, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_1D77ADD80(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D78B5C44();
  v5 = sub_1D78B5C44();
  v6 = [v4 fc:v5 numberFollowingString:?];

  if (v6)
  {
    [v6 integerValue];

    return;
  }

  v7 = HIBYTE(a2) & 0xF;
  v8 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {

      sub_1D7831CC4(a1, a2, 10);

      return;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v35[0] = a1;
      v35[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 == 43)
      {
        if (v7)
        {
          if (--v7)
          {
            v24 = 0;
            v25 = v35 + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              v27 = 10 * v24;
              if ((v24 * 10) >> 64 != (10 * v24) >> 63)
              {
                break;
              }

              v24 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                break;
              }

              ++v25;
              if (!--v7)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

        goto LABEL_71;
      }

      if (a1 != 45)
      {
        if (v7)
        {
          v31 = 0;
          v32 = v35;
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              break;
            }

            v34 = 10 * v31;
            if ((v31 * 10) >> 64 != (10 * v31) >> 63)
            {
              break;
            }

            v31 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              break;
            }

            ++v32;
            if (!--v7)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v7)
      {
        if (--v7)
        {
          v16 = 0;
          v17 = v35 + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            v19 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              break;
            }

            ++v17;
            if (!--v7)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v10 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v10 = sub_1D78B64A4();
      }

      v11 = *v10;
      if (v11 == 43)
      {
        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            v20 = 0;
            if (v10)
            {
              v21 = v10 + 1;
              while (1)
              {
                v22 = *v21 - 48;
                if (v22 > 9)
                {
                  goto LABEL_63;
                }

                v23 = 10 * v20;
                if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                {
                  goto LABEL_63;
                }

                v20 = v23 + v22;
                if (__OFADD__(v23, v22))
                {
                  goto LABEL_63;
                }

                ++v21;
                if (!--v7)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_70;
      }

      if (v11 != 45)
      {
        if (v8)
        {
          v28 = 0;
          if (v10)
          {
            while (1)
            {
              v29 = *v10 - 48;
              if (v29 > 9)
              {
                goto LABEL_63;
              }

              v30 = 10 * v28;
              if ((v28 * 10) >> 64 != (10 * v28) >> 63)
              {
                goto LABEL_63;
              }

              v28 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                goto LABEL_63;
              }

              ++v10;
              if (!--v8)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        LOBYTE(v7) = 1;
        goto LABEL_64;
      }

      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v12 = 0;
          if (v10)
          {
            v13 = v10 + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_63;
              }

              v15 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_63;
              }

              v12 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                goto LABEL_63;
              }

              ++v13;
              if (!--v7)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v7) = 0;
LABEL_64:
          v36 = v7;
          return;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
  }
}

uint64_t sub_1D77AE0F8(uint64_t a1)
{
  sub_1D78B3854();
  if ((*(v1 + 176) & 1) == 0)
  {
    sub_1D78B3B64();
    *(v1 + 176) = 1;
  }

  sub_1D78B3864();

  sub_1D78B4224();
}

unint64_t sub_1D77AE290()
{
  result = qword_1EC9C9FC0;
  if (!qword_1EC9C9FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9FC0);
  }

  return result;
}

uint64_t sub_1D77AE2E8(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D77AE308(uint64_t a1)
{
  if (!qword_1EE095200)
  {
    sub_1D773F004(255, &qword_1EE08FDC8, 0x1E69B51F0);
    v1 = sub_1D78B4184();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE095200);
    }
  }
}

void sub_1D77AE3F8(uint64_t a1)
{
  if (!qword_1EE095678)
  {
    sub_1D78B3394();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE095678);
    }
  }
}

uint64_t sub_1D77AE468(uint64_t a1, uint64_t a2)
{
  sub_1D77AE3F8(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77AE4DC(uint64_t a1, uint64_t a2)
{
  sub_1D77441E4(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77AE570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1D77AE654()
{
  result = qword_1EC9C9FE0;
  if (!qword_1EC9C9FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9FE0);
  }

  return result;
}

id sub_1D77AE6CC()
{
  v1 = OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager____lazy_storage___verifyingSpinnerViewController;
  v2 = *(v0 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager____lazy_storage___verifyingSpinnerViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager____lazy_storage___verifyingSpinnerViewController);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_purchasingSpinnerViewControllerFactory + 24);
    v5 = *(v0 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_purchasingSpinnerViewControllerFactory + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_purchasingSpinnerViewControllerFactory), v4);
    v11 = 1;
    v6 = v0;
    v7 = (*(v5 + 8))(&v11, v4, v5);
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t WebOptinFlowManager.showWebAccessOptInPostPurchase(tag:transaction:purchaseContext:)(void *a1, void *a2, uint64_t a3)
{
  v7 = type metadata accessor for PurchaseContext(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  v11 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 publisherPaidWebAccessOptIn])
  {
    sub_1D7770378(a3, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = swift_allocObject();
    v13[2] = v3;
    v13[3] = a1;
    sub_1D777044C(v11, v13 + v12);
    v14 = v3;
    v15 = swift_unknownObjectRetain();
    sub_1D77B0E24(v15, a2, a3, 0, sub_1D77B2C30, v13);
  }

  else
  {

    return sub_1D77B2944(a3, v3, a1);
  }
}

void WebOptinFlowManager.showWebAccessOptIn(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PurchaseContext(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_sceneProvider), *(v1 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_sceneProvider + 24));
  v8 = sub_1D78B4874();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 rootViewController];

    if (v10)
    {
      v11 = sub_1D78B60B4();

      v12 = sub_1D77AE6CC();
      [v11 presentViewController:v12 animated:1 completion:0];
    }
  }

  v13 = *(v2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_tagController);
  v14 = sub_1D78B5C44();
  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  v15 = sub_1D78B6104();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D7770378(a1, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  sub_1D777044C(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  aBlock[4] = sub_1D77B2C48;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7752E68;
  aBlock[3] = &block_descriptor_5;
  v19 = _Block_copy(aBlock);

  [v13 fetchTagForTagID:v14 qualityOfService:25 callbackQueue:v15 completionHandler:v19];
  _Block_release(v19);
}

void sub_1D77AEB88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PurchaseContext(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = sub_1D77AE6CC();
    sub_1D7770378(a4, &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v15 = swift_allocObject();
    v15[2] = v12;
    v15[3] = a1;
    v15[4] = a2;
    sub_1D777044C(&aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
    aBlock[4] = sub_1D77B4754;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D775FB6C;
    aBlock[3] = &block_descriptor_51;
    v16 = _Block_copy(aBlock);
    v17 = v12;
    swift_unknownObjectRetain();
    v18 = a2;

    [v13 dismissViewControllerAnimated:1 completion:v16];
    _Block_release(v16);
  }
}

void sub_1D77AED68(void *a1, uint64_t a2, uint64_t *a3)
{
  v7 = type metadata accessor for PurchaseContext(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  v11 = sub_1D78B3294();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v64 - v19;
  if (a2)
  {
    if (qword_1EE08FB98 != -1)
    {
LABEL_37:
      swift_once();
    }

    v21 = qword_1EE09C268;
    v22 = sub_1D78B6094();
    sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D78BCAB0;
    v76 = a2;
    v24 = a2;
    sub_1D775B620(0, &unk_1EE08F9E0, &qword_1EE08F9F0, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
    v25 = sub_1D78B5CC4();
    v27 = v26;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1D775ABD4();
    *(v23 + 32) = v25;
    *(v23 + 40) = v27;
    sub_1D78B42C4("Could not fetch tag to show web-opt in alert error=%{public}@", 61, 2, &dword_1D7739000, v21, v22, v23);

    return;
  }

  if (!a1)
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v40 = qword_1EE09C268;
    v41 = sub_1D78B6094();
    v42 = MEMORY[0x1E69E7CC0];

    sub_1D78B42C4("Could not fetch tag to show web-opt in alert", 44, 2, &dword_1D7739000, v40, v41, v42);
    return;
  }

  v71 = v18;
  v28 = swift_unknownObjectRetain();
  sub_1D77B0A50(v28, a3);
  v29 = [a1 publisherPaidOfferableConfigurations];
  if (!v29)
  {

    swift_unknownObjectRelease();
    return;
  }

  a2 = v29;
  v69 = v8;
  v70 = v16;
  sub_1D773F004(0, &qword_1EE08FC48, 0x1E69B54E8);
  v30 = sub_1D78B5EB4();

  if (v30 >> 62)
  {
    v31 = sub_1D78B6534();
    if (v31)
    {
      goto LABEL_8;
    }

LABEL_39:
    swift_unknownObjectRelease();

    return;
  }

  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
    goto LABEL_39;
  }

LABEL_8:
  v64 = v9;
  v65 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v3;
  v67 = v12;
  v72 = a3;
  v73 = a1;
  v68 = v20;
  v32 = 0;
  v74 = v30 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v30 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x1DA703700](v32, v30);
    }

    else
    {
      if (v32 >= *(v74 + 16))
      {
        goto LABEL_36;
      }

      v33 = *(v30 + 8 * v32 + 32);
    }

    v75 = v33;
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if ([a1 publisherPaidWebAccessOptIn])
    {
      if ([v75 allowsPublisherWebsite])
      {
        v35 = [v75 purchaseID];
        if (v35)
        {
          break;
        }
      }
    }

LABEL_10:

    ++v32;
    if (v34 == v31)
    {
      goto LABEL_39;
    }
  }

  v36 = v35;
  v37 = sub_1D78B5C74();
  v39 = v38;

  if (v37 != *v72 || v39 != v72[1])
  {
    a2 = sub_1D78B6724();

    a1 = v73;
    if (a2)
    {
      goto LABEL_30;
    }

    goto LABEL_10;
  }

LABEL_30:

  v43 = [objc_opt_self() mainBundle];
  v44 = [v43 appStoreReceiptURL];

  v45 = v67;
  v46 = v70;
  if (v44)
  {
    sub_1D78B3254();

    v47 = v68;
    (*(v45 + 32))(v68, v46, v71);
    v48 = sub_1D78B32A4();
    v49 = v73;
    v51 = v48;
    v74 = v52;
    sub_1D78B32C4();
    v53 = v45;
    v54 = objc_allocWithZone(MEMORY[0x1E69B5220]);
    v55 = sub_1D78B5C44();
    v56 = sub_1D78B5C44();

    v57 = [v54 initWithProductID:v55 receipt:v56 appleIDAccountDetails:0];

    v58 = v72;
    v59 = v65;
    sub_1D7770378(v72, v65);
    v60 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v61 = swift_allocObject();
    v62 = v66;
    v61[2] = v66;
    v61[3] = v49;
    sub_1D777044C(v59, v61 + v60);
    swift_unknownObjectRetain();
    v63 = v62;
    sub_1D77B0E24(v49, v57, v58, 0, sub_1D77B49D0, v61);

    sub_1D775DD6C(v51, v74);
    swift_unknownObjectRelease();
    (*(v53 + 8))(v47, v71);
  }

  else
  {
    swift_unknownObjectRelease();
    v50 = v75;
  }
}

Swift::Void __swiftcall WebOptinFlowManager.showWebAccessOptIn(for:purchaseTraits:forceOptInAlert:)(Swift::String a1, Swift::OpaquePointer purchaseTraits, Swift::Bool forceOptInAlert)
{
  v4 = v3;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_getObjectType();
  if ([*&v3[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_networkReachability] isNetworkReachable])
  {
    v9 = *&v3[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_purchaseController];
    v10 = sub_1D78B5C44();
    LODWORD(v9) = [v9 isTagIDPurchased_];

    if (v9)
    {
      __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_sceneProvider], *&v4[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_sceneProvider + 24]);
      v11 = sub_1D78B4874();
      if (v11)
      {
        v13 = v11;
        v14 = [v11 rootViewController];

        if (v14)
        {
          v15 = sub_1D78B60B4();

          v16 = sub_1D77AE6CC();
          [v15 presentViewController:v16 animated:1 completion:0];
        }
      }

      MEMORY[0x1EEE9AC00](v11, v12);
      sub_1D78B41F4();
      sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
      v17 = sub_1D78B6104();
      v18 = swift_allocObject();
      *(v18 + 16) = countAndFlagsBits;
      *(v18 + 24) = object;
      *(v18 + 32) = purchaseTraits;
      *(v18 + 40) = v4;
      *(v18 + 48) = forceOptInAlert;

      v19 = v4;
      sub_1D78B40B4();

      swift_allocObject();
      swift_unknownObjectWeakInit();

      v20 = sub_1D78B4014();
      sub_1D78B40D4();
    }

    else
    {
      v24 = &v4[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router];
      v25 = *&v4[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 24];
      v26 = *&v4[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 32];
      __swift_project_boxed_opaque_existential_1(v24, v25);
      v28[0] = countAndFlagsBits;
      v28[1] = object;
      v29 = 0;
      v30 = 0;
      v28[2] = purchaseTraits._rawValue;
      v27 = *(v26 + 96);

      v27(v28, v25, v26);
      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    v21 = *&v3[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 24];
    v22 = *&v3[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 32];
    __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router], v21);
    v29 = &type metadata for NetworkNotReachableAlert;
    v30 = sub_1D77B2CCC();
    sub_1D78B5054();
    swift_allocObject();
    v23 = sub_1D78B5004();
    (*(v22 + 88))(v23, v21, v22);
  }
}

uint64_t sub_1D77AFA14(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v73 = a7;
  v74 = a6;
  v67 = a4;
  v68 = a5;
  v66 = a3;
  v72 = a2;
  v8 = MEMORY[0x1E69E6720];
  sub_1D774C018(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v65 = &v59 - v11;
  sub_1D774C018(0, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination, v8);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v59 - v14;
  v59 = &v59 - v14;
  v16 = sub_1D78B33C4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PurchaseContext(0);
  v22 = (v21 - 8);
  v71 = *(v21 - 8);
  v70 = *(v71 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v69 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v59 - v27;
  v29 = *a1;
  v63 = a1[1];
  v64 = v29;
  v30 = [a1[2] purchaseID];
  v31 = sub_1D78B5C74();
  v61 = v32;
  v62 = v31;

  sub_1D78B33B4();
  v60 = sub_1D78B33A4();
  v34 = v33;
  (*(v17 + 8))(v20, v16);
  v35 = type metadata accessor for PostPurchaseDestination(0);
  (*(*(v35 - 8) + 56))(v15, 1, 1, v35);
  v36 = sub_1D78B3294();
  v37 = *(*(v36 - 8) + 56);
  v38 = v65;
  v37(v65, 1, 1, v36);
  v39 = v22[18];
  v37(&v28[v39], 1, 1, v36);
  v40 = v61;
  *v28 = v62;
  *(v28 + 1) = v40;
  v41 = v59;
  v42 = v60;
  *(v28 + 2) = 0;
  *(v28 + 3) = v42;
  v43 = v66;
  *(v28 + 4) = v34;
  *(v28 + 5) = v43;
  v44 = v67;
  v45 = v68;
  *(v28 + 6) = v67;
  *(v28 + 28) = 2816;
  *(v28 + 8) = v45;
  v28[58] = 0;
  *(v28 + 72) = 0u;
  *(v28 + 88) = 0u;
  *(v28 + 104) = 0u;
  v28[120] = 2;
  sub_1D774BED0(v41, &v28[v22[15]]);
  v28[v22[16]] = 0;
  v28[v22[17]] = 0;
  v46 = v44;

  sub_1D77B44C4(v38, &v28[v39]);
  v47 = objc_allocWithZone(MEMORY[0x1E69B5220]);
  v48 = sub_1D78B5C44();
  v49 = sub_1D78B5C44();
  v50 = [v47 initWithProductID:v48 receipt:v49 appleIDAccountDetails:0];

  v75 = v72;
  v76 = v43;
  v77 = v46;
  sub_1D774C018(0, &qword_1EC9CA9A0, sub_1D779DA54, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1D78B4174();
  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  v51 = sub_1D78B6104();
  v52 = v69;
  sub_1D7770378(v28, v69);
  v53 = (*(v71 + 80) + 24) & ~*(v71 + 80);
  v54 = v53 + v70;
  v55 = swift_allocObject();
  *(v55 + 16) = v50;
  sub_1D777044C(v52, v55 + v53);
  *(v55 + v54) = v73;
  type metadata accessor for WebOptinFlowManager();
  v56 = v50;
  sub_1D78B40B4();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v57 = sub_1D78B4014();
  sub_1D78B40D4();

  sub_1D77B4D4C(v28, type metadata accessor for PurchaseContext);
}

void sub_1D77B0030(uint64_t *a1, void *a2, void *a3, uint64_t a4, char a5)
{
  v10 = type metadata accessor for PurchaseContext(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v13);
  v14 = *a1;
  v15 = sub_1D77AE6CC();
  sub_1D7770378(a4, aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = v14;
  v17[4] = a3;
  sub_1D777044C(aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  *(v17 + v16 + v12) = a5;
  aBlock[4] = sub_1D77B466C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_32;
  v18 = _Block_copy(aBlock);
  v19 = a2;
  swift_unknownObjectRetain();
  v20 = a3;

  [v15 dismissViewControllerAnimated:1 completion:v18];
  _Block_release(v18);
}

uint64_t sub_1D77B01FC(void *a1, void *a2, void *a3, uint64_t a4, char a5)
{
  v10 = type metadata accessor for PurchaseContext(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v13);
  v14 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a2 publisherPaidWebAccessOptIn])
  {
    sub_1D7770378(a4, &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = a2;
    sub_1D777044C(v14, v16 + v15);
    a1;
    v17 = swift_unknownObjectRetain();
    sub_1D77B0E24(v17, a3, a4, a5 & 1, sub_1D77B5520, v16);
  }

  else
  {

    return sub_1D77B2944(a4, a1, a2);
  }
}

void sub_1D77B0388(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE09C268;
  v12 = sub_1D78B6094();
  sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D78BCAB0;
  aBlock[0] = a1;
  v14 = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  v15 = sub_1D78B5CC4();
  v17 = v16;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1D775ABD4();
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  sub_1D78B42C4(a3, a4, 2, &dword_1D7739000, v11, v12, v13);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = sub_1D77AE6CC();

    aBlock[4] = a5;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D775FB6C;
    aBlock[3] = a6;
    v21 = _Block_copy(aBlock);

    [v20 dismissViewControllerAnimated:1 completion:v21];
    _Block_release(v21);
  }
}

char *sub_1D77B05A8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *&result[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 32];
    v3 = result;
    __swift_project_boxed_opaque_existential_1(&result[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router], *&result[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 24]);
    sub_1D77B4470();
    sub_1D78B5054();
    swift_allocObject();
    sub_1D78B5004();
    (*(v2 + 88))();
  }

  return result;
}

id WebOptinFlowManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WebOptinFlowManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D77B0884(void *a1, void *a2, uint64_t a3)
{
  v7 = type metadata accessor for PurchaseContext(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  v11 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if ([a1 publisherPaidWebAccessOptIn])
  {
    sub_1D7770378(a3, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v14 = swift_allocObject();
    v14[2] = v12;
    v14[3] = a1;
    sub_1D777044C(v11, v14 + v13);
    v15 = v12;
    v16 = swift_unknownObjectRetain();
    sub_1D77B0E24(v16, a2, a3, 0, sub_1D77B5520, v14);
  }

  else
  {

    return sub_1D77B2944(a3, v12, a1);
  }
}

void sub_1D77B0A50(void *a1, uint64_t a2)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(*(v2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_appConfigurationManager) possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  v6 = [v5 preSubscribedNotificationsChannelIDs];

  if (v6)
  {
    v7 = sub_1D78B5EB4();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = [a1 identifier];
  v9 = sub_1D78B5C74();
  v11 = v10;

  v21[0] = v9;
  v21[1] = v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v20[2] = v21;
  LOBYTE(v8) = sub_1D781DA18(sub_1D7782F40, v20, v7);

  v14 = *(v2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_subscriptionController);
  v21[0] = 0;
  [v14 addSubscriptionToTag:a1 notificationsEnabled:v8 & 1 error:v21];
  v15 = v21[0];
  v16 = *(v2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_tracker + 24);
  v17 = *(v2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_tracker + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_tracker), v16);
  v18 = *(v17 + 16);
  v19 = v15;
  v18(a1, a2, v16, v17);
}

void sub_1D77B0C58(char a1, uint64_t a2, id a3, uint64_t a4)
{
  if (a1)
  {
    v4 = *(a2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_purchaseController);
    v5 = [a3 identifier];
    if (!v5)
    {
      sub_1D78B5C74();
      v9 = sub_1D78B5C44();

      v5 = v9;
    }

    v10 = v5;
    [v4 addToWebAccessOptedInListWithTagID_];
  }

  else
  {
    sub_1D77B0D70(a3, v13);
    v7 = v14;
    v8 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v12 = 2;
    v11 = 2;
    (*(v8 + 24))(&v12, &v11, a4, v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }
}

uint64_t sub_1D77B0D70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_webAccessOptInProvider), *(v2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_webAccessOptInProvider + 24));
  sub_1D7823CE8(a1, v10);
  v6 = v11;
  sub_1D77B4A70(v10);
  v7 = (v3 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_tracker);
  if ((v6 & 1) == 0)
  {
    return sub_1D774584C(v7, a2);
  }

  v8 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  return (*(v8 + 32))();
}

void sub_1D77B0E24(void *a1, void *a2, uint64_t a3, char a4, void (*a5)(void), void *a6)
{
  v265 = a5;
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for PurchaseContext(0);
  v267 = *(v12 - 8);
  v13 = *(v267 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v15 = &v244 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D78B5254();
  v263 = *(v16 - 1);
  v264 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v261 = &v244 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = sub_1D78B52A4();
  v260 = *(v262 - 8);
  MEMORY[0x1EEE9AC00](v262, v19);
  v259 = &v244 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SiwaCredentialUploadData(0);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = (&v244 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v266 = a6;
  if (a4)
  {
    v26 = *(a3 + 8);
    v264 = *a3;
    v27 = v6;
    sub_1D77B3334(a2, v6, a1, &aBlock);
    v269 = &type metadata for WebAccessOptInAlert;
    v270 = sub_1D77B4C24();
    v28 = swift_allocObject();
    v268 = v28;
    v29 = v283;
    v28[3] = v282;
    v28[4] = v29;
    v28[5] = v284;
    v30 = v281;
    v28[1] = aBlock;
    v28[2] = v30;
    sub_1D78B5054();
    swift_allocObject();
    sub_1D77B4C78(&aBlock, &v274);
    v31 = sub_1D78B5004();
    sub_1D7770378(a3, &v244 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v32 = (*(v267 + 80) + 136) & ~*(v267 + 80);
    v33 = (v13 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    v35 = v283;
    *(v34 + 48) = v282;
    *(v34 + 64) = v35;
    *(v34 + 80) = v284;
    v36 = v281;
    *(v34 + 16) = aBlock;
    *(v34 + 32) = v36;
    *(v34 + 96) = v27;
    *(v34 + 104) = a1;
    v37 = v264;
    *(v34 + 112) = a2;
    *(v34 + 120) = v37;
    *(v34 + 128) = v26;
    sub_1D777044C(v15, v34 + v32);
    v38 = (v34 + v33);
    v40 = v265;
    v39 = v266;
    *v38 = v265;
    v38[1] = v39;

    v41 = v27;
    swift_unknownObjectRetain();
    v42 = a2;

    sub_1D78B5024();

    v43 = swift_allocObject();
    *(v43 + 16) = v40;
    *(v43 + 24) = v39;

    sub_1D78B5044();

    v44 = &v41[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router];
LABEL_3:
    v45 = *(v44 + 3);
    v46 = *(v44 + 4);
    __swift_project_boxed_opaque_existential_1(v44, v45);
    (*(v46 + 88))(v31, v45, v46);
LABEL_4:

    return;
  }

  v47 = v6;
  v255 = v13;
  v256 = &v244 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = a1;
  v254 = v23;
  v48 = [a2 appleIDAccountDetails];
  v49 = a2;
  if (v48)
  {
    v50 = v48;
    v51 = [v48 credential];
    v52 = a3;
    v53 = v267;
    if (!v51)
    {
      v264 = v50;
      v93 = [v50 accountSignupError];
      if (v93)
      {
        v94 = v93;
        if (qword_1EE08FB98 != -1)
        {
          swift_once();
        }

        v95 = qword_1EE09C268;
        v96 = sub_1D78B6094();
        sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v97 = swift_allocObject();
        *(v97 + 16) = xmmword_1D78BCAB0;
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        *&v274 = v94;
        sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
        sub_1D78B6504();
        v99 = *(&aBlock + 1);
        v98 = aBlock;
        *(v97 + 56) = MEMORY[0x1E69E6158];
        *(v97 + 64) = sub_1D775ABD4();
        *(v97 + 32) = v98;
        *(v97 + 40) = v99;
        sub_1D78B42C4("WebOptInFlowManager error in SIWA flow: %{public}@", 50, 2, &dword_1D7739000, v95, v96, v97);

        v53 = v267;
      }

      v100 = v52[1];
      v267 = *v52;
      v101 = v49;
      v102 = v49;
      v103 = v257;
      sub_1D77B3334(v101, v47, v257, &aBlock);
      v269 = &type metadata for WebAccessOptInAlert;
      v270 = sub_1D77B4C24();
      v104 = swift_allocObject();
      v268 = v104;
      v105 = v283;
      v104[3] = v282;
      v104[4] = v105;
      v104[5] = v284;
      v106 = v281;
      v104[1] = aBlock;
      v104[2] = v106;
      sub_1D78B5054();
      swift_allocObject();
      sub_1D77B4C78(&aBlock, &v274);
      v107 = sub_1D78B5004();
      v108 = v52;
      v109 = v256;
      sub_1D7770378(v108, v256);
      v110 = (*(v53 + 80) + 136) & ~*(v53 + 80);
      v111 = (v255 + v110 + 7) & 0xFFFFFFFFFFFFFFF8;
      v112 = swift_allocObject();
      v113 = v283;
      *(v112 + 48) = v282;
      *(v112 + 64) = v113;
      *(v112 + 80) = v284;
      v114 = v281;
      *(v112 + 16) = aBlock;
      *(v112 + 32) = v114;
      *(v112 + 96) = v47;
      *(v112 + 104) = v103;
      v115 = v267;
      *(v112 + 112) = v102;
      *(v112 + 120) = v115;
      *(v112 + 128) = v100;
      sub_1D777044C(v109, v112 + v110);
      v116 = (v112 + v111);
      v118 = v265;
      v117 = v266;
      *v116 = v265;
      v116[1] = v117;

      v119 = v47;
      swift_unknownObjectRetain();
      v120 = v102;

      sub_1D78B5024();

      v121 = swift_allocObject();
      *(v121 + 16) = v118;
      *(v121 + 24) = v117;

      sub_1D78B5044();

      v122 = *&v119[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 24];
      v123 = *&v119[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 32];
      __swift_project_boxed_opaque_existential_1(&v119[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router], v122);
      (*(v123 + 88))(v107, v122, v123);

      goto LABEL_4;
    }

    v54 = v51;
    v55 = [v51 authorizationCode];
    v267 = sub_1D78B5C74();
    ObjectType = v56;

    v57 = [v54 identityToken];
    v58 = sub_1D78B5C74();
    v60 = v59;

    v61 = [v54 userIdentifier];
    v255 = sub_1D78B5C74();
    v253 = v62;

    v63 = [v54 familyName];
    if (v63)
    {
      v64 = v63;
      v65 = sub_1D78B5C74();
      v251 = v66;
      v252 = v65;
    }

    else
    {
      v251 = 0;
      v252 = 0;
    }

    v124 = [v54 givenName];
    if (v124)
    {
      v125 = v124;
      v126 = sub_1D78B5C74();
      v249 = v127;
      v250 = v126;
    }

    else
    {
      v249 = 0;
      v250 = 0;
    }

    v256 = v47;
    v128 = [v257 identifier];
    v129 = sub_1D78B5C74();
    v247 = v130;
    v248 = v129;

    v131 = *v52;
    v132 = v52[1];
    v246 = v131;

    v133 = [v49 receipt];
    v245 = sub_1D78B5C74();
    v135 = v134;

    v257 = v54;
    v136 = [v54 email];
    if (v136)
    {
      v137 = v136;
      v138 = sub_1D78B5C74();
      v140 = v139;
    }

    else
    {
      v138 = 0;
      v140 = 0;
    }

    sub_1D78B32E4();
    v141 = ObjectType;
    *v25 = v267;
    v25[1] = v141;
    v25[2] = v58;
    v25[3] = v60;
    v143 = v252;
    v142 = v253;
    v25[4] = v255;
    v25[5] = v142;
    v145 = v250;
    v144 = v251;
    v25[6] = v143;
    v25[7] = v144;
    v147 = v248;
    v146 = v249;
    v25[8] = v145;
    v25[9] = v146;
    v148 = v246;
    v149 = v247;
    v25[10] = v147;
    v25[11] = v149;
    v25[12] = v148;
    v25[13] = v132;
    v25[14] = v245;
    v25[15] = v135;
    v25[16] = v138;
    v25[17] = v140;
    v25[18] = 0;
    __swift_project_boxed_opaque_existential_1(&v256[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_siwaCredentialUploader], *&v256[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_siwaCredentialUploader + 24]);
    v150 = off_1F5273730[0];
    v151 = type metadata accessor for SIWACredentialUploader();
    v150(v25, v151);
    sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
    v152 = sub_1D78B6104();
    v153 = swift_allocObject();
    v154 = v266;
    *(v153 + 16) = v265;
    *(v153 + 24) = v154;
    *&v282 = sub_1D77AE3A4;
    *(&v282 + 1) = v153;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v281 = sub_1D775FB6C;
    *(&v281 + 1) = &block_descriptor_95;
    v155 = _Block_copy(&aBlock);

    v156 = v259;
    sub_1D78B5274();
    *&aBlock = MEMORY[0x1E69E7CC0];
    sub_1D77B4D04(&qword_1EE090300, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1D774C018(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D775F4A4();
    v157 = v261;
    v158 = v264;
    sub_1D78B6324();
    MEMORY[0x1DA7033B0](0, v156, v157, v155);
    _Block_release(v155);

    (*(v263 + 8))(v157, v158);
    (*(v260 + 8))(v156, v262);
    sub_1D77B4D4C(v25, type metadata accessor for SiwaCredentialUploadData);
  }

  else
  {
    v264 = a2;
    v67 = a3;
    v68 = *(a3 + 72);
    v69 = *(a3 + 80);
    v70 = *(a3 + 120);
    if (*(a3 + 120))
    {
      v71 = v6;
      v72 = *(a3 + 88);
      v73 = *(a3 + 96);
      v74 = v67[13];
      v75 = v67[14];
      if (v70 == 1)
      {
        v263 = v69;
        v76 = v68;
        if (qword_1EC9C8448 != -1)
        {
          swift_once();
        }

        v77 = qword_1EC9D9DF0;
        v78 = sub_1D78B60A4();
        sub_1D78B42C4("WebOptInFlowManager, HME selection is hide. Opting in via new endpoint.", 71, 2, &dword_1D7739000, v77, v78, MEMORY[0x1E69E7CC0]);
        MEMORY[0x1EEE9AC00](v79, v80);
        *(&v244 - 10) = v47;
        *(&v244 - 9) = v67;
        v82 = v263;
        v81 = v264;
        *(&v244 - 8) = v76;
        *(&v244 - 7) = v82;
        *(&v244 - 6) = v72;
        *(&v244 - 5) = v73;
        *(&v244 - 4) = v74;
        *(&v244 - 3) = v75;
        v243 = v81;
        sub_1D78B41F4();
        sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
        v83 = sub_1D78B6104();
        v84 = v67;
        v85 = v256;
        sub_1D7770378(v84, v256);
        v86 = (*(v267 + 80) + 32) & ~*(v267 + 80);
        v87 = (v255 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
        v88 = swift_allocObject();
        v89 = v257;
        *(v88 + 16) = v47;
        *(v88 + 24) = v89;
        sub_1D777044C(v85, v88 + v86);
        v90 = (v88 + v87);
        v91 = v266;
        *v90 = v265;
        v90[1] = v91;

        v92 = v47;
        swift_unknownObjectRetain();
        sub_1D78B40B4();

        goto LABEL_4;
      }

      if (v72 | v69 | v68 | v73 | v74 | v75)
      {
        if (qword_1EC9C8448 != -1)
        {
          swift_once();
        }

        v188 = qword_1EC9D9DF0;
        v189 = sub_1D78B6094();
        v190 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v191 = v264;
        if (qword_1EC9C8448 != -1)
        {
          swift_once();
        }

        v192 = qword_1EC9D9DF0;
        v193 = sub_1D78B60A4();
        sub_1D78B42C4("WebOptInFlowManager, HME selection is unknown. This probably means HME was not configured. Proceeding with normal flow.", 119, 2, &dword_1D7739000, v192, v193, MEMORY[0x1E69E7CC0]);
        v194 = &v71[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_webAccessOptInProvider];
        __swift_project_boxed_opaque_existential_1(&v71[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_webAccessOptInProvider], *&v71[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_webAccessOptInProvider + 24]);
        v195 = v257;
        sub_1D7823CE8(v257, &aBlock);
        v196 = v256;
        if ((v285 & 1) == 0)
        {
          sub_1D77B4A70(&aBlock);
          v217 = *v67;
          v262 = v67[1];
          v263 = v217;
          v218 = v191;
          sub_1D77B3334(v191, v71, v195, &v274);
          v272 = &type metadata for WebAccessOptInAlert;
          v273 = sub_1D77B4C24();
          v219 = swift_allocObject();
          v271 = v219;
          v220 = v275;
          v221 = v277;
          v222 = v278;
          v219[3] = v276;
          v219[4] = v221;
          v219[5] = v222;
          v219[1] = v274;
          v219[2] = v220;
          sub_1D78B5054();
          swift_allocObject();
          sub_1D77B4C78(&v274, &v268);
          v31 = sub_1D78B5004();
          sub_1D7770378(v67, v196);
          v223 = (*(v267 + 80) + 136) & ~*(v267 + 80);
          v224 = (v255 + v223 + 7) & 0xFFFFFFFFFFFFFFF8;
          v225 = swift_allocObject();
          v226 = v196;
          v227 = v225;
          v228 = v275;
          v229 = v277;
          v230 = v278;
          *(v225 + 48) = v276;
          *(v225 + 64) = v229;
          *(v225 + 80) = v230;
          *(v225 + 16) = v274;
          *(v225 + 32) = v228;
          *(v225 + 96) = v71;
          *(v225 + 104) = v195;
          v232 = v262;
          v231 = v263;
          *(v225 + 112) = v218;
          *(v225 + 120) = v231;
          *(v225 + 128) = v232;
          sub_1D777044C(v226, v225 + v223);
          v233 = (v227 + v224);
          v235 = v265;
          v234 = v266;
          *v233 = v265;
          v233[1] = v234;

          v236 = v71;
          swift_unknownObjectRetain();
          v237 = v218;

          sub_1D78B5024();

          v238 = swift_allocObject();
          *(v238 + 16) = v235;
          *(v238 + 24) = v234;

          sub_1D78B5044();

          v44 = &v236[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router];
          goto LABEL_3;
        }

        sub_1D77B4A70(&aBlock);
        __swift_project_boxed_opaque_existential_1(v194, *(v194 + 3));
        sub_1D7823CE8(v195, &v274);
        if (v279)
        {
          v262 = *(&v274 + 1);
          v263 = v274;

          sub_1D77B4A70(&v274);
          v197 = v71;
          v198 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_1D7770378(v67, v196);
          v199 = v196;
          v200 = (*(v267 + 80) + 56) & ~*(v267 + 80);
          v201 = swift_allocObject();
          v202 = v265;
          v203 = v266;
          *(v201 + 2) = v198;
          *(v201 + 3) = v202;
          *(v201 + 4) = v203;
          *(v201 + 5) = v195;
          v204 = v191;
          *(v201 + 6) = v191;
          sub_1D777044C(v199, v201 + v200);
          v205 = &v197[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_postUpsellAction];
          v206 = *&v197[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_postUpsellAction];
          v207 = *&v197[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_postUpsellAction + 8];
          *v205 = sub_1D77B4BB8;
          v205[1] = v201;

          swift_unknownObjectRetain();
          v208 = v204;

          sub_1D7744A7C(v206, v207);

          [*&v197[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_postActionHandlerManager] addPostActionHandler:v197 forActionType:*MEMORY[0x1E69CE0E0]];
          v209 = *&v197[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 24];
          v210 = *&v197[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 32];
          __swift_project_boxed_opaque_existential_1(&v197[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router], v209);
          v211 = [v195 identifier];
          v212 = sub_1D78B5C74();
          v214 = v213;

          v216 = sub_1D77B4D04(&qword_1EC9CA0A0, v215, type metadata accessor for WebOptinFlowManager, &protocol conformance descriptor for WebOptinFlowManager);
          (*(v210 + 16))(v263, v262, v212, v214, 0, 0, v197, v216, v209, v210);
        }

        else
        {
          sub_1D77B4A70(&v274);
          v239 = v265;
          if (qword_1EE08FB98 != -1)
          {
            swift_once();
          }

          v240 = qword_1EE09C268;
          v241 = sub_1D78B6094();
          v242 = sub_1D78B42C4("Failed to show custom landing page because no article ID was available for the landing page!", 92, 2, &dword_1D7739000, v240, v241, MEMORY[0x1E69E7CC0]);
          v239(0, v242);
        }
      }
    }

    else
    {
      v262 = *(a3 + 72);
      v263 = v69;
      v159 = v6;
      if (qword_1EC9C8448 != -1)
      {
        swift_once();
      }

      v160 = qword_1EC9D9DF0;
      v161 = sub_1D78B60A4();
      sub_1D78B42C4("WebOptInFlowManager, HME selection is share. Opting in via legacy endpoint.", 75, 2, &dword_1D7739000, v160, v161, MEMORY[0x1E69E7CC0]);
      v162 = swift_allocObject();
      v163 = v266;
      *(v162 + 16) = v265;
      *(v162 + 24) = v163;
      v265 = v162;
      __swift_project_boxed_opaque_existential_1(&v47[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_sceneProvider], *(v159 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_sceneProvider + 24));

      v164 = sub_1D78B4874();
      v165 = v264;
      if (v164)
      {
        v166 = v164;
        v167 = [v164 rootViewController];

        if (v167)
        {
          v168 = sub_1D78B60B4();

          v169 = sub_1D77AE6CC();
          [v168 presentViewController:v169 animated:1 completion:0];
        }
      }

      v170 = [v165 receipt];
      v171 = sub_1D78B5C74();
      v173 = v172;

      v175 = HIBYTE(v173) & 0xF;
      if ((v173 & 0x2000000000000000) == 0)
      {
        v175 = v171 & 0xFFFFFFFFFFFFLL;
      }

      if (!v175)
      {
        if (qword_1EE08FB98 != -1)
        {
          swift_once();
        }

        v176 = qword_1EE09C268;
        v177 = sub_1D78B6094();
        v174 = sub_1D78B42C4("WebOptInFlowManager, attempting to submit web access with a blank receipt.", 74, 2, &dword_1D7739000, v176, v177, MEMORY[0x1E69E7CC0]);
      }

      v266 = *(v159 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_purchaseController);
      v178 = [v257 identifier];
      if (!v178)
      {
        sub_1D78B5C74();
        v178 = sub_1D78B5C44();
      }

      v261 = sub_1D78B5C44();
      v179 = sub_1D78B5C44();
      v180 = [v165 receipt];
      if (!v180)
      {
        sub_1D78B5C74();
        v180 = sub_1D78B5C44();
      }

      v181 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v182 = v256;
      sub_1D7770378(v67, v256);
      v183 = (*(v267 + 80) + 48) & ~*(v267 + 80);
      v184 = swift_allocObject();
      v184[2] = v181;
      v184[3] = sub_1D77B54F8;
      v185 = v257;
      v184[4] = v265;
      v184[5] = v185;
      sub_1D777044C(v182, v184 + v183);
      *&v282 = sub_1D77B4BB4;
      *(&v282 + 1) = v184;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v281 = sub_1D77B4288;
      *(&v281 + 1) = &block_descriptor_67;
      v186 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      v187 = v261;
      [v266 submitWebAccessWithTagID:v178 purchaseID:v261 emailAddress:v179 purchaseReceipt:v180 serialCompletion:0 completion:v186];
      _Block_release(v186);
    }
  }
}

void sub_1D77B25B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(a5 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_tagController);

  v14 = sub_1D78B5C44();
  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  v15 = sub_1D78B6104();
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = sub_1D775C1FC;
  v16[5] = v12;
  v18[4] = sub_1D77B46F4;
  v18[5] = v16;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1D7752E68;
  v18[3] = &block_descriptor_45;
  v17 = _Block_copy(v18);

  [v13 fetchTagForTagID:v14 qualityOfService:25 callbackQueue:v15 completionHandler:v17];
  _Block_release(v17);
}

void sub_1D77B2748(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  if (a1)
  {
    v6 = swift_unknownObjectRetain();
    a5(v6);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v9 = qword_1EE09C268;
    v10 = sub_1D78B6094();
    sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D78BCAB0;
    v12 = a2;
    sub_1D775B620(0, &unk_1EE08F9E0, &qword_1EE08F9F0, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
    v13 = sub_1D78B5CC4();
    v15 = v14;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1D775ABD4();
    *(v11 + 32) = v13;
    *(v11 + 40) = v15;
    sub_1D78B42C4("Could not fetch tag to show web-opt in alert error=%{public}@", 61, 2, &dword_1D7739000, v9, v10, v11);

    sub_1D77B4700();
    v16 = swift_allocError();
    *v17 = 2;
    a3();
  }
}

uint64_t sub_1D77B2944(uint64_t a1, uint64_t a2, void *a3)
{
  if (PurchaseConversionLocation.rawValue.getter() == 0x747241664F706F74 && v6 == 0xEC000000656C6369)
  {
    goto LABEL_8;
  }

  v8 = sub_1D78B6724();

  if (v8)
  {
LABEL_9:
    v10 = (a2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router);
    v11 = *(a2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 24);
    v12 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v13 = [a3 identifier];
    v14 = sub_1D78B5C74();
    v16 = v15;

    (*(v12 + 104))(v14, v16, 0, v11, v12);
  }

  if (PurchaseConversionLocation.rawValue.getter() == 0xD000000000000013 && 0x80000001D78CE310 == v9)
  {
LABEL_8:

    goto LABEL_9;
  }

  v18 = sub_1D78B6724();

  if (v18)
  {
    goto LABEL_9;
  }

  v19 = *(a1 + 64);
  result = sub_1D7773164(v19);
  if (v20)
  {

    sub_1D7773234(v19);
    if (v21)
    {
      goto LABEL_9;
    }

    result = sub_1D7773234(v19);
    if (v22)
    {
      __break(1u);
      return result;
    }

    if (result == 1)
    {
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t sub_1D77B2B1C(char a1, uint64_t a2, id a3, uint64_t a4)
{
  if (a1)
  {
    v7 = *(a2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_purchaseController);
    v8 = [a3 identifier];
    if (!v8)
    {
      sub_1D78B5C74();
      v8 = sub_1D78B5C44();
    }

    [v7 addToWebAccessOptedInListWithTagID_];
  }

  else
  {
    sub_1D77B0D70(a3, v14);
    v9 = v15;
    v10 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v13 = 2;
    v12 = 2;
    (*(v10 + 24))(&v13, &v12, a4, v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return sub_1D77B2944(a4, a2, a3);
}

void sub_1D77B2C48(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for PurchaseContext(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_1D77AEB88(a1, a2, v6, v7);
}

unint64_t sub_1D77B2CCC()
{
  result = qword_1EC9CA018;
  if (!qword_1EC9CA018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA018);
  }

  return result;
}

uint64_t sub_1D77B2D20()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_receiptRefresher), *(v1 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_receiptRefresher + 24));
  v4 = off_1F526C538[0];
  type metadata accessor for ReceiptRefresher();
  return v4(v2, v3);
}

uint64_t sub_1D77B2E1C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_hideMyEmailService), *(a1 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_hideMyEmailService + 24));
  v16 = a2[5];
  v26 = a2[6];
  v27[0] = a3;
  v27[1] = a4;
  v27[2] = a5;
  v27[3] = a6;
  v27[4] = a7;
  v27[5] = a8;
  v28 = 0;
  v17 = [a9 receipt];
  v18 = sub_1D78B5C74();
  v20 = v19;

  v21 = *a2;
  v22 = a2[1];
  v23 = off_1F52703F8[0];
  type metadata accessor for HideMyEmailService();
  v24 = v23(v16, v26, v27, v18, v20, v21, v22);

  return v24;
}

uint64_t sub_1D77B2F3C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t))
{
  v8 = *a1;
  sub_1D77B0D70(a4, v15);
  v9 = v16;
  v10 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v14 = v11;
  v13 = 1;
  (*(v10 + 24))(&v14, &v13, a5, v9, v10);
  a6(v8);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_1D77B3008(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void *a4, void *a5, uint64_t *a6)
{
  v11 = type metadata accessor for PurchaseContext(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v14);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2();
  }

  v16 = Strong;
  v17 = a6[1];
  v36 = *a6;
  v35 = v17;
  sub_1D77B3334(a5, Strong, a4, &v41);
  v39 = &type metadata for WebAccessOptInAlert;
  v40 = sub_1D77B4C24();
  v18 = swift_allocObject();
  v38 = v18;
  v19 = v44;
  v18[3] = v43;
  v18[4] = v19;
  v18[5] = v45;
  v20 = v42;
  v18[1] = v41;
  v18[2] = v20;
  sub_1D78B5054();
  swift_allocObject();
  sub_1D77B4C78(&v41, v37);
  v34 = sub_1D78B5004();
  sub_1D7770378(a6, &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v12 + 80) + 136) & ~*(v12 + 80);
  v22 = swift_allocObject();
  v23 = v44;
  *(v22 + 48) = v43;
  *(v22 + 64) = v23;
  *(v22 + 80) = v45;
  v24 = v42;
  *(v22 + 16) = v41;
  *(v22 + 32) = v24;
  *(v22 + 96) = v16;
  *(v22 + 104) = a4;
  v25 = v36;
  *(v22 + 112) = a5;
  *(v22 + 120) = v25;
  *(v22 + 128) = v35;
  sub_1D777044C(&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v26 = (v22 + ((v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = a2;
  v26[1] = a3;
  v27 = v16;
  swift_unknownObjectRetain();
  v28 = a5;

  v29 = v34;
  sub_1D78B5024();

  v30 = swift_allocObject();
  *(v30 + 16) = a2;
  *(v30 + 24) = a3;

  sub_1D78B5044();

  v31 = *&v27[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 24];
  v32 = *&v27[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 32];
  __swift_project_boxed_opaque_existential_1(&v27[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router], v31);
  (*(v32 + 88))(v29, v31, v32);
}

void sub_1D77B3334(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = [a1 appleIDAccountDetails];
  v8 = &v20 + 8;
  if (v7)
  {

    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_webAccessOptInProvider), *(a2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_webAccessOptInProvider + 24));
    sub_1D7824708(a3, v18);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_webAccessOptInProvider), *(a2 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_webAccessOptInProvider + 24));
    sub_1D7823CE8(a3, v18);
  }

  v26 = v19;
  v24 = v18[4];
  v25 = v18[5];
  v20 = v18[0];
  v21 = v18[1];
  v22 = v18[2];
  v23 = v18[3];
  if (v19)
  {
    sub_1D77B4C78(&v21, v17);
    sub_1D77B4A70(v18);
    v9 = *(&v25 + 1);
    v10 = v25;
    v11 = *(&v24 + 1);
    v12 = v24;
    v14 = v22;
    v13 = v23;
    v8 = &v21 + 8;
    v15 = v21;
  }

  else
  {
    v9 = *(&v24 + 1);
    v10 = v24;
    v11 = *(&v23 + 1);
    v12 = v23;
    v14 = v21;
    v13 = v22;
    v15 = v20;
  }

  v16 = *v8;
  *a4 = v15;
  *(a4 + 8) = v16;
  *(a4 + 16) = v14;
  *(a4 + 32) = v13;
  *(a4 + 48) = v12;
  *(a4 + 56) = v11;
  *(a4 + 64) = v10;
  *(a4 + 72) = v9;
}

void sub_1D77B3478(void *a1, uint64_t a2, char *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v62 = a6;
  v63 = a7;
  v65 = a4;
  v15 = type metadata accessor for PurchaseContext(0);
  v64 = *(v15 - 8);
  v16 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v18 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77B3A7C(a2, a1);
  if (!v19)
  {
    goto LABEL_18;
  }

  v61 = a8;
  v20 = sub_1D78B5C44();
  v21 = [v20 ea_isLegalEmailAddress];

  if (!v21)
  {

    a8 = v61;
LABEL_18:
    v67 = &type metadata for InvalidEmailAddressAlert;
    v68 = sub_1D77B4DAC();
    sub_1D78B5054();
    swift_allocObject();
    v45 = sub_1D78B5004();
    sub_1D7770378(a8, &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    v46 = (*(v64 + 80) + 56) & ~*(v64 + 80);
    v47 = (v16 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    v49 = v65;
    v48[2] = a3;
    v48[3] = v49;
    v50 = v62;
    v48[4] = a5;
    v48[5] = v50;
    v48[6] = v63;
    sub_1D777044C(v18, v48 + v46);
    v51 = (v48 + v47);
    *v51 = a9;
    v51[1] = a10;

    swift_unknownObjectRetain();
    v52 = a3;
    v53 = a5;

    sub_1D78B5024();

    v54 = swift_allocObject();
    *(v54 + 16) = a9;
    *(v54 + 24) = a10;

    sub_1D78B5044();

    v55 = &v52[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router];
    v56 = *&v52[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 24];
    v57 = *(v55 + 4);
    __swift_project_boxed_opaque_existential_1(v55, v56);
    (*(v57 + 88))(v45, v56, v57);

    return;
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a9;
  *(v22 + 24) = a10;
  v59 = v22;
  __swift_project_boxed_opaque_existential_1(&a3[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_sceneProvider], *&a3[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_sceneProvider + 24]);

  v23 = sub_1D78B4874();
  if (v23)
  {
    v24 = v23;
    v25 = [v23 rootViewController];

    if (v25)
    {
      v26 = sub_1D78B60B4();

      v27 = sub_1D77AE6CC();
      [v26 presentViewController:v27 animated:1 completion:0];
    }
  }

  v28 = [a5 receipt];
  v29 = sub_1D78B5C74();
  v31 = v30;

  v33 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v33 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v34 = qword_1EE09C268;
    v35 = sub_1D78B6094();
    v32 = sub_1D78B42C4("WebOptInFlowManager, attempting to submit web access with a blank receipt.", 74, 2, &dword_1D7739000, v34, v35, MEMORY[0x1E69E7CC0]);
  }

  v60 = *&a3[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_purchaseController];
  v36 = [v65 identifier];
  if (!v36)
  {
    sub_1D78B5C74();
    v36 = sub_1D78B5C44();
  }

  v37 = sub_1D78B5C44();
  v38 = sub_1D78B5C44();

  v39 = [a5 receipt];
  if (!v39)
  {
    sub_1D78B5C74();
    v39 = sub_1D78B5C44();
  }

  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D7770378(v61, &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = (*(v64 + 80) + 48) & ~*(v64 + 80);
  v42 = swift_allocObject();
  v42[2] = v40;
  v42[3] = sub_1D77B54F8;
  v43 = v65;
  v42[4] = v59;
  v42[5] = v43;
  sub_1D777044C(v18, v42 + v41);
  v68 = sub_1D77B5528;
  v69 = v42;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D77B4288;
  v67 = &block_descriptor_121;
  v44 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  [v60 submitWebAccessWithTagID:v36 purchaseID:v37 emailAddress:v38 purchaseReceipt:v39 serialCompletion:0 completion:v44];
  _Block_release(v44);
}

id sub_1D77B3A7C(uint64_t a1, id a2)
{
  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);

    v4 = sub_1D78B5C44();
    v5 = [v4 ea_isLegalEmailAddress];

    if (v5)
    {
      return v3;
    }
  }

  if (!a2)
  {
    return 0;
  }

  v3 = [a2 textFields];
  if (!v3)
  {
    return v3;
  }

  sub_1D773F004(0, &qword_1EC9CA0C0, 0x1E69DD0B0);
  v6 = sub_1D78B5EB4();

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_14:

    return 0;
  }

  result = sub_1D78B6534();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1DA703700](0, v6);
LABEL_11:
    v9 = v8;

    v10 = [v9 text];

    if (v10)
    {
      v3 = sub_1D78B5C74();

      return v3;
    }

    return 0;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 32);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D77B3BF8(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v39 = a8;
  v36 = a7;
  v38 = a6;
  v37 = a5;
  v12 = type metadata accessor for PurchaseContext(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v15);
  sub_1D77B3334(a4, a2, a3, &v44);
  v42 = &type metadata for WebAccessOptInAlert;
  v43 = sub_1D77B4C24();
  v16 = swift_allocObject();
  v41 = v16;
  v17 = v45;
  v18 = v47;
  v19 = v48;
  v16[3] = v46;
  v16[4] = v18;
  v16[5] = v19;
  v16[1] = v44;
  v16[2] = v17;
  sub_1D78B5054();
  swift_allocObject();
  sub_1D77B4C78(&v44, v40);
  v20 = sub_1D78B5004();
  sub_1D7770378(v36, &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v13 + 80) + 136) & ~*(v13 + 80);
  v22 = swift_allocObject();
  v23 = v45;
  v24 = v47;
  v25 = v48;
  *(v22 + 48) = v46;
  *(v22 + 64) = v24;
  *(v22 + 80) = v25;
  *(v22 + 16) = v44;
  *(v22 + 32) = v23;
  *(v22 + 96) = a2;
  *(v22 + 104) = a3;
  v26 = v37;
  *(v22 + 112) = a4;
  *(v22 + 120) = v26;
  *(v22 + 128) = v38;
  sub_1D777044C(&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v27 = (v22 + ((v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  v28 = v39;
  *v27 = v39;
  v27[1] = a9;
  v29 = a2;
  swift_unknownObjectRetain();
  v30 = a4;

  sub_1D78B5024();

  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  *(v31 + 24) = a9;

  sub_1D78B5044();

  v32 = &v29[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router];
  v33 = *&v29[OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_router + 24];
  v34 = *(v32 + 4);
  __swift_project_boxed_opaque_existential_1(v32, v33);
  (*(v34 + 88))(v20, v33, v34);
}

uint64_t sub_1D77B3EE4(char a1, void *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, void *a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a4();
  }

  v14 = Strong;
  sub_1D77B0D70(a6, v36);
  if (a2)
  {
    v15 = a2;
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v16 = qword_1EE09C268;
    v17 = sub_1D78B6094();
    sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D78BCAB0;
    aBlock = 0;
    v31 = 0xE000000000000000;
    v29 = a2;
    sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
    sub_1D78B6504();
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1D775ABD4();
    *(v18 + 32) = 0;
    *(v18 + 40) = 0xE000000000000000;
    sub_1D78B42C4("Web access submission failed with error: %{public}@", 51, 2, &dword_1D7739000, v16, v17, v18);

    v19 = v37;
    v20 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    LOBYTE(aBlock) = 2;
    LOBYTE(v29) = 0;
    (*(v20 + 24))(&aBlock, &v29, a7, v19, v20);
  }

  else if (a1)
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v22 = qword_1EE09C268;
    v23 = sub_1D78B60A4();
    sub_1D78B42C4("Web access for tag: %{public}@ is submitted successfully", 56, 2, &dword_1D7739000, v22, v23, MEMORY[0x1E69E7CC0]);
    v24 = v37;
    v25 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    LOBYTE(aBlock) = 1;
    LOBYTE(v29) = 0;
    (*(v25 + 24))(&aBlock, &v29, a7, v24, v25);
  }

  v26 = sub_1D77AE6CC();
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  v34 = sub_1D7782BC8;
  v35 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1D775FB6C;
  v33 = &block_descriptor_145;
  v28 = _Block_copy(&aBlock);

  [v26 dismissViewControllerAnimated:1 completion:v28];

  _Block_release(v28);
  return __swift_destroy_boxed_opaque_existential_1(v36);
}

void sub_1D77B4288(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void WebOptinFlowManager.handledAction(_:state:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_postUpsellAction);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_postUpsellAction + 8);

    v1(v3);

    sub_1D7744A7C(v1, v2);
  }
}

uint64_t WebOptinFlowManager.hostViewControllerDidCompleteUserInitiatedDismissal(_:)()
{
  v1 = (v0 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_postUpsellAction);
  v2 = *(v0 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_postUpsellAction);
  v3 = *(v0 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_postUpsellAction + 8);
  *v1 = 0;
  v1[1] = 0;
  return sub_1D7744A7C(v2, v3);
}

uint64_t sub_1D77B4404()
{
  v1 = (v0 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_postUpsellAction);
  v2 = *(v0 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_postUpsellAction);
  v3 = *(v0 + OBJC_IVAR____TtC16NewsSubscription19WebOptinFlowManager_postUpsellAction + 8);
  *v1 = 0;
  v1[1] = 0;
  return sub_1D7744A7C(v2, v3);
}

unint64_t sub_1D77B4470()
{
  result = qword_1EC9CA080;
  if (!qword_1EC9CA080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA080);
  }

  return result;
}

uint64_t sub_1D77B44C4(uint64_t a1, uint64_t a2)
{
  sub_1D774C018(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D77B4564(uint64_t *a1, void *a2)
{
  v5 = *(type metadata accessor for PurchaseContext(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  sub_1D77B0030(a1, a2, *(v2 + 16), v2 + v6, *(v2 + v6 + *(v5 + 64)));
}

uint64_t sub_1D77B466C()
{
  v1 = *(type metadata accessor for PurchaseContext(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));
  v5 = *(v4 + *(v1 + 64));
  v6 = v0[4];

  return sub_1D77B01FC(v2, v3, v6, v4, v5);
}

unint64_t sub_1D77B4700()
{
  result = qword_1EC9CA090;
  if (!qword_1EC9CA090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA090);
  }

  return result;
}

uint64_t objectdestroyTm_0()
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

uint64_t sub_1D77B49E8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PurchaseContext(0) - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t sub_1D77B4AFC(unsigned __int8 *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PurchaseContext(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  return sub_1D77B2F3C(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1D77B4BB8()
{
  v1 = *(type metadata accessor for PurchaseContext(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = (v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80)));

  return sub_1D77B3008(v2, v3, v4, v5, v6, v7);
}

unint64_t sub_1D77B4C24()
{
  result = qword_1EC9CA0A8;
  if (!qword_1EC9CA0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA0A8);
  }

  return result;
}

uint64_t sub_1D77B4D04(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1D77B4D4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D77B4DAC()
{
  result = qword_1EC9CA0B8;
  if (!qword_1EC9CA0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA0B8);
  }

  return result;
}

uint64_t sub_1D77B4E00(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseContext(0) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1D77B3BF8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *v5, v5[1]);
}

uint64_t objectdestroy_63Tm()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
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

uint64_t sub_1D77B50C8(char a1, void *a2)
{
  v5 = *(type metadata accessor for PurchaseContext(0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_1D77B3EE4(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_76Tm()
{
  v1 = type metadata accessor for PurchaseContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 136) & ~v2;
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

void sub_1D77B53B4(void *a1)
{
  v3 = *(type metadata accessor for PurchaseContext(0) - 8);
  v4 = (*(v3 + 80) + 136) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1D77B3478(a1, v1 + 16, *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 128), v1 + v4, *v5, v5[1]);
}

unint64_t sub_1D77B5478()
{
  result = qword_1EC9CA0C8;
  if (!qword_1EC9CA0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA0C8);
  }

  return result;
}

void sub_1D77B552C(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for DefaultSubscriptionFeatureAvailability;
  *(a1 + 32) = &off_1F5274018;
  *a1 = 0;
  *(a1 + 4) = 0;
}

void sub_1D77B554C(void *a1@<X8>)
{
  a1[3] = &type metadata for DefaultPaidBundleViaOfferFeatureAvailability;
  a1[4] = &off_1F5272708;
  *a1 = 0;
}

id sub_1D77B5568()
{
  v0 = objc_allocWithZone(NPFamilySharingSetupPresenter);

  return [v0 init];
}

void *sub_1D77B55A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090C70, &protocol descriptor for ConfigurableOffersConfigFetcherType, 1);
  result = sub_1D78B39F4();
  if (v7)
  {
    v4 = type metadata accessor for ConfigurableOffersDebugGroupProvider();
    v5 = swift_allocObject();
    result = sub_1D7741E34(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F526A990;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D77B5674@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773D21C(0, &qword_1EE08FCA0, &protocolRef_FCCoreConfigurationManager);
  result = sub_1D78B39E4();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, &qword_1EE091458, &protocol descriptor for SIWAPurchaseConfigProviderType, 1);
    result = sub_1D78B39F4();
    if (v21)
    {
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      MEMORY[0x1EEE9AC00](v6, v6);
      v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v10 = *v8;
      v11 = type metadata accessor for SIWAPurchaseConfigProvider();
      v19[3] = v11;
      v19[4] = &off_1F526E9D8;
      v19[0] = v10;
      v12 = type metadata accessor for HideMyEmailSignupConfigProvider();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v19, v11);
      MEMORY[0x1EEE9AC00](v14, v14);
      v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v13[6] = v11;
      v13[7] = &off_1F526E9D8;
      v13[2] = v5;
      v13[3] = v18;
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = __swift_destroy_boxed_opaque_existential_1(v20);
      a2[3] = v12;
      a2[4] = &off_1F5267FE8;
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

void *sub_1D77B58F4()
{
  type metadata accessor for InAppMessageCoordinator();
  v0 = swift_allocObject();
  v0[2] = 0;
  v0[3] = [objc_allocWithZone(type metadata accessor for InAppMessageContextProvider()) init];
  v0[4] = 0xD00000000000001ALL;
  v0[5] = 0x80000001D78D21D0;
  return v0;
}

uint64_t sub_1D77B59EC(void *a1, char a2)
{
  v4 = [a1 sourceChannel];
  if (v4)
  {
    v5 = [v4 identifier];
    swift_unknownObjectRelease();
    v6 = sub_1D78B5C74();
    v8 = v7;

    if ([a1 isExplicitContent])
    {

      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      v9 = qword_1EE09C268;
      sub_1D775B688(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1D78BCAB0;
      v11 = [a1 identifier];
      v12 = sub_1D78B5C74();
      v14 = v13;

      *(v10 + 56) = MEMORY[0x1E69E6158];
      *(v10 + 64) = sub_1D775ABD4();
      *(v10 + 32) = v12;
      *(v10 + 40) = v14;
      v15 = sub_1D78B60A4();
      sub_1D78B42C4("Alacarte Soft paywall not allowed due to explicit content identifier=%{public}@", 79, 2, &dword_1D7739000, v9, v15, v10);
      v16 = 0;
    }

    else
    {
      v16 = sub_1D77B5CD8(v6, v8, a2 & 1);

      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      v17 = qword_1EE09C268;
      sub_1D775B688(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1D78BCB50;
      v19 = [a1 identifier];
      v20 = sub_1D78B5C74();
      v22 = v21;

      *(v18 + 56) = MEMORY[0x1E69E6158];
      *(v18 + 64) = sub_1D775ABD4();
      *(v18 + 32) = v20;
      *(v18 + 40) = v22;
      v23 = MEMORY[0x1E69E63A8];
      *(v18 + 96) = MEMORY[0x1E69E6370];
      *(v18 + 104) = v23;
      *(v18 + 72) = v16 & 1;
      v24 = sub_1D78B60A4();
      sub_1D78B42C4("Alacarte Soft paywall meter check for article, identifier=%{public}@ canShow=%d", 79, 2, &dword_1D7739000, v17, v24, v18);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1D77B5CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v33[0] = *v3;
  sub_1D775B688(0, &qword_1EE094430, type metadata accessor for PaywallShownEntry, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v33 - v9;
  v11 = type metadata accessor for PaywallShownEntry(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [*(v3 + 32) appConfiguration];
  if ((sub_1D77B6260(v4) & 1) == 0)
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v19 = qword_1EE09C268;
    v20 = sub_1D78B60A4();
    sub_1D78B42C4("Could not show soft paywall for today.", 38, 2, &dword_1D7739000, v19, v20, MEMORY[0x1E69E7CC0]);
    swift_unknownObjectRelease();
    return 0;
  }

  __swift_project_boxed_opaque_existential_1((v3 + 40), *(v3 + 64));
  v17 = sub_1D782A528(a1, a2, v10);
  if ((*(v12 + 48))(v10, 1, v11, v17) == 1)
  {
    sub_1D77B6A60(v10);
    sub_1D77B6810(a1, a2, v4 & 1);
    swift_unknownObjectRelease();
    return 1;
  }

  sub_1D77B6AEC(v10, v15);
  v21 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
  v22 = sub_1D78B3324();
  [v21 timeIntervalSinceDate_];
  v24 = v23;

  if (qword_1EE08F320 != -1)
  {
    swift_once();
  }

  sub_1D77B6BAC(qword_1EE08E998, v25, type metadata accessor for AlacarteArticleSoftPaywallMeter, &unk_1D78BFD48);
  sub_1D78B3574();
  v26 = v33[1];
  if (!NFInternalBuild() || v26 == -1)
  {
    v26 = [v16 subscriptionsPlacardPublisherFrequencyInSeconds];
  }

  if (v24 >= 2.0)
  {
    v27 = v26;
    if (v24 <= v26)
    {
      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      v28 = qword_1EE09C268;
      sub_1D775B688(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1D78BCB50;
      *(v29 + 56) = MEMORY[0x1E69E6158];
      *(v29 + 64) = sub_1D775ABD4();
      v30 = MEMORY[0x1E69E63B0];
      *(v29 + 32) = a1;
      *(v29 + 40) = a2;
      v31 = MEMORY[0x1E69E6438];
      *(v29 + 96) = v30;
      *(v29 + 104) = v31;
      *(v29 + 72) = v27;

      v32 = sub_1D78B60A4();
      sub_1D78B42C4("Could not show soft paywall as last shown paywall for tag=%{public}@ has not exceeded the allowed publisher paywall frequency=%{public}f", 136, 2, &dword_1D7739000, v28, v32, v29);
      swift_unknownObjectRelease();

      sub_1D77B6B50(v15);
      return 0;
    }
  }

  sub_1D77B6810(a1, a2, v4 & 1);
  swift_unknownObjectRelease();
  sub_1D77B6B50(v15);
  return 1;
}

uint64_t sub_1D77B61A0()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_1D77B6260(int a1)
{
  v2 = v1;
  LODWORD(v39) = a1;
  v3 = sub_1D78B3394();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v36 - v10;
  v12 = [*(v1 + 32) appConfiguration];
  v13 = *(v1 + 16);
  sub_1D77B6BAC(qword_1EE08E998, v14, type metadata accessor for AlacarteArticleSoftPaywallMeter, &unk_1D78BFD48);
  v36[2] = v13;
  sub_1D78B3574();
  v38 = v41;
  v36[1] = *(v2 + 24);
  sub_1D78B3574();
  sub_1D78B32E4();
  sub_1D77B6BAC(&qword_1EE08F468, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  LOBYTE(v13) = sub_1D78B5C34();
  v15 = *(v4 + 8);
  v15(v8, v3);
  if (v13)
  {
    v15(v11, v3);
LABEL_19:
    swift_unknownObjectRelease();
    return 1;
  }

  v37 = v15;
  v40 = v12;
  v16 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
  v17 = sub_1D78B3324();
  [v16 timeIntervalSinceDate_];
  v19 = v18;

  if (qword_1EE08F330 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  v20 = v41;
  if (!NFInternalBuild() || v20 == -1)
  {
    v20 = [v40 subscriptionsPlacardGlobalMaximumPerDay];
  }

  if (qword_1EE08F348 != -1)
  {
    swift_once();
  }

  sub_1D78B3574();
  v21 = v41;
  if (!NFInternalBuild() || v21 == -1)
  {
    [objc_opt_self() fc_timeIntervalOneDay];
  }

  else
  {
    v22 = v21;
  }

  v23 = v37;
  if (v22 < v19)
  {
    if ((v39 & 1) == 0)
    {
      sub_1D78B32E4();
      sub_1D77B6BAC(&qword_1EE08E990, v24, type metadata accessor for AlacarteArticleSoftPaywallMeter, &unk_1D78BFD88);
      sub_1D78B3724();
      v23(v8, v3);
      v41 = 0;
      sub_1D78B3724();
      swift_unknownObjectRelease();
      v23(v11, v3);
      return 1;
    }

    goto LABEL_18;
  }

  v25 = v38;
  if (v38 < v20)
  {
LABEL_18:
    v37(v11, v3);
    goto LABEL_19;
  }

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v39 = qword_1EE09C268;
  sub_1D775B688(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D78BCB50;
  v41 = v25;
  v28 = sub_1D78B66E4();
  v30 = v29;
  v31 = MEMORY[0x1E69E6158];
  *(v27 + 56) = MEMORY[0x1E69E6158];
  v32 = sub_1D775ABD4();
  *(v27 + 64) = v32;
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  v41 = v20;
  v33 = sub_1D78B66E4();
  *(v27 + 96) = v31;
  *(v27 + 104) = v32;
  *(v27 + 72) = v33;
  *(v27 + 80) = v34;
  v35 = sub_1D78B60A4();
  sub_1D78B42C4("Exceeded the maximum allowed soft paywall per day for paywallShownCount=%{public}@ ,maximumAllowedPerDay=%{public}@", 115, 2, &dword_1D7739000, v39, v35, v27);
  swift_unknownObjectRelease();

  v37(v11, v3);
  return 0;
}

void *sub_1D77B6810(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for PaywallShownEntry(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D78B3394();
  v13 = *(v12 - 8);
  result = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    sub_1D78B3384();
    v20 = sub_1D77B6BAC(&qword_1EE08E990, v18, type metadata accessor for AlacarteArticleSoftPaywallMeter, &unk_1D78BFD88);
    sub_1D78B3724();
    (*(v13 + 8))(v17, v12);
    sub_1D78B3384();
    __swift_project_boxed_opaque_existential_1((v4 + 40), *(v4 + 64));
    sub_1D782A6B0(a1, a2, v11);
    sub_1D77B6BAC(qword_1EE08E998, v19, type metadata accessor for AlacarteArticleSoftPaywallMeter, &unk_1D78BFD48);
    result = sub_1D78B3574();
    if (__OFADD__(v21, 1))
    {
      __break(1u);
    }

    else
    {
      ++v21;
      sub_1D78B3724();
      return sub_1D77B6B50(v11);
    }
  }

  return result;
}

uint64_t sub_1D77B6A60(uint64_t a1)
{
  sub_1D775B688(0, &qword_1EE094430, type metadata accessor for PaywallShownEntry, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D77B6AEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaywallShownEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D77B6B50(uint64_t a1)
{
  v2 = type metadata accessor for PaywallShownEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D77B6BAC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t get_enum_tag_for_layout_string_16NewsSubscription0B4TypeO(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1D77B6CA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D77B6CEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1D77B6D30(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_16NewsSubscription23ConfigurableOfferConfigVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_16NewsSubscription18InAppPurchaseErrorO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1D77B6DC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF2 && *(a1 + 168))
  {
    return (*a1 + 2147483635);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 12;
  if (v4 >= 0xE)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D77B6E1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF3)
  {
    *(result + 160) = 0;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483635;
    if (a3 >= 0x7FFFFFF3)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF3)
    {
      *(result + 168) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 12;
    }
  }

  return result;
}

double sub_1D77B6E84(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 32) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D77B6EF4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  sub_1D77B9AA8(v0 + OBJC_IVAR____TtC16NewsSubscription15PurchaseStarter_purchaseContext);

  return swift_deallocClassInstance();
}

uint64_t sub_1D77B6F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for PurchaseContext(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v14 = &v67[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D773F0BC(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v67[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v5 + 96))
  {
    sub_1D7781E64(&v74);
    sub_1D7781E98();
    swift_allocError();
    v20 = v75;
    v19 = v76;
    *v21 = v74;
    *(v21 + 16) = v20;
    *(v21 + 32) = v19;
    v22 = v80;
    v24 = v77;
    v23 = v78;
    *(v21 + 80) = v79;
    *(v21 + 96) = v22;
    *(v21 + 48) = v24;
    *(v21 + 64) = v23;
    v26 = v82;
    v25 = v83;
    v27 = v81;
    *(v21 + 160) = v84;
    *(v21 + 128) = v26;
    *(v21 + 144) = v25;
    *(v21 + 112) = v27;
    sub_1D77B899C(0, &qword_1EC9CA0F0, &qword_1EE08FC70, 0x1E69B5220, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B40F4();
  }

  v69 = a4;
  v72 = *a1;
  v29 = *(a1 + 8);
  sub_1D77B899C(0, &qword_1EC9CA0E8, &qword_1EE08FC70, 0x1E69B5220, MEMORY[0x1E69D6568]);
  swift_allocObject();
  v30 = sub_1D78B3B74();
  *(v5 + 96) = v30;
  v73 = v30;

  v71 = a2;
  sub_1D7770378(a2, v18);
  v70 = v11;
  v31 = *(v11 + 56);
  v31(v18, 0, 1, v10);
  v32 = OBJC_IVAR____TtC16NewsSubscription15PurchaseStarter_purchaseContext;
  swift_beginAccess();
  sub_1D7781D38(v18, v5 + v32);
  v33 = swift_endAccess();
  if (v29 > 2)
  {
    if (v29 != 3)
    {
      sub_1D78B41F4();
      v60 = v71;
      sub_1D7770378(v71, &v67[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      v61 = (*(v70 + 80) + 24) & ~*(v70 + 80);
      v62 = swift_allocObject();
      *(v62 + 16) = v5;
      sub_1D777044C(&v67[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v62 + v61);

      v63 = sub_1D78B4014();
      sub_1D773F004(0, &qword_1EE08FF20, 0x1E69B54D0);
      sub_1D78B4084();

      sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
      v64 = sub_1D78B6104();
      v65 = swift_allocObject();
      swift_weakInit();
      sub_1D7770378(v60, &v67[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      v66 = swift_allocObject();
      *(v66 + 16) = v65;
      sub_1D777044C(v14, v66 + v61);
      sub_1D78B4094();

      v40 = sub_1D78B6104();

      goto LABEL_11;
    }
  }

  else if (v29 >= 2)
  {
    MEMORY[0x1EEE9AC00](v33, v34);
    v35 = v71;
    *&v67[-32] = v5;
    *&v67[-24] = v35;
    *&v67[-16] = v72;
    sub_1D773F004(0, &qword_1EE08FF20, 0x1E69B54D0);
    sub_1D78B41F4();
    sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
    v36 = sub_1D78B6104();
    v37 = swift_allocObject();
    swift_weakInit();
    sub_1D7770378(v35, &v67[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v38 = (*(v70 + 80) + 24) & ~*(v70 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v37;
    sub_1D777044C(v14, v39 + v38);
    sub_1D78B4094();

    v40 = sub_1D78B6104();

LABEL_11:
    sub_1D78B40D4();

    goto LABEL_12;
  }

  v41 = v72;
  if (!v72)
  {
    *(v5 + 96) = 0;

    v31(v18, 1, 1, v10);
    swift_beginAccess();
    sub_1D7781D38(v18, v5 + v32);
    swift_endAccess();
    sub_1D77B8968(&v74);
    sub_1D7781E98();
    swift_allocError();
    v51 = v75;
    v50 = v76;
    *v52 = v74;
    *(v52 + 16) = v51;
    *(v52 + 32) = v50;
    v53 = v80;
    v55 = v77;
    v54 = v78;
    *(v52 + 80) = v79;
    *(v52 + 96) = v53;
    *(v52 + 48) = v55;
    *(v52 + 64) = v54;
    v57 = v82;
    v56 = v83;
    v58 = v81;
    *(v52 + 160) = v84;
    *(v52 + 128) = v57;
    *(v52 + 144) = v56;
    *(v52 + 112) = v58;
    sub_1D77B899C(0, &qword_1EC9CA0F0, &qword_1EE08FC70, 0x1E69B5220, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v59 = sub_1D78B40F4();
LABEL_14:

    return v59;
  }

  MEMORY[0x1EEE9AC00](v33, v34);
  *&v67[-48] = v5;
  *&v67[-40] = v41;
  v42 = v71;
  *&v67[-32] = v71;
  *&v67[-24] = a3;
  *&v67[-16] = v69;
  v68 = v43;
  sub_1D7782048(v41, v43);
  sub_1D78B41F4();
  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  v44 = sub_1D78B6104();
  sub_1D7770378(v42, &v67[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v45 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v46 = swift_allocObject();
  sub_1D777044C(v14, v46 + v45);
  *(v46 + ((v12 + v45 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1D77B8A88;
  *(v47 + 24) = v46;

  sub_1D78B4094();

  v48 = sub_1D78B6104();

  sub_1D78B40D4();

  sub_1D7781F70(v41, v68);
LABEL_12:
  result = MEMORY[0x1DA700DF0](v49);
  if (result)
  {
    v59 = result;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D77B78E4(uint64_t a1)
{
  sub_1D77505D0();
  swift_allocObject();
  return sub_1D78B4174();
}

uint64_t sub_1D77B7944(_BYTE *a1, uint64_t a2)
{
  if (*a1)
  {
    sub_1D7782764(v12);
    sub_1D7781E98();
    swift_allocError();
    v2 = v12[2];
    v3 = v12[1];
    *v4 = v12[0];
    *(v4 + 16) = v3;
    *(v4 + 32) = v2;
    v5 = v12[6];
    v6 = v12[4];
    v7 = v12[3];
    *(v4 + 80) = v12[5];
    *(v4 + 96) = v5;
    *(v4 + 48) = v7;
    *(v4 + 64) = v6;
    v8 = v12[9];
    v9 = v12[8];
    v10 = v12[7];
    *(v4 + 160) = v13;
    *(v4 + 128) = v9;
    *(v4 + 144) = v8;
    *(v4 + 112) = v10;
    return swift_willThrow();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    sub_1D77B899C(0, &qword_1EE095230, &qword_1EE08FF20, 0x1E69B54D0, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4174();
  }
}

void sub_1D77B7A8C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 24);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v7 + 72))(v5, a3, ObjectType, v7);
    if (!v3)
    {
      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
    v9 = sub_1D78B31B4();
    v10 = [v9 code];

    if (*MEMORY[0x1E69B5058] == v10)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1D7781E64(v22);
LABEL_10:
        sub_1D7781E98();
        v11 = swift_allocError();
        v12 = v22[2];
        v13 = v22[1];
        *v14 = v22[0];
        *(v14 + 16) = v13;
        *(v14 + 32) = v12;
        v15 = v22[6];
        v16 = v22[4];
        v17 = v22[3];
        *(v14 + 80) = v22[5];
        *(v14 + 96) = v15;
        *(v14 + 48) = v17;
        *(v14 + 64) = v16;
        v18 = v22[9];
        v19 = v22[8];
        v20 = v22[7];
        *(v14 + 160) = v23;
        *(v14 + 128) = v19;
        *(v14 + 144) = v18;
        *(v14 + 112) = v20;
        sub_1D77B7CC8(v11);

        v21 = v11;
LABEL_13:

        return;
      }
    }

    else if (*MEMORY[0x1E69B50C8] == v10)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1D77B8EAC(v22);
        goto LABEL_10;
      }
    }

    else
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1D77B7CC8(v3);
        v21 = v3;
        goto LABEL_13;
      }
    }
  }
}

uint64_t sub_1D77B7CC8(uint64_t a1)
{
  v2 = v1;
  sub_1D773F0BC(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 96))
  {

    sub_1D78B3B44();
  }

  *(v1 + 96) = 0;

  v7 = type metadata accessor for PurchaseContext(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC16NewsSubscription15PurchaseStarter_purchaseContext;
  swift_beginAccess();
  sub_1D7781D38(v6, v2 + v8);
  return swift_endAccess();
}

uint64_t sub_1D77B7DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D77B899C(0, &qword_1EE095230, &qword_1EE08FF20, 0x1E69B54D0, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

void sub_1D77B7E7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 24);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v7 + 64))(v5, a3, ObjectType, v7);
    if (!v3)
    {
      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
    v9 = sub_1D78B31B4();
    v10 = [v9 code];

    if (*MEMORY[0x1E69B5058] == v10)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1D7781E64(v22);
LABEL_10:
        sub_1D7781E98();
        v11 = swift_allocError();
        v12 = v22[2];
        v13 = v22[1];
        *v14 = v22[0];
        *(v14 + 16) = v13;
        *(v14 + 32) = v12;
        v15 = v22[6];
        v16 = v22[4];
        v17 = v22[3];
        *(v14 + 80) = v22[5];
        *(v14 + 96) = v15;
        *(v14 + 48) = v17;
        *(v14 + 64) = v16;
        v18 = v22[9];
        v19 = v22[8];
        v20 = v22[7];
        *(v14 + 160) = v23;
        *(v14 + 128) = v19;
        *(v14 + 144) = v18;
        *(v14 + 112) = v20;
        sub_1D77B7CC8(v11);

        v21 = v11;
LABEL_13:

        return;
      }
    }

    else if (*MEMORY[0x1E69B50C8] == v10)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1D77B8EAC(v22);
        goto LABEL_10;
      }
    }

    else
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1D77B7CC8(v3);
        v21 = v3;
        goto LABEL_13;
      }
    }
  }
}

uint64_t sub_1D77B80B8(uint64_t a1, uint64_t a2)
{
  sub_1D773F0BC(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 96))
  {

    sub_1D78B3B44();
  }

  *(a2 + 96) = 0;

  v7 = type metadata accessor for PurchaseContext(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC16NewsSubscription15PurchaseStarter_purchaseContext;
  swift_beginAccess();
  sub_1D7781D38(v6, a2 + v8);
  return swift_endAccess();
}

void sub_1D77B81D8(uint64_t *a1)
{
  v1 = objc_allocWithZone(MEMORY[0x1E69B5220]);
  v2 = sub_1D78B5C44();
  v3 = sub_1D78B5C44();
  v4 = [v1 initWithProductID:v2 receipt:v3 appleIDAccountDetails:0];

  sub_1D77B8280(v4);
}

uint64_t sub_1D77B8280(uint64_t a1)
{
  v2 = v1;
  sub_1D773F0BC(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 96))
  {
    v11[1] = a1;

    sub_1D78B3B64();
  }

  *(v2 + 96) = 0;

  v8 = type metadata accessor for PurchaseContext(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC16NewsSubscription15PurchaseStarter_purchaseContext;
  swift_beginAccess();
  sub_1D7781D38(v7, v2 + v9);
  return swift_endAccess();
}

void sub_1D77B83A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 32);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D77AE39C;
  *(v10 + 24) = v8;
  v12[4] = sub_1D77B991C;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D7781488;
  v12[3] = &block_descriptor_6;
  v11 = _Block_copy(v12);

  [v9 refreshBundleSubscriptionWithCachePolicy:0 completion:v11];
  _Block_release(v11);
}

void sub_1D77B84E0(void *a1)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE09C268;
  v3 = sub_1D78B60A4();
  sub_1D78B42C4("PurchaseStarter received purchaseDidFail callback", 49, 2, &dword_1D7739000, v2, v3, MEMORY[0x1E69E7CC0]);
  v4 = sub_1D78B31B4();
  v5 = [v4 code];

  if (*MEMORY[0x1E69B4F88] == v5)
  {
    sub_1D7782764(&v27);
    sub_1D7781E98();
    v6 = swift_allocError();
    v8 = v28;
    v7 = v29;
    *v9 = v27;
    *(v9 + 16) = v8;
    *(v9 + 32) = v7;
    v10 = v33;
    v12 = v30;
    v11 = v31;
    *(v9 + 80) = v32;
    *(v9 + 96) = v10;
    *(v9 + 48) = v12;
    *(v9 + 64) = v11;
    v14 = v35;
    v13 = v36;
    v15 = v34;
    *(v9 + 160) = v37;
    *(v9 + 128) = v14;
    *(v9 + 144) = v13;
    *(v9 + 112) = v15;
    sub_1D77B7CC8(v6);

    return;
  }

  *&v27 = a1;
  v16 = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  type metadata accessor for SKError(0);
  if (swift_dynamicCast())
  {
    *&v27 = v38;
    sub_1D77B9A1C();
    sub_1D78B3184();
    if (v38 == 2)
    {
      sub_1D77B9A74(&v27);
      sub_1D7781E98();
      v17 = swift_allocError();
      v19 = v28;
      v18 = v29;
      *v20 = v27;
      *(v20 + 16) = v19;
      *(v20 + 32) = v18;
      v21 = v33;
      v23 = v30;
      v22 = v31;
      *(v20 + 80) = v32;
      *(v20 + 96) = v21;
      *(v20 + 48) = v23;
      *(v20 + 64) = v22;
      v25 = v35;
      v24 = v36;
      v26 = v34;
      *(v20 + 160) = v37;
      *(v20 + 128) = v25;
      *(v20 + 144) = v24;
      *(v20 + 112) = v26;
      sub_1D77B7CC8(v17);

      return;
    }
  }

  sub_1D77B7CC8(a1);
}

uint64_t sub_1D77B872C(uint64_t a1)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE09C268;
  v3 = sub_1D78B60A4();
  sub_1D78B42C4("PurchaseStarter received purchaseDidSucceed callback", 52, 2, &dword_1D7739000, v2, v3, MEMORY[0x1E69E7CC0]);

  return sub_1D77B8280(a1);
}

uint64_t sub_1D77B87D4()
{
  v1 = v0 + OBJC_IVAR____TtC16NewsSubscription15PurchaseStarter_purchaseContext;
  swift_beginAccess();
  v2 = type metadata accessor for PurchaseContext(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2))
  {
    return 0;
  }

  v3 = *(v1 + 40);

  return v3;
}

uint64_t sub_1D77B8878()
{
  v1 = v0 + OBJC_IVAR____TtC16NewsSubscription15PurchaseStarter_purchaseContext;
  swift_beginAccess();
  v2 = type metadata accessor for PurchaseContext(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2))
  {
    return 0;
  }

  v3 = *(v1 + 24);

  return v3;
}

double sub_1D77B8968(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 6;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

void sub_1D77B899C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D773F004(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D77B8A04()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v6 + 80))(v2, v3, v4, v5, ObjectType, v6);
}

void sub_1D77B8A88()
{
  v1 = *(type metadata accessor for PurchaseContext(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_1D77B81D8(v2);
}

uint64_t objectdestroy_11Tm()
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