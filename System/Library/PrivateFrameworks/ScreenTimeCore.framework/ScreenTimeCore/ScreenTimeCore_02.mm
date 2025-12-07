uint64_t sub_1B83C85D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B83B6A88;

  return sub_1B83C8144(v2, v3, v5, v4);
}

uint64_t sub_1B83C8698()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B83B6A88;

  return sub_1B83CD0D8(v2, v3, v4);
}

uint64_t sub_1B83C8758(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B83B6A88;

  return sub_1B83CD1C0(a1, v4, v5, v6);
}

uint64_t sub_1B83C8824()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B83B6A88;

  return sub_1B83C7D68(v2);
}

uint64_t sub_1B83C88EC()
{
  v1 = [objc_opt_self() createScreenTimeBag];
  v0[19] = v1;
  v2 = sub_1B83DDCBC();
  v0[20] = v2;
  v3 = [v1 stringForKey_];
  v0[21] = v3;
  v4 = [v3 valuePromise];
  v0[22] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B83C8A8C;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA85100, &qword_1B83E99A8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B83C7738;
  v0[13] = &block_descriptor_48;
  v0[14] = v5;
  [v4 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B83C8A8C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1B83C8C48;
  }

  else
  {
    v2 = sub_1B83C8B9C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B83C8B9C()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = sub_1B83DDCEC();
  v8 = v7;

  v9 = v0[1];

  return v9(v6, v8);
}

uint64_t sub_1B83C8C48()
{
  v1 = v0[22];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B83C8CF0()
{
  v1 = [objc_opt_self() ams_sharedAccountStore];
  v2 = *MEMORY[0x1E698C4D0];
  v0[19] = v1;
  v0[20] = v2;
  v3 = [v1 ams:v2 activeiTunesAccountForMediaType:?];
  v0[21] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B83C8E64;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA851D0, &qword_1B83E9978);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B83C7738;
  v0[13] = &block_descriptor_3;
  v0[14] = v4;
  [v3 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B83C8E64()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1B83C8FEC;
  }

  else
  {
    v2 = sub_1B83C8F74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B83C8F74()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  v3 = *(v0 + 144);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1B83C8FEC()
{
  v1 = v0[21];
  v3 = v0[19];
  v2 = v0[20];
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t objectdestroy_16Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B83C90C8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B83B6690;

  return sub_1B83C7988(v2);
}

uint64_t objectdestroy_7Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void __swiftcall STStorefrontClient.init()(STStorefrontClient *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id STStorefrontClient.init()()
{
  type metadata accessor for STAMSStorefrontClient();
  *&v0[OBJC_IVAR___STStorefrontClient_amsStorefrontClient] = swift_allocObject();
  v2.receiver = v0;
  v2.super_class = STStorefrontClient;
  return objc_msgSendSuper2(&v2, sel_init);
}

id STStorefrontClient.init(amsStorefrontClient:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAmsStorefrontClient_];
  swift_unknownObjectRelease();
  return v1;
}

char *STStorefrontClient.init(amsStorefrontClient:)(uint64_t a1)
{
  v3 = [v1 init];
  *&v3[OBJC_IVAR___STStorefrontClient_amsStorefrontClient] = a1;
  v4 = v3;

  swift_unknownObjectRelease();
  return v4;
}

uint64_t STStorefrontClient.fetchStorefront(with:)(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = sub_1B83DD9EC();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v4 = sub_1B83DDC5C();
  v2[27] = v4;
  v2[28] = *(v4 - 8);
  v2[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B83C9500, 0, 0);
}

uint64_t sub_1B83C9500()
{
  v1 = v0[21];
  v2 = v0[22];
  sub_1B83DDC4C();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B83C9694;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA85118, &unk_1B83E99B8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B83CE59C;
  v0[13] = &block_descriptor_4;
  v0[14] = v3;
  [v2 fetchStorefrontFromAMSWith:v1 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B83C9694()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_1B83C98A8;
  }

  else
  {
    v2 = sub_1B83C97D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B83C97D0()
{
  (*(v0[28] + 8))(v0[29], v0[27]);
  v2 = v0[18];
  v1 = v0[19];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_1B83C98A8()
{
  v49 = v0;
  v48[1] = *MEMORY[0x1E69E9840];
  v1 = v0[30];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[21];
  swift_willThrow();
  v7 = [v6 localDeviceLocale];
  sub_1B83DD9AC();

  (*(v5 + 16))(v3, v2, v4);
  v8 = v1;
  v9 = sub_1B83DDC3C();
  v10 = sub_1B83DDE9C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[30];
    v13 = v0[24];
    v12 = v0[25];
    v14 = v0[23];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v48[0] = v45;
    *v15 = 138543618;
    v17 = v11;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    *(v15 + 12) = 2082;
    sub_1B83CDB3C();
    v19 = sub_1B83DE17C();
    v21 = v20;
    v47 = *(v13 + 8);
    v47(v12, v14);
    v22 = sub_1B83CD594(v19, v21, v48);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_1B831F000, v9, v10, "STStorefrontClient failed to fetch storefront from AMS: %{public}@; falling back to storefront from locale %{public}s", v15, 0x16u);
    sub_1B83AD84C(v16, &qword_1EBA84F40, &unk_1B83E8E90);
    MEMORY[0x1B8CBE260](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1B8CBE260](v45, -1, -1);
    MEMORY[0x1B8CBE260](v15, -1, -1);
  }

  else
  {
    v24 = v0[24];
    v23 = v0[25];
    v25 = v0[23];

    v47 = *(v24 + 8);
    v47(v23, v25);
  }

  v26 = v0[22];
  v27 = sub_1B83DD99C();
  v0[20] = 0;
  v28 = [v26 fetchStorefrontFromLocale:v27 error:v0 + 20];

  v29 = v0[20];
  v30 = v0[29];
  v31 = v0[30];
  v32 = v0[27];
  v33 = v0[28];
  v34 = v0[26];
  if (v28)
  {
    v35 = v0[23];
    v36 = sub_1B83DDCEC();
    v44 = v37;
    v46 = v36;
    v38 = v29;

    v47(v34, v35);
    (*(v33 + 8))(v30, v32);

    v39 = v0[1];

    return v39(v46, v44);
  }

  else
  {
    v41 = v0[23];
    v42 = v29;
    sub_1B83DD8CC();

    swift_willThrow();
    v47(v34, v41);
    (*(v33 + 8))(v30, v32);

    v43 = v0[1];

    return v43();
  }
}

uint64_t sub_1B83C9E84(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B83C9F48;

  return STStorefrontClient.fetchStorefront(with:)(v6);
}

uint64_t sub_1B83C9F48(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *(*v3 + 32);
  v7 = *(*v3 + 24);
  v8 = *(*v3 + 16);
  v9 = *v3;

  if (v2)
  {
    if (v6)
    {
      v10 = *(v5 + 32);
      v11 = sub_1B83DD8BC();

      v10[2](v10, 0, v11);
      v12 = v10;
LABEL_6:
      _Block_release(v12);

      goto LABEL_9;
    }
  }

  else
  {
    if (v6)
    {
      v13 = *(v5 + 32);
      v11 = sub_1B83DDCBC();

      v13[2](v13, v11, 0);
      v12 = v13;
      goto LABEL_6;
    }
  }

LABEL_9:
  v14 = *(v9 + 8);

  return v14();
}

uint64_t sub_1B83CA140(uint64_t a1)
{
  v2[74] = v1;
  v2[73] = a1;
  v3 = sub_1B83DDC5C();
  v2[75] = v3;
  v2[76] = *(v3 - 8);
  v2[77] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B83CA204, 0, 0);
}

uint64_t sub_1B83CA204()
{
  *(v0 + 624) = [*(v0 + 584) userDSID];
  sub_1B83A1210(0, &qword_1EBA836E8, 0x1E696AD98);
  v1 = sub_1B83DDF0C();
  v2 = sub_1B83DDF2C();

  sub_1B83DDC4C();
  v3 = sub_1B83DDC3C();
  v4 = sub_1B83DDEAC();
  v5 = os_log_type_enabled(v3, v4);
  if (v2)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1B831F000, v3, v4, "STStorefrontClient found local non-iCloud user", v6, 2u);
      MEMORY[0x1B8CBE260](v6, -1, -1);
    }

    v7 = v0 + 208;
    v8 = *(v0 + 592);

    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 560;
    *(v0 + 216) = sub_1B83CA55C;
    v9 = swift_continuation_init();
    *(v0 + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA85118, &unk_1B83E99B8);
    *(v0 + 464) = MEMORY[0x1E69E9820];
    *(v0 + 472) = 1107296256;
    *(v0 + 480) = sub_1B83CE59C;
    *(v0 + 488) = &block_descriptor_80;
    *(v0 + 496) = v9;
    [v8 fetchStorefrontFromAMSForLocalUserWithCompletionHandler_];
  }

  else
  {
    if (v5)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1B831F000, v3, v4, "STStorefrontClient fetching active iTunes account...", v10, 2u);
      MEMORY[0x1B8CBE260](v10, -1, -1);
    }

    v7 = v0 + 16;
    v11 = *(v0 + 592);

    *(v0 + 640) = *(v11 + OBJC_IVAR___STStorefrontClient_amsStorefrontClient);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 576;
    *(v0 + 24) = sub_1B83CA714;
    v12 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA851D0, &qword_1B83E9978);
    *(v0 + 272) = MEMORY[0x1E69E9820];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_1B83C7738;
    *(v0 + 296) = &block_descriptor_70;
    *(v0 + 304) = v12;
    [swift_unknownObjectRetain() activeiTunesAccountWithCompletionHandler_];
  }

  return MEMORY[0x1EEE6DEC8](v7);
}

uint64_t sub_1B83CA55C()
{
  v1 = *(*v0 + 240);
  *(*v0 + 632) = v1;
  if (v1)
  {
    v2 = sub_1B83CB224;
  }

  else
  {
    v2 = sub_1B83CA66C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B83CA66C()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 608);
  v3 = *(v0 + 600);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 560);
  v5 = *(v0 + 568);

  v6 = *(v0 + 8);

  return v6(v4, v5);
}

uint64_t sub_1B83CA714()
{
  v1 = *(*v0 + 48);
  *(*v0 + 648) = v1;
  if (v1)
  {
    v2 = sub_1B83CB2CC;
  }

  else
  {
    v2 = sub_1B83CA824;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B83CA824()
{
  v1 = v0[72];
  v0[82] = v1;
  swift_unknownObjectRelease();
  v2 = v1;
  v3 = sub_1B83DDC3C();
  v4 = sub_1B83DDEAC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_1B831F000, v3, v4, "STStorefrontClient successfully fetched active iTunes account: %@", v5, 0xCu);
    sub_1B83AD84C(v6, &qword_1EBA84F40, &unk_1B83E8E90);
    MEMORY[0x1B8CBE260](v6, -1, -1);
    MEMORY[0x1B8CBE260](v5, -1, -1);
  }

  v8 = [v2 ams_DSID];
  v0[83] = v8;
  v9 = v0[78];
  if (v8)
  {
    v10 = v8;
    sub_1B83A1210(0, &qword_1EBA851D8, 0x1E69E58C0);
    v11 = sub_1B83DDF2C();
    v12 = v9;
    v13 = v0[78];
    if (v11)
    {
      v14 = sub_1B83DDC3C();
      v15 = sub_1B83DDEAC();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = v0[78];
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138543362;
        *(v17 + 4) = v16;
        *v18 = v16;
        v19 = v16;
        _os_log_impl(&dword_1B831F000, v14, v15, "STStorefrontClient found active iTunes account matching DSID %{public}@", v17, 0xCu);
        sub_1B83AD84C(v18, &qword_1EBA84F40, &unk_1B83E8E90);
        MEMORY[0x1B8CBE260](v18, -1, -1);
        MEMORY[0x1B8CBE260](v17, -1, -1);
      }

      v20 = v0[74];

      v0[18] = v0;
      v0[23] = v0 + 68;
      v0[19] = sub_1B83CAE84;
      v21 = swift_continuation_init();
      v0[57] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA85118, &unk_1B83E99B8);
      v0[50] = MEMORY[0x1E69E9820];
      v0[51] = 1107296256;
      v0[52] = sub_1B83CE59C;
      v0[53] = &block_descriptor_77;
      v0[54] = v21;
      [v20 fetchStorefrontFromAMSForLocalUserWithCompletionHandler_];
      v22 = v0 + 18;
    }

    else
    {
      v37 = v10;
      v38 = sub_1B83DDC3C();
      v39 = sub_1B83DDEAC();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = v0[78];
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138543618;
        *(v41 + 4) = v37;
        *(v41 + 12) = 2114;
        *(v41 + 14) = v40;
        *v42 = v10;
        v42[1] = v40;
        v43 = v40;
        v44 = v37;
        _os_log_impl(&dword_1B831F000, v38, v39, "STStorefrontClient found local signed-in iTunes account with DSID %{public}@ different from user DSID %{public}@; assuming user is remote child", v41, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F40, &unk_1B83E8E90);
        swift_arrayDestroy();
        MEMORY[0x1B8CBE260](v42, -1, -1);
        MEMORY[0x1B8CBE260](v41, -1, -1);
      }

      v45 = v0[78];
      v46 = v0[74];

      v0[10] = v0;
      v0[15] = v0 + 66;
      v0[11] = sub_1B83CB054;
      v47 = swift_continuation_init();
      v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA85118, &unk_1B83E99B8);
      v0[42] = MEMORY[0x1E69E9820];
      v0[43] = 1107296256;
      v0[44] = sub_1B83CE59C;
      v0[45] = &block_descriptor_73;
      v0[46] = v47;
      [v46 fetchStorefrontFromAMSForChildWithDSID:v45 parentAccount:v2 completionHandler:v0 + 42];
      v22 = v0 + 10;
    }

    return MEMORY[0x1EEE6DEC8](v22);
  }

  else
  {
    v23 = v9;
    v24 = sub_1B83DDC3C();
    v25 = sub_1B83DDE9C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v0[78];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543362;
      *(v27 + 4) = v26;
      *v28 = v26;
      v29 = v26;
      _os_log_impl(&dword_1B831F000, v24, v25, "STStorefrontClient got options with iCloud user DSID %{public}@, but active iTunes account has nil DSID", v27, 0xCu);
      sub_1B83AD84C(v28, &qword_1EBA84F40, &unk_1B83E8E90);
      MEMORY[0x1B8CBE260](v28, -1, -1);
      MEMORY[0x1B8CBE260](v27, -1, -1);
    }

    v30 = v0[78];
    v31 = v0[77];
    v32 = v0[76];
    v33 = v0[75];

    sub_1B83CDFC0();
    swift_allocError();
    *v34 = 1;
    swift_willThrow();

    (*(v32 + 8))(v31, v33);

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_1B83CAE84()
{
  v1 = *(*v0 + 176);
  *(*v0 + 672) = v1;
  if (v1)
  {
    v2 = sub_1B83CB388;
  }

  else
  {
    v2 = sub_1B83CAF94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B83CAF94()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 608);
  v5 = *(v0 + 600);

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 544);
  v7 = *(v0 + 552);

  v8 = *(v0 + 8);

  return v8(v6, v7);
}

uint64_t sub_1B83CB054()
{
  v1 = *(*v0 + 112);
  *(*v0 + 680) = v1;
  if (v1)
  {
    v2 = sub_1B83CB448;
  }

  else
  {
    v2 = sub_1B83CB164;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B83CB164()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 608);
  v5 = *(v0 + 600);

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 528);
  v7 = *(v0 + 536);

  v8 = *(v0 + 8);

  return v8(v6, v7);
}

uint64_t sub_1B83CB224()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[75];
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B83CB2CC()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[75];
  swift_willThrow();

  (*(v3 + 8))(v2, v4);
  swift_unknownObjectRelease();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B83CB388()
{
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[76];
  v6 = v0[75];
  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B83CB448()
{
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[76];
  v6 = v0[75];
  swift_willThrow();

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B83CB690(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B83CB754;

  return sub_1B83CA140(v6);
}

uint64_t sub_1B83CB754(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *(*v3 + 24);
  v7 = *(*v3 + 16);
  v8 = *v3;

  if (v4)
  {
    v9 = sub_1B83DD8BC();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    v12 = sub_1B83DDCBC();

    v11 = v12;
    v10 = 0;
    v9 = v12;
  }

  v13 = *(v5 + 32);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

uint64_t sub_1B83CB8FC()
{
  v1[20] = v0;
  v2 = sub_1B83DDC5C();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B83CB9BC, 0, 0);
}

uint64_t sub_1B83CB9BC()
{
  sub_1B83DDC4C();
  v1 = sub_1B83DDC3C();
  v2 = sub_1B83DDEAC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B831F000, v1, v2, "STStorefrontClient fetching storefront for local user from AMS bag...", v3, 2u);
    MEMORY[0x1B8CBE260](v3, -1, -1);
  }

  v4 = v0[20];

  v0[24] = *(v4 + OBJC_IVAR___STStorefrontClient_amsStorefrontClient);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B83CBBA0;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA85118, &unk_1B83E99B8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B83CE59C;
  v0[13] = &block_descriptor_51;
  v0[14] = v5;
  [swift_unknownObjectRetain() bagCountryCodeWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B83CBBA0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1B83CBE2C;
  }

  else
  {
    v2 = sub_1B83CBCB0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B83CBCB0()
{
  v14 = v0;
  v1 = v0[18];
  v2 = v0[19];
  swift_unknownObjectRelease();

  v3 = sub_1B83DDC3C();
  v4 = sub_1B83DDEAC();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1B83CD594(v1, v2, &v13);
    _os_log_impl(&dword_1B831F000, v3, v4, "STStorefrontClient successfully fetched storefront: %{public}s for local user from AMS bag", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1B8CBE260](v10, -1, -1);
    MEMORY[0x1B8CBE260](v9, -1, -1);
  }

  (*(v7 + 8))(v6, v8);

  v11 = v0[1];

  return v11(v1, v2);
}

uint64_t sub_1B83CBE2C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  swift_willThrow();
  (*(v2 + 8))(v1, v3);
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B83CBED0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA851C0, &unk_1B83E8F90);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = sub_1B83DDCEC();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t sub_1B83CC118(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B83CC1C0;

  return sub_1B83CB8FC();
}

uint64_t sub_1B83CC1C0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = *v3;

  if (v4)
  {
    v8 = sub_1B83DD8BC();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    v11 = sub_1B83DDCBC();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v5 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_1B83CC350(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = sub_1B83DDC5C();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B83CC414, 0, 0);
}

uint64_t sub_1B83CC414()
{
  v1 = v0[20];
  v2 = v0[21];
  sub_1B83DDC4C();
  v3 = v1;
  v4 = v2;
  v5 = sub_1B83DDC3C();
  v6 = sub_1B83DDEAC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[20];
    v8 = v0[21];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543618;
    *(v9 + 4) = v7;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v8;
    *v10 = v7;
    v10[1] = v8;
    v11 = v7;
    v12 = v8;
    _os_log_impl(&dword_1B831F000, v5, v6, "STStorefrontClient fetching storefront for remote child with DSID %{public}@, parent account %@...", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F40, &unk_1B83E8E90);
    swift_arrayDestroy();
    MEMORY[0x1B8CBE260](v10, -1, -1);
    MEMORY[0x1B8CBE260](v9, -1, -1);
  }

  else
  {
    v7 = v0[20];
  }

  v0[26] = v7;
  v13 = v0[21];
  v14 = v0[20];
  v0[27] = *(v0[22] + OBJC_IVAR___STStorefrontClient_amsStorefrontClient);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B83CC698;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA85118, &unk_1B83E99B8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B83CE59C;
  v0[13] = &block_descriptor_32;
  v0[14] = v15;
  [swift_unknownObjectRetain() storefrontForChildWithDSID:v14 parentAccount:v13 withCompletionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B83CC698()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_1B83CC9DC;
  }

  else
  {
    v2 = sub_1B83CC7A8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B83CC7A8()
{
  v25 = v0;
  v1 = v0[20];
  swift_unknownObjectRelease();
  v2 = sub_1B83DDD3C();
  v4 = v3;

  v5 = v1;

  v6 = sub_1B83DDC3C();
  v7 = sub_1B83DDEAC();

  if (os_log_type_enabled(v6, v7))
  {
    v23 = v0[25];
    v8 = v0[24];
    v21 = v0[26];
    v22 = v0[23];
    v9 = v0[20];
    v10 = v2;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v11 = 136446466;
    *(v11 + 4) = sub_1B83CD594(v10, v4, &v24);
    *(v11 + 12) = 2114;
    *(v11 + 14) = v9;
    *v12 = v21;
    v14 = v9;
    _os_log_impl(&dword_1B831F000, v6, v7, "STStorefrontClient successfully fetched storefront: %{public}s for remote child with DSID %{public}@", v11, 0x16u);
    sub_1B83AD84C(v12, &qword_1EBA84F40, &unk_1B83E8E90);
    MEMORY[0x1B8CBE260](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1B8CBE260](v13, -1, -1);
    v15 = v11;
    v2 = v10;
    MEMORY[0x1B8CBE260](v15, -1, -1);

    (*(v8 + 8))(v23, v22);
  }

  else
  {
    v16 = v0[24];
    v17 = v0[25];
    v18 = v0[23];

    (*(v16 + 8))(v17, v18);
  }

  v19 = v0[1];

  return v19(v2, v4);
}

uint64_t sub_1B83CC9DC()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  swift_willThrow();
  (*(v2 + 8))(v1, v3);
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B83CCC10(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1B83CCCE8;

  return sub_1B83CC350(v8, v9);
}

uint64_t sub_1B83CCCE8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *(*v3 + 32);
  v7 = *(*v3 + 24);
  v8 = *(*v3 + 16);
  v9 = *v3;

  if (v4)
  {
    v10 = sub_1B83DD8BC();

    v11 = v10;
    v12 = 0;
  }

  else
  {
    v13 = sub_1B83DDCBC();

    v12 = v13;
    v11 = 0;
    v10 = v13;
  }

  v14 = *(v5 + 40);
  (v14)[2](v14, v12, v11);

  _Block_release(v14);
  v15 = *(v9 + 8);

  return v15();
}

uint64_t STStorefrontClientError.hashValue.getter()
{
  v1 = *v0;
  sub_1B83DE20C();
  MEMORY[0x1B8CBD740](v1);
  return sub_1B83DE24C();
}

uint64_t sub_1B83CD0D8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1B83B6A88;

  return v6();
}

uint64_t sub_1B83CD1C0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1B83B6690;

  return v7();
}

uint64_t sub_1B83CD2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84D90, &qword_1B83E8B00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1B83B67D8(a3, v23 - v10);
  v12 = sub_1B83DDE3C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B83AD84C(v11, &unk_1EBA84D90, &qword_1B83E8B00);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1B83DDE2C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1B83DDE1C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1B83DDD4C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1B83AD84C(a3, &unk_1EBA84D90, &qword_1B83E8B00);

    return v21;
  }

LABEL_8:
  sub_1B83AD84C(a3, &unk_1EBA84D90, &qword_1B83E8B00);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

unint64_t sub_1B83CD594(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B83CD660(v11, 0, 0, 1, a1, a2);
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
    sub_1B83B39BC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1B83CD660(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1B83CD76C(a5, a6);
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
    result = sub_1B83DE07C();
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

void *sub_1B83CD76C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1B83CD7B8(a1, a2);
  sub_1B83CD8E8(&unk_1F303F0A0);
  return v3;
}

void *sub_1B83CD7B8(uint64_t a1, unint64_t a2)
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

  v6 = sub_1B83CD9D4(v5, 0);
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

  result = sub_1B83DE07C();
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
        v10 = sub_1B83DDD7C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B83CD9D4(v10, 0);
        result = sub_1B83DE03C();
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

uint64_t sub_1B83CD8E8(uint64_t result)
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

  result = sub_1B83CDA48(result, v11, 1, v3);
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

void *sub_1B83CD9D4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA851E0, &qword_1B83E9B80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1B83CDA48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA851E0, &qword_1B83E9B80);
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

unint64_t sub_1B83CDB3C()
{
  result = qword_1EBA85120;
  if (!qword_1EBA85120)
  {
    sub_1B83DD9EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA85120);
  }

  return result;
}

unint64_t sub_1B83CDB98()
{
  result = qword_1EBA85130;
  if (!qword_1EBA85130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA85130);
  }

  return result;
}

char *sub_1B83CDC10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA851A8, &unk_1B83E9AA0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_1B83DD9CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B83DDC5C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B83DDC4C();
  sub_1B83DD9DC();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1B83AD84C(v3, &qword_1EBA851A8, &unk_1B83E9AA0);
    sub_1B83CDFC0();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v25 = v9;
    v26 = v8;
    (*(v5 + 32))(v7, v3, v4);
    sub_1B83DD9BC();
    v3 = sub_1B83DDD3C();
    v14 = v13;

    v15 = sub_1B83DDC3C();
    v16 = sub_1B83DDEAC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v23 = v0;
      v18 = v17;
      v19 = swift_slowAlloc();
      v24 = v3;
      v20 = v19;
      v27 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_1B83CD594(v24, v14, &v27);
      _os_log_impl(&dword_1B831F000, v15, v16, "STStorefrontClient got storefront: %{public}s from device locale", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      v21 = v20;
      v3 = v24;
      MEMORY[0x1B8CBE260](v21, -1, -1);
      MEMORY[0x1B8CBE260](v18, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    (*(v25 + 8))(v11, v26);
  }

  return v3;
}

unint64_t sub_1B83CDFC0()
{
  result = qword_1EBA851B0;
  if (!qword_1EBA851B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA851B0);
  }

  return result;
}

uint64_t sub_1B83CE014()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B83B6A88;

  return sub_1B83CCC10(v2, v3, v5, v4);
}

uint64_t sub_1B83CE0D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B83B6A88;

  return sub_1B83B5358(a1, v4);
}

uint64_t sub_1B83CE18C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B83B6690;

  return sub_1B83B5358(a1, v4);
}

uint64_t sub_1B83CE244()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B83B6A88;

  return sub_1B83CC118(v2, v3);
}

uint64_t sub_1B83CE2F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B83B6690;

  return sub_1B83CD1C0(a1, v4, v5, v6);
}

uint64_t sub_1B83CE3BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B83B6A88;

  return sub_1B83CB690(v2, v3, v4);
}

uint64_t objectdestroy_54Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B83CE4B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B83B6A88;

  return sub_1B83C9E84(v2, v3, v4);
}

id Schedule.__allocating_init(enabled:start:end:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled] = a1;
  v8 = OBJC_IVAR____TtC14ScreenTimeCore8Schedule_start;
  v9 = sub_1B83DD86C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v11(&v7[v8], a2, v9);
  v11(&v7[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_end], a3, v9);
  v15.receiver = v7;
  v15.super_class = v3;
  v12 = objc_msgSendSuper2(&v15, sel_init);
  v13 = *(v10 + 8);
  v13(a3, v9);
  v13(a2, v9);
  return v12;
}

id sub_1B83CE710(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1B83DD86C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1 + *a3, v5);
  v9 = sub_1B83DD83C();
  (*(v6 + 8))(v8, v5);

  return v9;
}

uint64_t sub_1B83CE828@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1B83DD86C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id Schedule.init(enabled:start:end:)(char a1, uint64_t a2, uint64_t a3)
{
  v3[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled] = a1;
  v6 = OBJC_IVAR____TtC14ScreenTimeCore8Schedule_start;
  v7 = sub_1B83DD86C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v9(&v3[v6], a2, v7);
  v9(&v3[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_end], a3, v7);
  v13.receiver = v3;
  v13.super_class = type metadata accessor for Schedule(0);
  v10 = objc_msgSendSuper2(&v13, sel_init);
  v11 = *(v8 + 8);
  v11(a3, v7);
  v11(a2, v7);
  return v10;
}

uint64_t type metadata accessor for Schedule(uint64_t a1)
{
  result = qword_1EBA85250;
  if (!qword_1EBA85250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1B83CEBA4(int a1)
{
  v16 = a1;
  v2 = sub_1B83DD86C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-v7];
  v9 = *(v3 + 16);
  v9(&v15[-v7], v1 + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_start, v2);
  v9(v6, v1 + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_end, v2);
  v10 = type metadata accessor for Schedule(0);
  v11 = objc_allocWithZone(v10);
  v11[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled] = v16;
  v9(&v11[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_start], v8, v2);
  v9(&v11[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_end], v6, v2);
  v17.receiver = v11;
  v17.super_class = v10;
  v12 = objc_msgSendSuper2(&v17, sel_init);
  v13 = *(v3 + 8);
  v13(v6, v2);
  v13(v8, v2);
  return v12;
}

id sub_1B83CEDBC(uint64_t a1)
{
  v3 = sub_1B83DD86C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled);
  v11 = *(v4 + 16);
  v11(&v17 - v8, v1 + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_start, v3);
  v11(v7, a1, v3);
  v12 = type metadata accessor for Schedule(0);
  v13 = objc_allocWithZone(v12);
  v13[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled] = v10;
  v11(&v13[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_start], v9, v3);
  v11(&v13[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_end], v7, v3);
  v17.receiver = v13;
  v17.super_class = v12;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  v15 = *(v4 + 8);
  v15(v7, v3);
  v15(v9, v3);
  return v14;
}

id sub_1B83CEFA4(uint64_t a1)
{
  v3 = sub_1B83DD86C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled);
  v11 = *(v4 + 16);
  v11(&v17 - v8, a1, v3);
  v11(v7, v1 + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_end, v3);
  v12 = type metadata accessor for Schedule(0);
  v13 = objc_allocWithZone(v12);
  v13[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled] = v10;
  v11(&v13[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_start], v9, v3);
  v11(&v13[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_end], v7, v3);
  v17.receiver = v13;
  v17.super_class = v12;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  v15 = *(v4 + 8);
  v15(v7, v3);
  v15(v9, v3);
  return v14;
}

id sub_1B83CF18C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = sub_1B83DD86C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B83DD84C();
  v10 = a1;
  v11 = a4(v9);

  (*(v7 + 8))(v9, v6);

  return v11;
}

uint64_t static Schedule.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EBA851F0 = a1;
  return result;
}

void sub_1B83CF404(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled);
  v4 = sub_1B83DDCBC();
  [a1 encodeBool:v3 forKey:v4];

  v5 = sub_1B83DD83C();
  v6 = sub_1B83DDCBC();
  [a1 encodeObject:v5 forKey:v6];

  v7 = sub_1B83DD83C();
  v8 = sub_1B83DDCBC();
  [a1 encodeObject:v7 forKey:v8];
}

id Schedule.init(coder:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA85200, &qword_1B83E9B88);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - v7;
  v9 = sub_1B83DD86C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  v16 = sub_1B83DDCBC();
  v17 = [a1 decodeObjectForKey_];

  if (v17)
  {
    sub_1B83DDF5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41 = v39;
  v42 = v40;
  if (*(&v40 + 1))
  {
    v35 = v13;
    v36 = v15;
    v37 = a1;
    v18 = swift_dynamicCast();
    v19 = *(v10 + 56);
    v19(v8, v18 ^ 1u, 1, v9);
    v20 = *(v10 + 48);
    if (v20(v8, 1, v9) == 1)
    {

      v6 = v8;
    }

    else
    {
      v33 = *(v10 + 32);
      v34 = v10 + 32;
      v33(v36, v8, v9);
      v21 = sub_1B83DDCBC();
      v22 = [v37 decodeObjectForKey_];

      if (v22)
      {
        sub_1B83DDF5C();
        swift_unknownObjectRelease();
      }

      else
      {
        v39 = 0u;
        v40 = 0u;
      }

      v41 = v39;
      v42 = v40;
      if (*(&v40 + 1))
      {
        v23 = swift_dynamicCast();
        v19(v6, v23 ^ 1u, 1, v9);
        if (v20(v6, 1, v9) != 1)
        {
          v25 = v35;
          v26 = v33;
          v33(v35, v6, v9);
          v27 = sub_1B83DDCBC();
          v28 = v37;
          v29 = [v37 decodeBoolForKey_];

          v1[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled] = v29;
          v26(&v1[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_start], v36, v9);
          v26(&v1[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_end], v25, v9);
          v30 = type metadata accessor for Schedule(0);
          v38.receiver = v1;
          v38.super_class = v30;
          v31 = objc_msgSendSuper2(&v38, sel_init);

          return v31;
        }
      }

      else
      {

        sub_1B83AD84C(&v41, &qword_1EBA84970, &qword_1B83E8430);
        v19(v6, 1, 1, v9);
      }

      (*(v10 + 8))(v36, v9);
    }
  }

  else
  {

    sub_1B83AD84C(&v41, &qword_1EBA84970, &qword_1B83E8430);
    (*(v10 + 56))(v8, 1, 1, v9);
    v6 = v8;
  }

  sub_1B83AD84C(v6, &unk_1EBA85200, &qword_1B83E9B88);
  type metadata accessor for Schedule(0);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1B83CFBD4(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1B83DD86C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B83A58F8(a1, v16);
  if (!v17)
  {
    sub_1B83AD84C(v16, &qword_1EBA84970, &qword_1B83E8430);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v12 = 0;
    return v12 & 1;
  }

  v8 = v15;
  if (*(v2 + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled) != v15[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled] || (v9 = *(v5 + 16), v9(v7, &v15[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_start], v4), sub_1B83D0760(&qword_1EBA85218, MEMORY[0x1E6968290]), v10 = sub_1B83DDCAC(), v11 = *(v5 + 8), v11(v7, v4), (v10 & 1) == 0))
  {

    goto LABEL_8;
  }

  v9(v7, &v8[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_end], v4);
  v12 = sub_1B83DDCAC();

  v11(v7, v4);
  return v12 & 1;
}

id Schedule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B83CFF10()
{
  v1 = 0x7472617473;
  if (*v0 != 1)
  {
    v1 = 6581861;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t sub_1B83CFF60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B83D0B5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B83CFF88(uint64_t a1)
{
  v2 = sub_1B83D02C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B83CFFC4(uint64_t a1)
{
  v2 = sub_1B83D02C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id Schedule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Schedule(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B83D00E0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA85220, &qword_1B83E9B90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B83D02C4();
  sub_1B83DE27C();
  v8[15] = 0;
  sub_1B83DE14C();
  if (!v1)
  {
    v8[14] = 1;
    sub_1B83DD86C();
    sub_1B83D0760(&qword_1EBA85230, MEMORY[0x1E6968280]);
    sub_1B83DE16C();
    v8[13] = 2;
    sub_1B83DE16C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B83D02C4()
{
  result = qword_1EBA85228;
  if (!qword_1EBA85228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA85228);
  }

  return result;
}

void *Schedule.init(from:)(void *a1)
{
  v3 = sub_1B83DD86C();
  v24 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA85238, &qword_1B83E9B98);
  v9 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v11 = &v22 - v10;
  v12 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1B83D02C4();
  sub_1B83DE26C();
  if (v1)
  {
    v21 = v27;
    __swift_destroy_boxed_opaque_existential_1(v26);
    type metadata accessor for Schedule(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = v6;
    v13 = v9;
    v29 = 0;
    v14 = sub_1B83DE10C();
    v16 = v27;
    *(v27 + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled) = v14 & 1;
    v29 = 1;
    sub_1B83D0760(&unk_1EBA85240, MEMORY[0x1E6968298]);
    sub_1B83DE12C();
    v17 = *(v24 + 32);
    v22 = OBJC_IVAR____TtC14ScreenTimeCore8Schedule_start;
    v17(&v16[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_start], v8, v3);
    v29 = 2;
    v18 = v23;
    sub_1B83DE12C();
    v19 = v27;
    v17(v27 + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_end, v18, v3);
    v20 = type metadata accessor for Schedule(0);
    v28.receiver = v19;
    v28.super_class = v20;
    v21 = objc_msgSendSuper2(&v28, sel_init);
    (*(v13 + 8))(v11, v25);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  return v21;
}

uint64_t sub_1B83D0760(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B83DD86C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1B83D07A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for Schedule(0));
  result = Schedule.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B83D0828(uint64_t a1)
{
  result = sub_1B83DD86C();
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

unint64_t sub_1B83D0A58()
{
  result = qword_1EBA85260;
  if (!qword_1EBA85260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA85260);
  }

  return result;
}

unint64_t sub_1B83D0AB0()
{
  result = qword_1EBA85268;
  if (!qword_1EBA85268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA85268);
  }

  return result;
}

unint64_t sub_1B83D0B08()
{
  result = qword_1EBA85270;
  if (!qword_1EBA85270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA85270);
  }

  return result;
}

uint64_t sub_1B83D0B5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B83DE18C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7472617473 && a2 == 0xE500000000000000 || (sub_1B83DE18C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B83DE18C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_1B83D0C70(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B83DD8BC();
  (*(a2 + 16))(a2, v3);
}

id sub_1B83D0CE4()
{
  v0 = sub_1B83DDCBC();

  return v0;
}

id sub_1B83D0D40()
{
  v0 = sub_1B83DDCBC();

  return v0;
}

id sub_1B83D0D9C()
{
  v0 = sub_1B83DDCBC();

  return v0;
}

id sub_1B83D0DF8()
{
  v0 = sub_1B83DDCBC();

  return v0;
}

id static NSXPCConnection.defaultUserSettingsStoreConnection()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  _sSo15NSXPCConnectionC14ScreenTimeCoreE45configureExportedUserSettingsStoringInterfaceyySo14NSXPCInterfaceCFZ_0(v0);
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B83DDCBC();
  v3 = [v1 initWithMachServiceName:v2 options:4096];

  [v3 setRemoteObjectInterface_];
  return v3;
}

id sub_1B83D0F00()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  _sSo15NSXPCConnectionC14ScreenTimeCoreE45configureExportedUserSettingsStoringInterfaceyySo14NSXPCInterfaceCFZ_0(v0);
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B83DDCBC();
  v3 = [v1 initWithMachServiceName:v2 options:4096];

  [v3 setRemoteObjectInterface_];

  return v3;
}

id static NSXPCConnection.compatibilityUserSettingsStoreConnection()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  _sSo15NSXPCConnectionC14ScreenTimeCoreE45configureExportedUserSettingsStoringInterfaceyySo14NSXPCInterfaceCFZ_0(v0);
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B83DDCBC();
  v3 = [v1 initWithMachServiceName:v2 options:4096];

  [v3 setRemoteObjectInterface_];
  return v3;
}

id sub_1B83D1098()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  _sSo15NSXPCConnectionC14ScreenTimeCoreE45configureExportedUserSettingsStoringInterfaceyySo14NSXPCInterfaceCFZ_0(v0);
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B83DDCBC();
  v3 = [v1 initWithMachServiceName:v2 options:4096];

  [v3 setRemoteObjectInterface_];

  return v3;
}

id static NSXPCConnection.persistenceDiagnosticsStoreConnection()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  _sSo15NSXPCConnectionC14ScreenTimeCoreE45configureExportedUserSettingsStoringInterfaceyySo14NSXPCInterfaceCFZ_0(v0);
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B83DDCBC();
  v3 = [v1 initWithMachServiceName:v2 options:4096];

  [v3 setRemoteObjectInterface_];
  return v3;
}

id sub_1B83D1230()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  _sSo15NSXPCConnectionC14ScreenTimeCoreE45configureExportedUserSettingsStoringInterfaceyySo14NSXPCInterfaceCFZ_0(v0);
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B83DDCBC();
  v3 = [v1 initWithMachServiceName:v2 options:4096];

  [v3 setRemoteObjectInterface_];

  return v3;
}

uint64_t sub_1B83D1368(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4, uint64_t a5)
{
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B83A06F0;
  aBlock[3] = a3;
  v7 = _Block_copy(aBlock);

  v8 = [v5 *a4];
  _Block_release(v7);
  sub_1B83DDF5C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA85280, &qword_1B83E9D48);
  if (swift_dynamicCast())
  {
    return v10;
  }

  result = sub_1B83DE09C();
  __break(1u);
  return result;
}

id sub_1B83D14F8(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  v12 = a6(a5, v10);

  return v12;
}

void sub_1B83D1598(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  _sSo15NSXPCConnectionC14ScreenTimeCoreE45configureExportedUserSettingsStoringInterfaceyySo14NSXPCInterfaceCFZ_0(v3);
}

id static NSXPCConnection.legacyAgentUserSettingsStoreConnection()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  _sSo15NSXPCConnectionC14ScreenTimeCoreE45configureExportedUserSettingsStoringInterfaceyySo14NSXPCInterfaceCFZ_0(v0);
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B83DDCBC();
  v3 = [v1 initWithMachServiceName:v2 options:4096];

  [v3 setRemoteObjectInterface_];
  return v3;
}

id sub_1B83D1698()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  _sSo15NSXPCConnectionC14ScreenTimeCoreE45configureExportedUserSettingsStoringInterfaceyySo14NSXPCInterfaceCFZ_0(v0);
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B83DDCBC();
  v3 = [v1 initWithMachServiceName:v2 options:4096];

  [v3 setRemoteObjectInterface_];

  return v3;
}

void _sSo15NSXPCConnectionC14ScreenTimeCoreE45configureExportedUserSettingsStoringInterfaceyySo14NSXPCInterfaceCFZ_0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84778, &qword_1B83E7EB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B83E7E90;
  v17 = type metadata accessor for AlwaysAllowed();
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84780, &qword_1B83E7EB8);
  *(v1 + 32) = v17;
  v16 = type metadata accessor for AppLimit(0);
  *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84788, &qword_1B83E7EC0);
  *(v1 + 64) = v16;
  v15 = type metadata accessor for AppLimitSchedule();
  *(v1 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84790, &qword_1B83E7EC8);
  *(v1 + 96) = v15;
  v14 = type metadata accessor for Downtime();
  *(v1 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84798, &qword_1B83E7ED0);
  *(v1 + 128) = v14;
  v13 = sub_1B83A1210(0, &qword_1EBA83708, 0x1E695DEC8);
  *(v1 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA847A0, &qword_1B83E7ED8);
  *(v1 + 160) = v13;
  v12 = sub_1B83A1210(0, &qword_1EBA847A8, 0x1E695DF10);
  *(v1 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA847B0, &qword_1B83E7EE0);
  *(v1 + 192) = v12;
  v11 = sub_1B83A1210(0, &qword_1EBA836E0, 0x1E696AEC0);
  *(v1 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA847B8, &qword_1B83E7EE8);
  *(v1 + 224) = v11;
  v10 = sub_1B83A1210(0, &qword_1EBA83700, 0x1E696ABC0);
  *(v1 + 280) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA847C0, &qword_1B83E7EF0);
  *(v1 + 256) = v10;
  v9 = sub_1B83A1210(0, &qword_1EBA847C8, 0x1E695DFB0);
  *(v1 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA847D0, &qword_1B83E7EF8);
  *(v1 + 288) = v9;
  v2 = sub_1B83A1210(0, &qword_1EBA847D8, 0x1E695DFD8);
  *(v1 + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA847E0, &qword_1B83E7F00);
  *(v1 + 320) = v2;
  v3 = type metadata accessor for Schedule(0);
  *(v1 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA847E8, &qword_1B83E7F08);
  *(v1 + 352) = v3;
  v4 = type metadata accessor for UserSettings();
  *(v1 + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA847F0, &qword_1B83E7F10);
  *(v1 + 384) = v4;
  v5 = type metadata accessor for UserID();
  *(v1 + 440) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA847F8, &qword_1B83E7F18);
  *(v1 + 416) = v5;
  v6 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v7 = sub_1B83DDDCC();

  v8 = [v6 initWithArray_];

  sub_1B83DDE6C();
  sub_1B83DE09C();
  __break(1u);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1B83D1E98(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1B83DD8BC();
  (*(v2 + 16))(v2, v3);
}