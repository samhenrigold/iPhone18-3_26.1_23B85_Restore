uint64_t sub_233972F88(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = qword_2814AA688;
  v6 = qword_2814AA688;
  if (!qword_2814AA688)
  {
    v7 = xmmword_2789F5F88;
    v8 = *off_2789F5F98;
    v9 = 0;
    v4[3] = _sl_dlopen();
    qword_2814AA688 = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_23397309C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2339730B4(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2814AA688 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_23397314C()
{
  v3 = 0;
  v0 = sub_233972F88(&v3);
  if (!v0)
  {
    sub_23397648C(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

uint64_t sub_2339731A0()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_2814AA690;
  v6 = qword_2814AA690;
  if (!qword_2814AA690)
  {
    v1 = sub_23397314C();
    v4[3] = dlsym(v1, "DSSourceNamePassKeys");
    qword_2814AA690 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_233973274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_23397328C(uint64_t a1)
{
  v2 = sub_23397314C();
  result = dlsym(v2, "DSSourceNamePassKeys");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_2814AA690 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_2339734A4(uint64_t a1, uint64_t a2)
{
  if (qword_2814AA6A0 != -1)
  {
    sub_233976584();
  }

  return qword_2814AA698;
}

uint64_t sub_2339734DC()
{
  qword_2814AA698 = os_log_create("com.apple.SafariShared.PasswordsDigitalSeparation", "PasswordsSeparation");

  return MEMORY[0x2821F96F8]();
}

void sub_233973EE4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_233973FA8;
  block[3] = &unk_2789F6058;
  v7 = v4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t sub_233973FA8(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 32);
  if (*(a1 + 32))
  {
    v4 = sub_2339734A4(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_233976600(a1, v4, v3);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_233974158(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_233974230;
  v6[3] = &unk_2789F60A8;
  v7 = v4;
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t sub_233974230(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 32);
  if (*(a1 + 32))
  {
    v4 = sub_2339734A4(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_2339766BC(a1, v4, v3);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

void sub_233974474(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_233974540;
  v7[3] = &unk_2789F60F8;
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v10 = *(a1 + 56);
  v8 = v5;
  v9 = *(a1 + 32);
  [v6 _stopSharingWithGroup:v4 completionHandler:v7];
}

void sub_233974540(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 48) + 8);
    v4 = a2;
    os_unfair_lock_lock(v3 + 8);
    [*(a1 + 32) addObject:v4];

    os_unfair_lock_unlock((*(*(a1 + 48) + 8) + 32));
  }

  v5 = *(a1 + 40);

  dispatch_group_leave(v5);
}

void sub_2339745B8(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) count];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA578];
    v5 = [*(a1 + 32) copy];
    v11[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [v4 errorWithDomain:@"com.apple.SafariShared.PasswordsDigitalSepration.PMSeparationErrorDomain" code:2 userInfo:v6];
    (*(v3 + 16))(v3, v7);
  }

  else
  {
    v8 = *(v3 + 16);
    v9 = *(a1 + 40);

    v8(v9, 0);
  }
}

void sub_2339747B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = dispatch_group_create();
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x2810000000;
    v22[3] = &unk_233977E83;
    v23 = 0;
    v8 = [MEMORY[0x277CBEB18] array];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_2339749A8;
    v17[3] = &unk_2789F6170;
    v9 = v7;
    v10 = *(a1 + 32);
    v18 = v9;
    v19 = v10;
    v21 = v22;
    v11 = v8;
    v20 = v11;
    [v5 enumerateObjectsUsingBlock:v17];
    v12 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_233974B20;
    block[3] = &unk_2789F6148;
    v15 = v11;
    v16 = *(a1 + 40);
    v13 = v11;
    dispatch_group_notify(v9, v12, block);

    _Block_object_dispose(v22, 8);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_2339749A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v5 = *(a1 + 40);
  v6 = [v4 second];
  v7 = [v4 first];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_233974AA8;
  v9[3] = &unk_2789F60F8;
  v8 = *(a1 + 48);
  v12 = *(a1 + 56);
  v10 = v8;
  v11 = *(a1 + 32);
  [v5 _stopSharingWithParticipant:v6 inGroup:v7 completionHandler:v9];
}

void sub_233974AA8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 48) + 8);
    v4 = a2;
    os_unfair_lock_lock(v3 + 8);
    [*(a1 + 32) addObject:v4];

    os_unfair_lock_unlock((*(*(a1 + 48) + 8) + 32));
  }

  v5 = *(a1 + 40);

  dispatch_group_leave(v5);
}

void sub_233974B20(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) count];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA578];
    v5 = [*(a1 + 32) copy];
    v11[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [v4 errorWithDomain:@"com.apple.SafariShared.PasswordsDigitalSepration.PMSeparationErrorDomain" code:2 userInfo:v6];
    (*(v3 + 16))(v3, v7);
  }

  else
  {
    v8 = *(v3 + 16);
    v9 = *(a1 + 40);

    v8(v9, 0);
  }
}

void sub_233974D34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v8 = [MEMORY[0x277CBEB18] array];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = sub_233974E90;
    v16 = &unk_2789F61E8;
    v17 = *(a1 + 32);
    v18 = v8;
    v9 = v8;
    [v5 enumerateObjectsUsingBlock:&v13];
    v10 = *(a1 + 40);
    v11 = [v9 copy];
    (*(v10 + 16))(v10, v11, 0);
  }

  else
  {
    if (v6)
    {
      v12 = sub_2339734A4(0, v7);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_2339767B0(v12);
      }
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_233974E90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 participants];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_233974F7C;
  v7[3] = &unk_2789F61C0;
  v8 = *(a1 + 32);
  v5 = [v4 safari_firstObjectPassingTest:v7];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D49A80]) initWithFirst:v3 second:v5];
    [*(a1 + 40) addObject:v6];
  }
}

uint64_t sub_233974F7C(uint64_t a1, void *a2)
{
  v3 = [a2 handle];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_23397529C(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_233975374;
  v5[3] = &unk_2789F6210;
  v6 = v3;
  v7 = a1[4];
  v9 = a1[6];
  v8 = a1[5];
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void sub_233975374(void *a1, uint64_t a2)
{
  v3 = (a1 + 4);
  if (a1[4])
  {
    v4 = sub_2339734A4(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_2339768B0(a1, v4, v3);
    }

    (*(a1[7] + 16))();
  }

  else
  {
    v5 = [MEMORY[0x277D49B58] sharedStore];
    [v5 _recordGroupIdentifierForExitCleanup:a1[6] completionHandler:a1[7]];
  }
}

void sub_233975580(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_233975698;
    v10[3] = &unk_2789F6260;
    v10[4] = *(a1 + 32);
    v8 = [v5 safari_mapObjectsUsingBlock:v10];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v6)
    {
      v9 = sub_2339734A4(0, v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_2339767B0(v9);
      }
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_23397597C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_233975A6C;
  block[3] = &unk_2789F62B0;
  v11 = v5;
  v12 = *(a1 + 32);
  v13 = v6;
  v7 = *(a1 + 48);
  v14 = *(a1 + 40);
  v15 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_233975A6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(a1 + 56);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_233975B60;
    v6[3] = &unk_2789F6288;
    v7 = *(a1 + 40);
    v8 = *(a1 + 64);
    [v4 _stopSharingWithGroup:v3 completionHandler:v6];
  }

  else
  {
    v5 = sub_2339734A4(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_2339769D4(a1, v5);
    }

    (*(*(a1 + 64) + 16))();
  }
}

void sub_233975B60(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = sub_2339734A4(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_233976A7C(a1, v6);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_233975E94(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = sub_2339734A4(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_233976B90(a1, v6);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_23397604C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_23397614C;
    v10[3] = &unk_2789F6300;
    v8 = *(a1 + 32);
    v11 = *(a1 + 40);
    [v8 _stopSharingWithGroups:v5 completionHandler:v10];
  }

  else
  {
    if (v6)
    {
      v9 = sub_2339734A4(0, v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_2339767B0(v9);
      }
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_23397614C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = sub_2339734A4(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_233976C3C(v6);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_23397628C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_233976364;
  block[3] = &unk_2789F6348;
  v11 = v5;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_233976364(uint64_t a1)
{
  v2 = [*(a1 + 32) safari_filterObjectsUsingBlock:&unk_28495E350];
  (*(*(a1 + 48) + 16))();
}

BOOL sub_2339763CC(uint64_t a1, void *a2)
{
  v2 = [a2 currentUserParticipant];
  v3 = [v2 inviteStatus] == 2;

  return v3;
}

void sub_233976450(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_23397646C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_23397648C(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *DigitalSeparationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"DigitalSeparationSoftLink.m" lineNumber:5 description:{@"%s", *a1}];

  __break(1u);
}

void sub_23397650C()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"typeof (((typeof (DSSourceNamePassKeys) (*)(void))0)()) getDSSourceNamePassKeys(void)"];
  [v0 handleFailureInFunction:v1 file:@"DigitalSeparationSoftLink.m" lineNumber:6 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_233976600(uint64_t a1, void *a2, id *a3)
{
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 groupID];
  v7 = [*a3 safari_privacyPreservingDescription];
  LODWORD(v14) = 138412546;
  *(&v14 + 4) = v6;
  sub_233976428();
  sub_23397646C(&dword_233972000, v8, v9, "Failed to remove participants from group (%@): %@", v10, v11, v12, v13, v14, DWORD2(v14));
}

void sub_2339766BC(uint64_t a1, void *a2, id *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 handle];
  v8 = [*(a1 + 48) groupID];
  v9 = [*a3 safari_privacyPreservingDescription];
  v10 = 138412802;
  v11 = v7;
  v12 = 2112;
  v13 = v8;
  v14 = 2112;
  v15 = v9;
  _os_log_error_impl(&dword_233972000, v6, OS_LOG_TYPE_ERROR, "Failed to remove participant (%@) from group (%@): %@", &v10, 0x20u);
}

void sub_2339767B0(void *a1)
{
  v2 = a1;
  v3 = [sub_233976444() safari_privacyPreservingDescription];
  sub_233976438();
  sub_233976418();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_2339768B0(uint64_t a1, void *a2, id *a3)
{
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 groupID];
  v7 = [*a3 safari_privacyPreservingDescription];
  LODWORD(v14) = 138412546;
  *(&v14 + 4) = v6;
  sub_233976428();
  sub_23397646C(&dword_233972000, v8, v9, "Failed to leave group (%@): %@", v10, v11, v12, v13, v14, DWORD2(v14));
}

void sub_2339769D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [sub_233976444() safari_privacyPreservingDescription];
  sub_233976428();
  sub_233976418();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_233976A7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [sub_233976444() safari_privacyPreservingDescription];
  sub_233976428();
  sub_233976418();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_233976B90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [sub_233976444() safari_privacyPreservingDescription];
  sub_233976428();
  sub_233976418();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_233976C3C(void *a1)
{
  v2 = a1;
  v3 = [sub_233976444() safari_privacyPreservingDescription];
  sub_233976438();
  sub_233976418();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}