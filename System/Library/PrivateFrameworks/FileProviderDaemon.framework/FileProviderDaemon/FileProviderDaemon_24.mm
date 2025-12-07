void *sub_1CF2D0000(void (*a1)(void, void), void (*a2)(void, void), void (*a3)(void, void), void (*a4)(void, void))
{
  a1(v4[2], v4[3]);
  a2(v4[4], v4[5]);
  a3(v4[6], v4[7]);
  sub_1CEFF7124(v4[8], v4[9]);

  a4(v4[15], v4[16]);

  return v4;
}

void sub_1CF2D00A0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a3;
  v9 = a4;
  v7(a2, a3, v9);
}

uint64_t sub_1CF2D02A4()
{
  v0 = sub_1CF9E7388();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CF9E7488();
  MEMORY[0x1EEE9AC00](v4);
  v6[0] = sub_1CEFD57E0(0, &unk_1EDEAB5C0, 0x1E69E9638);
  v6[1] = MEMORY[0x1E69E7CC0];
  sub_1CF2F1F24(&unk_1EDEAB5D0, MEMORY[0x1E69E8110], MEMORY[0x1E69E8118]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE60, &qword_1CFA00870);
  sub_1CEFCCCEC(&unk_1EDEAB640, &qword_1EC4BEE60, &qword_1CFA00870, MEMORY[0x1E69E6328]);
  sub_1CF9E77B8();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8098], v0);
  result = sub_1CF9E7498();
  qword_1EDEBBA00 = result;
  return result;
}

uint64_t sub_1CF2D04C8()
{
  v0 = 0xE90000000000003ELL;
  v1 = 0x6E776F6E6B6E753CLL;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v31 - v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v9 = Strong, v10 = [Strong provider], v9, v10))
  {
    v11 = [v10 bundleVersion];

    v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v14 = v13;
  }

  else
  {
    v12 = 0x6E776F6E6B6E753CLL;
    v14 = 0xE90000000000003ELL;
  }

  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = [v15 provider];

    if (v17)
    {
      v18 = [v17 descriptor];

      v19 = [v18 extensionUUID];
      if (v19)
      {
        sub_1CF9E5D58();

        v20 = sub_1CF9E5D98();
        (*(*(v20 - 8) + 56))(v4, 0, 1, v20);
      }

      else
      {
        v20 = sub_1CF9E5D98();
        (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
      }

      sub_1CEFE55D0(v4, v7, &unk_1EC4BEDE0, qword_1CF9FA390);
      sub_1CF9E5D98();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v7, 1, v20) == 1)
      {
        sub_1CEFCCC44(v7, &unk_1EC4BEDE0, qword_1CF9FA390);
      }

      else
      {
        v1 = MEMORY[0x1D3867FB0]();
        v0 = v22;
        (*(v21 + 8))(v7, v20);
      }
    }
  }

  v31[0] = v12;
  v31[1] = v14;
  MEMORY[0x1D3868CC0](10272, 0xE200000000000000);
  MEMORY[0x1D3868CC0](v1, v0);
  v0, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return v31[0];
}

uint64_t sub_1CF2D07F4()
{
  if (*(v0 + 272))
  {
    return 1;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [result isConnectedToAppExtension];

    if (!v3)
    {
      return 0;
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v4 = result;
    v5 = [result provider];

    if (v5)
    {
      v6 = [v5 asAppExtensionBackedProvider];

      v7 = [v6 descriptor];
      v8 = [v7 wantsFlattenedPackages];

      return v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_1CF2D08E4()
{
  v1 = *(v0 + 288);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = v0;
    v4 = *(v0 + 216);
    if (v4)
    {
      v5 = v4();
      v2 = v5;
      if (v5)
      {
        sub_1CF2D0978(v5, 0, 1);
      }
    }

    else
    {
      v2 = 0;
    }

    v6 = *(v0 + 288);
    *(v3 + 288) = v2;
    v7 = v2;
    sub_1CF00D644(v6);
  }

  sub_1CF2B1FC4(v1);
  return v2;
}

void sub_1CF2D0978(void *a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 280);
  v8 = [v7 pathComponents];
  v9 = sub_1CF9E6D48();

  v10 = *v9->tree;
  v9, v11, v12, v13, v14, v15, v16, v17;
  if (v10 >= 2)
  {
    v18 = [v7 stringByDeletingLastPathComponent];
    if (!v18)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v20 = v19;
      v18 = sub_1CF9E6888();
      v20, v21, v22, v23, v24, v25, v26, v27;
    }

    v7 = v18;
  }

  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v7;
  *(v29 + 32) = a2;
  *(v29 + 40) = a3 & 1;
  v32[4] = sub_1CF2F63BC;
  v32[5] = v29;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 1107296256;
  v32[2] = sub_1CF2D00A0;
  v32[3] = &block_descriptor_845;
  v30 = _Block_copy(v32);
  v31 = v7;

  [a1 setModifyDecoratedPayloadHook:v30 forCategory:1];
  _Block_release(v30);
}

void sub_1CF2D0B34(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, char a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + 112) & 1) == 0)
    {
      v12 = [objc_opt_self() defaultStore];
      v13 = [v12 dynamicErrorSampleRatePerProvider];

      v14 = sub_1CF9E6D48();
      sub_1CF51810C(a5, v14);
      v16 = v15;
      LOBYTE(v13) = v17;
      v14, v17, v18, v19, v20, v21, v22, v23;
      if ((v13 & 1) == 0)
      {
        v24 = sub_1CF518B08(0x64uLL);
        if (__OFADD__(v24, 1))
        {
          __break(1u);
          return;
        }

        if (v16 < (v24 + 1))
        {
          [a3 removeAllObjects];
LABEL_24:

          return;
        }
      }
    }

    v25 = sub_1CF9E6888();
    [a3 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    if (!a2)
    {
      goto LABEL_24;
    }

    v26 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_24;
    }

    v27 = [v75 fp_protectionClassBehindError];
    if (v27)
    {
      v28 = v27;
      [a3 __swift_setObject_forKeyedSubscript_];
      swift_unknownObjectRelease();
    }

    if ((a7 & 1) == 0)
    {
      v29 = sub_1CF9E7628();
      [a3 __swift_setObject_forKeyedSubscript_];

      swift_unknownObjectRelease();
    }

    if (os_variant_has_internal_content())
    {
      v30 = [v75 domain];
      v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v33 = v32;

      v35 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v41 = v34;
      if (v31 == v35 && v33 == v34)
      {
        v33, v34, v35, v36, v37, v38, v39, v40;
        v41, v42, v43, v44, v45, v46, v47, v48;
      }

      else
      {
        v49 = sub_1CF9E8048();
        v33, v50, v51, v52, v53, v54, v55, v56;
        v41, v57, v58, v59, v60, v61, v62, v63;
        if ((v49 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      if ([v75 code] >= 4096 && objc_msgSend(v75, sel_code) <= 4224)
      {
        v64 = [objc_opt_self() sharedInstance];
        v65 = [v64 crashReporterKey];

        if (!v65)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v67 = v66;
          v65 = sub_1CF9E6888();
          v67, v68, v69, v70, v71, v72, v73, v74;
        }

        [a3 __swift_setObject_forKeyedSubscript_];

        swift_unknownObjectRelease();
        goto LABEL_24;
      }
    }

LABEL_20:
  }
}

fp_task_tracker *sub_1CF2D0FAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_unknownObjectWeakInit();
  type metadata accessor for TaskTracker();
  v10 = swift_allocObject();
  result = fp_task_tracker_create("fpfiletree");
  if (result)
  {
    *(v5 + 232) = 0u;
    v12 = MEMORY[0x1E69E7CC8];
    *(v10 + 16) = result;
    *(v5 + 168) = v10;
    *(v5 + 176) = v12;
    *(v5 + 184) = v12;
    *(v5 + 192) = 0;
    *(v5 + 200) = 0;
    *(v5 + 208) = 0;
    *(v5 + 248) = 0u;
    *(v5 + 257) = 0u;
    *(v5 + 288) = 1;
    *(v5 + 296) = 0;
    *(v5 + 304) = 0;
    *(v5 + 312) = 0;
    *(v5 + 320) = 1;
    if (qword_1EDEA5AD8 != -1)
    {
      swift_once();
    }

    v14 = qword_1EDEBB820;
    v13 = *algn_1EDEBB828;
    *(v5 + 328) = qword_1EDEBB820;
    *(v5 + 336) = v13;
    swift_unknownObjectWeakAssign();
    v15 = v13;
    v16 = v14;
    *(v5 + 280) = [a1 providerDomainID];
    if (qword_1EDEAACE8 != -1)
    {
      swift_once();
    }

    v17 = qword_1EDEBBA00;
    *(v5 + 160) = qword_1EDEBBA00;
    *(v5 + 216) = a3;
    *(v5 + 224) = a4;
    v18 = v17;
    sub_1CF03C63C(a3, a4);
    v55 = a1;
    v19 = [a1 provider];
    v53 = a3;
    if (v19 && (v20 = v19, v21 = [v19 descriptor], v20, v21))
    {
      v22 = [v21 downloadPipelineDepth];
      v23 = v22;
      if (v22)
      {
        v24 = [v22 integerValue];
      }

      else
      {
        v24 = 0;
      }

      v29 = sub_1CF2F1D18(0x64616F6C6E776F64, 0xE800000000000000, v24, v23 == 0);
      v30 = [v21 uploadPipelineDepth];
      v31 = v30;
      if (v30)
      {
        v32 = [v30 integerValue];
      }

      else
      {
        v32 = 0;
      }

      v27 = sub_1CF2F1D18(0x64616F6C7075, 0xE600000000000000, v32, v31 == 0);
      v33 = [v21 metadataOnlyUploadPipelineDepth];
      v52 = v21;
      if (v33)
      {
        v34 = v33;
        v35 = [v33 integerValue];

        v28 = v35;
        v25 = 0;
      }

      else
      {
        v28 = 0;
        v25 = 1;
      }

      v26 = v29;
    }

    else
    {
      v25 = 1;
      v26 = sub_1CF2F1D18(0x64616F6C6E776F64, 0xE800000000000000, 0, 1);
      v27 = sub_1CF2F1D18(0x64616F6C7075, 0xE600000000000000, 0, 1);
      v52 = 0;
      v28 = 0;
    }

    v36 = sub_1CF2F1D18(0xD000000000000012, 0x80000001CFA3E310, v28, v25);
    v37 = v36;
    if (v27)
    {
      v51 = v27;
      if (v36)
      {
        goto LABEL_21;
      }
    }

    else
    {
      type metadata accessor for JobLimit();
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1CFA018D0;
      *(v41 + 32) = xmmword_1CFA018E0;
      v51 = v41;
      if (v37)
      {
LABEL_21:
        v38 = v37;
        v54 = a4;
        if (v26)
        {
LABEL_22:
          v39 = a2;
          v40 = v26;
LABEL_26:
          v42 = objc_opt_self();

          v43 = [v42 defaultStore];
          v44 = [v43 softConcurrentOperationLimit];
          v45 = [v43 hardConcurrentOperationLimit];

          v46 = v45;
          type metadata accessor for JobLimit();
          v47 = swift_allocObject();
          v47[2] = 0;
          v47[3] = v44;
          v47[4] = v44;
          v47[5] = v46;
          *(v5 + 112) = 0;
          *(v5 + 144) = 0;
          *(v5 + 16) = 0u;
          *(v5 + 32) = 0u;
          *(v5 + 48) = 0u;
          *(v5 + 64) = 0u;
          *(v5 + 120) = 0;
          *(v5 + 128) = 0;
          v48 = *(*v5 + 520);

          v48(v49);
          *(v5 + 136) = v39;
          *(v5 + 80) = v47;
          *(v5 + 88) = v51;
          *(v5 + 96) = v38;
          *(v5 + 104) = v40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF180, &unk_1CFA01B20);
          swift_allocObject();

          v50 = sub_1CF2CEC48(v39);

          sub_1CEFF7124(v53, v54);

          *(v5 + 144) = v50;

          return v5;
        }

LABEL_25:
        v39 = a2;
        type metadata accessor for JobLimit();
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1CFA018F0;
        *(v40 + 32) = xmmword_1CFA01900;
        goto LABEL_26;
      }
    }

    type metadata accessor for JobLimit();
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1CFA018D0;
    *(v38 + 32) = xmmword_1CFA018E0;
    v54 = a4;
    if (v26)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

void sub_1CF2D1564(void *a1)
{
  v3 = sub_1CF9E5FF8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v32 = a1;
    v7 = [v32 extendedAttributes];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1CF9E6638();

      sub_1CF045428(v9, v1);
      v9, v10, v11, v12, v13, v14, v15, v16;

      v17 = sub_1CF9E6618();

      [v32 setExtendedAttributes_];
    }

    if ([v32 isFlattenedPackage])
    {
      v18 = [v32 filename];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 stringByDeletingPathExtension];

        if (!v20)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v22 = v21;
          v20 = sub_1CF9E6888();
          v22, v23, v24, v25, v26, v27, v28, v29;
        }

        [v32 setFilename_];

        sub_1CF9E5FA8();
        v30 = sub_1CF9E5F38();
        (*(v4 + 8))(v6, v3);
        [v32 setContentType_];
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v31 = v32;
    }
  }
}

void sub_1CF2D17EC(void *a1, void *a2)
{
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v27 - v10;
  if (a1)
  {
    v12 = a1;
    v13 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v14 = a1;
    v15 = sub_1CF9E6108();
    v16 = sub_1CF9E72A8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = sub_1CF9E57E8();
      v20 = [v19 fp_prettyDescription];

      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_1CEFC7000, v15, v16, "Error setting domain user info: %@", v17, 0xCu);
      sub_1CEFCCC44(v18, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v18, -1, -1);
      MEMORY[0x1D386CDC0](v17, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v11, v4);
  }

  else
  {
    v21 = [a2 server];
    if (v21)
    {
      v28 = v21;
      [v21 signalProviderChangesWithLowPriority];
      v22 = v28;
    }

    else
    {
      v23 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v24 = sub_1CF9E6108();
      v25 = sub_1CF9E72A8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1CEFC7000, v24, v25, "Error signaling change after setting new domainUserInfo, server was nil", v26, 2u);
        MEMORY[0x1D386CDC0](v26, -1, -1);
      }

      (*(v5 + 8))(v7, v4);
    }
  }
}

void sub_1CF2D1AFC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(a1 + 280) itemIdentifier:a2];
  v10 = fpfs_current_log();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v12 = Strong;
  if (![Strong userEnabled])
  {

LABEL_10:
    v17 = sub_1CF2F1F6C();
    goto LABEL_11;
  }

  v13 = [v12 session];
  v14 = [objc_opt_self() defaultStore];
  if ([v14 hasUpcallExecutionTimeLimits])
  {
    goto LABEL_7;
  }

  if (qword_1EC4BCCF0 != -1)
  {
    swift_once();
  }

  v15 = -1.0;
  if (byte_1EC4BF020 == 1)
  {
LABEL_7:
    [v14 upcallExecutionTimeLimitBase];
    v15 = v16;
  }

  v17 = [v13 newFileProviderProxyWithTimeout:0 pid:v15];
  swift_unknownObjectRelease();
LABEL_11:
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18 && (v19 = v18, v20 = [v18 session], v19, v20))
  {
    v21 = [objc_opt_self() requestForSelf];
    v22 = [v21 nsfpRequestForSession:v20 isSpeculative:0];

    [v22 setDomainVersion_];
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
  }

  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = v10;
  v23[4] = a3;
  v23[5] = a4;
  v23[6] = a5;
  v27[4] = sub_1CF2F62B4;
  v27[5] = v23;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 1107296256;
  v27[2] = sub_1CF2D207C;
  v27[3] = &block_descriptor_818;
  v24 = _Block_copy(v27);

  v25 = v10;
  v26 = a3;

  [v17 itemForItemID:v9 request:v22 completionHandler:v24];
  _Block_release(v24);

  swift_unknownObjectRelease();
}

uint64_t sub_1CF2D1E30(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a2;
  v16[4] = a6;
  v16[5] = a3;
  v16[6] = a7;
  v16[7] = a8;
  v16[8] = a1;

  v17 = a2;
  v18 = a6;
  v19 = a3;
  v20 = a1;

  sub_1CF01001C(a5, "lookupItem(by:lastKnownVersion:domainVersion:options:completion:)", 65, 2, sub_1CF2F62C4, v16);
}

void sub_1CF2D1F20(uint64_t a1, void *a2, void *a3, void *a4, void (*a5)(void *, uint64_t), uint64_t a6, void *a7)
{
  sub_1CF041B2C(a2, a3);
  if (a4)
  {
    _s3__C4CodeOMa_1(0);
    v10 = a4;
    sub_1CF2F1F24(&qword_1EDEA3590, _s3__C4CodeOMa_1, &unk_1CF9F77C0);
    v11 = sub_1CF9E5658();

    if ((v11 & 1) == 0)
    {
      v12 = a4;
      a5(a4, 1);

      return;
    }

    goto LABEL_8;
  }

  if (!a7)
  {
LABEL_8:
    a5(0, 0);
    return;
  }

  v13 = a7;
  sub_1CF2D1564(a7);
  a5(a7, 0);
}

void sub_1CF2D207C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_1CF2D2124(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = fpfs_current_log();
  if (a1)
  {
    type metadata accessor for FileProviderPageToken();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      goto LABEL_5;
    }

    LODWORD(v70) = 0;
    v69 = 450;
    sub_1CF9E7B68();
    __break(1u);
  }

  v17 = sub_1CF9E5B88();
  v18 = v15;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v23 = v22;
  v81 = sub_1CF9E5B48();
  v24 = v23;
  a7 = v21;
  a6 = v20;
  a5 = v19;
  v15 = v18;
  sub_1CEFE4714(v17, v24);
  type metadata accessor for FileProviderPageToken();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = v81;
  v25 = a2;

LABEL_5:
  swift_retain_n();

  v26 = swift_allocObject();
  v26[2] = v15;
  v26[3] = v16;
  v74 = a5;
  v76 = a7;
  v26[4] = a5;
  v26[5] = a6;
  v26[6] = a3;
  v26[7] = a2;
  v26[8] = a7;
  v26[9] = a8;
  v82 = v26;
  Strong = swift_unknownObjectWeakLoadStrong();
  v28 = a2;
  v29 = v15;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v30 = v28;
  v31 = v29;
  if (Strong)
  {
    v32 = [Strong session];
  }

  else
  {
    v32 = 0;
  }

  v33 = objc_allocWithZone(type metadata accessor for FPFileTreeLifetimeExtender());
  v34 = a4;
  v35 = v30;
  v36 = sub_1CF089C88(v35, a4, 0, 1);
  v80 = v35;

  if (v32)
  {
    [v32 registerLifetimeExtensionForObject_];
  }

  v79 = v36;
  v37 = swift_unknownObjectWeakLoadStrong();
  if (!v37 || (v38 = v37, v39 = [v37 userEnabled], v38, (v39 & 1) == 0))
  {
    v73 = sub_1CF2F20BC();
    v48 = swift_allocObject();
    *(v48 + 16) = v32;
    *(v48 + 24) = v79;
    swift_unknownObjectRetain();
    v49 = v79;

    v78 = fpfs_adopt_log();
    v71 = *(v16 + 24);
    v50 = swift_allocObject();
    v50[2] = v15;
    v50[3] = sub_1CF2F61E0;
    v50[4] = v48;
    v50[5] = v74;
    v50[6] = a6;
    v50[7] = a3;
    v51 = v80;
    v50[8] = v80;
    v50[9] = v49;
    v50[10] = v76;
    v50[11] = a8;
    v50[12] = v16;
    v88 = sub_1CF2F61E4;
    v89 = v50;
    aBlock = MEMORY[0x1E69E9820];
    v85 = 1107296256;
    v86 = sub_1CF9284C8;
    v87 = &block_descriptor_774;
    v52 = _Block_copy(&aBlock);
    v53 = v80;
    v54 = v31;

    v55 = v49;

    [v73 enumerateItemsFromPage:v71 suggestedPageSize:200 reply:v52];
    v56 = v52;
    v57 = v78;
    _Block_release(v56);
    v58 = fpfs_adopt_log();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    goto LABEL_30;
  }

  v77 = v31;
  v40 = [objc_allocWithZone(MEMORY[0x1E6967330]) init];
  v41 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(a3 + 280) itemIdentifier:v80];
  v75 = v40;
  [v40 setEnumeratedItemID_];

  v42 = swift_unknownObjectWeakLoadStrong();
  if (v42)
  {
    v43 = v42;
    if ([v42 userEnabled])
    {
      v44 = [v43 session];
      v45 = [objc_opt_self() defaultStore];
      if ([v45 hasUpcallExecutionTimeLimits])
      {
        goto LABEL_18;
      }

      if (qword_1EC4BCCF0 != -1)
      {
        swift_once();
      }

      v46 = -1.0;
      if (byte_1EC4BF020 == 1)
      {
LABEL_18:
        [v45 upcallExecutionTimeLimitBase];
        v46 = v47;
      }

      v72 = [v44 newFileProviderProxyWithTimeout:0 pid:v46];
      swift_unknownObjectRelease();
      goto LABEL_23;
    }
  }

  v72 = sub_1CF2F1F6C();
LABEL_23:
  v57 = [objc_allocWithZone(type metadata accessor for DummyEnumeratorObserver()) init];
  v59 = swift_unknownObjectWeakLoadStrong();
  if (v59 && (v60 = v59, v61 = [v59 session], v60, v61))
  {
    v62 = v34;
    if (!a4)
    {
      v62 = [objc_opt_self() requestForSelf];
    }

    v63 = v34;
    v58 = [v62 nsfpRequestForSession:v61 isSpeculative:0];

    [v58 setDomainVersion_];
    swift_unknownObjectRelease();
  }

  else
  {
    v58 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
  }

  v64 = swift_allocObject();
  v64[2] = v32;
  v64[3] = v79;
  v51 = v80;
  v64[4] = v80;
  v64[5] = sub_1CF2F61A8;
  v64[6] = v82;
  v88 = sub_1CF03F200;
  v89 = v64;
  aBlock = MEMORY[0x1E69E9820];
  v85 = 1107296256;
  v86 = sub_1CF03FCFC;
  v87 = &block_descriptor_780_0;
  v65 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v66 = v79;

  v67 = v80;

  [v72 fetchAndStartEnumeratingWithSettings:v75 observer:v57 request:v58 completionHandler:v65];
  _Block_release(v65);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v31 = v77;
LABEL_30:
}

void sub_1CF2D292C(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{

  v18 = fpfs_adopt_log();
  v26 = *(a6 + 24);
  v27 = v18;
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a7;
  v19[6] = a8;
  v19[7] = a9;
  v19[8] = a10;
  v19[9] = a2;
  v19[10] = a11;
  v19[11] = a12;
  v19[12] = a6;
  aBlock[4] = sub_1CF2F65B4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF9284C8;
  aBlock[3] = &block_descriptor_790;
  v20 = _Block_copy(aBlock);
  v21 = a5;

  v22 = a10;
  v23 = a2;

  [a1 enumerateItemsFromPage:v26 suggestedPageSize:200 reply:v20];
  _Block_release(v20);
  v24 = fpfs_adopt_log();
}

void sub_1CF2D2AC8(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(void), uint64_t a8, void (*a9)(uint64_t, void), unint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t (*a14)(unint64_t), uint64_t a15, uint64_t a16)
{
  v114 = a2;
  v119 = a12;
  v117 = a11;
  v20 = a9;
  v21 = sub_1CF9E5FF8();
  v22 = *(v21 - 1);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = fpfs_adopt_log();
  a7();
  if (a5)
  {
    _s3__C4CodeOMa_1(0);
    v120 = -1002;
    v26 = a5;
    sub_1CF2F1F24(&qword_1EDEA3590, _s3__C4CodeOMa_1, &unk_1CF9F77C0);
    v27 = sub_1CF9E5658();

    if (v27)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
      sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70, &unk_1CFA13B50);
      a5 = swift_allocError();
      *v28 = 3;
      *(v28 + 8) = 0u;
      *(v28 + 24) = 0u;
      *(v28 + 40) = 0u;
      *(v28 + 56) = 0u;
      *(v28 + 72) = 0u;
      *(v28 + 88) = 11;
      a9(a5, 1);
    }

    else
    {
      v69 = *(a13 + OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_timeoutState);
      v70 = a5;
      v71 = sub_1CF2E3014(a5, v119, 0, v69);
      a9(v71, 1);
    }

    goto LABEL_50;
  }

  v113 = v22;
  v120 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_54:
    v29 = sub_1CF9E7818();
  }

  else
  {
    v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v110 = a10;
  v111 = v20;
  v112 = v25;
  v115 = v24;
  v116 = v21;
  if (v29)
  {
    v25 = 0;
    v118 = (a1 & 0xC000000000000001);
    a10 = a1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v118)
      {
        v44 = MEMORY[0x1D3869C30](v25, a1);
      }

      else
      {
        if (v25 >= *(a10 + 16))
        {
          goto LABEL_52;
        }

        v44 = *(a1 + 8 * v25 + 32);
      }

      v21 = v44;
      v45 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v20 = a1;
      v46 = [v44 itemID];
      v47 = [v46 identifier];

      v48 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v50 = v49;
      v51 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v24 = v52;
      if (v48 == v51 && v50 == v52)
      {

        v50, v30, v31, v32, v33, v34, v35, v36;
        v24, v37, v38, v39, v40, v41, v42, v43;
      }

      else
      {
        v54 = sub_1CF9E8048();

        v50, v55, v56, v57, v58, v59, v60, v61;
        v24, v62, v63, v64, v65, v66, v67, v68;
        if (v54)
        {
        }

        else
        {
          sub_1CF9E7A18();
          sub_1CF9E7A58();
          sub_1CF9E7A68();
          sub_1CF9E7A28();
        }
      }

      a1 = v20;
      ++v25;
    }

    while (v45 != v29);
    v25 = v120;
    v72 = v113;
    if ((v120 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v72 = v113;
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
LABEL_55:
    a1 = sub_1CF9E7818();
    goto LABEL_29;
  }

LABEL_27:
  if ((v25 & 0x4000000000000000) != 0)
  {
    goto LABEL_55;
  }

  a1 = *(v25 + 16);
LABEL_29:
  swift_retain_n();
  if (!a1)
  {
LABEL_45:

    v103 = a14(v25);

    if (v103)
    {
      v111(0, 0);
      v25 = v112;
    }

    else
    {
      v25 = v112;
      v104 = v114;
      if (v114)
      {
        v105 = *(a16 + 16);
        type metadata accessor for FileProviderPageToken();
        v106 = swift_allocObject();
        *(v106 + 16) = v105;
        *(v106 + 24) = v104;
        v107 = v104;
        v108 = v105;
        v111(v106, 0);
      }

      else
      {
        v111(0, 0);
      }
    }

LABEL_50:
    v109 = fpfs_adopt_log();

    return;
  }

  v73 = 0;
  a10 = 0;
  v118 = (v72 + 8);
  v119 = (v25 & 0xC000000000000001);
  v24 = MEMORY[0x1E69E6158];
  while (1)
  {
    if (v119)
    {
      v76 = MEMORY[0x1D3869C30](v73, v25);
      v20 = (v73 + 1);
      if (__OFADD__(v73, 1))
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v73 >= *(v25 + 16))
      {
        goto LABEL_53;
      }

      v76 = *(v25 + 8 * v73 + 32);
      v20 = (v73 + 1);
      if (__OFADD__(v73, 1))
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    v77 = v76;
    v78 = [v77 extendedAttributes];
    if (v78)
    {
      v79 = v78;
      v80 = sub_1CF9E6638();

      v21 = v25;
      v81 = a1;
      v82 = v117;

      sub_1CF045428(v80, v82);
      v80, v83, v84, v85, v86, v87, v88, v89;
      a1 = v81;
      v25 = v21;

      v90 = sub_1CF9E6618();

      [v77 setExtendedAttributes_];
    }

    if ([v77 isFlattenedPackage])
    {
      break;
    }

LABEL_32:

    ++v73;
    if (v20 == a1)
    {
      goto LABEL_45;
    }
  }

  v91 = [v77 filename];
  if (v91)
  {
    v92 = v91;
    v93 = [v91 stringByDeletingPathExtension];

    if (!v93)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v95 = v94;
      v93 = sub_1CF9E6888();
      v95, v96, v97, v98, v99, v100, v101, v102;
    }

    [v77 setFilename_];

    v74 = v115;
    sub_1CF9E5FA8();
    v75 = sub_1CF9E5F38();
    (*v118)(v74, v116);
    [v77 setContentType_];

    goto LABEL_32;
  }

  __break(1u);
}

uint64_t sub_1CF2D3200(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v61 = a3;
  v11 = sub_1CF9E63D8();
  v52 = *(v11 - 8);
  v53 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v62 = &v50 - v17;
  Strong = swift_unknownObjectWeakLoadStrong();
  v59 = v15;
  if (Strong)
  {
    v19 = Strong;
    v20 = [Strong session];
  }

  else
  {
    v20 = 0;
  }

  v21 = objc_allocWithZone(type metadata accessor for FPFileTreeLifetimeExtender());
  v22 = a2;
  v23 = a1;
  v24 = sub_1CF089C88(v23, a2, 0, 1);

  v56 = v22;
  if (v20)
  {
    [v20 registerLifetimeExtensionForObject_];
  }

  v25 = *(v6 + 168);
  v60 = *(v6 + 160);
  v26 = sub_1CF9E6448();
  v27 = v6;
  v54 = v6;
  v28 = v26;
  v55 = *(v26 - 8);
  (*(v55 + 56))(v62, 1, 1, v26);
  v29 = swift_allocObject();
  *(v29 + 16) = a4;
  *(v29 + 24) = a5;
  v30 = swift_allocObject();
  v31 = a4;
  v32 = a5;
  v33 = v30;
  v30[2] = v27;
  v30[3] = a2;
  v34 = v61;
  v30[4] = v61;
  v30[5] = v23;
  v30[6] = v20;
  v30[7] = v24;
  v30[8] = v31;
  v30[9] = v32;
  v35 = swift_allocObject();
  v35[2] = sub_1CEFF9D98;
  v35[3] = v29;
  v35[4] = v25;
  v36 = v34;
  v61 = v20;
  swift_unknownObjectRetain();
  v57 = v24;
  v58 = v29;

  swift_retain_n();
  v37 = v23;
  v38 = v55;
  v39 = v56;

  v40 = fpfs_current_log();
  v41 = *(v25 + 16);
  v42 = v59;
  sub_1CEFCCBDC(v62, v59, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v38 + 48))(v42, 1, v28) == 1)
  {
    sub_1CEFCCC44(v42, &unk_1EC4BE370, qword_1CFA01B30);
    v43 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v44 = v51;
    sub_1CF9E6438();
    (*(v38 + 8))(v42, v28);
    v43 = sub_1CF9E63C8();
    (*(v52 + 8))(v44, v53);
  }

  v45 = swift_allocObject();
  v45[2] = v40;
  v45[3] = sub_1CF2F60A0;
  v45[4] = v33;
  v67 = sub_1CF2BA17C;
  v68 = v45;
  aBlock = MEMORY[0x1E69E9820];
  v64 = 1107296256;
  v65 = sub_1CEFCA444;
  v66 = &block_descriptor_734;
  v46 = _Block_copy(&aBlock);
  v47 = v40;

  v67 = sub_1CF2F60B8;
  v68 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v64 = 1107296256;
  v65 = sub_1CEFCA444;
  v66 = &block_descriptor_737;
  v48 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v41, v60, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v43, v46, v48);
  _Block_release(v48);
  _Block_release(v46);
  swift_unknownObjectRelease();

  return sub_1CEFCCC44(v62, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF2D3774(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v15 = Strong;
  if (![Strong userEnabled])
  {

LABEL_10:
    v20 = sub_1CF2F1F6C();
    goto LABEL_11;
  }

  v16 = [v15 session];
  v17 = [objc_opt_self() defaultStore];
  if ([v17 hasUpcallExecutionTimeLimits])
  {
    goto LABEL_7;
  }

  if (qword_1EC4BCCF0 != -1)
  {
    swift_once();
  }

  v18 = -1.0;
  if (byte_1EC4BF020 == 1)
  {
LABEL_7:
    [v17 upcallExecutionTimeLimitBase];
    v18 = v19;
  }

  v20 = [v16 newFileProviderProxyWithTimeout:0 pid:v18];
  swift_unknownObjectRelease();
LABEL_11:
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21 && (v22 = v21, v23 = [v21 session], v22, v23))
  {
    if (a2)
    {
      v24 = a2;
    }

    else
    {
      v24 = [objc_opt_self() requestForSelf];
    }

    v25 = a2;
    v26 = [v24 nsfpRequestForSession:v23 isSpeculative:0];

    v36 = v26;
    [v26 setDomainVersion_];
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
  }

  v27 = [objc_allocWithZone(MEMORY[0x1E6967330]) init];
  v28 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(a1 + 280) itemIdentifier:a4];
  [v27 setEnumeratedItemID_];

  v29 = [objc_allocWithZone(type metadata accessor for DummyEnumeratorObserver()) init];
  v30 = swift_allocObject();
  v30[2] = a5;
  v30[3] = a6;
  v30[4] = a7;
  v30[5] = a8;
  v30[6] = a1;
  v30[7] = a4;
  v30[8] = v20;
  aBlock[4] = sub_1CF2F60EC;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF03FCFC;
  aBlock[3] = &block_descriptor_743;
  v31 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v32 = a6;

  v33 = a4;
  swift_unknownObjectRetain();
  v34 = v36;

  [v20 listRemoteVersionsWithSettings:v27 observer:v29 request:v34 completionHandler:v31];
  _Block_release(v31);
  swift_unknownObjectRelease();
}

void sub_1CF2D3B2C(uint64_t a1, void *a2, void *a3, uint64_t a4, void (*a5)(void *, uint64_t), uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v32 = a4;
  v15 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1CF9E5268();
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v21 = a2;
    v22 = sub_1CF2E3014(a2, a8, 0, [a9 timeoutState]);
    a5(v22, 1);

    if (!a3)
    {
      return;
    }

    goto LABEL_6;
  }

  v30 = a9;
  v31 = a6;
  if (a1)
  {
    v23 = swift_unknownObjectRetain();
    a5(v23, 0);
    swift_unknownObjectRelease();
    if (!a3)
    {
      return;
    }

LABEL_6:
    v24 = v32;

    [a3 unregisterLifetimeExtensionForObject_];
    return;
  }

  v25 = v17;
  v26 = v18;
  sub_1CF9E50E8();
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF2F1F24(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
  sub_1CF9E57D8();
  v27 = sub_1CF9E50D8();
  (*(v26 + 8))(v20, v25);
  v28 = sub_1CF2E3014(v27, a8, 0, [v30 timeoutState]);

  a5(v28, 1);
  if (a3)
  {
    [a3 unregisterLifetimeExtensionForObject_];
  }
}

uint64_t sub_1CF2D3E10(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8)
{
  v9 = v8;
  v63 = a3;
  v64 = a6;
  v66 = a2;
  v57 = sub_1CF9E63D8();
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v65 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v67 = &v55 - v19;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = [Strong session];
  }

  else
  {
    v22 = 0;
  }

  v23 = type metadata accessor for FPFileTreeLifetimeExtender();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_timeoutState] = 0;
  *&v24[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_itemIdentifier] = a1;
  v25 = objc_opt_self();
  v26 = a1;
  v27 = [v25 requestForSelf];
  *&v24[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_requestor] = v27;
  v28 = [objc_opt_self() defaultStore];
  if ([v28 hasUpcallExecutionTimeLimits])
  {
    goto LABEL_8;
  }

  if (qword_1EC4BCCF0 != -1)
  {
    swift_once();
  }

  v29 = -1.0;
  if (byte_1EC4BF020 == 1)
  {
LABEL_8:
    [v28 upcallExecutionTimeLimitBase];
    v29 = v30;
  }

  *&v24[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_timeout] = v29;
  v74.receiver = v24;
  v74.super_class = v23;
  v31 = objc_msgSendSuper2(&v74, sel_init);
  if (v22)
  {
    [v22 registerLifetimeExtensionForObject_];
  }

  v32 = *(v8 + 160);
  v33 = *(v8 + 168);
  v62 = v32;
  v34 = sub_1CF9E6448();
  v59 = *(v34 - 8);
  v60 = v34;
  v35 = *(v59 + 56);
  v36 = v9;
  v58 = v9;
  v35(v67, 1, 1, v34);
  v37 = swift_allocObject();
  *(v37 + 16) = a5;
  v38 = v31;
  v39 = a5;
  v40 = v64;
  *(v37 + 24) = v64;
  v41 = swift_allocObject();
  *(v41 + 16) = v63;
  *(v41 + 24) = a4;
  *(v41 + 32) = v36;
  *(v41 + 40) = v26;
  *(v41 + 48) = v66;
  *(v41 + 56) = a7;
  *(v41 + 64) = a8;
  *(v41 + 72) = v22;
  *(v41 + 80) = v38;
  *(v41 + 88) = v39;
  *(v41 + 96) = v40;
  v42 = v59;
  v43 = swift_allocObject();
  v43[2] = sub_1CF2BA174;
  v43[3] = v37;
  v61 = v43;
  v43[4] = v33;
  swift_retain_n();
  v44 = v26;

  v66 = v22;
  swift_unknownObjectRetain();
  v64 = v38;

  v45 = fpfs_current_log();
  v46 = v60;
  v63 = *(v33 + 16);
  v47 = v65;
  sub_1CEFCCBDC(v67, v65, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v42 + 48))(v47, 1, v46) == 1)
  {
    sub_1CEFCCC44(v47, &unk_1EC4BE370, qword_1CFA01B30);
    v48 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v49 = v55;
    sub_1CF9E6438();
    (*(v42 + 8))(v47, v46);
    v48 = sub_1CF9E63C8();
    (*(v56 + 8))(v49, v57);
  }

  v50 = swift_allocObject();
  v50[2] = v45;
  v50[3] = sub_1CF2F5F44;
  v50[4] = v41;
  v72 = sub_1CF2BA17C;
  v73 = v50;
  aBlock = MEMORY[0x1E69E9820];
  v69 = 1107296256;
  v70 = sub_1CEFCA444;
  v71 = &block_descriptor_709;
  v51 = _Block_copy(&aBlock);
  v52 = v45;

  v72 = sub_1CF2BA180;
  v73 = v61;
  aBlock = MEMORY[0x1E69E9820];
  v69 = 1107296256;
  v70 = sub_1CEFCA444;
  v71 = &block_descriptor_712;
  v53 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v63, v62, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v48, v51, v53);
  _Block_release(v53);
  _Block_release(v51);
  swift_unknownObjectRelease();

  return sub_1CEFCCC44(v67, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF2D44B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, double a9, double a10, uint64_t a11)
{
  v21 = type metadata accessor for DummyOperationClient();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR____TtC18FileProviderDaemon20DummyOperationClient_cancellationHandler] = 0;
  v23 = &v22[OBJC_IVAR____TtC18FileProviderDaemon20DummyOperationClient_perThumbnailCompletionHandler];
  *v23 = a1;
  *(v23 + 1) = a2;
  v56.receiver = v22;
  v56.super_class = v21;

  v24 = objc_msgSendSuper2(&v56, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF2F0, &qword_1CFA01BE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(a3 + 280) itemIdentifier:a4];
  *(inited + 40) = a5;

  v26 = sub_1CF4E2B78(inited);
  swift_setDeallocating();
  sub_1CEFCCC44(inited + 32, &qword_1EC4BF2F8, qword_1CFA01BF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v28 = Strong;
  if (![Strong userEnabled])
  {

LABEL_10:
    v33 = sub_1CF2F1F6C();
    goto LABEL_11;
  }

  v29 = [v28 session];
  v30 = [objc_opt_self() defaultStore];
  if ([v30 hasUpcallExecutionTimeLimits])
  {
    goto LABEL_7;
  }

  if (qword_1EC4BCCF0 != -1)
  {
    swift_once();
  }

  v31 = -1.0;
  if (byte_1EC4BF020 == 1)
  {
LABEL_7:
    [v30 upcallExecutionTimeLimitBase];
    v31 = v32;
  }

  v33 = [v29 newFileProviderProxyWithTimeout:0 pid:v31];
  swift_unknownObjectRelease();
LABEL_11:
  v34 = v24;
  sub_1CF7BAF38(v26);
  v36 = v35;
  v26, v37, v38, v39, v40, v41, v42, v43;
  sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE20, &qword_1CFA0CD90);
  sub_1CF2F5F80();
  v44 = sub_1CF9E6618();
  v36, v45, v46, v47, v48, v49, v50, v51;
  v52 = swift_allocObject();
  v52[2] = a6;
  v52[3] = a7;
  v52[4] = a8;
  v52[5] = a11;
  v55[4] = sub_1CF2F6038;
  v55[5] = v52;
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 1107296256;
  v55[2] = sub_1CF00A468;
  v55[3] = &block_descriptor_718;
  v53 = _Block_copy(v55);
  swift_unknownObjectRetain();
  v54 = a7;

  [v33 startOperation:v34 toFetchThumbnailsWithDictionary:v44 size:v53 completionHandler:{a9, a10}];
  _Block_release(v53);
  swift_unknownObjectRelease();
}

void sub_1CF2D486C(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7, void (*a8)(void, void))
{
  v204 = a8;
  v201 = a7;
  LODWORD(v219) = a6;
  v208 = a5;
  v206 = a3;
  v221 = a2;
  v203 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v218 = &v184 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v184 - v12;
  v214 = sub_1CF9E63D8();
  v224 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v15 = &v184 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v205 = &v184 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v213 = &v184 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v184 - v21;
  v207 = sub_1CF9E6448();
  v220 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v24 = &v184 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v184 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v199 = &v184 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v223 = &v184 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v184 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v184 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v198 = &v184 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v222 = &v184 - v41;
  v200 = sub_1CF9E6118();
  v42 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v44 = &v184 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v45);
  v197 = &v184 - v47;
  v202 = *v221;
  if (a4)
  {
    v195 = v22;
    v196 = v13;
    v48 = *(a4 + 16);
    if (v48)
    {
      v49 = (a4 + 32);
      v194 = (v42 + 8);
      v50 = 8;
      if ((v219 & 1) == 0)
      {
        v50 = 0;
      }

      v193 = v50;
      v51 = (v224 + 48);
      v187 = (v224 + 32);
      v186 = *MEMORY[0x1E69E7FA0];
      v185 = (v224 + 104);
      v211 = (v220 + 8);
      v191 = (v220 + 32);
      v190 = (v220 + 56);
      v189 = (v220 + 48);
      v188 = &v228;
      v46.n128_u64[0] = 136315138;
      v184 = v46;
      v192 = (v224 + 48);
      v212 = (v224 + 8);
      do
      {
        v221 = v48;
        v57 = *v49;
        v58 = v49[1];
        v59 = v49[3];
        v233 = v49[2];
        v234 = v59;
        v232[0] = v57;
        v232[1] = v58;
        v235 = *v49;
        v236 = v49[1];
        v237 = v49[2];
        v220 = v49;
        v238 = v49[3];
        v60 = v57;
        v61 = *(&v58 + 1);
        v62 = v233;
        v63 = *(&v59 + 1);
        sub_1CEFCCBDC(v232, &aBlock, &unk_1EC4BF250, &unk_1CFA01B50);
        sub_1CEFCCBDC(v232, &aBlock, &unk_1EC4BF250, &unk_1CFA01B50);
        sub_1CEFE42D4(v60, *(&v60 + 1));
        sub_1CEFE42D4(v61, v62);
        v64 = sub_1CF9E5B48();
        v65 = sub_1CF9E5B48();
        if (v63)
        {
          v66 = sub_1CF9E6888();
        }

        else
        {
          v66 = 0;
        }

        v67 = objc_opt_self();
        v68 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v64 metadataVersion:v65 lastEditorDeviceName:v66];

        sub_1CEFE4714(v61, v62);
        sub_1CEFE4714(v60, *(&v60 + 1));
        v69 = [v67 etagForVersion:v68 providerDomainID:v225[35]];

        v70 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v72 = v71;

        v73 = fpfs_current_or_default_log();
        v74 = v197;
        sub_1CF9E6128();

        v75 = sub_1CF9E6108();
        v76 = sub_1CF9E7288();
        v72, v77, v78, v79, v80, v81, v82, v83;
        if (os_log_type_enabled(v75, v76))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          aBlock = v85;
          *v84 = v184.n128_u32[0];
          *(v84 + 4) = sub_1CEFD0DF0(v70, v72, &aBlock);
          _os_log_impl(&dword_1CEFC7000, v75, v76, "⚔️  Fetching version %s...", v84, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v85);
          MEMORY[0x1D386CDC0](v85, -1, -1);
          MEMORY[0x1D386CDC0](v84, -1, -1);
        }

        (*v194)(v74, v200);
        v86 = v195;
        v87 = swift_allocObject();
        v88 = v204;
        v87[2] = v201;
        v87[3] = v88;
        v89 = v203;
        v90 = v225;
        v87[4] = v203;
        v87[5] = v90;
        v87[6] = v70;
        v87[7] = v72;
        v91 = swift_allocObject();
        *(v91 + 16) = nullsub_1;
        *(v91 + 24) = 0;
        v92 = swift_allocObject();
        v92[2] = v90;
        v92[3] = v91;
        v92[4] = sub_1CF2F66F0;
        v92[5] = v87;
        swift_retain_n();

        v216 = v89;
        v224 = v91;

        v219 = v87;

        materialization_alignment = fpfs_get_materialization_alignment();
        v93 = v90[20];
        v217 = v90[21];
        v218 = v93;
        sub_1CF9E6418();
        qos_class_self();
        v94 = v196;
        sub_1CF9E63B8();
        v95 = *v51;
        v96 = v214;
        if ((*v51)(v94, 1, v214) == 1)
        {
          (*v185)(v86, v186, v96);
          if (v95(v94, 1, v96) != 1)
          {
            sub_1CEFCCC44(v94, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*v187)(v86, v94, v96);
        }

        v97 = v199;
        sub_1CF9E6428();
        v98 = v213;
        sub_1CF9E6438();
        v99 = sub_1CF9E63C8();
        v100 = *v212;
        (*v212)(v98, v96);
        v101 = v205;
        v102 = v223;
        sub_1CF9E6438();
        v103 = sub_1CF9E63C8();
        v210 = v100;
        v100(v101, v96);
        v104 = *v211;
        if (v99 >= v103)
        {
          v105 = v97;
        }

        else
        {
          v105 = v102;
        }

        if (v99 >= v103)
        {
          v106 = v102;
        }

        else
        {
          v106 = v97;
        }

        v107 = v207;
        v209 = *v211;
        v104(v105, v207);
        v108 = v222;
        (*v191)(v222, v106, v107);
        (*v190)(v108, 0, 1, v107);
        v109 = swift_allocObject();
        v110 = v206;
        *(v109 + 16) = v225;
        *(v109 + 24) = v110;
        v111 = v216;
        v112 = v193;
        *(v109 + 32) = v216;
        *(v109 + 40) = v112;
        v113 = v208;
        *(v109 + 48) = 0;
        *(v109 + 56) = v113;
        v114 = v236;
        *(v109 + 64) = v235;
        *(v109 + 80) = v114;
        v115 = v238;
        *(v109 + 96) = v237;
        *(v109 + 112) = v115;
        *(v109 + 128) = sub_1CF2F6584;
        *(v109 + 136) = v92;
        *(v109 + 144) = v202;
        v116 = materialization_alignment;
        *(v109 + 152) = 0;
        *(v109 + 160) = v116;
        *(v109 + 168) = v224;
        v117 = swift_allocObject();
        v117[2] = sub_1CF2F6584;
        v117[3] = v92;
        v118 = v217;
        v117[4] = v217;
        swift_retain_n();
        sub_1CEFCCBDC(v232, &aBlock, &unk_1EC4BF250, &unk_1CFA01B50);

        v119 = v111;

        v120 = v113;

        v121 = fpfs_current_log();
        v217 = v118[2];
        v122 = *v189;
        v123 = (*v189)(v108, 1, v107);
        v124 = 32;
        if (v123 == 1)
        {
          v124 = 16;
        }

        v216 = v124;
        v125 = v198;
        sub_1CEFCCBDC(v108, v198, &unk_1EC4BE370, qword_1CFA01B30);
        if (v122(v125, 1, v107) == 1)
        {
          sub_1CEFCCC44(v125, &unk_1EC4BE370, qword_1CFA01B30);
          v52 = QOS_CLASS_UNSPECIFIED;
        }

        else
        {
          v126 = v213;
          sub_1CF9E6438();
          v209(v125, v107);
          v52 = sub_1CF9E63C8();
          v210(v126, v214);
        }

        v53 = swift_allocObject();
        v53[2] = v121;
        v53[3] = sub_1CF2F658C;
        v53[4] = v109;
        v230 = sub_1CF2BA17C;
        v231 = v53;
        aBlock = MEMORY[0x1E69E9820];
        v227 = 1107296256;
        v228 = sub_1CEFCA444;
        v229 = &block_descriptor_660;
        v54 = _Block_copy(&aBlock);
        v55 = v121;

        v230 = sub_1CF2F6720;
        v231 = v117;
        aBlock = MEMORY[0x1E69E9820];
        v227 = 1107296256;
        v228 = sub_1CEFCA444;
        v229 = &block_descriptor_663;
        v56 = _Block_copy(&aBlock);

        fp_task_tracker_async_and_qos(v217, v218, v216, v52, v54, v56);

        _Block_release(v56);
        _Block_release(v54);

        sub_1CEFCCC44(v222, &unk_1EC4BE370, qword_1CFA01B30);

        sub_1CEFCCC44(v232, &unk_1EC4BF250, &unk_1CFA01B50);
        sub_1CEFCCC44(v232, &unk_1EC4BF250, &unk_1CFA01B50);
        v49 = (v220 + 64);
        v48 = v221 - 1;
        v51 = v192;
      }

      while (v221 != 1);
    }
  }

  else
  {
    materialization_alignment = v27;
    v222 = v24;
    v216 = v15;
    v127 = v218;
    v217 = v34;
    v223 = v37;
    v128 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v129 = sub_1CF9E6108();
    v130 = sub_1CF9E7288();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      *&v235 = v132;
      *v131 = 136315138;
      *(v131 + 4) = sub_1CEFD0DF0(7104878, 0xE300000000000000, &v235);
      _os_log_impl(&dword_1CEFC7000, v129, v130, "⚔️  Fetching version %s...", v131, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v132);
      MEMORY[0x1D386CDC0](v132, -1, -1);
      MEMORY[0x1D386CDC0](v131, -1, -1);
    }

    (*(v42 + 8))(v44, v200);
    v133 = v224;
    v134 = v127;
    v135 = v222;
    v136 = 8;
    if ((v219 & 1) == 0)
    {
      v136 = 0;
    }

    v212 = v136;
    v137 = swift_allocObject();
    v138 = v204;
    v137[2] = v201;
    v137[3] = v138;
    v139 = v203;
    v140 = v225;
    v137[4] = v203;
    v137[5] = v140;
    v137[6] = 7104878;
    v137[7] = 0xE300000000000000;
    v141 = swift_allocObject();
    *(v141 + 16) = nullsub_1;
    *(v141 + 24) = 0;
    v142 = swift_allocObject();
    *(v142 + 2) = v140;
    *(v142 + 3) = v141;
    *(v142 + 4) = sub_1CF2F5CBC;
    *(v142 + 5) = v137;
    v221 = v142;
    swift_retain_n();

    v211 = v139;
    v222 = v141;

    v209 = fpfs_get_materialization_alignment();
    v143 = v140[20];
    v210 = v140[21];
    v218 = v143;
    v144 = materialization_alignment;
    sub_1CF9E6418();
    qos_class_self();
    sub_1CF9E63B8();
    v145 = *(v133 + 48);
    v146 = v214;
    v147 = v145(v134, 1, v214);
    v148 = v213;
    v219 = v137;
    if (v147 == 1)
    {
      (*(v133 + 104))(v216, *MEMORY[0x1E69E7FA0], v146);
      if (v145(v134, 1, v146) != 1)
      {
        sub_1CEFCCC44(v134, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v133 + 32))(v216, v134, v146);
    }

    sub_1CF9E6428();
    sub_1CF9E6438();
    v149 = sub_1CF9E63C8();
    v150 = *(v133 + 8);
    v224 = v133 + 8;
    v150(v148, v146);
    v151 = v205;
    sub_1CF9E6438();
    v152 = sub_1CF9E63C8();
    v205 = v150;
    v150(v151, v146);
    v153 = v220;
    v154 = *(v220 + 8);
    if (v149 >= v152)
    {
      v155 = v135;
    }

    else
    {
      v155 = v144;
    }

    if (v149 >= v152)
    {
      v156 = v144;
    }

    else
    {
      v156 = v135;
    }

    v157 = v207;
    materialization_alignment = v220 + 8;
    v204 = v154;
    v154(v155, v207);
    v158 = v223;
    (*(v153 + 32))(v223, v156, v157);
    (*(v153 + 56))(v158, 0, 1, v157);
    v159 = swift_allocObject();
    v160 = v206;
    *(v159 + 16) = v225;
    *(v159 + 24) = v160;
    v161 = v211;
    v162 = v212;
    *(v159 + 32) = v211;
    *(v159 + 40) = v162;
    v163 = v208;
    *(v159 + 48) = 0;
    *(v159 + 56) = v163;
    *(v159 + 64) = 0;
    *(v159 + 72) = 0;
    *(v159 + 80) = 1;
    *(v159 + 88) = 0u;
    *(v159 + 104) = 0u;
    *(v159 + 120) = 0;
    *(v159 + 128) = sub_1CF2F6584;
    v164 = v221;
    *(v159 + 136) = v221;
    *(v159 + 144) = v202;
    v165 = v209;
    *(v159 + 152) = 0;
    *(v159 + 160) = v165;
    *(v159 + 168) = v222;
    v166 = swift_allocObject();
    v166[2] = sub_1CF2F6584;
    v166[3] = v164;
    v216 = v166;
    v167 = v210;
    v166[4] = v210;
    v168 = v163;

    swift_retain_n();

    v169 = v157;

    v170 = v161;
    v171 = fpfs_current_log();
    v172 = *(v167 + 2);
    v173 = *(v153 + 48);
    if (v173(v158, 1, v169) == 1)
    {
      v174 = 16;
    }

    else
    {
      v174 = 32;
    }

    v175 = v158;
    v176 = v217;
    sub_1CEFCCBDC(v175, v217, &unk_1EC4BE370, qword_1CFA01B30);
    v177 = v173(v176, 1, v169);
    v225 = v172;
    v220 = v174;
    if (v177 == 1)
    {
      sub_1CEFCCC44(v176, &unk_1EC4BE370, qword_1CFA01B30);
      LODWORD(v217) = 0;
    }

    else
    {
      v178 = v213;
      sub_1CF9E6438();
      v204(v176, v169);
      LODWORD(v217) = sub_1CF9E63C8();
      (v205)(v178, v214);
    }

    v179 = v218;
    v180 = swift_allocObject();
    v180[2] = v171;
    v180[3] = sub_1CF2F658C;
    v180[4] = v159;
    *&v237 = sub_1CF2BA17C;
    *(&v237 + 1) = v180;
    *&v235 = MEMORY[0x1E69E9820];
    *(&v235 + 1) = 1107296256;
    *&v236 = sub_1CEFCA444;
    *(&v236 + 1) = &block_descriptor_633;
    v181 = _Block_copy(&v235);
    v182 = v171;

    *&v237 = sub_1CF2F6720;
    *(&v237 + 1) = v216;
    *&v235 = MEMORY[0x1E69E9820];
    *(&v235 + 1) = 1107296256;
    *&v236 = sub_1CEFCA444;
    *(&v236 + 1) = &block_descriptor_636;
    v183 = _Block_copy(&v235);

    fp_task_tracker_async_and_qos(v225, v179, v220, v217, v181, v183);

    _Block_release(v183);
    _Block_release(v181);

    sub_1CEFCCC44(v223, &unk_1EC4BE370, qword_1CFA01B30);
  }
}

uint64_t sub_1CF2D6000(__int128 *a1, void (*a2)(uint64_t), uint64_t a3, void *a4, void *a5, void *a6, _TtC18FileProviderDaemon8FSTester *a7)
{
  v215 = a6;
  v220 = a5;
  v223 = a2;
  v224 = a3;
  v10 = sub_1CF9E63D8();
  v211 = *(v10 - 8);
  v212 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v210 = &v202 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v214 = &v202 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v217 = &v202 - v15;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5A90, &qword_1CFA01BD0);
  MEMORY[0x1EEE9AC00](v218);
  v219 = (&v202 - v16);
  v17 = sub_1CF9E6118();
  v221 = *(v17 - 1);
  v222 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v202 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v202 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v213 = (&v202 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v216 = &v202 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  v33 = (&v202 - v32);
  v34 = a1[1];
  v273 = *a1;
  v274 = v34;
  v35 = a1[3];
  v275 = a1[2];
  *v276 = v35;
  *&v276[9] = *(a1 + 57);
  v36 = *(a1 + 24);
  v277 = *(a1 + 8);
  v278 = v36;
  v37 = *(a1 + 56);
  v279 = *(a1 + 40);
  v280 = v37;
  if (v276[24])
  {
    v38 = v273;
    v39 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFCCBDC(&v273, &v251, &qword_1EC4BF2B8, &qword_1CFA01BB0);
    v40 = a4;

    v41 = sub_1CF9E6108();
    v42 = sub_1CF9E7288();

    a7, v43, v44, v45, v46, v47, v48, v49;
    sub_1CEFCCC44(&v273, &qword_1EC4BF2B8, &qword_1CFA01BB0);
    if (os_log_type_enabled(v41, v42))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v251 = v52;
      *v50 = 136315650;
      *(v50 + 4) = sub_1CEFD0DF0(v215, a7, &v251);
      *(v50 + 12) = 2080;
      v53 = NSFileProviderItemIdentifier.description.getter(v40);
      v55 = v54;
      v56 = sub_1CEFD0DF0(v53, v54, &v251);
      v55, v57, v58, v59, v60, v61, v62, v63;
      *(v50 + 14) = v56;
      *(v50 + 22) = 2112;
      v64 = v273;
      v65 = v38;
      v66 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 24) = v66;
      *v51 = v66;
      _os_log_impl(&dword_1CEFC7000, v41, v42, "⚔️  Failed fetching version %s for %s: %@", v50, 0x20u);
      sub_1CEFCCC44(v51, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v51, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v52, -1, -1);
      MEMORY[0x1D386CDC0](v50, -1, -1);

      (*(v221 + 1))(v19, v222);
    }

    else
    {

      (*(v221 + 1))(v19, v222);
      v65 = v38;
    }

    v93 = v219;
    *v219 = v65;
    swift_storeEnumTagMultiPayload();
    v94 = v273;
    goto LABEL_10;
  }

  v206 = v22;
  *v243 = v273;
  *&v243[56] = *(a1 + 56);
  *&v243[8] = *(a1 + 8);
  *&v243[24] = *(a1 + 24);
  *&v243[40] = *(a1 + 40);
  v67 = *&v243[64];
  if (!*&v243[64])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
    sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70, &unk_1CFA13B50);
    v95 = swift_allocError();
    *v96 = a4;
    *(v96 + 8) = 0;
    *(v96 + 16) = 0;
    *(v96 + 24) = 1;
    *(v96 + 32) = 0u;
    *(v96 + 48) = 0u;
    *(v96 + 64) = 0u;
    *(v96 + 73) = 0u;
    v93 = v219;
    *v219 = v95;
    swift_storeEnumTagMultiPayload();
    v97 = a4;
LABEL_10:
    v223(v93);
    v98 = &unk_1EC4C5A90;
    v99 = &qword_1CFA01BD0;
    v100 = v93;
    return sub_1CEFCCC44(v100, v98, v99);
  }

  v202 = v31;
  v203 = v30;
  v204 = v29;
  v267 = *v243;
  v268 = *&v243[16];
  v269 = *&v243[32];
  v270 = *&v243[48];
  v68 = a1[2];
  v69 = a1[3];
  v70 = *a1;
  v238[1] = a1[1];
  v238[2] = v68;
  v239[0] = v69;
  *(v239 + 9) = *(a1 + 57);
  v238[0] = v70;
  v71 = v273;
  sub_1CEFCCBDC(v238, &v251, &qword_1EC4BF2E0, &qword_1CFA01BD8);

  v208 = v71;
  *v240 = v71;
  v72 = *(a1 + 24);
  *&v240[8] = *(a1 + 8);
  *&v240[24] = v72;
  v73 = *(a1 + 56);
  *&v240[40] = *(a1 + 40);
  *&v240[56] = v73;
  v241[2] = v275;
  v242[0] = *v276;
  *(v242 + 9) = *&v276[9];
  v241[0] = v273;
  v241[1] = v274;
  sub_1CEFCCBDC(v241, &v251, &qword_1EC4BF2E0, &qword_1CFA01BD8);
  sub_1CF1AE25C(v240);
  v74 = *&v240[64];
  sub_1CF06BC9C(&v244);
  v75 = [v74 filename];
  v76 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v78 = v77;

  *&v251 = v76;
  *(&v251 + 1) = v78;
  *&v236[0] = 58;
  *(&v236[0] + 1) = 0xE100000000000000;
  v231 = 47;
  *&v232 = 0xE100000000000000;
  sub_1CEFE4E68();
  v79 = sub_1CF9E7668();
  v81 = v80;
  v78, v80, v82, v83, v84, v85, v86, v87;
  v88 = sub_1CF0689E4();
  v207 = *(v27 + 40);
  v215 = v74;
  sub_1CEFF54BC(v207 + v33);
  *v33 = v88;
  v33[1] = v79;
  v209 = v33;
  v33[2] = v81;
  v271 = v244;
  v272 = *(v245 + 8);
  v89 = *(&v246 + 1);
  sub_1CF2F47F0(&v271, &v251);
  sub_1CF2F47F0(&v272, &v251);
  v90 = sub_1CF9E5B48();
  v91 = sub_1CF9E5B48();
  if (v89)
  {
    v92 = sub_1CF9E6888();
  }

  else
  {
    v92 = 0;
  }

  v101 = objc_opt_self();
  v102 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v90 metadataVersion:v91 lastEditorDeviceName:v92];

  sub_1CF2F484C(&v272);
  sub_1CF2F484C(&v271);
  v103 = [v101 etagForVersion:v102 providerDomainID:v220[35]];

  v104 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v106 = v105;

  v107 = fpfs_current_or_default_log();
  v108 = v216;
  sub_1CF9E6128();

  v109 = sub_1CF9E6108();
  v110 = sub_1CF9E7288();
  v106, v111, v112, v113, v114, v115, v116, v117;
  if (os_log_type_enabled(v109, v110))
  {
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    *&v251 = v119;
    *v118 = 136315138;
    *(v118 + 4) = sub_1CEFD0DF0(v104, v106, &v251);
    _os_log_impl(&dword_1CEFC7000, v109, v110, "⚔️  Staging version %s...", v118, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v119);
    MEMORY[0x1D386CDC0](v119, -1, -1);
    MEMORY[0x1D386CDC0](v118, -1, -1);
  }

  v205 = *(v221 + 1);
  v205(v108, v222);
  v231 = v208;
  v232 = v277;
  v233 = v278;
  v234 = v279;
  v235 = v280;
  sub_1CEFCCBDC(&v231, &v251, &qword_1EC4BF2E8, &qword_1CFA01BE0);
  v120 = v215;

  v247 = *v240;
  v248 = *&v240[16];
  v249 = *&v240[32];
  v250 = *&v240[48];
  sub_1CEFE528C(v236);
  v263 = v236[12];
  v264 = v236[13];
  v265 = v236[14];
  v266 = v237;
  v259 = v236[8];
  v260 = v236[9];
  v261 = v236[10];
  v262 = v236[11];
  v255 = v236[4];
  v256 = v236[5];
  v257 = v236[6];
  v258 = v236[7];
  v251 = v236[0];
  v252 = v236[1];
  v253 = v236[2];
  v254 = v236[3];
  v121 = swift_allocObject();
  v122 = v220;
  *(v121 + 16) = v220;
  v123 = v268;
  *(v121 + 24) = v267;
  *(v121 + 40) = v123;
  v124 = v270;
  *(v121 + 56) = v269;
  *(v121 + 72) = v124;
  *(v121 + 88) = v104;
  *(v121 + 96) = v106;
  v125 = v224;
  *(v121 + 104) = v223;
  *(v121 + 112) = v125;
  *(v121 + 120) = v120;
  v126 = v244;
  v127 = v245[0];
  v128 = v246;
  *(v121 + 160) = v245[1];
  *(v121 + 176) = v128;
  v129 = v209;
  v130 = *(v207 + v209) - 1;
  *(v121 + 128) = v126;
  *(v121 + 144) = v127;
  v216 = v121;
  if (v130 > 1)
  {
    v153 = v121;
    v154 = v122[20];
    v208 = v122[21];
    v222 = v154;
    v155 = sub_1CF9E6448();
    v213 = v106;
    v218 = *(v155 - 8);
    v219 = v155;
    (*(v218 + 56))(v217, 1, 1, v155);
    v156 = swift_allocObject();
    v221 = sub_1CF2F5E54;
    v223 = v156;
    *(v156 + 16) = sub_1CF2F5E54;
    *(v156 + 24) = v153;
    v157 = v204;
    sub_1CEFCCBDC(v129, v204, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
    v158 = (*(v202 + 80) + 88) & ~*(v202 + 80);
    v159 = (v203 + v158 + 7) & 0xFFFFFFFFFFFFFFF8;
    v160 = swift_allocObject();
    *(v160 + 16) = v122;
    *(v160 + 24) = v247;
    *(v160 + 40) = v248;
    *(v160 + 56) = v249;
    *(v160 + 72) = v250;
    sub_1CEFE55D0(v157, v160 + v158, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
    v161 = v160 + v159;
    v162 = v264;
    *(v161 + 192) = v263;
    *(v161 + 208) = v162;
    *(v161 + 224) = v265;
    *(v161 + 240) = v266;
    v163 = v260;
    *(v161 + 128) = v259;
    *(v161 + 144) = v163;
    v164 = v262;
    *(v161 + 160) = v261;
    *(v161 + 176) = v164;
    v165 = v256;
    *(v161 + 64) = v255;
    *(v161 + 80) = v165;
    v166 = v258;
    *(v161 + 96) = v257;
    *(v161 + 112) = v166;
    v167 = v252;
    *v161 = v251;
    *(v161 + 16) = v167;
    v168 = v254;
    *(v161 + 32) = v253;
    *(v161 + 48) = v168;
    v169 = (v160 + ((v159 + 255) & 0xFFFFFFFFFFFFFFF8));
    v170 = v216;
    *v169 = v221;
    v169[1] = v170;
    v171 = swift_allocObject();
    v172 = v223;
    v171[2] = sub_1CEFF9D98;
    v171[3] = v172;
    v173 = v208;
    v207 = v171;
    v171[4] = v208;
    swift_retain_n();

    sub_1CF1AE1DC(v243, &v225);

    v174 = v215;
    sub_1CEFCCBDC(&v244, &v225, &unk_1EC4BF250, &unk_1CFA01B50);

    v175 = v218;

    sub_1CF1AE1DC(v243, &v225);

    v221 = v174;
    sub_1CEFCCBDC(&v244, &v225, &unk_1EC4BF250, &unk_1CFA01B50);

    sub_1CF1AE1DC(v240, &v225);

    v176 = fpfs_current_log();
    v208 = v173[2];
    v177 = v214;
    sub_1CEFCCBDC(v217, v214, &unk_1EC4BE370, qword_1CFA01B30);
    v178 = v219;
    if ((*(v175 + 48))(v177, 1) == 1)
    {
      sub_1CEFCCC44(v177, &unk_1EC4BE370, qword_1CFA01B30);
      v179 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v180 = v210;
      sub_1CF9E6438();
      (*(v175 + 8))(v177, v178);
      v179 = sub_1CF9E63C8();
      (*(v211 + 8))(v180, v212);
    }

    v181 = swift_allocObject();
    v181[2] = v176;
    v181[3] = sub_1CF2F5E94;
    v181[4] = v160;
    v229 = sub_1CF2BA17C;
    v230 = v181;
    v225 = MEMORY[0x1E69E9820];
    v226 = 1107296256;
    v227 = sub_1CEFCA444;
    v228 = &block_descriptor_684_0;
    v182 = _Block_copy(&v225);
    v183 = v176;

    v229 = sub_1CF2F671C;
    v230 = v207;
    v225 = MEMORY[0x1E69E9820];
    v226 = 1107296256;
    v227 = sub_1CEFCA444;
    v228 = &block_descriptor_687_0;
    v184 = _Block_copy(&v225);

    fp_task_tracker_async_and_qos(v208, v222, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v179, v182, v184);
    _Block_release(v184);
    _Block_release(v182);

    sub_1CEFCCC44(v217, &unk_1EC4BE370, qword_1CFA01B30);

    sub_1CEFCCC44(&v244, &unk_1EC4BF250, &unk_1CFA01B50);

    v192 = v215;
    v106 = v213;
  }

  else
  {
    type metadata accessor for StagedContext();
    v217 = swift_allocObject();

    sub_1CF1AE1DC(v243, &v225);

    v131 = v120;
    sub_1CEFCCBDC(&v244, &v225, &unk_1EC4BF250, &unk_1CFA01B50);

    sub_1CF1AE1DC(v243, &v225);

    v132 = v131;
    sub_1CEFCCBDC(&v244, &v225, &unk_1EC4BF250, &unk_1CFA01B50);
    v133 = fpfs_current_or_default_log();
    v134 = v213;
    sub_1CF9E6128();

    v135 = sub_1CF9E6108();
    v136 = sub_1CF9E7288();
    v106, v137, v138, v139, v140, v141, v142, v143;
    if (os_log_type_enabled(v135, v136))
    {
      v144 = swift_slowAlloc();
      v145 = v106;
      v146 = swift_slowAlloc();
      v225 = v146;
      *v144 = 136315138;
      *(v144 + 4) = sub_1CEFD0DF0(v104, v145, &v225);
      _os_log_impl(&dword_1CEFC7000, v135, v136, "⚔️  Fetching URL in the wharf for version %s...", v144, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v146);
      v147 = v146;
      v106 = v145;
      MEMORY[0x1D386CDC0](v147, -1, -1);
      MEMORY[0x1D386CDC0](v144, -1, -1);
    }

    v205(v134, v222);
    v148 = v122[17];
    type metadata accessor for VFSStagedContext();
    v149 = swift_dynamicCastClassUnconditional();

    v150 = v224;

    v151 = v132;
    sub_1CF9C3744(v149, 0x200000, v148, v122, v223, v150, v151);
    if (*v243 && (MEMORY[0x1EEE9AC00](v152), sub_1CEFE1894(sub_1CF2B9F78), *(v148 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0, *(v148 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource)))
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_1CEFCCC44(&v244, &unk_1EC4BF250, &unk_1CFA01B50);

    v192 = v215;
  }

  v106, v185, v186, v187, v188, v189, v190, v191;
  sub_1CF1AE25C(v243);
  v106, v194, v195, v196, v197, v198, v199, v200;

  sub_1CEFCCC44(&v244, &unk_1EC4BF250, &unk_1CFA01B50);

  sub_1CF1AE25C(v243);
  sub_1CF1AE25C(v240);
  v98 = &qword_1EC4BE9F8;
  v99 = &unk_1CF9FEFE0;
  v100 = v209;
  return sub_1CEFCCC44(v100, v98, v99);
}

void sub_1CF2D77C4(void *a1, char a2, uint64_t a3, void *a4, uint64_t a5, _TtC18FileProviderDaemon8FSTester *a6, void (*a7)(uint64_t), uint64_t a8, void *a9, uint64_t a10)
{
  v109 = a7;
  v105 = a4;
  v106 = a3;
  v107 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5A90, &qword_1CFA01BD0);
  MEMORY[0x1EEE9AC00](v15);
  v104 = (&v98 - v16);
  v17 = sub_1CF9E6118();
  v108 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v102 = (&v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v98 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v98 - v23;
  v25 = fpfs_current_or_default_log();
  if (a2)
  {
    v103 = a8;
    sub_1CF9E6128();
    sub_1CEFCCBDC(a10, v110, &unk_1EC4BF250, &unk_1CFA01B50);
    sub_1CF2B1868(a1, 1);
    v26 = sub_1CF9E6108();
    v27 = sub_1CF9E7288();
    sub_1CEFCCC44(a10, &unk_1EC4BF250, &unk_1CFA01B50);
    sub_1CF2F6458(a1, 1, MEMORY[0x1E69E7D48]);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v110[0] = v30;
      *v28 = 136315394;
      v102 = v26;
      v31 = sub_1CF680318();
      v33 = v32;
      v34 = sub_1CEFD0DF0(v31, v32, v110);
      v33, v35, v36, v37, v38, v39, v40, v41;
      *(v28 + 4) = v34;
      *(v28 + 12) = 2112;
      v42 = a1;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v43;
      *v29 = v43;
      v26 = v102;
      _os_log_impl(&dword_1CEFC7000, v102, v27, "⚔️  Failed fetching URL in the wharf for %s: %@", v28, 0x16u);
      sub_1CEFCCC44(v29, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v29, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1D386CDC0](v30, -1, -1);
      MEMORY[0x1D386CDC0](v28, -1, -1);
    }

    (*(v108 + 8))(v21, v17);
    v44 = v107;
    v45 = v104;
    *v104 = a1;
    swift_storeEnumTagMultiPayload();
    v46 = a1;
    v109(v45);
    v47 = sub_1CEFCCC44(v45, &unk_1EC4C5A90, &qword_1CFA01BD0);
    v48 = v106;
LABEL_10:
    if (*v105)
    {
      v70 = *(v48 + 136);
      MEMORY[0x1EEE9AC00](v47);
      *(&v98 - 4) = v70;
      *(&v98 - 6) = 0;
      *(&v98 - 2) = v71;
      sub_1CEFE1894(sub_1CF2B9F78);
      if (v44)
      {
      }

      else
      {
        *(v70 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
        if (*(v70 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
        {
          ObjectType = swift_getObjectType();
          swift_unknownObjectRetain();
          MEMORY[0x1D3869790](1, ObjectType);
          swift_unknownObjectRelease();
        }
      }
    }

    return;
  }

  v101 = a9;
  sub_1CF9E6128();

  v49 = sub_1CF9E6108();
  v50 = sub_1CF9E7288();
  a6, v51, v52, v53, v54, v55, v56, v57;
  v58 = os_log_type_enabled(v49, v50);
  v99 = v17;
  v100 = v15;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v103 = a8;
    v60 = v59;
    v61 = swift_slowAlloc();
    v110[0] = v61;
    *v60 = 136315138;
    *(v60 + 4) = sub_1CEFD0DF0(a5, a6, v110);
    _os_log_impl(&dword_1CEFC7000, v49, v50, "⚔️  Fetching URL in the wharf for version %s...", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x1D386CDC0](v61, -1, -1);
    v62 = v60;
    a8 = v103;
    MEMORY[0x1D386CDC0](v62, -1, -1);
  }

  v63 = *(v108 + 8);
  v63(v24, v17);
  v48 = v106;
  v64 = *(v106 + 136);
  type metadata accessor for VFSStagedContext();
  v65 = swift_dynamicCastClassUnconditional();

  v66 = v101;
  v67 = v107;
  sub_1CF9C3744(v65, 0x200000, v64, v48, v109, a8, v66);
  v44 = v67;
  v68 = v102;
  if (!v67)
  {
    goto LABEL_10;
  }

  if (*v105)
  {
    MEMORY[0x1EEE9AC00](v47);
    *(&v98 - 4) = v64;
    *(&v98 - 6) = 0;
    *(&v98 - 2) = v69;
    sub_1CEFE1894(sub_1CF2B9F78);
    *(v64 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
    if (*(v64 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
    {
      v73 = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, v73);
      swift_unknownObjectRelease();
    }
  }

  v107 = v63;
  v74 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFCCBDC(a10, v110, &unk_1EC4BF250, &unk_1CFA01B50);
  v75 = v67;
  v76 = sub_1CF9E6108();
  v77 = sub_1CF9E7288();
  sub_1CEFCCC44(a10, &unk_1EC4BF250, &unk_1CFA01B50);

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v80 = v44;
    v81 = swift_slowAlloc();
    v110[0] = v81;
    *v78 = 136315394;
    v82 = sub_1CF680318();
    v84 = v83;
    v85 = sub_1CEFD0DF0(v82, v83, v110);
    v84, v86, v87, v88, v89, v90, v91, v92;
    *(v78 + 4) = v85;
    *(v78 + 12) = 2112;
    v93 = v80;
    v94 = _swift_stdlib_bridgeErrorToNSError();
    *(v78 + 14) = v94;
    *v79 = v94;
    _os_log_impl(&dword_1CEFC7000, v76, v77, "⚔️  Failed staging version %s: %@", v78, 0x16u);
    sub_1CEFCCC44(v79, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v79, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v81);
    v95 = v81;
    v44 = v80;
    MEMORY[0x1D386CDC0](v95, -1, -1);
    MEMORY[0x1D386CDC0](v78, -1, -1);
  }

  v107(v68, v99);
  v96 = v104;
  *v104 = v44;
  swift_storeEnumTagMultiPayload();
  v97 = v44;
  v109(v96);

  sub_1CEFCCC44(v96, &unk_1EC4C5A90, &qword_1CFA01BD0);
}

uint64_t sub_1CF2D8048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *), uint64_t a7, void *a8)
{
  v25 = a6;
  v24[1] = a3;
  v24[2] = a7;
  v12 = sub_1CF9E53C8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5A90, &qword_1CFA01BD0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v24 - v17);
  if (a4 && (v19 = *(a2 + 8), v20 = *(a5 + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle, swift_beginAccess(), v19 == *(v20 + 32)))
  {
    type metadata accessor for StagedRemoteVersion(0);
    sub_1CF9E58C8();
    *v18 = a8;
    swift_storeEnumTagMultiPayload();
    v21 = a8;
  }

  else
  {
    v26 = 2;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57D8();
    v22 = sub_1CF9E53A8();
    (*(v13 + 8))(v15, v12);
    *v18 = v22;
    swift_storeEnumTagMultiPayload();
  }

  v25(v18);
  return sub_1CEFCCC44(v18, &unk_1EC4C5A90, &qword_1CFA01BD0);
}

void sub_1CF2D82B0(void *a1, unsigned __int8 *a2, uint64_t a3, __int128 *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v94 = a7;
  v97 = a5;
  v92 = a3;
  v98 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v93 = v84 - v15;
  v16 = sub_1CF9E63D8();
  v103 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v91 = v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v84 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v89 = v84 - v22;
  v100 = sub_1CF9E6448();
  v96 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v24 = v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v84 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v95 = v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v104 = v84 - v31;
  v90 = *a2;
  v32 = a4[1];
  v111 = *a4;
  v112 = v32;
  v33 = a4[3];
  v113 = a4[2];
  v114 = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = nullsub_1;
  *(v34 + 24) = 0;
  v35 = swift_allocObject();
  v35[2] = v9;
  v35[3] = v34;
  v35[4] = a8;
  v35[5] = a9;
  v101 = v35;
  v102 = v34;
  v99 = a6;
  if (a6)
  {
    v36 = v9;

    v37 = [a6 requestedExtent];
    if (v37 == -1)
    {
      v88 = 0;
    }

    else
    {
      v88 = [objc_opt_self() valueWithRange_];
    }
  }

  else
  {

    v88 = 0;
    v36 = v9;
  }

  v39 = v93;
  v40 = v89;
  materialization_alignment = fpfs_get_materialization_alignment();
  v41 = *(v36 + 160);
  v89 = *(v36 + 168);
  v93 = v41;
  sub_1CF9E6418();
  qos_class_self();
  sub_1CF9E63B8();
  v42 = v103;
  v43 = *(v103 + 48);
  if (v43(v39, 1, v16) == 1)
  {
    (*(v42 + 104))(v40, *MEMORY[0x1E69E7FA0], v16);
    if (v43(v39, 1, v16) != 1)
    {
      sub_1CEFCCC44(v39, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v42 + 32))(v40, v39, v16);
  }

  sub_1CF9E6428();
  sub_1CF9E6438();
  v44 = sub_1CF9E63C8();
  v45 = *(v42 + 8);
  v86 = v20;
  v45(v20, v16);
  v46 = v91;
  sub_1CF9E6438();
  v47 = sub_1CF9E63C8();
  v103 = v42 + 8;
  v91 = v45;
  v45(v46, v16);
  v85 = v16;
  v48 = v96;
  v49 = *(v96 + 8);
  if (v44 >= v47)
  {
    v50 = v24;
  }

  else
  {
    v50 = v27;
  }

  if (v44 >= v47)
  {
    v24 = v27;
  }

  v51 = v100;
  v84[1] = v96 + 8;
  v84[0] = v49;
  v49(v50, v100);
  v52 = v104;
  (*(v48 + 32))(v104, v24, v51);
  (*(v48 + 56))(v52, 0, 1, v51);
  v53 = swift_allocObject();
  v54 = v92;
  *(v53 + 16) = v36;
  *(v53 + 24) = v54;
  v55 = v98;
  v56 = v94;
  *(v53 + 32) = v98;
  *(v53 + 40) = v56;
  v57 = v99;
  v58 = v97;
  *(v53 + 48) = v99;
  *(v53 + 56) = v58;
  v59 = v112;
  *(v53 + 64) = v111;
  *(v53 + 80) = v59;
  v60 = v114;
  *(v53 + 96) = v113;
  *(v53 + 112) = v60;
  v61 = v101;
  *(v53 + 128) = sub_1CF2F5AE8;
  *(v53 + 136) = v61;
  *(v53 + 144) = v90;
  v62 = v88;
  v63 = materialization_alignment;
  *(v53 + 152) = v88;
  *(v53 + 160) = v63;
  *(v53 + 168) = v102;
  v64 = swift_allocObject();
  v64[2] = sub_1CF2F5AE8;
  v64[3] = v61;
  v94 = v64;
  v65 = v89;
  v64[4] = v89;
  v66 = v58;
  swift_retain_n();

  v67 = v55;
  v68 = v57;
  sub_1CEFCCBDC(&v111, &aBlock, &unk_1EC4BF2D0, &unk_1CF9FEF20);
  v69 = v62;

  v70 = fpfs_current_log();
  v99 = *(v65 + 2);
  v71 = *(v48 + 48);
  v72 = v104;
  v73 = v100;
  v74 = v71(v104, 1, v100);
  v75 = v72;
  v76 = v95;
  sub_1CEFCCBDC(v75, v95, &unk_1EC4BE370, qword_1CFA01B30);
  if (v71(v76, 1, v73) == 1)
  {
    sub_1CEFCCC44(v76, &unk_1EC4BE370, qword_1CFA01B30);
    v77 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v78 = v86;
    sub_1CF9E6438();
    (v84[0])(v76, v73);
    v77 = sub_1CF9E63C8();
    (v91)(v78, v85);
  }

  if (v74 == 1)
  {
    v79 = DISPATCH_BLOCK_INHERIT_QOS_CLASS;
  }

  else
  {
    v79 = DISPATCH_BLOCK_ENFORCE_QOS_CLASS;
  }

  v80 = swift_allocObject();
  v80[2] = v70;
  v80[3] = sub_1CF2F5AF4;
  v80[4] = v53;
  v109 = sub_1CF2BA17C;
  v110 = v80;
  aBlock = MEMORY[0x1E69E9820];
  v106 = 1107296256;
  v107 = sub_1CEFCA444;
  v108 = &block_descriptor_588;
  v81 = _Block_copy(&aBlock);
  v82 = v70;

  v109 = sub_1CF2F6720;
  v110 = v94;
  aBlock = MEMORY[0x1E69E9820];
  v106 = 1107296256;
  v107 = sub_1CEFCA444;
  v108 = &block_descriptor_591;
  v83 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v99, v93, v79, v77, v81, v83);
  _Block_release(v83);
  _Block_release(v81);

  sub_1CEFCCC44(v104, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2D8C84(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *, __n128), uint64_t a5)
{
  v20 = a5;
  v21 = a4;
  v7 = sub_1CF9E63A8();
  v19 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CF9E6448();
  v10 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v24[2] = a1[2];
  v25[0] = v13;
  *(v25 + 9) = *(a1 + 57);
  v14 = a1[1];
  v24[0] = *a1;
  v24[1] = v14;
  aBlock[4] = sub_1CF2F5CA0;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_610;
  v15 = _Block_copy(aBlock);

  sub_1CF9E63F8();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1CF2F1F24(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v12, v9, v15);
  _Block_release(v15);
  (*(v19 + 8))(v9, v7);
  (*(v10 + 8))(v12, v18);

  return v21(v24);
}

void sub_1CF2D8F78(void *a1, uint64_t a2, void *a3, unint64_t a4, void *a5, void *a6, __int128 *a7, void (*a8)(_BYTE *), uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v71 = a4;
  if (!Strong)
  {
    goto LABEL_9;
  }

  v20 = Strong;
  if (![Strong userEnabled])
  {

LABEL_9:
    v72 = sub_1CF2F1F6C();
    goto LABEL_12;
  }

  v21 = [v20 session];
  v22 = [objc_opt_self() defaultStore];
  if ([v22 hasUpcallExecutionTimeLimits])
  {
    goto LABEL_7;
  }

  if (qword_1EC4BCCF0 != -1)
  {
    swift_once();
  }

  if (byte_1EC4BF020 == 1)
  {
LABEL_7:
    [v22 upcallExecutionTimeLimitBase];
    v24 = v23;
    [v22 upcallExecutionTimeLimitPerKiloByte];
    v26 = v25;

    v27 = v24 + a2 / 1000.0 * v26;
  }

  else
  {

    v27 = -1.0;
  }

  v72 = [v21 newFileProviderProxyWithTimeout:0 pid:v27];

  swift_unknownObjectRelease();
LABEL_12:
  v66 = fpfs_current_log();
  v64 = a3;
  v28 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:a1[35] itemIdentifier:a3];
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29 && (v30 = v29, v31 = [v29 session], v30, v31))
  {
    if (a5)
    {
      v32 = a5;
    }

    else
    {
      v32 = [objc_opt_self() requestForSelf];
    }

    v34 = a5;
    v35 = a5;
    v36 = [v32 nsfpRequestForSession:v31 isSpeculative:(v71 >> 8) & 1];

    v73 = v36;
    v33 = a6;
    [v36 setDomainVersion_];
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = a6;
    v34 = a5;
    v73 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
  }

  v69 = v28;
  v37 = swift_allocObject();
  v38 = 0;
  *(v37 + 16) = 0;
  v39 = *(a7 + 2);
  if (v39 != 1)
  {
    *v74 = *a7;
    *&v74[24] = *(a7 + 24);
    *&v74[40] = *(a7 + 40);
    *&v74[56] = *(a7 + 7);
    sub_1CEFD57E0(0, &unk_1EDEAB5A0, 0x1E69674E8);
    *&v74[16] = v39;
    v40 = a7[1];
    aBlock = *a7;
    v78 = v40;
    v41 = a7[3];
    v79 = a7[2];
    v80[0] = v41;
    sub_1CEFCCBDC(&aBlock, v76, &unk_1EC4BF250, &unk_1CFA01B50);
    v38 = sub_1CF327484(v74);
  }

  if ((v71 & 0x100) != 0 && a1[18])
  {

    if (!sub_1CF2CFDB8())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
      sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70, &unk_1CFA13B50);
      v60 = swift_allocError();
      *v61 = 10;
      *(v61 + 56) = 0u;
      *(v61 + 40) = 0u;
      *(v61 + 24) = 0u;
      *(v61 + 8) = 0u;
      *(v61 + 72) = 0u;
      *&v74[8] = v76[0];
      *&v74[24] = v76[1];
      v62 = v76[3];
      *&v74[40] = v76[2];
      *(v61 + 88) = 11;
      v75 = 1;
      *v74 = v60;
      *&v74[56] = v62;
      v74[72] = 1;
      a8(v74);

      swift_unknownObjectRelease();

      v79 = *&v74[32];
      v80[0] = *&v74[48];
      *(v80 + 9) = *&v74[57];
      aBlock = *v74;
      v78 = *&v74[16];
      sub_1CEFCCC44(&aBlock, &qword_1EC4BF2B8, &qword_1CFA01BB0);
      goto LABEL_32;
    }
  }

  v42 = swift_allocObject();
  v42[2] = a1;
  v42[3] = v66;
  v42[4] = v33;
  v42[5] = v37;
  v42[6] = v64;
  v42[7] = a8;
  v42[8] = a9;
  v42[9] = v72;
  v42[10] = v34;
  *&v79 = sub_1CF2F5AF8;
  *(&v79 + 1) = v42;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v78 = sub_1CF2DA660;
  *(&v78 + 1) = &block_descriptor_598;
  v43 = _Block_copy(&aBlock);
  v44 = v33;
  v45 = v34;
  v68 = a1;

  v65 = v64;

  swift_unknownObjectRetain();
  v46 = v66;

  v47 = [v72 fetchContentsForItemWithID:v28 version:v38 request:v73 estimatedItemSize:a2 isSymlink:a10 == 2 extent:a11 alignment:a12 options:(v71 >> 3) & 1 completionHandler:v43];
  _Block_release(v43);
  swift_beginAccess();
  v48 = *(v37 + 16);
  *(v37 + 16) = v47;

  if (!v47)
  {

    swift_unknownObjectRelease();
    return;
  }

  v63 = v46;
  swift_beginAccess();
  v49 = v47;
  v50 = v65;
  v51 = v49;
  sub_1CF1C8F90(v47, v50);
  swift_endAccess();
  v52 = a1[15];
  if (v52)
  {
    v53 = a1[16];
    v54 = *MEMORY[0x1E696A848];
    *v74 = v50;

    v55 = v52(v74, v51, v54, a2);
    v57 = v56;

    sub_1CEFF7124(v52, v53);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    v55 = 0;
    v57 = 0;
  }

  v58 = swift_allocObject();
  v58[2] = v68;
  v58[3] = v50;
  v58[4] = v55;
  v58[5] = v57;
  swift_beginAccess();
  *(a13 + 16) = sub_1CF2F5B84;
  *(a13 + 24) = v58;

  v59 = v50;

LABEL_32:
}

double sub_1CF2D977C(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v19 = swift_allocObject();
  v19[2] = a7;
  v19[3] = a3;
  v19[4] = a9;
  v19[5] = a1;
  v19[6] = a2;
  v19[7] = a6;
  v19[8] = a10;
  v19[9] = a11;
  v19[10] = a12;
  v19[11] = a13;
  v19[12] = a14;
  v19[13] = a15;
  v19[14] = a4;
  v19[15] = a5;

  v20 = a3;
  v21 = a9;
  v22 = a1;
  v23 = a2;
  v24 = a6;
  v25 = a4;

  v26 = a11;

  swift_unknownObjectRetain();
  v27 = a15;
  sub_1CF01001C(a8, "provideFile(for:kind:expectedFileSize:lastKnownVersion:domainVersion:requestor:options:completion:)", 99, 2, sub_1CF2F5BA4, v19);

  return result;
}

uint64_t sub_1CF2D98D8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, char *a7, void *a8, void (*a9)(_BYTE *), uint64_t a10, void *a11, void *a12, void *a13, char a14)
{
  v130 = a8;
  v131 = a5;
  v132 = a7;
  v134 = a6;
  v135 = a10;
  v136 = a9;
  v148 = *MEMORY[0x1E69E9840];
  v18 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v126 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CF9E5268();
  v127 = *(v20 - 1);
  v128 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v125 = (&v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_1CF9E5A58();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v129 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v124 = &v120 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v120 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v120 - v31;
  v133 = a1;
  sub_1CF041B2C(a2, a3);
  if (!a4)
  {
    goto LABEL_5;
  }

  v33 = [a4 url];
  sub_1CF9E59D8();

  v34 = *(v23 + 32);
  v34(v32, v29, v22);
  if (v131 && !v134)
  {
    v125 = v34;
    v134 = v23;
    v56 = v22;
    v57 = a12;
    v128 = v131;
    LODWORD(v130) = sub_1CF9E59E8();
    v127 = a12;
    if (!a12)
    {
      v121 = 0;
      v122 = 0;
      v123 = 0;
      v58 = v129;
LABEL_32:
      v79 = v134 + 2;
      v80 = v134[2];
      v81 = v124;
      v132 = v32;
      v82 = v32;
      v83 = v56;
      v80(v124, v82, v56);
      v80(v58, v81, v56);
      v84 = (*(v79 + 64) + 16) & ~*(v79 + 64);
      v85 = v84 + v24;
      v86 = (v84 + v24) & 0xFFFFFFFFFFFFFFF8;
      v87 = (v86 + 23) & 0xFFFFFFFFFFFFFFF8;
      v88 = swift_allocObject();
      v126 = v83;
      v125(v88 + v84, v81, v83);
      *(v88 + v85) = v130 & 1;
      v89 = v133;
      *(v88 + v86 + 8) = v133;
      v90 = v128;
      *(v88 + v87) = v128;
      v91 = (v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8));
      v92 = v135;
      *v91 = v136;
      v91[1] = v92;
      v93 = v90;

      if ((sub_1CF2D07F4() & 1) != 0 && [v93 isFlattenedPackage])
      {

        v94 = v132;
        sub_1CF2F220C(v132, sub_1CF2F5BE4, v88, v89);

        v95 = v134[1];
        v96 = v126;
        v95(v129, v126);
        v97 = v94;
        return (v95)(v97, v96);
      }

      v98 = *(v89 + 136);
      v99 = sub_1CF9E5A18();
      v101 = v100;
      (*(*v98 + 408))(&v139, v99);
      v101, v102, v103, v104, v105, v106, v107, v108;
      LOBYTE(v142[1]) = 0;
      v138[64] = 0;
      *&v138[32] = v141;
      *&v138[48] = v142[0];
      *v138 = v139;
      *&v138[16] = v140;
      v109 = v129;
      v110 = [objc_opt_self() defaultManager];
      v111 = sub_1CF9E5928();
      *&v139 = 0;
      v112 = [v110 removeItemAtURL:v111 error:&v139];

      if (v112)
      {
        v113 = v139;
        if ((v130 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v114 = v139;
        v115 = sub_1CF9E57F8();

        swift_willThrow();
        if ((v130 & 1) == 0)
        {
LABEL_40:
          sub_1CF2D1564(v131);
          v116 = *v138;
          if (v138[64])
          {
            v117 = 1;
            LOBYTE(v139) = 1;
          }

          else
          {
            v143 = *&v138[8];
            v144 = *&v138[24];
            v145 = *&v138[40];
            *&v146 = *&v138[56];
            LOBYTE(v139) = 0;
            v118 = v93;
            v117 = v139;
          }

          *&v147[8] = v143;
          *&v147[24] = v144;
          *&v147[40] = v145;
          *v147 = v116;
          *&v147[56] = v146;
          *&v147[64] = v93;
          v147[72] = v117;
          sub_1CEFCCBDC(v138, &v139, &unk_1EC4BF2C0, &qword_1CFA01BB8);
          v136(v147);
          sub_1CEFCCC44(v138, &unk_1EC4BF2C0, &qword_1CFA01BB8);

          v140 = *&v147[16];
          v141 = *&v147[32];
          v142[0] = *&v147[48];
          *(v142 + 9) = *&v147[57];
          v139 = *v147;
          sub_1CEFCCC44(&v139, &qword_1EC4BF2B8, &qword_1CFA01BB0);
          v95 = v134[1];
          v96 = v126;
          v95(v109, v126);
          v97 = v132;
          return (v95)(v97, v96);
        }
      }

      sub_1CF9E59C8();
      goto LABEL_40;
    }

    v58 = v129;
    if (a13)
    {
      v59 = v32;
      v60 = a12;
      v61 = a13;
      v62 = [v61 rangeValue];
      [v61 rangeValue];
      [v60 setProvidedExtent_];
      if ([v61 rangeValue])
      {
      }

      else
      {
        [v61 rangeValue];
        v73 = v72;
        v74 = [v128 documentSize];
        if (v74)
        {
          v75 = v74;
          v76 = [v74 integerValue];

          if (v73 == v76)
          {
            v57 = v127;
            if (a14)
            {
              v119 = fpfs_supports_brm_sparse_files();

              v123 = v119;
            }

            else
            {

              v123 = 0;
            }

            v32 = v59;
            v58 = v129;
            goto LABEL_31;
          }
        }
      }

      v123 = 0;
      v32 = v59;
      v58 = v129;
      v57 = v127;
    }

    else
    {
      v71 = a12;
      [v71 setProvidedExtent_];

      v123 = 0;
    }

LABEL_31:
    v77 = [v57 providedExtent];
    v121 = v78;
    v122 = v77;
    goto LABEL_32;
  }

  (*(v23 + 8))(v32, v22);
LABEL_5:
  v35 = v132;
  swift_beginAccess();
  v36 = *(v35 + 2);
  if (v36 && ([v36 isCancelled] & 1) != 0)
  {
    swift_beginAccess();
    v37 = *(v35 + 2);
    if (v37)
    {
      if ([v37 isCancelled] && (v38 = v133, swift_beginAccess(), v39 = *(v38 + 176), *v39->tree))
      {

        sub_1CEFE863C(v130);
        v41 = v40;
        v39, v40, v42, v43, v44, v45, v46, v47;
      }

      else
      {
        v41 = 0;
      }
    }

    else
    {
      v41 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
    sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70, &unk_1CFA13B50);
    v64 = swift_allocError();
    *v65 = v41 & 1;
    v66 = v139;
    *(v65 + 17) = v140;
    *(v65 + 1) = v66;
    v67 = v141;
    v68 = v142[0];
    v69 = v142[1];
    *(v65 + 80) = *(&v142[1] + 15);
    *(v65 + 65) = v69;
    *(v65 + 49) = v68;
    *(v65 + 33) = v67;
    *(v65 + 88) = 5;
    v137 = 1;
    *v138 = v64;
    *&v138[8] = v143;
    *&v138[24] = v144;
    *&v138[40] = v145;
    *&v138[56] = v146;
    v138[72] = 1;
    v136(v138);
    *&v147[32] = *&v138[32];
    *&v147[48] = *&v138[48];
    *&v147[57] = *&v138[57];
    *v147 = *v138;
    *&v147[16] = *&v138[16];
    v55 = v147;
  }

  else
  {
    v48 = v134;
    if (v134)
    {
      v49 = v134;
    }

    else
    {
      sub_1CF9E5198();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF2F1F24(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      v50 = v125;
      v51 = v128;
      sub_1CF9E57D8();
      v49 = sub_1CF9E50D8();
      (*(v127 + 1))(v50, v51);
    }

    v52 = v48;
    v53 = [a11 timeoutState];
    v54 = sub_1CF2E3014(v49, v130, 0, v53);

    v138[0] = 1;
    *v147 = v54;
    v147[72] = 1;
    v136(v147);
    v140 = *&v147[16];
    v141 = *&v147[32];
    v142[0] = *&v147[48];
    *(v142 + 9) = *&v147[57];
    v139 = *v147;
    v55 = &v139;
  }

  return sub_1CEFCCC44(v55, &qword_1EC4BF2B8, &qword_1CFA01BB0);
}

uint64_t sub_1CF2DA450(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, void (*a6)(_BYTE *))
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 48);
  *&v28[32] = *(a1 + 32);
  *&v28[48] = v9;
  v29 = *(a1 + 64);
  v10 = *(a1 + 16);
  *v28 = *a1;
  *&v28[16] = v10;
  v11 = [objc_opt_self() defaultManager];
  v12 = sub_1CF9E5928();
  *&v22[0] = 0;
  v13 = [v11 removeItemAtURL:v12 error:v22];

  if (!v13)
  {
    v15 = *&v22[0];
    v16 = sub_1CF9E57F8();

    swift_willThrow();
    if ((a3 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v14 = *&v22[0];
  if (a3)
  {
LABEL_5:
    sub_1CF9E59C8();
  }

LABEL_6:
  sub_1CF2D1564(a5);
  if (v29)
  {
    v17 = *v28;
    v18 = 1;
    LOBYTE(v22[0]) = 1;
  }

  else
  {
    v24 = *&v28[8];
    v25 = *&v28[24];
    v26 = *&v28[40];
    v17 = *v28;
    v27 = *&v28[56];
    LOBYTE(v22[0]) = 0;
    v19 = a5;
    v18 = v22[0];
  }

  *v21 = v17;
  *&v21[8] = v24;
  *&v21[24] = v25;
  *&v21[40] = v26;
  *&v21[56] = v27;
  *&v21[64] = a5;
  v21[72] = v18;
  sub_1CEFCCBDC(v28, v22, &unk_1EC4BF2C0, &qword_1CFA01BB8);
  a6(v21);
  v23[0] = *&v21[48];
  *(v23 + 9) = *&v21[57];
  v22[1] = *&v21[16];
  v22[2] = *&v21[32];
  v22[0] = *v21;
  return sub_1CEFCCC44(v22, &qword_1EC4BF2B8, &qword_1CFA01BB0);
}

void sub_1CF2DA660(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v13 = *(a1 + 32);

  v18 = a2;
  v17 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v13(a2, a3, v14, a5, a6, a7);
}

uint64_t sub_1CF2DA744(uint64_t a1, void (*a2)(_BYTE *), uint64_t a3, uint64_t a4)
{
  v27[1] = a3;
  v28 = a2;
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5270, &unk_1CFA01BC0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v27 - v11);
  sub_1CEFCCBDC(a1, v27 - v11, &unk_1EC4C5270, &unk_1CFA01BC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    v14 = 1;
    v35[0] = 1;
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    v15 = *(a4 + 136);
    v16 = sub_1CF9E5A18();
    v18 = v17;
    (*(*v15 + 408))(v35, v16);
    (*(v7 + 8))(v9, v6);
    v18, v19, v20, v21, v22, v23, v24, v25;
    v14 = 0;
    v36 = 0;
    v29 = *&v35[8];
    v30 = *&v35[24];
    v31 = *&v35[40];
    v13 = *v35;
    v32 = *&v35[56];
  }

  *v33 = v13;
  *&v33[8] = v29;
  *&v33[24] = v30;
  *&v33[40] = v31;
  *&v33[56] = v32;
  v34 = v14;
  v28(v33);
  *&v35[32] = *&v33[32];
  *&v35[48] = *&v33[48];
  v36 = v34;
  *v35 = *v33;
  *&v35[16] = *&v33[16];
  return sub_1CEFCCC44(v35, &unk_1EC4BF2C0, &qword_1CFA01BB8);
}

uint64_t sub_1CF2DAA54(void *a1, unsigned __int8 *a2, uint64_t a3, __int128 *a4, _OWORD *a5, int a6, void *a7, void *a8, uint64_t a9, void *a10, uint64_t a11)
{
  v100 = a7;
  v101 = a8;
  LODWORD(v102) = a6;
  v93 = a3;
  v91 = a2;
  v99 = a1;
  v97 = a11;
  v96 = a10;
  v94 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v82 - v14;
  v16 = sub_1CF9E63D8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v90 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v103 = &v82 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v82 - v22;
  v98 = sub_1CF9E6448();
  v95 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v82 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v92 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v105 = &v82 - v32;
  v89 = *v91;
  v33 = a4[1];
  v112 = *a4;
  v113 = v33;
  v34 = a4[3];
  v114 = a4[2];
  *v115 = v34;
  v35 = a5[1];
  *&v115[16] = *a5;
  *&v115[32] = v35;
  v36 = a5[3];
  *&v115[48] = a5[2];
  *&v115[64] = v36;
  v116 = v102;
  v37 = v104[20];
  v91 = v104[21];
  v102 = v37;
  sub_1CF9E6418();
  qos_class_self();
  sub_1CF9E63B8();
  v38 = *(v17 + 48);
  if (v38(v15, 1, v16) == 1)
  {
    (*(v17 + 104))(v23, *MEMORY[0x1E69E7FA0], v16);
    if (v38(v15, 1, v16) != 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v17 + 32))(v23, v15, v16);
  }

  sub_1CF9E6428();
  v39 = v103;
  sub_1CF9E6438();
  v40 = sub_1CF9E63C8();
  v41 = *(v17 + 8);
  v82 = v17 + 8;
  v41(v39, v16);
  v42 = v90;
  sub_1CF9E6438();
  v43 = sub_1CF9E63C8();
  v86 = v41;
  v41(v42, v16);
  v44 = v95;
  v45 = *(v95 + 8);
  if (v40 >= v43)
  {
    v46 = v25;
  }

  else
  {
    v46 = v28;
  }

  if (v40 >= v43)
  {
    v47 = v28;
  }

  else
  {
    v47 = v25;
  }

  v48 = v98;
  v84 = *(v95 + 8);
  v85 = v95 + 8;
  v45(v46, v98);
  v49 = *(v44 + 32);
  v83 = v16;
  v50 = v105;
  v49(v105, v47, v48);
  (*(v44 + 56))(v50, 0, 1, v48);
  v51 = v112;
  LODWORD(v50) = DWORD2(v112);
  v52 = BYTE12(v112);
  v90 = *&v115[72];
  v87 = v115[0];
  v88 = v116;
  v53 = swift_allocObject();
  v55 = v96;
  v54 = v97;
  *(v53 + 16) = v96;
  *(v53 + 24) = v54;
  v56 = v93;
  *(v53 + 32) = v104;
  *(v53 + 40) = v56;
  *(v53 + 48) = v51;
  *(v53 + 56) = v50;
  *(v53 + 60) = v52;
  v57 = v114;
  *(v53 + 64) = v113;
  *(v53 + 80) = v57;
  *(v53 + 96) = v87;
  v58 = *&v115[8];
  *(v53 + 120) = *&v115[24];
  *(v53 + 104) = v58;
  v59 = *&v115[40];
  *(v53 + 152) = *&v115[56];
  *(v53 + 136) = v59;
  *(v53 + 168) = v90;
  *(v53 + 176) = v88;
  v61 = v100;
  v60 = v101;
  *(v53 + 184) = v94;
  *(v53 + 192) = v60;
  v62 = v99;
  *(v53 + 200) = v61;
  *(v53 + 208) = v62;
  *(v53 + 216) = v89;
  v63 = swift_allocObject();
  v63[2] = v55;
  v63[3] = v54;
  v64 = v91;
  v96 = v63;
  v63[4] = v91;
  swift_retain_n();

  sub_1CEFCCBDC(&v112, &v106, &qword_1EC4BF2B0, &qword_1CFA01BA8);
  v65 = v61;
  v66 = v62;

  v67 = v60;
  v68 = fpfs_current_log();
  v104 = *(v64 + 2);
  v69 = *(v44 + 48);
  v70 = v105;
  v71 = v69(v105, 1, v48);
  v72 = v70;
  v73 = v92;
  sub_1CEFCCBDC(v72, v92, &unk_1EC4BE370, qword_1CFA01B30);
  if (v69(v73, 1, v48) == 1)
  {
    sub_1CEFCCC44(v73, &unk_1EC4BE370, qword_1CFA01B30);
    v74 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v75 = v103;
    sub_1CF9E6438();
    v84(v73, v48);
    v74 = sub_1CF9E63C8();
    v86(v75, v83);
  }

  if (v71 == 1)
  {
    v76 = DISPATCH_BLOCK_INHERIT_QOS_CLASS;
  }

  else
  {
    v76 = DISPATCH_BLOCK_ENFORCE_QOS_CLASS;
  }

  v77 = swift_allocObject();
  v77[2] = v68;
  v77[3] = sub_1CF2F5550;
  v77[4] = v53;
  v110 = sub_1CF2BA17C;
  v111 = v77;
  v106 = MEMORY[0x1E69E9820];
  v107 = 1107296256;
  v108 = sub_1CEFCA444;
  v109 = &block_descriptor_490;
  v78 = _Block_copy(&v106);
  v79 = v68;

  v110 = sub_1CF2F55E4;
  v111 = v96;
  v106 = MEMORY[0x1E69E9820];
  v107 = 1107296256;
  v108 = sub_1CEFCA444;
  v109 = &block_descriptor_493;
  v80 = _Block_copy(&v106);

  fp_task_tracker_async_and_qos(v104, v102, v76, v74, v78, v80);
  _Block_release(v80);
  _Block_release(v78);

  return sub_1CEFCCC44(v105, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF2DB280(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, char a10)
{
  v250 = a8;
  v251 = a7;
  v247 = a6;
  v262 = a3;
  v313 = *MEMORY[0x1E69E9840];
  v13 = *(a5 + 8);
  v14 = *(a5 + 12);
  v15 = *(a5 + 48);
  v16 = *(a5 + 120);
  v17 = *(a5 + 128);
  *&v308 = *a5;
  DWORD2(v308) = v13;
  BYTE12(v308) = v14;
  v18 = *(a5 + 32);
  v309 = *(a5 + 16);
  v310 = v18;
  LOBYTE(v311[0]) = v15;
  *&v311[1] = *(a5 + 56);
  *&v311[3] = *(a5 + 72);
  *&v311[5] = *(a5 + 88);
  *&v311[7] = *(a5 + 104);
  v311[9] = v16;
  v312 = v17;
  v267 = sub_1CF9E53C8();
  v249 = *(v267 - 8);
  MEMORY[0x1EEE9AC00](v267);
  v266 = &v244 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = sub_1CF9E5CF8();
  v20 = *(v276 - 8);
  MEMORY[0x1EEE9AC00](v276);
  *&v273 = &v244 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v259 = &v244 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v260 = (&v244 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v258 = &v244 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v272 = (&v244 - v29);
  MEMORY[0x1EEE9AC00](v30);
  v268 = &v244 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v274 = &v244 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v269 = &v244 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v270 = &v244 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v271 = &v244 - v39;
  v40 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v244 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v261 = &v244 - v44;
  v45 = swift_allocObject();
  v245 = a1;
  *(v45 + 16) = a1;
  v46 = v45 + 16;
  v265 = v45;
  *(v45 + 24) = a2;
  v47 = swift_allocObject();
  *(v47 + 16) = nullsub_1;
  v244 = v47 + 16;
  v263 = v47;
  *(v47 + 24) = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v246 = a2;

  v252 = v46;
  v248 = a4;
  if (Strong)
  {
    if ([Strong userEnabled])
    {
      v49 = v20;
      v50 = [Strong session];
      isEscapingClosureAtFileLocation = [objc_opt_self() defaultStore];
      if ([isEscapingClosureAtFileLocation hasUpcallExecutionTimeLimits])
      {
        goto LABEL_6;
      }

      if (qword_1EC4BCCF0 != -1)
      {
LABEL_76:
        swift_once();
      }

      if (byte_1EC4BF020 == 1)
      {
LABEL_6:
        [isEscapingClosureAtFileLocation upcallExecutionTimeLimitBase];
        v53 = v52;
        [isEscapingClosureAtFileLocation upcallExecutionTimeLimitPerKiloByte];
        v55 = v54;

        v56 = v53 + a4 / 1000.0 * v55;
      }

      else
      {

        v56 = -1.0;
      }

      v264 = [v50 newFileProviderProxyWithTimeout:0 pid:v56];

      swift_unknownObjectRelease();
      v20 = v49;
      goto LABEL_11;
    }
  }

  v264 = sub_1CF2F1F6C();
LABEL_11:
  v275 = v20;
  v57 = v20[7];
  v58 = v271;
  v59 = v276;
  v57(v271, 1, 1, v276);
  v60 = v270;
  v57(v270, 1, 1, v59);
  v61 = v269;
  v57(v269, 1, 1, v59);
  v62 = sub_1CF9E6218();
  LODWORD(v59) = sub_1CF9E61F8() | v62;
  v63 = sub_1CF9E6208();
  v64 = v59 | v63 | sub_1CF9E6248();
  sub_1CEFCCBDC(v58, v274, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  sub_1CEFCCBDC(v60, v268, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  sub_1CEFCCBDC(v61, v272, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v65 = &v42[v40[14]];
  *v65 = 0;
  *(v65 + 1) = 0;
  v42[v40[17]] = 2;
  v257 = v40[23];
  v42[v257] = 6;
  v253 = v40[30];
  v66 = v276;
  v57(&v42[v253], 1, 1, v276);
  v255 = &v42[v40[34]];
  v254 = xmmword_1CF9F4E20;
  *v255 = xmmword_1CF9F4E20;
  v67 = &v42[v40[38]];
  *v67 = 0;
  *(v67 + 1) = 0;
  v68 = fpfs_supports_vfs_ignore_permissions_iopolicy();
  v69 = (4 * v64) & 0x100;
  if (v68)
  {
    v69 = 0;
  }

  v70 = v40[37];
  *v42 = 0;
  v42[v40[20]] = 0;
  v42[v40[28]] = 0;
  v42[v40[29]] = 0;
  *&v42[v40[26]] = 0;
  *&v42[v40[27]] = 0;
  v71 = &v42[v70];
  *(v42 + 1) = 0;
  v42[8] = 1;
  *v71 = 0;
  v71[4] = 1;
  *(v42 + 5) = v69 | v64 & 0x1FF;
  v72 = v275;
  v73 = v258;
  sub_1CEFCCBDC(v274, v258, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v74 = v72[6];
  v75 = v74(v73, 1, v66);
  v256 = v65;
  if (v75 == 1)
  {
    v76 = v259;
    sub_1CF9E5C88();
    if (v74(v73, 1, v276) != 1)
    {
      sub_1CEFCCC44(v73, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    v76 = v259;
    (v72[4])(v259, v73, v276);
  }

  v77 = &v42[v40[7]];
  v78 = v276;
  v259 = v72[4];
  (v259)(v77, v76, v276);
  v79 = v268;
  v80 = v260;
  sub_1CEFCCBDC(v268, v260, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v81 = v74(v80, 1, v78);
  v275 = v72 + 4;
  if (v81 == 1)
  {
    sub_1CF9E5C88();
    sub_1CEFCCC44(v79, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v274, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v269, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v270, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v271, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v82 = v74(v80, 1, v276) == 1;
    v83 = v80;
    v84 = v259;
    if (!v82)
    {
      sub_1CEFCCC44(v83, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    sub_1CEFCCC44(v79, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v274, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v269, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v270, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v271, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v85 = v80;
    v84 = v259;
    (v259)(v273, v85, v276);
  }

  v86 = v40[31];
  v87 = &v42[v40[32]];
  v88 = v40[33];
  v89 = &v42[v40[35]];
  (v84)(&v42[v40[8]], v273, v276);
  v42[v40[9]] = 0;
  v42[v40[10]] = 0;
  v42[v40[13]] = 0;
  *&v42[v40[19]] = 0;
  v42[v40[21]] = 0;
  v42[v40[15]] = 0;
  v42[v40[16]] = 0;
  v42[v40[11]] = 0;
  v42[v40[12]] = 0;
  v42[v40[18]] = 0;
  sub_1CEFDA9E0(v272, &v42[v253], &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  *&v42[v86] = 0;
  *v87 = 0;
  v87[8] = 1;
  *&v42[v88] = 0;
  v90 = v256;
  *(v256 + 1), v91, v92, v93, v94, v95, v96, v97;
  *v90 = 0;
  *(v90 + 1) = 0;
  v98 = v255;
  sub_1CEFE48D8(*v255, *(v255 + 1));
  *v98 = v254;
  *v89 = 0;
  v89[8] = 1;
  v42[v40[36]] = 0;
  v42[v40[24]] = 0;
  v42[v40[25]] = 0;
  v42[v40[22]] = 0;
  v42[v257] = 6;
  v99 = v261;
  sub_1CF2F63E4(v42, v261, type metadata accessor for ItemMetadata);
  v100 = v262;
  v101 = *(v262 + 136);
  v302 = v308;
  v303 = v309;
  v304 = v310;
  v305 = *v311;
  sub_1CEFE528C(v306);
  v300[9] = v306[12];
  v300[10] = v306[13];
  v300[11] = v306[14];
  v301 = v307;
  v300[5] = v306[8];
  v300[6] = v306[9];
  v300[7] = v306[10];
  v300[8] = v306[11];
  v300[1] = v306[4];
  v300[2] = v306[5];
  v300[3] = v306[6];
  v300[4] = v306[7];
  v297 = v306[0];
  v298 = v306[1];
  v299 = v306[2];
  v300[0] = v306[3];
  *&v296[0] = 6516580;
  *(&v296[0] + 1) = 0xE300000000000000;
  *&v289 = 58;
  *(&v289 + 1) = 0xE100000000000000;
  *&v285 = 47;
  *(&v285 + 1) = 0xE100000000000000;
  sub_1CF1AE1DC(&v308, &v293);
  v242 = sub_1CEFE4E68();
  v243 = v242;
  v240 = MEMORY[0x1E69E6158];
  v241 = v242;
  v283 = sub_1CF9E7668();
  v284 = v102;
  v40 = (*(*v101 + 448))(&v302, v99, &v297, &v283, 0, v312);
  v284, v103, v104, v105, v106, v107, v108, v109;
  v296[0] = v302;
  v296[1] = v303;
  v296[2] = v304;
  v296[3] = v305;
  sub_1CEFCCC44(v296, &unk_1EC4BF260, &unk_1CFA01B60);
  v110 = swift_allocObject();
  v111 = v101;
  v112 = v263;
  v110[2] = v100;
  v110[3] = v112;
  v114 = v245;
  v113 = v246;
  v110[4] = v40;
  v110[5] = v114;
  v110[6] = v113;
  v115 = v265;
  *(v265 + 16) = sub_1CF2F5640;
  *(v115 + 24) = v110;

  v272 = &v244;
  v116 = MEMORY[0x1EEE9AC00](v312);
  v260 = &v244 - 30;
  v117 = v247;
  *(&v244 - 28) = v100;
  *(&v244 - 27) = v117;
  v118 = v250;
  v119 = v251;
  *(&v244 - 26) = v251;
  *(&v244 - 25) = v118;
  v120 = v264;
  *(&v244 - 24) = v115;
  *(&v244 - 23) = v120;
  *(&v244 - 22) = a9;
  *(&v244 - 21) = v121;
  *(&v244 - 40) = v122;
  *(&v244 - 156) = v123;
  *(&v244 - 19) = v124;
  *(&v244 - 17) = v125;
  *(&v244 - 120) = v126;
  *(&v244 - 7) = v116;
  *(&v244 - 6) = v127;
  *(&v244 - 5) = v128;
  *(&v244 - 4) = v129;
  *(&v244 - 6) = v130;
  *(&v244 - 40) = v131;
  v240 = v248;
  LOBYTE(v241) = a10;
  v268 = v111;
  v132 = v111 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
  v242 = v244;
  v271 = v118;

  swift_unknownObjectRetain();
  v270 = a9;

  v269 = v119;
  sub_1CEFCCBDC(&v308, &v293, &qword_1EC4BF2B0, &qword_1CFA01BA8);
  v276 = v132;
  v133 = swift_beginAccess();
  v134 = 1000;
  v274 = *MEMORY[0x1E696AA08];
  v275 = (v249 + 8);
  v273 = xmmword_1CF9FA450;
  while (1)
  {
    v282 = -1;
    v136 = *(v40 + 5);
    v135 = *(v40 + 6);
    v137 = *(v276 + 8);
    MEMORY[0x1EEE9AC00](v133);
    v242 = v137 | 0x20000000000000;
    v291 = 0;
    v292 = 0;
    *&v289 = v138;
    *(&v289 + 1) = v139;
    v290 = __PAIR64__(v141, v140);
    if (!v135)
    {
      break;
    }

    MEMORY[0x1EEE9AC00](&v289);
    v240 = v142;
    v241 = sub_1CF2F6700;
    v242 = v143;
    if ((v135 & 0x1000000000000000) != 0)
    {
      goto LABEL_58;
    }

    if ((v135 & 0x2000000000000000) != 0)
    {
      v279[0] = v136;
      v279[1] = v135 & 0xFFFFFFFFFFFFFFLL;
      v291 = v279;
      v285 = v289;
      v286 = v290;
      v287 = v279;
      v288 = v292;
      v278 = -1;

      v144 = fpfs_openfdbyhandle();
      if ((v144 & 0x80000000) == 0)
      {
LABEL_61:
        v280 = v144;
        goto LABEL_62;
      }

      v164 = v278;
      v165 = MEMORY[0x1D38683F0]();
      if (v164 < 0)
      {
        LODWORD(v293) = 0;
        BYTE4(v293) = 1;
      }

      else
      {
        LODWORD(v293) = v278;
        BYTE4(v293) = 0;
      }

      BYTE8(v294[1]) = 0;
      if (!v165)
      {
        goto LABEL_50;
      }

      v183 = sub_1CF9E6138();
      if ((v183 & 0x100000000) != 0)
      {
        goto LABEL_50;
      }

      v277 = v183;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
      v184 = swift_allocObject();
      *(v184 + 16) = v273;
      *(v184 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(v184 + 40) = v185;
      *(v184 + 72) = &type metadata for VFSFileError;
      v186 = swift_allocObject();
      *(v184 + 48) = v186;
      sub_1CF19A730(&v293, v186 + 16);
      sub_1CF4E04E8(v184);
      swift_setDeallocating();
      sub_1CEFCCC44(v184 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
      swift_deallocClassInstance();
      sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    }

    else
    {
      if ((v136 & 0x1000000000000000) == 0)
      {
LABEL_58:

        sub_1CF9E7938();
LABEL_62:
        v135, v145, v146, v147, v148, v149, v150, v151;
        v208 = v268;
        v209 = v280;
        goto LABEL_64;
      }

      v291 = ((v135 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v285 = v289;
      v286 = v290;
      v287 = v291;
      v288 = v292;
      LODWORD(v279[0]) = -1;

      v144 = fpfs_openfdbyhandle();
      if ((v144 & 0x80000000) == 0)
      {
        goto LABEL_61;
      }

      v152 = v279[0];
      v153 = MEMORY[0x1D38683F0]();
      if (v152 < 0)
      {
        LODWORD(v293) = 0;
        BYTE4(v293) = 1;
        BYTE8(v294[1]) = 0;
        if (!v153)
        {
          goto LABEL_50;
        }
      }

      else
      {
        LODWORD(v293) = v279[0];
        BYTE4(v293) = 0;
        BYTE8(v294[1]) = 0;
        if (!v153)
        {
          goto LABEL_50;
        }
      }

      v187 = sub_1CF9E6138();
      if ((v187 & 0x100000000) != 0)
      {
LABEL_50:
        sub_1CEFDB034();
        v172 = swift_allocError();
        sub_1CF19A730(&v293, v193);
        goto LABEL_51;
      }

      v278 = v187;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
      v188 = swift_allocObject();
      *(v188 + 16) = v273;
      *(v188 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(v188 + 40) = v189;
      *(v188 + 72) = &type metadata for VFSFileError;
      v190 = swift_allocObject();
      *(v188 + 48) = v190;
      sub_1CF19A730(&v293, v190 + 16);
      sub_1CF4E04E8(v188);
      swift_setDeallocating();
      sub_1CEFCCC44(v188 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
      swift_deallocClassInstance();
      sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    }

    v192 = v266;
    v191 = v267;
    sub_1CF9E57D8();
    v172 = sub_1CF9E53A8();
    (*v275)(v192, v191);
LABEL_51:
    sub_1CF1969CC(&v293);
    swift_willThrow();
    v135, v194, v195, v196, v197, v198, v199, v200;
LABEL_52:
    v201 = v172;
    LODWORD(v293) = sub_1CF9E5298();
    sub_1CF196978();
    v202 = sub_1CF9E5658();

    if ((v202 & 1) == 0)
    {
      v203 = v172;
      LODWORD(v293) = sub_1CF9E5328();
      v204 = sub_1CF9E5658();

      if (v204)
      {

        LODWORD(v293) = 2;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v206 = v266;
        v205 = v267;
        sub_1CF9E57D8();
        v172 = sub_1CF9E53A8();
        (*v275)(v206, v205);
        swift_willThrow();
      }

      goto LABEL_69;
    }

    usleep(v134);
    v133 = v282;
    if (2 * v134 >= 0xF4240)
    {
      v134 = 1000000;
    }

    else
    {
      v134 *= 2;
    }

    if ((v282 & 0x80000000) == 0)
    {
      v133 = close(v282);
    }
  }

  *&v285 = v138;
  *(&v285 + 1) = v139;
  v286 = __PAIR64__(v141, v140);
  v287 = 0;
  v288 = 0;
  LODWORD(v279[0]) = -1;
  v154 = fpfs_openfdbyhandle();
  if ((v154 & 0x80000000) != 0)
  {
    v162 = v279[0];
    v163 = MEMORY[0x1D38683F0]();
    if (v162 < 0)
    {
      LODWORD(v293) = 0;
      BYTE4(v293) = 1;
      BYTE8(v294[1]) = 0;
      if (!v163)
      {
        goto LABEL_40;
      }
    }

    else
    {
      LODWORD(v293) = v279[0];
      BYTE4(v293) = 0;
      BYTE8(v294[1]) = 0;
      if (!v163)
      {
LABEL_40:
        sub_1CEFDB034();
        v172 = swift_allocError();
        v173 = *(v294 + 9);
        v174 = v294[0];
        *v175 = v293;
        v175[1] = v174;
        *(v175 + 25) = v173;
        goto LABEL_41;
      }
    }

    v166 = sub_1CF9E6138();
    if ((v166 & 0x100000000) != 0)
    {
      goto LABEL_40;
    }

    v280 = v166;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v167 = swift_allocObject();
    *(v167 + 16) = v273;
    *(v167 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v167 + 40) = v168;
    *(v167 + 72) = &type metadata for VFSFileError;
    v169 = swift_allocObject();
    *(v167 + 48) = v169;
    sub_1CF19A730(&v293, v169 + 16);
    sub_1CF4E04E8(v167);
    swift_setDeallocating();
    sub_1CEFCCC44(v167 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    v171 = v266;
    v170 = v267;
    sub_1CF9E57D8();
    v172 = sub_1CF9E53A8();
    (*v275)(v171, v170);
    sub_1CF1969CC(&v293);
LABEL_41:
    swift_willThrow();
    0, v176, v177, v178, v179, v180, v181, v182;
    goto LABEL_52;
  }

  v209 = v154;
  0, v155, v156, v157, v158, v159, v160, v161;
  v208 = v268;
LABEL_64:
  LODWORD(v276) = v209;
  v275 = &v244;
  v210 = v208 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
  v211 = *(v210 + 26);
  v212 = *(v210 + 25);
  v213 = *(v210 + 24);
  v214 = *(v210 + 8);
  v215 = *(v210 + 16);
  v282 = v209;
  MEMORY[0x1EEE9AC00](v207);
  v240 = &v282;
  v241 = sub_1CF2F5650;
  v242 = v216;
  *&v294[1] = v217;
  *(&v294[1] + 1) = v214;
  *&v293 = v218;
  *(&v293 + 1) = 1107296256;
  *&v294[0] = v219;
  *(&v294[0] + 1) = &block_descriptor_505;
  v220 = _Block_copy(&v293);
  v49 = *(&v294[1] + 1);
  v274 = v214;
  swift_retain_n();

  *&v273 = v220;
  *&v289 = v220;
  *(&v289 + 1) = v215;
  LOBYTE(v290) = v213;
  BYTE1(v290) = v212;
  BYTE2(v290) = v211;
  a4 = sub_1CEFDB034();
  v221 = swift_allocError();
  *v222 = 6;
  *(v222 + 8) = 0u;
  *(v222 + 24) = 0u;
  *(v222 + 40) = 19;
  *&v285 = v221;
  BYTE8(v285) = 1;
  v50 = swift_allocObject();
  v50[2] = &v285;
  v50[3] = sub_1CF2F6598;
  v50[4] = &v244 - 6;
  v42 = swift_allocObject();
  *(v42 + 2) = sub_1CF2F65B8;
  *(v42 + 3) = v50;
  *&v294[1] = sub_1CF1DBD5C;
  *(&v294[1] + 1) = v42;
  *&v293 = MEMORY[0x1E69E9820];
  *(&v293 + 1) = 1107296256;
  *&v294[0] = sub_1CEFDB270;
  *(&v294[0] + 1) = &block_descriptor_516;
  v223 = _Block_copy(&v293);
  Strong = *(&v294[1] + 1);

  v224 = fpfs_fgetfileattrs_detailed();
  _Block_release(v223);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_76;
  }

  if (v224)
  {
    swift_getErrorValue();
    v225 = v281;
    v226 = swift_allocError();
    *v227 = 6;
    *(v227 + 8) = 0u;
    *(v227 + 24) = 0u;
    *(v227 + 40) = 19;
    v228 = v224;
    v229 = sub_1CF199074(v226, v225);

    v230 = v285;
    v231 = BYTE8(v285);
    *&v285 = v229;
    BYTE8(v285) = 1;
    sub_1CF0BA6EC(v230, v231);
  }

  if (BYTE8(v285))
  {
    v172 = v285;
    *&v293 = v285;
    v232 = v285;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();

    sub_1CF0BA6EC(v285, SBYTE8(v285));

    _Block_release(v273);

LABEL_69:
    v233 = v261;
    v234 = v271;
    v235 = v270;
    if ((v282 & 0x80000000) == 0)
    {
      close(v282);
    }

    swift_unknownObjectRelease();

    sub_1CEFCCC44(&v308, &qword_1EC4BF2B0, &qword_1CFA01BA8);
    sub_1CF007B98(v233, type metadata accessor for ItemMetadata);

    swift_beginAccess();
    v236 = *(v265 + 16);
    LOBYTE(v296[0]) = 1;
    *&v293 = v172;
    BYTE8(v295[1]) = 1;

    v237 = v172;
    v236(&v293);

    swift_unknownObjectRelease();

    v299 = v294[1];
    v300[0] = v295[0];
    *(v300 + 9) = *(v295 + 9);
    v297 = v293;
    v298 = v294[0];
    sub_1CEFCCC44(&v297, &qword_1EC4BF2B8, &qword_1CFA01BB0);

    return;
  }

  sub_1CF0BA6EC(v285, SBYTE8(v285));

  _Block_release(v273);

  v238 = v261;
  v239 = v270;
  if ((v282 & 0x80000000) == 0)
  {
    close(v282);
  }

  swift_unknownObjectRelease();

  sub_1CEFCCC44(&v308, &qword_1EC4BF2B0, &qword_1CFA01BA8);
  sub_1CF007B98(v238, type metadata accessor for ItemMetadata);

  swift_unknownObjectRelease();
}

uint64_t sub_1CF2DCEA8(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *, __n128), uint64_t a6)
{
  v28 = a6;
  v29 = a5;
  v27 = a4;
  v25 = a2;
  v9 = sub_1CF9E63A8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1CF9E6448();
  v13 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v35[2] = a1[2];
  v36[0] = v16;
  *(v36 + 9) = *(a1 + 57);
  v17 = a1[1];
  v35[0] = *a1;
  v35[1] = v17;
  v24 = *(a2 + 160);
  aBlock[4] = sub_1CF2F6588;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_526;
  v18 = _Block_copy(aBlock);

  sub_1CF9E63F8();
  v33 = MEMORY[0x1E69E7CC0];
  sub_1CF2F1F24(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v19 = v27;
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v15, v12, v18);
  _Block_release(v18);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v26);

  v21 = *(v19 + 16);
  v30 = *(v25 + 136);
  v20 = v30;
  v31 = 1;
  v32 = v21;

  sub_1CEFE1894(sub_1CF2B9F78);
  *(v20 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
  if (*(v20 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
  {
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    MEMORY[0x1D3869790](1, ObjectType);
    swift_unknownObjectRelease();
  }

  return v29(v35);
}

double sub_1CF2DD288(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);

  v2(v3);

  return result;
}

double sub_1CF2DD2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, void *a10, void *a11, uint64_t *a12, uint64_t a13, char a14, void *a15)
{
  v111 = a8;
  v109 = a7;
  v110 = a6;
  v18 = *(a12 + 2);
  v19 = *(a12 + 12);
  v20 = *(a12 + 48);
  v21 = a12[15];
  v22 = *(a12 + 128);
  v123 = *a12;
  v124 = v18;
  v125 = v19;
  v23 = *(a12 + 2);
  v126 = *(a12 + 1);
  v127 = v23;
  v128 = v20;
  v24 = *(a12 + 9);
  *v129 = *(a12 + 7);
  *&v129[16] = v24;
  *&v129[32] = *(a12 + 11);
  *&v129[48] = *(a12 + 13);
  *&v129[64] = v21;
  v130 = v22;
  v25 = sub_1CF9E53C8();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v94[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = sub_1CF9E5A58();
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v94[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a4 || (v32 = *(a5 + 136), v131 = a2, v33 = *(a2 + 8), v108 = a5, v34 = v32 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle, swift_beginAccess(), v33 != *(v34 + 32)))
  {
    LODWORD(v119) = 2;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v26 + 8))(v28, v25);
    swift_willThrow();
    return result;
  }

  v35 = *v131;
  v36 = *(v131 + 20);
  v107 = fpfs_current_log();
  sub_1CEFD57E0(0, &unk_1EDEA35A0, 0x1E6967408);
  sub_1CF9E58B8();
  v37 = v112;
  v38 = sub_1CF02BFF8(v31, 0);
  if (v37)
  {

    return result;
  }

  v102 = v36;
  v105 = v38;
  v104 = a9;
  v40 = v108;
  Strong = swift_unknownObjectWeakLoadStrong();
  v103 = v35;
  if (Strong && (v42 = Strong, v43 = [Strong session], v42, v43))
  {
    v45 = v109;
    v44 = v110;
    if (v109)
    {
      v46 = v109;
    }

    else
    {
      v46 = [objc_opt_self() requestForSelf];
    }

    v47 = v45;
    v48 = [v46 nsfpRequestForSession:v43 isSpeculative:(v44 >> 8) & 1];

    v106 = v48;
    [v48 setDomainVersion_];
    swift_unknownObjectRelease();
    v40 = v108;
  }

  else
  {
    v106 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
    LOWORD(v44) = v110;
  }

  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  if ((v44 & 0x100) != 0 && *(v40 + 144))
  {

    if (!sub_1CF2CFDB8())
    {
      v88 = v104;
      swift_beginAccess();
      v89 = *(v88 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
      sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70, &unk_1CFA13B50);
      v90 = swift_allocError();
      *v91 = 10;
      *(v91 + 56) = 0u;
      *(v91 + 40) = 0u;
      *(v91 + 24) = 0u;
      *(v91 + 8) = 0u;
      *(v91 + 72) = 0u;
      *&v113[8] = v115;
      *&v113[24] = v116;
      v92 = v118;
      *&v113[40] = v117;
      *(v91 + 88) = 11;
      v114 = 1;
      *v113 = v90;
      *&v113[56] = v92;
      v113[72] = 1;

      v89(v113);

      v121 = *&v113[32];
      v122[0] = *&v113[48];
      *(v122 + 9) = *&v113[57];
      v119 = *v113;
      v120 = *&v113[16];
      sub_1CEFCCC44(&v119, &qword_1EC4BF2B8, &qword_1CFA01BB0);

      return result;
    }
  }

  v101 = a13;
  v109 = a11;
  v110 = a10;
  v50 = v40;
  v100 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(v40 + 280) itemIdentifier:a11];
  sub_1CEFD57E0(0, &unk_1EDEAB5A0, 0x1E69674E8);
  v119 = *&v129[8];
  v120 = *&v129[24];
  v121 = *&v129[40];
  v122[0] = *&v129[56];
  sub_1CEFCCBDC(&v129[8], v113, &unk_1EC4BF250, &unk_1CFA01B50);
  v98 = sub_1CF327484(&v119);
  v99 = v49 + 16;
  v97 = a14 == 2;
  v51 = v123;
  v52 = v124;
  v53 = v125;
  v112 = v49;
  v54 = v128;
  v96 = *&v129[64];
  v95 = v130;
  v55 = swift_allocObject();
  v56 = v107;
  *(v55 + 16) = v50;
  *(v55 + 24) = v56;
  v58 = v111;
  v57 = v112;
  *(v55 + 32) = v111;
  *(v55 + 40) = v57;
  v59 = v110;
  v60 = v104;
  *(v55 + 48) = v109;
  *(v55 + 56) = v60;
  *(v55 + 64) = v59;
  *(v55 + 72) = v51;
  *(v55 + 80) = v52;
  *(v55 + 84) = v53;
  v61 = v126;
  *(v55 + 104) = v127;
  *(v55 + 88) = v61;
  *(v55 + 120) = v54;
  v62 = v112;
  v63 = *&v129[16];
  *(v55 + 128) = *v129;
  *(v55 + 144) = v63;
  v64 = *&v129[48];
  *(v55 + 160) = *&v129[32];
  *(v55 + 176) = v64;
  *(v55 + 192) = v96;
  *(v55 + 200) = v95;
  *(v55 + 208) = v103;
  *(v55 + 216) = v102;
  *&v113[32] = sub_1CF2F56F0;
  *&v113[40] = v55;
  *v113 = MEMORY[0x1E69E9820];
  *&v113[8] = 1107296256;
  *&v113[16] = sub_1CF2DF2C8;
  *&v113[24] = &block_descriptor_536;
  v65 = _Block_copy(v113);
  v66 = v58;

  v109 = v109;

  v67 = v110;
  swift_unknownObjectRetain();
  v111 = v107;
  sub_1CEFCCBDC(&v123, &v119, &qword_1EC4BF2B0, &qword_1CFA01BA8);

  LOBYTE(v93) = v97;
  v68 = v67;
  v69 = v100;
  v71 = v105;
  v70 = v106;
  v72 = v98;
  v73 = [v68 fetchContentsForItemWithID:v100 version:0 usingExistingContentsAtURL:v105 existingVersion:v98 request:v106 estimatedItemSize:v101 isSymlink:v93 completionHandler:v65];
  _Block_release(v65);

  swift_beginAccess();
  v74 = *(v62 + 16);
  *(v62 + 16) = v73;

  if (v73)
  {
    v75 = v108;
    swift_beginAccess();
    v76 = v73;
    v77 = v109;
    v78 = v76;
    sub_1CF1C8F90(v73, v77);
    swift_endAccess();
    v79 = *(v75 + 120);
    if (v79)
    {
      v80 = *(v75 + 128);
      v81 = *MEMORY[0x1E696A848];
      v82 = *(v131 + 56);
      *v113 = v77;

      v131 = v79(v113, v78, v81, v82);
      v84 = v83;

      v85 = v79;
      v79 = v131;
      sub_1CEFF7124(v85, v80);
    }

    else
    {

      v84 = 0;
    }

    v86 = swift_allocObject();
    v86[2] = v75;
    v86[3] = v77;
    v86[4] = v79;
    v86[5] = v84;
    swift_beginAccess();
    *a15 = sub_1CF2F6718;
    a15[1] = v86;

    v87 = v77;
  }

  else
  {
  }

  return result;
}

double sub_1CF2DDC70(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, int a15)
{
  v18 = *(a13 + 12);
  v45 = v18;
  v46 = *(a13 + 2);
  v19 = a13[2];
  v20 = a13[3];
  v21 = a13[4];
  v22 = a13[5];
  v23 = *(a13 + 48);
  v44 = v23;
  v24 = a13[7];
  v42 = a13[9];
  v43 = a13[8];
  v40 = a13[11];
  v41 = a13[10];
  v38 = a13[13];
  v39 = a13[12];
  v36 = a13[15];
  v37 = a13[14];
  v25 = *(a13 + 128);
  v35 = v25;
  v54 = *a13;
  v47 = v54;
  v55 = v46;
  v56 = v18;
  v57 = v19;
  v58 = v20;
  v59 = v21;
  v60 = v22;
  v61 = v23;
  v62 = v24;
  v63 = v43;
  v64 = v42;
  v65 = v41;
  v66 = v40;
  v67 = v39;
  v68 = v38;
  v69 = v37;
  v70 = v36;
  v71 = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = a6;
  *(v26 + 24) = a3;
  *(v26 + 32) = a8;
  *(v26 + 40) = a1;
  *(v26 + 48) = a2;
  *(v26 + 56) = a5;
  *(v26 + 64) = a9;
  *(v26 + 72) = a10;
  *(v26 + 80) = a11;
  *(v26 + 88) = a12;
  *(v26 + 96) = v47;
  *(v26 + 104) = v46;
  *(v26 + 108) = v45;
  *(v26 + 112) = v19;
  *(v26 + 120) = v20;
  *(v26 + 128) = v21;
  *(v26 + 136) = v22;
  *(v26 + 144) = v44;
  *(v26 + 152) = v24;
  *(v26 + 160) = v43;
  *(v26 + 168) = v42;
  *(v26 + 176) = v41;
  *(v26 + 184) = v40;
  *(v26 + 192) = v39;
  *(v26 + 200) = v38;
  *(v26 + 208) = v37;
  *(v26 + 216) = v36;
  *(v26 + 224) = v35;
  *(v26 + 232) = a14;
  *(v26 + 240) = a15;

  v27 = a3;
  v28 = a8;
  v29 = a1;
  v30 = a2;
  v31 = a5;

  v32 = a10;

  swift_unknownObjectRetain();
  sub_1CEFCCBDC(&v54, v53, &qword_1EC4BF2B0, &qword_1CFA01BA8);
  sub_1CF01001C(a7, "provideFile(for:kind:expectedFileSize:updating:domainVersion:requestor:options:completion:)", 91, 2, sub_1CF2F578C, v26);

  return result;
}

uint64_t sub_1CF2DDECC(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, char *a6, uint64_t a7, void *a8, uint64_t a9, void *a10, uint64_t a11)
{
  v110 = a8;
  v111 = a5;
  v112 = a7;
  v113 = a6;
  v114 = a3;
  v115 = a9;
  v14 = *(a11 + 8);
  v15 = *(a11 + 12);
  v16 = *(a11 + 48);
  v17 = *(a11 + 120);
  v18 = *(a11 + 128);
  *&v131 = *a11;
  DWORD2(v131) = v14;
  BYTE12(v131) = v15;
  v19 = *(a11 + 32);
  v132 = *(a11 + 16);
  v133 = v19;
  v134[0] = v16;
  *&v134[8] = *(a11 + 56);
  v135 = *(a11 + 72);
  v136[0] = *(a11 + 88);
  v136[1] = *(a11 + 104);
  v137 = v17;
  v138 = v18;
  v20 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v107 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1CF9E5268();
  v108 = *(v22 - 8);
  v109 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v106 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1CF9E5A58();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v105 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v105 - v32;
  v34 = v114;
  v114 = a1;
  sub_1CF041B2C(a2, v34);
  if (a4)
  {
    v35 = [a4 url];
    sub_1CF9E59D8();

    v36 = *(v25 + 32);
    v36(v33, v30, v24);
    if (v111 && !v113)
    {
      v110 = v111;
      LODWORD(v109) = sub_1CF9E59E8();
      v69 = v115;
      swift_beginAccess();
      v70 = *(v69 + 16);
      v107 = *(v69 + 24);
      v108 = v70;
      (*(v25 + 16))(v27, v33, v24);
      v71 = *(v25 + 80);
      v112 = v25;
      v113 = v33;
      v72 = v24;
      v73 = (v71 + 16) & ~v71;
      v74 = v73 + v26;
      v75 = swift_allocObject();
      v76 = v75 + v73;
      v77 = v72;
      v78 = v110;
      v36(v76, v27, v77);
      v79 = v69;
      *(v75 + v74) = v109 & 1;
      v80 = v75 + (v74 & 0xFFFFFFFFFFFFFFF8);
      v81 = v107;
      *(v80 + 8) = v108;
      *(v80 + 16) = v81;
      swift_beginAccess();
      *(v69 + 16) = sub_1CF2F582C;
      *(v69 + 24) = v75;
      swift_retain_n();

      sub_1CF06BC9C(v116);
      v82 = *v116;
      v83 = *&v116[8];
      sub_1CEFE42D4(*v116, *&v116[8]);
      sub_1CEFCCC44(v116, &unk_1EC4BF250, &unk_1CFA01B50);
      v84 = *&v134[16];
      v85 = v135;
      sub_1CEFE42D4(*&v134[16], v135);
      LOBYTE(v74) = sub_1CF328660(v82, v83, v84, v85);
      sub_1CEFE4714(v84, v85);
      sub_1CEFE4714(v82, v83);
      if (v74)
      {
        v86 = v78;
        sub_1CF2D1564(v111);

        swift_beginAccess();
        v87 = *(v79 + 16);
        v127 = v131;
        v128 = v132;
        v129 = v133;
        v130[0] = *v134;
        v117[0] = 0;
        *&v130[1] = v86;
        BYTE8(v130[1]) = 0;
        v88 = v86;

        sub_1CF1AE1DC(&v131, &v118);
        v87(&v127);

        v120 = v129;
        v121[0] = v130[0];
        *(v121 + 9) = *(v130 + 9);
        v118 = v127;
        v119 = v128;
        sub_1CEFCCC44(&v118, &qword_1EC4BF2B8, &qword_1CFA01BB0);
        return (*(v112 + 8))(v113, v77);
      }

      else
      {
        v89 = v112;
        v90 = MEMORY[0x1EEE9AC00](v134[0]);
        v91 = v113;
        *(&v105 - 24) = v113;
        *(&v105 - 23) = v92;
        *(&v105 - 44) = v93;
        *(&v105 - 21) = v79;
        *(&v105 - 20) = v94;
        *(&v105 - 38) = v95;
        *(&v105 - 148) = v96;
        *(&v105 - 9) = v97;
        *(&v105 - 8) = v98;
        *(&v105 - 112) = v99;
        *(&v105 - 13) = v100;
        *(&v105 - 12) = v84;
        *(&v105 - 11) = v85;
        *(&v105 - 5) = v90;
        *(&v105 - 4) = v101;
        *(&v105 - 3) = v102;
        *(&v105 - 32) = v103;
        v104 = v114;
        *(&v105 - 3) = v78;
        *(&v105 - 2) = v104;
        sub_1CEFE1894(sub_1CF2F58CC);

        return (*(v89 + 8))(v91, v77);
      }
    }

    (*(v25 + 8))(v33, v24);
  }

  v37 = v112;
  swift_beginAccess();
  v38 = *(v37 + 16);
  if (v38 && ([v38 isCancelled] & 1) != 0)
  {
    swift_beginAccess();
    v39 = *(v37 + 16);
    v40 = v115;
    if (v39 && [v39 isCancelled] && (v41 = v114, swift_beginAccess(), v42 = *(v41 + 176), *v42->tree))
    {

      sub_1CEFE863C(v110);
      v44 = v43;
      v42, v43, v45, v46, v47, v48, v49, v50;
    }

    else
    {
      v44 = 0;
    }

    swift_beginAccess();
    v61 = *(v40 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
    sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70, &unk_1CFA13B50);
    v62 = swift_allocError();
    *v63 = v44 & 1;
    v64 = v118;
    *(v63 + 17) = v119;
    *(v63 + 1) = v64;
    v65 = v120;
    v66 = v121[0];
    v67 = v121[1];
    *(v63 + 80) = *(&v121[1] + 15);
    *(v63 + 65) = v67;
    *(v63 + 49) = v66;
    *(v63 + 33) = v65;
    *(v63 + 88) = 5;
    v122 = 1;
    *v116 = v62;
    *&v116[8] = v123;
    *&v116[24] = v124;
    *&v116[40] = v125;
    *&v116[56] = v126;
    v116[72] = 1;

    v61(v116);

    v129 = *&v116[32];
    v130[0] = *&v116[48];
    *(v130 + 9) = *&v116[57];
    v127 = *v116;
    v128 = *&v116[16];
    v60 = &v127;
  }

  else
  {
    v51 = v115;
    swift_beginAccess();
    v52 = *(v51 + 16);
    v53 = v113;
    if (v113)
    {

      v54 = v53;
    }

    else
    {

      sub_1CF9E5198();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF2F1F24(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      v55 = v106;
      v56 = v109;
      sub_1CF9E57D8();
      v54 = sub_1CF9E50D8();
      (*(v108 + 8))(v55, v56);
    }

    v57 = v53;
    v58 = [a10 timeoutState];
    v59 = sub_1CF2E3014(v54, v110, 0, v58);

    LOBYTE(v123) = 1;
    *&v127 = v59;
    BYTE8(v130[1]) = 1;
    v52(&v127);

    v120 = v129;
    v121[0] = v130[0];
    *(v121 + 9) = *(v130 + 9);
    v118 = v127;
    v119 = v128;
    v60 = &v118;
  }

  return sub_1CEFCCC44(v60, &qword_1EC4BF2B8, &qword_1CFA01BB0);
}

uint64_t sub_1CF2DE8F0(_OWORD *a1, uint64_t a2, char a3, uint64_t (*a4)(_OWORD *))
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = [objc_opt_self() defaultManager];
  v8 = sub_1CF9E5928();
  *&v16[0] = 0;
  v9 = [v7 removeItemAtURL:v8 error:v16];

  if (v9)
  {
    v10 = *&v16[0];
    if ((a3 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = *&v16[0];
  v12 = sub_1CF9E57F8();

  swift_willThrow();
  if (a3)
  {
LABEL_5:
    sub_1CF9E59C8();
  }

LABEL_6:
  v13 = a1[3];
  v16[2] = a1[2];
  v17[0] = v13;
  *(v17 + 9) = *(a1 + 57);
  v14 = a1[1];
  v16[0] = *a1;
  v16[1] = v14;
  return a4(v16);
}

void sub_1CF2DEA2C(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, _DWORD *a8@<X8>)
{
  v53 = a6;
  v54 = a7;
  v71 = a4;
  v52 = a3;
  v51 = a2;
  v45 = a8;
  v9 = *(a5 + 2);
  v10 = *(a5 + 12);
  v11 = *(a5 + 48);
  v12 = a5[15];
  v13 = *(a5 + 128);
  v59 = *a5;
  v60 = v9;
  v61 = v10;
  v14 = *(a5 + 2);
  v62 = *(a5 + 1);
  v63 = v14;
  v64 = v11;
  v65 = *(a5 + 7);
  v66 = *(a5 + 9);
  v67 = *(a5 + 11);
  v68 = *(a5 + 13);
  v69 = v12;
  v70 = v13;
  v15 = sub_1CF9E5A58();
  v50 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CF9E5A18();
  v55 = v20;
  v56 = v19;
  (*(v16 + 16))(v18, a1, v15);
  v46 = v59;
  v21 = v60;
  v22 = v61;
  v49 = v69;
  v47 = v64;
  v48 = v70;
  v23 = (*(v16 + 80) + 192) & ~*(v16 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v51;
  *(v24 + 24) = v52;
  v25 = v46;
  *(v24 + 32) = v71;
  *(v24 + 40) = v25;
  *(v24 + 48) = v21;
  *(v24 + 52) = v22;
  v26 = v62;
  *(v24 + 72) = v63;
  *(v24 + 56) = v26;
  *(v24 + 88) = v47;
  v27 = v66;
  *(v24 + 96) = v65;
  *(v24 + 112) = v27;
  v28 = v68;
  *(v24 + 128) = v67;
  *(v24 + 144) = v28;
  v29 = v50;
  *(v24 + 160) = v49;
  *(v24 + 168) = v48;
  v31 = v53;
  v30 = v54;
  *(v24 + 176) = v53;
  *(v24 + 184) = v30;
  (*(v16 + 32))(v24 + v23, v18, v29);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1CF2F5950;
  *(v32 + 24) = v24;
  v58[4] = sub_1CEFDB240;
  v58[5] = v32;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 1107296256;
  v58[2] = sub_1CEFDB270;
  v58[3] = &block_descriptor_558;
  v33 = _Block_copy(v58);

  sub_1CEFCCBDC(&v59, &v57, &qword_1EC4BF2B0, &qword_1CFA01BA8);
  v34 = v31;

  v35 = v55;
  sub_1CF9E6978();
  v35, v36, v37, v38, v39, v40, v41, v42;
  v43 = fpfs_gethandle_at();

  _Block_release(v33);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if (v33)
  {
    __break(1u);
  }

  else
  {
    *v45 = v43;
  }
}

uint64_t sub_1CF2DEDAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a5 + 8);
  v13 = *(a5 + 12);
  v14 = *(a5 + 48);
  v15 = *(a5 + 120);
  v16 = *(a5 + 128);
  *&v55 = *a5;
  DWORD2(v55) = v12;
  BYTE12(v55) = v13;
  v17 = *(a5 + 32);
  v56 = *(a5 + 16);
  v57 = v17;
  LOBYTE(v58[0]) = v14;
  v18 = *(a5 + 72);
  *&v58[1] = *(a5 + 56);
  *&v58[3] = v18;
  v19 = *(a5 + 104);
  *&v58[5] = *(a5 + 88);
  *&v58[7] = v19;
  v58[9] = v15;
  v59 = v16;
  if (*a1 == a2 && *(a1 + 20) == a3)
  {
    swift_beginAccess();
    v20 = *(a4 + 16);
    *v42 = v55;
    *&v42[16] = v56;
    *&v42[32] = v57;
    *&v42[48] = *v58;
    LOBYTE(v51[0]) = 0;
    *&v42[64] = a6;
    v42[72] = 0;

    v21 = a6;
    sub_1CF1AE1DC(&v55, &v43);
    v20(v42);

    v45 = *&v42[32];
    v46[0] = *&v42[48];
    *(v46 + 9) = *&v42[57];
    v43 = *v42;
    v44 = *&v42[16];
    v22 = &qword_1EC4BF2B8;
    v23 = &qword_1CFA01BB0;
    v24 = &v43;
LABEL_8:
    sub_1CEFCCC44(v24, v22, v23);
    return 0;
  }

  v25 = swift_allocObject();
  v25[2] = a7;
  v25[3] = a6;
  v25[4] = a4;
  v26 = a6;

  if ((sub_1CF2D07F4() & 1) == 0 || ![v26 isFlattenedPackage])
  {
    v27 = *(a7 + 136);
    v28 = sub_1CF9E5A18();
    v30 = v29;
    (*(*v27 + 408))(v51, v28);
    v30, v31, v32, v33, v34, v35, v36, v37;
    v52 = 0;
    v54 = 0;
    *&v53[32] = v51[2];
    *&v53[48] = v51[3];
    *v53 = v51[0];
    *&v53[16] = v51[1];
    sub_1CF2D1564(v26);
    swift_beginAccess();
    v38 = *(a4 + 16);
    v47 = *&v53[8];
    v48 = *&v53[24];
    v49 = *&v53[40];
    v39 = *v53;
    v50 = *&v53[56];
    LOBYTE(v43) = 0;
    v40 = v26;
    *v42 = v39;
    *&v42[8] = v47;
    *&v42[24] = v48;
    *&v42[40] = v49;
    *&v42[56] = v50;
    *&v42[64] = v26;
    v42[72] = 0;

    sub_1CEFCCBDC(v53, &v43, &unk_1EC4BF2C0, &qword_1CFA01BB8);
    v38(v42);

    v45 = *&v42[32];
    v46[0] = *&v42[48];
    *(v46 + 9) = *&v42[57];
    v43 = *v42;
    v44 = *&v42[16];
    sub_1CEFCCC44(&v43, &qword_1EC4BF2B8, &qword_1CFA01BB0);

    v24 = v53;
    v22 = &unk_1EC4BF2C0;
    v23 = &qword_1CFA01BB8;
    goto LABEL_8;
  }

  sub_1CF2F220C(a8, sub_1CF2F5A1C, v25, a7);

  return 0;
}

uint64_t sub_1CF2DF17C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 48);
  *&v20[32] = *(a1 + 32);
  *&v20[48] = v6;
  v21 = *(a1 + 64);
  v7 = *(a1 + 16);
  *v20 = *a1;
  *&v20[16] = v7;
  sub_1CF2D1564(a3);
  swift_beginAccess();
  v8 = *(a4 + 16);
  if (v21)
  {
    v9 = *v20;
    v10 = 1;
    LOBYTE(v14[0]) = 1;
  }

  else
  {
    v16 = *&v20[8];
    v17 = *&v20[24];
    v18 = *&v20[40];
    v9 = *v20;
    v19 = *&v20[56];
    LOBYTE(v14[0]) = 0;
    v11 = a3;
    v10 = 0;
  }

  *v13 = v9;
  *&v13[8] = v16;
  *&v13[24] = v17;
  *&v13[40] = v18;
  *&v13[56] = v19;
  *&v13[64] = a3;
  v13[72] = v10;

  sub_1CEFCCBDC(v20, v14, &unk_1EC4BF2C0, &qword_1CFA01BB8);
  v8(v13);

  v14[2] = *&v13[32];
  v15[0] = *&v13[48];
  *(v15 + 9) = *&v13[57];
  v14[0] = *v13;
  v14[1] = *&v13[16];
  return sub_1CEFCCC44(v14, &qword_1EC4BF2B8, &qword_1CFA01BB0);
}

void sub_1CF2DF2C8(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = *(a1 + 32);

  v15 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v11(a2, a3, v13, a5, a6);
}

uint64_t sub_1CF2DF394(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_1CF9E64A8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 160);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1CF9E64D8();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    swift_beginAccess();
    sub_1CF1C8F90(0, a2);
    result = swift_endAccess();
    if (a3)
    {
      return a3(result);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF2DF4F8(void *a1, void (*a2)(), void *a3)
{
  v4 = v3;
  v31 = a3;
  v7 = sub_1CF9E63D8();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = *(v4 + 168);
  v33 = *(v4 + 160);
  v17 = sub_1CF9E6448();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v15, 1, 1, v17);
  v19 = swift_allocObject();
  v19[2] = v4;
  v19[3] = a1;
  v34 = a2;
  v19[4] = a2;
  v20 = v31;
  v19[5] = v31;

  v21 = a1;

  v22 = fpfs_current_log();
  v32 = *(v16 + 16);
  sub_1CEFCCBDC(v15, v12, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v18 + 48))(v12, 1, v17) == 1)
  {
    sub_1CEFCCC44(v12, &unk_1EC4BE370, qword_1CFA01B30);
    v23 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    sub_1CF9E6438();
    (*(v18 + 8))(v12, v17);
    v23 = sub_1CF9E63C8();
    (*(v29 + 8))(v9, v30);
  }

  v24 = swift_allocObject();
  v24[2] = v22;
  v24[3] = sub_1CF2F5544;
  v24[4] = v19;
  v39 = sub_1CF2BA17C;
  v40 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_1CEFCA444;
  v38 = &block_descriptor_474;
  v25 = _Block_copy(&aBlock);
  v26 = v22;

  v39 = v34;
  v40 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_1CEFCA444;
  v38 = &block_descriptor_477;
  v27 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v32, v33, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v23, v25, v27);
  _Block_release(v27);
  _Block_release(v25);

  return sub_1CEFCCC44(v15, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2DF8EC(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  v6 = *(a1 + 176);
  if (*v6->tree)
  {

    v7 = sub_1CEFE863C(a2);
    if (v8)
    {
      v15 = *(*v6[1].tester + 8 * v7);
      v6, v16, v17, v18, v19, v20, v21, v22;
      [v15 cancel];
    }

    else
    {
      v6, v8, v9, v10, v11, v12, v13, v14;
    }
  }

  swift_beginAccess();
  sub_1CF1C8F90(0, a2);
  v23 = swift_endAccess();
  return a3(v23);
}

void sub_1CF2DF9D8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1CF9E6888();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_1CF9E6888();
    v4 = [v2 BOOLForKey_];
  }

  else
  {
    v4 = 0;
  }

  byte_1EC4BF020 = v4;
}

void sub_1CF2DFAA0(void *a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, __int128 *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v77 = a8;
  v79 = a7;
  v68 = a4;
  v74 = a2;
  v80 = a1;
  v73 = a12;
  v76 = a10;
  v64 = sub_1CF9E63D8();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v62 - v20;
  v65 = &v62 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v75 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v62 - v25;
  v66 = &v62 - v25;
  v72 = *a3;
  v27 = a6[1];
  v88 = *a6;
  v89 = v27;
  v28 = a6[3];
  v90 = a6[2];
  v91 = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = nullsub_1;
  *(v29 + 24) = 0;
  v30 = v29;
  v81 = v29;
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = a4;
  v31[4] = v12;
  v31[5] = a11;
  v31[6] = a12;
  v32 = *(v12 + 160);
  v70 = *(v12 + 168);
  v33 = v12;
  v67 = v12;
  v78 = v32;
  v69 = sub_1CF9E6448();
  v71 = *(v69 - 8);
  (*(v71 + 56))(v26, 1, 1, v69);
  sub_1CEFCCBDC(v74, v21, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v34 = (*(v18 + 80) + 48) & ~*(v18 + 80);
  v35 = (v19 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v40 + 71) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v41[2] = v33;
  v41[3] = sub_1CF2F51A0;
  v41[4] = v31;
  v41[5] = v80;
  sub_1CEFE55D0(v65, v41 + v34, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  *(v41 + v35) = v72;
  *(v41 + v36) = v76;
  *(v41 + v37) = v77;
  v42 = v66;
  *(v41 + v38) = v68;
  v43 = v79;
  *(v41 + v39) = v79;
  v44 = (v41 + v40);
  v45 = v89;
  *v44 = v88;
  v44[1] = v45;
  v46 = v91;
  v44[2] = v90;
  v44[3] = v46;
  *(v41 + v74) = v81;
  v47 = swift_allocObject();
  v47[2] = sub_1CF2F51A0;
  v47[3] = v31;
  v48 = v70;
  v47[4] = v70;
  v49 = v43;
  v79 = v31;
  v50 = v69;
  v51 = v75;
  swift_retain_n();
  swift_retain_n();
  v52 = v71;
  swift_retain_n();
  swift_retain_n();

  v53 = v80;

  sub_1CEFCCBDC(&v88, &aBlock, &unk_1EC4BF250, &unk_1CFA01B50);
  v54 = v48;

  v55 = fpfs_current_log();
  v80 = *(v54 + 16);
  sub_1CEFCCBDC(v42, v51, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v52 + 48))(v51, 1, v50) == 1)
  {
    sub_1CEFCCC44(v51, &unk_1EC4BE370, qword_1CFA01B30);
    v56 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v57 = v62;
    sub_1CF9E6438();
    (*(v52 + 8))(v51, v50);
    v56 = sub_1CF9E63C8();
    (*(v63 + 8))(v57, v64);
  }

  v58 = swift_allocObject();
  v58[2] = v55;
  v58[3] = sub_1CF2F51B0;
  v58[4] = v41;
  v86 = sub_1CF2BA17C;
  v87 = v58;
  aBlock = MEMORY[0x1E69E9820];
  v83 = 1107296256;
  v84 = sub_1CEFCA444;
  v85 = &block_descriptor_427;
  v59 = _Block_copy(&aBlock);
  v60 = v55;

  v86 = sub_1CF2F529C;
  v87 = v47;
  aBlock = MEMORY[0x1E69E9820];
  v83 = 1107296256;
  v84 = sub_1CEFCA444;
  v85 = &block_descriptor_430;
  v61 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v80, v78, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v56, v59, v61);
  _Block_release(v61);
  _Block_release(v59);

  sub_1CEFCCC44(v42, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2E0208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *))
{
  v8 = *(a1 + 80);
  v17[4] = *(a1 + 64);
  v17[5] = v8;
  v18 = *(a1 + 96);
  v9 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v9;
  v10 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v10;
  swift_beginAccess();
  v11 = *(a2 + 16);

  v11(v12);

  type metadata accessor for VFSStagedContext();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = *(a4 + 136);
    MEMORY[0x1EEE9AC00](v13);
    swift_retain_n();
    sub_1CEFE1894(sub_1CF2B9F78);
    *(v14 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
    if (*(v14 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);
      swift_unknownObjectRelease();
    }
  }

  return a5(v17);
}

void sub_1CF2E03B4(uint64_t a1, void (*a2)(_OWORD *), uint64_t a3, id a4, void **a5, unint64_t a6, unint64_t a7, unsigned __int8 *a8, uint64_t a9, void *a10, _OWORD *a11, uint64_t a12)
{
  v186 = a7;
  v187 = a8;
  v189 = a4;
  v190 = a6;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v163 - v17;
  v19 = sub_1CF9E64A8();
  v184 = *(v19 - 8);
  v185 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v183 = (v163 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v24);
  if ((*(a1 + 192) & 1) == 0)
  {
    v176 = v163 - v26;
    v178 = v25;
    v166 = v18;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      sub_1CF2CA194();
      v91 = swift_allocError();
      LOBYTE(v199) = 1;
      *&v192[0] = v91;
      v193 = 1;
      a2(v192);
      v209 = v192[4];
      v210 = v192[5];
      v211 = v193;
      aBlock = v192[0];
      v206 = v192[1];
      v207 = v192[2];
      v208 = v192[3];
      goto LABEL_21;
    }

    v33 = Strong;
    v171 = v22;
    v177 = a2;
    v179 = v163 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v180 = a3;
    v174 = a11;
    v34 = a1;
    v35 = swift_allocObject();
    v36 = swift_allocObject();
    v188 = v34;
    v37 = *(v34 + 280);
    v38 = v190;
    *&aBlock = v190;
    v39 = v33;
    v40 = sub_1CEFE5A60(v189, v37, v33, a5, &aBlock, 1);
    v42 = v41;
    v172 = v39;

    v181 = v35;
    *(v35 + 16) = v40;
    v164 = (v35 + 16);
    v175 = v36;
    *(v36 + 16) = v42;
    v43 = (v36 + 16);
    if ((v38 & 0x200000000000) != 0 && (sub_1CF2D07F4() & 1) != 0 && (v42 & 2) == 0)
    {
      *v43 = v42 | 2;
    }

    v170 = a12;
    v173 = a9;
    v182 = a10;
    if ((v190 & 0x4000000000000) != 0)
    {
      if (v186)
      {
        sub_1CEFD57E0(0, &unk_1EDEAB5A0, 0x1E69674E8);
        v44 = v40;
        v45 = sub_1CF9E6D28();
        [v44 setConflictingVersions_];

        if ((*v43 & 0x80000000) == 0)
        {
          *v43 |= 0x80000000uLL;
        }
      }
    }

    v165 = v43;
    v46 = 6;
    if ((v187 & 0x400) == 0)
    {
      v46 = 4;
    }

    if ((v187 & 0x800) != 0)
    {
      v47 = v46;
    }

    else
    {
      v47 = (v187 & 0x400) >> 9;
    }

    v169 = *(v181 + 16);
    v48 = a5 + v178[10];
    v186 = v47;
    v187 = v48;
    v49 = v176;
    sub_1CEFCCBDC(a5, v176, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
    sub_1CEFCCBDC(v49, v179, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
    v50 = (*(v171 + 80) + 48) & ~*(v171 + 80);
    v51 = (v23 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    v171 = (v53 + 71) & 0xFFFFFFFFFFFFFFF8;
    v168 = (v171 + 15) & 0xFFFFFFFFFFFFFFF8;
    v167 = (v168 + 15) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v167 + 15) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    v56 = v177;
    v55[2] = v188;
    v55[3] = v56;
    v57 = v175;
    v55[4] = v180;
    v55[5] = v57;
    sub_1CEFE55D0(v49, v55 + v50, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
    v58 = v181;
    *(v55 + v51) = v182;
    *(v55 + v52) = v58;
    v59 = (v55 + v53);
    v60 = v174;
    v61 = v174[1];
    *v59 = *v174;
    v59[1] = v61;
    v62 = *(v60 + 48);
    v59[2] = *(v60 + 32);
    v59[3] = v62;
    v63 = v172;
    *(v55 + v171) = v186;
    v64 = v167;
    *(v55 + v168) = v63;
    v65 = v189;
    *(v55 + v64) = v190;
    *(v55 + v54) = v65;
    *(v55 + ((v54 + 15) & 0xFFFFFFFFFFFFFFF8)) = v170;
    LODWORD(v53) = v187[*(type metadata accessor for ItemMetadata(0) + 112)];
    swift_retain_n();
    v176 = v63;
    v66 = v169;

    v189 = v65;
    if (v53 == 1)
    {
      sub_1CEFCCBDC(v60, &aBlock, &unk_1EC4BF250, &unk_1CFA01B50);
      v67 = v182;

      if (sub_1CF2D07F4())
      {
        v68 = [v66 filename];
        v69 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v71 = v70;

        *&aBlock = v69;
        *(&aBlock + 1) = v71;
        MEMORY[0x1D3868CC0](46, 0xE100000000000000);
        v72 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v74 = v73;
        MEMORY[0x1D3868CC0](v72);
        v74, v75, v76, v77, v78, v79, v80, v81;
        v82 = *(&aBlock + 1);
        v83 = sub_1CF9E6888();
        v82, v84, v85, v86, v87, v88, v89, v90;
        [v66 setFilename_];
      }
    }

    else
    {
      sub_1CEFCCBDC(v60, &aBlock, &unk_1EC4BF250, &unk_1CFA01B50);
      v92 = v182;
    }

    type metadata accessor for VFSStagedContext();
    v93 = swift_dynamicCastClass();
    if (v93)
    {
      v94 = v93;

      MEMORY[0x1EEE9AC00](v95);
      v96 = v187;
      v163[-4] = v97;
      v163[-3] = v96;
      v161 = sub_1CF2F52A8;
      v162 = v55;
      sub_1CF2EF290(v94, 0x200000, sub_1CF2F6724, &v163[-6], v163);

      sub_1CEFCCC44(v179, &qword_1EC4BE9F8, &unk_1CF9FEFE0);

      return;
    }

    v187 = v66;
    v98 = v57;
    v99 = v55;
    v100 = v188;
    v101 = *(v188 + 160);
    v102 = v183;
    v103 = v184;
    *v183 = v101;
    v104 = v185;
    v103[13](v102, *MEMORY[0x1E69E8020], v185);
    v105 = v101;
    LOBYTE(v101) = sub_1CF9E64D8();
    (v103[1])(v102, v104);
    if ((v101 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v106 = v99;
    v107 = v98;
    if (*(v100 + 192) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
      sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70, &unk_1CFA13B50);
      v108 = swift_allocError();
      *v109 = 0;
      *(v109 + 8) = v194;
      v110 = v195;
      v111 = v196;
      v112 = v197;
      *(v109 + 72) = v198;
      *(v109 + 56) = v112;
      *(v109 + 40) = v111;
      *(v109 + 24) = v110;
      *(v109 + 88) = 8;
      LOBYTE(v212[0]) = 1;
      *&v192[0] = v108;
      *(&v192[2] + 8) = v201;
      *(&v192[3] + 8) = v202;
      *(&v192[4] + 8) = v203;
      *(&v192[5] + 1) = v204;
      *(v192 + 8) = v199;
      *(&v192[1] + 8) = v200;
      v193 = 1;
      v177(v192);

      v209 = v192[4];
      v210 = v192[5];
      v211 = v193;
      aBlock = v192[0];
      v206 = v192[1];
      v207 = v192[2];
      v208 = v192[3];
      sub_1CEFCCC44(&aBlock, &unk_1EC4BF2A0, &unk_1CFA01B90);
      sub_1CEFCCC44(v179, &qword_1EC4BE9F8, &unk_1CF9FEFE0);

LABEL_45:

      return;
    }

    v113 = v178[10];
    v114 = sub_1CF9E5A58();
    v115 = v166;
    (*(*(v114 - 8) + 56))(v166, 1, 1, v114);
    v116 = sub_1CF2D07F4();
    v117 = sub_1CF2F2B2C(v179 + v113, v115, v116 & 1);
    v119 = v118;
    sub_1CEFCCC44(v115, &unk_1EC4BE310, qword_1CF9FCBE0);
    v120 = swift_unknownObjectWeakLoadStrong();
    v121 = v182;
    if (v120)
    {
      v122 = v120;
      if ([v120 userEnabled])
      {
        v184 = [objc_msgSend(v122 session)];

        swift_unknownObjectRelease();
LABEL_35:
        v183 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
        [v183 setDomainVersion_];
        v123 = v164;
        swift_beginAccess();
        v124 = *v123;
        v194 = *v174;
        v212[0] = *(v174 + 24);
        v125 = *(v174 + 7);
        v185 = v124;
        sub_1CF2F47F0(&v194, &aBlock);
        sub_1CF2F47F0(v212, &aBlock);
        v126 = sub_1CF9E5B48();
        v127 = sub_1CF9E5B48();
        if (v125)
        {
          v125 = sub_1CF9E6888();
        }

        v128 = v177;
        v129 = v107;
        v178 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v126 metadataVersion:v127 lastEditorDeviceName:v125];

        sub_1CF2F484C(v212);
        sub_1CF2F484C(&v194);
        v130 = v165;
        swift_beginAccess();
        v177 = *v130;
        v131 = v188;
        v132 = swift_unknownObjectWeakLoadStrong();
        v163[1] = v106;
        if (v132 && (v133 = v132, v134 = [v132 session], v133, v134))
        {
          v135 = [objc_opt_self() requestForSelf];
          v136 = [v135 nsfpRequestForSession:v134 isSpeculative:0];

          v174 = v136;
          v137 = v182;
          [v136 setDomainVersion_];
          swift_unknownObjectRelease();
        }

        else
        {
          v174 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
          v137 = v182;
        }

        v138 = swift_allocObject();
        v139 = v176;
        v138[2] = v131;
        v138[3] = v139;
        v140 = v180;
        v141 = v181;
        v138[4] = v137;
        v138[5] = v141;
        v138[6] = nullsub_1;
        v138[7] = 0;
        v142 = v189;
        v138[8] = v190;
        v138[9] = v129;
        v138[10] = v128;
        v138[11] = v140;
        v143 = v184;
        v138[12] = v142;
        v138[13] = v143;
        *&v207 = sub_1CF2F53E4;
        *(&v207 + 1) = v138;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v206 = sub_1CF2E25F8;
        *(&v206 + 1) = &block_descriptor_443;
        v144 = _Block_copy(&aBlock);
        v190 = v139;

        v145 = v142;
        v146 = v141;

        v147 = v137;
        v148 = v143;
        v149 = v188;

        swift_unknownObjectRetain();

        v150 = v185;
        v151 = v178;
        v152 = v174;
        v153 = [v148 modifyItem:v185 baseVersion:v178 changedFields:v177 contents:0 options:v186 request:v174 completionHandler:v144];

        _Block_release(v144);
        if (v153)
        {
          v154 = *(v146 + 16);
          v155 = v153;
          v156 = [v154 documentSize];
          [v156 longLongValue];

          v157 = [*(v146 + 16) itemIdentifier];
          swift_beginAccess();
          v158 = v155;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v191 = *(v149 + 184);
          *(v149 + 184) = 0x8000000000000000;
          sub_1CF1D2120(v158, v157, isUniquelyReferenced_nonNull_native);

          *(v149 + 184) = v191;
          swift_endAccess();

          swift_unknownObjectRelease();

          v160 = v183;
        }

        else
        {

          swift_unknownObjectRelease();

          v160 = v190;
        }

        sub_1CEFCCC44(v179, &qword_1EC4BE9F8, &unk_1CF9FEFE0);

        goto LABEL_45;
      }
    }

    v184 = sub_1CF2F1F6C();
    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70, &unk_1CFA13B50);
  v27 = swift_allocError();
  *v28 = 0;
  *(v28 + 8) = v194;
  v29 = v195;
  v30 = v196;
  v31 = v197;
  *(v28 + 72) = v198;
  *(v28 + 56) = v31;
  *(v28 + 40) = v30;
  *(v28 + 24) = v29;
  *(v28 + 88) = 8;
  LOBYTE(v212[0]) = 1;
  *&v192[0] = v27;
  *(&v192[2] + 8) = v201;
  *(&v192[3] + 8) = v202;
  *(&v192[4] + 8) = v203;
  *(&v192[5] + 1) = v204;
  *(v192 + 8) = v199;
  *(&v192[1] + 8) = v200;
  v193 = 1;
  a2(v192);
  v209 = v192[4];
  v210 = v192[5];
  v211 = v193;
  aBlock = v192[0];
  v206 = v192[1];
  v207 = v192[2];
  v208 = v192[3];
LABEL_21:
  sub_1CEFCCC44(&aBlock, &unk_1EC4BF2A0, &unk_1CFA01B90);
}

void sub_1CF2E151C(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, void (*a6)(_OWORD *), uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, __int128 *a12, uint64_t a13, void (*a14)(uint64_t), uint64_t a15, void *a16, uint64_t a17)
{
  v124 = a8;
  v125 = a6;
  v126 = a7;
  v127 = a3;
  v128 = a4;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v104 - v21;
  v23 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v122 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1CF9E64A8();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = (&v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *(a5 + 160);
  *v29 = v30;
  v31 = *(v26 + 104);
  v117 = *MEMORY[0x1E69E8020];
  v118 = v26 + 104;
  v116 = v31;
  v31(v29, v27);
  v115 = v30;
  v32 = sub_1CF9E64D8();
  v114 = *(v26 + 8);
  v119 = v29;
  v120 = v26 + 8;
  v121 = v25;
  v114(v29, v25);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (a2)
  {
    LOBYTE(v134) = 1;
    *&v131[0] = a1;
    v132 = 1;
    v33 = a1;
LABEL_6:
    v125(v131);
    v144 = v131[4];
    v145 = v131[5];
    v146 = v132;
    aBlock = v131[0];
    v141 = v131[1];
    v142 = v131[2];
    v143 = v131[3];
    v39 = sub_1CEFCCC44(&aBlock, &unk_1EC4BF2A0, &unk_1CFA01B90);
    v127(v39);
    return;
  }

  if (*(a5 + 192))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
    sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70, &unk_1CFA13B50);
    v34 = swift_allocError();
    *v35 = 0;
    *(v35 + 8) = v133[0];
    v36 = v133[1];
    v37 = v133[2];
    v38 = v133[3];
    *(v35 + 72) = v133[4];
    *(v35 + 56) = v38;
    *(v35 + 40) = v37;
    *(v35 + 24) = v36;
    *(v35 + 88) = 8;
    v130 = 1;
    *&v131[0] = v34;
    *(&v131[2] + 8) = v136;
    *(&v131[3] + 8) = v137;
    *(&v131[4] + 8) = v138;
    *(&v131[5] + 1) = v139;
    *(v131 + 8) = v134;
    *(&v131[1] + 8) = v135;
    v132 = 1;
    goto LABEL_6;
  }

  v40 = a1;
  v123 = a5;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v42 = v122;
  sub_1CEFF4408(a9 + *(v41 + 40), v122);
  if (v40)
  {
    v43 = [v40 url];
    sub_1CF9E59D8();

    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  v45 = a10;
  v46 = sub_1CF9E5A58();
  (*(*(v46 - 8) + 56))(v22, v44, 1, v46);
  v47 = sub_1CF2D07F4();
  v111 = sub_1CF2F2B2C(v42, v22, v47 & 1);
  v49 = v48;
  sub_1CEFCCC44(v22, &unk_1EC4BE310, qword_1CF9FCBE0);
  sub_1CF007B98(v42, type metadata accessor for ItemMetadata);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v51 = Strong;
  if (![Strong userEnabled])
  {

LABEL_14:
    v53 = sub_1CF2F1F6C();
    goto LABEL_15;
  }

  v52 = [v51 session];
  v53 = [v52 newFileProviderProxyWithTimeout:0 pid:{sub_1CF089D74(v111, v49 & 1)}];

  v45 = a10;
  swift_unknownObjectRelease();
LABEL_15:
  v111 = a13;
  v105 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
  v113 = v45;
  [v105 setDomainVersion_];
  swift_beginAccess();
  v54 = *(a11 + 16);
  v55 = *a12;
  v147 = *(a12 + 24);
  v148[0] = v55;
  v56 = *(a12 + 7);
  v110 = v54;
  sub_1CF2F47F0(v148, &aBlock);
  sub_1CF2F47F0(&v147, &aBlock);
  v57 = sub_1CF9E5B48();
  v58 = sub_1CF9E5B48();
  if (v56)
  {
    v59 = sub_1CF9E6888();
  }

  else
  {
    v59 = 0;
  }

  v108 = a16;
  v109 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v57 metadataVersion:v58 lastEditorDeviceName:v59];

  sub_1CF2F484C(&v147);
  sub_1CF2F484C(v148);
  v60 = v124;
  swift_beginAccess();
  v107 = *(v60 + 16);
  v61 = swift_unknownObjectWeakLoadStrong();
  v122 = v53;
  v112 = v40;
  if (v61 && (v62 = v61, v63 = [v61 session], v62, v63))
  {
    v64 = [objc_opt_self() requestForSelf];
    v65 = [v64 nsfpRequestForSession:v63 isSpeculative:0];

    v106 = v65;
    v66 = v65;
    v67 = v113;
    [v66 setDomainVersion_];
    swift_unknownObjectRelease();
  }

  else
  {
    v106 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
    v67 = v113;
  }

  v68 = swift_allocObject();
  v68[2] = v123;
  v68[3] = a14;
  v68[4] = v67;
  v68[5] = a11;
  v70 = v126;
  v69 = v127;
  v127 = a14;
  v71 = v128;
  v68[6] = v69;
  v68[7] = v71;
  v68[8] = a15;
  v72 = v125;
  v68[9] = v124;
  v68[10] = v72;
  v73 = v108;
  v68[11] = v70;
  v68[12] = v73;
  v74 = v122;
  v68[13] = v122;
  *&v142 = sub_1CF2F65B0;
  *(&v142 + 1) = v68;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v141 = sub_1CF2E25F8;
  *(&v141 + 1) = &block_descriptor_454;
  v75 = _Block_copy(&aBlock);

  v76 = v127;

  v77 = v73;
  swift_unknownObjectRetain();
  v78 = v113;

  v80 = v109;
  v79 = v110;
  v81 = v106;
  v82 = v112;
  v83 = [v74 modifyItem:v110 baseVersion:v109 changedFields:v107 contents:v112 options:v111 request:v106 completionHandler:v75];

  _Block_release(v75);
  if (!v83)
  {
    swift_unknownObjectRelease();

    return;
  }

  swift_beginAccess();
  v84 = [*(a11 + 16) documentSize];
  if (v84)
  {
    v85 = v84;
    v86 = [v84 longLongValue];

    v87 = v123;
    if (!v82)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v86 = 0;
    v87 = v123;
    if (!v82)
    {
LABEL_32:
      swift_beginAccess();
      v101 = [*(a11 + 16) itemIdentifier];
      swift_beginAccess();
      v102 = v83;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129 = *(v87 + 184);
      *(v87 + 184) = 0x8000000000000000;
      sub_1CF1D2120(v102, v101, isUniquelyReferenced_nonNull_native);

      *(v87 + 184) = v129;
      swift_endAccess();
      swift_unknownObjectRelease();

      return;
    }
  }

  v88 = *(v87 + 120);
  if (!v88)
  {
    goto LABEL_32;
  }

  v89 = *(v123 + 128);
  v90 = *MEMORY[0x1E696A870];
  *&v133[0] = v77;

  v91 = v88(v133, v83, v90, v86);
  v93 = v92;
  v94 = v89;
  v87 = v123;
  sub_1CEFF7124(v88, v94);
  if (!v91)
  {
    goto LABEL_32;
  }

  v95 = v119;
  v97 = v115;
  v96 = v116;
  *v119 = v115;
  v98 = v121;
  v96(v95, v117, v121);
  v99 = v97;
  LOBYTE(v97) = sub_1CF9E64D8();
  v114(v95, v98);
  if (v97)
  {
    v100 = swift_allocObject();
    v100[2] = v87;
    v100[3] = v91;
    v100[4] = v93;
    swift_beginAccess();
    *(a17 + 16) = sub_1CF2F5538;
    *(a17 + 24) = v100;

    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
}

double sub_1CF2E1FB8(void *a1, uint64_t a2, char a3, void *a4, void *a5, uint64_t a6, id a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v31 = [a7 log];
  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  *(v20 + 24) = a4;
  *(v20 + 32) = a8;
  *(v20 + 40) = a9;
  *(v20 + 48) = a10;
  *(v20 + 56) = a11;
  *(v20 + 64) = a2;
  *(v20 + 72) = a1;
  *(v20 + 80) = a12;
  *(v20 + 88) = a13;
  *(v20 + 96) = a5;
  *(v20 + 104) = a14;
  *(v20 + 112) = a15;
  *(v20 + 120) = a16;
  *(v20 + 128) = a17;
  *(v20 + 136) = a3;

  v21 = a4;
  v22 = a8;

  v23 = a1;

  v24 = a5;

  v25 = a16;
  swift_unknownObjectRetain();
  sub_1CF01001C(v31, "update(_:to:given:with:capturedContent:baseVersion:domainVersion:options:nonSyncableAttributes:updatedConflictsList:completion:)", 128, 2, sub_1CF2F53E8, v20);

  return result;
}

id sub_1CF2E2150(uint64_t a1, void *a2, void *a3, uint64_t a4, void (*a5)(uint64_t), int a6, __C::NSFileProviderItemFields a7, void *a8, uint64_t a9, uint64_t a10, id a11, void (*a12)(__int128 *), uint64_t a13, void *a14, void *a15, char a16)
{
  sub_1CF041B2C(a2, a3);
  swift_beginAccess();
  v21 = [*(a4 + 16) itemIdentifier];
  swift_beginAccess();
  sub_1CF1C8F90(0, v21);
  v22 = swift_endAccess();
  a5(v22);
  Fields.init(_:)(a7);
  if (sub_1CF2D07F4())
  {
    v23 = v109;
    if ((v109 & 8) == 0)
    {
      swift_beginAccess();
      if ([*(a4 + 16) isPackage])
      {
        swift_beginAccess();
        v24 = *(a4 + 16);
        result = [v24 filename];
        if (!result)
        {
          __break(1u);
          goto LABEL_36;
        }

        v26 = result;

        v27 = [v26 pathExtension];
        v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v30 = v29;

        v32 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v38 = v31;
        if (v28 == v32 && v30 == v31)
        {
          v30, v31, v32, v33, v34, v35, v36, v37;
          v38, v39, v40, v41, v42, v43, v44, v45;
          if (!a8)
          {
            goto LABEL_18;
          }

          goto LABEL_11;
        }

        v46 = sub_1CF9E8048();
        v30, v47, v48, v49, v50, v51, v52, v53;
        v38, v54, v55, v56, v57, v58, v59, v60;
        if ((v46 & 1) != 0 && a8)
        {
LABEL_11:
          v61 = a8;
          result = [v61 filename];
          if (result)
          {
            v62 = result;
            v63 = [result pathExtension];

            v64 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v66 = v65;

            v68 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v74 = v67;
            if (v64 == v68 && v66 == v67)
            {
              v66, v67, v68, v69, v70, v71, v72, v73;
              v74, v75, v76, v77, v78, v79, v80, v81;
            }

            else
            {
              v82 = sub_1CF9E8048();
              v66, v83, v84, v85, v86, v87, v88, v89;
              v74, v90, v91, v92, v93, v94, v95, v96;

              if ((v109 & 1) == 0 && (v82 & 1) == 0)
              {
                v23 = v109 | 1;
                v109 |= 1uLL;
              }
            }

            goto LABEL_18;
          }

LABEL_36:
          __break(1u);
          return result;
        }
      }
    }

LABEL_18:
    if ((v23 & 0x200000000001) == 1 && (a9 & 0x200000000000) != 0)
    {
      v109 = v23 | 0x200000000000;
    }
  }

  if ((a9 & 0x4000000000000) != 0)
  {
    swift_beginAccess();
    *&v107[0] = *(a10 + 16) & 0x80000000;
    type metadata accessor for NSFileProviderItemFields(0);
    sub_1CF2F1F24(&qword_1EC4BD1B8, type metadata accessor for NSFileProviderItemFields, &unk_1CF9F6070);
    if ((sub_1CF9E7798() & 1) != 0 && (v109 & 0x4000000000000) == 0)
    {
      v109 |= 0x4000000000000uLL;
    }
  }

  if (a11)
  {
    v97 = a11;
    v106 = 1;
    *&v101 = sub_1CF2E3014(a11, a14, 1, [a15 timeoutState]);
    v105 = 1;
    a12(&v101);
  }

  else
  {
    sub_1CF2D1564(a8);
    if (a8)
    {
      v98 = v109;
    }

    else
    {
      v98 = 0;
    }

    if (a8)
    {
      v99 = 0xB000000000000000;
    }

    else
    {
      v99 = 0;
    }

    v100 = a8;
    v106 = 0;
    *&v101 = a8;
    *(&v101 + 1) = v98;
    v102 = (a8 != 0) & a16;
    v103 = 0uLL;
    memset(&v104[8], 0, 32);
    *v104 = v99;
    *&v104[40] = [a2 domainVersion];
    v105 = 0;
    a12(&v101);
  }

  v107[4] = *&v104[16];
  v107[5] = *&v104[32];
  v108 = v105;
  v107[0] = v101;
  v107[1] = v102;
  v107[2] = v103;
  v107[3] = *v104;
  return sub_1CEFCCC44(v107, &unk_1EC4BF2A0, &unk_1CFA01B90);
}

void sub_1CF2E25F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = *(a1 + 32);

  v14 = a2;
  v12 = a5;
  v13 = a6;
  v11(a2, a3, a4, a5, a6);
}

double sub_1CF2E26B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1CF9E63A8();
  v16 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6448();
  v8 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  aBlock[4] = sub_1CEFFD05C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_463;
  v12 = _Block_copy(aBlock);

  sub_1CF9E63F8();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1CF2F1F24(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v10, v7, v12);
  _Block_release(v12);
  (*(v16 + 8))(v7, v5);
  (*(v8 + 8))(v10, v15);

  return result;
}

void sub_1CF2E2990(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6)
{
  if (*(a1 + 192))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
    sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70, &unk_1CFA13B50);
    v7 = swift_allocError();
    *v8 = 0;
    *(v8 + 8) = v43;
    v9 = v46;
    v10 = v47;
    v11 = v45;
    *(v8 + 24) = v44;
    *(v8 + 72) = v10;
    *(v8 + 56) = v9;
    *(v8 + 40) = v11;
    *(v8 + 88) = 8;
    a2(v7, 1);
  }

  else
  {
    v14 = *(a1 + 136);
    v15 = a4[1];
    v59 = *a4;
    v60 = v15;
    v16 = a4[3];
    v61 = a4[2];
    v62 = v16;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
    v19 = a6[12];
    v20 = a6[14];
    v56 = a6[13];
    v57 = v20;
    v21 = a6[8];
    v22 = a6[10];
    v23 = a6[11];
    v52 = a6[9];
    v53 = v22;
    v54 = v23;
    v55 = v19;
    v24 = a6[4];
    v25 = a6[6];
    v26 = a6[7];
    v48 = a6[5];
    v49 = v25;
    v50 = v26;
    v51 = v21;
    v27 = a6[1];
    v43 = *a6;
    v44 = v27;
    v28 = a6[3];
    v45 = a6[2];
    v29 = *(v18 + 40);
    v58 = *(a6 + 30);
    v46 = v28;
    v47 = v24;
    v30 = *(a5 + 16);
    v41 = *(a5 + 8);
    v42 = v30;
    v31 = *(*v14 + 448);
    sub_1CF1AE1DC(a4, v40);

    v31(&v59, a5 + v29, &v43, &v41, 0, 0);
    v42, v32, v33, v34, v35, v36, v37, v38;
    v40[0] = v59;
    v40[1] = v60;
    v40[2] = v61;
    v40[3] = v62;
    sub_1CEFCCC44(v40, &unk_1EC4BF260, &unk_1CFA01B60);

    a2(v39, 0);
  }
}

uint64_t sub_1CF2E2D0C(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1CF9E5248();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1CF9E50E8();
    sub_1CF2F1F24(&qword_1EDEAB460, MEMORY[0x1E6967E70], MEMORY[0x1E6967E68]);
    v12 = sub_1CF9E5658();
    (*(v9 + 8))(v11, v8);
    if ((v12 & 1) != 0 && *(v4 + 192) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
      sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70, &unk_1CFA13B50);
      a3 = swift_allocError();
      *v13 = a1;
      *(v13 + 8) = v22[0];
      v14 = v22[3];
      v15 = v22[4];
      v16 = v22[2];
      *(v13 + 24) = v22[1];
      *(v13 + 72) = v15;
      *(v13 + 56) = v14;
      *(v13 + 40) = v16;
      *(v13 + 88) = 8;
      v17 = a1;
      return a3;
    }

    if (*(v4 + 208) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
      sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70, &unk_1CFA13B50);
      a3 = swift_allocError();
      *v18 = 7;
      *(v18 + 8) = 0u;
      *(v18 + 24) = 0u;
      *(v18 + 40) = 0u;
      *(v18 + 56) = 0u;
      *(v18 + 72) = 0u;
      *(v18 + 88) = 11;
      return a3;
    }
  }

  switch(a3)
  {
    case 0:
      return a3;
    case 1:
      sub_1CF2F462C();
      a3 = swift_allocError();
      *v19 = 0;
      *(v19 + 8) = 0;
      v20 = -2;
LABEL_12:
      *(v19 + 16) = v20;
      return a3;
    case 2:
      sub_1CF2F462C();
      a3 = swift_allocError();
      *v19 = 0;
      *(v19 + 8) = 0;
      v20 = -3;
      goto LABEL_12;
  }

  type metadata accessor for FPXPCAutomaticErrorProxyTimeout(0);
  *&v22[0] = a3;
  result = sub_1CF9E80C8();
  __break(1u);
  return result;
}

void *sub_1CF2E3014(void *a1, void *a2, char a3, uint64_t a4)
{
  v5 = v4;
  v7 = a1;
  v8 = sub_1CF2E2D0C(a1, a3, a4);
  if (!v8)
  {
    _s3__C4CodeOMa_1(0);
    *&v83 = -1001;
    sub_1CF2F1F24(&qword_1EDEA3590, _s3__C4CodeOMa_1, &unk_1CF9F77C0);
    if (sub_1CF9E5658())
    {
      v10 = sub_1CF9E57E8();
      v11 = [v10 fp_userInfoFPItem];

      if (v11)
      {
        v12 = [v11 itemID];
        v13 = [v12 identifier];

        v14 = [v11 filename];
        v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v17 = v16;

        *&v83 = v15;
        *(&v83 + 1) = v17;
        sub_1CEFE4E68();
        v18 = sub_1CF9E7668();
        v20 = v19;
        v17, v19, v21, v22, v23, v24, v25, v26;
        v27 = sub_1CF0689E4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
        sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70, &unk_1CFA13B50);
        v28 = swift_allocError();
        *v29 = v13;
        *(v29 + 8) = v18;
        *(v29 + 16) = v20;
        *(v29 + 24) = v27;
        *(v29 + 32) = xmmword_1CF9FEC20;
        v30 = v84;
        *(v29 + 56) = v83;
        *(v29 + 48) = v7;
        *(v29 + 72) = v30;
        *(v29 + 88) = 1;
        v31 = v7;

        return v28;
      }

LABEL_21:
      v81 = v7;
      return v7;
    }

    *&v83 = -1005;
    if ((sub_1CF9E5658() & 1) == 0)
    {
      *&v83 = -1007;
      if ((sub_1CF9E5658() & 1) == 0 || !a2)
      {
        goto LABEL_21;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
      sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70, &unk_1CFA13B50);
      v72 = swift_allocError();
      *v73 = a2;
      *(v73 + 8) = 0;
      *(v73 + 16) = v7;
      v75 = v85;
      v74 = v86;
      v76 = v83;
      *(v73 + 40) = v84;
      *(v73 + 24) = v76;
      *(v73 + 56) = v75;
      *(v73 + 72) = v74;
      *(v73 + 88) = 3;
      goto LABEL_20;
    }

    v32 = sub_1CF9E57E8();
    v33 = [v32 userInfo];

    v34 = sub_1CF9E6638();
    v35 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v43 = v36;
    if (*v34->tree)
    {
      v44 = sub_1CEFE4328(v35, v36);
      v46 = v45;
      v43, v45, v47, v48, v49, v50, v51, v52;
      if (v46)
      {
        sub_1CEFD1104(*v34[1].tester + 32 * v44, &v83);
        v34, v60, v61, v62, v63, v64, v65, v66;
        type metadata accessor for NSFileProviderItemIdentifier(0);
        if (swift_dynamicCast())
        {
          v67 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(v5 + 280) itemIdentifier:v82];
          v68 = [v67 identifier];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
          sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70, &unk_1CFA13B50);
          v69 = swift_allocError();
          *v70 = v68;
          *(v70 + 8) = 0;
          *(v70 + 16) = 0;
          *(v70 + 24) = 1;
          *(v70 + 32) = 0u;
          *(v70 + 48) = 0u;
          *(v70 + 64) = 0;
          *(v70 + 72) = v7;
          *(v70 + 80) = 0;
          *(v70 + 88) = 0;
          v71 = v7;
          return v69;
        }

        goto LABEL_18;
      }

      v77 = v34;
    }

    else
    {
      v34, v36, v37, v38, v39, v40, v41, v42;
      v77 = v43;
    }

    v77, v53, v54, v55, v56, v57, v58, v59;
LABEL_18:
    if (!a2)
    {
      goto LABEL_21;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
    sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70, &unk_1CFA13B50);
    v72 = swift_allocError();
    *v78 = a2;
    *(v78 + 8) = 0;
    *(v78 + 16) = 0;
    *(v78 + 24) = 1;
    *(v78 + 32) = 0u;
    *(v78 + 48) = 0u;
    *(v78 + 64) = 0;
    *(v78 + 72) = v7;
    *(v78 + 80) = 0;
    *(v78 + 88) = 0;
LABEL_20:
    v79 = v7;
    v80 = a2;
    return v72;
  }

  return v8;
}

uint64_t sub_1CF2E35A8(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  v7 = sub_1CF9E63D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  type metadata accessor for VFSStagedContext();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    return a2();
  }

  v18 = v17;
  v32 = v8;
  v33 = v7;
  v19 = *(v3 + 160);
  v37 = *(v3 + 168);
  v35 = v19;
  v20 = sub_1CF9E6448();
  v21 = *(v20 - 8);
  (*(v21 + 56))(v16, 1, 1, v20);
  v22 = swift_allocObject();
  v23 = a2;
  v24 = v22;
  v22[2] = v3;
  v22[3] = v18;
  v36 = v23;
  v22[4] = v23;
  v22[5] = a3;
  v39 = a1;
  swift_retain_n();

  v38 = a3;

  v25 = fpfs_current_log();
  v34 = *(v37 + 2);
  v37 = v16;
  sub_1CEFCCBDC(v16, v13, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v21 + 48))(v13, 1, v20) == 1)
  {
    sub_1CEFCCC44(v13, &unk_1EC4BE370, qword_1CFA01B30);
    v26 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    sub_1CF9E6438();
    (*(v21 + 8))(v13, v20);
    v26 = sub_1CF9E63C8();
    (*(v32 + 8))(v10, v33);
  }

  v28 = swift_allocObject();
  v28[2] = v25;
  v28[3] = sub_1CF2B068C;
  v28[4] = v24;
  v44 = sub_1CF2BA17C;
  v45 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1CEFCA444;
  v43 = &block_descriptor_385;
  v29 = _Block_copy(&aBlock);
  v30 = v25;

  v44 = v36;
  v45 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1CEFCA444;
  v43 = &block_descriptor_388;
  v31 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v34, v35, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v26, v29, v31);
  _Block_release(v31);
  _Block_release(v29);

  return sub_1CEFCCC44(v37, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF2E3A0C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *, uint64_t, void (*)(), void), uint64_t a8)
{
  v41 = a8;
  v39 = a7;
  v36[1] = a3;
  v48 = a2;
  v42 = a1;
  v11 = sub_1CF9E53C8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1CF9E5A58();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v36[0] = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v36[2] = a4;
  v37 = v36 - v17;
  if (a4 && (v18 = *(a5 + 136), v19 = *(v48 + 8), v20 = v18 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle, swift_beginAccess(), v19 == *(v20 + 32)))
  {
    sub_1CEFE528C(v44);
    v46[12] = v44[12];
    v46[13] = v44[13];
    v46[14] = v44[14];
    v47 = v45;
    v46[8] = v44[8];
    v46[9] = v44[9];
    v46[10] = v44[10];
    v46[11] = v44[11];
    v46[4] = v44[4];
    v46[5] = v44[5];
    v46[6] = v44[6];
    v46[7] = v44[7];
    v46[0] = v44[0];
    v46[1] = v44[1];
    v46[2] = v44[2];
    v46[3] = v44[3];
    v21 = *(v18 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext + 8);
    v23 = MEMORY[0x1EEE9AC00](v22).n128_u64[0];
    LODWORD(v36[-6]) = v42;
    HIDWORD(v36[-6]) = 0;
    v36[-5] = 1085184;
    v36[-4] = v24;
    v36[-3] = v21;
    v36[-2] = v23;
    LOBYTE(v36[-1]) = v25;
    BYTE1(v36[-1]) = v26;
    BYTE2(v36[-1]) = v27;
    BYTE3(v36[-1]) = 0;

    v28 = v43;
    sub_1CF9B8B08(v46, sub_1CF2B0C98, &v36[-8]);

    if (!v28)
    {
      v29 = v37;
      sub_1CF9E58B8();
      if (*(a6 + *(type metadata accessor for ItemMetadata(0) + 112)) & 1) != 0 && (sub_1CF2D07F4())
      {
        v30 = v41;

        sub_1CF2F36A0(v29, a6, a5, v39, v30);

        v31 = v40;
        v32 = v38;
      }

      else
      {
        sub_1CEFD57E0(0, &unk_1EDEA35A0, 0x1E6967408);
        v32 = v38;
        v33 = v36[0];
        v31 = v40;
        (*(v38 + 16))(v36[0], v29, v40);
        v34 = sub_1CF02BFF8(v33, 0);
        v35 = v34;
        v39(v34, 0, nullsub_1, 0);
      }

      (*(v32 + 8))(v29, v31);
    }
  }

  else
  {
    LODWORD(v44[0]) = 2;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2F1F24(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v12 + 8))(v14, v11);
    swift_willThrow();
  }
}

uint64_t sub_1CF2E3F04(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, __int128 *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v87 = a7;
  v88 = a6;
  v85 = a4;
  v76 = a2;
  v84 = a1;
  v83 = a10;
  v91 = a9;
  v86 = a12;
  v82 = a11;
  v71 = sub_1CF9E63D8();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *(a11 - 8);
  v16 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v73 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v78 = *(v18 - 8);
  v19 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v68 - v20;
  v72 = &v68 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v79 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v68 - v25;
  v92 = &v68 - v25;
  v27 = a5[3];
  v101 = a5[2];
  v102 = v27;
  v103 = *(a5 + 8);
  v28 = a5[1];
  v99 = *a5;
  v100 = v28;
  v29 = fpfs_current_log();
  v77 = v29;
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = a2;
  v90 = v12;
  v31 = v91;
  v30[4] = v12;
  v30[5] = v31;
  v30[6] = a10;
  v32 = v12[20];
  v80 = v12[21];
  v89 = v32;
  v74 = sub_1CF9E6448();
  v75 = *(v74 - 8);
  (*(v75 + 56))(v26, 1, 1, v74);
  v33 = swift_allocObject();
  v91 = v33;
  *(v33 + 16) = sub_1CF2F48E8;
  *(v33 + 24) = v30;
  sub_1CEFCCBDC(v84, v21, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v34 = v81;
  v35 = v82;
  (*(v81 + 16))(&v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v85, v82);
  v36 = (*(v78 + 80) + 56) & ~*(v78 + 80);
  v37 = (v19 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (*(v34 + 80) + v37 + 72) & ~*(v34 + 80);
  v78 = v38 + v16;
  v39 = (v38 + v16) & 0xFFFFFFFFFFFFFFF8;
  v84 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
  v85 = (v39 + 39) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = v86;
  *(v41 + 2) = v35;
  *(v41 + 3) = v42;
  *(v41 + 4) = v90;
  *(v41 + 5) = sub_1CF2F48E8;
  *(v41 + 6) = v30;
  v43 = &v41[v36];
  v44 = v79;
  sub_1CEFE55D0(v72, v43, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v45 = &v41[v37];
  v46 = v102;
  *(v45 + 2) = v101;
  *(v45 + 3) = v46;
  *(v45 + 8) = v103;
  v47 = v100;
  *v45 = v99;
  *(v45 + 1) = v47;
  (*(v34 + 32))(&v41[v38], v73, v35);
  v48 = v87;
  v41[v78] = (v87 & 2) != 0;
  *&v41[v39 + 8] = v76;
  v49 = &v41[v84];
  *v49 = v48;
  v49[8] = (v48 & 0x20) != 0;
  v50 = v88;
  *&v41[v85] = v88;
  v51 = v77;
  *&v41[v40] = v77;
  v52 = v75;
  v53 = swift_allocObject();
  v54 = v91;
  v53[2] = sub_1CF2F4918;
  v53[3] = v54;
  v55 = v80;
  v53[4] = v80;
  swift_retain_n();
  swift_retain_n();
  v90 = v30;
  swift_retain_n();
  v56 = v51;

  v87 = v56;
  sub_1CEFCCBDC(&v99, &aBlock, &qword_1EC4BF278, &unk_1CFA01B78);
  v57 = v50;

  v58 = fpfs_current_log();
  v59 = *(v55 + 16);
  sub_1CEFCCBDC(v92, v44, &unk_1EC4BE370, qword_1CFA01B30);
  v60 = v74;
  if ((*(v52 + 48))(v44, 1) == 1)
  {
    sub_1CEFCCC44(v44, &unk_1EC4BE370, qword_1CFA01B30);
    v61 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v62 = v69;
    sub_1CF9E6438();
    (*(v52 + 8))(v44, v60);
    v61 = sub_1CF9E63C8();
    (*(v70 + 8))(v62, v71);
  }

  v63 = swift_allocObject();
  v63[2] = v58;
  v63[3] = sub_1CF2F4954;
  v63[4] = v41;
  v97 = sub_1CF2BA17C;
  v98 = v63;
  aBlock = MEMORY[0x1E69E9820];
  v94 = 1107296256;
  v95 = sub_1CEFCA444;
  v96 = &block_descriptor_300;
  v64 = _Block_copy(&aBlock);
  v65 = v58;

  v97 = sub_1CF2BA180;
  v98 = v53;
  aBlock = MEMORY[0x1E69E9820];
  v94 = 1107296256;
  v95 = sub_1CEFCA444;
  v96 = &block_descriptor_303;
  v66 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v59, v89, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v61, v64, v66);
  _Block_release(v66);
  _Block_release(v64);

  return sub_1CEFCCC44(v92, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF2E47B0(void *a1, __C::NSFileProviderItemFields a2, unsigned __int8 a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(__int128 *))
{
  v16 = fpfs_adopt_log();
  if (a7)
  {
    type metadata accessor for VFSStagedContext();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v27 = a4;
      v18 = *(a8 + 136);
      MEMORY[0x1EEE9AC00](v17);
      swift_retain_n();
      sub_1CEFE1894(sub_1CF2B9F78);
      *(v18 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
      if (*(v18 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
      {
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        MEMORY[0x1D3869790](1, ObjectType);
        swift_unknownObjectRelease();
      }

      a4 = v27;
    }
  }

  Fields.init(_:)(a2);
  if (a5)
  {
    v33 = 1;
    *&v28 = a5;
    v32 = 1;
    v20 = a5;
    a9(&v28);
    v37 = *v31;
    v38 = *&v31[16];
    v39 = *&v31[32];
    v40 = v32;
    v34 = v28;
    v35 = v29;
    v36 = v30;
    sub_1CEFCCC44(&v34, &unk_1EC4BF2A0, &unk_1CFA01B90);
    v21 = fpfs_adopt_log();
  }

  else
  {
    v22 = v34;
    if (!a1)
    {
      v22 = 0;
    }

    v33 = 0;
    v23 = 0xB000000000000000;
    if (!a1)
    {
      v23 = 0;
    }

    *&v28 = a1;
    *(&v28 + 1) = v22;
    v29 = (a1 != 0) & a3;
    v30 = 0uLL;
    *v31 = v23;
    memset(&v31[8], 0, 32);
    *&v31[40] = a4;
    v32 = 0;
    v24 = a4;
    v25 = a1;
    a9(&v28);
    v37 = *v31;
    v38 = *&v31[16];
    v39 = *&v31[32];
    v40 = v32;
    v34 = v28;
    v35 = v29;
    v36 = v30;
    sub_1CEFCCC44(&v34, &unk_1EC4BF2A0, &unk_1CFA01B90);
    v21 = fpfs_adopt_log();
  }

  v26 = v21;
}

double sub_1CF2E4AE8(uint64_t a1, void (*a2)(void, void, void, void, void *), uint64_t a3, void **a4, __int128 *a5, uint64_t a6, int a7, uint64_t a8, unint64_t a9, unsigned __int8 a10, void *a11, void *a12, uint64_t a13, uint64_t a14)
{
  v173 = a8;
  v164 = a7;
  v170 = a6;
  v178 = a4;
  v174 = a14;
  v169 = a12;
  v172 = a11;
  LODWORD(v167) = a10;
  v165 = a9;
  v18 = *(a13 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v20 = &v151 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = v19;
  MEMORY[0x1EEE9AC00](v21);
  v176 = &v151 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v166 = *(v23 - 8);
  v24 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v177 = &v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v175 = &v151 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v151 - v28;
  if (*(a1 + 192))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
    sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70, &unk_1CFA13B50);
    v30 = swift_allocError();
    *v31 = 0;
    *(v31 + 8) = v180;
    v32 = v183;
    v33 = v184;
    v34 = v182;
    *(v31 + 24) = v181;
    *(v31 + 72) = v33;
    *(v31 + 56) = v32;
    *(v31 + 40) = v34;
    *(v31 + 88) = 8;
    a2(0, 0, 0, 0, v30);
  }

  else
  {
    v171 = v18;
    v160 = a1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v162 = Strong;
      v159 = v20;
      v157 = a3;
      v158 = a2;
      if (qword_1EDEABDE0 != -1)
      {
        swift_once();
      }

      v37 = v178 + *(v23 + 40);
      if (*v37 == 1)
      {
        v38 = qword_1EDEABDE8 & 0xFFFFFFFFFFFFFFF7;
      }

      else
      {
        v38 = qword_1EDEABDE8;
      }

      v39 = type metadata accessor for ItemMetadata(0);
      v40 = v39;
      if (*&v37[*(v39 + 132)])
      {
        v41 = v38;
      }

      else
      {
        v41 = v38 & 0xFFFFFFFFFFFFFEFFLL;
      }

      sub_1CEFCCBDC(&v37[*(v39 + 120)], v29, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v42 = sub_1CF9E5CF8();
      v43 = (*(*(v42 - 8) + 48))(v29, 1, v42);
      sub_1CEFCCC44(v29, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v44 = v41 & 0xFFFFFFFFFFFFFFDFLL;
      if (v43 != 1)
      {
        v44 = v41;
      }

      v154 = v40;
      v45 = *(v40 + 128);
      if (!*&v37[*(v40 + 124)])
      {
        v44 &= ~0x40uLL;
      }

      v156 = v37;
      if (v37[v45 + 8])
      {
        v46 = v44 & 0xFFFFFFFFFFFFFF7FLL;
      }

      else
      {
        v46 = v44;
      }

      v47 = *a5;
      v163 = a13;
      v153 = v47;
      if (v47)
      {
        v161 = *(a5 + 8);
        v49 = *(a5 + 5);
        v48 = *(a5 + 6);
        v51 = *(a5 + 3);
        v52 = *(a5 + 1);
        v53 = *(a5 + 2);
        v54 = a5[1];
        v55 = a5[3];
        v182 = a5[2];
        v50 = v182;
        v183 = v55;
        *&v184 = *(a5 + 8);
        v180 = *a5;
        v181 = v54;
        sub_1CEFCCBDC(&v180, v179, &unk_1EC4BF280, &qword_1CFA01B88);
        sub_1CEFE4714(v52, v53);
        v51, v56, v57, v58, v59, v60, v61, v62;
        sub_1CEFE4714(v50, v49);
        v48, v63, v64, v65, v66, v67, v68, v69;
        v161, v70, v71, v72, v73, v74, v75, v76;
        v77 = v47;
      }

      else
      {
        v77 = sub_1CF2CB460(v170, 1, a13, v174);
      }

      v79 = swift_allocObject();
      v80 = *(v160 + 280);
      *&v180 = v46;
      v81 = v162;
      v82 = v162;
      v83 = sub_1CEFE5A60(v77, v80, v81, v178, &v180, 1);
      v161 = v84;

      v155 = v82;
      v162 = v79;
      v79[2] = v83;
      v86 = *(a5 + 1);
      v85 = *(a5 + 2);
      v87 = *(a5 + 4);
      v88 = *(a5 + 5);
      v89 = *(a5 + 8);
      v90 = v83;
      if (v153)
      {
        sub_1CEFE42D4(v86, v85);
        sub_1CEFE42D4(v87, v88);
        v153 = sub_1CF9E5B48();
        v91 = sub_1CF9E5B48();
        v152 = v90;
        if (v89)
        {
          v92 = sub_1CF9E6888();
        }

        else
        {
          v92 = 0;
        }

        v95 = objc_allocWithZone(MEMORY[0x1E69674E8]);
        v96 = v153;
        v93 = [v95 initWithContentVersion:v153 metadataVersion:v91 lastEditorDeviceName:v92];

        sub_1CEFE4714(v87, v88);
        sub_1CEFE4714(v86, v85);
        v94 = v159;
        v90 = v152;
      }

      else
      {
        v93 = 0;
        v94 = v159;
      }

      [v90 setItemVersion_];

      v97 = v163;
      if ((v164 & 1) != 0 && !v173)
      {
        v98 = v161;
        *&v180 = v161 & 1;
        type metadata accessor for NSFileProviderItemFields(0);
        sub_1CF2F1F24(&qword_1EC4BD1B8, type metadata accessor for NSFileProviderItemFields, &unk_1CF9F6070);
        v94 = v159;
        if ((sub_1CF9E7798() & 1) == 0)
        {
          v98 &= ~1uLL;
        }

        v161 = v98;
      }

      v99 = sub_1CF2F1C10(v165 | 1);
      if (*a5)
      {
        v100 = v99 | 2;
      }

      else
      {
        v100 = v99;
      }

      if (v167)
      {
        v100 = v99 | 2;
      }

      v167 = v100;
      v165 = v162[2];
      v101 = v175;
      sub_1CEFCCBDC(v178, v175, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
      v102 = v171;
      v103 = *(v171 + 16);
      v104 = v176;
      v103(v176, v170, v97);
      sub_1CEFCCBDC(v101, v177, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
      v103(v94, v104, v97);
      v105 = (*(v166 + 80) + 64) & ~*(v166 + 80);
      v106 = (v24 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
      v107 = (v106 + 15) & 0xFFFFFFFFFFFFFFF8;
      v108 = (v107 + 15) & 0xFFFFFFFFFFFFFFF8;
      v109 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
      v110 = (*(v102 + 80) + v109 + 8) & ~*(v102 + 80);
      v111 = swift_allocObject();
      v112 = v174;
      *(v111 + 2) = v163;
      *(v111 + 3) = v112;
      v113 = v160;
      v114 = v158;
      *(v111 + 4) = v160;
      *(v111 + 5) = v114;
      v115 = v172;
      *(v111 + 6) = v157;
      *(v111 + 7) = v115;
      sub_1CEFE55D0(v175, &v111[v105], &qword_1EC4BE9F8, &unk_1CF9FEFE0);
      *&v111[v106] = v162;
      *&v111[v107] = v161;
      *&v111[v108] = v167;
      v116 = v163;
      v117 = v169;
      *&v111[v109] = v169;
      (*(v171 + 32))(&v111[v110], v176, v116);
      LODWORD(v107) = v156[*(v154 + 112)];
      v118 = v115;

      v119 = v165;
      v120 = v117;

      if (v107 == 1 && (sub_1CF2D07F4() & 1) != 0)
      {
        v121 = [v119 filename];
        v122 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v124 = v123;

        *&v180 = v122;
        *(&v180 + 1) = v124;
        MEMORY[0x1D3868CC0](46, 0xE100000000000000);
        v125 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v127 = v126;
        MEMORY[0x1D3868CC0](v125);
        v127, v128, v129, v130, v131, v132, v133, v134;
        v135 = *(&v180 + 1);
        v136 = sub_1CF9E6888();
        v135, v137, v138, v139, v140, v141, v142, v143;
        [v119 setFilename_];
      }

      if (v173 && (type metadata accessor for VFSStagedContext(), (v144 = swift_dynamicCastClass()) != 0))
      {
        v145 = v144;
        MEMORY[0x1EEE9AC00](v144);
        v150[2] = v113;
        v150[3] = v156;
        v150[4] = sub_1CF2F4AA8;
        v150[5] = v111;

        sub_1CF2EF290(v145, 0x200000, sub_1CF2F4BF4, v150, v146);

        v147 = v171;
        v148 = v159;
        v149 = v177;
      }

      else
      {
        v148 = v159;
        v149 = v177;
        sub_1CF2E583C(0, 0, nullsub_1, 0, v113, v158, v157, v172, v177, v162, v161, v167, v117, v159, v116, v174);

        v147 = v171;
      }

      sub_1CEFCCC44(v149, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
      (*(v147 + 8))(v148, v116);
    }

    else
    {
      sub_1CF2CA194();
      v78 = swift_allocError();
      a2(0, 0, 0, 0, v78);
    }
  }

  return result;
}

void sub_1CF2E583C(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void *a5, uint64_t (*a6)(void, void, void, void, void *), uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v102 = a8;
  v104 = a7;
  v101 = a6;
  v103 = a4;
  v100 = a3;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v86 - v20;
  v22 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1CF9E64A8();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = (v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = a5[20];
  *v29 = v30;
  v32 = v26 + 104;
  v31 = *(v26 + 104);
  v97 = *MEMORY[0x1E69E8020];
  v96 = v31;
  v31(v29, v27);
  v94 = v30;
  LOBYTE(v30) = sub_1CF9E64D8();
  v34 = *(v26 + 8);
  v33 = v26 + 8;
  v95 = v34;
  v34(v29, v25);
  if ((v30 & 1) == 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (a2)
  {
    v35 = v101(0, 0, 0, 0, a1);
    v100(v35);
    return;
  }

  v36 = swift_allocObject();
  v98 = v36;
  *(v36 + 16) = nullsub_1;
  v86[1] = v36 + 16;
  *(v36 + 24) = 0;
  v89 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
  [v89 setDomainVersion_];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  sub_1CEFF4408(a9 + *(v37 + 40), v24);
  v87 = v25;
  v93 = a1;
  if (a1)
  {
    v38 = [a1 url];
    sub_1CF9E59D8();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v92 = a12;
  v91 = a11;
  v40 = sub_1CF9E5A58();
  (*(*(v40 - 8) + 56))(v21, v39, 1, v40);
  v41 = sub_1CF2D07F4();
  v42 = sub_1CF2F2B2C(v24, v21, v41 & 1);
  v44 = v43;
  sub_1CEFCCC44(v21, &unk_1EC4BE310, qword_1CF9FCBE0);
  sub_1CF007B98(v24, type metadata accessor for ItemMetadata);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v46 = Strong;
  if (![Strong userEnabled])
  {

LABEL_11:
    v47 = sub_1CF2F1F6C();
    goto LABEL_12;
  }

  v47 = [objc_msgSend(v46 session)];

  swift_unknownObjectRelease();
LABEL_12:
  swift_beginAccess();
  v48 = *(a10 + 16);
  v49 = swift_unknownObjectWeakLoadStrong();
  v90 = v48;
  v86[3] = v32;
  v86[2] = v33;
  v88 = v29;
  if (v49 && (v50 = [v49 session], v49, v50))
  {
    v51 = a5;
    v52 = v47;
    v53 = [objc_opt_self() requestForSelf];
    v54 = [v53 nsfpRequestForSession:v50 isSpeculative:0];

    v47 = v52;
    a5 = v51;
    v55 = v102;
    [v54 setDomainVersion_];
    swift_unknownObjectRelease();
  }

  else
  {
    v54 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
    v55 = v102;
  }

  v99 = v47;
  v56 = swift_allocObject();
  v56[2] = a5;
  v56[3] = a13;
  v56[4] = v55;
  v56[5] = a10;
  v58 = v103;
  v57 = v104;
  v56[6] = v100;
  v56[7] = v58;
  v59 = v101;
  v56[8] = v98;
  v56[9] = v59;
  v56[10] = v57;
  v56[11] = v47;
  aBlock[4] = sub_1CF2F5044;
  aBlock[5] = v56;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF2E25F8;
  aBlock[3] = &block_descriptor_371_0;
  v60 = _Block_copy(aBlock);
  v61 = a13;
  v62 = v55;
  v102 = a5;

  swift_unknownObjectRetain();
  v63 = v99;

  v64 = v90;
  v65 = [v63 createItemBasedOnTemplate:v90 fields:v91 contents:v93 options:v92 request:v54 bounce:0 completionHandler:v60];
  _Block_release(v60);

  if (!v65)
  {

    swift_unknownObjectRelease();

    return;
  }

  v66 = v65;
  swift_beginAccess();
  v67 = [*(a10 + 16) documentSize];
  if (v67)
  {
    v68 = v67;
    v69 = [v67 longLongValue];
  }

  else
  {
    v69 = 0;
  }

  v70 = v88;
  v71 = v102;
  v72 = v102[15];
  if (!v72)
  {
    goto LABEL_25;
  }

  v73 = v102[16];

  v74 = sub_1CF2CB460(a14, 1, a15, a16);
  v75 = *MEMORY[0x1E696A870];
  v106[0] = v74;
  v76 = v72(v106, v66, v75, v69);
  v78 = v77;

  sub_1CEFF7124(v72, v73);
  if (!v76)
  {
    goto LABEL_25;
  }

  v79 = v94;
  *v70 = v94;
  v80 = v87;
  v96(v70, v97, v87);
  v81 = v79;
  LOBYTE(v79) = sub_1CF9E64D8();
  v95(v70, v80);
  if ((v79 & 1) == 0)
  {
LABEL_28:
    __break(1u);
    return;
  }

  swift_beginAccess();
  v82 = v98;
  *(v98 + 16) = v76;
  *(v82 + 24) = v78;

  v71 = v102;
LABEL_25:
  swift_beginAccess();
  v83 = [*(a10 + 16) itemIdentifier];
  swift_beginAccess();
  v84 = v66;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v105 = v71[23];
  v71[23] = 0x8000000000000000;
  sub_1CF1D2120(v84, v83, isUniquelyReferenced_nonNull_native);

  v71[23] = v105;
  swift_endAccess();

  swift_unknownObjectRelease();
}

double sub_1CF2E6174(void *a1, uint64_t a2, char a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  *(v19 + 24) = a4;
  *(v19 + 32) = a8;
  *(v19 + 40) = a9;
  *(v19 + 48) = a10;
  *(v19 + 56) = a11;
  *(v19 + 64) = a12;
  *(v19 + 72) = a1;
  *(v19 + 80) = a5;
  *(v19 + 88) = a13;
  *(v19 + 96) = a14;
  *(v19 + 104) = a15;
  *(v19 + 112) = a2;
  *(v19 + 120) = a3;

  v20 = a4;
  v21 = a8;

  v22 = a1;
  v23 = a5;

  swift_unknownObjectRetain();
  sub_1CF01001C(a7, "create(_:with:capturedContent:from:reviving:domainVersion:options:nonSyncableAttributes:completion:)", 100, 2, sub_1CF2F5088, v19);

  return result;
}

void sub_1CF2E62C8(uint64_t a1, void *a2, void *a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, void *a8, void *a9, void (*a10)(void *, uint64_t, void, id, void *), uint64_t a11, void *a12, uint64_t a13, char a14)
{
  sub_1CF041B2C(a2, a3);
  swift_beginAccess();
  v19 = [*(a4 + 16) itemIdentifier];
  swift_beginAccess();
  sub_1CF1C8F90(0, v19);
  v20 = swift_endAccess();
  a5(v20);
  swift_beginAccess();
  v21 = *(a7 + 16);

  v21(v22);

  sub_1CF2D1564(a8);
  if (a9)
  {
    v23 = a9;
    v24 = sub_1CF2E3014(a9, 0, 1, [a12 timeoutState]);
    a10(0, 0, 0, 0, v24);
  }

  else
  {
    v25 = [a2 domainVersion];
    a10(a8, a13, a14 & 1, v25, 0);
  }
}

void sub_1CF2E64A8(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v46 = a3;
  v11 = sub_1CF9E64A8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a1 + 160);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11, v13);
  v17 = v16;
  LOBYTE(v16) = sub_1CF9E64D8();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    if (*(a2 + 3) >> 60 == 11)
    {
      type metadata accessor for StagedContext();
      v18 = swift_allocObject();
    }

    else
    {
      v44[1] = a6;
      v45 = a5;
      v19 = *(a1 + 136);
      v20 = a2[1];
      v52 = *a2;
      v53 = v20;
      v21 = a2[3];
      v54 = a2[2];
      v55 = v21;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
      v23 = *(a4 + 192);
      v24 = *(a4 + 224);
      v50[13] = *(a4 + 208);
      v50[14] = v24;
      v25 = *(a4 + 128);
      v26 = *(a4 + 160);
      v27 = *(a4 + 176);
      v50[9] = *(a4 + 144);
      v50[10] = v26;
      v50[11] = v27;
      v50[12] = v23;
      v28 = *(a4 + 64);
      v29 = *(a4 + 96);
      v30 = *(a4 + 112);
      v50[5] = *(a4 + 80);
      v50[6] = v29;
      v50[7] = v30;
      v50[8] = v25;
      v31 = *(a4 + 16);
      v50[0] = *a4;
      v50[1] = v31;
      v32 = *(a4 + 48);
      v50[2] = *(a4 + 32);
      v44[0] = *(v22 + 40);
      v51 = *(a4 + 240);
      v50[3] = v32;
      v50[4] = v28;
      v33 = v46;
      v34 = *(v46 + 16);
      v48 = *(v46 + 8);
      v49 = v34;
      v35 = *(*v19 + 448);
      sub_1CEFCCBDC(a2, v47, &unk_1EC4BF260, &unk_1CFA01B60);
      sub_1CEFCCBDC(a2, v47, &unk_1EC4BF260, &unk_1CFA01B60);

      v36 = v35(&v52, v33 + v44[0], v50, &v48, 0, 0);
      sub_1CEFCCC44(a2, &unk_1EC4BF260, &unk_1CFA01B60);
      v49, v37, v38, v39, v40, v41, v42, v43;
      v47[0] = v52;
      v47[1] = v53;
      v47[2] = v54;
      v47[3] = v55;
      sub_1CEFCCC44(v47, &unk_1EC4BF260, &unk_1CFA01B60);

      v18 = v36;
      a5 = v45;
    }

    a5(v18, 0);
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF2E691C(__int128 *a1, uint64_t a2, __int128 *a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  v73 = a4;
  v72 = a5;
  v8 = sub_1CF9E63D8();
  v69 = *(v8 - 8);
  v70 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v11 = v10 - 8;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = a1[1];
  v81 = *a1;
  v82 = v21;
  v22 = a1[3];
  v83 = a1[2];
  v84 = v22;
  v23 = a3[3];
  v87 = a3[2];
  v88 = v23;
  v24 = a3[7];
  v91 = a3[6];
  v92 = v24;
  v25 = a3[5];
  v89 = a3[4];
  v90 = v25;
  v26 = a3[11];
  v95 = a3[10];
  v96 = v26;
  v27 = a3[9];
  v93 = a3[8];
  v94 = v27;
  v100 = *(a3 + 30);
  v28 = a3[14];
  v98 = a3[13];
  v99 = v28;
  v97 = a3[12];
  v29 = a3[1];
  v85 = *a3;
  v86 = v29;
  if (*(a2 + *(v11 + 48)) == 1)
  {
    type metadata accessor for StagedContext();
    v30 = swift_allocObject();
    v73(v30, 0);
  }

  else
  {
    v31 = *(v74 + 160);
    v65 = *(v74 + 168);
    v67 = v31;
    v32 = v12;
    v33 = &v64 - v20;
    v71 = &v64 - v20;
    v66 = sub_1CF9E6448();
    v64 = *(v66 - 8);
    (*(v64 + 56))(v33, 1, 1, v66);
    v34 = swift_allocObject();
    v35 = v18;
    v37 = v72;
    v36 = v73;
    *(v34 + 16) = v73;
    *(v34 + 24) = v37;
    sub_1CEFCCBDC(a2, v15, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
    v38 = (*(v32 + 80) + 104) & ~*(v32 + 80);
    v39 = (v13 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    *(v40 + 16) = v74;
    *(v40 + 24) = v36;
    v41 = v35;
    *(v40 + 32) = v37;
    v42 = v82;
    *(v40 + 40) = v81;
    *(v40 + 56) = v42;
    v43 = v84;
    *(v40 + 72) = v83;
    *(v40 + 88) = v43;
    v44 = v40 + v38;
    v45 = v64;
    sub_1CEFE55D0(v15, v44, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
    v46 = v40 + v39;
    v47 = v98;
    *(v46 + 192) = v97;
    *(v46 + 208) = v47;
    *(v46 + 224) = v99;
    *(v46 + 240) = v100;
    v48 = v94;
    *(v46 + 128) = v93;
    *(v46 + 144) = v48;
    v49 = v96;
    *(v46 + 160) = v95;
    *(v46 + 176) = v49;
    v50 = v90;
    *(v46 + 64) = v89;
    *(v46 + 80) = v50;
    v51 = v92;
    *(v46 + 96) = v91;
    *(v46 + 112) = v51;
    v52 = v86;
    *v46 = v85;
    *(v46 + 16) = v52;
    v53 = v88;
    *(v46 + 32) = v87;
    *(v46 + 48) = v53;
    v54 = swift_allocObject();
    v54[2] = sub_1CEFF9D98;
    v54[3] = v34;
    v55 = v65;
    v54[4] = v65;
    swift_retain_n();

    sub_1CEFCCBDC(&v81, &v75, &unk_1EC4BF260, &unk_1CFA01B60);
    sub_1CEFCCBDC(&v85, &v75, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    v74 = v34;
    v56 = v66;

    v57 = fpfs_current_log();
    v73 = *(v55 + 16);
    sub_1CEFCCBDC(v71, v41, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v45 + 48))(v41, 1, v56) == 1)
    {
      sub_1CEFCCC44(v41, &unk_1EC4BE370, qword_1CFA01B30);
      v58 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v59 = v68;
      sub_1CF9E6438();
      (*(v45 + 8))(v41, v56);
      v58 = sub_1CF9E63C8();
      (*(v69 + 8))(v59, v70);
    }

    v60 = swift_allocObject();
    v60[2] = v57;
    v60[3] = sub_1CF2F48D0;
    v60[4] = v40;
    v79 = sub_1CF2BA17C;
    v80 = v60;
    v75 = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v77 = sub_1CEFCA444;
    v78 = &block_descriptor_277;
    v61 = _Block_copy(&v75);
    v62 = v57;

    v79 = sub_1CF2F671C;
    v80 = v54;
    v75 = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v77 = sub_1CEFCA444;
    v78 = &block_descriptor_280;
    v63 = _Block_copy(&v75);

    fp_task_tracker_async_and_qos(v73, v67, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v58, v61, v63);
    _Block_release(v63);
    _Block_release(v61);

    sub_1CEFCCC44(v71, &unk_1EC4BE370, qword_1CFA01B30);
  }
}

void sub_1CF2E7018(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6)
{
  v12 = sub_1CF9E64A8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 192))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
    sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70, &unk_1CFA13B50);
    v17 = swift_allocError();
    *v18 = 0;
    *(v18 + 8) = v56;
    v19 = v59;
    v20 = v60;
    v21 = v58;
    *(v18 + 24) = v57;
    *(v18 + 72) = v20;
    *(v18 + 56) = v19;
    *(v18 + 40) = v21;
    *(v18 + 88) = 8;
    a2(v17, 1);
  }

  else
  {
    v51 = a3;
    v52 = a2;
    v22 = *(a1 + 160);
    *v16 = v22;
    (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12, v14);
    v23 = v22;
    LOBYTE(v22) = sub_1CF9E64D8();
    (*(v13 + 8))(v16, v12);
    if (v22)
    {
      if (*(a4 + 3) >> 60 == 11)
      {
        type metadata accessor for StagedContext();
        v24 = swift_allocObject();
      }

      else
      {
        v25 = *(a1 + 136);
        v26 = a4[1];
        v72 = *a4;
        v73 = v26;
        v27 = a4[3];
        v74 = a4[2];
        v75 = v27;
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
        v29 = a6[12];
        v30 = a6[14];
        v69 = a6[13];
        v70 = v30;
        v31 = a6[8];
        v32 = a6[10];
        v33 = a6[11];
        v65 = a6[9];
        v66 = v32;
        v67 = v33;
        v68 = v29;
        v34 = a6[4];
        v35 = a6[6];
        v36 = a6[7];
        v61 = a6[5];
        v62 = v35;
        v63 = v36;
        v64 = v31;
        v37 = a6[1];
        v56 = *a6;
        v57 = v37;
        v38 = a6[3];
        v58 = a6[2];
        v50 = *(v28 + 40);
        v71 = *(a6 + 30);
        v59 = v38;
        v60 = v34;
        v39 = *(a5 + 16);
        v54 = *(a5 + 8);
        v55 = v39;
        v40 = *(*v25 + 448);
        sub_1CEFCCBDC(a4, v53, &unk_1EC4BF260, &unk_1CFA01B60);
        sub_1CEFCCBDC(a4, v53, &unk_1EC4BF260, &unk_1CFA01B60);

        v41 = v40(&v72, a5 + v50, &v56, &v54, 1, 0);
        sub_1CEFCCC44(a4, &unk_1EC4BF260, &unk_1CFA01B60);
        v55, v42, v43, v44, v45, v46, v47, v48;
        v53[0] = v72;
        v53[1] = v73;
        v53[2] = v74;
        v53[3] = v75;
        sub_1CEFCCC44(v53, &unk_1EC4BF260, &unk_1CFA01B60);

        v24 = v41;
      }

      v52(v24, 0);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1CF2E752C(void *a1, int a2, __int128 *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v52 = a4;
  LODWORD(v50) = a2;
  v46 = sub_1CF9E63D8();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v48 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  v19 = a3[1];
  v59 = *a3;
  v60 = v19;
  v20 = a3[3];
  v61 = a3[2];
  v62 = v20;
  v21 = *(v7 + 168);
  v51 = *(v7 + 160);
  v22 = sub_1CF9E6448();
  v47 = *(v22 - 8);
  (*(v47 + 56))(v18, 1, 1, v22);
  v23 = swift_allocObject();
  v24 = a6;
  *(v23 + 16) = a6;
  *(v23 + 24) = a7;
  v25 = a7;
  v26 = swift_allocObject();
  *(v26 + 16) = v8;
  *(v26 + 24) = a1;
  v27 = v60;
  *(v26 + 32) = v59;
  *(v26 + 48) = v27;
  v28 = v62;
  *(v26 + 64) = v61;
  *(v26 + 80) = v28;
  *(v26 + 96) = v50;
  v29 = v52;
  *(v26 + 104) = v52;
  *(v26 + 112) = v24;
  *(v26 + 120) = v25;
  v30 = swift_allocObject();
  v30[2] = sub_1CF2F474C;
  v30[3] = v23;
  v49 = v30;
  v30[4] = v21;
  v31 = v48;
  swift_retain_n();

  v32 = a1;
  v33 = v47;
  sub_1CEFCCBDC(&v59, &aBlock, &unk_1EC4BF250, &unk_1CFA01B50);
  v34 = v29;

  v35 = fpfs_current_log();
  v50 = *(v21 + 16);
  v52 = v18;
  sub_1CEFCCBDC(v18, v31, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v33 + 48))(v31, 1, v22) == 1)
  {
    sub_1CEFCCC44(v31, &unk_1EC4BE370, qword_1CFA01B30);
    v36 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v37 = v44;
    sub_1CF9E6438();
    (*(v33 + 8))(v31, v22);
    v36 = sub_1CF9E63C8();
    (*(v45 + 8))(v37, v46);
  }

  v38 = swift_allocObject();
  v38[2] = v35;
  v38[3] = sub_1CF2F4780;
  v38[4] = v26;
  v57 = sub_1CF2BA17C;
  v58 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v54 = 1107296256;
  v55 = sub_1CEFCA444;
  v56 = &block_descriptor_249;
  v39 = _Block_copy(&aBlock);
  v40 = v35;

  v57 = sub_1CF2F4798;
  v58 = v49;
  aBlock = MEMORY[0x1E69E9820];
  v54 = 1107296256;
  v55 = sub_1CEFCA444;
  v56 = &block_descriptor_252;
  v41 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v50, v51, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v36, v39, v41);
  _Block_release(v41);
  _Block_release(v39);

  return sub_1CEFCCC44(v52, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF2E7A60(uint64_t a1, void *a2, __int128 *a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v37 = fpfs_current_log();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v12 = Strong;
  if (![Strong userEnabled])
  {

LABEL_10:
    v17 = sub_1CF2F1F6C();
    goto LABEL_11;
  }

  v13 = [v12 session];
  v14 = [objc_opt_self() defaultStore];
  if ([v14 hasUpcallExecutionTimeLimits])
  {
    goto LABEL_7;
  }

  if (qword_1EC4BCCF0 != -1)
  {
    swift_once();
  }

  v15 = -1.0;
  if (byte_1EC4BF020 == 1)
  {
LABEL_7:
    [v14 upcallExecutionTimeLimitBase];
    v15 = v16;
  }

  v17 = [v13 newFileProviderProxyWithTimeout:0 pid:v15];
  swift_unknownObjectRelease();
LABEL_11:
  v35 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(a1 + 280) itemIdentifier:a2];
  v18 = *a3;
  v41 = *(a3 + 24);
  v42 = v18;
  v19 = *(a3 + 7);
  sub_1CF2F47F0(&v42, aBlock);
  sub_1CF2F47F0(&v41, aBlock);
  v20 = sub_1CF9E5B48();
  v21 = sub_1CF9E5B48();
  if (v19)
  {
    v22 = sub_1CF9E6888();
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v20 metadataVersion:v21 lastEditorDeviceName:v22];

  sub_1CF2F484C(&v41);
  sub_1CF2F484C(&v42);
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24 && (v25 = v24, v26 = [v24 session], v25, v26))
  {
    v27 = [objc_opt_self() requestForSelf];
    v28 = [v27 nsfpRequestForSession:v26 isSpeculative:0];

    [v28 setDomainVersion_];
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = [objc_allocWithZone(MEMORY[0x1E6967518]) init];
  }

  v29 = swift_allocObject();
  v29[2] = a1;
  v29[3] = v37;
  v29[4] = a5;
  v29[5] = a6;
  v29[6] = a7;
  v29[7] = a2;
  v29[8] = v17;
  aBlock[4] = sub_1CF2F48A0;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFF99E0;
  aBlock[3] = &block_descriptor_258_0;
  v30 = _Block_copy(aBlock);

  v31 = v37;
  v32 = a5;

  v33 = a2;
  swift_unknownObjectRetain();

  v34 = [v17 deleteItemWithID:v35 baseVersion:v23 options:a4 & 1 request:v28 completionHandler:v30];
  swift_unknownObjectRelease();

  _Block_release(v30);
}

double sub_1CF2E7E8C(void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a1;
  v17[4] = a5;
  v17[5] = a2;
  v17[6] = a6;
  v17[7] = a7;
  v17[8] = a8;
  v17[9] = a9;

  v18 = a1;
  v19 = a5;
  v20 = a2;

  v21 = a8;
  swift_unknownObjectRetain();
  sub_1CF01001C(a4, "delete(_:recursively:baseVersion:domainVersion:oldVersionCapturedContent:completion:)", 85, 2, sub_1CF2F48B8, v17);

  return result;
}

void sub_1CF2E7F98(uint64_t a1, void *a2, void *a3, void *a4, void (*a5)(id, id, uint64_t), uint64_t a6, void *a7, void *a8)
{
  sub_1CF041B2C(a2, a3);
  if (a4)
  {
    _s3__C4CodeOMa_1(0);
    v13 = a4;
    sub_1CF2F1F24(&qword_1EDEA3590, _s3__C4CodeOMa_1, &unk_1CF9F77C0);
    if ((sub_1CF9E5658() & 1) != 0 && (v14 = sub_1CF9E57E8(), v15 = [v14 fp_userInfoFPItem], v14, v15))
    {
      v16 = v15;
      sub_1CF2D1564(v15);
      v17 = [a2 domainVersion];
      a5(v15, v17, 0);
    }

    else
    {
      v18 = sub_1CF2E3014(a4, a7, 0, [a8 timeoutState]);
      a5(v18, 0, 1);
    }
  }

  else
  {
    v19 = [a2 domainVersion];
    a5(0, v19, 0);
  }
}

uint64_t sub_1CF2E81B0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = sub_1CF9E63D8();
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  v15 = a1[1];
  v46 = *a1;
  v47 = v15;
  v16 = a1[3];
  v48 = a1[2];
  v49 = v16;
  v17 = *(v4 + 168);
  v38 = *(v4 + 160);
  v18 = sub_1CF9E6448();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v14, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  v22 = v47;
  *(v21 + 24) = v46;
  *(v21 + 40) = v22;
  v23 = v49;
  *(v21 + 56) = v48;
  *(v21 + 72) = v23;
  *(v21 + 88) = a2;
  *(v21 + 96) = a3;
  v24 = swift_allocObject();
  v24[2] = sub_1CF2BA174;
  v24[3] = v20;
  v24[4] = v17;
  swift_retain_n();

  sub_1CF1AE1DC(&v46, &aBlock);

  v25 = fpfs_current_log();
  v26 = *(v17 + 16);
  v39 = v14;
  sub_1CEFCCBDC(v14, v11, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    sub_1CEFCCC44(v11, &unk_1EC4BE370, qword_1CFA01B30);
    v27 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v28 = v35;
    sub_1CF9E6438();
    (*(v19 + 8))(v11, v18);
    v27 = sub_1CF9E63C8();
    (*(v36 + 8))(v28, v37);
  }

  v29 = swift_allocObject();
  v29[2] = v25;
  v29[3] = sub_1CF2F46FC;
  v29[4] = v21;
  v44 = sub_1CF2BA17C;
  v45 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1CEFCA444;
  v43 = &block_descriptor_227;
  v30 = _Block_copy(&aBlock);
  v31 = v25;

  v44 = sub_1CF2BA180;
  v45 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1CEFCA444;
  v43 = &block_descriptor_230;
  v32 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v26, v38, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v27, v30, v32);
  _Block_release(v32);
  _Block_release(v30);

  return sub_1CEFCCC44(v39, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2E8670(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  if (*a2)
  {
    v4 = *(a1 + 136);
    MEMORY[0x1EEE9AC00](a1);
    sub_1CEFE1894(sub_1CF2AF9F4);
    *(v4 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
    if (*(v4 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);
      swift_unknownObjectRelease();
    }
  }

  return a3(0);
}

uint64_t sub_1CF2E8794(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1CF9E63D8();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = *(v3 + 168);
  v33 = *(v3 + 160);
  v15 = sub_1CF9E6448();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v13, 1, 1, v15);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = swift_allocObject();
  v18[2] = v3;
  v18[3] = a1;
  v18[4] = a2;
  v19 = swift_allocObject();
  v19[2] = sub_1CF2AF9D0;
  v19[3] = v17;
  v19[4] = v14;
  swift_retain_n();

  v20 = fpfs_current_log();
  v21 = *(v14 + 16);
  v34 = v13;
  sub_1CEFCCBDC(v13, v10, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_1CEFCCC44(v10, &unk_1EC4BE370, qword_1CFA01B30);
    v22 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v23 = v30;
    sub_1CF9E6438();
    (*(v16 + 8))(v10, v15);
    v22 = sub_1CF9E63C8();
    (*(v31 + 8))(v23, v32);
  }

  v24 = swift_allocObject();
  v24[2] = v20;
  v24[3] = sub_1CF2F46E4;
  v24[4] = v18;
  v39 = sub_1CF2BA17C;
  v40 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_1CEFCA444;
  v38 = &block_descriptor_200_0;
  v25 = _Block_copy(&aBlock);
  v26 = v20;

  v39 = sub_1CF2AF9E8;
  v40 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_1CEFCA444;
  v38 = &block_descriptor_203;
  v27 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v21, v33, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v22, v25, v27);
  _Block_release(v27);
  _Block_release(v25);

  return sub_1CEFCCC44(v34, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2E8BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong diskImportFinished];

  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  if (![v7 userEnabled])
  {

LABEL_10:
    v13 = sub_1CF2F1F6C();
    goto LABEL_11;
  }

  v9 = [v8 session];
  v10 = [objc_opt_self() defaultStore];
  if ([v10 hasUpcallExecutionTimeLimits])
  {
    goto LABEL_7;
  }

  if (qword_1EC4BCCF0 != -1)
  {
    swift_once();
  }

  v11 = -1.0;
  if (byte_1EC4BF020 == 1)
  {
LABEL_7:
    [v10 upcallExecutionTimeLimitBase];
    v11 = v12;
  }

  v13 = [v9 newFileProviderProxyWithTimeout:0 pid:v11];
  swift_unknownObjectRelease();
LABEL_11:
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a1;
  v14[5] = v13;
  v17[4] = sub_1CF2F46F0;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1CF00A468;
  v17[3] = &block_descriptor_209;
  v15 = _Block_copy(v17);

  swift_unknownObjectRetain();

  [v13 importDidFinishWithCompletionHandler_];
  _Block_release(v15);
  return swift_unknownObjectRelease();
}