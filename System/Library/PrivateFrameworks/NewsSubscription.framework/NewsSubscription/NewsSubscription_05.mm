double sub_1D77B8EAC(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 3;
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

void sub_1D77B8EE0(void (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 48);
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 8);

  v14 = v13(ObjectType, v11);
  if (v14)
  {
    v28 = v14;
    v15 = [v14 purchaseID];
    v16 = sub_1D78B5C74();
    v18 = v17;

    if (v16 == *a6 && v18 == a6[1])
    {

      goto LABEL_9;
    }

    v20 = sub_1D78B6724();

    if (v20)
    {

LABEL_9:
      v29 = v28;
      a1(&v29);
      goto LABEL_12;
    }
  }

  v21 = *(a5 + 24);
  v22 = swift_getObjectType();
  sub_1D775F820(*a6, a6[1], v22, v21);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1D775C1FC;
  *(v23 + 24) = v10;
  v24 = sub_1D78B4014();
  sub_1D78B4094();

  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;

  v28 = sub_1D78B4014();
  sub_1D78B40D4();

LABEL_12:
}

void *sub_1D77B919C(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
  v5 = sub_1D7832AFC(*(a3 + 40), *(a3 + 48));
  if (v5)
  {
    v6 = v5;
    if ([v5 isEnabled])
    {
      v7 = [objc_opt_self() sharedInstance];
      v8 = [v7 primaryAuthKitAccount];
      if (v8)
      {
        v9 = v8;
        v10 = [v7 securityLevelForAccount_];

        if (v10 == 4)
        {
          if (qword_1EE08FB98 != -1)
          {
            swift_once();
          }

          v11 = qword_1EE09C268;
          v12 = sub_1D78B60A4();
          v13 = [v6 clientIdentifier];
          if (!v13)
          {
            sub_1D78B5C74();
            v13 = sub_1D78B5C44();
          }

          v14 = [v6 teamIdentifier];
          if (!v14)
          {
            sub_1D78B5C74();
            v14 = sub_1D78B5C44();
          }

          v15 = [objc_allocWithZone(MEMORY[0x1E697BA78]) initWithClientIdentifier:v13 teamIdentifier:v14];

          v16 = sub_1D78B5C44();
          [v15 setServiceIdentifier_];

          v17 = [a1 payment];
          [v17 setAppleIDAuthorizationClientInfo_];

          v18 = a1;
          return a1;
        }
      }

      else
      {
      }

      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      v24 = qword_1EE09C268;
      v25 = sub_1D78B60A4();
      sub_1D78B42C4("User is not eligible for SIWA.", 30, 2, &dword_1D7739000, v24, v25, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      v22 = qword_1EE09C268;
      v23 = sub_1D78B60A4();
      sub_1D78B42C4("SIWA purchase flow configured to be disabled for this channel.", 62, 2, &dword_1D7739000, v22, v23, MEMORY[0x1E69E7CC0]);
    }

    v26 = a1;

    return a1;
  }

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v19 = qword_1EE09C268;
  v20 = sub_1D78B60A4();
  sub_1D78B42C4("SIWA purchase flow not configured for this channel.", 51, 2, &dword_1D7739000, v19, v20, MEMORY[0x1E69E7CC0]);
  v21 = a1;
  return a1;
}

void sub_1D77B9534(void (*a1)(void **), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t *a7)
{
  v14 = type metadata accessor for PurchaseContext(0);
  v32 = *(v14 - 8);
  v15 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  if (a5)
  {

    v18 = a5;

    v19 = sub_1D77B919C(v18, a6, a7);
    v33 = v19;
    a1(&v33);
  }

  else
  {
    v29 = *(a6 + 24);
    v30 = a3;
    v31 = a4;
    ObjectType = swift_getObjectType();
    v22 = *a7;
    v21 = a7[1];

    sub_1D775F820(v22, v21, ObjectType, v29);
    sub_1D7770378(a7, &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = (*(v32 + 80) + 40) & ~*(v32 + 80);
    v24 = swift_allocObject();
    v24[2] = sub_1D77B9B08;
    v24[3] = v17;
    v24[4] = a6;
    sub_1D777044C(&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);

    v25 = sub_1D78B4014();
    sub_1D78B4094();

    v26 = swift_allocObject();
    *(v26 + 16) = v30;
    *(v26 + 24) = v31;

    v27 = sub_1D78B4014();
    sub_1D78B40D4();
  }
}

uint64_t sub_1D77B97C0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, const char *a4, uint64_t a5, ...)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE09C268;
  v10 = sub_1D78B6094();
  sub_1D774FE1C(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D78BCAB0;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  sub_1D78B6504();
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1D775ABD4();
  *(v11 + 32) = 0;
  *(v11 + 40) = 0xE000000000000000;
  sub_1D78B42C4(a4, a5, 2, &dword_1D7739000, v9, v10, v11);

  return a2(a1);
}

void sub_1D77B995C(void **a1)
{
  v3 = *(type metadata accessor for PurchaseContext(0) - 8);
  v4 = *(v1 + 16);
  v5 = sub_1D77B919C(*a1, *(v1 + 32), v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80)));
  v4();
}

unint64_t sub_1D77B9A1C()
{
  result = qword_1EC9C91E0;
  if (!qword_1EC9C91E0)
  {
    type metadata accessor for SKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C91E0);
  }

  return result;
}

double sub_1D77B9A74(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 12;
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

uint64_t sub_1D77B9AA8(uint64_t a1)
{
  sub_1D773F0BC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D77B9B0C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1D78B5C74();
  }

  sub_1D774819C();
  result = sub_1D78B6294();
  qword_1EE09C260 = result;
  return result;
}

uint64_t sub_1D77B9BDC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1D78B5C74();
  }

  sub_1D774819C();
  result = sub_1D78B6294();
  qword_1EC9D9DF0 = result;
  return result;
}

uint64_t sub_1D77B9CA4()
{
  v0 = sub_1D78B4304();
  __swift_allocate_value_buffer(v0, qword_1EC9D9E00);
  __swift_project_value_buffer(v0, qword_1EC9D9E00);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1D78B5C74();
  }

  return sub_1D78B42F4();
}

uint64_t sub_1D77B9D94()
{
  v0 = sub_1D78B4304();
  __swift_allocate_value_buffer(v0, qword_1EE09C1F0);
  __swift_project_value_buffer(v0, qword_1EE09C1F0);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1D78B5C74();
  }

  return sub_1D78B42F4();
}

uint64_t sub_1D77B9E88()
{
  v0 = sub_1D78B4304();
  __swift_allocate_value_buffer(v0, qword_1EE09C270);
  __swift_project_value_buffer(v0, qword_1EE09C270);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1D78B5C74();
  }

  return sub_1D78B42F4();
}

id sub_1D77B9F78(char a1)
{
  v3 = *(v1 + 64);
  if (a1)
  {
    v4 = [v3 primaryColor];
    v5 = sub_1D77BAD38(v4);

    result = v5;
    if (v5)
    {
      return result;
    }

    v7 = [objc_opt_self() systemBlueColor];
    return v7;
  }

  v8 = [v3 secondaryColor];
  v9 = sub_1D77BAD38(v8);

  if (!v9 || (v10 = [v9 colorWithAlphaComponent_], v9, (result = v10) == 0))
  {
    v7 = [objc_opt_self() lightGrayColor];
    return v7;
  }

  return result;
}

id sub_1D77BA068(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  if (v3)
  {
    v4 = [v3 headlineTitleTextInfo];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 font];

      if (v6)
      {
        v7 = [v6 fontName];

        if (v7)
        {
          sub_1D78B5C74();
        }
      }
    }
  }

  v8 = sub_1D773F004(0, &qword_1EE08FC10, 0x1E69DB878);
  v9 = sub_1D78B61A4();

  sub_1D778AF9C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BF690;
  v11 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v12 = MEMORY[0x1E69DB688];
  *(inited + 40) = v9;
  v13 = *v12;
  *(inited + 64) = v8;
  *(inited + 72) = v13;
  v14 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v15 = v11;
  v16 = v9;
  v17 = v13;
  v18 = [v14 init];
  [v18 setAlignment_];
  v19 = sub_1D773F004(0, &qword_1EC9CA0F8, 0x1E69DB7D0);
  *(inited + 80) = v18;
  v20 = *MEMORY[0x1E69DB650];
  *(inited + 104) = v19;
  *(inited + 112) = v20;
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 labelColor];
  *(inited + 144) = sub_1D773F004(0, &qword_1EE08FC00, 0x1E69DC888);
  *(inited + 120) = v23;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4(0);
  swift_arrayDestroy();
  v24 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v25 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v26 = sub_1D78B5BB4();

  v27 = [v24 initWithString:v25 attributes:v26];

  return v27;
}

id sub_1D77BA33C(uint64_t a1)
{
  v1 = [*(a1 + 64) primaryColor];
  v2 = sub_1D77BAD38(v1);

  if (v2)
  {
    v3 = objc_opt_self();
    v4 = [v3 whiteColor];
    v5 = [v2 _isSimilarToColor_withinPercentage_];

    if (v5)
    {
      v6 = [v3 blackColor];
    }

    else
    {
      v6 = [v3 whiteColor];
    }

    v9 = v6;

    return v9;
  }

  else
  {
    v7 = [objc_opt_self() whiteColor];

    return v7;
  }
}

id sub_1D77BA458()
{
  v1 = *(v0 + 64);
  v2 = [v1 policyText];
  v3 = [v2 text];

  if (!v3)
  {
    sub_1D78B5C74();
    v3 = sub_1D78B5C44();
  }

  sub_1D778AF9C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BF690;
  v5 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v6 = sub_1D773F004(0, &qword_1EE08FC10, 0x1E69DB878);
  v7 = v5;
  v8 = sub_1D78B61B4();
  v9 = MEMORY[0x1E69DB688];
  *(inited + 40) = v8;
  v10 = *v9;
  *(inited + 64) = v6;
  *(inited + 72) = v10;
  v11 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v12 = v10;
  v13 = [v11 init];
  [v13 setAlignment_];
  v14 = sub_1D773F004(0, &qword_1EC9CA0F8, 0x1E69DB7D0);
  *(inited + 80) = v13;
  v15 = *MEMORY[0x1E69DB650];
  *(inited + 104) = v14;
  *(inited + 112) = v15;
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 secondaryLabelColor];
  *(inited + 144) = sub_1D773F004(0, &qword_1EE08FC00, 0x1E69DC888);
  *(inited + 120) = v18;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4(0);
  swift_arrayDestroy();
  v19 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  type metadata accessor for Key(0);
  sub_1D778B060();
  v20 = sub_1D78B5BB4();

  v45 = [v19 initWithString:v3 attributes:v20];

  v21 = [v1 policyText];
  v22 = [v21 links];

  if (v22)
  {
    sub_1D773F004(0, &unk_1EC9CA100, 0x1E69B5228);
    v23 = sub_1D78B5EB4();

    v46 = v23;
    if (v23 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D78B6534())
    {
      v25 = 0;
      v26 = v46 & 0xC000000000000001;
      v44 = *MEMORY[0x1E69DB670];
      v27 = &selRef_isUserSignedIntoiTunes;
      while (1)
      {
        if (v26)
        {
          v28 = MEMORY[0x1DA703700](v25, v46);
        }

        else
        {
          if (v25 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v28 = *(v46 + 8 * v25 + 32);
        }

        v29 = v28;
        v30 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (([v28 v27[86]] & 0x8000000000000000) == 0 && (objc_msgSend(v29, sel_rangeLength) & 0x8000000000000000) == 0)
        {
          v31 = v26;
          v32 = [v29 v27[86]];
          v33 = [v29 rangeLength];
          v34 = &v33[v32];
          if (__OFADD__(v32, v33))
          {
            goto LABEL_23;
          }

          v35 = [v45 string];
          sub_1D78B5C74();
          v36 = v27;
          v37 = i;

          v38 = sub_1D78B5D34();

          v39 = v34 < v38;
          v26 = v31;
          if (v39)
          {
            v40 = [v29 v27 + 107];
            v41 = [v29 rangeLength];
            v42 = [v29 url];
            if (!v42)
            {
              sub_1D78B5C74();
              v42 = sub_1D78B5C44();
              v26 = v31;
            }

            [v45 addAttribute:v44 value:v42 range:{v40, v41, v44}];

            v27 = v36;
            i = v37;
          }
        }

        ++v25;
        if (v30 == i)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_25:
  }

  return v45;
}

void sub_1D77BA950(void *a1)
{
  sub_1D778AF9C(0);
  inited = swift_initStackObject();
  v4 = MEMORY[0x1E69DB650];
  *(inited + 16) = xmmword_1D78BCAB0;
  v5 = *v4;
  *(inited + 32) = v5;
  v6 = *(v1 + 64);
  v7 = v5;
  v8 = [v6 primaryColor];
  v9 = sub_1D77BAD38(v8);

  *(inited + 64) = sub_1D773F004(0, &qword_1EE08FC00, 0x1E69DC888);
  if (!v9)
  {
    v9 = [objc_opt_self() systemBlueColor];
  }

  *(inited + 40) = v9;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D77BAEDC(inited + 32);
  type metadata accessor for Key(0);
  sub_1D778B060();
  v10 = sub_1D78B5BB4();

  [a1 setLinkTextAttributes_];
}

void sub_1D77BAAA0(void *a1, char a2)
{
  v5 = [a1 layer];
  [v5 setCornerRadius_];

  v6 = [a1 layer];
  [v6 setCornerCurve_];

  v7 = objc_opt_self();
  v8 = [v7 whiteColor];
  [a1 setTitleColor:v8 forState:0];

  [a1 setEnabled_];
  if (a2)
  {
    v9 = [*(v2 + 64) primaryColor];
    v11 = sub_1D77BAD38(v9);

    if (!v11)
    {
      v11 = [v7 systemBlueColor];
      [a1 setBackgroundColor_];
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D773F004(0, &qword_1EE08FC00, 0x1E69DC888);
    v10 = sub_1D78B61F4();
    v11 = [v10 colorWithAlphaComponent_];
  }

  [a1 setBackgroundColor_];
LABEL_6:
}

uint64_t sub_1D77BAC64()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1D77BACD0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_1D77BAD38(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 lightColor];
  v3 = [v2 ne_color];

  v4 = [a1 darkColor];
  v5 = [v4 ne_color];

  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  v7 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v11[4] = sub_1D77BAE98;
  v11[5] = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D77BACD0;
  v11[3] = &block_descriptor_7;
  v8 = _Block_copy(v11);
  v9 = [v7 initWithDynamicProvider_];
  _Block_release(v8);

  return v9;
}

id sub_1D77BAE98(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if ([a1 userInterfaceStyle] == 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

uint64_t sub_1D77BAEDC(uint64_t a1)
{
  sub_1D778AFF4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D77BAF68@<X0>(uint64_t *a1@<X8>)
{
  sub_1D78B3F24();
  sub_1D77BD0A8(0);
  swift_allocObject();
  result = sub_1D78B4394();
  *a1 = result;
  return result;
}

void sub_1D77BAFF8(uint64_t a1)
{
  sub_1D7748F58(0, &qword_1EE0904C8, sub_1D77BD124, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v12 - v3;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D78B3F24();
    sub_1D78B43A4();

    sub_1D77BD124(0);
    v6 = v5;
    v7 = *(v5 - 8);
    if ((*(v7 + 48))(v4, 1, v5) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1D78B4384();
      (*(v7 + 8))(v4, v6);
      v8 = sub_1D78B4014();
      sub_1D77BD4B8(0, &qword_1EE090010, MEMORY[0x1E69E62F8]);
      sub_1D78B4084();

      v9 = sub_1D78B4014();
      sub_1D77BD23C(0);
      type metadata accessor for PurchaseContextEntriesManager();
      sub_1D78B40A4();

      v10 = sub_1D78B4014();
      sub_1D78B40B4();

      v11 = sub_1D78B4014();
      sub_1D78B40D4();
    }
  }
}

uint64_t sub_1D77BB2B8(uint64_t *a1)
{
  sub_1D77BD438(0);
  swift_allocObject();

  return sub_1D78B4104();
}

uint64_t sub_1D77BB318(uint64_t *a1)
{
  sub_1D7748F58(0, &qword_1EE0904C8, sub_1D77BD124, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v10 - v3;
  sub_1D78B3F24();
  sub_1D78B43A4();

  sub_1D77BD124(0);
  v6 = v5;
  v7 = *(v5 - 8);
  result = (*(v7 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_1D78B4354();
    (*(v7 + 8))(v4, v6);
    return v9;
  }

  return result;
}

uint64_t sub_1D77BB488(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseContext(0);
  v74 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77BD2A4(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v76 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v75 = &v67 - v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = (&v67 - v18);
  sub_1D7748F58(0, &unk_1EE08FF50, sub_1D77BD2A4, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = (&v67 - v22);
  v24 = *a1;

  sub_1D78B3854();

  v25 = -1 << *(v24 + 32);
  v26 = *(v24 + 64);
  v27 = ~v25;
  v28 = -v25;
  v77 = v24;
  v78 = v24 + 64;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v79 = v27;
  v80 = 0;
  v81 = v29 & v26;
  v82 = 0;

  sub_1D7828788(v23);
  v72 = *(v10 + 48);
  v73 = v10 + 48;
  if (v72(v23, 1, v9) == 1)
  {
LABEL_5:
    sub_1D779D528(v77);

    sub_1D78B3864();
  }

  sub_1D77BD2D4(0);
  v32 = v31;
  v70 = v19;
  v71 = v9;
  v68 = v31;
  v69 = v23;
  while (1)
  {
    v35 = *(v9 + 48);
    v36 = v23 + v35;
    v37 = *(v23 + v35);
    v38 = *(v23 + v35 + 8);
    v39 = *(v32 + 48);
    v40 = (v19 + v35);
    *v19 = *v23;
    *v40 = v37;
    v40[1] = v38;
    sub_1D777044C(&v36[v39], v40 + v39);
    v41 = v75;
    sub_1D77BD50C(v19, v75, sub_1D77BD2A4);
    v42 = (v41 + *(v9 + 48));
    v43 = v32;
    v45 = *v42;
    v44 = v42[1];
    v46 = v19;
    v47 = v76;
    sub_1D77BD50C(v46, v76, sub_1D77BD2A4);
    v48 = v47 + *(v9 + 48);

    v49 = *(v43 + 48);
    swift_beginAccess();
    v50 = a2;
    v51 = v7;
    sub_1D777044C(v48 + v49, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = *(v50 + 24);
    v53 = v83;
    v54 = v50;
    *(v50 + 24) = 0x8000000000000000;
    v56 = sub_1D777BBB4(v45, v44);
    v57 = v53[2];
    v58 = (v55 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      break;
    }

    v60 = v55;
    if (v53[3] >= v59)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v55)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_1D782F10C();
        if (v60)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      sub_1D782BCD8(v59, isUniquelyReferenced_nonNull_native);
      v61 = sub_1D777BBB4(v45, v44);
      if ((v60 & 1) != (v62 & 1))
      {
        goto LABEL_22;
      }

      v56 = v61;
      if (v60)
      {
LABEL_7:

        v33 = v83;
        v7 = v51;
        sub_1D77BD3D4(v51, v83[7] + *(v74 + 72) * v56);
        goto LABEL_8;
      }
    }

    v33 = v83;
    v83[(v56 >> 6) + 8] |= 1 << v56;
    v63 = (v33[6] + 16 * v56);
    *v63 = v45;
    v63[1] = v44;
    v7 = v51;
    sub_1D777044C(v51, v33[7] + *(v74 + 72) * v56);
    v64 = v33[2];
    v65 = __OFADD__(v64, 1);
    v66 = v64 + 1;
    if (v65)
    {
      goto LABEL_21;
    }

    v33[2] = v66;
LABEL_8:
    v32 = v68;
    v34 = *(v68 + 48);
    a2 = v54;
    *(v54 + 24) = v33;

    swift_endAccess();
    v19 = v70;
    sub_1D77BD374(v70, sub_1D77BD2A4);
    sub_1D77BD374(v42 + v34, type metadata accessor for PurchaseContext);
    v23 = v69;
    sub_1D7828788(v69);
    v9 = v71;
    if (v72(v23, 1, v71) == 1)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1D78B6784();
  __break(1u);
  return result;
}

uint64_t sub_1D77BB9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  sub_1D78B3854();

  swift_beginAccess();
  v7 = *(v3 + 24);
  if (*(v7 + 16) && (v8 = sub_1D777BBB4(a1, a2), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = type metadata accessor for PurchaseContext(0);
    v13 = *(v12 - 8);
    sub_1D77BD50C(v11 + *(v13 + 72) * v10, a3, type metadata accessor for PurchaseContext);
    (*(v13 + 56))(a3, 0, 1, v12);
  }

  else
  {
    v14 = type metadata accessor for PurchaseContext(0);
    (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
  }

  swift_endAccess();

  sub_1D78B3864();
}

uint64_t sub_1D77BBB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v40 = a1;
  v43 = sub_1D78B5254();
  v46 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v4);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D78B52A4();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PurchaseContext(0);
  v10 = *(v9 - 8);
  v39 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v37 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D78B5264();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7748F58(0, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v36 - v20;

  sub_1D78B3854();

  sub_1D77BD50C(a3, v21, type metadata accessor for PurchaseContext);
  (*(v10 + 56))(v21, 0, 1, v9);
  swift_beginAccess();
  v22 = v38;

  v23 = v21;
  v24 = v40;
  sub_1D7827DC0(v23, v40, v22);
  swift_endAccess();
  sub_1D7788448();
  (*(v14 + 104))(v17, *MEMORY[0x1E69E7F88], v13);
  v36 = sub_1D78B6134();
  (*(v14 + 8))(v17, v13);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = v37;
  sub_1D77BD50C(a3, v37, type metadata accessor for PurchaseContext);
  v27 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v28 = swift_allocObject();
  v28[2] = v25;
  v28[3] = v24;
  v28[4] = v22;
  sub_1D777044C(v26, v28 + v27);
  aBlock[4] = sub_1D77BD574;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_19_0;
  v29 = _Block_copy(aBlock);

  v30 = v41;
  sub_1D78B5274();
  v47 = MEMORY[0x1E69E7CC0];
  sub_1D7749084(&qword_1EE090300, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v31 = MEMORY[0x1E69E7F60];
  sub_1D7748F58(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D77415C8(&qword_1EE090030, &qword_1EE090040, v31);
  v33 = v42;
  v32 = v43;
  sub_1D78B6324();
  v34 = v36;
  MEMORY[0x1DA7033B0](0, v30, v33, v29);
  _Block_release(v29);

  (*(v46 + 8))(v33, v32);
  (*(v44 + 8))(v30, v45);

  sub_1D78B3864();
}

void sub_1D77BC148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7748F58(0, &qword_1EE0904C8, sub_1D77BD124, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v21 - v9;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D78B3F24();
    sub_1D78B43A4();

    sub_1D77BD124(0);
    v12 = v11;
    v13 = *(v11 - 8);
    if ((*(v13 + 48))(v10, 1, v11) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1D7748F58(0, &qword_1EC9CA110, sub_1D77BD5DC, MEMORY[0x1E69E6F90]);
      sub_1D77BD5DC(0);
      v15 = v14 - 8;
      v16 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1D78BCAB0;
      v18 = (v17 + v16);
      v19 = *(v15 + 56);
      *v18 = a2;
      v18[1] = a3;
      sub_1D77BD50C(a4, v18 + v19, type metadata accessor for PurchaseContext);

      sub_1D77FF0F0(v17);
      swift_setDeallocating();
      sub_1D77BD374(v18, sub_1D77BD5DC);
      swift_deallocClassInstance();
      sub_1D78B4364();

      (*(v13 + 8))(v10, v12);
      v20 = sub_1D78B4014();
      sub_1D78B40D4();
    }
  }
}

uint64_t sub_1D77BC460(uint64_t a1, const char *a2, uint64_t a3, ...)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE09C268;
  v6 = sub_1D78B6094();
  sub_1D774FE1C(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D78BCAB0;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  sub_1D78B6504();
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1D775ABD4();
  *(v7 + 32) = 0;
  *(v7 + 40) = 0xE000000000000000;
  sub_1D78B42C4(a2, a3, 2, &dword_1D7739000, v5, v6, v7);
}

uint64_t sub_1D77BC598(uint64_t a1, uint64_t a2)
{
  v28 = sub_1D78B5254();
  v31 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D78B52A4();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D78B5264();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7748F58(0, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v27 - v18;

  sub_1D78B3854();

  swift_beginAccess();
  sub_1D782B08C(a1, a2, v19);
  swift_endAccess();
  sub_1D77B9AA8(v19);
  sub_1D7788448();
  (*(v12 + 104))(v15, *MEMORY[0x1E69E7F88], v11);
  v20 = sub_1D78B6134();
  (*(v12 + 8))(v15, v11);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a1;
  v22[4] = a2;
  aBlock[4] = sub_1D77BD4AC;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_12;
  v23 = _Block_copy(aBlock);

  sub_1D78B5274();
  v32 = MEMORY[0x1E69E7CC0];
  sub_1D7749084(&qword_1EE090300, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v24 = MEMORY[0x1E69E7F60];
  sub_1D7748F58(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D77415C8(&qword_1EE090030, &qword_1EE090040, v24);
  v25 = v28;
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v10, v6, v23);
  _Block_release(v23);

  (*(v31 + 8))(v6, v25);
  (*(v29 + 8))(v10, v30);

  sub_1D78B3864();
}

void sub_1D77BCA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7748F58(0, &qword_1EE0904C8, sub_1D77BD124, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v14 - v7;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D78B3F24();
    sub_1D78B43A4();

    sub_1D77BD124(0);
    v10 = v9;
    v11 = *(v9 - 8);
    if ((*(v11 + 48))(v8, 1, v9) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1D77BD4B8(0, &qword_1EE08FA50, MEMORY[0x1E69E6F90]);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1D78BCAB0;
      *(v12 + 32) = a2;
      *(v12 + 40) = a3;

      sub_1D78B4374();

      (*(v11 + 8))(v8, v10);
      v13 = sub_1D78B4014();
      sub_1D78B40D4();
    }
  }
}

uint64_t sub_1D77BCC94()
{

  return swift_deallocClassInstance();
}

void *sub_1D77BCD10(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D78B3914();
  MEMORY[0x1EEE9AC00](v3, v4);
  v5 = sub_1D78B3884();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *(v1 + 24) = MEMORY[0x1E69E7CC8];
  sub_1D78B3874();
  sub_1D78B38A4();
  swift_allocObject();
  *(v1 + 32) = sub_1D78B3894();
  v7 = MEMORY[0x1E69D6420];
  sub_1D7748F58(0, &qword_1EE08FAB0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1D78BCAB0;
  sub_1D78B3904();
  sub_1D7749084(&qword_1EE095410, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  sub_1D7748F58(0, &unk_1EE0900C0, v7, MEMORY[0x1E69E62F8]);
  sub_1D77415C8(&qword_1EE0900B8, &unk_1EE0900C0, v7);
  sub_1D78B6324();
  sub_1D7748F58(0, &unk_1EE095330, sub_1D77BD0A8, MEMORY[0x1E69D6A80]);
  swift_allocObject();

  *(v2 + 16) = sub_1D78B3F34();
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1D77BD11C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_8;
  v10 = _Block_copy(aBlock);

  [v8 scheduleLowPriorityBlock_];
  _Block_release(v10);
  return v2;
}

unint64_t sub_1D77BD0C8()
{
  result = qword_1EE091660;
  if (!qword_1EE091660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE091660);
  }

  return result;
}

void sub_1D77BD144(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for PurchaseContextEntriesManager.StoreDescriptor;
    v8[1] = type metadata accessor for PurchaseContext(255);
    v8[2] = sub_1D77BD0C8();
    v8[3] = sub_1D7749084(&qword_1EE094648, type metadata accessor for PurchaseContext, &protocol conformance descriptor for PurchaseContext);
    v8[4] = sub_1D7749084(qword_1EE094650, type metadata accessor for PurchaseContext, &protocol conformance descriptor for PurchaseContext);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D77BD23C(uint64_t a1)
{
  if (!qword_1EE0901B8)
  {
    type metadata accessor for PurchaseContext(255);
    v1 = sub_1D78B5BF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0901B8);
    }
  }
}

void sub_1D77BD304(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D77BD374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D77BD3D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseContext(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D77BD438(uint64_t a1)
{
  if (!qword_1EE095248)
  {
    sub_1D77BD4B8(255, &qword_1EE090010, MEMORY[0x1E69E62F8]);
    v1 = sub_1D78B4184();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE095248);
    }
  }
}

void sub_1D77BD4B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D77BD50C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D77BD574()
{
  v1 = *(type metadata accessor for PurchaseContext(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_1D77BC148(v2, v3, v4, v5);
}

void sub_1D77BD5DC(uint64_t a1)
{
  if (!qword_1EC9CA118)
  {
    type metadata accessor for PurchaseContext(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9CA118);
    }
  }
}

id sub_1D77BD654@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v10 = type metadata accessor for AlacartePaywallViewModel(0);
  v11 = *(a1 + v10[14]) & 0xFD;
  sub_1D78B6054();
  v13 = v7 - v12 + -32.0;
  if ([v9 horizontalSizeClass] == 1)
  {
    v14 = [v9 userInterfaceIdiom];
    v15 = fmin(v13, 380.0);
    if (v14 == 1)
    {
      v16 = v15;
    }

    else
    {
      v16 = v13;
    }
  }

  else
  {
    v16 = 380.0;
  }

  __swift_project_boxed_opaque_existential_1((v3 + 64), *(v3 + 88));
  v103 = sub_1D7816520(*a1, a1[1], v9, v11 != 0);
  sub_1D77BDDAC(v103, v13, 1.79769313e308);
  v99 = v17;
  v19 = v18;
  __swift_project_boxed_opaque_existential_1((v3 + 64), *(v3 + 88));
  v104 = a1[2];
  v105 = a1[3];

  MEMORY[0x1DA702FF0](32, 0xE100000000000000);
  MEMORY[0x1DA702FF0](a1[4], a1[5]);
  v20 = sub_1D781723C(v104, v105);

  sub_1D77BDDAC(v20, v16, 1.79769313e308);
  v22 = v21;
  v24 = v23;
  __swift_project_boxed_opaque_existential_1((v3 + 64), *(v3 + 88));
  v25 = sub_1D78169B8(*(a1 + v10[8]), *(a1 + v10[8] + 8), *(a1 + v10[9]), *(a1 + v10[9] + 8));
  v26 = [v9 horizontalSizeClass];
  if (v26 >= 3)
  {
    result = sub_1D78B6524();
    __break(1u);
    return result;
  }

  v96 = v20;
  v27 = dbl_1D78C0300[v26];
  __swift_project_boxed_opaque_existential_1((v3 + 64), *(v3 + 88));
  v28 = sub_1D7816FD4(*(a1 + v10[11]), *(a1 + v10[11] + 8), v9);
  sub_1D78B6144();
  v80 = v29;
  v93 = v30;
  v95 = v25;
  v31 = v11;
  if (v11)
  {
    sub_1D77BDF8C(v9);
  }

  else
  {
    v33 = [v9 horizontalSizeClass];
    v32 = 255.0;
    if (v33 == 1)
    {
      v32 = 220.0;
    }
  }

  v97 = v32;
  v34 = [v103 string];
  v35 = sub_1D78B5C74();
  v37 = v36;

  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = v35 & 0xFFFFFFFFFFFFLL;
  }

  v102 = 0.0;
  v39 = 0.0;
  if (v38)
  {
    if (!v31)
    {
      goto LABEL_22;
    }

    v40 = [v9 horizontalSizeClass];
    v41 = [v9 verticalSizeClass];
    if (v40 == 2)
    {
      if (v41 != 1)
      {
LABEL_22:
        v42 = sub_1D78B6154();
        v43 = sub_1D78B6154();
        [v43 ascender];

        v44 = sub_1D78B6154();
        [v44 descender];

        sub_1D78B5F44();
        v39 = v45;

        goto LABEL_23;
      }
    }

    else if (v40 != 1 || (v41 - 1) >= 2)
    {
      goto LABEL_22;
    }

    [v9 userInterfaceIdiom];
    goto LABEL_22;
  }

LABEL_23:
  v90 = v6;
  v46 = sub_1D78B6154();
  v47 = sub_1D78B6154();
  [v47 ascender];

  v48 = sub_1D78B6154();
  [v48 descender];

  sub_1D78B5F44();
  v50 = v49;

  v106.size.width = v99;
  v106.size.height = v19;
  v106.origin.x = (v7 - v99) * 0.5;
  v106.origin.y = v39;
  v107 = CGRectIntegral(v106);
  x = v107.origin.x;
  height = v107.size.height;
  width = v107.size.width;
  y = v107.origin.y;
  v108.origin.y = v107.origin.y + CGRectGetHeight(v107) + 20.0;
  v108.size.height = 50.0;
  v108.origin.x = (v7 - v27) * 0.5;
  v108.size.width = v27;
  v109 = CGRectIntegral(v108);
  v51 = v109.origin.x;
  v52 = v109.origin.y;
  v100 = v109.size.height;
  v101 = v109.size.width;
  v53 = 0.0;
  v54 = 0.0;
  v55 = 0.0;
  if ((*(a1 + v10[13]) & 1) == 0)
  {
    v110.origin.y = v109.origin.y + CGRectGetHeight(v109) + 5.0;
    v110.origin.x = (v7 - v22) * 0.5;
    v110.size.width = v22;
    v110.size.height = v24;
    v109 = CGRectIntegral(v110);
    v102 = v109.origin.x;
    v53 = v109.origin.y;
    v54 = v109.size.width;
    v55 = v109.size.height;
  }

  rect = v54;
  v84 = v53;
  MaxY = CGRectGetMaxY(v109);
  v85 = v52;
  v86 = v51;
  v82 = v55;
  if (*(a1 + v10[12]))
  {
    v57 = v97 + v55 - (v93 + v50);
    v94 = 0.0;
    v79 = 0.0;
    v81 = 0.0;
    v78 = 0.0;
  }

  else
  {
    v111.size.width = v80;
    v111.origin.y = v50 + MaxY;
    v111.origin.x = (v7 - v80) * 0.5;
    v111.size.height = v93;
    v112 = CGRectIntegral(v111);
    v94 = v112.origin.x;
    v79 = v112.size.width;
    v81 = v112.origin.y;
    v78 = v112.size.height;
    v57 = v97 + v55;
  }

  v58 = v90 - (v8 + v57);
  v59 = 0.0;
  if (v31)
  {
    v60 = v8 + v57;
  }

  else
  {
    v58 = 0.0;
    v60 = v57;
  }

  if (v31)
  {
    v61 = v90;
  }

  else
  {
    v61 = v57;
  }

  v62 = 0;
  v63 = v7;
  v113 = CGRectIntegral(*(&v58 - 1));
  v64 = v113.origin.x;
  v98 = v113.origin.y;
  v91 = v113.size.width;
  v77 = v113.size.height;
  v113.origin.x = 0.0;
  v113.origin.y = 0.0;
  v113.size.width = v7;
  v113.size.height = v61;
  v114 = CGRectIntegral(v113);
  v65 = v114.origin.x;
  v66 = v114.origin.y;
  v67 = v114.size.width;
  v68 = v114.size.height;
  result = [v9 displayScale];
  v71 = v65;
  v72 = v66;
  v73 = v67;
  v74 = 0.0;
  v75 = 0.0;
  v76 = v68;
  if (!v31)
  {
    v75 = 1.0 / v70;
    v59 = v57 - 1.0 / v70;
    v71 = 0.0;
    v72 = 0.0;
    v73 = 0.0;
    v76 = 0.0;
    v74 = v7;
  }

  *a3 = v65;
  *(a3 + 8) = v66;
  *(a3 + 16) = v67;
  *(a3 + 24) = v68;
  *(a3 + 32) = v64;
  *(a3 + 40) = v98;
  *(a3 + 48) = v91;
  *(a3 + 56) = v77;
  *(a3 + 64) = v71;
  *(a3 + 72) = v72;
  *(a3 + 80) = v73;
  *(a3 + 88) = v76;
  *(a3 + 96) = x;
  *(a3 + 104) = y;
  *(a3 + 112) = width;
  *(a3 + 120) = height;
  *(a3 + 128) = v86;
  *(a3 + 136) = v85;
  *(a3 + 144) = v101;
  *(a3 + 152) = v100;
  *(a3 + 160) = v102;
  *(a3 + 168) = v84;
  *(a3 + 176) = rect;
  *(a3 + 184) = v82;
  *(a3 + 192) = v94;
  *(a3 + 200) = v81;
  *(a3 + 208) = v79;
  *(a3 + 216) = v78;
  *(a3 + 224) = 0;
  *(a3 + 232) = v59;
  *(a3 + 240) = v74;
  *(a3 + 248) = v75;
  *(a3 + 256) = v103;
  *(a3 + 264) = v96;
  *(a3 + 272) = v95;
  *(a3 + 280) = v28;
  return result;
}

void sub_1D77BDDAC(void *a1, double a2, double a3)
{
  v4 = sub_1D78B2FF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 string];
  v10 = sub_1D78B5C74();
  v12 = v11;

  v17[0] = v10;
  v17[1] = v12;
  sub_1D78B2FC4();
  sub_1D77BE06C();
  v13 = sub_1D78B62C4();
  v15 = v14;
  (*(v5 + 8))(v8, v4);

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    sub_1D78B6144();
  }
}

uint64_t sub_1D77BDF30()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

char *sub_1D77BDF8C(void *a1)
{
  v2 = [a1 horizontalSizeClass];
  result = [a1 verticalSizeClass];
  if (v2 == 2)
  {
    if (result != 1)
    {
      return result;
    }

    return [a1 userInterfaceIdiom];
  }

  if (v2 == 1 && (result - 1) < 2)
  {
    return [a1 userInterfaceIdiom];
  }

  return result;
}

unint64_t sub_1D77BE06C()
{
  result = qword_1EE0901E0;
  if (!qword_1EE0901E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0901E0);
  }

  return result;
}

uint64_t sub_1D77BE0C0(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 96), *(a1 + 120));
  v1 = off_1F526DCD8[0];
  type metadata accessor for EntitlementsManager();
  return v1();
}

uint64_t sub_1D77BE12C(char *a1, uint64_t a2, char a3)
{
  sub_1D77BE32C(*a1);
  v5 = __swift_project_boxed_opaque_existential_1((a2 + 96), *(a2 + 120));
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = *v5;
  v8 = objc_opt_self();
  swift_retain_n();
  v9 = [v8 sharedAccount];
  v10 = [v9 isUserSignedIntoiTunes];

  if (v10 && ([*(v7 + 176) isNetworkReachable] & 1) != 0)
  {
    v11 = *(v7 + 184);
    v12 = swift_allocObject();
    v12[2] = v7;
    v12[3] = sub_1D77BFEE4;
    v12[4] = v6;
    v15[4] = sub_1D77C0148;
    v15[5] = v12;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1D781E048;
    v15[3] = &block_descriptor_21;
    v13 = _Block_copy(v15);

    [v11 performEntitlementWithIgnoreCache:0 completion:v13];
    _Block_release(v13);
  }

  else
  {
    sub_1D77BEB6C(a2, a3 & 1, &unk_1F526A580, sub_1D77A3184, &block_descriptor_28);
  }
}

void sub_1D77BE32C(char a1)
{
  if (NFStoreDemoMode())
  {
    return;
  }

  if (a1)
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v3 = qword_1EE09C268;
    v4 = sub_1D78B60A4();
    v5 = MEMORY[0x1E69E7CC0];

    sub_1D78B42C4("InAppSubscriptionStatusChecker entitlements has news plus entitlement. Skip showing itunes signed out alerts", 108, 2, &dword_1D7739000, v3, v4, v5);
    return;
  }

  v31 = [objc_opt_self() sharedAccount];
  v6 = [v31 isUserSignedIntoiTunes];
  v7 = [*(v1 + 24) cachedSubscription];
  if (objc_getAssociatedObject(v7, v7 + 1))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  aBlock = v38;
  v35 = v39;
  if (!*(&v39 + 1))
  {
    sub_1D7756B84(&aBlock);
    goto LABEL_16;
  }

  sub_1D77BFFAC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v8 = 0;
    v9 = 0;
    goto LABEL_17;
  }

  v8 = v33;
  v9 = [v33 integerValue];
  if (v9 == -1)
  {
    goto LABEL_24;
  }

LABEL_17:
  if (objc_getAssociatedObject(v7, ~v9))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  aBlock = v38;
  v35 = v39;
  if (!*(&v39 + 1))
  {
    sub_1D7756B84(&aBlock);
    goto LABEL_24;
  }

  sub_1D77BFFAC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:

    v12 = -118;
    goto LABEL_25;
  }

  v10 = v33;
  v11 = [v10 integerValue];

  v12 = v11 - 118;
LABEL_25:
  v32 = v1;
  v30 = (v12 ^ v9) & 1;
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v29 = qword_1EE09C268;
  sub_1D774FE1C(0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D78BF690;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  if (v6)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v6)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x1DA702FF0](v14, v15);

  v16 = aBlock;
  v17 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v18 = sub_1D775ABD4();
  *(v13 + 32) = v16;
  *(v13 + 96) = v17;
  *(v13 + 104) = v18;
  *(v13 + 64) = v18;
  *(v13 + 72) = 0x65736C6166;
  *(v13 + 80) = 0xE500000000000000;
  if (v30)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (v30)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  MEMORY[0x1DA702FF0](v19, v20);

  v21 = aBlock;
  *(v13 + 136) = v17;
  *(v13 + 144) = v18;
  *(v13 + 112) = v21;
  v22 = sub_1D78B60A4();
  sub_1D78B42C4("InAppSubscriptionStatusChecker isUserSignedIntoiTunes:%{public}@ hasNewsPlusEntitlement: %{public}@ isBundleSubscriber: %{public}@", 130, 2, &dword_1D7739000, v29, v22, v13);

  v23 = *(v1 + 16);
  v24 = [v31 iTunesAccountName];
  v25 = [v31 iTunesAccountDSID];
  v26 = swift_allocObject();
  *(v26 + 16) = v32;
  *(v26 + 24) = v31;
  *(v26 + 32) = v6;
  *(v26 + 33) = v30;
  v36 = sub_1D77BFF7C;
  v37 = v26;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v35 = sub_1D77BF674;
  *(&v35 + 1) = &block_descriptor_34;
  v27 = _Block_copy(&aBlock);

  v28 = v31;

  [v23 shouldShowSignedInWithDifferentiTunesAccountAlertWithiTunesAccountName:v24 iTunesAccountDSID:v25 isUserSignedIntoiTunes:v6 isBundleSubscriber:v30 completion:v27];
  _Block_release(v27);
}

void sub_1D77BE820(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1D78B31B4();
  v7 = [v6 code];

  if ((v7 & 0x8000000000000000) != 0 || v7 != *MEMORY[0x1E69B5038])
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v18 = qword_1EE09C268;
    v19 = sub_1D78B6094();
    sub_1D774FE1C(0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D78BCAB0;
    aBlock[6] = a1;
    sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
    sub_1D78B6504();
    *(v20 + 56) = MEMORY[0x1E69E6158];
    *(v20 + 64) = sub_1D775ABD4();
    *(v20 + 32) = 0;
    *(v20 + 40) = 0xE000000000000000;
    sub_1D78B42C4("InAppSubscriptionStatusChecker entitlements check failed with error: %{public}@", 79, 2, &dword_1D7739000, v18, v19, v20);
  }

  else
  {
    v8 = __swift_project_boxed_opaque_existential_1((a2 + 96), *(a2 + 120));
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    v10 = a3 & 1;
    *(v9 + 24) = a3 & 1;
    v11 = *v8;
    v12 = objc_opt_self();
    swift_retain_n();
    v13 = [v12 sharedAccount];
    v14 = [v13 isUserSignedIntoiTunes];

    if (v14 && [*(v11 + 176) isNetworkReachable])
    {
      v15 = *(v11 + 184);
      v16 = swift_allocObject();
      v16[2] = v11;
      v16[3] = sub_1D77BED0C;
      v16[4] = v9;
      aBlock[4] = sub_1D77BFED8;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D781E048;
      aBlock[3] = &block_descriptor_9;
      v17 = _Block_copy(aBlock);

      [v15 performEntitlementWithIgnoreCache:0 completion:v17];
      _Block_release(v17);
    }

    else
    {
      sub_1D77BEB6C(a2, v10, &unk_1F526A4B8, sub_1D77A2CD4, &block_descriptor_11);
    }
  }
}

void sub_1D77BEB6C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *__swift_project_boxed_opaque_existential_1((a1 + 96), *(a1 + 120));
  v9 = [objc_opt_self() sharedAccount];
  v10 = [v9 isUserSignedIntoiTunes];

  if (v10)
  {
    v11 = *(v8 + 24);
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    *(v12 + 24) = 0;
    v14[4] = a4;
    v14[5] = v12;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1D7781488;
    v14[3] = a5;
    v13 = _Block_copy(v14);

    [v11 refreshBundleSubscriptionWithCachePolicy:2 hideBundleDetectionUI:a2 & 1 completion:v13];
    _Block_release(v13);
  }
}

uint64_t sub_1D77BECA4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));

  return swift_deallocClassInstance();
}

void sub_1D77BED50(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, char a9)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE09C268;
  sub_1D774FE1C(0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D78BCAB0;
  aBlock = 0;
  v30 = 0xE000000000000000;
  if (a1)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (a1)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x1DA702FF0](v17, v18);

  v19 = aBlock;
  v20 = v30;
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = sub_1D775ABD4();
  *(v16 + 32) = v19;
  *(v16 + 40) = v20;
  v21 = sub_1D78B60A4();
  sub_1D78B42C4("InAppSubscriptionStatusChecker shouldShowSignedInWithDifferentItunesAlert:%{public}@", 84, 2, &dword_1D7739000, v15, v21, v16);

  if (a1)
  {
    if (a5 && a3)
    {
      sub_1D77BF008(a4, a5, a2, a3);
    }

    [*(a6 + 16) clearAllAppStorePurchases];
    v22 = *(a6 + 24);

    [v22 clearBundleSubscription];
  }

  else
  {
    v23 = *(a6 + 16);
    v24 = [a7 iTunesAccountName];
    v25 = [a7 iTunesAccountDSID];
    v33 = sub_1D77BFFF8;
    v34 = a6;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_1D77BF5E8;
    v32 = &block_descriptor_37;
    v26 = _Block_copy(&aBlock);

    [v23 shouldShowiTunesSignedOutAlertWithiTunesAccountName:v24 iTunesAccountDSID:v25 isUserSignedIntoiTunes:a8 & 1 isBundleSubscriber:a9 & 1 completion:v26];
    _Block_release(v26);
  }
}

uint64_t sub_1D77BF008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1D77C0000();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  sub_1D78B5054();
  swift_allocObject();

  v10 = sub_1D78B5004();

  sub_1D78B5034();

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE09C268;
  v12 = sub_1D78B60A4();
  sub_1D78B42C4("Showing SignedInWithDifferentITunesAccountAlert", 47, 2, &dword_1D7739000, v11, v12, MEMORY[0x1E69E7CC0]);
  v13 = v5[10];
  v14 = v5[11];
  __swift_project_boxed_opaque_existential_1(v5 + 7, v13);
  (*(v14 + 88))(v10, v13, v14);
}

void sub_1D77BF1A0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE09C268;
  sub_1D774FE1C(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D78BCAB0;
  v24 = 0;
  v25 = 0xE000000000000000;
  if (a1)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (a1)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1DA702FF0](v10, v11);

  v12 = v24;
  v13 = v25;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1D775ABD4();
  *(v9 + 32) = v12;
  *(v9 + 40) = v13;
  v14 = sub_1D78B60A4();
  sub_1D78B42C4("InAppSubscriptionStatusChecker shouldShowItunesSignedOutAlert:%{public}@", 72, 2, &dword_1D7739000, v8, v14, v9);

  if (a1)
  {
    if (a3)
    {
      sub_1D77BF47C(a2, a3);
    }

    [*(a4 + 16) clearAllAppStorePurchases];
    v15 = *(a4 + 24);

    [v15 clearBundleSubscription];
  }

  else
  {
    v16 = *(a4 + 40);
    v17 = sub_1D78B60A4();
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D78B42C4("SubscriptionExpiryManager in showExpiredAlerts method", 53, 2, &dword_1D7739000, v8, v17, MEMORY[0x1E69E7CC0]);
    v19 = sub_1D78B60A4();
    sub_1D78B42C4("SubscriptionExpiryManager in showBundleExpiredAlert method", 58, 2, &dword_1D7739000, v8, v19, v18);
    if (*(v16 + 240) == 1)
    {
      v20 = *(v16 + 232);
      v28 = sub_1D77C0170;
      v29 = v16;
      v24 = MEMORY[0x1E69E9820];
      v25 = 1107296256;
      v26 = sub_1D779ECCC;
      v27 = &block_descriptor_47_0;
      v21 = _Block_copy(&v24);

      [v20 enqueueBlock_];
      _Block_release(v21);
    }

    else
    {
      v23 = sub_1D78B60A4();
      sub_1D78B42C4("SubscriptionExpiryManager in showBundleExpiredAlert not showing because bootstrapper not complete", 97, 2, &dword_1D7739000, v8, v23, MEMORY[0x1E69E7CC0]);
    }

    sub_1D779DCD8(v22);
  }
}

uint64_t sub_1D77BF47C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1D77C0064();
  sub_1D78B5054();
  swift_allocObject();

  v4 = sub_1D78B5004();

  sub_1D78B5034();

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE09C268;
  v6 = sub_1D78B60A4();
  sub_1D78B42C4("Showing ItunesSignedOutAlert", 28, 2, &dword_1D7739000, v5, v6, MEMORY[0x1E69E7CC0]);
  v7 = v3[10];
  v8 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v7);
  (*(v8 + 88))(v4, v7, v8);
}

double sub_1D77BF5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = sub_1D78B5C74();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4(a2, v5, v7);

  return result;
}

double sub_1D77BF674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = sub_1D78B5C74();
    v9 = v8;
    if (v4)
    {
LABEL_3:
      v10 = sub_1D78B5C74();
      v4 = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:

  v6(a2, v7, v9, v10, v4);

  return result;
}

void sub_1D77BF738(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE09C268;
  v3 = sub_1D78B60A4();
  v4 = MEMORY[0x1E69E7CC0];
  sub_1D78B42C4("SubscriptionExpiryManager in showExpiredAlerts method", 53, 2, &dword_1D7739000, v2, v3, MEMORY[0x1E69E7CC0]);
  v5 = sub_1D78B60A4();
  sub_1D78B42C4("SubscriptionExpiryManager in showBundleExpiredAlert method", 58, 2, &dword_1D7739000, v2, v5, v4);
  if (*(v1 + 240) == 1)
  {
    v6 = *(v1 + 232);
    v10[4] = sub_1D77C005C;
    v10[5] = v1;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1D779ECCC;
    v10[3] = &block_descriptor_43;
    v7 = _Block_copy(v10);

    [v6 enqueueBlock_];
    _Block_release(v7);
  }

  else
  {
    v9 = sub_1D78B60A4();
    sub_1D78B42C4("SubscriptionExpiryManager in showBundleExpiredAlert not showing because bootstrapper not complete", 97, 2, &dword_1D7739000, v2, v9, MEMORY[0x1E69E7CC0]);
  }

  sub_1D779DCD8(v8);
}

void sub_1D77BF8DC(uint64_t a1)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE09C268;
  v3 = sub_1D78B60A4();
  sub_1D78B42C4("Selected Sign In in ItunesSignedOutAlert", 42, 2, &dword_1D7739000, v2, v3, MEMORY[0x1E69E7CC0]);
  __swift_project_boxed_opaque_existential_1((a1 + 136), *(a1 + 160));
  v4 = sub_1D78B4874();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 rootViewController];

    if (v6)
    {
      v7 = sub_1D78B60B4();
      v8 = [objc_allocWithZone(MEMORY[0x1E698C7B0]) init];
      [v8 setIgnoreAccountConversion_];
      v9 = sub_1D78B5C44();
      [v8 setDebugReason_];

      v10 = [objc_allocWithZone(MEMORY[0x1E698CC58]) initWithAccount:0 presentingViewController:v7 options:v8];
      v11 = [v10 performAuthentication];
      v13[4] = sub_1D77C00C0;
      v13[5] = a1;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 1107296256;
      v13[2] = sub_1D7780F60;
      v13[3] = &block_descriptor_50;
      v12 = _Block_copy(v13);

      [v11 addFinishBlock_];
      _Block_release(v12);
    }
  }
}

void sub_1D77BFB20(void *a1, id a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2;
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v6 = qword_1EE09C268;
    v7 = sub_1D78B6094();
    sub_1D774FE1C(0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D78BCAB0;
    sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
    sub_1D78B6504();
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1D775ABD4();
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    sub_1D78B42C4("AppleID authentication failed in InAppSubscriptionStatusChecker with error: %{public}@", 86, 2, &dword_1D7739000, v6, v7, v8);

    v9 = sub_1D78B31B4();
    LOBYTE(v7) = [v9 fc_isAuthenticationUserCancelled];

    if (v7)
    {
    }

    else
    {

      sub_1D78B4224();
    }
  }

  else if (a1)
  {
    v10 = [a1 account];
    if (v10)
    {

      v11 = objc_opt_self();
      v12 = [v11 sharedAccount];
      [v12 reloadiTunesAccount];

      v13 = *__swift_project_boxed_opaque_existential_1((a3 + 96), *(a3 + 120));
      v14 = [v11 sharedAccount];
      LODWORD(v12) = [v14 isUserSignedIntoiTunes];

      if (v12)
      {
        v15 = *(v13 + 24);
        v16 = swift_allocObject();
        *(v16 + 16) = v13;
        *(v16 + 24) = 0;
        aBlock[4] = sub_1D77A3184;
        aBlock[5] = v16;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D7781488;
        aBlock[3] = &block_descriptor_57;
        v17 = _Block_copy(aBlock);

        [v15 refreshBundleSubscriptionWithCachePolicy:2 hideBundleDetectionUI:0 completion:v17];
        _Block_release(v17);
      }
    }
  }
}

uint64_t sub_1D77BFE20(void *a1)
{
  sub_1D77C00D0();
  sub_1D78B5054();
  swift_allocObject();
  v2 = sub_1D78B5004();
  v3 = a1[10];
  v4 = a1[11];
  __swift_project_boxed_opaque_existential_1(a1 + 7, v3);
  (*(v4 + 88))(v2, v3, v4);
}

void sub_1D77BFF28()
{
  if (!qword_1EE08F9C0)
  {
    v0 = sub_1D78B62A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08F9C0);
    }
  }
}

unint64_t sub_1D77BFFAC()
{
  result = qword_1EE08FBD0;
  if (!qword_1EE08FBD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FBD0);
  }

  return result;
}

unint64_t sub_1D77C0000()
{
  result = qword_1EC9CA120;
  if (!qword_1EC9CA120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA120);
  }

  return result;
}

unint64_t sub_1D77C0064()
{
  result = qword_1EC9CA128;
  if (!qword_1EC9CA128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA128);
  }

  return result;
}

unint64_t sub_1D77C00D0()
{
  result = qword_1EC9CA130;
  if (!qword_1EC9CA130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CA130);
  }

  return result;
}

id sub_1D77C0174()
{
  type metadata accessor for Images();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EE0905E0 = result;
  return result;
}

void sub_1D77C01C8()
{
  if (qword_1EE0905D8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE0905E0;
  v1 = sub_1D78B5C44();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  qword_1EC9D9E18 = v2;
}

void sub_1D77C02BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D78B5C44();
  v5 = [objc_opt_self() systemImageNamed_];

  if (v5)
  {
    [v5 imageWithTintColor:a1 renderingMode:1];
  }

  else
  {
    __break(1u);
  }
}

void static Images.checkmarkCircleFill(tint:)(uint64_t a1)
{
  v2 = sub_1D78B5C44();
  v3 = [objc_opt_self() systemImageNamed_];

  if (v3)
  {
    [v3 imageWithTintColor:a1 renderingMode:1];
  }

  else
  {
    __break(1u);
  }
}

void sub_1D77C0424(uint64_t a1, SEL *a2, void *a3)
{
  v4 = [objc_opt_self() *a2];
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    v7 = [v6 blackColor];
    v8 = [v6 whiteColor];
    v9 = [v6 ts:v7 dynamicColor:v8 withDarkStyleVariant:?];

    v10 = [v5 imageWithTintColor:v9 renderingMode:1];
    *a3 = v10;
  }

  else
  {
    __break(1u);
  }
}

id sub_1D77C0520()
{
  result = [objc_opt_self() premiumSealInner];
  if (result)
  {
    qword_1EE09C2A8 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id Images.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Images.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Images();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Images.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Images();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1D77C0668(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D78B6534();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1D77D9874(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v15;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA703700](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 channelID];
      v9 = sub_1D78B5C74();
      v11 = v10;

      v13 = *(v15 + 16);
      v12 = *(v15 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D77D9874((v12 > 1), v13 + 1, 1);
      }

      ++v5;
      *(v15 + 16) = v13 + 1;
      v14 = v15 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

CGFloat sub_1D77C07B4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v168 = a1;
  sub_1D776F504(0);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v166 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v131 - v12;
  v14 = *a2;
  v15 = *(a2 + 56);
  v16 = *(a2 + 80);
  [v16 horizontalSizeClass];
  v156 = v15;
  sub_1D78B6054();
  v18 = v14 - v17 + -66.0;
  v19 = __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
  v20 = sub_1D7859910(v16, *v19);
  v21 = 109.0;
  if (!v20)
  {
    v21 = 0.0;
  }

  x = v21;
  v22 = 27.0;
  if (!v20)
  {
    v22 = 0.0;
  }

  y = v22;
  __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
  v155 = sub_1D7859A84(v16, v18, 1.79769313e308);
  v24 = v23;
  __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
  v151 = sub_1D7859C68(v16, v18, 1.79769313e308);
  v26 = v25;
  v27 = __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
  v28 = *v27;
  v29 = (*v27 + OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_styler);
  v30 = v29[3];
  v31 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v32 = OBJC_IVAR____TtC16NewsSubscription34BundlePaywallComponentSizeProvider_viewModel;
  v33 = type metadata accessor for BundlePaywallViewModel(0);
  v34 = (v28 + v32 + *(v33 + 40));
  v35 = (*(v31 + 64))(*v34, v34[1], v16, v30, v31);
  sub_1D78B6144();
  v37 = v36;
  v39 = v38;

  v40 = v37 + 120.0;
  if (v37 + 120.0 <= 158.0)
  {
    v40 = 158.0;
  }

  v147 = v40;
  if (v39 <= 30.0)
  {
    v39 = 30.0;
  }

  __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
  v143 = sub_1D7859F78(v16, v18, 1.79769313e308);
  v42 = v41;
  v43 = v4[10];
  v167 = v4;
  __swift_project_boxed_opaque_existential_1(v4 + 7, v43);
  v44 = sub_1D785A298(v16, v18, 1.79769313e308);
  v45 = v168;
  v139 = v44;
  v47 = v46;
  [v16 horizontalSizeClass];
  v142 = v42;
  v48 = 11.0;
  if (v42 <= 0.0)
  {
    v49 = 0.0;
  }

  else
  {
    v49 = 11.0;
  }

  v141 = v49;
  v146 = v39;
  if (v39 <= 0.0)
  {
    v50 = 0.0;
  }

  else
  {
    v50 = 11.0;
  }

  v145 = v50;
  v150 = v26;
  if (v26 <= 0.0)
  {
    v51 = 0.0;
  }

  else
  {
    v51 = 11.0;
  }

  v149 = v51;
  if (v24 <= 0.0)
  {
    v52 = 0.0;
  }

  else
  {
    v52 = 11.0;
  }

  v137 = v47;
  if (v47 <= 0.0)
  {
    v48 = 0.0;
  }

  v136 = v48;
  v170 = v16;
  v53 = [v16 userInterfaceStyle];
  v54 = 68;
  if (v53 == 2)
  {
    v54 = 72;
  }

  v169 = v33;
  sub_1D776F538(v45 + *(v33 + v54), v13);
  v55 = sub_1D78B3294();
  v56 = *(v55 - 8);
  v57 = *(v56 + 48);
  v138 = v55;
  v58 = v57(v13, 1);
  v161 = v14;
  if (v58 == 1)
  {
    v59 = 0.0;
  }

  else
  {
    v59 = v14;
  }

  sub_1D77C12C8(v13);
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  if (v59 > 0.0)
  {
    v174.origin.x = (v18 - v59) * 0.5;
    v174.size.height = *v45;
    v174.origin.y = 0.0;
    v174.size.width = v59;
    *&v60 = CGRectIntegral(v174);
  }

  v64 = x;
  v164 = v61;
  v165 = v60;
  v163 = v62;
  v162 = v63;
  v175.origin.y = CGRectGetMaxY(*&v60) + v45[1];
  v175.origin.x = (v18 - v64) * 0.5;
  v175.size.width = v64;
  v175.size.height = y;
  v176 = CGRectIntegral(v175);
  v65 = v155;
  x = v176.origin.x;
  y = v176.origin.y;
  width = v176.size.width;
  height = v176.size.height;
  v177.origin.y = v52 + CGRectGetMaxY(v176);
  v177.origin.x = (v18 - v65) * 0.5;
  v177.size.width = v65;
  v177.size.height = v24;
  v178 = CGRectIntegral(v177);
  v66 = v151;
  v155 = v178.origin.x;
  v154 = v178.origin.y;
  v153 = v178.size.width;
  v152 = v178.size.height;
  v179.origin.y = v149 + CGRectGetMaxY(v178);
  v179.origin.x = (v18 - v66) * 0.5;
  v179.size.width = v66;
  v179.size.height = v150;
  v180 = CGRectIntegral(v179);
  v67 = v147;
  v151 = v180.origin.x;
  v150 = v180.origin.y;
  v149 = v180.size.width;
  v148 = v180.size.height;
  v181.origin.y = v145 + CGRectGetMaxY(v180);
  v181.origin.x = (v18 - v67) * 0.5;
  v181.size.width = v67;
  v181.size.height = v146;
  v182 = CGRectIntegral(v181);
  v68 = v143;
  v147 = v182.origin.x;
  v146 = v182.origin.y;
  v145 = v182.size.width;
  v144 = v182.size.height;
  v183.origin.y = v141 + CGRectGetMaxY(v182);
  v183.origin.x = (v18 - v68) * 0.5;
  v183.size.width = v68;
  v183.size.height = v142;
  v184 = CGRectIntegral(v183);
  v143 = v184.origin.x;
  v142 = v184.origin.y;
  v141 = v184.size.width;
  v140 = v184.size.height;
  MaxY = CGRectGetMaxY(v184);
  v70 = v169;
  if (*(v45 + v169[25]))
  {
    v71 = v137;
  }

  else
  {
    v71 = 0.0;
  }

  v72 = v139;
  v73 = v136 + MaxY;
  v74 = (v18 - v139) * 0.5;
  v185 = CGRectIntegral(*(&v71 - 3));
  v75 = v185.origin.x;
  v76 = v185.origin.y;
  v77 = v185.size.height;
  v139 = v185.size.width;
  v186.size.height = CGRectGetMaxY(v185) + 24.0;
  v186.origin.x = v156 + 33.0;
  v186.origin.y = 0.0;
  v186.size.width = v18;
  v187 = CGRectIntegral(v186);
  v78 = v187.origin.x;
  v79 = v187.origin.y;
  v80 = v187.size.width;
  v81 = v187.size.height;
  v188.size.height = CGRectGetHeight(v187);
  v188.origin.x = 0.0;
  v188.origin.y = 0.0;
  v188.size.width = v161;
  v189 = CGRectIntegral(v188);
  v82 = v189.origin.x;
  v156 = v189.origin.y;
  v137 = v189.size.width;
  v136 = v189.size.height;
  v83 = v167;
  v85 = v167[5];
  v84 = v167[6];
  __swift_project_boxed_opaque_existential_1(v167 + 2, v85);
  v86 = v45;
  v87 = v170;
  v161 = COERCE_DOUBLE((*(*(v84 + 8) + 48))(v45[2], v45[3], v170, v85));
  v88 = v83[5];
  v134 = v83[6];
  v135 = __swift_project_boxed_opaque_existential_1(v83 + 2, v88);
  v89 = sub_1D787443C();
  v91 = v90;
  v92 = v86[7];
  v133 = v86[6];
  v132 = v92;
  v93 = v86 + v70[9];
  v94 = v166;
  v95 = v138;
  (*(v56 + 16))(v166, v93, v138);
  (*(v56 + 56))(v94, 0, 1, v95);
  v138 = (*(*(v134 + 8) + 56))(v89, v91, v87, v133, v132, v94, v88);

  sub_1D77C12C8(v94);
  v97 = v83[5];
  v96 = v83[6];
  __swift_project_boxed_opaque_existential_1(v83 + 2, v97);
  v98 = v169;
  v166 = (*(*(v96 + 8) + 64))(*(v86 + v169[10]), *(v86 + v169[10] + 8), v87, v97);
  sub_1D774584C((v83 + 2), &v171);
  v100 = v172;
  v99 = v173;
  __swift_project_boxed_opaque_existential_1(&v171, v172);
  v101 = (v86 + v98[12]);
  if (v101[1])
  {
    v102 = *v101;
    v103 = v101[1];
  }

  else
  {
    v102 = 0;
    v103 = 0xE000000000000000;
  }

  v104 = *(v99 + 8);
  v105 = *(v104 + 80);

  v106 = v105(v102, v103, v170, v100, v104);

  __swift_destroy_boxed_opaque_existential_1(&v171);
  sub_1D774584C((v167 + 2), &v171);
  v107 = v172;
  v108 = v173;
  __swift_project_boxed_opaque_existential_1(&v171, v172);
  v109 = (v168 + v169[15]);
  if (v109[1])
  {
    v110 = *v109;
    v111 = v109[1];
  }

  else
  {
    v110 = 0;
    v111 = 0xE000000000000000;
  }

  v112 = *(v108 + 8);
  v113 = *(v112 + 96);

  v114 = v113(v110, v111, v170, v107, v112);

  __swift_destroy_boxed_opaque_existential_1(&v171);
  v115 = v156;
  *a3 = v82;
  *(a3 + 8) = v115;
  v116 = v136;
  *(a3 + 16) = v137;
  *(a3 + 24) = v116;
  *(a3 + 32) = v78;
  *(a3 + 40) = v79;
  *(a3 + 48) = v80;
  *(a3 + 56) = v81;
  v117 = v164;
  *(a3 + 64) = v165;
  *(a3 + 72) = v117;
  v118 = v162;
  *(a3 + 80) = v163;
  *(a3 + 88) = v118;
  v119 = y;
  *(a3 + 96) = x;
  *(a3 + 104) = v119;
  v120 = height;
  *(a3 + 112) = width;
  *(a3 + 120) = v120;
  v121 = v154;
  *(a3 + 128) = v155;
  *(a3 + 136) = v121;
  v122 = v152;
  *(a3 + 144) = v153;
  *(a3 + 152) = v122;
  v123 = v150;
  *(a3 + 160) = v151;
  *(a3 + 168) = v123;
  v124 = v148;
  *(a3 + 176) = v149;
  *(a3 + 184) = v124;
  v125 = v146;
  *(a3 + 192) = v147;
  *(a3 + 200) = v125;
  v126 = v144;
  *(a3 + 208) = v145;
  *(a3 + 216) = v126;
  v127 = v142;
  *(a3 + 224) = v143;
  *(a3 + 232) = v127;
  v128 = v140;
  *(a3 + 240) = v141;
  *(a3 + 248) = v128;
  *(a3 + 256) = v75;
  *(a3 + 264) = v76;
  result = v139;
  *(a3 + 272) = v139;
  *(a3 + 280) = v77;
  v130 = v138;
  *(a3 + 288) = v161;
  *(a3 + 296) = v130;
  *(a3 + 304) = v166;
  *(a3 + 312) = v106;
  *(a3 + 320) = v114;
  return result;
}

uint64_t sub_1D77C1264()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1D77C12C8(uint64_t a1)
{
  sub_1D776F504(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1D77C1370(uint64_t a1, void *a2)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE09C268;
  v4 = sub_1D78B6094();
  sub_1D774FE1C(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D78BCB50;
  v6 = [a2 identifier];
  v7 = sub_1D78B5C74();
  v9 = v8;

  v10 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1D775ABD4();
  *(v5 + 64) = v11;
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  sub_1D78B6504();
  *(v5 + 96) = v10;
  *(v5 + 104) = v11;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0xE000000000000000;
  sub_1D78B42C4("SubscriptionOffersRenderer failed to obtain publisher logo for tagID: %{public}@ with error: %{public}@", 103, 2, &dword_1D7739000, v3, v4, v5);

  return result;
}

uint64_t sub_1D77C14E0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1D77C1580@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ColorPalette();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_1F5271630;
  *a1 = result;
  return result;
}

void *sub_1D77C15C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773C9B8(0, &qword_1EE095CE8, &protocol descriptor for ColorPaletteProviding);
  result = sub_1D78B39F4();
  if (v7)
  {
    v4 = type metadata accessor for BaseStyler();
    v5 = swift_allocObject();
    result = sub_1D7741E34(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_1F5268528;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PaywallModel.tag.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 <= 3)
  {
    if (*(v0 + 16) > 1u)
    {
      return swift_unknownObjectRetain();
    }

    if (!*(v0 + 16))
    {
      goto LABEL_8;
    }

    v5 = [v1 sourceChannel];
  }

  else
  {
    if (*(v0 + 16) > 5u)
    {
      if (v3 == 6 || v3 == 7)
      {
        return swift_unknownObjectRetain();
      }

LABEL_8:
      swift_unknownObjectRetain();
      return v2;
    }

    if (v3 == 4)
    {
      return swift_unknownObjectRetain();
    }

    v5 = [v1 puzzleType];
  }

  return v5;
}

uint64_t PaywallModel.purchaseIDs.getter()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 200);
  v18[10] = *(v0 + 184);
  v18[11] = v2;
  v19 = *(v0 + 216);
  v3 = *(v0 + 104);
  v4 = *(v0 + 136);
  v18[6] = *(v0 + 120);
  v18[7] = v4;
  v18[8] = *(v0 + 152);
  v18[9] = v1;
  v5 = *(v0 + 40);
  v6 = *(v0 + 72);
  v18[2] = *(v0 + 56);
  v18[3] = v6;
  v18[4] = *(v0 + 88);
  v18[5] = v3;
  v18[0] = *(v0 + 24);
  v18[1] = v5;
  v7 = sub_1D77C19C8(v18);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      nullsub_1();
      v12 = *v10;
      v11 = v10[1];
      sub_1D7777D44(0, &qword_1EE08FA50, MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D78BCAB0;
      *(v9 + 32) = v12;
      *(v9 + 40) = v11;

      return v9;
    }

    nullsub_1();
    v16 = Offer.purchaseID()();
    if (v16.value._object)
    {
      sub_1D7777D44(0, &qword_1EE08FA50, MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D78BCAB0;
      *(v9 + 32) = v16;
      return v9;
    }

    return 0;
  }

  if (v7)
  {
    nullsub_1();
    v14 = v13[1];
    if (v14)
    {
      v15 = *v13;
      sub_1D7777D44(0, &qword_1EE08FA50, MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D78BCAB0;
      *(v9 + 32) = v15;
      *(v9 + 40) = v14;
      nullsub_1();

      return v9;
    }

    return 0;
  }

  nullsub_1();
  v9 = *v8;

  return v9;
}

double sub_1D77C19D0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    v3 = 0xEB00000000646565;
    v4 = 0x466C656E6E616863;
    if (a3 == 2)
    {
      v4 = 0x6565466F69647561;
      v3 = 0xE900000000000064;
    }

    v7 = 0xE700000000000000;
    v8 = 0x656C6369747261;
    if (a3)
    {
      v8 = 0x6664506575737369;
      v7 = 0xE800000000000000;
    }

    v9 = a3 <= 1u;
  }

  else
  {
    v3 = 0xED00006461656874;
    v4 = 0x73614D7961646F74;
    v5 = 0xE800000000000000;
    v6 = 0x64656546646F6F66;
    if (a3 != 7)
    {
      v6 = 0x657069636572;
      v5 = 0xE600000000000000;
    }

    if (a3 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0xEC00000064656546;
    v8 = 0x656E697A6167616DLL;
    if (a3 != 4)
    {
      v8 = 0x656C7A7A7570;
      v7 = 0xE600000000000000;
    }

    v9 = a3 <= 5u;
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v9)
  {
    v11 = v7;
  }

  else
  {
    v11 = v3;
  }

  MEMORY[0x1DA702FF0](v10, v11);

  return result;
}

uint64_t PurchaseModel.description.getter()
{
  v1 = *(v0 + 176);
  v9[10] = *(v0 + 160);
  v9[11] = v1;
  v10 = *(v0 + 192);
  v2 = *(v0 + 112);
  v9[6] = *(v0 + 96);
  v9[7] = v2;
  v3 = *(v0 + 144);
  v9[8] = *(v0 + 128);
  v9[9] = v3;
  v4 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v4;
  v5 = *(v0 + 80);
  v9[4] = *(v0 + 64);
  v9[5] = v5;
  v6 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v6;
  v7 = sub_1D77C19C8(v9);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      nullsub_1();
      return 0x7365636976726573;
    }

    else
    {
      nullsub_1();
      return 0xD000000000000011;
    }
  }

  else if (v7)
  {
    nullsub_1();
    return 0x6574726163616C61;
  }

  else
  {
    nullsub_1();
    return 0x656C646E7562;
  }
}

uint64_t sub_1D77C1C24()
{
  v1 = *(v0 + 176);
  v9[10] = *(v0 + 160);
  v9[11] = v1;
  v10 = *(v0 + 192);
  v2 = *(v0 + 112);
  v9[6] = *(v0 + 96);
  v9[7] = v2;
  v3 = *(v0 + 144);
  v9[8] = *(v0 + 128);
  v9[9] = v3;
  v4 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v4;
  v5 = *(v0 + 80);
  v9[4] = *(v0 + 64);
  v9[5] = v5;
  v6 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v6;
  v7 = sub_1D77C19C8(v9);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      nullsub_1();
      return 0x7365636976726573;
    }

    else
    {
      nullsub_1();
      return 0xD000000000000011;
    }
  }

  else if (v7)
  {
    nullsub_1();
    return 0x6574726163616C61;
  }

  else
  {
    nullsub_1();
    return 0x656C646E7562;
  }
}

id sub_1D77C1D1C()
{
  v1 = *v0;
  if (*(v0 + 16) <= 3u)
  {
    if (*(v0 + 16) > 1u || !*(v0 + 16))
    {
      return swift_unknownObjectRetain();
    }

    v3 = [v1 sourceChannel];
  }

  else
  {
    if (*(v0 + 16) > 5u || *(v0 + 16) == 4)
    {
      return swift_unknownObjectRetain();
    }

    v3 = [v1 puzzleType];
  }

  return v3;
}

uint64_t PaywallHostModel.description.getter()
{
  v1 = *(v0 + 16);
  if (v1 <= 3)
  {
    v2 = 0x466C656E6E616863;
    if (v1 == 2)
    {
      v2 = 0x6565466F69647561;
    }

    v4 = 0x656C6369747261;
    if (*(v0 + 16))
    {
      v4 = 0x6664506575737369;
    }

    v5 = *(v0 + 16) <= 1u;
  }

  else
  {
    v2 = 0x73614D7961646F74;
    v3 = 0x64656546646F6F66;
    if (v1 != 7)
    {
      v3 = 0x657069636572;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x656E697A6167616DLL;
    if (v1 != 4)
    {
      v4 = 0x656C7A7A7570;
    }

    v5 = *(v0 + 16) <= 5u;
  }

  if (v5)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

id PaywallModel.hostModel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1D77C1F0C(v2, v3, v4);
}

id sub_1D77C1F0C(id result, void *a2, unsigned __int8 a3)
{
  if (a3 > 3u)
  {
    if (a3 <= 5u)
    {
      if (a3 != 4 && a3 != 5)
      {
        return result;
      }
    }

    else if (a3 != 6 && a3 != 7)
    {
      if (a3 != 8)
      {
        return result;
      }

      v3 = result;
    }

    goto LABEL_19;
  }

  if (a3 > 1u)
  {
    if (a3 != 2 && a3 != 3)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (!a3)
  {
    swift_unknownObjectRetain();
LABEL_19:

    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t PaywallModel.purchaseModel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 200);
  v16[10] = *(v1 + 184);
  v16[11] = v3;
  v17 = *(v1 + 216);
  v4 = *(v1 + 104);
  v5 = *(v1 + 136);
  v16[6] = *(v1 + 120);
  v16[7] = v5;
  v16[8] = *(v1 + 152);
  v16[9] = v2;
  v6 = *(v1 + 40);
  v7 = *(v1 + 72);
  v16[2] = *(v1 + 56);
  v16[3] = v7;
  v16[4] = *(v1 + 88);
  v16[5] = v4;
  v16[0] = *(v1 + 24);
  v16[1] = v6;
  v8 = *(v1 + 168);
  v9 = *(v1 + 200);
  *(a1 + 160) = *(v1 + 184);
  *(a1 + 176) = v9;
  *(a1 + 192) = *(v1 + 216);
  v10 = *(v1 + 104);
  v11 = *(v1 + 136);
  *(a1 + 96) = *(v1 + 120);
  *(a1 + 112) = v11;
  *(a1 + 128) = *(v1 + 152);
  *(a1 + 144) = v8;
  v12 = *(v1 + 40);
  v13 = *(v1 + 72);
  *(a1 + 32) = *(v1 + 56);
  *(a1 + 48) = v13;
  *(a1 + 64) = *(v1 + 88);
  *(a1 + 80) = v10;
  *a1 = *(v1 + 24);
  *(a1 + 16) = v12;
  return sub_1D77C20B0(v16, v15);
}

__n128 PaywallModel.init(hostModel:purchaseModel:paywallType:softPaywallPosition:fcPaywallType:contentType:paywallSubtype:availableInAppPurchaseIdentifiers:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = *a1;
  v9 = a2[8];
  *(a9 + 168) = a2[9];
  v10 = a2[11];
  *(a9 + 184) = a2[10];
  *(a9 + 200) = v10;
  v11 = a2[4];
  *(a9 + 104) = a2[5];
  v12 = a2[7];
  *(a9 + 120) = a2[6];
  *(a9 + 136) = v12;
  *(a9 + 152) = v9;
  v13 = *a2;
  *(a9 + 40) = a2[1];
  result = a2[2];
  v15 = a2[3];
  *(a9 + 56) = result;
  *(a9 + 72) = v15;
  *(a9 + 88) = v11;
  v16 = *a4;
  v17 = *a6;
  v18 = *a7;
  *(a9 + 16) = *(a1 + 16);
  *(a9 + 216) = *(a2 + 192);
  *(a9 + 24) = v13;
  *(a9 + 242) = v16;
  *(a9 + 224) = a3;
  *(a9 + 232) = a5;
  *(a9 + 241) = v17;
  *(a9 + 240) = v18;
  *(a9 + 248) = a8;
  return result;
}

uint64_t PaywallModel.purchaseID.getter()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 200);
  v19[10] = *(v0 + 184);
  v19[11] = v2;
  v20 = *(v0 + 216);
  v3 = *(v0 + 104);
  v4 = *(v0 + 136);
  v19[6] = *(v0 + 120);
  v19[7] = v4;
  v19[8] = *(v0 + 152);
  v19[9] = v1;
  v5 = *(v0 + 40);
  v6 = *(v0 + 72);
  v19[2] = *(v0 + 56);
  v19[3] = v6;
  v19[4] = *(v0 + 88);
  v19[5] = v3;
  v19[0] = *(v0 + 24);
  v19[1] = v5;
  v7 = sub_1D77C19C8(v19);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      nullsub_1();
      v13 = *v11;
      v12 = v11[1];
      sub_1D7777D44(0, &qword_1EE08FA50, MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D78BCAB0;
      *(v9 + 32) = v13;
      *(v9 + 40) = v12;
LABEL_9:

      goto LABEL_12;
    }

    nullsub_1();
    v17 = Offer.purchaseID()();
    if (v17.value._object)
    {
      sub_1D7777D44(0, &qword_1EE08FA50, MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D78BCAB0;
      *(v9 + 32) = v17;
      goto LABEL_12;
    }

    return 0;
  }

  if (v7)
  {
    nullsub_1();
    v15 = v14[1];
    if (v15)
    {
      v16 = *v14;
      sub_1D7777D44(0, &qword_1EE08FA50, MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D78BCAB0;
      *(v9 + 32) = v16;
      *(v9 + 40) = v15;
      nullsub_1();
      goto LABEL_9;
    }

    return 0;
  }

  nullsub_1();
  v9 = *v8;
  v10 = *(*v8 + 16);

  if (v10)
  {
LABEL_12:
    v10 = *(v9 + 32);

    return v10;
  }

  return v10;
}

uint64_t PaywallModel.headline.getter()
{
  if (*(v0 + 16))
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void PaywallModel.buyParams.getter()
{
  v1 = type metadata accessor for OfferAction(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 168);
  v7 = *(v0 + 200);
  v58 = *(v0 + 184);
  v59 = v7;
  v60 = *(v0 + 216);
  v8 = *(v0 + 104);
  v9 = *(v0 + 136);
  v54 = *(v0 + 120);
  v55 = v9;
  v56 = *(v0 + 152);
  v57 = v6;
  v10 = *(v0 + 40);
  v11 = *(v0 + 72);
  v50 = *(v0 + 56);
  v51 = v11;
  v52 = *(v0 + 88);
  v53 = v8;
  v48 = *(v0 + 24);
  v49 = v10;
  v12 = *(v0 + 168);
  v13 = *(v0 + 200);
  v61[10] = *(v0 + 184);
  v61[11] = v13;
  v62 = *(v0 + 216);
  v14 = *(v0 + 104);
  v15 = *(v0 + 136);
  v61[6] = *(v0 + 120);
  v61[7] = v15;
  v61[8] = *(v0 + 152);
  v61[9] = v12;
  v16 = *(v0 + 40);
  v17 = *(v0 + 72);
  v61[2] = *(v0 + 56);
  v61[3] = v17;
  v61[4] = *(v0 + 88);
  v61[5] = v14;
  v61[0] = *(v0 + 24);
  v61[1] = v16;
  v18 = sub_1D77C19C8(v61);
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      nullsub_1();
      v20 = v19;
      v37 = v50;
      v38 = v51;
      v35 = v48;
      v36 = v49;
      v41 = v54;
      v42 = v55;
      v39 = v52;
      v40 = v53;
      v47 = v60;
      v45 = v58;
      v46 = v59;
      v43 = v56;
      v44 = v57;
      nullsub_1();
      sub_1D77C3348(v21, v34, sub_1D77C33E0);
      sub_1D778D0B0(v20 + 24);
    }

    else
    {
      nullsub_1();
      v23 = *(v22 + 32);
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = v23 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
        v45 = v58;
        v46 = v59;
        v47 = v60;
        v41 = v54;
        v42 = v55;
        v43 = v56;
        v44 = v57;
        v37 = v50;
        v38 = v51;
        v39 = v52;
        v40 = v53;
        v35 = v48;
        v36 = v49;
        nullsub_1();
        sub_1D77C3348(v26, v34, sub_1D77C3318);
        v27 = 0;
        while (v27 < *(v23 + 16))
        {
          sub_1D77C3348(v25 + *(v2 + 72) * v27, v5, type metadata accessor for OfferAction);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload == 1)
            {
              sub_1D77826E8(0);

              v31 = sub_1D78B3294();
              (*(*(v31 - 8) + 8))(v5, v31);
            }
          }

          else
          {
            v28 = *(v5 + 2);
            v29 = *(v5 + 10);
            v32[1] = *(v5 + 6);
            v32[2] = v29;
            v33 = v5[90];

            if ((v33 - 1) < 2)
            {
              sub_1D77C33B0(&v48);
              return;
            }
          }

          if (v24 == ++v27)
          {
            sub_1D77C33B0(&v48);
            return;
          }
        }

        __break(1u);
      }
    }
  }

  else
  {
    nullsub_1();
  }
}

__n128 PaywallModel.offer.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 168);
  v4 = *(v1 + 200);
  v85[10] = *(v1 + 184);
  v85[11] = v4;
  v86 = *(v1 + 216);
  v5 = *(v1 + 104);
  v6 = *(v1 + 136);
  v85[6] = *(v1 + 120);
  v85[7] = v6;
  v85[8] = *(v1 + 152);
  v85[9] = v3;
  v7 = *(v1 + 40);
  v8 = *(v1 + 72);
  v85[2] = *(v1 + 56);
  v85[3] = v8;
  v85[4] = *(v1 + 88);
  v85[5] = v5;
  v85[0] = *(v1 + 24);
  v85[1] = v7;
  v9 = sub_1D77C19C8(v85);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      nullsub_1();
      v33 = v32;
      v34 = *(v32 + 16);
      v35 = *(v1 + 24);
      v36 = *(v1 + 88);
      v37 = *(v1 + 72);
      v69 = *(v1 + 56);
      *v70 = v37;
      v38 = *(v1 + 40);
      v67 = v35;
      v68 = v38;
      v39 = *(v1 + 152);
      v40 = *(v1 + 136);
      v72 = *(v1 + 120);
      v73 = v40;
      v41 = *(v1 + 104);
      *&v70[16] = v36;
      v71 = v41;
      v78 = *(v1 + 216);
      v42 = *(v1 + 200);
      v76 = *(v1 + 184);
      v77 = v42;
      v43 = *(v1 + 168);
      v74 = v39;
      v75 = v43;
      nullsub_1();
      sub_1D77C3348(v44, v66, sub_1D77C33E0);

      v22 = *(v33 + 96);
      v23 = *(v33 + 72);
      v24 = *(v33 + 80);
      v25 = *(v33 + 64);
      v26 = *(v33 + 56);
      v27 = *(v33 + 40);
      v28 = *(v33 + 24);
      v45 = *(v33 + 152);
      v81 = *(v33 + 136);
      v82 = v45;
      v83 = *(v33 + 168);
      v84 = *(v33 + 184);
      v30 = *(v33 + 104);
      v31 = *(v33 + 120);
    }

    else
    {
      nullsub_1();
      v47 = v46;
      v22 = *(v46 + 9);
      v23 = *(v46 + 48);
      v25 = *(v46 + 40);
      v26 = *(v46 + 4);
      v64 = v46[1];
      v65 = *(v46 + 56);
      v63 = *v46;
      v48 = *(v1 + 88);
      v49 = *(v1 + 152);
      v50 = *(v1 + 136);
      v72 = *(v1 + 120);
      v73 = v50;
      v51 = *(v1 + 104);
      *&v70[16] = v48;
      v71 = v51;
      v78 = *(v1 + 216);
      v52 = *(v1 + 200);
      v76 = *(v1 + 184);
      v77 = v52;
      v53 = *(v1 + 72);
      v69 = *(v1 + 56);
      *v70 = v53;
      v54 = *(v1 + 40);
      v55 = *(v1 + 168);
      v74 = v49;
      v75 = v55;
      v67 = *(v1 + 24);
      v68 = v54;
      nullsub_1();
      sub_1D77C3348(v56, v66, sub_1D77C3318);
      v28 = v63;
      v27 = v64;
      v24 = v65;
      v57 = v47[8];
      v81 = v47[7];
      v82 = v57;
      v83 = v47[9];
      v84 = *(v47 + 20);
      v30 = v47[5];
      v31 = v47[6];
    }

    goto LABEL_8;
  }

  if (!v9)
  {
    nullsub_1();
    v11 = v10;
    v12 = *(v1 + 24);
    v13 = *(v1 + 88);
    v14 = *(v1 + 72);
    v69 = *(v1 + 56);
    *v70 = v14;
    v15 = *(v1 + 40);
    v67 = v12;
    v68 = v15;
    v16 = *(v1 + 152);
    v17 = *(v1 + 136);
    v72 = *(v1 + 120);
    v73 = v17;
    v18 = *(v1 + 104);
    *&v70[16] = v13;
    v71 = v18;
    v78 = *(v1 + 216);
    v19 = *(v1 + 200);
    v76 = *(v1 + 184);
    v77 = v19;
    v20 = *(v1 + 168);
    v74 = v16;
    v75 = v20;
    nullsub_1();
    sub_1D77C3348(v21, v66, sub_1D77C34F8);

    v22 = *(v11 + 88);
    v23 = *(v11 + 64);
    v24 = *(v11 + 72);
    v25 = *(v11 + 56);
    v26 = *(v11 + 48);
    v28 = *(v11 + 16);
    v27 = *(v11 + 32);
    v29 = *(v11 + 144);
    v81 = *(v11 + 128);
    v82 = v29;
    v83 = *(v11 + 160);
    v84 = *(v11 + 176);
    v30 = *(v11 + 96);
    v31 = *(v11 + 112);
LABEL_8:
    v79 = v30;
    v80 = v31;
    v67 = v28;
    v68 = v27;
    *&v69 = v26;
    BYTE8(v69) = v25;
    v70[0] = v23;
    *&v70[8] = v24;
    *&v70[24] = v22;
    v73 = v81;
    v74 = v82;
    v75 = v83;
    *&v76 = v84;
    v71 = v30;
    v72 = v31;
    nullsub_1();
    goto LABEL_9;
  }

  nullsub_1();
  sub_1D775F3AC(&v67);
LABEL_9:
  v58 = v75;
  *(a1 + 128) = v74;
  *(a1 + 144) = v58;
  *(a1 + 160) = v76;
  v59 = v71;
  *(a1 + 64) = *&v70[16];
  *(a1 + 80) = v59;
  v60 = v73;
  *(a1 + 96) = v72;
  *(a1 + 112) = v60;
  v61 = v68;
  *a1 = v67;
  *(a1 + 16) = v61;
  result = *v70;
  *(a1 + 32) = v69;
  *(a1 + 48) = result;
  return result;
}

uint64_t PaywallModel.paywallHostType.getter@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  if (v3 > 3)
  {
    if (*(v1 + 16) <= 5u)
    {
      if (v3 == 4)
      {
        *a1 = 2;
        *(a1 + 8) = 2;
        return result;
      }

      v4 = 4;
    }

    else if (v3 == 6)
    {
      v4 = 5;
    }

    else
    {
      if (v3 == 7)
      {
        *a1 = result;
        *(a1 + 8) = 1;
        return swift_unknownObjectRetain();
      }

      v4 = 6;
    }

    goto LABEL_19;
  }

  if (*(v1 + 16) > 1u)
  {
    if (v3 != 2)
    {
      *a1 = result;
      *(a1 + 8) = 0;
      return swift_unknownObjectRetain();
    }

    v4 = 3;
    goto LABEL_19;
  }

  if (*(v1 + 16))
  {
    v4 = 1;
LABEL_19:
    *a1 = v4;
    goto LABEL_20;
  }

  *a1 = 0;
LABEL_20:
  *(a1 + 8) = 2;
  return result;
}

uint64_t PaywallModel.paywallHostDescription.getter()
{
  v1 = *(v0 + 16);
  if (v1 <= 3)
  {
    v2 = 0x466C656E6E616863;
    if (v1 == 2)
    {
      v2 = 0x6565466F69647561;
    }

    v4 = 0x656C6369747261;
    if (*(v0 + 16))
    {
      v4 = 0x6664506575737369;
    }

    v5 = *(v0 + 16) <= 1u;
  }

  else
  {
    v2 = 0x73614D7961646F74;
    v3 = 0x64656546646F6F66;
    if (v1 != 7)
    {
      v3 = 0x657069636572;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x656E697A6167616DLL;
    if (v1 != 4)
    {
      v4 = 0x656C7A7A7570;
    }

    v5 = *(v0 + 16) <= 5u;
  }

  if (v5)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t PaywallModel.purchaseType.getter()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 200);
  v12[10] = *(v0 + 184);
  v12[11] = v2;
  v13 = *(v0 + 216);
  v3 = *(v0 + 104);
  v4 = *(v0 + 136);
  v12[6] = *(v0 + 120);
  v12[7] = v4;
  v12[8] = *(v0 + 152);
  v12[9] = v1;
  v5 = *(v0 + 40);
  v6 = *(v0 + 72);
  v12[2] = *(v0 + 56);
  v12[3] = v6;
  v12[4] = *(v0 + 88);
  v12[5] = v3;
  v12[0] = *(v0 + 24);
  v12[1] = v5;
  v7 = sub_1D77C19C8(v12);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      nullsub_1();
      if (v10[14])
      {
        if (v10[19] == 0xD000000000000019 && 0x80000001D78CF0C0 == v10[20])
        {
          return 3;
        }

        v11 = sub_1D78B6724();
      }

      else
      {
        v11 = AMSMarketingItem.isCIPOffer()();
      }

      if (v11)
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      nullsub_1();
      return 5;
    }
  }

  else if (v7)
  {
    nullsub_1();
    return 0;
  }

  else
  {
    nullsub_1();
    if (*(v8 + 8))
    {
      return 4;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t PaywallModel.conversionLocation.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2 > 3)
  {
    if (v2 == 7)
    {
      v3 = 16;
    }

    else
    {
      v3 = 17;
    }

    if (v2 == 6)
    {
      v4 = 15;
    }

    else
    {
      v4 = v3;
    }

    if (v2 == 4)
    {
      v5 = 10;
    }

    else
    {
      v5 = 14;
    }

    if (*(v1 + 16) <= 5u)
    {
      LOBYTE(v6) = v5;
    }

    else
    {
      LOBYTE(v6) = v4;
    }

    goto LABEL_22;
  }

  if (*(v1 + 16) > 1u)
  {
    if (v2 == 2)
    {
      LOBYTE(v6) = 12;
    }

    else
    {
      LOBYTE(v6) = 2;
    }

    goto LABEL_22;
  }

  if (*(v1 + 16))
  {
    LOBYTE(v6) = 13;
    goto LABEL_22;
  }

  v7 = *(v1 + 224);
  if (v7 < 3)
  {
    v6 = 0x10301u >> (8 * v7);
LABEL_22:
    *a1 = v6;
    return result;
  }

  result = sub_1D78B6764();
  __break(1u);
  return result;
}

uint64_t PaywallModel.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 224);
  v5 = *(v0 + 240);
  v6 = *(v0 + 241);
  *&v21[0] = 0;
  *(&v21[0] + 1) = 0xE000000000000000;
  sub_1D78B6454();
  MEMORY[0x1DA702FF0](0xD00000000000001BLL, 0x80000001D78D3580);
  v7 = *(v0 + 184);
  v21[9] = *(v0 + 168);
  v21[10] = v7;
  v21[11] = *(v0 + 200);
  v22 = *(v0 + 216);
  v8 = *(v0 + 120);
  v21[5] = *(v0 + 104);
  v21[6] = v8;
  v9 = *(v0 + 152);
  v21[7] = *(v0 + 136);
  v21[8] = v9;
  v10 = *(v0 + 40);
  v11 = *(v0 + 72);
  v21[2] = *(v0 + 56);
  v21[3] = v11;
  v21[4] = *(v0 + 88);
  v21[0] = *(v0 + 24);
  v21[1] = v10;
  v12 = sub_1D77C19C8(v21);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      nullsub_1();
      v13 = 0xEE00656C646E7542;
      v14 = 0x7365636976726573;
    }

    else
    {
      nullsub_1();
      v13 = 0x80000001D78D3510;
      v14 = 0xD000000000000011;
    }
  }

  else if (v12)
  {
    nullsub_1();
    v13 = 0xE800000000000000;
    v14 = 0x6574726163616C61;
  }

  else
  {
    nullsub_1();
    v13 = 0xE600000000000000;
    v14 = 0x656C646E7562;
  }

  MEMORY[0x1DA702FF0](v14, v13);

  MEMORY[0x1DA702FF0](0x6C6177796150202CLL, 0xEF3D65707954206CLL);
  if (v4 >= 3)
  {
    result = sub_1D78B6764();
    __break(1u);
  }

  else
  {
    MEMORY[0x1DA702FF0](*&aNone_3[8 * v4], 0xE400000000000000);

    MEMORY[0x1DA702FF0](0xD000000000000012, 0x80000001D78D35A0);
    if (v5)
    {
      v15 = 0x646572616873;
    }

    else
    {
      v15 = 0x647261646E617473;
    }

    if (v5)
    {
      v16 = 0xE600000000000000;
    }

    else
    {
      v16 = 0xE800000000000000;
    }

    MEMORY[0x1DA702FF0](v15, v16);

    MEMORY[0x1DA702FF0](0xD000000000000015, 0x80000001D78D35C0);
    if (v6)
    {
      if (v6 == 1)
      {
        v17 = 0xE500000000000000;
        v18 = 0x6F69647541;
      }

      else
      {
        v17 = 0xE900000000000072;
        v18 = 0x657061707377654ELL;
      }
    }

    else
    {
      v17 = 0xE700000000000000;
      v18 = 0x746C7561666544;
    }

    MEMORY[0x1DA702FF0](v18, v17);

    MEMORY[0x1DA702FF0](0xD000000000000013, 0x80000001D78D35E0);
    v19 = sub_1D77C19D0(v1, v2, v3);
    MEMORY[0x1DA702FF0](41, 0xE100000000000000, v19);
    return 0;
  }

  return result;
}

ValueMetadata *sub_1D77C3318()
{
  result = qword_1EE08E658[0];
  if (!qword_1EE08E658[0])
  {
    result = &type metadata for Offer;
    atomic_store(&type metadata for Offer, qword_1EE08E658);
  }

  return result;
}

uint64_t sub_1D77C3348(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D77C33E0(uint64_t a1)
{
  if (!qword_1EC9CADD0)
  {
    sub_1D77C3454(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC9CADD0);
    }
  }
}

void sub_1D77C3454(uint64_t a1)
{
  if (!qword_1EC9CA140)
  {
    sub_1D77C34AC();
    v1 = sub_1D78B62A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CA140);
    }
  }
}

unint64_t sub_1D77C34AC()
{
  result = qword_1EE08FEE0;
  if (!qword_1EE08FEE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FEE0);
  }

  return result;
}

void sub_1D77C34F8(uint64_t a1)
{
  if (!qword_1EE090020)
  {
    sub_1D7777D44(255, &qword_1EE090010, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE090020);
    }
  }
}

__n128 __swift_memcpy193_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1D77C35D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 193))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 192);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D77C3620(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 184) = 0;
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
    *(result + 192) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 193) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 193) = 0;
    }

    if (a2)
    {
      *(result + 192) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D77C36B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1D77C3700(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D77C3754(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D77C3788(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 17))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 16);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D77C37D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
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

__n128 __swift_memcpy256_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_1D77C3870(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 248);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D77C38CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1D77D98B4(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D77D98B4((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1D778D0A0(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1D77C39CC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D78B6534();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v18 = MEMORY[0x1E69E7CC0];
  result = sub_1D77D98D4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v18;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      v6 = MEMORY[0x1E69D6CF8];
      do
      {
        v7 = MEMORY[0x1DA703700](v5, a1);
        v18 = v3;
        v9 = *(v3 + 16);
        v8 = *(v3 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1D77D98D4((v8 > 1), v9 + 1, 1);
          v3 = v18;
        }

        ++v5;
        v16 = sub_1D78B3524();
        v17 = v6;
        *&v15 = v7;
        *(v3 + 16) = v9 + 1;
        sub_1D7741E34(&v15, v3 + 40 * v9 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v10 = (a1 + 32);
      v11 = MEMORY[0x1E69D6CF8];
      do
      {
        v12 = *v10;
        v18 = v3;
        v13 = *(v3 + 16);
        v14 = *(v3 + 24);

        if (v13 >= v14 >> 1)
        {
          sub_1D77D98D4((v14 > 1), v13 + 1, 1);
          v3 = v18;
        }

        v16 = sub_1D78B3524();
        v17 = v11;
        *&v15 = v12;
        *(v3 + 16) = v13 + 1;
        sub_1D7741E34(&v15, v3 + 40 * v13 + 32);
        ++v10;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_1D77C3B84()
{
  sub_1D77C4DD4(0, &qword_1EC9CA148, MEMORY[0x1E69D6E78], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v100 = &v92 - v2;
  v3 = MEMORY[0x1E69D6E30];
  sub_1D77C4E9C(0, &qword_1EC9CA150, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6E30]);
  v97 = *(v4 - 8);
  v98 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v96 = &v92 - v6;
  v7 = MEMORY[0x1E69E6370];
  v8 = MEMORY[0x1E69D6EF0];
  sub_1D77C4E9C(0, &qword_1EC9CA158, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], v3);
  v104 = v9;
  v102 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9, v10);
  v101 = &v92 - v11;
  v12 = sub_1D78B3604();
  v94 = *(v12 - 8);
  v95 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D78B3674();
  v17 = *(v16 - 8);
  v109 = v16;
  v110 = v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v105 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v103 = &v92 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v99 = &v92 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v106 = &v92 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v108 = &v92 - v32;
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v92 - v34;
  v93 = "roupProvider";
  v92 = "dising Item Keys";
  sub_1D77C4DD4(0, &qword_1EC9CA160, sub_1D77C4E38, MEMORY[0x1E69E6F90]);
  v37 = v36;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1D78BCAB0;
  sub_1D77C4E9C(0, &qword_1EC9CA170, v7, v8, MEMORY[0x1E69D6E50]);
  v40 = v39;
  if (qword_1EC9C85D8 != -1)
  {
    swift_once();
  }

  sub_1D775BF98(0, &qword_1EE08FA00, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v42 = v41;
  v43 = swift_allocObject();
  v111 = xmmword_1D78C0D70;
  *(v43 + 16) = xmmword_1D78C0D70;
  v44 = sub_1D78B35E4();

  v107 = v44;
  *(v43 + 32) = sub_1D78B3614();
  (*(v94 + 13))(v15, *MEMORY[0x1E69D6D78], v95);
  v45 = *(v102 + 104);
  LODWORD(v102) = *MEMORY[0x1E69D6E28];
  v45(v101);
  v46 = sub_1D78B3654();
  *(v38 + 56) = v40;
  *(v38 + 64) = sub_1D77C4EF0(&qword_1EC9CA178, &qword_1EC9CA170, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  *(v38 + 32) = v46;
  v104 = v35;
  sub_1D78B3664();
  v95 = v37;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1D78BCB50;
  sub_1D77C4E9C(0, &qword_1EC9CA180, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6E50]);
  v101 = v48;
  if (qword_1EC9C85E0 != -1)
  {
    swift_once();
  }

  v93 = "g Item Keys Override";
  v94 = "AMS Marketing Item";
  v49 = swift_allocObject();
  *(v49 + 16) = v111;

  *(v49 + 32) = sub_1D78B3614();
  v50 = v96;
  v51 = *(v97 + 104);
  v52 = v98;
  v51(v96, v102, v98);
  v53 = v101;
  v54 = sub_1D78B3644();
  *(v47 + 56) = v53;
  v55 = sub_1D77C4EF0(&qword_1EC9CA188, &qword_1EC9CA180, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0]);
  *(v47 + 64) = v55;
  *(v47 + 32) = v54;
  if (qword_1EC9C85E8 != -1)
  {
    swift_once();
  }

  v56 = swift_allocObject();
  v97 = v42;
  v57 = v56;
  *(v56 + 16) = v111;

  *(v57 + 32) = sub_1D78B3614();
  v51(v50, v102, v52);
  v58 = v101;
  v59 = sub_1D78B3644();
  *(v47 + 96) = v58;
  *(v47 + 104) = v55;
  *(v47 + 72) = v59;
  sub_1D78B3664();
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1D78C0D80;
  if (qword_1EC9C8500 != -1)
  {
    swift_once();
  }

  v61 = swift_allocObject();
  *(v61 + 16) = v111;

  *(v61 + 32) = sub_1D78B3614();
  v62 = sub_1D78B3524();
  swift_allocObject();
  v63 = sub_1D78B3534();
  v64 = MEMORY[0x1E69D6CF8];
  *(v60 + 56) = v62;
  *(v60 + 64) = v64;
  *(v60 + 32) = v63;
  if (qword_1EC9C8508 != -1)
  {
    swift_once();
  }

  v65 = swift_allocObject();
  *(v65 + 16) = v111;

  *(v65 + 32) = sub_1D78B3614();
  swift_allocObject();
  v66 = sub_1D78B3534();
  *(v60 + 96) = v62;
  *(v60 + 104) = v64;
  *(v60 + 72) = v66;
  if (qword_1EC9C8510 != -1)
  {
    swift_once();
  }

  v67 = swift_allocObject();
  *(v67 + 16) = v111;

  *(v67 + 32) = sub_1D78B3614();
  swift_allocObject();
  v68 = sub_1D78B3534();
  *(v60 + 136) = v62;
  *(v60 + 144) = v64;
  *(v60 + 112) = v68;
  if (qword_1EC9C8518 != -1)
  {
    swift_once();
  }

  v69 = swift_allocObject();
  *(v69 + 16) = v111;

  *(v69 + 32) = sub_1D78B3614();
  swift_allocObject();
  v70 = sub_1D78B3534();
  *(v60 + 176) = v62;
  *(v60 + 184) = v64;
  *(v60 + 152) = v70;
  if (qword_1EC9C8520 != -1)
  {
    swift_once();
  }

  v71 = swift_allocObject();
  *(v71 + 16) = v111;

  *(v71 + 32) = sub_1D78B3614();
  swift_allocObject();
  v72 = sub_1D78B3534();
  *(v60 + 216) = v62;
  *(v60 + 224) = v64;
  *(v60 + 192) = v72;
  sub_1D78B3664();
  v73 = v99;
  *&v111 = *(v110 + 16);
  (v111)(v99, v104, v109);
  v74 = sub_1D777AE38(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v76 = *(v74 + 2);
  v75 = *(v74 + 3);
  v77 = v76 + 1;
  if (v76 >= v75 >> 1)
  {
    v74 = sub_1D777AE38((v75 > 1), v76 + 1, 1, v74);
  }

  v78 = v100;
  *(v74 + 2) = v77;
  v79 = *(v110 + 32);
  v80 = (*(v110 + 80) + 32) & ~*(v110 + 80);
  v81 = *(v110 + 72);
  v82 = v73;
  v83 = v109;
  v79(&v74[v80 + v81 * v76], v82, v109);
  (v111)(v103, v108, v83);
  v84 = *(v74 + 3);
  v85 = v76 + 2;
  if (v85 > (v84 >> 1))
  {
    v74 = sub_1D777AE38((v84 > 1), v85, 1, v74);
  }

  *(v74 + 2) = v85;
  v86 = v109;
  v79(&v74[v80 + v81 * v77], v103, v109);
  sub_1D77C49CC(v78);
  v87 = *(v110 + 48);
  if (v87(v78, 1, v86) == 1)
  {
    (v111)(v105, v106, v86);
    if (v87(v78, 1, v86) != 1)
    {
      sub_1D77C4F54(v78);
    }
  }

  else
  {
    v79(v105, v78, v86);
  }

  v89 = *(v74 + 2);
  v88 = *(v74 + 3);
  if (v89 >= v88 >> 1)
  {
    v74 = sub_1D777AE38((v88 > 1), v89 + 1, 1, v74);
  }

  v90 = *(v110 + 8);
  v90(v106, v86);
  v90(v108, v86);
  v90(v104, v86);
  *(v74 + 2) = v89 + 1;
  v79(&v74[v80 + v89 * v81], v105, v86);
  return v74;
}

uint64_t sub_1D77C49CC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  (*(v4 + 16))(&v27, v3, v4);
  v5 = v27;
  if (v27 > 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    v27 = MEMORY[0x1E69E7CC0];
    v10 = *(v5 + 16);
    if (v10)
    {
      v26 = a1;
      sub_1D78B35E4();
      v25 = v5;
      v11 = (v5 + 56);
      do
      {
        v12 = *v11;

        sub_1D77C4FE0(v13);
        v15 = v14;
        v17 = v16;

        v18 = sub_1D77C5388(v12);
        v20 = v19;

        v21 = swift_allocObject();
        v21[2] = v15;
        v21[3] = v17;
        v21[4] = v18;
        v21[5] = v20;
        sub_1D78B36C4();
        swift_allocObject();
        sub_1D78B36B4();
        sub_1D775BF98(0, &qword_1EE08FA00, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1D78C0D70;
        *(v22 + 32) = sub_1D78B3614();
        sub_1D78B3524();
        swift_allocObject();
        sub_1D78B3534();
        MEMORY[0x1DA703120]();
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D78B5F04();
        }

        v11 += 11;
        sub_1D78B5F24();
        --v10;
      }

      while (v10);
      v9 = v27;
      v5 = v25;
      a1 = v26;
    }

    sub_1D775DDC0(v5);
    if (v9 >> 62)
    {
      if (sub_1D78B6534())
      {
        goto LABEL_13;
      }
    }

    else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_13:
      sub_1D77C39CC(v9);

      sub_1D78B3664();
      v23 = sub_1D78B3674();
      return (*(*(v23 - 8) + 56))(a1, 0, 1, v23);
    }

    v24 = sub_1D78B3674();
    return (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
  }

  v6 = sub_1D78B3674();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, 1, 1, v6);
}

void sub_1D77C4DD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D77C4E38()
{
  result = qword_1EC9CA168;
  if (!qword_1EC9CA168)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9CA168);
  }

  return result;
}

void sub_1D77C4E9C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D77C4EF0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D77C4E9C(255, a2, a3, a4, MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D77C4F54(uint64_t a1)
{
  sub_1D77C4DD4(0, &qword_1EC9CA148, MEMORY[0x1E69D6E78], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D77C4FE0(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (v5)
  {
    v9 = v5;
LABEL_10:
    v5 = (v9 - 1) & v9;
    if (*(a1 + 16))
    {
      v11 = (*(a1 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v9)))));
      v13 = *v11;
      v12 = v11[1];

      v14 = sub_1D777BBB4(v13, v12);
      if (v15)
      {
        v16 = *(a1 + 56) + 24 * v14;
        if (*(v16 + 16) == 1)
        {
          v28 = *v16;
          v17 = *(v16 + 8);

          MEMORY[0x1DA702FF0](v13, v12);

          MEMORY[0x1DA702FF0](2243106, 0xE300000000000000);
          MEMORY[0x1DA702FF0]();
          MEMORY[0x1DA702FF0](34, 0xE100000000000000);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1D777AD14(0, *(v8 + 2) + 1, 1, v8);
          }

          v19 = *(v8 + 2);
          v18 = *(v8 + 3);
          v20 = v19 + 1;
          v21 = v28;
          if (v19 >= v18 >> 1)
          {
            v8 = sub_1D777AD14((v18 > 1), v19 + 1, 1, v8);
            v21 = v28;
          }

          sub_1D77C5618(v21, v17, 1);
        }

        else
        {
          MEMORY[0x1DA702FF0](v13, v12);

          MEMORY[0x1DA702FF0](14882, 0xE200000000000000);
          v22 = sub_1D78B66E4();
          MEMORY[0x1DA702FF0](v22);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1D777AD14(0, *(v8 + 2) + 1, 1, v8);
          }

          v19 = *(v8 + 2);
          v23 = *(v8 + 3);
          v20 = v19 + 1;
          if (v19 >= v23 >> 1)
          {
            v8 = sub_1D777AD14((v23 > 1), v19 + 1, 1, v8);
          }
        }

        *(v8 + 2) = v20;
        v24 = &v8[16 * v19];
        *(v24 + 4) = 34;
        *(v24 + 5) = 0xE100000000000000;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      sub_1D775BF98(0, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1D77C559C();
      v25 = sub_1D78B5C24();
      v27 = v26;

      MEMORY[0x1DA702FF0](v25, v27);

      MEMORY[0x1DA702FF0](125, 0xE100000000000000);
      return;
    }

    v9 = *(v2 + 8 * v10);
    ++v7;
    if (v9)
    {
      v7 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1D77C5388(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = (result + 32);
      v3 = MEMORY[0x1E69E7CC0];
      do
      {
        v4 = *v2;

        sub_1D78B6454();

        sub_1D77C4FE0(v4);
        v6 = v5;
        v8 = v7;

        MEMORY[0x1DA702FF0](v6, v8);

        MEMORY[0x1DA702FF0](125, 0xE100000000000000);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1D777AD14(0, *(v3 + 2) + 1, 1, v3);
        }

        v10 = *(v3 + 2);
        v9 = *(v3 + 3);
        if (v10 >= v9 >> 1)
        {
          v3 = sub_1D777AD14((v9 > 1), v10 + 1, 1, v3);
        }

        *(v3 + 2) = v10 + 1;
        v11 = &v3[16 * v10];
        *(v11 + 4) = 0xD000000000000019;
        *(v11 + 5) = 0x80000001D78D39E0;
        ++v2;
        --v1;
      }

      while (v1);
    }

    sub_1D775BF98(0, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D77C559C();
    v12 = sub_1D78B5C24();
    v14 = v13;

    MEMORY[0x1DA702FF0](v12, v14);

    MEMORY[0x1DA702FF0](93, 0xE100000000000000);
    return 91;
  }

  return result;
}

unint64_t sub_1D77C559C()
{
  result = qword_1EE090000;
  if (!qword_1EE090000)
  {
    sub_1D775BF98(255, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE090000);
  }

  return result;
}

double sub_1D77C5618(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1D77C5628()
{
  v1 = *(v0 + 128);
  v6[6] = *(v0 + 112);
  v6[7] = v1;
  v7 = *(v0 + 144);
  v2 = *(v0 + 64);
  v6[2] = *(v0 + 48);
  v6[3] = v2;
  v3 = *(v0 + 96);
  v6[4] = *(v0 + 80);
  v6[5] = v3;
  v4 = *(v0 + 32);
  v6[0] = *(v0 + 16);
  v6[1] = v4;
  sub_1D77CAEFC(v6);

  return swift_deallocClassInstance();
}

uint64_t (*PaywallViewController.delegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_delegate;
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

uint64_t PaywallViewController.isBeingUsedAsPlugin.getter()
{
  v1 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PaywallViewController.isBeingUsedAsPlugin.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_isBeingUsedAsPlugin;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D77C58A0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*PaywallViewController.pluggableDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_pluggableDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D77C59A8;
}

id sub_1D77C59BC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = *(v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_purchasingSpinnerViewControllerFactory + 24);
    v8 = *(v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_purchasingSpinnerViewControllerFactory + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_purchasingSpinnerViewControllerFactory), v7);
    v14 = a2;
    v9 = v2;
    v10 = (*(v8 + 8))(&v14, v7, v8);
    v11 = *(v2 + v3);
    *(v9 + v3) = v10;
    v5 = v10;

    v4 = 0;
  }

  v12 = v4;
  return v5;
}

Swift::Void __swiftcall PaywallViewController.viewDidLoad()()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = &v0[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_viewProvider];
    swift_beginAccess();
    v4 = *(v3 + 3);
    v5 = *(v3 + 4);
    v6 = __swift_project_boxed_opaque_existential_1(v3, v4);
    v7 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v6, v6);
    v9 = v13 - v8;
    (*(v7 + 16))(v13 - v8);
    v10 = (*(v5 + 8))(v4, v5);
    (*(v7 + 8))(v9, v4);
    [v2 addSubview_];

    sub_1D774584C(v3, v13);
    v11 = v14;
    v12 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v12 + 40))(v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall PaywallViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1);
  v3 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_viewProvider;
  swift_beginAccess();
  sub_1D774584C(v1 + v3, v6);
  v4 = v7;
  v5 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v5 + 48))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v6);
}

Swift::Void __swiftcall PaywallViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v76.receiver = v2;
  v76.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v76, sel_viewDidAppear_, a1);
  v4 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_viewProvider;
  swift_beginAccess();
  sub_1D774584C(&v2[v4], &v60);
  v5 = *(&v61 + 1);
  v6 = v62;
  __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
  (*(v6 + 56))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(&v60);
  v7 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  if ((v2[v7] & 1) == 0)
  {
    v8 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8];
    ObjectType = swift_getObjectType();
    v10 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208];
    v11 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176];
    v56 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192];
    v57 = v10;
    v12 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208];
    v13 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240];
    v58 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224];
    v59 = v13;
    v14 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144];
    v15 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112];
    v52 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128];
    v53 = v14;
    v16 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144];
    v17 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176];
    v54 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160];
    v55 = v17;
    v18 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80];
    v19 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48];
    v48 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64];
    v49 = v18;
    v20 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80];
    v21 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112];
    v50 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96];
    v51 = v21;
    v22 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16];
    v45[0] = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel];
    v45[1] = v22;
    v23 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48];
    v25 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel];
    v24 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16];
    v46 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32];
    v47 = v23;
    v41 = v56;
    v42 = v12;
    v26 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240];
    v43 = v58;
    v44 = v26;
    v37 = v52;
    v38 = v16;
    v39 = v54;
    v40 = v11;
    v33 = v48;
    v34 = v20;
    v35 = v50;
    v36 = v15;
    v29 = v25;
    v30 = v24;
    v31 = v46;
    v32 = v19;
    v27 = *(v8 + 32);
    sub_1D7772AE8(v45, &v60);
    v27(&v29, ObjectType, v8);
    v72 = v41;
    v73 = v42;
    v74 = v43;
    v75 = v44;
    v68 = v37;
    v69 = v38;
    v70 = v39;
    v71 = v40;
    v64 = v33;
    v65 = v34;
    v66 = v35;
    v67 = v36;
    v60 = v29;
    v61 = v30;
    v62 = v31;
    v63 = v32;
    sub_1D7772B44(&v60);
  }

  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_sceneStateManager], *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_sceneStateManager + 24]);
  sub_1D77CB208(&unk_1EE0939E8, v28, type metadata accessor for PaywallViewController, &protocol conformance descriptor for PaywallViewController);
  sub_1D78B3E64();
  __swift_destroy_boxed_opaque_existential_1(&v60);
}

Swift::Void __swiftcall PaywallViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewDidDisappear_, a1);
  v4 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_viewProvider;
  swift_beginAccess();
  sub_1D774584C(&v2[v4], v11);
  v5 = v12;
  v6 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v6 + 72))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v11);
  v7 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  if ((v2[v7] & 1) == 0)
  {
    v8 = *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8];
    ObjectType = swift_getObjectType();
    (*(v8 + 40))(ObjectType, v8);
  }

  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_sceneStateManager], *&v2[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_sceneStateManager + 24]);
  sub_1D77CB208(&unk_1EE0939E8, v10, type metadata accessor for PaywallViewController, &protocol conformance descriptor for PaywallViewController);
  sub_1D78B3E74();
}

uint64_t PaywallViewController.layout(paywallType:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1D77CB1B8(0, &qword_1EE090120, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1D78B41F4();
  v2 = sub_1D78B3924();
  *(swift_allocObject() + 16) = a1;
  type metadata accessor for CGSize(0);
  v3 = sub_1D78B40A4();

  return v3;
}

Swift::Void __swiftcall PaywallViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_traitCollectionDidChange_, isa);
  v3 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_viewProvider;
  swift_beginAccess();
  sub_1D774584C(v1 + v3, v6);
  v4 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v5 = [v1 traitCollection];
  (*(v4 + 88))();

  __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1D77C666C(SEL *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9.receiver = v4;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, *a1);
  v6 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224];
  sub_1D77CB1B8(0, &qword_1EE090120, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1D78B41F4();
  v7 = sub_1D78B3924();
  *(swift_allocObject() + 16) = v6;
  type metadata accessor for CGSize(0);
  sub_1D78B40A4();
}

void sub_1D77C67C4(void *a1, uint64_t a2, const char **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11.receiver = a1;
  v11.super_class = swift_getObjectType();
  v7 = *a3;
  v8 = v11.receiver;
  objc_msgSendSuper2(&v11, v7);
  v9 = *&v8[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224];
  sub_1D77CB1B8(0, &qword_1EE090120, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1D78B41F4();
  v10 = sub_1D78B3924();
  *(swift_allocObject() + 16) = v9;
  type metadata accessor for CGSize(0);
  sub_1D78B40A4();
}

uint64_t sub_1D77C68F0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
  ObjectType = swift_getObjectType();
  v4 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
  v5 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
  v51 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
  v52 = v4;
  v6 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
  v7 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
  v53 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
  v54 = v7;
  v8 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
  v9 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
  v47 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
  v48 = v8;
  v10 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
  v11 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
  v49 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
  v50 = v11;
  v12 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
  v13 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
  v43 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
  v44 = v12;
  v14 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
  v15 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
  v45 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
  v46 = v15;
  v16 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
  v40[0] = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
  v40[1] = v16;
  v17 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
  v19 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
  v18 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
  v41 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
  v42 = v17;
  v36 = v51;
  v37 = v6;
  v20 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
  v38 = v53;
  v39 = v20;
  v32 = v47;
  v33 = v10;
  v34 = v49;
  v35 = v5;
  v28 = v43;
  v29 = v14;
  v30 = v45;
  v31 = v9;
  v24 = v19;
  v25 = v18;
  v26 = v41;
  v27 = v13;
  v21 = *(v2 + 112);
  sub_1D7772AE8(v40, v55);
  v22 = v21(&v24, ObjectType, v2);
  v55[12] = v36;
  v55[13] = v37;
  v55[14] = v38;
  v55[15] = v39;
  v55[8] = v32;
  v55[9] = v33;
  v55[10] = v34;
  v55[11] = v35;
  v55[4] = v28;
  v55[5] = v29;
  v55[6] = v30;
  v55[7] = v31;
  v55[0] = v24;
  v55[1] = v25;
  v55[2] = v26;
  v55[3] = v27;
  sub_1D7772B44(v55);
  return v22;
}

uint64_t sub_1D77C6A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_layoutOptionsProvider + 24);
  v6 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_layoutOptionsProvider + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_layoutOptionsProvider), v5);
  (*(v6 + 8))(v55, a3, v5, v6);
  v63 = v55[6];
  v64 = v55[7];
  v65 = v56;
  v59 = v55[2];
  v60 = v55[3];
  v61 = v55[4];
  v62 = v55[5];
  v57 = v55[0];
  v58 = v55[1];
  v7 = sub_1D77CB0B4(&v57);
  if (v7 == 1)
  {
    sub_1D7782B38();
    swift_allocError();
    *v9 = 1;
    sub_1D77CB050(0, &qword_1EE0951E0, type metadata accessor for CGSize, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B40F4();
  }

  v52 = v63;
  v53 = v64;
  v54 = v65;
  v48 = v59;
  v49 = v60;
  v50 = v61;
  v51 = v62;
  v46 = v57;
  v47 = v58;
  v11 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_lastPaywallLayout;
  v12 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_lastPaywallLayout);
  if (v12)
  {
    v13 = *(v12 + 112);
    v42[5] = *(v12 + 96);
    v42[6] = v13;
    v42[7] = *(v12 + 128);
    v43 = *(v12 + 144);
    v14 = *(v12 + 48);
    v42[1] = *(v12 + 32);
    v42[2] = v14;
    v15 = *(v12 + 80);
    v42[3] = *(v12 + 64);
    v42[4] = v15;
    v42[0] = *(v12 + 16);
    v16 = *(v12 + 128);
    v39 = *(v12 + 112);
    v40 = v16;
    v41 = *(v12 + 144);
    v17 = *(v12 + 64);
    v35 = *(v12 + 48);
    v36 = v17;
    v18 = *(v12 + 96);
    v37 = *(v12 + 80);
    v38 = v18;
    v19 = *(v12 + 32);
    v33 = *(v12 + 16);
    v34 = v19;
    v31[6] = v63;
    v31[7] = v64;
    v32 = v65;
    v31[2] = v59;
    v31[3] = v60;
    v31[4] = v61;
    v31[5] = v62;
    v31[0] = v57;
    v31[1] = v58;

    sub_1D77CB0EC(v42, &v30);
    v20 = _s16NewsSubscription20PaywallLayoutOptionsV2eeoiySbAC_ACtFZ_0(&v33, v31);
    v44[6] = v39;
    v44[7] = v40;
    v45 = v41;
    v44[2] = v35;
    v44[3] = v36;
    v44[4] = v37;
    v44[5] = v38;
    v44[0] = v33;
    v44[1] = v34;
    sub_1D77CAEFC(v44);
    if (v20)
    {
      sub_1D77CB148(v55, qword_1EE093BF8, &type metadata for PaywallLayoutOptions);
      v21 = *(v12 + 152);

      return v21;
    }
  }

  MEMORY[0x1EEE9AC00](v7, v8);
  type metadata accessor for CGSize(0);
  sub_1D78B41F4();
  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  v22 = sub_1D78B6104();
  type metadata accessor for PaywallViewController();
  v23 = sub_1D78B40A4();

  type metadata accessor for PaywallCachedLayout();
  v24 = swift_allocObject();
  v25 = v53;
  *(v24 + 112) = v52;
  *(v24 + 128) = v25;
  v26 = v54;
  v27 = v49;
  *(v24 + 48) = v48;
  *(v24 + 64) = v27;
  v28 = v51;
  *(v24 + 80) = v50;
  *(v24 + 96) = v28;
  v29 = v47;
  *(v24 + 16) = v46;
  *(v24 + 32) = v29;
  *(v24 + 144) = v26;
  *(v24 + 152) = v23;
  *(a2 + v11) = v24;

  return v23;
}

uint64_t sub_1D77C6EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_viewProvider;
  swift_beginAccess();
  sub_1D774584C(a1 + v8, v19);
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

uint64_t sub_1D77C6F98(uint64_t *a1)
{
  sub_1D77CB208(&unk_1EE08FC20, 255, type metadata accessor for CGSize, MEMORY[0x1E695EF98]);
  sub_1D78B3B24();
  sub_1D77CB050(0, &qword_1EE0951E0, type metadata accessor for CGSize, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

void sub_1D77C707C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D78B3014();
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  v27 = 0x6168436465646461;
  v28 = 0xEF7344496C656E6ELL;
  sub_1D78B63F4();
  if (!*(v4 + 16) || (v5 = sub_1D777BD70(v23), (v6 & 1) == 0))
  {

    sub_1D777BDB4(v23);
LABEL_10:
    v29 = 0u;
    v30 = 0u;
    goto LABEL_11;
  }

  sub_1D777BE08(*(v4 + 56) + 32 * v5, &v29);
  sub_1D777BDB4(v23);

  if (!*(&v30 + 1))
  {
LABEL_11:
    sub_1D77CB148(&v29, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8);
    return;
  }

  sub_1D7782F60();
  if (swift_dynamicCast())
  {
    v7 = v27;
    v8 = *(v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
    v23[10] = *(v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
    v23[11] = v8;
    v9 = *(v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
    v23[12] = *(v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
    v23[13] = v9;
    v10 = *(v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
    v23[6] = *(v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
    v23[7] = v10;
    v11 = *(v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
    v23[8] = *(v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
    v23[9] = v11;
    v12 = *(v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
    v23[2] = *(v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
    v23[3] = v12;
    v13 = *(v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
    v23[4] = *(v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
    v23[5] = v13;
    v14 = *(v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
    v23[0] = *(v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
    v23[1] = v14;
    v15 = *(v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
    v25 = *(v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 232);
    v26 = *(v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 248);
    v24 = v15;
    v16 = [PaywallModel.tag.getter() identifier];
    swift_unknownObjectRelease();
    v17 = sub_1D78B5C74();
    v19 = v18;

    LOBYTE(v17) = sub_1D7832E64(v17, v19, v7);

    if (v17)
    {
      v20 = v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = *(v20 + 8);
        ObjectType = swift_getObjectType();
        (*(v21 + 8))(v15, ObjectType, v21);
        swift_unknownObjectRelease();
      }
    }
  }
}

id PaywallViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id PaywallViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D77C7650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = objc_opt_self();

  v12 = [v11 sharedAccount];
  v13 = [v12 activeiTunesAccount];

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = v13;
  if (![v14 isAuthenticated])
  {

    if (([v14 ams_isLocalAccount] & 1) == 0)
    {
      v15 = v14;
      goto LABEL_9;
    }

LABEL_7:
    v15 = 0;
LABEL_9:
    v16 = [objc_allocWithZone(MEMORY[0x1E698C7B0]) init];
    [v16 setIgnoreAccountConversion_];
    v17 = sub_1D78B5C44();
    [v16 setDebugReason_];

    v18 = [objc_allocWithZone(MEMORY[0x1E698CC58]) initWithAccount:v15 presentingViewController:a5 options:v16];
    v19 = [v18 performAuthentication];
    v20 = swift_allocObject();
    v20[2] = a3;
    v20[3] = a4;
    v20[4] = a5;
    v20[5] = sub_1D7788F48;
    v20[6] = v10;
    v23[4] = sub_1D77CB034;
    v23[5] = v20;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 1107296256;
    v23[2] = sub_1D7780F60;
    v23[3] = &block_descriptor_99;
    v21 = _Block_copy(v23);

    v22 = a5;

    [v19 addFinishBlock_];
    _Block_release(v21);

    return;
  }

  sub_1D77C793C(a5, sub_1D7788F48, v10);
}

uint64_t sub_1D77C793C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D78B5254();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D78B52A4();
  v11 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  v15 = sub_1D78B6104();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  aBlock[4] = sub_1D77CB044;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_105;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  sub_1D78B5274();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D77CB208(&qword_1EE090300, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D77CB050(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D775F4A4();
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v14, v10, v17);
  _Block_release(v17);

  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v21);
}

void sub_1D77C7C3C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D77C59BC(&OBJC_IVAR____TtC16NewsSubscription21PaywallViewController____lazy_storage___purchasingSpinner, 0);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_1D7782FF8;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D775FB6C;
  v9[3] = &block_descriptor_111;
  v8 = _Block_copy(v9);

  [a1 presentViewController:v6 animated:1 completion:v8];
  _Block_release(v8);
}

void sub_1D77C7D48(uint64_t a1, void *a2, void (*a3)(void *), uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v8 = a2;
    sub_1D7782B38();
    v9 = swift_allocError();
    *v10 = v8;
    v11 = v8;
    v12 = v8;
    a3(v9);

LABEL_3:

    return;
  }

  if (!a1)
  {
    sub_1D7782B38();
    v8 = swift_allocError();
    *v17 = 0;
    (a3)();
    goto LABEL_3;
  }

  v16 = [objc_opt_self() sharedAccount];
  [v16 reloadiTunesAccount];

  sub_1D77C793C(a5, a6, a7);
}

uint64_t sub_1D77C7E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D77CB1B8(0, &qword_1EE0951C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

void sub_1D77C7F08(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_1D77C59BC(&OBJC_IVAR____TtC16NewsSubscription21PaywallViewController____lazy_storage___purchasingSpinner, 0);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D7757030;
  *(v6 + 24) = v4;
  v8[4] = sub_1D7782BC8;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D775FB6C;
  v8[3] = &block_descriptor_89;
  v7 = _Block_copy(v8);

  [v5 dismissViewControllerAnimated:1 completion:v7];
  _Block_release(v7);
}

uint64_t sub_1D77C8050(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(a3, ObjectType, v10);
    result = swift_unknownObjectRelease();
  }

  if (!*(a4 + 16))
  {
    v12 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_webOptinFlowManager + 24);
    v13 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_webOptinFlowManager + 32);
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_webOptinFlowManager), v12);
    v26 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
    v27 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
    v28 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
    v29 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
    v22 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
    v23 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
    v24 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
    v25 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
    v18 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
    v19 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
    v20 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
    v21 = *(a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
    v14 = PaywallModel.tag.getter();
    (*(v13 + 8))(v14, v7, a4, v12, v13, v15, v16, v17, v18, *(&v18 + 1), v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1));
    return swift_unknownObjectRelease();
  }

  return result;
}

void PaywallViewController.eventHandler(_:webAccessAuthenticationDidObtainAccessToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208];
  v42 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192];
  v43 = v9;
  v10 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240];
  v44 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224];
  v45 = v10;
  v11 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144];
  v38 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128];
  v39 = v11;
  v12 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176];
  v40 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160];
  v41 = v12;
  v13 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80];
  v34 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64];
  v35 = v13;
  v14 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112];
  v36 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96];
  v37 = v14;
  v15 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16];
  v30 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel];
  v31 = v15;
  v16 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48];
  v32 = *&v4[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32];
  v33 = v16;
  v17 = sub_1D77C59BC(&OBJC_IVAR____TtC16NewsSubscription21PaywallViewController____lazy_storage___verificationSpinner, 1);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  v19 = v43;
  *(v18 + 240) = v42;
  *(v18 + 256) = v19;
  v20 = v45;
  *(v18 + 272) = v44;
  *(v18 + 288) = v20;
  v21 = v39;
  *(v18 + 176) = v38;
  *(v18 + 192) = v21;
  v22 = v41;
  *(v18 + 208) = v40;
  *(v18 + 224) = v22;
  v23 = v35;
  *(v18 + 112) = v34;
  *(v18 + 128) = v23;
  v24 = v37;
  *(v18 + 144) = v36;
  *(v18 + 160) = v24;
  v25 = v31;
  *(v18 + 48) = v30;
  *(v18 + 64) = v25;
  v26 = v33;
  *(v18 + 80) = v32;
  *(v18 + 96) = v26;
  aBlock[4] = sub_1D77CAA6C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_10;
  v27 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_1D7772AE8(&v30, &v28);

  [v4 presentViewController:v17 animated:1 completion:v27];
  _Block_release(v27);
}

void PaywallViewController.eventHandler(_:webAccessAuthenticationDidComplete:from:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = sub_1D77C59BC(&OBJC_IVAR____TtC16NewsSubscription21PaywallViewController____lazy_storage___verificationSpinner, 1);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v4;
  *(v8 + 32) = a4;
  v11[4] = sub_1D77CAB1C;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D775FB6C;
  v11[3] = &block_descriptor_19_1;
  v9 = _Block_copy(v11);
  v10 = v4;

  [v7 dismissViewControllerAnimated:1 completion:v9];
  _Block_release(v9);
}

uint64_t sub_1D77C846C(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    sub_1D7788D34();
    sub_1D78B5054();
    swift_allocObject();
    sub_1D78B5004();
    sub_1D78B5014();
  }

  else
  {
    v5 = a2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(a3, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    PaywallModel.tag.getter();
    sub_1D7788D90();
    sub_1D78B5054();
    swift_allocObject();
    sub_1D78B5004();
    sub_1D78B5014();
  }
}

uint64_t sub_1D77C8670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D77CB1B8(0, &qword_1EE0951C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

void sub_1D77C8704(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = sub_1D77C59BC(&OBJC_IVAR____TtC16NewsSubscription21PaywallViewController____lazy_storage___verificationSpinner, 1);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v4;
  *(v8 + 32) = a4;
  v11[4] = sub_1D77CB35C;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D775FB6C;
  v11[3] = &block_descriptor_59_2;
  v9 = _Block_copy(v11);
  v10 = v4;

  [v7 dismissViewControllerAnimated:1 completion:v9];
  _Block_release(v9);
}

Swift::Void __swiftcall PaywallViewController.sceneWillEnterForeground()()
{
  v1 = v0;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 window];

    if (v4)
    {

      v5 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8];
      ObjectType = swift_getObjectType();
      v7 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208];
      v8 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176];
      v52 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192];
      v53 = v7;
      v9 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208];
      v10 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240];
      v54 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224];
      v55 = v10;
      v11 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144];
      v12 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112];
      v48 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128];
      v49 = v11;
      v13 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144];
      v14 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176];
      v50 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160];
      v51 = v14;
      v15 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80];
      v16 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48];
      v44 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64];
      v45 = v15;
      v17 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80];
      v18 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112];
      v46 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96];
      v47 = v18;
      v19 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16];
      v41[0] = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel];
      v41[1] = v19;
      v20 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48];
      v22 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel];
      v21 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16];
      v42 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32];
      v43 = v20;
      v37 = v52;
      v38 = v9;
      v23 = *&v1[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240];
      v39 = v54;
      v40 = v23;
      v33 = v48;
      v34 = v13;
      v35 = v50;
      v36 = v8;
      v29 = v44;
      v30 = v17;
      v31 = v46;
      v32 = v12;
      v25 = v22;
      v26 = v21;
      v27 = v42;
      v28 = v16;
      v24 = *(v5 + 32);
      sub_1D7772AE8(v41, v56);
      v24(&v25, ObjectType, v5);
      v56[12] = v37;
      v56[13] = v38;
      v56[14] = v39;
      v56[15] = v40;
      v56[8] = v33;
      v56[9] = v34;
      v56[10] = v35;
      v56[11] = v36;
      v56[4] = v29;
      v56[5] = v30;
      v56[6] = v31;
      v56[7] = v32;
      v56[0] = v25;
      v56[1] = v26;
      v56[2] = v27;
      v56[3] = v28;
      sub_1D7772B44(v56);
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall PaywallViewController.sceneDidEnterBackground()()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {

      v4 = *&v0[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8];
      ObjectType = swift_getObjectType();
      (*(v4 + 40))(ObjectType, v4);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D77C8A44()
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE447E0](ObjectType);
}

uint64_t sub_1D77C8A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE447D8](a1, a2, a3, a4, a5, ObjectType);
}

uint64_t sub_1D77C8B00(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE447F0](ObjectType, a2);
}

uint64_t sub_1D77C8B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE447E8](a1, a2, ObjectType, a4);
}

void sub_1D77C8B98()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {

      v4 = *&v0[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8];
      ObjectType = swift_getObjectType();
      (*(v4 + 40))(ObjectType, v4);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D77C8C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE447F8](a1, a2, ObjectType, a4);
}

uint64_t sub_1D77C8C8C(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE44810](a1, ObjectType);
}

uint64_t sub_1D77C8CDC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE447D0](ObjectType, a2);
}

void PaywallViewController.initialize(completion:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE09C268;
  v5 = sub_1D78B60A4();
  sub_1D78B42C4("PaywallViewController plugin initialize requested", 49, 2, &dword_1D7739000, v4, v5, MEMORY[0x1E69E7CC0]);
  MEMORY[0x1EEE9AC00](v6, v7);
  type metadata accessor for CGSize(0);
  sub_1D78B41F4();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_1D78B4014();
  sub_1D78B4094();

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  v11 = sub_1D78B4014();
  sub_1D78B40D4();
}

void PaywallViewController.relayout(completion:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE09C268;
  v5 = sub_1D78B60A4();
  sub_1D78B42C4("PaywallViewController plugin relayout requested", 47, 2, &dword_1D7739000, v4, v5, MEMORY[0x1E69E7CC0]);
  MEMORY[0x1EEE9AC00](v6, v7);
  type metadata accessor for CGSize(0);
  sub_1D78B41F4();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_1D78B4014();
  sub_1D78B4094();

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  v11 = sub_1D78B4014();
  sub_1D78B40D4();
}

uint64_t sub_1D77C90BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v5 = *(a1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
  sub_1D77CB1B8(0, &qword_1EE090120, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1D78B41F4();
  v6 = sub_1D78B3924();
  *(swift_allocObject() + 16) = v5;
  type metadata accessor for CGSize(0);
  v7 = sub_1D78B40A4();

  return v7;
}

uint64_t sub_1D77C91D0(double *a1, uint64_t (*a2)(uint64_t, double, double), uint64_t a3, const char *a4, uint64_t a5)
{
  v8 = *a1;
  v9 = a1[1];
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE09C268;
  sub_1D774FE1C(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D78BCAB0;
  sub_1D77CAF50();
  sub_1D78B6504();
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1D775ABD4();
  *(v11 + 32) = 0;
  *(v11 + 40) = 0xE000000000000000;
  v12 = sub_1D78B60A4();
  sub_1D78B42C4(a4, a5, 2, &dword_1D7739000, v10, v12, v11, *&v8, *&v9);

  return a2(v13, v8, v9);
}

uint64_t sub_1D77C9324(uint64_t a1, uint64_t (*a2)(uint64_t, double, double), uint64_t a3, const char *a4, uint64_t a5)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE09C268;
  v9 = sub_1D78B6094();
  sub_1D774FE1C(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D78BCAB0;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  sub_1D78B6504();
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1D775ABD4();
  *(v10 + 32) = 0;
  *(v10 + 40) = 0xE000000000000000;
  sub_1D78B42C4(a4, a5, 2, &dword_1D7739000, v8, v9, v10);

  return a2(v11, 0.0, 0.0);
}

Swift::Void __swiftcall PaywallViewController.pluginDidStartImpression()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
  v4 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
  v48 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
  v49 = v3;
  v5 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
  v6 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
  v50 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
  v51 = v6;
  v7 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
  v8 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
  v44 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
  v45 = v7;
  v9 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
  v10 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
  v46 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
  v47 = v10;
  v11 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
  v12 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
  v40 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
  v41 = v11;
  v13 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
  v14 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
  v42 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
  v43 = v14;
  v15 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
  v37[0] = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
  v37[1] = v15;
  v16 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
  v18 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
  v17 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
  v38 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
  v39 = v16;
  v33 = v48;
  v34 = v5;
  v19 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
  v35 = v50;
  v36 = v19;
  v29 = v44;
  v30 = v9;
  v31 = v46;
  v32 = v4;
  v25 = v40;
  v26 = v13;
  v27 = v42;
  v28 = v8;
  v21 = v18;
  v22 = v17;
  v23 = v38;
  v24 = v12;
  v20 = *(v1 + 32);
  sub_1D7772AE8(v37, v52);
  v20(&v21, ObjectType, v1);
  v52[12] = v33;
  v52[13] = v34;
  v52[14] = v35;
  v52[15] = v36;
  v52[8] = v29;
  v52[9] = v30;
  v52[10] = v31;
  v52[11] = v32;
  v52[4] = v25;
  v52[5] = v26;
  v52[6] = v27;
  v52[7] = v28;
  v52[0] = v21;
  v52[1] = v22;
  v52[2] = v23;
  v52[3] = v24;
  sub_1D7772B44(v52);
}

uint64_t PaywallViewController.pluginDidImpress(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
  ObjectType = swift_getObjectType();
  return (*(v5 + 48))(a1, a2, ObjectType, v5);
}

uint64_t sub_1D77C96B4(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_pluggableDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1D77C9724(uint64_t *a1))()
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
  v5 = *v1;
  v6 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_pluggableDelegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_1D77CB388;
}

void sub_1D77C97C8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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
  }

  free(v3);
}

uint64_t sub_1D77C9850()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1D77C9898(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_isBeingUsedAsPlugin;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t sub_1D77C9968()
{
  v1 = *v0;
  v2 = *(*v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
  v6 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
  v5 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
  v42[2] = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
  v42[3] = v4;
  v42[0] = v6;
  v42[1] = v5;
  v7 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
  v9 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
  v8 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
  v42[6] = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
  v42[7] = v7;
  v42[4] = v9;
  v42[5] = v8;
  v10 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
  v12 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
  v11 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
  v42[10] = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
  v42[11] = v10;
  v42[8] = v12;
  v42[9] = v11;
  v13 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
  v15 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
  v14 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
  v42[14] = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
  v42[15] = v13;
  v42[12] = v15;
  v42[13] = v14;
  v16 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
  v38 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
  v39 = v16;
  v17 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
  v40 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
  v41 = v17;
  v18 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
  v34 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
  v35 = v18;
  v19 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
  v36 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
  v37 = v19;
  v20 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
  v30 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
  v31 = v20;
  v21 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
  v32 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
  v33 = v21;
  v22 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
  v26 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
  v27 = v22;
  v23 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
  v28 = *(v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
  v29 = v23;
  v24 = *(v2 + 32);
  sub_1D7772AE8(v42, v43);
  v24(&v26, ObjectType, v2);
  v43[12] = v38;
  v43[13] = v39;
  v43[14] = v40;
  v43[15] = v41;
  v43[8] = v34;
  v43[9] = v35;
  v43[10] = v36;
  v43[11] = v37;
  v43[4] = v30;
  v43[5] = v31;
  v43[6] = v32;
  v43[7] = v33;
  v43[0] = v26;
  v43[1] = v27;
  v43[2] = v28;
  v43[3] = v29;
  return sub_1D7772B44(v43);
}

uint64_t sub_1D77C9ABC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
  ObjectType = swift_getObjectType();
  return (*(v5 + 48))(a1, a2, ObjectType, v5);
}

void sub_1D77C9BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v10 = type metadata accessor for PurchaseContext(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v13 = *a4;
  v42 = v14;
  v43 = a2;
  v41 = v13;
  if (a3 > 1)
  {
    if ((a3 - 2) < 2)
    {
      v15 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208];
      v57 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192];
      v58 = v15;
      v16 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240];
      v59 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224];
      v60 = v16;
      v17 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144];
      v53 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128];
      v54 = v17;
      v18 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176];
      v55 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160];
      v56 = v18;
      v19 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80];
      v49 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64];
      v50 = v19;
      v20 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112];
      v51 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96];
      v52 = v20;
      v21 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16];
      v45 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel];
      v46 = v21;
      v22 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48];
      v47 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32];
      v48 = v22;
      PaywallModel.buyParams.getter();
      a3 = v23;
      v24 = 0;
LABEL_11:
      v34 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_purchasePresenter + 24];
      v35 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_purchasePresenter + 32];
      __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_purchasePresenter], v34);
      BYTE8(v45) = v24;
      v44 = v41;
      *&v45 = a3;
      (*(v35 + 8))(v5, a1, 0, &v45, &v44, v34, v35);
      sub_1D7770378(a1, &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v36 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v37 = swift_allocObject();
      v38 = v43;
      *(v37 + 16) = v5;
      *(v37 + 24) = v38;
      sub_1D777044C(&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36);
      v39 = v5;
      v40 = sub_1D78B4014();
      sub_1D78B4094();

      sub_1D7781F70(a3, v24);
      return;
    }

    if (a3 != 4)
    {
      if (a3 == 5)
      {
        v25 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208];
        v57 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192];
        v58 = v25;
        v26 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240];
        v59 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224];
        v60 = v26;
        v27 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144];
        v53 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128];
        v54 = v27;
        v28 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176];
        v55 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160];
        v56 = v28;
        v29 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80];
        v49 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64];
        v50 = v29;
        v30 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112];
        v51 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96];
        v52 = v30;
        v31 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16];
        v45 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel];
        v46 = v31;
        v32 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48];
        v47 = *&v5[OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32];
        v48 = v32;
        PaywallModel.buyParams.getter();
        a3 = v33;
        v24 = 3;
        goto LABEL_11;
      }

      goto LABEL_12;
    }

LABEL_10:
    a3 = 0;
    v24 = 4;
    goto LABEL_11;
  }

  if (!a3)
  {
    v24 = 2;
    goto LABEL_11;
  }

  if (a3 == 1)
  {
    goto LABEL_10;
  }

LABEL_12:
  sub_1D78B6764();
  __break(1u);
}

void sub_1D77C9EF0()
{
  *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_isBeingUsedAsPlugin) = 0;
  *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_pluggableDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_layoutSize;
  sub_1D77CB050(0, &qword_1EE0953B0, type metadata accessor for CGSize, MEMORY[0x1E69D6538]);
  swift_allocObject();
  *(v0 + v1) = sub_1D78B3AE4();
  *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController____lazy_storage___verificationSpinner) = 0;
  *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController____lazy_storage___purchasingSpinner) = 0;
  *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_lastPaywallLayout) = 0;
  sub_1D78B6524();
  __break(1u);
}

double _s16NewsSubscription21PaywallViewControllerC018eventHandlerBundleB12DidSubscribeyyAA0c5EventG4Type_pF_0()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
  v3 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
  v80[10] = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
  v80[11] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
  v80[12] = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
  v80[13] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
  v80[6] = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
  v80[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
  v80[8] = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
  v80[9] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
  v80[2] = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
  v80[3] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
  v80[4] = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
  v80[5] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
  v80[0] = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
  v80[1] = v9;
  v10 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
  v82 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 232);
  v83 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 248);
  v81 = v10;
  v11 = [PaywallModel.tag.getter() isPuzzleType];
  swift_unknownObjectRelease();
  if (v11)
  {
    goto LABEL_33;
  }

  v59 = v0;
  v12 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paidAccessChecker);
  v13 = v2[11];
  v75 = v2[10];
  v76 = v13;
  v14 = v2[13];
  v77 = v2[12];
  v78 = v14;
  v15 = v2[7];
  v71 = v2[6];
  v72 = v15;
  v16 = v2[9];
  v73 = v2[8];
  v74 = v16;
  v17 = v2[3];
  v67 = v2[2];
  v68 = v17;
  v18 = v2[5];
  v69 = v2[4];
  v70 = v18;
  v19 = v2[1];
  v65 = *v2;
  v66 = v19;
  v10 = *(v2 + 28);
  *&v79[8] = *(v2 + 232);
  *&v79[24] = *(v2 + 31);
  *v79 = v10;
  v20 = PaywallModel.tag.getter();
  v21 = [v12 purchaseProvider];
  if ([swift_unknownObjectRetain() tagType] == 3)
  {
    v22 = [v20 asSection];
    if (!v22 || (v23 = [v22 parentID], swift_unknownObjectRelease(), !v23))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_9;
    }
  }

  else
  {
    v23 = [v20 identifier];
  }

  v24 = sub_1D78B5C74();
  v26 = v25;

  v27 = [v21 purchasedTagIDs];
  v28 = sub_1D78B5F64();

  LOBYTE(v27) = sub_1D7832E64(v24, v26, v28);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v27)
  {
    swift_unknownObjectRelease();
LABEL_32:
    v1 = v59;
LABEL_33:
    v39 = v1 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v41 = *(v39 + 8);
      ObjectType = swift_getObjectType();
      (*(v41 + 8))(v10, ObjectType, v41);
      swift_unknownObjectRelease();
    }

    return result;
  }

LABEL_9:
  v29 = [objc_msgSend(v12 bundleSubscriptionProvider];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v29, v29 + 1))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
  }

  v63 = v61;
  v64 = v62;
  v30 = MEMORY[0x1E69E7CA0];
  if (!*(&v62 + 1))
  {
    sub_1D77CB148(&v63, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_17;
  }

  sub_1D773F004(0, &qword_1EE08FBD0, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v31 = 0;
    v33 = 0;
    goto LABEL_18;
  }

  v31 = v60;
  v32 = [v60 integerValue];
  if (v32 == -1)
  {

    goto LABEL_29;
  }

  v33 = v32;
LABEL_18:
  if (objc_getAssociatedObject(v29, ~v33))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
  }

  v63 = v61;
  v64 = v62;
  if (!*(&v62 + 1))
  {
    sub_1D77CB148(&v63, &qword_1EE08F9C0, v30 + 8);
LABEL_26:

    if (v33)
    {
      goto LABEL_29;
    }

LABEL_27:
    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  sub_1D773F004(0, &qword_1EE08FBD0, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v34 = v60;
  v35 = [v34 integerValue];

  if (((v35 ^ v33) & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_29:
  v36 = [objc_msgSend(v12 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v37 = [v20 identifier];
  if (!v37)
  {
    sub_1D78B5C74();
    v37 = sub_1D78B5C44();
  }

  v38 = [v36 containsTagID_];

  swift_unknownObjectRelease();
  if (v38)
  {
    goto LABEL_32;
  }

LABEL_35:
  v43 = MEMORY[0x1E69E6158];
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v44 = qword_1EE09C268;
  sub_1D774FE1C(0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1D78BCAB0;
  v46 = v2[13];
  v77 = v2[12];
  v78 = v46;
  v47 = v2[15];
  *v79 = v2[14];
  *&v79[16] = v47;
  v48 = v2[9];
  v73 = v2[8];
  v74 = v48;
  v49 = v2[11];
  v75 = v2[10];
  v76 = v49;
  v50 = v2[5];
  v69 = v2[4];
  v70 = v50;
  v51 = v2[7];
  v71 = v2[6];
  v72 = v51;
  v52 = v2[1];
  v65 = *v2;
  v66 = v52;
  v53 = v2[3];
  v67 = v2[2];
  v68 = v53;
  v54 = [PaywallModel.tag.getter() identifier];
  swift_unknownObjectRelease();
  v55 = sub_1D78B5C74();
  v57 = v56;

  *(v45 + 56) = v43;
  *(v45 + 64) = sub_1D775ABD4();
  *(v45 + 32) = v55;
  *(v45 + 40) = v57;
  v58 = sub_1D78B60A4();
  sub_1D78B42C4("Source channel=%{public}@ of paywall didnt get paid access, not removing paywall", 80, 2, &dword_1D7739000, v44, v58, v45);

  return result;
}

void sub_1D77CA6AC(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 > 3u)
  {
    if (a3 <= 5u)
    {
      if (a3 != 4 && a3 != 5)
      {
        return;
      }
    }

    else if (a3 != 6 && a3 != 7)
    {
      if (a3 != 8)
      {
        return;
      }
    }

    goto LABEL_19;
  }

  if (a3 > 1u)
  {
    if (a3 != 2 && a3 != 3)
    {
      return;
    }

    goto LABEL_19;
  }

  if (!a3)
  {
    swift_unknownObjectRelease();
LABEL_19:

    swift_unknownObjectRelease();
    return;
  }
}

void sub_1D77CA77C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned __int8 a25)
{
  if (a25 > 1u)
  {
    if (a25 == 2)
    {

      v37 = a23;
      v38 = a24;
      v36 = a22;
      v26 = a14;
      v27 = a15;
      v28 = a16;
      v29 = a17;
      v31 = a18;
      v30 = a19;
      v32 = a20;
      v33 = a21;
    }

    else
    {
      if (a25 != 3)
      {
        return;
      }

      v37 = a20;
      v38 = a21;
      v36 = a19;
      v26 = a11;
      v27 = a12;
      v28 = a13;
      v29 = a14;
      v30 = a16;
      v31 = a15;
      v32 = a17;
      v33 = a18;
    }
  }

  else
  {
    if (a25)
    {
      if (a25 == 1)
      {
      }

      return;
    }

    v37 = a22;
    v38 = a23;
    v36 = a21;
    v26 = a13;
    v27 = a14;
    v28 = a15;
    v32 = a19;
    v29 = a16;
    v31 = a17;
    v30 = a18;
    v33 = a20;
  }

  sub_1D77CA9CC(v26, v27, v28, v29, v31, v30, v32, v33, v36, v37, v38);
}

double sub_1D77CA9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D77CAA6C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  ObjectType = swift_getObjectType();
  v5 = *(v0 + 256);
  v14[12] = *(v0 + 240);
  v14[13] = v5;
  v6 = *(v0 + 288);
  v14[14] = *(v0 + 272);
  v14[15] = v6;
  v7 = *(v0 + 192);
  v14[8] = *(v0 + 176);
  v14[9] = v7;
  v8 = *(v0 + 224);
  v14[10] = *(v0 + 208);
  v14[11] = v8;
  v9 = *(v0 + 128);
  v14[4] = *(v0 + 112);
  v14[5] = v9;
  v10 = *(v0 + 160);
  v14[6] = *(v0 + 144);
  v14[7] = v10;
  v11 = *(v0 + 64);
  v14[0] = *(v0 + 48);
  v14[1] = v11;
  v12 = *(v0 + 96);
  v14[2] = *(v0 + 80);
  v14[3] = v12;
  return (*(v1 + 96))(v2, v3, v14, ObjectType, v1);
}

void sub_1D77CAB28(void *a1)
{
  v2 = v1;
  aBlock[0] = a1;
  v3 = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  type metadata accessor for ASWebAuthenticationSessionError(0);
  if ((swift_dynamicCast() & 1) == 0 || (aBlock[0] = v9, sub_1D77CB208(&unk_1EC9C9F70, 255, type metadata accessor for ASWebAuthenticationSessionError, &unk_1D78BC6C4), sub_1D78B3184(), v9, v9 != 1))
  {
    v4 = sub_1D77C59BC(&OBJC_IVAR____TtC16NewsSubscription21PaywallViewController____lazy_storage___verificationSpinner, 1);
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    aBlock[4] = sub_1D77CAFAC;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D775FB6C;
    aBlock[3] = &block_descriptor_77_1;
    v6 = _Block_copy(aBlock);
    v7 = v2;

    [v4 dismissViewControllerAnimated:1 completion:v6];
    _Block_release(v6);
  }
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a1[1];
  v6 = *a2 + *a5;
  swift_beginAccess();
  *(v6 + 8) = v5;
  return swift_unknownObjectWeakAssign();
}

void sub_1D77CAF50()
{
  if (!qword_1EE08F278)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE08F278);
    }
  }
}

void sub_1D77CB050(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D77CB0B4(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D77CB148(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D77CB1B8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D77CB1B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D77CB208(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t get_enum_tag_for_layout_string_16NewsSubscription21PaywallViewControllerC6ErrorsO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D77CB268(uint64_t *a1, unsigned int a2)
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

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D77CB2BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *PurchaseTransactionError.storeKitError.getter()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    return 0;
  }

  v2 = v1;
  return v1;
}

uint64_t PurchaseTransactionError.amsPurchaseError.getter()
{
  v1 = *v0;
  if (*v0 >> 62 != 1)
  {
    return 0;
  }

  v2 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  v3 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
  return v2;
}

unint64_t get_enum_tag_for_layout_string_16NewsSubscription24PurchaseTransactionErrorO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t get_enum_tag_for_layout_string_16NewsSubscription14PurchaseResultO(void *a1)
{
  v1 = *a1 >> 59;
  if ((v1 & 4) != 0)
  {
    return (*a1 >> 3) + 4;
  }

  else
  {
    return v1 & 6 | (*a1 >> 2) & 1;
  }
}

uint64_t sub_1D77CB464(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1C && *(a1 + 8))
  {
    return (*a1 + 28);
  }

  v3 = ((((*a1 >> 57) & 0x18 | *a1 & 7) >> 2) & 0xFFFFFFE7 | (8 * (*a1 & 3))) ^ 0x1F;
  if (v3 >= 0x1B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D77CB4C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1B)
  {
    *result = a2 - 28;
    if (a3 >= 0x1C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 3 | (4 * (-a2 & 0x1F));
      *result = (v3 | (v3 << 57)) & 0x3000000000000007;
    }
  }

  return result;
}

void *sub_1D77CB52C(void *result, uint64_t a2)
{
  if (a2 < 4)
  {
    *result = ((a2 << 59) | (4 * a2)) & 0x1000000000000004 | *result & 0xCFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 4)) | 0x2000000000000000;
  }

  return result;
}

uint64_t sub_1D77CB580(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D77CB5DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1D77CB63C(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

id sub_1D77CB678(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_1D778D0A0(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v3(&v11, v13);

  sub_1D7756B84(v13);
  v4 = ObjectType;
  if (ObjectType)
  {
    v5 = __swift_project_boxed_opaque_existential_1(&v11, ObjectType);
    v6 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v5, v5);
    v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_1D78B6704();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void *FamilySharingLandingPageLauncher.__allocating_init(configurationManager:familyEligibilityProvider:offerManager:router:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[9] = a3;
  v10[10] = a4;
  sub_1D77476F4(a5, (v10 + 4));
  return v10;
}

void *FamilySharingLandingPageLauncher.init(configurationManager:familyEligibilityProvider:offerManager:router:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[9] = a3;
  v5[10] = a4;
  sub_1D77476F4(a5, (v5 + 4));
  return v5;
}

Swift::Void __swiftcall FamilySharingLandingPageLauncher.showFamilySetupLandingPage()()
{
  v1 = [*(v0 + 16) configuration];
  if (v1)
  {
    v2 = v1;
    if ([v1 respondsToSelector_])
    {
      v9 = [v2 paidBundleConfig];
      swift_unknownObjectRelease();
      if ([v9 isFamilySharingSetupEnabled])
      {
        v3 = [*(v0 + 24) requestFamilyEligibility];
        v4 = swift_allocObject();
        swift_weakInit();
        v5 = swift_allocObject();
        *(v5 + 16) = v4;
        *(v5 + 24) = v9;
        aBlock[4] = sub_1D77CBC50;
        aBlock[5] = v5;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D77CB678;
        aBlock[3] = &block_descriptor_11;
        v6 = _Block_copy(aBlock);
        v7 = v9;

        v8 = [v3 then_];
        _Block_release(v6);
      }

      else
      {
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_1D77CBA94@<D0>(uint64_t a1@<X0>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_1D77CBC58(a1, Strong, a3);
    v11 = v10;
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v12 = qword_1EE09C268;
    sub_1D774FE1C(0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D78BCAB0;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1D775ABD4();
    v14 = 0x6E756F6620746F4ELL;
    if (v11)
    {
      v14 = v9;
    }

    v15 = 0xE900000000000064;
    if (v11)
    {
      v15 = v11;
    }

    *(v13 + 32) = v14;
    *(v13 + 40) = v15;

    v16 = sub_1D78B60A4();
    sub_1D78B42C4("showFamilySetupLandingPage with articleID:%{public}@", 52, 2, &dword_1D7739000, v12, v16, v13);

    if (v11)
    {
      v17 = v8[7];
      v18 = v8[8];
      __swift_project_boxed_opaque_existential_1(v8 + 4, v17);
      (*(v18 + 8))(v9, v11, 0, 0, 0, 0, v17, v18);
    }
  }

  result = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  return result;
}

uint64_t sub_1D77CBC58(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D779C6B0(a1, v20);
  if (!v21)
  {
    sub_1D7756B84(v20);
    goto LABEL_9;
  }

  sub_1D77BFFAC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = v19;
  if (![v19 BOOLValue])
  {

LABEL_9:
    v13 = *(a2 + 80);
    ObjectType = swift_getObjectType();
    v20[0] = 6;
    v15 = *(v13 + 24);
    swift_unknownObjectRetain();
    v16 = v15(v20, ObjectType, v13);
    swift_unknownObjectRelease();
    if (v16)
    {
      v17 = [a3 endOfPurchaseServicesBundleFamilySharingSetupArticleID];
      if (!v17)
      {
        return 0;
      }
    }

    else
    {
      v17 = [a3 endOfPurchaseFamilySharingSetupArticleID];
      if (!v17)
      {
        return 0;
      }
    }

    v5 = v17;
    v12 = sub_1D78B5C74();
    goto LABEL_14;
  }

  v6 = *(a2 + 80);
  v7 = swift_getObjectType();
  v20[0] = 6;
  v8 = *(v6 + 24);
  swift_unknownObjectRetain();
  v9 = v8(v20, v7, v6);
  swift_unknownObjectRelease();
  if ((v9 & 1) == 0)
  {
    v10 = [a3 endOfPurchaseNoFamilySharingSetupArticleID];
    if (v10)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v10 = [a3 endOfPurchaseServicesBundleNoFamilySharingSetupArticleID];
  if (!v10)
  {
LABEL_16:

    return 0;
  }

LABEL_6:
  v11 = v10;
  v12 = sub_1D78B5C74();

LABEL_14:
  return v12;
}

void *FamilySharingLandingPageLauncher.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t FamilySharingLandingPageLauncher.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1D77CBF70(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v67 = a3;
  v7 = sub_1D78B3294();
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v59 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D776F504(0);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v60 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v68 = &v59 - v15;
  v16 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_badgeImageView];
  v70 = type metadata accessor for BundlePaywallRenderModel(0);
  v17 = *(a1 + *(v70 + 24));
  sub_1D78B51F4();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v20 = sub_1D78B5C44();

  v62 = v16;
  [v16 setAccessibilityLabel_];

  [v16 setIsAccessibilityElement_];
  v63 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_titleTextView];
  [v63 setAttributedText_];
  v64 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_subscribeButton];
  [v64 setAttributedTitle:*(a2 + 304) forState:0];
  v65 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_offersButton];
  [v65 setAttributedTitle:*(a2 + 312) forState:0];
  v66 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_webAuthButton];
  [v66 setAttributedTitle:*(a2 + 320) forState:0];
  v21 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v22 = *MEMORY[0x1E69DB670];
  v23 = type metadata accessor for BundlePaywallViewModel(0);
  v24 = sub_1D78B3214();
  v25 = [v21 mutableString];
  v61 = a1;
  v26 = sub_1D78B5C44();
  v27 = [v25 rangeOfString_];
  v29 = v28;

  [v21 addAttribute:v22 value:v24 range:{v27, v29}];
  v30 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_descriptionTextView];
  v31 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v69 = v21;
  v32 = [v31 initWithAttributedString_];
  [v30 setAttributedText_];

  [a4 setFrame_];
  [*&a4[OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_contentView] setFrame_];
  v33 = *&a4[OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_headerImageView];
  [v33 setFrame_];
  [v62 setFrame_];
  [v63 setFrame_];
  [v30 setFrame_];
  [v64 setFrame_];
  [v65 setFrame_];
  v34 = v66;
  [v66 setFrame_];
  v35 = v61;
  [v34 setHidden_];
  sub_1D78B51F4();
  v36 = [a4 layer];
  objc_opt_self();
  v37 = [swift_dynamicCastObjCClassUnconditional() stillImageLayer];

  v38 = v67;
  [v37 setImage_];

  if ([v38 horizontalSizeClass] == 1 || objc_msgSend(v38, sel_verticalSizeClass) == 1)
  {
    v39 = 84;
  }

  else
  {
    v39 = 88;
  }

  v40 = v35;
  v41 = v68;
  sub_1D776F538(v35 + *(v23 + v39), v68);
  v42 = *(v71 + 48);
  v43 = v42(v41, 1, v72);
  sub_1D77C12C8(v41);
  if (v43 == 1)
  {
    [v33 frame];
    v74.origin.x = 0.0;
    v74.origin.y = 0.0;
    v74.size.width = 0.0;
    v74.size.height = 0.0;
    if (!CGRectEqualToRect(v73, v74))
    {
      v51 = *(v40 + *(v70 + 20));
    }

    sub_1D78B51F4();
  }

  else
  {
    v44 = v70;
    v45 = *(v40 + *(v70 + 20));
    v46 = [a4 layer];
    objc_opt_self();
    v47 = v40;
    v48 = [swift_dynamicCastObjCClassUnconditional() stillImageLayer];

    [v48 setImage_];
    v49 = [a4 layer];
    objc_opt_self();
    v50 = [swift_dynamicCastObjCClassUnconditional() player];

    if (v50)
    {
    }

    else
    {
      v52 = v60;
      sub_1D776F538(v47 + *(v44 + 28), v60);
      v53 = v72;
      if (v42(v52, 1, v72) == 1)
      {

        sub_1D77C12C8(v52);
      }

      else
      {
        v54 = v71;
        v55 = v59;
        (*(v71 + 32))(v59, v52, v53);
        v56 = objc_allocWithZone(MEMORY[0x1E6988098]);
        v57 = sub_1D78B3214();
        v58 = [v56 initWithURL_];

        sub_1D77E8D60(v58);
        (*(v54 + 8))(v55, v53);
      }
    }
  }
}

double static PremiumSealView.preferredSize.getter()
{
  if (sub_1D78B5244())
  {
    return 56.0;
  }

  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 horizontalSizeClass];

  result = 68.0;
  if (v2 == 1)
  {
    return 56.0;
  }

  return result;
}

id sub_1D77CC7FC()
{
  v1 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_outerTintColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t (*sub_1D77CC850(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_outerTintColor;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1D77CC8D8;
}

id sub_1D77CC8E4(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  swift_beginAccess();
  v10 = *(v8 + v9);
  *(v8 + v9) = v7;
  v11 = v7;

  return [*(v8 + *a6) setTintColor_];
}

id sub_1D77CC968()
{
  v1 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_innerTintColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t (*sub_1D77CC9BC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_innerTintColor;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1D77CCA44;
}

void sub_1D77CCA50(void *a1, char a2, void *a3)
{
  v5 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    [*(v5[3] + *a3) setTintColor_];
  }

  free(v5);
}

id PremiumSealView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PremiumSealView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_1D77CCB90()
{
  [v0 setAlpha_];
  CGAffineTransformMakeScale(&aBlock, 0.5, 0.5);
  a = aBlock.a;
  b = aBlock.b;
  c = aBlock.c;
  d = aBlock.d;
  tx = aBlock.tx;
  ty = aBlock.ty;
  v7 = *&v0[OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_outerImageView];
  CGAffineTransformRotate(&v15, &aBlock, -0.872664626);
  aBlock = v15;
  [v7 setTransform_];
  v8 = *&v0[OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_innerImageView];
  aBlock.a = a;
  aBlock.b = b;
  aBlock.c = c;
  aBlock.d = d;
  aBlock.tx = tx;
  aBlock.ty = ty;
  [v8 setTransform_];
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  v10 = objc_allocWithZone(MEMORY[0x1E69DD278]);
  *&aBlock.tx = sub_1D77CD510;
  *&aBlock.ty = v9;
  *&aBlock.a = MEMORY[0x1E69E9820];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_1D775FB6C;
  *&aBlock.d = &block_descriptor_12;
  v11 = _Block_copy(&aBlock);
  v12 = v0;

  v13 = [v10 initWithDuration:v11 controlPoint1:0.416 controlPoint2:0.17 animations:{0.17, 0.83, 0.83}];
  _Block_release(v11);
  [v13 startAnimation];

  v14 = sub_1D77CCE90();
  [v14 startAnimation];
}

id sub_1D77CCD84()
{
  *(v0 + OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_isHidingSeal) = 1;
  [*(v0 + OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_outerImageView) setHidden_];
  v1 = *(v0 + OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_innerImageView);

  return [v1 setHidden_];
}

id PremiumSealView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PremiumSealView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D77CCE90()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:35.0 damping:12.0 initialVelocity:{0.0, 0.0}];
  [v0 ts_settlingDuration];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v0 timingParameters:v1];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_1D77CD524;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1D775FB6C;
  v6[3] = &block_descriptor_14;
  v4 = _Block_copy(v6);

  [v2 addAnimations_];
  _Block_release(v4);

  return v2;
}

void sub_1D77CCFE4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_outerImageView);
    v5 = 0x3FF0000000000000;
    v6 = 0;
    v7 = 0;
    v8 = 0x3FF0000000000000;
    v9 = 0;
    v10 = 0;
    v3 = Strong;
    [v2 setTransform_];
    v4 = *&v3[OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_innerImageView];
    v5 = 0x3FF0000000000000;
    v6 = 0;
    v7 = 0;
    v8 = 0x3FF0000000000000;
    v9 = 0;
    v10 = 0;
    [v4 setTransform_];
  }
}

void sub_1D77CD090(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_outerImageView);
  v3 = sub_1D77CD170();
  [v2 setImage_];

  v4 = *(a1 + OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_innerImageView);
  if (qword_1EE0905F8 != -1)
  {
    swift_once();
  }

  v5 = [qword_1EE09C2A8 imageWithRenderingMode_];
  [v4 setImage_];
}

id sub_1D77CD170()
{
  v0 = [objc_opt_self() sharedAccount];
  v1 = [v0 supportedContentLanguage];

  if (v1 == 1)
  {
    if (qword_1EC9C8480 != -1)
    {
      swift_once();
    }

    v2 = &qword_1EC9D9E20;
  }

  else
  {
    if (qword_1EE0905E8 != -1)
    {
      swift_once();
    }

    v2 = &qword_1EE09C2A0;
  }

  v3 = [*v2 imageWithRenderingMode_];

  return v3;
}

void _s16NewsSubscription15PremiumSealViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_outerTintColor;
  v2 = objc_opt_self();
  *(v0 + v1) = [v2 labelColor];
  v3 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_innerTintColor;
  *(v0 + v3) = [v2 systemPinkColor];
  *(v0 + OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_isHidingSeal) = 1;
  v4 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_outerImageView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v5 = OBJC_IVAR____TtC16NewsSubscription15PremiumSealView_innerImageView;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  sub_1D78B6524();
  __break(1u);
}

id keypath_getTm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t PurchaseFailedAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t PurchaseFailedAlert.message.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PurchaseFailedAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t PurchaseFailedAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

uint64_t sub_1D77CD780()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D77CD89C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D77CD8BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

void sub_1D77CD908(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v30 = a1;
  v31 = a2;
  sub_1D77CF76C(0, &qword_1EC9CA2A0, MEMORY[0x1E69D7980]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v24 - v8;
  sub_1D77CF6F0(0);
  v29 = v10;
  v32 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v34 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69D87F8];
  sub_1D77CF76C(0, &qword_1EC9CA2A8, MEMORY[0x1E69D87F8]);
  sub_1D77CF9E0(&qword_1EC9CA2B0, &qword_1EC9CA2A8, v13, MEMORY[0x1E69D8810]);
  v14 = sub_1D78B5FD4();
  if (v14)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1D77D98F4(0, v14 & ~(v14 >> 63), 0);
    v35 = v37;
    sub_1D78B5FC4();
    if ((v14 & 0x8000000000000000) == 0)
    {
      v15 = v6;
      v16 = 0;
      v27 = (v15 + 16);
      v28 = (v15 + 8);
      v24[1] = v32 + 32;
      v25 = v14;
      v26 = v9;
      while (!__OFADD__(v16, 1))
      {
        v33 = v16 + 1;
        v17 = sub_1D78B5FF4();
        (*v27)(v9);
        v17(v36, 0);
        v30(v9);
        if (v3)
        {
          goto LABEL_12;
        }

        v3 = 0;
        v18 = v9;
        v19 = v5;
        (*v28)(v18, v5);
        v20 = v35;
        v37 = v35;
        v22 = *(v35 + 16);
        v21 = *(v35 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1D77D98F4((v21 > 1), v22 + 1, 1);
          v20 = v37;
        }

        *(v20 + 16) = v22 + 1;
        v23 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        v35 = v20;
        (*(v32 + 32))(v20 + v23 + *(v32 + 72) * v22, v34, v29);
        sub_1D78B5FE4();
        ++v16;
        v5 = v19;
        v9 = v26;
        if (v33 == v25)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v28)(v9, v5);

    __break(1u);
  }
}

void sub_1D77CDCD4(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v38 = a1;
  v39 = a2;
  sub_1D77CF978(0, &qword_1EC9CA2C0, sub_1D77CE220, &type metadata for HideMyEmailSignupModel, MEMORY[0x1E69D76A0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v32 - v10;
  sub_1D77CF978(0, &qword_1EC9CA2B8, sub_1D77CE1C8, &type metadata for HideMyEmailSignupLayoutModel, MEMORY[0x1E69D7BF0]);
  v37 = v12;
  v40 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v42 = v32 - v14;
  v15 = MEMORY[0x1E69D7980];
  sub_1D77CF76C(0, &qword_1EC9CA2A0, MEMORY[0x1E69D7980]);
  v17 = v16;
  v18 = sub_1D77CF9E0(&unk_1EC9CA2C8, &qword_1EC9CA2A0, v15, MEMORY[0x1E69D79A0]);
  v19 = sub_1D78B5FD4();
  if (v19)
  {
    v45 = MEMORY[0x1E69E7CC0];
    sub_1D77D9944(0, v19 & ~(v19 >> 63), 0);
    v43 = v45;
    sub_1D78B5FC4();
    if ((v19 & 0x8000000000000000) == 0)
    {
      v20 = v8;
      v21 = 0;
      v35 = (v20 + 16);
      v36 = (v20 + 8);
      v32[1] = v40 + 32;
      v33 = v19;
      v34 = v11;
      while (!__OFADD__(v21, 1))
      {
        v41 = v21 + 1;
        v22 = v17;
        v23 = v5;
        v24 = v18;
        v25 = v22;
        v26 = v24;
        v27 = sub_1D78B5FF4();
        (*v35)(v11);
        v27(v44, 0);
        v38(v11);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v36)(v11, v7);
        v28 = v43;
        v45 = v43;
        v30 = *(v43 + 16);
        v29 = *(v43 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1D77D9944((v29 > 1), v30 + 1, 1);
          v28 = v45;
        }

        *(v28 + 16) = v30 + 1;
        v31 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v43 = v28;
        (*(v40 + 32))(v28 + v31 + *(v40 + 72) * v30, v42, v37);
        v5 = v23;
        v17 = v25;
        v18 = v26;
        sub_1D78B5FE4();
        ++v21;
        v11 = v34;
        if (v41 == v33)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v36)(v11, v7);

    __break(1u);
  }
}

unint64_t sub_1D77CE118()
{
  result = qword_1EE090CA0;
  if (!qword_1EE090CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE090CA0);
  }

  return result;
}

unint64_t sub_1D77CE170()
{
  result = qword_1EE090900;
  if (!qword_1EE090900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE090900);
  }

  return result;
}

unint64_t sub_1D77CE1C8()
{
  result = qword_1EE091FA0;
  if (!qword_1EE091FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE091FA0);
  }

  return result;
}

unint64_t sub_1D77CE220()
{
  result = qword_1EE093668;
  if (!qword_1EE093668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE093668);
  }

  return result;
}

double sub_1D77CE274@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, CGFloat a4@<D0>)
{
  sub_1D78B4994();
  v9 = v8 + -60.0;
  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  v10 = sub_1D77BA068(*a1, a1[1]);
  sub_1D78B49A4();
  v70 = v10;
  [v10 boundingRectWithSize:3 options:0 context:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v73.origin.x = 30.0;
  v73.size.height = 30.0;
  v71 = v9;
  v72 = a4;
  v73.origin.y = a4;
  v73.size.width = v9;
  v19 = CGRectGetMaxY(v73) + 14.0;
  sub_1D78B49A4();
  v21 = v20;
  v74.origin.x = v12;
  v74.origin.y = v14;
  v74.size.width = v16;
  v74.size.height = v18;
  v75.size.height = CGRectGetHeight(v74);
  v75.origin.x = 0.0;
  v75.origin.y = v19;
  v75.size.width = v21;
  v76 = CGRectIntegral(v75);
  x = v76.origin.x;
  y = v76.origin.y;
  width = v76.size.width;
  height = v76.size.height;
  v26 = *__swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  sub_1D778AF9C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BF690;
  v28 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v29 = sub_1D773F004(0, &qword_1EE08FC10, 0x1E69DB878);
  v30 = v28;
  v31 = sub_1D78B61B4();
  v32 = MEMORY[0x1E69DB688];
  *(inited + 40) = v31;
  v33 = *v32;
  *(inited + 64) = v29;
  *(inited + 72) = v33;
  v34 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v35 = v33;
  v36 = [v34 init];
  [v36 setAlignment_];
  v37 = sub_1D773F004(0, &qword_1EC9CA0F8, 0x1E69DB7D0);
  *(inited + 80) = v36;
  v38 = *MEMORY[0x1E69DB650];
  *(inited + 104) = v37;
  *(inited + 112) = v38;
  v39 = *(v26 + 64);
  v40 = v38;
  v41 = [v39 tertiaryColor];
  v42 = sub_1D77BAD38(v41);

  *(inited + 144) = sub_1D773F004(0, &qword_1EE08FC00, 0x1E69DC888);
  if (!v42)
  {
    v42 = [objc_opt_self() labelColor];
  }

  *(inited + 120) = v42;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4(0);
  swift_arrayDestroy();
  v43 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v44 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v45 = sub_1D78B5BB4();

  v46 = [v43 initWithString:v44 attributes:v45];

  sub_1D78B49A4();
  [v46 boundingRectWithSize:3 options:0 context:?];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v77.origin.x = x;
  v77.origin.y = y;
  v77.size.width = width;
  v77.size.height = height;
  v68 = x;
  v69 = width;
  v55 = CGRectGetMaxY(v77) + 10.0;
  sub_1D78B49A4();
  v56 = height;
  v57 = y;
  v59 = v58;
  v78.origin.x = v48;
  v78.origin.y = v50;
  v78.size.width = v52;
  v78.size.height = v54;
  v79.size.height = CGRectGetHeight(v78);
  v79.origin.x = 0.0;
  v79.origin.y = v55;
  v79.size.width = v59;
  v80 = CGRectIntegral(v79);
  v60 = v80.origin.x;
  v61 = v80.origin.y;
  v62 = v80.size.width;
  v63 = v80.size.height;
  sub_1D78B4994();
  v65 = v64;
  v81.origin.x = v60;
  v81.origin.y = v61;
  v81.size.width = v62;
  v81.size.height = v63;
  MaxY = CGRectGetMaxY(v81);

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = v65;
  *(a3 + 24) = MaxY + 25.0;
  *(a3 + 32) = 0x403E000000000000;
  *(a3 + 40) = v72;
  *(a3 + 48) = v71;
  *(a3 + 56) = 0x403E000000000000;
  result = v69;
  *(a3 + 64) = v68;
  *(a3 + 72) = v57;
  *(a3 + 80) = v69;
  *(a3 + 88) = v56;
  *(a3 + 96) = v60;
  *(a3 + 104) = v61;
  *(a3 + 112) = v62;
  *(a3 + 120) = v63;
  return result;
}

uint64_t sub_1D77CE6E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v68 = a3;
  sub_1D77CF978(0, &qword_1EC9CA2B8, sub_1D77CE1C8, &type metadata for HideMyEmailSignupLayoutModel, MEMORY[0x1E69D7BF0]);
  v7 = v6;
  v113 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v57 - v9;
  sub_1D77CF76C(0, &qword_1EC9CA2A0, MEMORY[0x1E69D7980]);
  sub_1D78B46F4();
  sub_1D77CF7F0(&v106, v110);
  sub_1D77CF7F0(v110, v111);
  v108[2] = v111[2];
  v109[0] = v112[0];
  *(v109 + 9) = *(v112 + 9);
  v108[1] = v111[1];
  v108[0] = v111[0];
  sub_1D78B49A4();
  v114.origin.x = v11 * 0.5 + -107.5;
  v114.size.width = 215.0;
  v114.size.height = 44.0;
  v114.origin.y = 30.0;
  v115 = CGRectIntegral(v114);
  x = v115.origin.x;
  y = v115.origin.y;
  width = v115.size.width;
  height = v115.size.height;
  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  v15 = sub_1D77BA458();
  v16 = sub_1D78B6154();
  [v16 ascender];
  v18 = v17;

  v19 = sub_1D78B6154();
  [v19 capHeight];
  v21 = v20;

  v22 = v21 - v18 + 30.0;
  sub_1D78B49A4();
  v65 = v15;
  [v15 boundingRectWithSize:3 options:0 context:?];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v63 = y;
  v64 = x;
  v116.origin.x = x;
  v116.origin.y = y;
  v62 = width;
  v116.size.width = width;
  v116.size.height = height;
  v31 = v22 + CGRectGetMaxY(v116);
  sub_1D78B49A4();
  v33 = v32;
  v117.origin.x = v24;
  v117.origin.y = v26;
  v117.size.width = v28;
  v117.size.height = v30;
  v118.size.height = CGRectGetHeight(v117);
  v34 = 0.0;
  v118.origin.x = 0.0;
  v118.origin.y = v31;
  v118.size.width = v33;
  v119 = CGRectIntegral(v118);
  v35 = v119.origin.x;
  v36 = v119.origin.y;
  v37 = v119.size.width;
  v38 = v119.size.height;
  sub_1D78B4994();
  v40 = v39;
  v120.origin.x = v35;
  v120.origin.y = v36;
  v61 = v37;
  v120.size.width = v37;
  v120.size.height = v38;
  v121.size.height = CGRectGetMaxY(v120) + 20.0;
  v121.origin.x = 0.0;
  v121.origin.y = 0.0;
  v121.size.width = v40;
  v122 = CGRectIntegral(v121);
  v41 = v122.origin.x;
  v42 = v122.origin.y;
  v43 = v122.size.width;
  v44 = v122.size.height;
  v71[2] = a1;
  v71[3] = a2;
  sub_1D77CDCD4(sub_1D77CF84C, v71);
  v46 = v45;
  v60 = v3;
  v66 = a1;
  v67 = a2;
  sub_1D77CE274(v108, a2, v107, 0.0);
  v123.origin.x = v41;
  v123.origin.y = v42;
  v123.size.width = v43;
  v123.size.height = v44;
  v59 = CGRectGetHeight(v123);
  v58 = CGRectGetHeight(v107[0]);
  v69 = v46;
  v47 = *(v46 + 16);
  if (v47)
  {
    v48 = v113 + 16;
    v113 = *(v113 + 16);
    v49 = v69 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
    v50 = *(v48 + 56);
    v51 = (v48 - 8);
    (v113)(v10, v49, v7);
    while (1)
    {
      sub_1D78B4904();
      v85[6] = v103;
      v85[7] = v104;
      v86[0] = v105[0];
      *(v86 + 9) = *(v105 + 9);
      v85[2] = v99;
      v85[3] = v100;
      v85[4] = v101;
      v85[5] = v102;
      v85[0] = v97;
      v85[1] = v98;
      v87[6] = v103;
      v87[7] = v104;
      v88[0] = v105[0];
      *(v88 + 9) = *(v105 + 9);
      v87[2] = v99;
      v87[3] = v100;
      v87[4] = v101;
      v87[5] = v102;
      v87[0] = v97;
      v87[1] = v98;
      if (sub_1D77CF86C(v87) > 1)
      {
        nullsub_1();
        sub_1D77CF874(v85);
        (*v51)(v10, v7);
      }

      else
      {
        nullsub_1();
        sub_1D77CF874(v85);
        sub_1D78B4904();
        (*v51)(v10, v7);
        v81[6] = v78;
        v81[7] = v79;
        v82[0] = v80[0];
        *(v82 + 9) = *(v80 + 9);
        v81[2] = v74;
        v81[3] = v75;
        v81[4] = v76;
        v81[5] = v77;
        v81[0] = v72;
        v81[1] = v73;
        v83[6] = v78;
        v83[7] = v79;
        v84[0] = v80[0];
        *(v84 + 9) = *(v80 + 9);
        v83[2] = v74;
        v83[3] = v75;
        v83[4] = v76;
        v83[5] = v77;
        v83[0] = v72;
        v83[1] = v73;
        sub_1D77CF86C(v83);
        nullsub_1();
        v53 = v52;
        sub_1D77CF874(v81);
        v34 = v34 + *(v53 + 16);
      }

      v49 += v50;
      if (!--v47)
      {
        break;
      }

      (v113)(v10, v49, v7);
    }
  }

  v54 = v59 + v58 + v34;
  sub_1D78B4994();
  sub_1D77CE274(v108, v67, v87, fmax((v55 - v54) * 0.28, 40.0));
  *v88 = v41;
  *(v88 + 1) = v42;
  *&v88[1] = v43;
  *(&v88[1] + 1) = v44;
  v89 = v64;
  v90 = v63;
  v91 = v62;
  v92 = height;
  v93 = v35;
  v94 = v36;
  v95 = v61;
  v96 = v38;
  nullsub_1();
  sub_1D77CF8C8(v87, v85);
  sub_1D77CE170();
  sub_1D77CE1C8();
  sub_1D78B49D4();

  return sub_1D77CF924(v110);
}

void sub_1D77CED98(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D78B49B4();
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = sub_1D78B6164();
  if (v2)
  {
    sub_1D78B4984();
    v5 = v4;
  }

  else
  {
    sub_1D78B4994();
    v5 = v6 * 0.3;
  }

  sub_1D77CF978(0, &qword_1EC9CA2C0, sub_1D77CE220, &type metadata for HideMyEmailSignupModel, MEMORY[0x1E69D76A0]);
  sub_1D78B4594();
  v7 = v93;
  v8 = v94;
  v9 = v95;
  v10 = v96;
  v11 = v97;
  v12 = v99 >> 6;
  v60 = v98;
  if (!v12)
  {
    v100 = v93;
    v101 = v94;
    v102 = v95;
    v103 = v96;
    v104 = v97;
    v105 = v98;
    v106 = v99 & 1;
    v17 = v99;
    sub_1D78B4594();
    v107 = v62;
    v108 = v63;
    v109 = v64;
    v110 = v65;
    v18 = sub_1D78235CC();
    v20 = v19;
    sub_1D77CFA8C(&v107);
    sub_1D77CFAEC(&v100, &v66, v5);
    sub_1D77CFA24(v7, v8, v9, v10, v11, v60, v17);
    *&v84 = v18;
    *(&v84 + 1) = v20;
    v91 = v72;
    *v92 = v73;
    *&v92[16] = v74;
    v87 = v68;
    v88 = v69;
    v89 = v70;
    v90 = v71;
    v85 = v66;
    v86 = v67;
    sub_1D77D02B0(&v84);
    v81 = v90;
    v82 = v91;
    v83[0] = *v92;
    *(v83 + 9) = *&v92[9];
    v77 = v86;
    v78 = v87;
    v79 = v88;
    v80 = v89;
    v75 = v84;
    v76 = v85;
    goto LABEL_8;
  }

  if (v12 == 1)
  {
    v100 = v93;
    v101 = v94;
    v102 = v95;
    v103 = v96;
    v104 = v97;
    v105 = v98;
    v106 = v99 & 1;
    v13 = v99;
    sub_1D78B4594();
    v107 = v62;
    v108 = v63;
    v109 = v64;
    v110 = v65;
    v14 = sub_1D78235CC();
    v16 = v15;
    sub_1D77CFA8C(&v107);
    sub_1D77CFAEC(&v100, &v66, v5);
    sub_1D77CFA24(v7, v8, v9, v10, v11, v60, v13);
    *&v84 = v14;
    *(&v84 + 1) = v16;
    v91 = v72;
    *v92 = v73;
    *&v92[16] = v74;
    v87 = v68;
    v88 = v69;
    v89 = v70;
    v90 = v71;
    v85 = v66;
    v86 = v67;
    sub_1D77D02A4(&v84);
    v81 = v90;
    v82 = v91;
    v83[0] = *v92;
    *(v83 + 9) = *&v92[9];
    v77 = v86;
    v78 = v87;
    v79 = v88;
    v80 = v89;
    v75 = v84;
    v76 = v85;
LABEL_8:
    sub_1D77CE1C8();
    sub_1D78B48F4();
    return;
  }

  v59 = v97;
  v57 = v95;
  v58 = v96;
  v21 = v94;
  v56 = v99;
  v22 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v22 setLineBreakMode_];
  sub_1D778AF9C(0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D78BF690;
  v24 = *MEMORY[0x1E69DB648];
  *(v23 + 32) = *MEMORY[0x1E69DB648];
  v25 = sub_1D773F004(0, &qword_1EE08FC10, 0x1E69DB878);
  v26 = v24;
  *(v23 + 40) = sub_1D78B61B4();
  v27 = *MEMORY[0x1E69DB650];
  *(v23 + 64) = v25;
  *(v23 + 72) = v27;
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 labelColor];
  v31 = sub_1D773F004(0, &qword_1EE08FC00, 0x1E69DC888);
  *(v23 + 80) = v30;
  v32 = *MEMORY[0x1E69DB688];
  *(v23 + 104) = v31;
  *(v23 + 112) = v32;
  *(v23 + 144) = sub_1D773F004(0, &unk_1EE08FCD8, 0x1E69DB7C8);
  *(v23 + 120) = v22;
  v33 = v32;
  v34 = v22;
  sub_1D77FED68(v23);
  swift_setDeallocating();
  sub_1D778AFF4(0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v35 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v36 = sub_1D78B5C44();
  sub_1D77CFA24(v7, v21, v57, v58, v59, v60, v56);
  type metadata accessor for Key(0);
  sub_1D778B060();
  v37 = sub_1D78B5BB4();

  v38 = [v35 initWithString:v36 attributes:v37];

  sub_1D78B49A4();
  [v38 boundingRectWithSize:3 options:0 context:{v39 - (v5 + 19.0 + 3.0), 1.79769313e308}];
  x = v111.origin.x;
  y = v111.origin.y;
  width = v111.size.width;
  height = v111.size.height;
  v44 = CGRectGetWidth(v111);
  v112.origin.x = x;
  v112.origin.y = y;
  v112.size.width = width;
  v112.size.height = height;
  v113.size.height = CGRectGetHeight(v112);
  v113.origin.y = 13.0;
  v113.origin.x = v5 + 19.0 + 3.0;
  v113.size.width = v44;
  v114 = CGRectIntegral(v113);
  v45 = v114.origin.x;
  v46 = v114.origin.y;
  v47 = v114.size.width;
  v48 = v114.size.height;
  v49 = CGRectGetMaxY(v114) + 13.0;
  v115.origin.y = v49 * 0.5 + -9.5;
  v115.size.width = 19.0;
  v115.size.height = 19.0;
  v115.origin.x = v5;
  v116 = CGRectIntegral(v115);
  v61 = v116.origin.x;
  v50 = v116.origin.y;
  v51 = v116.size.width;
  v52 = v116.size.height;
  sub_1D78B4594();
  v66 = v107;
  v67 = v108;
  v68 = v109;
  LOBYTE(v69) = v110;
  v53 = sub_1D78235CC();
  v55 = v54;
  sub_1D77CFA8C(&v66);
  *&v84 = v53;
  *(&v84 + 1) = v55;
  *&v85 = v49;
  *(&v85 + 1) = v45;
  *&v86 = v46;
  *(&v86 + 1) = v47;
  *&v87 = v48;
  *(&v87 + 1) = v61;
  *&v88 = v50;
  *(&v88 + 1) = v51;
  *&v89 = v52;
  sub_1D77CFAE0(&v84);
  v81 = v90;
  v82 = v91;
  v83[0] = *v92;
  *(v83 + 9) = *&v92[9];
  v77 = v86;
  v78 = v87;
  v79 = v88;
  v80 = v89;
  v75 = v84;
  v76 = v85;
  sub_1D77CE1C8();
  sub_1D78B48F4();
}